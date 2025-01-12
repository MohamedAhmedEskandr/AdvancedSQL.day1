use AdventureWorks2012

--1
SELECT SalesOrderID, ShipDate  FROM [Sales].[SalesOrderHeader]
WHERE [ShipDate]   >= '2002-07-28' AND [ShipDate] <= '2014-07-29';

--2
SELECT ProductID, Name FROM Production.Product
WHERE StandardCost < 110.00;

--3
SELECT ProductID, Name FROM Production.Product
WHERE Weight IS NULL;

--4
SELECT * FROM Production.Product 
WHERE Color IN ('Silver', 'Black', 'Red');

--5
SELECT * FROM Production.Product
WHERE Name LIKE 'B%';

--6
UPDATE Production.ProductDescription
SET Description = 'Chromoly steel_High of defects'
WHERE ProductDescriptionID = 3
-->
SELECT ProductDescriptionID, Description
FROM Production.ProductDescription
WHERE Description LIKE '%_%';

--7
SELECT OrderDate, SUM(TotalDue) AS TotalDueSum FROM Sales.SalesOrderHeader
WHERE OrderDate >= '2001-07-01' AND OrderDate <= '2014-07-31'
GROUP BY OrderDate

--8
SELECT DISTINCT [HireDate] FROM [HumanResources].[Employee];

--9
SELECT AVG(DISTINCT ListPrice) AS AverageListPrice FROM Production.Product;

--10
SELECT  Name,  ListPrice FROM Production.Product
WHERE ListPrice BETWEEN 100 AND 120 ORDER BY ListPrice;   

--11
SELECT rowguid, Name, SalesPersonID, Demographics INTO store_Archive
FROM Sales.Store;    
-->
SELECT rowguid, Name, SalesPersonID, Demographics INTO st_ve
FROM Sales.Store where 1=0;

--12
SELECT CONVERT(varchar, GETDATE(), 0) AS Style_0 UNION
SELECT CONVERT(varchar, GETDATE(), 1) AS Style_1 UNION
SELECT CONVERT(varchar, GETDATE(), 2) AS Style_2 UNION
SELECT CONVERT(varchar, GETDATE(), 3) AS Style_3 ;


   
    
    

    

    

    

    

    











    

    



