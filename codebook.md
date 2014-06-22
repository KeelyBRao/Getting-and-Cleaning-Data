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
The run_analysis file performs the tasks of merging and cleaning up of the data. The following sub-tasks are performed in arriving at the tidy data set. 

### Merges the training and the test sets to create one data set.
The task begins with reading the data sets under the test and train subfolders. The data that are read in to the R environment for merging are obtained from the files: 'X_train/test.txt', 'y_train/test', 'subject_train/test'. The next step is to merge the respctive data sets using the 'rbind' command. The merged data set are named as: 'X_Data','y_Data',subject_Data'. The data frame created from the merge has a dimension: 10299x561.
### Extracts only the measurements on the mean and standard deviation for each measurement. 
for extracting only the measurements on the mean and standard, the 'feature.txt' file is read into the R enviroment. From the features data, extract the iduces (indMeanStd) of features that have mean() and std() in the name strings. These extracted indices are used for created only mean and stadard deviation. X_Data data frame is updated with the indices obtained from the features list. Finally, the column names for the X_Data are assigned with the names from the feasures list. 
### Uses descriptive activity names to name the activities in the data set
For using the descriptive activity names to name the activities in the data set, the 'activity.txt' file is read into the console. y_Data file is updated with the descriptive names obtained from the activity list.
### Appropriately labels the data set with descriptive variable names. 
Labeling of the data set with descriptive variable names is obtained by combining X_Data, y_Data and subject_Data. The data frame containing the merged data is called tidydData. A "merged_data.txt" file is created by invoking read.table for the data obtained in this step.
### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Finally, tidy data sets are created with the average of each variable for each activity and each subject with the merged data set by employing the aggregate command. The data frame "tidyDataFinal" is created with the clean and tidy data set and the same is saved under the file "tidy_data.txt".
