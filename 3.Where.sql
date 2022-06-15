
/*
OPERADOR - DESCRI��O
=		 - IGUAL
>		 - MAIOR QUE 
<        - MENOR QUE
>=		 - MAIOR QUE OU IGUAL  
<=       - MENOR QUE OU IGUAL
<>		 - DIFERENTE DE
AND		 - OPERADOR L�GICO E 
OR       - OPERADOR L�GICO OU
*/


/* Selecione uma lista s� com os sobrenome Miller */
SELECT *
FROM Person.Person
WHERE LastName = 'miller'

/* Selecione uma lista s� com os sobrenome Miller e Anna */
SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

/* Selecione uma lista s� produtos Azul e Preto*/
SELECT *
FROM Production.Product 
WHERE Color = 'blue' or  Color = 'black'


/* Selecione uma lista s� produtos com pre�o  acima de 1500*/

SELECT *
FROM Production.Product
WHERE ListPrice > 1500

/* Selecione uma lista s� produtos que n�o sejam vermelhos */
SELECT *
FROM Production.Product 
WHERE Color <> 'Red'

/* Selecione uma lista s� produtos com pre�o  entre 1500 e 5000*/

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

/*DESAFIO 3*/

/*1. A equipe de produ��o de produtos presisa do nome de todas
as pe�as que pesam mais que 500kg mas n�o mais de 700kg para inspe��o*/


SELECT Name, Weight
FROM Production.Product
WHERE Weight > 500 AND Weight < 700

/* 2. Foi pedido pelo marketing uma rela��o de todos
os empregados (employees) que s�o casados  e s�o asalariados */

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1

/*3 Um usu�rio chamado Peter Krebs est� devendo um pagamento,
consiga o email dele para que possamos enviar uma cobran�a 
Dica person.person e person.emailaddress */

SELECT*
FROM person.person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

Select *
FROM person.EmailAddress
WHERE BusinessEntityID = 26



