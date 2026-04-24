use company_db;
-- Create a table called employees with columns emp_id, name, age, department, salary.
create table employees_1(
emp_id int primary key,
name varchar(50),
age int ,
department varchar(50),
salary decimal(8,2)
);

-- Insert 5 employee records into the table.
INSERT INTO employees_1 (emp_id, name, age, department, salary) VALUES
(1, 'Ravi Kumar', 28, 'IT', 55000.00),
(2, 'Anita Sharma', 32, 'HR', 48000.00),
(3, 'Suresh Reddy', 35, 'Finance', 62000.00),
(4, 'Priya Singh', 26, 'Marketing', 45000.00),
(5, 'Arjun Patel', 30, 'IT', 58000.00);

SELECT *
 FROM company_employees;	

-- Add a new column called experience to the table.
alter table employees_1
add experience int ;

-- Rename column name to employee_name.
alter table employees_1
rename column name to employee_name;

-- Change datatype of salary column to BIGINT.
alter table employees_1
modify salary bigint;

-- Update experience of employee with emp_id = 3 to 6 years.
UPDATE company_employees
SET experience = 6
WHERE emp_id = 3;

-- Increase salary of employees in IT department by 5000.
update employees_1
set salary=salary+5000
where department="it";

SET SQL_SAFE_UPDATES = 0;

-- Change department of employee with emp_id = 5 to Sales.
UPDATE employees_1
SET department = 'Sales'
WHERE emp_id = 5;

-- Update age of employee Ravi to 26.
UPDATE employees_1
set age =26
where employee_name="ravi kumar";

-- Set experience to 1 where experience is NULL.
UPDATE employees_1
set experience=1
WHERE experience IS NULL;

-- Add a new column city to the table.
alter table company_employees
add city varchar(50);

-- Update city as Hyderabad for employees in IT department.
UPDATE company_employees
SET city = 'Hyderabad'
WHERE department = 'IT';

-- Increase salary by 10% for employees with experience > 5.
UPDATE company_employees
SET salary =salary *1.10
WHERE experience>5 ;

-- Rename table employees to company_employees.
alter table employees_1
rename company_employees;

-- Delete the column city from the table.
alter table company_employees
drop column  city;