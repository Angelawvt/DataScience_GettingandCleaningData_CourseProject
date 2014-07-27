GettingandCleaningData: CourseProject
=====================================

__Script Name:__ run_analysis.R

__Purpose:__ This script will read data collected from the accelerometers from the Samsung Galaxy S smartphone, documented at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. It will merge the test and training 
subjet data and create a tidy data set containing the subject id, activity name, and averages of the mean and standard 
deviation measurements for each subject/activity pair. 

__Preconditions:__ The test and training subject data should be located in the current working directory in the following
structure: 
- /features.txt
- /activity_labels.txt
- /test/subject_test.txt
- /test/X_test.txt
- /test/Y_test.txt
- /train/subject_train.txt
- /train/X_train.txt
- /train/Y_train.txt

__Function:__ From the data directory, execute the run_analysis function. No arguments are passed. 

__Output:__ The tidy data set is documented in the CodeBook.md file. 




