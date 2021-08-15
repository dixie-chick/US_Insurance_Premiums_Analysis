# import dependencies
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
import pickle

# read in the cleaned file
insurance_df = pd.read_csv('insurance_cleaned.csv')

# create X and y features
X = insurance_df.drop(columns="charges")
y = insurance_df["charges"]

# split data into training and testing
# X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1)

# Create Linear Regression Model
regressor = LinearRegression()

# fit/train data
regressor.fit(X,y)

# Saving model to disk
pickle.dump(regressor, open('model.pkl','wb'))

# Loading model to compare the results
# model = pickle.load(open('model.pkl','rb'))
# print(model.predict([[2, 9, 6]]))
