# Cleaning-Data-Course-Project
The unique script run_analysis.R does everything the course project asked for.
It is divided, sequentially, into 5 parts each of which does the following:

PART 1: Merges the training and the test sets to create one data set & Appropriately labels the data set with descriptive variable names
It does it in 3 steps  
1.1 Reads all the relevant files (they should be located in the working directory) and stores them in data frames     
1.2 Labels the data frames with descriptive variable names  
1.3 Merges the data frames into one data set   

PART 2: For the data set created in Part 1, this part extracts only the measurements on the mean and standard deviation for each measurement.
It does it in 2 steps  
2.1 Finds columns that contain "mean()" and "std()"  
2.2 Subsets data to selected columns  

PART 3: Uses descriptive activity names to name the activities in the data set obtained in Part 2
  
PART 4: Using the data set obtained in Part 3, this part creates an independent tidy data set with the average of each variable for each activity and each subject.
  
PART 5: Writes to file "Tidy.txt" the tidy data obtained in Part 4. It also reads it and shows it to make sure it is OK  
  
  
#NOTE: In order to view correctly the "Tidy.txt" file you should save it in your working directory and use (in RStudio) the commands   
data <- read.table("Tidy.txt", header = TRUE)  
View(data)
