CREATE DATABASE  IF NOT EXISTS `shoppingmall` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shoppingmall`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: shoppingmall
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `recipient_name` varchar(20) NOT NULL,
  `recipient_phone` varchar(20) NOT NULL,
  `recipient_address` varchar(200) NOT NULL,
  `recipient_email` varchar(100) NOT NULL,
  `total_amount` int NOT NULL,
  `status` varchar(10) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (14,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',39999,'completed','2025-03-26 01:28:20'),(15,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',659,'completed','2025-03-26 03:51:36'),(16,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',39999,'cancelled','2025-03-26 04:35:34'),(17,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',299,'completed','2025-03-28 03:24:29'),(18,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',299,'completed','2025-03-28 03:29:48'),(19,2,'使用者B','0923456789','新北市板橋區縣民大道二段','user2@example.com',350,'completed','2025-03-28 03:37:00'),(20,3,'使用者1','0934567890','桃園市桃園區春日路','user3@example.com',350,'completed','2025-03-28 03:41:53'),(21,3,'使用者1','0934567890','桃園市桃園區春日路','user3@example.com',350,'completed','2025-03-28 03:44:10'),(22,2,'使用者B','0923456789','新北市板橋區縣民大道二段','user2@example.com',80,'completed','2025-03-28 03:47:08'),(23,2,'使用者B','0923456789','新北市板橋區縣民大道二段','user2@example.com',80,'completed','2025-03-28 03:49:31'),(24,2,'使用者B','0923456789','新北市板橋區縣民大道二段','user2@example.com',80,'completed','2025-03-28 03:53:39'),(25,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',260,'completed','2025-03-28 05:15:15'),(26,3,'使用者1','0934567890','桃園市桃園區春日路','user3@example.com',80,'completed','2025-03-28 05:57:15'),(27,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',80,'paid','2025-03-28 09:27:38'),(28,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',80,'pending','2025-03-28 09:28:00'),(29,1,'使用者AA','0912345678','台北市大安區復興南路一段','user1@example.com',44499,'paid','2025-04-05 04:58:40');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 22:59:58
