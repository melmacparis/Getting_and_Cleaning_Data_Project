#Loading data.
library(dplyr)
library(plyr)
labels<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")


#Merging data first by train and test subsets.
xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("UCI HAR Dataset/train/subject_train.txt")

xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("UCI HAR Dataset/test/subject_test.txt")

traindata<-cbind(xtrain,ytrain)  
traindata<-cbind(traindata,subtrain)

testdata<-cbind(xtest,ytest)  
testdata<-cbind(testdata,subtest)

data<-rbind(traindata,testdata)



#Labeling columns using features data.
feat<-make.names(features[,2])
feat2<-c(feat,"activity","subject")
feat3<-gsub("\\.","_",feat2)
feat4<-gsub("___",_",feat3)
feat5<-tolower(gsub("__","",feat4))
names(data)<-feat5

#Extracting the data on means and standard deviations.

v1<-grep("mean()[^F]",feat)
v2<-grep("std()",feat)
v<-c(union(v1,v2),562,563)


#Naming and labeling activities in the data set.

datanew<-data[v]
for(i in 1:6){
  datanew$activity[datanew$activity==i]<-as.character(labels[i,2])}


datanew2<-arrange(datanew,activity,subject)
tidy<-ddply(datanew,c("activity","subject"),colwise(mean))



#Exporting final tidy dataset into a txt file
write.table(tidy, "tidydata.txt",row.names=FALSE) 
