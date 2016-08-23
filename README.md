# Getting & Cleaning Data - CourseProject
This repository contains the files required for Course Project of "Getting and Cleaning Data" course of John Hopkins University offered via Coursera.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##  Origin of data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data for the project comes from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Repository files
The files contained in this repo include:
* ReadMe markdown document (which you are now reading)
* run_analysis R script
* Codebook markdown document
* Tidy data text file

### run_analysis R script
The script does what is required for the assignment. It contains a description in its own body. Basically, it does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Codebook
The code book describes the variables, the data, and transformations done.

### Tidy data text file
The text file is the result of the Course project assignement, which contains the tidy dataset resulting from the R script and described in the codebook contained in the present repo.

