##Merges the training and the test sets to create one data set.
##Uses descriptive activity names to name the activities in the data set

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

allData<-cbind(activity,subject,features)


##Extracts only the measurements on the mean and standard deviation for each measurement. 
selected<-as.character(featureNames$V2[grep("mean\\(\\)|std\\(\\)", featureNames$V2)])
data<-subset(allData,select=c("subject","activity",selected))

##Labels the data set with descriptive variable names
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("^t", "time", names(data))

##Creates a second, independent tidy data set with the average of each variable 
##for each activity and each subject.
data2<-aggregate(. ~subject+activity, data, mean)
write.table(data2, file = "tidy.txt",row.name=FALSE)
