-- Create table of initial data
-- DROP TABLE insurance_raw;
CREATE TABLE insurance_raw (
	age PRIMARY KEY INT NOT NULL,
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
	age PRIMARY KEY INT NOT NULL,
    bmi FLOAT NOT NULL,
    children VARCHAR NOT NULL,
    charges FLOAT(2) NOT NULL,
	smoker_no INT NOT NULL,
	smoker_yes INT NOT NULL,
    sex_female INT NOT NULL,
    sex_male INT NOT NULL
);

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