--ALIAS  

--1 Encontrar o FirstName e LastName e renomeios para Nome e Sobrenome 
SELECT TOP 10 FirstName AS "Nome", LastName AS Sobrenome
FROM Person.Person

--2 Traga o prer�o m�dio dos Dez produtos  da tabela Product
SELECT TOP 10 AVG (ListPrice) AS 'Pre�o M�dio'
FROM Production.Product

--3 Transforme ProductNumber em 'N�mero de Produto'

SELECT Product.ProductNumber AS 'N�mero de Produto'
FROM Production.Product

--4 Transforme UnitPrice em 'Pre�o Unit�rio'

SELECT UnitPrice AS 'Pre�o Unit�rio'
FROM SALES.SalesOrderDetail


