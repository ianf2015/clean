Codebook
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

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBobyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBobyAccelerometerJerk-XYZ and timeBobyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBobyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBobyAccelerometerJerkMagnitude, timeBobyGyroscopeMagnitude, timeBobyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBobyAccelerometer-XYZ, frequencyBobyAccelerometerJerk-XYZ, frequencyBobyGyroscope-XYZ, frequencyBobyAccelerometerJerkMagnitude, frequencyBobyGyroscopeMagnitude, frequencyBobyGyroscopeJerkMagnitude.  

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBobyAccelerometer-XYZ
tGravityAccelerometer-XYZ
timeBobyAccelerometerJerk-XYZ
timeBobyGyroscope-XYZ
timeBobyGyroscopeJerk-XYZ
timeBobyAccelerometerMagnitudenitude
timeGravityAccelerometerelerometerMagnitude
timeBobyAccelerometerJerkMagnitude
timeBobyGyroscopeMagnitude
timeBobyGyroscopeJerkMagnitude
frequencyBobyAccelerometer-XYZ
frequencyBobyAccelerometerJerk-XYZ
frequencyBobyGyroscope-XYZ
frequencyBobyAccelerometerMagnitude
frequencyBobyAccelerometerJerkMagnitude
frequencyBobyGyroscopeMagnitude
frequencyBobyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals and included in the dataset are: 

1. mean(): Mean value
2. std(): Standard deviation

**Note:** 
The means and standard deviations have been aggregated and averaged by each subject and activity.
