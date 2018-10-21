# Code Book
## UCI HAR Data


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


Activity labels: walking, walking_upstairs, walking_downstairs, sitting, standing, laying


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
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

## Final Data Variables
 [1] "subject"                                                                                                            
 [2] "activity"                                                                                                           
 [3] "1Body acceleration signal in time domain (from the accelerometer)mean()-X"                                          
 [4] "2Body acceleration signal in time domain (from the accelerometer)mean()-Y"                                          
 [5] "3Body acceleration signal in time domain (from the accelerometer)mean()-Z"                                          
 [6] "4Body acceleration signal in time domain (from the accelerometer)std()-X"                                           
 [7] "5Body acceleration signal in time domain (from the accelerometer)std()-Y"                                           
 [8] "6Body acceleration signal in time domain (from the accelerometer)std()-Z"                                           
 [9] "41Gravity acceleration signal in time domain (from the accelerometer)mean()-X"                                      
[10] "42Gravity acceleration signal in time domain (from the accelerometer)mean()-Y"                                      
[11] "43Gravity acceleration signal in time domain (from the accelerometer)mean()-Z"                                      
[12] "44Gravity acceleration signal in time domain (from the accelerometer)std()-X"                                       
[13] "45Gravity acceleration signal in time domain (from the accelerometer)std()-Y"                                       
[14] "46Gravity acceleration signal in time domain (from the accelerometer)std()-Z"                                       
[15] "81Body acceleration jerk signal in time domain (from the accelerometer)mean()-X"                                    
[16] "82Body acceleration jerk signal in time domain (from the accelerometer)mean()-Y"                                    
[17] "83Body acceleration jerk signal in time domain (from the accelerometer)mean()-Z"                                    
[18] "84Body acceleration jerk signal in time domain (from the accelerometer)std()-X"                                     
[19] "85Body acceleration jerk signal in time domain (from the accelerometer)std()-Y"                                     
[20] "86Body acceleration jerk signal in time domain (from the accelerometer)std()-Z"                                     
[21] "121Body acceleration signal in time domain (from the gyroscope)mean()-X"                                            
[22] "122Body acceleration signal in time domain (from the gyroscope)mean()-Y"                                            
[23] "123Body acceleration signal in time domain (from the gyroscope)mean()-Z"                                            
[24] "124Body acceleration signal in time domain (from the gyroscope)std()-X"                                             
[25] "125Body acceleration signal in time domain (from the gyroscope)std()-Y"                                             
[26] "126Body acceleration signal in time domain (from the gyroscope)std()-Z"                                             
[27] "161Body acceleration jerk signal in time domain (from the gyroscope)mean()-X"                                       
[28] "162Body acceleration jerk signal in time domain (from the gyroscope)mean()-Y"                                       
[29] "163Body acceleration jerk signal in time domain (from the gyroscope)mean()-Z"                                       
[30] "164Body acceleration jerk signal in time domain (from the gyroscope)std()-X"                                        
[31] "165Body acceleration jerk signal in time domain (from the gyroscope)std()-Y"                                        
[32] "166Body acceleration jerk signal in time domain (from the gyroscope)std()-Z"                                        
[33] "201Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)mean()"         
[34] "202Body acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)std()"          
[35] "214Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)mean()"      
[36] "215Gravity acceleration signal in time domain applied to Fast Fourier Transform(from the accelerometer)std()"       
[37] "227Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)mean()"  
[38] "228Body acceleration jerk signal in time domain applied to Fast Fourrier Transform (from the accelerometer)std()"   
[39] "240Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)mean()"            
[40] "241Body acceleration signal in time domain applied to Fast Fourrier Transform(from the gyroscope)std()"             
[41] "253Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)mean()"       
[42] "254Body acceleration jerk signal in time domain applied to Fast Fourrier Transform(from the gyroscope)std()"        
[43] "266Body acceleration signal in frequence domain (from the accelerometer)mean()-X"                                   
[44] "267Body acceleration signal in frequence domain (from the accelerometer)mean()-Y"                                   
[45] "268Body acceleration signal in frequence domain (from the accelerometer)mean()-Z"                                   
[46] "269Body acceleration signal in frequence domain (from the accelerometer)std()-X"                                    
[47] "270Body acceleration signal in frequence domain (from the accelerometer)std()-Y"                                    
[48] "271Body acceleration signal in frequence domain (from the accelerometer)std()-Z"                                    
[49] "294Body acceleration signal in frequence domain (from the accelerometer)meanFreq()-X"                               
[50] "295Body acceleration signal in frequence domain (from the accelerometer)meanFreq()-Y"                               
[51] "296Body acceleration signal in frequence domain (from the accelerometer)meanFreq()-Z"                               
[52] "345Body acceleration jerk signal in frequence domain (from the accelerometer)mean()-X"                              
[53] "346Body acceleration jerk signal in frequence domain (from the accelerometer)mean()-Y"                              
[54] "347Body acceleration jerk signal in frequence domain (from the accelerometer)mean()-Z"                              
[55] "348Body acceleration jerk signal in frequence domain (from the accelerometer)std()-X"                               
[56] "349Body acceleration jerk signal in frequence domain (from the accelerometer)std()-Y"                               
[57] "350Body acceleration jerk signal in frequence domain (from the accelerometer)std()-Z"                               
[58] "373Body acceleration jerk signal in frequence domain (from the accelerometer)meanFreq()-X"                          
[59] "374Body acceleration jerk signal in frequence domain (from the accelerometer)meanFreq()-Y"                          
[60] "375Body acceleration jerk signal in frequence domain (from the accelerometer)meanFreq()-Z"                          
[61] "424Body acceleration signal in frequence domain (from the gyroscope)mean()-X"                                       
[62] "425Body acceleration signal in frequence domain (from the gyroscope)mean()-Y"                                       
[63] "426Body acceleration signal in frequence domain (from the gyroscope)mean()-Z"                                       
[64] "427Body acceleration signal in frequence domain (from the gyroscope)std()-X"                                        
[65] "428Body acceleration signal in frequence domain (from the gyroscope)std()-Y"                                        
[66] "429Body acceleration signal in frequence domain (from the gyroscope)std()-Z"                                        
[67] "452Body acceleration signal in frequence domain (from the gyroscope)meanFreq()-X"                                   
[68] "453Body acceleration signal in frequence domain (from the gyroscope)meanFreq()-Y"                                   
[69] "454Body acceleration signal in frequence domain (from the gyroscope)meanFreq()-Z"                                   
[70] "503Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)mean()"    
[71] "504Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)std()"     
[72] "513Body acceleration signal in frequence domain applied to Fast Fourier Transform(from the accelerometer)meanFreq()"
[73] "516fBodyBodyAccJerkMag-mean()"                                                                                      
[74] "517fBodyBodyAccJerkMag-std()"                                                                                       
[75] "526fBodyBodyAccJerkMag-meanFreq()"                                                                                  
[76] "529fBodyBodyGyroMag-mean()"                                                                                         
[77] "530fBodyBodyGyroMag-std()"                                                                                          
[78] "539fBodyBodyGyroMag-meanFreq()"                                                                                     
[79] "542fBodyBodyGyroJerkMag-mean()"                                                                                     
[80] "543fBodyBodyGyroJerkMag-std()"                                                                                      
[81] "552fBodyBodyGyroJerkMag-meanFreq()"                                                                                 
[82] "555angle(tBodyAccMean,gravity)"                                                                                     
[83] "556angle(tBodyAccJerkMean),gravityMean)"                                                                            
[84] "557angle(tBodyGyroMean,gravityMean)"                                                                                
[85] "558angle(tBodyGyroJerkMean,gravityMean)"                                                                            
[86] "559angle(X,gravityMean)"                                                                                            
[87] "560angle(Y,gravityMean)"                                                                                            
[88] "561angle(Z,gravityMean)"
