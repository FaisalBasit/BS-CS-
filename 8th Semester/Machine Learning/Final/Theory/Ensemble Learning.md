# Ensemble Learning

## Introduction

- **Ensemble** means group or collection
- A collection of machine learning models.
- New model is generated from collection of ML models

## Voting

## Bagging

Bagging is a method of ensemble modeling, which is primarily used to solve supervised machine learning problems. It is generally completed in two steps as follows:

1. **Bootstrapping**: It is a random sampling method that is used to derive samples from the data using the replacement procedure. In this method, first, random data samples are fed to the primary model, and then a base learning algorithm is run on the samples to complete the learning process.

2. **Aggregation**: This is a step that involves the process of combining the output of all base models and, based on their output, predicting an aggregate result with greater accuracy and reduced variance.

### Bagging Diagram

## Bias, Variance, Overfitting, Underfitting

- **Bias**: Training errors
- **Variance**: Testing errors
- **Overfitting**:
  - Training errors: Low
  - Testing errors: High
- **Underfitting**:
  - Training errors: High
  - Testing errors: Low

## Boosting

## Stacking in Ensemble Learning

- **Heterogeneous weak learners**: e.g., Regression, SVM, KNN, etc.
- **Meta Model**
- Stacking enables us to train multiple models to solve similar problems, and based on their combined output, it builds a new model with improved performance.

## Stacking Diagram