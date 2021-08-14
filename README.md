# US Insurance Premiums Analysis
US health insurance has always been complex. Insurance companies have numerous factors to consider when deciding whether or not to accept a patient into their program. 

What if we use data to help them?

Thanks to advances in technology, we can easily create models to help make predictions. Why not use patient data to predict how much insurance costs they would accrue, delivering clear results to predict potential candidacies? 

Let's do it.

## Presentation: A general outline
Check out the [Googles Slides presentation](https://docs.google.com/presentation/d/1LGDj-HcUbqJSba_dyNUMiBDP7OJCvqH_g9Cnsi8YvF0/edit?usp=sharing), the [Tableau dashboard](https://public.tableau.com/app/profile/bogeun.choi/viz/USInsurancePremiums/InsuranceDataAnalysis), and [interactive website](https://dixie-chick.github.io/US_Insurance_Premiums_Analysis/) where you can predict your charges.

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

## Machine Learning Model
- The dataset is put into the Pandas notebook under insurance_cleaned.csv
- The inputs we decided on were that the charges were going to be the output. The inputs are going to be age, gender, BMI, number of kids, and whether or not the client is a smoker.

We decided to use a linear regression model to try and predict the average cost that a customer will cost us based on the factors that we set. 
- Limitations: Simple to implement and understand
- Benefits: Outliers can have huge effects, can only provide linear relationship between variables

We used scikit-learn's `train-test-split` to split the data 80/20 (80% training, 20% test) for the predictive model. Once we predict the cost, we label the customer as either a good candidate or high risk depending on whether they are higher or lower than a set cutoff chosen based on our analysis ($20,000).

### Decision Process
The decision to use this model was chosen because we wanted to see if the US insurance system would actually provide the correct coverage to the people that we have set into the category based on the criteria set forth by the NHLBI and then using real life examples from the dataset provided with other factors.

### Data Preprocessing
We first started with an almost clean data set from Kaggle. Then we decided that one of the columns named Region wasn't going to be one that we wanted to focus on because of the low correlation with charges and because we wanted to look just at the person themselves rather than the area they were located. This could create the a limitation within the data, but we can always add it back in and then train our model to include it.

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
- Database: Matthew/Delaney
- Dashboard: Bogeun

### Segment 3
- Presentation: 
- GitHub: 
- ML Model: 
- Dashboard: 

## Assumptions 
BMI Categories based off of the [National Heart, Lung, and Blood Institute](https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm)

##### BMI Categories:
- Underweight = <18.5
- Normal weight = 18.5–24.9
- Overweight = 25–29.9
- Obesity = BMI of 30 or greater

