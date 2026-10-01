CREATE DATABASE  IF NOT EXISTS `mappet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mappet`;
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
INSERT INTO `animal1` VALUES ('01844014029','Serai','Calopsita','3 anos','clini','https://plus.unsplash.com/premium_photo-1669673986444-3d8d63f74ab3?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('07152755000','Piare','Cacatua','3 anos','petshop','https://images.unsplash.com/photo-1559456209-4ef6b5337202?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('20431991022','Plipu','Lagartixa Leopardo','4 anos','clini','https://images.unsplash.com/photo-1633767319476-d43c16b828c4?q=80&w=1106&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('31093982063','Pedro','Cachorro','2 anos','petshop','https://hips.hearstapps.com/hmg-prod/images/view-of-french-bulldog-standing-on-grass-royalty-free-image-1686889382.jpg?crop=0.716xw:1.00xh;0.199xw,0'),('45850007040','Catau','Terier','1 ano','clini','https://plus.unsplash.com/premium_photo-1661892088256-0a17130b3d0d?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('51839805005','Veva','Porquinho da India','9 meses','clini','https://images.unsplash.com/photo-1655673157476-59b90545eb45?q=80&w=1176&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('55493540045','Unbal','Gato','1 ano','petshop','https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('59702824052','Goube','Corgi','5 anos','clini','https://images.unsplash.com/photo-1554692901-e16f2046918a?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('68677114050','Pinur','Beija-flor','2 anos','petshop','https://plus.unsplash.com/premium_photo-1709899169855-3d385146aff2?q=80&w=1040&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('89410993075','Aegen','Furão','6 anos','clini','https://plus.unsplash.com/premium_photo-1663050689215-e2f4f493811c?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
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
INSERT INTO `cliente1` VALUES ('04889187073','Vitor','37 anos','(43) 99123-4386'),('22244376409','Lucas','56 anos','(43) 19387-2375'),('56622986102','Alan','34 anos','(43) 87645-2381');
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

-- Dump completed on 2026-09-29  9:11:29
