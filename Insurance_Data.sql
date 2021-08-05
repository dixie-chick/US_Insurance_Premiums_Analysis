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

-- Create second table
-- CREATE TABLE x_data (
--     age INT NOT NULL,
--     bmi FLOAT NOT NULL,
--     children VARCHAR NOT NULL,
--     charges FLOAT(2) NOT NULL,
--     smoker_yes INT NOT NULL,
--     smoker_no INT NOT NULL,
--     sex_female INT NOT NULL,
--     sex_male INT NOT NULL
-- )

-- Create mockup of join
-- SELECT insurance_data.age,
--      insurance_data.charges
-- FROM insurance_data
-- LEFT JOIN second_table
-- ON insurance_data.age = second_table.age;

-- Create a table from the cleaned table without charges column
SELECT age,
bmi,
children,
smoker_no,
smoker_yes,
sex_female,
sex_male
INTO insurance_customers
FROM insurance_cleaned;

-- Create a table from the cleaned table for the charges column
SELECT age,
charges
INTO insurance_charges
FROM insurance_cleaned;

-- Join two tables   -ERROR
SELECT icu.*,
ich.*
INTO joined_tables
FROM insurance_customers as icu
ON insurance_charges as ich;