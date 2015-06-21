# Course Project, Getting and Cleaning Data
#
# define working directory  - for reading in 561 col names, activity labels
#
setwd("~/Documents/Coursera/3 GettingAndCleaningData/ClassProject/UCI HAR Dataset")
## Read in feature vector 561 field names
fv_colnames<-read.table(file="features.txt",
                        sep="",
                        colClasses=c("integer","character"))
fv_colnames1<-fv_colnames[c(-1)]
fv_colnames2<-c(t(fv_colnames1))
# Rename col names to remove parenthesis and dashes
noparendash<-sub("()-","_",
                 fv_colnames2,
                 ignore.case=FALSE, perl=FALSE,
                 fixed=TRUE,useBytes=FALSE)
nodash<-sub("-",".",
            noparendash,
            ignore.case=FALSE, perl=FALSE,
            fixed=TRUE,useBytes=FALSE)
noparen<-sub("()",".",
             nodash,
             ignore.case=FALSE, perl=FALSE,
             fixed=TRUE,useBytes=FALSE)
fv_colnames2<-noparen
## Read in activity label 1-6
actlabels<-read.table(file="activity_labels.txt",
                      sep="",
                      colClasses=c("integer","character"))
# ---------------------------------------------
# define working directory to read in TEST data
# ---------------------------------------------
setwd("~/Documents/Coursera/3 GettingAndCleaningData/ClassProject/UCI HAR Dataset/test")
getwd()
## Read in volunteer subject number, range 1-30
subj_test<-read.table(file="subject_test.txt",
                      sep="",
                      dec=".",
                      col.names=c("subject"),
                      colClasses=c("integer"))
## Read in voluteer subject activity, range 1-6 as numeric
actnum_test<-read.table(file="y_test.txt",
                        sep="",
                        dec=".",
                        col.names=c("actnum"),
                        colClasses=c("integer"))
## Read in volunteer subject activity, range 1-6 as character
actchar_test<-read.table(file="y_test.txt",
                         sep="",
                         dec=".",
                         col.names=c("actchar"),
                         colClasses=c("character"))
## Read in x_test.txt data set, 561 est. feature vector
x_test<-read.table(file="x_test.txt",
                   sep="",
                   dec=".",
                   col.names=fv_colnames2,
                   colClasses=c("numeric"))
subjtype<-c(rep("test",2947))
DFtest<-cbind(subjtype,subj_test,actnum_test,actchar_test,x_test)
# --------------------------------------------------------
# NOTE: Will not read in Inertial Signals folder data, 
#       not needed for final tidy data set 
# --------------------------------------------------------
# define working directory to read in volunteer TRAIN data
# --------------------------------------------------------
setwd("~/Documents/Coursera/3 GettingAndCleaningData/ClassProject/UCI HAR Dataset/train")
getwd()
## Read in volunteer subject number, range 1-30, train data
subj_train<-read.table(file="subject_train.txt",
                       sep="",
                       dec=".",
                       col.names=c("subject"),
                       colClasses=c("integer"))
## Read in voluteer subject activity, range 1-6 as numeric
actnum_train<-read.table(file="y_train.txt",
                         sep="",
                         dec=".",
                         col.names=c("actnum"),
                         colClasses=c("integer"))
## Read in volunteer subject activity, range 1-6 as character
actchar_train<-read.table(file="y_train.txt",
                          sep="",
                          dec=".",
                          col.names=c("actchar"),
                          colClasses=c("character"))
## Read in x_train.txt data set, 561 est. feature vector
x_train<-read.table(file="x_train.txt",
                    sep="",
                    dec=".",
                    col.names=fv_colnames2,
                    colClasses=c("numeric")) 
subjtype<-c(rep("train",7352))
DFtrain<-cbind(subjtype,subj_train,actnum_train,actchar_train,x_train)
# ------------------------------------------------
# Step 1: Merges train and test set to create one data set
# ------------------------------------------------
DFdata_prelim<- rbind(DFtest,DFtrain)
dim(DFdata_prelim) 
# ---------------------------------------------------------
# Step 2: Extracts mean and standard deviation for each measurement
# ---------------------------------------------------------
#
colmean<-grep("mean", fv_colnames2, ignore.case = TRUE, perl = TRUE,
                fixed = FALSE, useBytes = FALSE, value=TRUE)
colstd<-grep("std", fv_colnames2, ignore.case = TRUE, perl = TRUE,
               fixed = FALSE, useBytes = FALSE, value=TRUE)
mean_std_col<-c(colmean,colstd)
selectcol<-names(DFdata_prelim) %in% 
  c("subjtype","subject","actnum","actchar",mean_std_col)
DFdata_prelim2<-DFdata_prelim[selectcol]
# ------------------------------------------------
# Step 3: Replace activity with label
# ------------------------------------------------ 
activity<-gsubfn(".", list("1"="WALKING","2"="WALKING_UPSTAIRS",
                           "3"="WALKING_DOWNSTAIRS","4"="SITTING",
                           "5"="STANDING","6"="LAYING"),
                 DFdata_prelim2$actchar, 
                 ignore.case=TRUE)
DFdata<-cbind(activity,DFdata_prelim2)
DFdata<-DFdata[c(-4,-5)]
head(DFdata[c(1:7)])
# ---------------------------------------------------------------
# Step 4: Descriptive Variable Names, this was done in lines 6-33
# ---------------------------------------------------------------
# Step 5: Averages for each activity and subject
# ---------------------------------------------------------------
#
table_meanspr <-aggregate(DFdata, by=list(activity,subject), 
                    FUN=mean, na.rm=TRUE)
table_means
