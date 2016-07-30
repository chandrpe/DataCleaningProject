#initial steps to read and extract data from the files
#download the file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./dataset.zip")

#unzip the files
unzip("dataset.zip")

#Read the files in train folder

FileXTrain <- file.path('UCI HAR Dataset', 'train', 'X_train.txt')
trainX <- read.table(FileXTrain)
FileYTrain <- file.path('UCI HAR Dataset', 'train', 'y_train.txt')
trainY <- read.table(FileYTrain)
SubjectTrain <- file.path('UCI HAR Dataset', 'train', 'subject_train.txt')
subjecttrain <- read.table(SubjectTrain)

#Read the files from test folder
FileXTest <- file.path('UCI HAR Dataset', 'test', 'X_test.txt')
testX <- read.table(FileXTest)
FileYTest <- file.path('UCI HAR Dataset', 'test', 'y_test.txt')
testY <- read.table(FileYTest)
SubjectTest <- file.path('UCI HAR Dataset', 'test', 'subject_test.txt')
subjecttest <- read.table(SubjectTest)

##1. Merges the training and the test sets to create one data set.
TrainData <- cbind(trainX, trainY, subjecttrain)
TestData <- cbind(testX, testY, subjecttest)
Data <- rbind(TrainData,TestData)

#to check the structure of the Data
str(Data)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.

#to name the variables as per their features
FeaturesLabels <- file.path('UCI HAR Dataset', 'features.txt')
desclabels <- read.table(FeaturesLabels, sep = " ")
desclabels <- c(as.character(desclabels[,2]), "activity", "subject")
colnames(Data) <- desclabels

#to choose the variable names with strings "mean" or "std" 
mymean <- which(grepl("mean", colnames(Data)))
mystd <- which(grepl("std", colnames(Data)))
newData <- Data[,c(mymean, mystd, ncol(Data)-1, ncol(Data))]

#to check the structure of the dataset formed 
str(newData)

##3.Uses descriptive activity names to name the activities in the data set

#to read the activity names from the file
Dataactivity <- file.path('UCI HAR Dataset', 'activity_labels.txt')
activitylabels <- read.table(Dataactivity, sep = " ")


#find the factor of variable "activity"  in our dataset newData to get the descriptive names
newData$activity <- factor(newData$activity, labels = activitylabels[,2])

#to check the output 
head(newData$activity, 30)

##4.Appropriately labels the data set with descriptive variable names.
#t for time
#f for frequence
#Acc for Accelerometer
#Gyro for Gyroscope
#Mag for Magnitude
#BodyBody to Body

names(newData)<-gsub("^t", "time", names(newData))
names(newData)<-gsub("^f", "frequency", names(newData))
names(newData)<-gsub("Acc", "Accelerometer", names(newData))
names(newData)<-gsub("Gyro", "Gyroscope", names(newData))
names(newData)<-gsub("Mag", "Magnitude", names(newData))
names(newData)<-gsub("BodyBody", "Body", names(newData))

##5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)

#arrange the dataset according to subject and activity 
meltData <- melt(newData, id = c("subject", "activity"))

#to check the structure 
str(meltData)

#find the aggregate of the data as per the subject and activity and find the means 
tidyData <- dcast(meltData, formula = subject + activity ~ variable,fun.aggregate = mean)

#write the tidy data
write.table(tidyData, "tidyDataSet.txt", row.names = FALSE)












