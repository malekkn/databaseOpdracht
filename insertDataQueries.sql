INSERT INTO `Specialiteit`VALUES (1, ' Style haar');
INSERT INTO `Specialiteit`VALUES (2, ' Kroes haar' );
INSERT INTO `Specialiteit`VALUES (3, ' Hair extensions');
INSERT INTO `Specialiteit`VALUES (4, ' Visagie');
INSERT INTO `Specialiteit`VALUES (5, ' Baarden');




#klan
INSERT INTO `Klant` (`id`, `voornaam`,`tussenvoegsel`, `achternaam`, `telefoon`) VALUES (1, 'Netta','van der', 'Whaley', '0614489794');
INSERT INTO `Klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (2, 'Gene', 'Adrien', '0626062796');
INSERT INTO `Klant` (`id`, `voornaam`,`tussenvoegsel`, `achternaam`, `telefoon`) VALUES (3, 'Hestia', 'van','Cordle', '0681835756');
INSERT INTO `Klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (4, 'Torre', 'Lghan', '0639226409');
INSERT INTO `Klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (5, 'Kari', 'Lohoar', '0666879385');




#behandeling
INSERT INTO `Behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('HK','Knippen (Heren)','30',19.70);
INSERT INTO `Behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('KK','Knippen (Kind)','30',17.70);
INSERT INTO `Behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DK','Knippen (Dames)','30',19.70);
INSERT INTO `Behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DWK','WASSEN - KNIPPEN - FINISHING (Dames)','60',41.99);
INSERT INTO `Behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DPK','Professional kleuring(Dames)','60',45.99);




#Medewerker
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (1, 'Bevin','Joincey',063326060);
INSERT INTO `Medewerker` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `telefoon`) VALUES (2, 'Carlie', 'van der', ' Strangward', 0654325634);
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (3, 'Lisa', 'Crafter', 0674382913);
INSERT INTO `Medewerker` (`id`, `voornaam`, `tussenvoegsel`,`achternaam`, `telefoon`) VALUES (4, 'Ivor', 'van der', 'Plas', 0678543923);
INSERT INTO `Medewerker` (`id`, `voornaam`, `tussenvoegsel`,`achternaam`, `telefoon`) VALUES (5, 'Etta', 'de', 'Brake', 0673542718);




#afspraak
INSERT INTO `kapperszaak`.`Afspraak` (`Datum_tijd`, `Klant_id`, `Medewerker_id`) VALUES ('2018-01-01 12:00:00', '2', '4');
INSERT INTO `kapperszaak`.`Afspraak` (`Datum_tijd`, `Klant_id`, `Medewerker_id`) VALUES ('2018-01-01 11:00:00', '1', '3');
INSERT INTO `kapperszaak`.`Afspraak` (`Datum_tijd`, `Klant_id`, `Medewerker_id`) VALUES ('2018-01-01 10:00:00', '3', '1');
INSERT INTO `kapperszaak`.`Afspraak` (`Datum_tijd`, `Klant_id`, `Medewerker_id`) VALUES ('2018-01-01 12:30:00', '5', '5');
INSERT INTO `kapperszaak`.`Afspraak` (`Datum_tijd`, `Klant_id`, `Medewerker_id`) VALUES ('2018-02-01 09:30:00', '4', '2');




#Afspraak_has_behandeling
INSERT INTO `kapperszaak`.`Afspraak_has_Behandeling` (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`, `Behandeling_Code`) VALUES ('2', '2018-01-01 12:00:00', 'DK');
INSERT INTO `kapperszaak`.`Afspraak_has_Behandeling` (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`, `Behandeling_Code`) VALUES ('1', '2018-01-01 11:00:00', 'DWK');
INSERT INTO `kapperszaak`.`Afspraak_has_Behandeling` (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`, `Behandeling_Code`) VALUES ('3', '2018-01-01 10:00:00', 'DPK');
INSERT INTO `kapperszaak`.`Afspraak_has_Behandeling` (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`, `Behandeling_Code`) VALUES ('5', '2018-01-01 12:30:00', 'HK');
INSERT INTO `kapperszaak`.`Afspraak_has_Behandeling` (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`, `Behandeling_Code`) VALUES ('4', '2018-02-01 09:30:00', 'DK');