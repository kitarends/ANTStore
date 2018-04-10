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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,'About us','/about','<p>Test</p>','2018-04-03 07:13:17','2018-04-03 07:13:17',''),(3,'DMCA','/dmca','<p>The&nbsp;<strong>Digital Millennium Copyright Act</strong>&nbsp;(<strong>DMCA</strong>) is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States\">United States</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright\">copyright</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Law\">law</a>&nbsp;that implements two 1996 treaties of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/World_Intellectual_Property_Organization\">World Intellectual Property Organization</a>&nbsp;(WIPO). It criminalizes production and dissemination of technology, devices, or services intended to circumvent measures that control access to copyrighted works (commonly known as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_rights_management\">digital rights management</a>&nbsp;or DRM). It also criminalizes the act of circumventing an access control, whether or not there is actual infringement of copyright itself. In addition, the DMCA heightens the penalties for copyright infringement on the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet\">Internet</a>.<a href=\"https://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act#cite_note-1\">[1]</a><a href=\"https://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act#cite_note-2\">[2]</a>Passed on October 12, 1998, by a unanimous vote in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States_Senate\">United States Senate</a>&nbsp;and signed into law by President&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bill_Clinton\">Bill Clinton</a>on October 28, 1998, the DMCA amended&nbsp;<a href=\"https://en.wikipedia.org/wiki/Title_17_of_the_United_States_Code\">Title 17</a>&nbsp;of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States_Code\">United States Code</a>&nbsp;to extend the reach of copyright, while limiting the liability of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Online_service_provider\">providers of online services</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright_infringement\">copyright infringement</a>&nbsp;by their users.</p>','2018-04-03 07:15:50','2018-04-03 09:04:44','<p>The&nbsp;<strong>Digital Millennium Copyright Act</strong>&nbsp;(<strong>DMCA</strong>) is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States\">United States</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copyright\">copyright</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Law\">law</a>&nbsp;that implements two 1996 treaties of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/World_Intellectual_Property_Organization\">World Intellectual Property Organization</a>&nbsp;(WIPO).</p>'),(4,'terms_of_service','/terms_of_service','<p>Not added yet</p>','2018-04-03 07:17:14','2018-04-03 09:10:11','<p>No preview</p>'),(5,'New arrivals 30/12','/','<p>Test</p>\r\n\r\n<p><img alt=\"Beaded Ring Drop Earrings\" src=\"https://s7d2.scene7.com/is/image/LO/473531_9000_B1?$436x502$\" /></p>','2018-04-03 07:24:50','2018-04-03 07:26:02',''),(6,'Contact us','/contact','<p>092222222</p>','2018-04-03 08:38:47','2018-04-03 08:38:47','');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2018_03_08_144918_create_categories_table',1),(12,'2018_03_08_144926_create_products_table',1),(13,'2018_03_08_144948_create_comments_table',1),(17,'2018_03_08_150633_create_orders_table',2),(18,'2018_03_08_155043_create_wishes_table',2),(19,'2018_03_20_133622_create_order_items_table',2),(20,'2018_04_03_125141_create_blogs_table',3),(21,'2018_04_03_155914_add_thumb_to_blog',4),(22,'2017_02_02_232450_add_confirmation',5),(23,'2018_04_07_105021_create_ads_table',6),(24,'2018_04_10_075235_create_discounts_table',7),(25,'2018_04_10_154711_add_to_order',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (4,4,8,90.00,1,'2018-04-04 06:51:18','2018-04-04 06:51:18');
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
  `used_discount_code` double NOT NULL,
  `discounted_price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,'Hùng Anh Trịnh','nope','0982288173','Hà Đông','','disposed','2018-04-01 04:31:45','2018-04-01 04:32:25',0,0),(4,2,'Adminxx','nope','0','not set yet','','done','2018-04-04 06:51:18','2018-04-04 06:56:23',0,0),(5,2,'Adminxx','nope','0','not set yet','','done','2018-04-04 06:56:44','2018-04-04 06:56:53',0,0);
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
INSERT INTO `products` VALUES (8,'Dr. Martens 1460 8-Eye Boot','878f9ff3eed71d939d80f3536cb704d9_1522775905.jpg;','Fit: This style tends to run large. For an accurate fit we recommend purchasing a 1/2 size smaller than you typically purchase. For example, if you normally purchase a size 8 1/2, we recommend purchasing a size 8. Upper: Smooth Leather','<h2>Dr. Martens 1460 8-Eye Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When you think of Dr. Martens, you think of the 1460 8-Eye Boot. This style icon includes all of the authentic Doc Martens touches that have made it a true original. Signature Airwairs leather upper is stiff out of the box and softens over time to conform to the shape of your foot. It can be worn polished or natural, depending on your style. Classic 8 -eyelet lace-up front gives you perfect fit every time. Goodyear-welted construction means that these boots are made to last by sewing and heat sealing the sole to the upper for exceptional durability. The slip-resistant sole and air-cushioned heel enhance traction and comfort. Explore our selection of colors and styles to find the perfect pair to match your look.</p>\r\n\r\n<ul>\r\n	<li>Iconic Dr. Marten style</li>\r\n	<li>Airwairs leather upper</li>\r\n	<li>Individualized fit</li>\r\n	<li>8-eyelet lace-up front</li>\r\n	<li>Goodyear-welted construction</li>\r\n	<li>Slip-resistant sole</li>\r\n	<li>Air-cushioned heel</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DR. MARTENS SIZE CHART (ORDERS PLACED IN UK SIZES):</strong></p>\r\n\r\n<p><img src=\"https://cdn-ap-ec.yottaa.net/550c587c2106b06b5100362d/www.shoes.com/v~22.166/images/desc/drmar/DrMartensAdultsizechart.jpg?yocs=c_f_&amp;yoloc=ap\" style=\"margin:0px\" />&nbsp;<br />\r\n<br />\r\n<strong><a href=\"https://www.shoes.com/dr-martens-originals/category_53194\">SHOP MORE DR. MARTENS ORIGINALS HERE</a></strong></p>',135.00,90.00,2,0,0,'2018-04-03 10:18:25','2018-04-03 10:31:20'),(9,'Skechers Hampshire Manchester Duck Boot','23db8abe4b7e592f449e887dffb8c16b_1522856136.jpg;','WIDTH: M (Regular)   COLOR: Charcoal','<h2>Skechers Hampshire Manchester Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Look your finest even in foul weather wearing the warm and comfortable SKECHERS Hampshire - Manchester Duck Boot. Waterproof rubber shell with quilt stitched parka fabric and synthetic upper in a lace up mid calf height cold weather casual boot with insulated design and Warm Tech Memory Foam insole.</p>\r\n\r\n<ul>\r\n	<li>Smooth shiny leather-textured synthetic overlays</li>\r\n	<li>Sculpted classic &#39;duck boot&#39; raised detail on toe</li>\r\n	<li>Sculpted accents on sides and heel</li>\r\n	<li>Reinforced stitched seams</li>\r\n	<li>Parka style zigzag textured stitching detail on fabric shaft</li>\r\n	<li>Synthetic overlays at ankle and heel for added durability</li>\r\n	<li>Mukluk style slide lock lacing for easy access</li>\r\n	<li>Smooth parka-style fabric lays outside collar for added protection</li>\r\n	<li>Smooth synthetic top collar trim</li>\r\n	<li>Soft faux fur trim at collar and tongue</li>\r\n	<li>Soft faux fur shaft lining</li>\r\n	<li>Faux shearling and fabric boot socklining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Insole designed to block cold ground temperatures</li>\r\n	<li>Insole helps to retain body heat</li>\r\n	<li>Contrast colored rubber outsole</li>\r\n	<li>Classic style high traction flexible outsole design</li>\r\n</ul>',75.00,34.00,3,0,0,'2018-04-04 08:35:36','2018-04-04 08:35:36'),(10,'Skechers Windom Dry Spell Duck Boot','d50e1ffa1006d5df8306eec6ef4ba610_1522856342.jpg;','WIDTH: M (Regular)   COLOR: Charcoal','<h2>Skechers Windom Dry Spell Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whatever the weather has in store for you, the SKECHERS Windom Quilted Mid Duck Boot has you covered. Thanks to its gusseted tongue, soft shearling-style faux fur lining, and insulated shaft, this waterproof boot keeps your feet warm and toasty. A flexible rubber outsole offers superior traction, while the Warm Tech Memory Foam insole provides cushioning.</p>\r\n\r\n<ul>\r\n	<li>Water-resistant parka nylon and waterproof rubber shell upper</li>\r\n	<li>Lace-up with durable metal eyelets</li>\r\n	<li>Fabric insulated shaft</li>\r\n	<li>Gusseted tongue</li>\r\n	<li>Seam-sealed construction</li>\r\n	<li>Parka nylon shaft with stitching detail</li>\r\n	<li>Soft shearling-style faux fur lining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Flexible rubber traction outsole</li>\r\n	<li>6-inch shaft height</li>\r\n	<li>12-inch adjustable shaft circumference</li>\r\n	<li>1-inch heel</li>\r\n</ul>\r\n\r\n<p>Note: Charcoal/Black color has a 200G Thinsulate and a waterproof outsole and shaft</p>',34.95,28.00,3,0,0,'2018-04-04 08:39:02','2018-04-04 08:39:26'),(11,'Skechers Hampshire Duck Boot','1106aa72093a371630563dfaa6800452_1522856508.jpg;','WIDTH: M (Regular) COLOR: Navy/Tan','<h2>Skechers Hampshire Duck Boot&nbsp;Product Description</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A reliable yet stylish choice for drizzly days, the SKECHERS Hampshire Duck Boot features a waterproof upper and Warm Tech Memory Foam insole that blocks cold, retains heat, and provides cushioning for comfort that can&#39;t be beat. Flexible rubber outsole offers superior traction in slippery situations. Featuring a water-resistant collar, an insulated shaft, and a gusseted tongue, this SKECHERS duck boot will keep your foot dry and warm in inclement weather conditions.</p>\r\n\r\n<ul>\r\n	<li>Waterproof, seam-sealed rubber shell upper</li>\r\n	<li>Two eye lace-up</li>\r\n	<li>Water-resistant quilt-style parka nylon collar</li>\r\n	<li>Gusseted tongue</li>\r\n	<li>Padded collar and tongue</li>\r\n	<li>Plaid flannel insulated shaft</li>\r\n	<li>Smooth suede-textured synthetic overlays</li>\r\n	<li>Sculpted accents on sides and heel</li>\r\n	<li>Reinforced stitched seams</li>\r\n	<li>Heel synthetic overlay with top pull on tab</li>\r\n	<li>Stitching detail</li>\r\n	<li>Soft fabric lining</li>\r\n	<li>Warm Tech Memory Foam cushioned comfort insole</li>\r\n	<li>Flexible rubber traction outsole</li>\r\n	<li>5-inch shaft height</li>\r\n	<li>10.5-inch adjustable shaft circumference</li>\r\n	<li>1-inch heel</li>\r\n</ul>',45.50,45.50,3,0,0,'2018-04-04 08:41:48','2018-04-04 08:41:48');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Adminxx','0','not set yet',1,'admin@gmail.com','$2y$10$CErKa1sZiQNCECFOnksyRuySw.nlwL8Hq3rN0BuaT5WgHp47v2V6W','qB7ZicQa8AHaX3GbymcgcUg5lupOCgEKQUnGeynomav60FcEXcnKHrX1R4CF','2018-04-04 05:25:30','2018-04-04 05:25:39',1,NULL),(3,'Hung','0','not set yet',0,'hataketsu@gmail.com','$2y$10$7AIEaTipHVaE/8/A4laW9uK0GdNny7VrfePnT.x7Y5TGckH/z50.m','ud5vnyWoOGriITYYH0xqggRL6uyhtfT0IeLPzGPZjVZIozAcY9Mx9iPBDEec','2018-04-04 09:40:12','2018-04-07 07:47:57',1,NULL);
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

-- Dump completed on 2018-04-10 23:18:28
