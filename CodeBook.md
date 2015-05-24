#Code Book  
This data set is a transformation of two data sets obtained in the study “Human Activity Recognition Using Smartphones Dataset” (see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The original study carried out experiments with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the study captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.  
  
To obtain this data set, I merged the training and the test sets to create one data set. I then extracted only the measurements on the mean and standard deviation for each measurement (66 variables in total). Finally I calculated the average of each variable for each activity and each subject.

