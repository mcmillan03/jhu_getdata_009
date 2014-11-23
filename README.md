jhu_getdata_009
===============

Course project for JHU Getting and Cleaning Data course.  Data for this project comes from the UCI Machine Learning Repository and is the Human Activity Recognition Using Smartphones Data Set found at the following URL:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Code Book
---------

From the complete feature list of over 500 measurements, I have extracted 68 mean and standard deviation features (original dataset feature names preserved for cross reference) to process for this assignment.  As the original measurements were all normalized and lie on the interval [-1, 1], these measurements are unitless.

Because there are 30 subjects present in the original data, and 6 unique activities there are 180 observations in the resulting table.  The following is the table of output variables:

 Column Index | Name | Type | Description                          |
 ------------ | ---- | ---- | ------------------------------------ |
  1 | Subject  |  factor |  Subject ID: 1 through 30.                  
  2 | Activity  |  factor |  Label for activity performed.  One of  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
  3 | tBodyAcc-mean()-X  |  numeric |           
  4 | tBodyAcc-mean()-Y  |  numeric |           
  5 | tBodyAcc-mean()-Z  |  numeric |           
  6 | tBodyAcc-std()-X  |  numeric |            
  7 | tBodyAcc-std()-Y  |  numeric |            
  8 | tBodyAcc-std()-Z  |  numeric |            
  9 | tGravityAcc-mean()-X  |  numeric |        
 10 | tGravityAcc-mean()-Y  |  numeric |        
 11 | tGravityAcc-mean()-Z  |  numeric |        
 12 | tGravityAcc-std()-X  |  numeric |         
 13 | tGravityAcc-std()-Y  |  numeric |         
 14 | tGravityAcc-std()-Z  |  numeric |         
 15 | tBodyAccJerk-mean()-X  |  numeric |       
 16 | tBodyAccJerk-mean()-Y  |  numeric |       
 17 | tBodyAccJerk-mean()-Z  |  numeric |       
 18 | tBodyAccJerk-std()-X  |  numeric |        
 19 | tBodyAccJerk-std()-Y  |  numeric |        
 20 | tBodyAccJerk-std()-Z  |  numeric |        
 21 | tBodyGyro-mean()-X  |  numeric |          
 22 | tBodyGyro-mean()-Y  |  numeric |          
 23 | tBodyGyro-mean()-Z  |  numeric |          
 24 | tBodyGyro-std()-X  |  numeric |           
 25 | tBodyGyro-std()-Y  |  numeric |           
 26 | tBodyGyro-std()-Z  |  numeric |           
 27 | tBodyGyroJerk-mean()-X  |  numeric |      
 28 | tBodyGyroJerk-mean()-Y  |  numeric |      
 29 | tBodyGyroJerk-mean()-Z  |  numeric |      
 30 | tBodyGyroJerk-std()-X  |  numeric |       
 31 | tBodyGyroJerk-std()-Y  |  numeric |       
 32 | tBodyGyroJerk-std()-Z  |  numeric |       
 33 | tBodyAccMag-mean()  |  numeric |          
 34 | tBodyAccMag-std()  |  numeric |           
 35 | tGravityAccMag-mean()  |  numeric |       
 36 | tGravityAccMag-std()  |  numeric |        
 37 | tBodyAccJerkMag-mean()  |  numeric |      
 38 | tBodyAccJerkMag-std()  |  numeric |       
 39 | tBodyGyroMag-mean()  |  numeric |         
 40 | tBodyGyroMag-std()  |  numeric |          
 41 | tBodyGyroJerkMag-mean()  |  numeric |     
 42 | tBodyGyroJerkMag-std()  |  numeric |      
 43 | fBodyAcc-mean()-X  |  numeric |           
 44 | fBodyAcc-mean()-Y  |  numeric |           
 45 | fBodyAcc-mean()-Z  |  numeric |           
 46 | fBodyAcc-std()-X  |  numeric |            
 47 | fBodyAcc-std()-Y  |  numeric |            
 48 | fBodyAcc-std()-Z  |  numeric |            
 49 | fBodyAccJerk-mean()-X  |  numeric |       
 50 | fBodyAccJerk-mean()-Y  |  numeric |       
 51 | fBodyAccJerk-mean()-Z  |  numeric |       
 52 | fBodyAccJerk-std()-X  |  numeric |        
 53 | fBodyAccJerk-std()-Y  |  numeric |        
 54 | fBodyAccJerk-std()-Z  |  numeric |        
 55 | fBodyGyro-mean()-X  |  numeric |          
 56 | fBodyGyro-mean()-Y  |  numeric |          
 57 | fBodyGyro-mean()-Z  |  numeric |          
 58 | fBodyGyro-std()-X  |  numeric |           
 59 | fBodyGyro-std()-Y  |  numeric |           
 60 | fBodyGyro-std()-Z  |  numeric |           
 61 | fBodyAccMag-mean()  |  numeric |          
 62 | fBodyAccMag-std()  |  numeric |           
 63 | fBodyBodyAccJerkMag-mean()  |  numeric |  
 64 | fBodyBodyAccJerkMag-std()  |  numeric |   
 65 | fBodyBodyGyroMag-mean()  |  numeric |     
 66 | fBodyBodyGyroMag-std()  |  numeric |      
 67 | fBodyBodyGyroJerkMag-mean()  |  numeric | 
 68 | fBodyBodyGyroJerkMag-std()  |  numeric |  