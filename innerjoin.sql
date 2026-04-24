use lakshmi;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount INT,
    order_date DATE
);

INSERT INTO customers VALUES
(1, 'Amit', 'Delhi'),
(2, 'Suresh', 'Hyderabad'),
(3, 'Anita', 'Mumbai'),
(4, 'Rahul', 'Delhi'),
(5, 'Sneha', 'Hyderabad'),
(6, 'Arjun', 'Chennai'),
(7, 'Kiran', 'Mumbai'),
(8, 'Ajay', 'Delhi');

INSERT INTO orders VALUES
(101, 1, 'Laptop', 55000, '2024-01-10'),
(102, 2, 'Mobile', 20000, '2024-01-12'),
(103, 3, 'Smart Watch', 12000, '2024-01-15'),
(104, 4, 'Speaker', 8000, '2024-01-18'),
(105, 5, 'Smart TV', 45000, '2024-01-20'),
(106, 1, 'MacBook Pro', 120000, '2024-01-22'),
(107, 6, 'Laptop', 60000, '2024-01-25'),
(108, 7, 'Mobile', 18000, '2024-01-28'),
(109, 8, 'iPhone Pro', 90000, '2024-02-01'),
(110, 3, 'Speaker', 15000, '2024-02-03'),
(111, 2, 'Smart Phone', 25000, '2024-02-05'),
(112, 5, 'Laptop Pro', 70000, '2024-02-07');


select *
from customers;

select *
from orders;


-- Get customer names and product names for all orders
select c.name,o.product_name
from customers c
inner join orders o
on c.customer_id=o.customer_id;

SELECT c.name, o.product_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Find customers who placed orders with amount greater than 20000
SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where o.amount>20000;

-- Get customer name, city, and product name where city is 'Hyderabad'
SELECT c.name,c.city,o.product_name
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where city="hyderabad";


-- Find all orders where product name starts with 'S' and amount is greater than 10000
SELECT c.name,o.product_name,o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where c.name like 's%' and o.amount>10000;

-- Get customers who ordered products between amount 10000 and 50000
SELECT c.name,o.product_name,o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where o.amount between 10000 and 50000;

-- Find customer names who ordered either 'Laptop' or 'Mobile'
SELECT c.name,o.product_name
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where o.product_name in ('Laptop' , 'Mobile');

-- Get top 5 highest order amounts with customer names
SELECT c.name,o.product_name,o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
order by o.amount desc 
limit 5;

-- Skip first 5 highest orders and get next 5 records with customer name and amount
SELECT c.name,o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
order by o.amount desc 
limit 5 offset 5 ;

-- Find customers whose name starts with 'A' and who placed orders greater than 30000
SELECT c.name,o.amount
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where c.name like 'a%' and o.amount> 30000;


-- Get customer name, city, product name where:
-- city is 'Delhi' OR 'Mumbai'
-- amount > 20000
-- product name contains 'Pro'
-- show only 3 records after skipping first 2 records
SELECT c.name,c.city,o.amount,o.product_name
FROM customers c
INNER JOIN orders o
on c.customer_id= o.customer_id
where city in ( 'Delhi' ,'Mumbai')
and o.amount>20000
and o.product_name like '%pro%'
limit 3 offset 2;



