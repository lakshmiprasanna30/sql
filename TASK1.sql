CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary int
);

show tables;
INSERT INTO Employees (EmpID, EmpName, Department, Salary) VALUES
(101, 'Lakshmi Prasanna', 'IT', 35000 ),
(102, 'Anusha', 'HR', 30000 ),
(103, 'Likki', 'IT', 40000),
(104, 'Gayathri', 'Sales', 32000),
(105, 'Hima sri', 'IT', 37000);

select *
from Employees;