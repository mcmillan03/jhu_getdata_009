## -----------------------------------------------------------------------
## This function cleans the UCI HAR Dataset.
##
## Return: A "tidy" data set with the means of all mean and std
##         measurements aggregated by each unique subject and activity
##         pair.  Note, the field names are the same as the original data
##         that goes into calculate the mean.
##
## Note: run this script with the current working directory set to
##       the root "UCI HAR Dataset"
## -----------------------------------------------------------------------
run_analysis <- function() {
	#----------------------------------------------------
	# Merge the training and test activity labels
	testy <- read.table("test/y_test.txt")
	trainy <- read.table("train/y_train.txt")
	activityIndex <- rbind(trainy, testy)

	#----------------------------------------------------
	# Merge the training and test subjects
	testSubjects <- read.table("test/subject_test.txt")
	trainSubjects <- read.table("train/subject_train.txt")
	subjects <- rbind(trainSubjects, testSubjects)

	#----------------------------------------------------
	# Merge the training and test feature sets and load the feature names
	testX <- read.table("test/X_test.txt")
	trainX <- read.table("train/X_train.txt")
	featuresX <- rbind(trainX, testX)

	# Load the feature names
	featureNames <- read.table("features.txt")
	colnames(featuresX)<-featureNames[,2]

	# Extract the 68 mean and stddev measurement features from the original data.
	# One could add more indicies here to add the "*Means" features if needed.
	fieldIndices = c(
		1:6,      # tBodyAcc X,Y,Z
		41:46,    # tGravityAcc X,Y,Z
		81:86,    # tBodyAccJerk X,Y,Z
		121:126,  # tBodyGyro X,Y,Z
		161:166,  # tBodyGyroJerk X,Y,Z
		201,202,  # tBodyAccMag
		214,215,  # tGravityAccMag
		227,228,  # tBodyAccJerkMag
		240,241,  # tBodyGyroMag
		253,254,  # tBodyGyroJerkMag
		266:271,  # fBodyAcc X,Y,Z
		345:350,  # fBodyAccJerk X,Y,Z
		424:429,  # fBodyGyro X,Y,Z
		503,504,  # fBodyAccMag
		516,517,  # fBodyBodyAccJerkMag
		529,530,  # fBodyBodyGryoMag
		542,543)  # fBodyBodyGryoJerkMag
	
	# build a data frame to perform aggregate mean calculations
	mean_std_measurements <-NULL
	mean_std_measurements$Subject <- subjects$V1
	mean_std_measurements$Activity <- activityIndex$V1
	mean_std_measurements <- cbind(mean_std_measurements, featuresX[,fieldIndices])

	# compute the mean of each column of data in each subset group by subject and activity
	measurementMeans <- aggregate(mean_std_measurements,
						by=list(Subject,Activity),
						FUN = "mean")

	# replace the activity indices with descriptive factors (maintain the original order)
	activityLabels <- read.table("activity_labels.txt")
	measurementMeans$Subject  <- as.factor(measurementMeans$Subject)
	measurementMeans$Activity <- factor(measurementMeans$Activity, labels=activityLabels[,2])

	# Remove the unnecessary Group "by" variables added by the aggregate function.
	measurementMeans$Group.1 <- NULL
	measurementMeans$Group.2 <- NULL
	
	measurementMeans
}