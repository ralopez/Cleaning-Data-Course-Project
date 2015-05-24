#Code Book  
This data set is a transformation of two data sets obtained in the study “Human Activity Recognition Using Smartphones Dataset” (see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The original study carried out experiments with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the study captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.  
  
To obtain this data set, I merged the training and the test sets to create one data set. I then extracted only the measurements on the mean and standard deviation for each measurement (66 variables in total). Finally I calculated the average of each variable for each activity and each subject.  

Since there were 30 individuals and six activities, this data set contains 30*6=180 observations (or rows) with the values of the averages for each of the 66 variables.  

The number of columns in this data set is 68: the first column refers to the individual, the second to the activity, and the other 66 are the averages of the mean and standard deviation of 33 signals ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):  

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

This data set was elaborated by Rafael López for the Getting and Cleaning Data Course Project
May 24, 2015


