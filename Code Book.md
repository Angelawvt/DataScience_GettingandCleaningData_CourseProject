Getting and Cleaning Data Course Project Code Book
==================================================

Description
-----------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The data set describes the mean and standard deviation, by activity, of 561 3-axial linear acceleration and 3-axial angular velocity measurements. Measurements were recorded using the embedded accelerometer and gyroscope at a constant rate of 50Hz. 

Test and training subjects from the orignal experiment are both included in this file.

For each subject/activity combination it is provided:
-----------------------------------------------------

- Subject: identifier
- ActivityName: text activity label

### Time Domain Signals

The features included come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

- TimeBodyAcc[Mean|StdDev][X|Y|Z]
- TimeGravityAcc[Mean|StdDev][X|Y|Z]

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). 
- TimeBodyAccJerk[Mean|StdDev][X|Y|Z]
- TimeBodyGyro[Mean|StdDev][X|Y|Z]
- TimeBodyGyroJerk[Mean|StdDev][X|Y|Z]

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 
- TimeBodyAccMag[Mean|StdDev]
- TimeGravityAccMag[Mean|StdDev]
- TimeBodyAccJerkMag[Mean|StdDev]
- TimeBodyGyroMag[Mean|StdDev]
- TimeBodyGyroJerkMag[Mean|StdDev]

### Fequency Domain Signals

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcc-XYZ, FreqBodyAccJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag. (Note the 'Freq' to indicate frequency domain signals). 

- FreqBodyAcc[Mean|StdDev][X|Y|Z]
- FreqBodyAccJerk[Mean|StdDev][X|Y|Z]
- FreqBodyGyro[Mean|StdDev][X|Y|Z]
- FreqBodyAccMag[Mean|StdDev]
- FreqBodyAccJerkMag[Mean|StdDev]
- FreqBodyGyroMag[Mean|StdDev]
- FreqBodyGyroJerkMag[Mean|StdDev]


The dataset includes the following files:
=========================================
- ProjectOutput_TidyDataSet.txt

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each subject and activity is a row in the text file.
