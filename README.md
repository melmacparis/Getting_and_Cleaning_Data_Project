==================================================================
This repo contains an R script that tidies data from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years (see [1]). Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Averages of the means and standard deviations of measurements are given by the activity and subject in the tidy dataset.  

This repo contains the following files:
=========================================

- 'README.md'
- 'tidydata.txt': the tidy dataset.

- 'run_analysis.R': script that produces the above tidy dataset

- 'CodeBook': describes the variables, data, and transformations made to the data in [1] using the above R script'


How the files are connected:
=========================================
The 'run_analysis.R' script takes the following datasets from [1]:

- "UCI HAR Dataset/activity_labels.txt"
- "UCI HAR Dataset/features.txt"
- "UCI HAR Dataset/train/X_train.txt"
- "UCI HAR Dataset/train/y_train.txt"
- "UCI HAR Dataset/train/subject_train.txt"
- "UCI HAR Dataset/test/X_test.txt"
- "UCI HAR Dataset/test/y_test.txt"
- "UCI HAR Dataset/test/subject_test.txt"

and produces a tidy dataset which has been exported to the file 'tidy data.csv'.   Lastly, 'CodeBook.md' describes the variables, data, and the tidying process performed in R.



References:
========

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


