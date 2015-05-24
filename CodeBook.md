# Data
The tidy data contains the mean values of the combined test data and trainig data computed over subject and activity. The dataset contains data for 30 subjects doing 6 activities and with 79 observations for each activity.

Sample data below shows the first three rows and six columns for Subject "1"

```
  Subject           Activity tBodyAcc.mean.X tBodyAcc.mean.Y tBodyAcc.mean.Z tBodyAcc.std.X
        1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026
        1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803
        1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534
        1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901
        1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990
        1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647
```

# Transformations
Assuming the original dataset is extracted to "data" directory:

1. Data from the file "data/test/X_test.txt" and "data/train/X_train.txt" is merged
2. Using the column labels listed in "data/features.txt", only columns with words "mean" and "std" are retained.
3. Column names are renamed to being R friendly -  replacing "-" with "." and dropping "()". For example "tBodyAcc-mean()-X" in the original is renamed to "tBodyAcc.mean.X".
3. Added 'Subject' column reading from the files "data/test/subject_test.txt" and "data/train/subject_train.txt"
4. Added 'Activity' column reading from files "data/test/y_test.txt" and "data/train/y_train.txt"
5. Replaced Activity column with factor equivalents, reading from "data/activity_labels.txt"
6. The final tidy data is produced by aggregating all the columns over 'Subject' and Activity'

# Variables

Average of the 'mean' and 'std' of the features - calculated by subject and activity. Following is the list of variables contained in the tidy dataset.

Subject                      
Activity                     
tBodyAcc.mean.X              
tBodyAcc.mean.Y              
tBodyAcc.mean.Z              
tBodyAcc.std.X               
tBodyAcc.std.Y               
tBodyAcc.std.Z               
tGravityAcc.mean.X           
tGravityAcc.mean.Y           
tGravityAcc.mean.Z           
tGravityAcc.std.X            
tGravityAcc.std.Y            
tGravityAcc.std.Z            
tBodyAccJerk.mean.X          
tBodyAccJerk.mean.Y          
tBodyAccJerk.mean.Z          
tBodyAccJerk.std.X           
tBodyAccJerk.std.Y           
tBodyAccJerk.std.Z           
tBodyGyro.mean.X             
tBodyGyro.mean.Y             
tBodyGyro.mean.Z             
tBodyGyro.std.X              
tBodyGyro.std.Y              
tBodyGyro.std.Z              
tBodyGyroJerk.mean.X         
tBodyGyroJerk.mean.Y         
tBodyGyroJerk.mean.Z         
tBodyGyroJerk.std.X          
tBodyGyroJerk.std.Y          
tBodyGyroJerk.std.Z          
tBodyAccMag.mean             
tBodyAccMag.std              
tGravityAccMag.mean          
tGravityAccMag.std           
tBodyAccJerkMag.mean         
tBodyAccJerkMag.std          
tBodyGyroMag.mean            
tBodyGyroMag.std             
tBodyGyroJerkMag.mean        
tBodyGyroJerkMag.std         
fBodyAcc.mean.X              
fBodyAcc.mean.Y              
fBodyAcc.mean.Z              
fBodyAcc.std.X               
fBodyAcc.std.Y               
fBodyAcc.std.Z               
fBodyAcc.meanFreq.X          
fBodyAcc.meanFreq.Y          
fBodyAcc.meanFreq.Z          
fBodyAccJerk.mean.X          
fBodyAccJerk.mean.Y          
fBodyAccJerk.mean.Z          
fBodyAccJerk.std.X           
fBodyAccJerk.std.Y           
fBodyAccJerk.std.Z           
fBodyAccJerk.meanFreq.X      
fBodyAccJerk.meanFreq.Y      
fBodyAccJerk.meanFreq.Z      
fBodyGyro.mean.X             
fBodyGyro.mean.Y             
fBodyGyro.mean.Z             
fBodyGyro.std.X              
fBodyGyro.std.Y              
fBodyGyro.std.Z              
fBodyGyro.meanFreq.X         
fBodyGyro.meanFreq.Y         
fBodyGyro.meanFreq.Z         
fBodyAccMag.mean             
fBodyAccMag.std              
fBodyAccMag.meanFreq         
fBodyBodyAccJerkMag.mean     
fBodyBodyAccJerkMag.std      
fBodyBodyAccJerkMag.meanFreq 
fBodyBodyGyroMag.mean        
fBodyBodyGyroMag.std         
fBodyBodyGyroMag.meanFreq    
fBodyBodyGyroJerkMag.mean    
fBodyBodyGyroJerkMag.std     
fBodyBodyGyroJerkMag.meanFreq
