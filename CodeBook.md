#Codebook for Getting And Cleaning Data Assignment Data
This codebook describes two datasets, both derived from the [Human Activity Recognition Using Smartphones dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
##Background
The data are taken from spatial sensors (accelerometers & gyroscopes) embedded in smartphones worn on belt clips by 30 subjects, while doing one of six different activities:
1. Walking (horizontally)
2. Walking (climbing stairs)
3. Walking (descending stairs)
4. Sitting
5. Standing
6. Laying

There are multiple observations per subject/activity, for a total of 10,299 observations in the main dataset (harus_tidy.txt).

##Transformations
As delivered the data were split into Training (70% of observations) and Test (30%) subsets.  In order to produce the below-described datasets, the accompanying R script (run_analysis.R) performed the following tasks:
1. Read

##harus_tidy.txt

Variable|Description
--------|-----------
subject| Arbitrary ID for the person performing the measured activities.
activity| The activity the person was doing when measured--one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
fBodyAcc_mean_X| Frequency of the acceleration of the body on the X axis
fBodyAcc_mean_Y| Frequency of the acceleration of the body on the X axis
fBodyAcc_mean_Z| Frequency of the acceleration of the body on the X axis
fBodyAcc_std_X| Frequency of the acceleration of the body on the X axis
fBodyAcc_std_Y| Frequency of the acceleration of the body on the X axis
fBodyAcc_std_Z| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_mean_X| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_mean_Y| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_mean_Z| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_std_X| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_std_Y| Frequency of the acceleration of the body on the X axis
fBodyAccJerk_std_Z| Frequency of the acceleration of the body on the X axis
fBodyAccMag_mean| Frequency of the acceleration of the body on the X axis
fBodyAccMag_std| Frequency of the acceleration of the body on the X axis
fBodyBodyAccJerkMag_mean| Frequency of the acceleration of the body on the X axis
fBodyBodyAccJerkMag_std| Frequency of the acceleration of the body on the X axis
fBodyBodyGyroJerkMag_mean| Frequency of the acceleration of the body on the X axis
fBodyBodyGyroJerkMag_std| Frequency of the acceleration of the body on the X axis
fBodyBodyGyroMag_mean| Frequency of the acceleration of the body on the X axis
fBodyBodyGyroMag_std| Frequency of the acceleration of the body on the X axis
fBodyGyro_mean_X| Frequency of the acceleration of the body on the X axis
fBodyGyro_mean_Y| Frequency of the acceleration of the body on the X axis
fBodyGyro_mean_Z| Frequency of the acceleration of the body on the X axis
fBodyGyro_std_X| Frequency of the acceleration of the body on the X axis
fBodyGyro_std_Y| Frequency of the acceleration of the body on the X axis
fBodyGyro_std_Z| Frequency of the acceleration of the body on the X axis
tBodyAcc_mean_X| Frequency of the acceleration of the body on the X axis
tBodyAcc_mean_Y| Frequency of the acceleration of the body on the X axis
tBodyAcc_mean_Z| Frequency of the acceleration of the body on the X axis
tBodyAcc_std_X| Frequency of the acceleration of the body on the X axis
tBodyAcc_std_Y| Frequency of the acceleration of the body on the X axis
tBodyAcc_std_Z| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_mean_X| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_mean_Y| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_mean_Z| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_std_X| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_std_Y| Frequency of the acceleration of the body on the X axis
tBodyAccJerk_std_Z| Frequency of the acceleration of the body on the X axis
tBodyAccJerkMag_mean| Frequency of the acceleration of the body on the X axis
tBodyAccJerkMag_std| Frequency of the acceleration of the body on the X axis
tBodyAccMag_mean| Frequency of the acceleration of the body on the X axis
tBodyAccMag_std| Frequency of the acceleration of the body on the X axis
tBodyGyro_mean_X| Frequency of the acceleration of the body on the X axis
tBodyGyro_mean_Y| Frequency of the acceleration of the body on the X axis
tBodyGyro_mean_Z| Frequency of the acceleration of the body on the X axis
tBodyGyro_std_X| Frequency of the acceleration of the body on the X axis
tBodyGyro_std_Y| Frequency of the acceleration of the body on the X axis
tBodyGyro_std_Z| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_mean_X| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_mean_Y| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_mean_Z| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_std_X| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_std_Y| Frequency of the acceleration of the body on the X axis
tBodyGyroJerk_std_Z| Frequency of the acceleration of the body on the X axis
tBodyGyroJerkMag_mean| Frequency of the acceleration of the body on the X axis
tBodyGyroJerkMag_std| Frequency of the acceleration of the body on the X axis
tBodyGyroMag_mean| Frequency of the acceleration of the body on the X axis
tBodyGyroMag_std| Frequency of the acceleration of the body on the X axis
tGravityAcc_mean_X| Frequency of the acceleration of the body on the X axis
tGravityAcc_mean_Y| Frequency of the acceleration of the body on the X axis
tGravityAcc_mean_Z| Frequency of the acceleration of the body on the X axis
tGravityAcc_std_X| Frequency of the acceleration of the body on the X axis
tGravityAcc_std_Y| Frequency of the acceleration of the body on the X axis
tGravityAcc_std_Z| Frequency of the acceleration of the body on the X axis
tGravityAccMag_mean| Frequency of the acceleration of the body on the X axis
tGravityAccMag_std| Frequency of the acceleration of the body on the X axis

##harus_means_tidy.txt
subject
activity
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std"
