1
DECISION TREES
2
Decision Trees
• It is used for classification
• It is a type of Supervised Machine Learning 
• what the input is and what the corresponding output is in the 
training data. 
• where the data is continuously split according to a certain 
parameter. 
• The tree can be explained by two entities, namely 
decision nodes and leaves. 
• The leaves are the decisions or the final outcomes
• The decision nodes are where the data is split.
3
Example
• Assume that you want to predict whether a person is fit 
given their information like age, eating habit, and physical 
activity, etc. 
• The decision nodes here are questions like ‘What’s the 
age?’, ‘Does he exercise?’, ‘Does he eat a lot of pizzas’? 
• And the leaves, which are outcomes like either ‘fit’, or 
‘unfit’. In this case this was a binary classification 
problem.
4
Example: Is a Person Fit?
Age < 30
Yes
Eats a lot of 
pizzas?
No
Exercises in 
the morning?
Yes No
Unfit!
Fit!
Yes No
Fit!
Unfit!
5
Why decision trees?
• Decision trees often mimic the human level thinking so its 
so simple to understand the data and make some good 
interpretations.
• Decision trees actually make you see the logic for the 
data to interpret (not like black box algorithms like SVM, 
NN, etc.)
6
Types of Decision Trees
• Classification trees (Yes/No types)
• Previous example is an example of classification tree, where the 
outcome was a variable like ‘fit’ or ‘unfit’. 
• Here the decision variable is Categorical.
• Regression trees (Continuous data types)
• Here the decision or the outcome variable is Continuous, e.g. a 
number like 123.
7
Few more Examples
8
Few more Examples
• If we are classifying bank loan application for a customer; 
the decision tree may look like this.
• Here we can see the logic how it is making the decision.
Few more Examples
• if we are classifyingbank loanapplication for a customer, 
the decision tree may look like this.
•Here we can see the logic how it is making the decision.
9
A decision tree is a tree where each node represents 
a feature(attribute), each link(branch) represents a 
decision(rule) and each leaf represents an 
outcome(categorical or continues value).
10
Working 
• There are many algorithms out there which construct 
Decision Trees, but one of the best is called as ID3 
Algorithm. 
• ID3 Stands for Iterative Dichotomiser 3.
• Before discussing the ID3 algorithm, we’ll go through few 
definitions.
11
Entropy
• Entropy, also called as Shannon Entropy
• It is the measure of the amount of uncertainty or 
randomness in data.
12
Entropy
• Example, consider a coin toss whose probability of heads is 0.5 
and probability of tails is 0.5. 
• Here the entropy is the highest possible, since there’s no way of 
determining what the outcome might be. 
• Alternatively, consider a coin which has heads on both the sides, 
the entropy of such an event can be predicted perfectly since we 
know beforehand that it’ll always be heads. In other words, this 
event has no randomness hence its entropy is zero.
• In particular, lower values imply less uncertainty while higher 
values imply high uncertainty.
13
Information Gain
• Information gain is also called as Kullback-Leibler 
divergence 
• It measures the relative change in entropy with respect to 
the independent variables.
14
Example
• Consider a piece of data collected over the course of 14 
days where the features are Outlook, Temperature, 
Humidity, Wind and the outcome variable is whether Golf 
was played on the day. 
• Now, our job is to build a predictive model which takes in 
above 4 parameters and predicts whether Golf will be 
played on the day. 
• We will build a decision tree to do that using ID3 
algorithm.
Example
Day Outlook Temperature Humidity Wind Play Golf
D1 Sunny Hot High Weak No
D2 Sunny Hot High Strong No
D3 Overcast Hot High Weak Yes
D4 Rain Mild High Weak Yes
D5 Rain Cool Normal Weak Yes
D6 Rain Cool Normal Strong No
D7 Overcast Cool Normal Strong Yes
D8 Sunny Mild High Weak No
D9 Sunny Cool Normal Weak Yes
D10 Rain Mild Normal Weak Yes
D11 Sunny Mild Normal Strong Yes
D12 Overcast Mild High Strong Yes
D13 Overcast Hot Normal Weak Yes
D14 Rain Mild High Strong No
15
16
ID3 Algorithm 
1. Create root node for the tree
The attribute that best classifies the training data, use this attribute at 
the root of the tree
• How to choose the best attribute?
• ID3 algorithm begins
17
ID3 Algorithm 
• Calculate the entropy (Amount of uncertainty in dataset)
p
−
Entropy p n
+

p

n
log log

n

= −
   
2 2

+

+
p n p n p n

• Calculate Average Information
(
I Attribute
)
=

+
p n
i i
+
p n
Entropy A
( )
+

• Calculate Information Gain (Difference in entropy before 
and after splitting dataset on attribute A)
Gain Entropy S I Attribute
= −
( ) (
)
18
ID3 Algorithm 
1. Compute the Entropy for dataset entropy(S)
2. For every attribute/ feature:
1.
2.
3.
Calculate entropy for all other values Entropy (A)
Take average information entropy for the current attribute
Calculate Gain for the current attribute
3. Pick the highest Gain attribute
4. Repeat until we get the tree we desired
Example
Day Outlook Temperat
ure Humidity Wind Play Golf
D1 Sunny Hot High Weak No
D2 Sunny Hot High Strong No
D3 Overcast Hot High Weak Yes
D4 Rain Mild High Weak Yes
D5 Rain Cool Normal Weak Yes
D6 Rain Cool Normal Strong No
D7 Overcast Cool Normal Strong Yes
D8 Sunny Mild High Weak No
D9 Sunny Cool Normal Weak Yes
D10 Rain Mild Normal Weak Yes
D11 Sunny Mild Normal Strong Yes
D12 Overcast Mild High Strong Yes
D13 Overcast Hot Normal Weak Yes
D14 Rain Mild High Strong No
19
P = 9
N = 5
Total = 14
Example
20
P N Total
9 5 14
2 2
log log p p n n Entropy p n p n p n p n
    − = −     + + + +    
2 2
9 9 5 5 log log 14 14 14 14 Entropy −     = −        
0.940 =
Example -  For Each Attribute (let say outlook)
Outlook Play Golf
Sunny No
Sunny No
Sunny No
Sunny Yes
Sunny Yes
21
Calculate Entropy for each Values i.e. for Sunny, Rain, , Overcast
Outlook Play Golf
Overcast Yes
Overcast Yes
Overcast Yes
Overcast Yes
Outlook Play Golf
Rain Yes
Rain Yes
Rain No
Rain Yes
Rain No
Outlook P N Entropy
Sunny 2 3 0.971
Rain 3 2 0.971
Overcast 4 0 0
Calculate Entropy (Outlook = ‘Value’)
22
2 2
log log p p n n Entropy p n p n p n p n
    − = −     + + + +    
2 2
2 2 3 3 ( ) log log 0.971 5 5 5 5 EntropyOutlook sunny −     = = − =        
2 2
( ) 1log (1) 0log 0 0 EntropyOutlook overcast = = − =
2 2
3 3 2 2 ( ) log log 0.971 5 5 5 5 EntropyOutlook rain −     = = − =        
Calculate Average Information (Entropy)
23
( ) ( ) sunny sunny
P N IOutlook EntropyOutlook Sunny p n
+ = = + +
3 2 2 3 4 0 ( ) *0.971 *0.971 *0 9 5 9 5 9 5
0.693
IOutlook + + + = + + + + +
=
( ) rainy rainy
P N EntropyOutlook rainy p n
+ = + +
( ) outcast outcast
P N EntropyOutlook outcast p n
+ = +
24
Calculate Gain: attribute is outlook
Gain Entropy S I Attribute
= −
( ) (
Entropy S =
( ) 0.940
(
Gain Outlook =
−
)
) 0.940 0.693 0.247
=
Attribute (Temperature)
25
Temperature Play Golf
Hot No
Hot No
Hot Yes
Hot Yes
Calculate Entropy for each Temperature i.e. for Hot, Mild, Cool
Temperature Play Golf
Mild Yes
Mild No
Mild Yes
Mild Yes
Mild Yes
Mild No
Temperature Play Golf
Cool Yes
Cool No
Cool Yes
Cool Yes
Temperature P N Entropy
Hot 2 2 1
Mild 4 2 0.918
Cool 3 1 0.811
26
Calculate Average Information (Entropy)
(
I Temperature
)
=
mild
P N
hot
+
hot
+
p n
(
Entropy Temperature hot
=
+
mild
)
+
P N EntropyTemperature mild
+
p n
cool
+
cool
( )
= +
P N EntropyTemperature cool
+
p n
(
I Temperature
+
=
( )
+
2 2 4 2 3 1
+
= + +
) *1 *0.918 *0.811
+
+
9 5 9 5 9 5
0.911
+
=
27
Calculate Gain: attribute is outlook
Gain Entropy S I Attribute
= −
( ) (
Entropy S =
( ) 0.940
(
Gain Temperature
)
=
)
0.940 – 0.911  0. 2
=
0 9
Attribute (humidity)
28
Humidity Play Golf
High No
High No
High Yes
High Yes
High No
High Yes
High No
Humidity Play Golf
Normal Yes
Normal No
Normal Yes
Normal Yes
Normal Yes
Normal Yes
Normal Yes
Humidity P N Entropy
High 3 4 0.985
Normal 6 1 0.591
29
Calculate Average Information (Entropy)
(
I Humidity
)
=
P N
high
+
high
+
p n
(
Entropy Humidity high
=
normal
+
normal
)
+
P N Entropy Humidity normal
+
p n
I Humidity
=
( )
3 4
+ +
6 1
( ) *0.985 *0.591
= +
9 5
+ +
9 5
=
0.788
30
Calculate Gain: attribute is outlook
Gain Entropy S I Attribute
= −
( ) (
Entropy S =
( ) 0.940
(
Gain Humidity
)
=
)
0.940 – 0.788  01 2
=
.
5
Attribute (Wind)
31
Wind Play Golf
Weak No
Weak Yes
Weak Yes
Weak Yes
Weak No
Weak Yes
Weak Yes
Weak Yes
Wind Play Golf
Strong No
Strong No
Strong Yes
Strong Yes
Strong Yes
Strong No
Wind P N Entropy
Weak 6 2 0.811
Strong 3 3 1
32
Calculate Average Information (Entropy)
(
I Wind
)
=
P N
strong
+
strong
+
p n
(
Entropy Wind strong
=
weak
+
weak
)
+
P N EntropyWind weak
+
p n
I Wind
3 3 6 2
=
( )
+ +
( ) *1 *0.811
= +
9 5 9 5
+ +
=
0.892
33
Calculate Gain: attribute is outlook
Gain Entropy S I Attribute
= −
( ) (
Entropy S =
( ) 0.940
Gain wind =
0.940 – 0.8
)
( ) 92  0.048
=
34
Pick the highest Gain Attribute
Attribute
Outlook
Temperature
Humidity
Wind
Gain
0.247
0.029
0.152
0.048
Root Node
OUTLOOK
35
Decision Tree
Sunny
?
Outlook
Overcast
Yes
Rain
?
Repeat the same thing for sub trees till we 
get the tree
•Outlook = Sunny
•Outlook = rain
36
Outlook Temperat
ure Humidity Wind Play Golf
Sunny Hot High Weak No
Sunny Hot High Strong No
Sunny Mild High Weak No
Sunny Cool Normal Weak Yes
Sunny Mild Normal Strong Yes
Outlook Temperat
ure Humidity Wind Play Golf
Rain Mild High Weak Yes
Rain Cool Normal Weak Yes
Rain Cool Normal Strong No
Rain Mild Normal Weak Yes
Rain Mild High Strong No
Repeat the same thing for sub trees till we 
get the tree
•Outlook = Sunny
•P=2 N=3
•Total = 5
37
Outlook Temperature Humidity Wind Play Golf
Sunny Hot High Weak No
Sunny Hot High Strong No
Sunny Mild High Weak No
Sunny Cool Normal Weak Yes
Sunny Mild Normal Strong Yes
2 2
log log p p n n Entropy p n p n p n p n
    − = −     + + + +    
2 2
2 2 3 3 log log 2 3 2 3 2 3 2 3 Entropy −     = −     + + + +    
0.971 =
Repeat the same thing for sub trees till we 
get the tree
38
Outlook Temperature Play Golf
Sunny Hot No
Sunny Hot No
Sunny Mild No
Sunny Cool Yes
Sunny Mild Yes
Calculate Average Information Entropy
Calculate Gain
Temperature P N Entropy
Cool 1 0 0
Hot 0 2 0
Mild 1 1 1
0.571 Gain=
( ) 0.4 ITemperature =
39
Repeat the same thing for sub trees till we 
get the tree
Outlook
Sunny
Sunny
Sunny
Sunny
Humidity
High
High
Play Golf
No
No
High
Normal
Sunny
Normal
No
Yes
Yes
Calculate Average Information Entropy
(
Humidity
High
Normal
P N Entropy
0
3
0
2
I Humidity =
) 0
Calculate Gain
Gain =
0.971
0
0
40
Repeat the same thing for sub trees till we 
get the tree
Outlook
Sunny
Sunny
Sunny
Sunny
Wind
Weak
Strong
Play Golf
No
No
Weak
Weak
Sunny
Strong
No
Yes
Yes
Calculate Average Information Entropy
(
I Wind =
Calculate Gain
Gain =
Wind P N Entropy
Stron
g
1
1 1
Weak 1 2 0.918
) 0.951
0.020
41
Pick the highest Gain Attribute
Attribute
Temperature
Humidity
Wind
Gain
0.571
0.971
0.02
Root Node
Humidity
42
Outlook
Humidity ?
Yes
Sunny
Overcast
Rain
Yes No
Outlook Humidity Play Golf
Sunny High No
Sunny High No
Sunny High No
Sunny Normal Yes
Sunny Normal Yes
Normal High 
43
Outlook Temperature Humidity Wind Play Golf
Rain Mild High Weak Yes
Rain Cool Normal Weak Yes
Rain Cool Normal Strong No
Rain Mild Normal Weak Yes
Rain Mild High Strong No
•Outlook = Rain
•P=3 N=2
•Total = 5
2 2
log log p p n n Entropy p n p n p n p n
    − = −     + + + +    
2 2
3 3 2 2 log log 2 3 2 3 2 3 2 3 Entropy −     = −     + + + +    
0.971 =
44
For Each Attribute (Temperature)
Outlook
Rain
Rain
Rain
Rain
Temperature
Mild
Cool
Play Golf
Yes
Yes
Temperature
Mild
Cool
P N Entropy
2
1
0.918
1
Cool
Mild
Rain
Mild
No
Yes
No
Calculate Average Information Entropy
(
I Temperature =
Calculate Gain
Gain=
) 0.951
0.020
1
1
45
For Each Attribute (Humidity)
Outlook
Rain
Rain
Rain
Rain
Humidity
High
Normal
Play Golf
Yes
Yes
Humidity
High
Normal
P N Entropy
1
1
1
2
Normal
Normal
Rain
High
No
Yes
No
Calculate Average Information Entropy
(
I Humidity =
Calculate Gain
Gain=
) 0.951
0.020
1
0.918
46
For Each Attribute (Wind)
Outlook
Rain
Rain
Rain
Rain
Wind
Weak
Weak
Play Golf
Yes
Yes
Wind
Strong
Weak
P N Entropy
0
2
0
3
Strong
Weak
Rain
Strong
No
Yes
No
Calculate Average Information Entropy
(
I Wind =
Calculate Gain
Gain =
) 0
0.971
0
0
47
Pick the highest Gain Attribute
Attribute
Temperature
Humidity
Wind
Gain
0.02
0.02
0.971
Root Node in Rainy
wind
48
Final Decision Tree
Sunny
Outlook
Humidity
Normal High 
Yes
No
Overcast
Yes
Rain
Windy
Weak strong 
Yes
No
49
Practice Question
Apply Decision tree algorithm on following dataset: 
Color
Red
Blue
Red
Green
Red
Shape
Square
Square
Round
Size
Large
Large
Class
Like
Like
Small
Square
Round
Green
Round
Small
Large
Large
Dislike
Dislike
Like
Dislike
50
Learning decision trees
Example Problem: Decide whether to wait for a table at a 
restaurant, based on the following attributes:
1. Alternate: is there an alternative restaurant nearby?
2. Waiting area: is there a comfortable area to wait in?
3. Fri/Sat: is today Friday or Saturday?
4. Hungry: are we hungry?
5. Patrons: number of people in the restaurant (None, Some, Full)
6. Price: price range ($, $$, $$$)
7. Raining: is it raining outside?
8. Reservation: have we made a reservation?
9. Type: kind of restaurant (French, Italian, Thai, Burger)
10. Wait Estimate: estimated waiting time (0-10, 10-30, 30-60, >60)
51
Feature(Attribute)-based representations
• Examples described by feature(attribute) values 
• (Boolean, discrete, continuous)
• E.g., situations where I will/won't wait for a table:
• Classification of examples is positive (T) or negative (F)
•
52
Decision trees
• One possible representation for hypotheses
• E.g., here is the “true” tree for deciding whether to wait:
53
Expressiveness
• Decision trees can express any function of the input attributes.
• E.g., for Boolean functions, truth table row → path to leaf:
• Trivially, there is a consistent decision tree for any training set with 
one path to leaf for each example (unless f nondeterministic in x) but 
it probably won't generalize to new examples
• Prefer to find more compact decision trees
54
Decision Tree Based Classification
Advantages:
• Easy to construct/implement
• Extremely fast at classifying unknown records
• Models are easy to interpret for small-sized trees
• Accuracy is comparable to other classification techniques for many 
simple data sets
• Tree models make no assumptions about the distribution of the underlying 
data : nonparametric 
• Have a built-in feature selection method that makes them immune to the 
presence of useless variables 
55
Decision Tree Based Classification
Disadvantages:
• Computationally expensive to train
• Some decision trees can be overly complex that do not generalize the 
data well. 
• Less expressivity: There may be concepts that are hard to learn with 
limited decision trees
56
Conclusion
• Below is the summary of what we’ve studied:
• Entropy to measure discriminatory power of an attribute 
for classification task. It defines the amount of 
randomness in attribute for classification task. Entropy is 
minimal means the attribute appears close to one class 
and have a good discriminatory power for classification
• Information Gain to rank attribute for filtering at given 
node in the tree. The ranking is based on high information 
gain entropy in decreasing order.
• The recursive ID3 algorithm that creates a decision tree.