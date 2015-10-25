##step 1: Merges the training and the test sets to create one data set.

aTest<-read.table("test/y_test.txt")
aTrain<-read.table("train/y_train.txt")
activity<-rbind(aTest,aTrain)
names(activity)="activity"

sTest<-read.table("test/subject_test.txt")
sTrain<-read.table("train/subject_train.txt")
subject<-rbind(sTest,sTrain)
names(subject)="subject"

fTest<-read.table("test/X_test.txt")
fTrain<-read.table("train/X_train.txt")
features<-rbind(fTest,fTrain)
featureNames<-read.table("features.txt")
names(features)<-featureNames$V2

##step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
selected<-as.character(featureNames$V2[grep("-(mean|std)\\(\\)", featureNames$V2)])
features2<-subset(features,select=c(selected))

##step 3: Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
activity[, 1] <- activityLabels[activity[, 1], 2]

##step 4: Labels the data set with descriptive variable names
names(features2)<-gsub("Acc", "Accelerometer", names(features2))
names(features2)<-gsub("BodyBody", "Body", names(features2))
names(features2)<-gsub("Gyro", "Gyroscope", names(features2))
names(features2)<-gsub("Mag", "Magnitude", names(features2))
names(features2)<-gsub("^f", "frequency", names(features2))
names(features2)<-gsub("^t", "time", names(features2))

##step 5: Creates a second, independent tidy data set with the average of each variable 
##for each activity and each subject.
data<-cbind(subject,activity,features2)
data2<-aggregate(. ~subject+activity, data, mean)
write.table(data2, file = "tidy.txt",row.name=FALSE)
dim(data2)
View(data2)