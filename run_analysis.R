# PEER ASSESSMENT ==> DATA SCINCE COURSE
feature_list <- read.table("features.txt", header=FALSE, sep="", strip.white=TRUE)
#TASK 1 ================================
# Merge the training and the test sets to create one data set. 
# Read data from TEST folder
setwd('./test') # Set the working directory to TEST folder and read and read all .TXT files
files_test <- list.files(pattern = "[.]txt$");
subject_data_test <- read.table(files_test[1]); #assuming tab separated values with a header
X_data_test <- read.table(files_test[2]); #assuming tab separated values with a header
y_data_test <- read.table(files_test[3]); #assuming tab separated values with a header
# == Read data from TRAIN folder
setwd('../train') # Set the working directory to TEST folder and read all .TXT files
files_train <- list.files(pattern = "[.]txt$");
subject_data_train <- read.table(files_train[1]); #assuming tab separated values with a header
X_data_train <- read.table(files_train[2]); #assuming tab separated values with a header
y_data_train <- read.table(files_train[3]); #assuming tab separated values with a header
# JOIN THE DATA SETS USING RBIND
X_Data <- rbind(X_data_test, X_data_train);
y_Data <- rbind(y_data_test, y_data_train);
subject_Data <- rbind(subject_data_test, subject_data_train);
names(subject_Data) <- "Subject"
#=====================================  END of Task 1
# TASK 2 =============================
# Extracts only the measurements on the mean and standard deviation for each measurement. 
setwd('..')
features_data <- read.table("features.txt")
pattern <- "mean\\(\\)|std\\(\\)"; # Pattern for GREP containing mean OR std values
indMeanStd <- grep(pattern, features_data[,2], ignore.case=FALSE, perl=TRUE)
X_Data <- X_Data[, indMeanStd]
features_list <- gsub("mean\\(\\)", "Mean", features_data[indMeanStd, 2])
features_final_mean_std <- gsub("std\\(\\)", "Std", features_list)
names(X_Data) <- features_final_mean_std;
#===================================== END of Task 2
#TASK 3 ==============================
#Uses descriptive activity names to name the activities in the data set
activity <- read.table("./activity_labels.txt")
activityLabel <- activity[y_Data[, 1], 2]
y_Data[, 1] <- activityLabel
names(y_Data) <- "Activity_label";
#===================================== END of Task 3
#Task 4: =============================
# Appropriately labels the data set with descriptive variable names.
tidydData <- cbind(X_Data, y_Data, subject_Data)
write.table(tidydData, "merged_data.txt") # write out the merged dataset
#===================================== END of Task 4
# TASK 5 =============================
# Creates a second, independent tidy data set with the average of each variable for each activity and each subjec
elim_colums <- dim(tidydData)[2]-2; # eliminate colums with text in them for computing mean
tidyDataFinal = aggregate(tidydData[,1:elim_colums], by=list(activity = tidydData$Activity_label, subject=tidydData$Subject), mean)
write.table(tidyDataFinal, "tidy_data.txt") # write out the dataset
#====================================== END of Task 5
