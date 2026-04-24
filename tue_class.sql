CREATE DATABASE employees;
USE employees;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT CHECK(age >= 18),
    gender VARCHAR(10) CHECK(gender IN ('Male','Female')),
    department VARCHAR(50) NOT NULL,
    salary INT CHECK(salary > 20000),
    city VARCHAR(50) DEFAULT 'Hyderabad',
    experience INT CHECK(experience >= 0)
);
INSERT INTO Employees VALUES
(1,'Rahul',25,'Male','IT',45000,'Hyderabad',2),
(2,'Anjali',30,'Female','HR',52000,'Bangalore',5),
(3,'Kiran',28,'Male','Finance',48000,'Chennai',4),
(4,'Sneha',26,'Female','IT',60000,'Hyderabad',3),
(5,'Arjun',35,'Male','Admin',40000,'Mumbai',8),
(6,'Pooja',29,'Female','IT',70000,'Delhi',6),
(7,'Ravi',32,'Male','Finance',55000,'Hyderabad',7),
(8,'Divya',24,'Female','HR',35000,'Chennai',1),
(9,'Vikram',31,'Male','IT',62000,'Bangalore',5),
(10,'Neha',27,'Female','Finance',47000,'Mumbai',3),
(11,'Suresh',40,'Male','Admin',38000,'Delhi',12),
(12,'Lavanya',23,'Female','IT',42000,'Hyderabad',1),
(13,'Karthik',29,'Male','HR',50000,'Bangalore',4),
(14,'Meena',34,'Female','Finance',65000,'Chennai',8),
(15,'Ramesh',37,'Male','Admin',36000,'Hyderabad',10),
(16,'Priya',26,'Female','IT',48000,'Mumbai',3),
(17,'Harish',33,'Male','Finance',53000,'Delhi',6),
(18,'Swathi',22,'Female','HR',32000,'Hyderabad',1),
(19,'Manoj',31,'Male','IT',61000,'Bangalore',5),
(20,'Deepika',28,'Female','Finance',46000,'Chennai',3),
(21,'Sanjay',36,'Male','Admin',41000,'Mumbai',9),
(22,'Keerthi',24,'Female','IT',43000,'Hyderabad',2),
(23,'Ajay',30,'Male','HR',49000,'Delhi',4),
(24,'Bhavana',27,'Female','Finance',52000,'Bangalore',4),
(25,'Mahesh',38,'Male','Admin',37000,'Chennai',11),
(26,'Nisha',29,'Female','IT',68000,'Mumbai',6),
(27,'Prakash',35,'Male','Finance',56000,'Hyderabad',8),
(28,'Asha',23,'Female','HR',34000,'Bangalore',1),
(29,'Rohit',32,'Male','IT',64000,'Delhi',7),
(30,'Kavya',26,'Female','Finance',47000,'Chennai',3),
(31,'Sunil',39,'Male','Admin',39000,'Hyderabad',12),
(32,'Anitha',25,'Female','IT',45000,'Mumbai',2),
(33,'Varun',28,'Male','Finance',50000,'Bangalore',4),
(34,'Lakshmi',31,'Female','HR',36000,'Chennai',5),
(35,'Naveen',34,'Male','IT',62000,'Delhi',7),
(36,'Geetha',27,'Female','Finance',48000,'Hyderabad',3),
(37,'Kishore',36,'Male','Admin',42000,'Mumbai',10),
(38,'Sarika',24,'Female','IT',44000,'Bangalore',2),
(39,'Teja',29,'Male','Finance',51000,'Chennai',5),
(40,'Reshma',28,'Female','HR',37000,'Delhi',3),
(41,'Gopal',41,'Male','Admin',40000,'Hyderabad',13),
(42,'Ritika',26,'Female','IT',47000,'Mumbai',3),
(43,'Aravind',33,'Male','Finance',55000,'Bangalore',6),
(44,'Sowmya',25,'Female','HR',35000,'Chennai',2),
(45,'Venu',37,'Male','IT',63000,'Delhi',9),
(46,'Madhu',30,'Female','Finance',52000,'Hyderabad',5),
(47,'Tarun',34,'Male','Admin',38000,'Mumbai',8),
(48,'Pallavi',27,'Female','IT',46000,'Bangalore',4),
(49,'Nikhil',31,'Male','Finance',54000,'Chennai',6),
(50,'Shreya',24,'Female','HR',33000,'Delhi',1);

-- Display the details of employees who earn more than 60,000 salary.
select *
from employees 
where salary > 60000;

-- Show the employees who are younger than 28 years.
select *
from employees 
where age< 28;

-- Retrieve employees who work in the IT department.
select *
from employees 
where department ="it" ;

-- Display employees who have more than 5 years of experience.
select *
from employees 
where  experience>5;

-- Show employees whose salary is less than or equal to 40,000.
SELECT *
FROM employees
WHERE salary <=40000;

-- Retrieve the employees who are working in Hyderabad city.
SELECT *
FROM employees
WHERE city = "hyderabad";

-- Show employees who are older than 30 years and working in the Finance department.
SELECT *
FROM employees
WHERE age > 30 and department= "finance";

-- Display employees who are working either in HR department or Admin department.
SELECT *
FROM employees
WHERE department = 'hr' or department= "admin";

-- Retrieve employees who are not working in the IT department.
SELECT *
FROM employees
WHERE department != 'IT';

-- Show employees whose salary falls between 45,000 and 60,000.
SELECT *
FROM employees
WHERE salary between 45000 and 60000;

-- Display employees who live in Hyderabad or Bangalore cities.
SELECT *
FROM employees
WHERE city="hyderabad" or city="bangalore";

-- Retrieve employees whose name starts with the letter “R”.
SELECT *
FROM employees
WHERE emp_name like "r%";

-- Show employees whose experience is between 3 and 7 years.
SELECT *
FROM employees
WHERE experience between 3 and 7;

-- Display employees whose department is either IT or Finance.
SELECT *
FROM employees
WHERE department = 'IT' or department = 'finance';

-- Retrieve employees whose name ends with the letter “a”
SELECT *
FROM employees
WHERE emp_name like "%a";

-- Display employees who are older than 30 years and earning more than 50,000 salary.
SELECT *
FROM employees
WHERE age > 30 and salary > 50000;

-- Retrieve employees who work in the IT department and have at least 3 years of experience.
SELECT *
FROM employees
WHERE department = 'IT' and experience > 3;

-- Show employees who are working in Bangalore city and earning more than 55,000.
SELECT *
FROM employees
WHERE city="bangalore" and salary > 55000;

-- Display employees whose salary is between 40,000 and 60,000 and belong to the Finance department.
SELECT *
FROM employees
WHERE salary between 40000 and 60000 and department= "finance";

-- Retrieve employees who are younger than 30 years but have more than 2 years of experience.
SELECT *
FROM employees
WHERE age < 30 and experience >3;

-- Show employees who are working in Hyderabad city and belong to the IT department.
SELECT *
FROM employees
WHERE city="hyderabad" and department="it";

-- Display employees whose salary is greater than 50,000 and whose experience is greater than 5 years.
SELECT *
FROM employees
WHERE salary >50000 and experience >5;

-- Retrieve employees whose names start with the letter “A” and work in the HR department.
SELECT *
FROM employees
WHERE emp_name like "a%" and department ="hr";

-- Show employees who are older than 35 years or have more than 10 years of experience.
SELECT *
FROM employees
WHERE age > 35 or experience >10;

-- Display employees who work in Admin department and earn less than 40,000 salary.
SELECT *
FROM employees
WHERE department ="admin" and salary < 40000;

-- Retrieve employees whose salary falls between 45,000 and 70,000 and who live in Chennai city.
SELECT *
FROM employees
WHERE salary between 45000 and 70000 and city= "chennai";

-- Show employees who are working in either Hyderabad or Delhi and whose experience is greater than 4 years.
SELECT *
FROM employees
where (city="hyderabad" or city="delhi") and experience >4;

-- Display employees whose name starts with the letter “K” and who belong to the Finance department.
SELECT *
FROM employees
WHERE emp_name like "k%" and department="finance";

-- Retrieve employees who are between 25 and 35 years old and working in the IT department.
SELECT *
FROM employees
WHERE age between 25 and 35 and department= "it";



-- intermediate questions

-- 1. Display menu items where price is between 200 and 350, the spice level is High, and the category is either 'Non Veg Starter' or 'Non Veg Biryani'.
SELECT *
FROM menu
WHERE price BETWEEN 200 AND 350
AND spice_level = 'High'
AND category IN ('Non Veg Starter','Non Veg Biryani');

--  Show items where price > 200 AND rating > 4.5, but the category should not be Veg Soup.
SELECT *
FROM menu
WHERE price > 200
AND rating > 4.5
AND category NOT IN ('Veg Soup');

-- 3. Display menu items where the item name contains 'Chicken', price < 300, and spice level is Medium or High.
SELECT *
FROM menu
WHERE item_name LIKE '%Chicken%'
AND price < 300
AND spice_level IN ('Medium','High');

-- 4. Find all veg items where calories between 200 and 700 and price <= 250.
SELECT *
FROM menu
WHERE is_veg = TRUE
AND calories BETWEEN 200 AND 700
AND price <= 250;

-- 5. Display foods where rating >= 4.6, preparation_time < 25, and category is either Veg Starter or Non Veg Starter.
SELECT *
FROM menu
WHERE rating >= 4.6
AND preparation_time < 25
AND category IN ('Veg Starter','Non Veg Starter');

-- 6. Show foods where price > 250 OR calories > 800, but spice level should not be Low.
SELECT *
FROM menu
WHERE (price > 250 OR calories > 800)
AND spice_level != 'Low';

-- 7. Display menu items where item_name starts with 'C', rating > 4.5, and category is Non Veg Starter or Non Veg Biryani.
SELECT *
FROM menu
WHERE item_name LIKE 'C%'
AND rating > 4.5
AND category IN ('Non Veg Starter','Non Veg Biryani');
