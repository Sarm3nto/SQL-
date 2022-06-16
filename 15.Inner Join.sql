--Inner Join

--BusinessEntityId, FirstName, Lastname,EmailAddress

SELECT TOP 10 *
FROM Person.Person

SELECT TOP 10 *
FROM Person.EmailAddress

SELECT primeira_tabela.BusinessEntityID, primeira_tabela.FirstName, primeira_tabela.LastName, segunda_tabela.EmailAddress
FROM Person.Person as primeira_tabela
INNER JOIN Person.EmailAddress segunda_tabela ON primeira_tabela.BusinessEntityID = segunda_tabela.BusinessEntityID

--Quais os nomes dos produtos  e as informaçoes  de suas subcategorias 
--ListPrice, Nome Do Prouto, Nome da Subcategoria

SELECT TOP 10*
FROM Production.Product

SELECT TOP  10*
FROM Production.ProductSubcategory

SELECT p1.ListPrice, p1.Name, p2.Name
FROM Production.Product as p1
INNER JOIN Production.ProductSubcategory p2 ON p2.ProductSubcategoryID = p1.ProductSubcategoryID


