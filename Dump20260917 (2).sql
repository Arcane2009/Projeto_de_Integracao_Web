-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: mappet
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal1`
--

DROP TABLE IF EXISTS `animal1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal1` (
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `RACA` varchar(50) NOT NULL,
  `IDADE` varchar(20) NOT NULL,
  `LOCAL` varchar(20) NOT NULL,
  `FOTO` varchar(255) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal1`
--

LOCK TABLES `animal1` WRITE;
/*!40000 ALTER TABLE `animal1` DISABLE KEYS */;
INSERT INTO `animal1` VALUES ('31093982063','Pedro','Cachorro','2 anos','petshop','https://hips.hearstapps.com/hmg-prod/images/view-of-french-bulldog-standing-on-grass-royalty-free-image-1686889382.jpg?crop=0.716xw:1.00xh;0.199xw,0');
/*!40000 ALTER TABLE `animal1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente1`
--

DROP TABLE IF EXISTS `cliente1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente1` (
  `CPF_USER` varchar(11) NOT NULL,
  `NOME_USER` varchar(50) NOT NULL,
  `IDADE_USER` varchar(20) NOT NULL,
  `TELEFONE` varchar(15) NOT NULL,
  PRIMARY KEY (`CPF_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente1`
--

LOCK TABLES `cliente1` WRITE;
/*!40000 ALTER TABLE `cliente1` DISABLE KEYS */;
INSERT INTO `cliente1` VALUES ('04889187073','Vitor','37 anos','(43) 99123-4386'),('22244376409','Lucas','56 anos','(43) 19387-2375');
/*!40000 ALTER TABLE `cliente1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 11:48:11
