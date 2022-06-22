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


/* Faça um JOIN com as tabelas abaixo que retorne uma única tabela 
 BusinessEntityId,Name,PhoneNumberTypeId,PhoneNumber */

SELECT TOP 10*
FROM Person.PhoneNumberType

SELECT TOP 10*
FROM Person.PersonPhone

SELECT tab2.BusinessEntityID, tab1.Name,tab2.PhoneNumberTypeId, tab2.PhoneNumber
FROM  Person.PhoneNumberType as tab1
INNER JOIN Person.PersonPhone tab2 ON tab2.PhoneNumberTypeID = tab1.PhoneNumberTypeID 


/* Faça um JOIN com as tabelas abaixo que retorne uma única tabela 
 AdressID,City , StateProvinceID,Nome do Estado*/

 SELECT TOP 10 *
 FROM Person.StateProvince

 SELECT TOP 10 *
 FROM Person.Address

 SELECT tab2.AddressID,tab2.City, tab1.StateProvinceID,tab1.Name
 FROM Person.StateProvince AS tab1
 INNER JOIN Person.Address as tab2 ON tab2.StateProvinceID =tab1.StateProvinceID
