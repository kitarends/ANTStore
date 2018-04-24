-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: natstore2_db
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (2,'/','f3ccdd27d2000e3f9255a7e3e2c48800_1523100633.jpg','2018-04-07 04:10:42','2018-04-07 04:30:33'),(3,'/','156005c5baf40ff51a327f1c34f2975b_1523100644.jpg','2018-04-07 04:30:44','2018-04-07 04:30:44'),(4,'/','799bad5a3b514f096e69bbc4a7896cd9_1523100652.jpg','2018-04-07 04:30:52','2018-04-07 04:30:52'),(5,'/','d0096ec6c83575373e3a21d129ff8fef_1523100658.jpg','2018-04-07 04:30:58','2018-04-07 04:30:58');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,'About us','/about','<p>Test</p>','2018-04-03 07:13:17','2018-04-03 07:13:17',''),(3,'DMCA','/dmca','<p>The&nbsp;<strong>Digital Millennium Copyright Act</strong>&nbsp;(<strong>DMCA</strong>) is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States\">United States</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright\">copyright</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Law\">law</a>&nbsp;that implements two 1996 treaties of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/World_Intellectual_Property_Organization\">World Intellectual Property Organization</a>&nbsp;(WIPO). It criminalizes production and dissemination of technology, devices, or services intended to circumvent measures that control access to copyrighted works (commonly known as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_rights_management\">digital rights management</a>&nbsp;or DRM). It also criminalizes the act of circumventing an access control, whether or not there is actual infringement of copyright itself. In addition, the DMCA heightens the penalties for copyright infringement on the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet\">Internet</a>.<a href=\"https://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act#cite_note-1\">[1]</a><a href=\"https://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act#cite_note-2\">[2]</a>Passed on October 12, 1998, by a unanimous vote in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States_Senate\">United States Senate</a>&nbsp;and signed into law by President&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bill_Clinton\">Bill Clinton</a>on October 28, 1998, the DMCA amended&nbsp;<a href=\"https://en.wikipedia.org/wiki/Title_17_of_the_United_States_Code\">Title 17</a>&nbsp;of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States_Code\">United States Code</a>&nbsp;to extend the reach of copyright, while limiting the liability of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Online_service_provider\">providers of online services</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright_infringement\">copyright infringement</a>&nbsp;by their users.</p>','2018-04-03 07:15:50','2018-04-03 09:04:44','<p>The&nbsp;<strong>Digital Millennium Copyright Act</strong>&nbsp;(<strong>DMCA</strong>) is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States\">United States</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright\">copyright</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Law\">law</a>&nbsp;that implements two 1996 treaties of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/World_Intellectual_Property_Organization\">World Intellectual Property Organization</a>&nbsp;(WIPO).</p>'),(4,'terms_of_service','/terms_of_service','<p>Not added yet</p>','2018-04-03 07:17:14','2018-04-03 09:10:11','<p>No preview</p>'),(5,'New arrivals 11/4','/new_arrival_11_4','<p>Test</p>\r\n\r\n<p><img alt=\"Beaded Ring Drop Earrings\" src=\"https://s7d2.scene7.com/is/image/LO/473531_9000_B1?$436x502$\" /></p>','2018-04-03 07:24:50','2018-04-11 07:01:59','<p>tes</p>'),(6,'Contact us','/contact','<p>092222222</p>','2018-04-03 08:38:47','2018-04-03 08:38:47',''),(7,'Test','/managex','<p>sas</p>','2018-04-11 07:04:33','2018-04-11 07:04:47','<p>No preview</p>');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'Kids','2018-03-31 21:39:10','2018-03-31 21:39:10'),(2,2,'Men','2018-03-31 21:44:25','2018-03-31 21:44:25'),(3,3,'Womens','2018-04-04 08:34:08','2018-04-04 08:34:08'),(4,4,'Sandals','2018-04-04 08:40:18','2018-04-04 08:40:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_index` (`user_id`),
  KEY `comments_product_id_index` (`product_id`),
  CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,'nice',3,2,8,'2018-04-04 06:38:32','2018-04-04 06:38:39');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `used_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'Test code','OPEN','percent',15,0,'2018-04-10 01:33:23','2018-04-10 01:53:36'),(2,'Newxx','SUPER','total',10,0,'2018-04-10 08:51:23','2018-04-10 08:51:23');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_product_solds`
--

DROP TABLE IF EXISTS `log_product_solds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_product_solds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `solds` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_product_solds`
--

LOCK TABLES `log_product_solds` WRITE;
/*!40000 ALTER TABLE `log_product_solds` DISABLE KEYS */;
INSERT INTO `log_product_solds` VALUES (1,11,2,1524330000);
/*!40000 ALTER TABLE `log_product_solds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_product_views`
--

DROP TABLE IF EXISTS `log_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_product_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_product_views`
--

LOCK TABLES `log_product_views` WRITE;
/*!40000 ALTER TABLE `log_product_views` DISABLE KEYS */;
INSERT INTO `log_product_views` VALUES (1,11,2,1524330000);
/*!40000 ALTER TABLE `log_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_revenues`
--

DROP TABLE IF EXISTS `log_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_revenues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_revenues`
--

LOCK TABLES `log_revenues` WRITE;
/*!40000 ALTER TABLE `log_revenues` DISABLE KEYS */;
INSERT INTO `log_revenues` VALUES (1,182,1524330000,NULL,NULL);
/*!40000 ALTER TABLE `log_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2018_03_08_144918_create_categories_table',1),(12,'2018_03_08_144926_create_products_table',1),(13,'2018_03_08_144948_create_comments_table',1),(17,'2018_03_08_150633_create_orders_table',2),(18,'2018_03_08_155043_create_wishes_table',2),(19,'2018_03_20_133622_create_order_items_table',2),(20,'2018_04_03_125141_create_blogs_table',3),(21,'2018_04_03_155914_add_thumb_to_blog',4),(22,'2017_02_02_232450_add_confirmation',5),(23,'2018_04_07_105021_create_ads_table',6),(24,'2018_04_10_075235_create_discounts_table',7),(27,'2015_08_06_184708_create_settings_table',8),(28,'2018_04_10_154711_add_to_order',8),(29,'2015_03_07_311070_create_tracker_paths_table',9),(30,'2015_03_07_311071_create_tracker_queries_table',9),(31,'2015_03_07_311072_create_tracker_queries_arguments_table',9),(32,'2015_03_07_311073_create_tracker_routes_table',9),(33,'2015_03_07_311074_create_tracker_routes_paths_table',9),(34,'2015_03_07_311075_create_tracker_route_path_parameters_table',9),(35,'2015_03_07_311076_create_tracker_agents_table',9),(36,'2015_03_07_311077_create_tracker_cookies_table',9),(37,'2015_03_07_311078_create_tracker_devices_table',9),(38,'2015_03_07_311079_create_tracker_domains_table',9),(39,'2015_03_07_311080_create_tracker_referers_table',9),(40,'2015_03_07_311081_create_tracker_geoip_table',9),(41,'2015_03_07_311082_create_tracker_sessions_table',9),(42,'2015_03_07_311083_create_tracker_errors_table',9),(43,'2015_03_07_311084_create_tracker_system_classes_table',9),(44,'2015_03_07_311085_create_tracker_log_table',9),(45,'2015_03_07_311086_create_tracker_events_table',9),(46,'2015_03_07_311087_create_tracker_events_log_table',9),(47,'2015_03_07_311088_create_tracker_sql_queries_table',9),(48,'2015_03_07_311089_create_tracker_sql_query_bindings_table',9),(49,'2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table',9),(50,'2015_03_07_311091_create_tracker_sql_queries_log_table',9),(51,'2015_03_07_311092_create_tracker_connections_table',9),(52,'2015_03_07_311093_create_tracker_tables_relations',9),(53,'2015_03_13_311094_create_tracker_referer_search_term_table',9),(54,'2015_03_13_311095_add_tracker_referer_columns',9),(55,'2015_11_23_311096_add_tracker_referer_column_to_log',9),(56,'2015_11_23_311097_create_tracker_languages_table',9),(57,'2015_11_23_311098_add_language_id_column_to_sessions',9),(58,'2015_11_23_311099_add_tracker_language_foreign_key_to_sessions',9),(59,'2015_11_23_311100_add_nullable_to_tracker_error',9),(60,'2017_01_31_311101_fix_agent_name',9),(61,'2017_06_20_311102_add_agent_name_hash',9),(62,'2017_12_13_150000_fix_query_arguments',9),(67,'2018_04_21_223506_create_log_product_solds_table',10),(68,'2018_04_21_223515_create_log_product_views_table',10),(69,'2018_04_22_013747_create_log_revenues_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `final_price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (4,4,8,90.00,1,'2018-04-04 06:51:18','2018-04-04 06:51:18'),(5,6,11,45.50,1,'2018-04-12 19:51:02','2018-04-12 19:51:02'),(6,7,10,28.00,1,'2018-04-12 19:54:58','2018-04-12 19:54:58'),(7,8,11,45.50,2,'2018-04-21 18:52:51','2018-04-21 18:52:51');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `used_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discounted_price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,'Hùng Anh Trịnh','nope','0982288173','Hà Đông','','disposed','2018-04-01 04:31:45','2018-04-01 04:32:25','',0),(4,2,'Adminxx','nope','0','not set yet','','done','2018-04-04 06:51:18','2018-04-04 06:56:23','',0),(5,2,'Adminxx','nope','0','not set yet','','done','2018-04-04 06:56:44','2018-04-04 06:56:53','',0),(6,NULL,'Admin','admin@gmail.com','0','not set yet','','wait_confirm','2018-04-12 19:51:02','2018-04-12 19:51:02','',0),(7,4,'Admin','admin@gmail.com','0','not set yet','','wait_confirm','2018-04-12 19:54:58','2018-04-12 19:54:58','',0),(8,2,'Admin','admin@gmail.com','0','not set yet','','done','2018-04-21 18:52:51','2018-04-21 18:53:19','',0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_urls` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_html_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `sale_off` double(8,2) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `sold` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_index` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (8,'Dr. Martens 1460 8-Eye Boot','878f9ff3eed71d939d80f3536cb704d9_1522775905.jpg;','Fit: This style tends to run large. For an accurate fit we recommend purchasing a 1/2 size smaller than you typically purchase. For example, if you normally purchase a size 8 1/2, we recommend purchasing a size 8. Upper: Smooth Leather','<h2>Dr. Martens 1460 8-Eye Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When you think of Dr. Martens, you think of the 1460 8-Eye Boot. This style icon includes all of the authentic Doc Martens touches that have made it a true original. Signature Airwairs leather upper is stiff out of the box and softens over time to conform to the shape of your foot. It can be worn polished or natural, depending on your style. Classic 8 -eyelet lace-up front gives you perfect fit every time. Goodyear-welted construction means that these boots are made to last by sewing and heat sealing the sole to the upper for exceptional durability. The slip-resistant sole and air-cushioned heel enhance traction and comfort. Explore our selection of colors and styles to find the perfect pair to match your look.</p>\r\n\r\n<ul>\r\n	<li>Iconic Dr. Marten style</li>\r\n	<li>Airwairs leather upper</li>\r\n	<li>Individualized fit</li>\r\n	<li>8-eyelet lace-up front</li>\r\n	<li>Goodyear-welted construction</li>\r\n	<li>Slip-resistant sole</li>\r\n	<li>Air-cushioned heel</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DR. MARTENS SIZE CHART (ORDERS PLACED IN UK SIZES):</strong></p>\r\n\r\n<p><img src=\"https://cdn-ap-ec.yottaa.net/550c587c2106b06b5100362d/www.shoes.com/v~22.166/images/desc/drmar/DrMartensAdultsizechart.jpg?yocs=c_f_&amp;yoloc=ap\" style=\"margin:0px\" />&nbsp;<br />\r\n<br />\r\n<strong><a href=\"https://www.shoes.com/dr-martens-originals/category_53194\">SHOP MORE DR. MARTENS ORIGINALS HERE</a></strong></p>',135.00,90.00,2,0,0,'2018-04-03 10:18:25','2018-04-03 10:31:20'),(9,'Skechers Hampshire Manchester Duck Boot','23db8abe4b7e592f449e887dffb8c16b_1522856136.jpg;','WIDTH: M (Regular)   COLOR: Charcoal','<h2>Skechers Hampshire Manchester Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Look your finest even in foul weather wearing the warm and comfortable SKECHERS Hampshire - Manchester Duck Boot. Waterproof rubber shell with quilt stitched parka fabric and synthetic upper in a lace up mid calf height cold weather casual boot with insulated design and Warm Tech Memory Foam insole.</p>\r\n\r\n<ul>\r\n	<li>Smooth shiny leather-textured synthetic overlays</li>\r\n	<li>Sculpted classic &#39;duck boot&#39; raised detail on toe</li>\r\n	<li>Sculpted accents on sides and heel</li>\r\n	<li>Reinforced stitched seams</li>\r\n	<li>Parka style zigzag textured stitching detail on fabric shaft</li>\r\n	<li>Synthetic overlays at ankle and heel for added durability</li>\r\n	<li>Mukluk style slide lock lacing for easy access</li>\r\n	<li>Smooth parka-style fabric lays outside collar for added protection</li>\r\n	<li>Smooth synthetic top collar trim</li>\r\n	<li>Soft faux fur trim at collar and tongue</li>\r\n	<li>Soft faux fur shaft lining</li>\r\n	<li>Faux shearling and fabric boot socklining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Insole designed to block cold ground temperatures</li>\r\n	<li>Insole helps to retain body heat</li>\r\n	<li>Contrast colored rubber outsole</li>\r\n	<li>Classic style high traction flexible outsole design</li>\r\n</ul>',75.00,34.00,3,0,0,'2018-04-04 08:35:36','2018-04-04 08:35:36'),(10,'Skechers Windom Dry Spell Duck Boot','d50e1ffa1006d5df8306eec6ef4ba610_1522856342.jpg;','WIDTH: M (Regular)   COLOR: Charcoal','<h2>Skechers Windom Dry Spell Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whatever the weather has in store for you, the SKECHERS Windom Quilted Mid Duck Boot has you covered. Thanks to its gusseted tongue, soft shearling-style faux fur lining, and insulated shaft, this waterproof boot keeps your feet warm and toasty. A flexible rubber outsole offers superior traction, while the Warm Tech Memory Foam insole provides cushioning.</p>\r\n\r\n<ul>\r\n	<li>Water-resistant parka nylon and waterproof rubber shell upper</li>\r\n	<li>Lace-up with durable metal eyelets</li>\r\n	<li>Fabric insulated shaft</li>\r\n	<li>Gusseted tongue</li>\r\n	<li>Seam-sealed construction</li>\r\n	<li>Parka nylon shaft with stitching detail</li>\r\n	<li>Soft shearling-style faux fur lining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Flexible rubber traction outsole</li>\r\n	<li>6-inch shaft height</li>\r\n	<li>12-inch adjustable shaft circumference</li>\r\n	<li>1-inch heel</li>\r\n</ul>\r\n\r\n<p>Note: Charcoal/Black color has a 200G Thinsulate and a waterproof outsole and shaft</p>',34.95,28.00,3,0,4,'2018-04-04 08:39:02','2018-04-21 18:31:05'),(11,'Skechers Hampshire Duck Boot','1106aa72093a371630563dfaa6800452_1522856508.jpg;','WIDTH: M (Regular) COLOR: Navy/Tan','<h2>Skechers Hampshire Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A reliable yet stylish choice for drizzly days, the SKECHERS Hampshire Duck Boot features a waterproof upper and Warm Tech Memory Foam insole that blocks cold, retains heat, and provides cushioning for comfort that can&#39;t be beat. Flexible rubber outsole offers superior traction in slippery situations. Featuring a water-resistant collar, an insulated shaft, and a gusseted tongue, this SKECHERS duck boot will keep your foot dry and warm in inclement weather conditions.</p>\r\n\r\n<ul>\r\n	<li>Waterproof, seam-sealed rubber shell upper</li>\r\n	<li>Two eye lace-up</li>\r\n	<li>Water-resistant quilt-style parka nylon collar</li>\r\n	<li>Gusseted tongue</li>\r\n	<li>Padded collar and tongue</li>\r\n	<li>Plaid flannel insulated shaft</li>\r\n	<li>Smooth suede-textured synthetic overlays</li>\r\n	<li>Sculpted accents on sides and heel</li>\r\n	<li>Reinforced stitched seams</li>\r\n	<li>Heel synthetic overlay with top pull on tab</li>\r\n	<li>Stitching detail</li>\r\n	<li>Soft fabric lining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Flexible rubber traction outsole</li>\r\n	<li>5-inch shaft height</li>\r\n	<li>10.5-inch adjustable shaft circumference</li>\r\n	<li>1-inch heel</li>\r\n</ul>',45.50,45.50,3,0,2,'2018-04-04 08:41:48','2018-04-21 19:29:45');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('more_links','[]',NULL),('email','hi@gmail.com',NULL),('phone','000003',NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_agents`
--

DROP TABLE IF EXISTS `tracker_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_agents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  KEY `tracker_agents_created_at_index` (`created_at`),
  KEY `tracker_agents_updated_at_index` (`updated_at`),
  KEY `tracker_agents_browser_index` (`browser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_agents`
--

LOCK TABLES `tracker_agents` WRITE;
/*!40000 ALTER TABLE `tracker_agents` DISABLE KEYS */;
INSERT INTO `tracker_agents` VALUES (1,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36','Chrome','62.0.3202','2018-04-21 15:06:06','2018-04-21 15:06:06','c43d0715c0bfaf44d19a5058eeafaae0bba6d56a9ea8a4b0fb80b34e687f313f'),(2,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36','Chrome','66.0.3359','2018-04-22 10:51:23','2018-04-22 10:51:23','003ca088bf8ea1caa86a10d8157d504358706fef5a825a3a846541311762aa58');
/*!40000 ALTER TABLE `tracker_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_connections`
--

DROP TABLE IF EXISTS `tracker_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_connections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_connections_created_at_index` (`created_at`),
  KEY `tracker_connections_updated_at_index` (`updated_at`),
  KEY `tracker_connections_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_connections`
--

LOCK TABLES `tracker_connections` WRITE;
/*!40000 ALTER TABLE `tracker_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_cookies`
--

DROP TABLE IF EXISTS `tracker_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_cookies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  KEY `tracker_cookies_created_at_index` (`created_at`),
  KEY `tracker_cookies_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_cookies`
--

LOCK TABLES `tracker_cookies` WRITE;
/*!40000 ALTER TABLE `tracker_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_devices`
--

DROP TABLE IF EXISTS `tracker_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_devices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  KEY `tracker_devices_created_at_index` (`created_at`),
  KEY `tracker_devices_updated_at_index` (`updated_at`),
  KEY `tracker_devices_kind_index` (`kind`),
  KEY `tracker_devices_model_index` (`model`),
  KEY `tracker_devices_platform_index` (`platform`),
  KEY `tracker_devices_platform_version_index` (`platform_version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_devices`
--

LOCK TABLES `tracker_devices` WRITE;
/*!40000 ALTER TABLE `tracker_devices` DISABLE KEYS */;
INSERT INTO `tracker_devices` VALUES (1,'Computer','WebKit','Linux','',0,'2018-04-18 13:34:24','2018-04-18 13:34:24'),(2,'Phone','Nexus','Android','6.0',1,'2018-04-20 17:57:43','2018-04-20 17:57:43');
/*!40000 ALTER TABLE `tracker_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_domains`
--

DROP TABLE IF EXISTS `tracker_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_domains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_domains_created_at_index` (`created_at`),
  KEY `tracker_domains_updated_at_index` (`updated_at`),
  KEY `tracker_domains_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_domains`
--

LOCK TABLES `tracker_domains` WRITE;
/*!40000 ALTER TABLE `tracker_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_errors`
--

DROP TABLE IF EXISTS `tracker_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_errors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_errors_created_at_index` (`created_at`),
  KEY `tracker_errors_updated_at_index` (`updated_at`),
  KEY `tracker_errors_code_index` (`code`),
  KEY `tracker_errors_message_index` (`message`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_errors`
--

LOCK TABLES `tracker_errors` WRITE;
/*!40000 ALTER TABLE `tracker_errors` DISABLE KEYS */;
INSERT INTO `tracker_errors` VALUES (1,NULL,'Class \'Carbon\' not found','2018-04-18 18:59:13','2018-04-18 18:59:13'),(2,NULL,'Trailing data','2018-04-18 19:00:50','2018-04-18 19:00:50'),(3,'404','','2018-04-18 19:23:26','2018-04-18 19:23:26'),(4,'8192','Non-static method PragmaRX\\Tracker\\Vendor\\Laravel\\Support\\Session::getMinutes() should not be called statically','2018-04-18 19:31:48','2018-04-18 19:31:48'),(5,NULL,'Non-static method PragmaRX\\Tracker\\Vendor\\Laravel\\Support\\Session::getMinutes() should not be called statically','2018-04-18 19:31:48','2018-04-18 19:31:48'),(6,'2','DateTime::modify(): Failed to parse time string (today:0) at position 5 (:): Unexpected character','2018-04-18 19:32:23','2018-04-18 19:32:23'),(7,NULL,'DateTime::modify(): Failed to parse time string (today:0) at position 5 (:): Unexpected character','2018-04-18 19:32:23','2018-04-18 19:32:23'),(8,'2','DateTime::modify(): Failed to parse time string (1 week ago:0) at position 10 (:): Unexpected character','2018-04-18 19:32:35','2018-04-18 19:32:35'),(9,NULL,'DateTime::modify(): Failed to parse time string (1 week ago:0) at position 10 (:): Unexpected character','2018-04-18 19:32:35','2018-04-18 19:32:35'),(10,'8','Object of class Carbon\\Carbon could not be converted to int','2018-04-18 19:34:02','2018-04-18 19:34:02'),(11,NULL,'Object of class Carbon\\Carbon could not be converted to int','2018-04-18 19:34:02','2018-04-18 19:34:02'),(12,'4096','Object of class Illuminate\\Database\\Eloquent\\Builder could not be converted to string','2018-04-18 19:38:47','2018-04-18 19:38:47'),(13,NULL,'Object of class Illuminate\\Database\\Eloquent\\Builder could not be converted to string','2018-04-18 19:38:47','2018-04-18 19:38:47'),(14,'2','DateTime::diff() expects at least 1 parameter, 0 given','2018-04-18 19:41:21','2018-04-18 19:41:21'),(15,NULL,'DateTime::diff() expects at least 1 parameter, 0 given','2018-04-18 19:41:21','2018-04-18 19:41:21'),(16,NULL,'Call to a member function replace() on string','2018-04-18 20:02:21','2018-04-18 20:02:21'),(17,'2','timezone_open(): Unknown or bad timezone (UTC+7)','2018-04-20 10:03:52','2018-04-20 10:03:52'),(18,NULL,'Unknown or bad timezone (UTC+7)','2018-04-20 10:03:52','2018-04-20 10:03:52'),(19,'8','date_default_timezone_set(): Timezone ID \'UTC+7\' is invalid','2018-04-20 10:06:06','2018-04-20 10:06:06'),(20,NULL,'date_default_timezone_set(): Timezone ID \'UTC+7\' is invalid','2018-04-20 10:06:06','2018-04-20 10:06:06'),(21,NULL,'Unexpected data found.\nTrailing data','2018-04-20 18:54:21','2018-04-20 18:54:21'),(22,'2','DateTime::modify(): Failed to parse time string (2018-03-31T17:00:00.000Z 2018-04-30T16:59:59.999Z) at position 25 (2): Double time specification','2018-04-20 18:59:27','2018-04-20 18:59:27'),(23,NULL,'DateTime::modify(): Failed to parse time string (2018-03-31T17:00:00.000Z 2018-04-30T16:59:59.999Z) at position 25 (2): Double time specification','2018-04-20 18:59:27','2018-04-20 18:59:27'),(24,NULL,'Method Illuminate\\Database\\Eloquent\\Collection::save does not exist.','2018-04-21 04:08:37','2018-04-21 04:08:37'),(25,NULL,'Method Illuminate\\Database\\Query\\Builder::save does not exist.','2018-04-21 04:08:50','2018-04-21 04:08:50'),(26,'8','Undefined offset: 0','2018-04-21 04:20:12','2018-04-21 04:20:12'),(27,NULL,'Undefined offset: 0','2018-04-21 04:20:12','2018-04-21 04:20:12'),(28,NULL,'Call to undefined function App\\Http\\Controllers\\format()','2018-04-21 05:28:53','2018-04-21 05:28:53'),(29,'2','unlink(/home/hataketsu/NewProjects/NATStore2/storage/framework/sessions/Zq0qDvkowILtTQ7U8zvXMfAF0gYTksyyEiXRELpS): No such file or directory','2018-04-21 15:06:06','2018-04-21 15:06:06'),(30,'42S02','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'natstore2_db.log_product_views\' doesn\'t exist (SQL: select * from `log_product_views` where (`day` = 1524330000) limit 1)','2018-04-21 18:22:48','2018-04-21 18:22:48'),(31,'42S22','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'day\' in \'where clause\' (SQL: select * from `log_product_views` where (`day` = 1524330000) limit 1)','2018-04-21 18:23:03','2018-04-21 18:23:03'),(32,NULL,'Add [day] to fillable property to allow mass assignment on [App\\LogProductView].','2018-04-21 18:23:45','2018-04-21 18:23:45'),(33,'HY000','SQLSTATE[HY000]: General error: 1364 Field \'product_id\' doesn\'t have a default value (SQL: insert into `log_product_solds` (`day`, `solds`) values (1524330000, 2))','2018-04-21 18:53:19','2018-04-21 18:53:19'),(34,'8','Undefined variable: items','2018-04-21 19:27:21','2018-04-21 19:27:21'),(35,NULL,'Undefined variable: items (View: /home/hataketsu/NewProjects/NATStore2/resources/views/stat/visits.blade.php)','2018-04-21 19:27:21','2018-04-21 19:27:21'),(36,'2','DateTime::setTimestamp() expects parameter 1 to be integer, object given','2018-04-21 19:30:42','2018-04-21 19:30:42'),(37,NULL,'DateTime::setTimestamp() expects parameter 1 to be integer, object given (View: /home/hataketsu/NewProjects/NATStore2/resources/views/stat/visits.blade.php)','2018-04-21 19:30:42','2018-04-21 19:30:42'),(38,'8','Undefined variable: data','2018-04-21 19:37:28','2018-04-21 19:37:28'),(39,NULL,'Undefined variable: data','2018-04-21 19:37:28','2018-04-21 19:37:28');
/*!40000 ALTER TABLE `tracker_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_events`
--

DROP TABLE IF EXISTS `tracker_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_created_at_index` (`created_at`),
  KEY `tracker_events_updated_at_index` (`updated_at`),
  KEY `tracker_events_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_events`
--

LOCK TABLES `tracker_events` WRITE;
/*!40000 ALTER TABLE `tracker_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_events_log`
--

DROP TABLE IF EXISTS `tracker_events_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_events_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `log_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_events_log_created_at_index` (`created_at`),
  KEY `tracker_events_log_updated_at_index` (`updated_at`),
  KEY `tracker_events_log_event_id_index` (`event_id`),
  KEY `tracker_events_log_class_id_index` (`class_id`),
  KEY `tracker_events_log_log_id_index` (`log_id`),
  CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_events_log`
--

LOCK TABLES `tracker_events_log` WRITE;
/*!40000 ALTER TABLE `tracker_events_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_events_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_geoip`
--

DROP TABLE IF EXISTS `tracker_geoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_geoip` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_geoip_created_at_index` (`created_at`),
  KEY `tracker_geoip_updated_at_index` (`updated_at`),
  KEY `tracker_geoip_latitude_index` (`latitude`),
  KEY `tracker_geoip_longitude_index` (`longitude`),
  KEY `tracker_geoip_country_code_index` (`country_code`),
  KEY `tracker_geoip_country_code3_index` (`country_code3`),
  KEY `tracker_geoip_country_name_index` (`country_name`),
  KEY `tracker_geoip_city_index` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_geoip`
--

LOCK TABLES `tracker_geoip` WRITE;
/*!40000 ALTER TABLE `tracker_geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_geoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_languages`
--

DROP TABLE IF EXISTS `tracker_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `preference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  KEY `tracker_languages_created_at_index` (`created_at`),
  KEY `tracker_languages_updated_at_index` (`updated_at`),
  KEY `tracker_languages_preference_index` (`preference`),
  KEY `tracker_languages_language_range_index` (`language-range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_languages`
--

LOCK TABLES `tracker_languages` WRITE;
/*!40000 ALTER TABLE `tracker_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_log`
--

DROP TABLE IF EXISTS `tracker_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` bigint(20) unsigned NOT NULL,
  `path_id` bigint(20) unsigned DEFAULT NULL,
  `query_id` bigint(20) unsigned DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint(20) unsigned DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_log_created_at_index` (`created_at`),
  KEY `tracker_log_updated_at_index` (`updated_at`),
  KEY `tracker_log_session_id_index` (`session_id`),
  KEY `tracker_log_path_id_index` (`path_id`),
  KEY `tracker_log_query_id_index` (`query_id`),
  KEY `tracker_log_method_index` (`method`),
  KEY `tracker_log_route_path_id_index` (`route_path_id`),
  KEY `tracker_log_error_id_index` (`error_id`),
  KEY `tracker_log_referer_id_index` (`referer_id`),
  CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_log`
--

LOCK TABLES `tracker_log` WRITE;
/*!40000 ALTER TABLE `tracker_log` DISABLE KEYS */;
INSERT INTO `tracker_log` VALUES (1,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:34:24','2018-04-18 13:34:24',NULL),(2,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:34:25','2018-04-18 13:34:25',NULL),(3,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:34:43','2018-04-18 13:34:43',NULL),(4,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:35:11','2018-04-18 13:35:11',NULL),(5,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:35:13','2018-04-18 13:35:13',NULL),(6,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:35:28','2018-04-18 13:35:28',NULL),(7,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:35:29','2018-04-18 13:35:29',NULL),(8,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:39:39','2018-04-18 13:39:39',NULL),(9,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:44:38','2018-04-18 13:44:38',NULL),(10,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:44:40','2018-04-18 13:44:40',NULL),(11,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:46:25','2018-04-18 13:46:25',NULL),(12,1,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 13:46:37','2018-04-18 13:46:37',NULL),(13,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:41:44','2018-04-18 18:41:44',NULL),(14,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:41:52','2018-04-18 18:41:52',NULL),(15,2,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-18 18:41:59','2018-04-18 18:41:59',NULL),(16,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:41:59','2018-04-18 18:41:59',NULL),(17,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:42:06','2018-04-18 18:42:06',NULL),(18,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:45:49','2018-04-18 18:45:49',NULL),(19,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:45:52','2018-04-18 18:45:52',NULL),(20,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:47:05','2018-04-18 18:47:05',NULL),(21,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:49:41','2018-04-18 18:49:41',NULL),(22,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:49:51','2018-04-18 18:49:51',NULL),(23,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:49:54','2018-04-18 18:49:54',NULL),(24,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:50:05','2018-04-18 18:50:05',NULL),(25,2,NULL,NULL,'GET',NULL,0,0,0,0,1,'2018-04-18 18:59:13','2018-04-18 18:59:13',NULL),(26,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:59:28','2018-04-18 18:59:28',NULL),(27,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:59:44','2018-04-18 18:59:44',NULL),(28,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:59:51','2018-04-18 18:59:51',NULL),(29,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 18:59:56','2018-04-18 18:59:56',NULL),(30,2,NULL,NULL,'GET',NULL,0,0,0,0,2,'2018-04-18 19:00:50','2018-04-18 19:00:50',NULL),(31,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:01:26','2018-04-18 19:01:26',NULL),(32,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:01:27','2018-04-18 19:01:27',NULL),(33,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:01:58','2018-04-18 19:01:58',NULL),(34,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:07:24','2018-04-18 19:07:24',NULL),(35,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:08:03','2018-04-18 19:08:03',NULL),(36,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:08:05','2018-04-18 19:08:05',NULL),(37,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:08:07','2018-04-18 19:08:07',NULL),(38,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:08:17','2018-04-18 19:08:17',NULL),(39,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:09:12','2018-04-18 19:09:12',NULL),(40,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:09:14','2018-04-18 19:09:14',NULL),(41,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:09:34','2018-04-18 19:09:34',NULL),(42,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:09:44','2018-04-18 19:09:44',NULL),(43,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:09:51','2018-04-18 19:09:51',NULL),(44,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:10:10','2018-04-18 19:10:10',NULL),(45,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:10:26','2018-04-18 19:10:26',NULL),(46,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:10:30','2018-04-18 19:10:30',NULL),(47,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:10:48','2018-04-18 19:10:48',NULL),(48,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:11:14','2018-04-18 19:11:14',NULL),(49,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:11:34','2018-04-18 19:11:34',NULL),(50,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:11:43','2018-04-18 19:11:43',NULL),(51,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:12:29','2018-04-18 19:12:29',NULL),(52,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:12:36','2018-04-18 19:12:36',NULL),(53,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:13:16','2018-04-18 19:13:16',NULL),(54,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:13:23','2018-04-18 19:13:23',NULL),(55,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:23:23','2018-04-18 19:23:23',NULL),(56,2,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-18 19:23:26','2018-04-18 19:23:26',NULL),(57,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:23:44','2018-04-18 19:23:44',NULL),(58,2,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-18 19:23:44','2018-04-18 19:23:44',NULL),(59,2,NULL,NULL,'GET',NULL,0,0,0,0,5,'2018-04-18 19:31:48','2018-04-18 19:31:48',NULL),(60,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:32:09','2018-04-18 19:32:09',NULL),(61,2,NULL,NULL,'GET',NULL,0,0,0,0,7,'2018-04-18 19:32:23','2018-04-18 19:32:23',NULL),(62,2,NULL,NULL,'GET',NULL,0,0,0,0,9,'2018-04-18 19:32:35','2018-04-18 19:32:35',NULL),(63,2,NULL,NULL,'GET',NULL,0,0,0,0,9,'2018-04-18 19:33:30','2018-04-18 19:33:30',NULL),(64,2,NULL,NULL,'GET',NULL,0,0,0,0,9,'2018-04-18 19:33:31','2018-04-18 19:33:31',NULL),(65,2,NULL,NULL,'GET',NULL,0,0,0,0,7,'2018-04-18 19:33:38','2018-04-18 19:33:38',NULL),(66,2,NULL,NULL,'GET',NULL,0,0,0,0,7,'2018-04-18 19:33:40','2018-04-18 19:33:40',NULL),(67,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:33:53','2018-04-18 19:33:53',NULL),(68,2,NULL,NULL,'GET',NULL,0,0,0,0,11,'2018-04-18 19:34:02','2018-04-18 19:34:02',NULL),(69,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:34:15','2018-04-18 19:34:15',NULL),(70,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:34:34','2018-04-18 19:34:34',NULL),(71,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:36:26','2018-04-18 19:36:26',NULL),(72,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:36:40','2018-04-18 19:36:40',NULL),(73,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:36:42','2018-04-18 19:36:42',NULL),(74,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:37:11','2018-04-18 19:37:11',NULL),(75,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:37:14','2018-04-18 19:37:14',NULL),(76,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:37:19','2018-04-18 19:37:19',NULL),(77,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:37:48','2018-04-18 19:37:48',NULL),(78,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:37:53','2018-04-18 19:37:53',NULL),(79,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:00','2018-04-18 19:38:00',NULL),(80,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:01','2018-04-18 19:38:01',NULL),(81,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:07','2018-04-18 19:38:07',NULL),(82,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:09','2018-04-18 19:38:09',NULL),(83,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:17','2018-04-18 19:38:17',NULL),(84,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:32','2018-04-18 19:38:32',NULL),(85,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:38:37','2018-04-18 19:38:37',NULL),(86,2,NULL,NULL,'GET',NULL,0,0,0,0,13,'2018-04-18 19:38:47','2018-04-18 19:38:47',NULL),(87,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:39:05','2018-04-18 19:39:05',NULL),(88,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:06','2018-04-18 19:40:06',NULL),(89,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:12','2018-04-18 19:40:12',NULL),(90,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:13','2018-04-18 19:40:13',NULL),(91,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:13','2018-04-18 19:40:13',NULL),(92,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:38','2018-04-18 19:40:38',NULL),(93,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:42','2018-04-18 19:40:42',NULL),(94,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:46','2018-04-18 19:40:46',NULL),(95,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:53','2018-04-18 19:40:53',NULL),(96,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:57','2018-04-18 19:40:57',NULL),(97,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:40:58','2018-04-18 19:40:58',NULL),(98,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:41:03','2018-04-18 19:41:03',NULL),(99,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:41:04','2018-04-18 19:41:04',NULL),(100,2,NULL,NULL,'GET',NULL,0,0,0,0,15,'2018-04-18 19:41:21','2018-04-18 19:41:21',NULL),(101,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:41:42','2018-04-18 19:41:42',NULL),(102,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:41:43','2018-04-18 19:41:43',NULL),(103,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:43:36','2018-04-18 19:43:36',NULL),(104,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:43:50','2018-04-18 19:43:50',NULL),(105,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:43:54','2018-04-18 19:43:54',NULL),(106,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:44:01','2018-04-18 19:44:01',NULL),(107,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:44:06','2018-04-18 19:44:06',NULL),(108,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:44:07','2018-04-18 19:44:07',NULL),(109,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:44:08','2018-04-18 19:44:08',NULL),(110,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:44:12','2018-04-18 19:44:12',NULL),(111,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:45:43','2018-04-18 19:45:43',NULL),(112,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:46:07','2018-04-18 19:46:07',NULL),(113,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:02','2018-04-18 19:47:02',NULL),(114,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:14','2018-04-18 19:47:14',NULL),(115,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:30','2018-04-18 19:47:30',NULL),(116,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:37','2018-04-18 19:47:37',NULL),(117,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:43','2018-04-18 19:47:43',NULL),(118,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:47:57','2018-04-18 19:47:57',NULL),(119,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:49:27','2018-04-18 19:49:27',NULL),(120,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:49:36','2018-04-18 19:49:36',NULL),(121,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:49:42','2018-04-18 19:49:42',NULL),(122,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:49:59','2018-04-18 19:49:59',NULL),(123,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:03','2018-04-18 19:50:03',NULL),(124,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:15','2018-04-18 19:50:15',NULL),(125,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:28','2018-04-18 19:50:28',NULL),(126,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:35','2018-04-18 19:50:35',NULL),(127,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:38','2018-04-18 19:50:38',NULL),(128,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:50:44','2018-04-18 19:50:44',NULL),(129,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:51:09','2018-04-18 19:51:09',NULL),(130,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:51:41','2018-04-18 19:51:41',NULL),(131,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:52:55','2018-04-18 19:52:55',NULL),(132,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:05','2018-04-18 19:53:05',NULL),(133,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:08','2018-04-18 19:53:08',NULL),(134,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:23','2018-04-18 19:53:23',NULL),(135,2,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-18 19:53:27','2018-04-18 19:53:27',NULL),(136,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:32','2018-04-18 19:53:32',NULL),(137,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:49','2018-04-18 19:53:49',NULL),(138,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:53:52','2018-04-18 19:53:52',NULL),(139,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:54:24','2018-04-18 19:54:24',NULL),(140,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:02','2018-04-18 19:56:02',NULL),(141,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:04','2018-04-18 19:56:04',NULL),(142,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:06','2018-04-18 19:56:06',NULL),(143,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:19','2018-04-18 19:56:19',NULL),(144,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:20','2018-04-18 19:56:20',NULL),(145,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:24','2018-04-18 19:56:24',NULL),(146,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:37','2018-04-18 19:56:37',NULL),(147,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:39','2018-04-18 19:56:39',NULL),(148,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:44','2018-04-18 19:56:44',NULL),(149,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:56:46','2018-04-18 19:56:46',NULL),(150,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:58:28','2018-04-18 19:58:28',NULL),(151,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:58:29','2018-04-18 19:58:29',NULL),(152,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:58:31','2018-04-18 19:58:31',NULL),(153,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 19:59:42','2018-04-18 19:59:42',NULL),(154,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:00:08','2018-04-18 20:00:08',NULL),(155,2,NULL,NULL,'GET',NULL,0,0,0,0,16,'2018-04-18 20:02:21','2018-04-18 20:02:21',NULL),(156,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:03:21','2018-04-18 20:03:21',NULL),(157,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:03:30','2018-04-18 20:03:30',NULL),(158,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:04:09','2018-04-18 20:04:09',NULL),(159,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:04:11','2018-04-18 20:04:11',NULL),(160,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:04:13','2018-04-18 20:04:13',NULL),(161,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:04:16','2018-04-18 20:04:16',NULL),(162,2,NULL,NULL,'GET',NULL,0,0,0,0,11,'2018-04-18 20:14:33','2018-04-18 20:14:33',NULL),(163,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 20:15:03','2018-04-18 20:15:03',NULL),(164,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 21:32:20','2018-04-18 21:32:20',NULL),(165,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 21:32:24','2018-04-18 21:32:24',NULL),(166,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 21:32:25','2018-04-18 21:32:25',NULL),(167,2,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-18 21:32:26','2018-04-18 21:32:26',NULL),(168,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:52:51','2018-04-19 09:52:51',NULL),(169,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:53:10','2018-04-19 09:53:10',NULL),(170,3,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-19 09:53:18','2018-04-19 09:53:18',NULL),(171,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:53:19','2018-04-19 09:53:19',NULL),(172,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:53:24','2018-04-19 09:53:24',NULL),(173,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:54:38','2018-04-19 09:54:38',NULL),(174,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:54:48','2018-04-19 09:54:48',NULL),(175,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:16','2018-04-19 09:58:16',NULL),(176,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:18','2018-04-19 09:58:18',NULL),(177,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:20','2018-04-19 09:58:20',NULL),(178,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:51','2018-04-19 09:58:51',NULL),(179,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:53','2018-04-19 09:58:53',NULL),(180,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 09:58:55','2018-04-19 09:58:55',NULL),(181,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 10:06:11','2018-04-19 10:06:11',NULL),(182,3,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-19 10:06:14','2018-04-19 10:06:14',NULL),(183,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 09:54:28','2018-04-20 09:54:28',NULL),(184,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 09:59:53','2018-04-20 09:59:53',NULL),(185,4,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-20 10:00:02','2018-04-20 10:00:02',NULL),(186,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:02','2018-04-20 10:00:02',NULL),(187,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:05','2018-04-20 10:00:05',NULL),(188,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:09','2018-04-20 10:00:09',NULL),(189,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:21','2018-04-20 10:00:21',NULL),(190,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:40','2018-04-20 10:00:40',NULL),(191,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:00:55','2018-04-20 10:00:55',NULL),(192,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:01:13','2018-04-20 10:01:13',NULL),(193,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:01:22','2018-04-20 10:01:22',NULL),(194,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:01:25','2018-04-20 10:01:25',NULL),(195,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:01:37','2018-04-20 10:01:37',NULL),(196,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:07','2018-04-20 10:02:07',NULL),(197,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:23','2018-04-20 10:02:23',NULL),(198,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:25','2018-04-20 10:02:25',NULL),(199,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:25','2018-04-20 10:02:25',NULL),(200,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:54','2018-04-20 10:02:54',NULL),(201,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:58','2018-04-20 10:02:58',NULL),(202,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:02:59','2018-04-20 10:02:59',NULL),(203,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:13','2018-04-20 10:03:13',NULL),(204,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:14','2018-04-20 10:03:14',NULL),(205,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:16','2018-04-20 10:03:16',NULL),(206,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:45','2018-04-20 10:03:45',NULL),(207,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:46','2018-04-20 10:03:46',NULL),(208,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:03:47','2018-04-20 10:03:47',NULL),(209,4,NULL,NULL,'GET',NULL,0,0,0,0,18,'2018-04-20 10:03:52','2018-04-20 10:03:52',NULL),(210,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:04:09','2018-04-20 10:04:09',NULL),(211,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:04:10','2018-04-20 10:04:10',NULL),(212,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:04:25','2018-04-20 10:04:25',NULL),(213,4,NULL,NULL,'GET',NULL,0,0,0,0,20,'2018-04-20 10:06:06','2018-04-20 10:06:06',NULL),(214,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 10:07:01','2018-04-20 10:07:01',NULL),(215,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:14','2018-04-20 17:07:14',NULL),(216,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:15','2018-04-20 17:07:15',NULL),(217,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:21','2018-04-20 17:07:21',NULL),(218,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:26','2018-04-20 17:07:26',NULL),(219,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:32','2018-04-20 17:07:32',NULL),(220,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:07:38','2018-04-20 17:07:38',NULL),(221,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:38:33','2018-04-20 17:38:33',NULL),(222,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:38:34','2018-04-20 17:38:34',NULL),(223,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:38:36','2018-04-20 17:38:36',NULL),(224,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:38:41','2018-04-20 17:38:41',NULL),(225,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:38:41','2018-04-20 17:38:41',NULL),(226,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:38:51','2018-04-20 17:38:51',NULL),(227,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:38:51','2018-04-20 17:38:51',NULL),(228,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:41:48','2018-04-20 17:41:48',NULL),(229,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:41:49','2018-04-20 17:41:49',NULL),(230,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:42:30','2018-04-20 17:42:30',NULL),(231,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:42:31','2018-04-20 17:42:31',NULL),(232,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:43:02','2018-04-20 17:43:02',NULL),(233,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:43:03','2018-04-20 17:43:03',NULL),(234,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:52:59','2018-04-20 17:52:59',NULL),(235,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:53:00','2018-04-20 17:53:00',NULL),(236,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:53:22','2018-04-20 17:53:22',NULL),(237,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:54:41','2018-04-20 17:54:41',NULL),(238,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:55:08','2018-04-20 17:55:08',NULL),(239,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:56:36','2018-04-20 17:56:36',NULL),(240,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:56:59','2018-04-20 17:56:59',NULL),(241,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:58:25','2018-04-20 17:58:25',NULL),(242,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:58:37','2018-04-20 17:58:37',NULL),(243,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:59:22','2018-04-20 17:59:22',NULL),(244,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 17:59:23','2018-04-20 17:59:23',NULL),(245,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:59:31','2018-04-20 17:59:31',NULL),(246,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 17:59:37','2018-04-20 17:59:37',NULL),(247,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:00:03','2018-04-20 18:00:03',NULL),(248,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:00:31','2018-04-20 18:00:31',NULL),(249,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:00:39','2018-04-20 18:00:39',NULL),(250,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:00:39','2018-04-20 18:00:39',NULL),(251,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:01:06','2018-04-20 18:01:06',NULL),(252,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:01:48','2018-04-20 18:01:48',NULL),(253,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:02:06','2018-04-20 18:02:06',NULL),(254,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:02:39','2018-04-20 18:02:39',NULL),(255,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:02:48','2018-04-20 18:02:48',NULL),(256,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:02:54','2018-04-20 18:02:54',NULL),(257,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:03:08','2018-04-20 18:03:08',NULL),(258,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:03:13','2018-04-20 18:03:13',NULL),(259,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:03:22','2018-04-20 18:03:22',NULL),(260,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:03:49','2018-04-20 18:03:49',NULL),(261,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:03:59','2018-04-20 18:03:59',NULL),(262,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:15:32','2018-04-20 18:15:32',NULL),(263,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:15:47','2018-04-20 18:15:47',NULL),(264,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:21:44','2018-04-20 18:21:44',NULL),(265,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:21:44','2018-04-20 18:21:44',NULL),(266,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:21:44','2018-04-20 18:21:44',NULL),(267,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:21:44','2018-04-20 18:21:44',NULL),(268,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:21:45','2018-04-20 18:21:45',NULL),(269,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:21:45','2018-04-20 18:21:45',NULL),(270,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:22:02','2018-04-20 18:22:02',NULL),(271,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:06','2018-04-20 18:25:06',NULL),(272,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:09','2018-04-20 18:25:09',NULL),(273,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:10','2018-04-20 18:25:10',NULL),(274,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:22','2018-04-20 18:25:22',NULL),(275,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:22','2018-04-20 18:25:22',NULL),(276,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:23','2018-04-20 18:25:23',NULL),(277,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:23','2018-04-20 18:25:23',NULL),(278,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:23','2018-04-20 18:25:23',NULL),(279,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:23','2018-04-20 18:25:23',NULL),(280,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:38','2018-04-20 18:25:38',NULL),(281,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:38','2018-04-20 18:25:38',NULL),(282,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:38','2018-04-20 18:25:38',NULL),(283,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:39','2018-04-20 18:25:39',NULL),(284,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:39','2018-04-20 18:25:39',NULL),(285,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:39','2018-04-20 18:25:39',NULL),(286,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:25:43','2018-04-20 18:25:43',NULL),(287,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:44','2018-04-20 18:25:44',NULL),(288,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:44','2018-04-20 18:25:44',NULL),(289,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:44','2018-04-20 18:25:44',NULL),(290,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:44','2018-04-20 18:25:44',NULL),(291,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:25:45','2018-04-20 18:25:45',NULL),(292,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:26:06','2018-04-20 18:26:06',NULL),(293,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:06','2018-04-20 18:26:06',NULL),(294,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:06','2018-04-20 18:26:06',NULL),(295,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:07','2018-04-20 18:26:07',NULL),(296,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:09','2018-04-20 18:26:09',NULL),(297,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:09','2018-04-20 18:26:09',NULL),(298,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:26:31','2018-04-20 18:26:31',NULL),(299,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:26:32','2018-04-20 18:26:32',NULL),(300,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:38:07','2018-04-20 18:38:07',NULL),(301,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:38:12','2018-04-20 18:38:12',NULL),(302,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:39:21','2018-04-20 18:39:21',NULL),(303,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:39:22','2018-04-20 18:39:22',NULL),(304,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:41:03','2018-04-20 18:41:03',NULL),(305,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:41:03','2018-04-20 18:41:03',NULL),(306,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:41:27','2018-04-20 18:41:27',NULL),(307,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:41:43','2018-04-20 18:41:43',NULL),(308,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:41:50','2018-04-20 18:41:50',NULL),(309,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:42:17','2018-04-20 18:42:17',NULL),(310,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:42:45','2018-04-20 18:42:45',NULL),(311,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:43:01','2018-04-20 18:43:01',NULL),(312,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:43:13','2018-04-20 18:43:13',NULL),(313,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:43:34','2018-04-20 18:43:34',NULL),(314,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:43:37','2018-04-20 18:43:37',NULL),(315,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:44:21','2018-04-20 18:44:21',NULL),(316,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:44:39','2018-04-20 18:44:39',NULL),(317,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:47:34','2018-04-20 18:47:34',NULL),(318,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:48:24','2018-04-20 18:48:24',NULL),(319,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:48:43','2018-04-20 18:48:43',NULL),(320,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:49:55','2018-04-20 18:49:55',NULL),(321,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:50:02','2018-04-20 18:50:02',NULL),(322,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:50:55','2018-04-20 18:50:55',NULL),(323,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:51:49','2018-04-20 18:51:49',NULL),(324,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:51:59','2018-04-20 18:51:59',NULL),(325,4,NULL,NULL,'GET',NULL,0,0,0,0,21,'2018-04-20 18:54:21','2018-04-20 18:54:21',NULL),(326,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:54:40','2018-04-20 18:54:40',NULL),(327,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:58:45','2018-04-20 18:58:45',NULL),(328,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:58:58','2018-04-20 18:58:58',NULL),(329,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 18:58:59','2018-04-20 18:58:59',NULL),(330,4,NULL,NULL,'GET',NULL,0,0,0,0,23,'2018-04-20 18:59:27','2018-04-20 18:59:27',NULL),(331,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:59:50','2018-04-20 18:59:50',NULL),(332,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 18:59:56','2018-04-20 18:59:56',NULL),(333,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 19:03:44','2018-04-20 19:03:44',NULL),(334,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 19:03:45','2018-04-20 19:03:45',NULL),(335,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 19:04:11','2018-04-20 19:04:11',NULL),(336,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 19:04:11','2018-04-20 19:04:11',NULL),(337,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 19:04:25','2018-04-20 19:04:25',NULL),(338,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 19:04:26','2018-04-20 19:04:26',NULL),(339,4,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-20 19:04:46','2018-04-20 19:04:46',NULL),(340,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:46:30','2018-04-20 20:46:30',NULL),(341,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:52:39','2018-04-20 20:52:39',NULL),(342,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:53:15','2018-04-20 20:53:15',NULL),(343,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:53:29','2018-04-20 20:53:29',NULL),(344,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:53:47','2018-04-20 20:53:47',NULL),(345,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:54:03','2018-04-20 20:54:03',NULL),(346,4,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-20 20:54:07','2018-04-20 20:54:07',NULL),(347,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 03:57:54','2018-04-21 03:57:54',NULL),(348,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 03:58:17','2018-04-21 03:58:17',NULL),(349,5,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-21 03:58:32','2018-04-21 03:58:32',NULL),(350,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 03:58:33','2018-04-21 03:58:33',NULL),(351,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 03:59:11','2018-04-21 03:59:11',NULL),(352,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:00:13','2018-04-21 04:00:13',NULL),(353,5,NULL,NULL,'GET',NULL,0,0,0,0,24,'2018-04-21 04:08:37','2018-04-21 04:08:37',NULL),(354,5,NULL,NULL,'GET',NULL,0,0,0,0,25,'2018-04-21 04:08:50','2018-04-21 04:08:50',NULL),(355,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:08:59','2018-04-21 04:08:59',NULL),(356,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:09:25','2018-04-21 04:09:25',NULL),(357,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:14:51','2018-04-21 04:14:51',NULL),(358,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:14:53','2018-04-21 04:14:53',NULL),(359,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:15:04','2018-04-21 04:15:04',NULL),(360,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:15:07','2018-04-21 04:15:07',NULL),(361,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:02','2018-04-21 04:16:02',NULL),(362,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:04','2018-04-21 04:16:04',NULL),(363,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:06','2018-04-21 04:16:06',NULL),(364,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:08','2018-04-21 04:16:08',NULL),(365,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:10','2018-04-21 04:16:10',NULL),(366,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:16:33','2018-04-21 04:16:33',NULL),(367,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:17:14','2018-04-21 04:17:14',NULL),(368,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:17:29','2018-04-21 04:17:29',NULL),(369,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:17:56','2018-04-21 04:17:56',NULL),(370,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:18:04','2018-04-21 04:18:04',NULL),(371,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:18:09','2018-04-21 04:18:09',NULL),(372,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:18:21','2018-04-21 04:18:21',NULL),(373,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:19:24','2018-04-21 04:19:24',NULL),(374,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:19:28','2018-04-21 04:19:28',NULL),(375,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:19:58','2018-04-21 04:19:58',NULL),(376,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:20:01','2018-04-21 04:20:01',NULL),(377,5,NULL,NULL,'GET',NULL,0,0,0,0,27,'2018-04-21 04:20:12','2018-04-21 04:20:12',NULL),(378,5,NULL,NULL,'GET',NULL,0,0,0,0,27,'2018-04-21 04:20:21','2018-04-21 04:20:21',NULL),(379,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 04:20:51','2018-04-21 04:20:51',NULL),(380,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:26:41','2018-04-21 05:26:41',NULL),(381,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:26:45','2018-04-21 05:26:45',NULL),(382,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:27:46','2018-04-21 05:27:46',NULL),(383,5,NULL,NULL,'GET',NULL,0,0,0,0,28,'2018-04-21 05:28:53','2018-04-21 05:28:53',NULL),(384,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:01','2018-04-21 05:29:01',NULL),(385,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:03','2018-04-21 05:29:03',NULL),(386,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:13','2018-04-21 05:29:13',NULL),(387,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:19','2018-04-21 05:29:19',NULL),(388,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:23','2018-04-21 05:29:23',NULL),(389,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:26','2018-04-21 05:29:26',NULL),(390,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:29:34','2018-04-21 05:29:34',NULL),(391,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:38:58','2018-04-21 05:38:58',NULL),(392,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:38:59','2018-04-21 05:38:59',NULL),(393,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:39:01','2018-04-21 05:39:01',NULL),(394,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:39:05','2018-04-21 05:39:05',NULL),(395,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:39:34','2018-04-21 05:39:34',NULL),(396,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:39:38','2018-04-21 05:39:38',NULL),(397,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:40:00','2018-04-21 05:40:00',NULL),(398,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:40:02','2018-04-21 05:40:02',NULL),(399,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:40:03','2018-04-21 05:40:03',NULL),(400,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:05','2018-04-21 05:41:05',NULL),(401,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:06','2018-04-21 05:41:06',NULL),(402,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:13','2018-04-21 05:41:13',NULL),(403,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:14','2018-04-21 05:41:14',NULL),(404,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:18','2018-04-21 05:41:18',NULL),(405,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:19','2018-04-21 05:41:19',NULL),(406,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:23','2018-04-21 05:41:23',NULL),(407,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:41:24','2018-04-21 05:41:24',NULL),(408,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:42:24','2018-04-21 05:42:24',NULL),(409,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:43:22','2018-04-21 05:43:22',NULL),(410,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:43:23','2018-04-21 05:43:23',NULL),(411,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:02','2018-04-21 05:44:02',NULL),(412,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:22','2018-04-21 05:44:22',NULL),(413,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:24','2018-04-21 05:44:24',NULL),(414,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:35','2018-04-21 05:44:35',NULL),(415,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:36','2018-04-21 05:44:36',NULL),(416,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:50','2018-04-21 05:44:50',NULL),(417,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:51','2018-04-21 05:44:51',NULL),(418,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:44:55','2018-04-21 05:44:55',NULL),(419,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:45:16','2018-04-21 05:45:16',NULL),(420,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:45:20','2018-04-21 05:45:20',NULL),(421,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:45:25','2018-04-21 05:45:25',NULL),(422,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:45:29','2018-04-21 05:45:29',NULL),(423,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:46:31','2018-04-21 05:46:31',NULL),(424,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:46:36','2018-04-21 05:46:36',NULL),(425,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:49:26','2018-04-21 05:49:26',NULL),(426,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:49:39','2018-04-21 05:49:39',NULL),(427,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:49:45','2018-04-21 05:49:45',NULL),(428,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:49:53','2018-04-21 05:49:53',NULL),(429,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:49:55','2018-04-21 05:49:55',NULL),(430,5,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:50:03','2018-04-21 05:50:03',NULL),(431,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 05:59:56','2018-04-21 05:59:56',NULL),(432,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:25:14','2018-04-21 06:25:14',NULL),(433,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:25:16','2018-04-21 06:25:16',NULL),(434,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:25:24','2018-04-21 06:25:24',NULL),(435,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:25:53','2018-04-21 06:25:53',NULL),(436,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:26:41','2018-04-21 06:26:41',NULL),(437,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:26:50','2018-04-21 06:26:50',NULL),(438,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:26:53','2018-04-21 06:26:53',NULL),(439,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:27:00','2018-04-21 06:27:00',NULL),(440,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:27:14','2018-04-21 06:27:14',NULL),(441,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:27:28','2018-04-21 06:27:28',NULL),(442,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:15','2018-04-21 06:28:15',NULL),(443,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:19','2018-04-21 06:28:19',NULL),(444,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:28','2018-04-21 06:28:28',NULL),(445,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:32','2018-04-21 06:28:32',NULL),(446,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:43','2018-04-21 06:28:43',NULL),(447,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 06:28:45','2018-04-21 06:28:45',NULL),(448,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 08:43:30','2018-04-21 08:43:30',NULL),(449,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:20:29','2018-04-21 09:20:29',NULL),(450,6,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-21 09:20:38','2018-04-21 09:20:38',NULL),(451,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:21:56','2018-04-21 09:21:56',NULL),(452,6,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-21 09:21:56','2018-04-21 09:21:56',NULL),(453,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:22:37','2018-04-21 09:22:37',NULL),(454,6,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-21 09:22:38','2018-04-21 09:22:38',NULL),(455,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:22:52','2018-04-21 09:22:52',NULL),(456,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:23:18','2018-04-21 09:23:18',NULL),(457,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:23:52','2018-04-21 09:23:52',NULL),(458,6,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-21 09:24:00','2018-04-21 09:24:00',NULL),(459,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:24:00','2018-04-21 09:24:00',NULL),(460,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:24:13','2018-04-21 09:24:13',NULL),(461,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:24:18','2018-04-21 09:24:18',NULL),(462,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:24:23','2018-04-21 09:24:23',NULL),(463,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:24:57','2018-04-21 09:24:57',NULL),(464,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:25:00','2018-04-21 09:25:00',NULL),(465,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:25:23','2018-04-21 09:25:23',NULL),(466,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:26:04','2018-04-21 09:26:04',NULL),(467,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:26:43','2018-04-21 09:26:43',NULL),(468,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:26:58','2018-04-21 09:26:58',NULL),(469,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 09:27:05','2018-04-21 09:27:05',NULL),(470,6,NULL,NULL,'GET',NULL,0,0,0,0,29,'2018-04-21 15:06:06','2018-04-21 15:06:06',NULL),(471,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 15:30:30','2018-04-21 15:30:30',NULL),(472,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 15:30:40','2018-04-21 15:30:40',NULL),(473,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 15:30:43','2018-04-21 15:30:43',NULL),(474,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:12','2018-04-21 18:03:12',NULL),(475,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:13','2018-04-21 18:03:13',NULL),(476,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:31','2018-04-21 18:03:31',NULL),(477,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:32','2018-04-21 18:03:32',NULL),(478,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:44','2018-04-21 18:03:44',NULL),(479,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:45','2018-04-21 18:03:45',NULL),(480,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:03:52','2018-04-21 18:03:52',NULL),(481,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:04:10','2018-04-21 18:04:10',NULL),(482,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:04:11','2018-04-21 18:04:11',NULL),(483,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:04:29','2018-04-21 18:04:29',NULL),(484,6,NULL,NULL,'GET',NULL,0,0,0,0,30,'2018-04-21 18:22:48','2018-04-21 18:22:48',NULL),(485,6,NULL,NULL,'GET',NULL,0,0,0,0,31,'2018-04-21 18:23:03','2018-04-21 18:23:03',NULL),(486,6,NULL,NULL,'GET',NULL,0,0,0,0,32,'2018-04-21 18:23:45','2018-04-21 18:23:45',NULL),(487,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:24:17','2018-04-21 18:24:17',NULL),(488,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:05','2018-04-21 18:25:05',NULL),(489,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:06','2018-04-21 18:25:06',NULL),(490,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:07','2018-04-21 18:25:07',NULL),(491,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:07','2018-04-21 18:25:07',NULL),(492,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:08','2018-04-21 18:25:08',NULL),(493,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:25:09','2018-04-21 18:25:09',NULL),(494,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:30:07','2018-04-21 18:30:07',NULL),(495,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:30:49','2018-04-21 18:30:49',NULL),(496,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:31:05','2018-04-21 18:31:05',NULL),(497,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:31:10','2018-04-21 18:31:10',NULL),(498,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:22','2018-04-21 18:52:22',NULL),(499,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:23','2018-04-21 18:52:23',NULL),(500,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:29','2018-04-21 18:52:29',NULL),(501,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:32','2018-04-21 18:52:32',NULL),(502,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:32','2018-04-21 18:52:32',NULL),(503,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:36','2018-04-21 18:52:36',NULL),(504,6,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-21 18:52:51','2018-04-21 18:52:51',NULL),(505,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:51','2018-04-21 18:52:51',NULL),(506,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:52:56','2018-04-21 18:52:56',NULL),(507,6,NULL,NULL,'GET',NULL,0,0,0,0,33,'2018-04-21 18:53:19','2018-04-21 18:53:19',NULL),(508,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:53:34','2018-04-21 18:53:34',NULL),(509,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:53:34','2018-04-21 18:53:34',NULL),(510,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:53:39','2018-04-21 18:53:39',NULL),(511,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:53:41','2018-04-21 18:53:41',NULL),(512,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:53:43','2018-04-21 18:53:43',NULL),(513,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 18:54:30','2018-04-21 18:54:30',NULL),(514,6,NULL,NULL,'GET',NULL,0,0,0,0,35,'2018-04-21 19:27:21','2018-04-21 19:27:21',NULL),(515,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:27:43','2018-04-21 19:27:43',NULL),(516,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:28:32','2018-04-21 19:28:32',NULL),(517,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:28:40','2018-04-21 19:28:40',NULL),(518,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:28:46','2018-04-21 19:28:46',NULL),(519,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:28:53','2018-04-21 19:28:53',NULL),(520,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:29:02','2018-04-21 19:29:02',NULL),(521,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:29:43','2018-04-21 19:29:43',NULL),(522,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:29:45','2018-04-21 19:29:45',NULL),(523,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:29:48','2018-04-21 19:29:48',NULL),(524,6,NULL,NULL,'GET',NULL,0,0,0,0,37,'2018-04-21 19:30:41','2018-04-21 19:30:42',NULL),(525,6,NULL,NULL,'GET',NULL,0,0,0,0,37,'2018-04-21 19:30:59','2018-04-21 19:30:59',NULL),(526,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:31:31','2018-04-21 19:31:31',NULL),(527,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:32:17','2018-04-21 19:32:17',NULL),(528,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:32:28','2018-04-21 19:32:28',NULL),(529,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:33:03','2018-04-21 19:33:03',NULL),(530,6,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-21 19:33:15','2018-04-21 19:33:15',NULL),(531,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:33:47','2018-04-21 19:33:47',NULL),(532,6,NULL,NULL,'GET',NULL,0,0,0,0,39,'2018-04-21 19:37:28','2018-04-21 19:37:28',NULL),(533,6,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-21 19:37:48','2018-04-21 19:37:48',NULL),(534,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:51:23','2018-04-22 10:51:23',NULL),(535,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:51:28','2018-04-22 10:51:28',NULL),(536,8,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:51:33','2018-04-22 10:51:33',NULL),(537,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:03','2018-04-22 10:52:03',NULL),(538,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:12','2018-04-22 10:52:12',NULL),(539,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:14','2018-04-22 10:52:14',NULL),(540,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:14','2018-04-22 10:52:14',NULL),(541,7,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:14','2018-04-22 10:52:14',NULL),(542,9,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-22 10:52:20','2018-04-22 10:52:20',NULL),(543,8,NULL,NULL,'GET',NULL,0,0,0,0,3,'2018-04-22 10:52:25','2018-04-22 10:52:25',NULL),(544,9,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-22 11:00:21','2018-04-22 11:00:21',NULL),(545,9,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-22 11:00:22','2018-04-22 11:00:22',NULL),(546,9,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-22 11:13:54','2018-04-22 11:13:54',NULL),(547,9,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-22 11:13:54','2018-04-22 11:13:54',NULL),(548,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:29:20','2018-04-23 09:29:20',NULL),(549,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:29:21','2018-04-23 09:29:21',NULL),(550,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:29:23','2018-04-23 09:29:23',NULL),(551,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:29:32','2018-04-23 09:29:32',NULL),(552,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:29:32','2018-04-23 09:29:32',NULL),(553,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:29:39','2018-04-23 09:29:39',NULL),(554,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:34:54','2018-04-23 09:34:54',NULL),(555,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:34:55','2018-04-23 09:34:55',NULL),(556,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:34:58','2018-04-23 09:34:58',NULL),(557,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:35:04','2018-04-23 09:35:04',NULL),(558,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:35:04','2018-04-23 09:35:04',NULL),(559,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:35:16','2018-04-23 09:35:16',NULL),(560,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:35:16','2018-04-23 09:35:16',NULL),(561,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:35:21','2018-04-23 09:35:21',NULL),(562,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:35:21','2018-04-23 09:35:21',NULL),(563,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:35:42','2018-04-23 09:35:42',NULL),(564,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:35:42','2018-04-23 09:35:42',NULL),(565,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:35:51','2018-04-23 09:35:51',NULL),(566,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:35:51','2018-04-23 09:35:51',NULL),(567,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:37:18','2018-04-23 09:37:18',NULL),(568,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:37:18','2018-04-23 09:37:18',NULL),(569,10,NULL,NULL,'POST',NULL,0,0,0,0,NULL,'2018-04-23 09:37:23','2018-04-23 09:37:23',NULL),(570,10,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-23 09:37:23','2018-04-23 09:37:23',NULL),(571,11,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-24 20:29:37','2018-04-24 20:29:37',NULL),(572,12,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-24 20:29:37','2018-04-24 20:29:37',NULL),(573,12,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-24 21:10:41','2018-04-24 21:10:41',NULL),(574,12,NULL,NULL,'GET',NULL,0,0,0,0,NULL,'2018-04-24 21:10:41','2018-04-24 21:10:41',NULL);
/*!40000 ALTER TABLE `tracker_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_paths`
--

DROP TABLE IF EXISTS `tracker_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_paths` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_paths_created_at_index` (`created_at`),
  KEY `tracker_paths_updated_at_index` (`updated_at`),
  KEY `tracker_paths_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_paths`
--

LOCK TABLES `tracker_paths` WRITE;
/*!40000 ALTER TABLE `tracker_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_queries`
--

DROP TABLE IF EXISTS `tracker_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_queries_created_at_index` (`created_at`),
  KEY `tracker_queries_updated_at_index` (`updated_at`),
  KEY `tracker_queries_query_index` (`query`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_queries`
--

LOCK TABLES `tracker_queries` WRITE;
/*!40000 ALTER TABLE `tracker_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_query_arguments`
--

DROP TABLE IF EXISTS `tracker_query_arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `query_id` bigint(20) unsigned NOT NULL,
  `argument` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_query_arguments_created_at_index` (`created_at`),
  KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  KEY `tracker_query_arguments_query_id_index` (`query_id`),
  KEY `tracker_query_arguments_argument_index` (`argument`),
  KEY `tracker_query_arguments_value_index` (`value`),
  CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_query_arguments`
--

LOCK TABLES `tracker_query_arguments` WRITE;
/*!40000 ALTER TABLE `tracker_query_arguments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_query_arguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_referers`
--

DROP TABLE IF EXISTS `tracker_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_referers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` bigint(20) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_created_at_index` (`created_at`),
  KEY `tracker_referers_updated_at_index` (`updated_at`),
  KEY `tracker_referers_domain_id_index` (`domain_id`),
  KEY `tracker_referers_url_index` (`url`),
  KEY `tracker_referers_medium_index` (`medium`),
  KEY `tracker_referers_source_index` (`source`),
  KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`),
  CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_referers`
--

LOCK TABLES `tracker_referers` WRITE;
/*!40000 ALTER TABLE `tracker_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_referers_search_terms`
--

DROP TABLE IF EXISTS `tracker_referers_search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `referer_id` bigint(20) unsigned NOT NULL,
  `search_term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  KEY `tracker_referers_search_terms_search_term_index` (`search_term`),
  CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_referers_search_terms`
--

LOCK TABLES `tracker_referers_search_terms` WRITE;
/*!40000 ALTER TABLE `tracker_referers_search_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_referers_search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_route_path_parameters`
--

DROP TABLE IF EXISTS `tracker_route_path_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_path_id` bigint(20) unsigned NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  KEY `tracker_route_path_parameters_value_index` (`value`),
  CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_route_path_parameters`
--

LOCK TABLES `tracker_route_path_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_route_path_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_route_path_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_route_paths`
--

DROP TABLE IF EXISTS `tracker_route_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` bigint(20) unsigned NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_route_paths_created_at_index` (`created_at`),
  KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  KEY `tracker_route_paths_route_id_index` (`route_id`),
  KEY `tracker_route_paths_path_index` (`path`),
  CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_route_paths`
--

LOCK TABLES `tracker_route_paths` WRITE;
/*!40000 ALTER TABLE `tracker_route_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_route_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_routes`
--

DROP TABLE IF EXISTS `tracker_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_routes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_routes_created_at_index` (`created_at`),
  KEY `tracker_routes_updated_at_index` (`updated_at`),
  KEY `tracker_routes_name_index` (`name`),
  KEY `tracker_routes_action_index` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_routes`
--

LOCK TABLES `tracker_routes` WRITE;
/*!40000 ALTER TABLE `tracker_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sessions`
--

DROP TABLE IF EXISTS `tracker_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `device_id` bigint(20) unsigned DEFAULT NULL,
  `agent_id` bigint(20) unsigned DEFAULT NULL,
  `client_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint(20) unsigned DEFAULT NULL,
  `cookie_id` bigint(20) unsigned DEFAULT NULL,
  `geoip_id` bigint(20) unsigned DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  KEY `tracker_sessions_created_at_index` (`created_at`),
  KEY `tracker_sessions_updated_at_index` (`updated_at`),
  KEY `tracker_sessions_user_id_index` (`user_id`),
  KEY `tracker_sessions_device_id_index` (`device_id`),
  KEY `tracker_sessions_agent_id_index` (`agent_id`),
  KEY `tracker_sessions_client_ip_index` (`client_ip`),
  KEY `tracker_sessions_referer_id_index` (`referer_id`),
  KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  KEY `tracker_sessions_language_id_index` (`language_id`),
  CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sessions`
--

LOCK TABLES `tracker_sessions` WRITE;
/*!40000 ALTER TABLE `tracker_sessions` DISABLE KEYS */;
INSERT INTO `tracker_sessions` VALUES (1,'a5f90a1e-97ca-4e00-a1b5-364efd820cd9',NULL,1,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-18 13:34:24','2018-04-18 13:46:37',NULL),(2,'5c81767a-72d7-4283-9124-12788e4b589e',NULL,1,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-18 18:41:44','2018-04-18 21:32:26',NULL),(3,'9a7784bb-6a09-4979-84ea-60ea49f37f84',NULL,1,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-19 09:52:51','2018-04-19 10:06:14',NULL),(4,'ce5f5f2d-49dc-4255-b643-d931ee1ccc68',NULL,2,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-20 09:54:28','2018-04-20 20:54:07',NULL),(5,'87647fb3-29bd-40a2-82a9-59225002da58',NULL,1,NULL,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-21 03:57:54','2018-04-21 05:50:03',NULL),(6,'b1860b28-2d69-41cb-b4f7-9651ca742263',NULL,2,1,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-21 05:59:56','2018-04-21 19:37:48',NULL),(7,'6f554472-1c1d-4d70-b274-a1576036ce5d',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-22 10:51:23','2018-04-22 10:52:14',NULL),(8,'4cbe48c1-5d9c-4086-b7bc-3531143ba6e4',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-22 10:51:33','2018-04-22 10:52:25',NULL),(9,'55dda226-b699-4382-b5d2-66533238156b',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-22 10:52:20','2018-04-22 11:13:54',NULL),(10,'16b03be0-ac0c-4a1c-afb8-d51fa8954a02',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-23 09:29:20','2018-04-23 09:37:23',NULL),(11,'fa262e20-2e54-49ce-bbb0-d5e37f5bcb79',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-24 20:29:37','2018-04-24 20:29:37',NULL),(12,'a0addb85-9c4c-472a-94e4-ff16a98409b1',NULL,1,2,'127.0.0.1',NULL,NULL,NULL,0,'2018-04-24 20:29:37','2018-04-24 21:10:41',NULL);
/*!40000 ALTER TABLE `tracker_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_queries`
--

DROP TABLE IF EXISTS `tracker_sql_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_sha1_index` (`sha1`),
  KEY `tracker_sql_queries_time_index` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_queries`
--

LOCK TABLES `tracker_sql_queries` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_queries_log`
--

DROP TABLE IF EXISTS `tracker_sql_queries_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) unsigned NOT NULL,
  `sql_query_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`),
  CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_queries_log`
--

LOCK TABLES `tracker_sql_queries_log` WRITE;
/*!40000 ALTER TABLE `tracker_sql_queries_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_queries_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_query_bindings`
--

DROP TABLE IF EXISTS `tracker_sql_query_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_sha1_index` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_query_bindings`
--

LOCK TABLES `tracker_sql_query_bindings` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_sql_query_bindings_parameters`
--

DROP TABLE IF EXISTS `tracker_sql_query_bindings_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sql_query_bindings_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`),
  CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_sql_query_bindings_parameters`
--

LOCK TABLES `tracker_sql_query_bindings_parameters` WRITE;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_sql_query_bindings_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_system_classes`
--

DROP TABLE IF EXISTS `tracker_system_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tracker_system_classes_created_at_index` (`created_at`),
  KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  KEY `tracker_system_classes_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_system_classes`
--

LOCK TABLES `tracker_system_classes` WRITE;
/*!40000 ALTER TABLE `tracker_system_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker_system_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Admin','0','not set yet',1,'admin@gmail.com','$2y$10$CErKa1sZiQNCECFOnksyRuySw.nlwL8Hq3rN0BuaT5WgHp47v2V6W','6EWkAXv3Lue9FLj8CtsRqgmg9RmHKnQW0O9ucn4AziTboa7tksIh0XMe7fRT','2018-04-04 05:25:30','2018-04-04 05:25:39',1,NULL),(3,'Thắng Phi','0','not set yet',0,'thangpmedia@gmail.com','$2y$10$CErKa1sZiQNCECFOnksyRuySw.nlwL8Hq3rN0BuaT5WgHp47v2V6W','ud5vnyWoOGriITYYH0xqggRL6uyhtfT0IeLPzGPZjVZIozAcY9Mx9iPBDEec','2018-04-04 09:40:12','2018-04-07 07:47:57',1,NULL),(4,'Tester 2 ','0','not set yet',0,'tester2@gmail.com','$2y$10$CErKa1sZiQNCECFOnksyRuySw.nlwL8Hq3rN0BuaT5WgHp47v2V6W','ud5vnyWoOGriITYYH0xqggRL6uyhtfT0IeLPzGPZjVZIozAcY9Mx9iPBDEec','2018-04-04 09:40:12','2018-04-07 07:47:57',1,NULL),(5,'Hùng Anh Trịnh','0','not set yet',0,'hataketsu@gmail.com','$2y$10$ErM9N3RPvzOhhb7ya0dNZ.hKcv2Js0/oaT8KAHkcpKxRAm9J4P6iu','v9KfRw0vANAgdxzOhatbHsiaDhVrc0TyyIZo7QlFYCL5Bu0nVq4pbRoo6TpC','2018-04-11 01:20:06','2018-04-11 01:37:25',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishes_user_id_index` (`user_id`),
  KEY `wishes_product_id_index` (`product_id`),
  CONSTRAINT `wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishes`
--

LOCK TABLES `wishes` WRITE;
/*!40000 ALTER TABLE `wishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25  4:28:25
