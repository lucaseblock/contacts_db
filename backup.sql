-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: contactos_db
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(35) NOT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_phone` (`user_id`,`phone`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (24,1,'Lucas4','Block','3445345345','2024-06-23 20:38:10'),(26,1,'Fulano','Lass','2342342343','2024-06-23 21:09:30'),(37,1,'Lucas','Block','+543445645915','2024-06-24 00:04:53'),(41,1,'Juan','Pérez','1234567890','2024-06-24 02:59:08'),(42,1,'Ana','García','0987654321','2024-06-24 02:59:08'),(43,1,'Luis','Martínez','1122334455','2024-06-24 02:59:08'),(44,1,'Carlos','López','3216549870','2024-06-24 02:59:08'),(45,1,'María','Fernández','9874561230','2024-06-24 02:59:08'),(46,1,'José','Rodríguez','4567891230','2024-06-24 02:59:08'),(47,1,'Laura','González','7418529630','2024-06-24 02:59:08'),(48,1,'Miguel','Hernández','3692581470','2024-06-24 02:59:08'),(49,1,'Lucía','Martín','8527419630','2024-06-24 02:59:08'),(50,1,'Francisco','Ruiz','1593572840','2024-06-24 02:59:08'),(51,1,'Elena','Jiménez','9517538460','2024-06-24 02:59:08'),(52,1,'Jorge','Díaz','7531594860','2024-06-24 02:59:08'),(53,1,'Sara','Moreno','3579518520','2024-06-24 02:59:08'),(54,1,'Andrés','Muñoz','9514863570','2024-06-24 02:59:08'),(55,1,'Sofía','Álvarez','7891234560','2024-06-24 02:59:08'),(56,1,'Pablo','Castro','6543219870','2024-06-24 02:59:08'),(57,1,'Marta','Ortega','1472583690','2024-06-24 02:59:08'),(58,1,'Alberto','Delgado','9638527410','2024-06-24 02:59:08'),(59,1,'Rosa','Marín','2589631470','2024-06-24 02:59:08'),(60,1,'Ricardo','Ramos','3571592480','2024-06-24 02:59:08'),(61,1,'Eva','Gil','7534861590','2024-06-24 02:59:08'),(62,1,'Manuel','Sánchez','8529637410','2024-06-24 02:59:08'),(63,1,'Julia','Romero','1594867530','2024-06-24 02:59:08'),(64,1,'Roberto','Vega','4563217890','2024-06-24 02:59:08'),(65,1,'Clara','Torres','3697418520','2024-06-24 02:59:08'),(66,1,'Gabriel','Domínguez','7419638520','2024-06-24 02:59:08'),(67,1,'Natalia','Vázquez','2587413690','2024-06-24 02:59:08'),(68,1,'David','Ibáñez','1597534860','2024-06-24 02:59:08'),(69,1,'Carmen','Mendoza','9514867530','2024-06-24 02:59:08'),(70,1,'Raúl','Santos','3571594860','2024-06-24 02:59:08'),(71,1,'Isabel','Guerrero','7539514860','2024-06-24 02:59:08'),(72,1,'Luis','Cruz','2581597530','2024-06-24 02:59:08'),(73,1,'Patricia','Reyes','9513574860','2024-06-24 02:59:08'),(74,1,'Antonio','Pérez','7534869510','2024-06-24 02:59:08'),(75,1,'Beatriz',NULL,'1592583570','2024-06-24 02:59:08'),(76,1,'Santiago','Molina','8523691470','2024-06-24 02:59:08'),(77,1,'Alice','Smith','4567893211','2024-06-24 02:59:08'),(78,1,'Martín','Carrillo','7412589630','2024-06-24 02:59:08'),(79,1,'Teresa','Núñez','9637418520','2024-06-24 02:59:08'),(80,1,'Gonzalo','Medina','2581473690','2024-06-24 02:59:08'),(81,1,'Sandra','Herrera','9517534860','2024-06-24 02:59:08'),(82,1,'Iván','Fuentes','3578521590','2024-06-24 02:59:08'),(83,1,'Adriana','Blanco','7531592840','2024-06-24 02:59:08'),(84,1,'Felipe','Márquez','9514862840','2024-06-24 02:59:08'),(85,1,'Verónica','Acosta','1597532840','2024-06-24 02:59:08'),(86,1,'Álvaro','Calvo','7534862840','2024-06-24 02:59:08'),(87,1,'Paula','Pascual','9517532840','2024-06-24 02:59:08'),(88,1,'Emilio','Arias','3571592840','2024-06-24 02:59:08'),(89,1,'Silvia','Montes','7539512840','2024-06-24 02:59:08'),(90,1,'Nicolás','Soler','9514861590','2024-06-24 02:59:08'),(91,1,'Alejandra','Rivas','3578527530','2024-06-24 02:59:08'),(92,1,'Victor','Aguilar','1597539510','2024-06-24 02:59:08');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$1pQat8W6dvnejoUMFCrqSeCaOC.Jl/VbSqXDFYsDZjrTdBZIDI.Dm','2024-06-19 02:28:35'),(18,'admin2','$2a$10$W8YOVO6rDBbWA80ycwZAcupbMda4mLC7hsxzNhcWptSKYzbfaRrIa','2024-06-24 05:41:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 20:09:20
