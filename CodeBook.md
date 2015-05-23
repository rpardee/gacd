#Codebook for Getting And Cleaning Data Assignment Data

This codebook describes two datasets, both derived from the [Human Activity Recognition Using Smartphones dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), collected by Jorge L. Reyes-Ortiz et al.

##Background

The data are taken from spatial sensors (accelerometers & gyroscopes) embedded in smartphones worn on belt clips by 30 subjects, while doing one of six different activities:

1. Walking (horizontally)
2. Walking (climbing stairs)
3. Walking (descending stairs)
4. Sitting
5. Standing
6. Laying

Measures of acceleration and rotation (angular velocity) were sampled from the sensors at constant rates, run through various noise-suppressing routines, and summarized into a series of 561 features per trial.  A trial was one subject performing one of the activities for a set period of time.  There are multiple observations per subject/activity, for a total of 10,299 observations in the main dataset (harus_tidy.txt).

##harus_tidy VS harus_means_tidy
The two datasets are nearly identical in their columns (listed in the table below).  The only difference is that while harus_tidy contains multiple measures per subject/activity (e.g., there are 47 independent observations where subject 1 was sitting), harus_means_tidy has only one observation per subject/activity, consisting of the mean of the measures in harus_tidy.  So for example, on the single record where subject 1 was sitting, the column m_fBodyAcc_mean_X contains the mean of the 47 values in the fBodyAcc_meanX column in harus_tidy.  So harus_means_tidy is a further summarization of the data in harus_tidy.  While harus_tidy has 10,299 observations, harus_means_tidy summarizes that down to a mere 180 observations.

##Transformations
As delivered the data were split both row-wise (into Training (70%) and Test (30%) subsets) and column-wise (subject and activity vectors were in separate files, and the features were in a third) for a total of 6 files.  Activity was signified by an uninformative numeric variable.  In order to produce the below-described datasets, the accompanying R script (run_analysis.R) performed the following tasks:

1. Read in each of the files containing Activity, Subject, and Features.
2. Gave activity and subject user-friendly names, and converted them to factors
3. Gave the factor levels for activity user-friendly names.
4. Read in the feature data.
5. Discarded unwanted features (those that were not means or standard deviations).
6. Gave the features user-friendly names.
7. Combined these variables into a single data frame.
8. Combined Test and Training subsets into a single data frame.  This was output into harus_tidy.
9. Created a new data frame consisting of the per subject/activity means of the measures.  This was output in to harus_means_tidy.

##Data Dictionary
The below-listed column names are for the main dataset, harus_tidy.  The columns in harus_means_tidy are identical, except that the feature columns are named with a prefix 'm_' to signify that they are further summarized (e.g., m_fBodyAcc_mean_X is the within-subject/activity mean of the values in fBodyAcc_mean_X).

Variable                  |Description
--------                  |-----------
subject                   | Arbitrary ID for the person performing the measured activities.
activity                  | The activity the person was doing when measured--one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
fBodyAcc_mean_X           | Mean body acceleration along the X axis (frequency)
fBodyAcc_mean_Y           | Mean body acceleration along the Y axis (frequency)
fBodyAcc_mean_Z           | Mean body acceleration along the Z axis (frequency)
fBodyAcc_std_X            | Standard deviation of the body acceleration along the X axis (frequency)
fBodyAcc_std_Y            | Standard deviation of the body acceleration along the Y axis (frequency)
fBodyAcc_std_Z            | Standard deviation of the body acceleration along the Z axis (frequency)
fBodyAccJerk_mean_X       | Mean body jerk signal along the X axis (frequency)
fBodyAccJerk_mean_Y       | Mean body jerk signal along the Y axis (frequency)
fBodyAccJerk_mean_Z       | Mean body jerk signal along the Z axis (frequency)
fBodyAccJerk_std_X        | Standard deviation body jerk signal along the X axis (frequency)
fBodyAccJerk_std_Y        | Standard deviation body jerk signal along the Y axis (frequency)
fBodyAccJerk_std_Z        | Standard deviation body jerk signal along the Z axis (frequency)
fBodyAccMag_mean          | Mean of the overall magnitude of body accelerations (frequency)
fBodyAccMag_std           | Standard deviation of the overall magnitude of body accelerations (frequency)
fBodyBodyAccJerkMag_mean  | Mean body jerk, as measured by the accelerometer (frequency)
fBodyBodyAccJerkMag_std   | Standard deviation of body jerk, as measured by the accelerometer (frequency)
fBodyBodyGyroJerkMag_mean | Mean body jerk, as measured by the gyroscope (frequency)
fBodyBodyGyroJerkMag_std  | Standard deviation of body jerk, as measured by the gyroscope (frequency)
fBodyBodyGyroMag_mean     | Mean body, as measured by the gyroscope (frequency)
fBodyBodyGyroMag_std      | Standard deviation of body, as measured by the gyroscope (frequency)
fBodyGyro_mean_X          | Mean body rotation along the X axis (frequency)
fBodyGyro_mean_Y          | Mean body rotation along the Y axis (frequency)
fBodyGyro_mean_Z          | Mean body rotation along the Z axis (frequency)
fBodyGyro_std_X           | Standard deviation of the body rotation along the X axis (frequency)
fBodyGyro_std_Y           | Standard deviation of the body rotation along the Y axis (frequency)
fBodyGyro_std_Z           | Standard deviation of the body rotation along the Z axis (frequency)
tBodyAcc_mean_X           | Mean body acceleration along the X axis (time)
tBodyAcc_mean_Y           | Mean body acceleration along the Y axis (time)
tBodyAcc_mean_Z           | Mean body acceleration along the Z axis (time)
tBodyAcc_std_X            | Standard deviation of the body acceleration along the X axis (time)
tBodyAcc_std_Y            | Standard deviation of the body acceleration along the Y axis (time)
tBodyAcc_std_Z            | Standard deviation of the body acceleration along the Z axis (time)
tBodyAccJerk_mean_X       | Mean body jerk signal along the X axis (time)
tBodyAccJerk_mean_Y       | Mean body jerk signal along the Y axis (time)
tBodyAccJerk_mean_Z       | Mean body jerk signal along the Z axis (time)
tBodyAccJerk_std_X        | Standard deviation body jerk signal along the X axis (time)
tBodyAccJerk_std_Y        | Standard deviation body jerk signal along the Y axis (time)
tBodyAccJerk_std_Z        | Standard deviation body jerk signal along the Z axis (time)
tBodyAccJerkMag_mean      | Mean of the overall magnitude of body jerk accelerations (time)
tBodyAccJerkMag_std       | Standard deviation of the overall magnitude of body jerk accelerations (time)
tBodyAccMag_mean          | Mean of the overall magnitude of body accelerations (time)
tBodyAccMag_std           | Standard deviation of the overall magnitude of body accelerations (time)
tBodyGyro_mean_X          | Mean body rotation along the X axis (time)
tBodyGyro_mean_Y          | Mean body rotation along the Y axis (time)
tBodyGyro_mean_Z          | Mean body rotation along the Z axis (time)
tBodyGyro_std_X           | Standard deviation of the body rotation along the X axis (time)
tBodyGyro_std_Y           | Standard deviation of the body rotation along the Y axis (time)
tBodyGyro_std_Z           | Standard deviation of the body rotation along the Z axis (time)
tBodyGyroJerk_mean_X      | Mean body jerk along the X axis, as measured by the gyroscope (time)
tBodyGyroJerk_mean_Y      | Mean body jerk along the Y axis, as measured by the gyroscope (time)
tBodyGyroJerk_mean_Z      | Mean body jerk along the Z axis, as measured by the gyroscope (time)
tBodyGyroJerk_std_X       | Standard deviation of body jerk along the X axis, as measured by the gyroscope (time)
tBodyGyroJerk_std_Y       | Standard deviation of body jerk along the Y axis, as measured by the gyroscope (time)
tBodyGyroJerk_std_Z       | Standard deviation of body jerk along the Z axis, as measured by the gyroscope (time)
tBodyGyroJerkMag_mean     | Overall mean magnitude of body jerk, as measured by the gyroscope (time)
tBodyGyroJerkMag_std      | Overall standard deviation magnitude of body jerk, as measured by the gyroscope (time)
tBodyGyroMag_mean         | Overall mean of body, as measured by the gyroscope (time)
tBodyGyroMag_std          | Overall standard deviation of body, as measured by the gyroscope (time)
tGravityAcc_mean_X        | Mean gravity acceleration along the X axis (time)
tGravityAcc_mean_Y        | Mean gravity acceleration along the Y axis (time)
tGravityAcc_mean_Z        | Mean gravity acceleration along the Z axis (time)
tGravityAcc_std_X         | Standard deviation of the gravity acceleration along the X axis (time)
tGravityAcc_std_Y         | Standard deviation of the gravity acceleration along the Y axis (time)
tGravityAcc_std_Z         | Standard deviation of the gravity acceleration along the Z axis (time)
tGravityAccMag_mean       | Overall mean magnitude of acceleration due to gravity (time)
tGravityAccMag_std        | Overall standard deviation magnitude of acceleration due to gravity (time)

