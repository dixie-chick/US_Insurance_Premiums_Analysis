# Taken from https://github.com/krishnaik06/Deployment-flask/blob/master/app.py
import numpy as np
import pandas as pd
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
model = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict',methods=['POST'])
def predict():
    '''
    For rendering results on HTML GUI
    '''
    age = int(request.form['age'])
    height = int(request.form['height'])
    weight = int(request.form['weight'])
    children = int(request.form['children'])
    smoker = request.form['smoker']
    sex = request.form['sex']

    smoker_yes = 0
    smoker_no = 0
    sex_female = 0
    sex_male = 0

    if sex == 'f':
        sex_female = 1
    else:
        sex_male = 1

    if smoker == 'yes':
        smoker_yes = 1
    else:
        smoker_no = 1

    bmi = (weight / height ** 2) * 703

    input_variables = pd.DataFrame([[age, bmi, children, smoker_no, smoker_yes, sex_female, sex_male]],
                                   columns=['age', 'bmi', 'children', 'smoker_no', 'smoker_yes', 'sex_female', 'sex_male'])
    reshaped_input = np.array(input_variables.iloc[0]).reshape(1, -1)

    prediction = model.predict(reshaped_input)[0]
    output = round(prediction, 2)

    #int_features = [int(x) for x in request.form.values()]
    #final_features = [np.array(int_features)]
    #prediction = model.predict(final_features)

    status = ''
    if output < 20000:
        status = 'You are a good candidate'
    else:
        status = 'You might be higher-risk'

    prediction_text = 'Predicted insurance charges: ${}'.format(output) + '\n {}'.format(status)

    return render_template('results.html', prediction_text=prediction_text)

# @app.route('/predict_api',methods=['POST'])
# def predict_api():
#     '''
#     For direct API calls trought request
#     '''
#     data = request.get_json(force=True)
#     prediction = model.predict([np.array(list(data.values()))])

#     output = prediction[0]
#     return jsonify(output)

if __name__ == "__main__":
    app.run(debug=True)