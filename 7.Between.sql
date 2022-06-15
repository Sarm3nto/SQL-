/*Between*/

SELECT*
FROM Production.Product
WHERE ListPrice between 1000 and 1500;

SELECT*
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '20100101'
ORDER BY HireDate