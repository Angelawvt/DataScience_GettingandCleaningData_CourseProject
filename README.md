DataScience_GettingandCleaningData_CourseProject
================================================

Script Name: run_analysis.R

Purpose: This script will read data collected from the accelerometers from the Samsung Galaxy S smartphone, documented at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. It will merge the test and training 
subjet data and create a tidy data set containing the subject id, activity name, and averages of the mean and standard 
deviation measurements for each subject/activity pair. 

Preconditions: The test and training subject data should be located in the current working directory in the following
structure: 
- /features.txt
- /activity_labels.txt
- /test
-- /subject_test.txt
-- /X_test.txt
-- /Y_test.txt
- /train
-- /subject_train.txt
-- /X_train.txt
-- /Y_train.txt

Function: From the data directory, execute the run_analysis function. No arguments are passed. 

Output: The tidy data set is documented in the CodeBook.md file. 




