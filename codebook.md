# The code book for the course project
This code book describes the variables, the data, and any transformations or work that you performed to clean up the data

>Data is available from the source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The zip file containing the data can be found under the link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Available
The data files contains the following files

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Objective of the task is to extract the data, merge the data and clean up the data.
## R file and Transformation of data
The run_analysis file performs the tasks of merging and cleaning up of the data. The following sub-tasks are performed in arriving at the tidy data set. The data that are read in to the R environment for merging are obtained from the files: 'X_train/test.txt', 'y_train/test', 'subject_train/test'. The next step is to merge the respctive data sets using the 'rbind' command.

### Merges the training and the test sets to create one data set.
The task begins with reading the data sets under the test and train subfolders. 
### Extracts only the measurements on the mean and standard deviation for each measurement. 
### Uses descriptive activity names to name the activities in the data set
### Appropriately labels the data set with descriptive variable names. 
### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
