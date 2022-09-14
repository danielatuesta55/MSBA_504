-- find customers that belong to NY
SELECT *
FROM sales.customers;

-- Select statement only NY
SELECT *
FROM sales.customers
WHERE state = 'NY';
-- SELECT CUSTPMERS ONLY NY AND BUFFALO
SELECT customer_id,last_name,state,zip_code,city
FROM sales.customers
WHERE state = 'NY' AND city= 'Buffalo';

-- SELECT CUSTOMERS ONLY NY OR CA 

SELECT city, email, phone, state
FROM sales.customers
WHERE state = 'NY' OR state = 'CA'

-- Understanding Set operators versus joins

-- UNION: Combine two or more results sets into a single set, without duplicates
-- UNION ALL: Combine two or more results sets into a singel set including all duplicates
-- INTERSECT: Combine two or more results sets into
-- EXCEPT: takes vlaues from left query that arent incluede in the right query 

-- intersection 
SELECT supplier_id FROM
suppliers WHERE supplier_id > 78 
INTERSECT
;

SELECT supplier_id FROM orders WHERE supplier_id
WHERE quantity <>0
;

-- UNION
SELECT LastName, Title, Salary
FROM Employees
WHERE Salary > 2000,000
UNION
;

SELECT LastName, Title, Salary
FROM Employees, Active Employees
WHERE Employee Government
;

-- UNION ALL it takes duplciate values
SELECT * 
FROM production.brands
WHERE brand_id Between 1 and 5
UNION ALL
SELECT * FROM
production.brands
WHERE brand_id Between 1 and 5
;
-- UNION it doesnt take duplicate values
SELECT * 
FROM production.brands
WHERE brand_id Between 1 and 5
UNION
; 

-- INNER JOIN
SELECT FirstName, LastName, ProjectID, ProjectNotes --Columns that are going to be merged 
FROM Employees -- Original "left" table
INNER JOIN Projects --type of join
ON Employee.EmployeeID = Projects.EmployeeID -- Where what tables it will happen
;  

-- INNER joins
SELECT FirstName, LastName, ProjectID, ProjectNotes
FROM Employees
INNER JOIN Projects
ON Employee.EmployeeID = Projects.EmployeeID;

-- WHERE CLAUSE
SELECT FirstName, LastName, ProjectID, ProjectNotes
FROM Employees, Projects
WHERE Employee.EmployeeID = Projects.EmployeeID;

-- joins are preset to left on SQL language

-- A unary relationship occurs when an entity is related to itself

SELECT customer_id, first_name
FROM Customer
WHERE customer_id IN (
    SELECT custome_id
    FROM Orders);

-- Best practice for subqueries
-- Indentation for sub queries in your query 


-- QUIZ
--DDL Statements 
-- 1. CreateDB
--2. Drop DB
-- DML Statements
-- 1. Logical operators
-- 2. In Exact Match
-- 3. Select FROM
--4. Select

-- Strategic
--1. Describing a database 
--2. Master Data

-- Other SQL
-- 1. Inser into
-- 2. Join
-- 3. Datatypes 


-- UPDATE COMMAND
/* permenatly change Salary from monthlu to annual */
Update employees
SET Salary = Salary * 12;

update employees
SET ContactName = "Lonzo Ball", city = "Chicago"
WHERE JerseyId = 2 ;

-- INSERT INTO Command
-- insert into adds a row of data while update set replaces existing data

-- ADD new product to database
INSERT INTO PRODUCTDB (UPC, SKU, Description, Brand)
VALUES (0003,23123,Wet, Swiffewr);




