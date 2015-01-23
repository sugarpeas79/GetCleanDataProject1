# For Coursera Getting and Cleaning Data class project
# Unzip UCI HAR Dataset to working directory, then run this script.
# It will produce the desired data as a dataframe called tidy_data
# And write a text file containing the tidy dataset called tidy_data.txt

library(data.table)

# Load training and testing data, labels, activity key

train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activity_labels_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_labels_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity_key <- read.table("./UCI HAR Dataset/activity_labels.txt")

#transpose 'features.txt' data so you can add as column headers
features_t <- t(features)

#merge training and test datasets, adding column names from 'features.txt'
merged_data <- rbind(test_data, train_data)
colnames(merged_data) <- c(features_t[2,1:561])

#find columns with std and mean in colname, create new df with 
#only std and mean values
std <- grep("std", ignore.case = TRUE, colnames(merged_data))
means <- grep("mean", ignore.case = TRUE, colnames(merged_data))
cols <- c(std, means)
cols <- sort(cols)
merged_data_small <- merged_data[,cols]

#Add subject_id and activity names to dataframe
merged_subject <- rbind(subject_test, subject_train)
merged_activity <- rbind(activity_labels_test, activity_labels_train)
activity <- activity_key[merged_activity[,1],2]
merged_data_small <- cbind(merged_subject, activity, merged_data_small)
colnames(merged_data_small)[1] <- ("subject_id")

#Calculate means of each variable for each subject/activity combination

tidy_data <- aggregate(merged_data_small, list(merged_data_small$subject_id, merged_data_small$activity), mean)
tidy_data[,3] <- NULL
tidy_data[,3] <- NULL
colnames(tidy_data)[1] <- ("subject_id")
colnames(tidy_data)[2] <- ("activity")

write.table(tidy_data, file = "tidy_data.txt", row.name = FALSE)