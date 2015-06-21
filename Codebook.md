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

The fields resulting in the tidy data set are the fields associated with ‘mean’ and ‘standard deviation’ from the above measurements.  There are 83 measurement fields remaining in the final tidy data set:  please note that the first column indicates the order of the fields in the final tidy data set.  The second column refers to the index number of the fields name in the features.txt file.

1.	Group.1 – ‘activity’ field used to group the data, used in the aggregate function and represents the first grouping field.  There are 6 activity indexes.
2.	Group.2 – ‘subject’ field used to group the data, used in the aggregate function and represents the second grouping field (subject or volunteer participant, there were 30 in this data set)

NOTE:  The mean of the following variables is given in the projdata.txt file
3.	1 tBodyAcc-mean.X
4.	2 tBodyAcc-mean.Y
5.	3 tBodyAcc-mean.Z
6.	4 tBodyAcc-std.X
7.	5 tBodyAcc-std.Y
8.	6 tBodyAcc-std.Z
9.	41 tGravityAcc-mean.X
10.	42 tGravityAcc-mean.Y
11.	43 tGravityAcc-mean.Z
12.	44 tGravityAcc-std.X
13.	45 tGravityAcc-std.Y
14.	46 tGravityAcc-std.Z
15.	81 tBodyAccJerk-mean.X
16.	82 tBodyAccJerk-mean.Y
17.	83 tBodyAccJerk-mean.Z
18.	84 tBodyAccJerk-std.X
19.	85 tBodyAccJerk-std.Y
20.	86 tBodyAccJerk-std.Z
21.	121 tBodyGyro-mean.X
22.	122 tBodyGyro-mean.Y
23.	123 tBodyGyro-mean.Z
24.	124 tBodyGyro-std.X
25.	125 tBodyGyro-std.Y
26.	126 tBodyGyro-std.Z
27.	161 tBodyGyroJerk-mean.X
28.	162 tBodyGyroJerk-mean.Y
29.	163 tBodyGyroJerk-mean.Z
30.	164 tBodyGyroJerk-std.X
31.	165 tBodyGyroJerk-std.Y
32.	166 tBodyGyroJerk-std.Z
33.	201 tBodyAccMag-mean.
34.	202 tBodyAccMag-std.
35.	214 tGravityAccMag-mean.
36.	215 tGravityAccMag-std.
37.	227 tBodyAccJerkMag-mean.
38.	228 tBodyAccJerkMag-std.
39.	240 tBodyGyroMag-mean.
40.	241 tBodyGyroMag-std.
41.	253 tBodyGyroJerkMag-mean.
42.	266 fBodyAcc-mean.X
43.	267 fBodyAcc-mean.Y
44.	268 fBodyAcc-mean.Z
45.	269 fBodyAcc-std.X
46.	270 fBodyAcc-std.Y
47.	271 fBodyAcc-std.Z
48.	294 fBodyAcc-meanFreq.X
49.	295 fBodyAcc-meanFreq.Y
50.	296 fBodyAcc-meanFreq.Z
51.	345 fBodyAccJerk-mean.X
52.	346 fBodyAccJerk-mean.Y
53.	347 fBodyAccJerk-mean.Z
54.	348 fBodyAccJerk-std.X
55.	349 fBodyAccJerk-std.Y
56.	350 fBodyAccJerk-std.Z
57.	373 fBodyAccJerk-meanFreq.X
58.	374 fBodyAccJerk-meanFreq.Y
59.	375 fBodyAccJerk-meanFreq.Z
60.	424 fBodyGyro-mean.X
61.	425 fBodyGyro-mean.Y
62.	426 fBodyGyro-mean.Z
63.	427 fBodyGyro-std.X
64.	428 fBodyGyro-std.Y
65.	429 fBodyGyro-std.Z
66.	452 fBodyGyro-meanFreq.X
67.	453 fBodyGyro-meanFreq.Y
68.	454 fBodyGyro-meanFreq.Z
69.	503 fBodyAccMag-mean.
70.	504 fBodyAccMag-std.
71.	513 fBodyAccMag-meanFreq.
72.	516 fBodyBodyAccJerkMag-mean.
73.	517 fBodyBodyAccJerkMag-std.
74.	526 fBodyBodyAccJerkMag-meanFreq.
75.	529 fBodyBodyGyroMag-mean.
76.	530 fBodyBodyGyroMag-std.
77.	539 fBodyBodyGyroMag-meanFreq.
78.	542 fBodyBodyGyroJerkMag-mean.
79.	552 fBodyBodyGyroJerkMag-meanFreq.
80.	556 angle(tBodyAccJerkMean),gravityMean)
81.	557 angle(tBodyGyroMean,gravityMean)
82.	558 angle(tBodyGyroJerkMean,gravityMean)
83.	559 angle(X,gravityMean)
84.	560 angle(Y,gravityMean)
85.	561 angle(Z,gravityMean)

84.	557 angle(tBodyGyroMean,gravityMean)
85.	558 angle(tBodyGyroJerkMean,gravityMean)
86.	559 angle(X,gravityMean)
87.	560 angle(Y,gravityMean)
88.	561 angle(Z,gravityMean)
