 use lakshmi;
  CREATE TABLE Employs (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);
INSERT INTO Employs VALUES
(1, 'Vamsi', 'HR', 50000, NULL),
(2, 'Ravi', 'HR', 40000, 1),
(3, 'Suresh', 'HR', 42000, 1),
(4, 'Anjali', 'Finance', 60000, NULL),
(5, 'Kiran', 'Finance', 45000, 4),
(6, 'Meena', 'Finance', 47000, 4),
(7, 'Raj', 'IT', 70000, NULL),
(8, 'Teja', 'IT', 50000, 7),
(9, 'Akhil', 'IT', 52000, 7),
(10, 'Divya', 'IT', 48000, 7),
(11, 'Sneha', 'Marketing', 55000, NULL),
(12, 'Arjun', 'Marketing', 40000, 11),
(13, 'Pooja', 'Marketing', 42000, 11),
(14, 'Nikhil', 'Sales', 65000, NULL),
(15, 'Ramesh', 'Sales', 50000, 14),
(16, 'Kavya', 'Sales', 48000, 14),
(17, 'Deepak', 'IT', 51000, 7),
(18, 'Lakshmi', 'Finance', 46000, 4),
(19, 'Harsha', 'HR', 39000, 1),
(20, 'Varun', 'Marketing', 41000, 11);

-- 1. Show each employee along with their manager name
SELECT 
    e.name AS employee_name,
    m.name AS manager_name
FROM Employs e
LEFT JOIN Employs m
ON e.manager_id = m.emp_id;

-- 2. List all employees who do not have a manager
SELECT 
    name
FROM Employs
WHERE manager_id IS NULL;

-- 3. Show managers along with their department
SELECT DISTINCT
    m.name AS manager_name,
    m.department
FROM Employs e
JOIN Employs m
ON e.manager_id = m.emp_id;

-- 4. Show employee names, department, and their manager’s name
SELECT 
    e.name AS employee_name,
    e.department,
    m.name AS manager_name
FROM Employs e
LEFT JOIN Employs m
ON e.manager_id = m.emp_id;

-- 5. Display employee salary along with their manager’s salary
SELECT 
    e.name AS employee_name,
    e.salary AS employee_salary,
    m.name AS manager_name,
    m.salary AS manager_salary
FROM Employs e
LEFT JOIN Employs m
ON e.manager_id = m.emp_id;

-- 1. Find employees who earn more than their manager
SELECT 
    e.name AS employee_name,
    e.salary AS employee_salary,
    m.name AS manager_name,
    m.salary AS manager_salary
FROM Employs e
JOIN Employs m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

-- 2. Show employees whose manager works in a different department
SELECT 
    e.name AS employee_name,
    e.department AS employee_department,
    m.name AS manager_name,
    m.department AS manager_department
FROM Employs e
JOIN Employs m
ON e.manager_id = m.emp_id
WHERE e.department <> m.department;
