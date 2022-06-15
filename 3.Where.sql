
/*
OPERADOR - DESCRIÇÃO
=		 - IGUAL
>		 - MAIOR QUE 
<        - MENOR QUE
>=		 - MAIOR QUE OU IGUAL  
<=       - MENOR QUE OU IGUAL
<>		 - DIFERENTE DE
AND		 - OPERADOR LÓGICO E 
OR       - OPERADOR LÓGICO OU
*/


/* Selecione uma lista só com os sobrenome Miller */
SELECT *
FROM Person.Person
WHERE LastName = 'miller'

/* Selecione uma lista só com os sobrenome Miller e Anna */
SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

/* Selecione uma lista só produtos Azul e Preto*/
SELECT *
FROM Production.Product 
WHERE Color = 'blue' or  Color = 'black'


/* Selecione uma lista só produtos com preço  acima de 1500*/

SELECT *
FROM Production.Product
WHERE ListPrice > 1500

/* Selecione uma lista só produtos que não sejam vermelhos */
SELECT *
FROM Production.Product 
WHERE Color <> 'Red'

/* Selecione uma lista só produtos com preço  entre 1500 e 5000*/

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

/*DESAFIO 3*/

/*1. A equipe de produção de produtos presisa do nome de todas
as peças que pesam mais que 500kg mas não mais de 700kg para inspeção*/


SELECT Name, Weight
FROM Production.Product
WHERE Weight > 500 AND Weight < 700

/* 2. Foi pedido pelo marketing uma relação de todos
os empregados (employees) que são casados  e são asalariados */

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1

/*3 Um usuário chamado Peter Krebs está devendo um pagamento,
consiga o email dele para que possamos enviar uma cobrança 
Dica person.person e person.emailaddress */

SELECT*
FROM person.person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

Select *
FROM person.EmailAddress
WHERE BusinessEntityID = 26



