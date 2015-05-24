# TidyHAR

Assuming the original dataset is extracted to "data" directory, the script "run_analysis.R" does the following transformations to generate the tidy data:

1. Data from the file "data/test/X_test.txt" and "data/train/X_train.txt" is merged
2. Using the column labels listed in "data/features.txt", only columns with words "mean" and "std" are retained. This reduces the number of columns from 561 to 79
3. Column names are renamed to being R firendly - dropping "()" and replacing "-" with "."
3. Add 'Subject' column reading from the files "data/test/subject_test.txt" and "data/train/subject_train.txt"
4. Add 'Activity' column reading from files "data/test/y_test.txt" and "data/train/y_train.txt"
5. Replace Activity column with factors, reading from "data/activity_labels.txt"
6. The final data is produced by aggregating all the columns over 'Subject' and Activity'

# Data
The tidy data contains the mean values of the combined test data and trainig data computed over subject and activity. The dataset contains data for 30 subjects doing 6 activities and with 79 observations for each activity.

Sample data for Subject "1":

```
  Subject           Activity tBodyAcc.mean.X tBodyAcc.mean.Y tBodyAcc.mean.Z tBodyAcc.std.X
        1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026
        1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803
        1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534
        1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901
        1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990
        1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647
```

See [CodeBook](CodeBook.md) for the list of the variables in the generated tidy dataset.