I have downloaded and unzipped the file. set the working directory in order to work on the files

Script1.

I read the files X_train.txt, Y_train.txt, subject_train.txt, X_test.txt, Y_test.txt and subject_test.txt.
Did the column bind and row bind of the data sets and merged them to a new dataset called newData.

Script 2:

In order to extract only the mean and standard deviation of the values, read the file, features.txt. Searched for the strings
"mean" and "std" from the variables and added the columns subject and activity. the new dataset newData now extracts features 
containing strings "mean" and "std" along with "subject" and "activity"

desclabels - prints the names of the descriptive labels of the features to name a few:
 [1] "tBodyAcc-mean()-X"      "tBodyAcc-mean()-Y"      "tBodyAcc-mean()-Z"      "tBodyAcc-std()-X"       "tBodyAcc-std()-Y"       "tBodyAcc-std()-Z"      
 [7] "tBodyAcc-mad()-X"       "tBodyAcc-mad()-Y"       "tBodyAcc-mad()-Z"       "tBodyAcc-max()-X"       "tBodyAcc-max()-Y"       "tBodyAcc-max()-Z"      
[13] "tBodyAcc-min()-X"       "tBodyAcc-min()-Y"       "tBodyAcc-min()-Z"       "tBodyAcc-sma()"         "tBodyAcc-energy()-X"    "tBodyAcc-energy()-Y"   
[19] "tBodyAcc-energy()-Z"    "tBodyAcc-iqr()-X"       "tBodyAcc-iqr()-Y"       "tBodyAcc-iqr()-Z"       "tBodyAcc-entropy()-X"   "tBodyAcc-entropy()-Y"  
[25] "tBodyAcc-entropy()-Z"   "tBodyAcc-arCoeff()-X,1" "tBodyAcc-arCoeff()-X,2" "tBodyAcc-arCoeff()-X,3" "tBodyAcc-arCoeff()-X,4" "tBodyAcc-arCoeff()-Y,1"

Script 3:

Subject: int values
activity: Factors which has 6 values :
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Script 4:
Gave the appropriate labels to names that are descriptive
names(newData) will give the list of the names

Script 5:
output of the tidy data is submitted. 

Note:

means are calculated based on the subject and activity like:

 timeBodyAccelerometer-mean()-X                   
 timeBodyAccelerometer-mean()-Y                  
 timeBodyAccelerometer-mean()-Z  

 timeGravityAccelerometer-mean()-X                 
 timeGravityAccelerometer-mean()-Y                 
 timeGravityAccelerometer-mean()-Z      

frequencyBodyAccelerometer-mean()-X               
frequencyBodyAccelerometer-mean()-Y              
frequencyBodyAccelerometer-mean()-Z   

 frequencyBodyGyroscope-mean()-X                   
 frequencyBodyGyroscope-mean()-Y                   
 frequencyBodyGyroscope-mean()-Z  

(only few are listed)

Standard deviations are calculated :
 $ timeBodyAccelerometer-std()-X                     
 $ timeBodyAccelerometer-std()-Y                     
 $ timeBodyAccelerometer-std()-Z                    
 $ timeGravityAccelerometer-std()-X                  
 $ timeGravityAccelerometer-std()-Y                  
 $ timeGravityAccelerometer-std()-Z                  
 $ timeBodyAccelerometerJerk-std()-X                 
 $ timeBodyAccelerometerJerk-std()-Y                 
 $ timeBodyAccelerometerJerk-std()-Z                 
 $ timeBodyGyroscope-std()-X                         
 $ timeBodyGyroscope-std()-Y                         
 $ timeBodyGyroscope-std()-Z                        
 $ timeBodyGyroscopeJerk-std()-X                     
 $ timeBodyGyroscopeJerk-std()-Y                    
 $ timeBodyGyroscopeJerk-std()-Z                    
 $ timeBodyAccelerometerMagnitude-std()              
 $ timeGravityAccelerometerMagnitude-std()          
 $ timeBodyAccelerometerJerkMagnitude-std()          
 $ timeBodyGyroscopeMagnitude-std()                  
 $ timeBodyGyroscopeJerkMagnitude-std()              
 $ frequencyBodyAccelerometer-std()-X               
 $ frequencyBodyAccelerometer-std()-Y                
 $ frequencyBodyAccelerometer-std()-Z                
 $ frequencyBodyAccelerometerJerk-std()-X           
 $ frequencyBodyAccelerometerJerk-std()-Y            
 $ frequencyBodyAccelerometerJerk-std()-Z            
 $ frequencyBodyGyroscope-std()-X                    
 $ frequencyBodyGyroscope-std()-Y                    
 $ frequencyBodyGyroscope-std()-Z                    
 $ frequencyBodyAccelerometerMagnitude-std()         
 $ frequencyBodyAccelerometerJerkMagnitude-std()     
 $ frequencyBodyGyroscopeMagnitude-std()             
 $ frequencyBodyGyroscopeJerkMagnitude-std()  


