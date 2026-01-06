--drop the table if it already exist
DROP TABLE IF EXISTS employees;


--create the employees table
Create TABLE employees(
employees_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2) CHECK(salary>0),
joining_date DATE NOT NULL,
age INT CHECK(age>=18)
);


--insert the values in table employees
INSERT INTO employees(first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'FINANCE', 70000.00, '2020-03-10', 35),
('Anjli', 'Verma', 'IT', 65000.00, '2019-11-28', 28),
('Suresh', 'Reddy', 'OPERATIONS', 50000.00, '2023-01-10', 26);

SELECT * FROM employees;


--1) retrive first name and department from the table

SELECT first_name, department FROM employees;



--2) update the salary of all employees in IT department by increasing it by 10%
UPDATE employees
SET salary= salary + (salary*0.1)
WHERE department='IT';

--3) delete all employees older then age 34
DELETE FROM employees
WHERE age>34;

--4) add a new column email to the employees table
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


--5) rename department column to dept_name
ALTER TABLE employees
RENAME COLUMN department to dept_name;

--6) retrive name of employees who joined after 1 january 2021
SELECT first_name, last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';

--7) change data type of 'salary' column to integer
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

--8) list all the employees with there age and salary in decending order of salary
SELECT first_name, age, salary FROM employees 
ORDER BY salary DESC;

--9) inser a new employe with details raj, singh, markering, 60000.00, 2023-09-15, 30
INSERT INTO 

--10) update age of employee +1 to every employee
UPDATE employees
SET age = age + 1;





