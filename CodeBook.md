

## CODE-BOOK

'run_analysis.R' - Data Analysis on the Human Activity Recognition Dataset
Author: Benz Nydegger, Coursera Student
Data Repository: https://github.com/benznydegger
Version: 1.0
Date:05-2018


## Experimental design and background: 
	Within the Human Activity Recognition Experiment data was collected by 30 volonteers using Smartphones.
	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
	Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. (see README.txt & feature_info.txt)
	Using the UCI HAR Dataset datanalysis was made to get a tidi data set on the average of each mean & standard deviation variable for each activity and each subject(volonteer/person)
	

## Raw data from the UCI HAR Dataset:
	- Measurements for the test data set are given in X_test.txt (scientific exponent notation: e.g. 2.5309467e-001);
	- Measurements for the train data set are given in X_train.txt (scientific exponent notation: e.g.2.5309467e-001);
	- Indexed feature list (561) given in features.txt (number and character string); 
	- Activity labels are given in activity_lables.txt (number and character string);
	- Activity is given in y_train.txt for the training set (integer);
	- Activity is given in  x_test.txt for the testing set(integer); 
	
	
## Codebook: 
	Step_1. Measurement data from X_test.txt was loaded into a dataframe named testset (numeric floating-point); 
	Measurement data from X_train.txt was loaded into a dataframe named trainset (numeric floating-point); 
	Both data frames have been merged to one data frame named testandtraindataset (numeric floating-point);
	Step_2.Indexed feature list from features.txt has been loaded assigned to the variable named features as a vector (character);
	Set of features (Mean & Standard deviations) have been asigned  extracted to the vector variable named features (character);
	The feature variable character string has been split on whitespace to the variable featurestring (list) containing a pair list number:feature for each feature;
	The 1st element of each featurestring list pair representing the feature index has been extracted to featurenumber vector as integer (integer);
 	The Mean & Standard deviation data has been extracted by the variable featurenumber (66 features) from the testandtraindataset (561 features) into the meanandstandarddeviation data set (numeric floating-point);
	Step_3. The activity labels have been loaded from the activity_labels.txt and assigned to a vector activitylables(character);
	The activity information has been loaded from the test/y_test.txt and train/y_train.txt data sets into a numeric vector named allactivities(numeric);
	The numeric allactivities vector has been resolved with corresponding activity label from the character vector activitylables (character);
	The meanandstandarddeviation dataset has been extended by a column activity by the activitylables vector(character);
	Step_4. The 2nd element of each featurestring list pair representing the featuredescription has been extracted to features vector (character);
	All acronyms on the feature vector (character) have been replaced by readable descriptive text;
	All text characters have been converted to lowercase on the feature vector(character);
	The feature vector (character) has been assigned to the column names of the meanandstandarddeviation dataset;
	Step_5. Subjects data was loaded from test/subject_test.txt and train/subject_train.txt as numeric into subjects vector (numeric);
	The subjects vector has been converted into a factor and has been added as column to the meanandstandarddeviation data set;
	The meanandstandarddeviation dataset has been loaded into the dplyr package where it is grouped by the columns activity & subject while summarized on other variables by assigning its result to the solution data set;
	The tidy solution data frame is written to the run_analysis_output.txt data set

	
## Processed / Output Data: 
	run_analysis_output.txt
	
	Variable Names:
	[1] "subjectvolunteer"     : factor
	 [2] "typeofactivity"          : factor
	 [3] "timebodyaccelerationmean_x"             :numeric
	 [4] "timebodyaccelerationmean_y"             :numeric
	 [5] "timebodyaccelerationmean_z"             :numeric
	 [6] "timebodyaccelerationstandarddeviation_x"                   : numeric
	 [7] "timebodyaccelerationstandarddeviation_y"                    : numeric
	 [8] "timebodyaccelerationstandarddeviation_z"                    : numeric
	 [9] "timegravityaccelerationmean_x"                              : numeric
	[10] "timegravityaccelerationmean_y"                             : numeric
	[11] "timegravityaccelerationmean_z"                             : numeric
	[12] "timegravityaccelerationstandarddeviation_x"                : numeric
	[13] "timegravityaccelerationstandarddeviation_y"                : numeric
	[14] "timegravityaccelerationstandarddeviation_z"                 : numeric
	[15] "timebodyaccelerationjerkmean_x"                             : numeric
	[16] "timebodyaccelerationjerkmean_y"                             : numeric
	[17] "timebodyaccelerationjerkmean_z"                             : numeric
	[18] "timebodyaccelerationjerkstandarddeviation_x"                : numeric
	[19] "timebodyaccelerationjerkstandarddeviation_y"                : numeric
	[20] "timebodyaccelerationjerkstandarddeviation_z"                : numeric
	[21] "timebodygyroscopemean_x"                                    : numeric
	[22] "timebodygyroscopemean_y"                                    : numeric
	[23] "timebodygyroscopemean_z"                                    : numeric
	[24] "timebodygyroscopestandarddeviation_x"                       : numeric
	[25] "timebodygyroscopestandarddeviation_y"                       : numeric
	[26] "timebodygyroscopestandarddeviation_z"                       : numeric
	[27] "timebodygyroscopejerkmean_x"                                : numeric
	[28] "timebodygyroscopejerkmean_y"                                : numeric
	[29] "timebodygyroscopejerkmean_z"                                : numeric
	[30] "timebodygyroscopejerkstandarddeviation_x"                   : numeric
	[31] "timebodygyroscopejerkstandarddeviation_y"                   : numeric
	[32] "timebodygyroscopejerkstandarddeviation_z"                   : numeric
	[33] "timebodyaccelerationmagnitudemean"                          : numeric
	[34] "timebodyaccelerationmagnitudestandarddeviation"             : numeric
	[35] "timegravityaccelerationmagnitudemean"                       : numeric
	[36] "timegravityaccelerationmagnitudestandarddeviation"          : numeric
	[37] "timebodyaccelerationjerkmagnitudemean"                      : numeric
	[38] "timebodyaccelerationjerkmagnitudestandarddeviation"         : numeric
	[39] "timebodygyroscopemagnitudemean"                             : numeric
	[40] "timebodygyroscopemagnitudestandarddeviation"                : numeric
	[41] "timebodygyroscopejerkmagnitudemean"                         : numeric
	[42] "timebodygyroscopejerkmagnitudestandarddeviation"            : numeric
	[43] "frequencybodyaccelerationmean_x"                            : numeric
	[44] "frequencybodyaccelerationmean_y"                            : numeric
	[45] "frequencybodyaccelerationmean_z"                            : numeric
	[46] "frequencybodyaccelerationstandarddeviation_x"               : numeric
	[47] "frequencybodyaccelerationstandarddeviation_y"               : numeric
	[48] "frequencybodyaccelerationstandarddeviation_z"               : numeric
	[49] "frequencybodyaccelerationjerkmean_x"                        : numeric
	[50] "frequencybodyaccelerationjerkmean_y"                        : numeric
	[51] "frequencybodyaccelerationjerkmean_z"                        : numeric
	[52] "frequencybodyaccelerationjerkstandarddeviation_x"           : numeric
	[53] "frequencybodyaccelerationjerkstandarddeviation_y"           : numeric
	[54] "frequencybodyaccelerationjerkstandarddeviation_z"           : numeric
	[55] "frequencybodygyroscopemean_x"                               : numeric
	[56] "frequencybodygyroscopemean_y"                               : numeric
	[57] "frequencybodygyroscopemean_z"                               : numeric
	[58] "frequencybodygyroscopestandarddeviation_x"                  : numeric
	[59] "frequencybodygyroscopestandarddeviation_y"                  : numeric
	[60] "frequencybodygyroscopestandarddeviation_z"                  : numeric
	[61] "frequencybodyaccelerationmagnitudemean"                     : numeric
	[62] "frequencybodyaccelerationmagnitudestandarddeviation"        : numeric
	[63] "frequencybodybodyaccelerationjerkmagnitudemean"             : numeric
	[64] "frequencybodybodyaccelerationjerkmagnitudestandarddeviation": numeric
	[65] "frequencybodybodygyroscopemagnitudemean"                    : numeric
	[66] "frequencybodybodygyroscopemagnitudestandarddeviation"       : numeric
	[67] "frequencybodybodygyroscopejerkmagnitudemean"                : numeric
	[68] "frequencybodybodygyroscopejerkmagnitudestandarddeviation": numeric
	

__ END OF DOCUMENT __
