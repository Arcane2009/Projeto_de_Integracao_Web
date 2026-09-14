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
  `NOME` varchar(50) DEFAULT NULL,
  `RACA` varchar(50) NOT NULL,
  `IDADE` varchar(20) DEFAULT NULL,
  `LOCAL` varchar(20) DEFAULT NULL,
  `FOTO` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal1`
--

LOCK TABLES `animal1` WRITE;
/*!40000 ALTER TABLE `animal1` DISABLE KEYS */;
INSERT INTO `animal1` VALUES ('12343536363','Ruan','cavalo','5','petshop','https://i.imgur.com/AUpu7FO.png'),('15544678509','João','coelho','1','clini','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8HK0RGQcUeTRqXY7s-iydX09oPfid5uUbEwGJYeO0CVhe25L0EyHBKWw&s=10'),('34834687397','Paçoca','Golden','1','petshop','https://www.canilgoldenpremier.com.br/assets/images/nossos/machos/g/broke.jpg'),('48793387610','Gregory','Jiboia Arcoíris','1 ano','petshop','https://portalamazonia.com/wp-content/uploads/2022/05/b2ap3_medium_whatsapp-image-2022-05-17-at-13.22.48-2-.jpg'),('55890422162','Laika','Persa','2 anos','clini','https://objectstorage.sa-vinhedo-1.oraclecloud.com/n/axuh3s32sabm/b/cobasi-institutional-cms-bucket/o/prod/persa_branco.webp'),('77764063924','Arthur','Pitbull','3 anos','clini','https://www.sobraci.com.br/img/artigo/american-pit-bull-terrier-raca-semana-370.jpg'),('83475050471','Todinho','ornitorrinco','3 anos','clini','https://content.nationalgeographic.pt/medio/2026/03/23/o-aspecto-pouco-verosimil-do-ornitorrinco-colocou-duvidas-sobre-a-sua-veracidade-ate-ao-cientista-que-primeiramente-o-descreveu_7713c8a5_260323120041_1280x853.webp'),('98120716795','Luck','Bull Terrier','4 anos','clini','https://www.petlove.com.br/static/pets/dog/91829/hd_1523809040-photo-1523809020836.jpg');
/*!40000 ALTER TABLE `animal1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-14 11:56:33
