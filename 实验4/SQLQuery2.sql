--1
INSERT INTO retail.dbo.Department VALUES('07','TECH');

--2
INSERT INTO retail.dbo.Customer VALUES('2001','Robert','Bill','','','','1000');

--3
INSERT INTO retail.dbo.numofOrders(CustNO, Fname, Lname, numberofOrders)
SELECT Orders.CustNO, Fname, Lname,count(Orders.CustNO)
FROM retail.dbo.Orders,retail.dbo.Customer
WHERE Orders.CustNO=Customer.CustNO
GROUP BY Orders.CustNO,Fname,Lname

--4
SELECT *
FROM retail.dbo.totalSale

INSERT INTO retail.dbo.totalSale(SalesRepNO, Fname, Lname, total)
SELECT SalesRep.SalesRepNo, SalesRep.SalesRepFName, SalesRep.SalesRepLastName, SUM(PurchasePrice*QtyPurchased)
FROM retail.dbo.Orderline,retail.dbo.Orders,retail.dbo.SalesRep
WHERE Orderline.OrderNo=Orders.OrderNO AND Orders.SalesRepNo=SalesRep.SalesRepNo
GROUP BY SalesRep.SalesRepNo, SalesRep.SalesRepFName, SalesRep.SalesRepLastName

--5
UPDATE retail.dbo.Product
SET UnitPrice=UnitPrice*(1+0.05)

SELECT UnitPrice
FROM retail.dbo.Product

--6
UPDATE retail.dbo.Customer
SET Balance=Balance+100
WHERE CustNo IN (
	SELECT CustNo
	FROM retail.dbo.Orders
	WHERE OrderNO IN (
		SELECT OrderNo
		FROM retail.dbo.Orderline
		WHERE ProductNo IN (
			SELECT ProductNo
			FROM retail.dbo.Product
			WHERE ProdDescription='laser Printer'
			)
		)
	);
SELECT *
FROM retail.dbo.Customer

--7
UPDATE retail.dbo.Product
SET UnitPrice=UnitPrice*(1+0.05)
WHERE ProductNo IN (
	SELECT ProductNo
	FROM retail.dbo.Orderline
	GROUP BY ProductNo
	HAVING COUNT(OrderNo)>2
)
--ÐÞ¸Äºó¼ì²é
SELECT ProductNo,UnitPrice
FROM retail.dbo.Product
WHERE ProductNo IN (
SELECT ProductNo
	FROM retail.dbo.Orderline
	GROUP BY ProductNo
	HAVING COUNT(OrderNo)>2
	)

--8
INSERT INTO retail.dbo.Orders(OrderNO,CustNO,OrdDate,OrdStatus) 
VALUES ('12900','2567','8/9/2015','N')
INSERT INTO retail.dbo.Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice)
VALUES ('12900','AX12','5','20')
INSERT INTO retail.dbo.Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) 
VALUES ('12900','BT04','9','129')
--9
CREATE VIEW V1
AS
SELECT FName,LName,OrdDate,ProdDescription,QtyPurchased,UnitPrice,QtyPurchased*UnitPrice total
FROM retail.dbo.Customer,retail.dbo.Orders,retail.dbo.Product,retail.dbo.Orderline
WHERE Customer.CustNo=Orders.CustNO AND Orders.OrderNO=Orderline.OrderNo AND Orderline.ProductNo=Product.ProductNo

--10
CREATE VIEW V2
AS
SELECT SalesRepFName,SalesRepLastName,DepartName
FROM retail.dbo.SalesRep,retail.dbo.Department
WHERE SalesRep.DepartNo=Department.DepartNo

--11
CREATE VIEW V3
AS
SELECT SalesRepFName,SalesRepLastName,DepartName,COUNT(Orders.OrderNO) AS Numbers_of_Orders
FROM retail.dbo.SalesRep,retail.dbo.Department,retail.dbo.Orders
WHERE SalesRep.SalesRepNo=Orders.SalesRepNo AND SalesRep.DepartNo=Department.DepartNo
GROUP BY SalesRepFName,SalesRepLastName,DepartName

--12
SELECT V1.FName,V1.LName,SUM(total) AS TOTAL
FROM V1
GROUP BY V1.FName,V1.LName

--13
SELECT V3.SalesRepFName,V3.SalesRepLastName,V3.DepartName,V3.Numbers_of_Orders
FROM V3
WHERE V3.Numbers_of_Orders > 3;

--14
DELETE 
FROM retail.dbo.Department
WHERE DepartName='Tech';

--15
DELETE 
FROM retail.dbo.SalesRep
WHERE SalesRepNo IN (
	SELECT SalesRepNo
	FROM retail.dbo.Orders
	GROUP BY SalesRepNo
	HAVING COUNT(OrderNO)=0
	);

--16
CREATE UNIQUE INDEX PRODUCTNAME 
ON retail.dbo.Product(ProductNO ASC)

--17
CREATE UNIQUE INDEX DEPARTNO 
ON retail.dbo.SalesRep(DepartNo ASC,SalesRepFName DESC,SalesRepLastName DESC)
