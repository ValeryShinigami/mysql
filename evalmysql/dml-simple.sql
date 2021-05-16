use marathon;
-- question 1:
SELECT 
    C.CO_NOM Nom_Coureurs, C.CO_SEXE Sexe_1_Homme_2_Femme
FROM
    COUREUR C;
    
-- question 2:
SELECT 
    C.CL_NOM Clubs, C.CL_VILLE Ville
FROM
    CLUB C
WHERE
    C.CL_VILLE LIKE '%Bordeaux%'
ORDER BY C.CL_NOM;

-- question 3:
SELECT 
    C.CO_NOM Nom, C.CO_PRENOM Prenom, I.IN_TEMP_EFFECTUE Temps
FROM
    COUREUR C,
    INSCRIPTION I
WHERE
    I.IN_ID = C.CO_ID
        AND C.CO_NOM LIKE '%Villani%';
       
-- question 4:
SELECT 
    C.CO_NOM nom,
    C.CO_PRENOM prenom,
    C.CO_SEXE homme,
    C.CO_NAISSANCE date_naissance
FROM
    COUREUR C
WHERE
    C.CO_NAISSANCE >= '1991'
        AND C.CO_SEXE = '1';
 
 -- question 5:
 SELECT 
    C.CO_NOM nom,
    C.CO_PRENOM prenom
FROM
    COUREUR C
WHERE
    C.CO_NOM like '%o%';
  
 -- question 6:
 SELECT 
    C.CO_NOM nom, C.CO_PRENOM prenom, C.CO_SEXE, C.CO_NAISSANCE
FROM
    COUREUR C
WHERE
    C.CO_SEXE = '2'
        AND (C.CO_NAISSANCE BETWEEN '1922-06-15' AND '1950-10-18');

-- question 7: 
SELECT 
    CL_VILLE ville , CL_NOM nom_clubs
FROM
    CLUB
ORDER BY CL_VILLE;

-- question 8:
SELECT 
    E.EP_HEURE heures_depart, E.EP_DATE date_epreuves
FROM
    EPREUVE E
WHERE
    E.EP_DATE BETWEEN '2016-04-01' AND '2016-04-30';

-- question 9:
SELECT 
    CA_LIBELLE categorie
FROM
    CATEGORIE_AGE
WHERE
    CA_AGEDEB >= '20' AND CA_AGEFIN <= '22';

-- question 10:
SELECT 
    C.CO_PRENOM prenom,
    C.CO_NOM nom,
    C.CO_NAISSANCE date_naissance
FROM
    COUREUR C
WHERE
    (C.CO_PRENOM LIKE 'S%' OR 'B%')
        AND C.CO_NOM LIKE '%w%';




       
 
