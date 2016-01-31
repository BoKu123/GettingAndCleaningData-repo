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


#Output file "MeansAndStdDev.txt" is created by

 combining rows for "X-train" and "X-test" files. These files contains the recorded measurements

 combining rows for "y-train" and "y-test" files. These files contain the Activity ID for each row of data

 combining rows for "subject-train" and "subject-test". These files contain the Subject ID for each row of data

 combining columns of the resulting three files

 selecting only variables wiht mean and std dev measurements

 replacing the Activity ID variable with a label from the "activity_labels" file

 adding sanitized variable names based on the "features" file 


#Output file "MeansAndStdDevSummary.txt" is created from "MeansAndStdDev.txt" by

 grouping data by Subject and Activity 

 calculating a mean within each group

#Output files share the same variables listed below:

SubjectID - subject for a given row of measurements

ActivityName - activity for a given row of measurements

timeBodyAccMeanX 

timeBodyAccMeanY  

timeBodyAccMeanZ  

timeBodyAccStdX  

timeBodyAccStdY  

timeBodyAccStdZ  

timeGravityAccMeanX 

timeGravityAccMeanY 

timeGravityAccMeanZ  

timeGravityAccStdX  

timeGravityAccStdY  

timeGravityAccStdZ  

timeBodyAccJerkMeanX 

timeBodyAccJerkMeanY 

timeBodyAccJerkMeanZ 

timeBodyAccJerkStdX	

timeBodyAccJerkStdY	

timeBodyAccJerkStdZ	

timeBodyGyroMeanX	

timeBodyGyroMeanY

timeBodyGyroMeanZ

timeBodyGyroStdX

timeBodyGyroStdY

timeBodyGyroStdZ

timeBodyGyroJerkMeanX

timeBodyGyroJerkMeanY

timeBodyGyroJerkMeanZ

timeBodyGyroJerkStdX

timeBodyGyroJerkStdY

timeBodyGyroJerkStdZ

timeBodyAccMagMean

timeBodyAccMagStd

timeGravityAccMagMean

timeGravityAccMagStd

timeBodyAccJerkMagMean

timeBodyAccJerkMagStd

timeBodyGyroMagMean

timeBodyGyroMagStd

timeBodyGyroJerkMagMean

timeBodyGyroJerkMagStd

freqBodyAccMeanX

freqBodyAccMeanY

freqBodyAccMeanZ

freqBodyAccStdX

freqBodyAccStdY

freqBodyAccStdZ

freqBodyAccMeanFreqX

freqBodyAccMeanFreqY

freqBodyAccMeanFreqZ

freqBodyAccJerkMeanX

freqBodyAccJerkMeanY

freqBodyAccJerkMeanZ

freqBodyAccJerkStdX

freqBodyAccJerkStdY

freqBodyAccJerkStdZ

freqBodyAccJerkMeanFreqX

freqBodyAccJerkMeanFreqY

freqBodyAccJerkMeanFreqZ

freqBodyGyroMeanX

freqBodyGyroMeanY

freqBodyGyroMeanZ

freqBodyGyroStdX

freqBodyGyroStdY

freqBodyGyroStdZ

freqBodyGyroMeanFreqX

freqBodyGyroMeanFreqY

freqBodyGyroMeanFreqZ

freqBodyAccMagMean

freqBodyAccMagStd

freqBodyAccMagMeanFreq

freqBodyBodyAccJerkMagMean

freqBodyBodyAccJerkMagStd

freqBodyBodyAccJerkMagMeanFreq

freqBodyBodyGyroMagMean

freqBodyBodyGyroMagStd

freqBodyBodyGyroMagMeanFreq

freqBodyBodyGyroJerkMagMean

freqBodyBodyGyroJerkMagStd

freqBodyBodyGyroJerkMagMeanFreq 


# Column description from the original web site "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean