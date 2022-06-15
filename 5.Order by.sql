/* ORDER BY*/

SELECT *
FROM Person.Person
ORDER BY FirstName

SELECT FirstName, LastName 
FROM Person.Person
ORDER BY FirstName asc, LastName 

SELECT *
FROM Person.Person
ORDER BY MiddleName asc

/*1 Desafio
Obter o ProductId dos 10 produtos mais caros cadatrados no sistema,listando o mais cara para o mais barato*/

SELECT top 10 ProductID
FROM Production.Product
order by ListPrice desc

SELECT top 10 name,ProductID, ListPrice
FROM Production.Product
order by ListPrice desc

/*2 Desafio
Obter o nome e o numero do produto dos produtos que tem ProductId entre 1~4*/
SELECT  top 4 Name, ProductNumber
FROM Production.Product
order by ProductID asc


/*2 Desafio
Quantos tamanhos de produtos  temos cadastrados na tabela production.product? */


/*3 Desafio*
Quantos tamanhos diferentes  de produtos  temos cadastrados na tabela production.product?*/
