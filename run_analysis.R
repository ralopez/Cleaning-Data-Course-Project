## PART 1: Merges the training and the test sets to create one data set
##                                 &
##        Appropriately labels the data set with descriptive variable names
##
     ##1.1 Reads all the relevant files (they should be located in the working directory) 
     ##    and stores them in data frames           
          subjtest<-read.table("subject_test.txt")
          actitest<-read.table("y_test.txt")
          datatest<-read.table("X_test.txt")
          subjtrain<-read.table("subject_train.txt")
          actitrain<-read.table("y_train.txt")
          datatrain<-read.table("X_train.txt")
          var<-read.table("features.txt")
          activities<-read.table("activity_labels.txt")[,2]
     ##1.2 Labels the data frames with descriptive variable names
          colnames(datatest)<-var[,2]
          colnames(datatrain)<-var[,2]
          colnames(subjtest)<-"subject"
          colnames(subjtrain)<-"subject"
          colnames(actitest)<-"activity"
          colnames(actitrain)<-"activity"
     ##1.3 Merges the data frames into one data set 
          datatest<-cbind(subjtest,actitest,datatest)
          datatrain<-cbind(subjtrain,actitrain,datatrain)
          data<-rbind(datatest,datatrain)

##PART 2: Extracts only the measurements on the mean and standard deviation for each measurement.
     ## 2.1 finds columns that contain "mean()" and "std()"
          vv<-colnames(data)
          colmean<-grep("mean()", vv, fixed=TRUE)
          colstd<-grep("std()", vv, fixed=TRUE)
     ## 2.2 subsets data to selected columns plus the first two
          selectcols<-c(1,2,colmean,colstd)          
          data<-data[,selectcols]

##PART 3: Uses descriptive activity names to name the activities in the data set
     col<-data[,"activity"]
     colchar<-as.character(col)
     for (i in 1:length(col))  {colchar[i]<-as.character(activities[col[i]])}
     data[,"activity"]<-colchar
          
##PART 4: Creates an independent tidy data set with the average of each variable 
##        for each activity and each subject.
##
     lista<-list(data[,1],data[,2])
     averages<-NULL
          for (i in 3:68) {
          tabla<-tapply(data[,i],lista,mean) ## calculates mean for variable i by subject and activity
          averages<-cbind(averages,as.vector(tabla))
          }
     col2<-rep(colnames(tabla),each=30)
     col1<-rep(1:30,6)
     tidy<-as.data.frame(cbind(col1,col2,averages),stringsAsFactors=FALSE)
     colnames(tidy)<-colnames(data)
          
##PART 5: Writes the tidy data to file and checks it is OK
     ##5.1 Writes tidy data to file "Tidy.txt"
          write.table(tidy, file="Tidy.txt",row.name=FALSE)
     ##5.2 Reads "Tidy.txt" file and shows it to make sure everything is OK
          demo <- read.table("Tidy.txt", header = TRUE)
          View(demo)

