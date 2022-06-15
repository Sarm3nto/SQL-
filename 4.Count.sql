/*
COUNT
*/
SELECT COUNT(*)
FROM Person.Person

SELECT COUNT (DISTINCT title) as qtd
FROM Person.Person

/*1 Desafio
Quantos produtos temos temos cadastrados em nossa tabela de produtos?*/

SELECT count (*)
FROM Production.Product

/*2 Desafio
Quantos tamanhos de produtos  temos cadastrados na tabela production.product? */
SELECT  count (Size)
FROM Production.Product

/*3 Desafio*
Quantos tamanhos diferentes  de produtos  temos cadastrados na tabela production.product?*/
SELECT  count (DISTINCT SizeUnitMeasureCode)
FROM Production.Product