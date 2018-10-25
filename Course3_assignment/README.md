---
title: "Getting and cleanind Data - course Project"
output: html_document
---

# Description
the script run_analysis.R follows the instructions from the course project. 
I decided to load the data and clean the data before i merge everything together.

# Prerequisits
the following file structure is expected in the working directory

* ./features.txt
* ./activity_labels.txt
* ./test/X_test.txt
* ./test/y_test.txt
* ./test/subject_test.txt
* ./train/X_train.txt
* ./train/y_train.txt
* ./train/subject_train.txt

# Code Book
activity_name Factor Human readable name of the activity
Subject int  ID of the experiment participant
tBodyAcc-std()-X	num	Average of the corresponding source measurement
tBodyAcc-std()-Y	num	Average of the corresponding source measurement
tBodyAcc-std()-Z	num	Average of the corresponding source measurement
tGravityAcc-std()-X	num	Average of the corresponding source measurement
tGravityAcc-std()-Y	num	Average of the corresponding source measurement
tGravityAcc-std()-Z	num	Average of the corresponding source measurement
tBodyAccJerk-std()-X	num	Average of the corresponding source measurement
tBodyAccJerk-std()-Y	num	Average of the corresponding source measurement
tBodyAccJerk-std()-Z	num	Average of the corresponding source measurement
tBodyGyro-std()-X	num	Average of the corresponding source measurement
tBodyGyro-std()-Y	num	Average of the corresponding source measurement
tBodyGyro-std()-Z	num	Average of the corresponding source measurement
tBodyGyroJerk-std()-X	num	Average of the corresponding source measurement
tBodyGyroJerk-std()-Y	num	Average of the corresponding source measurement
tBodyGyroJerk-std()-Z	num	Average of the corresponding source measurement
tBodyAccMag-std()	num	Average of the corresponding source measurement
tGravityAccMag-std()	num	Average of the corresponding source measurement
tBodyAccJerkMag-std()	num	Average of the corresponding source measurement
tBodyGyroMag-std()	num	Average of the corresponding source measurement
tBodyGyroJerkMag-std()	num	Average of the corresponding source measurement
fBodyAcc-std()-X	num	Average of the corresponding source measurement
fBodyAcc-std()-Y	num	Average of the corresponding source measurement
fBodyAcc-std()-Z	num	Average of the corresponding source measurement
fBodyAccJerk-std()-X	num	Average of the corresponding source measurement
fBodyAccJerk-std()-Y	num	Average of the corresponding source measurement
fBodyAccJerk-std()-Z	num	Average of the corresponding source measurement
fBodyGyro-std()-X	num	Average of the corresponding source measurement
fBodyGyro-std()-Y	num	Average of the corresponding source measurement
fBodyGyro-std()-Z	num	Average of the corresponding source measurement
fBodyAccMag-std()	num	Average of the corresponding source measurement
fBodyBodyAccJerkMag-std()	num	Average of the corresponding source measurement
fBodyBodyGyroMag-std()	num	Average of the corresponding source measurement
fBodyBodyGyroJerkMag-std()	num	Average of the corresponding source measurement
tBodyAcc-mean()-X	num	Average of the corresponding source measurement
tBodyAcc-mean()-Y	num	Average of the corresponding source measurement
tBodyAcc-mean()-Z	num	Average of the corresponding source measurement
tGravityAcc-mean()-X	num	Average of the corresponding source measurement
tGravityAcc-mean()-Y	num	Average of the corresponding source measurement
tGravityAcc-mean()-Z	num	Average of the corresponding source measurement
tBodyAccJerk-mean()-X	num	Average of the corresponding source measurement
tBodyAccJerk-mean()-Y	num	Average of the corresponding source measurement
tBodyAccJerk-mean()-Z	num	Average of the corresponding source measurement
tBodyGyro-mean()-X	num	Average of the corresponding source measurement
tBodyGyro-mean()-Y	num	Average of the corresponding source measurement
tBodyGyro-mean()-Z	num	Average of the corresponding source measurement
tBodyGyroJerk-mean()-X	num	Average of the corresponding source measurement
tBodyGyroJerk-mean()-Y	num	Average of the corresponding source measurement
tBodyGyroJerk-mean()-Z	num	Average of the corresponding source measurement
tBodyAccMag-mean()	num	Average of the corresponding source measurement
tGravityAccMag-mean()	num	Average of the corresponding source measurement
tBodyAccJerkMag-mean()	num	Average of the corresponding source measurement
tBodyGyroMag-mean()	num	Average of the corresponding source measurement
tBodyGyroJerkMag-mean()	num	Average of the corresponding source measurement
fBodyAcc-mean()-X	num	Average of the corresponding source measurement
fBodyAcc-mean()-Y	num	Average of the corresponding source measurement
fBodyAcc-mean()-Z	num	Average of the corresponding source measurement
fBodyAccJerk-mean()-X	num	Average of the corresponding source measurement
fBodyAccJerk-mean()-Y	num	Average of the corresponding source measurement
fBodyAccJerk-mean()-Z	num	Average of the corresponding source measurement
fBodyGyro-mean()-X	num	Average of the corresponding source measurement
fBodyGyro-mean()-Y	num	Average of the corresponding source measurement
fBodyGyro-mean()-Z	num	Average of the corresponding source measurement
fBodyAccMag-mean()	num	Average of the corresponding source measurement
fBodyBodyAccJerkMag-mean()	num	Average of the corresponding source measurement
fBodyBodyGyroMag-mean()	num	Average of the corresponding source measurement
fBodyBodyGyroJerkMag-mean()	num	Average of the corresponding source measurement