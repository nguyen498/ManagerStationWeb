-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: busstationdb
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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `biensoxe` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manhaxe` int NOT NULL,
  PRIMARY KEY (`biensoxe`),
  KEY `id_idx` (`manhaxe`),
  CONSTRAINT `id` FOREIGN KEY (`manhaxe`) REFERENCES `station` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES ('60C-19963',1),('60C-78934',1),('51C-12345',2),('51C-19548',2),('51C-19635',5),('60C-196783',9),('60C-78948',9);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bustrip`
--

DROP TABLE IF EXISTS `bustrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bustrip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaykhoihanh` date NOT NULL,
  `thoigian` time DEFAULT NULL,
  `giave` decimal(10,0) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `route_id` int NOT NULL,
  `bus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id_idx` (`route_id`),
  KEY `bus_idx` (`bus`),
  CONSTRAINT `buss` FOREIGN KEY (`bus`) REFERENCES `bus` (`biensoxe`) ON DELETE CASCADE,
  CONSTRAINT `route_id` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bustrip`
--

LOCK TABLES `bustrip` WRITE;
/*!40000 ALTER TABLE `bustrip` DISABLE KEYS */;
INSERT INTO `bustrip` VALUES (4,'2022-08-31','08:30:00',200000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1660746132/bus-1_evg2wn.jpg','Đây là chuyến xe di chuyển từ Sài Gòn đến Đà Lạt',1,'51C-12345'),(5,'2022-09-05','12:00:00',200000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1660746132/bus-1_evg2wn.jpg','Đây là chuyến xe di chuyển từ Sài Gòn đến Đồng Nai',2,'51C-19548'),(7,'2022-09-10','20:05:00',200000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661260711/mbrlisofpzfddyxpeugx.jpg','Đây là chuyến xe di chuyển từ Đồng Nai đến Sài Gòn',4,'60C-196783'),(8,'2022-09-10','00:45:00',200000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661359430/bm5erfmo4mfrzoufenao.jpg','Ahihii',1,'60C-196783'),(9,'2022-09-10','00:15:00',300000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661519668/ulnkmmyul0dohz9ydijb.jpg','Ahihiiiii',4,'51C-12345'),(10,'2022-09-09','00:25:00',400000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661703790/hdzvd1pzix274mffosbd.jpg','aaaaa',1,'60C-196783'),(11,'2022-09-10','05:30:00',200000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661703847/vuuvcbqos9x2r3qejrhq.jpg','aaaaa',1,'60C-78934'),(12,'2022-09-09','00:00:00',3000000,'https://res.cloudinary.com/dgf4td2l4/image/upload/v1661784825/vkqv1mrvjz7w1krz0zkv.jpg','aaaaa',4,'51C-19635');
/*!40000 ALTER TABLE `bustrip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_date` date DEFAULT NULL,
  `bustrip_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acount_id_idx` (`user_id`),
  KEY `bustrip_id_idx` (`bustrip_id`),
  CONSTRAINT `bustrip_id` FOREIGN KEY (`bustrip_id`) REFERENCES `bustrip` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (3,'ahihii','2022-08-24',4,1),(4,'Ahihii',NULL,4,1),(7,'Tuyệt vời!!!','2022-08-25',4,1),(13,'Alo','2022-08-25',5,1),(14,'Ahihiii','2022-08-25',4,1),(19,'Nguyên','2022-08-26',5,2),(25,'a','2022-08-26',7,2),(26,'sadsadsa','2022-08-26',7,2),(27,'aaaa','2022-08-26',5,3),(28,'gdfgdsfs','2022-08-26',5,3),(29,'aaa','2022-08-26',8,3),(30,'aaa','2022-08-26',8,3),(31,'aaaa','2022-08-26',4,3),(32,'hjfjhgk','2022-08-27',7,1),(33,'aaa','2022-08-29',9,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenhang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tennguoinhan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachinhanhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `bustrip_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bustrip_id_idx` (`bustrip_id`),
  KEY `customerid_idx` (`user_id`),
  CONSTRAINT `bustripid` FOREIGN KEY (`bustrip_id`) REFERENCES `bustrip` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customerid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Nguyen','Nguyen','Nguyen','nh77442@gmail.com','0383435099',1,4),(2,'ahihii','ahihii','ahihii','nh77442@gmail.com','0383435099',1,5);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tuyenBD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tuyenKT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Sài Gòn','Đà Lạt'),(2,'Sài Gòn','Đồng Nai'),(4,'Dong Nai','Sai Gon'),(6,'Nha Trang','Da Nang'),(7,'Sài Gòn','Tiền Giang');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` bit(2) DEFAULT b'1',
  `bus_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alias` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id_idx` (`bus_id`),
  CONSTRAINT `bus_id` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`biensoxe`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,_binary '','60C-78934','A01'),(2,_binary '','60C-78934','A02'),(3,_binary '','51C-12345','A01'),(4,_binary '','51C-12345','A02'),(5,_binary '','51C-12345','A03'),(6,_binary '','51C-12345','A04'),(7,_binary '','51C-12345','A05'),(8,_binary '','60C-78934','A03'),(9,_binary '','60C-78934','A04'),(10,_binary '','51C-12345','A06'),(11,_binary '','51C-12345','A07'),(12,_binary '','51C-12345','A08'),(13,_binary '','51C-12345','A09'),(14,_binary '','51C-12345','A10'),(15,_binary '','51C-19548','A01'),(16,_binary '','51C-19548','A02'),(17,_binary '','51C-19548','A03'),(18,_binary '','51C-19548','A04'),(19,_binary '','51C-19548','A05'),(20,_binary '','51C-19548','A06'),(21,_binary '','51C-19548','A07'),(22,_binary '','51C-19548','A08'),(23,_binary '','51C-19548','A09'),(24,_binary '','51C-19548','A10'),(25,_binary '','60C-196783','A01'),(26,_binary '','60C-196783','A02'),(27,_binary '','60C-196783','A03'),(28,_binary '','60C-196783','A04'),(29,_binary '','60C-196783','A05'),(30,_binary '','60C-196783','A06'),(31,_binary '','60C-196783','A07'),(32,_binary '','60C-196783','A08'),(33,_binary '','60C-196783','A09'),(34,_binary '','60C-196783','A10');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tennhaxe` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Phuong Trang','371 Nguyen Kiem'),(2,'Cúc Phương','371 Nguyễn Kiệm, Gò Vấp, TPHMC'),(3,'Nguyên','371 Nguyễn Kiệm, Gò Vấp, TPHMC'),(5,'Kim Manh Hung','Dong Nai'),(6,' Nguyên','Đồng Nai'),(9,'Nguyen','Nguyen');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` date NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `bustrip_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bustrip_id_idx` (`bustrip_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `seat_idx` (`seat_id`),
  CONSTRAINT `bustrip` FOREIGN KEY (`bustrip_id`) REFERENCES `bustrip` (`id`) ON DELETE CASCADE,
  CONSTRAINT `seat` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'2022-08-29',200000,4,1,3),(2,'2022-08-29',200000,4,1,4),(3,'2022-08-29',200000,4,1,7),(4,'2022-08-30',200000,11,1,2),(5,'2022-08-30',200000,11,1,8),(6,'2022-08-30',200000,7,1,33),(7,'2022-08-30',200000,7,1,34),(8,'2022-08-30',200000,7,1,26),(9,'2022-08-30',200000,5,1,17),(10,'2022-08-30',200000,4,1,6);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `user_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'ROLE_USER',
  PRIMARY KEY (`id`),
  KEY `id_idx` (`firstname`),
  KEY `id_idx1` (`firstname`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','admin','$2a$12$DrGsJUfltR/6Rb25o6ajzeVCYmRUQtQyAvqmlPUI/ZtlcmHLRMDSK','nh77442@gmail.com',_binary '','ROLE_ADMIN'),(2,'Nguyen','Ha','nguyen498','$2a$12$DrGsJUfltR/6Rb25o6ajzeVCYmRUQtQyAvqmlPUI/ZtlcmHLRMDSK','nh77442@gmail.com',_binary '','ROLE_USER'),(3,'nguyen','nguyen','nguyen','$2a$10$wmnCTwh2NykmvdvRj3C8EebVYjENjrc1.xwzQMbDBv0vGEpGypCbW','nh77442@gmail.com',_binary '','ROLE_STATION');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 15:20:09
