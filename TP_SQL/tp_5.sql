/* Exercice 1 */
DELIMITER |
CREATE TRIGGER trg_change_salaire
    BEFORE INSERT
    ON EMPLOYE
    FOR EACH ROW
BEGIN
    IF new.salaire IS NULL THEN
        SET new.salaire := 1480;
    end if;
end |

/* Exercice 2 */
DELIMITER |
CREATE TRIGGER trg_plus_salaire
    BEFORE INSERT
    ON EMPLOYE
    FOR EACH ROW
BEGIN
    IF new.ville = 'paris' THEN
        SET salaire := salaire + ( salaire *  5 ) / 100;
    ELSE
        SET salaire := salaire + ( salaire * 10 ) / 100;
    end if;
end |

/* Exercice 3 */
DELIMITER |
CREATE TRIGGER trg_verify_name
    BEFORE INSERT
    ON EMPLOYE
    FOR EACH ROW
BEGIN
        SET nom := UPPER(new.nom);
end |

/* Exercice 4 */
DELIMITER |
CREATE TRIGGER trg_test_date
    BEFORE INSERT
    ON EMPLOYE
    FOR EACH ROW
BEGIN
    IF new.embauche >= YEAR() OR new.embauche <= YEAR() THEN
        SET new.embauche := YEAR(new.embauche);
    end if;
end |

/* Exercice 5 */
DELIMITER |
CREATE TRIGGER trg_name_composer
    BEFORE INSERT
    ON EMPLOYE
    FOR EACH ROW
BEGIN
    IF nom = LOCATE(nom, '-') THEN

    end if;
end |
