--1
SELECT SalesRepLastName,SalesRepFName
FROM retail.dbo.SalesRep
WHERE DepartNO IN
(
	SELECT DepartNO
	FROM retail.dbo.Department
	WHERE DepartName='Clothing'
	);

--2
SELECT *
FROM retail.dbo.Orderline
WHERE ProductNo IN
(
	SELECT ProductNo
	FROM retail.dbo.Product
	WHERE UnitPrice NOT BETWEEN 200 AND 400
	);

--3
SELECT FName,LName
FROM retail.dbo.Customer
WHERE CustNO IN 
(
	SELECT DISTINCT CustNO
	FROM retail.dbo.Orders
	);

--4
SELECT ProductNO,ProdDescription
FROM retail.dbo.Product
WHERE ProductNO NOT IN
(
	SELECT ProductNO
	FROM retail.dbo.Orderline
	);

--5
SELECT COUNT(OrderNO)
FROM retail.dbo.Orders
WHERE CustNO='1040';

--6
SELECT FName,LName,SalesRepLastName,SalesRepFName,Orderline.OrderNO,OrdDate,ProdDescription,QtyPurchased
FROM retail.dbo.Orders,retail.dbo.Customer,retail.dbo.SalesRep,retail.dbo.Orderline,retail.dbo.Product
WHERE orders.CustNO=Customer.CustNo AND Orders.SalesRepNo=SalesRep.SalesRepNo AND Orders.OrderNO=OrderLine.OrderNO AND Orderline.ProductNo=Product.ProductNO
ORDER BY Orders.OrdDate DESC,Customer.FName,Customer.LName ASC;

--7
SELECT OrderNO,SUM(QtyPurchased*PurchasePrice) Total_Amount
FROM retail.dbo.OrderLine
GROUP BY OrderNo;

--8
SELECT DepartName,COUNT(SalesRepNO) Number_of_Employees
FROM retail.dbo.Department,retail.dbo.SalesRep
WHERE Department.DepartNo=SalesRep.DepartNo
GROUP BY Department.DepartName;

--9
SELECT FName,LName,COUNT(OrderNO) number_of_orders
FROM retail.dbo.Customer,retail.dbo.Orders
WHERE Customer.CustNo=Orders.CustNO
GROUP BY Customer.FName,Customer.LName;

--10
SELECT COUNT(OrderNO)
FROM retail.dbo.Orders
GROUP BY OrdStatus;

--11
SELECT Orders.SalesRepNo,SalesRepFName,SalesRepLastName,COUNT(OrderNO) Number_of_orders
FROM retail.dbo.Orders,retail.dbo.SalesRep
WHERE Orders.SalesRepNo=SalesRep.SalesRepNo
GROUP BY Orders.SalesRepNo,SalesRepFName,SalesRepLastName
HAVING COUNT(OrderNO)>3;

--12
SELECT FName,LName
FROM retail.dbo.Customer
where CustNO = (
	SELECT CustNo
	FROM retail.dbo.Orders
	WHERE OrderNO='12630'
	);

--13
SELECT COUNT(ProductNO)
FROM retail.dbo.Orderline
WHERE ProductNo='DP03';

--14
SELECT DISTINCT FName, LName
FROM retail.dbo.Customer
WHERE CustNo IN (
	SELECT CustNo
	FROM retail.dbo.Orderline
	WHERE ProductNo IN (
		SELECT ProductNo
		FROM retail.dbo.Product
		WHERE ProdDescription='Walkman'
		)
	);

--15
SELECT MAX(Balance)
FROM retail.dbo.Customer

--16
SELECT DISTINCT FName, LName
FROM retail.dbo.Customer
WHERE CustNo IN (
	SELECT CustNo
	FROM retail.dbo.Orders
	WHERE SalesRepNo IN (
		SELECT SalesRepNo
		FROM retail.dbo.SalesRep
		WHERE SalesRepFName = 'Bill' AND SalesRepLastName = 'Smith'
		)
	);