CREATE DATABASE RestaurantDB;

USE RestaurantDB;

CREATE TABLE RestaurantFoodItems (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(8,2)
);

INSERT INTO RestaurantFoodItems VALUES
(1, 'Chicken Biryani', 'Chicken', 220.00),
(2, 'Mutton Biryani', 'Mutton', 320.00),
(3, 'Fish Curry', 'Fish', 250.00),
(4, 'Prawns Fry', 'Prawns', 300.00),
(5, 'Chicken Fry', 'Chicken', 180.00),
(6, 'Mutton Curry', 'Mutton', 350.00),
(7, 'Fish Fry', 'Fish', 270.00),
(8, 'Prawns Biryani', 'Prawns', 330.00);

select * 
from RestaurantFoodItems;

SELECT * from RestaurantFoodItems
WHERE Category = 'Chicken';

select * 
from RestaurantFoodItems WHERE price < 200;

select * 
from RestaurantFoodItems WHERE price <= 300;

select * 
from RestaurantFoodItems WHERE price <>200;

select * 
from RestaurantFoodItems WHERE Category = "chicken" and price <200;

SELECT * 
from RestaurantFoodItems WHERE Category = 'Chicken' OR Category = 'Fish';

SELECT * from RestaurantFoodItems
WHERE Price BETWEEN 200 AND 300;

-- SELECT * from RestaurantFoodItems
-- WHERE Category = 'Chicken' AND Category = 'Fish';