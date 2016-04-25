Code book
=========
Three kinds of data are included in the tidy dataset:

1. Subject
2. Activity
3. Features


Subject
========
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The colname named "subject" has the number identifier of each of the 30 volunteers.


Acitivity
==========
The activities carried out by the volunteers:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


Features 
==========
Columns 3 to the end are features data.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_BodyAccelerometer-XYZ and time_GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_BodyAccelerometerJerk-XYZ and time_BodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time_BodyAccelerometerMagnitude, time_GravityAccelerometerMagnitude, time_BodyAccelerometerJerkMagnitude, time_BodyGyroscopeMagnitude, time_BodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency_BodyAccelerometer-XYZ, frequency_BodyAccelerometerJerk-XYZ, frequency_BodyGyroscope-XYZ, frequency_BodyAccelerometerMagnitude, frequency_BodyAccelerometerJerkMagnitude, frequency_BodyGyroscopeMagnitude, frequency_BodyGyroscopeJerkMagnitude.  

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

time_BodyAccelerometer-XYZ
time_GravityAccelerometer-XYZ
time_BodyAccelerometerJerk-XYZ
time_BodyGyroscope-XYZ
time_BodyGyroscopeJerk-XYZ
time_BodyAccelerometerMagnitude
time_GravityAccelerometerMagnitude
time_BodyAccelerometerJerkMagnitude
time_BodyGyroscopeMagnitude
time_BodyGyroscopeJerkMagnitude
frequency_BodyAccelerometer-XYZ
frequency_BodyAccelerometerJerk-XYZ
frequency_BodyGyroscope-XYZ
frequency_BodyAccelerometerMagnitude
frequency_BodyAccelerometerJerkMagnitude
frequency_BodyGyroscopeMagnitude
frequency_BodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals and included in the dataset are: 

1. _mean: Mean value
2. _std: Standard deviation

**Note:** 
The means and standard deviations have been aggregated and averaged by each subject and activity.