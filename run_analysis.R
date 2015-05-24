# Combine the core "test" and "train" datasets 
df0 <- read.table("data/test/X_test.txt", header=F)
df1 <- read.table("data/train/X_train.txt", header=F)
df2 <- rbind(df0, df1)

# Get the column names along with their index from "data/features.txt"
cols1 <- read.table("data/features.txt", stringsAsFactors=F)

# Subset the above to get the list of columns which are the mean and standard deviation for each measurement
cols2 <- subset(cols1, grepl(".*mean.*", V2) | grepl(".*std.*", V2))

# Use column indices from above to subset the main dataset.
# This reduces the number of columns from 561 to 79
df3 <- df2[cols2$V1]

# Use column names from Cols2 to rename the columns in the main dataset.
# Clean the names by removing "()" and replacing "-" with "." in the column names
# Ex: "tBodyAcc-mean()-X" will be renamed to "tBodyAcc.mean.X"
colnames(df3) <- gsub("-", ".", gsub("\\(\\)", "", cols2$V2))

# Add Subject Column to the main dataset
s0 <- read.table("data/test/subject_test.txt", header=F)
s1 <- read.table("data/train/subject_train.txt", header=F)
s2 <- rbind(s0, s1)
df3$Subject <- s2$V1

# Add Activity Column to the main dataset
a0 <- read.table("data/test/y_test.txt", header=F)
a1 <- read.table("data/train/y_train.txt", header=F)
a2 <- rbind(a0, a1)
df3$Activity <- a2$V1

# Read the Activity IDs and Labels from "data/activity_labels.txt"
ac0 <- read.table("data/activity_labels.txt", header=F, stringsAsFactors=F)

# Replace Activity IDs with Activity Labels as factors
df3$Activity <- factor(df3$Activity, labels=ac0$V2)

# Finally create the required tidy dataset calculating the mean of all columns by Subject and Activity
df4 <- aggregate(. ~ Subject+Activity, df3, FUN=mean, na.rm=TRUE)

# Order the tidy data by Subject and Activity
df4 <- df4[with(df4, order(Subject, Activity)), ]

# Save the tidy dataset to a file without row names - order the data by Subject and Activity
write.table(df4, "tidy-data.txt", row.names=F)
