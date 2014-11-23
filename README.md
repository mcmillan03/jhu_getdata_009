jhu_getdata_009
===============

Course project for JHU Getting and Cleaning Data course.  Data for this project comes from the UCI Machine Learning Repository and is the Human Activity Recognition Using Smartphones Data Set found at the following URL:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Code Book
---------

From the complete feature list of over 500 measurements, I have extracted the following mean and standard deviation features (original dataset feature indices provided), to process for this assignment:

| New Indices | Original Indices | Description                          |
| ----------- | ---------------- | ------------------------------------ |
| 1  |  | Test subject ID
| 2  |  | Activity label (one of "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
|  | 1:6     |  tBodyAcc mean and std for X, Y, and Z axes
|  | 41:46   |  tGravityAcc mean and std for X, Y, and Z axes
|  | 81:86   |  tBodyAccJerk mean and std for X, Y, and Z axes
|  | 121:126 |  tBodyGyro mean and std for X, Y, and Z axes
|  | 161:166 |  tBodyGyroJerk mean and std for X, Y, and Z axes
|  | 201,202 |  tBodyAccMag mean and std of the magnitude
|  | 214,215 |  tGravityAccMag mean and std of the magnitude
|  | 227,228 |  tBodyAccJerkMag mean and std of the magnitude
|  | 240,241 |  tBodyGyroMag mean and std of the magnitude
|  | 253,254 |  tBodyGyroJerkMag mean and std of the magnitude
|  | 266:271 |  fBodyAcc mean and std for X, Y, and Z axes
|  | 345:350 |  fBodyAccJerk mean and std for X, Y, and Z axes
|  | 424:429 |  fBodyGyro mean and std for X, Y, and Z axes
|  | 503,504 |  fBodyAccMag mean and std of the magnitude
|  | 516,517 |  fBodyBodyAccJerkMag mean and std of the magnitude
|  | 529,530 |  fBodyBodyGryoMag mean and std of the magnitude
|  | 542,543 |  fBodyBodyGryoJerkMag mean and std of the magnitude
