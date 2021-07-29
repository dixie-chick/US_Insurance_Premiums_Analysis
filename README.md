# US Insurance Premiums Analysis
With US health insurance more complex than ever, digital transformations to make predictions based on input can deliver more clear results to predict potential candidacy. 

## Questions 
Will insurance applicants be a liability to our insurance company? In other words, would they be a good candidate for our insurance company or a risk? 

## The Process
We will predict insurance costs using a supervised machine learning model (linear regression) taking in variables related to the patient including age, sex, BMI, and so on. To figure out which variables to put into the model, we will run correlation analysis to determine which variables are most closely related to the insurance costs. We will do a test/train split on the dataset to train our model.

## Data Used
This dataset (https://www.kaggle.com/teertha/ushealthinsurancedataset) uses age, sex, BMI, number of children, smoker and region and has insurance costs for each patient. The data is clean and has around 1338 rows of patient data.

## Assumptions: 
BMI Categories based off of the [National Heart, Lung, and Blood Institute](https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm)

##### BMI Categories:
- Underweight = <18.5
- Normal weight = 18.5–24.9
- Overweight = 25–29.9
- Obesity = BMI of 30 or greater

## Process:
- exploratory data analysis in pandas using Jupyter notebook
- testing and training the data
- create linear regression model
- train the model

https://www.kaggle.com/teertha/ushealthinsurancedataset

<<<<<<< HEAD
## Technologies Used
=======
>>>>>>> origin/main

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python using a Jupyter notebook and Pandas.

### Database Storage

We intend to use a Postgres SQL database to store the data.

### Machine Learning

SciKitLearn is the ML library we'll be using to create a linear regression model to predict insurance charges. Our training and testing setup is splitting the dataset 80/20 with 80% for training and 20% for testing.

### Dashboard

<<<<<<< HEAD
We will use Tableau to create a dashboard and Google Slides for a presentation, bringing in our dataset from the Postgres SQL database.
=======
>>>>>>> origin/main
