--ALIAS  

--1 Encontrar o FirstName e LastName e renomeios para Nome e Sobrenome 
SELECT TOP 10 FirstName AS "Nome", LastName AS Sobrenome
FROM Person.Person

--2 Traga o prerço médio dos Dez produtos  da tabela Product
SELECT TOP 10 AVG (ListPrice) AS 'Preço Médio'
FROM Production.Product

--3 Transforme ProductNumber em 'Número de Produto'

SELECT Product.ProductNumber AS 'Número de Produto'
FROM Production.Product

--4 Transforme UnitPrice em 'Preço Unitário'

SELECT UnitPrice AS 'Preço Unitário'
FROM SALES.SalesOrderDetail


