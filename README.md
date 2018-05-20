

## README

Data Analysis on the Human Activity Recognition Dataset
Author: Benz Nydegger, Coursera Student
Data Repository: https://github.com/benznydegger
Version: 1.0
Date:05-2018


The Data Analysis Script 'run_analysis.R' has been created within a data science course project assignment.
It is reads data from the input data set 'UCI HAR Dataset', merges its training and test datasets and extracts mean() and std() measurements on each mesurement record.
Based on the newly extracted data set it analyses and creates an new tidy data set with the average of each variable for each activity and each subject.
For more information on the UCI HAR Dataset and its measurements please refer to its README.txt and its feature_info.txt

## The data analysis dataset includes the following files:

- 'README.md' : This file  gives explanation on how the analysis script works and how its interconnected files.
- 'CodeBook.md': Explanation on variables used in the run_analysis.R script
- 'run_analysis.R': Script that cleans and analysis the UCI HAR Dataset according to the Assignment_Instructions
- 'Assignement_Instructions.txt': Background information on the Data Analysis course project scope.
For more information about the data analysis dataset contact: Benz Nydegger

## Prerequisites before running data analysis script:

- Complete 'UCI HAR Dataset': Source Input Data Set (Raw Data Set) - see INPUT-Dataset -
- Make sure the 'UCI HAR Dataset' is placed at the same file system level as run_analysis.R
- The user running 'run_analysis.R' needs write access in the directory it resides

## INPUT-Dataset:

Download Link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	UCI HAR Dataset
	    ¦   .Rhistory
	    ¦   activity_labels.txt
	    ¦   features.txt
	    ¦   features_info.txt
	    ¦   README.txt
	    ¦
	    +---test
	    ¦   ¦   subject_test.txt
	    ¦   ¦   X_test.txt
	    ¦   ¦   y_test.txt
	    ¦   ¦
	    ¦   +---Inertial Signals
	    ¦           body_acc_x_test.txt
	    ¦           body_acc_y_test.txt
	    ¦           body_acc_z_test.txt
	    ¦           body_gyro_x_test.txt
	    ¦           body_gyro_y_test.txt
	    ¦           body_gyro_z_test.txt
	    ¦           total_acc_x_test.txt
	    ¦           total_acc_y_test.txt
	    ¦           total_acc_z_test.txt
	    ¦
	    +---train
	        ¦   subject_train.txt
	        ¦   X_train.txt
	        ¦   y_train.txt
	        ¦
	        +---Inertial Signals
	                body_acc_x_train.txt
	                body_acc_y_train.txt
	                body_acc_z_train.txt
	                body_gyro_x_train.txt
	                body_gyro_y_train.txt
	                body_gyro_z_train.txt
	                total_acc_x_train.txt
	                total_acc_y_train.txt
	                total_acc_z_train.txt

	* See acknowledgements to this data set


## DataAnalysis-Script:

- 'run_analysis.R': Script that cleans and analysis the UCI HAR Dataset according to the Assignment_Instructions

	run_analysis.R script breakdown:
		Step_1. Merge training and the test sets to create one data set.
		Step_2. Extract only the measurements on the mean and standard deviation for each measurement.
		Step_3. Use descriptive activity names to name the activities in the data set
		Step_4. Appropriately label the data set with descriptive variable names.
		Step_5. From the data set in step 4, create a second independent tidy  data set (run_analysis_output.csv), with the average of each variable for each activity and each subject.
	

## OUTPUT-Dataset:
- 'run_analysis_output.txt':  Tidy data set showing the average on the mean and standard deviation measurements for each activity and  each subject.


## Notes: 
The Data analysis script was developed and is intended to be run on
	OS Platform: Windows 10
	R-Studio - R version: 3.4.3 (2017-11-30)
	R Package dplyr


## Acknowledgements:
Publication reference to the UCI HAR Dataset  :
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


## License:
Free. No warranty . Run at your own risk.


c)2018-Benz Nydegger
