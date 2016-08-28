## Johns Hopkins- Coursera Getting and Cleaning Data Project Code Book - 2016-08

Neelani

### Overview
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the 
waist. Using its embedded accelerometer and gyroscope, captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate 
of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two 
sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to 
have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was 
obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Input Data Set
The data set is having the following files:-

 1. 'features_info.txt': Shows information about the variables used on the feature vector.
 2. 'features.txt': List of all features.
 3. 'activity_labels.txt': Links the class labels with their activity name.
 4. 'train/X_train.txt': Training set.
 5. 'train/y_train.txt': Training labels.
 6. 'test/X_test.txt': Test set.
 7. 'test/y_test.txt': Test labels.

### Ouput Data Set
The selected meassurement variables for each subject and each activity:

 1. MeanOfTimeBodyAccMeanX
 2. MeanOfTimeBodyAccMeanY
 3. MeanOfTimeBodyAccMeanZ
 4. MeanOfTimeBodyAccStdX
 5. MeanOfTimeBodyAccStdY
 6. MeanOfTimeBodyAccStdZ
 7. MeanOfTimeGravityAccMeanX
 8. MeanOfTimeGravityAccMeanY
 9. MeanOfTimeGravityAccMeanZ
10. MeanOfTimeGravityAccStdX
11. MeanOfTimeGravityAccStdY
12. MeanOfTimeGravityAccStdZ
13. MeanOfTimeBodyAccJerkMeanX
14. MeanOfTimeBodyAccJerkMeanY
15. MeanOfTimeBodyAccJerkMeanZ
16. MeanOfTimeBodyAccJerkStdX
17. MeanOfTimeBodyAccJerkStdY
18. MeanOfTimeBodyAccJerkStdZ
19. MeanOfTimeBodyGyroMeanX
20. MeanOfTimeBodyGyroMeanY
21. MeanOfTimeBodyGyroMeanZ
22. MeanOfTimeBodyGyroStdX
23. MeanOfTimeBodyGyroStdY
24. MeanOfTimeBodyGyroStdZ
25. MeanOfTimeBodyGyroJerkMeanX
26. MeanOfTimeBodyGyroJerkMeanY
27. MeanOfTimeBodyGyroJerkMeanZ
28. MeanOfTimeBodyGyroJerkStdX
29. MeanOfTimeBodyGyroJerkStdY
30. MeanOfTimeBodyGyroJerkStdZ
31. MeanOfTimeBodyAccMagMean
32. MeanOfTimeBodyAccMagStd
33. MeanOfTimeGravityAccMagMean
34. MeanOfTimeGravityAccMagStd
35. MeanOfTimeBodyAccJerkMagMean
36. MeanOfTimeBodyAccJerkMagStd
37. MeanOfTimeBodyGyroMagMean
38. MeanOfTimeBodyGyroMagStd
39. MeanOfTimeBodyGyroJerkMagMean
40. MeanOfTimeBodyGyroJerkMagStd
41. MeanOfFrequencyBodyAccMeanX
42. MeanOfFrequencyBodyAccMeanY
43. MeanOfFrequencyBodyAccMeanZ
44. MeanOfFrequencyBodyAccStdX
45. MeanOfFrequencyBodyAccStdY
46. MeanOfFrequencyBodyAccStdZ
47. MeanOfFrequencyBodyAccJerkMeanX
48. MeanOfFrequencyBodyAccJerkMeanY
49. MeanOfFrequencyBodyAccJerkMeanZ
50. MeanOfFrequencyBodyAccJerkStdX
51. MeanOfFrequencyBodyAccJerkStdY
52. MeanOfFrequencyBodyAccJerkStdZ
53. MeanOfFrequencyBodyGyroMeanX
54. MeanOfFrequencyBodyGyroMeanY
55. MeanOfFrequencyBodyGyroMeanZ
56. MeanOfFrequencyBodyGyroStdX
57. MeanOfFrequencyBodyGyroStdY
58. MeanOfFrequencyBodyGyroStdZ
59. MeanOfFrequencyBodyAccMagMean
60. MeanOfFrequencyBodyAccMagStd
61. MeanOfFrequencyBodyAccJerkMagMean
62. MeanOfFrequencyBodyAccJerkMagStd
63. MeanOfFrequencyBodyGyroMagMean
64. MeanOfFrequencyBodyGyroMagStd
65. MeanOfFrequencyBodyGyroJerkMagMean
66. MeanOfFrequencyBodyGyroJerkMagStd


