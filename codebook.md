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

## R file and Transformation of data
### Merges the training and the test sets to create one data set.
### Extracts only the measurements on the mean and standard deviation for each measurement. 
### Uses descriptive activity names to name the activities in the data set
### Appropriately labels the data set with descriptive variable names. 
### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
