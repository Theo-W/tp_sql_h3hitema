/* exercice 1 */
a) VARCHAR (9)
b) CHAR(5)
c) INTEGER
d) VARCHAR (8)
e) CHAR(10)
f) VARCHAR (255)

/* exercice 2 */
a)
CREATE TABLE PERSONNE
(
    id_personne INT PRIMARY KEY,
    nom         VARCHAR(35),
    prenon      VARCHAR(35)
);

CREATE TABLE FILM
(
    id_film        INT PRIMARY KEY,
    titre          VARCHAR(100),
    genre          VARCHAR(35),
    annee          CHAR(4),
    id_realisateur INTEGER REFERENCES PERSONNE (id_personne)
);

b)
INSERT INTO PERSONNE VALUE (1, 'Theo', 'WITTIG');
INSERT INTO PERSONNE VALUE (2, 'Theo1', 'WITTIG1');
INSERT INTO PERSONNE VALUE (3, 'Theo2', 'WITTIG2');
INSERT INTO PERSONNE VALUE (4, 'Theo3', 'WITTIG3');
INSERT INTO PERSONNE VALUE (5, 'Theo4', 'WITTIG4');

INSERT INTO FILM
VALUES (1, 'le plouque', 'drole', '2021', 1);
INSERT INTO FILM
VALUES (2, 'le plouque de paris', 'drole', '2021', 2);
INSERT INTO FILM
VALUES (3, 'le plouque de lille', 'drole', '2021', 3);
INSERT INTO FILM
VALUES (4, 'le plouque de bretagne qui manque des calettes', 'drole', '2021', 4);
INSERT INTO FILM
VALUEs (5, 'le plouque du sub avec sa chocolatine', 'drole', '2021', 5);

c)
DELETE
FROM FILM
WHERE annee < 1995;

d)
DROP TABLE FILM;

e)
ALTER TABLE PERSONNE add email varchar(80);
UPDATE PERSONNE SET email = 'void@void.com';
ou
ALTER TABLE PERSONNE ADD email VARCHAR(80);
UPDATE PERSONNE SET email = 'void@void.com' WHERE IS NULL;
f)
CREATE TABlE
(
    id_film        INT PRIMARY KEY,
    titre          VARCHAR(100),
    genre          VARCHAR(35),
    annee          CHAR(4),
    id_realisateur INTEGER REFERENCES PERSONNE (id_personne)
);


UPDATE FILM SET titre = CONCAT(titre, "sortie ...") WHERE annee = 2020;
g)
INSERT INTO PERSONNE VALUES (4, 'MENSES', 'SAM');
INSERT INTO FILM VALUES (12, 4, '007 Spectre', 'Episode', 2025);

/* exercice 3 */
CREATE TABLE ETUDIANT (
    id INT PRIMARY KEY,
    prenom VARCHAR (200),
    nom VARCHAR (200),
    classe CHAR(2),
    telephone CHAR(10),
    ville_residence VARCHAR (200),
    cp_residence CHAR (5),
    login CHAR (10),
    nombre_connexions INTEGER
 )

a)
ALTER TABLE ETUDIANT ADD date_de_naissance DATE;

b)
UPDATE ETUDIANT SET date_de_naissance = '1996-04-17' WHERE id = 18;

c)
UPDATE ETUDIANT SET classe = '5B' WHERE classe = '5A';

d)
DELETE FROM ETUDIANT WHERE classe = '1A' AND (id < 75 OR id > 75);

e)
UPDATE ETUDIANT SET nombre_connexions = 0
WHERE (classe = '3A' OR WHERE classe = '3i')
AND WHERE nombre_connexions > 57
AND WHERE  AND MOD(nombre_connexions, 2) = 0;

/* exercice 4 */
a)
SELECT classe FROM ETUDIANT WHERE classe = '1A',

b)
SELECT classe FROM ETUDIANT WHERE classe = '1A' OR classe = '2A';

c)
SELECT classe FROM ETUDIANT WHERE classe != '3i';

d)
SELECT * FROM ETUDIANT WHERE nombre_connexions > 55
AND classe = '4i'
ANS SUBSTR(nom, 1, 1) = 'H';

e)
SELECT nom, prenom FROM ETUDIANT WHERE classe = '1A' ORDER BY nombre_connexions ASC;
SELECT * FROM ETUDIANT WHERE nombre_connexions = (SELECT MAX(nombre_connexions) FROM ETUDIANT);
