-- LEFT OUTER JOIN 

--Quero descobrir quais pessoas tem um cartão de credito registrado?

SELECT*
FROM Person.Person TAB1
INNER JOIN Sales.PersonCreditCard TAB2
ON TAB1.BusinessEntityID = TAB2.BusinessEntityID
--TEMOS COM INNER JOIN 1918 LINHAS 

SELECT*
FROM Person.Person TAB1
LEFT JOIN Sales.PersonCreditCard TAB2
ON TAB1.BusinessEntityID = TAB2.BusinessEntityID
--TEMOS COM LEFT JOIN 19972 LINHAS PERCEBEMOS QUE TEMOS 854 PESSOAS QUE NÃO REGISTRARAM O CARTÃO 
 
SELECT 19118-19972
-- RESULTADO 854

--VAMOS ADICIONAR WHERE PARA INVESTIGAR OS CARTOES DE CRÉDITOS SEM REGISTROS 

SELECT*
FROM Person.Person TAB1
LEFT JOIN Sales.PersonCreditCard TAB2
ON TAB1.BusinessEntityID = TAB2.BusinessEntityID
WHERE TAB2.BusinessEntityID IS NULL



