Weather Temperature Humidity 
Windy
 
Class
sunny hot high false N
sunny hot high true N
overcast hot high false P
rain mild high false P
rain cool normal false P
rain cool normal true N
overcast cool normal true P
sunny mild high false N
sunny cool normal false P
rain mild normal false P
sunny mild normal true P
overcastmild high true P
overcast hot normal false P
rain mild high true N
PLAY-TENNIS EXAMPLE
weather Yes No
Sunny 2 3 5/14=0.3571
Overcast 4 0 4/14=0.2857
Rainy 3 2 5/14=0.3571
Total 9/14 = 0.642 5/14=.3571
temperature Yes No
Hot 2 2 4/14=0.2857
Mild 4 2 6/14=0.4285
Cool 3 1 4/14=0.2857
Total 9/14=0.642 5/14=0.3571
P(p) = 9/14
P(n) = 5/14
Weather Temperature Humidity 
Windy
 
Class
sunny hot high false N
sunny hot high true N
overcast hot high false P
rain mild high false P
rain cool normal false P
rain cool normal true N
overcast cool normal true P
sunny mild high false N
sunny cool normal false P
rain mild normal false P
sunny mild normal true P
overcastmild high true P
overcast hot normal false P
rain mild high true N
PLAY-TENNIS EXAMPLE 1
humidity Yes No
High 3 4 7/14=0.5
Normal 6 1 7/14=0.5
Total 9/14=0.642 5/14=0.3571
Windy Yes No
True 3 3 6/14=0.4285
False 6 2 8/14=0.571
Total 9/14=0.642 5/14=0.3571
P(p) = 9/14
P(n) = 5/14
CONTD….
◾Test Data Set:
Outlook
Rain
Temperature
Humidity
Windy
Class
Hot
High
False
?
◾P(X|p)=
P(rain|p)*P(hot|p)*P(high|p)*P(false|p)*P(p) = 3/9 * 2/9 * 3/9 * 6/9 * 9/14 = 0.010582
◾P(X|n)=
P(rain|n)*P(hot|n)*P(high|n)*P(false|n)*P(n) = 2/5 * 2/5 * 4/5 * 2/5 * 5/14 = 0.018286
P(X|n) > P(X|p)
Outlook
Rain
Temperature
Humidity
Windy
Hot
High
False
Class
N (not play)
EXAMPLE
Q: Using Naive Bayes Classification and given table, classify the given tuple (T), also draw the training table for 
Probabilistic approach.
◾ Trained Data Set
◾ Test Data Set
Age Income Student
>40
<=30
31…40
High 
Low 
Medium
Credit_ 
Rating
No
Yes
Yes
Fair 
Fair
Excellent
Buys_
computer
?
?
?
RID Age Income Student Credit Rating Buys-Computer
1 Youth High No Fair No
2 Youth High No Excellent No
3 Middle-aged High No Fair Yes
4 Senior Medium No Fair Yes
5 Senior Low Yes Fair Yes
6 Senior Low Yes Excellent No
7 Middle-Aged Low Yes Excellent Yes
8 Youth Medium No Fair No
9 Youth Low Yes Fair Yes
10 Senior Medium Yes Fair Yes
11 Youth Medium Yes Excellent Yes
12 Middle-aged Medium No Excellent Yes
13 Middle-aged High Yes Fair Yes
14 Senior Medium No Excellent No
Example 2:
New Instance
Age = Youth, Income = Medium, Student = Yes, Credit Rating = Fair
Example
3:
K-Nearest Neighbors (KNN) Algorithm
K-Nearest Neighbors (KNN) algorithm is a type of supervised ML 
algorithm which can be used for both classification as well as 
regression predictive problems. However, it is mainly used for 
classification predictive problems in industry. The following two 
properties would define KNN well −
• Lazy
Learning algorithm − KNN is a lazy learning algorithm 
because it does
not have a specialized training phase and 
uses all the data for training while classification.
•
Non-Parametric learning algorithm − KNN is also a non
parametric learning algorithm because it doesn’t
anything about the underlying data.
assume 
9
Working of K-Nearest Neighbors Algorithm
• K-nearest neighbors (KNN) algorithm uses ‘feature 
similarity’ to predict the values of new data points 
which further means that the new data point will be 
assigned a value based on how closely it matches the 
points in the training set. We can understand its 
working with the help of following steps −
• Step
1 − For implementing any algorithm, we need 
dataset. So, during the first step of KNN, we must load 
the training as well as test data.
• Step
2 − Next, we need to choose
nearest data points. K
the value of K i.e. the 
can be any integer.
Working of K-Nearest Neighbors
Algorithm
• Step
3 − For each point in the test data do the following −
• Step
3.1 − Calculate
row of training
the distance
between test
data and each 
data with the help of any of the method 
namely: Euclidean
, Manhattan
or Hamming
distance. The most 
commonly used method to calculate distance
is Euclidean.
• Step
3.2 − Now, based on the distance value, sort
ascending
• Step
order
.
3.3 − Next, it will choose
the top
them in 
K rows from the sorted 
array.
• Step
3.4 − Now, it will assign
most
frequent
a class to the test point based on 
class of these rows.
• Step
4 − End
Distance Measure:

Example
1:
We have data from the questionnaires survey (to ask people 
opinion) and objective testing with two
and strength
) to classify
not
. Here is four
training samples
X1 = Acid Durability 
(seconds)
7
7
3
attributes (acid durability
whether a special paper tissue is good
X2 = Strength 
(kg/square meter)
7
Y = Classification
Bad
4
4
1
4
Bad
Good
Good
or 
Now the factory produces a new paper tissue that pass laboratory 
test with X1 = 3 and X2 = 7. Without another expensive survey, can 
we guess what the classification of this new tissue is?
• Determine parameter K = number of nearest neighbors (Suppose
K =3)
• Calculate the distance between the query-instance and all the training samples
• Coordinate of query instance is (3, 7), instead of calculating the distance we compute 
square distance which is faster to calculate (without square root)



Example
3:
Mr. Javed Ahmed has applied for loan. His age is 34 and income is 45 K.
Being an analyst you are required to asses this case for loan whether it
may beRisky or Safe?