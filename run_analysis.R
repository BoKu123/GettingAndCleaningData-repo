# This scripts combines test and training data, merges data files with the subject and activity files,
# assignes appropriate column names, selects mean and std dev variables, saves a tidy dataset,
# groups data by subject and activity, computes group averages, and saves it as another tidy dataset.

run_analysis <- function() {
  
  # 1. Merge the training and the test sets to create one data set.
  
  # read the test and train data sets, as well as the activities and subject files
  message("reading data...")
  if(file.exists("UCI HAR Dataset/test/X_test.txt")) {
    testData <- read.table("UCI HAR Dataset/test/X_test.txt",sep = "")
  } else if(file.exists("X_test.txt")) {
    testData <- read.table("X_test.txt",sep = "")
  } else {
    stop("file X_test.txt does not exists in working directory")
  }
  if(file.exists("UCI HAR Dataset/train/X_train.txt")) {
    trainData <- read.table("UCI HAR Dataset/train/X_train.txt",sep = "")
  } else if(file.exists("X_train.txt")) {
    trainData <- read.table("X_train.txt",sep = "")
  } else {
    stop("file X_train.txt does not exists in working directory")
  }
  
  if(file.exists("UCI HAR Dataset/train/y_train.txt")) {
    trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt")
  } else if(file.exists("y_train.txt")) {
    trainActivities <- read.table("y_train.txt")
  } else {
    stop("file y_train.txt does not exists in working directory")
  }
  
  if(file.exists("UCI HAR Dataset/test/y_test.txt")) {
    testActivities <- read.table("UCI HAR Dataset/test/y_test.txt")
  } else if(file.exists("y_test.txt")) {
    testActivities <- read.table("y_test.txt")
  } else {
    stop("file y_test.txt does not exists in working directory")
  }
  
  if(file.exists("UCI HAR Dataset/test/subject_test.txt")) {
    testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
  } else if(file.exists("subject_test.txt")) {
    testSubjects <- read.table("subject_test.txt")
  } else {
    stop("file subject_test.txt does not exists in working directory")
  }
  
  if(file.exists("UCI HAR Dataset/train/subject_train.txt")) {
    trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
  } else if(file.exists("subject_train.txt")) {
    trainSubjects <- read.table("subject_train.txt")
  } else {
    stop("file subject_train.txt does not exists in working directory")
  }
  
  
  
  # there is no indication that rows are being repeated so I will put test data rows after the rows of the train data
  message("merging data...")
  allData <- rbind(trainData, testData) 
  allActivities <- rbind(trainActivities, testActivities) 
  allSubjects <- rbind(trainSubjects, testSubjects) 
  
  # add columns with Activity ids and subject ids to the main dataset
  allData$ActivityID <- unlist(allActivities)
  allData$SubjectID <- unlist(allSubjects)
  
  # clean 
  rm("testData","trainData","testActivities","trainActivities","testSubjects","trainSubjects","allActivities","allSubjects")
  
  
  # 2. Extract only the measurements on the mean and standard deviation for each measurement
  
  message("selecting and tidying data...")
  
  # read the list of the measurements
  if(file.exists("UCI HAR Dataset/features.txt")) {
    featuresList <- read.table("UCI HAR Dataset/features.txt",sep = "")
  } else if(file.exists("features.txt")) {
    featuresList <- read.table("features.txt")
  } else {
    stop("file features.txt does not exists in working directory")
  }
  
  
  
  # extract a vector listing only the rows that contain mean and std measurements
  featuresSelected <- grep("[ms][et][ad][n(]",as.character(featuresList$V2))
  
  # use this vector to extract mean and std columns from original data vector; keep activity and subject columns
  columnIDActivity <- which(colnames(allData)=="ActivityID")
  columnIDSubject <- which(colnames(allData)=="SubjectID")
  selectedData <- allData[,c(featuresSelected,columnIDActivity, columnIDSubject)]

  # clean 
  rm("allData")

    
  # 3. Use descriptive activity names to name the activities in the data set
  
  # read the Acitvity labels and turn into a look-up table

  if(file.exists("UCI HAR Dataset/activity_labels.txt")) {
    activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",sep = "")
  } else if(file.exists("activity_labels.txt")) {
    activityLabels <- read.table("activity_labels.txt",sep = "")
  } else {
    stop("file activity_labels.txt does not exists in working directory")
  }
  

  activityVector <- as.character(activityLabels$V2)
  
  # add a column with descriptive activity names
  selectedData$ActivityName <- activityVector[selectedData$ActivityID]
  # 4. Appropriately label the data set with descriptive variable names.
  
  # extract values of the selected measurements and make them more tidy
  featuresSelectedValues <- grep("[ms][et][ad][n(]",as.character(featuresList$V2),value = TRUE)
  featuresSelectedValues <-sub("^t","time",featuresSelectedValues)
  featuresSelectedValues <-sub("^f","freq",featuresSelectedValues)
  featuresSelectedValues <-sub("-mean","Mean",featuresSelectedValues)
  featuresSelectedValues <-sub("-std","Std",featuresSelectedValues)
  featuresSelectedValues <-sub("\\(\\)","",featuresSelectedValues)
  featuresSelectedValues <-sub("-","",featuresSelectedValues)
  
  # append the names of the last three columns
  featuresSelectedValues <- c(featuresSelectedValues,"ActivityID","SubjectID","ActivityName")
  
  # label the values 
  colnames(selectedData) <- featuresSelectedValues
  
  # finally, move the subject ID and activity name columns to the front, drop the redundant activity ID
  selectedData <- selectedData[,c(81,82,1:79)]
  
  # write the data set
  fileName1<-"MeansAndStdDev.txt"
  message("writing to ",fileName1," ...")
  write.table(selectedData,file = fileName1, row.names = FALSE)
  
  #5 From the data set in step 4, create a second, independent tidy data set with the average of each variable 
  # for each activity and each subject
  
  # load the dplyr package so that we use the grouping functionality
  require(dplyr)
  
  # group by activity and subject and create and calculate means
  selectedDataGrouped <- group_by(selectedData,SubjectID,ActivityName)
  tidySummary <- summarize_each(selectedDataGrouped,funs(mean))
  
  # write the second data set
  fileName2<-"MeansAndStdDevSummary.txt"
  message("writing to ",fileName2, " ...")
  write.table(tidySummary,file = fileName2, row.names = FALSE)
  message("done!")
}