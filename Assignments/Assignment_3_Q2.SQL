-- Assignment 3 Question 1
-- This Assignment was created by Jorge Daniel Atuesta and Sofia Pereira Coutinho
-- September 14th 2022

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
