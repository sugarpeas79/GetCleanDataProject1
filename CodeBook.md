Study Design for Human Activity Recognition Using Smartphones Dataset Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Code Book
=============================
=============================

Variables with descriptions. Each record contains mean values calculated from 30 replicate measurements for each unique subject_id/activity combination.

subject_id	subject identifier, number 1 - 30
activity description	activity during which each measurement was taken
tBodyAcc-mean()-X	time, estimated body acceleration, mean, X-dimension
tBodyAcc-mean()-Y	time, estimated body acceleration, mean, Y-dimension
tBodyAcc-mean()-Z	time, estimated body acceleration, mean, Z-dimension
tBodyAcc-std()-X	time, estimated body acceleration, standard deviation, X-dimension
tBodyAcc-std()-Y	time, estimated body acceleration, standard deviation, Y-dimension
tBodyAcc-std()-Z	time, estimated body acceleration, standard deviation, Z-dimension
tGravityAcc-mean()-X	time, estimated gravity acceleration, mean, X-dimension
tGravityAcc-mean()-Y	time, estimated gravity acceleration, mean, Y-dimension
tGravityAcc-mean()-Z	time, estimated gravity acceleration, mean, Z-dimension
tGravityAcc-std()-X	time, estimated gravity acceleration, standard deviation, X-dimension
tGravityAcc-std()-Y	time, estimated gravity acceleration, standard deviation, Y-dimension
tGravityAcc-std()-Z	time, estimated gravity acceleration, standard deviation, Z-dimension
tBodyAccJerk-mean()-X	time, estimated body acceleration jerk signal, mean, X-dimension
tBodyAccJerk-mean()-Y	time, estimated body acceleration jerk signal, mean, Y-dimension
tBodyAccJerk-mean()-Z	time, estimated body acceleration jerk signal, mean, Z-dimension
tBodyAccJerk-std()-X	time, estimated body acceleration jerk signal, standard deviation, X-dimension
tBodyAccJerk-std()-Y	time, estimated body acceleration jerk signal, standard deviation, Y-dimension
tBodyAccJerk-std()-Z	time, estimated body acceleration jerk signal, standard deviation, Z-dimension
tBodyGyro-mean()-X	time, estimated body gyroscope signal, mean, X-dimension
tBodyGyro-mean()-Y	time, estimated body gyroscope signal, mean, Y-dimension
tBodyGyro-mean()-Z	time, estimated body gyroscope signal, mean, Z-dimension
tBodyGyro-std()-X	time, estimated body gyroscope signal, standard deviation, X-dimension
tBodyGyro-std()-Y	time, estimated body gyroscope signal, standard deviation, Y-dimension
tBodyGyro-std()-Z	time, estimated body gyroscope signal, standard deviation, Z-dimension
tBodyGyroJerk-mean()-X	time, estimated body gyroscope jerk signal, mean, X-dimension
tBodyGyroJerk-mean()-Y	time, estimated body gyroscope jerk signal, mean, Y-dimension
tBodyGyroJerk-mean()-Z	time, estimated body gyroscope jerk signal, mean, Z-dimension
tBodyGyroJerk-std()-X	time, estimated body gyroscope jerk signal, standard deviation, X-dimension
tBodyGyroJerk-std()-Y	time, estimated body gyroscope jerk signal, standard deviation, Y-dimension
tBodyGyroJerk-std()-Z	time, estimated body gyroscope jerk signal, standard deviation, Z-dimension
tBodyAccMag-mean()	time, estimated body acceleration signal magnitude, mean, 
tBodyAccMag-std()	time, estimated body acceleration signal magnitude, standard deviation, 
tGravityAccMag-mean()	time, estimated gravity acceleration signal magnitude, mean, 
tGravityAccMag-std()	time, estimated gravity acceleration signal magnitude, standard deviation, 
tBodyAccJerkMag-mean()	time, estimated body acceleration jerk signal magnitude, mean, 
tBodyAccJerkMag-std()	time, estimated body acceleration jerk signal magnitude, standard deviation, 
tBodyGyroMag-mean()	time, estimated body gyroscope signal magnitude, mean, 
tBodyGyroMag-std()	time, estimated body gyroscope signal magnitude, standard deviation, 
tBodyGyroJerkMag-mean()	time, estimated body gyroscope jerk signal magnitude, mean, 
tBodyGyroJerkMag-std()	time, estimated body gyroscope jerk signal magnitude, standard deviation, 
fBodyAcc-mean()-X	frequency, estimated body acceleration, mean, X-dimension
fBodyAcc-mean()-Y	frequency, estimated body acceleration, mean, Y-dimension
fBodyAcc-mean()-Z	frequency, estimated body acceleration, mean, Z-dimension
fBodyAcc-std()-X	frequency, estimated body acceleration, standard deviation, X-dimension
fBodyAcc-std()-Y	frequency, estimated body acceleration, standard deviation, Y-dimension
fBodyAcc-std()-Z	frequency, estimated body acceleration, standard deviation, Z-dimension
fBodyAcc-meanFreq()-X	frequency, estimated gravity acceleration, mean, X-dimension
fBodyAcc-meanFreq()-Y	frequency, estimated gravity acceleration, mean, Y-dimension
fBodyAcc-meanFreq()-Z	frequency, estimated gravity acceleration, mean, Z-dimension
fBodyAccJerk-mean()-X	frequency, estimated gravity acceleration, standard deviation, X-dimension
fBodyAccJerk-mean()-Y	frequency, estimated gravity acceleration, standard deviation, Y-dimension
fBodyAccJerk-mean()-Z	frequency, estimated gravity acceleration, standard deviation, Z-dimension
fBodyAccJerk-std()-X	frequency, estimated body acceleration jerk signal, mean, X-dimension
fBodyAccJerk-std()-Y	frequency, estimated body acceleration jerk signal, mean, Y-dimension
fBodyAccJerk-std()-Z	frequency, estimated body acceleration jerk signal, mean, Z-dimension
fBodyAccJerk-meanFreq()-X	frequency, estimated body acceleration jerk signal, standard deviation, X-dimension
fBodyAccJerk-meanFreq()-Y	frequency, estimated body acceleration jerk signal, standard deviation, Y-dimension
fBodyAccJerk-meanFreq()-Z	frequency, estimated body acceleration jerk signal, standard deviation, Z-dimension
fBodyGyro-mean()-X	frequency, estimated body gyroscope signal, mean, X-dimension
fBodyGyro-mean()-Y	frequency, estimated body gyroscope signal, mean, Y-dimension
fBodyGyro-mean()-Z	frequency, estimated body gyroscope signal, mean, Z-dimension
fBodyGyro-std()-X	frequency, estimated body gyroscope signal, standard deviation, X-dimension
fBodyGyro-std()-Y	frequency, estimated body gyroscope signal, standard deviation, Y-dimension
fBodyGyro-std()-Z	frequency, estimated body gyroscope signal, standard deviation, Z-dimension
fBodyGyro-meanFreq()-X	frequency, estimated body gyroscope jerk signal, mean, X-dimension
fBodyGyro-meanFreq()-Y	frequency, estimated body gyroscope jerk signal, mean, Y-dimension
fBodyGyro-meanFreq()-Z	frequency, estimated body gyroscope jerk signal, mean, Z-dimension
fBodyAccMag-mean()	frequency, estimated body acceleration signal magnitude, mean, 
fBodyAccMag-std()	frequency, estimated body acceleration signal magnitude, standard deviation, 
fBodyAccMag-meanFreq()	frequency, estimated gravity acceleration signal magnitude, mean, 
fBodyBodyAccJerkMag-mean()	frequency, estimated body acceleration jerk signal magnitude, mean, 
fBodyBodyAccJerkMag-std()	frequency, estimated body acceleration jerk signal magnitude, standard deviation, 
fBodyBodyAccJerkMag-meanFreq()	frequency, estimated body acceleration jerk signal magnitude, mean, mean, 
fBodyBodyGyroMag-mean()	frequency, estimated body gyroscope signal magnitude, mean, 
fBodyBodyGyroMag-std()	frequency, estimated body gyroscope signal magnitude, standard deviation, 
fBodyBodyGyroMag-meanFreq()	frequency, estimated body gyroscope signal magnitude, mean, mean, 
fBodyBodyGyroJerkMag-mean()	frequency, estimated body gyroscope jerk signal magnitude, mean, 
fBodyBodyGyroJerkMag-std()	frequency, estimated body gyroscope jerk signal magnitude, standard deviation, 
fBodyBodyGyroJerkMag-meanFreq()	frequency, estimated body gyroscope jerk signal magnitude, mean, mean, 
angle(tBodyAccMean,gravity)	angular momentum, estimated body acceleration mean, gravity, mean, 
angle(tBodyAccJerkMean),gravityMean)	angular momentum, estimated body acceleration jerk signal mean, gravity, mean, 
angle(tBodyGyroMean,gravityMean)	angular momentum, estimated body gyroscope mean, gravity, mean, 
angle(tBodyGyroJerkMean,gravityMean)	angular momentum, estimated body gyroscope jerk signal mean, gravity, mean, 
angle(X,gravityMean)	angular momentum, gravity mean, mean, X-dimension
angle(Y,gravityMean)	angular momentum, gravity mean, mean, Y-dimension
angle(Z,gravityMean)	angular momentum, gravity mean, mean, Z-dimension
