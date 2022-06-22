-- SQL JOINS

--CRIANDO AS TABELAS 

CREATE TABLE TabelaA(
  Id int,
  Nome varchar(50) NULL
)
CREATE TABLE TabelaB(
  Id int,
  Nome varchar(50) NULL
)
--**************************************************************

--INSERINDO DADOS

INSERT INTO TabelaA VALUES(1,'Robo')
INSERT INTO TabelaA VALUES(2,'Macaco')
INSERT INTO TabelaA VALUES(3,'Samurai')
INSERT INTO TabelaA VALUES(4,'Monitor')

INSERT INTO TabelaB VALUES(1,'Espada')
INSERT INTO TabelaB VALUES(2,'Robo')
INSERT INTO TabelaB VALUES(3,'Mario')
INSERT INTO TabelaB VALUES(4,'Samurai')

--**************************************************************

--APAGANDO AS TABELAS CRIADAS 

DROP TABLE TabelaA
DROP TABLE TabelaB

--**************************************************************

SELECT *
FROM TabelaA

SELECT *
FROM TabelaB

--INNER JOIN
SELECT a.Nome, b.Nome
FROM TabelaA as A
INNER JOIN TabelaB as B on a.Nome = b.Nome

--**************************************************************
--FULL OUTER JOIN
SELECT *
FROM TabelaA as A
FULL OUTER JOIN TabelaB as B on a.Nome = b.Nome

--**************************************************************
--LEFT JOIN
SELECT *
FROM TabelaA as A
LEFT JOIN TabelaB as B on a.Nome = b.Nome

--**************************************************************
--RIGHT JOIN
SELECT *
FROM TabelaA as A
RIGHT JOIN TabelaB as B on a.Nome = b.Nome

--**************************************************************


