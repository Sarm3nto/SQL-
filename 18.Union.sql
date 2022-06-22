--Union

SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name like '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name like '%Decal%'
order by Name desc

SELECT FirstName,Title, MiddleName
FROM person.person
WHERE Title = 'Mr.'
UNION
SELECT FirstName,Title, MiddleName
FROM Person.Person
WHERE MiddleName ='A' 