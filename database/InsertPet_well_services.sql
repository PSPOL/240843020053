
CREATE DATABASE  IF NOT EXISTS `p01_petwellservicesdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `p01_petwellservicesdb`;


-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: p01_petWellServicesdb

-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `area_id` bigint NOT NULL AUTO_INCREMENT,
  `city_id` bigint DEFAULT NULL,
  `area_name` varchar(255) NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `FKkaf5i5ii080uwf6f9yyba9fxi` (`city_id`),
  CONSTRAINT `FKkaf5i5ii080uwf6f9yyba9fxi` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,1,'Mumbai Area 1'),(2,1,'Mumbai Phase 36'),(3,1,'Mumbai Area 52'),(4,2,'Pune Area 1'),(5,2,'Pune Phase 36'),(6,2,'Pune Area 52'),(7,3,'Nashik Area 1'),(8,3,'Nashik Phase 36'),(9,3,'Nashik Area 52'),(10,4,'Solapur Area 1'),(11,4,'Solapur Phase 36'),(12,4,'Solapur Area 52'),(13,5,'Thane Area 1'),(14,5,'Thane Phase 36'),(15,5,'Thane Area 52'),(16,6,'Kolhapur Area 1'),(17,6,'Kolhapur Phase 36'),(18,6,'Kolhapur Area 52');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breeds`
--

DROP TABLE IF EXISTS `breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breeds` (
  `breed_id` bigint NOT NULL AUTO_INCREMENT,
  `breed_name` varchar(255) NOT NULL,
  PRIMARY KEY (`breed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breeds`
--

LOCK TABLES `breeds` WRITE;
/*!40000 ALTER TABLE `breeds` DISABLE KEYS */;
INSERT INTO `breeds` VALUES (1,'Cat breed'),(2,'Dog Breed');
/*!40000 ALTER TABLE `breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'Cat'),(2,'Dog ');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` bigint NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Mumbai'),(2,'Pune'),(3,'Nashik'),(4,'Solapur'),(5,'Thane'),(6,'Kolhapur');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_shop`
--

DROP TABLE IF EXISTS `food_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_shop` (
  `rating` int NOT NULL,
  `area_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `shop_id` bigint NOT NULL AUTO_INCREMENT,
  `shop_address` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_phone_no` varchar(255) NOT NULL,
  `shop_registration_id` varchar(255) NOT NULL,
  `status` enum('APPROVED','DENIAL','PENDING') NOT NULL,
  PRIMARY KEY (`shop_id`),
  UNIQUE KEY `UKfn2ymxv4juck7xfdlyt3urid` (`shop_registration_id`),
  KEY `FK7oj8sw82tp5lww6ldi8daeokc` (`area_id`),
  KEY `FKm4vlqapgso7l9cvbmobdnm3s0` (`city_id`),
  CONSTRAINT `FK7oj8sw82tp5lww6ldi8daeokc` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`),
  CONSTRAINT `FKm4vlqapgso7l9cvbmobdnm3s0` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_shop`
--

LOCK TABLES `food_shop` WRITE;
/*!40000 ALTER TABLE `food_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groomer`
--

DROP TABLE IF EXISTS `groomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groomer` (
  `no_of_slots` int NOT NULL,
  `rating` int NOT NULL,
  `area_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `groomer_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_phone_no` varchar(255) NOT NULL,
  `status` enum('APPROVED','DENIAL','PENDING') NOT NULL,
  PRIMARY KEY (`groomer_id`),
  UNIQUE KEY `UKk1p00cu1ovo6i6iodqmep7tvh` (`user_id`),
  KEY `FK9s2tck1vr1s77j8p2idx6exi6` (`area_id`),
  KEY `FKjaihqhro9vvw2ksjhcobrbyi1` (`city_id`),
  CONSTRAINT `FK9s2tck1vr1s77j8p2idx6exi6` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`),
  CONSTRAINT `FKaa201kjnwhottx7676b1iir5b` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKjaihqhro9vvw2ksjhcobrbyi1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groomer`
--

LOCK TABLES `groomer` WRITE;
/*!40000 ALTER TABLE `groomer` DISABLE KEYS */;
INSERT INTO `groomer` VALUES (32,5,18,6,1,7,'kolhaput','well','4567832197','PENDING');
/*!40000 ALTER TABLE `groomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groomer_appointments`
--

DROP TABLE IF EXISTS `groomer_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groomer_appointments` (
  `date` date NOT NULL,
  `groomer_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slot_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` enum('CANCEL','COMPLETED','PENDING') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK83bquyrg1od1rox3hrwmcqxe3` (`groomer_id`),
  KEY `FKba27e5wvwgv94cn3049rdbswq` (`slot_id`),
  KEY `FKs7lfn2xwhqiyxk0nrxstna45i` (`user_id`),
  CONSTRAINT `FK83bquyrg1od1rox3hrwmcqxe3` FOREIGN KEY (`groomer_id`) REFERENCES `groomer` (`groomer_id`),
  CONSTRAINT `FKba27e5wvwgv94cn3049rdbswq` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`slot_id`),
  CONSTRAINT `FKs7lfn2xwhqiyxk0nrxstna45i` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groomer_appointments`
--

LOCK TABLES `groomer_appointments` WRITE;
/*!40000 ALTER TABLE `groomer_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `groomer_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `pet_age` int NOT NULL,
  `breed_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `pet_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pet_id`),
  KEY `FKr2wnqcmtrr16oaipocajcdn7w` (`breed_id`),
  KEY `FKiwhup8cjxixmybrrp0wtde57e` (`category_id`),
  KEY `FKc47kjb41qf50bwgddm024m5xn` (`user_id`),
  CONSTRAINT `FKc47kjb41qf50bwgddm024m5xn` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKiwhup8cjxixmybrrp0wtde57e` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`category_id`),
  CONSTRAINT `FKr2wnqcmtrr16oaipocajcdn7w` FOREIGN KEY (`breed_id`) REFERENCES `breeds` (`breed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_VETERINARY'),(3,'ROLE_SITTER'),(4,'ROLE_GROOMER'),(5,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitter`
--

DROP TABLE IF EXISTS `sitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitter` (
  `no_of_slots` int NOT NULL,
  `rating` int NOT NULL,
  `area_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `sitter_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `center_address` varchar(255) NOT NULL,
  `center_phone_no` varchar(255) NOT NULL,
  `status` enum('APPROVED','DENIAL','PENDING') NOT NULL,
  PRIMARY KEY (`sitter_id`),
  UNIQUE KEY `UK9e0h0m2eqb3vcw3t1ecrs6nlo` (`user_id`),
  KEY `FKr56q7ux01ru2lqtdesfhvyl5m` (`area_id`),
  KEY `FKpcnntujwtsoc4p2ukydk600hy` (`city_id`),
  CONSTRAINT `FKmubkqc1cnyfamt65vnnbp74uk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKpcnntujwtsoc4p2ukydk600hy` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `FKr56q7ux01ru2lqtdesfhvyl5m` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitter`
--

LOCK TABLES `sitter` WRITE;
/*!40000 ALTER TABLE `sitter` DISABLE KEYS */;
INSERT INTO `sitter` VALUES (5,5,17,6,1,4,'Kolhapur','6573856284','PENDING');
/*!40000 ALTER TABLE `sitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitter_appointments`
--

DROP TABLE IF EXISTS `sitter_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitter_appointments` (
  `date` date NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sitter_id` bigint NOT NULL,
  `slot_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` enum('CANCEL','COMPLETED','PENDING') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkebgs35u7xruyug3akd4d86j3` (`sitter_id`),
  KEY `FKnpva26f6i0xa7qdyj6ugt41ka` (`slot_id`),
  KEY `FKfyr4rne7r3uo1qg7n79hyb03g` (`user_id`),
  CONSTRAINT `FKfyr4rne7r3uo1qg7n79hyb03g` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKkebgs35u7xruyug3akd4d86j3` FOREIGN KEY (`sitter_id`) REFERENCES `sitter` (`sitter_id`),
  CONSTRAINT `FKnpva26f6i0xa7qdyj6ugt41ka` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitter_appointments`
--

LOCK TABLES `sitter_appointments` WRITE;
/*!40000 ALTER TABLE `sitter_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitter_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slots` (
  `slot_time` time(6) NOT NULL,
  `slot_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_type` enum('GROOMER','SITTER','VETERINARY') NOT NULL,
  PRIMARY KEY (`slot_id`),
  KEY `FKiog4jxni2r6shmti52yqt38nx` (`user_id`),
  CONSTRAINT `FKiog4jxni2r6shmti52yqt38nx` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `area_id` bigint DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `aadhar_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FKencoalns01uv8mqpe0ywabxdw` (`area_id`),
  KEY `FKkpqrx37esphstf2tqxbt89avn` (`city_id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKencoalns01uv8mqpe0ywabxdw` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`),
  CONSTRAINT `FKkpqrx37esphstf2tqxbt89avn` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,5,1,'admin','admin','admin@gmail.com','admin','admin','admin','admin'),(8,3,2,3,'546379573527','546379573527','veena123@gmail.com','Veena','Valmiki','Veena@123','5463826738'),(17,6,3,4,'324354678695','324354678695','sonal123@gmail.com','Sonal','Patil','Sonal@123','7564527485'),(6,2,1,5,'123456789','123456789','uma@gmail.com','Uma','Mane','Uma@123','453678923'),(18,6,4,7,'5678943213','5678943213','geeta123@gmail.com','Geeta','Mole','Geeta@123','342567899086'),(18,6,1,8,'2314567342','2314567342','umesh123@gmail.com','umesh','kamat','umesh@123','6789543216'),(7,3,1,9,'34567890987','34567890987','uttam@123','Uttam','More','uttam@123','3456889876');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinary`
--

DROP TABLE IF EXISTS `veterinary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinary` (
  `experience` float NOT NULL,
  `no_of_slots` int NOT NULL,
  `area_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `veterinary_id` bigint NOT NULL AUTO_INCREMENT,
  `clinic_address` varchar(255) NOT NULL,
  `clinic_name` varchar(255) NOT NULL,
  `clinic_phone_no` varchar(255) NOT NULL,
  `license_no` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `status` enum('APPROVED','DENIAL','PENDING') NOT NULL,
  PRIMARY KEY (`veterinary_id`),
  UNIQUE KEY `UKomwv5fesoxe1qbtdiyj6fg16r` (`user_id`),
  UNIQUE KEY `UKiffji17gruc35e9tolqaffhms` (`license_no`),
  KEY `FKg1ys5b4vqfumg6r1rxqcmckux` (`area_id`),
  KEY `FK8phurrls0x5ex1f0ukhq6v63b` (`city_id`),
  CONSTRAINT `FK8phurrls0x5ex1f0ukhq6v63b` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `FKdhg9kbreprpmsdela5ngma9tg` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKg1ys5b4vqfumg6r1rxqcmckux` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinary`
--

LOCK TABLES `veterinary` WRITE;
/*!40000 ALTER TABLE `veterinary` DISABLE KEYS */;
INSERT INTO `veterinary` VALUES (5,10,8,3,3,1,'Nashik','Well','6475835274','567483927465','MBBS','PENDING');
/*!40000 ALTER TABLE `veterinary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinary_appointments`
--

DROP TABLE IF EXISTS `veterinary_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinary_appointments` (
  `date` date NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slot_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `veterinary_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` enum('CANCEL','COMPLETED','PENDING') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkasmhlfscbtxy6mal872dgedo` (`slot_id`),
  KEY `FKbybcacjqhxysjx3dfdbyctgnp` (`user_id`),
  KEY `FKhah00dur6nbgwhp96eknojorr` (`veterinary_id`),
  CONSTRAINT `FKbybcacjqhxysjx3dfdbyctgnp` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKhah00dur6nbgwhp96eknojorr` FOREIGN KEY (`veterinary_id`) REFERENCES `veterinary` (`veterinary_id`),
  CONSTRAINT `FKkasmhlfscbtxy6mal872dgedo` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinary_appointments`
--

LOCK TABLES `veterinary_appointments` WRITE;
/*!40000 ALTER TABLE `veterinary_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `veterinary_appointments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 14:19:05
