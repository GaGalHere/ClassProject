Codebook

The following is from the information the features_info.txt file from the information obtained on the client website.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The following summarizes the fields in the final tidy data set:

The fields resulting in the tidy data set are the fields associated with ‘mean’ and ‘standard deviation’ from the above measurements.  There are 86 measurement fields remaining in the final tidy data set:  please note that the first column indicates the order of the fields in the final tidy data set.  The second column refers to the index number of the fields name in the features.txt file.

1.	Group.1 – resulting from the aggregate function and represents the first grouping field ‘activity’
2.	Group.2 - resulting from the aggregate function and represents the second grouping field ‘subject’ (or volunteer participant, there were 30 in this data set)
3.	Activity – this field is disabled once the aggregate function is run since this field was used to group the data
4.	Subjtype – this field is disabled once the aggregate function is run since this is a character field and not used in the calculation of mean and not used to group the data.
5.	Subject – this field contains the number of the volunteer subject.
6.	1 tBodyAcc-mean()-X
7.	2 tBodyAcc-mean()-Y
8.	3 tBodyAcc-mean()-Z
9.	4 tBodyAcc-std()-X
10.	5 tBodyAcc-std()-Y
11.	6 tBodyAcc-std()-Z
12.	41 tGravityAcc-mean()-X
13.	42 tGravityAcc-mean()-Y
14.	43 tGravityAcc-mean()-Z
15.	44 tGravityAcc-std()-X
16.	45 tGravityAcc-std()-Y
17.	46 tGravityAcc-std()-Z
18.	81 tBodyAccJerk-mean()-X
19.	82 tBodyAccJerk-mean()-Y
20.	83 tBodyAccJerk-mean()-Z
21.	84 tBodyAccJerk-std()-X
22.	85 tBodyAccJerk-std()-Y
23.	86 tBodyAccJerk-std()-Z
24.	121 tBodyGyro-mean()-X
25.	122 tBodyGyro-mean()-Y
26.	123 tBodyGyro-mean()-Z
27.	124 tBodyGyro-std()-X
28.	125 tBodyGyro-std()-Y
29.	126 tBodyGyro-std()-Z
30.	161 tBodyGyroJerk-mean()-X
31.	162 tBodyGyroJerk-mean()-Y
32.	163 tBodyGyroJerk-mean()-Z
33.	164 tBodyGyroJerk-std()-X
34.	165 tBodyGyroJerk-std()-Y
35.	166 tBodyGyroJerk-std()-Z
36.	201 tBodyAccMag-mean()
37.	202 tBodyAccMag-std()
38.	214 tGravityAccMag-mean()
39.	215 tGravityAccMag-std()
40.	227 tBodyAccJerkMag-mean()
41.	228 tBodyAccJerkMag-std()
42.	240 tBodyGyroMag-mean()
43.	241 tBodyGyroMag-std()
44.	253 tBodyGyroJerkMag-mean()
45.	266 fBodyAcc-mean()-X
46.	267 fBodyAcc-mean()-Y
47.	268 fBodyAcc-mean()-Z
48.	269 fBodyAcc-std()-X
49.	270 fBodyAcc-std()-Y
50.	271 fBodyAcc-std()-Z
51.	294 fBodyAcc-meanFreq()-X
52.	295 fBodyAcc-meanFreq()-Y
53.	296 fBodyAcc-meanFreq()-Z
54.	345 fBodyAccJerk-mean()-X
55.	346 fBodyAccJerk-mean()-Y
56.	347 fBodyAccJerk-mean()-Z
57.	348 fBodyAccJerk-std()-X
58.	349 fBodyAccJerk-std()-Y
59.	350 fBodyAccJerk-std()-Z
60.	373 fBodyAccJerk-meanFreq()-X
61.	374 fBodyAccJerk-meanFreq()-Y
62.	375 fBodyAccJerk-meanFreq()-Z
63.	424 fBodyGyro-mean()-X
64.	425 fBodyGyro-mean()-Y
65.	426 fBodyGyro-mean()-Z
66.	427 fBodyGyro-std()-X
67.	428 fBodyGyro-std()-Y
68.	429 fBodyGyro-std()-Z
69.	452 fBodyGyro-meanFreq()-X
70.	453 fBodyGyro-meanFreq()-Y
71.	454 fBodyGyro-meanFreq()-Z
72.	503 fBodyAccMag-mean()
73.	504 fBodyAccMag-std()
74.	513 fBodyAccMag-meanFreq()
75.	516 fBodyBodyAccJerkMag-mean()
76.	517 fBodyBodyAccJerkMag-std()
77.	526 fBodyBodyAccJerkMag-meanFreq()
78.	529 fBodyBodyGyroMag-mean()
79.	530 fBodyBodyGyroMag-std()
80.	539 fBodyBodyGyroMag-meanFreq()
81.	542 fBodyBodyGyroJerkMag-mean()
82.	552 fBodyBodyGyroJerkMag-meanFreq()
83.	556 angle(tBodyAccJerkMean),gravityMean)
84.	557 angle(tBodyGyroMean,gravityMean)
85.	558 angle(tBodyGyroJerkMean,gravityMean)
86.	559 angle(X,gravityMean)
87.	560 angle(Y,gravityMean)
88.	561 angle(Z,gravityMean)
