Progr-- ********************************************************
-- MODUEL 2 - MS SQL SERVER VERSION OF JCConsulting MS ACCESS DATABASE
-- sourcefilename= Solutions/Module02/JCConsulting.accdb
-- ********************************************************


-- --------------------------------------------------------
-- Table structure for table 'Categories'
-- --------------------------------------------------------
DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories (
  Category VARCHAR(15) NOT NULL, 
  PRIMARY KEY (Category)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'Categories'
-- --------------------------------------------------------
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO Categories (Category) VALUES ('Coding');
INSERT INTO Categories (Category) VALUES ('Database');
INSERT INTO Categories (Category) VALUES ('Meeting');
INSERT INTO Categories (Category) VALUES ('Planning');
INSERT INTO Categories (Category) VALUES ('Server');
INSERT INTO Categories (Category) VALUES ('Support');
INSERT INTO Categories (Category) VALUES ('Testing');
-- 7 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'ClientProjectsPriorTo2020'
-- --------------------------------------------------------
DROP TABLE IF EXISTS ClientProjectsPriorTo2020;
CREATE TABLE ClientProjectsPriorTo2020 (
  ClientName VARCHAR(35), 
  ProjectID INTEGER IDENTITY, 
  ProjectStartDate DATETIME, 
  INDEX PROECTID_IDX(ProjectID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'ClientProjectsPriorTo2020'
-- --------------------------------------------------------
SET IDENTITY_INSERT ClientProjectsPriorTo2020 ON;
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO ClientProjectsPriorTo2020 (ClientName, ProjectID, ProjectStartDate) VALUES ('Tri-Lakes Realtors', 1, '2019-02-06 00:00:00');
INSERT INTO ClientProjectsPriorTo2020 (ClientName, ProjectID, ProjectStartDate) VALUES ('Jobot Developers', 2, '2019-02-07 00:00:00');
INSERT INTO ClientProjectsPriorTo2020 (ClientName, ProjectID, ProjectStartDate) VALUES ('Midstates Auto Auction', 3, '2019-03-11 00:00:00');
INSERT INTO ClientProjectsPriorTo2020 (ClientName, ProjectID, ProjectStartDate) VALUES ('Project Lead The Way', 7, '2019-09-02 00:00:00');
SET IDENTITY_INSERT ClientProjectsPriorTo2020 OFF;
-- 4 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'Clients'
-- --------------------------------------------------------
DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients (
  ClientID INTEGER NOT NULL IDENTITY, 
  ClientName VARCHAR(35), 
  Street VARCHAR(25), 
  Zip VARCHAR(5), 
  Government TINYINT DEFAULT 0, 
  PRIMARY KEY (ClientID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'Clients'
-- --------------------------------------------------------
SET IDENTITY_INSERT CLIENTS ON;
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (1, 'Tri-Lakes Realtors', '135 E Jefferson St', '02447', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (2, 'Project Lead The Way', '762 Saratoga Blvd', '02446', 1);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (3, 'Midstates Auto Auction', '9787 S Campbell Ln', '01355', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (4, 'Bretz & Hanna Law Firm', '8101 N Olive Dr', '01431', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (5, 'Aspire Associates', '5673 South Ave', '01431', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (6, 'Bounteous', '9898 Ohio Ave', '02770', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (7, 'Netsmart Solutions', '4091 Brentwood Ln', '01354', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (8, 'Loren Group', '9565 Ridge Rd', '02466', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (9, 'Associated Grocers', '231 Tecumsa Rd', '02532', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (10, 'Jobot Developers', '1368 E 1000 St', '02330', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (11, 'Harper State Bank', '1865 Forrest Dr', '01571', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (12, 'MarketPoint Sales', '826 Hosta St', '01983', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (13, 'SecureCom Wireless', '5280 Industrial Dr', '01852', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (14, 'The HELPCard', '840 Boonville Ave', '02466', 1);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (15, 'Jillian Henry & Associates', '815 E California St', '02113', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (16, 'Pediatric Group', '4940 W Farm Rd', '02113', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (17, 'SkyFactor', '1736 Sunshine Dr', '02726', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (18, 'NuCamp', '2500 E Kearny St', '01431', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (19, 'Wu Electric', '5520 S Michigan', '02447', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (20, 'Juxly Engineering', '4238 Rumsfield Rd', '02148', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (21, 'Carta Training', '2445 N Airport Dr', '02446', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (22, 'Revature Motors', '901 W University', '02726', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (23, 'Talent Sensations', '4101 E Walnut St', '02447', 0);
INSERT INTO Clients (ClientID, ClientName, Street, Zip, Government) VALUES (24, 'Morales Group', '77 W Pershing St', '02446', 0);
SET IDENTITY_INSERT CLIENTS OFF;
-- 24 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'Employees'
-- --------------------------------------------------------
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
  EmployeeID VARCHAR(2) NOT NULL, 
  LastName VARCHAR(15), 
  FirstName VARCHAR(15), 
  HireDate DATETIME, 
  Title VARCHAR(255), 
  Salary DECIMAL(19,4), 
  PRIMARY KEY (EmployeeID), 
  INDEX EMPLOYEEID_IDX (EmployeeID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'Employees'
-- --------------------------------------------------------
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('19', 'Kohn', 'Ali', '2020-01-01 00:00:00', 'Project Manager', 5000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('22', 'Kaplan', 'Franco', '2020-02-01 00:00:00', 'Programmer', 5500);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('35', 'Prohm', 'Nada', '2020-02-29 00:00:00', 'Customer Support Specialist', 4000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('47', 'Alvarez', 'Benito', '2020-03-31 00:00:00', 'Front End Developer', 5200);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('51', 'Shields', 'Simone', '2020-04-30 00:00:00', 'Network Specialist', 7000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('52', 'Novak', 'Stefan', '2019-01-01 00:00:00', 'Project Manager', 8000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('53', 'Anad', 'Sergei', '2019-01-01 00:00:00', 'Front End Developer', 5300);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('54', 'Allen', 'Sasha', '2019-01-01 00:00:00', 'Programmer', 7000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('55', 'Winter', 'Wendy', '2020-12-31 00:00:00', 'Front End Developer', 4300);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('56', 'Reddy', 'Kamal', '2019-09-01 00:00:00', 'Programmer', 6200);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('57', 'Yang', 'Tam', '2021-04-30 00:00:00', 'Front End Developer', 5000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('58', 'Young', 'Solomon', '2019-01-01 00:00:00', 'Programmer', 5500);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('59', 'Santana', 'Carmen', '2019-01-01 00:00:00', 'Front End Developer', 4800);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('60', 'Lu', 'Chang', '2019-03-01 00:00:00', 'Database Developer', 7900);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('61', 'Smirnov', 'Tovah', '2019-10-01 00:00:00', 'Programmer', 6000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('62', 'Turner', 'Jake', '2021-03-31 00:00:00', 'Database Developer', 7800);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('63', 'Geller', 'Nathan', '2019-01-01 00:00:00', 'Project Manager', 8100);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('64', 'Lopez', 'Miguel', '2019-01-01 00:00:00', 'Programmer', 6200);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('65', 'Garcia', 'Hector', '2023-04-01 00:00:00', 'UI Designer', 7000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('66', 'Roth', 'Elena', '2020-10-31 00:00:00', 'Network Specialist', 7000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('67', 'Horvat', 'Nigel', '2024-04-30 00:00:00', 'UI Designer', 6300);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('68', 'Patel', 'Tatiana', '2019-04-01 00:00:00', 'Programmer', 6500);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('69', 'Jordan', 'Karl', '2020-11-30 00:00:00', 'Customer Support Specialist', 5000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('70', 'Perez', 'Monique', '2022-03-01 00:00:00', 'Quality Assurance Engineer', 6200);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('72', 'Nasser', 'Amir', '2020-02-01 00:00:00', 'Programmer', 5500);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('73', 'Safar', 'Jaleel', '2019-02-01 00:00:00', 'Customer Support Specialist', 4100);
INSERT INTO Employees (EmployeeID, LastName, FirstName, HireDate, Title, Salary) VALUES ('99', 'Juan', 'Ramala', '2024-05-31 00:00:00', 'Quality Assurance Engineer', 6550);
-- 27 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'InitialMeetings'
-- --------------------------------------------------------
DROP TABLE IF EXISTS InitialMeetings;
CREATE TABLE InitialMeetings (
  ClientName VARCHAR(35), 
  ProjectID INTEGER IDENTITY, 
  ProjectStartDate DATETIME, 
  TaskID VARCHAR(255), 
  INDEX PROECTID_IDX(ProjectID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'InitialMeetings'
-- --------------------------------------------------------
SET IDENTITY_INSERT InitialMeetings ON;
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Tri-Lakes Realtors', 1, '2019-02-06 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Jobot Developers', 2, '2019-02-07 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Midstates Auto Auction', 3, '2019-03-11 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Project Lead The Way', 7, '2019-09-02 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Midstates Auto Auction', 8, '2020-01-06 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Bounteous', 9, '2020-02-10 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Tri-Lakes Realtors', 31, '2020-03-01 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Bretz & Hanna Law Firm', 4, '2020-04-10 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Jobot Developers', 13, '2020-11-30 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Jillian Henry & Associates', 14, '2020-12-09 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('The HELPCard', 15, '2020-12-21 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Harper State Bank', 16, '2021-01-04 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('MarketPoint Sales', 17, '2021-02-15 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Bounteous', 18, '2021-04-14 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('SecureCom Wireless', 19, '2021-06-04 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Pediatric Group', 21, '2021-08-31 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Juxly Engineering', 22, '2021-09-30 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('NuCamp', 23, '2021-11-12 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('SkyFactor', 24, '2022-01-14 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Wu Electric', 25, '2022-02-17 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Revature Motors', 27, '2022-05-03 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Talent Sensations', 28, '2022-05-10 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Carta Training', 29, '2022-06-02 00:00:00', 'MEET00');
INSERT INTO InitialMeetings (ClientName, ProjectID, ProjectStartDate, TaskID) VALUES ('Morales Group', 30, '2022-06-03 00:00:00', 'MEET00');
SET IDENTITY_INSERT InitialMeetings OFF;
-- 24 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'ProjectLineItems'
-- --------------------------------------------------------
DROP TABLE IF EXISTS ProjectLineItems;
CREATE TABLE ProjectLineItems (
  ProjectLineItemID INTEGER NOT NULL IDENTITY, 
  ProjectID INTEGER NOT NULL DEFAULT 0, 
  TaskID VARCHAR(255) NOT NULL, 
  TaskDate DATETIME, 
  Quantity INTEGER DEFAULT 1, 
  Factor FLOAT NULL, 
  ProjectLineItemNotes VARCHAR(MAX), 
  INDEX TASKDATE_IDX (TaskDate), 
  INDEX PROECTID_IDX(ProjectID), 
  INDEX TASKID_IDX (TaskID), 
  PRIMARY KEY (ProjectLineItemID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'ProjectLineItems'
-- --------------------------------------------------------
SET IDENTITY_INSERT ProjectLineItems ON;
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (1, 1, 'MEET00', '2019-02-06 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (2, 1, 'PLAN01', '2019-02-06 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (4, 2, 'MEET00', '2019-02-07 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (5, 2, 'PLAN01', '2019-02-07 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (6, 2, 'DB01', '2019-03-15 00:00:00', 1, 1.3, 'Data is stored in multiple spreadsheets.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (7, 2, 'DB02', '2019-04-15 00:00:00', 20, 1.3, 'Data is not consistent between spreadsheets.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (8, 3, 'MEET00', '2019-03-11 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (9, 3, 'PLAN01', '2019-03-11 00:00:00', 1, 1.2, 'Owner is difficult to pin down.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (10, 4, 'MEET00', '2020-04-10 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (11, 4, 'PLAN01', '2020-04-10 00:00:00', 1, 1.2, 'Two principal attorneys must agree.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (12, 4, 'SERV01', '2020-05-11 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (13, 4, 'SERV02', '2020-06-10 00:00:00', 1, 1.3, 'Security is a paramount issue.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (19, 9, 'MEET00', '2020-02-10 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (20, 9, 'PLAN01', '2020-02-10 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (25, 9, 'PLAN10', '2020-02-17 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (26, 18, 'MEET00', '2021-04-14 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (36, 7, 'MEET00', '2019-09-02 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (37, 7, 'CODE04', '2019-10-07 00:00:00', 5, 1, 'Code 5 new queries.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (38, 2, 'CODE04', '2019-05-15 00:00:00', 4, 1, 'Code SQL to code 4 queries.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (39, 8, 'MEET00', '2020-01-06 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (40, 8, 'PLAN01', '2020-01-06 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (41, 8, 'CODE10', '2020-03-04 00:00:00', 10, 1.2, 'Client may have multiple competing goals.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (47, 18, 'DB01', '2021-05-14 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (48, 18, 'DB02', '2021-05-31 00:00:00', 20, 1, 'Data is currently stored in cloud documents.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (49, 18, 'DB05', '2021-06-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (61, 10, 'SUPP05', '2021-07-01 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (62, 30, 'MEET00', '2022-06-03 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (63, 30, 'PLAN01', '2022-06-03 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (64, 30, 'PLAN02', '2022-06-03 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (65, 30, 'PLAN09', '2022-07-18 00:00:00', 5, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (66, 30, 'PLAN03', '2022-07-18 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (67, 30, 'PLAN06', '2022-09-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (68, 30, 'PLAN04', '2022-09-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (69, 30, 'PLAN05', '2022-09-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (70, 30, 'MEET01', '2022-09-15 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (76, 13, 'MEET00', '2020-12-08 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (77, 13, 'PLAN01', '2020-12-08 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (78, 13, 'CODE13', '2020-12-01 00:00:00', 40, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (79, 13, 'CODE01', '2020-12-01 00:00:00', 20, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (81, 13, 'DB03', '2020-12-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (82, 13, 'CODE04', '2020-12-01 00:00:00', 20, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (83, 16, 'MEET00', '2021-01-04 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (85, 16, 'SERV02', '2021-03-04 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (86, 16, 'SUPP01', '2021-03-04 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (87, 16, 'SUPP04', '2021-03-04 00:00:00', 12, 1, '12-month minimum.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (88, 16, 'MEET01', '2021-03-04 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (90, 17, 'MEET00', '2021-02-15 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (91, 17, 'TEST01', '2021-03-15 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (92, 17, 'TEST02', '2021-03-15 00:00:00', 4, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (206, 31, 'DB01', '2020-03-31 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (207, 31, 'DB02', '2020-04-30 00:00:00', 40, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (208, 31, 'MEET00', '2020-03-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (209, 31, 'MEET01', '2020-04-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (210, 31, 'MEET01', '2020-05-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (93, 17, 'TEST03', '2021-03-15 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (94, 17, 'MEET01', '2021-04-01 00:00:00', 3, 1.2, 'Bad news is difficult to deliver.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (95, 19, 'MEET00', '2021-06-04 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (97, 19, 'PLAN01', '2021-06-04 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (98, 19, 'CODE02', '2021-06-15 00:00:00', 20, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (99, 19, 'MEET01', '2021-07-01 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (100, 15, 'MEET00', '2020-12-21 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (101, 15, 'PLAN01', '2020-12-21 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (102, 15, 'CODE03', '2020-12-30 00:00:00', 40, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (103, 15, 'MEET01', '2020-01-15 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (104, 14, 'MEET00', '2020-12-09 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (105, 14, 'PLAN01', '2020-12-15 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (106, 14, 'CODE07', '2020-12-15 00:00:00', 10, 1.5, 'Node.js environment requires additional training.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (107, 14, 'MEET01', '2021-01-15 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (108, 21, 'MEET00', '2021-08-31 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (109, 21, 'CODE08', '2021-09-20 00:00:00', 5, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (110, 21, 'CODE10', '2021-10-15 00:00:00', 15, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (111, 21, 'MEET01', '2021-10-20 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (112, 28, 'MEET00', '2022-05-10 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (113, 28, 'PLAN01', '2022-05-10 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (114, 28, 'CODE05', '2022-06-15 00:00:00', 10, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (115, 28, 'CODE06', '2022-07-15 00:00:00', 5, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (116, 28, 'CODE07', '2022-07-15 00:00:00', 20, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (118, 28, 'CODE15', '2022-08-15 00:00:00', 8, 1.3, 'Project is not well defined yet.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (119, 28, 'SUPP05', '2022-06-15 00:00:00', 4, 1.3, 'No internal contact identified yet.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (122, 27, 'MEET00', '2022-05-03 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (123, 27, 'PLAN01', '2022-05-03 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (124, 27, 'CODE05', '2022-06-01 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (125, 27, 'CODE06', '2022-06-01 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (126, 27, 'CODE07', '2022-06-01 00:00:00', 36, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (132, 27, 'CODE09', '2022-06-01 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (133, 27, 'DB01', '2022-06-01 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (134, 27, 'CODE12', '2022-06-15 00:00:00', 36, 1.2, 'Project is not well defined yet.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (135, 25, 'MEET00', '2022-02-17 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (136, 25, 'CODE08', '2022-03-17 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (137, 25, 'CODE10', '2022-03-17 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (138, 25, 'MEET01', '2022-04-01 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (139, 24, 'MEET00', '2022-01-14 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (140, 24, 'TEST01', '2022-02-14 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (141, 24, 'TEST02', '2022-02-14 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (142, 24, 'TEST03', '2022-02-14 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (143, 24, 'MEET01', '2022-02-24 00:00:00', 2, 1.5, 'SEO problems');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (144, 23, 'MEET00', '2021-11-12 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (145, 23, 'PLAN01', '2021-11-12 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (146, 23, 'PLAN09', '2021-12-01 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (147, 23, 'CODE05', '2021-12-30 00:00:00', 15, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (148, 23, 'CODE06', '2022-01-10 00:00:00', 15, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (149, 23, 'CODE07', '2022-01-12 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (150, 23, 'CODE08', '2022-01-20 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (153, 23, 'MEET01', '2022-01-31 00:00:00', 3, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (157, 2, 'TEST01', '2019-06-03 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (158, 2, 'TEST02', '2019-06-03 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (159, 2, 'MEET01', '2019-06-03 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (160, 7, 'TEST01', '2019-10-09 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (161, 7, 'TEST02', '2019-10-09 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (162, 7, 'MEET01', '2019-10-10 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (163, 4, 'TEST01', '2020-06-15 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (164, 4, 'TEST02', '2020-06-15 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (169, 13, 'TEST01', '2020-12-08 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (170, 13, 'TEST03', '2020-12-08 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (171, 17, 'SUPP01', '2021-04-08 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (172, 17, 'SUPP04', '2021-04-08 00:00:00', 12, 1, '12-month minimum');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (173, 19, 'SUPP01', '2021-07-08 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (174, 19, 'SUPP04', '2021-07-08 00:00:00', 12, 1, '12-month minimum');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (175, 15, 'TEST01', '2020-01-22 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (176, 15, 'TEST02', '2020-01-22 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (177, 14, 'TEST01', '2020-01-22 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (178, 14, 'TEST02', '2020-01-22 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (179, 14, 'SUPP02', '2020-01-29 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (180, 14, 'SUPP04', '2020-01-29 00:00:00', 12, 1, '12-month minimum');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (181, 22, 'MEET00', '2021-09-30 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (182, 22, 'PLAN01', '2021-09-30 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (183, 22, 'CODE05', '2021-10-07 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (184, 22, 'CODE06', '2021-10-14 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (185, 22, 'CODE07', '2021-10-21 00:00:00', 36, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (186, 22, 'CODE09', '2021-10-28 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (187, 22, 'DB01', '2021-10-28 00:00:00', 24, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (188, 22, 'CODE12', '2021-11-03 00:00:00', 36, 1.2, 'Project is not well defined yet.');
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (189, 22, 'TEST01', '2021-11-08 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (190, 22, 'TEST02', '2021-11-08 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (191, 22, 'TEST03', '2021-11-08 00:00:00', 16, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (192, 22, 'MEET01', '2021-11-15 00:00:00', 4, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (193, 27, 'MEET01', '2022-07-15 00:00:00', 4, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (194, 28, 'MEET01', '2022-08-15 00:00:00', 2, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (195, 29, 'MEET00', '2022-06-02 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (196, 29, 'CODE14', '2022-06-20 00:00:00', 40, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (197, 29, 'MEET01', '2022-06-27 00:00:00', 1, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (199, 2, 'SUPP03', '2019-06-03 00:00:00', 8, 1, NULL);
INSERT INTO ProjectLineItems (ProjectLineItemID, ProjectID, TaskID, TaskDate, Quantity, Factor, ProjectLineItemNotes) VALUES (200, 4, 'SUPP03', '2020-06-15 00:00:00', 4, 1, NULL);
SET IDENTITY_INSERT ProjectLineItems OFF;
-- 143 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'Projects'
-- --------------------------------------------------------
DROP TABLE IF EXISTS Projects;
CREATE TABLE Projects (
  ProjectID INTEGER NOT NULL IDENTITY, 
  ProjectStartDate DATETIME, 
  ClientID INTEGER DEFAULT 0, 
  EmployeeID VARCHAR(255), 
  ProjectNotes VARCHAR(MAX), 
  INDEX CLIENTID_IDX (ClientID), 
  INDEX EMPLOYEEID_IDX (EmployeeID), 
  INDEX PROECTID_IDX(ProjectID), 
  PRIMARY KEY (ProjectID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'Projects'
-- --------------------------------------------------------
SET IDENTITY_INSERT Projects ON;
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (1, '2019-02-06 00:00:00', 1, '52', 'Client wants digital solutions to emphasize commercial real estate.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (2, '2019-02-07 00:00:00', 10, '63', 'Client needs help converting, organizing, and managing donor and donation data.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (3, '2019-03-11 00:00:00', 3, '52', 'Client wants to establish SEO goals.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (4, '2020-04-10 00:00:00', 4, '52', 'Client  wants to set up an internal server as well as help with a domain name.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (7, '2019-09-02 00:00:00', 2, '63', 'Client has used the database for several months and now needs new reports.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (8, '2020-01-06 00:00:00', 3, '52', 'Develop and implement website SEO strategy.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (9, '2020-02-10 00:00:00', 6, '63', 'Needs help to manage and organize internal data.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (10, '2021-03-31 00:00:00', 7, '19', 'Develop new website content.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (11, '2020-04-30 00:00:00', 9, '19', 'Client needs internal database to manage personnel.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (13, '2020-11-30 00:00:00', 10, '64', 'Client needs subcontracting help installing a new database for a WordPress site.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (14, '2020-12-09 00:00:00', 15, '19', 'Client needs new functionality for current JavaScript application.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (15, '2020-12-21 00:00:00', 14, '19', 'Client needs new functionality for current Ruby/Rails application.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (16, '2021-01-04 00:00:00', 11, '52', 'Client needs help with server security.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (17, '2021-02-15 00:00:00', 12, '52', 'Current online sales solution is unreliable.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (18, '2021-04-14 00:00:00', 6, '63', 'Client needs internal database to manage inventory.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (19, '2021-06-04 00:00:00', 13, '52', 'Client needs new functionality for current C-- / ASP.NET application.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (20, '2021-07-30 00:00:00', 22, '63', 'Client needs full website reskin.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (21, '2021-08-31 00:00:00', 16, '19', 'Client needs help with data analytics.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (22, '2021-09-30 00:00:00', 20, '19', 'Client needs an online reference database');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (23, '2021-11-12 00:00:00', 18, '63', 'Client needs to include responsive web design principles for mobile devices.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (24, '2022-01-14 00:00:00', 17, '63', 'Client wants an audit on current website performance.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (25, '2022-02-17 00:00:00', 19, '52', 'Client wants initial SEO / data analytics report.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (27, '2022-05-03 00:00:00', 22, '63', 'Client needs a web app to order and customize auto parts starting with a prototype.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (28, '2022-05-10 00:00:00', 23, '19', 'Client needs new content and coding as well as a shopping cart for event registrations.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (29, '2022-06-02 00:00:00', 21, '19', 'Python coding skills needed for data analysis.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (30, '2022-06-03 00:00:00', 24, '63', 'Create a new website design.');
INSERT INTO Projects (ProjectID, ProjectStartDate, ClientID, EmployeeID, ProjectNotes) VALUES (31, '2020-03-01 00:00:00', 1, '19', 'Three existing databases need to be merged into one.');
SET IDENTITY_INSERT Projects OFF;
-- 27 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'TaskMasterList'
-- --------------------------------------------------------
DROP TABLE IF EXISTS TaskMasterList;
CREATE TABLE TaskMasterList (
  TaskID VARCHAR(6) NOT NULL, 
  Description VARCHAR(30), 
  CategoryID VARCHAR(15), 
  Per VARCHAR(255), 
  Estimate DECIMAL(19,4), 
  INDEX CATEGORYID_IDX(CategoryID), 
  INDEX TASKID_IDX (TaskID), 
  PRIMARY KEY (TaskID)
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'TaskMasterList'
-- --------------------------------------------------------
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE01', 'Code PHP', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE02', 'Code C-- in ASP.NET', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE03', 'Code Ruby on Rails', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE04', 'Code SQL', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE05', 'Code HTML', 'Coding', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE06', 'Code CSS', 'Coding', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE07', 'Code JavaScript', 'Coding', 'Hour', 125);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE08', 'Perform analytics', 'Coding', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE09', 'Select technology stack', 'Coding', 'Hour', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE10', 'Apply SEO', 'Coding', 'Hour', 125);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE12', 'Create prototype', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE13', 'Code WordPress', 'Coding', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE14', 'Code Python', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE16', 'Code Other', 'Coding', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('CODE15', 'Create shopping cart', 'Coding', 'Hour', 125);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SUPP05', 'Create style guides', 'Support', 'Hour', 75);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('DB01', 'Design relational database', 'Database', 'Project', 1100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('DB02', 'Convert data', 'Database', 'Hour', 137.5);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('DB03', 'Install MySQL database', 'Database', 'Project', 550);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('DB04', 'Install SQL Server database', 'Database', 'Project', 550);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('DB05', 'Install Access Database', 'Database', 'Project', 440);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('MEET00', 'Initial customer meeting', 'Meeting', 'Project', 0);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('MEET01', 'Meet with client', 'Meeting', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN01', 'Establish goals with client', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN02', 'Define target audience', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN03', 'Document site structure', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN04', 'Create wireframe - home page', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN05', 'Create wireframe - other', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN06', 'Create page layout', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN09', 'Document current environment', 'Planning', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('PLAN10', 'Create a problem statement', 'Planning', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SERV01', 'Set up a domain name', 'Server', 'Project', 200);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SERV02', 'Install new server', 'Server', 'Project', 500);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SUPP01', 'Create support agreement', 'Support', 'Project', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SUPP02', 'Create maintenance agreement', 'Support', 'Project', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SUPP03', 'Document solution', 'Support', 'Hour', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('SUPP04', 'Monthly maintenance', 'Support', 'Month', 100);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('TEST01', 'Test technology', 'Testing', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('TEST02', 'Test performance', 'Testing', 'Hour', 150);
INSERT INTO TaskMasterList (TaskID, Description, CategoryID, Per, Estimate) VALUES ('TEST03', 'Test user experience', 'Testing', 'Hour', 75);
-- 40 ------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table 'Zips'
-- --------------------------------------------------------
DROP TABLE IF EXISTS Zips;
CREATE TABLE Zips (
  City VARCHAR(255), 
  Zip VARCHAR(255) NOT NULL
) ;
-- --------------------------------------------------------


-- --------------------------------------------------------
-- Dumping data for table 'Zips'
-- --------------------------------------------------------
SET IMPLICIT_TRANSACTIONS ON;
INSERT INTO Zips (City, Zip) VALUES ('Springfield', '01071');
INSERT INTO Zips (City, Zip) VALUES ('Springfield', '01116');
INSERT INTO Zips (City, Zip) VALUES ('North Adams', '01225');
INSERT INTO Zips (City, Zip) VALUES ('Holyoke', '01243');
INSERT INTO Zips (City, Zip) VALUES ('Pittsfield', '01245');
INSERT INTO Zips (City, Zip) VALUES ('Gardner', '01331');
INSERT INTO Zips (City, Zip) VALUES ('Greenfield', '01354');
INSERT INTO Zips (City, Zip) VALUES ('Greenfield', '01355');
INSERT INTO Zips (City, Zip) VALUES ('Gardner', '01364');
INSERT INTO Zips (City, Zip) VALUES ('Gardner', '01366');
INSERT INTO Zips (City, Zip) VALUES ('Fitchburg', '01431');
INSERT INTO Zips (City, Zip) VALUES ('Lowell', '01432');
INSERT INTO Zips (City, Zip) VALUES ('Fitchburg', '01451');
INSERT INTO Zips (City, Zip) VALUES ('Fitchburg', '01453');
INSERT INTO Zips (City, Zip) VALUES ('Worcester', '01526');
INSERT INTO Zips (City, Zip) VALUES ('Worcester', '01527');
INSERT INTO Zips (City, Zip) VALUES ('Worcester', '01570');
INSERT INTO Zips (City, Zip) VALUES ('Worcester', '01571');
INSERT INTO Zips (City, Zip) VALUES ('Waltham', '01754');
INSERT INTO Zips (City, Zip) VALUES ('Waltham', '01775');
INSERT INTO Zips (City, Zip) VALUES ('Waltham', '01776');
INSERT INTO Zips (City, Zip) VALUES ('Lowell', '01824');
INSERT INTO Zips (City, Zip) VALUES ('Lawrence', '01840');
INSERT INTO Zips (City, Zip) VALUES ('Lowell', '01851');
INSERT INTO Zips (City, Zip) VALUES ('Lowell', '01852');
INSERT INTO Zips (City, Zip) VALUES ('Lawrence', '01921');
INSERT INTO Zips (City, Zip) VALUES ('Salem', '01938');
INSERT INTO Zips (City, Zip) VALUES ('Haverhill', '01950');
INSERT INTO Zips (City, Zip) VALUES ('Lynn', '01960');
INSERT INTO Zips (City, Zip) VALUES ('Lynn', '01961');
INSERT INTO Zips (City, Zip) VALUES ('Salem', '01966');
INSERT INTO Zips (City, Zip) VALUES ('Lynn', '01983');
INSERT INTO Zips (City, Zip) VALUES ('Haverhill', '01985');
INSERT INTO Zips (City, Zip) VALUES ('Quincy', '02045');
INSERT INTO Zips (City, Zip) VALUES ('Norwood', '02053');
INSERT INTO Zips (City, Zip) VALUES ('Hanover', '02065');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02113');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02114');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02116');
INSERT INTO Zips (City, Zip) VALUES ('Roxbury', '02130');
INSERT INTO Zips (City, Zip) VALUES ('Malden', '02148');
INSERT INTO Zips (City, Zip) VALUES ('Malden', '02149');
INSERT INTO Zips (City, Zip) VALUES ('Chelsea', '02151');
INSERT INTO Zips (City, Zip) VALUES ('Chelsea', '02152');
INSERT INTO Zips (City, Zip) VALUES ('Malden', '02176');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02196');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02199');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02205');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02210');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02215');
INSERT INTO Zips (City, Zip) VALUES ('Brockton', '02302');
INSERT INTO Zips (City, Zip) VALUES ('Hanover', '02327');
INSERT INTO Zips (City, Zip) VALUES ('Hanover', '02330');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02446');
INSERT INTO Zips (City, Zip) VALUES ('Boston', '02447');
INSERT INTO Zips (City, Zip) VALUES ('Cambridge', '02466');
INSERT INTO Zips (City, Zip) VALUES ('Cambridge', '02467');
INSERT INTO Zips (City, Zip) VALUES ('Falmouth', '02532');
INSERT INTO Zips (City, Zip) VALUES ('Falmouth', '02552');
INSERT INTO Zips (City, Zip) VALUES ('Hyannis', '02601');
INSERT INTO Zips (City, Zip) VALUES ('Hyannis', '02642');
INSERT INTO Zips (City, Zip) VALUES ('Hyannis', '02650');
INSERT INTO Zips (City, Zip) VALUES ('Hyannis', '02673');
INSERT INTO Zips (City, Zip) VALUES ('Taunton', '02718');
INSERT INTO Zips (City, Zip) VALUES ('Fall River', '02724');
INSERT INTO Zips (City, Zip) VALUES ('Fall River', '02725');
INSERT INTO Zips (City, Zip) VALUES ('Fall River', '02726');
INSERT INTO Zips (City, Zip) VALUES ('Attleboro', '02763');
INSERT INTO Zips (City, Zip) VALUES ('Taunton', '02764');
INSERT INTO Zips (City, Zip) VALUES ('Attleboro', '02769');
INSERT INTO Zips (City, Zip) VALUES ('New Bedford', '02770');
INSERT INTO Zips (City, Zip) VALUES ('Fall River', '02777');
INSERT INTO Zips (City, Zip) VALUES ('Fall River', '02791');
-- 73 ------------------------------------------------------

COMMIT;