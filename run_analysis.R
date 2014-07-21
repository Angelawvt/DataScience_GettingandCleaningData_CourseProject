## ------------------------------------------------------------------------
# Run_analysis: reads in Samsung test and training data and creates 
#      a tidy data set of the averages of the Mean and Standard Deviation
#      measures for each subject and activity.
#  Assumption: current working directory contains the data set
#  Precondition: dplyr library must be installed 
# --------------------------------------------------------------------------
run_analysis <- function() {
     
     #Uses dplyr library for summarization
     library(dplyr)
     
     # Read files
     test_stfile <- "./test/subject_test.txt"
     test_xfile <- "./test/X_test.txt"
     test_yfile <- "./test/Y_test.txt"
     testST <- read.table(test_stfile)
     testX <- read.table(test_xfile)
     testY <- read.table(test_yfile)
     
     train_stfile <- "./train/subject_train.txt"
     train_xfile <- "./train/X_train.txt"
     train_yfile <- "./train/Y_train.txt"
     trainST <- read.table(train_stfile)
     trainX <- read.table(train_xfile)
     trainY <- read.table(train_yfile)
     
     featuresFile <- "./features.txt"
     features <- read.table(featuresFile)
     
     activityFile <- "./activity_labels.txt"
     activities <- read.table(activityFile)
     
     #Label the data more intuitively
     colnames(testST)[1] <- "Subject"
     colnames(trainST)[1] <- "Subject"
     colnames(testY)[1] <- "ActivityCode"
     colnames(trainY)[1] <- "ActivityCode"
     colnames(activities) <- c("ActivityCode","ActivityName")
     
     # Decode Activities in testY and trainY tables
     testAct <- factor(testY$ActivityCode,labels=activities$ActivityName)
     trainAct <- factor(trainY$ActivityCode,labels=activities$ActivityName)
     
     # Label the features as column names
     colnames(testX) <- features[,2]
     colnames(trainX) <- features[,2]
     
     # Add the subject and activity columns to the test and training data
     testMerged <- cbind(testST[1],testAct,testX)
     colnames(testMerged)[2] <- "ActivityName"
     trainMerged <- cbind(trainST[1],trainAct,trainX)
     colnames(trainMerged)[2] <- "ActivityName"
     
     # Combine all the test and training data
     allMerged <- rbind(testMerged,trainMerged)
     
     # Narrow down to just the mean and std variable data
     stdCols <- grep("std()",colnames(allMerged),fixed=TRUE)
     meanCols <- grep ("mean()",colnames(allMerged),fixed=TRUE)
     keepCols <- c(1,2,meanCols,stdCols)
     cleanData <- allMerged[,keepCols]
     
     # Make the variable names more meaningful
     newColNames <- gsub("BodyBody","Body",colnames(cleanData),fixed=TRUE)
     newColNames <- gsub("std()","StdDev",newColNames,fixed=TRUE)
     newColNames <- gsub("mean()","Mean",newColNames,fixed=TRUE)
     newColNames <- gsub("-","",newColNames,fixed=TRUE)
     newColNames <- gsub("^t","Time",newColNames)
     newColNames <- gsub("^f","Freq",newColNames)
     colnames(cleanData) <- newColNames
     
     # create a tidy data set with just the average of the mean and std data for 
     # each subject and activity name
     tidyData <- cleanData %>% group_by(Subject,ActivityName) %>% summarise_each(funs(mean))
     tidyData
}



                          
                          


