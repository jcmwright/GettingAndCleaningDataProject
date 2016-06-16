---
title: "CodeBook.md"
output: html_document
---
For variables referenced in the train and test datasets are described in the README.txt and features_info.txt files in the UCI HAR Dataset folder contained in the downloaded zip file.  The variables described below are the modified variable names or calculated variables created in this analysis.
        
| Original Variable               	| Modified Variable Name       	| Calculated Variable Mean       	|
|---------------------------------	|------------------------------	|--------------------------------	|
| tBodyAcc-mean()-X               	| tBodyAccMeanX                	| tBodyAccMeanXMean              	|
| tBodyAcc-mean()-Y               	| tBodyAccMeanY                	| tBodyAccMeanYMean              	|
| tBodyAcc-mean()-Z               	| tBodyAccMeanZ                	| tBodyAccMeanZMean              	|
| tBodyAcc-std()-X                	| tBodyAccStdDevX              	| tBodyAccStdDevXMean            	|
| tBodyAcc-std()-Y                	| tBodyAccStdDevY              	| tBodyAccStdDevYMean            	|
| tBodyAcc-std()-Z                	| tBodyAccStdDevZ              	| tBodyAccStdDevZMean            	|
| tGravityAcc-mean()-X            	| tGravityAccMeanX             	| tGravityAccMeanXMean           	|
| tGravityAcc-mean()-Y            	| tGravityAccMeanY             	| tGravityAccMeanYMean           	|
| tGravityAcc-mean()-Z            	| tGravityAccMeanZ             	| tGravityAccMeanZMean           	|
| tGravityAcc-std()-X             	| tGravityAccStdDevX           	| tGravityAccStdDevXMean         	|
| tGravityAcc-std()-Y             	| tGravityAccStdDevY           	| tGravityAccStdDevYMean         	|
| tGravityAcc-std()-Z             	| tGravityAccStdDevZ           	| tGravityAccStdDevZMean         	|
| tBodyAccJerk-mean()-X           	| tBodyAccJerkMeanX            	| tBodyAccJerkMeanXMean          	|
| tBodyAccJerk-mean()-Y           	| tBodyAccJerkMeanY            	| tBodyAccJerkMeanYMean          	|
| tBodyAccJerk-mean()-Z           	| tBodyAccJerkMeanZ            	| tBodyAccJerkMeanZMean          	|
| tBodyAccJerk-std()-X            	| tBodyAccJerkStdDevX          	| tBodyAccJerkStdDevXMean        	|
| tBodyAccJerk-std()-Y            	| tBodyAccJerkStdDevY          	| tBodyAccJerkStdDevYMean        	|
| tBodyAccJerk-std()-Z            	| tBodyAccJerkStdDevZ          	| tBodyAccJerkStdDevZMean        	|
| tBodyGyro-mean()-X              	| tBodyGyroMeanX               	| tBodyGyroMeanXMean             	|
| tBodyGyro-mean()-Y              	| tBodyGyroMeanY               	| tBodyGyroMeanYMean             	|
| tBodyGyro-mean()-Z              	| tBodyGyroMeanZ               	| tBodyGyroMeanZMean             	|
| tBodyGyro-std()-X               	| tBodyGyroStdDevX             	| tBodyGyroStdDevXMean           	|
| tBodyGyro-std()-Y               	| tBodyGyroStdDevY             	| tBodyGyroStdDevYMean           	|
| tBodyGyro-std()-Z               	| tBodyGyroStdDevZ             	| tBodyGyroStdDevZMean           	|
| tBodyGyroJerk-mean()-X          	| tBodyGyroJerkMeanX           	| tBodyGyroJerkMeanXMean         	|
| tBodyGyroJerk-mean()-Y          	| tBodyGyroJerkMeanY           	| tBodyGyroJerkMeanYMean         	|
| tBodyGyroJerk-mean()-Z          	| tBodyGyroJerkMeanZ           	| tBodyGyroJerkMeanZMean         	|
| tBodyGyroJerk-std()-X           	| tBodyGyroJerkStdDevX         	| tBodyGyroJerkStdDevXMean       	|
| tBodyGyroJerk-std()-Y           	| tBodyGyroJerkStdDevY         	| tBodyGyroJerkStdDevYMean       	|
| tBodyGyroJerk-std()-Z           	| tBodyGyroJerkStdDevZ         	| tBodyGyroJerkStdDevZMean       	|
| tBodyAccMag-mean()              	| tBodyAccMagMean              	| tBodyAccMagMeanMean            	|
| tBodyAccMag-std()               	| tBodyAccMagStdDev            	| tBodyAccMagStdDevMean          	|
| tGravityAccMag-mean()           	| tGravityAccMagMean           	| tGravityAccMagMeanMean         	|
| tGravityAccMag-std()            	| tGravityAccMagStdDev         	| tGravityAccMagStdDevMean       	|
| tBodyAccJerkMag-mean()          	| tBodyAccJerkMagMean          	| tBodyAccJerkMagMeanMean        	|
| tBodyAccJerkMag-std()           	| tBodyAccJerkMagStdDev        	| tBodyAccJerkMagStdDevMean      	|
| tBodyGyroMag-mean()             	| tBodyGyroMagMean             	| tBodyGyroMagMeanMean           	|
| tBodyGyroMag-std()              	| tBodyGyroMagStdDev           	| tBodyGyroMagStdDevMean         	|
| tBodyGyroJerkMag-mean()         	| tBodyGyroJerkMagMean         	| tBodyGyroJerkMagMeanMean       	|
| tBodyGyroJerkMag-std()          	| tBodyGyroJerkMagStdDev       	| tBodyGyroJerkMagStdDevMean     	|
| fBodyAcc-mean()-X               	| fBodyAccMeanX                	| fBodyAccMeanXMean              	|
| fBodyAcc-mean()-Y               	| fBodyAccMeanY                	| fBodyAccMeanYMean              	|
| fBodyAcc-mean()-Z               	| fBodyAccMeanZ                	| fBodyAccMeanZMean              	|
| fBodyAcc-std()-X                	| fBodyAccStdDevX              	| fBodyAccStdDevXMean            	|
| fBodyAcc-std()-Y                	| fBodyAccStdDevY              	| fBodyAccStdDevYMean            	|
| fBodyAcc-std()-Z                	| fBodyAccStdDevZ              	| fBodyAccStdDevZMean            	|
| fBodyAcc-meanFreq()-X           	| fBodyAccMeanFreqX            	| fBodyAccMeanFreqXMean          	|
| fBodyAcc-meanFreq()-Y           	| fBodyAccMeanFreqY            	| fBodyAccMeanFreqYMean          	|
| fBodyAcc-meanFreq()-Z           	| fBodyAccMeanFreqZ            	| fBodyAccMeanFreqZMean          	|
| fBodyAccJerk-mean()-X           	| fBodyAccJerkMeanX            	| fBodyAccJerkMeanXMean          	|
| fBodyAccJerk-mean()-Y           	| fBodyAccJerkMeanY            	| fBodyAccJerkMeanYMean          	|
| fBodyAccJerk-mean()-Z           	| fBodyAccJerkMeanZ            	| fBodyAccJerkMeanZMean          	|
| fBodyAccJerk-std()-X            	| fBodyAccJerkStdDevX          	| fBodyAccJerkStdDevXMean        	|
| fBodyAccJerk-std()-Y            	| fBodyAccJerkStdDevY          	| fBodyAccJerkStdDevYMean        	|
| fBodyAccJerk-std()-Z            	| fBodyAccJerkStdDevZ          	| fBodyAccJerkStdDevZMean        	|
| fBodyAccJerk-meanFreq()-X       	| fBodyAccJerkMeanFreqX        	| fBodyAccJerkMeanFreqXMean      	|
| fBodyAccJerk-meanFreq()-Y       	| fBodyAccJerkMeanFreqY        	| fBodyAccJerkMeanFreqYMean      	|
| fBodyAccJerk-meanFreq()-Z       	| fBodyAccJerkMeanFreqZ        	| fBodyAccJerkMeanFreqZMean      	|
| fBodyGyro-mean()-X              	| fBodyGyroMeanX               	| fBodyGyroMeanXMean             	|
| fBodyGyro-mean()-Y              	| fBodyGyroMeanY               	| fBodyGyroMeanYMean             	|
| fBodyGyro-mean()-Z              	| fBodyGyroMeanZ               	| fBodyGyroMeanZMean             	|
| fBodyGyro-std()-X               	| fBodyGyroStdDevX             	| fBodyGyroStdDevXMean           	|
| fBodyGyro-std()-Y               	| fBodyGyroStdDevY             	| fBodyGyroStdDevYMean           	|
| fBodyGyro-std()-Z               	| fBodyGyroStdDevZ             	| fBodyGyroStdDevZMean           	|
| fBodyGyro-meanFreq()-X          	| fBodyGyroMeanFreqX           	| fBodyGyroMeanFreqXMean         	|
| fBodyGyro-meanFreq()-Y          	| fBodyGyroMeanFreqY           	| fBodyGyroMeanFreqYMean         	|
| fBodyGyro-meanFreq()-Z          	| fBodyGyroMeanFreqZ           	| fBodyGyroMeanFreqZMean         	|
| fBodyAccMag-mean()              	| fBodyAccMagMean              	| fBodyAccMagMeanMean            	|
| fBodyAccMag-std()               	| fBodyAccMagStdDev            	| fBodyAccMagStdDevMean          	|
| fBodyAccMag-meanFreq()          	| fBodyAccMagMeanFreq          	| fBodyAccMagMeanZMean           	|
| fBodyBodyAccJerkMag-mean()      	| fBodyBodyAccJerkMagMean      	| fBodyBodyAccJerkMagMeanMean    	|
| fBodyBodyAccJerkMag-std()       	| fBodyBodyAccJerkMagStdDev    	| fBodyBodyAccJerkMagStdDevMean  	|
| fBodyBodyAccJerkMag-meanFreq()  	| fBodyBodyAccJerkMagMeanFreq  	| fBodyBodyAccJerkMagMeanZMean   	|
| fBodyBodyGyroMag-mean()         	| fBodyBodyGyroMagMean         	| fBodyBodyGyroMagMeanMean       	|
| fBodyBodyGyroMag-std()          	| fBodyBodyGyroMagStdDev       	| fBodyBodyGyroMagStdDevMean     	|
| fBodyBodyGyroMag-meanFreq()     	| fBodyBodyGyroMagMeanFreq     	| fBodyBodyGyroMagMeanZMean      	|
| fBodyBodyGyroJerkMag-mean()     	| fBodyBodyGyroJerkMagMean     	| fBodyBodyGyroJerkMagMeanMean   	|
| fBodyBodyGyroJerkMag-std()      	| fBodyBodyGyroJerkMagStdDev   	| fBodyBodyGyroJerkMagStdDevMean 	|
| fBodyBodyGyroJerkMag-meanFreq() 	| fBodyBodyGyroJerkMagMeanFreq 	| fBodyBodyGyroJerkMagMeanZMean  	|

The tidy data set has two additional variables:
SubjectID - the number given to each of 30 subjects to identify data taken during that subject's recorded measurements. This number is determined from the table in the subject_train.txt and subject_test.txt files.
ActivityID - The code that describes the activity performed by the train and test subjects. These codes and descriptions are taken from the y_train.txt and y_test.txt files. 
