USE company_db;
-- Write a SQL query to create a table named students with columns id, name, age, and course.
create table coomands(
id int primary key,
name varchar(50),
age int ,
course varchar(20)
);
select *
from commands;

-- Write a query to add a new column email to the students table.
alter table coomands
add email varchar(50);

-- Write a SQL query to delete the students table from the database.


-- Write a query to rename the table students to college_students.
alter table coomands
rename to commands;
-- Write a SQL query to modify the datatype of the column age in the students table.

-- Write a query to create a table employees with columns emp_id, emp_name, salary, and department.
create table employee(
emp_id int primary key,
emp_name varchar(50),
salary decimal(6,2),
department varchar(20)
);
select *
from employee;
-- Write a query to remove the column email from the students table.
alter table commands 
drop column email;
-- Write a SQL query to truncate all records from the students table.

-- Write a query to add a primary key to the id column in the students table.

-- Write a SQL query to create a table courses with columns course_id, course_name, and duration.
create table courses(
course_id int ,
course_name varchar(20),
duration decimal(3,1)
)
-- DML (Data Manipulation Language) – Questions

-- Write a SQL query to insert a new record into the students table.

-- Write a query to insert multiple records into the students table.

-- Write a SQL query to update the age of a student whose id is 101.

-- Write a query to update the course of all students to Data Science.

-- Write a SQL query to delete a record from the students table where id = 102.

-- Write a query to delete all records from the students table where age < 18.

-- Write a SQL query to update the email of a student whose name is Rahul.

-- Write a query to increase the salary of all employees by 10%.

-- Write a SQL query to delete all records from the employees table.

-- Write a query to update the department of an employee whose emp_id = 201.

-- DQL (Data Query Language) – Questions

-- Write a SQL query to display all records from the students table.

-- Write a query to display only name and course from the students table.

-- Write a SQL query to find students whose age is greater than 20.

-- Write a query to display students whose course is SQL.

-- Write a SQL query to display records where age is between 18 and 25.

-- Write a query to display students whose name starts with the letter A.

-- Write a SQL query to display students sorted by age in ascending order.

-- Write a query to display the top 5 records from the students table.

-- Write a SQL query to count the total number of students.

-- Write a query to display unique courses from the students table.