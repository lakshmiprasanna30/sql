use lakshmi;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);
INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales'),
(105, 'Marketing');

INSERT INTO employees VALUES
(1, 'Amit', 101),
(2, 'Sneha', 102),
(3, 'Rahul', NULL),
(4, 'Anita', 103),
(5, 'Kiran', 101),
(6, 'Arjun', NULL),
(7, 'Priya', 104),
(8, 'Ajay', 102);
-- Write a query to display all employees and their department names.

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

--  Write a query to display all employees along with department names, and show "No Department" if an employee is not assigned to any department.
SELECT e.emp_name, ifnull(d.dept_name,"no department") as dept_name
FROM employees e
left JOIN departments d
ON e.dept_id = d.dept_id;

--  Write a query to find employees who do not belong to any department.
SELECT e.emp_name
FROM employees e
where dept_id is null;

--  Write a query to display all departments and the number of employees in each department.
SELECT d.dept_name,count(e.emp_id) as total_emps
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Write a query to display all employees and only their department name if it is 'IT', otherwise show NULL.
SELECT e.emp_name,ifnull(d.dept_name, null)as dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
and dept_name="it";

--  Write a query to display only employees who belong to the 'HR' department.
SELECT d.dept_name,e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
where dept_name="hr";

SELECT e.emp_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'HR';

--  Write a query to display employee name and department name, but only include departments where dept_id = 101 using LEFT JOIN condition.
select  e.emp_name,d.dept_name
FROM employees e
left join departments d
ON e.dept_id = d.dept_id and d.dept_id = 101;

--  Write a query to display all departments that do not have any employees.
select d.dept_name
FROM departments d
left join employees e
ON e.dept_id = d.dept_id 
where e.emp_id is null;

--  Write a query to display employee name and department name, sorted by department name.
select e.emp_name,d.dept_name
FROM employees e
left join departments d
ON e.dept_id = d.dept_id
ORDER BY d.dept_name;

-- Write a query to display:
-- employee name
-- department name
-- a new column status
-- "Assigned" if employee has a department
-- "Not Assigned" if no department
	select e.emp_name,d.dept_name,if(d.dept_id is null, "not assigned","assigned") as status
	FROM employees e
	left join departments d
	ON e.dept_id = d.dept_id;

SELECT e.emp_name,
d.dept_name,
IF(d.dept_id IS NULL,'Not Assigned','Assigned') AS status
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;