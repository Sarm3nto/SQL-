/*LIKE*/

/*busca do come�o */
SELECT*
FROM Person.Person
WHERE FirstName LIKE 'ovi%'

/*busca do fim */
SELECT*
FROM Person.Person
WHERE FirstName LIKE '%to'
/*busca do meio */
SELECT*
FROM Person.Person
WHERE FirstName LIKE '%essa%'
/*busca do come�o at� o primeiro caractere */
SELECT*
FROM Person.Person
WHERE FirstName LIKE '%ro_'