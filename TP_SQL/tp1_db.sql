/* exerice N°1*/

CREATE TABLE ETUDIANT
(
    id_personne  INTEGER PRIMARY KEY,
    num_secu     INTEGER,
    nom          VARCHAR(35),
    prenom       VARCHAR(35),
    datNaissance DATE
);

CREATE TABLE COUR
(
    id_cour      INTEGER PRIMARY KEY,
    sigle        CHAR(10),
    intitule     VARCHAR(150),
    credit       INTEGER,
    description  TEXT,
    id_reference INTEGER REFERENCES ETUDIANT (id_personne)
);

CREATE TABLE SUIVRE
(
    id_etudiant INTEGER REFERENCES ETUDIANT (id_personne),
    id_cour     INTEGER REFERENCES COUR (id_cour),
    PRIMARY KEY (id_cour, id_etudiant),
    note        TEXT
);

/* exercice 2 */
CREATE TABLE CLIENT
(
    codeclt   INTEGER PRIMARY KEY,
    npmctl    VARCHAR(35),
    prenomctl VARCHAR(35),
    adress    VARCHAR(50),
    cp        INTEGER,
    ville     VARCHAR(35)
);

CREATE TABLE PRODUIT
(
    reference   INTEGER PRIMARY KEY,
    designateur VARCHAR(35),
    prix        INTEGER
);

CREATE TABLE TECHNICIEN
(
    codetec     INTEGER PRIMARY KEY,
    nomtec      VARCHAR(35),
    prenometc   VARCHAR(35),
    tauxhoraire INTEGER
);

CREATE TABLE INTERVENTION
(
    numero    INTEGER PRIMARY KEY,
    date      DATE,
    raison    TEXT,
    codeclt   INTEGER REFERENCES TECHNICIEN (codetec),
    reference INTEGER REFERENCES PRODUIT (reference),
    codetec   INTEGER REFERENCES TECHNICIEN (codetec)
);

/* exercice 3 */
CREATE TABLE BOISSON
(
    id      INTEGER PRIMARY KEY,
    nom     VARCHAR(60),
    marque  VARCHAR(60),
    gazeuse BOOLEAN
);

CREATE TABLE SANDWICH
(
    id         INTEGER PRIMARY KEY,
    nom        VARCHAR(60),
    crudites   BOOLEAN,
    viande     VARCHAR(20),
    vegetarien BOOLEAN,
    prix       INTEGER
);

/* a) */
ALTER TABLE BOISSON ADD a_boire INTEGER;

/* b) */
ALTER TABLE BOISSON DROP PRIMARY  KEY;
ALTER TABLE BOISSON ADD PRIMARY KEY (name, marque);

/* c) */
ALTER TABLE BOISSON DROP id;

/* d) */
ALTER TABLE SANDWICH MODIFY prix FLOAT; /* ou */ ALTER TABLE SANDWICH CHANGE prix prix FLOAT

/* e) */
ALTER TABLE SANDWICH CHANGE non designation VARCHAR(60);


