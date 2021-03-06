
USE WideWorldImporters
GO

--Simple top 1000 orders
SELECT TOP (1000) 
OrderID, StockItemID, [Description], Quantity, UnitPrice
FROM [WideWorldImporters].[Sales].[OrderLines]

--Simple select to display top 1000 custoemrs
SELECT TOP (1000) * FROM [Sales].[Customers]


--Group By StockItemID, Description sorted by highest quantity
SELECT StockItemID, Description, sum(Quantity) AS QTY
FROM [WideWorldImporters].[Sales].[OrderLines]
GROUP BY StockItemID, Description
ORDER BY QTY DESC

--Group By StockItemID, Description with total price sorted by highest quantity
SELECT StockItemID, Description, sum(Quantity*UnitPrice) AS TOT_PRICE
FROM [WideWorldImporters].[Sales].[OrderLines]
GROUP BY StockItemID, Description
ORDER BY TOT_PRICE DESC

--Records with in date parameters
SELECT TOP (1000) [OrderID], [CustomerID] ,[OrderDate], *
FROM [WideWorldImporters].[Sales].[Orders]
WHERE OrderDate BETWEEN  '2013-01-01' AND '2013-01-05'


SELECT TOP (1000) *
FROM [WideWorldImporters].[Sales].[Orders] O
INNER JOIN [Sales].[Customers] C ON O.CustomerID=C.CustomerID
WHERE O.OrderDate BETWEEN  '2013-01-01' AND '2013-01-05'


--Customers with large orders
SELECT C.CustomerID, C.CustomerName, O.OrderID, (OL.Quantity * OL.UnitPrice) as Order_Totals
FROM 
[WideWorldImporters].[Sales].[OrderLines] OL
INNER JOIN [WideWorldImporters].[Sales].[Orders] O ON OL.OrderID=O.OrderID
INNER JOIN [Sales].[Customers] C ON O.CustomerID=C.CustomerID
WHERE O.OrderDate BETWEEN  '2013-01-01' AND '2013-01-05'
ORDER BY Order_Totals DESC

	
--Items in demand
SELECT 
--TOP (1000)  *
StockItemID, [Description], SUM(Quantity) AS QTY
FROM [WideWorldImporters].[Sales].[OrderLines]
GROUP BY StockItemID,  Description
ORDER BY QTY DESC

	
	
--Big Ticket Items
SELECT 
--TOP (1000)  *
StockItemID, [Description], SUM(UnitPrice) AS PRICE
FROM [WideWorldImporters].[Sales].[OrderLines]
GROUP BY StockItemID,  Description
ORDER BY PRICE DESC




