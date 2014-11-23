jhu_getdata_009
===============

Course project for JHU Getting and Cleaning Data course.  Data for this project comes from the UCI Machine Learning Repository and is the Human Activity Recognition Using Smartphones Data Set found at the following URL:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The Script
-----------

The script can be found in run_analysis.R.  Source this file and run "run_analysis()" (no arguments) with the working directory set to the top-level data directory "UCI HAR Dataset".

The script loads the features, subjects, and activity labels for both training and testing sets, extracts 66 mean and standard deviation metrics, and combines them into a single data set along with subject and activity variables.

Then it aggregates the mean of each metric for each unique combination of subject and activity and returns a data frame with 180 observations (6 activities x 30 subjects) for each of the metrics.