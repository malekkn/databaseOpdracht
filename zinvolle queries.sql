#query nummer 1
SELECT * FROM medewerker WHERE voornaam LIKE 'carlie%';

#query nummer 2
SELECT CONCAT(voornaam, " ", IFNULL(tussenvoegsel,' '), " ",  achternaam) AS Klanten 
FROM kapperszaak.Klant 
WHERE voornaam LIKE 'Torre';

#query nummer 3
SELECT * FROM Medewerker 
INNER JOIN Afspraak 
ON Medewerker.id =  Afspraak.Medewerker_id 
WHERE Datum_tijd > 2018-01-02;

#query nummer 4
SELECT * FROM Medewerker 
INNER JOIN Specialiteit 
ON Medewerker.id = Specialiteit.id  
WHERE Specialiteit.naam 
LIKE '% extensions';

#query nummer 5
SELECT AVG(prijs)
FROM Behandeling 
WHERE naam <> "Knippen (Dames)"; 

#query nummer 6
SELECT id, voornaam, achternaam  
FROM medewerker 
WHERE id = (SELECT MAX(id) AS max_id FROM medewerker);

#query nummer 7
SELECT afspraak.Datum_tijd, medewerker.voornaam AS medewerker, klant.achternaam 
AS klant, behandeling.naam AS behandeling , behandeling.duur, behandeling.prijs
FROM ((((afspraak 
INNER JOIN klant on afspraak.klant_id = klant.id)
INNER JOIN medewerker on afspraak.Medewerker_id = medewerker.id)
INNER JOIN afspraak_has_behandeling on afspraak.Datum_tijd = afspraak_has_behandeling.Afspraak_Datum_tijd)
INNER JOIN behandeling on afspraak_has_behandeling.Behandeling_Code = behandeling.Code)
WHERE medewerker.id = (SELECT id FROM medewerker WHERE voornaam LIKE 'bevin');

#query nummer 8
SELECT CONCAT(voornaam, " ", tussenvoegsel, " ",  achternaam) 
AS  Medewerkers, telefoon 
FROM   kapperszaak.medewerker 
WHERE tussenvoegsel IS NOT NULL;

#query nummer 9
SELECT voornaam, tussenvoegsel, achternaam, telefoon 
FROM klant 
WHERE voornaam LIKE 'Netta';

#query nummer 10
SELECT * FROM kapperszaak.afspraak
WHERE datum_tijd >='2018-01-01 00:00:00'
AND datum_tijd <'2018-01-02 00:00:00'
ORDER BY datum_tijd ASC;

#query nummer 11
SELECT naam, COUNT(naam) AS aantal, duur,prijs 
FROM behandeling
WHERE prijs > 18
GROUP BY prijs
HAVING behandeling.duur >= 30;

#query nummer 12
SELECT naam, duur, prijs 
FROM behandeling 
WHERE prijs=(
		SELECT MAX(prijs) 
		FROM behandeling);
