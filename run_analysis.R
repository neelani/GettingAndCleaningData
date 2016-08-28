########################################################################################################## 
## Project     : Coursera Getting and Cleaning Data 
## Author      : Umapathy Bhakthavatuslu
## Created Date: 2016-08-22 
## Program     : runAnalysis.R 


## The purpose of this project is to demonstrate your ability to collect, work with, and 
## clean a data set. The goal is to prepare tidy data that can be used for later analysis.
## You will be graded by your peers on a series of yes/no questions related to the project. 
## You will be required to submit: 
## 1) a tidy data set as described below, 
## 2) a link to a Github repository with your script for performing the analysis, and 
## 3) a code book that describes the variables, the data, and any transformations or work 
## that you performed to clean up the data called CodeBook.md. You should also include a 
## README.md in the repo with your scripts. This repo explains how all of the scripts work 
## and how they are connected.

## One of the most exciting areas in all of data science right now is wearable computing - see 
## for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop 
## the most advanced algorithms to attract new users. The data linked to from the course website
## represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full
## description is available at the site where the data was obtained:
##    
##    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
##
## Here are the data for the project:
##    
##    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
##
## Create one R script called run_analysis.R that does the following. 
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names. 
## 5.From the data set in step 4, creates a second, independent tidy data set with the average
##   of each variable for each activity and each subject.
##
########################################################################################################## 

# Set the working directory
setwd("V:/MBA-Stevens/Data Science/03 Getting and Cleaning Data/Week 04") 

# load the required packages
packages <- c("data.table", "plyr")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

## Read in the data from files features.txt, activity_lables.txt, subject_train.txt, 
## x_train.txt and y_train.txt
features       = read.table('./UCI_HAR_Dataset/features.txt',header=FALSE) 
activityLables = read.table('./UCI_HAR_Dataset/activity_labels.txt',header=FALSE)
subjectTrain   = read.table('./UCI_HAR_Dataset/train/subject_train.txt',header=FALSE) 
xTrain         = read.table('./UCI_HAR_Dataset/train/x_train.txt',header=FALSE)
yTrain         = read.table('./UCI_HAR_Dataset/train/y_train.txt',header=FALSE)

# Assigin column names to the training dataset
colnames(activityLables)  = c('activityId','activityType'); 
colnames(subjectTrain)  = "subjectId"; 
colnames(xTrain)        = features[,2];  
colnames(yTrain)        = "activityId"; 

# Create the One training set by merging subject_train, x_train and y_train datasets
trainData = cbind(subjectTrain, xTrain, yTrain); 

## Read in the test data from subject_test.txt, x_test and y_test 
subjectTest = read.table('./UCI_HAR_Dataset/test/subject_test.txt',header=FALSE)
xTest       = read.table('./UCI_HAR_Dataset/test/x_test.txt',header=FALSE)
yTest       = read.table('./UCI_HAR_Dataset/test/y_test.txt',header=FALSE)

# Assign column names to the test dataset 
colnames(subjectTest) = "subjectId"; 
colnames(xTest)       = features[,2];  
colnames(yTest)       = "activityId"; 

# Create the One test set by merging subject_train, x_train and y_train datasets
testData = cbind(subjectTest, xTest, yTest); 


########################################################################################################## 
## 1.Merges the training and the test sets to create one data set.
##
# Combine training and test data 
comboData = rbind(trainData,testData); 
##
##
########################################################################################################## 
# 2. Extract only the measurements on the mean and standard deviation for each measurement.  
##
# Assing a combodata column names to a vector
cNames = colnames(comboData);  

# Select the requested features
selFeatures <- c(grep("Id$", cNames), grep("-(mean|std)\\(\\)", cNames))

# subset the data by selected columns
selFeaturesData <- comboData[, selFeatures]
##
########################################################################################################## 
# 3. Use descriptive activity names to name the activities in the data set 

# Merge the combo Data set with the acitivityLables table to include descriptive activity names 
selFeaturesData = merge(selFeaturesData, activityLables, by='activityId', all.x=TRUE); 
##
########################################################################################################## 

# extract the column names of "selFeaturesData' 
colNames <- colnames(selFeaturesData)


# format the column names
for (i in 1:length(colNames)) {
    colNames[i] = gsub("\\()","",colNames[i])
    colNames[i] = gsub("^(t)","time",colNames[i])
    colNames[i] = gsub("^(f)","freq",colNames[i])
}

# Assign the formatted column names
colnames(selFeaturesData) = colNames; 

########################################################################################################## 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average
#   of each variable for each activity and each subject.

# Exclude the columns 1 <- activityId, 2<- subjectId and 69 <-activityType for calculating averages
tidyData <- ddply(selFeaturesData, .(subjectId, activityId), function(x) colMeans(x[, 3:68]))

write.table(tidyData, "tidy_data.txt", row.name=FALSE)

########################################################################################################## 
