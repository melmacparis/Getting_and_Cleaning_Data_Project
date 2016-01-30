This file describes the code in 'run_analysis.R' and provides an explanation of the labels and measurements in the tidy dataset 
'tidydata.csv' produced by run_analysis.R.
The script runs on the files UCI HAR Dataset (see 'README.md' for the reference)



Description of Code
====================================
Reading the files
	- The training set data ('X_train.txt', 'y_train.txt', 'subject_train.txt') and test set data ('X_test.txt', 'y_test.txt', 'subject_test.txt')
		are all read into R.  The files 'activity_labels.txt' and 'features.txt' are read into the data.frames 'labels' and 'features', respectively.


Shaping and cleaning the data	
	- The first part merges the training sets and the test sets into one data.frame, 'data', where each measurement correponds to a particular subject and one of six activities.
	- Then the column names corresponding hte measurements are labeled using the vector 'feat' after tidying them. 
	- Then only the measurements  mean and standard deviation are extracted using the vector v.  This produces the data.frame 'datanew'.
	- The numeric labels in data corresponding to the activies are then replaced by the corresponding descriptive ones using the data.frame 'labels'.
	- The means of these measurements are taken according to activity and then subject are taken to produce the final dataset, 'tidy'.
	- The dataset is finally exported to 'tidydata.txt'
	
Exporting the file
	The data.frame 'tidy' is exported to the file 'tidydata.txt.'	