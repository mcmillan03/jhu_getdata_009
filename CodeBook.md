Code Book
==========

From the complete feature list of over 500 measurements, I have extracted 68 mean and standard deviation features (original dataset feature names preserved for cross reference) to process for this assignment.  As the original measurements were all normalized and lie on the interval [-1, 1], these measurements are unitless.  For more details see features_info.txt in the original data set. The website for the original data set is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Because there are 30 subjects present in the original data, and 6 unique activities there are 180 observations in the resulting table.  The following is the table of output variables:

 Column Index | Name | Type | Description                          |
 ------------ | ---- | ---- | ------------------------------------ |
  1 | Subject  |  factor |  Subject ID: 1 through 30.                  
  2 | Activity  |  factor |  Label for activity performed.  One of  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
  3 | tBodyAcc-mean()-X  |  numeric | mean of normalized tBodyAcc-XYZ measurement means
  4 | tBodyAcc-mean()-Y  |  numeric |
  5 | tBodyAcc-mean()-Z  |  numeric |  
  6 | tBodyAcc-std()-X  |  numeric | mean of normalized tBodyAcc-XYZ measurement standard deviations
  7 | tBodyAcc-std()-Y  |  numeric |            
  8 | tBodyAcc-std()-Z  |  numeric |            
  9 | tGravityAcc-mean()-X  |  numeric | mean of normalized tGravityAcc-XYZ measurement means      
 10 | tGravityAcc-mean()-Y  |  numeric |        
 11 | tGravityAcc-mean()-Z  |  numeric |        
 12 | tGravityAcc-std()-X  |  numeric | mean of normalized tGravityAcc-XYZ measurement standard deviations
 13 | tGravityAcc-std()-Y  |  numeric |         
 14 | tGravityAcc-std()-Z  |  numeric |         
 15 | tBodyAccJerk-mean()-X  |  numeric | mean of normalized tBodyAccJerk-XYZ measurement means
 16 | tBodyAccJerk-mean()-Y  |  numeric |       
 17 | tBodyAccJerk-mean()-Z  |  numeric |       
 18 | tBodyAccJerk-std()-X  |  numeric | mean of normalized tBodyAccJerk-XYZ measurement standard deviations
 19 | tBodyAccJerk-std()-Y  |  numeric |        
 20 | tBodyAccJerk-std()-Z  |  numeric |        
 21 | tBodyGyro-mean()-X  |  numeric | mean of normalized tBodyGyro-XYZ measurement means
 22 | tBodyGyro-mean()-Y  |  numeric |          
 23 | tBodyGyro-mean()-Z  |  numeric |          
 24 | tBodyGyro-std()-X  |  numeric | mean of normalized tBodyGyro-XYZ measurement standard deviations
 25 | tBodyGyro-std()-Y  |  numeric |           
 26 | tBodyGyro-std()-Z  |  numeric |           
 27 | tBodyGyroJerk-mean()-X  |  numeric | mean of normalized tBodyGyroJerk-XYZ measurement means
 28 | tBodyGyroJerk-mean()-Y  |  numeric |      
 29 | tBodyGyroJerk-mean()-Z  |  numeric |      
 30 | tBodyGyroJerk-std()-X  |  numeric | mean of normalized tBodyGyroJerk-XYZ measurement standard deviations
 31 | tBodyGyroJerk-std()-Y  |  numeric |       
 32 | tBodyGyroJerk-std()-Z  |  numeric |       
 33 | tBodyAccMag-mean()  |  numeric | mean of normalized tBodyAccMag magnitude mean
 34 | tBodyAccMag-std()  |  numeric | mean of normalized tBodyAccMag magnitude standard deviation
 35 | tGravityAccMag-mean()  |  numeric | mean of normalized tGravityAccMag magnitude mean
 36 | tGravityAccMag-std()  |  numeric | mean of normalized tGravityAccMag magnitude standard deviation
 37 | tBodyAccJerkMag-mean()  |  numeric | mean of normalized tBodyAccJerkMag magnitude mean
 38 | tBodyAccJerkMag-std()  |  numeric | mean of normalized tBodyAccJerkMag magnitude standard deviation
 39 | tBodyGyroMag-mean()  |  numeric | mean of normalized tBodyGyroMag magnitude mean
 40 | tBodyGyroMag-std()  |  numeric | mean of normalized tBodyGyroMag magnitude standard deviation
 41 | tBodyGyroJerkMag-mean()  |  numeric | mean of normalized tBodyGyroJerkMag magnitude mean
 42 | tBodyGyroJerkMag-std()  |  numeric | mean of normalized tBodyGyroJerkMag magnitude standard deviation
 43 | fBodyAcc-mean()-X  |  numeric | mean of normalized fBodyAcc-XYZ measurement means
 44 | fBodyAcc-mean()-Y  |  numeric |           
 45 | fBodyAcc-mean()-Z  |  numeric |           
 46 | fBodyAcc-std()-X  |  numeric | mean of normalized fBodyAcc-XYZ measurement standard deviations
 47 | fBodyAcc-std()-Y  |  numeric |            
 48 | fBodyAcc-std()-Z  |  numeric |            
 49 | fBodyAccJerk-mean()-X  |  numeric | mean of normalized fBodyAccJerk-XYZ measurement means
 50 | fBodyAccJerk-mean()-Y  |  numeric |       
 51 | fBodyAccJerk-mean()-Z  |  numeric |       
 52 | fBodyAccJerk-std()-X  |  numeric | mean of normalized fBodyAccJerk-XYZ measurement standard deviations
 53 | fBodyAccJerk-std()-Y  |  numeric |        
 54 | fBodyAccJerk-std()-Z  |  numeric |        
 55 | fBodyGyro-mean()-X  |  numeric | mean of normalized fBodyGyro-XYZ measurement means
 56 | fBodyGyro-mean()-Y  |  numeric |          
 57 | fBodyGyro-mean()-Z  |  numeric |          
 58 | fBodyGyro-std()-X  |  numeric | mean of normalized fBodyGyro-XYZ measurement standard deviations
 59 | fBodyGyro-std()-Y  |  numeric |           
 60 | fBodyGyro-std()-Z  |  numeric |           
 61 | fBodyAccMag-mean()  |  numeric |          
 62 | fBodyAccMag-std()  |  numeric |           
 63 | fBodyBodyAccJerkMag-mean()  |  numeric | mean of normalized fBodyBodyAccJerkMag magnitude mean
 64 | fBodyBodyAccJerkMag-std()  |  numeric | mean of normalized fBodyBodyAccJerkMag magnitude standard deviation
 65 | fBodyBodyGyroMag-mean()  |  numeric | mean of normalized fBodyBodyGyroMag magnitude mean
 66 | fBodyBodyGyroMag-std()  |  numeric | mean of normalized fBodyBodyGyroMag magnitude standard deviation
 67 | fBodyBodyGyroJerkMag-mean()  |  numeric | mean of normalized fBodyBodyGyroJerkMag magnitude mean
 68 | fBodyBodyGyroJerkMag-std()  |  numeric | mean of normalized fBodyBodyGyroJerkMag magnitude standard deviation