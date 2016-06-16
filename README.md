# GettingAndCleaningDataProject
Jennifer Wright

# Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

# The Data Used in this Project:
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset can be downloaded here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# The Analysis:
The objectives of the analysis were to complete the following:

<b>1. Merge the training and the test sets to create one data set.</b>
 
The data calculations were stored in the train and test folders X_test.txt files, and were matched with the activity description using the activity_labels.txt file and the subject using the subject_train.txt and subject_test.txt files.  The train and test data were read into a data frame, and the two data frames were combined to create a single data set with all data from both the train and test experiments.
        
<b>2. Extract only the measurements on the mean and standard deviation for each measurement.</b>
 
 A subset of the combined data containing only the subject number, activity description, and variable mean and standard deviation was created.

<b>3. Use descriptive activity names to name the activities in the data set.</b>

Activity codes in the dataset were substituted with the descriptions in the file activity_labels.txt.

<b>4. Appropriately label the data set with descriptive variable names. See CodeBook for variable names.</b>

Variable labels (column headers, except for the Subject and Activity labels) were reformated to be easily readable, and contain only alpha characters.      

<b>5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.</b>

The mean value of each variable was calculated for each combination of subject and specific activity. The data labels were changed to add "Mean" to the end of each varible name to indicate the change from previous data in the dataset. See Codebook for variables included.

# Files Available in this repository:
This README.md File - explanation of this repository, the analysis, and the files available.

CodeBook.md - definition file for the variables in the dataset, as well as any calculated variables.

run_analysis.R - R script that completes the objectives in the Analysis described above.

TidySmarphoneData.txt - an exported text file of the data produced in Objective 5 in the Analysis section above.

# Changes to script run_analysis.R

Download the run_analysis.R file to your working folder. In the run_analysis.R script, change the following variables as needed to reflect the path to your working folder:

Line 2 - set working directory path to your working directory folder.

Line 12 - change the path stored in the variable datasetpath to reflect the path to your working directory.
