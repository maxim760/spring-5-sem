-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64)
--
-- Host: localhost    Database: pizza_project
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `user_id` binary(16) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL,
  `entrance` varchar(100) DEFAULT NULL,
  `flat` int DEFAULT NULL,
  `commentary` text,
  `intercom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (_binary '\nm\r\ğR\íƒ\Ê?Ze',_binary '\ni~\ØR\íƒ\Ê?Ze','Ğ Ğ¾ÑÑĞ¸Ñ','ĞœĞ¾ÑĞºĞ²Ğ°','Ğ¦ĞµĞ½Ñ‚Ñ€Ğ°Ğ»ÑŒĞ½Ğ°Ñ','5','3',31,'Comment','none'),(_binary '3\ñJ\Ú\öMT»E\ÈH/13',_binary '(.F¤NOW·\öu\Ú\\%#','Ğ Ğ¾ÑÑĞ¸Ñ','ĞœÑ‹Ñ‚Ğ¸Ñ‰Ğ¸','Ğ‘ĞµÑ€ĞµĞ·Ğ¾Ğ²Ğ°Ñ','1','3',22,'ĞšĞ¾Ğ¼Ğ¼ĞµĞ½Ñ‚','none'),(_binary '€ÛŠ\ëW‘Mpµ°\ç{KN~',_binary '\ÊFUEXM\÷£6]–\É^\×','Ğ Ğ¾ÑÑĞ¸Ñ','ĞœĞ¾ÑĞºĞ²Ğ°','12','12','12',12,'12',NULL),(_binary '¸/É‚\ìüNØˆş\Çüb~g',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ','Ğ Ğ¾ÑÑĞ¸Ñ','ĞœĞ¾ÑĞºĞ²Ğ°','Ğ£Ğ»Ğ¸Ñ†Ğ° 123','51','99',1234,'12',NULL),(_binary '\È8\Ü\ì4=DŞœ>²\ÃlWy',_binary '’Ã±’/KÎ«\n\íºı°\í','Ğ Ğ¾ÑÑĞ¸Ñ','ĞšĞ¾ÑÑ‚Ñ€Ğ¾Ğ¼Ğ°','111','12','13',123,'',NULL),(_binary '\Ìq\Î>\ÛKEÙ¬0»a\êŸb',_binary 'pd\å‡VcNÂ‘?­ÿ\Ó','22','22','22','22','22',22,'22',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `to_user_id` binary(16) DEFAULT NULL,
  `from_user_id` binary(16) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `date_create` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `to_user_id` (`to_user_id`),
  KEY `from_user_id` (`from_user_id`),
  CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `certificates_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (_binary 'zb{\ÖML¡\Ù\çÖ®0„\ò',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',NULL,1234,'28 Ğ¾ĞºÑ‚. 2022 00:53:54'),(_binary 'ø•ÁKù¼Tº\Ï/t9',_binary '\ni~\ØR\íƒ\Ê?Ze',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',2,'28 Ğ¾ĞºÑ‚. 2022 00:57:12'),(_binary '\Üt™<GR©ú½¥ş{',_binary '(.F¤NOW·\öu\Ú\\%#',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',5000,'23 Ğ¾ĞºÑ‚. 2022 14:11:59'),(_binary '%„\ÍA\rL>™Os†\ê\ãŞ',_binary '(.F¤NOW·\öu\Ú\\%#',_binary '’Ã±’/KÎ«\n\íºı°\í',333,'23 Ğ¾ĞºÑ‚. 2022 14:33:19'),(_binary 'z\ò{\Ù0^DŠ¯À\Ğ>\ë¹\Î3',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',33,'23 Ğ¾ĞºÑ‚. 2022 14:11:50'),(_binary '~‹\ğlŒ«M›e\ò\ô¡ı',_binary '(.F¤NOW·\öu\Ú\\%#',NULL,234,'28 Ğ¾ĞºÑ‚. 2022 00:53:49'),(_binary '\n\Ãûµ.N\ì‘\ò„{ZÁ\è ',_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',_binary '’Ã±’/KÎ«\n\íºı°\í',550,'23 Ğ¾ĞºÑ‚. 2022 14:33:30');
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curiers`
--

DROP TABLE IF EXISTS `curiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curiers` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curiers`
--

LOCK TABLES `curiers` WRITE;
/*!40000 ALTER TABLE `curiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `curiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `good_type` varchar(100) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `img` text,
  `current_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (_binary '\noÕ”R\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,520,'Ğ’ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ° Ğ¸ ÑÑ‹Ñ€','Ğ¡Ğ»Ğ¸Ğ²Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ, Ğ²ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ°, Ğ¼Ğ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¿Ğ°Ñ€Ğ¼ĞµĞ·Ğ°Ğ½','https://thumb.tildacdn.com/tild3366-3337-4765-a362-613634396661/-\n/format/webp/20220518_Dostavka_02.jpg',520),(_binary '\npŠR\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,520,'Ğ¡ Ñ†Ñ‹Ğ¿Ğ»ĞµĞ½ĞºĞ¾Ğ¼ Ñ‡Ğ¸Ğ¿Ğ¾Ñ‚Ğ»Ğµ','Ğ¡Ğ»Ğ¸Ğ²Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ, Ğ¼Ğ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, ĞºÑƒÑ€Ğ¸Ğ½Ñ‹Ğµ Ğ±ĞµĞ´Ñ€Ğ°, ĞºÑ€Ğ°ÑĞ½Ñ‹Ğ¹ Ğ»ÑƒĞº, Ğ·ĞµĞ»ĞµĞ½Ñ‹Ğ¹ Ğ»ÑƒĞº, ÑĞ¾ÑƒÑ Ñ‡Ğ¸Ğ¿Ğ¾Ñ‚Ğ»Ğµ',' https://thumb.tildacdn.com/tild3931-6264-4962-b238-326630363734/-\n/format/webp/20220410_Dostavka_16.jpg',520),(_binary 'P¥\Ã\ã&Cm°w©Ş¯û','ĞŸĞ¸Ñ†Ñ†Ğ°',10,499,'Ğ’ĞµĞ´Ğ¶Ğ¸ Fit & Fresh','Ğ“Ñ€Ğ¸Ğ±Ñ‹, ĞœĞ°ÑĞ»Ğ¸Ğ½Ñ‹, Ğ¡Ğ²ĞµĞ¶Ğ¸Ğµ Ñ‚Ğ¾Ğ¼Ğ°Ñ‚Ñ‹, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¡Ñ‹Ñ€ Ğ¤ĞµÑ‚Ğ°, Ğ¢Ğ¾Ğ¼Ğ°Ñ‚Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%92%D0%95%D0%94%D0%96/NULL/NULL/RU',449),(_binary '†¾hV‘D©¦;2\÷k','ĞŸĞ¸Ñ†Ñ†Ğ°',7,569,'Ğ”Ğ¸Ğ°Ğ±Ğ»Ğ¾','Ğ›ÑƒĞº, ĞŸĞµĞ¿Ğ¿ĞµÑ€Ğ¾Ğ½Ğ¸, ĞŸĞµÑ€ĞµÑ† Ğ¥Ğ°Ğ»Ğ°Ğ¿ĞµĞ½ÑŒĞ¾, Ğ¡Ğ²ĞµĞ¶Ğ¸Ğµ Ñ‚Ğ¾Ğ¼Ğ°Ñ‚Ñ‹, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¢Ğ¾Ğ¼Ğ°Ñ‚Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%94%D0%98%D0%90/NULL/NULL/RU',529),(_binary 'ˆ›¬xR\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,530,'Ğ¡ Ğ¿Ğ°Ñ€Ğ¼Ğ¾Ğ¹ Ğ¸ Ñ€ÑƒĞºĞºĞ¾Ğ»Ğ¾Ğ¹','Ğ¡Ğ»Ğ¸Ğ²Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ, Ğ¼Ğ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¿Ğ°Ñ€Ğ¼Ğ°, Ñ€ÑƒĞºĞºĞ¾Ğ»Ğ°, Ğ¿Ğ¾Ğ¼Ğ¸Ğ´Ğ¾Ñ€Ñ‹ Ñ‡ĞµÑ€Ñ€Ğ¸','https://thumb.tildacdn.com/tild3066-3665-4361-a364-653265643233/-/format/webp/20220410_Dostavka_06.jpg',530),(_binary 'ˆ\Ï0R\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,309,'Ğ¡Ñ‹Ñ€Ğ½Ğ°Ñ Ñ Ğ²ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ¾Ğ¹','Ğ’ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ°, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¢Ğ¾Ğ¼Ğ°Ñ‚Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/CHHM/NULL/NULL/RU',309),(_binary 'ˆR\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,439,'ĞŸĞµĞ¿Ğ¿ĞµÑ€Ğ¾Ğ½Ğ¸ Ğ Ğ°Ğ½Ñ‡','ĞŸĞµĞ¿Ğ¿ĞµÑ€Ğ¾Ğ½Ğ¸, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¡Ğ¾ÑƒÑ Ğ§ĞµÑĞ½Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ ĞÑ€Ğ¸Ğ³Ğ¸Ğ½Ğ°Ğ»ÑŒĞ½Ñ‹Ğ¹','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/PEPERANC/NULL/NULL/RU',439),(_binary 'ˆ?’R\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,729,'4 ÑĞµĞ·Ğ¾Ğ½Ğ°','Ğ‘ĞµĞºĞ¾Ğ½, Ğ’ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ°, Ğ“Ñ€Ğ¸Ğ±Ñ‹, ĞšÑƒÑ€Ğ¸Ñ†Ğ°, Ğ›ÑƒĞº, ĞœĞ°ÑĞ»Ğ¸Ğ½Ñ‹, ĞĞ³ÑƒÑ€Ñ†Ñ‹ Ğ¼Ğ°Ñ€Ğ¸Ğ½Ğ¾Ğ²Ğ°Ğ½Ğ½Ñ‹Ğµ, ĞÑ…Ğ¾Ñ‚Ğ½Ğ¸Ñ‡ÑŒĞ¸ ĞºĞ¾Ğ»Ğ±Ğ°ÑĞºĞ¸, ĞŸĞµĞ¿Ğ¿ĞµÑ€Ğ¾Ğ½Ğ¸','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/4SEASON/NULL/NULL/RU',729),(_binary 'ˆh\ÜR\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,429,'Ğ§Ğ¸ĞºĞµĞ½ BBQ','Ğ“Ñ€Ğ¸Ğ±Ñ‹, ĞšÑƒÑ€Ğ¸Ñ†Ğ°, Ğ›ÑƒĞº, Ğ¡Ğ¾ÑƒÑ BBQ, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°, Ğ¢Ğ¾Ğ¼Ğ°Ñ‚Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%A7BBQ/NULL/NULL/RU',429),(_binary 'ˆšŒR\íƒ\Ê?Ze','ĞŸĞ¸Ñ†Ñ†Ğ°',0,429,'ĞšĞ°Ñ€Ğ°Ğ¼ĞµĞ»ÑŒĞ½Ñ‹Ğ¹ ĞĞ½Ğ°Ğ½Ğ°Ñ','ĞĞ½Ğ°Ğ½Ğ°Ñ, Ğ¡Ğ¾ÑƒÑ ĞšĞ°Ñ€Ğ°Ğ¼ĞµĞ»ÑŒĞ½Ñ‹Ğ¹, Ğ¡Ğ¾ÑƒÑ Ğ¡Ñ‹Ñ€Ğ½Ñ‹Ğ¹, Ğ¡Ñ‹Ñ€ ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/KARPNAPL/NULL/NULL/RU',429),(_binary 'ˆ¾\êR\íƒ\Ê?Ze','ĞĞ°Ğ¿Ğ¸Ñ‚Ğ¾Ğº',0,1491,'ĞšĞ¾Ñ„Ğµ Ğ›Ğ°Ñ‚Ñ‚Ğµ','ĞšĞ¾Ñ„Ğµ Ğ›Ğ°Ñ‚Ñ‚Ğµ 300Ğ¼Ğ»','https://staticy.dominospizza.ru/api/medium/Product/Global/LATTE300D/NULL/NULL/RU',1491),(_binary 'ˆŞ¢R\íƒ\Ê?Ze','ĞĞ°Ğ¿Ğ¸Ñ‚Ğ¾Ğº',0,99,'Lipton Ğ›Ğ¸Ğ¼Ğ¾Ğ½','Ğ§Ğ°Ğ¹ ÑĞ¾ Ğ²ĞºÑƒÑĞ¾Ğ¼ Ğ»Ğ¸Ğ¼Ğ¾Ğ½Ğ° Lipton 0,5 Ğ»Ğ¸Ñ‚Ñ€Ğ°.','https://staticy.dominospizza.ru/api/medium/Product/Global/LIPLM05/NULL/NULL/RU',99),(_binary 'ˆŸBR\íƒ\Ê?Ze','Ğ—Ğ°ĞºÑƒÑĞºĞ¸',0,189,'Ğ¤Ğ¸Ñ€Ğ¼ĞµĞ½Ğ½Ñ‹Ğ¹ ĞºĞ°Ñ€Ñ‚Ğ¾Ñ„ĞµĞ»ÑŒ Ğ¸Ğ· Ğ¿ĞµÑ‡Ğ¸','ĞŸĞ¾Ñ€Ñ†Ğ¸Ñ 95 Ğ³. Ğ¤Ğ¸Ñ€Ğ¼ĞµĞ½Ğ½Ñ‹Ğ¹ ĞºĞ°Ñ€Ñ‚Ğ¾Ñ„ĞµĞ»ÑŒ Ğ¸Ğ· Ğ¿ĞµÑ‡Ğ¸','https://staticy.dominospizza.ru/api/medium/Product/Global/KARPECML/NULL/NULL/RU',189),(_binary 'ˆŸ1†R\íƒ\Ê?Ze','Ğ—Ğ°ĞºÑƒÑĞºĞ¸',0,239,'ĞšÑƒpĞ¸Ğ½Ñ‹Ğµ ĞºÑ€Ñ‹Ğ»ÑŒÑ','ĞŸĞ¾Ñ€Ñ†Ğ¸Ñ 4 ÑˆÑ‚. ĞĞ¿Ğ¿ĞµÑ‚Ğ¸Ñ‚Ğ½Ñ‹Ğµ ĞºÑ€Ñ‹Ğ»Ñ‹ÑˆĞºĞ¸ Ñ Ğ½Ğ°ÑÑ‹Ñ‰ĞµĞ½Ğ½Ñ‹Ğ¼ Ğ¼Ğ½Ğ¾Ğ³Ğ¾Ğ³Ñ€Ğ°Ğ½Ğ½Ñ‹Ğ¼ Ğ²ĞºÑƒÑĞ¾Ğ¼ Ğ¸ Ğ½Ğ¾Ñ‚ĞºĞ°Ğ¼Ğ¸ ĞºĞ¾Ğ¿Ñ‡ĞµĞ½Ğ¾ÑÑ‚Ğ¸.','https://staticy.dominospizza.ru/api/medium/Product/Global/CHWSM/NULL/NULL/RU',239);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `goods_BEFORE_INSERT` BEFORE INSERT ON `goods` FOR EACH ROW BEGIN
	set new.discount=10;
    set new.current_price=new.price*0.9;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order_goods`
--

DROP TABLE IF EXISTS `order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_goods` (
  `order_id` binary(16) NOT NULL,
  `goods_id` binary(16) NOT NULL,
  `id` mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `order_goods_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_goods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_goods`
--

LOCK TABLES `order_goods` WRITE;
/*!40000 ALTER TABLE `order_goods` DISABLE KEYS */;
INSERT INTO `order_goods` VALUES (_binary '\ÜQ¹\Å\è˜C\õ±\ÏÀ\ÙH1“',_binary '\npŠR\íƒ\Ê?Ze',15),(_binary '\ÜQ¹\Å\è˜C\õ±\ÏÀ\ÙH1“',_binary 'ˆ?’R\íƒ\Ê?Ze',16),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',18),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',19),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary 'ˆ¾\êR\íƒ\Ê?Ze',20),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary 'ˆ¾\êR\íƒ\Ê?Ze',21),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary 'ˆŞ¢R\íƒ\Ê?Ze',22),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary '\noÕ”R\íƒ\Ê?Ze',23),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary '\noÕ”R\íƒ\Ê?Ze',24),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary '\noÕ”R\íƒ\Ê?Ze',25),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary 'ˆ›¬xR\íƒ\Ê?Ze',26),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary 'ˆšŒR\íƒ\Ê?Ze',27),(_binary 'Á^\ô™qBÄ–¿\ÍaJ\å\Ş\'',_binary 'ˆ›¬xR\íƒ\Ê?Ze',28),(_binary 'Á^\ô™qBÄ–¿\ÍaJ\å\Ş\'',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',29),(_binary 'Á^\ô™qBÄ–¿\ÍaJ\å\Ş\'',_binary 'ˆh\ÜR\íƒ\Ê?Ze',30),(_binary 'Á^\ô™qBÄ–¿\ÍaJ\å\Ş\'',_binary 'ˆ?’R\íƒ\Ê?Ze',31),(_binary 'emÕ¹ G_šl\â¥=G\r',_binary '\npŠR\íƒ\Ê?Ze',32),(_binary 'emÕ¹ G_šl\â¥=G\r',_binary 'ˆŸ1†R\íƒ\Ê?Ze',33),(_binary 'emÕ¹ G_šl\â¥=G\r',_binary 'ˆŸ1†R\íƒ\Ê?Ze',34),(_binary 'emÕ¹ G_šl\â¥=G\r',_binary 'ˆŸ1†R\íƒ\Ê?Ze',35),(_binary '¶-\ólk¿Jiœ\ß7gOB',_binary 'ˆŸBR\íƒ\Ê?Ze',40),(_binary '¶-\ólk¿Jiœ\ß7gOB',_binary 'ˆ\Ï0R\íƒ\Ê?Ze',41),(_binary '¶-\ólk¿Jiœ\ß7gOB',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',42),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',44),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',45),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',46),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',47),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',48),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',49),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',50),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',51),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',52),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',53),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',54),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',55),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',56),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',57),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',58),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',59),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',60),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',61),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',62),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',63),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',64),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',65),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',66),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',67),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',68),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',69),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',70),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',71),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',72),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',73),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',74),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',75),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',76),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',77),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',78),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',79),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',80),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',81),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',82),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',83),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',84),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',85),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',86),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',87),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',88),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',89),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',90),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',91),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',92),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',93),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',94),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',95),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',96),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',97),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',98),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',99),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '\noÕ”R\íƒ\Ê?Ze',100),(_binary '>¦\å°OŒ¬W\Ç\è\îxŒ',_binary '\noÕ”R\íƒ\Ê?Ze',101),(_binary '>¦\å°OŒ¬W\Ç\è\îxŒ',_binary '\noÕ”R\íƒ\Ê?Ze',102),(_binary '>¦\å°OŒ¬W\Ç\è\îxŒ',_binary '\noÕ”R\íƒ\Ê?Ze',103),(_binary '\Ó\ÍqV‘Ef´Av’@\Ël\à',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',104),(_binary '\Ó\ÍqV‘Ef´Av’@\Ël\à',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',105),(_binary '\Ó\ÍqV‘Ef´Av’@\Ël\à',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',106),(_binary '¿\ö\Î]ŠAŞ«J[›\Õ',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',107),(_binary '¿\ö\Î]ŠAŞ«J[›\Õ',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',108),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŞ¢R\íƒ\Ê?Ze',109),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',110),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',111),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',112),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',113),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',114),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',115),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŸBR\íƒ\Ê?Ze',116),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary 'ˆŞ¢R\íƒ\Ê?Ze',117),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆšŒR\íƒ\Ê?Ze',118),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆšŒR\íƒ\Ê?Ze',119),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆ¾\êR\íƒ\Ê?Ze',120),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆ¾\êR\íƒ\Ê?Ze',121),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆŸBR\íƒ\Ê?Ze',122),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆŸBR\íƒ\Ê?Ze',123),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆŸBR\íƒ\Ê?Ze',124),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',_binary 'ˆŸ1†R\íƒ\Ê?Ze',125),(_binary '\ğ7\Ï2kE„ª\îj­\Ì:µ\Û',_binary 'ˆŸBR\íƒ\Ê?Ze',126),(_binary '\ğ7\Ï2kE„ª\îj­\Ì:µ\Û',_binary 'ˆŸBR\íƒ\Ê?Ze',127),(_binary '\ğ7\Ï2kE„ª\îj­\Ì:µ\Û',_binary 'ˆŸ1†R\íƒ\Ê?Ze',128),(_binary '\ğ7\Ï2kE„ª\îj­\Ì:µ\Û',_binary 'ˆ?’R\íƒ\Ê?Ze',129),(_binary 'ÁM¹¿a¬NXj\÷Ë±®€;',_binary '\npŠR\íƒ\Ê?Ze',130),(_binary 'ÁM¹¿a¬NXj\÷Ë±®€;',_binary '\npŠR\íƒ\Ê?Ze',131),(_binary 'ÁM¹¿a¬NXj\÷Ë±®€;',_binary '\npŠR\íƒ\Ê?Ze',132);
/*!40000 ALTER TABLE `order_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_goods_AFTER_INSERT` AFTER INSERT ON `order_goods` FOR EACH ROW BEGIN
update products 
inner join product_goods
on products.id = product_goods.product_id
inner join goods 
on goods.id = product_goods.goods_id
set count = count - 1
where goods.id = new.goods_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `user_id` binary(16) DEFAULT NULL,
  `date_create` varchar(100) DEFAULT NULL,
  `with_delivery` tinyint(1) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (_binary 'Á^\ô™qBÄ–¿\ÍaJ\å\Ş\'',_binary '(.F¤NOW·\öu\Ú\\%#','23 Ğ¾ĞºÑ‚. 2022 14:16:56',0,2137,1666523816999),(_binary '.\Ù.l\Z=EÙ±‡\ÚJ´Ì†',NULL,'28 Ğ¾ĞºÑ‚. 2022 00:54:06',0,1942,1666907646028),(_binary '>¦\å°OŒ¬W\Ç\è\îxŒ',_binary '(.F¤NOW·\öu\Ú\\%#','27 Ğ¾ĞºÑ‚. 2022 14:32:52',0,1560,1666870372274),(_binary 'Zw”@U°\Ô\ïˆHÇ–',_binary '(.F¤NOW·\öu\Ú\\%#','23 Ğ¾ĞºÑ‚. 2022 14:16:31',0,2519,1666523791250),(_binary 'emÕ¹ G_šl\â¥=G\r',_binary '(.F¤NOW·\öu\Ú\\%#','23 Ğ¾ĞºÑ‚. 2022 14:17:56',0,1237,1666523876500),(_binary 'z\ÍùF«Ù‚¥\î#ko',_binary '(.F¤NOW·\öu\Ú\\%#','23 Ğ¾ĞºÑ‚. 2022 14:16:08',1,1545,1666523768399),(_binary 'Š}\Û\ö¾Hœ\Ë(’]e¸7',_binary '(.F¤NOW·\öu\Ú\\%#','28 Ğ¾ĞºÑ‚. 2022 00:33:20',0,1521,1666906400764),(_binary 'µ?¸\ö;|GO\ß2\à\ZO2”',_binary '(.F¤NOW·\öu\Ú\\%#','27 Ğ¾ĞºÑ‚. 2022 14:31:15',0,29640,1666870275151),(_binary '¶-\ólk¿Jiœ\ß7gOB',_binary '’Ã±’/KÎ«\n\íºı°\í','23 Ğ¾ĞºÑ‚. 2022 14:33:59',1,1217,1666524839268),(_binary '¿\ö\Î]ŠAŞ«J[›\Õ',_binary '(.F¤NOW·\öu\Ú\\%#','28 Ğ¾ĞºÑ‚. 2022 00:18:22',0,898,1666905502472),(_binary 'ÁM¹¿a¬NXj\÷Ë±®€;',_binary '(.F¤NOW·\öu\Ú\\%#','28 Ğ½Ğ¾ÑĞ±. 2022 11:02:41',0,1560,1669622561722),(_binary '\Ó\ÍqV‘Ef´Av’@\Ël\à',_binary '(.F¤NOW·\öu\Ú\\%#','28 Ğ¾ĞºÑ‚. 2022 00:17:39',0,1347,1666905459186),(_binary '\ÜQ¹\Å\è˜C\õ±\ÏÀ\ÙH1“',_binary '(.F¤NOW·\öu\Ú\\%#','23 Ğ¾ĞºÑ‚. 2022 01:13:27',0,1249,1666476807734),(_binary '\ğ7\Ï2kE„ª\îj­\Ì:µ\Û',_binary '(.F¤NOW·\öu\Ú\\%#','28 Ğ¾ĞºÑ‚. 2022 01:03:42',0,1346,1666908222883);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_goods`
--

DROP TABLE IF EXISTS `product_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_goods` (
  `product_id` binary(16) NOT NULL,
  `goods_id` binary(16) NOT NULL,
  `id` mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `product_goods_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_goods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_goods`
--

LOCK TABLES `product_goods` WRITE;
/*!40000 ALTER TABLE `product_goods` DISABLE KEYS */;
INSERT INTO `product_goods` VALUES (_binary 'ŸE\ó.R\íƒ\Ê?Ze',_binary '\noÕ”R\íƒ\Ê?Ze',1),(_binary 'ŸE\ó.R\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',2),(_binary 'ŸFR\íƒ\Ê?Ze',_binary '\noÕ”R\íƒ\Ê?Ze',3),(_binary 'ŸFR\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',4),(_binary 'ŸF\Z R\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',5),(_binary 'ŸF\Z„R\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',6),(_binary 'ŸF\Z\ÔR\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',7),(_binary 'ŸF\ZR\íƒ\Ê?Ze',_binary '\npŠR\íƒ\Ê?Ze',8),(_binary 'ŸFjR\íƒ\Ê?Ze',_binary '\noÕ”R\íƒ\Ê?Ze',9),(_binary 'ŸFdR\íƒ\Ê?Ze',_binary '\noÕ”R\íƒ\Ê?Ze',10),(_binary 'ˆŸt\ŞR\íƒ\Ê?Ze',_binary 'ˆ›¬xR\íƒ\Ê?Ze',11),(_binary 'ˆŸ„ˆR\íƒ\Ê?Ze',_binary 'ˆ›¬xR\íƒ\Ê?Ze',12),(_binary 'ˆŸ„\ÎR\íƒ\Ê?Ze',_binary 'ˆ›¬xR\íƒ\Ê?Ze',13),(_binary 'ˆŸ…(R\íƒ\Ê?Ze',_binary 'ˆ\Ï0R\íƒ\Ê?Ze',14),(_binary 'ˆŸ…(R\íƒ\Ê?Ze',_binary 'ˆh\ÜR\íƒ\Ê?Ze',15),(_binary 'ˆŸ…PR\íƒ\Ê?Ze',_binary 'ˆR\íƒ\Ê?Ze',16),(_binary 'ˆŸ…xR\íƒ\Ê?Ze',_binary 'ˆR\íƒ\Ê?Ze',17),(_binary 'ˆŸ…–R\íƒ\Ê?Ze',_binary 'ˆ?’R\íƒ\Ê?Ze',18),(_binary 'ˆŸ…ªR\íƒ\Ê?Ze',_binary 'ˆ?’R\íƒ\Ê?Ze',19),(_binary 'ˆŸ…\ÈR\íƒ\Ê?Ze',_binary 'ˆ?’R\íƒ\Ê?Ze',20),(_binary 'ˆŸ…\ÈR\íƒ\Ê?Ze',_binary 'ˆh\ÜR\íƒ\Ê?Ze',21),(_binary 'ˆŸ…úR\íƒ\Ê?Ze',_binary 'ˆ?’R\íƒ\Ê?Ze',22),(_binary 'ˆŸ…úR\íƒ\Ê?Ze',_binary 'ˆh\ÜR\íƒ\Ê?Ze',23),(_binary 'ˆŸ†R\íƒ\Ê?Ze',_binary 'ˆ?’R\íƒ\Ê?Ze',24),(_binary 'ˆŸ†,R\íƒ\Ê?Ze',_binary 'ˆh\ÜR\íƒ\Ê?Ze',25),(_binary 'ˆŸ†JR\íƒ\Ê?Ze',_binary 'ˆšŒR\íƒ\Ê?Ze',26),(_binary 'ˆŸ†\ÌR\íƒ\Ê?Ze',_binary 'ˆšŒR\íƒ\Ê?Ze',27),(_binary 'ˆŸ†\ôR\íƒ\Ê?Ze',_binary 'ˆšŒR\íƒ\Ê?Ze',28),(_binary 'ˆŸ‡R\íƒ\Ê?Ze',_binary 'ˆ¾\êR\íƒ\Ê?Ze',29),(_binary 'ˆŸ‡&R\íƒ\Ê?Ze',_binary 'ˆŞ¢R\íƒ\Ê?Ze',30),(_binary 'ˆŸ‡DR\íƒ\Ê?Ze',_binary 'ˆŸBR\íƒ\Ê?Ze',31),(_binary 'ˆŸ‡bR\íƒ\Ê?Ze',_binary 'ˆŸ1†R\íƒ\Ê?Ze',32),(_binary 'ˆŸ…(R\íƒ\Ê?Ze',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',33),(_binary 'ˆŸ…–R\íƒ\Ê?Ze',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',34),(_binary 'ˆŸ…\ÈR\íƒ\Ê?Ze',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',35),(_binary 'ŸFR\íƒ\Ê?Ze',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',36),(_binary '­\Ïş1ˆCCq]X©d¶´',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',37),(_binary 'İ‚8u™O|±Pq—iú1:',_binary 'P¥\Ã\ã&Cm°w©Ş¯û',38),(_binary ',;\êW:E)˜i$¢mo|',_binary '†¾hV‘D©¦;2\÷k',39),(_binary 'ˆŸ…(R\íƒ\Ê?Ze',_binary '†¾hV‘D©¦;2\÷k',40),(_binary 'ˆŸ…xR\íƒ\Ê?Ze',_binary '†¾hV‘D©¦;2\÷k',41),(_binary 'ŸFR\íƒ\Ê?Ze',_binary '†¾hV‘D©¦;2\÷k',42),(_binary 'İ‚8u™O|±Pq—iú1:',_binary '†¾hV‘D©¦;2\÷k',43),(_binary 'ã¼„–\ZYJfˆ{¦ÿ\ÈBø',_binary '†¾hV‘D©¦;2\÷k',44);
/*!40000 ALTER TABLE `product_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `count` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (_binary ',;\êW:E)˜i$¢mo|',10,'Ğ›ÑƒĞº'),(_binary 'ˆŸt\ŞR\íƒ\Ê?Ze',78,'ĞŸĞ°Ñ€Ğ¼Ğ°'),(_binary 'ˆŸ„ˆR\íƒ\Ê?Ze',100,'Ğ ÑƒĞºĞ¾Ğ»Ğ»Ğ°'),(_binary 'ˆŸ„\ÎR\íƒ\Ê?Ze',66,'ĞŸĞ¾Ğ¼Ğ¸Ğ´Ğ¾Ñ€Ñ‹ Ñ‡ĞµÑ€Ñ€Ğ¸'),(_binary 'ˆŸ…(R\íƒ\Ê?Ze',94,'Ğ¢Ğ¾Ğ¼Ğ°Ñ‚Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ'),(_binary 'ˆŸ…PR\íƒ\Ê?Ze',23,'Ğ¡Ğ¾ÑƒÑ Ñ‡ĞµÑĞ½Ğ¾Ñ‡Ğ½Ñ‹Ğ¹'),(_binary 'ˆŸ…xR\íƒ\Ê?Ze',122,'ĞŸĞµĞ¿ĞµÑ€Ğ¾Ğ½Ğ½Ğ¸'),(_binary 'ˆŸ…–R\íƒ\Ê?Ze',228,'ĞœĞ°ÑĞ»Ğ¸Ğ½Ñ‹'),(_binary 'ˆŸ…ªR\íƒ\Ê?Ze',233,'Ğ‘ĞµĞºĞ¾Ğ½'),(_binary 'ˆŸ…\ÈR\íƒ\Ê?Ze',93,'Ğ“Ñ€Ğ¸Ğ±Ñ‹'),(_binary 'ˆŸ…úR\íƒ\Ê?Ze',499,'ĞšÑƒÑ€Ğ¸Ñ†Ğ°'),(_binary 'ˆŸ†R\íƒ\Ê?Ze',94,'ĞĞ³ÑƒÑ€Ñ†Ñ‹'),(_binary 'ˆŸ†,R\íƒ\Ê?Ze',108,'Ğ¡Ğ¾ÑƒÑ BBQ'),(_binary 'ˆŸ†JR\íƒ\Ê?Ze',11,'ĞĞ½Ğ°Ğ½Ğ°Ñ'),(_binary 'ˆŸ†\ÌR\íƒ\Ê?Ze',108,'Ğ¡Ğ¾ÑƒÑ ĞºĞ°Ñ€Ğ°Ğ¼ĞµĞ»ÑŒĞ½Ñ‹Ğ¹'),(_binary 'ˆŸ†\ôR\íƒ\Ê?Ze',898,'Ğ¡Ğ¾ÑƒÑ ÑÑ‹Ñ€Ğ½Ñ‹Ğ¹'),(_binary 'ˆŸ‡R\íƒ\Ê?Ze',38,'ĞšĞ¾Ñ„Ğµ Ğ»Ğ°Ñ‚Ñ‚Ğµ 300Ğ¼Ğ»'),(_binary 'ˆŸ‡&R\íƒ\Ê?Ze',94,'Ğ§Ğ°Ğ¹ Ğ»Ğ¸Ğ¿Ñ‚Ğ¾Ğ½'),(_binary 'ˆŸ‡DR\íƒ\Ê?Ze',6,'ĞšĞ°Ñ€Ñ‚Ğ¾Ñ„ĞµĞ»ÑŒ Ğ¸Ğ· Ğ¿ĞµÑ‡Ğ¸ Ñ„Ğ¸Ñ€Ğ¼ĞµĞ½Ğ½Ñ‹Ğ¹'),(_binary 'ˆŸ‡bR\íƒ\Ê?Ze',92,'ĞšÑƒÑ€Ğ¸Ğ½Ñ‹Ğµ ĞºÑ€Ñ‹Ğ»ÑŒÑ'),(_binary 'ŸE\ó.R\íƒ\Ê?Ze',27,'Ğ¡Ğ»Ğ¸Ğ²Ğ¾Ñ‡Ğ½Ñ‹Ğ¹ ÑĞ¾ÑƒÑ'),(_binary 'ŸFR\íƒ\Ê?Ze',17,'ĞœĞ¾Ñ†Ğ°Ñ€ĞµĞ»Ğ»Ğ°'),(_binary 'ŸF\Z R\íƒ\Ê?Ze',90,'ĞšÑƒÑ€Ğ¸Ğ½Ñ‹Ğµ Ğ±ĞµĞ´Ñ€Ğ°'),(_binary 'ŸF\Z„R\íƒ\Ê?Ze',496,'ĞšÑ€Ğ°ÑĞ½Ñ‹Ğ¹ Ğ»ÑƒĞº'),(_binary 'ŸF\Z\ÔR\íƒ\Ê?Ze',90,'Ğ—ĞµĞ»ĞµĞ½Ñ‹Ğ¹ Ğ»ÑƒĞº'),(_binary 'ŸF\ZR\íƒ\Ê?Ze',90,'Ğ¡Ğ¾ÑƒÑ Ñ‡Ğ¸Ğ¿Ğ¾Ñ‚Ğ»Ğµ'),(_binary 'ŸFjR\íƒ\Ê?Ze',234,'Ğ’ĞµÑ‚Ñ‡Ğ¸Ğ½Ğ°'),(_binary 'ŸFdR\íƒ\Ê?Ze',440,'ĞŸĞ°Ñ€Ğ¼ĞµĞ·Ğ°Ğ½'),(_binary '­\Ïş1ˆCCq]X©d¶´',10,'Ğ¡Ñ‹Ñ€ Ñ„ĞµÑ‚Ğ°'),(_binary 'İ‚8u™O|±Pq—iú1:',40,'ĞŸĞ¾Ğ¼Ğ¸Ğ´Ğ¾Ñ€Ñ‹'),(_binary 'ã¼„–\ZYJfˆ{¦ÿ\ÈBø',35,'ĞŸĞµÑ€ĞµÑ† Ğ¥Ğ°Ğ»Ğ°Ğ¿ĞµĞ½ÑŒĞ¾');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (_binary '\nlH\èR\íƒ\Ê?Ze','user'),(_binary '\ô\á©V´ I\à7\ë\í0=|','ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` binary(16) NOT NULL,
  `role_id` binary(16) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (_binary '\ni~\ØR\íƒ\Ê?Ze',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary '’Ã±’/KÎ«\n\íºı°\í',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary '(.F¤NOW·\öu\Ú\\%#',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary 'pd\å‡VcNÂ‘?­ÿ\Ó',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary '\ÊFUEXM\÷£6]–\É^\×',_binary '\nlH\èR\íƒ\Ê?Ze'),(_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ',_binary '\ô\á©V´ I\à7\ë\í0=|'),(_binary '\ÊFUEXM\÷£6]–\É^\×',_binary '\ô\á©V´ I\à7\ë\í0=|');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` binary(16) NOT NULL DEFAULT (uuid_to_bin(uuid())),
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cash` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (_binary '\ni~\ØR\íƒ\Ê?Ze','maxim','smirnov','maxim22','888000','0000','test@mil.ru',24),(_binary '\ã„Q\ì\ïG¡£Ò’\Ä?9×ˆ','Admin','Account','ADMIN','92033344455','$2a$10$n7M8QSgF32D8Xtvs8SZxrupBFRuLVHfaFE2CA8/qIWcWGDO1aG6QC','maks.tomanov@admin.admin',85849),(_binary '’Ã±’/KÎ«\n\íºı°\í','user','user','user','234','$2a$10$EnqEjc8lPMWCOCglyzNeUOXBSUEeagx9kKJrJjeXUnu2.t0Dn0cEO','USER@USER.USER',7890),(_binary '(.F¤NOW·\öu\Ú\\%#','maxim','TOmanov','maxim760','833456','$2a$10$jWwo3Vm99MRtqBTAsrWe2O.zBLUQRlnYiWMCu8RXQfj1DTwzXNfuK','maks.tonaniv@mailry.ert',74514),(_binary 'pd\å‡VcNÂ‘?­ÿ\Ó','user2','user2','user2','22','$2a$10$dtgYpRm2uhddMEd0RUaA/OcHSjzQZG0ThXu0m56bM.hso1hWqY7Si','wer@wer.ww',123),(_binary '\ÊFUEXM\÷£6]–\É^\×','Admin','Admin','MAIN','23','$2a$10$nTyUgO4GS489CuEqYZt0HOAfN8h5yytHWCloS5xHX33eGR/nDH87q','mail@mail.ru',13368);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_AFTER_DELETE` AFTER DELETE ON `users` FOR EACH ROW BEGIN
	delete from addresses where user_id = old.id;
    delete from user_roles where user_roles.user_id = old.id;
    delete from orders where orders.user_id = old.id;
    delete order_goods from order_goods 
    left join orders 
    on order_goods.order_id = orders.id
    where orders.user_id = old.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 13:05:59
