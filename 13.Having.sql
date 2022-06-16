/*Having*/

SELECT FirstName, COUNT (FirstName) as "Qtd"
FROM person.Person
GROUP BY FirstName
HAVING COUNT (FirstName) > 10
ORDER BY Qtd desc

SELECT TOP 10*
FROM Sales.SalesOrderDetail

-- Quais produtos que o total de vendas estão entre 162k a 500k
SELECT ProductID, sum (LineTotal) as 'Total'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM (LineTotal) between 162000 and 500000
ORDER BY Total

--Quais os nomes no sistema tem uma ocorrencia maior que 10 vezes , porém somente onde o título é "MR"

SELECT FirstName, COUNT(FirstName) as 'Qtd'
FROM Person.Person
WHERE TITLE = 'Mr.'
GROUP BY FirstName
HAVING COUNT (FirstName)>10

--DESAFIOS

/*1 Estamos querendo identificar as provincias (stateProvinceID)com maior numero de cadastros 
no nosso sistema,então é presciso encontar quais províncias (stateProviceId) estão registradas 
no banco de dados masique 1000 vezes*/

SELECT StateProvinceID,COUNT(StateProvinceID) as 'Qtd'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) >1000

SELECT*
FROM Person.Address

/*2 Sendo que se trata de uma multinacional os gerentes querem saber quais produtos (prodctId)
não estão trazendo em média no mínimo 1 milhão em total de vendas(lineTotal)*/

SELECT ProductID, AVG (LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG (LineTotal) < 1000000