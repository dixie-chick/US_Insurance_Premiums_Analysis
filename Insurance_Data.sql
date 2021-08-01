-- Create cleaned table of insurance data
CREATE TABLE insurance_data (
	age INT NOT NULL,
    bmi FLOAT NOT NULL,
    children VARCHAR NOT NULL,
    region VARCHAR NOT NULL,
    charges FLOAT(2) NOT NULL,
	smoker_yes INT NOT NULL,
    smoker_no INT NOT NULL,
    sex_female INT NOT NULL,
    sex_male INT NOT NULL
);

