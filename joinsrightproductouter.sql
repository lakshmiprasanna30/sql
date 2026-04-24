use lakshmi;
-- Customers Table
CREATE TABLE cus (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Orders Table
CREATE TABLE ord (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert Customers
INSERT INTO cus (customer_id, name, city) VALUES
(1, 'Amit', 'Hyderabad'),
(2, 'Sneha', 'Bangalore'),
(3, 'Rahul', 'Chennai'),
(4, 'Priya', 'Delhi'),
(5, 'Kiran', 'Mumbai');

-- Insert Orders
INSERT INTO ord (order_id, customer_id, amount, order_date) VALUES
(101, 1, 500.00, '2024-04-01'),
(102, 2, 750.50, '2024-04-02'),
(103, 1, 300.00, '2024-04-03'),
(104, 3, 450.75, '2024-04-04'),
(105, 6, 600.00, '2024-04-05');

show tables;

-- right join
SELECT 
    c.customer_id,
    c.name,
    o.order_id,
    o.amount,
    o.order_date
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id;

-- cross join 
SELECT 
    c.name,
    o.order_id,
    o.amount
FROM customers c
CROSS JOIN orders o;


-- FULL OUTER JOIN 
SELECT 
    c.customer_id,
    c.name,
    o.order_id,
    o.amount
FROM cus c
LEFT JOIN ord o
ON c.customer_id = o.customer_id

UNION

SELECT 
    c.customer_id,
    c.name,
    o.order_id,
    o.amount
FROM cus c
RIGHT JOIN ord o
ON c.customer_id = o.customer_id;
