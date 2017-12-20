INSERT INTO `Specialiteit`VALUES (1, ' Style haar');
INSERT INTO `Specialiteit`VALUES (2, ' Kroes haar' );
INSERT INTO `Specialiteit`VALUES (3, ' Hair extensions');
INSERT INTO `Specialiteit`VALUES (4, ' Visagie');
INSERT INTO `Specialiteit`VALUES (5, ' Baarden');




#klant
INSERT INTO `klant` (`id`, `voornaam`,`tussenvoegsel`, `achternaam`, `telefoon`) VALUES (1, 'Netta','van der', 'Whaley', '0614489794');
INSERT INTO `klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (2, 'Gene', 'Adrien', '0626062796');
INSERT INTO `klant` (`id`, `voornaam`,`tussenvoegsel`, `achternaam`, `telefoon`) VALUES (3, 'Hestia', 'Cordle', '0681835756');
INSERT INTO `klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (4, 'Torre', 'Lghan', '0639226409');
INSERT INTO `klant` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (5, 'Kari', 'Lohoar', '0666879385');




#behandeling
INSERT INTO `behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('HK','Knippen (Heren)','30',19.70);
INSERT INTO `behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('KK','Knippen (Kind)','30',17.70);
INSERT INTO `behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DK','Knippen (Dames)','30',19.70);
INSERT INTO `behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DWK','WASSEN - KNIPPEN - FINISHING (Dames)','60',41.99);
INSERT INTO `behandeling` (`code`, `naam`, 	`duur`, `prijs`) VALUES ('DPK','Professional kleuring(Dames)','60',45.99);




#Medewerker
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (1, 'Bevin','Joincey',063326060);
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (2, ' Carlie', 'van der', ' Strangward', 0654325634);
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (3, ' Lisa', 'Crafter', 0674382913);
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (4, 'Ivor', 'van der', 'Plas', 0678543923);
INSERT INTO `Medewerker` (`id`, `voornaam`, `achternaam`, `telefoon`) VALUES (5, 'Etta', 'de', 'Brake', 0673542718);