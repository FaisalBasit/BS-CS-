Lecture -3
Supervised Learning
1
Supervised Learning
• Learning a discrete function: Classification
• Learning a continuous function: Regression
2
TYPES OF SUPERVISED LEARNING
Classification
: To predict the outcome of a given sample 
where the output variable is in the form of categories 
(discrete values). Examples include labels such as male and 
female, sick and healthy.
Regression
: To predict the outcome of a given sample where 
the output variable is in the form of real values (continuous 
values). Examples include real-valued labels denoting the 
amount of rainfall, the height of a person.
3
Regression
Regression
is divided into types:
1. Linear Regression: Linear regression predictions are continuous 
values (rainfall in cm, predicting prices etc.)
2. Logistic Regression: Logistic regression predictions are discrete 
values (whether a student passed/failed) after applying a 
transformation function.
4
REGRESSION
IV
DV
IV 1
DV
5
IV 2
LINEAR REGRESSION
• Regression is a statistical method that helps us understand and predict 
relationship between variables.
• Describe how one variable (dependent variable) changes as another 
variable (independent variable) changes.
• Dependent variable: We are trying to predict or explain(Y).
• Independent variable: that are used to predict or explain the changes 
in the dependent variable(X).
For example: predicting salary based on years of experience, predicting 
exam score based on study, predicting resale based on vehicle sale.
6
Linear Regression
Linear regression is represented as a line in the form of y = a + bx.
7
Linear regression
• Y represent the dependent variable
• X represent the independent variable
• m is the slope of the line(How much Y changes for a unit change in X)
• b is the intercept(the value of Y when X is 0)
• Step 1: Data Collection
• Step 2: Calculations
• Step 3: Prediction
• Step 4: Visualization
8
Example:
Pizza Diameter (x)
(inches)
8
10
Price (y)
(dollars)
10
13
12
16
What will be the price of pizza, if the diameter of pizza is 20 inches? 
Solution:
Linear regression is represented as a line in the form of y = a + 
bx
9
x
8
10
y
10
xy
x^2
13
12
16
=
=
10
=
=-2
1.5
Now, predicting the price of pizza, if the diameter is 20 inches;
y = a + bx
y = -2 + (1.5) (20) 
y = 28 dollars
11
Simple Linear Regression Code in Python
12
13
14
15
Output  of Python Program 
16
17
18
19
20
21
22
23
24
25
Multiple Linear Regression Code in Python
Home WORK
26
Answer
27
28
Practice Problems
1- A company manufactures an electronic device to be used in a very 
wide temperature range. The company knows that increased 
temperature shortens the life time of the device, and a study is 
therefore performed in which the life time is determined as a function 
of temperature. The following data is found: What will be lifetime of 
device if temperature is 60 Celsius?
Temperature in Celsius
10
20
30
Lifetime in Hours
420
365
285
40
220
29
2- A company sales (in millions) for 5 years (2019 – 2023) are:
• X (years since 2019) : 0, 1, 2, 3, 4
• Y (Sales in millions) : 12, 19, 29, 37, 45
Predict sales in 2026.
3- A student wants to predict test scores based on hours studied:
• X (hours) : 2, 3, 4, 5, 6
• Y (score): 60, 65, 75, 80, 90
If a student studies for 8 hours, what is their predicted score.
4- A real estate model is developed to predict house prices based on Square foots 
(X1) and no. of bedrooms (X2). The output is: 
Price = 50,000 + 150 (X1) + 20,000 (X2)
Predict the price of a 20,000 sq.ft house with 3 bedrooms.
30
5- A company wants to predict sales (Y, in 1000s) based on TV advertising budget 
(X1, in 1000s) and Radio advertising budget (X2, in 1000s):
• X1 : 2, 4, 6, 8, 10
• X2 : 1, 2, 3, 4, 5
• Y : 10, 15, 20, 25, 30
Predict sales for X1 = 12 and X2 = 6.
31
Logistic Regression
32
33
Example:
Suppose a sports data scientist wants to use the 
predictor variables (1) points, (2) rebounds, and (3) 
assists to predict the probability that a given college 
basketball player gets drafted into the Academy.
Since there are only two possible outcomes (drafted or 
not drafted) for the response variable, the data 
scientist would use a binomial logistic regression 
model.
34
Example:
Suppose a political scientist wants to use the predictor 
variables (1) annual income and (2) years of education 
to predict the probability that an individual will vote 
for one of four different presidential candidates.
Since there are more than two possible outcomes (there are 
four potential candidates) for the response variable and there 
is no natural ordering among the outcomes, the political 
scientist would use a multinomial logistic regression model.
35
Examples:
Suppose a business wants to use the predictor 
variables (1) word count and (2) country of origin to 
predict the probability that a given email is spam.
Since there are only two possible outcomes (spam or 
not spam) for the response variable, the business 
would use a binomial logistic regression model.
36
Examples:
Suppose an academic advisor wants to use the predictor 
variables (1) GPA, (2) Exam score, and (3) SAT Exam score to 
predict the probability that an individual will get into a 
university that can be categorized into “bad”, “average”, 
“good”, or “great.”
Since there are more than two possible outcomes (there are 
four classifications of school quality) for the response variable 
and there is a natural ordering among the outcomes, the 
academic advisor would use an ordinal logistic regression 
model.
37
Examples:
Suppose a sports analyst wants to use the predictor 
variables (1) TV hours viewed per week and (2) age to 
predict the probability that an individual will pick 
either basketball, football, or cricket as their preferred 
sport.
Since there are more than two possible outcomes 
(there are three sports) for the response variable, the 
sports analyst would use a multinomial logistic 
regression model.
38
Examples:
Suppose a movie critic wants to use the predictor 
variables (1) total run time and (2) genre to predict the 
probability that a given movie will receiving a rating 
between 1 and 10.
Since there are more than two possible outcomes (there are 
10 possible ratings) for the response variable and there is a 
natural ordering among the outcomes, the movie critic would 
use an ordinal logistic regression model.
39
Logistic regression
• Supervised classification model
• Logistic regression is a statistical method used for binary classification 
tasks, where the outcome variable is categorical with two possible 
values, often coded as 0 and 1. It estimates the probability that a given 
input belongs to one of the two classes.
• The logistic function, also known as the sigmoid function, is a key 
component of logistic regression.
Study Hours Exam Result
• Depending variable is categorical and binary (0 or 1)
2
3
4
6
7
0
0
0
1
1
8
5
1
40
?
Logistic regression can also be used in the following areas:
• In healthcare to identify risk factors for diseases and plan preventive 
measures.
• In drug research to tease apart the effectiveness of medicines on 
health outcomes across age, gender and ethnicity.
• In weather forecasting apps to predict snowfall and weather 
conditions.
• In political polls to determine if voters will vote for a particular 
candidate.
• In insurance to predict the chances that a policyholder will die before 
the policy's term expires based on specific criteria, such as gender, age 
and physical examination.
• In banking to predict the chances that a loan applicant will default on a 
41
loan or not, based on annual income, past defaults and past debts.
LOGISTIC REGRESSION- NUMERICAL EXAMPLE 01 
a0 = -1.5
a1 = 0.6
X= 5
Note: - slope -> m -> a1- intercept -> b -> a0
= 
The value of e is equal 
to 2.71828 or e ≈ 2.72.
= 
42
Logistic regression- multiple variables 
Let’s say that we have a training set  of 500 data 
X1
2.1
1.4
3.3
8.06
5.3
X2
2.5
2.3
4.4.
Y
0
0
0
3.05
2.75
2.7
2.5
0
0
?
43
LOGISTIC REGRESSION- NUMERICAL EXAMPLE WITH 
MULTI VARIABLES 
Y 
Initially we assume B0 = 0.0 ,B1 = 0.0 & B2= 0.0
Let’s take X1 = 2.7, X2 = 2.5
Y = ?
Y =
Y =
44