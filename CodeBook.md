#Original data

 Downloading and unzipping data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

 For more details, read "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

 "X_test", "y_test", and "subject_test" have the same nubmber (2947) of rows

 "y_test" has one column, values are integers between 1 and 6

 These six integers correspond to the six activities listed in the "activity_labels" file

 "subject_test" has one column, the values are in 1-30 range indicating the person that is being tested

 "feature" vector lists 561 types of measurements

 According to the README file, each feature corresponds one column of the "X_test" file

 Since the number of rows (2947) is much larger than the number of activities*subjects (6*30), rows respresent multiple measurements per activity per person

 All of the above also applies to to the training datasets but the number of rows is 7352


#Output file "MeansAndStdDev.csv" is created by

 combining rows for "X-train" and "X-test" files. These files contains the recorded measurements

 combining rows for "y-train" and "y-test" files. These files contain the Activity ID for each row of data

 combining rows for "subject-train" and "subject-test". These files contain the Subject ID for each row of data

 combining columns of the resulting three files

 selecting only variables wiht mean and std dev measurements

 replacing the Activity ID variable with a label from the "activity_labels" file

 adding sanitized variable names based on the "features" file 


#Output file "MeansAndStdDevSummary.csv" is created from "MeansAndStdDev.csv" by

 grouping data by Subject and Activity 

 calculating a mean within each group

#Output files share the same variables listed below:

SubjectID	

 Subject ID based on the "subject-train" and "subject-test" files

ActivityName

 Activity based on the "subject-train" and "subject-test" files and replaced with a label based on the "activity_labels" file

timeBodyAccMeanX 

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccMeanY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccMeanZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccStdX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccStdY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccStdZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccMeanX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccMeanY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccMeanZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccStdX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccStdY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccStdZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkMeanX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkMeanY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkMeanZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkStdX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkStdY	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkStdZ	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroMeanX	

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroMeanY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroMeanZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroStdX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroStdY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroStdZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkMeanX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkMeanY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkMeanZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkStdX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkStdY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkStdZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeGravityAccMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyAccJerkMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

timeBodyGyroJerkMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccStdX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccStdY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccStdZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanFreqX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanFreqY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMeanFreqZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkStdX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkStdY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkStdZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanFreqX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanFreqY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccJerkMeanFreqZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroStdX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroStdY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroStdZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanFreqX

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanFreqY

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyGyroMeanFreqZ

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyAccMagMeanFreq

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyAccJerkMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyAccJerkMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyAccJerkMagMeanFreq

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroMagMeanFreq

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroJerkMagMean

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroJerkMagStd

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file

freqBodyBodyGyroJerkMagMeanFreq

 Mean and std columns of the "X-train" and "X-test" files described in the "features" file