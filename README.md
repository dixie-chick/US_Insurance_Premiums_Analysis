# US Insurance Premiums Analysis
US health insurance has always been complex. Insurance companies have numerous factors to consider when deciding whether or not to accept a patient into their program. 

What if we use data to help them?

Thanks to advances in technology, we can easily create models to help make predictions. Why not use patient data to predict how much insurance costs they would accrue, delivering clear results to predict potential candidacies? 

Let's do it.

## Presentation: A general outline

### Questions 
Will insurance applicants be a liability to our insurance company? In other words, would they be a good candidate for our insurance company or a risk? 

### The Process
We will predict insurance costs using a supervised machine learning model (linear regression) taking in variables related to the patient including age, sex, BMI, and so on. To figure out which variables to put into the model, we will run correlation analysis to determine which variables are most closely related to the insurance costs. We will do a test/train split on the dataset to train our model.

This model can then be used to predict future patients' insurance costs, which can be used to determine if they would be a good fit for our insurance company.

### Data Used
This dataset (https://www.kaggle.com/teertha/ushealthinsurancedataset) uses age, sex, BMI, number of children, smoker status and region and has insurance costs for each patient. The data is clean and has 1338 rows of patient data.

### Data Exploration
Because our dataset was clean (no null values), cleaning was minimal with only one duplicate row removal. However, we still had to pre-process our data for model input.

Data Pre-Processing Steps:
- One-hot encode all categorical variables (sex, smoker status)
- Drop unnecessary variables determined from data analysis

### Data Analysis
Through correlation analysis, we found the variables that correlated greatest with insurance costs.

**Implications**:
- Region has almost no correlation with insurance costs, thus we drop it from our model
- Though number of children and sex also have small correlations, we decide to keep both variables

## GitHub

### Communication Protocols
- Class Zoom meetings to discuss progress (Monday, Wednesday 7-9pm PT)
- Slack channel for quick messaging
- Other Zoom meetings as needed for discussions and group work

## Machine Learning Model

- The dataset is put into the Pandas notebook under insurance_cleaned.csv
- The inputs we decided on were that the charges were going to be the output. The inputs are going to be age, gender, BMI, number of kids, and whether or not the client is a smoker.
- Our training and testing setup uses scikit-learn's `train-test-split` method to split the data 75/25 (75% training, 25% test).
- Our model is a linear classifier, which we decided because our data was simple and the outputs we wanted to predict were continuous values.
  - Limitations: Simple to implement and understand
  - Benefits: Outliers can have huge effects, can only provide linear relationship between variables

## Technologies Used

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python using a Jupyter notebook and Pandas.

### Database Storage

We intend to use a Postgres SQL database to store the data.

### Machine Learning

SciKitLearn is the ML library we'll be using to create a linear regression model to predict insurance charges. Our training and testing setup is splitting the dataset 75/25 with 75% for training and 25% for testing using scikit-learn's `train-test-split` method.

### Dashboard

We will use Tableau to create a dashboard, bringing in our dataset from the Postgres SQL database. We will also use Google Slides for a presentation.

## Who Did What

### Segment 1
- Presentation: everybody
- GitHub (square role): Delaney
- ML Model (triangle role): Eric
- Database (circle role): Matthew
- X role: Bogeun

### Segment 2
- Presentation: Delaney/Bogeun
- GitHub: everybody
- ML Model: Eric
- Database: Matthew
- Dashboard: 

## Assumptions 
BMI Categories based off of the [National Heart, Lung, and Blood Institute](https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm)

##### BMI Categories:
- Underweight = <18.5
- Normal weight = 18.5–24.9
- Overweight = 25–29.9
- Obesity = BMI of 30 or greater
