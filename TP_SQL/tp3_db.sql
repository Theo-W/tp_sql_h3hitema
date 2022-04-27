CREATE TABLE ESPECE
(
    id          INT PRIMARY KEY,
    nom         VARCHAR(100),
    description VARCHAR(100)
);

CREATE TABLE ANIMALE
(
    nom    VARCHAR(80) PRIMARY KEY,
    taille INTEGER,
    poinds INTEGER,
    sexe   CHAR(1),
    espece INTEGER NOT NULL REFERENCES ESPECE (id)
);

CREATE TABLE ENCLOS
(
    numero  INTEGER PRIMARY KEY,
    surface INTEGER,
    type    VARCHAR(120)
);

CREATE TABLE OCCUPE
(
    annimal VARCHAR(80) REFERENCES ANIMALE (nom),
    enclos  INTEGER REFERENCES ENCLOS (numero),
    PRIMARY KEY (annimal, enclos)
);

/* insertion données */
INSERT INTO ESPECE (id, nom, description)
VALUES (1, 'coucou', 'coucocucoucoucocuocuocucoucouc');
INSERT INTO ESPECE (id, nom, description)
VALUES (2, 'coucou1', 'coucocucoucoucocuocuocucoucouc');
INSERT INTO ESPECE (id, nom, description)
VALUES (3, 'coucou2', 'coucocucoucoucocuocuocucoucouc');
INSERT INTO ESPECE (id, nom, description)
VALUES (4, 'coucou3', 'coucocucoucoucocuocuocucoucouc');
INSERT INTO ESPECE (id, nom, description)
VALUES (5, 'coucou4', 'coucocucoucoucocuocuocucoucouc');

INSERT INTO ANIMALE (nom, taille, poinds, sexe, espece)
VALUES ('animal 1', 180, 200, 'M', 1);
INSERT INTO ANIMALE (nom, taille, poinds, sexe, espece)
VALUES ('animal 2', 180, 200, 'F', 2);
INSERT INTO ANIMALE (nom, taille, poinds, sexe, espece)
VALUES ('animal 3', 180, 200, 'M', 3);
INSERT INTO ANIMALE (nom, taille, poinds, sexe, espece)
VALUES ('animal 4', 180, 200, 'F', 4);
INSERT INTO ANIMALE (nom, taille, poinds, sexe, espece)
VALUES ('animal 5', 180, 200, 'M', 5);

INSERT INTO ENCLOS (numero, surface, type)
VALUES (1, 30, 'ouuuuuuuuuuuuuuuuuuuuuuuuuuf');
INSERT INTO ENCLOS (numero, surface, type)
VALUES (2, 30, 'ouuuuuuuuuuuuuuuuuuuuuuuuuuf');
INSERT INTO ENCLOS (numero, surface, type)
VALUES (3, 30, 'ouuuuuuuuuuuuuuuuuuuuuuuuuuf');
INSERT INTO ENCLOS (numero, surface, type)
VALUES (4, 30, 'ouuuuuuuuuuuuuuuuuuuuuuuuuuf');
INSERT INTO ENCLOS (numero, surface, type)
VALUES (5, 30, 'ouuuuuuuuuuuuuuuuuuuuuuuuuuf');

INSERT INTO OCCUPE (annimal, enclos)
VALUES ('animal 2', 2);
INSERT INTO OCCUPE (annimal, enclos)
VALUES ('animal 3', 1);
INSERT INTO OCCUPE (annimal, enclos)
VALUES ('animal 1', 5);
INSERT INTO OCCUPE (annimal, enclos)
VALUES ('animal 4', 3);
INSERT INTO OCCUPE (annimal, enclos)
VALUES ('animal 5', 4);

SELECT *
FROM ANIMALE
INNER JOIN ESPECE
WHERE ANIMALE.espece = ESPECE.id;

SELECT *
FROM ANIMALE, ESPECE
WHERE ANIMALE.espece = ESPECE.id;

SELECT ANIMALE.nom, ESPECE.description
FROM ESPECE, ANIMALE
WHERE ESPECE.nom = 'coucou1' AND  id = espece;