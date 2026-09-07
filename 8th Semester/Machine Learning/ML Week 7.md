Support Vector Machine
• A Support Vector Machine (SVM) is a very 
powerful and versatile Machine Learning 
model, capable of performing linear or 
nonlinear classification, regression, and 
even outlier detection.
• SVMs are particularly well suited for 
classification of complex but small- or 
medium-sized datasets.
Some Important Terms Related to SVM
Hyperplane: It is a decision boundary that separates data 
points of different classes in the feature space. Mathematical 
representation of hyperplane is
y = wx + b 
Support Vectors: These are the data points that are closest 
to the hyperplane. These points influence the orientation and 
position of the hyperplane.
Margin: It is the distance between the hyperplane and the 
nearest data point of either class. SVM tries to maximize this 
margin to improve classification confidence.
Some Important Terms Related to SVM
Hard Margin: Assume data is perfectly separable by the hyperplane. 
All points must lie outside the margin.
Soft Margin: Allows some misclassification or margin violations for 
non-linearly separable data.
Kernel Function: It transforms data into a higher dimensional space 
to make it linearly separable.
Types of Kernels:- Linear Kernel: Suitable for linearly separable data.- Polynomial Kernel: For curved boundaries.- Radial Basis Function (RBF) Kernel: Captures complex relationships.
Support Vector Machine
Soft Margin Classification
outliers
The objective is to find a good 
balance between keeping the 
street as large as possible and 
limiting the margin violations.
To avoid these issues it is 
preferable to use a more 
flexible model.
outliers
Linear SVM Example
• Suppose we are given the 
following data points
{(3,1), (3,-1), (6,1), (6,-1), (1,0), 
(0,1), (0,-1), (-1,0)}-2     -1       0      1       2      3      4      5      6      7
3
2
1
0-1-2-3
SVM Example
• By inspection, it should be 
obvious that there are 
THREE support vectors-2     -1       0      1       2      3      4      5      6      7
3
2
1
0-1-2-3
s1=(1,0)
s2=(3,1)
s3=(3,-1)
SVM Example
• Each vector is augmented with a 1 as a bias input
{s1=(1,0), s2=(3,1), s3=(3,-1)}
So,
s1=(1,0), then s1~=(1,0,1)
Similarly, 
s2=(3,1), then s2~=(3,1,1)
s3=(3,-1), then s3~=(3,-1,1)
SVM Example
α1s1~ . s1~ + α2s2~ . s1~ + α3s3~ . s1~ = -1
α1s1~ . s2~ + α2s2~ . s2~ + α3s3~ . s2~ = +1 
α1s1~ . s3~ + α2s2~ . s3~ + α3s3~ . s3~ = +1 
Put the value of s1~ , s2~ and s3~
α1(1,0,1) . (1,0,1) + α2(3,1,1) . (1,0,1) + α3(3,-1,1) . (1,0,1)  = -1
α1(1,0,1) . (3,1,1) + α2(3,1,1) . (3,1,1) + α3(3,-1,1) . (3,1,1)  = +1
α1(1,0,1) . (3,-1,1) + α2(3,1,1) . (3,-1,1) + α3(3,-1,1) . (3,-1,1)  = +1
SVM Example
α1(1,0,1) . (1,0,1) + α2(3,1,1) . (1,0,1) + α3(3,-1,1) . (1,0,1)  = -1
α1(1,0,1) . (3,1,1) + α2(3,1,1) . (3,1,1) + α3(3,-1,1) . (3,1,1)  = +1
α1(1,0,1) . (3,-1,1) + α2(3,1,1) . (3,-1,1) + α3(3,-1,1) . (3,-1,1)  = +1
Perform Dot Product
α1(1.1+0.0+1.1) + α2(3.1+1.0+1.1) + α3(3.1 + -1.0 + 1.1)  = -1
α1(1.3+0.1+1.1) + α2(3.3+1.1+1.1) + α3(3.1 + -1.1 +1.1)  = +1
α1(1.3+0.-1+1.1) + α2(3.3+1.-1+1.1) + α3(3.3+-1.-1+1.1)  = +1
SVM Example
α1(1.1+0.0+1.1) + α2(3.1+1.0+1.1) + α3(3.1 + -1.0 + 1.1)  = -1
α1(1.3+0.1+1.1) + α2(3.3+1.1+1.1) + α3(3.1 + -1.1 +1.1)  = +1
α1(1.3+0.-1+1.1) + α2(3.3+1.-1+1.1) + α3(3.3+-1.-1+1.1)  = +1
Simplify
α1(1 + 0 + 1) + α2(3 + 0 + 1) + α3(3 + 0 + 1)  = -1 ;    2α1 + 4α2 + 4α3 = -1 
α1(3 + 0 + 1) + α2(9 + 1 + 1) + α3(3 - 1 + 1)  = +1;    4α1 + 11α2 + 9α3 = 1 
α1(3 + 0 + 1) + α2(9 – 1 + 1) + α3(9 + 1 + 1)  = +1;    4α1 + 9α2 + 11α3 = 1 
SVM Example
α1(1 + 0 + 1) + α2(3 + 0 + 1) + α3(3 + 0 + 1)  = -1 ;    2α1 + 4α2 + 4α3 = -1 
α1(3 + 0 + 1) + α2(9 + 1 + 1) + α3(3 - 1 + 1)  = +1;    4α1 + 11α2 + 9α3 = 1 
α1(3 + 0 + 1) + α2(9 – 1 + 1) + α3(9 + 1 + 1)  = +1;    4α1 + 9α2 + 11α3 = 1 
Simplify
4α1 + 9α2 + 11α3 =  1 
4α1 + 11α2 + 9α3 =  1 -       -         -         --2α2 + 2α3 =  0 
α2 = α3 
2(2α1 + 4α2 + 4α3 = -1) Multiply both side by 2 
4α1 + 9α2 + 11α3 =  1
4α1 + 16α3 = -2 
4α1 + 8α2 + 8α3 = -2   Replace α2 with α3 
4α1 + 8α3 + 8α3 = -2   
4α1 + 16α3 = -2   
4α1 + 9α3 + 11α3 =  1
4α1 + 20α3 =  1
4α1 + 20α3 =  1 -       -          -     -4α3 =  -3 
α3 =  3 / 4 = 0.75
4α1 + 20α3 =  1 Put α3 =3/4
4α1 + 20 x 3 / 4 =  1 
4α1 + 5 x 3  =  1 
4α1 =  -14 ; α1 =  -14 /4 = -3.5
α1 =  -3.5 
α2 =  0.75
α3 =  0.75
SVM Example
ϖ = Σ αi si 
= -3.5 (1,0,1) + 0.75(3,1,1)  + 0.75 (3,-1,1)
= (-3.5, 0, -3.5) + (2.25, 0.75, 0.75) + (2.25, -0.75, 0.75)
= (-3.5 + 2.25 + 2.25, 0 + 0.75 - 0.75, -3.5 + 0.75 + 0.75)
= (1, 0, -2)
Finally, Hyperplane equation y = w x + b where w = (1, 0) & b = -2
3
SVM Example
2
1
0-2     -1       0      1       2      3      -1
4     -2-3
 5      
6      
7
Finally, Hyperplane equation y = w x + b where w = (1, 0) & b = -2
Non-Linear SVM (Support Vector Machine)
• Linear SVM classifiers are efficient and work 
surprisingly well in many cases, many 
datasets are not even close to being linearly 
separable.
• One approach to handling nonlinear 
datasets is to add more features, such as 
polynomial features.
Non-Linear SVM (Support Vector Machine)
Polynomial Kernel (Non-Linear SVM )
Polynomial Kernel (Non-Linear SVM )
3rd-degree Polynomial Kernel
Non Linear SVM Example
• Suppose we are given the 
following positively data 
points
{(2,2), (2,-2), (-2,-2), (-2,2)}
• And the following negatively 
labeled data points,
{(1,1), (1,-1), (-1,-1), (-1,1)}
Non Linear SVM Example
• Convert data from one feature space to another.
A1(x1 , x2)=
(4 - x2 + |x1 - x2|)
(4 - x1 + |x1 - x2|)
(x1 , x2)
If 
�
�1
2 + 𝑥2
2  > 2
Otherwise
Non Linear SVM Example
• Positive Examples
s1=(2,2), s2=(2,-2), s3=(-2,-2) , s4=(-2,2)
Take s1 First check the condition If  S12 + S22 > 2
s1=(2,2), s2=(10,6), s3=(6,6) , s4=(6,10)
• Negative Examples
s1=(1,1), s2=(1,-1), s3=(-1,-1) , s4=(-1,1)
s1=(1,1), s2=(1,-1), s3=(-1,-1) , s4=(-1,1)
Non Linear SVM Example
• …………… Student Task 
Non Linear SVM Example
• ….
ϖ = Σ αi si 
= -7 (1,1,1) + 4(2,2,1)
= (-7,-7,-7) + (8,8,4)
= (-7 + 8 , -7 + 8, -7 + 4)
= (1, 1, -3)
Finally, Hyperplane equation y = w x + b where w = (1, 1) & b = -3
Non Linear SVM Example
• ….-2     -1       0    1      2     3      4     5      6      7     8      9     10
10
8
6
4
2
0-2