use marathon;
-- DML JOINTURES
-- exercice 1:
SELECT 
    M.MA_NOM, C.CH_DATEDEB, C.CH_NOM
FROM
    MANIFESTATION M
        JOIN
    CHAMPIONNAT C ON M.MA_CHAMP_FK = C.CH_ID;

-- exercice 2:
SELECT 
    C.CO_PRENOM, C.CO_SEXE, A.AD_ANNEE, CL.CL_NOM
FROM
    COUREUR C,
    ADHESION A,
    CLUB CL
WHERE
    C.CO_ID = A.AD_COUREUR_FK
        AND CL.CL_ID = A.AD_CLUB_FK
        AND C.CO_SEXE = '2'
        AND A.AD_ANNEE = '2015';
 
 -- exercie 3:
 SELECT 
    I.IN_TEMP_EFFECTUE, T.TY_LIBELLE, M.MA_NOM, E.EP_DATE
FROM
    INSCRIPTION I,
    TYPE_EPREUVE T,
    MANIFESTATION M,
    EPREUVE E
WHERE
    E.EP_ID = I.IN_EPREUVE_FK
        AND M.MA_ID = E.EP_MANIF_FK
        AND T.TY_ID = E.EP_TYPE_FK
        AND T.TY_LIBELLE = 'Semi marathon'
        AND M.MA_NOM = 'Marathon de Bordeaux'
        AND E.EP_DATE LIKE '2016%';
 
 
 -- exercice 4:
 -- à refaire
 select
 C.CO_PRENOM, CL.CL_NOM, MANIFESTATION.MA_NOM
 from
 COUREUR C, 
 ADHESION A, 
 CLUB CL,
 MANIFESTATION
where
C.CO_ID = A.AD_COUREUR_FK
and CL.CL_ID = A.AD_CLUB_FK
and CL.CL_NOM = 'La foulée arcachonnaise';

-- exercice 5:
SELECT 
    C.CO_PRENOM
FROM
    COUREUR C
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            ADHESION A,
            CLUB CL
        WHERE
            C.CO_ID = A.AD_COUREUR_FK
                AND CL.CL_ID = A.AD_CLUB_FK);
                
-- exercice 6:
-- a refaire
select
c.CO_NOM, m.MA_NOM, i.IN_TEMP_EFFECTUE, e.EP_DATE
from
COUREUR c,
MANIFESTATION m,
INSCRIPTION i,
EPREUVE e
where
m.MA_ID = e.EP_MANIF_FK
and c.CO_ID = i.IN_COUREUR_FK
and e.EP_ID = i.IN_EPREUVE_FK;

-- exercice 7:
select
C.CO_PRENOM, C.CO_SEXE
from
COUREUR C,
INSCRIPTION I,
CATEGORIE_AGE CA
where
C.CO_ID = I.IN_COUREUR_FK
AND CA.CA_ID = I.IN_CATEG_AGE_FK AND
CA.CA_LIBELLE = 'Masters' and C.CO_SEXE = '2' ;

-- exercice 8:
SELECT 
    C.CO_PRENOM
FROM
    COUREUR C
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            INSCRIPTION I
        WHERE
            C.CO_ID = I.IN_COUREUR_FK );
            
-- exercice 9:
SELECT 
    C.CO_NOM, C.CO_PRENOM, CL_NOM, A.AD_ANNEE
FROM
    COUREUR C,
    ADHESION A,
    CLUB CL
WHERE
    (C.CO_ID = A.AD_COUREUR_FK
        AND CL.CL_ID = A.AD_CLUB_FK)
        AND CL.CL_NOM = 'Les scientifiques font du sport'
        AND A.AD_ANNEE = '2016'
ORDER BY C.CO_NOM;

-- exercice 10:
SELECT 
    CONCAT(C.CO_PRENOM, ' ', C.CO_NOM) Prenom_Nom,
    M.MA_NOM,
    I.IN_TEMP_EFFECTUE,
    E.EP_DATE
FROM
    COUREUR C,
    INSCRIPTION I,
    MANIFESTATION M,
    EPREUVE E
WHERE
    CO_ID = I.IN_COUREUR_FK
        AND E.EP_ID = I.IN_EPREUVE_FK
        AND M.MA_ID = E.EP_MANIF_FK
        AND I.IN_TEMP_EFFECTUE > '03:00:00'












                









 

 
 
 
 



