CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100),
    is_active BOOLEAN
);
INSERT INTO employees 
(emp_id, name, department, salary, age, city, joining_date, email, is_active)
VALUES
(1, 'Ravi Kumar', 'IT', 50000, 25, 'Hyderabad', '2022-06-15', 'ravi@gmail.com', TRUE),
(2, 'Anjali Sharma', 'HR', 40000, 28, 'Bangalore', '2021-03-10', 'anjali@gmail.com', TRUE),
(3, 'Rahul Verma', 'Finance', 55000, 30, 'Delhi', '2020-11-05', 'rahul@gmail.com', FALSE),
(4, 'Sneha Reddy', 'IT', 60000, 26, 'Hyderabad', '2023-01-20', 'sneha@gmail.com', TRUE),
(5, 'Arjun Mehta', 'Marketing', 45000, 27, 'Mumbai', '2022-09-18', 'arjun@gmail.com', TRUE);

-- Select all columns from the employees table
select* 
from employees;

-- Select only name and salary columns
SELECT name, salary 
FROM employees;

-- Get all employees whose salary is greater than 50000
SELECT * 
FROM employees
WHERE salary > 50000;

--  Get all employees whose age is less than 30
SELECT * 
FROM employees
WHERE age < 30;

-- Get employees who live in 'Hyderabad'.
SELECT * 
FROM employees
WHERE city = 'Hyderabad';

-- Get employees where department is 'IT'.
SELECT * 
FROM employees
WHERE department = 'IT';

-- Get employees where salary is greater than 40000 AND department is 'IT'
SELECT * 
FROM employees
WHERE salary > 40000 AND department = 'IT';

-- Get employees where city is 'Hyderabad' OR city is 'Bangalore'
select *
from employees 
where city="hyderabad" or city="bangalore";

-- Get employees whose department is NOT 'HR' 
select *
from employees 
where department != "hr";

-- Get employees whose salary is less than or equal to 30000
select *
from employees 
where salary <=3000;

-- Get employees whose age is greater than or equal to 25
select *
from employees 
where age >=25;

-- Get employees whose salary is BETWEEN 30000 AND 60000
select *
from employees 
where salary between 30000 and 60000;

-- Get employees whose age is BETWEEN 22 AND 35
select *
from employees 
where age between 22 and 35;

-- Get employees where department IN ('IT','Sales','Marketing')
select *
from employees 
where department IN ('IT','Sales','Marketing');

-- Get employees where department NOT IN ('HR','Admin')
select *
from employees 
where department NOT IN ('HR','Admin');

-- Get employees whose name starts with 'A'
select *
from employees 
where name like "a%";

-- Get employees whose name ends with 'n'
select *
from employees 
where name like "%n";

-- Get employees whose name contains 'a'
select *
from employees 
where name like "%a%";

-- Get employees whose email is NULL
select *
from employees 
where email is null;

--  Get employees whose email is NOT NULL.
select *
from employees 
where email is not null;

-- Get employees where is_active is TRUE
select *
from employees 
where is_active =true;

-- Get employees where is_active is FALSE
select *
from employees 
where is_active =false;

-- Get employees where salary > 50000 AND city = 'Hyderabad'
select *
from employees 
where salary >50000 and city="hyderabad";

-- Get employees where salary < 40000 OR department = 'HR'
select *
from employees 
where salary < 40000 or department="hr";

-- Get employees where joining_date is after '2022-01-01'
SELECT *
FROM employees
WHERE joining_date > '2022-01-01';
-- Get employees where joining_date is before '2022-01-01'
SELECT *
FROM employees
WHERE joining_date < '2022-01-01';
-- . Get employees where city LIKE 'B%'	
select *
from employees
where  city like "b%";

-- Get employees where city LIKE '%a'
select *
from employees
where  city like "%a";

-- Get employees where name LIKE '%ar%'
select *
from employees
where  city like "%ar%";

-- Get employees where salary NOT BETWEEN 40000 AND 70000
select *
from employees
where salary not between 40000 and 70000;



