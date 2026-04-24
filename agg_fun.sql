use sys;
CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(30),
price INT,
stock INT,
rating DECIMAL(2,1)
);
INSERT INTO products VALUES
(1,'Laptop','Electronics',75000,15,4.5),
(2,'Mobile','Electronics',25000,40,4.3),
(3,'Headphones','Electronics',3000,60,4.1),
(4,'Shoes','Fashion',4000,50,4.2),
(5,'T-Shirt','Fashion',1200,80,3.9),
(6,'Watch','Fashion',6000,25,4.4),
(7,'Refrigerator','Appliances',45000,10,4.6),
(8,'Microwave','Appliances',8000,18,4.0),
(9,'Air Conditioner','Appliances',55000,8,4.5),
(10,'Backpack','Accessories',2000,35,4.2),
(11,'Keyboard','Electronics',1500,70,4.1),
(12,'Mouse','Electronics',800,90,4.0);

-- Find the total number of products in the table.
select count(product_id)
from products;

-- Find the total stock available for all products.
select sum(stock)
from products;

-- Find the average price of all products.
select avg(price)
from products;

-- Find the highest price among all products.
select max(price)
from products;

-- Find the lowest price among all products.
select min(price)
from products;

-- Find the total number of products in Electronics category.
select count(*)
from products
where category='electronics';

SELECT COUNT(*)
FROM products
WHERE category = 'Electronics';

-- Find the total stock of products in Fashion category.
SELECT sum(stock)
FROM products
WHERE category = 'Fashion';

-- Find the average price of products in Appliances category.
SELECT avg(price)
FROM products
WHERE category = 'Appliances';

-- Find the highest rated product rating.
select max(rating)
from products;

-- Find the lowest rating among all products.
select min(rating)
from products;

-- Find the number of products with price greater than 10000
select count(*)
from products
where price >10000;

-- Find the total stock of products whose price is greater than 5000.
select sum(stock)
from products
where price >5000;

-- Find the average rating of Electronics products.
select avg(rating)
from products
where category="electronics";

-- Find the total price of products in Accessories category.
select sum(price)
from products
where category="accessories";

-- Find the highest price among Fashion products.
select max(price)
from products
where category="fashion";

-- Find the lowest price among Electronics products.
select min(price)
from products
where category="Electronics";

-- Find the number of products with rating greater than 4.3.
select count(*)
from products
where rating>4.3;

-- Find the total stock of products with price less than 5000.
select sum(stock)
from products
where price<5000;

-- Find the average price of products with rating greater than 4.2.
select avg(price)
from products
where rating >4.2;

-- Find the number of products with stock greater than 50.
select count(*)
from products
where stock>50;
