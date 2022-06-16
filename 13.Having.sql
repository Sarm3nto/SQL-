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
--1
--2
--3
--4
--5