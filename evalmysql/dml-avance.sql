use marathon;
-- DML-AVANCE
-- exercice 1:

SELECT 
    DATE_FORMAT(EP_DATE, '%Y %M %c') Jours_Mois_2016
FROM
    EPREUVE
WHERE
    EP_DATE LIKE '2016%';

-- exercice 2:
select
CO_ID, CONCAT(CO_PRENOM, ' ', CO_NOM,  CO_NAISSANCE) as coureurs_homme
from
COUREUR

where CO_SEXE = '1';

-- exercice 3:
-- en attente

-- exercice 4:
SELECT 
    CO_NOM NOM,
    CO_PRENOM PRENOM,
    CO_NAISSANCE NAISSANCE,
    REPLACE(REPLACE(CO_SEXE, '1', 'homme'),
        '2',
        'femme') SEXE
FROM
    COUREUR
WHERE
    CO_NAISSANCE BETWEEN '1930-01-01' AND '1960-12-31'
ORDER BY CO_NAISSANCE;

-- exercice 5:
SELECT 
    CL_NOM NOM
FROM
    CLUB
WHERE
    CL_NOM NOT LIKE 'les%';

-- exercice 6 :
SELECT 
    CONCAT(CO_PRENOM, ' ', CO_NOM) Nom_Prenom,
    SUBSTR(CO_NAISSANCE, 6, 10) Mois_Naissance
FROM
    COUREUR
WHERE
    SUBSTR(CO_NAISSANCE, 6, 10) LIKE '01%'
        OR SUBSTR(CO_NAISSANCE, 6, 10) LIKE '04%';

-- exercice 7:
-- meme énoncé que exercice 6 :-)

-- exercice 8:
SELECT 
    CA_AGEDEB, CA_AGEFIN, CA_LIBELLE
FROM
    CATEGORIE_AGE
WHERE
    (CA_LIBELLE LIKE 'M%'
        OR CA_LIBELLE LIKE 'B%');

-- exercice 9:
select
left(CL_NOM, 15) quinze_1er_caracteres, CL_VILLE ville
from
CLUB
where
CL_VILLE = 'Bordeaux';

-- exercice 10:
SELECT 
    REPLACE(CO_PRENOM, 'é', 'e') prenom_sans_é
FROM
    COUREUR




















