CREATE VIEW VIEW1
AS
SELECT WorkerName,WorkerGrade,salary
FROM store.dbo.Hire,store.dbo.Workers
WHERE Hire.WorkerNO=Workers.WorkerNO

CREATE VIEW VIEW2
AS
SELECT ProductName,SalesNum,StoreName
FROM store.dbo.Product,store.dbo.Sales,store.dbo.Store
WHERE Product.ProductNO=Sales.ProductNO AND Sales.StoreNO=store.StoreNO



--²éÑ¯
SELECT WorkerName,WorkerGrade,salary
FROM store.dbo.Hire,store.dbo.Workers
WHERE Hire.WorkerNO=Workers.WorkerNO AND salary>2000

SELECT StoreNO,COUNT(*)
FROM store.dbo.Hire
WHERE salary>7000
GROUP BY StoreNO


SELECT StoreName
FROM store.dbo.Store
WHERE StoreNO IN(
	SELECT StoreNO
	FROM store.dbo.Sales
	WHERE ProductNO='A1268'
	);