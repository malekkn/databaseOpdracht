-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kapperszaak
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `afspraak`
--

DROP TABLE IF EXISTS `afspraak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afspraak` (
  `Datum_tijd` datetime NOT NULL,
  `Klant_id` int(11) NOT NULL,
  `Medewerker_id` int(11) NOT NULL,
  PRIMARY KEY (`Klant_id`,`Datum_tijd`),
  KEY `fk_Afspraak_Klant1_idx` (`Klant_id`),
  KEY `fk_Afspraak_Medewerker1_idx` (`Medewerker_id`),
  CONSTRAINT `fk_Afspraak_Klant1` FOREIGN KEY (`Klant_id`) REFERENCES `klant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Afspraak_Medewerker1` FOREIGN KEY (`Medewerker_id`) REFERENCES `medewerker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afspraak`
--

LOCK TABLES `afspraak` WRITE;
/*!40000 ALTER TABLE `afspraak` DISABLE KEYS */;
INSERT INTO `afspraak` VALUES ('2018-01-01 10:00:00',3,1),('2018-02-01 09:30:00',4,2),('2018-01-01 11:00:00',1,3),('2018-01-01 12:00:00',2,4),('2018-01-01 12:30:00',5,5);
/*!40000 ALTER TABLE `afspraak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `afspraak_has_behandeling`
--

DROP TABLE IF EXISTS `afspraak_has_behandeling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afspraak_has_behandeling` (
  `Afspraak_Klant_id` int(11) NOT NULL,
  `Afspraak_Datum_tijd` datetime NOT NULL,
  `Behandeling_Code` varchar(4) NOT NULL,
  PRIMARY KEY (`Afspraak_Klant_id`,`Afspraak_Datum_tijd`,`Behandeling_Code`),
  KEY `fk_Afspraak_has_Behandeling_Behandeling1_idx` (`Behandeling_Code`),
  KEY `fk_Afspraak_has_Behandeling_Afspraak1_idx` (`Afspraak_Klant_id`,`Afspraak_Datum_tijd`),
  CONSTRAINT `fk_Afspraak_has_Behandeling_Afspraak1` FOREIGN KEY (`Afspraak_Klant_id`, `Afspraak_Datum_tijd`) REFERENCES `afspraak` (`Klant_id`, `Datum_tijd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Afspraak_has_Behandeling_Behandeling1` FOREIGN KEY (`Behandeling_Code`) REFERENCES `behandeling` (`Code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afspraak_has_behandeling`
--

LOCK TABLES `afspraak_has_behandeling` WRITE;
/*!40000 ALTER TABLE `afspraak_has_behandeling` DISABLE KEYS */;
INSERT INTO `afspraak_has_behandeling` VALUES (1,'2018-01-01 11:00:00','DWK'),(2,'2018-01-01 12:00:00','DK'),(3,'2018-01-01 10:00:00','DPK'),(4,'2018-02-01 09:30:00','DK'),(5,'2018-01-01 12:30:00','HK');
/*!40000 ALTER TABLE `afspraak_has_behandeling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behandeling`
--

DROP TABLE IF EXISTS `behandeling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behandeling` (
  `Code` varchar(4) NOT NULL,
  `naam` varchar(45) NOT NULL,
  `duur` varchar(45) NOT NULL,
  `prijs` int(11) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behandeling`
--

LOCK TABLES `behandeling` WRITE;
/*!40000 ALTER TABLE `behandeling` DISABLE KEYS */;
INSERT INTO `behandeling` VALUES ('DK','Knippen (Dames)','30',20),('DPK','Professional kleuring(Dames)','60',46),('DWK','WASSEN - KNIPPEN - FINISHING (Dames)','60',42),('HK','Knippen (Heren)','30',20),('KK','Knippen (Kind)','30',18);
/*!40000 ALTER TABLE `behandeling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klant`
--

DROP TABLE IF EXISTS `klant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klant` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(45) NOT NULL,
  `tussenvoegsel` varchar(45) DEFAULT NULL,
  `achternaam` varchar(45) NOT NULL,
  `telefoon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klant`
--

LOCK TABLES `klant` WRITE;
/*!40000 ALTER TABLE `klant` DISABLE KEYS */;
INSERT INTO `klant` VALUES (1,'Netta','van der','Whaley',614489794),(2,'Gene',NULL,'Adrien',626062796),(3,'Hestia',NULL,'Cordle',681835756),(4,'Torre','van','Lghan',639226409),(5,'Kari',NULL,'Lohoar',666879385);
/*!40000 ALTER TABLE `klant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medewerker`
--

DROP TABLE IF EXISTS `medewerker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medewerker` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(45) NOT NULL,
  `tussenvoegsel` varchar(45) DEFAULT NULL,
  `achternaam` varchar(45) NOT NULL,
  `telefoon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medewerker`
--

LOCK TABLES `medewerker` WRITE;
/*!40000 ALTER TABLE `medewerker` DISABLE KEYS */;
INSERT INTO `medewerker` VALUES (1,'Bevin',NULL,'Joincey',63326060),(2,'Carlie','van der',' Strangward',654325634),(3,' Lisa',NULL,'Crafter',674382913),(4,'Ivor','van der','Plas',678543923),(5,'Etta','de','Brake',673542718);
/*!40000 ALTER TABLE `medewerker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medewerker_has_specialiteit`
--

DROP TABLE IF EXISTS `medewerker_has_specialiteit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medewerker_has_specialiteit` (
  `specialiteit_id` int(11) NOT NULL,
  `medewerker_id` int(11) NOT NULL,
  PRIMARY KEY (`specialiteit_id`,`medewerker_id`),
  KEY `fk_Specialiteit_has_Medewerker_Medewerker1_idx` (`medewerker_id`),
  KEY `fk_Specialiteit_has_Medewerker_Specialiteit_idx` (`specialiteit_id`),
  CONSTRAINT `fk_Specialiteit_has_Medewerker_Medewerker1` FOREIGN KEY (`medewerker_id`) REFERENCES `medewerker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Specialiteit_has_Medewerker_Specialiteit` FOREIGN KEY (`specialiteit_id`) REFERENCES `specialiteit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medewerker_has_specialiteit`
--

LOCK TABLES `medewerker_has_specialiteit` WRITE;
/*!40000 ALTER TABLE `medewerker_has_specialiteit` DISABLE KEYS */;
/*!40000 ALTER TABLE `medewerker_has_specialiteit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialiteit`
--

DROP TABLE IF EXISTS `specialiteit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialiteit` (
  `id` int(11) NOT NULL,
  `naam` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialiteit`
--

LOCK TABLES `specialiteit` WRITE;
/*!40000 ALTER TABLE `specialiteit` DISABLE KEYS */;
INSERT INTO `specialiteit` VALUES (1,' Style haar'),(2,' Kroes haar'),(3,' Hair extensions'),(4,' Visagie'),(5,' Baarden');
/*!40000 ALTER TABLE `specialiteit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 22:21:07
