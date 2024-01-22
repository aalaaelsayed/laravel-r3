-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: laravel_r3
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Grant, O\'Conner and Hilpert','Aut voluptatum omnis sit quidem enim reiciendis.',0,'https://via.placeholder.com/640x480.png/00dd22?text=animals+ea',10,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(2,'Casper, Kunze and Dicki','Et accusamus dolorem nesciunt iure quod consequuntur voluptatem fugiat.',0,'https://via.placeholder.com/640x480.png/00bb11?text=animals+laboriosam',9,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(3,'Klein and Sons','Alias inventore quisquam molestiae quis.',0,'https://via.placeholder.com/640x480.png/0066aa?text=animals+maiores',5,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(4,'Runolfsson and Sons','Omnis soluta voluptas consequatur omnis error.',0,'https://via.placeholder.com/640x480.png/00aa33?text=animals+eaque',7,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(5,'Senger-Mohr','Delectus nesciunt ad a facilis nulla aliquam.',1,'https://via.placeholder.com/640x480.png/007766?text=animals+libero',9,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(6,'Mante PLC','Nulla qui quaerat rerum omnis.',1,'https://via.placeholder.com/640x480.png/00ee88?text=animals+atque',2,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(7,'Howell-Koepp','Similique nihil aspernatur molestiae soluta incidunt.',1,'https://via.placeholder.com/640x480.png/00ff66?text=animals+harum',7,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(8,'Kautzer-Gutmann','Provident et sint iure asperiores.',0,'https://via.placeholder.com/640x480.png/0011bb?text=animals+modi',1,NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(9,'Bechtelar and Sons','Labore occaecati nihil debitis quis at sed.',1,'https://via.placeholder.com/640x480.png/002200?text=animals+inventore',9,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(10,'Bahringer Group','Quia a quia ipsa dolor est.',0,'https://via.placeholder.com/640x480.png/0000dd?text=animals+veritatis',5,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(11,'Schoen-Ortiz','Debitis animi quo vitae nobis aut.',1,'https://via.placeholder.com/640x480.png/00bb11?text=animals+magnam',2,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(12,'Ferry and Sons','Aut molestias dolorem repudiandae ipsam quae ea ad.',1,'https://via.placeholder.com/640x480.png/002244?text=animals+eveniet',4,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(13,'Wunsch Inc','Dicta eius reprehenderit ut quia pariatur non.',0,'https://via.placeholder.com/640x480.png/0000dd?text=animals+quod',4,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(14,'Mueller PLC','Consequatur assumenda rerum sit in ut.',0,'https://via.placeholder.com/640x480.png/00aa99?text=animals+qui',2,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(15,'Powlowski Inc','Sit officiis modi molestiae aliquam.',1,'https://via.placeholder.com/640x480.png/000000?text=animals+sunt',6,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(16,'Langworth Ltd','Enim a qui dolore dolores non culpa.',1,'https://via.placeholder.com/640x480.png/0088dd?text=animals+sunt',7,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(17,'Nitzsche, Rippin and Walsh','Quaerat aliquid et nihil.',1,'https://via.placeholder.com/640x480.png/009977?text=animals+dicta',4,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(18,'Mohr, Luettgen and Strosin','Consequatur aliquam id praesentium qui reprehenderit.',0,'https://via.placeholder.com/640x480.png/00ff22?text=animals+vel',9,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(19,'Block Ltd','Dolores impedit molestiae perferendis maxime est iure.',0,'https://via.placeholder.com/640x480.png/00dd99?text=animals+quo',10,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34'),(20,'Romaguera PLC','Laboriosam eos sapiente harum esse est tenetur.',0,'https://via.placeholder.com/640x480.png/0055ee?text=animals+alias',2,NULL,'2024-01-20 14:00:34','2024-01-20 14:00:34');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Olson-Connelly',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(2,'Beahan-Marvin',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(3,'Turner, Wunsch and Okuneva',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(4,'Will, Jacobs and Johnson',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(5,'Jakubowski LLC',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(6,'Weissnat-Barrows',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(7,'Nicolas, Lesch and Grady',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(8,'Miller, Bosco and Kub',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(9,'Kuhn-Terry',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(10,'Herzog, Zieme and Lowe',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(11,'Ebert-Davis',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(12,'Hintz, Lowe and Gleason',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(13,'Rempel, Dicki and Blick',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(14,'Glover-Turcotte',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(15,'Schinner Inc',NULL,'2024-01-20 14:00:32','2024-01-20 14:00:32'),(16,'Wuckert-Kuhn',NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(17,'Cummerata-Tremblay',NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(18,'Block Inc',NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(19,'Borer-Abernathy',NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33'),(20,'Watsica, Kuhn and Kuhn',NULL,'2024-01-20 14:00:33','2024-01-20 14:00:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_29_170454_create_categories_table',1),(7,'2023_12_02_193413_create_cars_table',1),(8,'2023_12_11_164215_create_posts_table',1),(9,'2024_01_13_170713_create_contact_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `auther` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Domingo Heller','stanton.annabell@example.com','+1-435-572-8916','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'HPcJegqFa9','2024-01-20 14:00:31','2024-01-20 14:53:21'),(2,'Mattie Torphy','casper.brent@example.com','+1-281-469-3506','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'HsxdSq96wd','2024-01-20 14:00:31','2024-01-20 14:53:22'),(3,'Okey Tillman','brigitte85@example.com','+1-814-228-0906','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'nUdhX9ATz7','2024-01-20 14:00:31','2024-01-20 14:53:22'),(4,'Elwyn Price','beffertz@example.net','615.505.7885','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'B6t7yhD1wj','2024-01-20 14:00:31','2024-01-20 14:53:22'),(5,'Aiden McCullough','ulises.effertz@example.com','530.720.6565','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'lBH8KNsrTY','2024-01-20 14:00:31','2024-01-20 14:53:22'),(6,'Dr. Erich Kunde MD','kuhic.vern@example.net','(559) 665-6832','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'AAuaP1ulRl','2024-01-20 14:00:32','2024-01-20 14:53:22'),(7,'Elsa Gerlach','walker.mattie@example.com','+1.516.245.3040','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'cR8fRObMfR','2024-01-20 14:00:32','2024-01-20 14:53:22'),(8,'Darlene Hagenes','gleason.lorenzo@example.com','+1 (469) 578-6478','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'yEe2G87Fc1','2024-01-20 14:00:32','2024-01-20 14:53:22'),(9,'Rhianna Vandervort','tlarson@example.com','831.385.3806','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'45TGWRWjA0','2024-01-20 14:00:32','2024-01-20 14:53:22'),(10,'Ron Crist','percival28@example.com','+1-248-537-4945','2024-01-20 14:00:30','$2y$12$5pdSVUgUa/7MyHIcIjf3Xu49s/4UGkBnquhJ0Arc3K67Z2i6m1mEC',0,'QfSTLSaN4Y','2024-01-20 14:00:32','2024-01-20 14:53:22');
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

-- Dump completed on 2024-01-22 21:29:28
