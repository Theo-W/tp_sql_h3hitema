/* Avion */
CREATE TABLE AVION
(
    immatriculation  INT PRIMARY KEY,
    nom              VARCHAR(20),
    constructeur     VARCHAR(30),
    capacite         INT,
    nombre_reacteurs INT,
    largeur           INT
);

CREATE TABLE VILLE
(
    nom         VARCHAR(100),
    code_postal CHAR(10) PRIMARY KEY
);

CREATE TABLE VOL
(
    id            int PRIMARY KEY,
    designation   VARCHAR(100),
    ville_origine CHAR(10) REFERENCES VILLE (code_postal),
    ville_arrivee CHAR(10) REFERENCES VILLE (code_postal),
    avion         INT (20) REFERENCES AVION (immatriculation),
    date_depart   DATE,
    date_arrivee  DATE,
    duree          INT
);

CREATE TABLE PASSAGER
(
    id     INT PRIMARY KEY,
    nom    VARCHAR(80),
    prenom VARCHAR(80),
    poids  INT,
    vol    INT REFERENCES VOL (id)
);

/* question 3 */
--a)
SELECT nom, capacite FROM AVION WHERE  AVION.capacite BETWEEN 200 AND 300 ORDER BY capacite ASC;

--b)
SELECT nom, largeur / 100 FROM AVION;

--c)
SELECT COUNT( * ) FROM AVION WHERE capacite > 300;

--d)
SELECT COUNT( * ) FROM PASSAGER WHERE poids BETWEEN 80 AND 90;
SELECT nom, prenom FROM PASSAGER WHERE poids BETWEEN 80 AND 90;

--e)
SELECT vol,  SUM(poids), SUM(poids / 100) FROM PASSAGER WHERE vol = 71;

--f)
SELECT MAX(id)
SELECT code_postal FROM VILLE WHERE nom = "GIELE" OR nom = "DUBIN"
INSERT INTO vol(id,designation,avion,ville_origine,ville_arrivee,date_depart) VALUES(160+1,'Trajet Spécial',121,2465444463,8014508425,STR_TO_DATE('17/03/2016','%d/%m/%y'));

-- g)
SELECT designation, date_depart, nom FROM VOL, AVION
WHERE avion = immatriculation;

-- h)
SELECT MAX(nombre_passager) FROM
SELECT vol, COUNT(nom) AS nombre_passager FROM PASSAGER GROUP BY vol;

SELECT COUNT(id) AS total, vol FROM PASSAGER
    GROUP BY vol HAVING
    total = (SELECT MAX(total) FROM (SELECT COUNT (id) AS total, vol FROM PASSAGER GROUP BY vol) AS t);

-- i)
SELECT VOL.*, capacite FROM VOL, AVION
WHERE avion = immatriculation
AND capacite BETWEEN 150 AND 400;

--j)
SELECT COUNT (id), ville_origine FROM VOL GROUP BY ville_origine;

SELECT COUNT((id) AS cpt, ville_origine, nom
    FROM VOL, VILLE
    GROUP BY ville_origine
    HAVING cpt=(SELECT MAX(total) FROM (SELECT COUNT(id) AS total, ville_origine FROM VOL GROUP BY ville_origine) AS t);

--k)
SELECT SUM(poids), vol FROM PASSAGER GROUP BY vol;

SELECT SUM(poids) AS ptotal, vol FROM PASSAGER GROUP BY vol
HAVING ptotal = (SELECT MAX(p) FROM (SELECT SUM(poids) AS p,vol FROM PASSAGER GROUP BY vol) ASt);