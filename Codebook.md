# Codebook for average_data.txt database
This code book modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated,
along with units, and other relevant information.

## Variables

### subjectId (1 - 30)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

### activityId
Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Measurements (86 variables)
The variables selected for this database are averages by subject and activity from features selected in previous databases (see Readme.md for origin of data)

The features selected for the original databases come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag

The set of variables that were estimated from these signals were multiple, but in this database only were selected: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

*gravityMean
*tBodyAccMean
*tBodyAccJerkMean
*tBodyGyroMean
*tBodyGyroJerkMean
