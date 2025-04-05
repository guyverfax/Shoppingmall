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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` int NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_product_catalog_idx` (`catalog_id`),
  CONSTRAINT `fk_product_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'蘋果桌機','描述：一台蘋果電腦。',39999,139,'101.png','active','2025-03-17 01:05:44'),(2,1,'桌上型電腦','描述：一台桌上型電腦。',19999,51,'102.png','active','2025-03-17 01:05:44'),(3,1,'智能手機','描述：一款高性能的智能手機。',19999,50,'103.png','active','2025-03-17 01:05:44'),(4,1,'智能手錶','描述：追蹤健康狀況並接收通知。',5999,100,'104.png','active','2025-03-17 01:05:44'),(5,1,'無線耳機','描述：提供清晰音質的無線耳機。',4999,100,'105.png','active','2025-03-17 01:05:44'),(6,1,'筆記本電腦','描述：高效能的筆記本電腦，適合專業人士。',29999,20,'106.png','active','2025-03-17 01:05:44'),(7,1,'無線滑鼠','描述：一個無線滑鼠。',399,100,'107.png','active','2025-03-17 01:05:44'),(8,1,'螢幕','描述：一個螢幕。',5999,100,'108.png','active','2025-03-17 01:05:44'),(9,1,'鍵盤','描述：一個鍵盤。',399,100,'109.png','active','2025-03-17 01:05:44'),(10,2,'舒適雙人床','描述：一款設計優雅，提供極致舒適的雙人床。',8999,24,'201.png','active','2025-03-20 04:36:58'),(11,2,'現代風格沙發','描述：採用優質材料製造，適合各種客廳裝飾風格。',4500,28,'202.png','active','2025-03-20 04:36:58'),(12,2,'實木餐桌','描述：堅固耐用的實木餐桌，適用於家庭聚餐。',3600,20,'203.png','active','2025-03-20 04:36:58'),(13,2,'多功能書架','描述：多層設計，為您的書籍和裝飾品提供充足的存放空間。',1999,39,'204.png','active','2025-03-20 04:36:58'),(14,2,'簡約電視櫃','描述：簡潔的設計，與現代家居完美融合。',2499,34,'205.png','active','2025-03-20 04:36:58'),(15,2,'辦公寫字台','描述：寬敞的桌面設計，為您的工作或學習提供理想的空間。',1799,25,'206.png','active','2025-03-20 04:36:58'),(16,3,'遠方的燈塔','描述：一部感人至深的小說，探討愛與失去。',299,95,'301.png','active','2025-03-20 04:36:58'),(17,3,'無懼向前','描述：教你如何面對挑戰並達成目標的自我提升指南。',450,74,'302.png','active','2025-03-20 04:36:58'),(18,3,'銀河帝國','描述：經典科幻小說，帶你進入一個宏大的宇宙冒險旅程。',360,79,'303.png','active','2025-03-20 04:36:58'),(19,3,'人類簡史','描述：從石器時代到21世紀，探索人類歷史的重要里程碑。',599,60,'304.png','active','2025-03-20 04:36:58'),(20,3,'心靈的力量','描述：深入淺出地介紹心理學基礎知識及其應用。',699,50,'305.png','active','2025-03-20 04:36:58'),(21,3,'家常菜譜','描述：提供多種美味佳餚的製作方法，讓你的家庭聚會更加豐富多彩。',399,45,'306.png','active','2025-03-20 04:36:58'),(22,4,'哥倫比亞咖啡豆','描述：來自哥倫比亞的高品質阿拉比卡咖啡豆，風味獨特。',350,114,'401.png','active','2025-03-20 04:36:58'),(23,4,'法國波爾多紅酒','描述：精選自法國波爾多地區的優質紅葡萄酒，適合搭配各種美食。',850,90,'402.png','active','2025-03-20 04:36:58'),(24,4,'比利時手工巧克力','描述：採用最高級可可製成，口感綿密、甜而不膩。',260,99,'403.png','active','2025-03-20 04:36:58'),(25,4,'阿里山高山茶','描述：台灣阿里山出產的高山烏龍茶，清香撲鼻，回味無窮。',650,70,'404.png','active','2025-03-20 04:36:58'),(26,4,'義大利特級初榨橄欖油','描述：來自義大利的天然特級初榨橄欖油，健康美味兼顧。',500,200,'405.png','active','2025-03-20 04:36:58');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
