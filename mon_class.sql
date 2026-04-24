create database foods;
use foods;
CREATE TABLE menu (

item_id INT PRIMARY KEY AUTO_INCREMENT,

item_name VARCHAR(60) NOT NULL UNIQUE,

category VARCHAR(30) NOT NULL
CHECK (category IN (
'Veg Soup',
'Non Veg Soup',
'Veg Starter',
'Non Veg Starter',
'Veg Biryani',
'Non Veg Biryani'
)),
price DECIMAL(6,2) NOT NULL CHECK (price > 0),
is_veg BOOLEAN NOT NULL,
spice_level VARCHAR(10) NOT NULL
CHECK (spice_level IN ('Low','Medium','High')),
calories INT CHECK (calories BETWEEN 100 AND 1500),
preparation_time INT NOT NULL CHECK (preparation_time BETWEEN 5 AND 60),
rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5),
available BOOLEAN DEFAULT TRUE
);

select *
from menu;

INSERT INTO menu
(item_name,category,price,is_veg,spice_level,calories,preparation_time,rating)
VALUES
('Tomato Soup','Veg Soup',120,TRUE,'Low',150,10,4.3),
('Sweet Corn Soup','Veg Soup',130,TRUE,'Low',180,10,4.4),
('Hot and Sour Veg Soup','Veg Soup',140,TRUE,'Medium',200,12,4.5),
('Mushroom Soup','Veg Soup',150,TRUE,'Medium',220,12,4.4),
('Veg Manchow Soup','Veg Soup',140,TRUE,'Medium',210,12,4.5),
('Chicken Soup','Non Veg Soup',160,FALSE,'Low',230,12,4.5),
('Chicken Manchow Soup','Non Veg Soup',180,FALSE,'Medium',260,14,4.6),
('Chicken Hot and Sour Soup','Non Veg Soup',170,FALSE,'Medium',250,14,4.5),
('Mutton Soup','Non Veg Soup',200,FALSE,'Medium',300,16,4.6),
('Fish Soup','Non Veg Soup',190,FALSE,'Medium',280,15,4.5),
('Gobi Manchurian','Veg Starter',180,TRUE,'Medium',450,15,4.5),
('Paneer 65','Veg Starter',200,TRUE,'High',500,18,4.6),
('Baby Corn Fry','Veg Starter',190,TRUE,'Medium',420,15,4.4),
('Mushroom Fry','Veg Starter',210,TRUE,'Medium',430,16,4.5),
('Punugulu','Veg Starter',120,TRUE,'Medium',300,10,4.3),
('Garelu','Veg Starter',130,TRUE,'Medium',320,10,4.4),
('Chicken 65','Non Veg Starter',240,FALSE,'High',550,18,4.7),
('Apollo Fish','Non Veg Starter',280,FALSE,'Medium',520,20,4.6),
('Chicken Majestic','Non Veg Starter',260,FALSE,'High',580,18,4.7),
('Chilli Chicken','Non Veg Starter',250,FALSE,'High',560,17,4.6),
('Veg Biryani','Veg Biryani',220,TRUE,'Medium',650,20,4.5),
('Paneer Biryani','Veg Biryani',240,TRUE,'Medium',700,22,4.6),
('Mushroom Biryani','Veg Biryani',230,TRUE,'Medium',680,20,4.5),
('Kaju Biryani','Veg Biryani',260,TRUE,'Medium',720,22,4.6),
('Chicken Biryani','Non Veg Biryani',280,FALSE,'High',900,25,4.8),
('Chicken Dum Biryani','Non Veg Biryani',300,FALSE,'High',950,28,4.8),
('Mutton Biryani','Non Veg Biryani',350,FALSE,'High',1000,30,4.9),
('Natukodi Biryani','Non Veg Biryani',330,FALSE,'High',950,28,4.8),
('Prawn Biryani','Non Veg Biryani',340,FALSE,'High',920,26,4.8),
('Fish Biryani','Non Veg Biryani',320,FALSE,'High',880,25,4.7);

-- 1. Display menu items where price > 250.
select *
from menu
where price>250;

-- 2. Show items where price < 150.
select *
from menu
where price <150;

-- 3. Display foods where rating >= 4.7.
select *
from menu
where rating >=4.7;

-- 4. Show items where calories <= 300.
select *
from menu
where calories <=300;

-- 5. Display foods where spice_level = 'High'.
select *
from menu
where spice_level ="high";

-- 6. Show items where spice_level != 'Low'.
select *
from menu
where spice_level != 'Low';

-- 7. Display foods where preparation_time > 20.
select *
from menu
where preparation_time > 20;

-- 8. Show items where price > 250 AND rating > 4.6.
select *
from menu
where  price > 250 AND rating > 4.6;

-- 9. Display veg foods where spice_level = 'Medium'.
SELECT *
FROM menu
WHERE is_veg = TRUE
AND spice_level = 'Medium';

-- 10. Show veg starters where calories < 400.
SELECT *
FROM menu
WHERE category = 'Veg Starter'
AND calories < 400;

-- 11. Show non veg starters where rating > 4.6.
SELECT *
FROM menu
WHERE category = 'Non Veg Starter'
AND rating > 4.6;

-- 12. Display foods where price < 200 OR rating > 4.7.
select* 
from menu
where price<200 or rating >4.7;

-- 13. Show items where spice_level = 'High' AND calories > 500.
select* 
from menu
where spice_level="High" AND calories > 500;

-- 14. Display veg biryanis where price > 230.
select* 
from menu
WHERE category LIKE 'Veg Biryani%' AND price > 230;

-- 15. Display foods where price BETWEEN 200 AND 300.
select* 
from menu
WHERE price BETWEEN 200 AND 300;

-- 17. Display foods where calories BETWEEN 400 AND 700.
select* 
from menu
WHERE calories BETWEEN 400 AND 700;

-- 18. Show items where preparation_time BETWEEN 10 AND 20.
select* 
from menu
WHERE preparation_time BETWEEN 10 AND 20;

-- 19. Display items where category IN ('Veg Soup','Non Veg Soup').
select* 
from menu
WHERE category IN ('Veg Soup','Non Veg Soup');

-- 20. Show items where category IN ('Veg Biryani','Non Veg Biryani').
select* 
from menu
WHERE category IN ('Veg Biryani','Non Veg Biryani');

-- 21. Display foods where spice_level IN ('Medium','High').
select* 
from menu
WHERE spice_level IN ('Medium','High');

-- 22. Show foods where category NOT IN ('Veg Soup','Non Veg Soup').
select* 
from menu
WHERE category NOT IN ('Veg Soup','Non Veg Soup');

-- 23. Display foods where spice_level NOT IN ('Low').
select* 
from menu
WHERE spice_level NOT IN ('Low');

-- 24. Display items where item_name LIKE 'C%'.
select* 
from menu
WHERE item_name LIKE 'C%';

-- 25. Show items where item_name LIKE 'M%'.
select* 
from menu
WHERE item_name LIKE 'M%';

-- 26. Display foods where item_name LIKE '%Chicken%'.
select* 
from menu
WHERE item_name LIKE '%Chicken%';

-- 27. Show foods where item_name LIKE '%Soup'.
select* 
from menu
WHERE item_name LIKE '%Soup';

-- 28. Show non veg biryanis where rating > 4.7.
select* 
from menu
WHERE category like "non veg biryani" and rating > 4.7;

-- 29. Display veg foods where price < 200 AND rating > 4.3.
select* 
from menu
WHERE is_veg=True and price < 200 AND rating > 4.3;

-- 30. Show items where spice_level = 'High' AND calories > 600.
select* 
from menu
WHERE spice_level = 'High' AND calories > 600;

