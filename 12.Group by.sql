/*GROUP BY*/

SELECT *
FROM SALES.SalesOrderDetail

SELECT SpecialOfferID, SUM (UnitPrice) as "Soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produtos foram vendidos  at� hoje ?
SELECT ProductID , COUNT(ProductID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes iguais temos ?
SELECT FirstName, COUNT (FirstName) as QTD
FROM Person.Person
GROUP BY FirstName
ORDER BY QTD DESC

-- Qual a m�dia  dos pre�os dos produtos que s�o pratas ?
SELECT Color, AVG (ListPrice) as "M�dia" 
FROM Production.Product
WHERE color = 'Silver'
GROUP BY Color
ORDER BY M�dia

--DESAFIOS 

--1 Quantas pessoas tem o mesmo MiddleName Agrupadas por MiddeName?
SELECT MiddleName, COUNT (MiddleName) as QTD
FROM Person.Person
GROUP BY MiddleName
ORDER BY QTD DESC

--2 Eu preciso saber em m�dia qual � a quantidade (quantity) que cada produto � vendido na loja?

SELECT ProductID,AVG (OrderQty) as 'AVG'
FROM sales.SalesOrderDetail
GROUP BY ProductID 

--3 Qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior para o menor?
SELECT TOP 10 ProductID, SUM (LineTotal) as 'SOMA'
FROM  sales.SalesOrderDetail
GROUP BY ProductID 
ORDER BY SOMA desc

--4 Quantos produtos e qual � a quantidade m�dia de produtos temos cadastrados na nossas ordem de servi�o (WorkOrder), agrupados por id

SELECT ProductID, COUNT (ProductID) as Qtd,
AVG (ProductID) as Media
FROM  Production.WorkOrder
GROUP BY ProductID