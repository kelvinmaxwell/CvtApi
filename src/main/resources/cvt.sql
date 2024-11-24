-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: cvt_garage
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'default','Garage created.','App\\Models\\Garage',NULL,1,NULL,NULL,'{\"notes\": \"Garage created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"city\": \"Nairobi City\", \"name\": \"Waelchi Inc\", \"type\": 2, \"email\": \"federico.johns@example.net\", \"images\": null, \"status\": \"Pending\", \"country\": \"Kenya\", \"reference\": \"G-SHDWV6O2FG\", \"created_at\": \"2024-10-08 15:43:44\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:44\", \"twitter_url\": \"http://www.kris.net/corrupti-doloremque-aut-est-quia-aut\", \"facebook_url\": \"http://www.graham.org/\", \"linkedIn_url\": \"http://hammes.biz/\", \"phone_number\": \"+1-669-841-8722\", \"garage_profile\": \"Similique iure qui esse fuga laborum ex dignissimos sequi.\", \"garage_location\": \"{\\\"formatted_address\\\":\\\"Ngong Hills\\\",\\\"latitude\\\":-1.4,\\\"longitude\\\":36.6380556}\", \"whatsapp_number\": \"(347) 469-9890\", \"garage_specialization_id\": \"4\", \"city_council_approval_path\": null, \"fire_extinguisher_file_path\": null, \"business_registration_file_path\": null}}',NULL,'2024-10-08 15:43:44','2024-10-08 15:43:44'),(2,'default','Garage created.','App\\Models\\Garage',NULL,2,NULL,NULL,'{\"notes\": \"Garage created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"city\": \"Nairobi City\", \"name\": \"Klocko, Durgan and Rogahn\", \"type\": 1, \"email\": \"wehner.jackie@example.org\", \"images\": null, \"status\": \"Approved\", \"country\": \"Kenya\", \"reference\": \"G-CSFK8AUYBG\", \"created_at\": \"2024-10-08 15:43:44\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:44\", \"twitter_url\": \"http://weissnat.com/amet-dolores-porro-eligendi-et-nihil-numquam\", \"facebook_url\": \"http://batz.com/qui-et-eos-voluptas-et-veritatis.html\", \"linkedIn_url\": \"http://rice.com/\", \"phone_number\": \"(870) 445-5889\", \"garage_profile\": \"Error est sequi illum quo dicta.\", \"garage_location\": \"{\\\"formatted_address\\\":\\\"Ngong Hills\\\",\\\"latitude\\\":-1.4,\\\"longitude\\\":36.6380556}\", \"whatsapp_number\": \"703-623-9286\", \"garage_specialization_id\": \"4\", \"city_council_approval_path\": null, \"fire_extinguisher_file_path\": null, \"business_registration_file_path\": null}}',NULL,'2024-10-08 15:43:44','2024-10-08 15:43:44'),(3,'default','Garage created.','App\\Models\\Garage',NULL,3,NULL,NULL,'{\"notes\": \"Garage created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"city\": \"Nairobi City\", \"name\": \"Konopelski, Runolfsdottir and Homenick\", \"type\": 1, \"email\": \"rutherford.lemuel@example.com\", \"images\": null, \"status\": \"Approved\", \"country\": \"Kenya\", \"reference\": \"G-37S5O4TZR9\", \"created_at\": \"2024-10-08 15:43:44\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:44\", \"twitter_url\": \"http://www.langworth.org/fugit-enim-inventore-ratione-accusamus\", \"facebook_url\": \"https://www.collier.com/et-ullam-soluta-aut-rem-accusamus\", \"linkedIn_url\": \"http://dietrich.com/incidunt-perspiciatis-odit-incidunt-veniam-debitis-architecto-quia\", \"phone_number\": \"+1.878.977.5218\", \"garage_profile\": \"Illo eos pariatur modi quo.\", \"garage_location\": \"{\\\"formatted_address\\\":\\\"Ngong Hills\\\",\\\"latitude\\\":-1.4,\\\"longitude\\\":36.6380556}\", \"whatsapp_number\": \"657-724-5735\", \"garage_specialization_id\": \"4\", \"city_council_approval_path\": null, \"fire_extinguisher_file_path\": null, \"business_registration_file_path\": null}}',NULL,'2024-10-08 15:43:44','2024-10-08 15:43:44'),(4,'default','Garage created.','App\\Models\\Garage',NULL,4,NULL,NULL,'{\"notes\": \"Garage created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"city\": \"Nairobi City\", \"name\": \"Johnston Group\", \"type\": 1, \"email\": \"brooke28@example.org\", \"images\": null, \"status\": \"Pending\", \"country\": \"Kenya\", \"reference\": \"G-64NFOQ2DZ8\", \"created_at\": \"2024-10-08 15:43:44\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:44\", \"twitter_url\": \"http://www.jones.info/consequatur-facere-fugit-ex-harum-saepe\", \"facebook_url\": \"http://morissette.com/dolor-ipsa-ullam-vero-eum\", \"linkedIn_url\": \"http://abernathy.biz/et-enim-assumenda-quis-dolor-voluptas\", \"phone_number\": \"(341) 286-4558\", \"garage_profile\": \"Nihil fuga et voluptatibus ipsum.\", \"garage_location\": \"{\\\"formatted_address\\\":\\\"Ngong Hills\\\",\\\"latitude\\\":-1.4,\\\"longitude\\\":36.6380556}\", \"whatsapp_number\": \"+1-724-950-9650\", \"garage_specialization_id\": \"2\", \"city_council_approval_path\": null, \"fire_extinguisher_file_path\": null, \"business_registration_file_path\": null}}',NULL,'2024-10-08 15:43:44','2024-10-08 15:43:44'),(5,'default','Garage created.','App\\Models\\Garage',NULL,5,NULL,NULL,'{\"notes\": \"Garage created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"city\": \"Nairobi City\", \"name\": \"Schowalter Inc\", \"type\": 1, \"email\": \"citlalli.funk@example.org\", \"images\": null, \"status\": \"Pending\", \"country\": \"Kenya\", \"reference\": \"G-NZKAO4PH3L\", \"created_at\": \"2024-10-08 15:43:44\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:44\", \"twitter_url\": \"http://www.rippin.com/\", \"facebook_url\": \"http://www.kuvalis.biz/culpa-porro-quia-sunt-corrupti-veniam-aliquam-occaecati.html\", \"linkedIn_url\": \"http://tremblay.com/veniam-quo-officia-sequi-animi-voluptatum-rerum-dolor.html\", \"phone_number\": \"+1-970-489-5289\", \"garage_profile\": \"Qui quo similique nisi est natus consequatur.\", \"garage_location\": \"{\\\"formatted_address\\\":\\\"Ngong Hills\\\",\\\"latitude\\\":-1.4,\\\"longitude\\\":36.6380556}\", \"whatsapp_number\": \"(205) 691-7198\", \"garage_specialization_id\": \"1\", \"city_council_approval_path\": null, \"fire_extinguisher_file_path\": null, \"business_registration_file_path\": null}}',NULL,'2024-10-08 15:43:44','2024-10-08 15:43:44'),(6,'default','Manager created','App\\Models\\User',NULL,1,'App\\Models\\User',1,'{\"notes\": \"Manager created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"email\": \"toby@cvt.com\", \"password\": \"$2y$10$liScYQHu0SbvSy6s4ZFQ3eKAxqW2zXpCo3Vo/3Nx7NVYTwaF6ofii\", \"id_number\": 123456789, \"created_at\": \"2024-10-08 15:43:45\", \"updated_at\": \"2024-10-08 15:43:45\", \"userable_id\": 1, \"phone_number\": \"+254712345678\", \"userable_type\": \"App\\\\Models\\\\Manager\", \"profile_photo_path\": \"profile-photos/nHeojucikutBpffCSU7D.jpg\"}}',NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(7,'default','Mechanic created','App\\Models\\User',NULL,2,'App\\Models\\User',2,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"email\": \"rpadberg@mccullough.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 7387961559, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 1, \"phone_number\": \"+12014892966\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"5P2m192gcq\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/hp2GGI0EtWhkLwfx5pzE.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(8,'default','Mechanic created','App\\Models\\User',NULL,3,'App\\Models\\User',3,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"email\": \"brenner@hand.org\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 8604498438, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 2, \"phone_number\": \"+17575160383\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"r6Zgw32BSF\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/KS6FvqXr7975nYAwaxk0.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(9,'default','Mechanic created','App\\Models\\User',NULL,4,'App\\Models\\User',4,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"email\": \"maxwell.schroeder@kovacek.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 5200918398, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 3, \"phone_number\": \"+13099925188\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"bovVGFZKxw\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/wtNOfjNPCCoziBntOopX.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(10,'default','Mechanic created','App\\Models\\User',NULL,5,'App\\Models\\User',5,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"email\": \"bstracke@maggio.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 8222963867, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 4, \"phone_number\": \"+14759032695\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"cwBQaaUs7p\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/IewhHcZE9KgOb41oFOQV.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(11,'default','Mechanic created','App\\Models\\User',NULL,6,'App\\Models\\User',6,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"email\": \"quitzon.casper@huel.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 9810829578, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 5, \"phone_number\": \"+16615858608\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"AyUq6IrPOf\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/kzSstdznCrTFBWH291IB.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(12,'default','Mechanic created','App\\Models\\User',NULL,7,'App\\Models\\User',7,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"email\": \"mkozey@nitzsche.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 2019694464, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 6, \"phone_number\": \"+13305765979\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"amBqXMDLiV\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/XPpeFdSCisVG6jW57VTM.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(13,'default','Mechanic created','App\\Models\\User',NULL,8,'App\\Models\\User',8,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 8, \"email\": \"alexandra.leannon@hand.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 627406978, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 7, \"phone_number\": \"+18508498465\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"4oLv9DnUjB\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/urXVlcsGtJ7ZAM09NjJ5.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(14,'default','Mechanic created','App\\Models\\User',NULL,9,'App\\Models\\User',9,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 9, \"email\": \"hauck.craig@kiehn.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 3897460709, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 8, \"phone_number\": \"+12605881770\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"XjmLcwxS6s\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/eQMcbO51JH06jqarMPaI.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(15,'default','Mechanic created','App\\Models\\User',NULL,10,'App\\Models\\User',10,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 10, \"email\": \"terrell.stamm@halvorson.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 7001020398, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 9, \"phone_number\": \"+19256772512\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"NQmXHoacCm\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/Fd8zy5VLMzUUqo3y9vEr.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(16,'default','Mechanic created','App\\Models\\User',NULL,11,'App\\Models\\User',11,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 11, \"email\": \"harley01@sporer.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 5375270735, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 10, \"phone_number\": \"+16504835372\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"GbdvfLHyVj\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/UrFJeeuq590y95KMR25P.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(17,'default','Mechanic created','App\\Models\\User',NULL,12,'App\\Models\\User',12,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 12, \"email\": \"lesch.jamar@hickle.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 568861207, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 11, \"phone_number\": \"+18387485201\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"Jw84SLwPoZ\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/zTrN3qRJU20UGiG4fRYl.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(18,'default','Mechanic created','App\\Models\\User',NULL,13,'App\\Models\\User',13,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 13, \"email\": \"horace.bartoletti@runolfsdottir.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 235479491, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 12, \"phone_number\": \"+18504844885\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"5WatACLpcR\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/pqUI8Xf7W52adQq32jsk.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(19,'default','Mechanic created','App\\Models\\User',NULL,14,'App\\Models\\User',14,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 14, \"email\": \"dietrich.kaylah@kshlerin.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 8157233592, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 13, \"phone_number\": \"+13202570231\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"i08Ip9Vjqg\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/VZWosJ7mDEdT84Eltyzj.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(20,'default','Mechanic created','App\\Models\\User',NULL,15,'App\\Models\\User',15,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 15, \"email\": \"alisha.kshlerin@streich.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 5510731191, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 14, \"phone_number\": \"+18456036627\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"Q8PhK7pwtB\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/wKQvdksYOTS7NLAOS6u7.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(21,'default','Mechanic created','App\\Models\\User',NULL,16,'App\\Models\\User',16,'{\"notes\": \"Mechanic created during initial seeding of project data.\", \"attributes\": {\"id\": 16, \"email\": \"hubert.gulgowski@hudson.org\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 8356854324, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 15, \"phone_number\": \"+17243109526\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Mechanic\", \"remember_token\": \"YhwfxEZw5r\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:45\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/Xn8riJFTzVobcVzIfVv1.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(22,'default','created','App\\Models\\Customer','created',1,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(23,'default','created','App\\Models\\Customer','created',2,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(24,'default','created','App\\Models\\Customer','created',3,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(25,'default','created','App\\Models\\Customer','created',4,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(26,'default','created','App\\Models\\Customer','created',5,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(27,'default','created','App\\Models\\Customer','created',6,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(28,'default','created','App\\Models\\Customer','created',7,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(29,'default','created','App\\Models\\Customer','created',8,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(30,'default','created','App\\Models\\Customer','created',9,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(31,'default','created','App\\Models\\Customer','created',10,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(32,'default','created','App\\Models\\Customer','created',11,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(33,'default','created','App\\Models\\Customer','created',12,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(34,'default','created','App\\Models\\Customer','created',13,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(35,'default','created','App\\Models\\Customer','created',14,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(36,'default','created','App\\Models\\Customer','created',15,NULL,NULL,'[]',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(37,'default','Customer created','App\\Models\\User',NULL,17,'App\\Models\\User',17,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 17, \"email\": \"grayce.klocko@jacobs.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 2347228934, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 1, \"phone_number\": \"+19308498120\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"vXy6SxubAb\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/MMj6cc67jyAdFDvtVNI5.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(38,'default','Customer created','App\\Models\\User',NULL,18,'App\\Models\\User',18,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 18, \"email\": \"trantow.jana@howell.org\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 7808007552, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 2, \"phone_number\": \"+14587648586\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"CtDHFZeuv9\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/peKMqh8F7Eq37aWiNvwF.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(39,'default','Customer created','App\\Models\\User',NULL,19,'App\\Models\\User',19,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 19, \"email\": \"amorissette@welch.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 5069417769, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 3, \"phone_number\": \"+17087633706\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"5bPHAVB8zq\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/yeacOWG9HqtrABFdlgEj.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(40,'default','Customer created','App\\Models\\User',NULL,20,'App\\Models\\User',20,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 20, \"email\": \"kuphal.corrine@marquardt.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 7548816151, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 4, \"phone_number\": \"+16076825021\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"6YmjRMCLpd\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/QpPyYbcXFXK54MK9M0C1.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(41,'default','Customer created','App\\Models\\User',NULL,21,'App\\Models\\User',21,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 21, \"email\": \"madyson46@nolan.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 1832079784, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 5, \"phone_number\": \"+19849597867\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"uYmEMyPIUw\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/js5sjEcJksrCUJBZUAeG.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(42,'default','Customer created','App\\Models\\User',NULL,22,'App\\Models\\User',22,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 22, \"email\": \"satterfield.tito@parker.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 2081233485, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 6, \"phone_number\": \"+12709671790\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"OHOL1XwGa3\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/1YiUoYt4y0OYrKP33T5b.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(43,'default','Customer created','App\\Models\\User',NULL,23,'App\\Models\\User',23,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 23, \"email\": \"kbradtke@hermann.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 9326852511, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 7, \"phone_number\": \"+16305941452\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"7BB9tw57Jt\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/FAwKunIWGvDgoBZ8R3yN.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(44,'default','Customer created','App\\Models\\User',NULL,24,'App\\Models\\User',24,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 24, \"email\": \"jconsidine@mcdermott.biz\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 4493515336, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 8, \"phone_number\": \"+15169428198\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"AnNWUerUNf\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/HXc4pBsGaBLbG3LP0hiH.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(45,'default','Customer created','App\\Models\\User',NULL,25,'App\\Models\\User',25,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 25, \"email\": \"gaylord.rutherford@wilkinson.org\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 9877107257, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 9, \"phone_number\": \"+15853248368\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"qW3Hnmsh7G\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/In85gNJEQO21awNxdruy.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(46,'default','Customer created','App\\Models\\User',NULL,26,'App\\Models\\User',26,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 26, \"email\": \"rae.becker@pollich.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 2227726588, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 10, \"phone_number\": \"+12815161107\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"I9nPGvWBhJ\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/uxdX1SzWhqNEOE6OV7Qs.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(47,'default','Customer created','App\\Models\\User',NULL,27,'App\\Models\\User',27,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 27, \"email\": \"qbarton@kulas.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 6331217467, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 11, \"phone_number\": \"+12608049517\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"tWA6n5gMkA\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/Wp89YwSLDGsVFqsdAeYU.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(48,'default','Customer created','App\\Models\\User',NULL,28,'App\\Models\\User',28,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 28, \"email\": \"bfarrell@weissnat.org\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 4155730148, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 12, \"phone_number\": \"+15756785171\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"47zrRy3Df0\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/jH36Zyiqqr2l1PM7zWrT.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(49,'default','Customer created','App\\Models\\User',NULL,29,'App\\Models\\User',29,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 29, \"email\": \"vita42@lemke.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 8297031503, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 13, \"phone_number\": \"+17198363448\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"T8V0jBZxyl\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/ngLg6qbWGVOsTOiZjAwj.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(50,'default','Customer created','App\\Models\\User',NULL,30,'App\\Models\\User',30,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 30, \"email\": \"jewell.greenholt@bartell.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 3526262133, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 14, \"phone_number\": \"+13219993958\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"jyMVBe2Kns\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/kbEVQ5cY3RH01gestOnA.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(51,'default','Customer created','App\\Models\\User',NULL,31,'App\\Models\\User',31,'{\"notes\": \"Customer created during initial seeding of project data.\", \"attributes\": {\"id\": 31, \"email\": \"mohr.ella@jerde.net\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 64535433, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"userable_id\": 15, \"phone_number\": \"+19046783370\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"K83E6BTIzS\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/3a8YbKF3d81bnLl3HhJY.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(52,'default','Vehicle created','App\\Models\\Vehicle',NULL,1,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"reference\": \"V-9XF5D3IOBT\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 7, \"vehicle_model_id\": 6}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(53,'default','Vehicle created','App\\Models\\Vehicle',NULL,2,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"reference\": \"V-TH3V8ZQ4MU\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 1, \"vehicle_model_id\": 3}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(54,'default','Vehicle created','App\\Models\\Vehicle',NULL,3,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"reference\": \"V-5LQVHM3XIT\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 8, \"vehicle_model_id\": 1}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(55,'default','Vehicle created','App\\Models\\Vehicle',NULL,4,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"reference\": \"V-NA8S5XM6G4\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 9, \"vehicle_model_id\": 6}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(56,'default','Vehicle created','App\\Models\\Vehicle',NULL,5,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"reference\": \"V-RLSIZ473OA\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 5, \"vehicle_model_id\": 7}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(57,'default','Vehicle created','App\\Models\\Vehicle',NULL,6,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"reference\": \"V-NBFK8MDSQW\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 8, \"vehicle_model_id\": 6}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(58,'default','Vehicle created','App\\Models\\Vehicle',NULL,7,NULL,NULL,'{\"notes\": \"Vehicle created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"reference\": \"V-D65NEY9H3L\", \"created_at\": \"2024-10-08 15:43:47\", \"updated_at\": \"2024-10-08 15:43:47\", \"customer_id\": 15, \"vehicle_model_id\": 2}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(59,'default','Job card created','App\\Models\\JobCard',NULL,1,'App\\Models\\JobCard',1,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 4, \"reference\": \"JC-UNPG2687DX\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 5, \"customer_id\": 6, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Voluptatem sit qui id cupiditate ut fugiat. Quaerat est consectetur dolores aut nam labore alias et. Aliquid suscipit ipsum doloribus et. Qui aut numquam ut.\", \"issue_description\": \"Nam sequi quo consequuntur rerum harum. Aliquam cupiditate dolores voluptate possimus nulla.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Quis accusantium et similique qui veniam. Animi vel molestiae voluptatum at unde. Ut aspernatur illum culpa.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Illo asperiores voluptatum soluta quod. Id velit qui quidem iste. Voluptate quisquam odio porro nulla error. Consequatur maiores in repellat quaerat illum assumenda.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(60,'default','Job card created','App\\Models\\JobCard',NULL,2,'App\\Models\\JobCard',2,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 3, \"reference\": \"JC-4SALBTO6FV\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 4, \"customer_id\": 3, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Mollitia saepe et velit aut recusandae. Voluptatem adipisci rerum aut corporis voluptatum. Maxime vero recusandae maxime perspiciatis quia.\", \"issue_description\": \"Sint et unde sit cum error similique molestiae. Dolores iure delectus nam magni enim nostrum sit. Accusantium quasi voluptatem et.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Et at dolorem unde ullam. Aut quia deleniti qui quod laudantium. Velit consequatur aut est atque nihil molestiae qui deserunt. Ipsum illo aspernatur et unde non est sapiente.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Sit iure ea voluptatem nihil. Quis nobis blanditiis deleniti deleniti officia officia. Accusamus maiores hic est et saepe praesentium tempore.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(61,'default','Job card created','App\\Models\\JobCard',NULL,3,'App\\Models\\JobCard',3,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 3, \"reference\": \"JC-IVA37DPUEY\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 5, \"customer_id\": 8, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Voluptas accusantium assumenda et unde sunt accusamus. Qui fuga totam pariatur tenetur beatae. Commodi sed voluptatem enim accusamus ipsum illum ex. Beatae molestiae occaecati voluptatem sequi. Quo recusandae quia et saepe animi veritatis.\", \"issue_description\": \"Modi vel possimus eos sunt. Nam assumenda est alias tenetur. Beatae recusandae amet maxime qui voluptatem harum molestias ut.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Iste suscipit voluptatem ipsa rerum voluptatem magnam fugiat. Perferendis beatae sint omnis illo. Maxime sunt recusandae sapiente. Sint illum commodi et numquam quia dolor. Non molestias sapiente est perspiciatis iusto.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Voluptates voluptates numquam ut recusandae id dolores. Deserunt eius natus nam et dolorem. Perspiciatis reprehenderit fuga placeat molestias est. Velit consequatur aut repellat sed.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(62,'default','Job card created','App\\Models\\JobCard',NULL,4,'App\\Models\\JobCard',4,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"source\": \"web\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 2, \"reference\": \"JC-46G3PSMFUX\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 1, \"customer_id\": 14, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Quis modi atque adipisci officia et similique vel. Qui provident sequi perferendis.\", \"issue_description\": \"Aliquam quia voluptatem consectetur. Possimus consequatur et earum est hic nisi. Et totam repellat qui.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Excepturi voluptatem illo quibusdam nulla dolore. Id suscipit qui ipsum tempore in. Nemo delectus deserunt velit perferendis dolorum libero.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Quam rerum sed aperiam quia vel. Odio quis dolore sapiente quo voluptas nobis ipsa. Tenetur qui rerum itaque minus.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(63,'default','Job card created','App\\Models\\JobCard',NULL,5,'App\\Models\\JobCard',5,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 3, \"reference\": \"JC-MGZY3H4D87\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 1, \"customer_id\": 5, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Nulla est nam dolorum voluptas. Est voluptate et ut consequatur sed aliquid. Nisi exercitationem quaerat sit aut id veniam sit. Voluptates expedita nostrum et et autem. Cum iure sit quae qui minima beatae.\", \"issue_description\": \"Soluta non eveniet et voluptas itaque dolores quisquam. Adipisci ipsum sunt autem est. Odio corrupti et et dolores laboriosam ad quo. At deserunt neque ea.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Et dolorem error voluptatibus et est. Eveniet recusandae repellat quia sed nesciunt asperiores incidunt. Placeat possimus impedit iusto at. Quidem qui dicta soluta odio ut eligendi quod dolor.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Et quisquam eveniet quia non. Suscipit quia ut eos et perspiciatis voluptatem voluptas. Velit facilis sunt ab non dolores.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(64,'default','Job card created','App\\Models\\JobCard',NULL,6,'App\\Models\\JobCard',6,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 4, \"reference\": \"JC-ADIXPKMRQG\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 3, \"customer_id\": 4, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Aliquam assumenda dolor odio quis illum omnis voluptatum. Delectus suscipit iusto sequi similique iste officiis. Deleniti nesciunt placeat atque omnis nisi. Similique sunt dolorem ut corporis ad.\", \"issue_description\": \"In neque error iusto velit non consectetur a. Expedita qui voluptatem necessitatibus repudiandae quo. Ut et consequuntur veritatis rerum.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Et doloribus omnis cupiditate voluptas quia consequatur ut. Quidem et eos enim alias officia soluta id. Eveniet quo sequi maiores vel.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Inventore autem omnis necessitatibus quia. Quibusdam soluta sed consequatur consequatur assumenda minus.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(65,'default','Job card created','App\\Models\\JobCard',NULL,7,'App\\Models\\JobCard',7,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"source\": \"web\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 5, \"reference\": \"JC-IEDQFL9MWK\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 6, \"customer_id\": 11, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Voluptatibus deleniti itaque et aliquam ab. Adipisci temporibus qui laudantium enim. Illo molestiae ipsa ducimus ex.\", \"issue_description\": \"Nihil molestias tenetur ut quia ullam quam natus inventore. Repellendus et labore dolores alias facere enim aut magni. Est nulla distinctio autem accusantium.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Qui consequuntur incidunt earum voluptates aperiam recusandae. Totam soluta nostrum placeat inventore ad dolor quos. Vel maiores eius omnis ea ducimus. Id optio est error quis quas porro blanditiis.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Dicta ducimus minima laboriosam. Voluptas minima aut doloremque pariatur temporibus minus. Sit id ea unde corporis ea. Omnis voluptatem consectetur omnis ullam a voluptatem.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(66,'default','Job card created','App\\Models\\JobCard',NULL,8,'App\\Models\\JobCard',8,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 8, \"source\": \"web\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 4, \"reference\": \"JC-I6YU3XMZCK\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 3, \"customer_id\": 4, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Atque nihil eum eveniet voluptatibus ullam ad. Quia nobis deleniti accusantium vel tenetur maiores sed. Autem provident eveniet iure doloremque ut voluptas.\", \"issue_description\": \"Corporis ratione dolore impedit sapiente consequuntur illum corrupti. Similique rerum mollitia dolorum. Quo officia pariatur ipsam. Qui nam quia aut animi.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Iure dolorum quam eum minima ipsam consequuntur. A et iure totam ea veritatis quaerat possimus est. Et doloremque provident mollitia optio sapiente laudantium eum.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Autem sit asperiores est quisquam. Ad nobis eum temporibus enim ut omnis eum. Aspernatur vel nostrum quo nostrum rerum sit ullam.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(67,'default','Job card created','App\\Models\\JobCard',NULL,9,'App\\Models\\JobCard',9,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 9, \"source\": \"web\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 4, \"reference\": \"JC-7SPGRDHFZL\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 3, \"customer_id\": 14, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Ratione reiciendis dignissimos tempora qui ut. Ducimus repellat voluptatem eos est voluptatem molestias. Voluptate laudantium eum voluptatem aliquam sunt voluptatem. Qui enim iusto et aperiam unde quo repellendus amet. Nesciunt magnam ipsa totam natus aut facere.\", \"issue_description\": \"Pariatur dolor et dicta id omnis consectetur. Doloremque eos sint est.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Dignissimos et nihil omnis optio dolor corporis soluta corrupti. Aut reiciendis ab at nesciunt commodi odio. Occaecati iste voluptatum nihil voluptas maiores temporibus fugiat voluptate. Aspernatur delectus culpa non odio omnis quod.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Explicabo autem et ut perferendis ea eligendi similique. Expedita et molestiae mollitia autem corrupti.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(68,'default','Job card created','App\\Models\\JobCard',NULL,10,'App\\Models\\JobCard',10,'{\"notes\": \"Job card created during initial seeding of project data.\", \"attributes\": {\"id\": 10, \"source\": \"mobile\", \"status\": \"Draft\", \"mileage\": null, \"garage_id\": 4, \"reference\": \"JC-K3CH9UMOAW\", \"created_at\": \"2024-10-08 15:43:47\", \"created_by\": 1, \"manager_id\": 1, \"started_at\": null, \"started_by\": null, \"updated_at\": \"2024-10-08 15:43:47\", \"updated_by\": null, \"vehicle_id\": 2, \"customer_id\": 11, \"completed_at\": null, \"completed_by\": null, \"due_services\": null, \"service_type\": null, \"mileage_units\": null, \"customer_rating\": null, \"customer_remarks\": null, \"ai_recommendation\": \"Numquam voluptas ut repellendus voluptatem. Dignissimos aut repellat quod commodi id. Illo quidem nisi enim sint.\", \"issue_description\": \"Consequuntur vel ea ut quisquam odio. Omnis sunt cumque repellendus doloremque ut reprehenderit. Ut voluptas eum voluptatem sunt aliquid. Quia repellat voluptatem officia.\", \"supervisor_rating\": null, \"computer_diagnosis\": \"Ipsum voluptatem velit quas eos dolorum magni. Voluptates numquam ipsa blanditiis enim repellendus error. Ipsum consequuntur est blanditiis ut consectetur ea. Libero sapiente illum assumenda et. Veniam aut cum non blanditiis a eveniet et.\", \"supervisor_remarks\": null, \"physically_confirmed_parameters\": \"Voluptates natus accusamus quia suscipit consequatur odio. Consequatur laudantium libero et sed sequi neque. Labore eos vel aperiam commodi minima voluptatem sint.\"}}',NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(69,'default','Product stocked.','App\\Models\\Product',NULL,1,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"images\": null, \"oem_no\": \"850-782-286\", \"weight\": 2858, \"part_no\": \"018-770-850\", \"quantity\": 9, \"condition\": \"new\", \"part_name\": \"Fuel gauge\", \"reference\": \"P-5WV7IDXHOR\", \"chassis_no\": \"900-570-472\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"20x20x20\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 4, \"description\": \"Aspernatur placeat magni nisi unde. Aut quia cum velit hic. Et et repellendus cum molestias praesentium laudantium.\", \"delivery_mode\": \"Courier\", \"selling_price\": 85.35, \"purchase_price\": 36.79, \"quality_rating\": 3.5, \"vehicle_system\": \"Body\", \"sub_category_id\": 1, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 571.43, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Body\", \"warranty_file_path\": null, \"reorder_stock_level\": 5, \"product_manufacturer_id\": 1, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(70,'default','Product stocked.','App\\Models\\Product',NULL,2,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"images\": null, \"oem_no\": \"863-738-866\", \"weight\": 1004576, \"part_no\": \"176-704-052\", \"quantity\": 8, \"condition\": \"used\", \"part_name\": \"Radiator\", \"reference\": \"P-TM8C4HFNOL\", \"chassis_no\": \"577-140-217\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"10x10x10\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 14, \"description\": \"Eligendi nihil voluptatem ducimus. Officia error repellat est in modi aut iste velit. Adipisci dolores minus cum exercitationem rerum commodi unde.\", \"delivery_mode\": \"Pickup\", \"selling_price\": 472.29, \"purchase_price\": 19.82, \"quality_rating\": 3.1, \"vehicle_system\": \"Electrical\", \"sub_category_id\": 1, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 545.58, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Body\", \"warranty_file_path\": null, \"reorder_stock_level\": 7, \"product_manufacturer_id\": 3, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(71,'default','Product stocked.','App\\Models\\Product',NULL,3,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"images\": null, \"oem_no\": \"042-907-119\", \"weight\": 13, \"part_no\": \"939-725-330\", \"quantity\": 8, \"condition\": \"used\", \"part_name\": \"Gear Box\", \"reference\": \"P-8CQKB49VWX\", \"chassis_no\": \"275-085-886\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"40x40x40\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 11, \"description\": \"Soluta possimus et voluptate itaque est. Ex sunt non mollitia maxime eos accusamus pariatur. Nihil quia nihil enim fugiat est dolorem quia. Eos est officiis mollitia inventore veniam dicta et.\", \"delivery_mode\": \"Courier\", \"selling_price\": 722.55, \"purchase_price\": 38.44, \"quality_rating\": 2, \"vehicle_system\": \"Interior\", \"sub_category_id\": 1, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 839.91, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Electrical\", \"warranty_file_path\": null, \"reorder_stock_level\": 9, \"product_manufacturer_id\": 5, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(72,'default','Product stocked.','App\\Models\\Product',NULL,4,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"images\": null, \"oem_no\": \"068-394-125\", \"weight\": 5817, \"part_no\": \"901-691-097\", \"quantity\": 7, \"condition\": \"used\", \"part_name\": \"Headlights\", \"reference\": \"P-KB9SYVMFGO\", \"chassis_no\": \"845-593-554\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"10x10x10\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 7, \"description\": \"Optio non necessitatibus deleniti voluptatum magni exercitationem suscipit. Odit ut sed officiis architecto repellendus quasi. Enim voluptatem necessitatibus sint ullam. Aut velit doloremque quam voluptas iure.\", \"delivery_mode\": \"Courier\", \"selling_price\": 407.42, \"purchase_price\": 59.91, \"quality_rating\": 4, \"vehicle_system\": \"Engine\", \"sub_category_id\": 32, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 421.71, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Engine\", \"warranty_file_path\": null, \"reorder_stock_level\": 6, \"product_manufacturer_id\": 5, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(73,'default','Product stocked.','App\\Models\\Product',NULL,5,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"images\": null, \"oem_no\": \"960-200-011\", \"weight\": 181189498, \"part_no\": \"408-861-405\", \"quantity\": 4, \"condition\": \"refurbished\", \"part_name\": \"Clutch\", \"reference\": \"P-VITN92WLM4\", \"chassis_no\": \"152-366-146\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"30x30x30\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 13, \"description\": \"Suscipit sunt consequatur atque voluptates qui maxime eos. Ullam ea corrupti ullam ut perspiciatis. Aut totam est et quia asperiores consequatur.\", \"delivery_mode\": \"Pickup\", \"selling_price\": 29.9, \"purchase_price\": 80.02, \"quality_rating\": 1.1, \"vehicle_system\": \"Engine\", \"sub_category_id\": 6, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 830.28, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Body\", \"warranty_file_path\": null, \"reorder_stock_level\": 0, \"product_manufacturer_id\": 5, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(74,'default','Product stocked.','App\\Models\\Product',NULL,6,NULL,NULL,'{\"notes\": \"Product added to store during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"images\": null, \"oem_no\": \"375-479-218\", \"weight\": 76, \"part_no\": \"406-549-296\", \"quantity\": 3, \"condition\": \"used\", \"part_name\": \"Steering wheel\", \"reference\": \"P-8C75VH3L2D\", \"chassis_no\": \"430-313-804\", \"created_at\": \"2024-10-08 15:43:48\", \"created_by\": 1, \"dimensions\": \"10x10x10\", \"updated_at\": \"2024-10-08 15:43:48\", \"updated_by\": null, \"category_id\": 2, \"description\": \"Qui perspiciatis ex doloribus ut quia. Nesciunt aliquid ex accusantium sed deserunt.\", \"delivery_mode\": \"Pickup\", \"selling_price\": 365.58, \"purchase_price\": 40.68, \"quality_rating\": 3.7, \"vehicle_system\": \"Electrical\", \"sub_category_id\": 1, \"product_vehicles\": \"[{\\\"trim\\\": \\\"\\\", \\\"model_name\\\": \\\"\\\", \\\"vehicle_make\\\": \\\"\\\", \\\"year_of_manufacture\\\": \\\"\\\"}]\", \"min_selling_price\": 637.05, \"qr_code_file_path\": null, \"vehicle_sub_system\": \"Body\", \"warranty_file_path\": null, \"reorder_stock_level\": 5, \"product_manufacturer_id\": 1, \"return_policy_file_path\": null}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(75,'default','Quotation created.','App\\Models\\Quotation',NULL,1,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"title\": \"Quia neque et est.\", \"status\": \"Pending\", \"garage_id\": 1, \"reference\": \"Q-M5YP4A3SVQ68\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Doloremque quisquam voluptas quod dicta ea minus esse.\"}}',NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(76,'default','Quotation created.','App\\Models\\Quotation',NULL,2,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"title\": \"Aut est veniam explicabo.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-HGYSUC45LN96\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Veniam ut quo et.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(77,'default','Quotation created.','App\\Models\\Quotation',NULL,3,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"title\": \"Sit maxime fugiat omnis.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-EDVNWO3MXFSU\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Repellat corrupti non non nihil et qui expedita.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(78,'default','Quotation created.','App\\Models\\Quotation',NULL,4,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"title\": \"Recusandae sequi aut debitis.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-DILTQ8UAGMVP\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Necessitatibus non harum a beatae voluptatem omnis consequatur.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(79,'default','Quotation created.','App\\Models\\Quotation',NULL,5,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"title\": \"Voluptatem error at qui ab.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-DLKCOGF5TMVH\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Rerum dolorum voluptatibus et architecto.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(80,'default','Quotation created.','App\\Models\\Quotation',NULL,6,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"title\": \"Assumenda earum ea facere.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-R4YELGSXPIQW\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Nemo sed modi nesciunt vitae.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(81,'default','Quotation created.','App\\Models\\Quotation',NULL,7,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"title\": \"Enim ut ut at cum eaque eius.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-H9WXZASBUGQ4\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Doloribus voluptatem rerum consequuntur molestiae ab.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(82,'default','Quotation created.','App\\Models\\Quotation',NULL,8,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 8, \"title\": \"Quis provident porro atque.\", \"status\": \"Pending\", \"garage_id\": 5, \"reference\": \"Q-PNIO8BE5SZKG\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Suscipit ut nihil et ducimus qui.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(83,'default','Quotation created.','App\\Models\\Quotation',NULL,9,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 9, \"title\": \"A unde sunt maxime.\", \"status\": \"Pending\", \"garage_id\": 4, \"reference\": \"Q-4QM6EHCL92OK\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Et tempora doloremque nesciunt dolorem sed laudantium.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(84,'default','Quotation created.','App\\Models\\Quotation',NULL,10,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 10, \"title\": \"Saepe in rerum unde rem odio.\", \"status\": \"Pending\", \"garage_id\": 1, \"reference\": \"Q-KFL6E792NHW8\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Omnis sit deserunt nobis suscipit aliquid.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(85,'default','Quotation created.','App\\Models\\Quotation',NULL,11,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 11, \"title\": \"Eum quis quia aut.\", \"status\": \"Pending\", \"garage_id\": 5, \"reference\": \"Q-QMYS3UR7AHZV\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Unde beatae quia eaque.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(86,'default','Quotation created.','App\\Models\\Quotation',NULL,12,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 12, \"title\": \"Sit a necessitatibus est.\", \"status\": \"Pending\", \"garage_id\": 5, \"reference\": \"Q-RFOV3B4MEDZW\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Harum sit voluptatem quos.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(87,'default','Quotation created.','App\\Models\\Quotation',NULL,13,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 13, \"title\": \"Itaque enim ut corporis.\", \"status\": \"Pending\", \"garage_id\": 3, \"reference\": \"Q-PWTL9F2I6OSY\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Libero et sunt non voluptas.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(88,'default','Quotation created.','App\\Models\\Quotation',NULL,14,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 14, \"title\": \"Eos omnis minima nemo.\", \"status\": \"Pending\", \"garage_id\": 1, \"reference\": \"Q-QO8CEMKH2RBG\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Et tempora earum rerum error alias fuga rem.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(89,'default','Quotation created.','App\\Models\\Quotation',NULL,15,NULL,NULL,'{\"notes\": \"Quotation created during initial seeding of project data.\", \"attributes\": {\"id\": 15, \"title\": \"Sed qui deserunt animi.\", \"status\": \"Pending\", \"garage_id\": 5, \"reference\": \"Q-BZL5H263QNTA\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Voluptas dolorum qui consequatur.\"}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(90,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,1,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"title\": \"Architecto et ea et.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 3, \"reference\": \"PPF-O2DQEYRZ6TB4\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 3, \"pre_inspection_service_price\": 3229}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(91,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,2,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"title\": \"Qui sed a numquam ratione.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 4, \"reference\": \"PPF-M7NECI36XOPF\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 6, \"pre_inspection_service_price\": 7972}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(92,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,3,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"title\": \"Aut cumque ipsum est.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 3, \"reference\": \"PPF-S6L4CYNQR72O\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 3, \"pre_inspection_service_price\": 6044}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(93,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,4,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"title\": \"Ea nulla modi iure pariatur.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 4, \"reference\": \"PPF-VK29U83EZQFX\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 4, \"pre_inspection_service_price\": 3217}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(94,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,5,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"title\": \"Illo natus quibusdam facilis.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 3, \"reference\": \"PPF-SZMDTPB6HO9N\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 1, \"pre_inspection_service_price\": 2117}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(95,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,6,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"title\": \"Veniam rem fuga illum.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 4, \"reference\": \"PPF-ZY95LPQU3478\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 6, \"pre_inspection_service_price\": 2497}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(96,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,7,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"title\": \"Possimus magni esse quis ut.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 2, \"reference\": \"PPF-2T6FG587PM4E\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 2, \"pre_inspection_service_price\": 6864}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(97,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,8,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 8, \"title\": \"Enim vel aut aut.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 5, \"reference\": \"PPF-HY2QFVBWL8Z4\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 3, \"pre_inspection_service_price\": 6505}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(98,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,9,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 9, \"title\": \"Ut enim mollitia qui qui.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 3, \"reference\": \"PPF-NGIAVM2QTH3E\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 5, \"pre_inspection_service_price\": 2849}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(99,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,10,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 10, \"title\": \"Beatae fugit qui voluptas.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 5, \"reference\": \"PPF-KHPBUOIL57VC\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 4, \"pre_inspection_service_price\": 4395}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(100,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,11,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 11, \"title\": \"Est eligendi et quia nemo.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 5, \"reference\": \"PPF-FDWYS6ZCN483\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 4, \"pre_inspection_service_price\": 6332}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(101,'default','Pre-purchase inspection form created.','App\\Models\\PrePurchaseInspectionForm',NULL,12,NULL,NULL,'{\"notes\": \"Pre-purchase inspection form created during initial seeding of project data.\", \"attributes\": {\"id\": 12, \"title\": \"In qui error eos quis.\", \"status\": \"Draft\", \"package\": \"basic\", \"garage_id\": 2, \"reference\": \"PPF-O5ILN6KAXWRB\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"vehicle_model_id\": 3, \"pre_inspection_service_price\": 6665}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(102,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,1,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-TXMN3VOEC6\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 11, \"seller_name\": \"Bruen, Kshlerin and Mertz\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 1, \"seller_phone_number\": \"+19867696754\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(103,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,2,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-BCXGSMTZ4A\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 2, \"seller_name\": \"Weissnat, Langworth and O\'Reilly\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 2, \"seller_phone_number\": \"+15203286435\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(104,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,3,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-39PK7LHXZN\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 2, \"seller_name\": \"Boyer Group\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 6, \"seller_phone_number\": \"+15649900724\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(105,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,4,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-QAUXG5IW79\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 10, \"seller_name\": \"Mertz, Bruen and Walsh\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 5, \"seller_phone_number\": \"+12794904934\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(106,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,5,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-RC6NEOFXDM\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 12, \"seller_name\": \"Witting-Schmidt\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 4, \"seller_phone_number\": \"+15614537870\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(107,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,6,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-SOLDCHFBI4\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 11, \"seller_name\": \"Gleichner-Breitenberg\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 2, \"seller_phone_number\": \"+13644385173\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(108,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,7,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 7, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-ITXOWHCA7M\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 13, \"seller_name\": \"Stroman-Welch\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 4, \"seller_phone_number\": \"+15867988160\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(109,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,8,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 8, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-VFZMSI5BAG\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 7, \"seller_name\": \"Stokes-Donnelly\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 5, \"seller_phone_number\": \"+16825602541\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(110,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,9,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 9, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-P3SLBYCH2X\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 15, \"seller_name\": \"Kling and Sons\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 2, \"seller_phone_number\": \"+15733173926\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(111,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,10,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 10, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-7DWLEP39IS\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 6, \"seller_name\": \"Hill Ltd\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 2, \"seller_phone_number\": \"+14452623352\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(112,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,11,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 11, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-SVTH9A4MXC\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 12, \"seller_name\": \"Pfannerstill, Roob and Roberts\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 1, \"seller_phone_number\": \"+14696375297\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(113,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,12,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 12, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-5B92NHPYGD\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 15, \"seller_name\": \"Pfeffer, Hudson and Murazik\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 6, \"seller_phone_number\": \"+13255830389\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(114,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,13,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 13, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-57ZE8OF26L\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 4, \"seller_name\": \"Streich, Schowalter and Weber\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 3, \"seller_phone_number\": \"+14456534225\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(115,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,14,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 14, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-93TLRFHBQ4\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 13, \"seller_name\": \"Hill-Rippin\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 4, \"seller_phone_number\": \"+13122835238\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(116,'default','Booking created.','App\\Models\\PrePurchaseInspectionBooking',NULL,15,NULL,NULL,'{\"notes\": \"Booking created during initial seeding of project data.\", \"attributes\": {\"id\": 15, \"status\": \"Draft\", \"remarks\": null, \"reference\": \"PPB-7SDTPKVUQ4\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"customer_id\": 3, \"seller_name\": \"Rice, Halvorson and Rath\", \"completed_by\": null, \"seller_location\": \"{\\\"latitude\\\": -1.4, \\\"longitude\\\": 36.6380556, \\\"formatted_address\\\": \\\"Ngong Hills\\\"}\", \"vehicle_model_id\": 7, \"seller_phone_number\": \"+12539207251\", \"document_uploaded_by\": null, \"uploaded_scanned_document_path\": null, \"pre_purchase_inspection_form_id\": null}}',NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(117,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,1,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 1, \"name\": \"Scanner\", \"type\": \"machine\", \"images\": null, \"quantity\": 6, \"condition\": \"refurbished\", \"reference\": \"TAM-WLIA9435U7\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"description\": \"Voluptas architecto mollitia voluptatem natus asperiores in cumque. Molestiae expedita veritatis quibusdam amet sunt. Est alias id quisquam est et cumque.\", \"distributed\": 0, \"buying_price\": 161.34, \"assigned_code\": \"4749\", \"serial_number\": \"370178180924975\", \"payment_amount\": 292.19, \"payment_method\": \"rate_per_car\", \"video_file_path\": null, \"garage_branch_id\": 5, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(118,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,2,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 2, \"name\": \"Drill\", \"type\": \"machine\", \"images\": null, \"quantity\": 7, \"condition\": \"used\", \"reference\": \"TAM-97QRUKEM65\", \"created_at\": \"2024-10-08 15:43:49\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:49\", \"updated_by\": null, \"description\": \"Veritatis odio eos dolor et repudiandae fuga. Aperiam ut alias perferendis nihil consequatur. Aut enim commodi voluptas natus. Quod facilis eos dolores temporibus tempora.\", \"distributed\": 0, \"buying_price\": 828.56, \"assigned_code\": \"1542\", \"serial_number\": \"2632631767263985\", \"payment_amount\": 713.76, \"payment_method\": \"rate_per_hour\", \"video_file_path\": null, \"garage_branch_id\": 2, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(119,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,3,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 3, \"name\": \"Car Jack\", \"type\": \"tool\", \"images\": null, \"quantity\": 3, \"condition\": \"new\", \"reference\": \"TAM-ZML6YK9DAE\", \"created_at\": \"2024-10-08 15:43:50\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:50\", \"updated_by\": null, \"description\": \"Nulla asperiores omnis sunt mollitia. Quia autem at nesciunt ipsa quia veniam.\", \"distributed\": 0, \"buying_price\": 88.36, \"assigned_code\": \"4743\", \"serial_number\": \"2687964328362879\", \"payment_amount\": 67.9, \"payment_method\": \"rate_per_hour\", \"video_file_path\": null, \"garage_branch_id\": 1, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(120,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,4,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 4, \"name\": \"Jumper\", \"type\": \"tool\", \"images\": null, \"quantity\": 9, \"condition\": \"used\", \"reference\": \"TAM-W2KGPEI6LF\", \"created_at\": \"2024-10-08 15:43:50\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:50\", \"updated_by\": null, \"description\": \"Reiciendis in nihil tempore veritatis neque nihil. Aspernatur sed quia veritatis nam ea voluptas et. Itaque et quaerat debitis dolore repudiandae rem aut. A cupiditate aliquam possimus cupiditate velit cupiditate quia. Quis voluptas voluptas tenetur sunt saepe est.\", \"distributed\": 0, \"buying_price\": 682.38, \"assigned_code\": \"1141\", \"serial_number\": \"5174787560037872\", \"payment_amount\": 761.21, \"payment_method\": \"rate_per_hour\", \"video_file_path\": null, \"garage_branch_id\": 5, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(121,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,5,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 5, \"name\": \"Pliers\", \"type\": \"tool\", \"images\": null, \"quantity\": 1, \"condition\": \"new\", \"reference\": \"TAM-NBHDUZ275Y\", \"created_at\": \"2024-10-08 15:43:50\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:50\", \"updated_by\": null, \"description\": \"Impedit placeat id consectetur unde labore non doloremque numquam. Enim provident nemo dolor voluptatibus. Sed distinctio sed dolore recusandae nemo voluptatem. Eaque fugit velit tenetur eaque eaque quidem.\", \"distributed\": 0, \"buying_price\": 915.25, \"assigned_code\": \"3936\", \"serial_number\": \"6011074654355857\", \"payment_amount\": 552.07, \"payment_method\": \"rate_per_car\", \"video_file_path\": null, \"garage_branch_id\": 2, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(122,'default','Tool added.','App\\Models\\ToolsAndMachine',NULL,6,NULL,NULL,'{\"notes\": \"Tool added to inventory during initial seeding of project data.\", \"attributes\": {\"id\": 6, \"name\": \"Screw Driver\", \"type\": \"tool\", \"images\": null, \"quantity\": 3, \"condition\": \"new\", \"reference\": \"TAM-2IT5MK4ANE\", \"created_at\": \"2024-10-08 15:43:50\", \"created_by\": 1, \"updated_at\": \"2024-10-08 15:43:50\", \"updated_by\": null, \"description\": \"Eius laudantium sunt perferendis expedita qui veritatis optio. Labore reprehenderit ut velit aut. Delectus aperiam provident quo voluptatibus repellat in qui. Aut quia amet aut animi.\", \"distributed\": 0, \"buying_price\": 493.43, \"assigned_code\": \"3380\", \"serial_number\": \"4716397606949995\", \"payment_amount\": 784.69, \"payment_method\": \"rate_per_hour\", \"video_file_path\": null, \"garage_branch_id\": 5, \"last_inspection_date\": \"2024-10-08\", \"custodian_assigned_id\": 1}}',NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(123,'default','Quotation prepared','App\\Models\\Quotation',NULL,16,'App\\Models\\User',1,'{\"notes\": \"Quotation with reference <a href=\\\"https://cvt.codebreeze.co.ke/quotations/Q-LRSDWN59UH2K/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Q-LRSDWN59UH2K</a> prepared by <a href=\\\"https://cvt.codebreeze.co.ke/managers/CVT-UV2N87A46I/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Toby CVT</a> for <a href=\\\"https://cvt.codebreeze.co.ke/customers/CUS-578VM2USGD/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Malachi Mraz</a>.\", \"attributes\": {\"id\": 16, \"title\": \"KCZ 123A Gearbox service\", \"garage_id\": 1, \"reference\": \"Q-LRSDWN59UH2K\", \"created_at\": \"2024-10-08 19:37:24\", \"updated_at\": \"2024-10-08 19:37:24\", \"vehicle_id\": 2, \"customer_id\": 1, \"initiated_by\": 1, \"issue_description\": \"<p>vgjhbkjl;gnvhjkmg</p>\"}}',NULL,'2024-10-08 19:37:24','2024-10-08 19:37:24'),(124,'default','Quotation requested','App\\Models\\User',NULL,17,'App\\Models\\Quotation',16,'{\"notes\": \"Requested a quotation and <a href=\\\"https://cvt.codebreeze.co.ke/managers/CVT-UV2N87A46I/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Toby CVT</a> initialized one with reference <a href=\\\"https://cvt.codebreeze.co.ke/quotations/Q-LRSDWN59UH2K/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Q-LRSDWN59UH2K</a>.\", \"attributes\": {\"id\": 17, \"email\": \"grayce.klocko@jacobs.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi\", \"username\": null, \"id_number\": 2347228934, \"created_at\": \"2024-10-08 15:43:46\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:46\", \"userable_id\": 1, \"phone_number\": \"+19308498120\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Customer\", \"remember_token\": \"vXy6SxubAb\", \"otp_verified_at\": null, \"email_verified_at\": \"2024-10-08 15:43:46\", \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/MMj6cc67jyAdFDvtVNI5.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 19:37:24','2024-10-08 19:37:24'),(125,'default','Quotation initialized','App\\Models\\User',NULL,1,'App\\Models\\Customer',1,'{\"notes\": \"Initialized a quotation with reference <a href=\\\"https://cvt.codebreeze.co.ke/quotations/Q-LRSDWN59UH2K/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Q-LRSDWN59UH2K</a> for <a href=\\\"https://cvt.codebreeze.co.ke/customers/CUS-578VM2USGD/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Malachi Mraz</a>.\", \"attributes\": {\"id\": 1, \"email\": \"toby@cvt.com\", \"token\": null, \"otp_code\": null, \"password\": \"$2y$10$liScYQHu0SbvSy6s4ZFQ3eKAxqW2zXpCo3Vo/3Nx7NVYTwaF6ofii\", \"username\": null, \"id_number\": 123456789, \"created_at\": \"2024-10-08 15:43:45\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:45\", \"userable_id\": 1, \"phone_number\": \"+254712345678\", \"user_summary\": null, \"userable_type\": \"App\\\\Models\\\\Manager\", \"remember_token\": null, \"otp_verified_at\": null, \"email_verified_at\": null, \"two_factor_secret\": null, \"profile_photo_path\": \"profile-photos/nHeojucikutBpffCSU7D.jpg\", \"otp_code_expires_at\": null, \"two_factor_confirmed_at\": null, \"two_factor_recovery_codes\": null}}',NULL,'2024-10-08 19:37:24','2024-10-08 19:37:24'),(126,'default','Car Waxing service added to quotation','App\\Models\\Quotation',NULL,14,'App\\Models\\User',1,'{\"notes\": \"Car Waxing service added by <a href=\\\"https://cvt.codebreeze.co.ke/managers/CVT-UV2N87A46I/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Toby CVT</a>.\", \"attributes\": {\"id\": 14, \"title\": \"Eos omnis minima nemo.\", \"status\": \"Pending\", \"garage_id\": 1, \"reference\": \"Q-QO8CEMKH2RBG\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Et tempora earum rerum error alias fuga rem.\"}}',NULL,'2024-10-08 19:44:09','2024-10-08 19:44:09'),(127,'default','PDF document requested','App\\Models\\Quotation',NULL,14,'App\\Models\\User',1,'{\"notes\": \"A request to download the quotation document had been initiated by <a href=\\\"https://cvt.codebreeze.co.ke/managers/CVT-UV2N87A46I/show\\\" class=\\\"text-primary-500 fw-500 text-underlined\\\"> Toby CVT</a>.\", \"attributes\": {\"id\": 14, \"title\": \"Eos omnis minima nemo.\", \"status\": \"Pending\", \"garage_id\": 1, \"reference\": \"Q-QO8CEMKH2RBG\", \"created_at\": \"2024-10-08 15:43:48\", \"deleted_at\": null, \"updated_at\": \"2024-10-08 15:43:48\", \"vehicle_id\": 1, \"accepted_at\": null, \"accepted_by\": null, \"customer_id\": 7, \"job_card_id\": null, \"rejected_at\": null, \"rejected_by\": null, \"initiated_by\": 1, \"issue_description\": \"Et tempora earum rerum error alias fuga rem.\"}}',NULL,'2024-10-08 19:44:31','2024-10-08 19:44:31');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_payments`
--

DROP TABLE IF EXISTS `cash_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `receipt_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` double(8,2) unsigned NOT NULL,
  `cash_change` double(8,2) unsigned DEFAULT '0.00',
  `remaining_balance` double(8,2) unsigned DEFAULT '0.00',
  `handled_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cash_payments_receipt_number_unique` (`receipt_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_payments`
--

LOCK TABLES `cash_payments` WRITE;
/*!40000 ALTER TABLE `cash_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` json DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'CUS-578VM2USGD','Malachi','Mraz','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(2,'CUS-F9IA2MUN3P','Isabell','Reynolds','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(3,'CUS-T385RCG7E6','Julia','Willms','female','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(4,'CUS-E2XYSOVR9P','Estella','Schinner','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(5,'CUS-O3BE9T4I7W','Erwin','Armstrong','female','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(6,'CUS-SLWF29TYHZ','Davin','Bode','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(7,'CUS-CRSUZI92HV','Nora','McKenzie','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(8,'CUS-573NGQPBZ8','Annabelle','Fisher','female','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(9,'CUS-TA2WQPMV8E','Bridie','Hudson','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(10,'CUS-4YVPBNT5HC','Isabell','Koepp','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(11,'CUS-X5RZHULDST','Pat','Jaskolski','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(12,'CUS-DI94OUYPCW','Elmore','Reichel','female','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(13,'CUS-F8ALTP5VM6','Eliseo','Flatley','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(14,'CUS-8L762REG3T','Annalise','Gutkowski','male','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46'),(15,'CUS-3L8KI4UWBD','Delbert','Nolan','female','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,'2024-10-08 15:43:46','2024-10-08 15:43:46');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `forum_invites`
--

DROP TABLE IF EXISTS `forum_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_invites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` bigint unsigned NOT NULL,
  `invited_by` bigint unsigned NOT NULL,
  `invite_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invite_status` int NOT NULL DEFAULT '0',
  `sending_status` int NOT NULL DEFAULT '0',
  `accepted_at` timestamp NULL DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_invites`
--

LOCK TABLES `forum_invites` WRITE;
/*!40000 ALTER TABLE `forum_invites` DISABLE KEYS */;
INSERT INTO `forum_invites` VALUES (1,5,1,'lura.hyatt@mosciski.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,15,1,'mohara@frami.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,8,1,'stanton.marion@predovic.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,3,1,'leffler.marlee@hodkiewicz.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,8,1,'hammes.emmanuel@grady.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,13,1,'auer.heaven@west.net',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(7,12,1,'purdy.amanda@hauck.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(8,6,1,'teffertz@ritchie.biz',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(9,2,1,'whegmann@bartell.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(10,11,1,'amos.keeling@hilpert.com',0,0,NULL,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `forum_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post_comments`
--

DROP TABLE IF EXISTS `forum_post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_post_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `forum_id` bigint unsigned NOT NULL,
  `comment_id` bigint unsigned DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` bigint unsigned NOT NULL DEFAULT '0',
  `dislikes` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post_comments`
--

LOCK TABLES `forum_post_comments` WRITE;
/*!40000 ALTER TABLE `forum_post_comments` DISABLE KEYS */;
INSERT INTO `forum_post_comments` VALUES (1,1,1,14,NULL,'Deleniti ut omnis qui mollitia. Sit magnam qui aliquid ut iste cumque. Quam est magni sit et sequi ut. Aut accusamus dolore sed illo illo dicta blanditiis.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(2,25,7,7,NULL,'Voluptate at quae dolores qui vel. Sapiente voluptas nam consectetur occaecati et ab natus.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(3,3,10,9,NULL,'Amet animi minus quisquam hic enim. Sed eum aspernatur consequatur molestias accusamus velit quo. Excepturi quibusdam ullam maiores in reiciendis culpa ab. Vel quasi voluptas quia sequi qui esse debitis non.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(4,1,1,9,NULL,'Quisquam esse est voluptate et tenetur ab ut dolorum. Sint dolore est eveniet reprehenderit. Eum quo molestias enim. Officia ut expedita earum.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(5,9,6,4,NULL,'Alias officiis iure et nobis sapiente. Nam sed voluptatem nemo beatae aperiam. Aut laborum maxime at. Est dolorem saepe quia et blanditiis omnis aperiam. Eligendi commodi iusto vero dicta et distinctio voluptas.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(6,22,3,1,NULL,'Consequuntur quae velit perspiciatis maiores. Et voluptatem id rerum nam mollitia vel architecto. Aut distinctio doloribus possimus eveniet recusandae porro.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(7,11,2,5,NULL,'Id aut voluptas est inventore. Qui voluptas incidunt aliquid molestiae dolor voluptas dolor. Ut illum maxime qui nulla corrupti id.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(8,7,8,2,NULL,'Magni repellendus possimus nesciunt laboriosam. Eaque ratione expedita et sequi itaque. Doloribus cumque adipisci veritatis. Impedit dolor doloremque commodi quis illum doloribus.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(9,14,5,13,NULL,'Incidunt quia placeat sint voluptate. Incidunt ea similique et iusto nihil reiciendis corporis. Adipisci quos excepturi asperiores quo laborum et aliquam officia.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51'),(10,31,7,6,NULL,'Tempora non cumque officia officiis. Dolore est qui enim quia dolorem quos.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51');
/*!40000 ALTER TABLE `forum_post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post_reactions`
--

DROP TABLE IF EXISTS `forum_post_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_post_reactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `forum_post_comment_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `reaction_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post_reactions`
--

LOCK TABLES `forum_post_reactions` WRITE;
/*!40000 ALTER TABLE `forum_post_reactions` DISABLE KEYS */;
INSERT INTO `forum_post_reactions` VALUES (1,1,2,'post','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(2,8,2,'comment','like','2024-10-08 15:43:51','2024-10-08 15:43:51'),(3,10,24,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(4,6,3,'post','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(5,9,11,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(6,9,15,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(7,6,19,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(8,5,18,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(9,8,19,'comment','dislike','2024-10-08 15:43:51','2024-10-08 15:43:51'),(10,6,14,'post','like','2024-10-08 15:43:51','2024-10-08 15:43:51');
/*!40000 ALTER TABLE `forum_post_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `dislikes` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_posts`
--

LOCK TABLES `forum_posts` WRITE;
/*!40000 ALTER TABLE `forum_posts` DISABLE KEYS */;
INSERT INTO `forum_posts` VALUES (1,'FRP-I9L6VAUY8X',13,2,'In accusamus autem mollitia nam ut fuga doloremque maxime rerum nisi iusto ex aut voluptas.','Provident qui tempora natus non. Et nobis corrupti sequi odit aliquid. Qui debitis commodi fuga officia.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,'FRP-8IAZ2RHKBL',2,17,'Aut nam modi magni nihil laudantium veniam ut expedita nostrum dignissimos sint in.','Sint tenetur iusto ducimus odit quod. Pariatur et iusto sint ipsam eos laborum ut voluptas. Ratione quis aut quia et sint voluptatum. Harum molestiae mollitia explicabo aut sint dolores dolorem.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,'FRP-FQ9Y3ENIV8',15,31,'Molestiae et velit voluptatibus consequuntur expedita sit quos laudantium ut rem sit dolorum et.','Vitae dolor quasi quis ab consequatur et. Eaque consectetur occaecati magni accusamus occaecati quis. Voluptatibus quidem quod animi et sunt. Sint incidunt id rerum dignissimos rerum magni consequatur quia.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,'FRP-8347A6UVIW',12,24,'Culpa eum qui voluptas ut et odit vel pariatur magni consequatur blanditiis dolores officiis.','Cupiditate tenetur aut nihil voluptatem. Nobis qui debitis voluptatum consequatur ratione est. Dolores ut neque cumque error qui aut aspernatur. Dignissimos cum repellendus quibusdam delectus et voluptate at. Nisi dolore reprehenderit iusto enim perferendis nihil.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,'FRP-C5P8GIR4Z2',7,21,'Fugit blanditiis doloremque ut nihil quo sapiente ab doloremque ut.','Dolore fugit dolorem et adipisci. Vitae libero soluta vel fugiat voluptatum dolor. Nemo velit tempore et dolor dolores. Vel consequatur quos voluptates aliquid aut. Vitae impedit corrupti mollitia.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,'FRP-ACYXLSPWBD',12,25,'Perspiciatis sed eos et nesciunt atque fugiat iure odio optio sapiente quas.','Recusandae atque ad ratione corrupti incidunt nostrum eligendi molestiae. Accusantium ut occaecati eos neque eius nemo quas. Mollitia est ex amet sed aut. Suscipit excepturi occaecati dolorum doloribus. Eum enim perspiciatis velit aliquam cum laboriosam. Hic quo et nesciunt vero quibusdam maiores debitis occaecati.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(7,'FRP-ED3OHS42CZ',14,11,'Voluptates illo ut ut minus nihil dignissimos enim et animi dolor.','Et et eos et molestias odio nesciunt labore. Dolorem nemo cupiditate amet voluptatem praesentium cum. Sapiente tempore id ex omnis quia ab quibusdam. Ut magni voluptatem deleniti enim ipsa tempora ut.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(8,'FRP-3OV7I2ACBG',10,23,'Et nostrum corporis qui quam culpa tenetur modi aspernatur voluptates exercitationem atque.','Cumque eveniet quibusdam dolorum in eaque non. Consequatur beatae consectetur et doloremque ipsam. Vero perferendis illo aut beatae. Ut sit nulla earum corrupti qui. Voluptatem dolor commodi deleniti accusamus unde quis voluptatem.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(9,'FRP-KBSQAL76UF',1,12,'Cumque laudantium dicta reprehenderit voluptas corporis et temporibus officiis.','Est omnis quae dolores quo necessitatibus nihil nesciunt doloremque. Ipsa delectus fugiat modi veritatis enim voluptates distinctio. Et fugiat dolor magni tenetur numquam.',0,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(10,'FRP-GQMFWRVETN',12,12,'Nemo et nobis voluptas consequatur ut laboriosam.','Necessitatibus omnis ut inventore sapiente sunt. Eum aut commodi et eius officiis accusantium laudantium. Suscipit ut aut nisi quidem recusandae ut consequatur. Saepe vel et rerum quia magni dolor. Quis amet harum voluptate et.',0,0,'2024-10-08 15:43:51','2024-10-08 15:43:51');
/*!40000 ALTER TABLE `forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_reports`
--

DROP TABLE IF EXISTS `forum_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `report_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int NOT NULL,
  `reported_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_reports`
--

LOCK TABLES `forum_reports` WRITE;
/*!40000 ALTER TABLE `forum_reports` DISABLE KEYS */;
INSERT INTO `forum_reports` VALUES (1,'forum','Nisi sit beatae quis quia magni possimus.',1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,'post','Quam aut perspiciatis libero nesciunt rerum dolore fugit mollitia odit nobis esse.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,'forum','Ut ratione et delectus officia rerum consequatur quidem inventore.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,'comment','Eaque excepturi quaerat ratione vel facilis.',3,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,'forum','Quasi fugit a id laborum aut repudiandae et.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,'comment','Illo veniam molestiae dolores veniam deserunt itaque et magnam.',3,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(7,'comment','Est ea est sint placeat odit et.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(8,'forum','Dolores sint culpa quod tempore at doloremque adipisci quam autem.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(9,'forum','Vel corporis ex a nesciunt.',1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(10,'post','Ex incidunt itaque accusantium beatae et deserunt.',2,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(11,'comment','Qui omnis doloribus ipsa iste.',3,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(12,'forum','Perferendis sit eos dolores aspernatur impedit impedit quia.',1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(13,'forum','Porro consectetur ex quidem sed non sit non beatae qui.',1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(14,'forum','Suscipit voluptatum quae sint est quas.',3,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(15,'post','Est dolores libero vero laboriosam a autem libero amet.',1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `forum_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_roles`
--

DROP TABLE IF EXISTS `forum_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_roles`
--

LOCK TABLES `forum_roles` WRITE;
/*!40000 ALTER TABLE `forum_roles` DISABLE KEYS */;
INSERT INTO `forum_roles` VALUES (1,'Admin','2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,'User','2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,'Moderator','2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `forum_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_users`
--

DROP TABLE IF EXISTS `forum_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `forum_role_id` bigint unsigned NOT NULL,
  `is_terms_agreed` tinyint(1) NOT NULL DEFAULT '0',
  `receive_forum_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `followed` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_users`
--

LOCK TABLES `forum_users` WRITE;
/*!40000 ALTER TABLE `forum_users` DISABLE KEYS */;
INSERT INTO `forum_users` VALUES (1,4,31,2,0,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,1,30,2,1,1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,11,15,3,1,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,8,6,1,1,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,6,25,3,1,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,4,7,3,0,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(7,9,6,3,0,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(8,2,8,2,0,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(9,4,26,1,0,1,0,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(10,9,2,2,0,1,1,'2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `forum_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_profile_images` json DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (1,'FRM-IWRMEGK8B5','Rowe LLC','Volkswagen',NULL,'Eum velit quidem quis accusantium optio maxime libero libero animi modi porro et minima magni reprehenderit sed eum illo.','Ratione totam illo sapiente vitae. Qui expedita at iure. Cum ut ipsum est adipisci. Doloribus facere omnis officiis natus.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(2,'FRM-ZRL9CWBMQO','Veum and Sons','Toyota',NULL,'Qui in magni distinctio quasi velit repudiandae mollitia et repellendus asperiores vero tempore quisquam sunt cumque qui nemo amet ex fuga.','Voluptas maxime est et laboriosam dolorum dolore cumque. Necessitatibus ipsum inventore est eligendi nam delectus molestias. Et cum nemo quis itaque. Aspernatur eos dicta voluptatum iure facilis voluptatibus odit. Tempora voluptas dignissimos nobis. Fuga rem velit aut qui cum eveniet suscipit praesentium.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(3,'FRM-V56RLNWKFB','Ernser, Kovacek and Bogisich','Toyota',NULL,'Porro cumque aut ex sint enim fugit quis ut pariatur amet amet delectus ut ad eveniet recusandae quis quibusdam qui officiis.','Id ex et iusto praesentium sed alias. Unde consectetur qui provident reprehenderit aliquam iste. Ducimus laboriosam quo consequuntur molestiae natus officiis. Quaerat numquam atque nobis necessitatibus temporibus quia exercitationem. In omnis odio ratione qui et consequatur laboriosam. Est dolores illum consequuntur reprehenderit in itaque.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,'FRM-PRNSFA7DIM','Leuschke and Sons','Volkswagen',NULL,'Voluptas libero alias voluptatem doloribus aut aut temporibus nostrum voluptatem voluptas est quia dolorum eos aliquid eveniet corrupti.','Impedit ad sed dolorum quaerat voluptas. Modi consequatur impedit consequuntur aut consequuntur tempora numquam. Corrupti asperiores distinctio ipsum illum sed quis laudantium. Commodi et atque in distinctio aut corporis debitis. Eligendi ut temporibus eveniet veritatis fugiat ut laborum quisquam.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,'FRM-A8NMOVU5RY','Deckow, Wolff and Hilpert','Toyota',NULL,'A laudantium sunt non et qui reiciendis sequi et eos architecto.','Et magnam quis perferendis veritatis qui et omnis placeat. Qui in quam temporibus ut sequi distinctio quaerat. Magnam corrupti corrupti quod. Eveniet assumenda facere totam quisquam dolorem. Cum perspiciatis aspernatur velit ab vero numquam. Ad commodi nemo voluptatem distinctio perspiciatis. Aut facilis itaque totam molestiae non.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,'FRM-G6SXWUQLR2','Collins-Collins','Toyota',NULL,'Magnam illo natus sequi repudiandae non corrupti ducimus nesciunt non saepe sed asperiores.','Nulla quis a officia dicta eveniet voluptatem occaecati eaque. Ad dignissimos voluptatum enim repellat voluptatem animi. Cupiditate officiis perferendis quia consequuntur quae eum. Hic voluptatibus unde aliquid ex nisi voluptate. Aut fuga qui molestias distinctio.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(7,'FRM-OSVGHU84TQ','Tillman, Hauck and Lesch','Honda',NULL,'Nulla voluptas eligendi libero tenetur ad dicta aut et magnam eum dignissimos sequi eum occaecati enim unde omnis.','Sed sint dolore incidunt dolor ipsa cum. Et voluptates ducimus ab eos molestias aspernatur. Velit consequatur atque quia accusantium quae nisi eos quae. Ipsum est ut suscipit. Distinctio quam eum velit consequatur. Suscipit quo quibusdam ullam quia ipsum.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(8,'FRM-XBYFRMQHOI','Kuhlman-Feeney','Honda',NULL,'Architecto et fugiat tenetur ut tempora aut dolor consequatur omnis perferendis sunt.','Vel voluptatum est ut accusamus. Rerum dolorem dolore earum. Sit et reiciendis dolorem fugiat cumque sunt. Facere nihil at repellat nobis. Aut debitis blanditiis qui qui ut aut deserunt. Doloremque nemo dolorum quos nesciunt provident rem.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(9,'FRM-3KVAG4SCOX','Kreiger-O\'Connell','Volkswagen',NULL,'Officiis provident rem eius a quia et adipisci sit harum optio praesentium explicabo nisi.','Occaecati voluptatem reiciendis dignissimos mollitia eum qui quia temporibus. Dolores repudiandae officiis laboriosam officiis. Fugit tempora nihil provident aut neque. Vel possimus eos aut. Quibusdam nulla doloribus qui quaerat quod voluptates.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(10,'FRM-4A8ZUSQTOR','Paucek, Kub and Ryan','Volkswagen',NULL,'Tempore suscipit reiciendis veniam possimus nobis itaque non amet provident expedita suscipit explicabo molestias non.','Est debitis voluptas ipsam rerum. Est reprehenderit voluptas voluptates eos tempore perferendis illum. Illum id in ducimus ad voluptas et. Dolorem eius et debitis soluta perspiciatis sint corporis. Deserunt ut quis consequatur commodi doloribus. Repudiandae autem repellat doloribus quis soluta libero perspiciatis repellat.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(11,'FRM-5BREUGK2X7','Keebler, Batz and Hudson','Volkswagen',NULL,'Aspernatur repudiandae omnis aliquam nihil commodi consequatur optio optio nam facere laborum quo similique.','Quis aperiam non dolorem modi accusantium impedit earum soluta. Non debitis aut mollitia perferendis sed maiores voluptatem. Quia omnis nobis et eveniet ipsam aperiam natus. Et iure voluptas ut occaecati id. Dolor ullam incidunt molestias consequuntur quia velit. Qui reprehenderit repudiandae nihil sunt eveniet nulla perferendis. Molestiae quis et ut voluptas.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(12,'FRM-FEAQ6CZTKB','Koelpin Group','Volkswagen',NULL,'Et sint voluptatem optio assumenda repellendus est qui culpa numquam laudantium enim sint dolore omnis quasi saepe sed.','Et non qui aut maxime quo. Qui autem laudantium voluptate tempora illo nostrum voluptas. Minus molestiae qui quia. Ut deserunt accusamus qui placeat. Neque ut voluptatem omnis sit. Asperiores minus repellat expedita ut dolorum reprehenderit ipsa dolores. Et sit ex iure.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(13,'FRM-7U5WT9QRB4','Walker, Schimmel and Steuber','Honda',NULL,'Repellat quis dolorem commodi voluptas explicabo accusantium ratione est necessitatibus aliquid quis quo maiores minima est.','Quo aut cumque libero molestiae. Enim labore dolorem inventore est dolor corrupti. Est neque facilis voluptatum aliquam nisi quia nesciunt. Accusantium rerum nemo aut. Nihil dolorem iusto voluptatem voluptatem. Dolore qui et nisi ratione. Autem non ut provident cum assumenda.',0,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(14,'FRM-KE4QALMCBU','Lockman-Reinger','Honda',NULL,'Eum sunt cumque dicta quis voluptas ut iste qui quos iste adipisci aliquam.','Delectus sed iste quis. Repudiandae sapiente unde enim id officia qui temporibus. Consequatur aliquid quae aut animi. Voluptas rerum aliquam quibusdam tenetur. Nemo nam explicabo cupiditate omnis consequatur magnam fugit laborum. Consequatur numquam molestiae nisi aut voluptatem velit molestiae aspernatur.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(15,'FRM-HB6O2QGVNK','Walker-Huel','Honda',NULL,'Autem saepe odio consequatur libero atque aspernatur minima dolorem consequatur alias.','Laborum harum maxime eaque eum dolores et explicabo. Rerum est vel pariatur vero omnis eos. Id inventore architecto doloremque quam molestiae illum sint sapiente. Dignissimos rerum excepturi quis eius autem ut minima.',1,1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage_product`
--

DROP TABLE IF EXISTS `garage_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `garage_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage_product`
--

LOCK TABLES `garage_product` WRITE;
/*!40000 ALTER TABLE `garage_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `garage_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage_product_transfers`
--

DROP TABLE IF EXISTS `garage_product_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage_product_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `origin` bigint unsigned NOT NULL,
  `destination` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `transferred_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage_product_transfers`
--

LOCK TABLES `garage_product_transfers` WRITE;
/*!40000 ALTER TABLE `garage_product_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `garage_product_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage_specializations`
--

DROP TABLE IF EXISTS `garage_specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage_specializations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage_specializations`
--

LOCK TABLES `garage_specializations` WRITE;
/*!40000 ALTER TABLE `garage_specializations` DISABLE KEYS */;
INSERT INTO `garage_specializations` VALUES (1,'Toyota Specialists','2024-10-08 15:43:44','2024-10-08 15:43:44'),(2,'Panel Beating(Body Works & Painting)','2024-10-08 15:43:44','2024-10-08 15:43:44'),(3,'Subaru Specialists','2024-10-08 15:43:44','2024-10-08 15:43:44'),(4,'Vw Specialists','2024-10-08 15:43:44','2024-10-08 15:43:44');
/*!40000 ALTER TABLE `garage_specializations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garages`
--

DROP TABLE IF EXISTS `garages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garage_specialization_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `garage_profile` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garage_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_council_approval_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fire_extinguisher_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_registration_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `garages_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garages`
--

LOCK TABLES `garages` WRITE;
/*!40000 ALTER TABLE `garages` DISABLE KEYS */;
INSERT INTO `garages` VALUES (1,'G-SHDWV6O2FG','Waelchi Inc','4',2,'Similique iure qui esse fuga laborum ex dignissimos sequi.',NULL,'+1-669-841-8722','(347) 469-9890','federico.johns@example.net','http://www.kris.net/corrupti-doloremque-aut-est-quia-aut','http://www.graham.org/','http://hammes.biz/','Kenya','Nairobi City','{\"formatted_address\":\"Ngong Hills\",\"latitude\":-1.4,\"longitude\":36.6380556}',NULL,NULL,NULL,'Pending','2024-10-08 15:43:44','2024-10-08 15:43:44',NULL),(2,'G-CSFK8AUYBG','Klocko, Durgan and Rogahn','4',1,'Error est sequi illum quo dicta.',NULL,'(870) 445-5889','703-623-9286','wehner.jackie@example.org','http://weissnat.com/amet-dolores-porro-eligendi-et-nihil-numquam','http://batz.com/qui-et-eos-voluptas-et-veritatis.html','http://rice.com/','Kenya','Nairobi City','{\"formatted_address\":\"Ngong Hills\",\"latitude\":-1.4,\"longitude\":36.6380556}',NULL,NULL,NULL,'Approved','2024-10-08 15:43:44','2024-10-08 15:43:44',NULL),(3,'G-37S5O4TZR9','Konopelski, Runolfsdottir and Homenick','4',1,'Illo eos pariatur modi quo.',NULL,'+1.878.977.5218','657-724-5735','rutherford.lemuel@example.com','http://www.langworth.org/fugit-enim-inventore-ratione-accusamus','https://www.collier.com/et-ullam-soluta-aut-rem-accusamus','http://dietrich.com/incidunt-perspiciatis-odit-incidunt-veniam-debitis-architecto-quia','Kenya','Nairobi City','{\"formatted_address\":\"Ngong Hills\",\"latitude\":-1.4,\"longitude\":36.6380556}',NULL,NULL,NULL,'Approved','2024-10-08 15:43:44','2024-10-08 15:43:44',NULL),(4,'G-64NFOQ2DZ8','Johnston Group','2',1,'Nihil fuga et voluptatibus ipsum.',NULL,'(341) 286-4558','+1-724-950-9650','brooke28@example.org','http://www.jones.info/consequatur-facere-fugit-ex-harum-saepe','http://morissette.com/dolor-ipsa-ullam-vero-eum','http://abernathy.biz/et-enim-assumenda-quis-dolor-voluptas','Kenya','Nairobi City','{\"formatted_address\":\"Ngong Hills\",\"latitude\":-1.4,\"longitude\":36.6380556}',NULL,NULL,NULL,'Pending','2024-10-08 15:43:44','2024-10-08 15:43:44',NULL),(5,'G-NZKAO4PH3L','Schowalter Inc','1',1,'Qui quo similique nisi est natus consequatur.',NULL,'+1-970-489-5289','(205) 691-7198','citlalli.funk@example.org','http://www.rippin.com/','http://www.kuvalis.biz/culpa-porro-quia-sunt-corrupti-veniam-aliquam-occaecati.html','http://tremblay.com/veniam-quo-officia-sequi-animi-voluptatum-rerum-dolor.html','Kenya','Nairobi City','{\"formatted_address\":\"Ngong Hills\",\"latitude\":-1.4,\"longitude\":36.6380556}',NULL,NULL,NULL,'Pending','2024-10-08 15:43:44','2024-10-08 15:43:44',NULL);
/*!40000 ALTER TABLE `garages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_card_id` bigint unsigned NOT NULL,
  `paymentable_id` bigint unsigned DEFAULT NULL,
  `paymentable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_card_repair_procedure`
--

DROP TABLE IF EXISTS `job_card_repair_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_card_repair_procedure` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `repair_procedure_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_card_repair_procedure`
--

LOCK TABLES `job_card_repair_procedure` WRITE;
/*!40000 ALTER TABLE `job_card_repair_procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_card_repair_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_card_service`
--

DROP TABLE IF EXISTS `job_card_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_card_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_card_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_mechanic_id` bigint unsigned DEFAULT NULL,
  `assistant_mechanic_id` bigint unsigned DEFAULT NULL,
  `trainee_mechanic_id` bigint unsigned DEFAULT NULL,
  `estimated_repair_time` double(8,2) unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_card_service`
--

LOCK TABLES `job_card_service` WRITE;
/*!40000 ALTER TABLE `job_card_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_card_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_cards`
--

DROP TABLE IF EXISTS `job_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `manager_id` bigint unsigned DEFAULT NULL,
  `vehicle_id` bigint unsigned NOT NULL,
  `garage_id` bigint unsigned DEFAULT NULL,
  `issue_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `computer_diagnosis` longtext COLLATE utf8mb4_unicode_ci,
  `ai_recommendation` longtext COLLATE utf8mb4_unicode_ci,
  `physically_confirmed_parameters` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `started_at` datetime DEFAULT NULL,
  `started_by` bigint unsigned DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `completed_by` bigint unsigned DEFAULT NULL,
  `supervisor_remarks` longtext COLLATE utf8mb4_unicode_ci,
  `supervisor_rating` int DEFAULT NULL,
  `customer_remarks` longtext COLLATE utf8mb4_unicode_ci,
  `customer_rating` int DEFAULT NULL,
  `service_type` json DEFAULT NULL,
  `mileage_units` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `due_services` json DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_cards`
--

LOCK TABLES `job_cards` WRITE;
/*!40000 ALTER TABLE `job_cards` DISABLE KEYS */;
INSERT INTO `job_cards` VALUES (1,'JC-UNPG2687DX',6,1,5,4,'Nam sequi quo consequuntur rerum harum. Aliquam cupiditate dolores voluptate possimus nulla.','Quis accusantium et similique qui veniam. Animi vel molestiae voluptatum at unde. Ut aspernatur illum culpa.','Voluptatem sit qui id cupiditate ut fugiat. Quaerat est consectetur dolores aut nam labore alias et. Aliquid suscipit ipsum doloribus et. Qui aut numquam ut.','Illo asperiores voluptatum soluta quod. Id velit qui quidem iste. Voluptate quisquam odio porro nulla error. Consequatur maiores in repellat quaerat illum assumenda.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(2,'JC-4SALBTO6FV',3,1,4,3,'Sint et unde sit cum error similique molestiae. Dolores iure delectus nam magni enim nostrum sit. Accusantium quasi voluptatem et.','Et at dolorem unde ullam. Aut quia deleniti qui quod laudantium. Velit consequatur aut est atque nihil molestiae qui deserunt. Ipsum illo aspernatur et unde non est sapiente.','Mollitia saepe et velit aut recusandae. Voluptatem adipisci rerum aut corporis voluptatum. Maxime vero recusandae maxime perspiciatis quia.','Sit iure ea voluptatem nihil. Quis nobis blanditiis deleniti deleniti officia officia. Accusamus maiores hic est et saepe praesentium tempore.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(3,'JC-IVA37DPUEY',8,1,5,3,'Modi vel possimus eos sunt. Nam assumenda est alias tenetur. Beatae recusandae amet maxime qui voluptatem harum molestias ut.','Iste suscipit voluptatem ipsa rerum voluptatem magnam fugiat. Perferendis beatae sint omnis illo. Maxime sunt recusandae sapiente. Sint illum commodi et numquam quia dolor. Non molestias sapiente est perspiciatis iusto.','Voluptas accusantium assumenda et unde sunt accusamus. Qui fuga totam pariatur tenetur beatae. Commodi sed voluptatem enim accusamus ipsum illum ex. Beatae molestiae occaecati voluptatem sequi. Quo recusandae quia et saepe animi veritatis.','Voluptates voluptates numquam ut recusandae id dolores. Deserunt eius natus nam et dolorem. Perspiciatis reprehenderit fuga placeat molestias est. Velit consequatur aut repellat sed.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(4,'JC-46G3PSMFUX',14,1,1,2,'Aliquam quia voluptatem consectetur. Possimus consequatur et earum est hic nisi. Et totam repellat qui.','Excepturi voluptatem illo quibusdam nulla dolore. Id suscipit qui ipsum tempore in. Nemo delectus deserunt velit perferendis dolorum libero.','Quis modi atque adipisci officia et similique vel. Qui provident sequi perferendis.','Quam rerum sed aperiam quia vel. Odio quis dolore sapiente quo voluptas nobis ipsa. Tenetur qui rerum itaque minus.','Draft','web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(5,'JC-MGZY3H4D87',5,1,1,3,'Soluta non eveniet et voluptas itaque dolores quisquam. Adipisci ipsum sunt autem est. Odio corrupti et et dolores laboriosam ad quo. At deserunt neque ea.','Et dolorem error voluptatibus et est. Eveniet recusandae repellat quia sed nesciunt asperiores incidunt. Placeat possimus impedit iusto at. Quidem qui dicta soluta odio ut eligendi quod dolor.','Nulla est nam dolorum voluptas. Est voluptate et ut consequatur sed aliquid. Nisi exercitationem quaerat sit aut id veniam sit. Voluptates expedita nostrum et et autem. Cum iure sit quae qui minima beatae.','Et quisquam eveniet quia non. Suscipit quia ut eos et perspiciatis voluptatem voluptas. Velit facilis sunt ab non dolores.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(6,'JC-ADIXPKMRQG',4,1,3,4,'In neque error iusto velit non consectetur a. Expedita qui voluptatem necessitatibus repudiandae quo. Ut et consequuntur veritatis rerum.','Et doloribus omnis cupiditate voluptas quia consequatur ut. Quidem et eos enim alias officia soluta id. Eveniet quo sequi maiores vel.','Aliquam assumenda dolor odio quis illum omnis voluptatum. Delectus suscipit iusto sequi similique iste officiis. Deleniti nesciunt placeat atque omnis nisi. Similique sunt dolorem ut corporis ad.','Inventore autem omnis necessitatibus quia. Quibusdam soluta sed consequatur consequatur assumenda minus.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(7,'JC-IEDQFL9MWK',11,1,6,5,'Nihil molestias tenetur ut quia ullam quam natus inventore. Repellendus et labore dolores alias facere enim aut magni. Est nulla distinctio autem accusantium.','Qui consequuntur incidunt earum voluptates aperiam recusandae. Totam soluta nostrum placeat inventore ad dolor quos. Vel maiores eius omnis ea ducimus. Id optio est error quis quas porro blanditiis.','Voluptatibus deleniti itaque et aliquam ab. Adipisci temporibus qui laudantium enim. Illo molestiae ipsa ducimus ex.','Dicta ducimus minima laboriosam. Voluptas minima aut doloremque pariatur temporibus minus. Sit id ea unde corporis ea. Omnis voluptatem consectetur omnis ullam a voluptatem.','Draft','web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(8,'JC-I6YU3XMZCK',4,1,3,4,'Corporis ratione dolore impedit sapiente consequuntur illum corrupti. Similique rerum mollitia dolorum. Quo officia pariatur ipsam. Qui nam quia aut animi.','Iure dolorum quam eum minima ipsam consequuntur. A et iure totam ea veritatis quaerat possimus est. Et doloremque provident mollitia optio sapiente laudantium eum.','Atque nihil eum eveniet voluptatibus ullam ad. Quia nobis deleniti accusantium vel tenetur maiores sed. Autem provident eveniet iure doloremque ut voluptas.','Autem sit asperiores est quisquam. Ad nobis eum temporibus enim ut omnis eum. Aspernatur vel nostrum quo nostrum rerum sit ullam.','Draft','web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(9,'JC-7SPGRDHFZL',14,1,3,4,'Pariatur dolor et dicta id omnis consectetur. Doloremque eos sint est.','Dignissimos et nihil omnis optio dolor corporis soluta corrupti. Aut reiciendis ab at nesciunt commodi odio. Occaecati iste voluptatum nihil voluptas maiores temporibus fugiat voluptate. Aspernatur delectus culpa non odio omnis quod.','Ratione reiciendis dignissimos tempora qui ut. Ducimus repellat voluptatem eos est voluptatem molestias. Voluptate laudantium eum voluptatem aliquam sunt voluptatem. Qui enim iusto et aperiam unde quo repellendus amet. Nesciunt magnam ipsa totam natus aut facere.','Explicabo autem et ut perferendis ea eligendi similique. Expedita et molestiae mollitia autem corrupti.','Draft','web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(10,'JC-K3CH9UMOAW',11,1,2,4,'Consequuntur vel ea ut quisquam odio. Omnis sunt cumque repellendus doloremque ut reprehenderit. Ut voluptas eum voluptatem sunt aliquid. Quia repellat voluptatem officia.','Ipsum voluptatem velit quas eos dolorum magni. Voluptates numquam ipsa blanditiis enim repellendus error. Ipsum consequuntur est blanditiis ut consectetur ea. Libero sapiente illum assumenda et. Veniam aut cum non blanditiis a eveniet et.','Numquam voluptas ut repellendus voluptatem. Dignissimos aut repellat quod commodi id. Illo quidem nisi enim sint.','Voluptates natus accusamus quia suscipit consequatur odio. Consequatur laudantium libero et sed sequi neque. Labore eos vel aperiam commodi minima voluptatem sint.','Draft','mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47');
/*!40000 ALTER TABLE `job_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin` json NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` json NOT NULL,
  `garage_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `managers_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'CVT-UV2N87A46I','Toby','CVT','Male',NULL,'[{\"email\": \"max@cvt.com\", \"last_name\": \"CVT\", \"first_name\": \"Max\", \"phone_number\": \"+254712345678\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,NULL,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_achievements`
--

DROP TABLE IF EXISTS `mechanic_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_achievements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` bigint unsigned NOT NULL,
  `achievement_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_achievements`
--

LOCK TABLES `mechanic_achievements` WRITE;
/*!40000 ALTER TABLE `mechanic_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_deduction_schedules`
--

DROP TABLE IF EXISTS `mechanic_deduction_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_deduction_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_id` bigint unsigned NOT NULL,
  `mechanic_deduction_id` bigint unsigned NOT NULL,
  `deduction_date` timestamp NOT NULL,
  `deducted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanic_deduction_schedules_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_deduction_schedules`
--

LOCK TABLES `mechanic_deduction_schedules` WRITE;
/*!40000 ALTER TABLE `mechanic_deduction_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_deduction_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_deductions`
--

DROP TABLE IF EXISTS `mechanic_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_deductions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_value` decimal(8,2) DEFAULT NULL,
  `percentage_value` decimal(8,2) DEFAULT NULL,
  `target_deduction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_frequency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanic_deductions_reference_unique` (`reference`),
  UNIQUE KEY `mechanic_deductions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_deductions`
--

LOCK TABLES `mechanic_deductions` WRITE;
/*!40000 ALTER TABLE `mechanic_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_education`
--

DROP TABLE IF EXISTS `mechanic_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` bigint unsigned NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `level_of_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_of_study` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `still_learn_here` tinyint(1) NOT NULL,
  `certificate_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_education`
--

LOCK TABLES `mechanic_education` WRITE;
/*!40000 ALTER TABLE `mechanic_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_licenses`
--

DROP TABLE IF EXISTS `mechanic_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_licenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` bigint unsigned NOT NULL,
  `license_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `license_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_licenses`
--

LOCK TABLES `mechanic_licenses` WRITE;
/*!40000 ALTER TABLE `mechanic_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_mechanic_deduction`
--

DROP TABLE IF EXISTS `mechanic_mechanic_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_mechanic_deduction` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_deduction_id` int unsigned NOT NULL,
  `mechanic_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_mechanic_deduction`
--

LOCK TABLES `mechanic_mechanic_deduction` WRITE;
/*!40000 ALTER TABLE `mechanic_mechanic_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_mechanic_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_statuses`
--

DROP TABLE IF EXISTS `mechanic_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_statuses`
--

LOCK TABLES `mechanic_statuses` WRITE;
/*!40000 ALTER TABLE `mechanic_statuses` DISABLE KEYS */;
INSERT INTO `mechanic_statuses` VALUES (1,'Pending','2024-10-08 15:43:45','2024-10-08 15:43:45'),(2,'Approved','2024-10-08 15:43:45','2024-10-08 15:43:45'),(3,'Suspended','2024-10-08 15:43:45','2024-10-08 15:43:45');
/*!40000 ALTER TABLE `mechanic_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_tools_and_machine`
--

DROP TABLE IF EXISTS `mechanic_tools_and_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_tools_and_machine` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` bigint unsigned NOT NULL,
  `tools_and_machine_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_tools_and_machine`
--

LOCK TABLES `mechanic_tools_and_machine` WRITE;
/*!40000 ALTER TABLE `mechanic_tools_and_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_tools_and_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_transactions`
--

DROP TABLE IF EXISTS `mechanic_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_id` bigint unsigned NOT NULL,
  `job_card_id` bigint unsigned DEFAULT NULL,
  `mechanic_deduction_id` bigint unsigned DEFAULT NULL,
  `withdrawal_request_id` bigint unsigned DEFAULT NULL,
  `weekly_wages_payout_id` bigint unsigned DEFAULT NULL,
  `amount` decimal(19,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanic_transactions_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_transactions`
--

LOCK TABLES `mechanic_transactions` WRITE;
/*!40000 ALTER TABLE `mechanic_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_withdraw_requests`
--

DROP TABLE IF EXISTS `mechanic_withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_withdraw_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_id` bigint unsigned NOT NULL,
  `amount` decimal(19,2) NOT NULL,
  `phone_number_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpesa_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanic_withdraw_requests_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_withdraw_requests`
--

LOCK TABLES `mechanic_withdraw_requests` WRITE;
/*!40000 ALTER TABLE `mechanic_withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_work_experiences`
--

DROP TABLE IF EXISTS `mechanic_work_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_work_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` bigint unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `still_work_here` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_work_experiences`
--

LOCK TABLES `mechanic_work_experiences` WRITE;
/*!40000 ALTER TABLE `mechanic_work_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `mechanic_work_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanics`
--

DROP TABLE IF EXISTS `mechanics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanic_profile` longtext COLLATE utf8mb4_unicode_ci,
  `blue_collar_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanic_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialized_cars` json DEFAULT NULL,
  `next_of_kin` json DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` json DEFAULT NULL,
  `second_address` json DEFAULT NULL,
  `third_address` json DEFAULT NULL,
  `resume_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanic_status_id` bigint unsigned DEFAULT '1',
  `hourly_rate` double(8,2) DEFAULT NULL,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'green',
  `billing_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_money_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_money_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_money_network` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanics_reference_unique` (`reference`),
  UNIQUE KEY `mechanics_color_code_unique` (`color_code`),
  KEY `mechanics_mechanic_status_id_foreign` (`mechanic_status_id`),
  CONSTRAINT `mechanics_mechanic_status_id_foreign` FOREIGN KEY (`mechanic_status_id`) REFERENCES `mechanic_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanics`
--

LOCK TABLES `mechanics` WRITE;
/*!40000 ALTER TABLE `mechanics` DISABLE KEYS */;
INSERT INTO `mechanics` VALUES (1,'MEC-V2UE4HZW3N','#C86D9E','Lavinia','Adams','Male','http://www.stokes.com/explicabo-eos-quo-perspiciatis-ratione-iusto.html','http://www.lebsack.com/non-maxime-fugit-quaerat','http://emard.com/quis-non-tenetur-rem-voluptatibus',NULL,'Sales team','Auto body Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"salvatore.kuvalis@hotmail.com\", \"last_name\": \"Schultz\", \"first_name\": \"Maritza\", \"phone_number\": \"+15033317901\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,237.19,'platinum',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(2,'MEC-BORCZFUXEH','#15D7A0','Lizeth','Witting','Male','http://www.kovacek.biz/corporis-sint-minus-aspernatur-quia-esse','http://www.thiel.org/rerum-perferendis-repellendus-consequatur-beatae.html','http://www.borer.org/',NULL,'Front office  Secretary','Auto body Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"blair04@kunde.com\", \"last_name\": \"Volkman\", \"first_name\": \"Nichole\", \"phone_number\": \"+19862740856\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,362.22,'gold',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(3,'MEC-WUS2OYCV75','#CFB128','Dora','Nikolaus','Female','http://morar.net/cumque-et-veniam-quas-ex-sed-ea.html','http://www.hegmann.biz/dolorem-et-tenetur-velit','http://stanton.net/',NULL,'Goodman','Petrol engine Mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"keanu18@gmail.com\", \"last_name\": \"Rutherford\", \"first_name\": \"Natasha\", \"phone_number\": \"+16104669815\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,464.97,'blue',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(4,'MEC-RQ7X45BKTS','#5AF02E','Kendra','Baumbach','Male','http://www.boyer.com/voluptatem-qui-sit-accusamus-repellat','http://hessel.com/sed-iusto-velit-voluptatem-et-natus-voluptatum-voluptas','http://ernser.com/aspernatur-sunt-et-numquam-deleniti-amet-corporis-earum.html',NULL,'Craftsman','Auto body Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"carmela.wolff@daniel.info\", \"last_name\": \"Yost\", \"first_name\": \"Brielle\", \"phone_number\": \"+14639946652\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,306.55,'silver',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(5,'MEC-3M65A2D4UV','#B89F24','Alisha','Farrell','Female','https://mclaughlin.info/maxime-autem-et-corporis-ad-ab-mollitia-quibusdam-quae.html','http://www.schumm.info/deserunt-temporibus-culpa-laudantium-nobis-reprehenderit-aspernatur-fugiat-quibusdam','http://www.spinka.net/eos-porro-enim-odit.html',NULL,'Craftsman','General automotive mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"stephan02@hoppe.com\", \"last_name\": \"Murphy\", \"first_name\": \"Selina\", \"phone_number\": \"+16126602446\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,712.98,'platinum',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(6,'MEC-YR7TBKLO34','#02CDF4','Brandy','McLaughlin','Female','https://huels.org/praesentium-laboriosam-quod-blanditiis-atque-neque.html','http://www.parisian.com/qui-perferendis-illum-quia-enim-sequi','http://www.wintheiser.com/libero-ab-placeat-sit-quasi-id-adipisci.html',NULL,'Sales team','General automotive mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"chadd.stehr@emmerich.com\", \"last_name\": \"Pouros\", \"first_name\": \"Erna\", \"phone_number\": \"+12198571856\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,811.75,'red',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(7,'MEC-FPYAQZM76K','#093C74','Rebeca','DuBuque','Male','http://johnston.org/architecto-est-laudantium-sunt-tenetur-quis-mollitia-non','http://kling.biz/','http://parker.com/quo-dolorum-recusandae-praesentium-porro-quia-sed-a',NULL,'Floor controller','Automatic transmission mech','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"etremblay@aufderhar.biz\", \"last_name\": \"McCullough\", \"first_name\": \"Bailey\", \"phone_number\": \"+12398190691\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,913.35,'blue',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(8,'MEC-TE978IC4KN','#9782A0','Myrna','Mraz','Male','http://www.oconner.com/repellendus-amet-placeat-cumque-incidunt-explicabo-nisi-quos-iusto.html','http://www.pfannerstill.org/sed-itaque-est-facilis-neque','https://www.cummings.com/beatae-error-praesentium-consequuntur-perspiciatis',NULL,'Quality supervisor','Wiring and lights Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"jschmitt@gmail.com\", \"last_name\": \"Dickinson\", \"first_name\": \"Darby\", \"phone_number\": \"+16826323668\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,918.73,'gold',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(9,'MEC-RG9X7ZMITV','#534A62','Jevon','Hansen','Female','http://langworth.com/fugit-laudantium-non-asperiores-et-voluptatem-in-molestiae-quas','http://lebsack.com/','http://funk.com/',NULL,'Branch manager','Service Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"ratke.thomas@smith.com\", \"last_name\": \"Lueilwitz\", \"first_name\": \"Malvina\", \"phone_number\": \"+17699020312\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,985.53,'platinum',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(10,'MEC-R5KDWANYI2','#F01943','Talia','Mills','Female','http://www.johns.com/est-accusamus-eveniet-nihil-quidem-non-repellendus-quisquam-sed.html','https://www.robel.com/est-commodi-sed-illum-sed-neque-in-odit-vel','http://www.bode.com/illum-temporibus-reprehenderit-deserunt-atque-aut-iusto-molestiae',NULL,'Front office  Secretary','Service Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"njakubowski@yahoo.com\", \"last_name\": \"Torp\", \"first_name\": \"Adam\", \"phone_number\": \"+19733005158\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,427.43,'blue',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(11,'MEC-XVTEOD3N4Y','#64EB7A','Brian','Nitzsche','Female','http://www.kozey.org/minima-ab-asperiores-tempora-voluptatem','http://wisozk.biz/ut-possimus-id-quidem-vel','http://braun.com/facere-architecto-velit-adipisci-ut.html',NULL,'Service advisor','General automotive mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"lehner.caesar@gmail.com\", \"last_name\": \"Schuppe\", \"first_name\": \"Andreane\", \"phone_number\": \"+17549383092\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,678.82,'red',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(12,'MEC-WITRL473OH','#CAEF2D','Grant','Lehner','Male','http://rutherford.com/autem-eos-tenetur-est-ut-minima-libero-omnis','http://www.schmeler.org/incidunt-pariatur-voluptatem-recusandae-a','http://www.heller.com/sed-eum-id-eligendi-consequuntur-reprehenderit-in-soluta-doloremque',NULL,'Technician','Service Mechanics','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"oschaefer@erdman.com\", \"last_name\": \"Waters\", \"first_name\": \"Ezra\", \"phone_number\": \"+14077325595\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,338.92,'red',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(13,'MEC-ZDF927RC3E','#64A72D','Jakayla','O\'Connell','Male','http://konopelski.biz/sit-enim-molestiae-repellat-labore-dignissimos-rerum-fugiat','http://homenick.com/vitae-laudantium-architecto-quam-neque-vel-et','http://eichmann.com/assumenda-voluptatem-eligendi-ea-alias-laborum-fuga-omnis-ut',NULL,'Technician','Diesel engine Mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"cummerata.broderick@senger.org\", \"last_name\": \"Weimann\", \"first_name\": \"Lue\", \"phone_number\": \"+16789508973\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,109.95,'platinum',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(14,'MEC-2WNCG5VBL6','#EDF216','Serena','Torp','Male','https://stark.com/minus-et-quam-occaecati-vel.html','http://www.berge.com/fuga-velit-rerum-velit-veritatis-incidunt','http://www.torphy.org/quisquam-amet-voluptatem-ex-magni-odit',NULL,'Quality supervisor','General automotive mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"kulas.tristin@yahoo.com\", \"last_name\": \"Jones\", \"first_name\": \"Lupe\", \"phone_number\": \"+13179978915\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,2,116.60,'platinum',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(15,'MEC-C2AFRHNMG9','#47C9A1','Johnnie','Walker','Female','https://deckow.com/quasi-ab-asperiores-iusto-natus-est-eum.html','http://www.wilkinson.com/','http://www.mills.net/eos-et-voluptatem-quis-ea-inventore',NULL,'Craftsman','Petrol engine Mechanic','[{\"make\": \"BMW\", \"model\": \"Outback\"}, {\"make\": \"Volkswagen\", \"model\": \"Outback\"}]','[{\"email\": \"ebert.lavon@hintz.com\", \"last_name\": \"Schulist\", \"first_name\": \"Lew\", \"phone_number\": \"+19856985587\"}]','Kenya','Nairobi City','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',NULL,NULL,NULL,1,688.47,'blue',NULL,NULL,NULL,NULL,1,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45');
/*!40000 ALTER TABLE `mechanics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_26_105159_create_sessions_table',1),(7,'2023_01_04_184105_create_mechanic_statuses_table',1),(8,'2023_01_04_211822_create_managers_table',1),(9,'2023_01_05_185854_create_mechanics_table',1),(10,'2023_01_07_124405_create_permission_tables',1),(11,'2023_01_08_153925_create_customers_table',1),(12,'2023_01_15_115707_create_activity_log_table',1),(13,'2023_01_15_115708_add_event_column_to_activity_log_table',1),(14,'2023_01_15_115709_add_batch_uuid_column_to_activity_log_table',1),(15,'2023_01_17_231153_create_comments_table',1),(16,'2023_01_19_095515_create_suspended_entities_table',1),(17,'2023_01_25_102625_create_garages_table',1),(18,'2023_03_16_231418_create_garage_specializations_table',1),(19,'2023_03_20_141525_create_vehicles_table',1),(20,'2023_04_29_152550_create_job_cards_table',1),(21,'2023_05_15_221823_create_jobs_table',1),(22,'2023_05_26_124649_create_services_table',1),(23,'2023_05_27_151139_create_job_card_service_table',1),(24,'2023_06_03_144459_create_vehicle_models_table',1),(25,'2023_06_09_120832_create_invoices_table',1),(26,'2023_06_09_121410_create_mpesa_payments_table',1),(27,'2023_06_10_122740_create_pending_transactions_table',1),(28,'2023_06_10_152449_create_cash_payments_table',1),(29,'2023_06_26_100516_create_products_table',1),(30,'2023_07_10_182523_create_service_categories_table',1),(31,'2023_07_21_174040_create_garage_product_table',1),(32,'2023_07_24_125451_create_product_categories_table',1),(33,'2023_07_24_132731_create_product_sub_categories_table',1),(34,'2023_07_29_134605_create_garage_product_transfers_table',1),(35,'2023_07_29_143811_create_product_distributions_table',1),(36,'2023_07_30_120541_create_product_vehicle_model_table',1),(37,'2023_08_01_160420_create_vehicle_details_table',1),(38,'2023_08_03_121100_create_product_manufacturers_table',1),(39,'2023_08_09_125516_create_pos_orders_table',1),(40,'2023_08_09_170314_create_pos_order_product_table',1),(41,'2023_08_10_182852_create_pos_order_service_table',1),(42,'2023_09_08_215532_create_quotations_table',1),(43,'2023_09_11_101651_create_quotation_service_table',1),(44,'2023_09_29_215657_create_product_quotation_table',1),(45,'2023_10_11_132529_create_repair_procedures_table',1),(46,'2023_10_13_113758_create_repair_procedure_vehicle_model_table',1),(47,'2023_10_14_115418_create_repair_procedure_comments_table',1),(48,'2023_10_16_141344_create_job_card_repair_procedure_table',1),(49,'2023_11_27_110946_create_pre_purchase_inspection_forms_table',1),(50,'2023_12_08_203713_create_pre_purchase_inspection_form_questions_table',1),(51,'2023_12_28_182704_create_pre_purchase_inspection_bookings_table',1),(52,'2023_12_30_155929_create_pre_purchase_inspection_booking_invoices_table',1),(53,'2024_01_08_160432_create_forums_table',1),(54,'2024_01_08_161144_create_forum_posts_table',1),(55,'2024_01_08_162731_create_forum_invites_table',1),(56,'2024_01_08_173316_create_forum_reports_table',1),(57,'2024_01_08_190202_create_forum_roles_table',1),(58,'2024_01_08_190517_create_forum_users_table',1),(59,'2024_01_08_192523_create_forum_post_comments_table',1),(60,'2024_01_08_194550_create_forum_post_reactions_table',1),(61,'2024_01_14_165156_create_pre_purchase_inspection_booking_requests_table',1),(62,'2024_02_28_224401_create_tools_and_machines_table',1),(63,'2024_03_04_163759_create_mechanic_tools_and_machine_table',1),(64,'2024_03_17_111535_create_product_service_table',1),(65,'2024_03_17_113128_create_service_tools_and_machine_table',1),(66,'2024_03_22_200722_create_withdrawal_requests_table',1),(67,'2024_03_22_211739_create_weekly_wages_payouts_table',1),(68,'2024_04_02_185300_create_mechanic_deductions_table',1),(69,'2024_04_06_172312_create_mechanic_mechanic_deduction_table',1),(70,'2024_04_22_150923_create_mechanic_transactions_table',1),(71,'2024_04_23_163429_create_mechanic_withdraw_requests_table',1),(72,'2024_05_07_110104_create_mechanic_deduction_schedules_table',1),(73,'2024_07_29_170230_create_mechanic_work_experiences_table',1),(74,'2024_08_11_125701_create_mechanic_education_table',1),(75,'2024_08_12_114009_create_mechanic_licenses_table',1),(76,'2024_08_12_124546_create_mechanic_achievements_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpesa_payments`
--

DROP TABLE IF EXISTS `mpesa_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpesa_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `merchant_request_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_request_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_code` int DEFAULT NULL,
  `result_desc` text COLLATE utf8mb4_unicode_ci,
  `amount` double(8,2) unsigned DEFAULT NULL,
  `mpesa_receipt_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpesa_payments`
--

LOCK TABLES `mpesa_payments` WRITE;
/*!40000 ALTER TABLE `mpesa_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mpesa_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `pending_transactions`
--

DROP TABLE IF EXISTS `pending_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pending_transactions_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_transactions`
--

LOCK TABLES `pending_transactions` WRITE;
/*!40000 ALTER TABLE `pending_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'view-roles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(2,'create-roles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(3,'edit-roles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(4,'delete-roles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(5,'view-managers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(6,'create-managers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(7,'edit-managers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(8,'suspend-managers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(9,'restore-managers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(10,'view-customers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(11,'create-customers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(12,'edit-customers','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(13,'view-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(14,'create-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(15,'edit-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(16,'suspend-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(17,'restore-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(18,'approve-mechanics','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(19,'view-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(20,'create-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(21,'edit-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(22,'delete-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(23,'approve-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(24,'suspend-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(25,'restore-garages','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(26,'view-garage-specializations','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(27,'create-garage-specializations','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(28,'edit-garage-specializations','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(29,'delete-garage-specializations','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(30,'view-vehicles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(31,'create-vehicles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(32,'edit-vehicles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(33,'delete-vehicles','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(34,'view-vehicle-models','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(35,'create-vehicle-models','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(36,'edit-vehicle-models','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(37,'delete-vehicle-models','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(38,'view-services','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(39,'create-services','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(40,'edit-services','web','2024-10-08 15:43:43','2024-10-08 15:43:43'),(41,'delete-services','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(42,'view-job-cards','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(43,'create-job-cards','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(44,'edit-job-cards','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(45,'delete-job-cards','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(46,'view-products','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(47,'create-products','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(48,'edit-products','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(49,'delete-products','web','2024-10-08 15:43:44','2024-10-08 15:43:44'),(50,'view-point-of-sale','web','2024-10-08 15:43:44','2024-10-08 15:43:44');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `pos_order_product`
--

DROP TABLE IF EXISTS `pos_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `unit_price` double(8,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_order_product`
--

LOCK TABLES `pos_order_product` WRITE;
/*!40000 ALTER TABLE `pos_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_order_service`
--

DROP TABLE IF EXISTS `pos_order_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_order_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_order_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `job_card_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_order_service`
--

LOCK TABLES `pos_order_service` WRITE;
/*!40000 ALTER TABLE `pos_order_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_order_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_orders`
--

DROP TABLE IF EXISTS `pos_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `garage_id` bigint unsigned NOT NULL,
  `paymentable_id` bigint unsigned DEFAULT NULL,
  `paymentable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `served_by` bigint unsigned DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `collector_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collector_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collector_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collector_id_number` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_orders_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_orders`
--

LOCK TABLES `pos_orders` WRITE;
/*!40000 ALTER TABLE `pos_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_purchase_inspection_booking_invoices`
--

DROP TABLE IF EXISTS `pre_purchase_inspection_booking_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_purchase_inspection_booking_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_purchase_inspection_booking_id` bigint unsigned NOT NULL,
  `paymentable_id` bigint unsigned DEFAULT NULL,
  `paymentable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_purchase_inspection_booking_invoices`
--

LOCK TABLES `pre_purchase_inspection_booking_invoices` WRITE;
/*!40000 ALTER TABLE `pre_purchase_inspection_booking_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `pre_purchase_inspection_booking_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_purchase_inspection_booking_requests`
--

DROP TABLE IF EXISTS `pre_purchase_inspection_booking_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_purchase_inspection_booking_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_location` json DEFAULT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `garage_id` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `accepted_by` bigint unsigned DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint unsigned DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pre_purchase_inspection_booking_requests_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_purchase_inspection_booking_requests`
--

LOCK TABLES `pre_purchase_inspection_booking_requests` WRITE;
/*!40000 ALTER TABLE `pre_purchase_inspection_booking_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `pre_purchase_inspection_booking_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_purchase_inspection_bookings`
--

DROP TABLE IF EXISTS `pre_purchase_inspection_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_purchase_inspection_bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_location` json DEFAULT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `uploaded_scanned_document_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_purchase_inspection_form_id` bigint unsigned DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `document_uploaded_by` bigint unsigned DEFAULT NULL,
  `completed_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_purchase_inspection_bookings`
--

LOCK TABLES `pre_purchase_inspection_bookings` WRITE;
/*!40000 ALTER TABLE `pre_purchase_inspection_bookings` DISABLE KEYS */;
INSERT INTO `pre_purchase_inspection_bookings` VALUES (1,'PPB-TXMN3VOEC6',11,'Bruen, Kshlerin and Mertz','+19867696754','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(2,'PPB-BCXGSMTZ4A',2,'Weissnat, Langworth and O\'Reilly','+15203286435','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',2,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(3,'PPB-39PK7LHXZN',2,'Boyer Group','+15649900724','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',6,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(4,'PPB-QAUXG5IW79',10,'Mertz, Bruen and Walsh','+12794904934','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',5,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(5,'PPB-RC6NEOFXDM',12,'Witting-Schmidt','+15614537870','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',4,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(6,'PPB-SOLDCHFBI4',11,'Gleichner-Breitenberg','+13644385173','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',2,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(7,'PPB-ITXOWHCA7M',13,'Stroman-Welch','+15867988160','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',4,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(8,'PPB-VFZMSI5BAG',7,'Stokes-Donnelly','+16825602541','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',5,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(9,'PPB-P3SLBYCH2X',15,'Kling and Sons','+15733173926','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',2,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(10,'PPB-7DWLEP39IS',6,'Hill Ltd','+14452623352','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',2,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(11,'PPB-SVTH9A4MXC',12,'Pfannerstill, Roob and Roberts','+14696375297','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',1,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(12,'PPB-5B92NHPYGD',15,'Pfeffer, Hudson and Murazik','+13255830389','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',6,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(13,'PPB-57ZE8OF26L',4,'Streich, Schowalter and Weber','+14456534225','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',3,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(14,'PPB-93TLRFHBQ4',13,'Hill-Rippin','+13122835238','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',4,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(15,'PPB-7SDTPKVUQ4',3,'Rice, Halvorson and Rath','+12539207251','{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}',7,'Draft',NULL,NULL,NULL,1,NULL,NULL,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49');
/*!40000 ALTER TABLE `pre_purchase_inspection_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_purchase_inspection_form_questions`
--

DROP TABLE IF EXISTS `pre_purchase_inspection_form_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_purchase_inspection_form_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pre_purchase_inspection_form_id` bigint unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_purchase_inspection_form_questions`
--

LOCK TABLES `pre_purchase_inspection_form_questions` WRITE;
/*!40000 ALTER TABLE `pre_purchase_inspection_form_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pre_purchase_inspection_form_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_purchase_inspection_forms`
--

DROP TABLE IF EXISTS `pre_purchase_inspection_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_purchase_inspection_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_inspection_service_price` double(8,2) unsigned NOT NULL,
  `garage_id` bigint unsigned NOT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'basic',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pre_purchase_inspection_forms_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_purchase_inspection_forms`
--

LOCK TABLES `pre_purchase_inspection_forms` WRITE;
/*!40000 ALTER TABLE `pre_purchase_inspection_forms` DISABLE KEYS */;
INSERT INTO `pre_purchase_inspection_forms` VALUES (1,'PPF-O2DQEYRZ6TB4','Architecto et ea et.',3229.00,3,3,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(2,'PPF-M7NECI36XOPF','Qui sed a numquam ratione.',7972.00,4,6,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(3,'PPF-S6L4CYNQR72O','Aut cumque ipsum est.',6044.00,3,3,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(4,'PPF-VK29U83EZQFX','Ea nulla modi iure pariatur.',3217.00,4,4,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(5,'PPF-SZMDTPB6HO9N','Illo natus quibusdam facilis.',2117.00,3,1,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(6,'PPF-ZY95LPQU3478','Veniam rem fuga illum.',2497.00,4,6,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(7,'PPF-2T6FG587PM4E','Possimus magni esse quis ut.',6864.00,2,2,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(8,'PPF-HY2QFVBWL8Z4','Enim vel aut aut.',6505.00,5,3,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(9,'PPF-NGIAVM2QTH3E','Ut enim mollitia qui qui.',2849.00,3,5,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(10,'PPF-KHPBUOIL57VC','Beatae fugit qui voluptas.',4395.00,5,4,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(11,'PPF-FDWYS6ZCN483','Est eligendi et quia nemo.',6332.00,5,4,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(12,'PPF-O5ILN6KAXWRB','In qui error eos quis.',6665.00,2,3,'Draft','basic',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49');
/*!40000 ALTER TABLE `pre_purchase_inspection_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Gearbox/Transmission','2024-10-08 15:43:47','2024-10-08 15:43:47'),(2,'Axle Suspension System','2024-10-08 15:43:47','2024-10-08 15:43:47'),(3,'Engine','2024-10-08 15:43:47','2024-10-08 15:43:47'),(4,'Wheels','2024-10-08 15:43:47','2024-10-08 15:43:47'),(5,'Lighting System','2024-10-08 15:43:47','2024-10-08 15:43:47'),(6,'Body & Frame System','2024-10-08 15:43:47','2024-10-08 15:43:47'),(7,'Electric vehicles','2024-10-08 15:43:47','2024-10-08 15:43:47'),(8,'Steering System','2024-10-08 15:43:47','2024-10-08 15:43:47'),(9,'Air Conditioning System','2024-10-08 15:43:48','2024-10-08 15:43:48'),(10,'Accessories','2024-10-08 15:43:48','2024-10-08 15:43:48'),(11,'Exhaust System','2024-10-08 15:43:48','2024-10-08 15:43:48'),(12,'Lubricants','2024-10-08 15:43:48','2024-10-08 15:43:48'),(13,'Braking System','2024-10-08 15:43:48','2024-10-08 15:43:48'),(14,'Hybrid vehicles','2024-10-08 15:43:48','2024-10-08 15:43:48');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_distributions`
--

DROP TABLE IF EXISTS `product_distributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_distributions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `garage_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `distributed_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_distributions`
--

LOCK TABLES `product_distributions` WRITE;
/*!40000 ALTER TABLE `product_distributions` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_distributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_manufacturers`
--

DROP TABLE IF EXISTS `product_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_manufacturers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_manufacturers_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_manufacturers`
--

LOCK TABLES `product_manufacturers` WRITE;
/*!40000 ALTER TABLE `product_manufacturers` DISABLE KEYS */;
INSERT INTO `product_manufacturers` VALUES (1,'KYB','2024-10-08 15:43:48','2024-10-08 15:43:48'),(2,'Nissan','2024-10-08 15:43:48','2024-10-08 15:43:48'),(3,'Bosch','2024-10-08 15:43:48','2024-10-08 15:43:48'),(4,'Shell','2024-10-08 15:43:48','2024-10-08 15:43:48'),(5,'NGK','2024-10-08 15:43:48','2024-10-08 15:43:48'),(6,'Toyota','2024-10-08 15:43:48','2024-10-08 15:43:48');
/*!40000 ALTER TABLE `product_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_quotation`
--

DROP TABLE IF EXISTS `product_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_quotation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_quotation`
--

LOCK TABLES `product_quotation` WRITE;
/*!40000 ALTER TABLE `product_quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_service`
--

DROP TABLE IF EXISTS `product_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_service`
--

LOCK TABLES `product_service` WRITE;
/*!40000 ALTER TABLE `product_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sub_categories`
--

DROP TABLE IF EXISTS `product_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sub_categories`
--

LOCK TABLES `product_sub_categories` WRITE;
/*!40000 ALTER TABLE `product_sub_categories` DISABLE KEYS */;
INSERT INTO `product_sub_categories` VALUES (1,'Quam',12,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(2,'Veniam',7,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(3,'Ut',12,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(4,'Corrupti',5,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(5,'Veritatis',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(6,'Et',13,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(7,'Dolores',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(8,'Consequatur',7,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(9,'Veritatis',1,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(10,'Omnis',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(11,'Laboriosam',13,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(12,'Ratione',12,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(13,'Dolorum',3,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(14,'Aliquid',1,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(15,'Eaque',10,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(16,'Autem',13,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(17,'Magnam',3,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(18,'Distinctio',5,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(19,'Illum',6,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(20,'Aut',12,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(21,'Molestias',13,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(22,'Consequatur',5,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(23,'Nesciunt',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(24,'Enim',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(25,'Amet',8,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(26,'Libero',8,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(27,'Et',1,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(28,'Amet',9,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(29,'Aperiam',6,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(30,'Alias',8,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(31,'Nostrum',8,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(32,'Iusto',7,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(33,'Laboriosam',5,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(34,'Ut',12,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(35,'Quam',7,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(36,'Voluptas',8,'2024-10-08 15:43:48','2024-10-08 15:43:48');
/*!40000 ALTER TABLE `product_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_vehicle_model`
--

DROP TABLE IF EXISTS `product_vehicle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_vehicle_model` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_vehicle_model`
--

LOCK TABLES `product_vehicle_model` WRITE;
/*!40000 ALTER TABLE `product_vehicle_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_vehicle_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `part_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `reorder_stock_level` int NOT NULL,
  `purchase_price` double(8,2) unsigned NOT NULL,
  `selling_price` double(8,2) unsigned NOT NULL,
  `min_selling_price` double(8,2) unsigned NOT NULL,
  `product_vehicles` json NOT NULL,
  `product_manufacturer_id` bigint unsigned NOT NULL,
  `oem_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `part_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chassis_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int unsigned NOT NULL,
  `qr_code_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_rating` double(2,1) unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `sub_category_id` bigint unsigned NOT NULL,
  `vehicle_system` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_sub_system` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_policy_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'P-5WV7IDXHOR',NULL,'new','Fuel gauge',9,5,36.79,85.35,571.43,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',1,'850-782-286','018-770-850','900-570-472','20x20x20',2858,NULL,3.5,4,1,'Body','Body','Courier',NULL,NULL,'Aspernatur placeat magni nisi unde. Aut quia cum velit hic. Et et repellendus cum molestias praesentium laudantium.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(2,'P-TM8C4HFNOL',NULL,'used','Radiator',8,7,19.82,472.29,545.58,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',3,'863-738-866','176-704-052','577-140-217','10x10x10',1004576,NULL,3.1,14,1,'Electrical','Body','Pickup',NULL,NULL,'Eligendi nihil voluptatem ducimus. Officia error repellat est in modi aut iste velit. Adipisci dolores minus cum exercitationem rerum commodi unde.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(3,'P-8CQKB49VWX',NULL,'used','Gear Box',8,9,38.44,722.55,839.91,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',5,'042-907-119','939-725-330','275-085-886','40x40x40',13,NULL,2.0,11,1,'Interior','Electrical','Courier',NULL,NULL,'Soluta possimus et voluptate itaque est. Ex sunt non mollitia maxime eos accusamus pariatur. Nihil quia nihil enim fugiat est dolorem quia. Eos est officiis mollitia inventore veniam dicta et.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(4,'P-KB9SYVMFGO',NULL,'used','Headlights',7,6,59.91,407.42,421.71,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',5,'068-394-125','901-691-097','845-593-554','10x10x10',5817,NULL,4.0,7,32,'Engine','Engine','Courier',NULL,NULL,'Optio non necessitatibus deleniti voluptatum magni exercitationem suscipit. Odit ut sed officiis architecto repellendus quasi. Enim voluptatem necessitatibus sint ullam. Aut velit doloremque quam voluptas iure.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(5,'P-VITN92WLM4',NULL,'refurbished','Clutch',4,0,80.02,29.90,830.28,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',5,'960-200-011','408-861-405','152-366-146','30x30x30',181189498,NULL,1.1,13,6,'Engine','Body','Pickup',NULL,NULL,'Suscipit sunt consequatur atque voluptates qui maxime eos. Ullam ea corrupti ullam ut perspiciatis. Aut totam est et quia asperiores consequatur.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(6,'P-8C75VH3L2D',NULL,'used','Steering wheel',3,5,40.68,365.58,637.05,'[{\"trim\": \"\", \"model_name\": \"\", \"vehicle_make\": \"\", \"year_of_manufacture\": \"\"}]',1,'375-479-218','406-549-296','430-313-804','10x10x10',76,NULL,3.7,2,1,'Electrical','Body','Pickup',NULL,NULL,'Qui perspiciatis ex doloribus ut quia. Nesciunt aliquid ex accusantium sed deserunt.',1,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_service`
--

DROP TABLE IF EXISTS `quotation_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_repair_time` double(8,2) unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_service`
--

LOCK TABLES `quotation_service` WRITE;
/*!40000 ALTER TABLE `quotation_service` DISABLE KEYS */;
INSERT INTO `quotation_service` VALUES (1,14,2,NULL,2.00,'<p>luvbjhknlm;fgdhgf</p>',1,NULL,'2024-10-08 19:44:09','2024-10-08 19:44:09');
/*!40000 ALTER TABLE `quotation_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `vehicle_id` bigint unsigned NOT NULL,
  `issue_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `initiated_by` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `accepted_at` timestamp NULL DEFAULT NULL,
  `accepted_by` bigint unsigned DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quotations_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` VALUES (1,'Q-M5YP4A3SVQ68',NULL,'Quia neque et est.',1,7,1,'Doloremque quisquam voluptas quod dicta ea minus esse.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(2,'Q-HGYSUC45LN96',NULL,'Aut est veniam explicabo.',3,7,1,'Veniam ut quo et.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(3,'Q-EDVNWO3MXFSU',NULL,'Sit maxime fugiat omnis.',3,7,1,'Repellat corrupti non non nihil et qui expedita.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(4,'Q-DILTQ8UAGMVP',NULL,'Recusandae sequi aut debitis.',3,7,1,'Necessitatibus non harum a beatae voluptatem omnis consequatur.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(5,'Q-DLKCOGF5TMVH',NULL,'Voluptatem error at qui ab.',3,7,1,'Rerum dolorum voluptatibus et architecto.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(6,'Q-R4YELGSXPIQW',NULL,'Assumenda earum ea facere.',3,7,1,'Nemo sed modi nesciunt vitae.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(7,'Q-H9WXZASBUGQ4',NULL,'Enim ut ut at cum eaque eius.',3,7,1,'Doloribus voluptatem rerum consequuntur molestiae ab.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(8,'Q-PNIO8BE5SZKG',NULL,'Quis provident porro atque.',5,7,1,'Suscipit ut nihil et ducimus qui.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(9,'Q-4QM6EHCL92OK',NULL,'A unde sunt maxime.',4,7,1,'Et tempora doloremque nesciunt dolorem sed laudantium.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(10,'Q-KFL6E792NHW8',NULL,'Saepe in rerum unde rem odio.',1,7,1,'Omnis sit deserunt nobis suscipit aliquid.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(11,'Q-QMYS3UR7AHZV',NULL,'Eum quis quia aut.',5,7,1,'Unde beatae quia eaque.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(12,'Q-RFOV3B4MEDZW',NULL,'Sit a necessitatibus est.',5,7,1,'Harum sit voluptatem quos.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(13,'Q-PWTL9F2I6OSY',NULL,'Itaque enim ut corporis.',3,7,1,'Libero et sunt non voluptas.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(14,'Q-QO8CEMKH2RBG',NULL,'Eos omnis minima nemo.',1,7,1,'Et tempora earum rerum error alias fuga rem.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(15,'Q-BZL5H263QNTA',NULL,'Sed qui deserunt animi.',5,7,1,'Voluptas dolorum qui consequatur.',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 15:43:48','2024-10-08 15:43:48'),(16,'Q-LRSDWN59UH2K',NULL,'KCZ 123A Gearbox service',1,1,2,'<p>vgjhbkjl;gnvhjkmg</p>',1,'Pending',NULL,NULL,NULL,NULL,NULL,'2024-10-08 19:37:24','2024-10-08 19:37:24');
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_procedure_comments`
--

DROP TABLE IF EXISTS `repair_procedure_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_procedure_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `repair_procedure_id` bigint unsigned NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `commented_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_procedure_comments`
--

LOCK TABLES `repair_procedure_comments` WRITE;
/*!40000 ALTER TABLE `repair_procedure_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_procedure_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_procedure_vehicle_model`
--

DROP TABLE IF EXISTS `repair_procedure_vehicle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_procedure_vehicle_model` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `repair_procedure_id` bigint unsigned NOT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_procedure_vehicle_model`
--

LOCK TABLES `repair_procedure_vehicle_model` WRITE;
/*!40000 ALTER TABLE `repair_procedure_vehicle_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_procedure_vehicle_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_procedures`
--

DROP TABLE IF EXISTS `repair_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_procedures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_access_level` json NOT NULL,
  `customer_report` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_summary` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `sub_category_id` bigint unsigned NOT NULL,
  `vehicle_engine_variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_gearbox_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compatible_vehicles` json DEFAULT NULL,
  `required_parts` json DEFAULT NULL,
  `required_tools` json NOT NULL,
  `important_disclaimer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `caution` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_links` json DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_procedures`
--

LOCK TABLES `repair_procedures` WRITE;
/*!40000 ALTER TABLE `repair_procedures` DISABLE KEYS */;
INSERT INTO `repair_procedures` VALUES (1,'RP-CEOMZ4XPLB','3G4TY2N1WECDS','566376','[\"3\", \"4\"]','FVTB4Y5N6','4EXTCRYFVGB4HN5102',1,9,'TDERFYG45','TRY456','[{\"trim\": \"SE\", \"model_name\": \"Outback\", \"vehicle_make\": \"Nissan\", \"availableTrims\": [\"SE\", \"LX\"], \"availableYears\": [\"2019\", \"2022\", \"1985\", \"1998\"], \"availableModels\": [\"Outback\"], \"year_of_manufacture\": \"2019\"}]','[{\"image\": \"repair-procedure-documents/RP-CEOMZ4XPLB/required-parts/6xABvbHoPxTTPW6xViPq1nEKWAsszzbdOd5d6bcE.jpg\", \"label\": \"FCHGV1B2N30E\"}]','[{\"tool\": \"XRTCYVG4BH516\"}]','<p>XETCRYV4BH512</p>','<p>TEZSXRDCTFGY2H12</p>','<p>SHGCFVB1HN203</p>','[{\"link\": \"FGH\", \"label\": \"DGCFB1HN\"}]',1,NULL,'2024-10-08 19:09:49','2024-10-08 19:09:49',NULL);
/*!40000 ALTER TABLE `repair_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'CEO','web','2024-10-08 15:43:44','2024-10-08 15:43:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_packages` tinyint(1) NOT NULL DEFAULT '0',
  `packages` json DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES (1,'Regular Services','Category for Regular Services',0,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(2,'Scheduled Maintenance','Category for Scheduled Maintenance Services',0,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(3,'Chasis & Body Maintenance','Category for Chasis & Body Maintenance Services',0,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(4,'Emergency/Breakdown Maintenance','Category for Emergency/Breakdown Maintenance Services',0,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47');
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_tools_and_machine`
--

DROP TABLE IF EXISTS `service_tools_and_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_tools_and_machine` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `tools_and_machine_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_tools_and_machine`
--

LOCK TABLES `service_tools_and_machine` WRITE;
/*!40000 ALTER TABLE `service_tools_and_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_tools_and_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `video_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_category_id` bigint unsigned DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage_id` bigint unsigned DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `minimum_price` double(8,2) DEFAULT NULL,
  `estimate_repair_time` double(8,2) unsigned DEFAULT NULL,
  `no_of_mechanics` int DEFAULT NULL,
  `main_mechanic_pay` double(8,2) unsigned DEFAULT NULL,
  `assistant_mechanic_pay` double(8,2) unsigned DEFAULT NULL,
  `trainee_mechanic_pay` double(8,2) unsigned DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_reference_unique` (`reference`),
  UNIQUE KEY `services_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'SVWXYZ23',NULL,NULL,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(2,'SRMXCW28',NULL,NULL,'Car Waxing',1,NULL,2,11737.00,11637.00,1.00,1,500.00,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47',NULL),(3,'SKZWB6MC',NULL,NULL,'Car Polishing',1,NULL,1,12752.00,12652.00,1.00,1,500.00,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47',NULL),(4,'SCPSBG2F',NULL,NULL,'Wheel Balancing',3,NULL,1,57836.00,57736.00,1.00,1,500.00,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47',NULL),(5,'S86RK2O9',NULL,NULL,'Wheel Alignment',2,NULL,1,29024.00,28924.00,1.00,1,500.00,NULL,NULL,1,NULL,'2024-10-08 15:43:47','2024-10-08 15:43:47',NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('mZ5u3XQWJvAhacSBXRLnSYJ6j8ZpVNb0PHCn4IQi',1,'41.90.5.72','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoid0xuem5uS0Z1d1VnMzJ6dk5sc2RBQTJkaXFTNkVkMWVMS1dkZ2tWRSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY4OiJodHRwczovL2N2dC5jb2RlYnJlZXplLmNvLmtlL2luc3BlY3Rpb24tYm9va2luZ3Mvc2hvdy9QUEItUkM2TkVPRlhETSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbGlTY1lRSHUwU2J2U3k2czRaRlEzZUtBeHFXMnpYcENvM1ZvLzNOeDdOVllUd2FGNm9maWkiO30=',1728413208),('SktxAKjxJ3tv09Y4lizbx7Dt9rtMRcvAO5kR6PgR',NULL,'198.235.24.124','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkNxckp6NldOckpxbTdUaXZQdXhsUDFFanlMUjdWdUgwM0VZcWcwTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cHM6Ly9jdnQuY29kZWJyZWV6ZS5jby5rZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwczovL2N2dC5jb2RlYnJlZXplLmNvLmtlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1728417409),('td7quuMEjZvuS1Z51n6ywnLCWQT72puUZ1W05hNI',NULL,'144.126.228.219','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/111.0.5563.146 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTZNV2MzSGt0VDFZZVRsTVdJd2hqT2NzQWlySmJTNmhFNTRDbllvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vY3Z0LmNvZGVicmVlemUuY28ua2UvcGRmL1EtUU84Q0VNS0gyUkJHL3F1b3RhdGlvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1728405882);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspended_entities`
--

DROP TABLE IF EXISTS `suspended_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspended_entities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entityable_id` bigint unsigned DEFAULT NULL,
  `entityable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `suspended_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspended_entities`
--

LOCK TABLES `suspended_entities` WRITE;
/*!40000 ALTER TABLE `suspended_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspended_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools_and_machines`
--

DROP TABLE IF EXISTS `tools_and_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tools_and_machines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `video_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garage_branch_id` bigint unsigned NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custodian_assigned_id` bigint unsigned NOT NULL,
  `last_inspection_date` date NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` double(8,2) unsigned NOT NULL,
  `quantity` int NOT NULL,
  `distributed` int NOT NULL DEFAULT '0',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` double(8,2) unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tools_and_machines_reference_unique` (`reference`),
  UNIQUE KEY `tools_and_machines_name_unique` (`name`),
  UNIQUE KEY `tools_and_machines_serial_number_unique` (`serial_number`),
  UNIQUE KEY `tools_and_machines_assigned_code_unique` (`assigned_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools_and_machines`
--

LOCK TABLES `tools_and_machines` WRITE;
/*!40000 ALTER TABLE `tools_and_machines` DISABLE KEYS */;
INSERT INTO `tools_and_machines` VALUES (1,'TAM-WLIA9435U7',NULL,NULL,'machine','Scanner',5,'370178180924975','4749',1,'2024-10-08','refurbished',161.34,6,0,'rate_per_car',292.19,'Voluptas architecto mollitia voluptatem natus asperiores in cumque. Molestiae expedita veritatis quibusdam amet sunt. Est alias id quisquam est et cumque.',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(2,'TAM-97QRUKEM65',NULL,NULL,'machine','Drill',2,'2632631767263985','1542',1,'2024-10-08','used',828.56,7,0,'rate_per_hour',713.76,'Veritatis odio eos dolor et repudiandae fuga. Aperiam ut alias perferendis nihil consequatur. Aut enim commodi voluptas natus. Quod facilis eos dolores temporibus tempora.',1,NULL,'2024-10-08 15:43:49','2024-10-08 15:43:49'),(3,'TAM-ZML6YK9DAE',NULL,NULL,'tool','Car Jack',1,'2687964328362879','4743',1,'2024-10-08','new',88.36,3,0,'rate_per_hour',67.90,'Nulla asperiores omnis sunt mollitia. Quia autem at nesciunt ipsa quia veniam.',1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(4,'TAM-W2KGPEI6LF',NULL,NULL,'tool','Jumper',5,'5174787560037872','1141',1,'2024-10-08','used',682.38,9,0,'rate_per_hour',761.21,'Reiciendis in nihil tempore veritatis neque nihil. Aspernatur sed quia veritatis nam ea voluptas et. Itaque et quaerat debitis dolore repudiandae rem aut. A cupiditate aliquam possimus cupiditate velit cupiditate quia. Quis voluptas voluptas tenetur sunt saepe est.',1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(5,'TAM-NBHDUZ275Y',NULL,NULL,'tool','Pliers',2,'6011074654355857','3936',1,'2024-10-08','new',915.25,1,0,'rate_per_car',552.07,'Impedit placeat id consectetur unde labore non doloremque numquam. Enim provident nemo dolor voluptatibus. Sed distinctio sed dolore recusandae nemo voluptatem. Eaque fugit velit tenetur eaque eaque quidem.',1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50'),(6,'TAM-2IT5MK4ANE',NULL,NULL,'tool','Screw Driver',5,'4716397606949995','3380',1,'2024-10-08','new',493.43,3,0,'rate_per_hour',784.69,'Eius laudantium sunt perferendis expedita qui veritatis optio. Labore reprehenderit ut velit aut. Delectus aperiam provident quo voluptatibus repellat in qui. Aut quia amet aut animi.',1,NULL,'2024-10-08 15:43:50','2024-10-08 15:43:50');
/*!40000 ALTER TABLE `tools_and_machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` bigint DEFAULT NULL,
  `user_summary` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code_expires_at` timestamp NULL DEFAULT NULL,
  `otp_verified_at` timestamp NULL DEFAULT NULL,
  `userable_id` bigint unsigned DEFAULT NULL,
  `userable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  UNIQUE KEY `users_id_number_unique` (`id_number`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'toby@cvt.com','+254712345678',NULL,123456789,NULL,NULL,NULL,NULL,NULL,NULL,1,'App\\Models\\Manager','$2y$10$liScYQHu0SbvSy6s4ZFQ3eKAxqW2zXpCo3Vo/3Nx7NVYTwaF6ofii',NULL,NULL,NULL,NULL,'profile-photos/nHeojucikutBpffCSU7D.jpg','2024-10-08 15:43:45','2024-10-08 15:43:45',NULL),(2,'rpadberg@mccullough.com','+12014892966',NULL,7387961559,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,1,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'5P2m192gcq','profile-photos/hp2GGI0EtWhkLwfx5pzE.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(3,'brenner@hand.org','+17575160383',NULL,8604498438,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,2,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'r6Zgw32BSF','profile-photos/KS6FvqXr7975nYAwaxk0.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(4,'maxwell.schroeder@kovacek.net','+13099925188',NULL,5200918398,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,3,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'bovVGFZKxw','profile-photos/wtNOfjNPCCoziBntOopX.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(5,'bstracke@maggio.com','+14759032695',NULL,8222963867,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,4,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'cwBQaaUs7p','profile-photos/IewhHcZE9KgOb41oFOQV.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(6,'quitzon.casper@huel.com','+16615858608',NULL,9810829578,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,5,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'AyUq6IrPOf','profile-photos/kzSstdznCrTFBWH291IB.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(7,'mkozey@nitzsche.com','+13305765979',NULL,2019694464,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,6,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'amBqXMDLiV','profile-photos/XPpeFdSCisVG6jW57VTM.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(8,'alexandra.leannon@hand.com','+18508498465',NULL,627406978,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,7,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'4oLv9DnUjB','profile-photos/urXVlcsGtJ7ZAM09NjJ5.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(9,'hauck.craig@kiehn.com','+12605881770',NULL,3897460709,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,8,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'XjmLcwxS6s','profile-photos/eQMcbO51JH06jqarMPaI.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(10,'terrell.stamm@halvorson.net','+19256772512',NULL,7001020398,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,9,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'NQmXHoacCm','profile-photos/Fd8zy5VLMzUUqo3y9vEr.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(11,'harley01@sporer.com','+16504835372',NULL,5375270735,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,10,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'GbdvfLHyVj','profile-photos/UrFJeeuq590y95KMR25P.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(12,'lesch.jamar@hickle.com','+18387485201',NULL,568861207,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,11,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'Jw84SLwPoZ','profile-photos/zTrN3qRJU20UGiG4fRYl.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(13,'horace.bartoletti@runolfsdottir.com','+18504844885',NULL,235479491,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,12,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'5WatACLpcR','profile-photos/pqUI8Xf7W52adQq32jsk.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(14,'dietrich.kaylah@kshlerin.com','+13202570231',NULL,8157233592,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,13,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'i08Ip9Vjqg','profile-photos/VZWosJ7mDEdT84Eltyzj.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(15,'alisha.kshlerin@streich.com','+18456036627',NULL,5510731191,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,14,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'Q8PhK7pwtB','profile-photos/wKQvdksYOTS7NLAOS6u7.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(16,'hubert.gulgowski@hudson.org','+17243109526',NULL,8356854324,NULL,NULL,'2024-10-08 15:43:45',NULL,NULL,NULL,15,'App\\Models\\Mechanic','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'YhwfxEZw5r','profile-photos/Xn8riJFTzVobcVzIfVv1.jpg','2024-10-08 15:43:45','2024-10-08 15:43:46',NULL),(17,'grayce.klocko@jacobs.com','+19308498120',NULL,2347228934,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,1,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'vXy6SxubAb','profile-photos/MMj6cc67jyAdFDvtVNI5.jpg','2024-10-08 15:43:46','2024-10-08 15:43:46',NULL),(18,'trantow.jana@howell.org','+14587648586',NULL,7808007552,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,2,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'CtDHFZeuv9','profile-photos/peKMqh8F7Eq37aWiNvwF.jpg','2024-10-08 15:43:46','2024-10-08 15:43:46',NULL),(19,'amorissette@welch.net','+17087633706',NULL,5069417769,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,3,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'5bPHAVB8zq','profile-photos/yeacOWG9HqtrABFdlgEj.jpg','2024-10-08 15:43:46','2024-10-08 15:43:46',NULL),(20,'kuphal.corrine@marquardt.com','+16076825021',NULL,7548816151,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,4,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'6YmjRMCLpd','profile-photos/QpPyYbcXFXK54MK9M0C1.jpg','2024-10-08 15:43:46','2024-10-08 15:43:46',NULL),(21,'madyson46@nolan.net','+19849597867',NULL,1832079784,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,5,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'uYmEMyPIUw','profile-photos/js5sjEcJksrCUJBZUAeG.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(22,'satterfield.tito@parker.com','+12709671790',NULL,2081233485,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,6,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'OHOL1XwGa3','profile-photos/1YiUoYt4y0OYrKP33T5b.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(23,'kbradtke@hermann.com','+16305941452',NULL,9326852511,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,7,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'7BB9tw57Jt','profile-photos/FAwKunIWGvDgoBZ8R3yN.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(24,'jconsidine@mcdermott.biz','+15169428198',NULL,4493515336,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,8,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'AnNWUerUNf','profile-photos/HXc4pBsGaBLbG3LP0hiH.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(25,'gaylord.rutherford@wilkinson.org','+15853248368',NULL,9877107257,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,9,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'qW3Hnmsh7G','profile-photos/In85gNJEQO21awNxdruy.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(26,'rae.becker@pollich.com','+12815161107',NULL,2227726588,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,10,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'I9nPGvWBhJ','profile-photos/uxdX1SzWhqNEOE6OV7Qs.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(27,'qbarton@kulas.com','+12608049517',NULL,6331217467,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,11,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'tWA6n5gMkA','profile-photos/Wp89YwSLDGsVFqsdAeYU.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(28,'bfarrell@weissnat.org','+15756785171',NULL,4155730148,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,12,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'47zrRy3Df0','profile-photos/jH36Zyiqqr2l1PM7zWrT.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(29,'vita42@lemke.com','+17198363448',NULL,8297031503,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,13,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'T8V0jBZxyl','profile-photos/ngLg6qbWGVOsTOiZjAwj.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(30,'jewell.greenholt@bartell.net','+13219993958',NULL,3526262133,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,14,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'jyMVBe2Kns','profile-photos/kbEVQ5cY3RH01gestOnA.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL),(31,'mohr.ella@jerde.net','+19046783370',NULL,64535433,NULL,NULL,'2024-10-08 15:43:46',NULL,NULL,NULL,15,'App\\Models\\Customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'K83E6BTIzS','profile-photos/3a8YbKF3d81bnLl3HhJY.jpg','2024-10-08 15:43:46','2024-10-08 15:43:47',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_details`
--

DROP TABLE IF EXISTS `vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_id` bigint unsigned NOT NULL,
  `exterior_images` json DEFAULT NULL,
  `interior_images` json DEFAULT NULL,
  `video_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automobile_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_registration_plate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gearbox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_capacity` int DEFAULT NULL,
  `drive_train` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_capacity` int DEFAULT NULL,
  `engine_variations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_super_charger` tinyint(1) NOT NULL DEFAULT '0',
  `has_turbo` tinyint(1) NOT NULL DEFAULT '0',
  `odometer_reading` int DEFAULT NULL,
  `odometer_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_gears` int DEFAULT NULL,
  `no_of_cylinders` int DEFAULT NULL,
  `fuel_tank_capacity` int DEFAULT NULL,
  `gross_weight` int DEFAULT NULL,
  `max_power` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_torque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range` int DEFAULT NULL,
  `charge_time` int DEFAULT NULL,
  `no_of_electric_motors` int DEFAULT NULL,
  `battery_capacity` int DEFAULT NULL,
  `charge_pace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassis_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear_box_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vin_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_conditions` json DEFAULT NULL,
  `safety_features` json DEFAULT NULL,
  `added_features` json DEFAULT NULL,
  `city_consumption` int DEFAULT NULL,
  `tyre_size` int DEFAULT NULL,
  `highway_consumption` int DEFAULT NULL,
  `average_consumption` int DEFAULT NULL,
  `qr_code_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valuation_reports_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_inspection_report_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_firm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valuation_price` double(14,2) unsigned DEFAULT NULL,
  `insurance_start_date` date DEFAULT NULL,
  `insurance_end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_details_vehicle_registration_plate_unique` (`vehicle_registration_plate`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_details`
--

LOCK TABLES `vehicle_details` WRITE;
/*!40000 ALTER TABLE `vehicle_details` DISABLE KEYS */;
INSERT INTO `vehicle_details` VALUES (1,1,NULL,NULL,NULL,'Hybrid','Hatchback','KDA 214X','Azure','Diesel','Manual',4,'AWD',7494,'HR12DDR',0,0,46634,'Red',5,12,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'5UXXW3C53J0T80683','52WVC10338','84075','24300','#DA329A','foreign_used','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,3,19,2,7,NULL,NULL,NULL,'Feeney-Mosciski','Elinore Mante','+13312053259','Norfolk Island',23470.00,'2019-09-04','1972-10-02','2024-10-08 15:43:47','2024-10-08 15:43:47'),(2,2,NULL,NULL,NULL,'Hybrid','Sedan','KDA 732X','Tomato','Diesel','CVT',6,'Rear Drive',75120,'HR16DE14',0,0,31642,'Red',4,9,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'JT152EEA100302159','52WVC10338','26982','55998','#F7E60F','brand_new','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,7,2,3,4,NULL,NULL,NULL,'Roob-Brekke','Toni Beer','+16266434046','Samoa',67591.00,'2006-01-07','1976-09-07','2024-10-08 15:43:47','2024-10-08 15:43:47'),(3,3,NULL,NULL,NULL,'I.C Engine','SUV','KDA 752X','Fuchsia','Petrol','Automatic',4,'4WD',97744,'HR12DDR',1,0,77420,'Green',6,9,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'5UXXW3C53J0T80683','52WVC10338','42703','14576','#B0C3D9','locally_used','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,7,7,9,10,NULL,NULL,NULL,'Schoen Inc','Kamren Beer','+13206614481','Dominica',77496.00,'1990-04-17','1995-10-16','2024-10-08 15:43:47','2024-10-08 15:43:47'),(4,4,NULL,NULL,NULL,'Hybrid','Crossover','KDA 682X','CornflowerBlue','Diesel','CVT',18,'Front Wheel',72445,'HR12DE',1,0,15007,'Red',4,6,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'5UXXW3C53J0T80683','52WVC10338','35469','97645','#8871CA','locally_used','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,8,2,7,7,NULL,NULL,NULL,'Terry Inc','Mr. Donnell Schmitt I','+13605427778','Nepal',93077.00,'1974-05-19','2014-06-07','2024-10-08 15:43:47','2024-10-08 15:43:47'),(5,5,NULL,NULL,NULL,'I.C Engine','Convertible','KDA 549X','Bisque','Diesel','Automatic',10,'Rear Drive',64227,'HR12DE',1,0,63444,'Green',5,6,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'JT152EEA100302159','43XXX10669V','99770','20894','#85A6E8','foreign_used','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,4,6,10,6,NULL,NULL,NULL,'Boyle and Sons','Lessie Emmerich','+16787102538','Kyrgyz Republic',39221.00,'2019-01-04','2005-07-30','2024-10-08 15:43:47','2024-10-08 15:43:47'),(6,6,NULL,NULL,NULL,'Hybrid','Hatchback','KDA 671X','DarkCyan','Diesel','CVT',4,'AWD',71974,'HR12DE',0,1,97274,'Yellow',5,10,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'JT152EEA100302159','43XXX10669V','07675','00134','#1C1C68','locally_used','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,1,11,5,7,NULL,NULL,NULL,'Ratke Inc','Amos Hansen','+17048630917','Somalia',53249.00,'1974-04-04','2008-08-22','2024-10-08 15:43:47','2024-10-08 15:43:47'),(7,7,NULL,NULL,NULL,'I.C Engine','SUV','KDA 823X','CornflowerBlue','Diesel','CVT',10,'4WD',4917,'HR12DE',1,1,54616,'Red',4,9,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'5UXXW3C53J0T80683','52WVC10338','15694','20190','#26CC2E','brand_new','[\"Minor Accident\", \"Low Mileage\"]','[\"Child Safety Locks\", \"Rear Camera\"]',NULL,1,3,10,5,NULL,NULL,NULL,'Crooks Group','Norris Marvin','+16574177748','Faroe Islands',63634.00,'2023-07-04','2001-03-09','2024-10-08 15:43:47','2024-10-08 15:43:47');
/*!40000 ALTER TABLE `vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_models`
--

DROP TABLE IF EXISTS `vehicle_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_models` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exterior_images` json DEFAULT NULL,
  `interior_images` json DEFAULT NULL,
  `video_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automobile_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_manufacture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_capacity` int DEFAULT NULL,
  `engine_variations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_super_charger` tinyint(1) NOT NULL DEFAULT '0',
  `has_turbo` tinyint(1) NOT NULL DEFAULT '0',
  `no_of_cylinders` int DEFAULT NULL,
  `fuel_tank_capacity` int DEFAULT NULL,
  `gross_weight` int DEFAULT NULL,
  `max_power` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_torque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range` int DEFAULT NULL,
  `charge_time` int DEFAULT NULL,
  `no_of_electric_motors` int DEFAULT NULL,
  `battery_capacity` int DEFAULT NULL,
  `charge_pace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_features` json NOT NULL,
  `city_consumption` int NOT NULL,
  `tyre_size` int NOT NULL,
  `highway_consumption` int NOT NULL,
  `average_consumption` int NOT NULL,
  `maintenance_schedule` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_models_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_models`
--

LOCK TABLES `vehicle_models` WRITE;
/*!40000 ALTER TABLE `vehicle_models` DISABLE KEYS */;
INSERT INTO `vehicle_models` VALUES (1,'VM-742VCZ59OH',NULL,NULL,NULL,'I.C Engine','2019','BMW','Crossover','Outback','SE',47399,'HR12DDR','Singapore',0,0,10,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',2,10,9,10,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(2,'VM-LOKDRTE3CM',NULL,NULL,NULL,'I.C Engine','2022','Volkswagen','Convertible','Outback','LX',30828,'HR16DE14','Rwanda',0,0,6,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',7,5,10,3,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(3,'VM-HZSPEWD5YG',NULL,NULL,NULL,'Hybrid','2008','Volkswagen','SUV','Mustang','LX',23593,'HR12DDR','Czech Republic',0,0,10,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',7,4,9,9,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(4,'VM-EFWUNQ2GK5',NULL,NULL,NULL,'Hybrid','1985','Nissan','Crossover','Outback','SE',32236,'HR12DDR','Hong Kong',0,0,9,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',3,2,4,4,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(5,'VM-F7UALXMEGS',NULL,NULL,NULL,'Hybrid','2005','Mercedes-Benz','SUV','Mustang','EX-L',33123,'HR12DE','Belize',0,0,7,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',2,1,7,8,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(6,'VM-Q2F43C9BLI',NULL,NULL,NULL,'I.C Engine','1998','Mercedes-Benz','Sedan','Outback','LX',50436,'HR16DE14','Bangladesh',0,0,6,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',10,1,1,2,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45'),(7,'VM-HBW8SLZF9U',NULL,NULL,NULL,'Hybrid','1978','BMW','Sedan','3 Series','XLE',26030,'HR16DE14','Greece',0,0,11,2500,1500,'1000@4000','1000@4000',NULL,NULL,NULL,NULL,NULL,'[\"Child Safety Locks\", \"Rear Camera\"]',6,9,4,10,NULL,'2024-10-08 15:43:45','2024-10-08 15:43:45');
/*!40000 ALTER TABLE `vehicle_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `vehicle_model_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicles_reference_unique` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'V-9XF5D3IOBT',7,6,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(2,'V-TH3V8ZQ4MU',1,3,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(3,'V-5LQVHM3XIT',8,1,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(4,'V-NA8S5XM6G4',9,6,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(5,'V-RLSIZ473OA',5,7,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(6,'V-NBFK8MDSQW',8,6,'2024-10-08 15:43:47','2024-10-08 15:43:47'),(7,'V-D65NEY9H3L',15,2,'2024-10-08 15:43:47','2024-10-08 15:43:47');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_wages_payouts`
--

DROP TABLE IF EXISTS `weekly_wages_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_wages_payouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_id` bigint unsigned NOT NULL,
  `amount` decimal(19,2) NOT NULL,
  `phone_number_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_by` bigint unsigned DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpesa_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `weekly_wages_payouts_reference_unique` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_wages_payouts`
--

LOCK TABLES `weekly_wages_payouts` WRITE;
/*!40000 ALTER TABLE `weekly_wages_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_wages_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal_requests`
--

DROP TABLE IF EXISTS `withdrawal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawal_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal_requests`
--

LOCK TABLES `withdrawal_requests` WRITE;
/*!40000 ALTER TABLE `withdrawal_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawal_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 13:04:04
