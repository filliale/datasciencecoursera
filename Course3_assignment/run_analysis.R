library(dplyr)

features <- read.table("./features.txt", quote="\"", comment.char="")

# Load Data
X_test <- read.table("./test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("./test/y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("./test/subject_test.txt", quote="\"", comment.char="")

X_train <- read.table("./train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("./train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("./subject_train.txt", quote="\"", comment.char="")

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# load mean / std features names and indeces
meanFeatures <- features[grep("mean()",features$V2),]
meanFeatures <- meanFeatures[grepl("meanFreq", meanFeatures$V2)==FALSE,]

features <- features[grep("std()",features$V2),]
features <- rbind(features,meanFeatures)

# cut off unwanted features
X_train <- select(X_train, features[[1]])
X_test <- select(X_test, features[[1]])

#set feature names
names(X_test) <- features[[2]]
names(y_test) <- "activity"
names(subject_test) <- "Subject"

names(X_train) <- features[[2]]
names(y_train) <- "activity"
names(subject_train) <- "Subject"


## 1. Merges the training and the test sets to create one data set.
# merging test data
testdata <- cbind(subject_test,y_test,X_test)
# merging training data
traindata <- cbind(subject_train, y_train, X_train)
# merging training + test data
data <- rbind(testdata,traindata)

# clean up
rm(list = c("X_test", "y_test", "subject_test", "X_train", "y_train", "subject_train", "testdata","traindata"))


# 3. Uses descriptive activity names to name the activities in the data set
# load activity names
activity_labels <- read.table("./activity_labels.txt", quote="\"", comment.char="")
names(activity_labels) <- c("id", "activity_name")

# merge names with data
data <- merge(data,activity_labels, by.x = "activity", by.y = "id", all = TRUE )
# rearange dataset
data <- select(data, 1,2,69,3:68)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
result <- data %>%
  group_by(activity_name, Subject) %>%
  summarise_at(vars(4:69), funs(mean(., na.rm=TRUE)))




