-- Assignment 3 Question 1 - DDL SQL commands 
-- This Assignment was created by Jorge Daniel Atuesta and Sofia Pereira Coutinho
-- September 14th 2022


-- Question 1 SQL Fundamentals - CREATE TABLE
-- Create tables and relate them with one another
GO
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS VEHICLE;
DROP TABLE IF EXISTS REPAIR;
GO

-- Created a table CUSTOMERS with 3 columns CustID, FirstName, LastName. Set CustID as Primary Key
GO
CREATE TABLE CUSTOMER(
    CustID INT NOT NULL PRIMARY KEY, -- Made sure there is no nule value and that its an interger
    FirstName VARCHAR(12) NOT NULL,
    LastName VARCHAR(14) NOT NULL,
);
GO

-- Created a table vehicle with 5 columns VIN, Make,Model,YearMake and CustID. Set VIN as Primary Key and set custID as FOREIGN KEY to Customer table
GO
CREATE TABLE VEHICLE (
    VIN VARCHAR(10) NOT NULL PRIMARY KEY,
    Make VARCHAR(15),
    Model VARCHAR(20),
    YearMake INT,
    CustID INT NOT NULL FOREIGN KEY REFERENCES CUSTOMER(CustID)
);
GO

-- Created a table Repair with 5 columns RepairID, start date and end date, finish date, custID and VIN. Set RepairID as Primary Key and set VIN as FOREIGN KEY to vehicle
GO
CREATE TABLE REPAIR(
    RepairID INT NOT NULL PRIMARY KEY,
    StartDate Date,
    FinishDate Date,
    CustID INT NOT NULL FOREIGN KEY REFERENCES CUSTOMER(CustID),
    VIN VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES VEHICLE(VIN)
);
GO

