CREATE DATABASE  IF NOT EXISTS `bicicletas.caba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bicicletas.caba`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bicicletas.caba
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tabla` varchar(45) NOT NULL,
  `Accion` varchar(45) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idLogTMP_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'NewBici','AltaBici','root@localhost','2022-04-13 00:00:00'),(2,'NewBici','AltaBici','root@localhost','2022-04-16 00:00:00'),(3,'NewBici','AltaBici','root@localhost','2022-04-16 00:00:00'),(4,'NewBici','AltaBici','root@localhost','2022-04-16 00:00:00'),(5,'NewBici','AltaBici','root@localhost','2022-04-16 00:00:00'),(6,'NewEmisor de pago','Ingreso','root@localhost','2022-04-16 00:00:00'),(7,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(8,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(9,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(10,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(11,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(12,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(13,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(14,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(15,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(16,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(17,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(18,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(19,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(20,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00'),(21,'NewEmisor de pago','Ingreso','root@localhost','2022-05-04 00:00:00');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-26 14:59:56
