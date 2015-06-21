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

1.	1 tBodyAcc-mean()-X
2.	2 tBodyAcc-mean()-Y
3.	3 tBodyAcc-mean()-Z
4.	4 tBodyAcc-std()-X
5.	5 tBodyAcc-std()-Y
6.	6 tBodyAcc-std()-Z
7.	41 tGravityAcc-mean()-X
8.	42 tGravityAcc-mean()-Y
9.	43 tGravityAcc-mean()-Z
10.	44 tGravityAcc-std()-X
11.	45 tGravityAcc-std()-Y
12.	46 tGravityAcc-std()-Z
13.	81 tBodyAccJerk-mean()-X
14.	82 tBodyAccJerk-mean()-Y
15.	83 tBodyAccJerk-mean()-Z
16.	84 tBodyAccJerk-std()-X
17.	85 tBodyAccJerk-std()-Y
18.	86 tBodyAccJerk-std()-Z
19.	121 tBodyGyro-mean()-X
20.	122 tBodyGyro-mean()-Y
21.	123 tBodyGyro-mean()-Z
22.	124 tBodyGyro-std()-X
23.	125 tBodyGyro-std()-Y
24.	126 tBodyGyro-std()-Z
25.	161 tBodyGyroJerk-mean()-X
26.	162 tBodyGyroJerk-mean()-Y
27.	163 tBodyGyroJerk-mean()-Z
28.	164 tBodyGyroJerk-std()-X
29.	165 tBodyGyroJerk-std()-Y
30.	166 tBodyGyroJerk-std()-Z
31.	201 tBodyAccMag-mean()
32.	202 tBodyAccMag-std()
33.	203 tBodyAccMag-mad()
34.	204 tBodyAccMag-max()
35.	205 tBodyAccMag-min()
36.	214 tGravityAccMag-mean()
37.	215 tGravityAccMag-std()
38.	227 tBodyAccJerkMag-mean()
39.	228 tBodyAccJerkMag-std()
40.	240 tBodyGyroMag-mean()
41.	241 tBodyGyroMag-std()
42.	253 tBodyGyroJerkMag-mean()
43.	266 fBodyAcc-mean()-X
44.	267 fBodyAcc-mean()-Y
45.	268 fBodyAcc-mean()-Z
46.	269 fBodyAcc-std()-X
47.	270 fBodyAcc-std()-Y
48.	271 fBodyAcc-std()-Z
49.	294 fBodyAcc-meanFreq()-X
50.	295 fBodyAcc-meanFreq()-Y
51.	296 fBodyAcc-meanFreq()-Z
52.	345 fBodyAccJerk-mean()-X
53.	346 fBodyAccJerk-mean()-Y
54.	347 fBodyAccJerk-mean()-Z
55.	348 fBodyAccJerk-std()-X
56.	349 fBodyAccJerk-std()-Y
57.	350 fBodyAccJerk-std()-Z
58.	373 fBodyAccJerk-meanFreq()-X
59.	374 fBodyAccJerk-meanFreq()-Y
60.	375 fBodyAccJerk-meanFreq()-Z
61.	424 fBodyGyro-mean()-X
62.	425 fBodyGyro-mean()-Y
63.	426 fBodyGyro-mean()-Z
64.	427 fBodyGyro-std()-X
65.	428 fBodyGyro-std()-Y
66.	429 fBodyGyro-std()-Z
67.	452 fBodyGyro-meanFreq()-X
68.	453 fBodyGyro-meanFreq()-Y
69.	454 fBodyGyro-meanFreq()-Z
70.	503 fBodyAccMag-mean()
71.	504 fBodyAccMag-std()
72.	513 fBodyAccMag-meanFreq()
73.	516 fBodyBodyAccJerkMag-mean()
74.	517 fBodyBodyAccJerkMag-std()
75.	526 fBodyBodyAccJerkMag-meanFreq()
76.	529 fBodyBodyGyroMag-mean()
77.	530 fBodyBodyGyroMag-std()
78.	539 fBodyBodyGyroMag-meanFreq()
79.	542 fBodyBodyGyroJerkMag-mean()
80.	552 fBodyBodyGyroJerkMag-meanFreq()
81.	556 angle(tBodyAccJerkMean),gravityMean)
82.	557 angle(tBodyGyroMean,gravityMean)
83.	558 angle(tBodyGyroJerkMean,gravityMean)
84.	559 angle(X,gravityMean)
85.	560 angle(Y,gravityMean)
86.	561 angle(Z,gravityMean)

