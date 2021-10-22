CREATE DATABASE store

use store
go

CREATE TABLE Product
(
	ProductNO CHAR(10) PRIMARY KEY NOT NULL,
	ProductName CHAR(10),
	ProductSize INT,
	UnitPrice INT
	);

CREATE TABLE Store
(
	StoreNO INT PRIMARY KEY NOT NULL,
	StoreName CHAR(30),
	StoreAddress CHAR(30)
	);
CREATE TABLE Sales
(
	StoreNO INT,
	ProductNO CHAR(10),
	SalesNum INT
	FOREIGN KEY (StoreNO) REFERENCES Store(StoreNO),
	FOREIGN KEY (ProductNO) REFERENCES Product(ProductNO),
	);
CREATE TABLE Workers
(
	WorkerNO INT PRIMARY KEY,
	WorkerName CHAR(10),
	WorkerSex CHAR(10),
	WorkerGrade INT
	);

CREATE TABLE Hire
(
	salary INT ,
	HireTime CHAR(10),
	WorkerNO INT,
	StoreNO INT
	FOREIGN KEY (WorkerNO) REFERENCES Workers(WorkerNO),
	FOREIGN KEY (StoreNO) REFERENCES Store(StoreNO)
	);