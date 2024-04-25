## Creating Database for SportSphere GmbH

CREATE DATABASE SportSphere_GmbH;

---------------------------------------------------------------------------------

## Creating Table for Products and inserting values

CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName TEXT (255),
    Category TEXT (50),
    Brand TEXT (100)
);

INSERT INTO products (ProductID, ProductName, Category, Brand) VALUES
(1, 'Nike Dri-FIT Basketball Jersey', 'Apparel', 'Nike'),
(2, 'Adidas Basketball Shorts', 'Apparel', 'Adidas'),
(3, 'Puma Soccer Jersey', 'Apparel', 'Puma'),
(4, 'New Balance Soccer Shorts', 'Apparel', 'New Balance'),
(5, 'Under Armour Football Jersey', 'Apparel', 'Under Armour'),
(6, 'Nike Football Cleats', 'Footwear', 'Nike'),
(7, 'Adidas Running Shoes', 'Footwear', 'Adidas'),
(8, 'Puma Tennis Shoes', 'Footwear', 'Puma'),
(9, 'New Balance Golf Shoes', 'Footwear', 'New Balance'),
(10, 'Under Armour Training Shoes', 'Footwear', 'Under Armour'),
(11, 'Nike Everyday Crew Socks', 'Accessories', 'Nike'),
(12, 'Adidas Performance Backpack', 'Accessories', 'Adidas'),
(13, 'Puma Gym Towel', 'Accessories', 'Puma'),
(14, 'New Balance Water Bottle', 'Accessories', 'New Balance'),
(15, 'Under Armour Headband', 'Accessories', 'Under Armour'),
(16, 'Nike Aerobounce Running Shoes', 'Footwear', 'Nike'),
(17, 'Adidas Predator Cleats', 'Footwear', 'Adidas'),
(18, 'Puma Speed Basketball', 'Balls', 'Puma'),
(19, 'New Balance Signature Soccer Ball', 'Balls', 'New Balance'),
(20, 'Under Armour Official Match Football', 'Balls', 'Under Armour'),
(21, 'Nike Signature Basketball', 'Balls', 'Nike'),
(22, 'Adidas Performance Basketball Hoop', 'Equipment', 'Adidas'),
(23, 'Puma Soccer Goal', 'Equipment', 'Puma'),
(24, 'New Balance Tennis Racket', 'Equipment', 'New Balance'),
(25, 'Under Armour Golf Clubs', 'Equipment', 'Under Armour'),
(26, 'Nike Yoga Mat', 'Equipment', 'Nike'),
(27, 'Adidas Yoga Blocks', 'Equipment', 'Adidas'),
(28, 'Puma Yoga Strap', 'Equipment', 'Puma'),
(29, 'New Balance Yoga Pants', 'Apparel', 'New Balance'),
(30, 'Under Armour Yoga Top', 'Apparel', 'Under Armour'),
(31, 'Nike Cycling Helmet', 'Equipment', 'Nike'),
(32, 'Adidas Cycling Jersey', 'Apparel', 'Adidas'),
(33, 'Puma Cycling Shorts', 'Apparel', 'Puma'),
(34, 'New Balance Cycling Shoes', 'Footwear', 'New Balance'),
(35, 'Under Armour Cycling Gloves', 'Accessories', 'Under Armour'),
(36, 'Nike Swimming Goggles', 'Accessories', 'Nike'),
(37, 'Adidas Swim Cap', 'Accessories', 'Adidas'),
(38, 'Puma Swimwear', 'Apparel', 'Puma'),
(39, 'New Balance Swimming Fins', 'Accessories', 'New Balance'),
(40, 'Under Armour Swimming Ear Plugs', 'Accessories', 'Under Armour'),
(41, 'Nike Hiking Boots', 'Footwear', 'Nike'),
(42, 'Adidas Hiking Backpack', 'Equipment', 'Adidas'),
(43, 'Puma Hiking Poles', 'Equipment', 'Puma'),
(44, 'New Balance Hiking Pants', 'Apparel', 'New Balance'),
(45, 'Under Armour Hiking Jacket', 'Apparel', 'Under Armour'),
(46, 'Nike Climbing Harness', 'Equipment', 'Nike'),
(47, 'Adidas Climbing Shoes', 'Footwear', 'Adidas'),
(48, 'Puma Climbing Rope', 'Equipment', 'Puma'),
(49, 'New Balance Climbing Helmet', 'Equipment', 'New Balance'),
(50, 'Under Armour Climbing Chalk', 'Equipment', 'Under Armour'),
(51, 'Nike Snowboard', 'Equipment', 'Nike'),
(52, 'Adidas Snowboard Boots', 'Footwear', 'Adidas'),
(53, 'Puma Snowboard Bindings', 'Equipment', 'Puma'),
(54, 'New Balance Snowboard Jacket', 'Apparel', 'New Balance'),
(55, 'Under Armour Snowboard Pants', 'Apparel', 'Under Armour'),
(56, 'Nike Skateboard', 'Equipment', 'Nike'),
(57, 'Adidas Skateboard Deck', 'Equipment', 'Adidas'),
(58, 'Puma Skateboard Trucks', 'Equipment', 'Puma'),
(59, 'New Balance Skateboard Wheels', 'Equipment', 'New Balance'),
(60, 'Under Armour Skateboard Helmet', 'Equipment', 'Under Armour'),
(61, 'Nike Surfboard', 'Equipment', 'Nike'),
(62, 'Adidas Wetsuit', 'Apparel', 'Adidas'),
(63, 'Puma Surfboard Leash', 'Equipment', 'Puma'),
(64, 'New Balance Surfboard Wax', 'Equipment', 'New Balance'),
(65, 'Under Armour Rash Guard', 'Apparel', 'Under Armour'),
(66, 'Nike Badminton Racket', 'Equipment', 'Nike'),
(67, 'Adidas Shuttlecocks', 'Accessories', 'Adidas'),
(68, 'Puma Badminton Shoes', 'Footwear', 'Puma'),
(69, 'New Balance Badminton Apparel', 'Apparel', 'New Balance'),
(70, 'Under Armour Badminton Bag', 'Equipment', 'Under Armour'),
(71, 'Nike Table Tennis Table', 'Equipment', 'Nike'),
(72, 'Adidas Table Tennis Racket', 'Equipment', 'Adidas'),
(73, 'Puma Table Tennis Balls', 'Balls', 'Puma'),
(74, 'New Balance Table Tennis Shoes', 'Footwear', 'New Balance'),
(75, 'Under Armour Table Tennis Apparel', 'Apparel', 'Under Armour'),
(76, 'Nike Basketball', 'Equipment', 'Nike'),
(77, 'Adidas Basketball', 'Equipment', 'Adidas');

---------------------------------------------------------------------------------

## Checking for Duplicates in ProductName

SELECT ProductName, COUNT(*)
FROM products
GROUP BY ProductName
HAVING COUNT(*) > 1;

---------------------------------------------------------------------------------

## Identifying Total Number of Brands and Categories

SELECT COUNT(DISTINCT Brand) AS TotalBrands
FROM products;

SELECT COUNT(DISTINCT Category) AS TotalCategories
FROM products;

---------------------------------------------------------------------------------

## Viewing and exporting the products table

SELECT * FROM products;

---------------------------------------------------------------------------------

## Joining order_details and orders tables
## The two tables are imported into MySQL

CREATE VIEW orders_joined AS
SELECT order_details.*, orders.customerID, orders.employeeID, orders.orderDate, 
       orders.requiredDate, orders.shippedDate, orders.shipperID, orders.freight
FROM order_details
LEFT JOIN orders ON order_details.orderID = orders.orderID;

---------------------------------------------------------------------------------

## Viewing and exporting the new joined table

SELECT * FROM orders_joined;