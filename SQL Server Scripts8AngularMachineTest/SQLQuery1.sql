CREATE DATABASE STMS;

USE STMS;

CREATE TABLE LOGIN
(Lid              NUMERIC IDENTITY(1,1) PRIMARY KEY,
 Username          VARCHAR(30) NOT NULL,
 Password          VARCHAR(30) NOT NULL,
 UserType          VARCHAR(30) NOT NULL)

 CREATE TABLE EMPLOYEE
 (Empid            NUMERIC IDENTITY(1,1) PRIMARY KEY,
  FirstName        VARCHAR(30),
  LastName         VARCHAR(30),
  Age              INT,
  Gender           VARCHAR(10),
  Address          VARCHAR(50),
  PhoneNumber      NUMERIC,
  Lid              NUMERIC FOREIGN KEY (Lid) REFERENCES LOGIN(Lid))
  
CREATE TABLE VISIT
(Visit_id           NUMERIC IDENTITY(1,1) PRIMARY KEY,
 Cust_name          VARCHAR(100),
 Contact_person     VARCHAR(100),
 Contact_no         NUMERIC,
 Interest_product   VARCHAR(100),
 Visit_subject      VARCHAR(100),
 Description        VARCHAR(100),
 Visit_datetime     DATETIME,
 Is_disabled        BIT,
 Is_deleted         BIT,
 Empid             NUMERIC FOREIGN KEY (empid) REFERENCES EMPLOYEE(Empid))

 SELECT * FROM LOGIN;
 SELECT * FROM EMPLOYEE;
 SELECT * FROM VISIT;

 INSERT INTO LOGIN
 VALUES('MouliSharma','Mouli@123','Admin'),('AmitKumar','Amit@123','Sales CoOrdinator')

 INSERT INTO EMPLOYEE
 VALUES('Tejas','Raj',23,'Male','Patna,Bihar',9876543021,2),
 ('Anandu','T S',28,'Male','kochi,kerala',9765443021,2),
 ('Ishika','Singh',30,'Female','Patna,Bihar',6549873021,2)
