""" Avec les tables mysql suivantes, écrivez la requête pour sortir la liste des emails des clients qui ont un centre d'intérêt = "VTT" et
qui n'ont pas encore acheté de forfait pour l'été 2023 :

Tables:

Columns from table "client_stations":
id_client
email
age
genre
centres_interet

Columns from table "client_skipass":
id_skipass
prenom
nom
email
age

Columns from table "achat_skipass":
id_skipass
type_forfait
date_achat
debut_validite
fin_validite """



SELECT DISTINCT c.email
FROM client_stations c
LEFT JOIN client_skipass s ON c.email = s.email
LEFT JOIN achat_skipass a ON s.id_skipass = a.id_skipass
WHERE c.centres_interet LIKE '%VTT%'
AND a.type_forfait IS NULL
AND a.debut_validite >= '2023-06-01'
AND a.fin_validite <= '2023-09-30'


