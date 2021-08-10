# US Insurance Premiums Analysis
With US health insurance more complex than ever, digital transformations to make predictions based on input can deliver more clear results to predict potential candidacy. 

## Questions 
Will insurance applicants be a liability to our insurance company? In other words, would they be a good candidate for our insurance company or a risk? 

## The Process
We will predict insurance costs using a supervised machine learning model (linear regression) taking in variables related to the patient including age, sex, BMI, and so on. To figure out which variables to put into the model, we will run correlation analysis to determine which variables are most closely related to the insurance costs. We will do a test/train split on the dataset to train our model.

## Data Used
This dataset (https://www.kaggle.com/teertha/ushealthinsurancedataset) uses age, sex, BMI, number of children, smoker and region and has insurance costs for each patient. The data is clean and has 1338 rows of patient data.

## Assumptions: 
BMI Categories based off of the [National Heart, Lung, and Blood Institute](https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm)

##### BMI Categories:
- Underweight = <18.5
- Normal weight = 18.5–24.9
- Overweight = 25–29.9
- Obesity = BMI of 30 or greater

## Our Process:
- exploratory data analysis in pandas using Jupyter notebook
- testing and training the data
- create linear regression model
- train the model

## Who Did What

- Presentation: everybody
- GitHub (square role): Delaney
- ML Model (triangle role): Eric
- Database (circle role): Matthew
- X role: Bogeun

## Technologies Used

### Data Cleaning and Analysis

Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python using a Jupyter notebook and Pandas.

### Database Storage

We intend to use a Postgres SQL database to store the data.

### Machine Learning

SciKitLearn is the ML library we'll be using to create a linear regression model to predict insurance charges. Our training and testing setup is splitting the dataset 80/20 with 80% for training and 20% for testing.

### Dashboard


## Deliverables Segment 1
### Machine Learning

- The dataset is put into the Pandas notebook under insurance_cleaned.csv
- The inputs we decided on were that the charges were going to be the output. The inputs are going to be age, gender, BMI, number of kids, and whether or not the client is a smoker.

## Segment 2 Machine Learning Description
- We have decided to use a linear regression model to try and predict the average cost that a customer will cost us based on the factors that we set. As stated before we will use the 80/20 model to test and split our data for the predictive model. 
### Decision Process
- The decision to use this model was chosen because we wanted to see if the US insurance system would actually provide the correct coverage to the people that we have set into the catergory based on the criteria setforth by the NHLBI and then using real life examples from the dataset provided with other factors.
### Data Preprocessing
- We first started with a almost clean data set from Kaggle. Then we decided that one of the columns named Region wasn't going to be one that we wanted to focus on becasue we wanted to look just at the person themselves rather than the area they were located. This could create the a limitation within the data, but we can always add it back in and then train our model to include it.

### Later Questions
- Selected topic: _to predict which insurance premiums or costs people will have right_
- Reason they selected the topic
- Description of the source of data
- Questions they hope to answer with the data

We will use Tableau to create a dashboard, bringing in our dataset from the Postgres SQL database. We will also use Google Slides for a presentation.


We will use Tableau to create a dashboard, bringing in our dataset from the Postgres SQL database. We will also use Google Slides for a presentation.

