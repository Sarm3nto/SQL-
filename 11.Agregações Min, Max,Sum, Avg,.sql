/*AGREGA��ES MIN MAX SUM AVG*/

SELECT TOP 10 sum (linetotal) AS "Soma"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG (linetotal) AS "M�dia"
FROM Sales.SalesOrderDetail

SELECT TOP 10 min (linetotal)
FROM Sales.SalesOrderDetail

SELECT TOP 10 max (linetotal) 
FROM Sales.SalesOrderDetail