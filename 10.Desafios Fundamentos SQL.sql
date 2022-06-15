/*DESAFIOS DOS FUNDAMENTOS DO SQL*/ 

/*1.DESAFIO 
*Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares?*/
SELECT count (Name)
FROM Production.Product
WHERE ListPrice > 1500

/*2.DESAFIO
Quantas pessoas temos com o sobrenome que inicia com a letra P*/
SELECT count (LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

/*3.DESAFIO
Em quantas cidades únicas estão cadastradas nossas clientes? */
SELECT COUNT (DISTINCT(city))
FROM Person.Address

/*4.DESAFIO 
Quais são as cidades únicas cadatradas em nosso sistema?*/

SELECT DISTINCT city
FROM Person.Address
ORDER BY City

/*5.DESAFIO
Quantos produtos vermelhos tem o preço entre 500 a 1000 dolares ? */

SELECT  count(*)
FROM Production.Product
WHERE color = 'RED' and ListPrice between 500 and 1000;

/*6.DESAFIO
Quantos produtos tem cadastrados tem a palavra road no nome deles ? */
SELECT count(*)
FROM Production.Product
WHERE Name LIKE '%road%' 