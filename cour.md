 Inserer des données 
 ```sql
INSERT INTO nom_table (colone) VALUE (valeurs);

ex: 
INSERT INTO ETUDIANT (nom, prenom, age) VALUE ('Dupnd', 'PAUL', 21);
INSERT INTO ETUDIANT (nom, age, prenon) VALUE ('Dupnd', 21, 'Paul');
INSERT INTO ETUDIANT (nom, prenom, age) VALUE ('Dupnd', 'PAUL', 21);
INSERT INTO ETUDIANT (nom, prenom, age) VALUE ('Dupnd', 'PAUL', 21);
INSERT INTO ETUDIANT VALUE (101);
```

Supprimer des données
```sql
DELETE FROM nom_table WHERE ma_condition;

ex: 
DELETE FROM ETUDIANT;
```