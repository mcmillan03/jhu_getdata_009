## ---------------------------------------------------------------------
## This function cleans the UCI HAR Dataset.
##
## Return: A "tidy" data set with the means of all mean and std
##         measurements aggregated for each subject and activity.
##
## Note: run this script with the current working directory set to
##       the root "UCI HAR Dataset"
## ---------------------------------------------------------------------
library(dplyr)
library(tidyr)

runAnalysis <- function() {
	setwd(dirname)

	# Merge the training and test sets
	testX <- read.table("test/X_test.txt")
	trainX <- read.table("train/X_train.txt")
	featuresX <- rbind(trainX, testX)

	testy <- read.table("test/y_test.txt")
	trainy <- read.table("train/y_train.txt")
	activityIndex <- rbind(trainy, testy)

	testSubjects <- read.table("test/subject_test.txt")
	trainSubjects <- read.table("train/subject_train.txt")
	subjects <- rbind(trainSubjects, testSubjects)

	# set the feature names
	featureNames <- read.table("features.txt")
	colnames(featuresX)<-featureNames[,2]

	# set the label name and convert indicies to descriptive activity factor
	activityLabels <- read.table("activity_labels.txt")
	activity <- activityLabels[activityIndex[,1],2]

	# Extract just the mean and stddev features
	fieldIndices = c(
		1:6,      #tBodyAcc
            41:46,    #tGravityAcc
		81:86,    #tBodyAccJerk
		121:126,  #tBodyGyro
            161:166,  #tBodyGyroJerk
		201,202,  #tBodyAccMag
		214,215,  #tGravityAccMag
		227,228,  #tBodyAccJerkMag
		240,241,  #tBodyGyroMag
		253,254,  #tBodyGyroJerkMag
		266:271,  #fBodyAcc
		345:350,  #fBodyAccJerk
		424:429,  #fBodyGyro
		503,504,  #fBodyAccMag
		516,517,  #fBodyBodyAccJerkMag
		529,530,  #fBodyBodyGryoMag
		542,543)  #fBodyBodyGryoJerkMag
	
	dataset <- featuresX[,fieldIndices]
	dataset$Activity = activity
	dataset$Subjects = subjects$V1

	# Aggregate data for each type of activity
	subset1 = subset(dataset, Activity = "LAYING")
	subset2 = subset(dataset, Activity = "SITTING"
	 "STANDING" "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"