/*GROUP BY*/

SELECT *
FROM SALES.SalesOrderDetail

SELECT SpecialOfferID, SUM (UnitPrice) as "Soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produtos foram vendidos  até hoje ?
SELECT ProductID , COUNT(ProductID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes iguais temos ?
SELECT FirstName, COUNT (FirstName) as QTD
FROM Person.Person
GROUP BY FirstName
ORDER BY QTD DESC

-- Qual a média  dos preços dos produtos que são pratas ?
SELECT Color, AVG (ListPrice) as "Média" 
FROM Production.Product
WHERE color = 'Silver'
GROUP BY Color
ORDER BY Média

--DESAFIOS 

--1 Quantas pessoas tem o mesmo MiddleName Agrupadas por MiddeName?
SELECT MiddleName, COUNT (MiddleName) as QTD
FROM Person.Person
GROUP BY MiddleName
ORDER BY QTD DESC

--2 Eu preciso saber em média qual é a quantidade (quantity) que cada produto é vendido na loja?

SELECT ProductID,AVG (OrderQty) as 'AVG'
FROM sales.SalesOrderDetail
GROUP BY ProductID 

--3 Qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior para o menor?
SELECT TOP 10 ProductID, SUM (LineTotal) as 'SOMA'
FROM  sales.SalesOrderDetail
GROUP BY ProductID 
ORDER BY SOMA desc

--4 Quantos produtos e qual é a quantidade média de produtos temos cadastrados na nossas ordem de serviço (WorkOrder), agrupados por id

SELECT ProductID, COUNT (ProductID) as Qtd,
AVG (ProductID) as Media
FROM  Production.WorkOrder
GROUP BY ProductID