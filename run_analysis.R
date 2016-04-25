##step 1: Merges the training and the test sets to create one data set.
test_activity<-read.table("test/y_test.txt")
train_activity<-read.table("train/y_train.txt")
activity<-rbind(test_activity,train_activity)
names(activity)="activity"

test_subject<-read.table("test/subject_test.txt")
train_subject<-read.table("train/subject_train.txt")
subject<-rbind(test_subject,train_subject)
names(subject)="subject"

test_data<-read.table("test/X_test.txt")
train_data<-read.table("train/X_train.txt")
mydata<-rbind(test_data,train_data)
feature_names<-read.table("features.txt")
names(mydata)<-feature_names$V2

##step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
selected<-as.character(feature_names$V2[grep("-(mean|std)\\(\\)", feature_names$V2)])
mydata2<-subset(mydata,select=c(selected))

##step 3: Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
activity[, 1] <- activity_labels[activity[, 1], 2]

##step 4: Labels the data set with descriptive variable names
names(mydata2)<-gsub("Acc", "Accelerometer", names(mydata2))
names(mydata2)<-gsub("Gyro", "Gyroscope", names(mydata2))
names(mydata2)<-gsub("Mag", "Magnitude", names(mydata2))
names(mydata2)<-gsub("BodyBody", "Body", names(mydata2))
names(mydata2)<-gsub("^f", "frequency_", names(mydata2))
names(mydata2)<-gsub("^t", "time_", names(mydata2))
names(mydata2)<-gsub("-mean\\(\\)", "\\_mean", names(mydata2))
names(mydata2)<-gsub("-std\\(\\)", "_std", names(mydata2))

##step 5: Creates a second, independent tidy data set with the average of each variable 
##for each activity and each subject.
data<-cbind(subject,activity,mydata2)
data2<-aggregate(. ~subject+activity, data, mean)
write.table(data2, file = "tidydata.txt",row.name=FALSE)
dim(data2)
View(data2)