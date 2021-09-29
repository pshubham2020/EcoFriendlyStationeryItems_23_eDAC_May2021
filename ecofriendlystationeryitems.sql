CREATE DATABASE  IF NOT EXISTS `ecofriendlystationeryitems` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecofriendlystationeryitems`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ecofriendlystationeryitems
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_date` datetime(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'2021-08-29 00:00:00.000000','admin@gmail.com','Admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mrp_price` double NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `total_price` double NOT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CART_CUST_FK` (`customer_id`),
  KEY `CART_PROD_FK` (`product_id`),
  CONSTRAINT `CART_CUST_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `CART_PROD_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_date` datetime(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (2,'2021-09-19 20:44:35.783000','shubhpatil2019@gmail.com','got defective product want replacement','Shubham Patil','defective product');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `added_date` datetime(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `valid` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','2021-09-07 21:45:51.962000','shubhpatil2019@gmail.com','Male','Shubham Patil','$2a$10$BOVF89woO/oep1qwAFMlz.nBbqaVtXzO3E8qzbvd6eG0o/cshsUdS','9552976046','425211',_binary ''),(2,'Shirpur','2021-09-19 20:59:56.845000','.rohan@gmail.com','Male','Rohan Patil','$2a$10$DLnnAX/5f36s.DWVIcVjv.r2EeGeGtFVH6g2ptZixP50T60mv1mra','7588001751','425405',_binary '');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `mrp_price` double NOT NULL,
  `order_status` varchar(25) NOT NULL,
  `payment_id` int NOT NULL,
  `payment_mode` varchar(25) NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ORDER_DETAIL_ORD_FK` (`order_id`),
  KEY `ORDER_DETAIL_PROD_FK` (`product_id`),
  CONSTRAINT `ORDER_DETAIL_ORD_FK` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `ORDER_DETAIL_PROD_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (12,10,20,'Cancelled',1000,'COD',10,1,19,11),(13,30,20,'Pending',1001,'COD',10,3,20,11),(14,20,30,'Pending',1002,'COD',20,1,21,7),(15,549,599,'Delivered',1002,'COD',549,1,22,2),(16,549,599,'Pending',1003,'COD',549,1,23,2),(17,50,15,'Cancelled',1003,'COD',10,5,24,9),(18,10,15,'Delivered',1004,'COD',10,1,25,9),(19,10,20,'Cancelled',1005,'COD',10,1,26,11);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `amount` double NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_address_type` varchar(15) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_num` int NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o6e714ot0hclyvhlcte6vc4mr` (`order_num`),
  UNIQUE KEY `UKo6e714ot0hclyvhlcte6vc4mr` (`order_num`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (19,_binary '',10,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Home','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-24 11:58:26.803000',1000,'425401'),(20,_binary '',30,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Home','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-25 12:09:56.184000',1001,'425401'),(21,_binary '',20,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Home','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-25 12:13:40.085000',1002,'425401'),(22,_binary '',549,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Home','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-25 12:13:40.085000',1003,'425401'),(23,_binary '',549,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Office','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-26 17:52:48.488000',1004,'425401'),(24,_binary '',50,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Office','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-26 17:52:48.488000',1005,'425401'),(25,_binary '',10,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Commercial','shubhpatil2019@gmail.com','Kitty Patil','9552976046','2021-09-26 17:56:08.151000',1006,'425403'),(26,_binary '',10,'Kalaguru Nagar, Dhule Rd, Amalner, Jalgaon','Home','shubhpatil2019@gmail.com','Shubham Patil','9552976046','2021-09-27 11:23:25.727000',1007,'425401');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `code` varchar(5) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` longtext,
  `mrp_price` double NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,_binary '','P01','2021-09-07 22:06:22.584000','Handmade EcoFriendly craft.\r\nNon-Toxic and Colourful Cover Page.\r\nThese Notebook could be used for sketching.','/resources\\books.jpg',399,'Notebooks',349),(2,_binary '','P02','2021-09-07 22:08:02.209000','The material of the bag is 100% cotton which is durable and sturdy.\r\nBags are made from eco-friendly natural fibers','/resources\\bag.jpg',599,'Bagpacks',549),(3,_binary '','P03','2021-09-07 22:10:19.047000',' A bottle that is stylish and elegant at the same time. This exotic piece will bring a touch of elegance to your existing drinkware collection and a delight to your dining table. Intricately crafted by rural artisans and the bottle is made out of bamboo and steel. Along with being eco-friendly and sustainable','/resources\\bottles.jpg',599,'Water Bottels',499),(4,_binary '','P04','2021-09-07 22:12:39.875000','eco-friendly multi storage compass box best gift products for your friends & family member made of material : non-plastic size : 8 x 3.5 x 3 inch color : multi-color.','/resources\\compas.jpg',199,'Compass Box',149),(5,_binary '\0','P05','2021-09-07 22:15:19.170000','We are providing  Eco Friendly Envelopes for our clients','/resources\\envelope.jpg',10,'Envelope',9),(7,_binary '','P07','2021-09-07 22:19:15.906000','Gained prominence in the industry as a reliable manufacturer and supplier','/resources\\files.jpg',30,'Files',20),(8,_binary '','P08','2021-09-07 22:20:30.426000','Cardboard Recycle Paper Pen ','/resources\\pen.jpg',20,'Pen',10),(9,_binary '','P09','2021-09-07 22:21:34.499000','Eco Friendly Paper Mesh Pencils','/resources\\pencil.jpg',15,'Pencils',10),(10,_binary '','P10','2021-09-07 22:24:53.930000','Eco-friendly material','/resources\\pouch.jpg',200,'Pouch',150),(11,_binary '','P11','2021-09-07 22:26:19.644000','Double Wooden Pencil Sharpeners are an eco friendly sharpener with 2 cavities for sharpening large or small pencils','/resources\\sharpner.jpg',20,'Sharpners',10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-29  8:38:16
