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
-- Temporary view structure for view `cartdetail`
--

DROP TABLE IF EXISTS `cartdetail`;
/*!50001 DROP VIEW IF EXISTS `cartdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cartdetail` AS SELECT 
 1 AS `user_id`,
 1 AS `image_url`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `price`,
 1 AS `quantity`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!50001 DROP VIEW IF EXISTS `orderdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderdetail` AS SELECT 
 1 AS `order_id`,
 1 AS `user_id`,
 1 AS `recipient_name`,
 1 AS `recipient_phone`,
 1 AS `recipient_address`,
 1 AS `recipient_email`,
 1 AS `total_amount`,
 1 AS `order_status`,
 1 AS `order_date`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `image_url`,
 1 AS `quantity`,
 1 AS `price`,
 1 AS `total_price`,
 1 AS `payment_method`,
 1 AS `payment_status`,
 1 AS `payment_date`,
 1 AS `tracking_number`,
 1 AS `carrier`,
 1 AS `shipping_method`,
 1 AS `shipping_status`,
 1 AS `estimated_delivery`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cartdetail`
--

/*!50001 DROP VIEW IF EXISTS `cartdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cartdetail` AS select `c`.`user_id` AS `user_id`,`p`.`image_url` AS `image_url`,`p`.`id` AS `product_id`,`p`.`name` AS `product_name`,`c`.`price` AS `price`,`c`.`quantity` AS `quantity`,`c`.`total_price` AS `subtotal` from (`cart` `c` join `products` `p` on((`c`.`product_id` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderdetail`
--

/*!50001 DROP VIEW IF EXISTS `orderdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderdetail` AS select `o`.`id` AS `order_id`,`o`.`user_id` AS `user_id`,`o`.`recipient_name` AS `recipient_name`,`o`.`recipient_phone` AS `recipient_phone`,`o`.`recipient_address` AS `recipient_address`,`o`.`recipient_email` AS `recipient_email`,`o`.`total_amount` AS `total_amount`,`o`.`status` AS `order_status`,`o`.`created_at` AS `order_date`,`oi`.`product_id` AS `product_id`,`p`.`name` AS `product_name`,`p`.`image_url` AS `image_url`,`oi`.`quantity` AS `quantity`,`oi`.`price` AS `price`,`oi`.`total_price` AS `total_price`,`py`.`payment_method` AS `payment_method`,`py`.`status` AS `payment_status`,`py`.`created_at` AS `payment_date`,`s`.`tracking_number` AS `tracking_number`,`s`.`carrier` AS `carrier`,`s`.`shipping_method` AS `shipping_method`,`s`.`status` AS `shipping_status`,`s`.`estimated_delivery` AS `estimated_delivery` from ((((`orders` `o` join `order_items` `oi` on((`o`.`id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`id`))) left join `payments` `py` on((`o`.`id` = `py`.`order_id`))) left join `shipping` `s` on((`o`.`id` = `s`.`order_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 22:59:59
