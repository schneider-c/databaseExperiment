--1
SELECT FName,LName,Balance
FROM retail.dbo.Customer

--2
SELECT DepartNO,DepartName
FROM retail.dbo.Department

--3
SELECT UnitPrice,QtyOnHand,UnitPrice*QtyOnHand subtotal
FROM retail.dbo.Product

--4
SELECT CustNo,OrdStatus
FROM retail.dbo.Orders
WHERE OrdStatus='C';

--5
SELECT CustNO,FName,LName,Balance
FROM retail.dbo.Customer
WHERE Balance>1000;

--6
SELECT FName,LName,Street,Suburb
FROM retail.dbo.Customer
WHERE Balance BETWEEN 1000 AND 3000;

--7
SELECT ProductNO,ProdDescription
FROM retail.dbo.Product
WHERE ProdDescription LIKE '%ball%'
ORDER BY ProdDescription DESC;

--8
SELECT CustNO,FName,LName
FROM retail.dbo.Customer
WHERE FName LIKE 'M%';

--9
SELECT SalesRepLastName,SalesRepFName
FROM retail.dbo.SalesRep
WHERE DepartNo=NULL;

--10
SELECT FName,LName,Balance
FROM retail.dbo.Customer
WHERE FName='Ben' AND LName='Smith';

--11
SELECT OrderNO
FROM retail.dbo.Orders
WHERE SalesRepNo='S2';

--12
SELECT ProductNo,ProdDescription,UnitPrice,Qtyonhand
FROM retail.dbo.Product
WHERE UnitPrice>100 AND Qtyonhand<50
ORDER BY Qtyonhand DESC;

--13
SELECT ProductNo,ProdDescription,UnitPrice,Qtyonhand
FROM retail.dbo.Product
WHERE UnitPrice NOT BETWEEN 200 AND 400

--14
SELECT ProductNo,ProdDescription
FROM retail.dbo.Product
WHERE ProdDescription NOT LIKE '%e%'
ORDER BY ProdDescription ASC;

--15
SELECT OrderNO,OrdStatus
FROM retail.dbo.Orders
WHERE OrdStatus='C' OR OrdStatus='N'
ORDER BY OrdStatus ASC;


