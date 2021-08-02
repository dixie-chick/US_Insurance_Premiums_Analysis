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

-- Create second table
-- CREATE TABLE x_data (
--     age INT NOT NULL,

-- )

-- Create mockup of join
-- SELECT insurance_data.age,
--      insurance_data.charges
-- FROM insurance_data
-- LEFT JOIN second_table
-- ON insurance_data.age = second_table.age;