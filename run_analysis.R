# Download and unzip the dataset
filename <- "getdata_dataset.zip"
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename) #add [,method="curl"] if you use Mac
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

# Load datasets
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("activityId","activityName")
features <- read.table("UCI HAR Dataset/features.txt")
colnames(features) <- c("featureId","feature")

test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/Y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

train_set <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/Y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Merge datasets (Step 1 Course Project)
test_data <- cbind(test_subjects, test_labels, test_set)
train_data <- cbind(train_subjects, train_labels, train_set)

all_data <- rbind(train_data, test_data)

# Label the data set (Step 4 CP)
features_names <- as.character(features[,2])
colnames(all_data) <- c("subjectId","activityId",features_names)

# Select measurements "mean" and "std" (Step 2 CP)
features_selected <- grepl(".[Mm]ean.|.[Ss]td.",features_names)
selection <- as.logical(c("TRUE","TRUE",features_selected))

selected_data <- all_data[selection]

# Use descriptive activity names (Step 3 CP)
selected_data$activityId <- factor(selected_data$activityId,
                                   levels = activity_labels[,1],
                                   labels = activity_labels[,2])

# Create a dataset with averages by subject/activity (Step 5 CP)
library(dplyr)

average_data <- selected_data %>% group_by(subjectId,activityId) %>%
        summarize_each(funs(mean))

write.table(average_data, "average_data.txt", row.name=FALSE)
