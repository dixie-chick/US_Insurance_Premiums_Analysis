# import dependencies
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import pickle


# read in the cleaned file
insurance_df = pd.read_csv('insurance_cleaned.csv')
insurance_df.head()

# create X and y features
X = insurance_df.drop(columns = "charges")
y = insurance_df["charges"]

#split data into training and testing
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1)
X_train.shape

# Create Linear Regression Model
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()

# fit/train data
regressor.fit(X_train,y_train)

# predict
y_pred = regressor.predict(X_test)
# print(y_pred.shape)

# plot to check?
#plt.scatter(y_test,y_pred)

# Saving model to disk
pickle.dump(regressor, open('model.pkl','wb'))

# Loading model to compare the results
model = pickle.load(open('model.pkl','rb'))
print(model.predict([[2, 9, 6]]))
