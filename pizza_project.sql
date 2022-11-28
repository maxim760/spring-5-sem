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
INSERT INTO `addresses` VALUES (_binary '\nm\r\�R\�\�?Ze',_binary '\ni~\�R\�\�?Ze','Россия','Москва','Центральная','5','3',31,'Comment','none'),(_binary '3\�J\�\�MT�E\�H/13',_binary '(.F�NOW�\�u\�\\%#','Россия','Мытищи','Березовая','1','3',22,'Коммент','none'),(_binary '�ۊ\�W�Mp��\�{KN~',_binary '\�FUEXM\��6]�\�^\�','Россия','Москва','12','12','12',12,'12',NULL),(_binary '�/ɂ\��N؈�\��b~g�',_binary '\�Q\�\�G��Ғ\�?9׈','Россия','Москва','Улица 123','51','99',1234,'12',NULL),(_binary '\�8\�\�4=Dޜ>�\�lWy',_binary '�ñ�/KΫ\n\���\�','Россия','Кострома','111','12','13',123,'',NULL),(_binary '\�q\�>\�KE٬0�a\�b',_binary 'pd\�VcN?��\��','22','22','22','22','22',22,'22',NULL);
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
INSERT INTO `certificates` VALUES (_binary 'zb{\�ML�\�\�֮0�\�',_binary '\�Q\�\�G��Ғ\�?9׈',NULL,1234,'28 окт. 2022 00:53:54'),(_binary '���K��T�\�/t9',_binary '\ni~\�R\�\�?Ze',_binary '\�Q\�\�G��Ғ\�?9׈',2,'28 окт. 2022 00:57:12'),(_binary '\�t��<GR�����{',_binary '(.F�NOW�\�u\�\\%#',_binary '\�Q\�\�G��Ғ\�?9׈',5000,'23 окт. 2022 14:11:59'),(_binary '%�\�A\rL>�Os�\�\�ސ',_binary '(.F�NOW�\�u\�\\%#',_binary '�ñ�/KΫ\n\���\�',333,'23 окт. 2022 14:33:19'),(_binary 'z\�{\�0^D���\�>\�\�3',_binary '\�Q\�\�G��Ғ\�?9׈',_binary '\�Q\�\�G��Ғ\�?9׈',33,'23 окт. 2022 14:11:50'),(_binary '~�\�l��M�e\�\����',_binary '(.F�NOW�\�u\�\\%#',NULL,234,'28 окт. 2022 00:53:49'),(_binary '�\n\���.N\�\�{Z�\� ',_binary '\�Q\�\�G��Ғ\�?9׈',_binary '�ñ�/KΫ\n\���\�',550,'23 окт. 2022 14:33:30');
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
INSERT INTO `goods` VALUES (_binary '\noՔR\�\�?Ze','Пицца',0,520,'Ветчина и сыр','Сливочный соус, ветчина, моцарелла, пармезан','https://thumb.tildacdn.com/tild3366-3337-4765-a362-613634396661/-\n/format/webp/20220518_Dostavka_02.jpg',520),(_binary '\np�R\�\�?Ze','Пицца',0,520,'С цыпленком чипотле','Сливочный соус, моцарелла, куриные бедра, красный лук, зеленый лук, соус чипотле',' https://thumb.tildacdn.com/tild3931-6264-4962-b238-326630363734/-\n/format/webp/20220410_Dostavka_16.jpg',520),(_binary 'P�\�\�&Cm�w��ޯ�','Пицца',10,499,'Веджи Fit & Fresh','Грибы, Маслины, Свежие томаты, Сыр Моцарелла, Сыр Фета, Томатный соус','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%92%D0%95%D0%94%D0%96/NULL/NULL/RU',449),(_binary '��hV�D��;2\�k','Пицца',7,569,'Диабло','Лук, Пепперони, Перец Халапеньо, Свежие томаты, Сыр Моцарелла, Томатный соус','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%94%D0%98%D0%90/NULL/NULL/RU',529),(_binary '���xR\�\�?Ze','Пицца',0,530,'С пармой и рукколой','Сливочный соус, моцарелла, парма, руккола, помидоры черри','https://thumb.tildacdn.com/tild3066-3665-4361-a364-653265643233/-/format/webp/20220410_Dostavka_06.jpg',530),(_binary '��\�0R\�\�?Ze','Пицца',0,309,'Сырная с ветчиной','Ветчина, Сыр Моцарелла, Томатный соус','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/CHHM/NULL/NULL/RU',309),(_binary '��R\�\�?Ze','Пицца',0,439,'Пепперони Ранч','Пепперони, Сыр Моцарелла, Соус Чесночный Оригинальный','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/PEPERANC/NULL/NULL/RU',439),(_binary '��?�R\�\�?Ze','Пицца',0,729,'4 сезона','Бекон, Ветчина, Грибы, Курица, Лук, Маслины, Огурцы маринованные, Охотничьи колбаски, Пепперони','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/4SEASON/NULL/NULL/RU',729),(_binary '��h\�R\�\�?Ze','Пицца',0,429,'Чикен BBQ','Грибы, Курица, Лук, Соус BBQ, Сыр Моцарелла, Томатный соус','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/%D0%A7BBQ/NULL/NULL/RU',429),(_binary '����R\�\�?Ze','Пицца',0,429,'Карамельный Ананас','Ананас, Соус Карамельный, Соус Сырный, Сыр Моцарелла','https://staticy.dominospizza.ru/api/medium/ProductOsg/Web/KARPNAPL/NULL/NULL/RU',429),(_binary '���\�R\�\�?Ze','Напиток',0,1491,'Кофе Латте','Кофе Латте 300мл','https://staticy.dominospizza.ru/api/medium/Product/Global/LATTE300D/NULL/NULL/RU',1491),(_binary '��ޢR\�\�?Ze','Напиток',0,99,'Lipton Лимон','Чай со вкусом лимона Lipton 0,5 литра.','https://staticy.dominospizza.ru/api/medium/Product/Global/LIPLM05/NULL/NULL/RU',99),(_binary '��BR\�\�?Ze','Закуски',0,189,'Фирменный картофель из печи','Порция 95 г. Фирменный картофель из печи','https://staticy.dominospizza.ru/api/medium/Product/Global/KARPECML/NULL/NULL/RU',189),(_binary '��1�R\�\�?Ze','Закуски',0,239,'Куpиные крылья','Порция 4 шт. Аппетитные крылышки с насыщенным многогранным вкусом и нотками копчености.','https://staticy.dominospizza.ru/api/medium/Product/Global/CHWSM/NULL/NULL/RU',239);
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
INSERT INTO `order_goods` VALUES (_binary '\�Q�\�\�C\��\��\�H1�',_binary '\np�R\�\�?Ze',15),(_binary '\�Q�\�\�C\��\��\�H1�',_binary '��?�R\�\�?Ze',16),(_binary 'z\��F��ق�\�#ko',_binary 'P�\�\�&Cm�w��ޯ�',18),(_binary 'z\��F��ق�\�#ko',_binary 'P�\�\�&Cm�w��ޯ�',19),(_binary 'z\��F��ق�\�#ko',_binary '���\�R\�\�?Ze',20),(_binary 'z\��F��ق�\�#ko',_binary '���\�R\�\�?Ze',21),(_binary 'z\��F��ق�\�#ko',_binary '��ޢR\�\�?Ze',22),(_binary 'Zw�@U�\�\�Hǖ',_binary '\noՔR\�\�?Ze',23),(_binary 'Zw�@U�\�\�Hǖ',_binary '\noՔR\�\�?Ze',24),(_binary 'Zw�@U�\�\�Hǖ',_binary '\noՔR\�\�?Ze',25),(_binary 'Zw�@U�\�\�Hǖ',_binary '���xR\�\�?Ze',26),(_binary 'Zw�@U�\�\�Hǖ',_binary '����R\�\�?Ze',27),(_binary '�^\��qBĖ�\�aJ\�\�\'',_binary '���xR\�\�?Ze',28),(_binary '�^\��qBĖ�\�aJ\�\�\'',_binary 'P�\�\�&Cm�w��ޯ�',29),(_binary '�^\��qBĖ�\�aJ\�\�\'',_binary '��h\�R\�\�?Ze',30),(_binary '�^\��qBĖ�\�aJ\�\�\'',_binary '��?�R\�\�?Ze',31),(_binary 'emչ G_�l\�=G\r',_binary '\np�R\�\�?Ze',32),(_binary 'emչ G_�l\�=G\r',_binary '��1�R\�\�?Ze',33),(_binary 'emչ G_�l\�=G\r',_binary '��1�R\�\�?Ze',34),(_binary 'emչ G_�l\�=G\r',_binary '��1�R\�\�?Ze',35),(_binary '�-\�lk�Ji�\�7gO�B',_binary '��BR\�\�?Ze',40),(_binary '�-\�lk�Ji�\�7gO�B',_binary '��\�0R\�\�?Ze',41),(_binary '�-\�lk�Ji�\�7gO�B',_binary 'P�\�\�&Cm�w��ޯ�',42),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',44),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',45),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',46),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',47),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',48),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',49),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',50),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',51),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',52),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',53),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',54),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',55),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',56),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',57),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',58),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',59),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',60),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',61),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',62),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',63),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',64),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',65),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',66),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',67),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',68),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',69),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',70),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',71),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',72),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',73),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',74),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',75),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',76),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',77),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',78),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',79),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',80),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',81),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',82),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',83),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',84),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',85),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',86),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',87),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',88),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',89),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',90),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',91),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',92),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',93),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',94),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',95),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',96),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',97),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',98),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',99),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '\noՔR\�\�?Ze',100),(_binary '>���\�O��W\�\�\�x�',_binary '\noՔR\�\�?Ze',101),(_binary '>���\�O��W\�\�\�x�',_binary '\noՔR\�\�?Ze',102),(_binary '>���\�O��W\�\�\�x�',_binary '\noՔR\�\�?Ze',103),(_binary '\�\�qV�Ef�Av�@\�l\�',_binary 'P�\�\�&Cm�w��ޯ�',104),(_binary '\�\�qV�Ef�Av�@\�l\�',_binary 'P�\�\�&Cm�w��ޯ�',105),(_binary '\�\�qV�Ef�Av�@\�l\�',_binary 'P�\�\�&Cm�w��ޯ�',106),(_binary '�\�\�]�AޫJ[��\�',_binary 'P�\�\�&Cm�w��ޯ�',107),(_binary '�\�\�]�AޫJ[��\�',_binary 'P�\�\�&Cm�w��ޯ�',108),(_binary '�}\�\��H�\�(�]e�7',_binary '��ޢR\�\�?Ze',109),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',110),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',111),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',112),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',113),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',114),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',115),(_binary '�}\�\��H�\�(�]e�7',_binary '��BR\�\�?Ze',116),(_binary '�}\�\��H�\�(�]e�7',_binary '��ޢR\�\�?Ze',117),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '����R\�\�?Ze',118),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '����R\�\�?Ze',119),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '���\�R\�\�?Ze',120),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '���\�R\�\�?Ze',121),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '��BR\�\�?Ze',122),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '��BR\�\�?Ze',123),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '��BR\�\�?Ze',124),(_binary '.\�.l\Z=Eٱ�\�J�̆',_binary '��1�R\�\�?Ze',125),(_binary '\�7�\�2kE��\�j�\�:�\�',_binary '��BR\�\�?Ze',126),(_binary '\�7�\�2kE��\�j�\�:�\�',_binary '��BR\�\�?Ze',127),(_binary '\�7�\�2kE��\�j�\�:�\�',_binary '��1�R\�\�?Ze',128),(_binary '\�7�\�2kE��\�j�\�:�\�',_binary '��?�R\�\�?Ze',129),(_binary '�M��a�NX�j\�˱��;',_binary '\np�R\�\�?Ze',130),(_binary '�M��a�NX�j\�˱��;',_binary '\np�R\�\�?Ze',131),(_binary '�M��a�NX�j\�˱��;',_binary '\np�R\�\�?Ze',132);
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
INSERT INTO `orders` VALUES (_binary '�^\��qBĖ�\�aJ\�\�\'',_binary '(.F�NOW�\�u\�\\%#','23 окт. 2022 14:16:56',0,2137,1666523816999),(_binary '.\�.l\Z=Eٱ�\�J�̆',NULL,'28 окт. 2022 00:54:06',0,1942,1666907646028),(_binary '>���\�O��W\�\�\�x�',_binary '(.F�NOW�\�u\�\\%#','27 окт. 2022 14:32:52',0,1560,1666870372274),(_binary 'Zw�@U�\�\�Hǖ',_binary '(.F�NOW�\�u\�\\%#','23 окт. 2022 14:16:31',0,2519,1666523791250),(_binary 'emչ G_�l\�=G\r',_binary '(.F�NOW�\�u\�\\%#','23 окт. 2022 14:17:56',0,1237,1666523876500),(_binary 'z\��F��ق�\�#ko',_binary '(.F�NOW�\�u\�\\%#','23 окт. 2022 14:16:08',1,1545,1666523768399),(_binary '�}\�\��H�\�(�]e�7',_binary '(.F�NOW�\�u\�\\%#','28 окт. 2022 00:33:20',0,1521,1666906400764),(_binary '�?�\�;|GO�\�2\�\ZO2�',_binary '(.F�NOW�\�u\�\\%#','27 окт. 2022 14:31:15',0,29640,1666870275151),(_binary '�-\�lk�Ji�\�7gO�B',_binary '�ñ�/KΫ\n\���\�','23 окт. 2022 14:33:59',1,1217,1666524839268),(_binary '�\�\�]�AޫJ[��\�',_binary '(.F�NOW�\�u\�\\%#','28 окт. 2022 00:18:22',0,898,1666905502472),(_binary '�M��a�NX�j\�˱��;',_binary '(.F�NOW�\�u\�\\%#','28 нояб. 2022 11:02:41',0,1560,1669622561722),(_binary '\�\�qV�Ef�Av�@\�l\�',_binary '(.F�NOW�\�u\�\\%#','28 окт. 2022 00:17:39',0,1347,1666905459186),(_binary '\�Q�\�\�C\��\��\�H1�',_binary '(.F�NOW�\�u\�\\%#','23 окт. 2022 01:13:27',0,1249,1666476807734),(_binary '\�7�\�2kE��\�j�\�:�\�',_binary '(.F�NOW�\�u\�\\%#','28 окт. 2022 01:03:42',0,1346,1666908222883);
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
INSERT INTO `product_goods` VALUES (_binary '�E\�.R\�\�?Ze',_binary '\noՔR\�\�?Ze',1),(_binary '�E\�.R\�\�?Ze',_binary '\np�R\�\�?Ze',2),(_binary '�FR\�\�?Ze',_binary '\noՔR\�\�?Ze',3),(_binary '�FR\�\�?Ze',_binary '\np�R\�\�?Ze',4),(_binary '�F\Z R\�\�?Ze',_binary '\np�R\�\�?Ze',5),(_binary '�F\Z�R\�\�?Ze',_binary '\np�R\�\�?Ze',6),(_binary '�F\Z\�R\�\�?Ze',_binary '\np�R\�\�?Ze',7),(_binary '�F\ZR\�\�?Ze',_binary '\np�R\�\�?Ze',8),(_binary '�FjR\�\�?Ze',_binary '\noՔR\�\�?Ze',9),(_binary '�FdR\�\�?Ze',_binary '\noՔR\�\�?Ze',10),(_binary '��t\�R\�\�?Ze',_binary '���xR\�\�?Ze',11),(_binary '����R\�\�?Ze',_binary '���xR\�\�?Ze',12),(_binary '���\�R\�\�?Ze',_binary '���xR\�\�?Ze',13),(_binary '���(R\�\�?Ze',_binary '��\�0R\�\�?Ze',14),(_binary '���(R\�\�?Ze',_binary '��h\�R\�\�?Ze',15),(_binary '���PR\�\�?Ze',_binary '��R\�\�?Ze',16),(_binary '���xR\�\�?Ze',_binary '��R\�\�?Ze',17),(_binary '����R\�\�?Ze',_binary '��?�R\�\�?Ze',18),(_binary '����R\�\�?Ze',_binary '��?�R\�\�?Ze',19),(_binary '���\�R\�\�?Ze',_binary '��?�R\�\�?Ze',20),(_binary '���\�R\�\�?Ze',_binary '��h\�R\�\�?Ze',21),(_binary '����R\�\�?Ze',_binary '��?�R\�\�?Ze',22),(_binary '����R\�\�?Ze',_binary '��h\�R\�\�?Ze',23),(_binary '���R\�\�?Ze',_binary '��?�R\�\�?Ze',24),(_binary '���,R\�\�?Ze',_binary '��h\�R\�\�?Ze',25),(_binary '���JR\�\�?Ze',_binary '����R\�\�?Ze',26),(_binary '���\�R\�\�?Ze',_binary '����R\�\�?Ze',27),(_binary '���\�R\�\�?Ze',_binary '����R\�\�?Ze',28),(_binary '���R\�\�?Ze',_binary '���\�R\�\�?Ze',29),(_binary '���&R\�\�?Ze',_binary '��ޢR\�\�?Ze',30),(_binary '���DR\�\�?Ze',_binary '��BR\�\�?Ze',31),(_binary '���bR\�\�?Ze',_binary '��1�R\�\�?Ze',32),(_binary '���(R\�\�?Ze',_binary 'P�\�\�&Cm�w��ޯ�',33),(_binary '����R\�\�?Ze',_binary 'P�\�\�&Cm�w��ޯ�',34),(_binary '���\�R\�\�?Ze',_binary 'P�\�\�&Cm�w��ޯ�',35),(_binary '�FR\�\�?Ze',_binary 'P�\�\�&Cm�w��ޯ�',36),(_binary '�\��1�CCq�]X�d��',_binary 'P�\�\�&Cm�w��ޯ�',37),(_binary '݂8u�O|�Pq�i�1:',_binary 'P�\�\�&Cm�w��ޯ�',38),(_binary ',;\�W:E)�i$�mo|',_binary '��hV�D��;2\�k',39),(_binary '���(R\�\�?Ze',_binary '��hV�D��;2\�k',40),(_binary '���xR\�\�?Ze',_binary '��hV�D��;2\�k',41),(_binary '�FR\�\�?Ze',_binary '��hV�D��;2\�k',42),(_binary '݂8u�O|�Pq�i�1:',_binary '��hV�D��;2\�k',43),(_binary '㼄�\ZYJf�{��\�B�',_binary '��hV�D��;2\�k',44);
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
INSERT INTO `products` VALUES (_binary ',;\�W:E)�i$�mo|',10,'Лук'),(_binary '��t\�R\�\�?Ze',78,'Парма'),(_binary '����R\�\�?Ze',100,'Руколла'),(_binary '���\�R\�\�?Ze',66,'Помидоры черри'),(_binary '���(R\�\�?Ze',94,'Томатный соус'),(_binary '���PR\�\�?Ze',23,'Соус чесночный'),(_binary '���xR\�\�?Ze',122,'Пеперонни'),(_binary '����R\�\�?Ze',228,'Маслины'),(_binary '����R\�\�?Ze',233,'Бекон'),(_binary '���\�R\�\�?Ze',93,'Грибы'),(_binary '����R\�\�?Ze',499,'Курица'),(_binary '���R\�\�?Ze',94,'Огурцы'),(_binary '���,R\�\�?Ze',108,'Соус BBQ'),(_binary '���JR\�\�?Ze',11,'Ананас'),(_binary '���\�R\�\�?Ze',108,'Соус карамельный'),(_binary '���\�R\�\�?Ze',898,'Соус сырный'),(_binary '���R\�\�?Ze',38,'Кофе латте 300мл'),(_binary '���&R\�\�?Ze',94,'Чай липтон'),(_binary '���DR\�\�?Ze',6,'Картофель из печи фирменный'),(_binary '���bR\�\�?Ze',92,'Куриные крылья'),(_binary '�E\�.R\�\�?Ze',27,'Сливочный соус'),(_binary '�FR\�\�?Ze',17,'Моцарелла'),(_binary '�F\Z R\�\�?Ze',90,'Куриные бедра'),(_binary '�F\Z�R\�\�?Ze',496,'Красный лук'),(_binary '�F\Z\�R\�\�?Ze',90,'Зеленый лук'),(_binary '�F\ZR\�\�?Ze',90,'Соус чипотле'),(_binary '�FjR\�\�?Ze',234,'Ветчина'),(_binary '�FdR\�\�?Ze',440,'Пармезан'),(_binary '�\��1�CCq�]X�d��',10,'Сыр фета'),(_binary '݂8u�O|�Pq�i�1:',40,'Помидоры'),(_binary '㼄�\ZYJf�{��\�B�',35,'Перец Халапеньо');
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
INSERT INTO `roles` VALUES (_binary '\nlH\�R\�\�?Ze','user'),(_binary '\�\�V��I\��7\�\�0=|','ADMIN');
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
INSERT INTO `user_roles` VALUES (_binary '\ni~\�R\�\�?Ze',_binary '\nlH\�R\�\�?Ze'),(_binary '\�Q\�\�G��Ғ\�?9׈',_binary '\nlH\�R\�\�?Ze'),(_binary '�ñ�/KΫ\n\���\�',_binary '\nlH\�R\�\�?Ze'),(_binary '(.F�NOW�\�u\�\\%#',_binary '\nlH\�R\�\�?Ze'),(_binary 'pd\�VcN?��\��',_binary '\nlH\�R\�\�?Ze'),(_binary '\�FUEXM\��6]�\�^\�',_binary '\nlH\�R\�\�?Ze'),(_binary '\�Q\�\�G��Ғ\�?9׈',_binary '\�\�V��I\��7\�\�0=|'),(_binary '\�FUEXM\��6]�\�^\�',_binary '\�\�V��I\��7\�\�0=|');
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
INSERT INTO `users` VALUES (_binary '\ni~\�R\�\�?Ze','maxim','smirnov','maxim22','888000','0000','test@mil.ru',24),(_binary '\�Q\�\�G��Ғ\�?9׈','Admin','Account','ADMIN','92033344455','$2a$10$n7M8QSgF32D8Xtvs8SZxrupBFRuLVHfaFE2CA8/qIWcWGDO1aG6QC','maks.tomanov@admin.admin',85849),(_binary '�ñ�/KΫ\n\���\�','user','user','user','234','$2a$10$EnqEjc8lPMWCOCglyzNeUOXBSUEeagx9kKJrJjeXUnu2.t0Dn0cEO','USER@USER.USER',7890),(_binary '(.F�NOW�\�u\�\\%#','maxim','TOmanov','maxim760','833456','$2a$10$jWwo3Vm99MRtqBTAsrWe2O.zBLUQRlnYiWMCu8RXQfj1DTwzXNfuK','maks.tonaniv@mailry.ert',74514),(_binary 'pd\�VcN?��\��','user2','user2','user2','22','$2a$10$dtgYpRm2uhddMEd0RUaA/OcHSjzQZG0ThXu0m56bM.hso1hWqY7Si','wer@wer.ww',123),(_binary '\�FUEXM\��6]�\�^\�','Admin','Admin','MAIN','23','$2a$10$nTyUgO4GS489CuEqYZt0HOAfN8h5yytHWCloS5xHX33eGR/nDH87q','mail@mail.ru',13368);
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
