## --------------------------------
## CourseraCourse: DataScience - 3. Getting and Cleaning Data Course Project
## --------------------------------
## Student/Author: Benz Nydegger
## Date: 20-May-2018
## Input Data: UCI HAR Dataset
## Script Name: run_analysis.R
## Output Data: run_analysis_output.txt
## More information available in the README.md and CodeBook.md
## --------------------------------
## Algorithm of run_analysis.R:
##  1. Merge training and the test sets to create one data set.
##  2. Extract only the measurements on the mean and standard deviation for each measurement.
##  3. Use descriptive activity names to name the activities in the data set
##  4. Appropriately label the data set with descriptive variable names.
##  5. From the data set in step 4, create a second independent tidy  data set (run_analysis_output.txt), 
##  with the average of each variable for each activity and each subject.


#------------------------------------------------------------
#1. Merges the training and the test sets to create one data set.
#------------------------------------------------------------

# Read training & test data
testset <- read.table("UCI HAR Dataset/test/X_test.txt")
trainset <- read.table("UCI HAR Dataset/train/X_train.txt")

# Create one data set from both tables
testandtraindataset <- rbind(testset, trainset)


#------------------------------------------------------------
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#------------------------------------------------------------

# Lable Columns
features <- readLines("UCI HAR Dataset/features.txt")

# Find mean() & std() deviation entries
features <- grep("mean\\(\\)|std\\(\\)",features, value=TRUE)

# Get feature number for dataframe column extraction
featurestring <- strsplit(features," ")
firstElement <- function(x){x[1]}
featurenumber <- sapply(featurestring,firstElement)
featurenumber <- as.integer(featurenumber)

# Extract data for the mean & standard deviation measurments
meanandstandarddeviation <- testandtraindataset[,featurenumber]



#------------------------------------------------------------
#3. Uses descriptive activity names to name the activities in the data set
#------------------------------------------------------------

# Activity Lables
activitylables <- readLines("UCI HAR Dataset/activity_labels.txt")

# Get Activity Vector
allactivities <- c(as.numeric(readLines("UCI HAR Dataset/test/y_test.txt")), as.numeric(readLines("UCI HAR Dataset/train/y_train.txt")))

# Resolve activity number to lable
allactivities <- gsub("1", activitylables[1], allactivities)
allactivities <- gsub("2", activitylables[2], allactivities) 
allactivities <- gsub("3", activitylables[3], allactivities) 
allactivities <- gsub("4", activitylables[4], allactivities) 
allactivities <- gsub("5", activitylables[5], allactivities) 
allactivities <- gsub("6", activitylables[6], allactivities) 

# Add activity column to the left
meanandstandarddeviation <- cbind(typeofactivity=allactivities,meanandstandarddeviation)

#------------------------------------------------------------
#4. Appropriately labels the data set with descriptive variable names.
#------------------------------------------------------------

secondelement <- function(x){x[2]}
features <- sapply(featurestring,secondelement)

features <- gsub("^t", "time", features)
features <- gsub("^f", "frequency", features)
features <- gsub("Acc", "acceleration", features)
features <- gsub("Gyro", "gyroscope", features)
features <- gsub("std","standarddeviation", features)
features <- gsub("Mag","magnitude", features)
features <- gsub("-","", features)
features <- gsub("\\(\\)","", features)
features <- gsub("X$", "_X", features)
features <- gsub("Y$", "_Y", features)
features <- gsub("Z$", "_Z", features)
features <- tolower(features)

meanandstandarddeviation <- setNames(meanandstandarddeviation, c("typeofactivity", features))


#------------------------------------------------------------
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#	average of each variable for each activity and each subject.
#------------------------------------------------------------

# Create Subject Vector
subjects <- c(as.numeric(readLines("UCI HAR Dataset/test/subject_test.txt")), as.numeric(readLines("UCI HAR Dataset/train/subject_train.txt")))
subjects <- as.factor(subjects)

# Add subject column to the left
meanandstandarddeviation <- cbind(subjectvolunteer=subjects,meanandstandarddeviation)

library(dplyr)
library(datasets)
data(meanandstandarddeviation)

# with  group
solution <- meanandstandarddeviation %>% 
  group_by(subjectvolunteer,typeofactivity) %>% summarise_all(mean)

# Write tidy data set out
write.table(solution,"run_analysis_output.txt",sep=" ",row.names=FALSE)



## ____ END OF DOCUMENT ____

