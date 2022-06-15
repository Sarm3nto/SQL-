/*LIKE*/

/*busca do começo */
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
/*busca do começo até o primeiro caractere */
SELECT*
FROM Person.Person
WHERE FirstName LIKE '%ro_'