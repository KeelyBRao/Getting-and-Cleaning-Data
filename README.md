# Getting-and-Cleaning-Data

This File describes how the run_analysis R file can be exceuted for merging test and train data sets and creating a tidy data set accroding to the specifications that can be found at: https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions

## Before Running the "R" file
Before running the R file (run_analysis.R), make sure the data is extracted from the file using the weblink https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and un-zip the folders and make the folder in which the data is un-zipped as working directory using setwd() command in R.

## Merging and crating tidy data set
Call the run_analysis.R from the R console. This file was created and tested in RStudio. 
> The R file takes the data from train and test folders and merges them into one. The merge data is stored under the file name "merge_data.txt".



