## load files
file_list <- list.files()
df_list <- lapply(file_list, read.table)
##name data frames
files <- gsub(".txt", "", file_list)
names(df_list) <- files
## apply column names
valid_names <- paste(df_list$features$V1, df_list$features$V2, sep = "")
colnames(df_list$X_test) <- valid_names
colnames(df_list$X_train) <- valid_names
colnames(df_list$y_test) <- "activity"
colnames(df_list$y_train) <- "activity"
colnames(df_list$subject_test) <- "subject"
colnames(df_list$subject_train) <- "subject"
## assemble data
train_data <- cbind(df_list$subject_train, df_list$y_train, df_list$X_train)
test_data <- cbind(df_list$subject_test, df_list$y_test, df_list$X_test)
data <- rbind(train_data, test_data)
## extract means and std's
data_mean_std <- select(data, matches("mean|std"))
data_mean_std <- cbind(data[, 1:2], data_mean_std)
## give descriptive names to activities
data_mean_std <- mutate(data_mean_std, activity = as.character(factor(activity, levels = 1:6, labels = df_list$activity_labels$V2)))
## give descriptive names to variables
names(data_mean_std)<-gsub("tBodyAcc-","Body acceleration signal in time domain (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyAccMag-","Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyAccJerk-","Body acceleration jerk signal in time domain (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyAccJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tGravityAcc-","Gravity acceleration signal in time domain (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tGravityAccMag-","Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyGyro-","Body acceleration signal in time domain (from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyGyroMag-","Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyGyroJerk-","Body acceleration jerk signal in time domain (from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("tBodyGyroJerkMag-","Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyAcc-","Body acceleration signal in frequence domain (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyAccMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyAccJerk-","Body acceleration jerk signal in frequence domain (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyGyro-","Body acceleration signal in frequence domain (from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyAccJerkMag-","Body acceleration jerk signal in frequence domain applied to Fast Fourrier Transform (from the accelerometer)",names(data_mean_std))
names(data_mean_std)<-gsub("fBodyGyroMag-","Body acceleration signal in frequence domain applied to Fast Fourier Transform (from the gyroscope)",names(data_mean_std))
names(data_mean_std)<-gsub("mean()", "mean", names(data_mean_std))
names(data_mean_std)<-gsub("std()", "std", names(data_mean_std))
## write the final table
finaldata<-data_mean_std%>%group_by(subject,activity)%>%summarise_all(mean)
write.table(finaldata, "../finaldata.txt", row.name=FALSE)