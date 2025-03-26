-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klient` (
  `id_klienta` int NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `telefon` char(12) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Jan','Kowalski','123456789','12345678901'),(2,'Anna','Nowak','987654321','98765432109'),(3,'Piotr','Ziemski','111222333','11122233344'),(4,'Maria','Lis','444555666','44455566677'),(5,'Marek','Kot','999888777','99988877722'),(6,'Ewa','Jabłko','777666555','77766655533'),(7,'Tomasz','Wilk','888999111','88899911100'),(8,'Alicja','Słońce','222333444','22233344455'),(9,'Grzegorz','Mądrala','555444333','55544433366'),(10,'Katarzyna','Róża','666777888','66677788811'),(11,'Artur','Dąb','121212121','12121212112'),(12,'Monika','Fala','232323232','23232323223'),(13,'Mateusz','Góra','343434343','34343434334'),(14,'Iwona','Buk','454545454','45454545445'),(15,'Robert','Jezioro','565656565','56565656556');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miejsce`
--

DROP TABLE IF EXISTS `miejsce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miejsce` (
  `id_miejsca` int NOT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `numer` int DEFAULT NULL,
  `kod` char(6) DEFAULT NULL,
  PRIMARY KEY (`id_miejsca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miejsce`
--

LOCK TABLES `miejsce` WRITE;
/*!40000 ALTER TABLE `miejsce` DISABLE KEYS */;
INSERT INTO `miejsce` VALUES (1,'ul. Kwiatowa',3,'12-345'),(2,'Plac Nadodrzański',20,'34-567'),(3,'Rynek Główny',8,'89-012'),(4,'Aleja Spacerowa',14,'45-678'),(5,'ul. Słoneczna',9,'67-890');
/*!40000 ALTER TABLE `miejsce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pojazdy`
--

DROP TABLE IF EXISTS `pojazdy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pojazdy` (
  `id_pojazdu` int NOT NULL,
  `marka` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `rocznik` date DEFAULT NULL,
  `rezerwacja_poczatek` date DEFAULT NULL,
  `rezerwacja_koniec` date DEFAULT NULL,
  `cena` decimal(10,0) DEFAULT NULL,
  `kaucja` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_pojazdu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pojazdy`
--

LOCK TABLES `pojazdy` WRITE;
/*!40000 ALTER TABLE `pojazdy` DISABLE KEYS */;
INSERT INTO `pojazdy` VALUES (1,'Toyota','Corolla','2019-01-01',NULL,NULL,150,100),(2,'Honda','Civic','2020-01-01',NULL,NULL,160,110),(3,'Ford','Focus','2018-01-01',NULL,NULL,130,80),(4,'Chevrolet','Malibu','2022-01-01','2024-01-15','2024-01-31',180,130),(5,'Nissan','Altima','2017-01-01',NULL,NULL,120,70),(6,'Mazda','Mazda6','2021-01-01',NULL,NULL,140,90),(7,'Volkswagen','Passat','2019-01-01',NULL,NULL,145,95),(8,'Hyundai','Elantra','2020-01-01',NULL,NULL,150,100),(9,'Kia','Optima','2018-01-01',NULL,NULL,155,105),(10,'Subaru','Legacy','2020-01-01',NULL,NULL,165,115),(11,'Audi','A4','2019-01-01',NULL,NULL,175,125),(12,'Mercedes-Benz','C-Class','2022-01-01','2024-01-15','2024-02-14',185,135),(13,'BMW','3 Series','2017-01-01',NULL,NULL,125,75),(14,'Lexus','IS','2021-01-01',NULL,NULL,170,120),(15,'Jaguar','XE','2018-01-01',NULL,NULL,160,110),(16,'Tesla','Model 3','2019-01-01',NULL,NULL,200,150),(17,'Volkswagen','Arteon','2020-01-01',NULL,NULL,165,115),(18,'Volvo','S60','2022-01-01',NULL,NULL,190,140),(19,'Porsche','Panamera','2017-01-01',NULL,NULL,210,160),(20,'Maserati','Ghibli','2021-01-01',NULL,NULL,220,170),(21,'Acura','TLX','2018-01-01',NULL,NULL,155,105),(22,'Infiniti','Q50','2020-01-01',NULL,NULL,160,110),(23,'Alfa Romeo','Giulia','2019-01-01',NULL,NULL,180,130),(24,'Buick','Regal','2022-01-01',NULL,NULL,175,125),(25,'Genesis','G80','2017-01-01',NULL,NULL,145,95),(26,'Lincoln','MKZ','2021-01-01','2024-01-26','2024-02-02',185,135),(27,'Cadillac','CTS','2018-01-01',NULL,NULL,190,140),(28,'Jaguar','XF','2020-01-01',NULL,NULL,200,150),(29,'Audi','A6','2019-01-01',NULL,NULL,195,145),(30,'Lexus','ES','2022-01-01',NULL,NULL,175,125);
/*!40000 ALTER TABLE `pojazdy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownik`
--

DROP TABLE IF EXISTS `pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownik` (
  `id_pracownika` int NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `stanowisko` varchar(45) DEFAULT NULL,
  `telefon` char(12) DEFAULT NULL,
  `pensja` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_pracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownik`
--

LOCK TABLES `pracownik` WRITE;
/*!40000 ALTER TABLE `pracownik` DISABLE KEYS */;
INSERT INTO `pracownik` VALUES (1,'Anna','Nowak','Kierownik','111222333',10000),(2,'Jan','Kowalski','Inżynier','444555666',8000),(3,'Maria','Lis','Technik','777888999',6000),(4,'Piotr','Kwiatkowski','Asystent','123456789',7000),(5,'Katarzyna','Jankowska','Serwisant','987654321',7500),(6,'Mateusz','Nowicki','Kierowca','111222333',6500),(7,'Magdalena','Szymańska','Pracownik biurowy','555666777',5500),(8,'Tomasz','Wójcik','Informatyk','888999000',9000),(9,'Aleksandra','Kozłowska','Kasjer','333444555',4800),(10,'Marcin','Zalewski','Serwisant','666777888',7200),(11,'Oliwia','Pawlak','Technik','222333444',6800),(12,'Mikołaj','Kaczmarek','Inżynier','999000111',8200),(13,'Natalia','Wróbel','Kierowca','777888999',7000),(14,'Paweł','Dąbrowski','Pracownik biurowy','444555666',5800),(15,'Karolina','Lewandowska','Kasjer','888999000',5000);
/*!40000 ALTER TABLE `pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wypożyczenia`
--

DROP TABLE IF EXISTS `wypożyczenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wypożyczenia` (
  `id_wypożyczenia` int NOT NULL AUTO_INCREMENT,
  `rezerwacja_poczatek` date DEFAULT NULL,
  `rezerwacja_koniec` date DEFAULT NULL,
  `suma` decimal(10,0) DEFAULT NULL,
  `Klient_id_klienta` int DEFAULT NULL,
  `Pracownik_id_pracownika` int DEFAULT NULL,
  `Pojazdy_id_pojazdu` int DEFAULT NULL,
  `Miejsce_id_miejsca` int DEFAULT NULL,
  `Miejsce_id_miejsca1` int DEFAULT NULL,
  `Pracownik_id_pracownika1` int DEFAULT NULL,
  PRIMARY KEY (`id_wypożyczenia`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wypożyczenia`
--

LOCK TABLES `wypożyczenia` WRITE;
/*!40000 ALTER TABLE `wypożyczenia` DISABLE KEYS */;
INSERT INTO `wypożyczenia` VALUES (1,'2023-07-01','2023-07-10',1550,1,2,15,3,5,7),(2,'2023-07-05','2023-07-15',1765,4,4,17,1,3,13),(3,'2023-07-10','2023-07-20',1380,1,2,3,1,2,7),(4,'2023-07-15','2023-07-25',2370,2,6,20,4,2,8),(5,'2023-07-20','2023-07-30',1985,5,3,26,2,4,10),(6,'2023-07-25','2023-08-05',1750,2,6,8,4,2,8),(7,'2023-07-30','2023-08-10',1690,3,1,25,5,3,6),(8,'2023-08-01','2023-08-15',1750,1,2,5,3,5,7),(9,'2023-08-05','2023-08-20',1950,3,1,13,5,3,6),(10,'2023-08-10','2023-08-25',2750,4,4,30,2,4,13),(11,'2023-08-15','2023-08-30',2590,2,6,10,4,2,8),(12,'2023-08-20','2023-09-04',2990,4,4,18,2,4,13),(13,'2023-08-25','2023-09-10',3010,5,3,23,4,2,10),(14,'2023-09-01','2023-09-15',2350,3,1,15,5,3,6),(15,'2023-09-05','2023-09-20',2910,1,2,12,1,2,7),(16,'2023-09-10','2023-09-25',3150,2,6,28,3,5,7),(17,'2023-09-15','2023-09-30',3470,4,4,20,2,4,13),(18,'2023-09-20','2023-10-05',2990,1,2,18,3,5,7),(19,'2023-09-25','2023-10-10',2510,3,1,22,4,2,8),(20,'2023-10-01','2023-10-15',2650,2,6,4,1,2,7),(21,'2023-10-05','2023-10-20',2510,5,3,2,1,2,10),(22,'2023-10-10','2023-10-25',2350,2,4,1,3,5,6),(23,'2023-10-15','2023-10-30',2270,1,2,7,3,5,7),(24,'2023-10-20','2023-11-04',1870,3,1,5,5,3,6),(25,'2023-10-25','2023-11-10',2670,4,4,15,5,3,10),(26,'2023-11-01','2023-11-15',2200,2,6,8,2,4,8),(27,'2023-11-05','2023-11-20',2670,3,1,14,4,2,13),(28,'2023-11-10','2023-11-25',2590,5,3,17,5,3,6),(29,'2023-11-15','2023-11-30',3310,1,2,19,4,2,7),(30,'2023-11-20','2023-12-05',2750,4,4,30,2,4,13),(31,'2023-12-01','2023-12-15',2425,3,5,10,1,2,2),(32,'2023-12-05','2023-12-20',2030,1,1,3,4,1,3),(33,'2023-12-10','2023-12-25',2990,2,4,18,3,5,7),(34,'2023-12-15','2023-12-30',2990,5,3,18,5,3,6),(35,'2023-12-20','2024-01-04',2910,1,2,12,1,2,7),(36,'2023-12-25','2024-01-10',3350,3,5,28,3,5,2),(37,'2024-01-01','2024-01-15',2125,2,6,25,4,2,8),(38,'2024-01-05','2024-01-20',2910,4,4,12,1,2,13),(39,'2024-01-10','2024-01-25',3470,1,2,20,3,5,7),(40,'2024-01-15','2024-01-31',2830,3,1,4,2,4,10),(41,'2024-01-15','2024-02-14',5685,14,4,12,1,1,NULL),(42,'2024-01-26','2024-02-02',1430,12,5,26,3,2,NULL),(43,'2024-02-01','2024-02-15',2425,2,NULL,10,4,2,NULL),(44,'2024-02-05','2024-02-20',2990,4,NULL,18,2,4,NULL),(45,'2024-02-10','2024-02-25',2830,5,NULL,23,4,2,NULL),(46,'2024-02-15','2024-02-29',2350,3,NULL,15,5,3,NULL),(47,'2024-02-20','2024-03-05',2725,1,NULL,12,1,2,NULL),(48,'2024-02-25','2024-03-10',2950,2,NULL,28,3,5,NULL),(49,'2024-03-01','2024-03-15',3250,4,NULL,20,2,4,NULL),(50,'2024-03-05','2024-03-20',2990,1,NULL,18,3,5,NULL),(51,'2024-03-10','2024-03-25',2510,3,NULL,22,4,2,NULL),(52,'2024-03-15','2024-03-30',2750,4,NULL,30,2,4,NULL);
/*!40000 ALTER TABLE `wypożyczenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wypo┼╝yczenia`
--

DROP TABLE IF EXISTS `wypo┼╝yczenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wypo┼╝yczenia` (
  `id_wypo┼╝yczenia` int NOT NULL,
  `rezerwacja_poczatek` date DEFAULT NULL,
  `rezerwacja_koniec` date DEFAULT NULL,
  `suma` decimal(10,0) DEFAULT NULL,
  `Klient_id_klienta` int NOT NULL,
  `Pracownik_id_pracownika` int NOT NULL,
  `Pojazdy_id_pojazdu` int NOT NULL,
  `Miejsce_id_miejsca` int NOT NULL,
  `Miejsce_id_miejsca1` int NOT NULL,
  `Pracownik_id_pracownika1` int NOT NULL,
  PRIMARY KEY (`id_wypo┼╝yczenia`,`Klient_id_klienta`,`Pracownik_id_pracownika`,`Pojazdy_id_pojazdu`,`Miejsce_id_miejsca`,`Miejsce_id_miejsca1`,`Pracownik_id_pracownika1`),
  KEY `fk_Wypo┼╝yczenia_Klient_idx` (`Klient_id_klienta`),
  KEY `fk_Wypo┼╝yczenia_Pracownik1_idx` (`Pracownik_id_pracownika`),
  KEY `fk_Wypo┼╝yczenia_Pojazdy1_idx` (`Pojazdy_id_pojazdu`),
  KEY `fk_Wypo┼╝yczenia_Miejsce1_idx` (`Miejsce_id_miejsca`),
  KEY `fk_Wypo┼╝yczenia_Miejsce2_idx` (`Miejsce_id_miejsca1`),
  KEY `fk_Wypo┼╝yczenia_Pracownik2_idx` (`Pracownik_id_pracownika1`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Klient` FOREIGN KEY (`Klient_id_klienta`) REFERENCES `klient` (`id_klienta`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Miejsce1` FOREIGN KEY (`Miejsce_id_miejsca`) REFERENCES `miejsce` (`id_miejsca`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Miejsce2` FOREIGN KEY (`Miejsce_id_miejsca1`) REFERENCES `miejsce` (`id_miejsca`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Pojazdy1` FOREIGN KEY (`Pojazdy_id_pojazdu`) REFERENCES `pojazdy` (`id_pojazdu`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Pracownik1` FOREIGN KEY (`Pracownik_id_pracownika`) REFERENCES `pracownik` (`id_pracownika`),
  CONSTRAINT `fk_Wypo┼╝yczenia_Pracownik2` FOREIGN KEY (`Pracownik_id_pracownika1`) REFERENCES `pracownik` (`id_pracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wypo┼╝yczenia`
--

LOCK TABLES `wypo┼╝yczenia` WRITE;
/*!40000 ALTER TABLE `wypo┼╝yczenia` DISABLE KEYS */;
/*!40000 ALTER TABLE `wypo┼╝yczenia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31  0:44:41
