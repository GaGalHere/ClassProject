# ClassProject
Get and Clean Data - Course 3
README

The information presented below outlines the steps and reasoning used to create a tidy data set for the course project.

A full description of this data is found at the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data files used for this project were obtained from the web, from the website:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Within the zip file above are contained several files used for this project and noted below.

Steps taken to create the tidy data set:
1.  Load features.txt      dim:  561 x 2
	561 field names in columns and an index column
2. The features.txt data was transposed to create 561 field names in one row    and the index was removed.
3.	The parentheses and dashes were removed from the 561 field
names and replaced with a period
4.	Loaded activity_labels.txt.  This file contains the labels for the activities that were measured in the data collection experiment.
Dim:  6 x 2
(NOTE: the data was supplied in two sets, a ‘test’ set and a ‘train’ set
the ‘test’ set was loaded first.
5.	Loaded subject_test.txt.  This file contains the number associated with the subject volunteer and ranged from 1 to 30.  Dim:  2947 x 1
6.	Loaded y_test.txt.  This file contains the activity associated with the subject volunteer in the previous step and range from 1 - 6.  Dim: 2947 x 1
7.	Loaded y_test.txt as a character file to aid in converting activity data codes to character fields.
8.	Loaded x_test.txt.  This file contains the data measurements associated with the subject volunteer and in steps 5 and 6.  Dim: 2947 x 561
9.	The data from steps 5, 6, 7 and 8 consolidated into one data frame using column bind.  Dim: 2947 x 564
10.	The names of the columns of the data frame resulting from the previous step were updated to reflect the description of the content of the data in the column.
11.	Loaded subject_train.txt.  This file contains the number associated with the subject volunteer and ranged from 1 to 30.  Dim:  7352 x 1
12.	Loaded y_train.txt.  This file contains the activity associated with the subject volunteer in the previous step and range from 1 - 6.  Dim: 7352 x 1
13.	Loaded y_train.txt as a character file to aid in converting activity data codes to character fields.
14.	Loaded x_train.txt.  This file contains the data measurements associated with the subject volunteer and in steps 10 and 11.  Dim: 7352 x 564
15.	The data from steps 10, 11, 12 and 13 consolidated into one data frame using column bind.
16.	The names of the columns of the data frame resulting from the previous step were updated to reflect the description of the content of the data in the column.
17.	The data frames from steps 9 and step 14 were joined together using row binding to form one data frame. Dim: 10299 x 564
18.	 Extracted mean and standard deviation for each measurement by searching
the column names for the character strings ‘mean’ and ‘std’.
19.	A final data frame was created with the activity, subject and measurement data associated with mean and standard deviation.  Dim: 10299 x 83
20.	The activity number, 1 to 6, was replaced with its character equivalent based on the contents of activity_labels.txt.
21.	Calculate the averages of each measurement variable for each activity and subject.  This was done using the aggregate function and grouping first by activity then by subject.  Dim: 180 x 84.  
22. 	The resulting data frame was called table_means in R_studio.  The data frame was written as a text file projdata.txt and was uploaded to GitHub.
