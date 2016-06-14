##set working directory and create local file structure
#setwd("J:/Data_Science_Specialization/Getting_and_Cleaning_Data/Week_4")
#if(!file.exists("./data")){dir.create("./data")}

##get data and unzip in the appropriate location
#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, "CleaningDataProject.zip")
#unzip("CleaningDataProject.zip", exdir = "./data")

##Read files in to R
#set directory paths for convenience
datasetpath <- "J:/Data_Science_Specialization/Getting_and_Cleaning_Data/Week_4/data/UCI HAR Dataset"
trainpath <- paste(datasetpath, "train", sep = "/")
testpath <- paste(datasetpath, "test", sep = "/")

#Read in files
features <- read.table(paste(datasetpath, "features.txt", sep = "/"), header = FALSE)
trainsubject <- read.table(paste(trainpath, "subject_train.txt", sep = "/"), header = FALSE)
trainstats <- read.table(paste(trainpath, "X_train.txt", sep = "/"), header = FALSE)
trainactivity <- read.table(paste(trainpath, "Y_train.txt", sep = "/"), header = FALSE)

testsubject <- read.table(paste(testpath, "subject_test.txt", sep = "/"), header = FALSE)
teststats <- read.table(paste(testpath, "X_test.txt", sep = "/"), header = FALSE)
testactivity <- read.table(paste(testpath, "Y_test.txt", sep = "/"), header = FALSE)

columnnames <- names(transtats) #get column names
activitylabels <- read.table(paste(datasetpath,"activity_labels.txt", sep = "/"), header = FALSE)
activitylabels.char <- as.character(activitylabels[,2])

##Create training data frame
traindf <- cbind(trainsubject, trainactivity, trainstats)
#get column names from features file, add to train data frame
columnnames.char <- as.character(columnnames)
colnames(traindf) <- c("SubjectID", "ActivityID", columnnames.char) #Add column names for subject and activity to combined train data
##Create test data frame
testdf <- cbind(testsubject, testactivity, teststats)
colnames(testdf) <- c("SubjectID", "ActivityID", columnnames.char) #Add column names for subject and activity to combined test data

##Merges the training and the test sets to create one data set. (Ob1)
combineddf <- rbind(traindf, testdf)

##Extracts only the measurements on the mean and standard deviation for each measurement. (Ob2)
featuressub <- names(combineddf)
meanstdnames <- grep("ID$|.*mean*|.*std*", featuressub, value = TRUE)
meanstddf <- combineddf[meanstdnames]

##Uses descriptive activity names to name the activities in the data set. (Ob3)
meanstddf$ActivityID <- activitylabels[,2][match(meanstddf$ActivityID, activitylabels[,1])]

##Appropriately labels the data set with descriptive variable names. (Ob4).
meanstdnames.rewrite = gsub("-mean", "Mean", meanstdnames)  #change mean to remove dash and capitalize
meanstdnames.rewrite = gsub("-std", "StdDev", meanstdnames.rewrite) #change std to remove dash and be more descriptive
meanstdnames.rewrite = gsub("[()-]", "", meanstdnames.rewrite) #remove parentheses
colnames(meanstddf) <- meanstdnames.rewrite

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (Ob5)
melted <- melt(meanstddf, id.vars = c("SubjectID", "ActivityID")) #Change the wide table to a long table.
casted <- dcast(melted, SubjectID + ActivityID ~ variable, mean) #take the average of each subject/activity combination.
#Change the variable names to indicate that the mean was calculated for each Subject/Activity pair.
castednames <- names(casted)
castednames.rewrite = gsub("Mean$", "MeanMean", castednames) 
castednames.rewrite = gsub("X$", "XMean", castednames.rewrite)
castednames.rewrite = gsub("Y$", "YMean", castednames.rewrite)
castednames.rewrite = gsub("Z$", "ZMean", castednames.rewrite)
castednames.rewrite = gsub("Dev$", "DevMean", castednames.rewrite)
castednames.rewrite = gsub("Freq$", "ZMean", castednames.rewrite)
colnames(casted) <- castednames.rewrite #replace corrected column names in data set

#Export a text file of the data set
write.table(casted, "tidysmartphonedata.txt", row.names = FALSE)
