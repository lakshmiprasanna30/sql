use lakshmi;
CREATE TABLE orders1 (
   order_id INT PRIMARY KEY,
   customer_name VARCHAR(50),
   city VARCHAR(50),
   amount INT,
   order_status VARCHAR(20)
);
INSERT INTO orders1 VALUES
(1, 'Amit', 'Mumbai', 5000, 'Delivered'),
(2, 'Neha', 'Delhi', 7000, 'Pending'),
(3, 'Rahul', 'Hyderabad', 3000, 'Cancelled'),
(4, 'Sneha', 'Mumbai', 8000, 'Delivered'),
(5, 'Kiran', 'Chennai', 4500, 'Pending'),
(6, 'Vikas', 'Delhi', 6000, 'Delivered'),
(7, 'Pooja', 'Hyderabad', 7500, 'Delivered'),
(8, 'Arjun', 'Mumbai', 2000, 'Cancelled'),
(9, 'Divya', 'Chennai', 9000, 'Delivered'),
(10, 'Ravi', 'Delhi', 8500, 'Pending'),
(11, 'Meena', 'Hyderabad', 4000, 'Delivered'),
(12, 'Suresh', 'Mumbai', 9500, 'Delivered'),
(13, 'Anil', 'Chennai', 3000, 'Cancelled'),
(14, 'Kavya', 'Delhi', 7200, 'Delivered'),
(15, 'Ramesh', 'Hyderabad', 6800, 'Pending'),
(16, 'Priya', 'Mumbai', 7700, 'Delivered'),
(17, 'Manoj', 'Chennai', 5200, 'Pending'),
(18, 'Swathi', 'Delhi', 6100, 'Delivered'),
(19, 'Nikhil', 'Hyderabad', 8300, 'Delivered'),
(20, 'Deepika', 'Mumbai', 4200, 'Pending');

-- 1. Orders with amount > average order amount
SELECT *
FROM orders1
WHERE amount > (SELECT AVG(amount) FROM orders1);

-- 2. Order(s) with maximum amount
SELECT *
FROM orders1
WHERE amount = (SELECT MAX(amount) FROM orders1);

-- 3. Orders with amount < minimum amount in Delhi
SELECT *
FROM orders1
WHERE amount < (
    SELECT MIN(amount)
    FROM orders1
    WHERE city = 'Delhi'
);

-- 4. Orders with amount = amount of 'Amit'
SELECT *
FROM orders1
WHERE amount = (
    SELECT amount
    FROM orders1
    WHERE customer_name = 'Amit'
);

-- 5. Orders with amount > average amount of Mumbai
SELECT *
FROM orders
WHERE amount > (
    SELECT AVG(amount)
    FROM orders
    WHERE city = 'Mumbai'
);

-- 1. Orders where amount matches ANY amount from Mumbai
SELECT *
FROM orders1
WHERE amount IN (
    SELECT amount
    FROM orders1
    WHERE city = 'Mumbai'
);

-- 2. Orders where amount > ALL amounts from Chennai
SELECT *
FROM orders1
WHERE amount > ALL (
    SELECT amount
    FROM orders1
    WHERE city = 'Chennai'
);

-- 3. Customers who placed orders in cities where amount > 8000 exists
SELECT DISTINCT customer_name
FROM orders1
WHERE city IN (
    SELECT city
    FROM orders1
    WHERE amount > 8000
);

-- 4. Orders where amount < ANY amount from Delhi
SELECT *
FROM orders1
WHERE amount < ANY (
    SELECT amount
    FROM orders1
    WHERE city = 'Delhi'
);

-- 5. Orders from cities where ANY order is cancelled
SELECT *
FROM orders1
WHERE city IN (
    SELECT city
    FROM orders1
    WHERE order_status = 'Cancelled'
);

-- 1. Second highest order amount
SELECT MAX(amount) AS second_highest
FROM orders1
WHERE amount < (SELECT MAX(amount) FROM orders1);

-- 2. City with highest average order amount
SELECT city
FROM orders1
GROUP BY city
ORDER BY AVG(amount) DESC
LIMIT 1;

-- 3. Customers whose amount > their city average
SELECT *
FROM orders1 o
WHERE amount > (
    SELECT AVG(amount)
    FROM orders1
    WHERE city = o.city
);

-- 4. Orders from cities having more than 3 orders
SELECT *
FROM orders1
WHERE city IN (
    SELECT city
    FROM orders1
    GROUP BY city
    HAVING COUNT(*) > 3
);