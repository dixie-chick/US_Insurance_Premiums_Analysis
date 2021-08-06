-- Create table of initial data
-- DROP TABLE insurance_raw;
CREATE TABLE insurance_raw (
	age INT NOT NULL,
	sex VARCHAR NOT NULL,
    bmi FLOAT NOT NULL,
    children VARCHAR NOT NULL,
	smoker VARCHAR NOT NULL,
	region VARCHAR NOT NULL,
    charges FLOAT(2) NOT NULL
);

-- Create cleaned table of insurance data
-- DROP TABLE insurance_cleaned;
CREATE TABLE insurance_cleaned (
	age INT NOT NULL,
    bmi FLOAT NOT NULL,
    children VARCHAR NOT NULL,
    charges FLOAT(2) NOT NULL,
	smoker_no INT NOT NULL,
	smoker_yes INT NOT NULL,
    sex_female INT NOT NULL,
    sex_male INT NOT NULL
);

SELECT * FROM insurance_raw;
SELECT * FROM insurance_cleaned;

-- Add table that will be altered so as to leave original cleaned table intact
CREATE TABLE insurance_clean_alter (
	age INT NOT NULL,
    bmi FLOAT NOT NULL,
    children VARCHAR NOT NULL,
    charges FLOAT(2) NOT NULL,
	smoker_no INT NOT NULL,
	smoker_yes INT NOT NULL,
    sex_female INT NOT NULL,
    sex_male INT NOT NULL
);

-- Add id column to table
ALTER TABLE insurance_clean_alter ADD id SERIAL;
ALTER TABLE insurance_clean_alter ADD PRIMARY KEY (id);

SELECT * FROM insurance_clean_alter;

-- DROP TABLE insurance_customers;
-- Create a table from the cleaned table without charges column
SELECT id,
age,
bmi,
children,
smoker_no,
smoker_yes,
sex_female,
sex_male
INTO insurance_customers
FROM insurance_clean_alter;

-- DROP TABLE insurance_charges;
-- Create a table from the cleaned table for the charges column
SELECT id,
charges
INTO insurance_charges
FROM insurance_clean_alter;

SELECT * FROM insurance_customers;
SELECT * FROM insurance_charges;

-- DROP TABLE joined_tables;
-- Join two tables
SELECT cus.*, chg.charges
INTO joined_tables
FROM insurance_customers as cus
JOIN insurance_charges as chg
ON (cus.id = chg.id)
ORDER BY id ASC;

SELECT * FROM joined_tables;