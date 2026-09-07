Confusion matrix
A confusion matrix is like a scorecard for a computer program that predicts things. It 
shows how many times the program got things right (true positives and true 
negatives) and how many times it made mistakes (false positives and false negatives). 
This helps us understand how well the program is doing and how to make it better.
A confusion matrix is essential for assessing a classification model's performance, as 
it breaks down predictions into true positives, true negatives, false positives, and 
false negatives, enabling the calculation of various evaluation metrics. It helps in 
error analysis, model improvement, and class imbalance detection.
In short 
A confusion matrix is like a tool to see how often a computer prediction is correct and where it's 
making mistakes.
1
Case Study : Quality Control in a Manufacturing Process
Now, you create a confusion matrix to summarize the model's performance:
Cases 1000
Actual Defective
Predicted Defective
Predicted Non-Defective
90 (TP)
Actual Non-Defective
Analysis of the Confusion Matrix
20 (FP)
10 (FN)
880 (TN)
0.97 % Accuracy 
True Positives (TP): These are the defective products correctly classified as defective. In this 
case, 90 defective products were correctly identified.
True Negatives (TN): These are the non-defective products correctly classified as non
defective. Here, 880 non-defective products were correctly identified.
False Positives (FP): These are the non-defective products incorrectly classified as defective. 
In this example, 20 non-defective products were mistakenly identified as defective.
False Negatives (FN): These are the defective products incorrectly classified as non
2
defective. In this case, 10 defective products were missed and classified as non-defective.
Case Study : Medical Test for a Rare Disease
After making predictions, you create a confusion matrix to summarize the model's 
performance:
0.95 % Accuracy
Cases 500
Actual Positive
Actual Negative
Predicted Positive (Has Disease X) Predicted Negative (Does Not Have Disease X)
40 (True Positives)
15 (False Positives)
Analysis of the Confusion Matrix
10 (False Negatives)
435 (True Negatives)
True Positives (TP): These are the patients with Disease X correctly classified as having the disease. In 
this case, 40 patients with the disease were correctly identified.
True Negatives (TN): These are the patients without Disease X correctly classified as not having the 
disease. Here, 435 patients without the disease were correctly identified.
False Positives (FP): These are the patients without the disease incorrectly classified as having the 
disease. In this example, 15 patients without the disease were mistakenly identified as having the 
disease.
False Negatives (FN): These are the patients with Disease X incorrectly classified as not having the 
3
disease. In this case, 10 patients with the disease were missed and classified as not having it.
Case Study : Credit Card Fraud Detection
After model predictions, you construct a confusion matrix:
Cases 2000
Actual Fraudulent
Actual Legitimate
Predicted Fraudulent
45 (True Positives)
Predicted Legitimate
5 (False Negatives)
10 (False Positives)
i.
ii.
1,940 (True Negatives)
0.99% accuracy 
True Positives (TP): These are the fraudulent transactions correctly classified as 
fraudulent. In this case, 45 fraudulent transactions were correctly identified.
True Negatives (TN): These are the legitimate transactions correctly classified as 
legitimate. Here, 1,940 legitimate transactions were correctly identified.
iii.
False Positives (FP): These are the legitimate transactions incorrectly classified as 
fraudulent. In this example, 10 legitimate transactions were mistakenly classified 
as fraudulent.
iv. False Negatives (FN): These are the fraudulent transactions incorrectly classified 
as legitimate. In this case, 5 fraudulent transactions were missed and classified 
as legitimate.
4
Predicted
165
Actual  No
Actual Yes
No
50 
Yes
10  
5   
55
100 
110
Predicted
165
Actual  No
Actual Yes
No
50 [TN]
Yes
60
105
10  [FP]
5   
[FN]
55
100 [TP]
110
60
105
5
Example
Suppose we have a binary class imbalanced dataset consisting of 
60 samples in the positive class and 40 samples in the negative 
class of the test set, which we use to evaluate a machine learning 
model.
• 45 samples belonging to the positive class being predicted 
correctly.
• 32 sample belonging to the negative class being predicted 
correctly.
• 8 sample belonging to the negative class but being predicted 
wrongly as belonging to the positive class.
• 15 sample belonging to the positive class but being predicted 
wrongly as belonging to the negative class.
• Create confusion metrics, calculate accuracy, precision, recall 
and F1 score.
6
Solution:
7
8
Predicted
165
Actual  No
Actual Yes
No
50 [TN]
5   
[FN]
Yes
10  [FP]
100 [TP]
55
Accuracy 
110
60
105
Accuracy measures the proportion of correct predictions.
Accuracy = (True Positives + True Negatives) / Total Number of Predictions
Error rate
The error rate measures the proportion of incorrect predictions.
Error Rate = (False Positives + False Negatives) / Total Number of Predictions
9
10
MODEL  A Predicted
165 No Yes
Actual  SPAM
No
50 [TN] 10  [FP] 60
Actual SPAM
Yes
5   [FN] 100 [TP] 105
55 110
MODEL  B Predicted
165 No Yes
Actual  SPAM
No
50 [TN] 04 [FP] 54
Actual SPAM
Yes
11   [FN] 100 [TP] 111
61 104
Which model you will prefer either model A or Model B Considering false positives?
Precision is important when false positives 
(Type 1 Error) are more concerned. 
Which model you will prefer either model A or Model B Considering false negatives?
Recall is important when false negatives (Type  
2 error) are more concerned.
11
The F1 score is a metric that combines precision and recall to 
assess the accuracy of classification models. It provides a 
balanced measure of a model's ability to minimize both false 
positives and false negatives.
F1 Score = 2 * (Precision * Recall) / (Precision + Recall)
12
Multiclass Confusion Matrix
Predicted
Samples = 110
Actual
Apple
25
Mango
5
Guava
Total
Apple
Mango
Guava
Total
4
32
7
2
6
35
4
41
25
34
37
38
35
110
13