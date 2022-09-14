-- This Assignment was created by Jorge Daniel Atuesta and Sofia Pereira Coutinho
-- September 14th 2022

-- Question 1 SQL Fundamentals - CREATE TABLE
-- Create tables and relate them with one another

CREATE TABLE Customers(
    CustID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(12) NOT NULL,
    LastName VARCHAR(14) NOT NULL,
    RepairID INT NOT NULL
);


CREATE TABLE Repair(
    CustID INT NOT NULL FOREIGN KEY REFERENCES Customers(CustID),
    VIN VARCHAR(10) PRIMARY KEY,
    Make VARCHAR(15),
    Model VARCHAR(20),
    YearMade SMALLINT,
    StartDate date,
    FinishDate date
);

-- Insert two data points into table Customers
INSERT INTO Customers
VALUES (001, 'Jorge', 'Atuesta',1),(002, 'Sofia','Countihno',2);

-- Insert two data points into table Repair
INSERT INTO Repair
VALUES (001,'2f3z123','Mac','MacBook Air',2022,'2022-09-13','2022-09-14'),(002,'2Z45673','Samsung','Yoga',2022,'2022-08-14','2022-09-20');



-- Question 2 SQL Fundamentals - SELECT ... FROM
-- 2.1 BikeStores: List customer_id, first_name, email in customer table
-- select column names 
SELECT customer_id, first_name, email
--from the table sales.customers
FROM sales.customers;

-- 2.2 BikeStores: List all the information in the  Production.brands table without listing all the columns names in the SELECT clause.
-- select all 
SELECT *
-- from the production.brands table 
FROM production.brands;

-- 2.3 BikeStores: Count how many customers there are.
-- start with select function then call the count function on the column with unique values give it an alias and finish with from clause 
SELECT COUNT(customer_id) AS NumberOfCustomers FROM sales.customers;

-- 2.4 BikeStores: Count how many employees there are (staff)
-- start with select function then call the count function on the column with unique values give it an alias and finish with from clause 
SELECT COUNT(staff_id) AS NumberOfEmployees FROM sales.staffs;

-- 2.5 BikeStores: Provide all of the information in the store table
-- select all (*) from the table sales.stores
SELECT * 
FROM sales.stores;

-- Question 3 SQL Fundamentals - SELECT ... FROM ... WHERE ...

-- 3.1 BikeStores:  List stores based in California.
-- Select clause to start (*) to select all content of table
SELECT * 
-- indicates the table to pull data points from
FROM sales.stores
-- Selects only stores in the state CA which is short for California 
WHERE state = 'CA';

-- 3.2 BikeStores:  Count the total number of customers in NY.
-- Start with SELECT call the Count function use unique column in table create alias with AS select the table it is coming from and use WHERE to only select customers from state = NY  
SELECT COUNT(customer_id) AS CustomersInNY FROM sales.customers WHERE state = 'NY';

-- 3.3 BikeStores:  Provide a list of  products to include product_id, product_name, list_price  from highest price to lowest price
-- Start with selecting only the columns you need: product_id, product_name, list_price
SELECT product_id, product_name, list_price
-- From the table production.brands
FROM production.products
-- call the order by function on the list_price column to arrange from most to least expensive
ORDER BY list_price DESC;

-- 3.4 BikeStores:  List manager_id , staff_id, first and last name from sales.staff table ranked on manager id
-- Two options to solve this! One is not using rank () function and the other one is using the rank function
-- Option 1 
-- Select only the columns listed manager_id, staff_id, first_name and last_name 
SELECT manager_id, staff_id, first_name, last_name
-- from the table sales.staffs
FROM sales.staffs
-- order by manager_id in asceding order 
ORDER BY manager_id ASC;

-- Option two - USING RANK() 
-- Start with Select clause
SELECT
    -- indent and use rank() over(orderby the manager ID) and create alias ManagerRanking
    RANK() OVER(ORDER BY manager_id ASC) AS ManagerRanking, 
    -- State the columns you want to be pulled for the query
    manager_id,
    staff_id, 
    first_name, 
    last_name
--Select the table where the data is going to get pulled from
FROM sales.staffs;

-- 3.5 BikeStores: Bonus 2 pts- Add one extra query that you think that may be interesting and valuable
-- We thought it would be useful to know how much product we have in stock per store and the name of the product including other details
-- We started by merging the tables with a join to capture the main information on our stock per store and creating a view from it.

-- STEP 1: ONLY EXECUTE THIS CODE IF YOU ALREADY HAVE A VIEW NAMED SupplyInStockPerStore!!!!
-- Create a drop statement in case the view was already created in the past 
GO -- Using this to let SQL know what to run first start and end point
DROP VIEW IF EXISTS SupplyInStockPerStore;
GO -- Using this to let SQL know what to run first start and end point
-- STEP 2
-- We created a view to have easy access to the information for furthur analysis
GO -- Using this to let SQL know what to run first start and end point
CREATE VIEW SupplyInStockPerStore AS
-- Create the select statment to caputre the columns form each table that we wanted to merge
-- Using SELECT we wanted to join that would help us solve our question of how many bikes do we have in stoc per store (store, name of product, brand name, model year list price and quantity
SELECT production.stocks.store_id, production.products.product_name, production.brands.brand_name,production.products.model_year, production.products.list_price, production.stocks.quantity
-- Selected our main table with the from clause
FROM production.stocks
-- called the join function to join main table with table two 
JOIN production.products
-- Specified where exactly to join making sure both tables have the same column
ON production.stocks.product_id = production.products.product_id
-- called join again to join the third table
JOIN production.brands
-- Specified where exactly to join making sure both tables have the same column
ON production.brands.brand_id = production.products.brand_id;
GO-- Using this to let SQL know what to run first start and end point

-- STEP 3: Checking if the view was created and the values inside the view
SELECT * 
FROM SupplyInStockPerStore;

-- STEP 4: Identifying which products per store have the most quantity in stock
-- This query quickly helps us identify which product each store has the most quantity of and of which they are out of.
SELECT * 
FROM SupplyInStockPerStore
ORDER BY store_id, quantity DESC;

-- STEP 5: Getting indivual store metrics using where clause
-- store 1
SELECT * 
FROM SupplyInStockPerStore
WHERE store_id = '1'
ORDER BY store_id, quantity DESC;
-- store 2
SELECT * 
FROM SupplyInStockPerStore
WHERE store_id = '2'
ORDER BY store_id, quantity DESC;
-- store 3
SELECT * 
FROM SupplyInStockPerStore
WHERE store_id = '3'
ORDER BY store_id, quantity DESC;

-- STEP 6 We can see from the available inventory per store what is the product with the highest list price and check avalability
SELECT * 
FROM SupplyInStockPerStore
WHERE quantity > 0 -- To indicate only products that are in stock
ORDER BY store_id, list_price DESC;
/* This can help store managers understand current stock, future sales if they have a lot of stock or new stock coming in and many other business ideas*/
