#Script "run_analysis.R"

#Requirements
 *the "UCI HAR Dataset" directory containing data must be in the working directory. Alternatively, all input files must be in working directory.
 otherwise, download and unzip "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 Input files:
 X_test.txt
 X_train.txt
 y_test.txt
 y_train.txt
 subject_test.txt
 subject_train.txt
 features.txt
 activity_labels.txt

#Usage
 source("run_analysis.R")
 run_analysis()

#Input parameters
 NONE

#Output files
 "MeansAndStdDev.csv"
 "MeansAndStdDevSummary.csv"