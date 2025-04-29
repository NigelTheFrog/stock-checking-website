-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.88.55    Database: SOS_DEV
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.21-MariaDB-0ubuntu0.22.04.2

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
-- Temporary view structure for view `analisator`
--

DROP TABLE IF EXISTS `analisator`;
/*!50001 DROP VIEW IF EXISTS `analisator`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `analisator` AS SELECT 
 1 AS `jobid`,
 1 AS `userid`,
 1 AS `username`,
 1 AS `name`,
 1 AS `coyid`,
 1 AS `jobtypeid`,
 1 AS `typecekstok`,
 1 AS `statuscekstok`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dbmcategory`
--

DROP TABLE IF EXISTS `dbmcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmcategory` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categorydesc` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcategory`
--

LOCK TABLES `dbmcategory` WRITE;
/*!40000 ALTER TABLE `dbmcategory` DISABLE KEYS */;
INSERT INTO `dbmcategory` VALUES (12,'PIPA GALVANIS','2024-11-05 03:15:16','admin','2024-11-05 03:15:16',NULL),(13,'PIPA HITAM','2024-11-05 03:15:24','admin','2024-11-05 03:15:24',NULL),(14,'PIPA SS','2024-11-05 03:16:07','admin','2024-11-05 03:16:07',NULL),(15,'PIPA BESI A106','2024-11-05 03:16:33','admin','2024-11-05 03:16:33',NULL),(16,'PIPA PVC','2024-11-05 03:17:19','admin','2024-11-05 03:17:19',NULL),(17,'PIPA KOTAK HITAM','2024-11-05 03:18:15','admin','2024-11-05 03:18:15',NULL),(18,'PIPA KOTAK SS','2024-11-05 03:18:25','admin','2024-11-05 03:18:25',NULL),(19,'PIPA KOTAK GALVALUM','2024-11-05 03:18:44','admin','2024-11-05 03:18:44',NULL),(20,'PLAT BESI 4\'','2024-11-05 03:20:28','admin','2024-11-05 03:20:28',NULL),(21,'PLAT BESI 5\'','2024-11-05 03:20:37','admin','2024-11-05 03:20:37',NULL),(22,'PLAT BESI 6\'','2024-11-05 03:20:43','admin','2024-11-05 03:20:43',NULL),(23,'PLAT SS','2024-11-05 03:20:54','admin','2024-11-05 03:20:54',NULL),(24,'PLAT ACRILIC','2024-11-05 03:21:00','admin','2024-11-05 03:21:00',NULL),(25,'PLAT ALUMINIUM','2024-11-05 03:21:10','admin','2024-11-05 03:21:10',NULL),(26,'PIPA BESI HIDROLIK','2024-11-05 03:23:57','admin','2024-11-05 03:23:57',NULL),(27,'BESI BETON','2024-11-05 03:25:31','admin','2024-11-05 03:25:31',NULL),(28,'BESI BETON ULIR','2024-11-05 03:25:48','admin','2024-11-05 03:25:48',NULL),(29,'WF BEAM','2024-11-05 03:26:06','admin','2024-11-05 03:26:06',NULL),(30,'H BEAM','2024-11-05 03:26:10','admin','2024-11-05 03:26:10',NULL),(31,'AS SS','2024-11-05 03:27:11','admin','2024-11-05 03:27:11',NULL),(32,'AS BESI','2024-11-05 03:27:21','admin','2024-11-05 03:27:21',NULL),(33,'AS TEMBAGA','2024-11-05 03:27:31','admin','2024-11-05 03:27:31',NULL),(34,'AS ALUMINIUM','2024-11-05 03:27:38','admin','2024-11-05 03:27:38',NULL),(35,'SIKU SS','2024-11-05 03:27:50','admin','2024-11-05 03:27:50',NULL),(36,'SIKU BESI','2024-11-05 03:27:58','admin','2024-11-05 03:27:58',NULL),(37,'STREP BESI','2024-11-05 03:28:13','admin','2024-11-05 03:28:13',NULL),(38,'STREP SS','2024-11-05 03:28:23','admin','2024-11-05 03:28:23',NULL),(39,'STREP TEMBAGA','2024-11-05 03:28:35','admin','2024-11-05 03:28:35',NULL),(40,'BENDRAT','2024-11-05 03:28:44','admin','2024-11-05 03:28:44',NULL),(41,'KAWAT LAS','2024-11-05 03:28:54','admin','2024-11-05 03:28:54',NULL),(42,'KAWAT GALVANIS','2024-11-05 03:29:04','admin','2024-11-05 03:29:04',NULL),(43,'KAWAT DURI','2024-11-05 03:29:16','admin','2024-11-05 03:29:16',NULL),(44,'KAWAT TEMBAGA','2024-11-05 03:29:26','admin','2024-11-05 03:29:26',NULL),(45,'EXTRUSION ALUMINIUM','2024-11-05 03:31:48','admin','2024-11-05 03:31:48',NULL),(46,'GALVALUM ATAP','2024-11-05 03:32:13','admin','2024-11-05 03:32:13',NULL),(47,'BONDECK','2024-11-05 03:32:17','admin','2024-11-05 03:32:17',NULL),(48,'SENG GELOMBANG','2024-11-05 03:32:23','admin','2024-11-05 03:32:23',NULL),(49,'NOK','2024-11-05 03:32:26','admin','2024-11-05 03:32:26',NULL),(50,'CNP','2024-11-05 03:32:48','admin','2024-11-05 03:32:48',NULL),(51,'UNP','2024-11-05 03:32:52','admin','2024-11-05 03:32:52',NULL),(52,'WIRE MESH','2024-11-05 03:32:58','admin','2024-11-05 03:32:58',NULL),(53,'GRATING','2024-11-05 03:33:03','admin','2024-11-05 03:33:03',NULL),(54,'ELBOW','2024-11-05 03:33:13','admin','2024-11-05 03:33:13',NULL),(55,'PAKU','2024-11-05 03:33:18','admin','2024-11-05 03:33:18',NULL),(56,'KABEL','2024-11-05 03:33:23','admin','2024-11-05 03:33:23',NULL),(57,'PEPACO','2024-11-05 03:33:29','admin','2024-11-05 03:33:29',NULL),(58,'SANITARY','2024-11-05 03:33:35','admin','2024-11-05 03:33:35',NULL),(59,'CAT','2024-11-05 03:33:41','admin','2024-11-05 03:33:41',NULL),(60,'TRUSS C','2024-11-29 02:09:41','admin','2024-11-29 02:09:41',NULL);
/*!40000 ALTER TABLE `dbmcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmcolor`
--

DROP TABLE IF EXISTS `dbmcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmcolor` (
  `colorid` int(11) NOT NULL AUTO_INCREMENT,
  `colordesc` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`colorid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcolor`
--

LOCK TABLES `dbmcolor` WRITE;
/*!40000 ALTER TABLE `dbmcolor` DISABLE KEYS */;
INSERT INTO `dbmcolor` VALUES (2,'Hitam','2024-02-21 08:14:25','admin','2024-02-21 08:14:25',NULL),(3,'Putih','2024-02-21 08:14:30','admin','2024-02-21 08:14:30',NULL),(4,'Merah','2024-02-21 08:14:39','admin','2024-02-21 08:14:39',NULL),(5,'Pink','2024-02-21 08:14:50','admin','2024-02-21 08:14:50',NULL),(6,'Hijau Biru','2024-02-21 08:14:57','admin','2024-11-09 03:06:37','admin'),(7,'Hijau','2024-02-21 08:15:21','admin','2024-11-09 03:06:43','admin'),(8,'Biru hijau','2024-02-21 08:15:27','admin','2024-11-09 03:06:59','admin'),(9,'Biru','2024-02-21 08:15:35','admin','2024-11-09 03:07:17','admin'),(10,'Kuning','2024-02-21 08:16:41','admin','2024-02-21 08:16:41',NULL),(11,'Orange','2024-02-21 08:16:53','admin','2024-02-21 08:16:53',NULL),(12,'Cokelat','2024-02-21 08:17:05','admin','2024-02-21 08:17:05',NULL),(13,'Abu-Abu','2024-02-21 08:17:13','admin','2024-02-21 08:17:13',NULL),(14,'Ungu','2024-02-21 08:17:18','admin','2024-02-21 08:17:18',NULL),(15,'Krem','2024-02-21 08:17:26','admin','2024-02-21 08:17:26',NULL),(16,'putih kuning','2024-11-09 03:07:29','admin','2024-11-09 03:07:29',NULL),(17,'putih biru','2024-11-09 03:07:35','admin','2024-11-09 03:07:35',NULL),(18,'putih hijau','2024-11-09 03:07:41','admin','2024-11-09 03:07:41',NULL),(19,'putih pink','2024-11-09 03:07:47','admin','2024-11-09 03:07:54','admin'),(20,'merah biru','2024-11-09 03:08:09','admin','2024-11-09 03:08:09',NULL),(21,'kuning biru','2024-11-09 03:08:15','admin','2024-11-09 03:08:15',NULL),(22,'pink biru','2024-11-09 03:08:25','admin','2024-11-09 03:08:25',NULL),(23,'pink merah','2024-11-09 03:08:31','admin','2024-11-09 03:08:31',NULL),(24,'coklat biru','2024-11-09 03:08:38','admin','2024-11-09 03:08:38',NULL),(25,'kuning merah','2024-11-09 03:08:46','admin','2024-11-09 03:08:46',NULL),(26,'kuning hijau','2024-11-09 03:10:34','admin','2024-11-09 03:10:34',NULL),(27,'merah pink','2024-11-09 03:10:45','admin','2024-11-09 03:10:45',NULL),(28,'hitam hijau','2024-11-09 03:10:59','admin','2024-11-09 03:10:59',NULL);
/*!40000 ALTER TABLE `dbmcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmcoy`
--

DROP TABLE IF EXISTS `dbmcoy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmcoy` (
  `coyid` int(5) NOT NULL AUTO_INCREMENT,
  `coycode` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `usewrhgrp` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`coyid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcoy`
--

LOCK TABLES `dbmcoy` WRITE;
/*!40000 ALTER TABLE `dbmcoy` DISABLE KEYS */;
INSERT INTO `dbmcoy` VALUES (1,'SRM BPNs','PT. SUTINDO RAYA MULIA BALIKPAPAN',1,'2024-11-05 01:17:46','admin','2025-04-16 09:18:28','admin');
/*!40000 ALTER TABLE `dbmcoy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmdept`
--

DROP TABLE IF EXISTS `dbmdept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmdept` (
  `deptid` int(5) NOT NULL AUTO_INCREMENT,
  `departemen` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmdept`
--

LOCK TABLES `dbmdept` WRITE;
/*!40000 ALTER TABLE `dbmdept` DISABLE KEYS */;
INSERT INTO `dbmdept` VALUES (1,'PUR','2024-11-21 13:24:24','2024-11-21 13:24:24'),(2,'SAL','2024-11-21 13:24:24','2024-11-21 13:24:24'),(3,'FAC','2024-11-21 13:24:24','2024-11-21 13:24:24'),(4,'GAF','2024-11-21 13:24:24','2024-11-21 13:24:24'),(5,'QMR','2024-11-21 13:24:24','2024-11-21 13:24:24'),(6,'R&D','2024-11-21 06:24:35','2024-11-21 06:24:35'),(7,'HRD','2024-11-21 06:27:30','2024-11-21 06:27:30'),(8,'DIREKTUR','2024-12-21 10:49:01','2024-12-21 10:49:01'),(9,'BDH','2024-12-21 10:49:52','2024-12-21 10:49:52'),(10,'GM','2024-12-21 10:49:52','2024-12-21 10:49:52');
/*!40000 ALTER TABLE `dbmdept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmgrade`
--

DROP TABLE IF EXISTS `dbmgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmgrade` (
  `gradecode` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `group` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`gradecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmgrade`
--

LOCK TABLES `dbmgrade` WRITE;
/*!40000 ALTER TABLE `dbmgrade` DISABLE KEYS */;
INSERT INTO `dbmgrade` VALUES ('BPN8','BPN8','2025-03-28 09:17:32','2025-03-28 02:20:35',''),('SBY11PS','SBY11PS','2025-04-08 08:55:07','2025-04-08 08:55:07',''),('SBY1PS','SBY1PS','2025-03-28 10:32:50','2025-03-28 10:32:50',''),('SBY4PS','SBY4PS','2025-03-28 10:32:50','2025-03-28 10:32:50',''),('SBY7PS','SBY7PS','2025-04-09 08:59:03','2025-04-09 08:59:03',''),('SMD1','SMD1','2025-03-28 09:17:32','2025-03-28 02:19:53',''),('SMD3','SMD3','2025-03-28 09:18:51','2025-03-28 09:18:51',''),('SMD4','SMD4','2025-03-28 09:17:32','2025-04-24 03:47:46',NULL),('SMG1','SMG1','2025-04-09 14:02:59','2025-04-24 03:47:16','B'),('SMG1TOK','SMG1TOK','2025-04-09 14:02:59','2025-04-09 07:03:20','GRADE C'),('SMG2','SMG2','2025-04-09 16:09:46','2025-04-09 16:09:46',NULL),('SMG4','SMG4','2025-04-24 10:46:43','2025-04-24 10:46:43',NULL),('SMG6','SMG6','2025-04-24 10:46:43','2025-04-24 03:47:52','B'),('SMG7','SMG7','2025-04-24 10:46:45','2025-04-24 10:46:45',NULL),('SMG9','SMG9','2025-04-24 10:46:45','2025-04-24 10:46:45',NULL);
/*!40000 ALTER TABLE `dbmgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmgroup`
--

DROP TABLE IF EXISTS `dbmgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmgroup` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupdesc` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmgroup`
--

LOCK TABLES `dbmgroup` WRITE;
/*!40000 ALTER TABLE `dbmgroup` DISABLE KEYS */;
INSERT INTO `dbmgroup` VALUES (1,'salah pilih item','2023-09-10 21:15:44','','2024-10-16 08:25:03','admin'),(2,'Group 2','2023-09-10 21:15:44','',NULL,NULL),(3,'Group 3','2023-09-10 21:15:44','',NULL,NULL),(4,'Group 4','2023-09-10 21:15:44','',NULL,NULL),(5,'Group 5','2023-09-10 21:15:44','',NULL,NULL),(6,'Group 6','2023-09-10 21:15:44','',NULL,NULL),(7,'Group 7','2023-09-10 21:15:44','',NULL,NULL),(8,'Group 8','2023-09-10 21:15:44','',NULL,NULL);
/*!40000 ALTER TABLE `dbmgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmjobtype`
--

DROP TABLE IF EXISTS `dbmjobtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmjobtype` (
  `jobtypeid` int(5) NOT NULL AUTO_INCREMENT,
  `jobtypecode` char(1) NOT NULL,
  `jobtypename` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`jobtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmjobtype`
--

LOCK TABLES `dbmjobtype` WRITE;
/*!40000 ALTER TABLE `dbmjobtype` DISABLE KEYS */;
INSERT INTO `dbmjobtype` VALUES (1,'P','Pelaku','2023-09-10 21:34:37','',NULL,NULL),(2,'A','Analisator','2023-09-10 21:34:37','',NULL,NULL),(6,'M','Administrator','2024-11-15 05:45:17','admin','2024-11-15 05:45:17',NULL);
/*!40000 ALTER TABLE `dbmjobtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmkeputusan`
--

DROP TABLE IF EXISTS `dbmkeputusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmkeputusan` (
  `keputusanid` int(11) NOT NULL AUTO_INCREMENT,
  `keputusandesc` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`keputusanid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmkeputusan`
--

LOCK TABLES `dbmkeputusan` WRITE;
/*!40000 ALTER TABLE `dbmkeputusan` DISABLE KEYS */;
INSERT INTO `dbmkeputusan` VALUES (1,'FPDS','2023-09-10 21:37:05','',NULL,NULL),(2,'Pembebanan','2023-09-10 21:37:05','',NULL,NULL),(3,'GI-GR-WO','2023-09-10 21:37:05','',NULL,NULL),(4,'Pembetulan SJ Transfer','2023-10-17 15:23:18','admin',NULL,NULL),(5,'Pembuatan SJ Transfer','2023-10-17 15:24:27','admin',NULL,NULL);
/*!40000 ALTER TABLE `dbmkeputusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmketerangan`
--

DROP TABLE IF EXISTS `dbmketerangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmketerangan` (
  `keteranganid` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`keteranganid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmketerangan`
--

LOCK TABLES `dbmketerangan` WRITE;
/*!40000 ALTER TABLE `dbmketerangan` DISABLE KEYS */;
INSERT INTO `dbmketerangan` VALUES (2,'Cek Lokasi','2024-10-04 04:14:48','2024-10-04 04:14:48'),(11,'Cek warna','2024-10-04 04:53:22','2024-10-04 04:53:22'),(13,'Ada koreksi','2024-10-07 02:41:00','2024-10-07 02:41:00'),(14,'cek merk','2024-11-05 01:24:37','2024-11-05 01:24:37');
/*!40000 ALTER TABLE `dbmketerangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmlevel`
--

DROP TABLE IF EXISTS `dbmlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmlevel` (
  `levelid` int(5) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(25) NOT NULL,
  PRIMARY KEY (`levelid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmlevel`
--

LOCK TABLES `dbmlevel` WRITE;
/*!40000 ALTER TABLE `dbmlevel` DISABLE KEYS */;
INSERT INTO `dbmlevel` VALUES (1,'Administrator'),(2,'Super user'),(3,'Analisator'),(4,'Pelaku'),(5,'Warehouse'),(6,'Kepala Warehouse'),(7,'Kepala FAC'),(8,'Kepala Purchasing'),(9,'Kepala Operasional'),(10,'Regional Manager'),(11,'Staff Stok'),(12,'Pic Warehouse');
/*!40000 ALTER TABLE `dbmlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmlocation`
--

DROP TABLE IF EXISTS `dbmlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmlocation` (
  `locationid` int(5) NOT NULL AUTO_INCREMENT,
  `locationcode` varchar(50) NOT NULL,
  `locationname` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  `coyid` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmlocation`
--

LOCK TABLES `dbmlocation` WRITE;
/*!40000 ALTER TABLE `dbmlocation` DISABLE KEYS */;
INSERT INTO `dbmlocation` VALUES (6,'RAK STAINLESS TOKO','AREA 6',0,0,'2024-11-05 01:19:42','admin','2025-02-03 08:24:14','admin'),(7,'RAK BRG PRODUK & SAMPLE','AREA 7',0,0,'2024-11-05 01:20:25','admin','2025-02-03 08:24:14','admin'),(8,'KABEL & CAT','AREA 8',0,0,'2024-11-05 01:22:42','admin','2025-02-03 08:24:14','admin'),(9,'CAT','AREA 9',1,0,'2024-11-05 01:23:06','admin','2025-02-03 08:24:14','admin'),(10,'SANITARY & CAT','AREA 10',0,0,'2024-11-05 01:23:26','admin','2025-02-03 08:24:14','admin'),(11,'GUDANG 1','AREA 1',0,0,'2024-11-06 04:13:31','admin','2025-02-03 08:24:14',NULL),(12,'RAK  BESI GUDANG','AREA 2',0,0,'2024-11-06 04:14:00','admin','2025-02-03 08:24:14',NULL),(13,'LAPANGAN','AREA 3',0,0,'2024-11-06 04:14:59','admin','2025-02-03 08:24:14',NULL),(14,'GUDANG 2','AREA 4',0,0,'2024-11-06 04:15:32','admin','2025-02-03 08:24:14',NULL),(15,'RAK BESI TOKO','AREA 5',0,0,'2024-11-06 04:15:53','admin','2025-02-03 08:24:14',NULL),(16,'test','est',0,0,'2025-02-19 07:29:49','admin','2025-02-19 07:29:49',NULL);
/*!40000 ALTER TABLE `dbmlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmuser`
--

DROP TABLE IF EXISTS `dbmuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `coyid` int(10) NOT NULL,
  `level` int(11) DEFAULT NULL COMMENT '1-Administrator\r\n2-Super User\r\n3-Analisator\r\n4-checker\r\n5-wrh',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `remember_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmuser`
--

LOCK TABLES `dbmuser` WRITE;
/*!40000 ALTER TABLE `dbmuser` DISABLE KEYS */;
INSERT INTO `dbmuser` VALUES (12,0,'00000','admin','$2y$10$cY8SEVFGq2YyJ9RrVMY8q.xkoYcOzKjA4baeqdqKxBLY6CGujkrZi','Admin',1,1,'2023-06-13 17:39:32','admin',NULL,NULL,'bynHYLJy8dKnc4H0RanuveFigR3f9GfE0jWBln1SCTMoCvBpafSDNQKeZvNF'),(113,99428,'07489','deden','$2y$12$M4pa9wfSRUyb3AroTpovvejtVG0nX/oUdDaZ8zx4eP9zElAUzdVLe','deden',1,3,'2024-11-04 06:31:40','admin','2024-11-04 06:31:40',NULL,''),(114,99422,'9359','diva','$2y$12$lYXaSwLoKMJnp/QY7qh12uMSCgT.5hhIOUBa45zPgbwhCcAUDd7mO','diva',1,3,'2024-11-04 06:45:55','admin','2024-11-04 06:45:55',NULL,''),(115,99944,'9634','andiny','$2y$12$rFXgnn7bdoobMFAAKTFWgeDPFjAgQ8jOPmnvlAD9bW9iKxMzMl.OC','andiny',1,3,'2024-11-04 06:46:56','admin','2024-11-04 06:46:56',NULL,''),(116,99533,'9858','fauzi','$2y$12$fPV/h5u1h8JvWcBsDioHBOmpIcaJh1BmVeMvVRGj4dOOeg8uH1.r6','fauzi',1,3,'2024-11-04 06:48:18','admin','2024-11-04 06:48:18',NULL,''),(117,99685,'8975','maratuz','$2y$12$ZfDdo0tD9KLRSKwZLa4i3ewy5tmgcwiB9s4EO4FaR4R23Xu6Ctod.','maratuz',1,4,'2024-11-04 06:49:29','admin','2024-11-04 06:49:29',NULL,''),(118,99388,'9397','faqih','$2y$12$PKjIfFY2fzQ0c2XUTiPbG.VEk/Kz3kVNENGxz0/uPai.BPfZ5AESm','faqih',1,4,'2024-11-04 06:50:46','admin','2024-11-04 06:50:46',NULL,''),(119,99477,'9925','abraham','$2y$12$1IzQgDFz23w2c/OPeN7SN.2adfbFteXwbruaGof7LYuQTTaX5kN1u','abraham',1,4,'2024-11-04 06:52:10','admin','2024-11-04 06:52:10',NULL,''),(120,99421,'1010','lina','$2y$12$B/0IE9HBVmrAokgXwad0IOqbNG5MdEiyz5jGQVAD5ZxQkARyfHaXW','dian',1,4,'2024-11-04 06:54:13','admin','2024-11-04 06:54:13',NULL,''),(122,99206,'8289','garren','$2y$12$SLyxWjgtcaEH2oDBE7cH1.cUUepTlnOL5TZOUrD0E84rNbLzbXulO','garren',1,4,'2024-11-04 06:56:05','admin','2024-11-04 06:56:05',NULL,''),(123,99525,'4465','denny','$2y$12$9G6DooBhcuYpQ0ytu0yGU.Ir9N8NOFb4rstxD6mFyfeyycBf4UHz2','denny',1,4,'2024-11-04 06:56:52','admin','2024-11-04 06:56:52',NULL,''),(124,99201,'9184','pingkan','$2y$12$U4QIETEogICsyyGyBVex8uSS5v6Y2doiCiZTbnL/G3K5kgOYf7JYy','pingkan',1,4,'2024-11-04 06:57:36','admin','2024-11-04 06:57:36',NULL,''),(125,99102,'9030','refael','$2y$12$RBu5mGScx5pcRp6H1MtK3emGdis2SbEcbjASrt/QDHvjNeED83na2','refael',1,3,'2024-11-04 06:58:40','admin','2024-11-04 06:58:40',NULL,''),(126,99814,'2890','didi','$2y$12$Hv0h.8YDNhDv.GA5QcFm0.d1o5mD5J7LH.jL9B/rmMuhPwPvqJD9W','didi',1,4,'2024-11-04 06:59:23','admin','2024-11-04 06:59:23',NULL,''),(127,99349,'10282','aulya','$2y$12$4IAG4CfcqKLRwUTnKcSCde0Q.EaK26D5/4QHM.aaHtVjKa8PX4Ah.','aulya',1,4,'2024-11-04 07:00:30','admin','2024-11-04 07:00:30',NULL,''),(128,99347,'9873','wito','$2y$12$/H/OYQIMudI4PiF9gHGJYOqs2GxsCuNWRPA3ww5Nwqjzs41vY9Ndu','wito',1,4,'2024-11-04 07:04:30','admin','2024-11-04 07:04:30',NULL,''),(129,99282,'4608','hendra','$2y$12$pVmXbx81aowaum9m3TVZ4.Hpnowsk6oVjTZMBaVDN568RXGoMfi3u','hendra',1,4,'2024-11-04 07:05:07','admin','2024-11-04 07:05:07',NULL,''),(130,99779,'10262','pieter','$2y$12$lvEQ1RfAjfGqx03U4rRZ2OhEZBdGhgS1dZIXgzRrWyuzRGH1e7ntG','pieter',1,4,'2024-11-04 07:05:50','admin','2024-11-04 07:05:50',NULL,''),(131,99857,'9812','fanny','$2y$12$7ZasKjR8W4GtIfNyGV4Vquh98rUo7wbdV8QIvfd.J4mb8kHkL8YD2','fanny',1,4,'2024-11-04 07:06:27','admin','2024-11-04 07:06:27',NULL,''),(132,99212,'3199','titin','$2y$12$C6c96NnKCLeIuIxBLatRMOdXrDrxnOef4vo6B7GJ614fK8oQKb6pK','mariyantini',1,3,'2024-11-04 07:07:49','admin','2024-11-04 07:07:49',NULL,''),(133,99126,'9222','kharisma','$2y$12$41nFhESXZZS2hLu6ht3VV.wgQ2d3ifWEuiAuE7ABEszaieA6eNaaO','kharisma',1,4,'2024-11-04 07:08:35','admin','2024-11-04 07:08:35',NULL,''),(134,99242,'4996','andri','$2y$12$VkdP8YVuZV.6oJnYg3apZuETo6Qx1A8XN0SO5EeB7q/yAWpRFRcUC','andri',1,4,'2024-11-04 07:10:08','admin','2024-11-04 07:10:08',NULL,''),(135,99979,'7709','yuli','$2y$12$npStzkrdRacc/o2x08/hO.qy3PMhDFCsGlOYLNQT5II6RNBHRrhDG','yuli',1,4,'2024-11-04 07:11:53','admin','2024-11-04 07:11:53',NULL,''),(136,99705,'8307','hanna','$2y$12$KH168buqv0I/wv1Hd3cnLOh7oeL/UL/8lFYYzav62Vb6iHqBEiTOO','hanna',1,4,'2024-11-04 07:12:42','admin','2024-11-04 07:12:42',NULL,''),(137,99729,'10289','rina','$2y$12$wwy7UJoTufV3M5jrEUP1.e1tpCul1Eo5c5gVRZyZRb8jh4e8uhbtC','rina',1,3,'2024-11-04 07:13:59','admin','2024-11-15 06:00:32','admin',''),(138,99203,'10397','rini','$2y$12$a6snaivpj2gHKGmEr5YrMOpMtB2tjP.DphtRGMrRQRxgCF0TtX8zW','rini',1,3,'2024-11-04 07:15:37','admin','2024-11-15 05:48:04','admin',''),(140,99312,'9740','imah','$2y$12$ewdViTOGqggZ.mZ5gLvBc.lEp9ngfj0cdZHesHC9EGS5ZaIhv5FKi','fatimah',1,3,'2024-11-04 07:16:59','admin','2024-11-15 05:48:14','admin',''),(141,99199,'8398','rud','$2y$12$ulFkSIguwK.AssOGr52ayOv5YB6KqlLbsY.tx9T3a98dg4n51e6sC','rud',1,3,'2024-11-04 07:17:45','admin','2024-11-15 05:48:23','admin',''),(142,99329,'3629','nova','$2y$12$GEsl1rP29rbqvgg/rraAUO5pJiVzH/U91sQDW8yHWxmIiLxxqOBZy','nova',1,4,'2024-11-04 07:18:42','admin','2024-11-15 06:01:27','admin',''),(143,99528,'2814','desi','$2y$12$4q0tuq1vysSby66mNk9L/udhsyi5N.LHOJc6hBl8SNblKtEgdSxri','desi',1,3,'2024-11-04 07:19:14','admin','2024-11-15 05:48:41','admin',''),(144,99141,'1626','rizki','$2y$12$y95giRA3bY7a.0g8W34c4.8AnpnRgCA1NN21KLE6g9LSj24we5D3W','rizki',1,3,'2024-11-04 07:20:07','admin','2024-11-15 05:48:54','admin',''),(145,99884,'82179','johan','$2y$12$aYHQ6XvNTeNF8WlSu/pfq.bYPtUjdvPEymSaZ8W9ZM9ifcPkqW02O','johan',1,4,'2024-11-04 07:29:54','admin','2024-11-04 07:29:54',NULL,''),(146,99885,'2512','inggrid','$2y$12$ieLOPopItCvV29hI6pp8Qe1rC1mlkJS4wOGDl3B8xLr5y2uYVuAli','inggrid',1,4,'2024-11-04 07:30:24','admin','2024-11-04 07:30:24',NULL,''),(147,99498,'2971','benny','$2y$12$CoMyhLQdp8ZJyPQZV8UxLub8R30PMuKM6oZWE0xRCKS.XulUfqV4e','benny',1,3,'2024-11-04 07:32:52','admin','2024-11-04 07:32:52',NULL,''),(149,99431,'946','henny','$2y$12$5MZkCbTiewbYNElFEuSj8.PmmiPpKtJ43v5qZFTF8YpwvDWYgfmPe','henny',1,3,'2024-11-06 03:08:22','admin','2024-11-15 05:49:06','admin',''),(154,99153,'10482','d','$2y$12$yfWQi4sXyX6eePgHFn191OrVZJpLWKHkwbKj1MKWSuZBfJSFRaT6e','d',1,4,'2024-12-11 02:27:37','admin','2024-12-11 02:27:37',NULL,''),(155,99583,'0','test','$2y$12$H04.mVyUNTZQkwNA2GhJvuzhamHVWepOba5yPHDiy2quER0nGzAj6','test',1,3,'2024-12-11 04:11:49','admin','2024-12-11 04:11:49',NULL,''),(156,99443,'001','testcso','$2y$12$PvLUvI96iNAlTup/e41lD.3z4P/PBBBjhB2gyWsKmL1TdiHKAgSUy','test cso',1,4,'2024-12-13 08:56:17','admin','2025-03-26 07:13:55','admin',''),(157,99589,'002','testcss','$2y$12$noensEmnX9xqSbN8iIflm.89lMjzLjdIRDt6G83t8mDIF.LDBzoL2','test css',1,3,'2024-12-13 08:56:30','admin','2024-12-13 08:56:30',NULL,''),(158,99606,'003','testboth','$2y$12$/jaFPyElYHKt0lXD5VcYQuRLOacvBc/BVSkWK3UwDnAtHpx0kC4Y.','test both',1,3,'2024-12-16 06:53:36','admin','2024-12-16 06:53:36',NULL,''),(161,99627,'124578','analisatordd','$2y$12$n1a/pNgOHb9FYDtdq5cUHu8ZdwnLt58swCTNaEDmj7wUhyZQpFie.','analisatordd',1,3,'2024-12-21 03:56:13','admin','2024-12-21 03:56:13',NULL,''),(164,99692,'999000','saya','$2y$12$YN3tWCJO1W0HVy2cFywVTe7tcSSphmAebbeP3kAHxn4.X9QmIuEeS','saya',1,4,'2024-12-21 04:18:00','admin','2024-12-21 04:18:00',NULL,''),(165,167,'04496','kristiawan04496','$2y$12$0YNBYa38DfOtCwfgp/lCFOPQk8/xMJoK4gcwACDy.KO5vUhl27mEi','Kristiawan Wicaksono',1,5,'2024-12-21 04:32:24','admin','2025-03-28 02:47:16','admin',''),(166,99342,'210177','askhid','$2y$12$my6cmLBtvYxHLfI72.TBKOPnUSXHm8oxt4lqMVksSf1G1jy/vIGJi','askhid',1,4,'2024-12-26 09:33:58','admin','2024-12-26 09:33:58',NULL,''),(168,99144,'10482','dennyy','$2y$12$jc4d6PgMOhWdm/ajxUSiHeeU80qaB/.vkjZCFfh.BWjZPfDzBjLJe','dennyy',1,1,'2025-01-03 02:45:07','admin','2025-04-08 08:32:54','admin',''),(169,99194,'00001','kafac','$2y$12$qYUi2y9z/C3GI7gCOJLbSOQWlAfeZGQ9NFsrBCOFyYfTyiePn8hmG','Kepala FAC',1,3,'2025-01-08 09:11:29','admin','2025-01-08 09:11:29',NULL,''),(170,99812,'00002','koorfac','$2y$12$Dzv7kV4YxULDj/VltitNcOU95sUoqBrohRBAueVW7pvnjx8mA9aoW','Koordinator FAC',1,3,'2025-01-09 05:04:00','admin','2025-01-09 05:04:00',NULL,''),(171,99406,'123555','sayadenny','$2y$12$lzBUzrHCkHd.uURkiFEUSOEZytHE1grHzs3cRBKtqCS.TAHOFl.eG','sayadenny',1,3,'2025-03-03 05:02:11','admin','2025-03-03 05:02:11',NULL,''),(172,99423,'555555','ert','$2y$12$Zu8fE9Ps47mo1OP7Y7as..BpBHzYZ/Wkypm2/P5/B/sKtyxCd0Taa','ert',1,4,'2025-03-03 09:04:19','admin','2025-03-03 09:04:19',NULL,''),(173,99897,'19900','shura','$2y$12$2jJCLTy70bHfcFca20ZbmusyAt7SwotpjcyGZvzx9qSItKK.Qa4TS','shura',1,4,'2025-03-10 02:53:38','admin','2025-03-10 02:53:38',NULL,''),(174,99667,'0055','picwrh','$2y$12$dZzXft4O8Nfh6NzPnokLeu4g3O3dQpk4e1d3A8Gcae4AQ4rCtB6qW','picwrh',1,3,'2025-04-07 07:24:50','admin','2025-04-07 07:30:10','admin',''),(175,148,'01253','gaby01253','$2y$12$MAHbW5K2Kd/GwqGTYSD3J.PpDjreiuUUyBSoKUjEI/wmr74YLYzr2','Gabrielle Wiedyanata',1,4,'2025-04-17 02:27:27','admin','2025-04-17 02:27:27',NULL,''),(176,99908,'10999','askhidd','$2y$12$p8tVMU0vgDIe/.TaneHD7eCdPBgyFDyfOr99KGx3zeiBnwLKbykgu','askhidd',1,3,'2025-04-22 02:29:18','admin','2025-04-22 02:29:18',NULL,'');
/*!40000 ALTER TABLE `dbmuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbtcsodet`
--

DROP TABLE IF EXISTS `dbtcsodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbtcsodet` (
  `csodetid` int(11) NOT NULL AUTO_INCREMENT,
  `csoid` int(11) NOT NULL,
  `trsdetid` int(10) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) DEFAULT NULL,
  `locationid` int(11) NOT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `approval` char(1) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan TR= temuan reguler TA= temuan avalan',
  `statussubmit` varchar(1) NOT NULL COMMENT 'P= sudah submit\r\nD= belum submit',
  `statushslcso` char(1) NOT NULL COMMENT 'D = baru dibuat C = ada CSO ulang\r\nT = tambahan dari CSO ulang',
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`csodetid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet`
--

LOCK TABLES `dbtcsodet` WRITE;
/*!40000 ALTER TABLE `dbtcsodet` DISABLE KEYS */;
INSERT INTO `dbtcsodet` VALUES (1,1,3,24590,2459042642,9,'','','',NULL,'A','P','D','2025-04-08 13:53:53'),(2,1,4,24661,2466142643,9,'','','',NULL,'A','P','D','2025-04-08 13:54:26'),(3,1,5,27102,2710243139,9,'','','',NULL,'A','P','D','2025-04-08 13:54:42'),(4,1,1,16104,161045259,9,'','','',NULL,'A','P','D','2025-04-08 13:55:10'),(5,1,2,8729,872947746,9,'','','',NULL,'A','P','D','2025-04-08 13:55:30'),(12,2,31,24548,2454841240,9,'','','',NULL,'A','P','D','2025-04-08 14:31:23'),(13,2,32,24548,2454841241,9,'','','',NULL,'A','P','D','2025-04-08 14:31:41'),(14,2,29,24547,2454741238,9,'','','',NULL,'A','P','D','2025-04-08 14:31:53'),(15,2,30,24547,2454741239,9,'','','',NULL,'A','P','D','2025-04-08 14:32:05'),(16,2,34,24602,2460241236,9,'','','',NULL,'A','P','D','2025-04-08 14:32:29'),(17,2,33,24552,2455241222,9,'','','',NULL,'A','P','D','2025-04-08 14:32:48'),(18,3,8,8,0,9,'SBY7PS','','',NULL,'R','P','D','2025-04-09 09:18:53'),(19,3,6,6,0,9,'SBY11PS','','',NULL,'R','P','D','2025-04-09 09:19:13'),(20,3,5,5,0,9,'SBY11PS','','',NULL,'R','P','D','2025-04-09 09:19:29'),(21,3,9,9,0,9,'','','',NULL,'R','P','D','2025-04-09 09:20:36'),(22,3,7,7,0,9,'SBY11PS','','',NULL,'R','P','C','2025-04-09 09:21:02'),(23,3,1,1,0,9,'','','',NULL,'R','P','C','2025-04-09 09:21:17'),(24,3,3,3,0,9,'SBY4PS','','',NULL,'R','P','C','2025-04-09 09:23:45'),(25,3,4,4,0,9,'SBY4PS','','',NULL,'R','P','D','2025-04-09 09:24:50'),(26,3,2,2,0,9,'SBY4PS','','',NULL,'R','P','C','2025-04-09 09:26:14'),(27,3,3,3,3,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 12:19:19'),(28,4,2,2,0,9,'SBY4PS','','',NULL,'R','P','C','2025-04-09 13:28:53'),(29,3,2,2,2,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 13:29:07'),(30,4,2,2,2,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 13:29:07'),(32,5,16,16,0,9,'GRADE B','','',NULL,'R','P','C','2025-04-09 14:04:23'),(33,6,16,16,0,9,'GRADE C','','',NULL,'R','P','C','2025-04-09 14:04:50'),(34,5,16,16,16,9,'GRADE B',NULL,NULL,NULL,'R','D','T','2025-04-09 14:05:02'),(35,6,16,16,16,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 14:05:02'),(37,6,17,17,0,9,'GRADE B','','',NULL,'R','P','C','2025-04-09 14:09:43'),(38,6,17,17,17,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 14:10:02'),(39,4,1,1,0,9,'SBY4PS','','',NULL,'R','P','C','2025-04-09 14:17:12'),(40,3,1,1,1,9,NULL,'',NULL,NULL,'R','P','T','2025-04-09 14:18:40'),(41,4,1,1,1,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-09 14:18:40'),(43,6,20,20,0,9,'SMG2','','',NULL,'R','P','D','2025-04-09 16:10:11'),(44,5,16,5643,0,9,'GRADE C','','',NULL,'R','P','D','2025-04-10 14:18:32'),(45,5,21,9999001,NULL,0,'GRADE B','MERAH,PINK','',NULL,'TR','P','C','2025-04-11 09:18:37'),(46,5,22,9999002,NULL,10,'BPN8','MERAH,PINK','',NULL,'TR','P','C','2025-04-11 09:19:48'),(47,5,23,9999003,NULL,10,'GRADE C','MERAH,PINK','',NULL,'TR','P','C','2025-04-11 09:22:43'),(48,5,24,9999004,NULL,11,'AREA 1','MERAH,PINK','',NULL,'TR','P','C','2025-04-11 09:28:20'),(49,5,24,9999004,9999004,9,NULL,'',NULL,NULL,'TR','P','T','2025-04-11 09:31:20'),(50,5,23,9999003,9999003,9,NULL,'',NULL,NULL,'TR','P','T','2025-04-11 09:33:36'),(51,5,22,9999002,9999002,9,NULL,'',NULL,NULL,'R','P','T','2025-04-11 09:44:56'),(52,3,2,2960,0,9,'SBY4PS','','',NULL,'R','P','D','2025-04-14 09:03:08'),(53,5,19,3306,NULL,9,'','',NULL,NULL,'R','P','D','2025-04-14 15:12:15'),(54,5,17,8974,0,9,'GRADE B','','',NULL,'R','P','D','2025-04-16 15:25:28'),(55,5,21,9999001,9999001,9,'SBY4PS','',NULL,NULL,'R','P','T','2025-04-16 15:42:13'),(60,3,7,25758,0,9,'SBY11PS','Hitam','',NULL,'R','P','C','2025-04-21 10:59:40'),(61,3,7,7,7,9,NULL,NULL,NULL,NULL,'R','D','T','2025-04-21 11:04:22'),(62,3,7,25758,25758,9,'SBY11PS','Hitam',NULL,NULL,'R','P','T','2025-04-21 11:04:22'),(64,3,1,2918,NULL,9,'','',NULL,NULL,'R','P','D','2025-04-22 11:06:19'),(65,3,1,2918,0,9,'BPN8','',NULL,NULL,'R','P','D','2025-04-22 11:08:58'),(66,3,48,9999001,NULL,9,'BPN8','Hitam',NULL,NULL,'TR','P','D','2025-04-25 08:53:46'),(67,3,49,9999002,NULL,9,'SBY1PS','Hitam','',NULL,'TR','D','D','2025-04-25 08:58:07'),(69,3,50,9999003,NULL,11,'SBY11PS','','',NULL,'TR','D','D','2025-04-25 13:13:50');
/*!40000 ALTER TABLE `dbtcsodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbtcsodet2`
--

DROP TABLE IF EXISTS `dbtcsodet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbtcsodet2` (
  `csodet2id` int(11) NOT NULL AUTO_INCREMENT,
  `csodetid` int(11) NOT NULL,
  `csoid` int(11) NOT NULL,
  `csocount` int(1) NOT NULL,
  `qty` decimal(10,3) DEFAULT NULL,
  `qty_pengali` decimal(10,3) DEFAULT NULL,
  `pengali` decimal(10,3) DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  `inputs` varchar(100) DEFAULT NULL,
  `operand` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`csodet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet2`
--

LOCK TABLES `dbtcsodet2` WRITE;
/*!40000 ALTER TABLE `dbtcsodet2` DISABLE KEYS */;
INSERT INTO `dbtcsodet2` VALUES (1,1,1,1,15.890,NULL,NULL,'15.89','15.89',15.890),(2,2,1,1,1.650,NULL,NULL,'1.65','1.65',1.650),(3,3,1,1,0.850,NULL,NULL,'0.85','0.85',0.850),(4,4,1,1,10.000,NULL,NULL,'10','10',10.000),(5,5,1,1,680.300,NULL,NULL,'680.3','680.3',680.300),(12,12,2,1,2.350,NULL,NULL,'2.35','2.35',2.350),(13,13,2,1,0.290,NULL,NULL,'0.29','0.29',0.290),(14,14,2,1,3.000,NULL,NULL,'3','3',3.000),(15,15,2,1,1.000,NULL,NULL,'1','1',1.000),(16,16,2,1,0.400,NULL,NULL,'0.4','0.4',0.400),(17,17,2,1,4.270,NULL,NULL,'4.27','4.27',4.270),(18,18,3,1,8.000,NULL,NULL,'8','8',8.000),(19,19,3,1,2.000,NULL,NULL,'2','2',2.000),(20,20,3,1,1.000,NULL,NULL,'1','1',1.000),(21,21,3,1,2.000,NULL,NULL,'2','2',2.000),(22,22,3,1,809.000,NULL,NULL,'809','809',809.000),(23,23,3,1,3.000,NULL,NULL,'3','3',3.000),(24,24,3,1,15.000,NULL,NULL,'15','15',15.000),(25,25,3,1,33.530,NULL,NULL,'33.53','33.53',33.530),(26,26,3,1,76.400,NULL,NULL,'76.4','76.4',76.400),(27,27,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(28,28,4,1,3.000,NULL,NULL,'3','3',3.000),(29,29,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(30,30,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,5,1,411.000,NULL,NULL,'411','411',411.000),(33,33,6,1,22.000,NULL,NULL,'22','22',22.000),(34,34,5,2,NULL,NULL,NULL,NULL,NULL,NULL),(35,35,6,2,NULL,NULL,NULL,NULL,NULL,NULL),(37,37,6,1,161919.000,NULL,NULL,'161919','161919',161919.000),(38,38,6,2,NULL,NULL,NULL,NULL,NULL,NULL),(39,39,4,1,111.000,NULL,NULL,'111','111',111.000),(40,40,3,2,3.000,NULL,NULL,NULL,NULL,NULL),(41,41,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(43,43,6,1,19611.000,NULL,NULL,'19611','19611',19611.000),(44,44,5,2,805.000,NULL,NULL,'805','805',805.000),(45,45,5,1,2.000,NULL,NULL,'2','2',2.000),(46,46,5,1,2.000,NULL,NULL,'2','2',2.000),(47,47,5,1,2.000,NULL,NULL,'2','2',2.000),(48,48,5,1,2.000,NULL,NULL,'2','2',2.000),(49,49,5,2,1.000,NULL,NULL,NULL,NULL,NULL),(50,50,5,2,1.000,NULL,NULL,NULL,NULL,NULL),(51,51,5,2,1.000,NULL,NULL,NULL,NULL,NULL),(52,52,3,2,76.500,NULL,NULL,'76.5','76.5',76.500),(53,53,5,1,4.000,NULL,NULL,'4','4',1.000),(54,54,5,2,762.000,NULL,NULL,'762','762',762.000),(55,55,5,2,598.000,NULL,NULL,NULL,NULL,NULL),(60,60,3,1,2.000,NULL,NULL,'2','2',2.000),(61,61,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(62,62,3,2,800.000,NULL,NULL,NULL,NULL,NULL),(64,64,3,2,7.000,NULL,NULL,'7','7',2.000),(65,65,3,2,205.000,NULL,NULL,'20+25+15+25+15=100+50=150+55=205','20,25,15,25,15,50,55',20.000),(66,66,3,1,0.000,NULL,NULL,'2','2',2.000),(67,67,3,1,0.000,NULL,NULL,'0','0',0.000),(68,69,3,1,3.000,NULL,NULL,'3','3',3.000);
/*!40000 ALTER TABLE `dbtcsodet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbtcsohed`
--

DROP TABLE IF EXISTS `dbtcsohed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbtcsohed` (
  `csoid` int(10) NOT NULL AUTO_INCREMENT,
  `trsid` int(11) NOT NULL,
  `docrefid` varchar(25) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `pelakuid` int(5) NOT NULL,
  `pelakuuname` varchar(50) NOT NULL,
  `coyid` int(11) NOT NULL,
  `status` char(1) NOT NULL COMMENT 'P= sudah end CSO\r\nA= masih aktif cso',
  `tipecso` char(1) NOT NULL COMMENT 'R = Item\r\nA = Avalan',
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `updateddate` datetime DEFAULT NULL,
  PRIMARY KEY (`csoid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsohed`
--

LOCK TABLES `dbtcsohed` WRITE;
/*!40000 ALTER TABLE `dbtcsohed` DISABLE KEYS */;
INSERT INTO `dbtcsohed` VALUES (1,1,'CSOSRM BPNs-askhid-202504','CSO',99342,'askhid',1,'P','A','2025-04-08 13:44:55',NULL),(2,5,'CSSSRM BPNs-askhid-202504','CSS',99342,'askhid',1,'P','A','2025-04-08 14:31:07',NULL),(3,1,'CSOSRM BPNs-askhid-202504','CSO',99342,'askhid',1,'A','R','2025-04-09 09:13:03',NULL),(4,1,'CSOSRM BPNs-shura-202504-','CSO',99897,'shura',1,'A','R','2025-04-09 13:28:36',NULL),(5,2,'CSSSRM BPNs-askhid-202504','CSS',99342,'askhid',1,'P','R','2025-04-09 14:04:05',NULL),(6,2,'CSSSRM BPNs-shura-202504-','CSS',99897,'shura',1,'P','R','2025-04-09 14:04:43',NULL),(7,6,'CSSSRM BPNs-askhid-202504','CSS',99342,'askhid',1,'A','A','2025-04-25 11:43:57',NULL);
/*!40000 ALTER TABLE `dbtcsohed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbtcsoketerangan`
--

DROP TABLE IF EXISTS `dbtcsoketerangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbtcsoketerangan` (
  `csodetid` int(11) NOT NULL,
  `keteranganid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsoketerangan`
--

LOCK TABLES `dbtcsoketerangan` WRITE;
/*!40000 ALTER TABLE `dbtcsoketerangan` DISABLE KEYS */;
INSERT INTO `dbtcsoketerangan` VALUES (93,2),(93,2),(93,2),(93,2),(94,2),(94,2),(94,2),(94,2),(95,2),(95,2),(95,2),(95,2),(96,2),(96,2),(96,2),(96,2),(97,2),(97,2),(97,2),(97,2),(98,2),(98,2),(98,2),(98,2),(99,2),(99,2),(99,2),(99,2),(100,2),(100,2),(100,2),(100,2),(101,2),(101,2),(101,2),(101,2),(102,2),(102,2),(102,2),(102,2),(103,2),(103,2),(103,2),(103,2),(104,2),(104,2),(104,2),(104,2),(108,2),(109,2),(110,2),(110,2),(111,2),(111,2),(112,2),(112,2),(169,2),(170,2),(174,2),(175,2),(175,2),(177,2),(214,2),(215,2),(216,2),(217,2),(218,2),(219,2),(222,2),(223,2),(259,2),(260,2),(261,2),(262,2),(264,2),(265,2),(344,2),(346,2),(347,2),(349,2),(350,2),(352,2),(353,2),(431,2),(432,2),(455,2),(456,2),(457,2),(459,2),(460,2),(486,11),(486,13),(14,13),(19,13),(21,2),(21,11),(21,13),(56,2),(56,11),(56,13),(56,14),(57,2),(57,11),(57,13),(57,14),(58,13),(62,11),(62,13),(86,13),(90,2),(90,11),(102,11),(102,13),(104,13),(90,11),(105,11),(106,2),(106,11),(106,13),(106,14),(107,2),(107,11),(107,13),(107,14),(119,2),(120,2),(119,11),(120,11),(119,13),(120,13),(119,14),(120,14),(126,13),(167,2),(167,13),(167,14),(168,2),(168,11),(168,13),(185,13),(185,14),(198,2),(199,2),(212,2),(212,13),(34,13),(27,13),(29,2),(30,2),(34,2),(35,2),(34,13),(35,13),(38,2),(38,13),(40,2),(41,2),(49,2),(50,2),(51,2),(55,2),(59,2),(61,2),(62,2),(61,11),(62,11);
/*!40000 ALTER TABLE `dbtcsoketerangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbtcsoprsn`
--

DROP TABLE IF EXISTS `dbtcsoprsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbtcsoprsn` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `trsid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(10) DEFAULT NULL,
  `coyid` int(10) NOT NULL,
  `jobtypeid` int(1) NOT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `tipecso` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsoprsn`
--

LOCK TABLES `dbtcsoprsn` WRITE;
/*!40000 ALTER TABLE `dbtcsoprsn` DISABLE KEYS */;
INSERT INTO `dbtcsoprsn` VALUES (1,1,99342,'askhid','askhid','3',1,1,NULL,'P','A'),(2,1,99812,'koorfac','Koordinator FAC','2',1,2,NULL,'P','A'),(3,1,99406,'sayadenny','sayadenny','2',1,2,NULL,'P','A'),(4,5,99342,'askhid','askhid','7',1,1,NULL,'P','A'),(5,5,99606,'testboth','test both','2',1,2,NULL,'P','A'),(6,5,99589,'testcss','test css','2',1,2,NULL,'P','A'),(7,2,99342,'askhid','askhid','2',1,1,NULL,'P','R'),(8,2,99897,'shura','shura','2',1,1,NULL,'P','R'),(9,2,99212,'titin','mariyantini','3',1,2,NULL,'P','R'),(10,2,99194,'kafac','Kepala FAC','3',1,2,NULL,'P','R');
/*!40000 ALTER TABLE `dbtcsoprsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsdet`
--

DROP TABLE IF EXISTS `dbttrsdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsdet` (
  `trsdetid` int(10) NOT NULL AUTO_INCREMENT,
  `trsid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) DEFAULT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `isbatch` int(1) DEFAULT NULL,
  `batchno` text DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `onhand` decimal(10,2) NOT NULL,
  `koreksi` decimal(10,2) DEFAULT NULL,
  `deviasi` decimal(10,2) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `group_value` int(11) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `cogs_manual` decimal(15,2) DEFAULT NULL,
  `nodoc` varchar(25) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan TR= temuan reguler TA= temuan avalan',
  `statuscso` int(1) NOT NULL,
  `analisatorid` int(11) DEFAULT NULL,
  `analisator_checked` tinyint(1) DEFAULT NULL,
  `tidak_hitung` int(1) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `keputusan` varchar(25) DEFAULT NULL,
  `kesalahan_admin` int(1) DEFAULT NULL,
  `batch_tertukar` smallint(1) DEFAULT NULL,
  `pembebanan` decimal(10,2) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsdetid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet`
--

LOCK TABLES `dbttrsdet` WRITE;
/*!40000 ALTER TABLE `dbttrsdet` DISABLE KEYS */;
INSERT INTO `dbttrsdet` VALUES (1,1,2918,NULL,'SBYSFA5100M0009-00014','PLAT SS201 0.9MMXAVALAN',1,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'KG',9160.00,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(2,1,2960,NULL,'SBYSFA5100M0010-00042','PLAT SS201 1MMXAVALAN',1,NULL,NULL,NULL,NULL,NULL,76.50,NULL,NULL,NULL,NULL,'KG',7302.11,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(3,1,3034,NULL,'SBYSFA5100M0012-00071','PLAT SS201 1.2MMXAVALAN',1,NULL,NULL,NULL,NULL,NULL,14.50,NULL,NULL,NULL,NULL,'KG',8707.30,NULL,NULL,'R',2,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(4,1,3073,NULL,'SBYSFA5100M0015-00039','PLAT SS201 1.5MMXAVALAN',1,NULL,NULL,NULL,NULL,NULL,33.53,NULL,NULL,NULL,NULL,'KG',8546.01,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(5,1,25340,NULL,'G302CSBT00020003','CLAMP SADLE G 2 X 1/2 BLACK T',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',17501.00,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(6,1,25508,NULL,'T301B00000000075','BOCHTEN TSP - G 3/4',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',16911.97,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(7,1,25758,NULL,'T302D00000000100','DOPPEN BND BL TSP 1',0,NULL,NULL,NULL,NULL,NULL,810.00,NULL,NULL,NULL,NULL,'PCS',6426.79,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(8,1,27312,NULL,'SSAR5100000000140000011-TRDS1','AS SS201 3MMX6M-S',1,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'EA',3960.00,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(9,1,27332,NULL,'SSC00000000000000000000-TRDP0','DISPLAY FITTING TSP',1,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'EA',0.95,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 09:12:07'),(16,2,5643,NULL,'FHU5700M0650-0008','UNP BESI 65X38X5MMX6M SD',1,NULL,NULL,NULL,NULL,NULL,1496.00,NULL,NULL,NULL,NULL,'EA',252463.63,0.00,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 14:03:40'),(17,2,8974,NULL,'FHU5700M0500-0009','UNP BESI 50X38X5MMX6M SD',1,NULL,NULL,NULL,NULL,NULL,762.00,NULL,NULL,NULL,NULL,'EA',165858.80,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 14:03:40'),(19,2,3306,NULL,'XDER000J3101-0002','1DERO J3101 - LIGHT GREY-5',0,NULL,NULL,NULL,NULL,NULL,28.00,NULL,NULL,NULL,NULL,'GALON',163785.10,0.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 14:12:44'),(20,2,5319,NULL,'FAR4200I0088-0002','AS BESI ST41 7/8\"X6M GR',1,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'EA',206063.18,0.00,NULL,'R',1,99212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-09 16:09:46'),(21,2,9999001,NULL,NULL,'FUSO',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'TR',2,99194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 09:18:37'),(22,2,9999002,NULL,NULL,'FUSO2',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'TR',2,99194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 09:19:48'),(23,2,9999003,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'TR',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 09:22:43'),(24,2,9999004,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,'TR',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 09:28:20'),(45,8,5204,NULL,'FAF0000M0050-0006','STREP BESI 5MMX38MMX6M F',1,NULL,NULL,NULL,NULL,NULL,1309.00,NULL,NULL,NULL,NULL,'EA',82704.57,NULL,NULL,'R',1,99406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-24 11:15:06'),(46,8,7658,NULL,'FAQ0000M0100-0007','AS BESI SEGI-4 10MMX10MMX6M CI',1,NULL,NULL,NULL,NULL,NULL,401.00,NULL,NULL,NULL,NULL,'EA',49819.00,NULL,NULL,'R',1,99406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-24 11:15:06'),(47,8,14357,NULL,'FAP8000M0160-0003','BESI BETON 16MMX12M LS-T',1,NULL,NULL,NULL,NULL,NULL,70.00,NULL,NULL,NULL,NULL,'EA',153251.24,NULL,NULL,'R',1,99406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-24 11:15:06'),(48,1,9999001,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-25 08:53:46'),(49,1,9999002,NULL,NULL,'66',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-25 08:58:07'),(50,1,9999003,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-25 13:13:50'),(51,8,9999001,NULL,NULL,'',0,NULL,'','',NULL,'',0.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 14:52:56'),(52,8,9999002,NULL,NULL,'Asfafa',0,NULL,'','',NULL,'',1.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:24:39'),(53,8,9999003,NULL,NULL,'A',0,NULL,'','',NULL,'',1.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:26:17'),(54,8,9999004,NULL,NULL,'',0,NULL,'','',NULL,'',0.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:26:43'),(55,8,9999005,NULL,NULL,'',0,NULL,'','',NULL,'',0.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:27:15'),(56,8,9999006,NULL,NULL,'Tut',0,NULL,'','',NULL,'',123.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:28:40'),(57,8,9999007,NULL,NULL,'Asfafa',0,NULL,'','',NULL,'',123.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:30:36'),(58,8,9999008,NULL,NULL,'Closet Sensor',0,NULL,'','',NULL,'',1.50,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 15:33:01'),(59,8,12985,NULL,'XACO000I0200-0001','CLEAN OUT 2\"',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'EA',35709.72,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 16:14:00'),(60,8,9999009,NULL,NULL,'Pot',0,NULL,'','',NULL,'',10.00,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-28 16:14:50');
/*!40000 ALTER TABLE `dbttrsdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsdet2`
--

DROP TABLE IF EXISTS `dbttrsdet2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsdet2` (
  `trsdet2id` int(11) NOT NULL AUTO_INCREMENT,
  `trsdetid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) DEFAULT NULL,
  `wrh` varchar(50) NOT NULL,
  `wrh_history` text DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2`
--

LOCK TABLES `dbttrsdet2` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2` DISABLE KEYS */;
INSERT INTO `dbttrsdet2` VALUES (1,1,2918,0,'SBY4PS',NULL,3.00),(2,2,2960,0,'SBY4PS',NULL,76.50),(3,3,3034,0,'SBY4PS',NULL,14.50),(4,4,3073,0,'SBY4PS',NULL,33.53),(5,5,25340,0,'SBY11PS',NULL,1.00),(6,6,25508,0,'SBY11PS',NULL,2.00),(7,7,25758,0,'SBY11PS',NULL,810.00),(8,8,27312,0,'SBY7PS',NULL,8.00),(9,9,27332,0,'SBY11PS',NULL,1.00),(10,16,5643,0,'GRADE B',NULL,1480.00),(11,16,5643,0,'GRADE C',NULL,16.00),(12,17,8974,0,'GRADE B',NULL,730.00),(13,17,8974,0,'GRADE C',NULL,32.00),(14,19,3306,NULL,'GRADE B',NULL,26.00),(15,19,3306,NULL,'GRADE C',NULL,2.00),(16,20,5319,NULL,'SMG2',NULL,1.00),(17,21,9999001,NULL,'GRADE B',NULL,0.00),(18,22,9999002,NULL,'BPN8',NULL,0.00),(19,23,9999003,NULL,'GRADE C',NULL,0.00),(20,24,9999004,NULL,'AREA 1',NULL,0.00),(48,45,5204,0,'B','SMG1,SMG6',1308.00),(49,45,5204,0,'SMG9','SMG9',1.00),(50,46,7658,0,'B','SMG1,SMG6',400.00),(51,46,7658,0,'SMG4','SMG4',1.00),(52,47,14357,0,'B','SMG1',61.00),(53,47,14357,0,'SMG4','SMG4',4.00),(54,47,14357,0,'SMG7','SMG7',5.00),(55,48,9999001,NULL,'BPN8',NULL,0.00),(56,49,9999002,NULL,'SBY1PS',NULL,0.00),(57,50,9999003,NULL,'SBY11PS',NULL,0.00),(58,51,9999001,NULL,'',NULL,0.00),(59,52,9999002,NULL,'',NULL,1.00),(60,53,9999003,NULL,'',NULL,1.00),(61,54,9999004,NULL,'',NULL,0.00),(62,55,9999005,NULL,'',NULL,0.00),(63,56,9999006,NULL,'',NULL,123.00),(64,57,9999007,NULL,'',NULL,123.00),(65,58,9999008,NULL,'',NULL,1.50),(66,59,12985,NULL,'GRADE C','SMG1TOK',1.00),(67,60,9999009,NULL,'B','SMG6',10.00);
/*!40000 ALTER TABLE `dbttrsdet2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsdet2a`
--

DROP TABLE IF EXISTS `dbttrsdet2a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsdet2a` (
  `trsdet2id` int(11) NOT NULL AUTO_INCREMENT,
  `trsdetid` int(11) NOT NULL,
  `batchno` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `wrh` varchar(10) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2a`
--

LOCK TABLES `dbttrsdet2a` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2a` DISABLE KEYS */;
INSERT INTO `dbttrsdet2a` VALUES (1,1,NULL,16104,161045259,'SBY4PS',10.00),(2,2,NULL,8729,872947746,'SBY11PS',680.31),(3,3,NULL,24590,2459042642,'SBY4PS',15.90),(4,4,NULL,24661,2466142643,'SBY4PS',1.65),(5,5,NULL,27102,2710243139,'SBY4PS',0.87),(12,29,NULL,24547,2454741238,'SBY4PS',3.00),(13,30,NULL,24547,2454741239,'SBY4PS',1.00),(14,31,NULL,24548,2454841240,'SBY4PS',2.40),(15,32,NULL,24548,2454841241,'SBY4PS',0.40),(16,33,NULL,24552,2455241222,'SBY4PS',4.50),(17,34,NULL,24602,2460241236,'SBY4PS',0.36),(18,35,NULL,24548,2454841240,'SBY4PS',2.40),(19,36,NULL,24548,2454841241,'SBY4PS',0.40),(20,37,NULL,24553,2455341225,'SBY4PS',5.20),(21,38,NULL,24555,2455541224,'SBY4PS',2.00),(22,39,NULL,24664,2466441052,'SBY4PS',1.53),(23,40,NULL,24664,2466441053,'SBY4PS',1.15),(24,41,NULL,24664,2466441054,'SBY4PS',0.99),(25,42,NULL,24664,2466441055,'SBY4PS',0.29),(26,43,NULL,24731,2473140992,'SBY4PS',0.40),(27,44,NULL,24731,2473140993,'SBY4PS',0.45),(28,45,NULL,24733,2473340986,'SBY4PS',1.19),(29,46,NULL,27236,2723642338,'SBY4PS',0.13);
/*!40000 ALTER TABLE `dbttrsdet2a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsdeta`
--

DROP TABLE IF EXISTS `dbttrsdeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsdeta` (
  `trsdetid` int(10) NOT NULL AUTO_INCREMENT,
  `trsid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `isbatch` int(1) NOT NULL,
  `batchno` varchar(50) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `onhand` decimal(10,2) NOT NULL,
  `koreksi` decimal(10,2) DEFAULT NULL,
  `deviasi` decimal(10,2) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `group_value` int(11) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `cogs_manual` decimal(15,2) DEFAULT NULL,
  `nodoc` varchar(25) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler T = item temuan	',
  `statuscso` int(1) NOT NULL,
  `analisatorid` int(11) DEFAULT NULL,
  `analisator_checked` tinyint(1) DEFAULT NULL,
  `tidak_hitung` int(1) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `keputusan` varchar(25) DEFAULT NULL,
  `kesalahan_admin` int(1) DEFAULT NULL,
  `batch_tertukar` smallint(1) DEFAULT NULL,
  `pembebanan` float DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsdetid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdeta`
--

LOCK TABLES `dbttrsdeta` WRITE;
/*!40000 ALTER TABLE `dbttrsdeta` DISABLE KEYS */;
INSERT INTO `dbttrsdeta` VALUES (1,1,16104,161045259,'SBYSFR53BAM0005-00002','PLAT SS204 CU/BA 0.5MMX4\'XRANDOM JIL-C',0,NULL,'STR201.7','4X2175','#0.50(0.5MMX4\'X2175MM)','KRITING, DEKOK',10.00,NULL,NULL,NULL,NULL,'KG',5700.00,NULL,NULL,'A',1,99812,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-08 13:44:42'),(2,1,8729,872947746,'SBYSFS43BAM0004-00125','PLAT SS430 BA CIRCLE 0.4MMX240MM AEI-S2',0,NULL,'RK-20BA.2-2','240','BA#0.35-0.41(0.4MMX240MMX240MM)','D/B=1.090,31KG, U/ STOCK',680.31,0.00,0.00,NULL,NULL,'KG',21922.42,21009.00,NULL,'A',1,99406,0,0,NULL,'4',1,0,NULL,'2025-04-08 13:44:42'),(3,1,24590,2459042642,'SUO5100I0050-0008','PIPA SS201 KILAP 1/2\"XAVALAN NS',0,NULL,'PO-SBY0224-0122','PJG REAL= 230, 432, 386, 434, 354, 320, 342, 366, 401, 285, 213, 374, 412, 346, 320, 399','1/2\" BT= 12KG','MATERIAL PINDAHAN DR SRM',15.90,NULL,NULL,NULL,NULL,'KG',6306.31,6500.00,NULL,'A',1,99406,NULL,NULL,NULL,'2',NULL,NULL,NULL,'2025-04-08 13:44:42'),(4,1,24661,2466142643,'SUO5100I0100-0055','PIPA SS201 KILAPXAVALAN',0,NULL,'PO-SBY0224-0122','25X25X15CM 12 BTG','1.2','MATERIAL PINDAHAN DR SRM',1.65,NULL,NULL,NULL,NULL,'KG',6306.31,NULL,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-08 13:44:42'),(5,1,27102,2710243139,'SSF00000007300000070009-AVLP0','PLAT LDX 2101 6MMXAVALAN OUU',0,NULL,'102000512.1','136MMX130MM','6.14-6.15','MATERIAL PINDAHAN DR SRM',0.87,0.00,0.00,2,NULL,'KG',9009.01,9595.00,NULL,'A',1,99406,0,0,NULL,'3',0,0,NULL,'2025-04-08 13:44:42'),(29,5,24547,2454741238,'SAR0400I0100-0481','AS SS304 1\"XAVALAN',0,NULL,'PO-SBY0124-0092.1','69CM','1\"','MATERIAL PINDAHAN DR SRM',3.00,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,99606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-08 14:30:58'),(30,5,24547,2454741239,'SAR0400I0100-0481','AS SS304 1\"XAVALAN',0,NULL,'PO-SBY0124-0092.2','23CM','1\"','MATERIAL PINDAHAN DR SRM',1.00,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,99606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-08 14:30:58'),(31,5,24548,2454841240,'SAR0400I0175-0367','AS SS304 1 3/4\"XAVALAN',0,NULL,'PO-SBY0124-0092','18.7CM','1 3/4\"','MATERIAL PINDAHAN DR SRM',2.40,0.00,0.00,2,NULL,'KG',12162.16,20000.00,NULL,'A',1,NULL,0,0,NULL,'2',0,0,1000000,'2025-04-08 14:30:58'),(32,5,24548,2454841241,'SAR0400I0175-0367','AS SS304 1 3/4\"XAVALAN',0,NULL,'PO-SBY0124-0092.1','6.5CM','1 3/4','MATERIAL PINDAHAN DR SRM',0.40,0.00,0.00,2,NULL,'KG',12162.16,12000.00,NULL,'A',1,NULL,0,0,NULL,'2',0,0,2000000,'2025-04-08 14:30:58'),(33,5,24552,2455241222,'SAR0600I0700-0046','AS SS304/L 7\"XAVALAN',0,NULL,'PO-SBY0124-0093','22CM','7\"#5CMX5CM','MATERIAL PINDAHAN DR SRM, KOTA',4.50,NULL,NULL,NULL,NULL,'KG',12162.16,9877.00,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-08 14:30:58'),(34,5,24602,2460241236,'SAR0400I0075-0068','AS SS304 3/4\"XAVALAN CHI C NS',0,NULL,'PO-SBY0124-0092','11CM','3/4\"','2EA, MATERIAL PINDAHAN DR SRM',0.36,0.00,0.00,NULL,NULL,'KG',12162.16,37800.00,NULL,'A',1,99589,0,0,NULL,NULL,1,0,NULL,'2025-04-08 14:30:58'),(35,6,24548,2454841240,'SAR0400I0175-0367','vgtvgvg',0,NULL,'PO-SBY0124-0092','18.7CM','1 3/4\"','MATERIAL PINDAHAN DR SRM',2.40,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,99606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(36,6,24548,2454841241,'SAR0400I0175-0367','AS SS304 1 3/4\"XAVALAN',0,NULL,'PO-SBY0124-0092.1','6.5CM','1 3/4','MATERIAL PINDAHAN DR SRM',0.40,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,99627,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(37,6,24553,2455341225,'SAR5100I0300-0010','AS SS201 3\"XAVALAN',0,NULL,'PO-SBY0124-0093','20cm','3\"','MATERIAL PINDAHAN DR SRM',5.20,NULL,NULL,NULL,NULL,'KG',9279.28,NULL,NULL,'A',1,99627,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(38,6,24555,2455541224,'SAR5100I0200-0564','AS SS201 2\"XAVALAN',0,NULL,'PO-SBY0124-0093','7CM','2\"#50CM','2EA, MATERIAL PINDAHAN DR SRM',2.00,2.00,0.00,NULL,NULL,'KG',9279.28,NULL,NULL,'A',1,99606,0,0,NULL,NULL,0,0,NULL,'2025-04-11 16:42:00'),(39,6,24664,2466441052,'SAA0400M0000-0001','SIKU SS304XAVALAN',0,NULL,'PO-SBY0124-0040.3','50X50X40CM','5MM','MATERIAL PINDAHAN DARI SRM',1.53,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(40,6,24664,2466441053,'SAA0400M0000-0001','SIKU SS304XAVALAN',0,NULL,'PO-SBY0124-0040.4','50X50X30CM','5MM','MATERIAL PINDAHAN DARI SRM',1.15,NULL,NULL,3,3,'KG',12162.16,NULL,NULL,'A',1,99812,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(41,6,24664,2466441054,'SAA0400M0000-0001','SIKU SS304XAVALAN',0,NULL,'PO-SBY0124-0040.5','40X40X40CM','4MM','MATERIAL PINDAHAN DARI SRM',0.99,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,99606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(42,6,24664,2466441055,'SAA0400M0000-0001','SIKU SS304XAVALAN',0,NULL,'PO-SBY0124-0040.6','35X35X19CM','4MM','MATERIAL PINDAHAN DARI SRM',0.29,NULL,NULL,NULL,NULL,'KG',12162.16,NULL,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(43,6,24731,2473140992,'SAF1500M0030-0003','STREP SS316L 3MMXAVALAN',0,NULL,'PO-SBY0124-0041','43.7X380MM','3.0','MATERIAL PINDAHAN DR SRM',0.40,NULL,NULL,NULL,NULL,'KG',30855.86,NULL,NULL,'A',1,99627,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(44,6,24731,2473140993,'SAF1500M0030-0003','STREP SS316L 3MMXAVALAN',0,NULL,'PO-SBY0124-0041.1','44-49X380MM','3.0','MATERIAL PINDAHAN DR SRM',0.45,NULL,NULL,NULL,NULL,'KG',30855.86,NULL,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(45,6,24733,2473340986,'SAF0400M0030-0167','STREP SS304 3MMXAVALAN',0,NULL,'PO-SBY0124-0041','46.9X1000','3.0','MATERIAL PINDAHAN DR SRM',1.19,NULL,NULL,NULL,NULL,'KG',18018.02,NULL,NULL,'A',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00'),(46,6,27236,2723642338,'SSAR5100000000140000009-AVLP0','AS SS201 3MMXAVALAN',0,NULL,'CSO 230224.2','248CM','.','MATERIAL PINDAHAN DR SRM',0.13,NULL,NULL,2,9,'KG',12000.00,NULL,NULL,'A',1,99606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 16:42:00');
/*!40000 ALTER TABLE `dbttrsdeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsdetbatch`
--

DROP TABLE IF EXISTS `dbttrsdetbatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsdetbatch` (
  `trsdetbatchid` bigint(20) NOT NULL AUTO_INCREMENT,
  `trsdetid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL,
  `itembatchid` varchar(30) DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `batchno` varchar(30) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `onhandbatch` decimal(10,2) DEFAULT NULL,
  `onhandsecbatch` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`trsdetbatchid`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdetbatch`
--

LOCK TABLES `dbttrsdetbatch` WRITE;
/*!40000 ALTER TABLE `dbttrsdetbatch` DISABLE KEYS */;
INSERT INTO `dbttrsdetbatch` VALUES (115,46,2918,'30140','BARET, DKK, KP, GC','1000MMX460MM','PO-SBY2200268-01-003','2002011463.3','0.88',0,3.00,1.00),(116,47,2960,'30255','FLEK HITAM, BARET, GA, DKK GAR','1050MMX960MM','PO-SBY2200212-01-007','2002013041.4','0.96-0.98',0,7.00,1.00),(117,47,2960,'37364','GA,BARET,POTONGAN MIRING','1250X480-495','PO-SBY0423-0003-01-007','2002093789-L','0.97',0,5.00,1.00),(118,47,2960,'43251','MATERIAL PINDAHAN DR SRM','1220MMX150MM','PO-SBY0224-0124-01-008','QH2309N1038HA11-N','#0.89(1MMX1220MMX150MM) = 1 KG',0,1.00,1.00),(119,47,2960,'43252','MATERIAL PINDAHAN DR SRM','1220MMX1930MM','PO-SBY0224-0124-01-009','QH2305N1523HA13-N','#0.90(1MMX1220MMX1930MM) = 16.5 KG',0,16.50,1.00),(120,47,2960,'43253','MATERIAL PINDAHAN DR SRM','1220MMX1966MM','PO-SBY0224-0124-01-010','QH2309N0806HA11-N','#0.90(1MMX1220MMX1966MM) =  17KG',0,17.00,1.00),(121,47,2960,'43254','MATERIAL PINDAHAN DR SRM','1220MMX2347MM','PO-SBY0224-0124-01-011','QH2309N0566HA13-N','#0.90(1MMX1220MMX2347MM) = 20KG',0,20.00,1.00),(122,47,2960,'43255','MATERIAL PINDAHAN DR SRM','1220MMX1062MM','PO-SBY0224-0124-01-012','QH2309N1038HA12-C','#0.91(1MMX1220MMX1062MM) = 9 KG',0,9.00,1.00),(123,47,2960,'43256','MATERIAL PINDAHAN DR SRM','1220MMX133MM','PO-SBY0224-0124-01-013','QH2309N1042HA11-C','#0.91(1MMX1220MMX133MM) = 1 KG',0,1.00,1.00),(131,48,3034,'29812','AVALAN','1220X300','PO-SBY2200209-01-006','20020204.W','1.17-1.29',0,3.00,1.00),(132,48,3034,'37715','BRT,GA,GC,DKK','1220X300','PO-SBY0523-0002-01-003','2002135988','1.05',0,3.00,1.00),(133,48,3034,'44489','REJECT, MATERIAL PINDAHAN DR S','1220MMX94MM','PO-SBY0424-0034-01-002','QH2309N0649HA13-C','#1.08(1.2MMX1220MMX94MM) = 1 KG',0,1.00,1.00),(134,48,3034,'44490','REJECT, MATERIAL PINDAHAN DR S','1220MMX205MM','PO-SBY0424-0034-01-003','QH2309N0986HA13-N','#1.07(1.2MMX1220MMX205MM) = 2 KG',0,2.00,1.00),(135,48,3034,'44491','REJECT, HANYA MARKING, MATERIA','1220MMX190MM','PO-SBY0424-0034-01-004','QH2309N1262HA13-C','#1.09(1.2MMX1220MMX190MM) = 2KG',0,2.00,1.00),(136,48,3034,'44493','REJECT, MATERIAL PINDAHAN DR S','1220MMX279MM','PO-SBY0424-0034-01-006','QH2309N1245HA12-C','#1.07(1.2MMX1220MMX279MM) = 2.5KG',0,2.50,1.00),(137,48,3034,'44495','REJECT, MATERIAL PINDAHAN DR S','1220MMX133MM','PO-SBY0424-0034-01-008','QH2309N1264HA12-C','#1.08(1.2MMX1220MMX133MM) = 1KG',0,1.00,1.00),(138,49,3073,'29803','AVALAN','1250X130','PO-SBY2200211-01-009','2002018561.W','1.49-1.52',0,2.00,1.00),(139,49,3073,'31017','BARET DKK GA GC FM','1250MMX180MM','PO-SBY0522-0027-01-006','2002019669-W','1.61',0,3.00,1.00),(140,49,3073,'31772','baret, DKK, GA,GC','1250MMX160MM','CSI-SBY0722-0002-01-001','2002026989.3','1.55',0,2.00,1.00),(141,49,3073,'37770','GA, BRT,GC,KOROSI,DKK  -','1250X260','PO-SBY0523-0007-01-012','2002086046','1.50',0,4.00,1.00),(142,49,3073,'37842','FLK HTM,GA,BRT DKK','1250X315CM','PO-SBY0523-0010-01-006','2002083993','1.40',0,5.00,1.00),(143,49,3073,'44498','REJECT, MATERIAL PINDAHAN DR S','1220MMX235MM','PO-SBY0424-0034-01-011','QH2305N1510HA12-C','#1.35(1.5MMX1220MMX235MM) = 3 KG',0,3.00,1.00),(144,49,3073,'44499','REJECT, MATERIAL PINDAHAN DR S','1220MMX111MM','PO-SBY0424-0034-01-012','QH2305N1510HA11-C','#1.37(1.5MMX1220MMX111MM) = 1 KG',0,1.00,1.00),(145,49,3073,'44500','REJECT, MATERIAL PINDAHAN DR S','1220MMX135MM','PO-SBY0424-0034-01-013','QH2309N0490HA11-N','#1.35(1.5MMX1220MMX135MM) = 1.5 KG',0,1.50,1.00),(146,49,3073,'44502','REJECT, MATERIAL PINDAREJECT /','1220MMX380MM','PO-SBY0424-0034-01-015','QH2305N1593HA11-N','#1.37(1.5MMX1220MMX380MM) = 5KG',0,5.00,1.00),(147,49,3073,'44503','REJECT / ADA MARKING TDK ADA H','1220MMX184MM','PO-SBY0424-0034-01-016','QH2305N1630HA13-N','#1.37(1.5MMX1220MMX184MM) = 2KG',0,2.00,1.00),(148,49,3073,'44504','REJECT, MATERIAL PINDAHAN DR S','1220MMX113MM','PO-SBY0424-0034-01-017','QH2309N0722HA12-C','#1.35(1.5MMX1220MMX113MM) = 1 KG',0,1.00,1.00),(149,49,3073,'47795','REJECT, MATERIAL PINDAHAN DR S','205MMX250MM','CSI-SBY0325-0002-01-001','MPO-SBY0424-0034.1','PLAT SS201 2B 1.5MMX205MMX250MM',0,3.63,6.00),(150,49,3073,'47796','REJECT, MATERIAL PINDAHAN DR S','210MMX19MM','CSI-SBY0325-0003-01-001','F217120253EY1J-N.1-1','1.14MMX210MMX19MM',0,0.40,11.00),(153,53,27312,'43280','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-001','CSO 230224.1','.',0,1.00,0.00),(154,53,27312,'43281','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-002','CSO 230224.3','.',0,1.00,0.00),(155,53,27312,'43282','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-003','CSO 230224.4','.',0,1.00,0.00),(156,53,27312,'43283','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-004','CSO 230224.5','.',0,1.00,0.00),(157,53,27312,'43284','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-005','CSO 230224.6','.',0,1.00,0.00),(158,53,27312,'43285','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-006','CSO 230224.7','.',0,1.00,0.00),(159,53,27312,'43286','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-007','CSO 230224.8','.',0,1.00,0.00),(160,53,27312,'43287','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-008','CSO 230224.9','.',0,1.00,0.00),(168,54,27332,'43026','DISPLAY DR SUPPLIER','DOUBLE NEPPLE 1\"\" (1PCS) 3/4\"\" (1PCS), 1/2\"\" (1PCS), SOCK BL 1\"\" (1PCS) 3/4\"\" (1PCS) 1/2\"\" (1PCS). K','VII-SBY0324-0001-01-002','DISPLAY 2','.',0,1.00,0.00),(169,54,27332,'44202','.','.','SPI-SBY0524-0002-01-001','DISPLAY','.',0,3.00,0.00),(170,54,27332,'46917','DISPLAY DR AER','.','VII-SBY1024-0003-01-001','DISPLAY JKT.2','.',0,11.00,0.00),(171,1,2918,'30140','BARET, DKK, KP, GC','1000MMX460MM','PO-SBY2200268-01-003','2002011463.3','0.88',0,3.00,1.00),(172,2,2960,'30255','FLEK HITAM, BARET, GA, DKK GAR','1050MMX960MM','PO-SBY2200212-01-007','2002013041.4','0.96-0.98',0,7.00,1.00),(173,2,2960,'37364','GA,BARET,POTONGAN MIRING','1250X480-495','PO-SBY0423-0003-01-007','2002093789-L','0.97',0,5.00,1.00),(174,2,2960,'43251','MATERIAL PINDAHAN DR SRM','1220MMX150MM','PO-SBY0224-0124-01-008','QH2309N1038HA11-N','#0.89(1MMX1220MMX150MM) = 1 KG',0,1.00,1.00),(175,2,2960,'43252','MATERIAL PINDAHAN DR SRM','1220MMX1930MM','PO-SBY0224-0124-01-009','QH2305N1523HA13-N','#0.90(1MMX1220MMX1930MM) = 16.5 KG',0,16.50,1.00),(176,2,2960,'43253','MATERIAL PINDAHAN DR SRM','1220MMX1966MM','PO-SBY0224-0124-01-010','QH2309N0806HA11-N','#0.90(1MMX1220MMX1966MM) =  17KG',0,17.00,1.00),(177,2,2960,'43254','MATERIAL PINDAHAN DR SRM','1220MMX2347MM','PO-SBY0224-0124-01-011','QH2309N0566HA13-N','#0.90(1MMX1220MMX2347MM) = 20KG',0,20.00,1.00),(178,2,2960,'43255','MATERIAL PINDAHAN DR SRM','1220MMX1062MM','PO-SBY0224-0124-01-012','QH2309N1038HA12-C','#0.91(1MMX1220MMX1062MM) = 9 KG',0,9.00,1.00),(179,2,2960,'43256','MATERIAL PINDAHAN DR SRM','1220MMX133MM','PO-SBY0224-0124-01-013','QH2309N1042HA11-C','#0.91(1MMX1220MMX133MM) = 1 KG',0,1.00,1.00),(187,3,3034,'29812','AVALAN','1220X300','PO-SBY2200209-01-006','20020204.W','1.17-1.29',0,3.00,1.00),(188,3,3034,'37715','BRT,GA,GC,DKK','1220X300','PO-SBY0523-0002-01-003','2002135988','1.05',0,3.00,1.00),(189,3,3034,'44489','REJECT, MATERIAL PINDAHAN DR S','1220MMX94MM','PO-SBY0424-0034-01-002','QH2309N0649HA13-C','#1.08(1.2MMX1220MMX94MM) = 1 KG',0,1.00,1.00),(190,3,3034,'44490','REJECT, MATERIAL PINDAHAN DR S','1220MMX205MM','PO-SBY0424-0034-01-003','QH2309N0986HA13-N','#1.07(1.2MMX1220MMX205MM) = 2 KG',0,2.00,1.00),(191,3,3034,'44491','REJECT, HANYA MARKING, MATERIA','1220MMX190MM','PO-SBY0424-0034-01-004','QH2309N1262HA13-C','#1.09(1.2MMX1220MMX190MM) = 2KG',0,2.00,1.00),(192,3,3034,'44493','REJECT, MATERIAL PINDAHAN DR S','1220MMX279MM','PO-SBY0424-0034-01-006','QH2309N1245HA12-C','#1.07(1.2MMX1220MMX279MM) = 2.5KG',0,2.50,1.00),(193,3,3034,'44495','REJECT, MATERIAL PINDAHAN DR S','1220MMX133MM','PO-SBY0424-0034-01-008','QH2309N1264HA12-C','#1.08(1.2MMX1220MMX133MM) = 1KG',0,1.00,1.00),(194,4,3073,'29803','AVALAN','1250X130','PO-SBY2200211-01-009','2002018561.W','1.49-1.52',0,2.00,1.00),(195,4,3073,'31017','BARET DKK GA GC FM','1250MMX180MM','PO-SBY0522-0027-01-006','2002019669-W','1.61',0,3.00,1.00),(196,4,3073,'31772','baret, DKK, GA,GC','1250MMX160MM','CSI-SBY0722-0002-01-001','2002026989.3','1.55',0,2.00,1.00),(197,4,3073,'37770','GA, BRT,GC,KOROSI,DKK  -','1250X260','PO-SBY0523-0007-01-012','2002086046','1.50',0,4.00,1.00),(198,4,3073,'37842','FLK HTM,GA,BRT DKK','1250X315CM','PO-SBY0523-0010-01-006','2002083993','1.40',0,5.00,1.00),(199,4,3073,'44498','REJECT, MATERIAL PINDAHAN DR S','1220MMX235MM','PO-SBY0424-0034-01-011','QH2305N1510HA12-C','#1.35(1.5MMX1220MMX235MM) = 3 KG',0,3.00,1.00),(200,4,3073,'44499','REJECT, MATERIAL PINDAHAN DR S','1220MMX111MM','PO-SBY0424-0034-01-012','QH2305N1510HA11-C','#1.37(1.5MMX1220MMX111MM) = 1 KG',0,1.00,1.00),(201,4,3073,'44500','REJECT, MATERIAL PINDAHAN DR S','1220MMX135MM','PO-SBY0424-0034-01-013','QH2309N0490HA11-N','#1.35(1.5MMX1220MMX135MM) = 1.5 KG',0,1.50,1.00),(202,4,3073,'44502','REJECT, MATERIAL PINDAREJECT /','1220MMX380MM','PO-SBY0424-0034-01-015','QH2305N1593HA11-N','#1.37(1.5MMX1220MMX380MM) = 5KG',0,5.00,1.00),(203,4,3073,'44503','REJECT / ADA MARKING TDK ADA H','1220MMX184MM','PO-SBY0424-0034-01-016','QH2305N1630HA13-N','#1.37(1.5MMX1220MMX184MM) = 2KG',0,2.00,1.00),(204,4,3073,'44504','REJECT, MATERIAL PINDAHAN DR S','1220MMX113MM','PO-SBY0424-0034-01-017','QH2309N0722HA12-C','#1.35(1.5MMX1220MMX113MM) = 1 KG',0,1.00,1.00),(205,4,3073,'47795','REJECT, MATERIAL PINDAHAN DR S','205MMX250MM','CSI-SBY0325-0002-01-001','MPO-SBY0424-0034.1','PLAT SS201 2B 1.5MMX205MMX250MM',0,3.63,6.00),(206,4,3073,'47796','REJECT, MATERIAL PINDAHAN DR S','210MMX19MM','CSI-SBY0325-0003-01-001','F217120253EY1J-N.1-1','1.14MMX210MMX19MM',0,0.40,11.00),(209,8,27312,'43280','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-001','CSO 230224.1','.',0,1.00,0.00),(210,8,27312,'43281','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-002','CSO 230224.3','.',0,1.00,0.00),(211,8,27312,'43282','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-003','CSO 230224.4','.',0,1.00,0.00),(212,8,27312,'43283','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-004','CSO 230224.5','.',0,1.00,0.00),(213,8,27312,'43284','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-005','CSO 230224.6','.',0,1.00,0.00),(214,8,27312,'43285','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-006','CSO 230224.7','.',0,1.00,0.00),(215,8,27312,'43286','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-007','CSO 230224.8','.',0,1.00,0.00),(216,8,27312,'43287','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSI-SBY0324-0002-01-008','CSO 230224.9','.',0,1.00,0.00),(224,9,27332,'43026','DISPLAY DR SUPPLIER','DOUBLE NEPPLE 1\"\" (1PCS) 3/4\"\" (1PCS), 1/2\"\" (1PCS), SOCK BL 1\"\" (1PCS) 3/4\"\" (1PCS) 1/2\"\" (1PCS). K','VII-SBY0324-0001-01-002','DISPLAY 2','.',0,1.00,0.00),(225,9,27332,'44202','.','.','SPI-SBY0524-0002-01-001','DISPLAY','.',0,3.00,0.00),(226,9,27332,'46917','DISPLAY DR AER','.','VII-SBY1024-0003-01-001','DISPLAY JKT.2','.',0,11.00,0.00),(227,16,5643,'693350','-','-','PO-BPN0723-0146-01-004','1136515. ACC VALID ALK','-',0,4.00,0.00),(228,16,5643,'734640','VALID ALK','-','PO-BPN0424-0169-01-004','1138849 (B 9657 UWY). ACC VALID ALK','VALID ALK',0,10.00,0.00),(229,16,5643,'784248','GRADE B','-','PO-SMG1024-0760-01-002','178/SSS/10/24 (B 9375 VO)','64.7-64.9;38.7-39.4;38.7-39.4;3.91-3.96;3.91-3.96;2.71-2.76;6012-6013 B= 1924KG/84BTG',2,1.00,0.00),(230,16,5643,'790646','ACC VALID ALK','-','PO-BPN1124-0035-01-004','1139949 (B 9772 UWW). ACC VALID ALK','ACC VALID ALK',0,2.00,0.00),(231,16,5643,'793934','ACC VALID ALK','-','PO-SMD0924-0006-01-004','1139577 (B 9355 AO). ACC VALID ALK','ACC VALID ALK',0,8.00,0.00),(232,16,5643,'793935','ACC VALID ALK','-','PO-BPN1124-0035-01-004','1139949 (B 9772 UWW). ACC VALID ALK','ACC VALID ALK',0,33.00,0.00),(233,16,5643,'793940','GRADE B','-','PO-SMG1024-0760-01-002','178/SSS/10/24 (B 9375 VO)','64.7-64.9;38.7-39.4;38.7-39.4;3.91-3.96;3.91-3.96;2.71-2.76;6012-6013 B= 1924KG/84BTG',2,14.00,0.00),(234,16,5643,'805651','ACC VALID ALK','-','PO-SMD0125-0113-01-007','1140337 (B 9002 COK). ACC VALID ALK','ACC VALID ALK',0,1.00,0.00),(235,16,5643,'814426','GRADE B','-','PO-SMD0225-0175-01-001','SJ2502-2407','B.T = 1922 KG / 84 BTG; L = 64.9-65.8; K1 = 40.6-41.5; K2 = 40.6-41.5; KP1 = 3.72-3.98; KP2 = 3.72-3',2,32.00,0.00),(236,16,5643,'814541','GRADE B','-','PO-SMG1124-0608-01-002','093/SSS/11/24 (H 9358 OS)','65.5-65.7;39.7-39.8;39.7-39.8;3.60-3.62;3.60-3.62;2.56-2.57;6000 B= 1919KG/84BTG',2,2.00,0.00),(237,16,5643,'814598','ACC VALID ALK','-','PO-BPN0225-0129-01-006','1140868 (B 9805 UWW). ACC VALID ALK','ACC VALID ALK',0,13.00,0.00),(238,16,5643,'815591','GRADE B','-','PO-SMG0225-0654-01-002','080/SSS/02/25 (E 9303 AD)','65.2-65.4;39.4-39.5;39.4-39.5;3.68-3.70;3.68-3.70;2.53-2.54;6000 B= 1922KG/84BTG',2,467.00,0.00),(239,16,5643,'820917','GRADE B','-','PO-SMG0325-0336-01-002','030/SSS/03/25 (H 8505 OH)','63.9-64.6;38.9-39.5;3.53-3.62;2.52-2.59;6004 B= 1922KG/84BTG',2,1012.00,0.00),(240,16,5643,'821281','ACC VALID ALK','-','PO-SMD0325-0081-01-002','1141100 (B 9196 UIV). ACC VALID ALK','ACC VALID ALK',0,84.00,0.00),(241,16,5643,'822344','GRADE B','-','PO-SMD0225-0175-01-001','SJ2502-2407','B.T = 1922 KG / 84 BTG; L = 64.9-65.8; K1 = 40.6-41.5; K2 = 40.6-41.5; KP1 = 3.72-3.98; KP2 = 3.72-3',2,46.00,0.00),(242,17,8974,'750448','-','-','OI-SMG0624-0003-01-001','1','-',0,3.00,0.00),(243,17,8974,'767200','GRADE B','-','PO-BPN0824-0073-01-001','SJ2408-2257','B.T = 1912 KG / 128 BTG; L = 49.3-49.9; K1 = 32.3-33.8; K2 = 32.3-33.8; KP1 = 3.32-3.45; KP2 = 3.34-',2,4.00,0.00),(244,17,8974,'791136','ACC VALID ALK','-','PO-SMD1024-0227-01-002','1139949 (B 9781 J). ACC VALID ALK','ACC VALID ALK',0,2.00,0.00),(245,17,8974,'798796','GRADE B','-','PO-SMG1024-0759-01-001','146/SSS/10/24 (B 9458 SEH)','49.7-50.1;32.1-32.6;32.1-32.6;3.01-3.10;3.01-3.10;2.31-2.37;6010-6011 B= 1898KG/128BTG',2,13.00,0.00),(246,17,8974,'805161','ACC VALID ALK','-','PO-BPN1124-0035-01-003','1139949 (B 9772 UWW). ACC VALID ALK','ACC VALID ALK',0,3.00,0.00),(247,17,8974,'805162','ACC VALID ALK','-','PO-BPN0125-0054-01-004','1140337 (B 9507 UP). ACC VALID ALK','ACC VALID ALK',0,20.00,0.00),(248,17,8974,'810295','GRADE B','-','PO-SMG0125-0540-01-001','082/SSS/01/25 (H 9757 OS)','50.2-51.1;33.8-34.6;33.8-34.6;2.78-2.85;2.78-2.85;2.53-2.62;6005 B= 1908KG/128BTG',2,1.00,0.00),(249,17,8974,'810709','GRADE B','-','PO-SMG0225-0188-01-001','023/SSS/02/25 (H 9725 OF)','49.9-51.1;31.2-33.0;31.2-33.0;3.10-3.25;3.10-3.25;2.40-2.49;6004 B= 1908KG/128BTG',2,1.00,0.00),(250,17,8974,'813157','GRADE B','-','PO-SMG0225-0413-01-001','055/SSS/02/25 (H 9401 OF)','50.7-50.8;31.6-31.8;31.6-31.8;3.08-3.13;3.08-3.13;2.23-2.36;6000 B= 1905KG/128BTG',2,6.00,0.00),(251,17,8974,'815590','GRADE B','-','PO-SMG0225-0654-01-001','080/SSS/02/25 (E 9303 AD)','50.5-50.7;30.3-30.5;30.3-30.5;3.16-3.21;3.16-3.21;2.37-2.40;6000 B= 1910KG/128BTG',2,540.00,0.00),(252,17,8974,'816008','GRADE B','-','PO-SMG0225-0413-01-001','055/SSS/02/25 (H 9401 OF)','50.7-50.8;31.6-31.8;31.6-31.8;3.08-3.13;3.08-3.13;2.23-2.36;6000 B= 1905KG/128BTG',2,3.00,0.00),(253,17,8974,'818197','GRADE B','-','PO-BPN0325-0039-01-001','SJ2503-6083','B.T = 1910 KG / 128 BTG; L = 49.8-50.4; K1 = 32.9-34.1; K2 = 32.9-34.1; KP1 = 2.92-3.04; KP2 = 2.92-',2,49.00,0.00),(254,17,8974,'820916','GRADE B','-','PO-SMG0325-0336-01-001','030/SSS/03/25 (H 8505 OH)','49.6-50.2;30.9-32.4;2.98-3.86;2.38-2.46;6004 B= 1909KG/128BTG',2,183.00,0.00),(255,17,8974,'821280','ACC VALID ALK','-','PO-SMD0325-0081-01-001','1141100 (B 9196 UIV). ACC VALID ALK','ACC VALID ALK',0,123.00,0.00),(256,17,8974,'821760','GRADE B','-','PO-SMG0225-0654-01-001','080/SSS/02/25 (E 9303 AD)','50.5-50.7;30.3-30.5;30.3-30.5;3.16-3.21;3.16-3.21;2.37-2.40;6000 B= 1910KG/128BTG',2,15.00,0.00),(257,17,8974,'822345','ACC VALID ALK','-','PO-SMD0325-0081-01-001','1141100 (B 9196 UIV). ACC VALID ALK','ACC VALID ALK',0,50.00,0.00),(273,20,5319,'778231','GRADE B','-','PO-SMG0924-0303-01-001','SJ2409-8775','B.T = 1284 KG / 70 BTG; OD = 22.11-22.21; PJG = 5995-6005',2,8.00,0.00),(274,20,5319,'780757','GRADE B','-','PO-SMG0924-0709-01-003','SJ2410-9973','B.T = 1280 KG / 70 BTG; OD = 22.10-22.21; PJG = 5995-6005',2,2.00,0.00),(275,20,5319,'809209','GRADE B','-','PO-SMG0125-0204-01-002','MRTU2062866 (Seal:I374942/280092)','22.13-22.23;6001-6005 B= 1280KG/70BTG',2,4.00,0.00),(276,20,5319,'810289','GRADE B','-','PO-SMG1024-0580-01-001','MRTU 2051882 (SEAL I364712/277509)','22.13-22.23;6000-6005 B= 1280KG/70BTG',2,12.00,0.00),(277,20,5319,'811739','GRADE B','-','PO-SMG0225-0285-01-001','SJ2502-2534','B.T = 1284 KG / 70 BTG;OD = 22.11-22.21; PJG = 5995-6005',2,6.00,0.00),(278,20,5319,'815690','GRADE B','-','PO-SMG0225-0631-01-002','SJ2503-4973','B.T = 1278 KG / 70 BTG; OD = 22.11-22.2; PJG = 5995-6005',2,4.00,0.00),(279,20,5319,'818949','GRADE B','-','PO-SMG0225-0285-01-001','SJ2502-2534','B.T = 1284 KG / 70 BTG;OD = 22.11-22.21; PJG = 5995-6005',2,4.00,0.00),(280,20,5319,'820983','GRADE B','-','PO-SMG1024-0580-01-001','MRTU 2051882 (SEAL I364712/277509)','22.13-22.23;6000-6005 B= 1280KG/70BTG',2,1.00,0.00),(281,20,5319,'821065','GRADE B','-','PO-SMG0325-0442-01-001','SJ2503-8323','B.T = 1282 KG / 70 BTG; OD = 22.1-22.2; PJG = 5995-6005',2,20.00,0.00),(372,45,5204,'541754','-','-','202210016-01-001','-','-',0,1.00,0.00),(373,45,5204,'752967','GRADE B','-','PO-SMG0624-0070-01-003','CFS/2406/010 (H1708FP)','4.7-4.73;38.0-38.3;6003-6007 B=2026/240BTG',2,1.00,0.00),(374,45,5204,'784614','GRADE B','-','PO-SMG0924-0710-01-001','SJ2410-9974','B.T = 2080 KG / 240 BTG; TBL = 4.62-4.70; L =37-38; PJG = 5995-6005',2,1.00,0.00),(375,45,5204,'805205','GRADE B','-','PO-SMG0125-0342-01-002','CFS/2501/001 (H 9758 OP)','4.71-4.76;37.7-38.2;6004-6008 B= 2016KG/240BTG',2,3.00,0.00),(376,45,5204,'810294','GRADE B','-','PO-SMG0125-0342-01-002','CFS/2501/001 (H 9758 OP)','4.71-4.76;37.7-38.2;6004-6008 B= 2016KG/240BTG',2,5.00,0.00),(377,45,5204,'812578','GRADE B','-','PO-SMG0225-0363-01-001','41696 (L 8022 UO)','4.60-4.64;37.3-37.7;6003-6007 B= 2040KG/240LBR',2,190.00,0.00),(378,45,5204,'818667','GRADE B','-','PO-SMG0225-0708-01-003','CFS/2503/006 (H 8576 OH)','4.76-4.80;37.7-38.2;6005-6008 B= 2010KG/240BTG',2,615.00,0.00),(379,46,7658,'729815','-','-','CSI-SMG0524-0006-01-001','1','-',0,1.00,0.00),(380,46,7658,'819059','GRADE B','-','PO-SMG0325-0147-01-001','SJ2503-7320','B.T = 1705 KG / 400 BTG; S1 = 9.7-10; S2 = 9.7-10; PJG = 5995-6005',2,50.00,0.00),(381,46,7658,'825270','GRADE B','-','PO-SMG0425-0117-01-002','SJ2504-0700','9.7-10;9.7-10;5995-6005',2,300.00,0.00),(382,47,14357,'555006','-','-','202210044-01-001','-','-',0,2.00,0.00),(383,47,14357,'609740','GRADE B','-','WOO-SMG0123-0001-01-001','SJ/023A03/0071','15.6-15.8; 12000',2,1.00,0.00),(384,47,14357,'638930','GRADE B','-','WOO-SMG0123-0001-01-001','SJ/023A03/0071','15.6-15.8; 12000',2,3.00,0.00),(385,47,14357,'733222','-','-','OI-SMG0524-0002-01-001','2','-',0,4.00,0.00),(386,47,14357,'769652','-','-','CSI-SMG0924-0002-01-001','1','-',0,1.00,0.00),(387,47,14357,'791363','GRADE B','.','PO-SMG1124-0521-01-005','SJ/024K22/0130','15.6-15.8;12000;B=6557KG/350BTG',2,5.00,0.00),(388,47,14357,'806030','GRADE B','.','PO-SMG0125-0562-01-002','SJ/025A25/0100','15.6-15.7;12000;B=5489KG/300BTG',2,5.00,0.00),(389,47,14357,'816545','VALID ALK','.','PO-BPN0225-0132-01-001','SJ/025B24/0010','VALID ALK',0,77.00,0.00),(390,47,14357,'819041','GRADE B','-','PO-SMD0225-0395-01-001','SJ2503-5782','OD = 15.10-15.80; OD2= 15.80-16.20; P = 12001-12008',2,403.00,0.00),(391,47,14357,'821105','GRADE B','-','PO-SMG0325-0407-01-001','DO-JKTR0325-0098','15.60-15.80; 12.000; 981 / 54',2,10.00,0.00),(392,47,14357,'821109','GRADE B','-','PO-SMG0325-0454-01-003','DO-JKTR0325-0104','15.70-15.90; 12.000; 1798 / 100',2,40.00,0.00),(393,47,14357,'822196','VALID ALK','-','PO-BPN0325-0131-01-001','VALID ALK (DO-JKTR0325-0081)','VALID ALK',0,500.00,0.00),(394,47,14357,'825457','GRADE B','-','PO-SMD0225-0395-01-001','SJ2503-5782','OD = 15.10-15.80; OD2= 15.80-16.20; P = 12001-12008',2,35.00,0.00);
/*!40000 ALTER TABLE `dbttrsdetbatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrshed`
--

DROP TABLE IF EXISTS `dbttrshed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrshed` (
  `trsid` int(11) NOT NULL AUTO_INCREMENT,
  `doccsoid` varchar(25) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `startcsodate` date DEFAULT NULL,
  `endcsodate` date DEFAULT NULL,
  `idxno` int(2) NOT NULL,
  `csomaterial` varchar(100) DEFAULT NULL,
  `statusdoc` char(1) NOT NULL COMMENT 'P = FINAL CSO \r\nA = masih proses CSO  \r\nE = End waktu CSO',
  `staffstokapproval` tinyint(1) DEFAULT NULL,
  `staffstokapproved_by` int(11) DEFAULT NULL,
  `staffstokapproved_at` timestamp NULL DEFAULT NULL,
  `wrhapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved\r\n1 = Approved',
  `wrhapproved_by` int(11) DEFAULT NULL,
  `wrhapproved_at` timestamp NULL DEFAULT NULL,
  `picwrhapproval` tinyint(1) DEFAULT NULL,
  `picwrhapproved_by` int(11) DEFAULT NULL,
  `picwrhapproved_at` timestamp NULL DEFAULT NULL,
  `facapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `facapproved_by` int(11) DEFAULT NULL,
  `facapproved_at` timestamp NULL DEFAULT NULL,
  `purapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `purapproved_by` int(11) DEFAULT NULL,
  `purapproved_at` timestamp NULL DEFAULT NULL,
  `kaopsapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `kaopsapproved_by` int(11) DEFAULT NULL,
  `kaopsapproved_at` timestamp NULL DEFAULT NULL,
  `regmenapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `regmenapproved_by` int(11) DEFAULT NULL,
  `regmenapproved_at` timestamp NULL DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrshed`
--

LOCK TABLES `dbttrshed` WRITE;
/*!40000 ALTER TABLE `dbttrshed` DISABLE KEYS */;
INSERT INTO `dbttrshed` VALUES (1,'CSOSRM BPNs2025-04-09-1','CSO','2025-04-09',NULL,1,'PLAT ACRILIC','A',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-09 09:12:06'),(2,'CSSSRM BPNs2025-04-09-1','CSS','2025-04-09','2025-04-16',1,'GOOD GAME','P',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-09 14:03:40'),(8,'CSSSRM BPNs2025-04-24-2','CSS','2025-04-24',NULL,2,'PIPA GALVANIS,PIPA HITAM,PIPA SS,PIPA BESI A106','A',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-24 11:15:06');
/*!40000 ALTER TABLE `dbttrshed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbttrsheda`
--

DROP TABLE IF EXISTS `dbttrsheda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbttrsheda` (
  `trsid` int(11) NOT NULL AUTO_INCREMENT,
  `doccsoid` varchar(25) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `startcsodate` date DEFAULT NULL,
  `endcsodate` date DEFAULT NULL,
  `idxno` int(2) NOT NULL,
  `csomaterial` varchar(100) DEFAULT NULL,
  `statusdoc` char(1) NOT NULL COMMENT 'P = FINAL CSO \r\nA = masih proses CSO  \r\nE = End waktu CSO',
  `staffstokapproval` tinyint(1) DEFAULT NULL,
  `staffstokapproved_by` int(11) DEFAULT NULL,
  `staffstokapproved_at` timestamp NULL DEFAULT NULL,
  `wrhapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved\r\n1 = Approved',
  `wrhapproved_by` int(11) DEFAULT NULL,
  `wrhapproved_at` timestamp NULL DEFAULT NULL,
  `picwrhapproval` tinyint(1) DEFAULT NULL,
  `picwrhapproved_by` int(11) DEFAULT NULL,
  `picwrhapproved_at` timestamp NULL DEFAULT NULL,
  `facapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `facapproved_by` int(11) DEFAULT NULL,
  `facapproved_at` timestamp NULL DEFAULT NULL,
  `purapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `purapproved_by` int(11) DEFAULT NULL,
  `purapproved_at` timestamp NULL DEFAULT NULL,
  `kaopsapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `kaopsapproved_by` int(11) DEFAULT NULL,
  `kaopsapproved_at` timestamp NULL DEFAULT NULL,
  `regmenapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `regmenapproved_by` int(11) DEFAULT NULL,
  `regmenapproved_at` timestamp NULL DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsheda`
--

LOCK TABLES `dbttrsheda` WRITE;
/*!40000 ALTER TABLE `dbttrsheda` DISABLE KEYS */;
INSERT INTO `dbttrsheda` VALUES (1,'CSOSRM BPNs2025-04-08-1','CSO','2025-04-08','2025-04-08',1,'PIPA HITAM','P',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-08 13:44:42'),(5,'CSSSRM BPNs2025-04-08-1','CSS','2025-04-08','2025-04-08',1,'AS SS,AS BESI,AS TEMBAGA','P',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-08 14:30:58'),(6,'CSSSRM BPNs2025-04-11-2','CSS','2025-04-11',NULL,2,'WIRE MESH','A',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,'2025-04-11 16:42:00');
/*!40000 ALTER TABLE `dbttrsheda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxcsotype`
--

DROP TABLE IF EXISTS `dbxcsotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxcsotype` (
  `csotype` varchar(5) NOT NULL,
  `statuscekstok` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxcsotype`
--

LOCK TABLES `dbxcsotype` WRITE;
/*!40000 ALTER TABLE `dbxcsotype` DISABLE KEYS */;
INSERT INTO `dbxcsotype` VALUES ('CSO','R'),('CSS','R'),('CSO','A'),('CSS','A');
/*!40000 ALTER TABLE `dbxcsotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpor`
--

DROP TABLE IF EXISTS `dbximpor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpor` (
  `itemid` int(10) NOT NULL,
  `itembatchid` bigint(20) DEFAULT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchno` text DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `subproductid` int(11) DEFAULT NULL,
  `subproductname` varchar(50) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan TR= temuan reguler TA= temuan avalan',
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `onhand` decimal(10,2) DEFAULT NULL,
  UNIQUE KEY `dbximpor_UN` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpor`
--

LOCK TABLES `dbximpor` WRITE;
/*!40000 ALTER TABLE `dbximpor` DISABLE KEYS */;
INSERT INTO `dbximpor` VALUES (2918,NULL,'SBYSFA5100M0009-00014','PLAT SS201 0.9MMXAVALAN',NULL,NULL,NULL,NULL,NULL,'KG',9160.00,182,'SBY104',3113,'SBY104015','R',1,'2025-04-08 08:56:02',3.00),(2960,NULL,'SBYSFA5100M0010-00042','PLAT SS201 1MMXAVALAN',NULL,NULL,NULL,NULL,NULL,'KG',7302.11,182,'SBY104',3114,'SBY104016','R',1,'2025-04-08 08:56:03',76.50),(3034,NULL,'SBYSFA5100M0012-00071','PLAT SS201 1.2MMXAVALAN',NULL,NULL,NULL,NULL,NULL,'KG',8707.30,182,'SBY104',3115,'SBY104017','R',1,'2025-04-08 08:56:03',14.50),(3073,NULL,'SBYSFA5100M0015-00039','PLAT SS201 1.5MMXAVALAN',NULL,NULL,NULL,NULL,NULL,'KG',8546.01,182,'SBY104',3116,'SBY104018','R',1,'2025-04-08 08:56:03',33.53),(25340,NULL,'G302CSBT00020003','CLAMP SADLE G 2 X 1/2 BLACK T',NULL,NULL,NULL,NULL,NULL,'PCS',17501.00,87,'46',0,'','R',0,'2025-04-09 08:59:05',1.00),(25508,NULL,'T301B00000000075','BOCHTEN TSP - G 3/4',NULL,NULL,NULL,NULL,NULL,'PCS',16911.97,285,'4000',7926,'4000002','R',0,'2025-04-09 08:59:04',2.00),(25758,NULL,'T302D00000000100','DOPPEN BND BL TSP 1',NULL,NULL,NULL,NULL,NULL,'PCS',6426.79,286,'4500',8032,'4500003','R',0,'2025-04-09 08:59:09',810.00),(27312,NULL,'SSAR5100000000140000011-TRDS1','AS SS201 3MMX6M-S',NULL,NULL,NULL,NULL,NULL,'EA',3960.00,198,'SBY118',7540,'SBY118101','R',1,'2025-04-09 08:59:00',8.00),(27332,NULL,'SSC00000000000000000000-TRDP0','DISPLAY FITTING TSP',NULL,NULL,NULL,NULL,NULL,'EA',0.95,0,'',0,'','R',1,'2025-04-09 08:59:07',1.00),(9999001,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-25 08:53:46',NULL),(9999002,NULL,NULL,'66',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-25 08:58:07',NULL),(9999003,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-25 13:13:50',NULL);
/*!40000 ALTER TABLE `dbximpor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximporavalan`
--

DROP TABLE IF EXISTS `dbximporavalan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximporavalan` (
  `itemid` int(10) DEFAULT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchid` int(10) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `subproductid` int(11) DEFAULT NULL,
  `subproductname` varchar(50) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan',
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `onhand` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`itembatchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximporavalan`
--

LOCK TABLES `dbximporavalan` WRITE;
/*!40000 ALTER TABLE `dbximporavalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbximporavalan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximporavalancss`
--

DROP TABLE IF EXISTS `dbximporavalancss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximporavalancss` (
  `itemid` int(10) DEFAULT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchid` int(10) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `subproductid` int(11) DEFAULT NULL,
  `subproductname` varchar(50) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan',
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `onhand` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`itembatchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximporavalancss`
--

LOCK TABLES `dbximporavalancss` WRITE;
/*!40000 ALTER TABLE `dbximporavalancss` DISABLE KEYS */;
INSERT INTO `dbximporavalancss` VALUES (24548,2454841240,'SAR0400I0175-0367','AS SS304 1 3/4\"XAVALAN',41240,'PO-SBY0124-0092','18.7CM','1 3/4\"','MATERIAL PINDAHAN DR SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:43',2.40),(24548,2454841241,'SAR0400I0175-0367','AS SS304 1 3/4\"XAVALAN',41241,'PO-SBY0124-0092.1','6.5CM','1 3/4','MATERIAL PINDAHAN DR SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:43',0.40),(24553,2455341225,'SAR5100I0300-0010','AS SS201 3\"XAVALAN',41225,'PO-SBY0124-0093','20cm','3\"','MATERIAL PINDAHAN DR SRM','KG',9279.28,198,'SBY118',0,'','A',0,'2025-04-08 15:20:43',5.20),(24555,2455541224,'SAR5100I0200-0564','AS SS201 2\"XAVALAN',41224,'PO-SBY0124-0093','7CM','2\"#50CM','2EA, MATERIAL PINDAHAN DR SRM','KG',9279.28,198,'SBY118',0,'','A',0,'2025-04-08 15:20:43',2.00),(24664,2466441052,'SAA0400M0000-0001','SIKU SS304XAVALAN',41052,'PO-SBY0124-0040.3','50X50X40CM','5MM','MATERIAL PINDAHAN DARI SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:44',1.53),(24664,2466441053,'SAA0400M0000-0001','SIKU SS304XAVALAN',41053,'PO-SBY0124-0040.4','50X50X30CM','5MM','MATERIAL PINDAHAN DARI SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:44',1.15),(24664,2466441054,'SAA0400M0000-0001','SIKU SS304XAVALAN',41054,'PO-SBY0124-0040.5','40X40X40CM','4MM','MATERIAL PINDAHAN DARI SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:44',0.99),(24664,2466441055,'SAA0400M0000-0001','SIKU SS304XAVALAN',41055,'PO-SBY0124-0040.6','35X35X19CM','4MM','MATERIAL PINDAHAN DARI SRM','KG',12162.16,198,'SBY118',0,'','A',0,'2025-04-08 15:20:44',0.29),(24731,2473140992,'SAF1500M0030-0003','STREP SS316L 3MMXAVALAN',40992,'PO-SBY0124-0041','43.7X380MM','3.0','MATERIAL PINDAHAN DR SRM','KG',30855.86,198,'SBY118',7552,'SBY118309','A',0,'2025-04-08 15:20:44',0.40),(24731,2473140993,'SAF1500M0030-0003','STREP SS316L 3MMXAVALAN',40993,'PO-SBY0124-0041.1','44-49X380MM','3.0','MATERIAL PINDAHAN DR SRM','KG',30855.86,198,'SBY118',7552,'SBY118309','A',0,'2025-04-08 15:20:44',0.45),(24733,2473340986,'SAF0400M0030-0167','STREP SS304 3MMXAVALAN',40986,'PO-SBY0124-0041','46.9X1000','3.0','MATERIAL PINDAHAN DR SRM','KG',18018.02,198,'SBY118',7552,'SBY118309','A',0,'2025-04-08 15:20:44',1.19),(27236,2723642338,'SSAR5100000000140000009-AVLP0','AS SS201 3MMXAVALAN',42338,'CSO 230224.2','248CM','.','MATERIAL PINDAHAN DR SRM','KG',12000.00,198,'SBY118',4474,'SBY118001','A',0,'2025-04-08 15:20:43',0.13);
/*!40000 ALTER TABLE `dbximporavalancss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximporcss`
--

DROP TABLE IF EXISTS `dbximporcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximporcss` (
  `itemid` int(10) NOT NULL,
  `itembatchid` bigint(20) DEFAULT NULL,
  `itemcode` varchar(50) DEFAULT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchno` text DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(15,2) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `subproductid` int(11) DEFAULT NULL,
  `subproductname` varchar(50) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL,
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `onhand` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximporcss`
--

LOCK TABLES `dbximporcss` WRITE;
/*!40000 ALTER TABLE `dbximporcss` DISABLE KEYS */;
INSERT INTO `dbximporcss` VALUES (5204,NULL,'FAF0000M0050-0006','STREP BESI 5MMX38MMX6M F',NULL,NULL,NULL,NULL,NULL,'EA',82704.57,202,'14',6813,'1400500038060001','R',1,'2025-04-24 10:46:45',1309.00),(7658,NULL,'FAQ0000M0100-0007','AS BESI SEGI-4 10MMX10MMX6M CI',NULL,NULL,NULL,NULL,NULL,'EA',49819.00,210,'25',32997,'2500100010060003','R',1,'2025-04-24 10:46:43',401.00),(12985,NULL,'XACO000I0200-0001','CLEAN OUT 2\"',NULL,NULL,NULL,NULL,NULL,'EA',35709.72,1051,'197',0,'','R',0,'2025-04-28 16:14:00',1.00),(14357,NULL,'FAP8000M0160-0003','BESI BETON 16MMX12M LS-T',NULL,NULL,NULL,NULL,NULL,'EA',153251.24,215,'30',33053,'3000100161200016','R',1,'2025-04-24 10:46:44',70.00),(9999001,9999001,NULL,'',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 14:52:56',NULL),(9999002,9999002,NULL,'Asfafa',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:24:39',NULL),(9999003,9999003,NULL,'A',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:26:17',NULL),(9999004,9999004,NULL,'',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:26:43',NULL),(9999005,9999005,NULL,'',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:27:15',NULL),(9999006,9999006,NULL,'Tut',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:28:40',NULL),(9999007,9999007,NULL,'Asfafa',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:30:36',NULL),(9999008,9999008,NULL,'Closet Sensor',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 15:33:01',NULL),(9999009,9999009,NULL,'Pot',NULL,'','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-28 16:14:50',NULL);
/*!40000 ALTER TABLE `dbximporcss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordet`
--

DROP TABLE IF EXISTS `dbximpordet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordet` (
  `itemid` int(11) NOT NULL,
  `itembatchid` varchar(30) DEFAULT NULL,
  `wrh` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordet`
--

LOCK TABLES `dbximpordet` WRITE;
/*!40000 ALTER TABLE `dbximpordet` DISABLE KEYS */;
INSERT INTO `dbximpordet` VALUES (2918,NULL,'SBY4PS',3.00),(3034,NULL,'SBY4PS',14.50),(3073,NULL,'SBY4PS',33.53),(2960,NULL,'SBY4PS',76.50),(27312,NULL,'SBY7PS',8.00),(25508,NULL,'SBY11PS',2.00),(25340,NULL,'SBY11PS',1.00),(27332,NULL,'SBY11PS',1.00),(25758,NULL,'SBY11PS',810.00),(9999001,NULL,'BPN8',0.00),(9999002,NULL,'SBY1PS',0.00),(9999003,NULL,'SBY11PS',0.00);
/*!40000 ALTER TABLE `dbximpordet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetavalan`
--

DROP TABLE IF EXISTS `dbximpordetavalan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetavalan` (
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `batchid` int(11) DEFAULT NULL,
  `wrh` varchar(10) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetavalan`
--

LOCK TABLES `dbximpordetavalan` WRITE;
/*!40000 ALTER TABLE `dbximpordetavalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbximpordetavalan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetavalancss`
--

DROP TABLE IF EXISTS `dbximpordetavalancss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetavalancss` (
  `itemid` int(11) NOT NULL,
  `itembatchid` bigint(20) NOT NULL,
  `batchid` int(11) DEFAULT NULL,
  `wrh` varchar(10) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetavalancss`
--

LOCK TABLES `dbximpordetavalancss` WRITE;
/*!40000 ALTER TABLE `dbximpordetavalancss` DISABLE KEYS */;
INSERT INTO `dbximpordetavalancss` VALUES (24555,2455541224,41224,'SBY4PS',2.00),(24553,2455341225,41225,'SBY4PS',5.20),(27236,2723642338,42338,'SBY4PS',0.13),(24548,2454841240,41240,'SBY4PS',2.40),(24548,2454841241,41241,'SBY4PS',0.40),(24664,2466441052,41052,'SBY4PS',1.53),(24664,2466441053,41053,'SBY4PS',1.15),(24664,2466441054,41054,'SBY4PS',0.99),(24664,2466441055,41055,'SBY4PS',0.29),(24733,2473340986,40986,'SBY4PS',1.19),(24731,2473140992,40992,'SBY4PS',0.40),(24731,2473140993,40993,'SBY4PS',0.45);
/*!40000 ALTER TABLE `dbximpordetavalancss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetbatch`
--

DROP TABLE IF EXISTS `dbximpordetbatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetbatch` (
  `itemid` int(11) NOT NULL,
  `itembatchid` varchar(30) DEFAULT NULL,
  `batchno` text DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `onhandbatch` decimal(10,2) DEFAULT NULL,
  `onhandsecbatch` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetbatch`
--

LOCK TABLES `dbximpordetbatch` WRITE;
/*!40000 ALTER TABLE `dbximpordetbatch` DISABLE KEYS */;
INSERT INTO `dbximpordetbatch` VALUES (2918,'30140','PO-SBY2200268-01-003','BARET, DKK, KP, GC','1000MMX460MM','2002011463.3','0.88',0,3.00,1.00),(3034,'29812','PO-SBY2200209-01-006','AVALAN','1220X300','20020204.W','1.17-1.29',0,3.00,1.00),(3034,'37715','PO-SBY0523-0002-01-003','BRT,GA,GC,DKK','1220X300','2002135988','1.05',0,3.00,1.00),(3034,'44489','PO-SBY0424-0034-01-002','REJECT, MATERIAL PINDAHAN DR S','1220MMX94MM','QH2309N0649HA13-C','#1.08(1.2MMX1220MMX94MM) = 1 KG',0,1.00,1.00),(3034,'44490','PO-SBY0424-0034-01-003','REJECT, MATERIAL PINDAHAN DR S','1220MMX205MM','QH2309N0986HA13-N','#1.07(1.2MMX1220MMX205MM) = 2 KG',0,2.00,1.00),(3034,'44491','PO-SBY0424-0034-01-004','REJECT, HANYA MARKING, MATERIA','1220MMX190MM','QH2309N1262HA13-C','#1.09(1.2MMX1220MMX190MM) = 2KG',0,2.00,1.00),(3034,'44493','PO-SBY0424-0034-01-006','REJECT, MATERIAL PINDAHAN DR S','1220MMX279MM','QH2309N1245HA12-C','#1.07(1.2MMX1220MMX279MM) = 2.5KG',0,2.50,1.00),(3034,'44495','PO-SBY0424-0034-01-008','REJECT, MATERIAL PINDAHAN DR S','1220MMX133MM','QH2309N1264HA12-C','#1.08(1.2MMX1220MMX133MM) = 1KG',0,1.00,1.00),(3073,'29803','PO-SBY2200211-01-009','AVALAN','1250X130','2002018561.W','1.49-1.52',0,2.00,1.00),(3073,'31017','PO-SBY0522-0027-01-006','BARET DKK GA GC FM','1250MMX180MM','2002019669-W','1.61',0,3.00,1.00),(3073,'31772','CSI-SBY0722-0002-01-001','baret, DKK, GA,GC','1250MMX160MM','2002026989.3','1.55',0,2.00,1.00),(3073,'37770','PO-SBY0523-0007-01-012','GA, BRT,GC,KOROSI,DKK  -','1250X260','2002086046','1.50',0,4.00,1.00),(3073,'37842','PO-SBY0523-0010-01-006','FLK HTM,GA,BRT DKK','1250X315CM','2002083993','1.40',0,5.00,1.00),(3073,'44498','PO-SBY0424-0034-01-011','REJECT, MATERIAL PINDAHAN DR S','1220MMX235MM','QH2305N1510HA12-C','#1.35(1.5MMX1220MMX235MM) = 3 KG',0,3.00,1.00),(3073,'44499','PO-SBY0424-0034-01-012','REJECT, MATERIAL PINDAHAN DR S','1220MMX111MM','QH2305N1510HA11-C','#1.37(1.5MMX1220MMX111MM) = 1 KG',0,1.00,1.00),(3073,'44500','PO-SBY0424-0034-01-013','REJECT, MATERIAL PINDAHAN DR S','1220MMX135MM','QH2309N0490HA11-N','#1.35(1.5MMX1220MMX135MM) = 1.5 KG',0,1.50,1.00),(3073,'44502','PO-SBY0424-0034-01-015','REJECT, MATERIAL PINDAREJECT /','1220MMX380MM','QH2305N1593HA11-N','#1.37(1.5MMX1220MMX380MM) = 5KG',0,5.00,1.00),(3073,'44503','PO-SBY0424-0034-01-016','REJECT / ADA MARKING TDK ADA H','1220MMX184MM','QH2305N1630HA13-N','#1.37(1.5MMX1220MMX184MM) = 2KG',0,2.00,1.00),(3073,'44504','PO-SBY0424-0034-01-017','REJECT, MATERIAL PINDAHAN DR S','1220MMX113MM','QH2309N0722HA12-C','#1.35(1.5MMX1220MMX113MM) = 1 KG',0,1.00,1.00),(3073,'47795','CSI-SBY0325-0002-01-001','REJECT, MATERIAL PINDAHAN DR S','205MMX250MM','MPO-SBY0424-0034.1','PLAT SS201 2B 1.5MMX205MMX250MM',0,3.63,6.00),(3073,'47796','CSI-SBY0325-0003-01-001','REJECT, MATERIAL PINDAHAN DR S','210MMX19MM','F217120253EY1J-N.1-1','1.14MMX210MMX19MM',0,0.40,11.00),(2960,'30255','PO-SBY2200212-01-007','FLEK HITAM, BARET, GA, DKK GAR','1050MMX960MM','2002013041.4','0.96-0.98',0,7.00,1.00),(2960,'37364','PO-SBY0423-0003-01-007','GA,BARET,POTONGAN MIRING','1250X480-495','2002093789-L','0.97',0,5.00,1.00),(2960,'43251','PO-SBY0224-0124-01-008','MATERIAL PINDAHAN DR SRM','1220MMX150MM','QH2309N1038HA11-N','#0.89(1MMX1220MMX150MM) = 1 KG',0,1.00,1.00),(2960,'43252','PO-SBY0224-0124-01-009','MATERIAL PINDAHAN DR SRM','1220MMX1930MM','QH2305N1523HA13-N','#0.90(1MMX1220MMX1930MM) = 16.5 KG',0,16.50,1.00),(2960,'43253','PO-SBY0224-0124-01-010','MATERIAL PINDAHAN DR SRM','1220MMX1966MM','QH2309N0806HA11-N','#0.90(1MMX1220MMX1966MM) =  17KG',0,17.00,1.00),(2960,'43254','PO-SBY0224-0124-01-011','MATERIAL PINDAHAN DR SRM','1220MMX2347MM','QH2309N0566HA13-N','#0.90(1MMX1220MMX2347MM) = 20KG',0,20.00,1.00),(2960,'43255','PO-SBY0224-0124-01-012','MATERIAL PINDAHAN DR SRM','1220MMX1062MM','QH2309N1038HA12-C','#0.91(1MMX1220MMX1062MM) = 9 KG',0,9.00,1.00),(2960,'43256','PO-SBY0224-0124-01-013','MATERIAL PINDAHAN DR SRM','1220MMX133MM','QH2309N1042HA11-C','#0.91(1MMX1220MMX133MM) = 1 KG',0,1.00,1.00),(27312,'43280','CSI-SBY0324-0002-01-001','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.1','.',0,1.00,0.00),(27312,'43281','CSI-SBY0324-0002-01-002','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.3','.',0,1.00,0.00),(27312,'43282','CSI-SBY0324-0002-01-003','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.4','.',0,1.00,0.00),(27312,'43283','CSI-SBY0324-0002-01-004','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.5','.',0,1.00,0.00),(27312,'43284','CSI-SBY0324-0002-01-005','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.6','.',0,1.00,0.00),(27312,'43285','CSI-SBY0324-0002-01-006','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.7','.',0,1.00,0.00),(27312,'43286','CSI-SBY0324-0002-01-007','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.8','.',0,1.00,0.00),(27312,'43287','CSI-SBY0324-0002-01-008','MATERIAL PINDAHAN DR SRM, TEMU','6M','CSO 230224.9','.',0,1.00,0.00),(27332,'43026','VII-SBY0324-0001-01-002','DISPLAY DR SUPPLIER','DOUBLE NEPPLE 1\"\" (1PCS) 3/4\"\" (1PCS), 1/2\"\" (1PCS), SOCK BL 1\"\" (1PCS) 3/4\"\" (1PCS) 1/2\"\" (1PCS). K','DISPLAY 2','.',0,1.00,0.00),(27332,'44202','SPI-SBY0524-0002-01-001','.','.','DISPLAY','.',0,3.00,0.00),(27332,'46917','VII-SBY1024-0003-01-001','DISPLAY DR AER','.','DISPLAY JKT.2','.',0,11.00,0.00);
/*!40000 ALTER TABLE `dbximpordetbatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetbatchcss`
--

DROP TABLE IF EXISTS `dbximpordetbatchcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetbatchcss` (
  `itemid` int(11) NOT NULL,
  `itembatchid` varchar(30) DEFAULT NULL,
  `batchno` text DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `onhandbatch` decimal(10,2) DEFAULT NULL,
  `onhandsecbatch` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetbatchcss`
--

LOCK TABLES `dbximpordetbatchcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetbatchcss` DISABLE KEYS */;
INSERT INTO `dbximpordetbatchcss` VALUES (7658,'729815','CSI-SMG0524-0006-01-001','-','-','1','-',0,1.00,0.00),(7658,'819059','PO-SMG0325-0147-01-001','GRADE B','-','SJ2503-7320','B.T = 1705 KG / 400 BTG; S1 = 9.7-10; S2 = 9.7-10; PJG = 5995-6005',2,50.00,0.00),(7658,'825270','PO-SMG0425-0117-01-002','GRADE B','-','SJ2504-0700','9.7-10;9.7-10;5995-6005',2,300.00,0.00),(14357,'555006','202210044-01-001','-','-','-','-',0,2.00,0.00),(14357,'609740','WOO-SMG0123-0001-01-001','GRADE B','-','SJ/023A03/0071','15.6-15.8; 12000',2,1.00,0.00),(14357,'638930','WOO-SMG0123-0001-01-001','GRADE B','-','SJ/023A03/0071','15.6-15.8; 12000',2,3.00,0.00),(14357,'733222','OI-SMG0524-0002-01-001','-','-','2','-',0,4.00,0.00),(14357,'769652','CSI-SMG0924-0002-01-001','-','-','1','-',0,1.00,0.00),(14357,'791363','PO-SMG1124-0521-01-005','GRADE B','.','SJ/024K22/0130','15.6-15.8;12000;B=6557KG/350BTG',2,5.00,0.00),(14357,'806030','PO-SMG0125-0562-01-002','GRADE B','.','SJ/025A25/0100','15.6-15.7;12000;B=5489KG/300BTG',2,5.00,0.00),(14357,'816545','PO-BPN0225-0132-01-001','VALID ALK','.','SJ/025B24/0010','VALID ALK',0,77.00,0.00),(14357,'819041','PO-SMD0225-0395-01-001','GRADE B','-','SJ2503-5782','OD = 15.10-15.80; OD2= 15.80-16.20; P = 12001-12008',2,403.00,0.00),(14357,'821105','PO-SMG0325-0407-01-001','GRADE B','-','DO-JKTR0325-0098','15.60-15.80; 12.000; 981 / 54',2,10.00,0.00),(14357,'821109','PO-SMG0325-0454-01-003','GRADE B','-','DO-JKTR0325-0104','15.70-15.90; 12.000; 1798 / 100',2,40.00,0.00),(14357,'822196','PO-BPN0325-0131-01-001','VALID ALK','-','VALID ALK (DO-JKTR0325-0081)','VALID ALK',0,500.00,0.00),(14357,'825457','PO-SMD0225-0395-01-001','GRADE B','-','SJ2503-5782','OD = 15.10-15.80; OD2= 15.80-16.20; P = 12001-12008',2,35.00,0.00),(5204,'541754','202210016-01-001','-','-','-','-',0,1.00,0.00),(5204,'752967','PO-SMG0624-0070-01-003','GRADE B','-','CFS/2406/010 (H1708FP)','4.7-4.73;38.0-38.3;6003-6007 B=2026/240BTG',2,1.00,0.00),(5204,'784614','PO-SMG0924-0710-01-001','GRADE B','-','SJ2410-9974','B.T = 2080 KG / 240 BTG; TBL = 4.62-4.70; L =37-38; PJG = 5995-6005',2,1.00,0.00),(5204,'805205','PO-SMG0125-0342-01-002','GRADE B','-','CFS/2501/001 (H 9758 OP)','4.71-4.76;37.7-38.2;6004-6008 B= 2016KG/240BTG',2,3.00,0.00),(5204,'810294','PO-SMG0125-0342-01-002','GRADE B','-','CFS/2501/001 (H 9758 OP)','4.71-4.76;37.7-38.2;6004-6008 B= 2016KG/240BTG',2,5.00,0.00),(5204,'812578','PO-SMG0225-0363-01-001','GRADE B','-','41696 (L 8022 UO)','4.60-4.64;37.3-37.7;6003-6007 B= 2040KG/240LBR',2,190.00,0.00),(5204,'818667','PO-SMG0225-0708-01-003','GRADE B','-','CFS/2503/006 (H 8576 OH)','4.76-4.80;37.7-38.2;6005-6008 B= 2010KG/240BTG',2,615.00,0.00);
/*!40000 ALTER TABLE `dbximpordetbatchcss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetcss`
--

DROP TABLE IF EXISTS `dbximpordetcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetcss` (
  `itemid` int(11) NOT NULL,
  `itembatchid` varchar(30) DEFAULT NULL,
  `wrh` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetcss`
--

LOCK TABLES `dbximpordetcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetcss` DISABLE KEYS */;
INSERT INTO `dbximpordetcss` VALUES (7658,NULL,'SMG1',350.00),(7658,NULL,'SMG4',1.00),(7658,NULL,'SMG6',50.00),(14357,NULL,'SMG1',61.00),(14357,NULL,'SMG4',4.00),(14357,NULL,'SMG7',5.00),(5204,NULL,'SMG1',808.00),(5204,NULL,'SMG6',500.00),(5204,NULL,'SMG9',1.00),(9999001,NULL,NULL,0.00),(9999002,NULL,NULL,1.00),(9999003,NULL,NULL,1.00),(9999004,NULL,NULL,0.00),(9999005,NULL,NULL,0.00),(9999006,NULL,NULL,123.00),(9999007,NULL,NULL,123.00),(9999008,NULL,NULL,1.50),(12985,NULL,'SMG1TOK',1.00),(9999009,NULL,'SMG6',10.00);
/*!40000 ALTER TABLE `dbximpordetcss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxjob`
--

DROP TABLE IF EXISTS `dbxjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxjob` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `statuscekstok` char(1) DEFAULT NULL,
  `coyid` int(10) NOT NULL,
  `jobtypeid` int(1) NOT NULL COMMENT '1. pelaku 2. Analisator',
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxjob`
--

LOCK TABLES `dbxjob` WRITE;
/*!40000 ALTER TABLE `dbxjob` DISABLE KEYS */;
INSERT INTO `dbxjob` VALUES (137,99667,'picwrh','picwrh','CSO','R',1,2),(138,99812,'koorfac','Koordinator FAC','CSO','R',1,2),(139,99194,'kafac','Kepala FAC','CSO','R',1,2),(144,99342,'askhid','askhid','CSO','R',1,1),(145,99897,'shura','shura','CSO','R',1,1),(147,99342,'askhid','askhid','CSS','A',1,1),(148,99897,'shura','shura','CSS','A',1,1),(149,99812,'koorfac','Koordinator FAC','CSS','A',1,2),(150,99627,'analisatordd','analisatordd','CSS','A',1,2),(151,99606,'testboth','test both','CSS','A',1,2),(152,99342,'askhid','askhid','CSS','R',1,1),(153,99194,'kafac','Kepala FAC','CSS','R',1,2),(154,99406,'sayadenny','sayadenny','CSS','R',1,2),(155,99812,'koorfac','Koordinator FAC','CSS','R',1,2),(156,99897,'shura','shura','CSS','R',1,1),(157,99908,'askhidd','askhidd','CSO','R',1,2);
/*!40000 ALTER TABLE `dbxjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxmaterial`
--

DROP TABLE IF EXISTS `dbxmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxmaterial` (
  `csomaterial` varchar(100) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `statuscekstok` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxmaterial`
--

LOCK TABLES `dbxmaterial` WRITE;
/*!40000 ALTER TABLE `dbxmaterial` DISABLE KEYS */;
INSERT INTO `dbxmaterial` VALUES ('PLAT ACRILIC','CSO','R'),('WIRE MESH','CSS','A'),('PIPA GALVANIS,PIPA HITAM,PIPA SS,PIPA BESI A106','CSS','R');
/*!40000 ALTER TABLE `dbxmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxsetdate`
--

DROP TABLE IF EXISTS `dbxsetdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxsetdate` (
  `date` date NOT NULL,
  `tipe` varchar(1) NOT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `statuscekstok` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxsetdate`
--

LOCK TABLES `dbxsetdate` WRITE;
/*!40000 ALTER TABLE `dbxsetdate` DISABLE KEYS */;
INSERT INTO `dbxsetdate` VALUES ('2025-04-08','I','CSO','R'),('2025-04-09','I','CSO','R'),('2025-04-09','I','CSO','R'),('2025-04-11','I','CSS','A'),('2025-04-17','I','CSS','R'),('2025-04-24','I','CSS','R'),('2025-04-24','I','CSS','R'),('2025-04-24','I','CSS','R'),('2025-04-24','I','CSS','R');
/*!40000 ALTER TABLE `dbxsetdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',112,'Personal Access Token','ff0cd06b14ebeae2cb8f30ea733c2ca84de12d0de9a959aacb29cfab06d74536','[\"*\"]','2024-11-03 20:16:10',NULL,'2024-11-03 20:11:56','2024-11-03 20:16:10'),(2,'App\\Models\\User',113,'Personal Access Token','b7b8a5d245c7ca53a52a990a9ce304d93ad8f645aa04b0cda44755f706381e03','[\"*\"]','2024-11-04 00:35:06',NULL,'2024-11-03 23:32:01','2024-11-04 00:35:06'),(3,'App\\Models\\User',147,'Personal Access Token','4996a76bdf2756ee3d8f702785dbcb6d94e130e223a9ab366931a4432c90e5cd','[\"*\"]','2024-11-04 00:36:50',NULL,'2024-11-04 00:36:44','2024-11-04 00:36:50'),(4,'App\\Models\\User',113,'Personal Access Token','fc9b0c71b87a0c249b27477b238ea2402922a0b8b484c9372eeba290c9b86f97','[\"*\"]','2024-11-05 06:24:14',NULL,'2024-11-04 21:37:19','2024-11-05 06:24:14'),(5,'App\\Models\\User',113,'Personal Access Token','83d81d9f5623703359978bb33a11475337b689952b7e7d46b484e4793c830aa1','[\"*\"]','2024-11-05 21:22:42',NULL,'2024-11-05 20:15:37','2024-11-05 21:22:42'),(6,'App\\Models\\User',113,'Personal Access Token','3a3be75e948cd0e41c7e81dbb4ccdf26a463cf585aa7c3e3179aa4037d1006b0','[\"*\"]',NULL,NULL,'2024-11-05 20:15:37','2024-11-05 20:15:37'),(7,'App\\Models\\User',113,'Personal Access Token','671c23be52591f52fcd38a6dbd7fdbcfcd8f4d559f3d975f0da80fb8ca54fc30','[\"*\"]','2024-11-13 18:55:05',NULL,'2024-11-06 20:30:53','2024-11-13 18:55:05'),(8,'App\\Models\\User',114,'Personal Access Token','d24c4b7d4d4b2c6f5186aa897feee9ec43597b9e2d3be008d624df7783d8a25b','[\"*\"]','2024-11-13 19:00:19',NULL,'2024-11-13 18:55:17','2024-11-13 19:00:19'),(9,'App\\Models\\User',149,'Personal Access Token','6657e5c66852f1d06731374e1e5fb4ba89156b784be92818a5c70bd125a27d5d','[\"*\"]','2024-11-15 18:02:12',NULL,'2024-11-14 22:22:46','2024-11-15 18:02:12'),(10,'App\\Models\\User',132,'Personal Access Token','9009eb590dbb9a2dcbfca6aa6360d6605b91c96b0c3e6cd43cfc7ed2f7f03c57','[\"*\"]','2024-11-15 18:42:17',NULL,'2024-11-15 17:59:45','2024-11-15 18:42:17'),(11,'App\\Models\\User',132,'Personal Access Token','56f3d97b6c607877e82fe70849973d2cf394647c2639899f2e49c9abcbd1016d','[\"*\"]','2024-11-15 18:08:27',NULL,'2024-11-15 18:02:24','2024-11-15 18:08:27'),(12,'App\\Models\\User',113,'Personal Access Token','c1b1fbc1d915c00a45b8b249239375cb36d7d7f4f1da19f53f8e493596a40c38','[\"*\"]','2024-11-18 00:36:17',NULL,'2024-11-18 00:36:12','2024-11-18 00:36:17'),(13,'App\\Models\\User',132,'Personal Access Token','df43012876631b845dd3ebf8e95f9463ac5d915e5680fa81c9b6fc5ad3259f8b','[\"*\"]','2024-11-18 00:37:02',NULL,'2024-11-18 00:36:51','2024-11-18 00:37:02'),(14,'App\\Models\\User',132,'Personal Access Token','7f6705e2e73fb2f9aa8b36209ced76cc42532221369223f2cf58f61b7da8a991','[\"*\"]','2024-11-21 18:43:14',NULL,'2024-11-21 18:11:30','2024-11-21 18:43:14'),(15,'App\\Models\\User',132,'Personal Access Token','2bb1a773d0cebaee8c613d07dd2912d1e627b805685fd10ad233f66e71feed74','[\"*\"]','2024-11-21 20:09:54',NULL,'2024-11-21 18:55:16','2024-11-21 20:09:54'),(16,'App\\Models\\User',113,'Personal Access Token','384a3700b1b2db8cf965869d425c6d42f92d3a266a6354b6d67d49defce02777','[\"*\"]','2024-11-21 20:09:17',NULL,'2024-11-21 20:09:16','2024-11-21 20:09:17'),(17,'App\\Models\\User',113,'Personal Access Token','913bef0e36cd6684e1890c75c735c04a5ac2d238fcdd69b111d41c61ba23f579','[\"*\"]',NULL,NULL,'2024-11-21 21:36:05','2024-11-21 21:36:05'),(18,'App\\Models\\User',113,'Personal Access Token','de9055b9f89834b7ee47cf22f68e80eafce2b283aa750e24c4891398cb7d8786','[\"*\"]','2024-11-22 19:10:45',NULL,'2024-11-21 21:36:05','2024-11-22 19:10:45'),(19,'App\\Models\\User',113,'Personal Access Token','0753c1c47778bb9586f8b7afe6ee104a3201db149b017f23823a4ccaf5c0c2ab','[\"*\"]','2024-11-22 19:01:39',NULL,'2024-11-22 19:01:37','2024-11-22 19:01:39'),(20,'App\\Models\\User',113,'Personal Access Token','f6c48732e13732948484944ec7b41423a3c6020911e72c1ea73245c9a5f96d5d','[\"*\"]','2024-11-22 19:05:44',NULL,'2024-11-22 19:05:42','2024-11-22 19:05:44'),(21,'App\\Models\\User',113,'Personal Access Token','d7f72f280a02f8b385a6eb61698f395b5869dda21b26034831eeaed17a448b3d','[\"*\"]','2024-11-22 19:11:30',NULL,'2024-11-22 19:11:27','2024-11-22 19:11:30'),(22,'App\\Models\\User',113,'Personal Access Token','5c368d44561fa7a66914318f6d87f34f88453e155e8137623e5727bdbca3f6e9','[\"*\"]',NULL,NULL,'2024-11-22 19:18:24','2024-11-22 19:18:24'),(23,'App\\Models\\User',113,'Personal Access Token','25ea4174b78448924d8b758b39f5ce658d5164273580af6a51f657b6ef1e4642','[\"*\"]','2024-11-22 19:18:25',NULL,'2024-11-22 19:18:25','2024-11-22 19:18:25'),(24,'App\\Models\\User',113,'Personal Access Token','3b25cb06dde0c22fb8b012f605dc10a6d89161134a2ec2630e58255ae37a507c','[\"*\"]','2024-11-24 18:06:22',NULL,'2024-11-24 17:58:35','2024-11-24 18:06:22'),(25,'App\\Models\\User',113,'Personal Access Token','25efc09a5155b86dd68fa88bc85e8ac15c880fe98662669a732c751bebdf4af3','[\"*\"]',NULL,NULL,'2024-11-24 17:58:35','2024-11-24 17:58:35'),(26,'App\\Models\\User',113,'Personal Access Token','d6b53ee77b553c23a5e393f979e993223e387948309409ad46a49ae7ccc2e40b','[\"*\"]','2024-11-27 18:22:09',NULL,'2024-11-25 06:58:48','2024-11-27 18:22:09'),(27,'App\\Models\\User',113,'Personal Access Token','bbcfc7f6e7361d9cca02c64b6a3176b3b572b1db692a7bafc9379b48e25812b7','[\"*\"]','2024-12-02 20:04:49',NULL,'2024-11-27 19:03:03','2024-12-02 20:04:49'),(28,'App\\Models\\User',116,'Personal Access Token','d639888d54b7e6483ff924a133cbe52b560e10de1f75b14d4dfa0faa8546f398','[\"*\"]','2024-11-29 01:05:51',NULL,'2024-11-28 19:16:02','2024-11-29 01:05:51'),(29,'App\\Models\\User',154,'Personal Access Token','d782c0c20a635a6538ed5df10ec509849dd0e9b712b9aeafbdfbf56f684819f7','[\"*\"]','2024-12-15 18:50:08',NULL,'2024-12-10 19:27:58','2024-12-15 18:50:08'),(30,'App\\Models\\User',155,'Personal Access Token','50e10526cc75dd064d290a3733ca134a0d8b4f06827697129f5766a592e4e475','[\"*\"]','2024-12-10 21:15:26',NULL,'2024-12-10 21:14:59','2024-12-10 21:15:26'),(31,'App\\Models\\User',155,'Personal Access Token','c35cf18e7bd5e858bad71ca7707297d1ebd94d68a52a88b255a0d76e7c987db1','[\"*\"]','2024-12-10 21:56:09',NULL,'2024-12-10 21:26:33','2024-12-10 21:56:09'),(32,'App\\Models\\User',156,'Personal Access Token','0185429ee8fddda35b67b22f4969cd0fa2f150b2c807e10a4dc30f9c78e70f64','[\"*\"]','2024-12-13 02:31:48',NULL,'2024-12-13 02:06:18','2024-12-13 02:31:48'),(33,'App\\Models\\User',157,'Personal Access Token','c34153225a8c9acfc1956ebfea95b3b98a1cee186c274fed806c7d85162d1be1','[\"*\"]','2024-12-15 23:52:26',NULL,'2024-12-15 23:46:47','2024-12-15 23:52:26'),(34,'App\\Models\\User',156,'Personal Access Token','13a8b6b701ffdc95c3b1de42c1422523a70ed42295646a0aa923253dc6ea339f','[\"*\"]','2024-12-15 23:52:45',NULL,'2024-12-15 23:52:41','2024-12-15 23:52:45'),(35,'App\\Models\\User',158,'Personal Access Token','7b7277fb602423ddf61c578d94a699ee46578346940b118f834e6cfdb4e078be','[\"*\"]','2024-12-16 00:01:14',NULL,'2024-12-16 00:01:07','2024-12-16 00:01:14'),(36,'App\\Models\\User',156,'Personal Access Token','5d966fa55d74fe2e4329c713a12b9bb28e6972f4330595f5cfd538fd8e090fb0','[\"*\"]','2024-12-16 00:26:09',NULL,'2024-12-16 00:16:26','2024-12-16 00:26:09'),(37,'App\\Models\\User',156,'Personal Access Token','d8fd465cfc51922c663c2f84570fda53c9f283fd9ad22d3589f6d576d288046d','[\"*\"]','2024-12-16 00:31:42',NULL,'2024-12-16 00:26:22','2024-12-16 00:31:42'),(38,'App\\Models\\User',156,'Personal Access Token','ddee1c85a6063bbcbe6b430e6b05c403962be0d4d98182f831872e12ecdfbe33','[\"*\"]','2024-12-16 00:32:43',NULL,'2024-12-16 00:32:14','2024-12-16 00:32:43'),(39,'App\\Models\\User',156,'Personal Access Token','2f021165b396bb47f877bfe9ef57d87acd1841ed7eb19a0648e243881b7f670a','[\"*\"]','2024-12-16 00:34:22',NULL,'2024-12-16 00:33:01','2024-12-16 00:34:22'),(40,'App\\Models\\User',157,'Personal Access Token','7ee00a7a415dabe96c436bb71283284d38aa7f89da5d3bb6e70f1f7edfc0651e','[\"*\"]','2024-12-16 00:42:17',NULL,'2024-12-16 00:34:38','2024-12-16 00:42:17'),(41,'App\\Models\\User',157,'Personal Access Token','56b008f1ef1628d77e08c3b2025092f3c46d64f5f1dcd5df746bf6d5708a4741','[\"*\"]','2024-12-16 01:23:32',NULL,'2024-12-16 00:42:29','2024-12-16 01:23:32'),(42,'App\\Models\\User',157,'Personal Access Token','94206d25dd23b1de4180cfc6c472c07fe976fc6c99e3b757e6f0cd10f4263b47','[\"*\"]','2024-12-16 00:56:17',NULL,'2024-12-16 00:54:14','2024-12-16 00:56:17'),(43,'App\\Models\\User',156,'Personal Access Token','2c9b20d75dea7d8c431409ce5870ead9fc32bddcb4a70d20eb233036d2b2988f','[\"*\"]','2024-12-16 01:52:52',NULL,'2024-12-16 01:23:43','2024-12-16 01:52:52'),(44,'App\\Models\\User',157,'Personal Access Token','4a89915da5c60b6b33663b01714b2eb766be821321e74e393138607b31558e2c','[\"*\"]','2024-12-16 01:53:43',NULL,'2024-12-16 01:53:04','2024-12-16 01:53:43'),(45,'App\\Models\\User',158,'Personal Access Token','a347e25cb420ad3931dc3528776d561f8e7a48bca4b018cc952e22c4964580a7','[\"*\"]','2024-12-17 02:29:44',NULL,'2024-12-16 01:53:58','2024-12-17 02:29:44'),(46,'App\\Models\\User',158,'Personal Access Token','4a4fd79359811942a2d12947ca3c0281abb0311e11924fbe03673cd6770cbd92','[\"*\"]','2024-12-17 02:33:15',NULL,'2024-12-17 02:30:31','2024-12-17 02:33:15'),(47,'App\\Models\\User',159,'Personal Access Token','27768e524aa451c008ee9be2a4929d6477b3557d7f7980ccbc4d25443e2627a5','[\"*\"]','2024-12-19 21:22:16',NULL,'2024-12-19 20:47:17','2024-12-19 21:22:16'),(48,'App\\Models\\User',159,'Personal Access Token','a022eb266c3511236f8df2f22d9c3ce106a85452377a3c74989fdf0963d44642','[\"*\"]','2024-12-19 22:11:07',NULL,'2024-12-19 21:22:33','2024-12-19 22:11:07'),(49,'App\\Models\\User',159,'Personal Access Token','eef47d54cbd8cae3ee45eb3a5ae5e2bf6da09dd03977ff67db8451cd2ef93d52','[\"*\"]','2024-12-20 19:16:16',NULL,'2024-12-19 22:11:32','2024-12-20 19:16:16'),(50,'App\\Models\\User',159,'Personal Access Token','c7a45a5c3462bed0e7d750df812961941fa42d638c3cd9189c16148caf878d1c','[\"*\"]','2024-12-20 19:18:19',NULL,'2024-12-20 19:16:32','2024-12-20 19:18:19'),(51,'App\\Models\\User',159,'Personal Access Token','3e00cf66f0d7047a3d782bbb6df2f3fb362bfbfee02e4652c94a31317180b71e','[\"*\"]','2024-12-20 19:29:24',NULL,'2024-12-20 19:18:36','2024-12-20 19:29:24'),(52,'App\\Models\\User',159,'Personal Access Token','b45fd815c02652497c85d67c23fecc74775e5df4e081176d172bdbfbd0550546','[\"*\"]','2024-12-20 19:30:07',NULL,'2024-12-20 19:29:40','2024-12-20 19:30:07'),(53,'App\\Models\\User',159,'Personal Access Token','6005ab461b6dfb29bec1ca3f27fa50736c1e92b85e699a859afd9f112c33003c','[\"*\"]','2024-12-20 19:30:47',NULL,'2024-12-20 19:30:25','2024-12-20 19:30:47'),(54,'App\\Models\\User',160,'Personal Access Token','ac52da2ec1c32d0355d0b25671334ea3d012e8c9ae662f7b5482a2e36bea489e','[\"*\"]','2024-12-20 19:33:20',NULL,'2024-12-20 19:32:06','2024-12-20 19:33:20'),(55,'App\\Models\\User',160,'Personal Access Token','16cc337e9ce5b22c7b4aec4b4fd8decf18add75c5fb9c1fd40b2a3bfcb083a85','[\"*\"]','2024-12-20 19:37:26',NULL,'2024-12-20 19:35:11','2024-12-20 19:37:26'),(56,'App\\Models\\User',160,'Personal Access Token','d1ae5e99a628fb78109f6457cd98e964c157d4430ed3f38767a65f34d47eee02','[\"*\"]','2024-12-20 19:48:02',NULL,'2024-12-20 19:37:43','2024-12-20 19:48:02'),(57,'App\\Models\\User',159,'Personal Access Token','ccded9480a7cc42daac17327c1677f9d03d031371e32d61e84689403e755f4d0','[\"*\"]','2024-12-20 20:26:28',NULL,'2024-12-20 19:48:27','2024-12-20 20:26:28'),(58,'App\\Models\\User',160,'Personal Access Token','10b7d81a10f82c0eecfe66365cef3ca650cd23b403ba6247a72ec0596d3f8c88','[\"*\"]','2024-12-20 20:54:59',NULL,'2024-12-20 20:26:44','2024-12-20 20:54:59'),(59,'App\\Models\\User',159,'Personal Access Token','b43afca79f40b7711ed341da005a1fe15bcf0a3d8ff45953dd5e70208255e9eb','[\"*\"]','2024-12-20 21:11:26',NULL,'2024-12-20 20:55:21','2024-12-20 21:11:26'),(60,'App\\Models\\User',159,'Personal Access Token','80370f8fb5e22e73405bf98e344678573e876b92b2e3ce50ff936c7f95deda7c','[\"*\"]','2024-12-20 21:13:09',NULL,'2024-12-20 21:12:07','2024-12-20 21:13:09'),(61,'App\\Models\\User',163,'Personal Access Token','8d7cfa015789fd2a5e314967f24d52fe9a425d222cc2631e802b796124852c54','[\"*\"]','2024-12-20 21:17:18',NULL,'2024-12-20 21:16:21','2024-12-20 21:17:18'),(62,'App\\Models\\User',164,'Personal Access Token','c94809cfb72432f30d3c20f3498a30db79ee5ce289422fe200fb00e7b782d153','[\"*\"]','2024-12-20 21:32:48',NULL,'2024-12-20 21:18:41','2024-12-20 21:32:48'),(63,'App\\Models\\User',165,'Personal Access Token','9ae4a6379c5e467ec3ba0a491d0563252d894358f6bae6445d7281cd7eaf730a','[\"*\"]','2024-12-20 22:02:38',NULL,'2024-12-20 21:33:56','2024-12-20 22:02:38'),(64,'App\\Models\\User',164,'Personal Access Token','1cd2b983286f3f2a8004b6b20c3e959f1f02eecc3089d134d57158c4d2c0dc11','[\"*\"]','2024-12-22 23:21:09',NULL,'2024-12-20 22:02:49','2024-12-22 23:21:09'),(65,'App\\Models\\User',164,'Personal Access Token','9d5cb4f445a166cbfb76fe57b37fd87ae1c3d67c0fe908a531c252e21dfd0a70','[\"*\"]','2024-12-24 02:07:47',NULL,'2024-12-22 23:21:56','2024-12-24 02:07:47'),(66,'App\\Models\\User',165,'Personal Access Token','c9289e97345e3dfc713156a2a115b41d780ac93504bad27529f29299503517f0','[\"*\"]','2024-12-25 00:38:03',NULL,'2024-12-24 02:08:18','2024-12-25 00:38:03'),(67,'App\\Models\\User',156,'Personal Access Token','467580d76713dda9689d9c5a340821910df587afa1ab406a4da7782b221cdb95','[\"*\"]','2024-12-26 02:36:26',NULL,'2024-12-26 00:07:46','2024-12-26 02:36:26'),(68,'App\\Models\\User',164,'Personal Access Token','bfa7a3e8a358c69e78114c4066578cae0bbf94868d4ae792f133b0424ea779f0','[\"*\"]','2024-12-26 02:45:42',NULL,'2024-12-26 02:32:32','2024-12-26 02:45:42'),(69,'App\\Models\\User',166,'Personal Access Token','98078c0e83b1deef3db7112f78607b373809c13ba5f0f875ce2751f032424e02','[\"*\"]','2024-12-26 19:47:38',NULL,'2024-12-26 02:45:56','2024-12-26 19:47:38'),(70,'App\\Models\\User',166,'Personal Access Token','8361175277c9b138da48762490c97f42b9dbf2cb1767eb51a241acb3feb3b8f5','[\"*\"]','2024-12-29 19:54:13',NULL,'2024-12-26 19:47:55','2024-12-29 19:54:13'),(71,'App\\Models\\User',156,'Personal Access Token','139f4affc570c3e1cbedfea3387e68827ed40de1b3e296d6e0a418a2c9b0a1a6','[\"*\"]','2024-12-26 20:21:12',NULL,'2024-12-26 20:20:30','2024-12-26 20:21:12'),(72,'App\\Models\\User',156,'Personal Access Token','c2937302ae4769d62ee1c38dcbb699569d18482778d9350c5830e1309b235660','[\"*\"]','2024-12-26 20:24:19',NULL,'2024-12-26 20:23:59','2024-12-26 20:24:19'),(73,'App\\Models\\User',156,'Personal Access Token','84fe868bbd710184b8d87376870ae90bfb7717b761ac0e4cea808dc59fcc7264','[\"*\"]','2024-12-26 22:43:28',NULL,'2024-12-26 20:24:56','2024-12-26 22:43:28'),(74,'App\\Models\\User',164,'Personal Access Token','947cb4bb5dcc716c4e78234fc01ae497ba453a651991442bfa3748b270081cff','[\"*\"]','2024-12-30 05:46:45',NULL,'2024-12-30 01:40:06','2024-12-30 05:46:45'),(75,'App\\Models\\User',166,'Personal Access Token','a3768627c45cf14548c665706a5139a7f93c40fe0a36952b4b63e9309d0df6c5','[\"*\"]','2024-12-30 05:47:11',NULL,'2024-12-30 05:47:06','2024-12-30 05:47:11'),(76,'App\\Models\\User',166,'Personal Access Token','7603dc185cd3b94bd9a37152a2aa3dece89af84f2e9d19d787b7719db112787e','[\"*\"]','2025-01-02 19:42:02',NULL,'2025-01-02 19:38:58','2025-01-02 19:42:02'),(77,'App\\Models\\User',166,'Personal Access Token','b62bcd6256a7696a6926bdfd8459c3517a3f4814283c1b554e28ad15faf44d98','[\"*\"]','2025-01-02 19:43:38',NULL,'2025-01-02 19:42:18','2025-01-02 19:43:38'),(78,'App\\Models\\User',168,'Personal Access Token','8abfb4c0be6d40e5152a09c9b45fafd266695c18f3a24b88e2746aac9171cdb5','[\"*\"]','2025-01-02 20:02:43',NULL,'2025-01-02 19:45:47','2025-01-02 20:02:43'),(79,'App\\Models\\User',166,'Personal Access Token','5de68ffb9f93c818939be34a433bda1f77707a238cc20e091961876e3ebddcb5','[\"*\"]','2025-01-03 23:16:30',NULL,'2025-01-03 20:26:39','2025-01-03 23:16:30'),(80,'App\\Models\\User',156,'Personal Access Token','03f57a1e9c11a6c66b300b6232c33cc910b44ba7a8b970bf308748b2d06ddaf5','[\"*\"]','2025-01-08 02:10:17',NULL,'2025-01-03 23:02:37','2025-01-08 02:10:17'),(81,'App\\Models\\User',166,'Personal Access Token','85b0dc4e416929231c4f7d4c438085c6ddaae3cdf2b798fcf0a21a243c63278d','[\"*\"]','2025-01-05 21:59:17',NULL,'2025-01-03 23:17:17','2025-01-05 21:59:17'),(82,'App\\Models\\User',166,'Personal Access Token','64353b253a7074a64f6b2bde2accfd89d199a800a5e239433577ce986f2ad253','[\"*\"]','2025-01-06 21:28:22',NULL,'2025-01-06 01:41:36','2025-01-06 21:28:22'),(83,'App\\Models\\User',166,'Personal Access Token','76e87563a7a49a05d9cbf8ae4f3965c8fe768b58e5adf68b731d14fd92013367','[\"*\"]','2025-01-07 02:12:17',NULL,'2025-01-06 21:28:38','2025-01-07 02:12:17'),(84,'App\\Models\\User',166,'Personal Access Token','605e5ac59bf41cfbf334f9f5c3fc11d25e8c8f00ae87fe96d7b7a8d510debe95','[\"*\"]','2025-01-07 19:19:17',NULL,'2025-01-07 02:13:18','2025-01-07 19:19:17'),(85,'App\\Models\\User',169,'Personal Access Token','e04ef5dede5da2b40cdc63653ef8f0607edad5f389f78af44c906f8ea40bb54c','[\"*\"]','2025-01-08 23:26:05',NULL,'2025-01-08 02:12:06','2025-01-08 23:26:05'),(86,'App\\Models\\User',166,'Personal Access Token','7d70ba325b821fe048e97a276bfa389a3a3884e5f0ea60d657d94851860c625c','[\"*\"]','2025-01-10 18:59:58',NULL,'2025-01-08 20:58:20','2025-01-10 18:59:58'),(87,'App\\Models\\User',169,'Personal Access Token','ea6c1aed4aeb625ee35ccc063b3450f9c95ef22147de8464a7b2c58c021d3480','[\"*\"]','2025-01-09 02:21:42',NULL,'2025-01-09 02:07:49','2025-01-09 02:21:42'),(88,'App\\Models\\User',169,'Personal Access Token','50a6f6b755f815e7d068dac3fdfbffe5150880ff1edfc26ce7f1765a37908333','[\"*\"]','2025-01-10 01:38:08',NULL,'2025-01-09 23:44:13','2025-01-10 01:38:08'),(89,'App\\Models\\User',169,'Personal Access Token','acd722f1a74b9e6807ad567eb90972b8279c4e438e419970d79b917c8bcfed93','[\"*\"]','2025-01-10 22:44:06',NULL,'2025-01-10 19:43:38','2025-01-10 22:44:06'),(90,'App\\Models\\User',169,'Personal Access Token','b0cc56d4b0c8299bcdc6aa93f586a23ba09d4e7cbd5a241dd6582dc9042f39e7','[\"*\"]','2025-01-12 20:26:16',NULL,'2025-01-12 19:31:41','2025-01-12 20:26:16'),(91,'App\\Models\\User',169,'Personal Access Token','39813aa281fe3a3320a649cc41f2a65dea8423ad71022ec510b3d35e9dcf3974','[\"*\"]','2025-01-12 23:28:23',NULL,'2025-01-12 21:13:55','2025-01-12 23:28:23'),(92,'App\\Models\\User',169,'Personal Access Token','eca9d0e953f7c63ac68538be3aa37bede368956dc512858868fc735013c5da44','[\"*\"]','2025-01-13 20:02:03',NULL,'2025-01-12 23:32:11','2025-01-13 20:02:03'),(93,'App\\Models\\User',169,'Personal Access Token','56656af759311ec5b078c99f66f9e0a255e7f961147bf2c9fdcb5b7c214202b8','[\"*\"]','2025-01-14 01:06:18',NULL,'2025-01-13 20:05:12','2025-01-14 01:06:18'),(94,'App\\Models\\User',12,'Personal Access Token','b5e5f10d6efeb4feb589c96bc09da9da25dad31b2bc5b87174c5af75255b637c','[\"*\"]','2025-01-14 01:21:21',NULL,'2025-01-14 01:21:05','2025-01-14 01:21:21'),(95,'App\\Models\\User',169,'Personal Access Token','13ff46c461658b724bf876b6f8a85ea17f3a092e7c903f36b3de515d514d574d','[\"*\"]','2025-01-14 21:52:31',NULL,'2025-01-14 21:44:06','2025-01-14 21:52:31'),(96,'App\\Models\\User',169,'Personal Access Token','36ca4766f705c23af1283e13a4cd694ddd74200b1d4e8431956f7b698aa95ce8','[\"*\"]','2025-01-15 01:27:40',NULL,'2025-01-14 23:19:05','2025-01-15 01:27:40'),(97,'App\\Models\\User',169,'Personal Access Token','c8638b56814f65502173c670167896341d2ec270d60ddcaf60a231330678bcc0','[\"*\"]','2025-01-15 20:06:09',NULL,'2025-01-15 01:50:32','2025-01-15 20:06:09'),(98,'App\\Models\\User',169,'Personal Access Token','6e0cd430cfcb71e056d4536e3d817349be9c581101efbc3364dea9ee9885ece1','[\"*\"]','2025-01-15 20:27:10',NULL,'2025-01-15 20:24:04','2025-01-15 20:27:10'),(99,'App\\Models\\User',166,'Personal Access Token','2142d2b390a1e82a0f0fc9f75ce0fa5fbae18dc9c4543f1c639cd4ded92ebd53','[\"*\"]','2025-01-15 20:35:12',NULL,'2025-01-15 20:26:53','2025-01-15 20:35:12'),(100,'App\\Models\\User',169,'Personal Access Token','92a5719d8c1f75c3dc3fbd57bfdd2698f9a773d12f543989d167b67f9da9a676','[\"*\"]','2025-01-15 20:43:16',NULL,'2025-01-15 20:34:55','2025-01-15 20:43:16'),(101,'App\\Models\\User',169,'Personal Access Token','bbdffe7ab76e88ee25e03829f397c71b65861670b9927e21ee73159e9b4a20a0','[\"*\"]','2025-01-15 21:23:13',NULL,'2025-01-15 21:09:47','2025-01-15 21:23:13'),(102,'App\\Models\\User',169,'Personal Access Token','2c89d354edfff564e7f793fd86ed5bf042e9c834b969327e045e5802d3dd6a8f','[\"*\"]','2025-01-15 21:29:06',NULL,'2025-01-15 21:23:19','2025-01-15 21:29:06'),(103,'App\\Models\\User',166,'Personal Access Token','23614f7176df87113e0ece32f193cc6078edbcff6c862384288476a6000a5c51','[\"*\"]','2025-01-17 21:21:24',NULL,'2025-01-17 19:11:14','2025-01-17 21:21:24'),(104,'App\\Models\\User',166,'Personal Access Token','339834431109acc98372de8eb8aed1e3af25f52d9b2b1ad3895416de283b8c59','[\"*\"]','2025-01-20 01:39:38',NULL,'2025-01-17 21:21:56','2025-01-20 01:39:38'),(105,'App\\Models\\User',156,'Personal Access Token','6a2136b8318f7ccde9639b966a8740359ad9210f3b1459eae0060047d9f87d70','[\"*\"]','2025-01-19 21:10:12',NULL,'2025-01-19 21:07:12','2025-01-19 21:10:12'),(106,'App\\Models\\User',166,'Personal Access Token','54c0b4f06e3ea611376fb01aef35720b8b638317b464c06a1cc0088c5e66cf10','[\"*\"]','2025-01-21 21:18:47',NULL,'2025-01-21 00:58:20','2025-01-21 21:18:47'),(107,'App\\Models\\User',166,'Personal Access Token','79315eca451b462151f221764332acfe42b1f14919de3ec35389ad0be8be0696','[\"*\"]','2025-01-22 20:07:40',NULL,'2025-01-22 03:34:31','2025-01-22 20:07:40'),(108,'App\\Models\\User',156,'Personal Access Token','40fca4749205b037270ce1ab04dcae803b2bbbc68218027dc28909ec7a83cc8c','[\"*\"]','2025-01-23 02:06:09',NULL,'2025-01-23 02:04:24','2025-01-23 02:06:09'),(109,'App\\Models\\User',166,'Personal Access Token','8dd211416a8dcf1b30cbcd3af0a252856cfca401a8c8bc91d4b03bb52ea4c6ea','[\"*\"]','2025-01-29 20:39:41',NULL,'2025-01-23 23:03:53','2025-01-29 20:39:41'),(110,'App\\Models\\User',166,'Personal Access Token','21b6c5dab3249723c95ee05e2cdae87bfd81f83c773b2d2258b3c9fecdff9f3c','[\"*\"]','2025-01-29 22:07:08',NULL,'2025-01-29 22:04:48','2025-01-29 22:07:08'),(111,'App\\Models\\User',164,'Personal Access Token','da90655de3af1504418927c04d0473794c76e85c6f2af25bf8c9b1ef274d3034','[\"*\"]','2025-01-29 23:55:55',NULL,'2025-01-29 22:07:19','2025-01-29 23:55:55'),(112,'App\\Models\\User',166,'Personal Access Token','95de9f7cccdc9f698d46b5d24aaa6bc923f4ba9f76d3a5a7bd6b120f321005a1','[\"*\"]','2025-01-29 23:56:31',NULL,'2025-01-29 23:56:07','2025-01-29 23:56:31'),(113,'App\\Models\\User',164,'Personal Access Token','528a676bf848a110ddda49982500d0fe2a79502a19226a5e6aaa5fe541c57c59','[\"*\"]','2025-01-30 00:21:11',NULL,'2025-01-29 23:56:44','2025-01-30 00:21:11'),(114,'App\\Models\\User',166,'Personal Access Token','a2b8e941ec55ff74c21c221a0914722f6b62ddff24d6dc3f1e9460d7bb8a5af6','[\"*\"]','2025-01-30 00:22:31',NULL,'2025-01-30 00:21:28','2025-01-30 00:22:31'),(115,'App\\Models\\User',164,'Personal Access Token','52b438d6e9fabc22a3186ee6be33e691f64adfdff78237a8de5a2b826128e407','[\"*\"]','2025-01-30 00:23:57',NULL,'2025-01-30 00:22:44','2025-01-30 00:23:57'),(116,'App\\Models\\User',156,'Personal Access Token','24008862dbb4aea6a18fd832d802f476239ce15455f8b4892aab872fa4803413','[\"*\"]','2025-01-31 21:22:23',NULL,'2025-01-31 20:38:05','2025-01-31 21:22:23'),(117,'App\\Models\\User',156,'Personal Access Token','ccd51c9d15b97cd2453283fc2697df26bb8d2688f9ce5e33240349a3e9050472','[\"*\"]','2025-01-31 22:14:56',NULL,'2025-01-31 21:27:14','2025-01-31 22:14:56'),(118,'App\\Models\\User',156,'Personal Access Token','75c0fde089380ac9ff05da9c01b62bff1c487f91e795ecb766fe46f67db0cc59','[\"*\"]','2025-02-03 01:16:22',NULL,'2025-02-03 00:55:40','2025-02-03 01:16:22'),(119,'App\\Models\\User',166,'Personal Access Token','49a1fb878b7a041d5c5d36a784c95bc90c6eb338a9448f5a341cc4aafb8c506b','[\"*\"]','2025-02-04 19:03:45',NULL,'2025-02-03 19:56:16','2025-02-04 19:03:45'),(120,'App\\Models\\User',166,'Personal Access Token','fb6d8f184ad9ab0f71da8d311b21e6833d44457b32e2ff37a4afafde43dfc0f0','[\"*\"]','2025-02-04 21:43:16',NULL,'2025-02-04 19:04:15','2025-02-04 21:43:16'),(121,'App\\Models\\User',166,'Personal Access Token','83972fcc4ac02a4c7e37bd6936f4ea9a4b228c1ddebd15ae2d7d527c50fd70dc','[\"*\"]','2025-02-05 18:51:24',NULL,'2025-02-05 01:16:55','2025-02-05 18:51:24'),(122,'App\\Models\\User',168,'Personal Access Token','2be394ab1c6e8fa8e3d63f0613464118154ff155652d20e82798fcb5fd82a922','[\"*\"]','2025-02-05 21:35:32',NULL,'2025-02-05 18:51:59','2025-02-05 21:35:32'),(123,'App\\Models\\User',168,'Personal Access Token','603972b04e470f66525569afff9ab6a7aed22250210b28a5259a0943b57ced54','[\"*\"]','2025-02-09 23:15:43',NULL,'2025-02-09 23:13:16','2025-02-09 23:15:43'),(124,'App\\Models\\User',166,'Personal Access Token','2e188a490ae3082a166e5eb85afe851276f4d19e4b2a18fd68fb7e58e0e05ee7','[\"*\"]','2025-02-12 00:35:19',NULL,'2025-02-09 23:16:49','2025-02-12 00:35:19'),(125,'App\\Models\\User',166,'Personal Access Token','d525a93ce85f67517e1f95e38d58422fb69edaafdc2a0a52cf9ad7e58f136d95','[\"*\"]','2025-02-12 01:16:34',NULL,'2025-02-12 00:35:32','2025-02-12 01:16:34'),(126,'App\\Models\\User',166,'Personal Access Token','e9b59215da5b067dbf5172ed11359ed2385ade69c58460c6a69266838ef847ea','[\"*\"]','2025-02-12 20:57:43',NULL,'2025-02-12 20:55:53','2025-02-12 20:57:43'),(127,'App\\Models\\User',166,'Personal Access Token','e2e4dd264dd17d2ab81c3ac1ef0972822d0fffb2e11996cf15887bb7cf86afae','[\"*\"]','2025-02-12 21:03:44',NULL,'2025-02-12 21:00:57','2025-02-12 21:03:44'),(128,'App\\Models\\User',166,'Personal Access Token','0d1938c1abc7db71b2dc6cb059a2c7b74ae105b3393c0715678c73afb712246f','[\"*\"]','2025-02-12 22:09:51',NULL,'2025-02-12 22:08:16','2025-02-12 22:09:51'),(129,'App\\Models\\User',166,'Personal Access Token','950eff46a4856a31b3a2c3663414092f281788f46141dbafb9b7432c8368764b','[\"*\"]','2025-02-14 02:01:20',NULL,'2025-02-12 22:11:18','2025-02-14 02:01:20'),(130,'App\\Models\\User',166,'Personal Access Token','7aeb0ee5bc14a011fde3ebe1534ea72925262772647a0627bb3c260f7c2f91e3','[\"*\"]','2025-02-14 18:15:33',NULL,'2025-02-14 02:01:32','2025-02-14 18:15:33'),(131,'App\\Models\\User',166,'Personal Access Token','aa178dd06158f3a3ef62add36ad8d2353e3b788e0e6991fd959bd7abb2d5a644','[\"*\"]','2025-02-14 18:19:40',NULL,'2025-02-14 18:15:55','2025-02-14 18:19:40'),(132,'App\\Models\\User',166,'Personal Access Token','ae5b375ecf5b297b245403b380354f2fe0e8403b909037867c51666f8ddac366','[\"*\"]','2025-02-14 18:30:45',NULL,'2025-02-14 18:24:44','2025-02-14 18:30:45'),(133,'App\\Models\\User',166,'Personal Access Token','0b519634bcb3154a979b7c9b2733de2ceb44115e30d317dddac5fb66a3df93c7','[\"*\"]','2025-02-14 18:52:37',NULL,'2025-02-14 18:32:37','2025-02-14 18:52:37'),(134,'App\\Models\\User',166,'Personal Access Token','d93bc369480858ca7f5add01aa2bb8c82f55cf4e7b695b808044b2fb1d9215ad','[\"*\"]',NULL,NULL,'2025-02-14 18:47:11','2025-02-14 18:47:11'),(135,'App\\Models\\User',166,'Personal Access Token','7e374b51749edeb9b2b606d81e37fe96065b12a96246ea4bb065b4de5adb20f7','[\"*\"]','2025-02-14 20:53:08',NULL,'2025-02-14 20:52:10','2025-02-14 20:53:08'),(136,'App\\Models\\User',166,'Personal Access Token','c3a7f32b574d291a99ae33ce87877e749afd49d66e6a5707f8e7749933ba725f','[\"*\"]','2025-02-19 19:51:38',NULL,'2025-02-19 00:28:53','2025-02-19 19:51:38'),(137,'App\\Models\\User',166,'Personal Access Token','bd407311daeca6644bf930aa2189fdf6ea981cdbc7fecb0fbb5d8725fdaae9f3','[\"*\"]','2025-02-19 21:12:46',NULL,'2025-02-19 20:10:10','2025-02-19 21:12:46'),(138,'App\\Models\\User',169,'Personal Access Token','c942b6a01ab6b5c25646269c812b6cf7e1673b17da3e9c78253858118ae41586','[\"*\"]','2025-02-25 19:04:56',NULL,'2025-02-23 21:04:36','2025-02-25 19:04:56'),(139,'App\\Models\\User',166,'Personal Access Token','7eec1c636298e627c174395de518dbab766358ff1b8e4f228e5788a6ff505940','[\"*\"]','2025-03-03 02:15:59',NULL,'2025-03-03 01:43:41','2025-03-03 02:15:59'),(140,'App\\Models\\User',164,'Personal Access Token','4c4588d0dcdf6a95a6347c58524f43cfd11de657a56c2a19b809d9f7dc475b9f','[\"*\"]','2025-03-03 18:47:43',NULL,'2025-03-03 18:47:37','2025-03-03 18:47:43'),(141,'App\\Models\\User',166,'Personal Access Token','5cc6e0b5ffc433a01a66498c2003814fe5ac4f09c69d50c5af893a17a1330f4a','[\"*\"]','2025-03-03 19:11:31',NULL,'2025-03-03 18:47:55','2025-03-03 19:11:31'),(142,'App\\Models\\User',166,'Personal Access Token','e8127cfc230012b4988f2b19c5ddc5231ab949d2ae26ff1060402484b0d11f88','[\"*\"]','2025-03-03 19:19:26',NULL,'2025-03-03 19:11:47','2025-03-03 19:19:26'),(143,'App\\Models\\User',164,'Personal Access Token','caee53fb4aa2b8be9e919952692e27153a8995832c1657133fe68d212a69f6ce','[\"*\"]','2025-03-03 19:22:48',NULL,'2025-03-03 19:19:42','2025-03-03 19:22:48'),(144,'App\\Models\\User',166,'Personal Access Token','27540f8b59b3e1fff083343f2719a5840f9bb47abd5b2b3b27c0e7fff2d3aa93','[\"*\"]','2025-03-03 19:24:51',NULL,'2025-03-03 19:23:03','2025-03-03 19:24:51'),(145,'App\\Models\\User',164,'Personal Access Token','9a63d96ebebb4fb9c8f9610f266ba30922436f5d1db61df090d2c9ed724b4006','[\"*\"]','2025-03-04 01:23:23',NULL,'2025-03-03 19:25:00','2025-03-04 01:23:23'),(146,'App\\Models\\User',166,'Personal Access Token','ea0793c8a8eaa1458a0705b9da353f01b76c5008a8391dbec9592ddc5948fa3d','[\"*\"]','2025-03-06 21:20:34',NULL,'2025-03-04 01:23:36','2025-03-06 21:20:34'),(147,'App\\Models\\User',166,'Personal Access Token','7637e6b76b03e9f8d6453e3b2d51688784f70699e9f84e6f2260c350554f4dde','[\"*\"]',NULL,NULL,'2025-03-05 23:10:37','2025-03-05 23:10:37'),(148,'App\\Models\\User',166,'Personal Access Token','bb977dd9a0dc301719fbb325ba82085312b48448794026037739fb4fc5c1f76e','[\"*\"]',NULL,NULL,'2025-03-05 23:11:27','2025-03-05 23:11:27'),(149,'App\\Models\\User',166,'Personal Access Token','7a6de035c118efd629f2383f0636fb27622eac501305abb34953ea2f70e4f93e','[\"*\"]',NULL,NULL,'2025-03-05 23:12:59','2025-03-05 23:12:59'),(150,'App\\Models\\User',166,'Personal Access Token','f189c15320bcf86ac4b50ff3fb0d11f6d594d3b07c7e883c1a012846459e66c4','[\"*\"]','2025-03-06 23:52:20',NULL,'2025-03-06 23:47:46','2025-03-06 23:52:20'),(151,'App\\Models\\User',166,'Personal Access Token','0f76ba7fd68bbfdab196a250c76bedb7e5174ec7877e847da5548dd9011f3b5d','[\"*\"]','2025-03-09 18:42:15',NULL,'2025-03-06 23:52:59','2025-03-09 18:42:15'),(152,'App\\Models\\User',173,'Personal Access Token','88a583470b84703b4c56f2f808b5a241e33888b9101fa3fd86afe4e16851d213','[\"*\"]',NULL,NULL,'2025-03-09 19:54:28','2025-03-09 19:54:28'),(153,'App\\Models\\User',173,'Personal Access Token','41b938a692ac1f9987edde0d90149e48bb0b73ee91ff08e83191004d94da2196','[\"*\"]','2025-03-09 20:37:44',NULL,'2025-03-09 20:09:52','2025-03-09 20:37:44'),(154,'App\\Models\\User',166,'Personal Access Token','335d0e91894f9b292a80bbdc7f0455d17429586abdd6dc847b7346d46f8a8af8','[\"*\"]','2025-03-12 21:41:01',NULL,'2025-03-09 22:05:46','2025-03-12 21:41:01'),(155,'App\\Models\\User',166,'Personal Access Token','c9e0218ed1ad7a9b706ca9f8d0dfe3a66642ae4dd2dcebd31d7f8ee7cb9d818b','[\"*\"]','2025-03-19 19:45:06',NULL,'2025-03-18 20:20:14','2025-03-19 19:45:06'),(156,'App\\Models\\User',166,'Personal Access Token','0d66a21913d15def8a913c6257ee2090158db60e2afbc1caaf11803129e2f55c','[\"*\"]','2025-03-20 01:28:35',NULL,'2025-03-20 00:56:02','2025-03-20 01:28:35'),(157,'App\\Models\\User',166,'Personal Access Token','ee2f0ed5cf4c6e246a84e54ba031bfb787d427d444214db931d4d1340d4f6298','[\"*\"]','2025-04-07 23:53:09',NULL,'2025-03-20 01:28:41','2025-04-07 23:53:09'),(158,'App\\Models\\User',166,'Personal Access Token','b00d9609d2deaa79c1198c22e8da1404b4396f43015a9c046e8f611ed02ee528','[\"*\"]','2025-03-20 20:03:32',NULL,'2025-03-20 20:02:48','2025-03-20 20:03:32'),(159,'App\\Models\\User',166,'Personal Access Token','0cebfa1872d4899e76e0f79c2678c56c2a0a218f80f5c576c15afdd24b942d0b','[\"*\"]','2025-03-20 21:32:34',NULL,'2025-03-20 21:17:09','2025-03-20 21:32:34'),(160,'App\\Models\\User',166,'Personal Access Token','a5554d4f29952024398a5d8e2722e8aff2c2c0dd6f3fd88999d3284309bc9d32','[\"*\"]','2025-03-23 19:10:47',NULL,'2025-03-20 21:40:25','2025-03-23 19:10:47'),(161,'App\\Models\\User',166,'Personal Access Token','0283d862ef6cf82b4b6157439bd799f8350fe164adbb70d5272b36f916110b70','[\"*\"]','2025-03-24 19:06:02',NULL,'2025-03-23 19:11:05','2025-03-24 19:06:02'),(162,'App\\Models\\User',165,'Personal Access Token','6a8550d47205a320c44d09922cbd8fc3b281581863cdc13e75f10f9342db2c2f','[\"*\"]','2025-03-24 19:08:52',NULL,'2025-03-24 19:07:16','2025-03-24 19:08:52'),(163,'App\\Models\\User',166,'Personal Access Token','d525f0181425d87b84d3cd3ec8bab209666bf190eb7b02c24111768d84cec143','[\"*\"]','2025-03-25 21:17:26',NULL,'2025-03-24 20:39:54','2025-03-25 21:17:26'),(164,'App\\Models\\User',156,'Personal Access Token','e12a064e0cedb93f66deaecf9be3c4213ae57447d67333aa50dcb9e7cdbe15b1','[\"*\"]','2025-03-25 20:31:06',NULL,'2025-03-25 20:09:11','2025-03-25 20:31:06'),(165,'App\\Models\\User',156,'Personal Access Token','88e451ea2454b3a4695447d3632dc22961ae48a2bbd1f6f3c1ada6eddfb75188','[\"*\"]','2025-03-25 21:35:01',NULL,'2025-03-25 21:06:02','2025-03-25 21:35:01'),(166,'App\\Models\\User',156,'Personal Access Token','baee96177d781aa69cc3a50b50a5f1318cda489f0f27003b30555e4c9bd01a04','[\"*\"]','2025-03-26 00:50:32',NULL,'2025-03-25 21:20:06','2025-03-26 00:50:32'),(167,'App\\Models\\User',156,'Personal Access Token','bbd6eae229d14cc5d4e03db16bc6298bbf4f452c8f2a1473ad5e7f0937d56599','[\"*\"]','2025-03-26 00:12:16',NULL,'2025-03-25 21:35:15','2025-03-26 00:12:16'),(168,'App\\Models\\User',156,'Personal Access Token','19093abe165d1da71fd1e9dee0813595ab212b7950a8edcf4e09c7f765e0b839','[\"*\"]','2025-03-26 00:12:33',NULL,'2025-03-26 00:12:28','2025-03-26 00:12:33'),(169,'App\\Models\\User',156,'Personal Access Token','c6a486faeda276e8cfa26bf3d4704d290a0d47208b393bacd4f6ac6837f1c2c8','[\"*\"]','2025-03-26 00:13:39',NULL,'2025-03-26 00:13:37','2025-03-26 00:13:39'),(170,'App\\Models\\User',156,'Personal Access Token','d9f6f90ca5c1337a997b186184ac85578a5acfbaba3f00509844fdda7e44482d','[\"*\"]','2025-03-26 00:15:02',NULL,'2025-03-26 00:14:08','2025-03-26 00:15:02'),(171,'App\\Models\\User',156,'Personal Access Token','f16bcd6dc325d876c2fbfe1777080ff2edea2704a4be30958e8f87a5fe203c16','[\"*\"]','2025-03-26 00:17:29',NULL,'2025-03-26 00:15:13','2025-03-26 00:17:29'),(172,'App\\Models\\User',156,'Personal Access Token','ec7937a19b9a7a49ccfbc06719a7099049c760f0a2a10834a8107b2570082427','[\"*\"]','2025-03-26 02:00:03',NULL,'2025-03-26 00:19:10','2025-03-26 02:00:03'),(173,'App\\Models\\User',166,'Personal Access Token','54f2de172ee643f5529de582ecaa9fb71b737a58db754e37450de123e65bce8c','[\"*\"]','2025-03-26 02:32:16',NULL,'2025-03-26 02:24:13','2025-03-26 02:32:16'),(174,'App\\Models\\User',166,'Personal Access Token','2a737a3550c4341e1dfb0711be938f27c5ba89e144cfc7bc5967b35f4fe42322','[\"*\"]',NULL,NULL,'2025-03-26 02:25:00','2025-03-26 02:25:00'),(175,'App\\Models\\User',166,'Personal Access Token','3994541a58cbd6cbbb6e5bfb48377c5a787f931496a14552cdfc4a6e904b7500','[\"*\"]',NULL,NULL,'2025-03-26 02:25:35','2025-03-26 02:25:35'),(176,'App\\Models\\User',166,'Personal Access Token','5fcc4181e695aadbbb6d95b9841ee180a2f95f587519c651b1fdb04601eb4bc7','[\"*\"]',NULL,NULL,'2025-03-26 02:25:44','2025-03-26 02:25:44'),(177,'App\\Models\\User',156,'Personal Access Token','5f609b3c826cbbfbbae99a726b6f70fa7171213e9da27e38658f3d30e40ce978','[\"*\"]',NULL,NULL,'2025-03-26 02:27:11','2025-03-26 02:27:11'),(178,'App\\Models\\User',166,'Personal Access Token','e70aaee7694d196a3403216c08686c3592328619b204196142f3350bad52d58f','[\"*\"]',NULL,NULL,'2025-03-26 02:28:01','2025-03-26 02:28:01'),(179,'App\\Models\\User',156,'Personal Access Token','241b6b8645c2f9b72db025d5b0086a503c594002176bfd38a8676edfa50f68a4','[\"*\"]','2025-03-26 02:32:38',NULL,'2025-03-26 02:32:29','2025-03-26 02:32:38'),(180,'App\\Models\\User',166,'Personal Access Token','9a77c4a715cef43de648ea84be02bc9a92c00c9e6447c204a11ee678de8fcc0f','[\"*\"]','2025-04-07 23:49:25',NULL,'2025-03-26 02:36:33','2025-04-07 23:49:25'),(181,'App\\Models\\User',166,'Personal Access Token','08250d7c0274c9a7e29fb837673c99a52f12e2e717b3398a4fc0909415313f7a','[\"*\"]',NULL,NULL,'2025-03-26 02:38:01','2025-03-26 02:38:01'),(182,'App\\Models\\User',166,'Personal Access Token','61e50da4bfef6ff02f0fdd0ce53d29b1246e98b772646d721e7a1f087329a218','[\"*\"]','2025-04-10 19:29:00',NULL,'2025-03-26 02:41:41','2025-04-10 19:29:00'),(183,'App\\Models\\User',166,'Personal Access Token','14341633ddfb317de591dd93030b9768465d2cbfb51a4f9c9a46f8d49f85cd6b','[\"*\"]','2025-03-26 21:48:46',NULL,'2025-03-26 21:48:38','2025-03-26 21:48:46'),(184,'App\\Models\\User',166,'Personal Access Token','d94799d5995125fdb00bcd4182ba29767022c07fe02bbeddb086668d1baa4611','[\"*\"]','2025-03-27 19:58:07',NULL,'2025-03-27 19:05:17','2025-03-27 19:58:07'),(185,'App\\Models\\User',166,'Personal Access Token','0a6907b5794bc6c2b0739cd9355ef01059e59140e6388c4f92a4af5cc63d2a65','[\"*\"]',NULL,NULL,'2025-03-27 19:25:04','2025-03-27 19:25:04'),(186,'App\\Models\\User',166,'Personal Access Token','878713e766b7c930f3ff0bc1a04d01e0df7d4e036c371279f882147edb386a1f','[\"*\"]','2025-03-27 20:08:45',NULL,'2025-03-27 20:06:15','2025-03-27 20:08:45'),(187,'App\\Models\\User',166,'Personal Access Token','2101aaf3e5b312f62ac8880a54f9c890586e64519454e5e2da63d4feebde8d6a','[\"*\"]','2025-03-27 20:35:48',NULL,'2025-03-27 20:09:03','2025-03-27 20:35:48'),(188,'App\\Models\\User',166,'Personal Access Token','71e96d5046ef012d39dab76979f323b277864e8a5e1e0e2945198eb012a80299','[\"*\"]','2025-03-28 00:07:31',NULL,'2025-03-27 20:36:16','2025-03-28 00:07:31'),(189,'App\\Models\\User',166,'Personal Access Token','c24ec3eb7c52099a9cbac9db738a8ceb8cb1d84fe155927e68ae10f65c3761c6','[\"*\"]','2025-04-07 02:21:34',NULL,'2025-04-07 02:21:17','2025-04-07 02:21:34'),(190,'App\\Models\\User',166,'Personal Access Token','6472728faa7ce1821b39c3566604ad177831ff9635415db94903266842ecb6a8','[\"*\"]','2025-04-07 23:31:53',NULL,'2025-04-07 02:23:47','2025-04-07 23:31:53'),(191,'App\\Models\\User',166,'Personal Access Token','76b286ae598b8b86e5d9f066081f3a010650f7e0fd3bc6cc2587b09d5be2a5ee','[\"*\"]','2025-04-08 23:09:08',NULL,'2025-04-07 23:32:06','2025-04-08 23:09:08'),(192,'App\\Models\\User',166,'Personal Access Token','d8f954a335597f3895e5c57a6015b10391b0fc5d6333fc3d342e9d74420a91c5','[\"*\"]',NULL,NULL,'2025-04-07 23:47:40','2025-04-07 23:47:40'),(193,'App\\Models\\User',166,'Personal Access Token','39cd596f4210c5420cd23a0cafd4172e3b14d4fa5052e85d7a9ff44e98d6c97a','[\"*\"]','2025-04-08 23:27:17',NULL,'2025-04-08 23:26:19','2025-04-08 23:27:17'),(194,'App\\Models\\User',168,'Personal Access Token','4da4c3bad8840bd41e2d621c97472943962dfc46d7e1bacb4250b874ff21ba23','[\"*\"]','2025-04-08 23:27:52',NULL,'2025-04-08 23:27:46','2025-04-08 23:27:52'),(195,'App\\Models\\User',173,'Personal Access Token','5a08b637523c3b162c26b89056e1846bdc8c5e064ac14784be3f1f99551aaa92','[\"*\"]','2025-04-08 23:34:49',NULL,'2025-04-08 23:28:32','2025-04-08 23:34:49'),(196,'App\\Models\\User',173,'Personal Access Token','fff217f23e873b21ae2be7b38af3551dc47746a5aab64f5e627897d985346814','[\"*\"]','2025-04-08 23:30:43',NULL,'2025-04-08 23:29:51','2025-04-08 23:30:43'),(197,'App\\Models\\User',166,'Personal Access Token','ce177de4488acae18636a0a6efaaa8c746da83b1a4491da8fa32b91e84f3a19d','[\"*\"]','2025-04-09 00:04:27',NULL,'2025-04-09 00:04:00','2025-04-09 00:04:27'),(198,'App\\Models\\User',173,'Personal Access Token','feb68765bdfdabcfa410420273a59f5ba48ad807e161891d43ae6982f64e01dd','[\"*\"]','2025-04-09 19:12:17',NULL,'2025-04-09 00:04:39','2025-04-09 19:12:17'),(199,'App\\Models\\User',173,'Personal Access Token','15de69788a6951d636e6e517d7d3fd16d8e2446736b6f4008952d68b2afa805c','[\"*\"]','2025-04-09 21:18:01',NULL,'2025-04-09 00:11:06','2025-04-09 21:18:01'),(200,'App\\Models\\User',166,'Personal Access Token','d713c576e2c0d84c60a6f107f2db1fe88b518d327ebd164f5eb619490093b118','[\"*\"]','2025-04-09 22:20:07',NULL,'2025-04-09 21:58:42','2025-04-09 22:20:07'),(201,'App\\Models\\User',166,'Personal Access Token','31c2026cc0cd19fdde6e8506ab2a9a0b9b02f3a955a590bc26d3190ffe0e457d','[\"*\"]','2025-04-09 22:11:39',NULL,'2025-04-09 22:06:34','2025-04-09 22:11:39'),(202,'App\\Models\\User',166,'Personal Access Token','a66eb34134948c7ee4d630856f1f8dc59ee37971a80b5d7d6e1734d97ec163e9','[\"*\"]','2025-04-10 02:24:39',NULL,'2025-04-10 00:18:00','2025-04-10 02:24:39'),(203,'App\\Models\\User',166,'Personal Access Token','69c3418a974221d05e4e96bded2edfe3a57881d35a67ccb5fc634f55a1da9d6f','[\"*\"]','2025-04-10 19:39:08',NULL,'2025-04-10 19:16:19','2025-04-10 19:39:08'),(204,'App\\Models\\User',166,'Personal Access Token','c651145a19c5a496b81c946dfd588ac3a396858cc327162b738caf46bb579eb2','[\"*\"]','2025-04-11 01:20:35',NULL,'2025-04-10 19:29:48','2025-04-11 01:20:35'),(205,'App\\Models\\User',166,'Personal Access Token','073b492f69bd6004fe86e49e4dad4aa4afe78eb704b983dd6eeaf6fe63358796','[\"*\"]',NULL,NULL,'2025-04-11 02:11:22','2025-04-11 02:11:22'),(206,'App\\Models\\User',166,'Personal Access Token','011a2cccf124968852a6949f09ea07ccd6760a7d8d01e0c8011ae686497e3a73','[\"*\"]','2025-04-14 01:11:46',NULL,'2025-04-13 19:01:03','2025-04-14 01:11:46'),(207,'App\\Models\\User',166,'Personal Access Token','4d617ade66b7f600327737c3b4e03c8d29e2811892e229ffe7f52ab2b125b5e5','[\"*\"]','2025-04-15 00:19:03',NULL,'2025-04-14 01:12:01','2025-04-15 00:19:03'),(208,'App\\Models\\User',166,'Personal Access Token','20bb28dbc8f99f6dbd1b1c98b9942c85a083ba81aa2cd80ead76c23ac491c016','[\"*\"]','2025-04-15 19:22:04',NULL,'2025-04-15 02:51:08','2025-04-15 19:22:04'),(209,'App\\Models\\User',166,'Personal Access Token','b60327760ee6d638b6c4a0f68c08911bd1293e4f1d1f8b55a966210a1c3ac7bf','[\"*\"]','2025-04-16 01:05:46',NULL,'2025-04-16 00:46:12','2025-04-16 01:05:46'),(210,'App\\Models\\User',166,'Personal Access Token','3578500f069873aa88046132e077f4553af7cf86443e0e4a7a8905375a2fc36b','[\"*\"]','2025-04-16 19:09:07',NULL,'2025-04-16 01:19:49','2025-04-16 19:09:07'),(211,'App\\Models\\User',166,'Personal Access Token','7f52ff12a1ecb86155e660d4b990d6e51695e66aece1755123c2d837048147e8','[\"*\"]','2025-04-16 23:47:18',NULL,'2025-04-16 21:22:41','2025-04-16 23:47:18'),(212,'App\\Models\\User',166,'Personal Access Token','2bdf6022006a5cc399069599fb849b5af9b5543b4d957b6b3fa96ac6be8d53a3','[\"*\"]','2025-04-17 00:42:36',NULL,'2025-04-17 00:02:38','2025-04-17 00:42:36'),(213,'App\\Models\\User',166,'Personal Access Token','971dab857453508a6324cb4fc281a738434542f4d6b2a656325eebb6bd3fec2d','[\"*\"]','2025-04-20 20:47:06',NULL,'2025-04-19 00:49:23','2025-04-20 20:47:06'),(214,'App\\Models\\User',166,'Personal Access Token','9b6883cd389b23e502a96b298c773d7125150a13fce78d63abbf1a2e9921b828','[\"*\"]','2025-04-20 21:02:26',NULL,'2025-04-20 20:59:14','2025-04-20 21:02:26'),(215,'App\\Models\\User',166,'Personal Access Token','437422b6167cf5cf1dbdde4e91e8b2176a6249f37cd506970535a1661ca6673a','[\"*\"]','2025-04-20 21:06:19',NULL,'2025-04-20 21:04:12','2025-04-20 21:06:19'),(216,'App\\Models\\User',173,'Personal Access Token','a46d98f65c819620be04b519d0957a140d6c1fb918b95cc6da45f16af2e53c84','[\"*\"]','2025-04-21 19:29:43',NULL,'2025-04-21 01:54:04','2025-04-21 19:29:43'),(217,'App\\Models\\User',166,'Personal Access Token','8c51120caaf56ac370368e8c20c8eb8155497c6fb0374c0c843cf1e4fb257381','[\"*\"]','2025-04-21 19:29:57',NULL,'2025-04-21 19:29:56','2025-04-21 19:29:57'),(218,'App\\Models\\User',166,'Personal Access Token','31e36b214fed335f653a4bb3291c8ddf06f665717800c1f441c83a892d495712','[\"*\"]','2025-04-21 19:30:13',NULL,'2025-04-21 19:30:10','2025-04-21 19:30:13'),(219,'App\\Models\\User',176,'Personal Access Token','8af90be9851ddc00af07c98287927080d56c1b487d5eab1a01422fb9042c97ee','[\"*\"]','2025-04-21 19:32:23',NULL,'2025-04-21 19:30:30','2025-04-21 19:32:23'),(220,'App\\Models\\User',166,'Personal Access Token','a80c2fe8d0192359b99c2e31a047b18f589de89b7b9c5dbf51a1839e400d10e7','[\"*\"]','2025-04-21 21:06:37',NULL,'2025-04-21 21:04:31','2025-04-21 21:06:37'),(221,'App\\Models\\User',166,'Personal Access Token','32a042ec4480454d4485d139bfcd478dfadbdb57e28c2ed527d6119bef8ed819','[\"*\"]','2025-04-21 21:12:01',NULL,'2025-04-21 21:08:25','2025-04-21 21:12:01'),(222,'App\\Models\\User',166,'Personal Access Token','e965a3924421cc566e095426853174445b22fef71aa867fc6383a0613c8069fa','[\"*\"]','2025-04-24 00:10:45',NULL,'2025-04-24 00:10:03','2025-04-24 00:10:45'),(223,'App\\Models\\User',166,'Personal Access Token','b66c321f1c95e67200c7f8652f9fd875c93d75f1110d73a2e12114b76a867847','[\"*\"]','2025-04-24 02:04:53',NULL,'2025-04-24 01:51:03','2025-04-24 02:04:53'),(224,'App\\Models\\User',166,'Personal Access Token','fa809878940b9758829daa75ec4523ce56a37a5fe237641d830d5e099686537a','[\"*\"]','2025-04-24 02:36:46',NULL,'2025-04-24 02:35:12','2025-04-24 02:36:46'),(225,'App\\Models\\User',166,'Personal Access Token','91e138cf1c03da982181b3fb2dd5d960caecc48e74d1935accdaaab749db92fb','[\"*\"]','2025-04-24 02:37:16',NULL,'2025-04-24 02:37:01','2025-04-24 02:37:16'),(226,'App\\Models\\User',166,'Personal Access Token','fb970babdc3daca6c5af1dd995a50837da8223f30ce774dea1bf6e387a919caa','[\"*\"]','2025-04-24 02:41:43',NULL,'2025-04-24 02:41:35','2025-04-24 02:41:43'),(227,'App\\Models\\User',166,'Personal Access Token','7af966276863f12ab37a76048f25061dcb292cbba77280464d9fb4fa221b3d22','[\"*\"]','2025-04-24 02:48:51',NULL,'2025-04-24 02:48:48','2025-04-24 02:48:51'),(228,'App\\Models\\User',166,'Personal Access Token','3d0ca6909c78c263eba43cf23f5a669a5455562a05c08a63ee2c62ef0ce51338','[\"*\"]','2025-04-24 21:40:31',NULL,'2025-04-24 18:53:02','2025-04-24 21:40:31'),(229,'App\\Models\\User',166,'Personal Access Token','d50d16e673f7a1a4d5ad157c00b187151d85e038e7430ca9e1ee31832ad36510','[\"*\"]','2025-04-24 23:08:14',NULL,'2025-04-24 21:43:53','2025-04-24 23:08:14'),(230,'App\\Models\\User',166,'Personal Access Token','999cea6cd980b8e199bd61517d05213b1daa26406eb8d607b07aefd880c908c2','[\"*\"]','2025-04-24 23:09:09',NULL,'2025-04-24 23:09:03','2025-04-24 23:09:09'),(231,'App\\Models\\User',166,'Personal Access Token','56b59cc937889cbaa10c9a3591d03ef957143bb88411e7939e059e8f98f7a2e5','[\"*\"]','2025-04-24 23:10:07',NULL,'2025-04-24 23:09:38','2025-04-24 23:10:07'),(232,'App\\Models\\User',166,'Personal Access Token','0426743b47cee0d54caa1ba049d78abba8bb8c36a7fb911dd601e81d76fa31ec','[\"*\"]','2025-04-24 23:10:23',NULL,'2025-04-24 23:10:20','2025-04-24 23:10:23'),(233,'App\\Models\\User',166,'Personal Access Token','04b696db6427d68156e86ae510773a8e6d1891380eff424559d48b2d8e38f82b','[\"*\"]','2025-04-25 00:04:18',NULL,'2025-04-24 23:13:14','2025-04-25 00:04:18'),(234,'App\\Models\\User',166,'Personal Access Token','750e559da5064c3589cac7742b4053e39707fe903d763af5d4aca9da5d9d7ca9','[\"*\"]','2025-04-25 00:51:01',NULL,'2025-04-25 00:47:29','2025-04-25 00:51:01'),(235,'App\\Models\\User',166,'Personal Access Token','6fa239a0e65ef71f3de40d07fb273d1be6884cebe92f45c72262a19bb2178a77','[\"*\"]','2025-04-26 00:25:44',NULL,'2025-04-25 00:51:15','2025-04-26 00:25:44'),(236,'App\\Models\\User',166,'Personal Access Token','edda09827c929e0383a42bb1e2e30aeaf033fded61a43dcdd70122112a46ef14','[\"*\"]','2025-04-25 01:00:14',NULL,'2025-04-25 00:59:05','2025-04-25 01:00:14');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reportselisih`
--

DROP TABLE IF EXISTS `reportselisih`;
/*!50001 DROP VIEW IF EXISTS `reportselisih`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reportselisih` AS SELECT 
 1 AS `trsdetid`,
 1 AS `itemid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `batchno`,
 1 AS `dimension`,
 1 AS `tolerance`,
 1 AS `onhand`,
 1 AS `cogs`,
 1 AS `selisihplus`,
 1 AS `selisihmin`,
 1 AS `totalcso`,
 1 AS `nominalplus`,
 1 AS `nominalmin`,
 1 AS `status`,
 1 AS `statusname`,
 1 AS `koreksi`,
 1 AS `deviasi`,
 1 AS `statuscso`,
 1 AS `groupid`,
 1 AS `groupdesc`,
 1 AS `analisator`,
 1 AS `analisatorid`,
 1 AS `keterangan`,
 1 AS `keputusan`,
 1 AS `pembebanan`,
 1 AS `nodoc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_viewdashboard`
--

DROP TABLE IF EXISTS `temp_viewdashboard`;
/*!50001 DROP VIEW IF EXISTS `temp_viewdashboard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_viewdashboard` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `trsdetid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `batchno`,
 1 AS `heatno`,
 1 AS `dimension`,
 1 AS `tolerance`,
 1 AS `kondisi`,
 1 AS `onhand`,
 1 AS `analisator`,
 1 AS `analisatorid`,
 1 AS `totalcso`,
 1 AS `isstarted`,
 1 AS `koreksi`,
 1 AS `deviasi`,
 1 AS `statuscso`,
 1 AS `keterangan`,
 1 AS `groupid`,
 1 AS `groupdesc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_viewdashboardavalan`
--

DROP TABLE IF EXISTS `temp_viewdashboardavalan`;
/*!50001 DROP VIEW IF EXISTS `temp_viewdashboardavalan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_viewdashboardavalan` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `trsdetid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `batchno`,
 1 AS `heatno`,
 1 AS `dimension`,
 1 AS `tolerance`,
 1 AS `kondisi`,
 1 AS `onhand`,
 1 AS `analisator`,
 1 AS `analisatorid`,
 1 AS `totalcso`,
 1 AS `isstarted`,
 1 AS `koreksi`,
 1 AS `deviasi`,
 1 AS `statuscso`,
 1 AS `keterangan`,
 1 AS `groupid`,
 1 AS `groupdesc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalcso1`
--

DROP TABLE IF EXISTS `totalcso1`;
/*!50001 DROP VIEW IF EXISTS `totalcso1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalcso1` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `statussubmit`,
 1 AS `tipecso`,
 1 AS `qtytot`,
 1 AS `isstarted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalcso2`
--

DROP TABLE IF EXISTS `totalcso2`;
/*!50001 DROP VIEW IF EXISTS `totalcso2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalcso2` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `statussubmit`,
 1 AS `tipecso`,
 1 AS `qtytot`,
 1 AS `isstarted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalcso3`
--

DROP TABLE IF EXISTS `totalcso3`;
/*!50001 DROP VIEW IF EXISTS `totalcso3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalcso3` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `statussubmit`,
 1 AS `tipecso`,
 1 AS `qtytot`,
 1 AS `isstarted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalcso4`
--

DROP TABLE IF EXISTS `totalcso4`;
/*!50001 DROP VIEW IF EXISTS `totalcso4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalcso4` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `statussubmit`,
 1 AS `tipecso`,
 1 AS `qtytot`,
 1 AS `isstarted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewcso`
--

DROP TABLE IF EXISTS `viewcso`;
/*!50001 DROP VIEW IF EXISTS `viewcso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewcso` AS SELECT 
 1 AS `csoid`,
 1 AS `trsid`,
 1 AS `docrefid`,
 1 AS `pelakuid`,
 1 AS `pelakuuname`,
 1 AS `coyid`,
 1 AS `status`,
 1 AS `createddate`,
 1 AS `updateddate`,
 1 AS `itemid`,
 1 AS `locationid`,
 1 AS `grade`,
 1 AS `color`,
 1 AS `remark`,
 1 AS `approval`,
 1 AS `statusitem`,
 1 AS `statussubmit`,
 1 AS `statushslcso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewcsoavalan`
--

DROP TABLE IF EXISTS `viewcsoavalan`;
/*!50001 DROP VIEW IF EXISTS `viewcsoavalan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewcsoavalan` AS SELECT 
 1 AS `csoid`,
 1 AS `trsid`,
 1 AS `docrefid`,
 1 AS `pelakuid`,
 1 AS `pelakuuname`,
 1 AS `coyid`,
 1 AS `status`,
 1 AS `createddate`,
 1 AS `updateddate`,
 1 AS `itemid`,
 1 AS `locationid`,
 1 AS `grade`,
 1 AS `color`,
 1 AS `remark`,
 1 AS `approval`,
 1 AS `statusitem`,
 1 AS `statussubmit`,
 1 AS `statushslcso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdashboard`
--

DROP TABLE IF EXISTS `viewdashboard`;
/*!50001 DROP VIEW IF EXISTS `viewdashboard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewdashboard` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `trsdetid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `batchno`,
 1 AS `heatno`,
 1 AS `dimension`,
 1 AS `tolerance`,
 1 AS `kondisi`,
 1 AS `onhand`,
 1 AS `selisih`,
 1 AS `totalcso`,
 1 AS `status`,
 1 AS `statusname`,
 1 AS `koreksi`,
 1 AS `deviasi`,
 1 AS `statuscso`,
 1 AS `groupid`,
 1 AS `groupdesc`,
 1 AS `analisator`,
 1 AS `analisatorid`,
 1 AS `keterangan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdashboardavalan`
--

DROP TABLE IF EXISTS `viewdashboardavalan`;
/*!50001 DROP VIEW IF EXISTS `viewdashboardavalan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewdashboardavalan` AS SELECT 
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `trsdetid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `batchno`,
 1 AS `heatno`,
 1 AS `dimension`,
 1 AS `tolerance`,
 1 AS `kondisi`,
 1 AS `onhand`,
 1 AS `selisih`,
 1 AS `totalcso`,
 1 AS `isstarted`,
 1 AS `status`,
 1 AS `statusname`,
 1 AS `koreksi`,
 1 AS `deviasi`,
 1 AS `statuscso`,
 1 AS `groupid`,
 1 AS `groupdesc`,
 1 AS `analisator`,
 1 AS `analisatorid`,
 1 AS `keterangan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdetaildashb`
--

DROP TABLE IF EXISTS `viewdetaildashb`;
/*!50001 DROP VIEW IF EXISTS `viewdetaildashb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewdetaildashb` AS SELECT 
 1 AS `name`,
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `locationname`,
 1 AS `color`,
 1 AS `qty`,
 1 AS `csocount`,
 1 AS `remark`,
 1 AS `statusdoc`,
 1 AS `cso1`,
 1 AS `cso2`,
 1 AS `cso3`,
 1 AS `cso4`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdetaildashbavalan`
--

DROP TABLE IF EXISTS `viewdetaildashbavalan`;
/*!50001 DROP VIEW IF EXISTS `viewdetaildashbavalan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewdetaildashbavalan` AS SELECT 
 1 AS `name`,
 1 AS `itemid`,
 1 AS `itembatchid`,
 1 AS `locationname`,
 1 AS `color`,
 1 AS `qty`,
 1 AS `csocount`,
 1 AS `remark`,
 1 AS `statusdoc`,
 1 AS `cso1`,
 1 AS `cso2`,
 1 AS `cso3`,
 1 AS `cso4`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewreportcso`
--

DROP TABLE IF EXISTS `viewreportcso`;
/*!50001 DROP VIEW IF EXISTS `viewreportcso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewreportcso` AS SELECT 
 1 AS `trsid`,
 1 AS `itemid`,
 1 AS `itemcode`,
 1 AS `itemname`,
 1 AS `uom`,
 1 AS `name`,
 1 AS `SBY1TP24`,
 1 AS `SBY2TP24`,
 1 AS `SBY6TSA`,
 1 AS `onhand`,
 1 AS `cso1`,
 1 AS `selisihcso1`,
 1 AS `cso2`,
 1 AS `selisihcso2`,
 1 AS `cso3`,
 1 AS `selisihcso3`,
 1 AS `keterangan`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'SOS_DEV'
--

--
-- Dumping routines for database 'SOS_DEV'
--
/*!50003 DROP PROCEDURE IF EXISTS `AvalanGudangTertukar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `AvalanGudangTertukar`(IN `paramTrsId` VARCHAR(255))
BEGIN
	with tot as(
	SELECT
		d.trsdetid,
		d2.csocount,
		 d.grade,
		sum(ifnull(d2.qty,0)) as qtytot
	FROM
		dbtcsodet d
	inner join dbtcsodet2 d2 ON
		d.csodetid = d2.csodetid
	inner join dbtcsohed h ON
		h.csoid = d.csoid
	WHERE
		h.trsid = paramTrsId and h.tipecso = 'A'
	group by
		d.trsdetid,
		d2.csocount, 
		d.grade
	)	
	select 
		d.trsdetid,
		d.statuscso,
		tot.csocount,
		d.itemname,
		d.keputusan,
		d.onhand,
		d2.qty,
		d2.wrh,
		COALESCE (tot.qtytot,0) as totalcso,
		tot.grade as wrhtot,
		(d2.qty) - coalesce(tot.qtytot,0) as selisih,
		case when (d2.qty) - coalesce(tot.qtytot,0) > 0 
			then (d2.qty) - coalesce(tot.qtytot,0)
			else 0 
		end as selisihplus,
		case when (d2.qty) - coalesce(tot.qtytot,0) < 0 
			then (d2.qty) - coalesce(tot.qtytot,0)
			else 0 
		end as selisihminus,
		d.koreksi,
		d.deviasi,
		d.groupid,
		g.groupdesc,
		d.group_value,
		d.cogs,
		d.cogs_manual,
		d.statusitem,
		d.statuscso,
		d.tidak_hitung,
		d.kesalahan_admin,
		d.batch_tertukar,
		d.nodoc,
		d.pembebanan,
		d.keterangan
	from dbttrsdet2a d2
	left join dbttrsdeta d on 
		d2.trsdetid = d.trsdetid
	left join tot tot on 
		d2.trsdetid = tot.trsdetid AND d2.wrh = tot.grade AND d.statuscso = tot.csocount
	left join dbmgroup g on
		g.groupid = d.groupid
	where d.trsid = paramTrsId
		AND (d2.qty) - coalesce(tot.qtytot,0) <>0 
	order by itemname ASC, selisih asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Dashboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `Dashboard`()
BEGIN
	WITH grade as(
	select
		d.trsdetid,
		d2.csocount,
		GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
	from
		dbtcsodet d
	left join dbtcsodet2 d2 on
		d.csodetid = d2.csodetid
	join dbtcsohed h on
		h.csoid = d.csoid
	where
		h.status = 'A'
		and d.statussubmit = 'P'
		AND h.tipecso = 'R'
		AND grade <> ""
	group by
		d.trsdetid ,
		d2.csocount
	)
	,
	total_cso AS (
	select
		d.trsdetid,
		gr.grade as grade,
		sum(ifnull(d2.qty, 0)) AS qtytot,
		1 AS isstarted,
		d2.csocount
	from
		dbtcsodet d
	join dbtcsodet2 d2 on
		d.csodetid = d2.csodetid
	left join grade gr on
		d.trsdetid = gr.trsdetid
		AND d2.csocount = gr.csocount
	join dbtcsohed h on
		h.csoid = d.csoid
	where
		h.status = 'A'
		and d.statussubmit = 'P'
		and h.tipecso = 'R'
	group by
		d.trsdetid,
		d2.csocount
	)
	,sub1 AS (
	select
			distinct `td`.`itemid` AS `itemid`,
			`td`.`trsdetid` AS `trsdetid`,
			`td`.`itemcode` AS `itemcode`,
			`td`.`itemname` AS `itemname`,
			`th`.`typecekstok` as `typecekstok`,
			`td`.`onhand` AS `onhand`,
			`a`.`name` AS `analisator`,
			`a`.`userid` AS `analisatorid`,
			`td`.`keterangan` AS `keterangan`,
			case
			`td`.`statuscso`
			when 1 then ifnull(`cso1`.`qtytot`, 0)
			when 2 then ifnull(`cso2`.`qtytot`, 0)
			when 3 then ifnull(`cso3`.`qtytot`, 0)
			when 4 then ifnull(`cso4`.`qtytot`, 0)
			else 0
		end AS `totalcso`,
			case
			`td`.`statuscso`
			when 1 then `cso1`.`isstarted`
			when 2 then `cso2`.`isstarted`
			when 3 then `cso3`.`isstarted`
			when 4 then `cso4`.`isstarted`
			else 0
		end AS `isstarted`,
			case
			td.statuscso
						when 1 then `cso1`.`grade`
			when 2 then `cso2`.`grade`
			when 3 then `cso3`.`grade`
			when 4 then `cso4`.`grade`
			else 0
		end as `grade`,
			ifnull(`td`.`koreksi`, 0) AS `koreksi`,
			ifnull(`td`.`deviasi`, 0) AS `deviasi`,
			ifnull(`td`.`statuscso`, 0) AS `statuscso`,
			`td`.`groupid` AS `groupid`,
			`g`.`groupdesc` AS `groupdesc`,
			`td`.`statusitem` AS `statusitem`,
			`td`.`analisator_checked` AS `analisator_checked`,
			`td`.`group_value` as `group_value`
	from
			dbttrsdet td
	inner join dbttrshed th on
			th.trsid = td.trsid
	left join total_cso cso1 ON
		cso1.trsdetid = td.trsdetid
		AND cso1.csocount = 1
	left join total_cso cso2 ON
		cso2.trsdetid = td.trsdetid
		AND cso2.csocount = 2
	left join total_cso cso3 ON
		cso3.trsdetid = td.trsdetid
		AND cso3.csocount = 3
	left join total_cso cso4 ON
		cso4.trsdetid = td.trsdetid
		AND cso4.csocount = 4
	left join dbxjob a ON
		a.userid = td.analisatorid
		AND jobtypeid = 2
	left join dbmgroup g ON
		g.groupid = td.groupid
	where
			th.statusdoc <> 'P' 
	)
	select
		`sub1`.`itemid`,
		`sub1`.`trsdetid`,
		`sub1`.`itemcode`,
		`sub1`.`itemname`,
		`sub1`.`onhand`,
		`sub1`.`grade`,
		(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi`) - `sub1`.`onhand` AS `selisih`,
		`sub1`.`totalcso` AS `totalcso`,
		case
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` < `sub1`.`onhand` > 0
			and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) then 1
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` > `sub1`.`onhand`
			and (`sub1`.`totalcso` <> 0
				or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) then 2
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` = `sub1`.`onhand`
			and (`sub1`.`totalcso` <> 0
				or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) then 3
			else 0
		end AS `status`,
		case
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` < `sub1`.`onhand` > 0
			and (`sub1`.`isstarted` <> 0
				or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) then 'proses'
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` > `sub1`.`onhand`
			and (`sub1`.`totalcso` <> 0
				or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) then 'selisih +'
			when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` = `sub1`.`onhand`
			and (`sub1`.`totalcso` <> 0
				or `sub1`.`koreksi` <> 0
				or `sub1`.`deviasi` <> 0) 
				then 'selesai'
			else 'belum'
		end AS `statusname`,
		`sub1`.`koreksi` AS `koreksi`,
		`sub1`.`deviasi` AS `deviasi`,
		`sub1`.`statuscso` AS `statuscso`,
		`sub1`.`groupid` AS `groupid`,
		`sub1`.`group_value` AS `group_value`,
		`sub1`.`groupdesc` AS `groupdesc`,
		`sub1`.`analisator` AS `analisator`,
		`sub1`.`analisatorid` AS `analisatorid`,
		`sub1`.`keterangan`,
		`sub1`.`statusitem`,
		`sub1`.`analisator_checked`,
		`sub1`.`typecekstok`	
	from
		sub1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DashboardAvalan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `DashboardAvalan`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A' AND h.tipecso = 'A'
	and d.statussubmit = 'P'
	AND
	grade <> ""
group by
	d.trsdetid ,
	d2.csocount
)
,
total_cso AS (
select
	d.trsdetid,
	gr.grade as grade,
	sum(ifnull(d2.qty, 0)) AS qtytot,
	1 AS isstarted,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS (
select
		distinct `td`.`itembatchid` AS `itembatchid`,
		`td`.`itemid` AS `itemid`,
		`td`.`trsdetid` AS `trsdetid`,
		`td`.`itemcode` AS `itemcode`,
		`td`.`itemname` AS `itemname`,
		`td`.`dimension` AS `dimension`,
		`td`.`tolerance` AS `tolerance`,
		`td`.`heatno` AS `heatno`,
		`th`.`typecekstok` as `typecekstok`,
		`td`.`onhand` AS `onhand`,
		`td`.`batchno` AS `batchno`,
		`a`.`name` AS `analisator`,
		`a`.`userid` AS `analisatorid`,
		`td`.`keterangan` AS `keterangan`,
		case
		`td`.`statuscso`
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end AS `totalcso`,
		case
		`td`.`statuscso`
		when 1 then `cso1`.`isstarted`
		when 2 then `cso2`.`isstarted`
		when 3 then `cso3`.`isstarted`
		when 4 then `cso4`.`isstarted`
		else 0
	end AS `isstarted`,
		case
		td.statuscso
					when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as `grade`,
		ifnull(`td`.`koreksi`, 0) AS `koreksi`,
		ifnull(`td`.`deviasi`, 0) AS `deviasi`,
		ifnull(`td`.`statuscso`, 0) AS `statuscso`,
		`td`.`groupid` AS `groupid`,
		`g`.`groupdesc` AS `groupdesc`,
		`td`.`statusitem` AS `statusitem`,
		`td`.`analisator_checked` AS `analisator_checked`,
		`td`.`group_value` as `group_value`
from
		dbttrsdeta td
inner join dbttrsheda th on
		th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbxjob a ON
	a.userid = td.analisatorid
	AND jobtypeid = 2
left join dbmgroup g ON
	g.groupid = td.groupid
where
		th.statusdoc <> 'P' 
)
select
	`sub1`.`itembatchid`,
	`sub1`.`itemid`,
	`sub1`.`trsdetid`,
	`sub1`.`itemcode`,
	`sub1`.`itemname`,
	`sub1`.`dimension`,
	`sub1`.`tolerance`,
	`sub1`.`batchno`,
	`sub1`.`heatno`,
	`sub1`.`onhand`,
	`sub1`.`grade`,
	(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi`) - `sub1`.`onhand` AS `selisih`,
	`sub1`.`totalcso` AS `totalcso`,
	case
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` < `sub1`.`onhand` > 0
		and (`sub1`.`isstarted` <> 0
		    or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) then 1
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` > `sub1`.`onhand`
		and (`sub1`.`totalcso` <> 0
			or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) then 2
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` = `sub1`.`onhand`
		and (`sub1`.`totalcso` <> 0
			or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) then 3
		else 0
	end AS `status`,
	case
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` < `sub1`.`onhand` > 0
		and (`sub1`.`isstarted` <> 0
			or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) then 'proses'
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` > `sub1`.`onhand`
		and (`sub1`.`totalcso` <> 0
			or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) then 'selisih +'
		when `sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` = `sub1`.`onhand`
		and (`sub1`.`totalcso` <> 0
			or `sub1`.`koreksi` <> 0
			or `sub1`.`deviasi` <> 0) 
			then 'selesai'
		else 'belum'
	end AS `statusname`,
	`sub1`.`koreksi` AS `koreksi`,
	`sub1`.`deviasi` AS `deviasi`,
	`sub1`.`statuscso` AS `statuscso`,
	`sub1`.`groupid` AS `groupid`,
	`sub1`.`group_value` AS `group_value`,
	`sub1`.`groupdesc` AS `groupdesc`,
	`sub1`.`analisator` AS `analisator`,
	`sub1`.`analisatorid` AS `analisatorid`,
	`sub1`.`keterangan`,
	`sub1`.`statusitem`,
	`sub1`.`analisator_checked`,
	`sub1`.`typecekstok`	
from
	sub1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DashboardAvalanDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `DashboardAvalanDetail`(IN `paramTrsDetId` VARCHAR(255))
BEGIN
SELECT
    `u`.`name` AS `name`,
    `u`.`username` AS `username`,
    `cd`.`itemid` AS `itemid`,
    cd2.csodetid,
    `l`.`locationname` AS `locationname`,
    `cd`.`color` AS `color`,
    `cd2`.`qty` AS `qty`,
    `cd2`.`csocount` AS `csocount`,
    `cd2`.`history` as `history`,
    `cd`.`remark` AS `remark`,
    `cd`.`grade` AS `grade`,
    `g`.`description` AS `description`,
    `th`.`statusdoc` AS `statusdoc`,
    `th`.`typecekstok` AS `typecekstok`,
    SUM(CASE WHEN `cd2`.`csocount` = 1 THEN cast(`cd2`.`qty` AS DEC(10,2)) ELSE 0 END) AS `cso1`,
    SUM(CASE WHEN `cd2`.`csocount` = 2 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso2`,
    SUM(CASE WHEN `cd2`.`csocount` = 3 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso3`,
    SUM(CASE WHEN `cd2`.`csocount` = 4 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso4`,
	`cd2`.history as `history`
FROM
    (((((`dbtcsohed` `ch`
JOIN `dbtcsodet` `cd` ON
    (`ch`.`csoid` = `cd`.`csoid`)
LEFT JOIN .`dbmgrade` `g` ON
	(`cd`.`grade` = `g`.`gradecode`))
JOIN .`dbtcsodet2` `cd2` ON
    (`cd2`.`csodetid` = `cd`.`csodetid`))
JOIN .`dbttrsheda` `th` ON
    (`th`.`trsid` = `ch`.`trsid`))
LEFT JOIN .`dbmuser` `u` ON
    (`u`.`userid` = `ch`.`pelakuid`))
LEFT JOIN .`dbmlocation` `l` ON
    (`l`.`locationid` = `cd`.`locationid`))
where
    `ch`.`status` = 'A' and `ch`.`tipecso` = 'A' 
    and `th`.`statusdoc` <> 'P'
    and `cd`.`statussubmit` = 'P'
    and `cd`.`trsdetid` = paramTrsDetId
 GROUP BY 
    u.name, cd.itemid, l.locationname, cd.color, cd2.qty, cd2.csocount, cd.remark,cd2.csodetid
order by name, csocount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DashboardDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `DashboardDetail`(IN `paramTrsDetId` VARCHAR(255))
BEGIN
SELECT
    `u`.`name` AS `name`,
    `u`.`username` AS `username`,
    `cd`.`itemid` AS `itemid`,
    cd2.csodetid,
    `l`.`locationname` AS `locationname`,
    `cd`.`color` AS `color`,
    `cd2`.`qty` AS `qty`,
    `cd2`.`csocount` AS `csocount`,
    `cd2`.`history` as `history`,
    `cd`.`remark` AS `remark`,
    `cd`.`grade` AS `grade`,
    `g`.`description` AS `description`,
    `th`.`statusdoc` AS `statusdoc`,
    `th`.`typecekstok` AS `typecekstok`,
    SUM(CASE WHEN `cd2`.`csocount` = 1 THEN cast(`cd2`.`qty` AS DEC(10,2)) ELSE 0 END) AS `cso1`,
    SUM(CASE WHEN `cd2`.`csocount` = 2 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso2`,
    SUM(CASE WHEN `cd2`.`csocount` = 3 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso3`,
    SUM(CASE WHEN `cd2`.`csocount` = 4 THEN cast( `cd2`.`qty`AS DEC(10,2)) ELSE 0 END) AS `cso4`,
	`cd2`.history as `history`
FROM
    (((((`dbtcsohed` `ch`
JOIN `dbtcsodet` `cd` ON
    (`ch`.`csoid` = `cd`.`csoid`)
LEFT JOIN .`dbmgrade` `g` ON
	(`cd`.`grade` = `g`.`gradecode`))
JOIN .`dbtcsodet2` `cd2` ON
    (`cd2`.`csodetid` = `cd`.`csodetid`))
JOIN .`dbttrshed` `th` ON
    (`th`.`trsid` = `ch`.`trsid`))
LEFT JOIN .`dbmuser` `u` ON
    (`u`.`userid` = `ch`.`pelakuid`))
LEFT JOIN .`dbmlocation` `l` ON
    (`l`.`locationid` = `cd`.`locationid`))
where
    `ch`.`status` = 'A' and `ch`.`tipecso` = 'R'
    and `th`.`statusdoc` <> 'P'
    and `cd`.`statussubmit` = 'P'
    and `cd`.`trsdetid` = paramTrsDetId
 GROUP BY 
    u.name, cd.itemid, l.locationname, cd.color, cd2.qty, cd2.csocount, cd.remark,cd2.csodetid
order by name, csocount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDataLaporan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `GetDataLaporan`(IN `paramTrsid` VARCHAR(255))
BEGIN 
	with grade AS (
		select 
			trsdetid,
			group_concat(DISTINCT dbtcsodet.grade) AS 'grade'
		from
			dbtcsodet
			inner join dbtcsohed on dbtcsohed.csoid = dbtcsodet.csoid 
		where
			trsid=paramTrsid
			AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
		group by trsdetid
		), 
		pelaku as (
		select
			dbtcsodet.trsdetid,
			group_concat(DISTINCT dbmuser.name separator ', ') AS 'pelaku'
		from
			dbmuser
		inner join dbtcsohed on
			dbmuser.userid = dbtcsohed.pelakuid
		inner join dbtcsodet on
			dbtcsodet.csoid = dbtcsohed.csoid 
		where
			trsid=paramTrsid
			AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'R'
		group by trsdetid
		),
		qtycso1 as (
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0)+COALESCE(dbttrsdet.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 1
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P'AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
				
			group by trsdetid
		),
		qtyperloc1 AS (
			select
				dbtcsodet.trsdetid, 
				dbmlocation.locationname,
				dbtcsodet2.qty,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = "1"
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
-- 			order by dbmlocation.locationname
				),
		locqty1 AS(
			SELECT 
				trsdetid,
				group_concat(locationname separator ', ') as locqtycso,
				concat(group_concat(qty separator '; '),'; K: ',coalesce(koreksi,0),'; D: ',coalesce(deviasi,0)) as locqty,
				group_concat(concat(locationname,": ",qty) separator ', ') as locqtyyy
			from qtyperloc1
			group by trsdetid
		),
-- 		loctcso1 AS (
-- 			select
-- 				dbtcsodet.trsdetid, 
-- 				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
-- 			from 
-- 				dbtcsodet
-- 			inner join dbtcsodet2 on
-- 				dbtcsodet.csodetid = dbtcsodet2.csodetid
-- 			inner join dbmlocation on
-- 				dbtcsodet.locationid = dbmlocation.locationid
-- 			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
-- 			where
-- 				trsid=paramTrsid
-- 				and dbtcsodet2.csocount = "1"
-- 				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
-- 				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
-- 			GROUP BY dbtcsodet.trsdetid  
-- 		),
		qtycso2 AS
		(
		select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0)+COALESCE(dbttrsdet.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 2
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
				group by trsdetid
		),
		qtyperloc2 AS (
			select
				dbtcsodet.trsdetid, 
				dbmlocation.locationname,
				dbtcsodet2.qty,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = "2"
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')),
		locqty2 AS(
			SELECT 
				trsdetid,
-- 				group_concat(concat(locationname,": ",qty) separator '\n') as locqty
				group_concat(locationname separator ', ') as locqtycso,
				concat(group_concat(qty separator '; '),'; K: ',coalesce(koreksi,0),'; D: ',coalesce(deviasi,0)) as locqty
			from qtyperloc2
			group by trsdetid
		),
-- 		loctcso2 AS	(
-- 			select
-- 				dbtcsodet.trsdetid, 
-- 				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
-- 			from 
-- 				dbtcsodet
-- 			inner join dbtcsodet2 on
-- 				dbtcsodet.csodetid = dbtcsodet2.csodetid
-- 			inner join dbmlocation on
-- 				dbtcsodet.locationid = dbmlocation.locationid
-- 			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
-- 			where
-- 				trsid=paramTrsid
-- 				and dbtcsodet2.csocount = 2
-- 				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
-- 				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
-- 			GROUP BY dbtcsodet.trsdetid  
-- 		),
		qtycso3 AS	(
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0)+COALESCE(dbttrsdet.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 3
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
				group by trsdetid
		),
		qtyperloc3 AS (
			select
				dbtcsodet.trsdetid, 
				dbmlocation.locationname,
				dbtcsodet2.qty,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = "3"
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')),
		locqty3 AS(
			SELECT 
				trsdetid,
-- 				group_concat(concat(locationname,": ",qty) separator '\n') as locqty
				group_concat(locationname separator ', ') as locqtycso,
				concat(group_concat(qty separator '; '),'; K: ',coalesce(koreksi,0),'; D: ',coalesce(deviasi,0)) as locqty
-- 				group_concat(qty separator '; ') as locqty
			from qtyperloc3
			group by trsdetid
		),
-- 		loctcso3 AS (
-- 				select
-- 				dbtcsodet.trsdetid, 
-- 				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
-- 			from 
-- 				dbtcsodet
-- 			inner join dbtcsodet2 on
-- 				dbtcsodet.csodetid = dbtcsodet2.csodetid
-- 			inner join dbmlocation on
-- 				dbtcsodet.locationid = dbmlocation.locationid
-- 			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
-- 			where
-- 				trsid=paramTrsid
-- 				and dbtcsodet2.csocount = 3
-- 				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
-- 				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
-- 			GROUP BY dbtcsodet.trsdetid  
-- 		),
		trace AS (
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0)+COALESCE(dbttrsdet.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdet on dbttrsdet.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 4
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
				group by trsdetid
		)
	select
		dbttrsdet.trsid,
		dbttrsdet.trsdetid,
		dbttrsdet.itemid ,
		dbttrsdet.itemcode,
		dbttrsdet.itemname,
		dbttrsdet.uom,
		dbmuser.name,
		dbttrsdet.keterangan,
		dbtcsodet.color,
		convert(dbttrsdet.onhand,decimal(10,2)) as onhand,
		dbttrsdet.createddate,
		grade.grade,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso1.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdet.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdet.koreksi,decimal(10,2)), 0) END as 'qtycso1',
		locqty1.locqtycso as loctcso1,
-- 		group_concat(locationname separator ', ') as locqtycso,
		locqty1.locqtyyy as locqtysort,
		locqty1.locqty as locqty1,
-- 		loctcso1.locationname as loctcso1,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso2.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdet.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdet.koreksi,decimal(10,2)), 0) END as 'qtycso2',
		locqty2.locqtycso as loctcso2,
		locqty2.locqty as locqty2,
-- 		loctcso2.locationname as loctcso2,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso3.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdet.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdet.koreksi,decimal(10,2)), 0) END as 'qtycso3',
		locqty3.locqtycso as loctcso3,
		locqty3.locqty as locqty3,
-- 		loctcso3.locationname as loctcso3,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(trace.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdet.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdet.koreksi,decimal(10,2)), 0) END as 'trace',
		pelaku.pelaku
	from
		dbttrsdet
	left join dbttrsdet2 on dbttrsdet.trsdetid = dbttrsdet2.trsdet2id
	left join dbmuser on dbmuser.userid = dbttrsdet.analisatorid
	left join dbtcsodet on dbtcsodet.trsdetid  = dbttrsdet.trsdetid
	left join grade on grade.trsdetid = dbttrsdet.trsdetid 
	left join pelaku on pelaku.trsdetid = dbttrsdet.trsdetid
	left join qtycso1 on qtycso1.trsdetid = dbttrsdet.trsdetid
	left join locqty1 on locqty1.trsdetid = dbttrsdet.trsdetid
-- 	left join loctcso1 on loctcso1.trsdetid = dbttrsdet.trsdetid 
	left join qtycso2 on qtycso2.trsdetid = dbttrsdet.trsdetid
	left join locqty2 on locqty2.trsdetid = dbttrsdet.trsdetid
-- 	left join loctcso2 on loctcso2.trsdetid = dbttrsdet.trsdetid 
	left join qtycso3 on qtycso3.trsdetid = dbttrsdet.trsdetid
	left join locqty3 on locqty3.trsdetid = dbttrsdet.trsdetid
-- 	left join loctcso3 on loctcso3.trsdetid = dbttrsdet.trsdetid 
	left join trace on trace.trsdetid = dbttrsdet.trsdetid 
	-- left join pelaku on pelaku.trsdetid
	where
		dbttrsdet.trsid = paramTrsid
		AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
	group by dbttrsdet.trsdetid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDataLaporanAvalan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `GetDataLaporanAvalan`(IN `paramTrsid` VARCHAR(255))
BEGIN 
	with grade AS (
		select 
			trsdetid,
			group_concat(DISTINCT dbtcsodet.grade) AS 'grade'
		from
			dbtcsodet
			inner join dbtcsohed on dbtcsohed.csoid = dbtcsodet.csoid 
		where
			trsid=paramTrsid
			AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
		group by trsdetid
		), 
		pelaku as (
		select
			dbtcsodet.trsdetid,
			group_concat(DISTINCT dbmuser.name separator ', ') AS 'pelaku'
		from
			dbmuser
		inner join dbtcsohed on
			dbmuser.userid = dbtcsohed.pelakuid
		inner join dbtcsodet on
			dbtcsodet.csoid = dbtcsohed.csoid 
		where
			trsid=paramTrsid
			AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'A'
		group by trsdetid
		),
		qtycso1 as (
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0)+COALESCE(dbttrsdeta.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 1
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P'AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
				
			group by trsdetid
		),
		loctcso1 AS (
			select
				dbtcsodet.trsdetid, 
				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = "1"
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			GROUP BY dbtcsodet.trsdetid  
		),
		qtycso2 AS
		(
		select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0)+COALESCE(dbttrsdeta.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 2
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
				group by trsdetid
		),
		loctcso2 AS	(
			select
				dbtcsodet.trsdetid, 
				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = 2
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			GROUP BY dbtcsodet.trsdetid  
		),
		qtycso3 AS	(
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0)+COALESCE(dbttrsdeta.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 3
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
				group by trsdetid
		),
		loctcso3 AS (
				select
				dbtcsodet.trsdetid, 
				group_concat(DISTINCT dbmlocation.locationname separator ', ') AS locationname
			from 
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			inner join dbmlocation on
				dbtcsodet.locationid = dbmlocation.locationid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				and dbtcsodet2.csocount = 3
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			GROUP BY dbtcsodet.trsdetid  
		),
		trace AS (
			select dbtcsodet.trsdetid,
				(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0)+COALESCE(dbttrsdeta.koreksi, 0)) AS qty
			from
				dbtcsodet
			inner join dbtcsodet2 on
				dbtcsodet.csodetid = dbtcsodet2.csodetid
			right join dbttrsdeta on dbttrsdeta.trsdetid=dbtcsodet.trsdetid 
			where
				trsid=paramTrsid
				AND dbtcsodet2.csocount = 4
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P' AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
				group by trsdetid
		)
	select
		dbttrsdeta.trsid,
		dbttrsdeta.trsdetid,
		dbttrsdeta.itemid ,
		dbttrsdeta.itemcode,
		dbttrsdeta.itemname,
		dbttrsdeta.uom,
		dbmuser.name,
		dbttrsdeta.keterangan,
		dbtcsodet.color,
		convert(dbttrsdeta.onhand,decimal(10,2)) as onhand,
		dbttrsdeta.createddate,
		grade.grade,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso1.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdeta.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdeta.koreksi,decimal(10,2)), 0) END as 'qtycso1',
		loctcso1.locationname as loctcso1,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso2.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdeta.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdeta.koreksi,decimal(10,2)), 0) END as 'qtycso2',
		loctcso2.locationname as loctcso2,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(qtycso3.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdeta.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdeta.koreksi,decimal(10,2)), 0) END as 'qtycso3',
		loctcso3.locationname as loctcso3,
		CASE WHEN dbtcsodet.csoid IS NOT NULL THEN convert(trace.qty,decimal(10,2)) ELSE COALESCE(convert(dbttrsdeta.deviasi,decimal(10,2)), 0) + COALESCE(convert(dbttrsdeta.koreksi,decimal(10,2)), 0) END as 'trace',
		pelaku.pelaku
	from
		dbttrsdeta
	left join dbttrsdet2a on dbttrsdeta.trsdetid = dbttrsdet2a.trsdet2id
	left join dbmuser on dbmuser.userid = dbttrsdeta.analisatorid
	left join dbtcsodet on dbtcsodet.trsdetid  = dbttrsdeta.trsdetid
	left join grade on grade.trsdetid=dbttrsdeta.trsdetid 
	left join pelaku on pelaku.trsdetid=dbttrsdeta.trsdetid 
	left join qtycso1 on qtycso1.trsdetid=dbttrsdeta.trsdetid 
	left join loctcso1 ON loctcso1.trsdetid=dbttrsdeta.trsdetid 
	left join qtycso2 on qtycso2.trsdetid=dbttrsdeta.trsdetid 
	left join loctcso2 ON loctcso2.trsdetid=dbttrsdeta.trsdetid 
	left join qtycso3 on qtycso3.trsdetid=dbttrsdeta.trsdetid 
	left join loctcso3 ON loctcso3.trsdetid=dbttrsdeta.trsdetid 
	left join trace on trace.trsdetid=dbttrsdeta.trsdetid 
	-- left join pelaku on pelaku.trsdetid
	where
		dbttrsdeta.trsid = paramTrsid
		AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
	group by dbttrsdeta.trsdetid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GudangTertukar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `GudangTertukar`(IN `paramTrsId` VARCHAR(255))
BEGIN
	with tot as(
	SELECT
		d.trsdetid,
		d2.csocount,
		 d.grade,
		sum(ifnull(d2.qty,0)) as qtytot
	FROM
		dbtcsodet d
	inner join dbtcsodet2 d2 ON
		d.csodetid = d2.csodetid
	inner join dbtcsohed h ON
		h.csoid = d.csoid
	WHERE
		h.trsid = paramTrsId and h.tipecso = 'R'
	group by
		d.trsdetid,
		d2.csocount, 
		d.grade
	)	
	select 
		d.trsdetid,
		d.statuscso,
		tot.csocount,
		d.itemname,
		d.keputusan,
		d.onhand,
		d2.qty,
		d2.wrh,
		COALESCE (tot.qtytot,0) as totalcso,
		tot.grade as wrhtot,
		coalesce(tot.qtytot,0) - (d2.qty) as selisih,
		case when coalesce(tot.qtytot,0) - (d2.qty) > 0 
			then coalesce(tot.qtytot,0) - (d2.qty)
			else 0 
		end as selisihplus,
		case when coalesce(tot.qtytot,0) - (d2.qty) < 0 
			then coalesce(tot.qtytot,0) - (d2.qty)
			else 0 
		end as selisihminus,
		d.koreksi,
		d.deviasi,
		d.groupid,
		g.groupdesc,
		d.group_value,
		d.cogs,
		d.cogs_manual,
		d.statusitem,
		d.statuscso,
		d.tidak_hitung,
		d.kesalahan_admin,
		d.batch_tertukar,
		d.nodoc,
		d.pembebanan,
		d.keterangan
	from dbttrsdet2 d2
	left join dbttrsdet d on 
		d2.trsdetid = d.trsdetid
	left join tot tot on 
		d2.trsdetid = tot.trsdetid AND d2.wrh = tot.grade AND d.statuscso = tot.csocount
	left join dbmgroup g on
		g.groupid = d.groupid
	where d.trsid = paramTrsId
		AND coalesce(tot.qtytot,0) - (d2.qty) + d.koreksi + d.deviasi  <> 0 
		AND COALESCE (d.kesalahan_admin,0) = 0
		AND COALESCE (d.groupid,0) = 0
		AND COALESCE (d.tidak_hitung,0) = 0
	order by itemname ASC, selisih asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RekapitulasiHasilCso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `RekapitulasiHasilCso`(IN `paramTrsid` VARCHAR(255))
BEGIN
	WITH total_cso AS (
	SELECT
		d.trsdetid,
		h.tipecso,
		cast(sum(coalesce(d2.qty,0))as DECIMAL(10,3)) AS qty,
		d2.csocount
	FROM
		dbtcsodet d
	JOIN dbtcsodet2 d2 on
		d.csodetid = d2.csodetid
	JOIN dbtcsohed h on
		h.csoid = d.csoid
	WHERE
		h.trsid = paramTrsid
	and d.statussubmit = 'P' and h.tipecso = 'R' 
	group by d.trsdetid, d2.csocount
	)
,item AS(
		SELECT
				dbttrsdet.trsdetid,
				total_cso.qty as qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.kesalahan_admin,
				dbttrsdet.batch_tertukar,
				dbttrsdet.groupid,
				dbttrsdet.tidak_hitung 
			FROM
				dbttrsdet
			INNER JOIN dbttrshed on dbttrshed.trsid = dbttrsdet.trsid
			LEFT JOIN total_cso on total_cso.trsdetid=dbttrsdet.trsdetid AND total_cso.csocount=dbttrsdet.statuscso
			WHERE dbttrsdet.trsid = paramTrsid and dbttrshed.statusdoc != 'A'
	)
	SELECT
	(
		SELECT
			COUNT(trsdetid)
		FROM item
	)total_item,
	(
		SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    GROUP BY trsdetid
	 	) sub
-- 		WHERE (qty_total + koreksi_total + deviasi_total) > 0
	)item_ada,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = 0 AND onhand <> 0
	) item_tidak_ada,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) > onhand
	) item_selisih_plus,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) < onhand
	) item_selisih_minus,
	(
	 	SELECT
			COUNT(trsdetid)
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0) <>0
	    	AND COALESCE(tidak_hitung,0)=0
	) tertukar,
	(
	 	SELECT
			COUNT(trsdetid)
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=1
	    	AND COALESCE(groupid,0) =0
	    	AND COALESCE(tidak_hitung,0)=0
	)beda_batch ,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    	AND COALESCE(kesalahan_admin,0)=0 
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = onhand
	) item_ok,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=1 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = onhand
	)kesalahan_admin_ok,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    where COALESCE(kesalahan_admin,0)=0
	    AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) <> onhand
	)item_selisih,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=1
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) <> onhand
	)kesalahan_admin_selisih,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(tidak_hitung,0)=1
	    GROUP BY trsdetid
		) sub
	)tidak_hitung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RekapitulasiHasilCsoAvalan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `RekapitulasiHasilCsoAvalan`(IN `paramTrsid` VARCHAR(255))
BEGIN
	WITH total_cso AS (
	SELECT
		d.trsdetid,
		h.tipecso,
		cast(sum(coalesce(d2.qty,0))as DECIMAL(10,3)) AS qty,
		d2.csocount
	FROM
		dbtcsodet d
	JOIN dbtcsodet2 d2 on
		d.csodetid = d2.csodetid
	JOIN dbtcsohed h on
		h.csoid = d.csoid
	WHERE
		h.trsid = paramTrsid
	and d.statussubmit = 'P' and h.tipecso = 'A'
	group by d.trsdetid, d2.csocount
	)	
,item AS(
		SELECT
				dbttrsdeta.trsdetid,
				total_cso.qty as qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.kesalahan_admin,
				dbttrsdeta.batch_tertukar,
				dbttrsdeta.groupid,
				dbttrsdeta.tidak_hitung 
			FROM
				dbttrsdeta
			INNER JOIN dbttrsheda on dbttrsheda.trsid = dbttrsdeta.trsid
			LEFT JOIN total_cso on total_cso.trsdetid=dbttrsdeta.trsdetid AND total_cso.csocount=dbttrsdeta.statuscso
			WHERE dbttrsdeta.trsid = paramTrsid and dbttrsheda.statusdoc != 'A'
	)
	SELECT
	(
		SELECT
			COUNT(trsdetid)
		FROM item
	)total_item,
	(
		SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    GROUP BY trsdetid
	 	) sub
-- 		WHERE (qty_total + koreksi_total + deviasi_total) > 0
	)item_ada,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = 0 AND onhand <> 0
	) item_tidak_ada,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) > onhand
	) item_selisih_plus,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) < onhand
	) item_selisih_minus,
	(
	 	SELECT
			COUNT(trsdetid)
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0) <>0
	    	AND COALESCE(tidak_hitung,0)=0
	) tertukar,
	(
	 	SELECT
			COUNT(trsdetid)
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=0 
	    	AND COALESCE(batch_tertukar,0)=1
	    	AND COALESCE(groupid,0) =0
	    	AND COALESCE(tidak_hitung,0)=0
	)beda_batch ,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    	AND COALESCE(kesalahan_admin,0)=0 
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = onhand
	) item_ok,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=1 
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) = onhand
	)kesalahan_admin_ok,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    where COALESCE(kesalahan_admin,0)=0
	    AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) <> onhand
	)item_selisih,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(kesalahan_admin,0)=1
	    	AND COALESCE(batch_tertukar,0)=0
	    	AND COALESCE(groupid,0)=0
	    	AND COALESCE(tidak_hitung,0)=0
	    GROUP BY trsdetid
		) sub
		WHERE (qty_total + koreksi_total + deviasi_total) <> onhand
	)kesalahan_admin_selisih,
	(
	 	SELECT
			COUNT(trsdetid)
		FROM (
	    SELECT
	        trsdetid,onhand,
	        SUM(COALESCE(qty, 0)) AS qty_total,
	        SUM(COALESCE(koreksi, 0)) AS koreksi_total,
	        SUM(COALESCE(deviasi, 0)) AS deviasi_total
	    FROM item
	    WHERE COALESCE(tidak_hitung,0)=1
	    GROUP BY trsdetid
		) sub
	)tidak_hitung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RekapitulasiHasilCss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `RekapitulasiHasilCss`(IN `paramTrsid` VARCHAR(255))
BEGIN
	select
		date(dbttrsdet.createddate) as `tanggal_import`,
		(
		select
			COUNT(dbttrsdet.trsdetid)
		from		
			dbttrsdet
		where
			dbttrsdet.trsid = paramTrsid
			and date(dbttrsdet.createddate) = `tanggal_import`
		) as 'total_item',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
	-- 		HAVING
	-- 			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) > 0
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_ada',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) = 0
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_tidak_ada',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) > dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih_plus',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) < dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih_minus',
		(
		select
			COUNT(distinct dbttrsdet.trsdetid)
		from
			dbttrsdet
		where
			dbttrsdet.trsid = paramTrsid
			AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
			and not (coalesce(dbttrsdet.groupid , 0) = 0)
			AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
			AND date(dbttrsdet.createddate) = `tanggal_import`
		) as 'tertukar',
		(
		select
			COUNT(distinct dbttrsdet.trsdetid)
		from
			dbttrsdet
		where
			dbttrsdet.trsid = paramTrsid
			AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdet.groupid, 0) = 0
			and not (coalesce(dbttrsdet.batch_tertukar, 0) = 0)
			AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
			AND date(dbttrsdet.createddate) = `tanggal_import`
		) as 'beda_batch',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) = dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and coalesce(dbttrsdet.kesalahan_admin, 0) = 1
				and not dbttrsdet.onhand = 0
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) = dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'kesalahan_admin_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and not dbttrsdet.onhand = 0
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) = dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
			) as 'faktor_gudang_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
-- 				and not dbttrsdet.onhand = 0
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) <> dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and not dbttrsdet.onhand = 0
				and coalesce(dbttrsdet.kesalahan_admin, 0) = 1
				AND COALESCE(dbttrsdet.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdet.groupid, 0) = 0
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
			GROUP BY dbttrsdet.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) <> dbttrsdet.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'kesalahan_admin_selisih',
		(
	select
		COUNT(item.trsdetid)
	FROM
		(
		SELECT
			dbttrsdet.trsdetid as trsdetid,
			dbtcsodet2.qty,
			dbttrsdet.onhand,
			dbttrsdet.koreksi,
			dbttrsdet.deviasi,
			dbttrsdet.createddate as createddate
		from
			dbttrsdet
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdet.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdet.trsid = paramTrsid
			AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
			AND dbtcsodet.statussubmit = 'P'
			AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			and not dbttrsdet.onhand = 0
			and coalesce(dbttrsdet.kesalahan_admin, 0) = 0
			AND COALESCE(dbttrsdet.batch_tertukar , 0) = 0
			AND COALESCE(dbttrsdet.groupid, 0) = 0
			AND COALESCE(dbttrsdet.tidak_hitung, 0) = 0
		GROUP BY
			dbttrsdet.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdet.koreksi , 0)) + coalesce(dbttrsdet.deviasi , 0) <> dbttrsdet.onhand
		) as item
	WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'faktor_gudang_selisih',
				(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdet.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdet.onhand,
				dbttrsdet.koreksi,
				dbttrsdet.deviasi,
				dbttrsdet.createddate as createddate
			from
				dbttrsdet
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdet.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdet.trsid = paramTrsid
				AND COALESCE(dbttrsdet.tidak_hitung, 0) = 1
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'TR')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdet.trsdetid
			                        AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdet.trsdetid
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'tidak_hitung'
	FROM
	dbttrsdet
	WHERE
	dbttrsdet.trsid = paramTrsid
	GROUP BY
	date(dbttrsdet.createddate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RekapitulasiHasilCssAvalan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `RekapitulasiHasilCssAvalan`(IN `paramTrsid` VARCHAR(255))
BEGIN
	select
		date(dbttrsdeta.createddate) as `tanggal_import`,
		(
		select
			COUNT(dbttrsdeta.trsdetid)
		from		
			dbttrsdeta
		where
			dbttrsdeta.trsid = paramTrsid
			and date(dbttrsdeta.createddate) = `tanggal_import`
		) as 'total_item',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
	-- 		HAVING
	-- 			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) > 0
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_ada',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = 0
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_tidak_ada',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) > dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih_plus',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) < dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih_minus',
		(
		select
			COUNT(distinct dbttrsdeta.trsdetid)
		from
			dbttrsdeta
		where
			dbttrsdeta.trsid = paramTrsid
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			and not (coalesce(dbttrsdeta.groupid , 0) = 0)
			AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
			AND date(dbttrsdeta.createddate) = `tanggal_import`
		) as 'tertukar',
		(
		select
			COUNT(distinct dbttrsdeta.trsdetid)
		from
			dbttrsdeta
		where
			dbttrsdeta.trsid = paramTrsid
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
			and not (coalesce(dbttrsdeta.batch_tertukar, 0) = 0)
			AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
			AND date(dbttrsdeta.createddate) = `tanggal_import`
		) as 'beda_batch',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and coalesce(dbttrsdeta.kesalahan_admin, 0) = 1
				and not dbttrsdeta.onhand = 0
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'kesalahan_admin_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and not dbttrsdeta.onhand = 0
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
			) as 'faktor_gudang_ok',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
-- 				and not dbttrsdeta.onhand = 0
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'item_selisih',
		(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND dbtcsodet.statussubmit = 'P'
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
				and not dbttrsdeta.onhand = 0
				and coalesce(dbttrsdeta.kesalahan_admin, 0) = 1
				AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
				AND COALESCE(dbttrsdeta.groupid, 0) = 0
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
			GROUP BY dbttrsdeta.trsdetid
			HAVING
				SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'kesalahan_admin_selisih',
		(
	select
		COUNT(item.trsdetid)
	FROM
		(
		SELECT
			dbttrsdeta.trsdetid as trsdetid,
			dbtcsodet2.qty,
			dbttrsdeta.onhand,
			dbttrsdeta.koreksi,
			dbttrsdeta.deviasi,
			dbttrsdeta.createddate as createddate
		from
			dbttrsdeta
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
			AND dbtcsodet.statussubmit = 'P'
			AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			and not dbttrsdeta.onhand = 0
			and coalesce(dbttrsdeta.kesalahan_admin, 0) = 0
			AND COALESCE(dbttrsdeta.batch_tertukar , 0) = 0
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
			AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 0
		GROUP BY
			dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
		) as item
	WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'faktor_gudang_selisih',
				(
		select
			COUNT(item.trsdetid)
		FROM
			(
			SELECT
				dbttrsdeta.trsdetid as trsdetid,
				dbtcsodet2.qty,
				dbttrsdeta.onhand,
				dbttrsdeta.koreksi,
				dbttrsdeta.deviasi,
				dbttrsdeta.createddate as createddate
			from
				dbttrsdeta
			left join dbtcsodet on
				dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			left join dbtcsodet2 on
				dbtcsodet2.csodetid = dbtcsodet.csodetid
			where
				dbttrsdeta.trsid = paramTrsid
				AND COALESCE(dbttrsdeta.tidak_hitung, 0) = 1
				AND (dbttrsdeta.statusitem = 'A' OR dbttrsdeta.statusitem = 'TA')
				AND (
			        CASE 
			            WHEN dbtcsodet2.qty IS NOT NULL THEN
			                dbtcsodet2.csocount = (
			                    SELECT MAX(dbtcsodet2.csocount)
			                    FROM dbtcsodet
			                    INNER JOIN dbtcsodet2 
			                        ON dbtcsodet2.csodetid = dbtcsodet.csodetid
			                    WHERE dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			                        AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			                        AND dbtcsodet.statussubmit = 'P'
			                )
			                AND dbtcsodet.statussubmit = 'P'
			            ELSE TRUE
			        END
			    )
			GROUP BY dbttrsdeta.trsdetid
		) as item 
		WHERE 
			date(item.createddate) = `tanggal_import`
		) as 'tidak_hitung'
	FROM
	dbttrsdeta
	WHERE
	dbttrsdeta.trsid = paramTrsid
	GROUP BY
	date(dbttrsdeta.createddate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportAvalanItemTidakHitung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportAvalanItemTidakHitung`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
	)
,
total_cso AS (
select
	d.trsdetid,
	gr.grade as grade,
	sum(ifnull(d2.qty, 0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS(
 select
	distinct `td`.`trsdetid`,
	`td`.`trsid`,
	`td`.`itemid`,
	`td`.`itemcode`,
	`td`.`itemname`,
	`td`.`onhand`,
	th.typecekstok,
	case 
		`td`.`statuscso`
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	ifnull(`td`.`koreksi`, 0) as `koreksi`,
	ifnull(`td`.`deviasi`, 0) as `deviasi`,
	ifnull(`td`.`statuscso`, 0) as `statuscso`,
	ifnull(`td`.`cogs`,0) as `cogs`,
	ifnull(`td`.`cogs_manual`,0) as `cogs_manual`,
	ifnull(`td`.`kesalahan_admin`,0) as `kesalahan_admin`,
	`td`.`keterangan` as `keterangan`,
	`th`.`statusdoc` as `statusdoc`,
	`td`.`groupid` as `groupid`,
	`g`.`groupdesc` as `groupdesc`,
	`td`.`keputusan` as `keputusan`,
	`td`.`pembebanan` as `pembebanan`,
	`td`.`nodoc` as `nodoc`,
	`td`.`tidak_hitung` as `tidak_hitung`
from
	dbttrsdeta td
join dbttrsheda th on th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
select
        distinct `trsid`,
       	`trsdetid` as `trsdetid`,
        `itemid` as `itemid`,
        `itemcode` as `itemcode`,
        `itemname` as `itemname`,
        typecekstok,
        `onhand` as `onhand`,
        `cogs` as `cogs`,
        `cogs_manual` as `cogs_manual`,
     	`tidak_hitung` as `tidak_hitung`,
        `kesalahan_admin` as `kesalahan_admin`,
      	case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand` end as `selisihplus`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
		else 0
		end  as `selisihmin`,
        `totalcso` as `totalcso`,
        `grade` as `grade`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end as `nominalplus`,
		case
			when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
		else 0
		end as `nominalmin`,  
       	`groupid` as `groupid`,
        `groupdesc` as `groupdesc`,
        `keterangan` as `keterangan`,
        `keputusan` as `keputusan`,
        `pembebanan` as `pembebanan`,
        `nodoc` as `nodoc`
        from sub1
WHERE  
COALESCE(`tidak_hitung`,0) = 1
order by
    `itemname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportAvalanKesalahanAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportAvalanKesalahanAdmin`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
	)
,
total_cso AS (
select
	d.trsdetid,
	gr.grade as grade,
	sum(ifnull(d2.qty, 0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS(
 select
	distinct `td`.`trsdetid`,
	`td`.`trsid`,
	`td`.`itemid`,
	`td`.`itemcode`,
	`td`.`itemname`,
	`td`.`onhand`,
	th.typecekstok,
	case 
		`td`.`statuscso`
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	ifnull(`td`.`koreksi`, 0) as `koreksi`,
	ifnull(`td`.`deviasi`, 0) as `deviasi`,
	ifnull(`td`.`statuscso`, 0) as `statuscso`,
	ifnull(`td`.`cogs`,0) as `cogs`,
	ifnull(`td`.`cogs_manual`,0) as `cogs_manual`,
	ifnull(`td`.`kesalahan_admin`,0) as `kesalahan_admin`,
	`td`.`keterangan` as `keterangan`,
	`th`.`statusdoc` as `statusdoc`,
	`td`.`groupid` as `groupid`,
	`g`.`groupdesc` as `groupdesc`,
	`td`.`keputusan` as `keputusan`,
	`td`.`pembebanan` as `pembebanan`,
	`td`.`nodoc` as `nodoc`,
	`td`.`tidak_hitung` as `tidak_hitung`
from
	dbttrsdeta td
join dbttrsheda th on th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
select
        distinct `trsid`,
       	`trsdetid` as `trsdetid`,
        `itemid` as `itemid`,
        `itemcode` as `itemcode`,
        `itemname` as `itemname`,
        typecekstok,
        `onhand` as `onhand`,
        `cogs` as `cogs`,
        `cogs_manual` as `cogs_manual`,
     	`tidak_hitung` as `tidak_hitung`,
        `kesalahan_admin` as `kesalahan_admin`,
      	case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand` end as `selisihplus`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
		else 0
		end  as `selisihmin`,
        `totalcso` as `totalcso`,
        `grade` as `grade`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end as `nominalplus`,
		case
			when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
		else 0
		end as `nominalmin`,  
       	`groupid` as `groupid`,
        `groupdesc` as `groupdesc`,
        `keterangan` as `keterangan`,
        `keputusan` as `keputusan`,
        `pembebanan` as `pembebanan`,
        `nodoc` as `nodoc`
        from sub1
WHERE  `onhand` <> (`totalcso` + `koreksi` + `deviasi`) 
AND `kesalahan_admin` = 1
AND COALESCE(`tidak_hitung`,0) <> 1
order by
    `itemname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportAvalanSelisih` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportAvalanSelisih`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A' 
	AND h.tipecso = 'A'
	and d.statussubmit = 'P'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
)
,total_cso AS (
select
	d.trsdetid,
	gr.grade,
	sum(ifnull(d2.qty,0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'A'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS (
SELECT  
	td.trsid,
	td.trsdetid,
	td.itemcode,
	td.itemname,
	td.onhand,
	th.typecekstok,
	case
		td.statuscso
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as totalcso,
	case
		td.statuscso
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	COALESCE (`td`.`koreksi`,
	0) as `koreksi`,
	COALESCE (`td`.`deviasi`,
	0) as `deviasi`,
	COALESCE (`td`.`statuscso`,
	0) as `statuscso`,
	COALESCE (`td`.`cogs`,
	0) as `cogs`,
	COALESCE (`td`.`cogs_manual`,
	0) as `cogs_manual`,
	COALESCE(`td`.`kesalahan_admin`,0) AS `kesalahan_admin`, 
	COALESCE(`td`.`group_value`,0) AS `group_value`,
	td.batch_tertukar,
	td.keterangan,
	th.statusdoc,
	td.groupid,
	g.groupdesc,
	td.keputusan,
	td.pembebanan,
	td.nodoc,
	td.tidak_hitung
from
	dbttrsdeta td
join dbttrsheda th on th.trsid = td.trsid
left join total_cso cso1 on
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 on
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 on
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 on
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g on
	g.groupid = td.groupid
where
	th.statusdoc <> 'P'
)
SELECT
	DISTINCT
	trsid,
	trsdetid,
	itemcode,
	itemname,
	typecekstok,
	onhand,
	grade,
	totalcso,
	koreksi,
	deviasi,
	cogs,
	cogs_manual,
	kesalahan_admin,
	tidak_hitung,
	keterangan,
	groupid,
	groupdesc,
	keputusan,
	pembebanan,
	nodoc,
	group_value,
	batch_tertukar,
	case when ifnull(group_value,0) <> 0 then 
	(
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else ((`totalcso` + `koreksi` + `deviasi`)- `onhand`) - `group_value`
		end
	)
	else (
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand`
		end
	)
	end as `selisihplus`,
    case when ifnull(group_value,0) <> 0 then
    (
    	case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then ((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value
			else 0 
    	end
    )
    else
    (
    	case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then (`totalcso` + `koreksi` + `deviasi`)-onhand
			else 0 
    	end
    )
    end as `selisihmin`,
    case when ifnull(group_value,0) <> 0 then
	(
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 
				then round((((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value) * cogs_manual, 2)
			else round((((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value) * cogs,2)
		end
	)
	else
	(
		case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 
				then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end
	)
    end as `nominalplus`,
    case when ifnull(group_value,0) <> 0 then
	(
    	case
    		when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then round((((`totalcso` + `koreksi` + `deviasi`)- onhand)-group_value) * cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
				then round((((`totalcso` + `koreksi` + `deviasi`)- onhand)-group_value) * cogs, 2)
			else 0
		end
	)
	else
	(
    	case
	    	when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
	    		then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
				then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
			else 0
		end
	)
    end as `nominalmin`
from
	sub1
WHERE
		((COALESCE(groupid, 0) = 0
	AND kesalahan_admin = 0
	AND totalcso + koreksi + deviasi <> onhand 
	AND COALESCE(batch_tertukar,0)=0
	AND COALESCE(tidak_hitung,0) <> 1) OR COALESCE(group_value,0)<>0)
	AND Abs(onhand -( koreksi + deviasi+ totalcso)) <> abs(COALESCE(group_value,0))
order by
		itemname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportAvalanTertukar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportAvalanTertukar`()
BEGIN
with grade as(
SELECT
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
FROM
	dbtcsodet d
left join dbtcsodet2 d2 ON d.csodetid = d2.csodetid
join dbtcsohed h ON h.csoid = d.csoid
WHERE
	h.status = 'A'
	AND d.statussubmit = 'P'
	AND h.tipecso = 'A'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
)
,total_cso as (
SELECT
	d.trsdetid,
	d2.csocount,
	gr.grade as grade,
	sum(ifnull(d2.qty,0)) as qtytot
FROM
	dbtcsodet d
inner join dbtcsodet2 d2 ON
	d.csodetid = d2.csodetid
left join grade gr ON
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
inner join dbtcsohed h ON
	h.csoid = d.csoid
WHERE
	h.status = 'A'
	AND d.statussubmit = 'P'
	AND h.tipecso = 'A'
group by
	d.trsdetid,
	d2.csocount 
)
,sub1 AS (
SELECT
	distinct 
   	td.trsdetid,
	td.trsid,
	td.itemid,
	td.itemcode,
	td.itemname,
	td.onhand,
	th.typecekstok,
	case
		when ifnull(td.group_value,0) = 0 then ( 
		case
			`td`.`statuscso`
			when 1 then ifnull(cso1.qtytot, 0)
			when 2 then ifnull(cso2.qtytot, 0)
			when 3 then ifnull(cso3.qtytot, 0)
			when 4 then ifnull(cso4.qtytot, 0)
			else 0
		end
		)
		else td.group_value
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as `grade`,
	ifnull(td.koreksi, 0) as `koreksi`,
	ifnull(td.deviasi, 0) as `deviasi`,
	ifnull(td.statuscso, 0) as `statuscso`,
	ifnull(td.cogs,0) as `cogs`,
	ifnull(td.cogs_manual,0) as `cogs_manual`,
	td.keterangan,
	td.keputusan,
	th.statusdoc,
	td.groupid,
	g.groupdesc,
	td.pembebanan as pembebanan,
	td.nodoc as nodoc,
	td.tidak_hitung as tidak_hitung,
	coalesce(td.group_value,0) as group_value
FROM
	dbttrsdeta td
inner join dbttrsheda th ON
	th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
SELECT
	distinct trsid as trsid,
	trsdetid,
	itemid,
	itemcode,
	typecekstok,
	`itemname` as `itemname`,
	`onhand` as `onhand`,
	`grade` as `grade`,
	`cogs` as `cogs`,
	`cogs_manual` as `cogs_manual`,
	`group_value`,
	case
		when coalesce(`group_value`,0) = 0 AND `totalcso` > 0
		then (
			case
				when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
				else (`totalcso` + `koreksi` + `deviasi`)-onhand
			end
		)
		when `totalcso`> 0 then `totalcso`
		else 0
	end as `selisihplus`,
	case
		when coalesce(`group_value`,0) = 0 AND `totalcso` >= 0
		then (
			case
				when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
				else 0
			end
			)
		when `totalcso`< 0 then `totalcso`
		else 0
	end 
        as `selisihmin`,
	`totalcso` as `totalcso`,
	case
		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 AND `group_value` = 0 then
		( 
			case
				when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
				when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
			end		
		)
		when `group_value` > 0 then 
		( 
			case
				when cogs_manual <> 0 then round((`totalcso`)* cogs_manual, 2)
				when cogs_manual = 0 then round((`totalcso`)* cogs, 2)
			end		
		)
		else 0
	end
        as `nominalplus`,
	case
		when `group_value` = 0 then
		(
			case
				when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
				when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
				else 0
			end
		)
		when `group_value` < 0 then 
		( 
			case
				when cogs_manual <> 0 then round((`totalcso`)* cogs_manual, 2)
				when cogs_manual = 0 then round((`totalcso`)* cogs, 2)
				else 0
			end		
		)
		else 0
	end as `nominalmin`,
	`koreksi` as `koreksi`,
	`deviasi` as `deviasi`,
	`groupid` as `groupid`,
	`groupdesc` as `groupdesc`,
	keputusan,
	tidak_hitung,
	`keterangan` as `keterangan`,
	`pembebanan` as `pembebanan`,
	`nodoc` as `nodoc`
FROM
	sub1
WHERE
	COALESCE (groupid,0) <> 0
	AND `onhand` <> (`totalcso` + `koreksi` + `deviasi`)
	AND COALESCE(`tidak_hitung`,0) <> 1
order by
	groupid	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportCso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportCso`()
BEGIN
select
	distinct `d`.`trsid` as `trsid`,
	`d`.`itemid` as `itemid`,
	`d`.`itemcode` as `itemcode`,
	`d`.`itemname` as `itemname`,
	`d`.`uom` as `uom`,
	`j`.`name` as `name`,
	if(`d2`.`wrh` = 'SBY1TP24',
	`d2`.`qty`,
	0) as `SBY1TP24`,
	if(`d2`.`wrh` = 'SBY2TP24',
	`d2`.`qty`,
	0) as `SBY2TP24`,
	if(`d2`.`wrh` = 'SBY6TSA',
	`d2`.`qty`,
	0) as `SBY6TSA`,
	`d`.`onhand` as `onhand`,
	`csodet`.`cso1` as `cso1`,
	`d`.`onhand` - `csodet`.`cso1` as `selisihcso1`,
	`csodet`.`cso2` as `cso2`,
	`d`.`onhand` - `csodet`.`cso2` as `selisihcso2`,
	`csodet`.`cso3` as `cso3`,
	`d`.`onhand` - `csodet`.`cso3` as `selisihcso3`,
	`d`.`keterangan` as `keterangan`
from
	((((`dbttrsdet` `d`
left join `dbttrshed` `h` on
	(`d`.`trsid` = `h`.`trsid`))
left join `dbttrsdet2` `d2` on
	(`d`.`trsdetid` = `d2`.`trsdet2id`))
left join `dbxjob` `j` on
	(`j`.`userid` = `d`.`analisatorid`))
left join (
	select
		distinct `x`.`itemid` as `itemid`,
		`x`.`trsid` as `trsid`,
		sum(`x`.`csoqty1`) as `cso1`,
		sum(`x`.`csoqty2`) as `cso2`,
		sum(`x`.`csoqty3`) as `cso3`
	from
		(
		select
			distinct `d`.`itemid` as `itemid`,
			`d`.`itemname` as `itemname`,
			`d`.`trsid` as `trsid`,
			sum(`csocount1`.`qty`) as `csoqty1`,
			0 as `csoqty2`,
			0 as `csoqty3`
		from
			((`dbttrsdet` `d`
		left join `dbttrshed` `h` on
			(`h`.`trsid` = `d`.`trsid`))
		left join (
			select
				distinct `cd`.`itemid` as `itemid`,
				`cd`.`statussubmit` as `statussubmit`,
				`ch`.`trsid` as `trsid`,
				`ch`.`status` as `status`,
				`cd2`.`csodet2id` as `csodet2id`,
				`cd2`.`csodetid` as `csodetid`,
				`cd2`.`csoid` as `csoid`,
				`cd2`.`csocount` as `csocount`,
				`cd2`.`qty` as `qty`
			from
				((`dbtcsodet` `cd`
			left join `dbtcsohed` `ch` on
				(`ch`.`csoid` = `cd`.`csoid`))
			left join `dbtcsodet2` `cd2` on
				(`cd`.`csodetid` = `cd2`.`csodetid`))
			where
				`ch`.`status` = 'P'
				and `cd`.`statussubmit` = 'P'
				and `cd2`.`csocount` = 1) `csocount1` on
			(`csocount1`.`itemid` = `d`.`itemid`
				and `csocount1`.`trsid` = `d`.`trsid`))
		where
			`h`.`statusdoc` = 'P'
			and `h`.`trsid` = 1
		group by
			`d`.`itemid`,
			`d`.`itemname`,
			`d`.`trsid`
	union
		select
			distinct `d`.`itemid` as `itemid`,
			`d`.`itemname` as `itemname`,
			`d`.`trsid` as `trsid`,
			0 as `csoqty1`,
			sum(`csocount2`.`qty`) as `csoqty2`,
			0 as `csoqty3`
		from
			((`dbttrsdet` `d`
		left join `dbttrshed` `h` on
			(`h`.`trsid` = `d`.`trsid`))
		left join (
			select
				distinct `cd`.`itemid` as `itemid`,
				`cd`.`statussubmit` as `statussubmit`,
				`ch`.`trsid` as `trsid`,
				`ch`.`status` as `status`,
				`cd2`.`csodet2id` as `csodet2id`,
				`cd2`.`csodetid` as `csodetid`,
				`cd2`.`csoid` as `csoid`,
				`cd2`.`csocount` as `csocount`,
				`cd2`.`qty` as `qty`
			from
				((`dbtcsodet` `cd`
			left join `dbtcsohed` `ch` on
				(`ch`.`csoid` = `cd`.`csoid`))
			left join `dbtcsodet2` `cd2` on
				(`cd`.`csodetid` = `cd2`.`csodetid`))
			where
				`ch`.`status` = 'P'
				and `cd`.`statussubmit` = 'P'
				and `cd2`.`csocount` = 2) `csocount2` on
			(`csocount2`.`itemid` = `d`.`itemid`
				and `csocount2`.`trsid` = `d`.`trsid`))
		where
			`h`.`statusdoc` = 'P'
			and `h`.`trsid` = 1
		group by
			`d`.`itemid`,
			`d`.`itemname`,
			`d`.`trsid`
	union
		select
			distinct `d`.`itemid` as `itemid`,
			`d`.`itemname` as `itemname`,
			`d`.`trsid` as `trsid`,
			0 as `csoqty1`,
			0 as `csoqty2`,
			sum(`csocount3`.`qty`) as `csoqty3`
		from
			((`dbttrsdet` `d`
		left join `dbttrshed` `h` on
			(`h`.`trsid` = `d`.`trsid`))
		left join (
			select
				distinct `cd`.`itemid` as `itemid`,
				`cd`.`statussubmit` as `statussubmit`,
				`ch`.`trsid` as `trsid`,
				`ch`.`status` as `status`,
				`cd2`.`csodet2id` as `csodet2id`,
				`cd2`.`csodetid` as `csodetid`,
				`cd2`.`csoid` as `csoid`,
				`cd2`.`csocount` as `csocount`,
				`cd2`.`qty` as `qty`
			from
				((`dbtcsodet` `cd`
			left join `dbtcsohed` `ch` on
				(`ch`.`csoid` = `cd`.`csoid`))
			left join `dbtcsodet2` `cd2` on
				(`cd`.`csodetid` = `cd2`.`csodetid`))
			where
				`ch`.`status` = 'P'
				and `cd`.`statussubmit` = 'P'
				and `cd2`.`csocount` = 3) `csocount3` on
			(`csocount3`.`itemid` = `d`.`itemid`
				and `csocount3`.`trsid` = `d`.`trsid`))
		where
			`h`.`statusdoc` = 'P'
			and `h`.`trsid` = 1
		GROUP BY
			`d`.`itemid`,
			`d`.`itemname`,
			`d`.`trsid`
            ) `x`
	GROUP BY
		`x`.`trsid`,`x`.`itemid`
            ) `csodet` on
	(`d`.`itemid` = `csodet`.`itemid`
		and `d`.`trsid` = `csodet`.`trsid`));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportItemTidakHitung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportItemTidakHitung`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
	)
,
total_cso AS (
select
	d.trsdetid,
	gr.grade as grade,
	sum(ifnull(d2.qty, 0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS(
 select
	distinct `td`.`trsdetid`,
	`td`.`trsid`,
	`td`.`itemid`,
	`td`.`itemcode`,
	`td`.`itemname`,
	`td`.`onhand`,
	th.typecekstok,
	case 
		`td`.`statuscso`
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	ifnull(`td`.`koreksi`, 0) as `koreksi`,
	ifnull(`td`.`deviasi`, 0) as `deviasi`,
	ifnull(`td`.`statuscso`, 0) as `statuscso`,
	ifnull(`td`.`cogs`,0) as `cogs`,
	ifnull(`td`.`cogs_manual`,0) as `cogs_manual`,
	ifnull(`td`.`kesalahan_admin`,0) as `kesalahan_admin`,
	`td`.`keterangan` as `keterangan`,
	`th`.`statusdoc` as `statusdoc`,
	`td`.`groupid` as `groupid`,
	`g`.`groupdesc` as `groupdesc`,
	`td`.`keputusan` as `keputusan`,
	`td`.`pembebanan` as `pembebanan`,
	`td`.`nodoc` as `nodoc`,
	`td`.`tidak_hitung` as `tidak_hitung`
from
	dbttrsdet td
join dbttrshed th on th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
select
        distinct `trsid`,
       	`trsdetid` as `trsdetid`,
        `itemid` as `itemid`,
        `itemcode` as `itemcode`,
        `itemname` as `itemname`,
        typecekstok,
        `onhand` as `onhand`,
        `cogs` as `cogs`,
        `cogs_manual` as `cogs_manual`,
     	`tidak_hitung` as `tidak_hitung`,
        `kesalahan_admin` as `kesalahan_admin`,
      	case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand` end as `selisihplus`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
		else 0
		end  as `selisihmin`,
        `totalcso` as `totalcso`,
        `grade` as `grade`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end as `nominalplus`,
		case
			when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
		else 0
		end as `nominalmin`,  
       	`groupid` as `groupid`,
        `groupdesc` as `groupdesc`,
        `keterangan` as `keterangan`,
        `keputusan` as `keputusan`,
        `pembebanan` as `pembebanan`,
        `nodoc` as `nodoc`
        from sub1
WHERE  
COALESCE(`tidak_hitung`,0) = 1
order by
    `itemname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportKesalahanAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportKesalahanAdmin`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
	)
,
total_cso AS (
select
	d.trsdetid,
	gr.grade as grade,
	sum(ifnull(d2.qty, 0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS(
 select
	distinct `td`.`trsdetid`,
	`td`.`trsid`,
	`td`.`itemid`,
	`td`.`itemcode`,
	`td`.`itemname`,
	`td`.`onhand`,
	th.typecekstok,
	case 
		`td`.`statuscso`
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	ifnull(`td`.`koreksi`, 0) as `koreksi`,
	ifnull(`td`.`deviasi`, 0) as `deviasi`,
	ifnull(`td`.`statuscso`, 0) as `statuscso`,
	ifnull(`td`.`cogs`,0) as `cogs`,
	ifnull(`td`.`cogs_manual`,0) as `cogs_manual`,
	ifnull(`td`.`kesalahan_admin`,0) as `kesalahan_admin`,
	`td`.`keterangan` as `keterangan`,
	`th`.`statusdoc` as `statusdoc`,
	`td`.`groupid` as `groupid`,
	`g`.`groupdesc` as `groupdesc`,
	`td`.`keputusan` as `keputusan`,
	`td`.`pembebanan` as `pembebanan`,
	`td`.`nodoc` as `nodoc`,
	`td`.`tidak_hitung` as `tidak_hitung`
from
	dbttrsdet td
join dbttrshed th on th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
select
        distinct `trsid`,
       	`trsdetid` as `trsdetid`,
        `itemid` as `itemid`,
        `itemcode` as `itemcode`,
        `itemname` as `itemname`,
        typecekstok,
        `onhand` as `onhand`,
        `cogs` as `cogs`,
        `cogs_manual` as `cogs_manual`,
     	`tidak_hitung` as `tidak_hitung`,
        `kesalahan_admin` as `kesalahan_admin`,
      	case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand` end as `selisihplus`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
		else 0
		end  as `selisihmin`,
        `totalcso` as `totalcso`,
        `grade` as `grade`,
        case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end as `nominalplus`,
		case
			when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
		else 0
		end as `nominalmin`,  
       	`groupid` as `groupid`,
        `groupdesc` as `groupdesc`,
        `keterangan` as `keterangan`,
        `keputusan` as `keputusan`,
        `pembebanan` as `pembebanan`,
        `nodoc` as `nodoc`
        from sub1
WHERE  `onhand` <> (`totalcso` + `koreksi` + `deviasi`) 
AND `kesalahan_admin` = 1 
AND COALESCE(`tidak_hitung`,0) <> 1
order by
    `itemname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportSelisih` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportSelisih`()
BEGIN
WITH grade as(
select
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
from
	dbtcsodet d
left join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
)
,total_cso AS (
select
	d.trsdetid,
	gr.grade,
	sum(ifnull(d2.qty,0)) AS qtytot,
	d2.csocount
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
left join grade gr on
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	AND h.tipecso = 'R'
group by
	d.trsdetid,
	d2.csocount
)
,sub1 AS (
SELECT  
	td.trsid,
	td.trsdetid,
	td.itemcode,
	td.itemname,
	td.onhand,
	th.typecekstok,
	case
		td.statuscso
		when 1 then ifnull(`cso1`.`qtytot`, 0)
		when 2 then ifnull(`cso2`.`qtytot`, 0)
		when 3 then ifnull(`cso3`.`qtytot`, 0)
		when 4 then ifnull(`cso4`.`qtytot`, 0)
		else 0
	end as totalcso,
	case
		td.statuscso
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as grade,
	COALESCE (`td`.`koreksi`,
	0) as `koreksi`,
	COALESCE (`td`.`deviasi`,
	0) as `deviasi`,
	COALESCE (`td`.`statuscso`,
	0) as `statuscso`,
	COALESCE (`td`.`cogs`,
	0) as `cogs`,
	COALESCE (`td`.`cogs_manual`,
	0) as `cogs_manual`,
	COALESCE(`td`.`kesalahan_admin`,0) AS `kesalahan_admin`, 
	COALESCE(`td`.`group_value`,0) AS `group_value`,
	td.batch_tertukar,
	td.keterangan,
	th.statusdoc,
	td.groupid,
	g.groupdesc,
	td.keputusan,
	td.pembebanan,
	td.nodoc,
	td.tidak_hitung
from
	dbttrsdet td
join dbttrshed th on th.trsid = td.trsid
left join total_cso cso1 on
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 on
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 on
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 on
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g on
	g.groupid = td.groupid
where
	th.statusdoc <> 'P'
)
SELECT
	DISTINCT
	trsid,
	trsdetid,
	itemcode,
	itemname,
	typecekstok,
	onhand,
	grade,
	totalcso,
	koreksi,
	deviasi,
	cogs,
	cogs_manual,
	kesalahan_admin,
	tidak_hitung,
	keterangan,
	groupid,
	groupdesc,
	keputusan,
	pembebanan,
	nodoc,
	group_value,
	batch_tertukar,
	case when ifnull(group_value,0) <> 0 then 
	(
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else ((`totalcso` + `koreksi` + `deviasi`)- `onhand`) - `group_value`
		end
	)
	else (
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			else (`totalcso` + `koreksi` + `deviasi`)- `onhand`
		end
	)
	end as `selisihplus`,
    case when ifnull(group_value,0) <> 0 then
    (
    	case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then ((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value
			else 0 
    	end
    )
    else
    (
    	case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then (`totalcso` + `koreksi` + `deviasi`)-onhand
			else 0 
    	end
    )
    end as `selisihmin`,
    case when ifnull(group_value,0) <> 0 then
	(
		case
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 
				then round((((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value) * cogs_manual, 2)
			else round((((`totalcso` + `koreksi` + `deviasi`)-onhand)-group_value) * cogs,2)
		end
	)
	else
	(
		case
    		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
			when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0
			AND `cogs_manual` <> 0 
				then round(((`totalcso` + `koreksi` + `deviasi`)-onhand)* cogs_manual, 2)
			else round(((`totalcso` + `koreksi` + `deviasi`)-onhand) * cogs,2)
		end
	)
    end as `nominalplus`,
    case when ifnull(group_value,0) <> 0 then
	(
    	case
    		when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
    			then round((((`totalcso` + `koreksi` + `deviasi`)- onhand)-group_value) * cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
				then round((((`totalcso` + `koreksi` + `deviasi`)- onhand)-group_value) * cogs, 2)
			else 0
		end
	)
	else
	(
    	case
	    	when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
	    		then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
			when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 
				then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
			else 0
		end
	)
    end as `nominalmin`
from
	sub1
WHERE
		((COALESCE(groupid, 0) = 0
	AND kesalahan_admin = 0
	AND totalcso + koreksi + deviasi <> onhand 
	AND COALESCE(batch_tertukar,0)=0
	AND COALESCE(tidak_hitung,0) <> 1) OR COALESCE(group_value,0)<>0)
	AND Abs(onhand -( koreksi + deviasi+ totalcso)) <> abs(COALESCE(group_value,0))
order by
		itemname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReportTertukar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `ReportTertukar`()
BEGIN
with grade as(
SELECT
	d.trsdetid,
	d2.csocount,
	GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
FROM
	dbtcsodet d
left join dbtcsodet2 d2 ON d.csodetid = d2.csodetid
join dbtcsohed h ON h.csoid = d.csoid
WHERE
	h.status = 'A'
	AND d.statussubmit = 'P'
	AND h.tipecso = 'R'
	AND grade <> ""
group by
	d.trsdetid ,
	d2.csocount
)
,total_cso as (
SELECT
	d.trsdetid,
	d2.csocount,
	gr.grade as grade,
	sum(ifnull(d2.qty,0)) as qtytot
FROM
	dbtcsodet d
inner join dbtcsodet2 d2 ON
	d.csodetid = d2.csodetid
left join grade gr ON
	d.trsdetid = gr.trsdetid
	AND d2.csocount = gr.csocount
inner join dbtcsohed h ON
	h.csoid = d.csoid
WHERE
	h.status = 'A'
	AND d.statussubmit = 'P'
	AND h.tipecso = 'R'
group by
	d.trsdetid,
	d2.csocount 
)
,sub1 AS (
SELECT
	distinct 
   	td.trsdetid,
	td.trsid,
	td.itemid,
	td.itemcode,
	td.itemname,
	td.onhand,
	th.typecekstok,
	case
		when ifnull(td.group_value,0) = 0 then ( 
		case
			`td`.`statuscso`
			when 1 then ifnull(cso1.qtytot, 0)
			when 2 then ifnull(cso2.qtytot, 0)
			when 3 then ifnull(cso3.qtytot, 0)
			when 4 then ifnull(cso4.qtytot, 0)
			else 0
		end
		)
		else td.group_value
	end as `totalcso`,
	case
		`td`.`statuscso`
		when 1 then ifnull(cso1.qtytot, 0)
		when 2 then ifnull(cso2.qtytot, 0)
		when 3 then ifnull(cso3.qtytot, 0)
		when 4 then ifnull(cso4.qtytot, 0)
		else 0
	end as 'totalcso1',
	case
		`td`.`statuscso`
		when 1 then `cso1`.`grade`
		when 2 then `cso2`.`grade`
		when 3 then `cso3`.`grade`
		when 4 then `cso4`.`grade`
		else 0
	end as `grade`,
	ifnull(td.koreksi, 0) as `koreksi`,
	ifnull(td.deviasi, 0) as `deviasi`,
	ifnull(td.statuscso, 0) as `statuscso`,
	ifnull(td.cogs,0) as `cogs`,
	ifnull(td.cogs_manual,0) as `cogs_manual`,
	td.keterangan,
	td.keputusan,
	th.statusdoc,
	td.groupid,
	g.groupdesc,
	td.pembebanan as pembebanan,
	td.nodoc as nodoc,
	td.tidak_hitung as tidak_hitung,
	coalesce(td.group_value,0) as group_value
FROM
	dbttrsdet td
inner join dbttrshed th ON
	th.trsid = td.trsid
left join total_cso cso1 ON
	cso1.trsdetid = td.trsdetid
	AND cso1.csocount = 1
left join total_cso cso2 ON
	cso2.trsdetid = td.trsdetid
	AND cso2.csocount = 2
left join total_cso cso3 ON
	cso3.trsdetid = td.trsdetid
	AND cso3.csocount = 3
left join total_cso cso4 ON
	cso4.trsdetid = td.trsdetid
	AND cso4.csocount = 4
left join dbmgroup g ON
	g.groupid = td.groupid
where
	th.statusdoc <> 'P' 
)
SELECT
	distinct trsid as trsid,
	trsdetid,
	itemid,
	itemcode,
	typecekstok,
	`itemname` as `itemname`,
	`onhand` as `onhand`,
	`grade` as `grade`,
	`cogs` as `cogs`,
	`cogs_manual` as `cogs_manual`,
	`group_value`,
	case
		when coalesce(`group_value`,0) = 0 AND `totalcso` >= 0
		then (
			case
				when `onhand` - (`totalcso` + `koreksi` + `deviasi`) > 0 then 0
				else (`totalcso` + `koreksi` + `deviasi`)-onhand
			end
		)
		when `totalcso`> 0 then `totalcso`
		else 0
	end as `selisihplus`,
	case
		when coalesce(`group_value`,0) = 0 AND `totalcso` >= 0
		then (
			case
				when `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then (`totalcso` + `koreksi` + `deviasi`)-onhand
				else 0
			end
			)
		when `totalcso`< 0 then `totalcso`
		else 0
	end 
        as `selisihmin`,
	`totalcso1` as `totalcso`,
	case
		when `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 AND `group_value` = 0 then
		( 
			case
				when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
				when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) < 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
			end		
		)
		when `group_value` > 0 then 
		( 
			case
				when cogs_manual <> 0 then round((`totalcso`)* cogs_manual, 2)
				when cogs_manual = 0 then round((`totalcso`)* cogs, 2)
			end		
		)
		else 0
	end
        as `nominalplus`,
	case
		when `group_value` = 0 then
		(
			case
				when cogs_manual <> 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs_manual, 2)
				when cogs_manual = 0 AND `onhand` - (`totalcso` + `koreksi` + `deviasi`) >= 0 then round(((`totalcso` + `koreksi` + `deviasi`)- onhand)* cogs, 2)
				else 0
			end
		)
		when `group_value` < 0 then 
		( 
			case
				when cogs_manual <> 0 then round((`totalcso`)* cogs_manual, 2)
				when cogs_manual = 0 then round((`totalcso`)* cogs, 2)
				else 0
			end		
		)
		else 0
	end as `nominalmin`,
	`koreksi` as `koreksi`,
	`deviasi` as `deviasi`,
	`groupid` as `groupid`,
	`groupdesc` as `groupdesc`,
	keputusan,
	tidak_hitung,
	`keterangan` as `keterangan`,
	`pembebanan` as `pembebanan`,
	`nodoc` as `nodoc`
FROM
	sub1
WHERE
	COALESCE (groupid,0) <> 0 
	AND `onhand` <> (`totalcso` + `koreksi` + `deviasi`)
	AND COALESCE(`tidak_hitung`,0) <> 1
order by
	groupid	;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `analisator`
--

/*!50001 DROP VIEW IF EXISTS `analisator`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `analisator` AS select `dbxjob`.`jobid` AS `jobid`,`dbxjob`.`userid` AS `userid`,`dbxjob`.`username` AS `username`,`dbxjob`.`name` AS `name`,`dbxjob`.`coyid` AS `coyid`,`dbxjob`.`jobtypeid` AS `jobtypeid`,`dbxjob`.`typecekstok` AS `typecekstok`,`dbxjob`.`statuscekstok` AS `statuscekstok` from `dbxjob` where `dbxjob`.`jobtypeid` = 2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reportselisih`
--

/*!50001 DROP VIEW IF EXISTS `reportselisih`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reportselisih` AS select `y`.`trsdetid` AS `trsdetid`,`y`.`itemid` AS `itemid`,`y`.`itemcode` AS `itemcode`,`y`.`itemname` AS `itemname`,`y`.`batchno` AS `batchno`,`y`.`dimension` AS `dimension`,`y`.`tolerance` AS `tolerance`,`y`.`onhand` AS `onhand`,`y`.`cogs` AS `cogs`,`y`.`selisihplus` AS `selisihplus`,`y`.`selisihmin` AS `selisihmin`,`y`.`totalcso` AS `totalcso`,`y`.`nominalplus` AS `nominalplus`,`y`.`nominalmin` AS `nominalmin`,`y`.`status` AS `status`,`y`.`statusname` AS `statusname`,`y`.`koreksi` AS `koreksi`,`y`.`deviasi` AS `deviasi`,`y`.`statuscso` AS `statuscso`,`y`.`groupid` AS `groupid`,`y`.`groupdesc` AS `groupdesc`,`y`.`analisator` AS `analisator`,`y`.`analisatorid` AS `analisatorid`,`y`.`keterangan` AS `keterangan`,`y`.`keputusan` AS `keputusan`,`y`.`pembebanan` AS `pembebanan`,`y`.`nodoc` AS `nodoc` from (select distinct `x`.`trsdetid` AS `trsdetid`,`x`.`itemid` AS `itemid`,`x`.`itemcode` AS `itemcode`,`x`.`itemname` AS `itemname`,`x`.`batchno` AS `batchno`,`x`.`dimension` AS `dimension`,`x`.`tolerance` AS `tolerance`,`x`.`onhand` AS `onhand`,`x`.`cogs` AS `cogs`,ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) AS `selisihplus`,0 AS `selisihmin`,`x`.`totalcso` AS `totalcso`,ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) * `x`.`cogs` AS `nominalplus`,0 AS `nominalmin`,case when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0 and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 1 when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 2 when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 3 else 0 end AS `status`,case when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0 and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'proses' when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'selisih +' when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'selesai' else 'belum' end AS `statusname`,`x`.`koreksi` AS `koreksi`,`x`.`deviasi` AS `deviasi`,`x`.`statuscso` AS `statuscso`,`x`.`groupid` AS `groupid`,`x`.`groupdesc` AS `groupdesc`,`x`.`analisator` AS `analisator`,`x`.`analisatorid` AS `analisatorid`,`x`.`keterangan` AS `keterangan`,`x`.`keputusan` AS `keputusan`,`x`.`pembebanan` AS `pembebanan`,`x`.`nodoc` AS `nodoc` from (select distinct `td`.`trsdetid` AS `trsdetid`,`td`.`trsid` AS `trsid`,`l`.`trsid` AS `id`,`td`.`itemid` AS `itemid`,`td`.`itemcode` AS `itemcode`,`td`.`itemname` AS `itemname`,`td`.`batchno` AS `batchno`,`td`.`dimension` AS `dimension`,`td`.`tolerance` AS `tolerance`,`td`.`onhand` AS `onhand`,`j`.`name` AS `analisator`,`j`.`userid` AS `analisatorid`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`,0) else 0 end AS `totalcso`,ifnull(`td`.`koreksi`,0) AS `koreksi`,ifnull(`td`.`deviasi`,0) AS `deviasi`,ifnull(`td`.`statuscso`,0) AS `statuscso`,`td`.`cogs` AS `cogs`,`td`.`keterangan` AS `keterangan`,`th`.`statusdoc` AS `statusdoc`,`td`.`groupid` AS `groupid`,0 AS `0`,`g`.`groupdesc` AS `groupdesc`,`td`.`keputusan` AS `keputusan`,`td`.`pembebanan` AS `pembebanan`,`td`.`nodoc` AS `nodoc` from (((((((((`dbttrsdet` `td` left join (select `dbttrshed`.`trsid` AS `trsid`,`dbttrshed`.`statusdoc` AS `statusdoc` from `dbttrshed` where `dbttrshed`.`statusdoc` = 'A') `th` on(`th`.`trsid` = `td`.`trsid`)) left join (select `d`.`csodetid` AS `csodetid`,`h`.`csoid` AS `csoid`,`d`.`itemid` AS `itemid` from (`dbtcsodet` `d` join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d`.`statussubmit` = 'P' and `h`.`status` = 'A') `cd` on(`cd`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 1 and `h`.`status` = 'A' group by `d`.`itemid`) `cso1` on(`cso1`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 2 and `h`.`status` = 'A' group by `d`.`itemid`) `cso2` on(`cso1`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 3 and `h`.`status` = 'A' group by `d`.`itemid`) `cso3` on(`cso1`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 4 and `h`.`status` = 'A' group by `d`.`itemid`) `cso4` on(`cso1`.`itemid` = `td`.`itemid`)) left join (select `dbxjob`.`userid` AS `userid`,`dbxjob`.`jobtypeid` AS `jobtypeid`,`dbxjob`.`name` AS `name` from `dbxjob` where `dbxjob`.`jobtypeid` = 2) `j` on(`j`.`userid` = `td`.`analisatorid`)) left join (select `dbmgroup`.`groupid` AS `groupid`,`dbmgroup`.`groupdesc` AS `groupdesc`,`dbmgroup`.`created_at` AS `createddate`,`dbmgroup`.`created_by` AS `createdby`,`dbmgroup`.`updated_at` AS `updateddate`,`dbmgroup`.`updated_by` AS `updatedby` from `dbmgroup`) `g` on(`g`.`groupid` = `td`.`groupid`)) left join (select `dbttrshed`.`trsid` AS `trsid` from `dbttrshed` order by `dbttrshed`.`trsid` desc limit 1) `l` on(`l`.`trsid` = `td`.`trsid`))) `x` where `x`.`trsid` = `x`.`id` and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) > 0 union select distinct `x`.`trsdetid` AS `trsdetid`,`x`.`itemid` AS `itemid`,`x`.`itemcode` AS `itemcode`,`x`.`itemname` AS `itemname`,`x`.`batchno` AS `batchno`,`x`.`dimension` AS `dimension`,`x`.`tolerance` AS `tolerance`,`x`.`onhand` AS `onhand`,`x`.`cogs` AS `cogs`,0 AS `selisihplus`,ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) AS `selisihmin`,`x`.`totalcso` AS `totalcso`,0 AS `nominalplus`,ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) * `x`.`cogs` AS `nominalmin`,case when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0 and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 1 when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 2 when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 3 else 0 end AS `status`,case when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0 and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'proses' when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'selisih +' when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand` and (`x`.`totalcso` <> 0 or `x`.`koreksi` <> 0 or `x`.`deviasi` <> 0) then 'selesai' else 'belum' end AS `statusname`,`x`.`koreksi` AS `koreksi`,`x`.`deviasi` AS `deviasi`,`x`.`statuscso` AS `statuscso`,`x`.`groupid` AS `groupid`,`x`.`groupdesc` AS `groupdesc`,`x`.`analisator` AS `analisator`,`x`.`analisatorid` AS `analisatorid`,`x`.`keterangan` AS `keterangan`,`x`.`keputusan` AS `keputusan`,`x`.`pembebanan` AS `pembebanan`,`x`.`nodoc` AS `nodoc` from (select distinct `td`.`trsdetid` AS `trsdetid`,`td`.`trsid` AS `trsid`,`l`.`trsid` AS `id`,`td`.`itemid` AS `itemid`,`td`.`itemcode` AS `itemcode`,`td`.`itemname` AS `itemname`,`td`.`batchno` AS `batchno`,`td`.`dimension` AS `dimension`,`td`.`tolerance` AS `tolerance`,`td`.`onhand` AS `onhand`,`j`.`name` AS `analisator`,`j`.`userid` AS `analisatorid`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`,0) else 0 end AS `totalcso`,ifnull(`td`.`koreksi`,0) AS `koreksi`,ifnull(`td`.`deviasi`,0) AS `deviasi`,ifnull(`td`.`statuscso`,0) AS `statuscso`,ifnull(`td`.`cogs`,0) AS `cogs`,`td`.`keterangan` AS `keterangan`,`th`.`statusdoc` AS `statusdoc`,`td`.`groupid` AS `groupid`,`g`.`groupdesc` AS `groupdesc`,`td`.`keputusan` AS `keputusan`,`td`.`pembebanan` AS `pembebanan`,`td`.`nodoc` AS `nodoc` from (((((((((`dbttrsdet` `td` left join (select `dbttrshed`.`trsid` AS `trsid`,`dbttrshed`.`statusdoc` AS `statusdoc` from `dbttrshed` where `dbttrshed`.`statusdoc` = 'A') `th` on(`th`.`trsid` = `td`.`trsid`)) left join (select `d`.`csodetid` AS `csodetid`,`h`.`csoid` AS `csoid`,`d`.`itemid` AS `itemid` from (`dbtcsodet` `d` join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d`.`statussubmit` = 'P' and `h`.`status` = 'A') `cd` on(`cd`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 1 and `h`.`status` = 'A' group by `d`.`itemid`) `cso1` on(`cso1`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 2 and `h`.`status` = 'A' group by `d`.`itemid`) `cso2` on(`cso2`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 3 and `h`.`status` = 'A' group by `d`.`itemid`) `cso3` on(`cso3`.`itemid` = `td`.`itemid`)) left join (select `d`.`itemid` AS `itemid`,sum(`d2`.`qty`) AS `qtytot` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 4 and `h`.`status` = 'A' group by `d`.`itemid`) `cso4` on(`cso4`.`itemid` = `td`.`itemid`)) left join (select `dbxjob`.`userid` AS `userid`,`dbxjob`.`jobtypeid` AS `jobtypeid`,`dbxjob`.`name` AS `name` from `dbxjob` where `dbxjob`.`jobtypeid` = 2) `j` on(`j`.`userid` = `td`.`analisatorid`)) left join (select `dbmgroup`.`groupid` AS `groupid`,`dbmgroup`.`groupdesc` AS `groupdesc`,`dbmgroup`.`created_at` AS `createddate`,`dbmgroup`.`created_by` AS `createdby`,`dbmgroup`.`updated_at` AS `updateddate`,`dbmgroup`.`updated_by` AS `updatedby` from `dbmgroup`) `g` on(`g`.`groupid` = `td`.`groupid`)) left join (select `dbttrshed`.`trsid` AS `trsid` from `dbttrshed` order by `dbttrshed`.`trsid` desc limit 1) `l` on(`l`.`trsid` = `td`.`trsid`))) `x` where `x`.`trsid` = `x`.`id` and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`),0) < 0) `y` order by `y`.`itemname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_viewdashboard`
--

/*!50001 DROP VIEW IF EXISTS `temp_viewdashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_viewdashboard` AS select distinct `td`.`itemid` AS `itemid`,`td`.`itembatchid` AS `itembatchid`,`td`.`trsdetid` AS `trsdetid`,`td`.`itemcode` AS `itemcode`,`td`.`itemname` AS `itemname`,`td`.`batchno` AS `batchno`,`td`.`heatno` AS `heatno`,`td`.`dimension` AS `dimension`,`td`.`tolerance` AS `tolerance`,`td`.`kondisi` AS `kondisi`,`td`.`onhand` AS `onhand`,`a`.`name` AS `analisator`,`a`.`userid` AS `analisatorid`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`,0) else 0 end AS `totalcso`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`isstarted`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`isstarted`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`isstarted`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`isstarted`,0) else 0 end AS `isstarted`,ifnull(`td`.`koreksi`,0) AS `koreksi`,ifnull(`td`.`deviasi`,0) AS `deviasi`,ifnull(`td`.`statuscso`,0) AS `statuscso`,`td`.`keterangan` AS `keterangan`,`td`.`groupid` AS `groupid`,`g`.`groupdesc` AS `groupdesc` from ((((((((`dbttrsdet` `td` left join `dbttrshed` `th` on(`th`.`trsid` = `td`.`trsid`)) left join `viewcso` `vc` on(`vc`.`trsid` = `td`.`trsid`)) left join (select `totalcso1`.`itemid` AS `itemid`,`totalcso1`.`itembatchid` AS `itembatchid`,`totalcso1`.`statussubmit` AS `statussubmit`,`totalcso1`.`tipecso` AS `tipecso`,`totalcso1`.`qtytot` AS `qtytot`,`totalcso1`.`isstarted` AS `isstarted` from `totalcso1` where `totalcso1`.`tipecso` = 'R') `cso1` on(`cso1`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso2`.`itemid` AS `itemid`,`totalcso2`.`itembatchid` AS `itembatchid`,`totalcso2`.`statussubmit` AS `statussubmit`,`totalcso2`.`tipecso` AS `tipecso`,`totalcso2`.`qtytot` AS `qtytot`,`totalcso2`.`isstarted` AS `isstarted` from `totalcso2` where `totalcso2`.`tipecso` = 'R') `cso2` on(`cso2`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso3`.`itemid` AS `itemid`,`totalcso3`.`itembatchid` AS `itembatchid`,`totalcso3`.`statussubmit` AS `statussubmit`,`totalcso3`.`tipecso` AS `tipecso`,`totalcso3`.`qtytot` AS `qtytot`,`totalcso3`.`isstarted` AS `isstarted` from `totalcso3` where `totalcso3`.`tipecso` = 'R') `cso3` on(`cso3`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso4`.`itemid` AS `itemid`,`totalcso4`.`itembatchid` AS `itembatchid`,`totalcso4`.`statussubmit` AS `statussubmit`,`totalcso4`.`tipecso` AS `tipecso`,`totalcso4`.`qtytot` AS `qtytot`,`totalcso4`.`isstarted` AS `isstarted` from `totalcso4` where `totalcso4`.`tipecso` = 'R') `cso4` on(`cso4`.`itembatchid` = `td`.`itembatchid`)) left join `analisator` `a` on(`a`.`userid` = `td`.`analisatorid`)) left join `dbmgroup` `g` on(`g`.`groupid` = `td`.`groupid`)) where `th`.`statusdoc` <> 'P' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_viewdashboardavalan`
--

/*!50001 DROP VIEW IF EXISTS `temp_viewdashboardavalan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_viewdashboardavalan` AS select distinct `td`.`itemid` AS `itemid`,`td`.`itembatchid` AS `itembatchid`,`td`.`trsdetid` AS `trsdetid`,`td`.`itemcode` AS `itemcode`,`td`.`itemname` AS `itemname`,`td`.`batchno` AS `batchno`,`td`.`heatno` AS `heatno`,`td`.`dimension` AS `dimension`,`td`.`tolerance` AS `tolerance`,`td`.`kondisi` AS `kondisi`,`td`.`onhand` AS `onhand`,`a`.`name` AS `analisator`,`a`.`userid` AS `analisatorid`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`,0) else 0 end AS `totalcso`,case when `td`.`statuscso` = 1 then ifnull(`cso1`.`isstarted`,0) when `td`.`statuscso` = 2 then ifnull(`cso2`.`isstarted`,0) when `td`.`statuscso` = 3 then ifnull(`cso3`.`isstarted`,0) when `td`.`statuscso` = 4 then ifnull(`cso4`.`isstarted`,0) else 0 end AS `isstarted`,ifnull(`td`.`koreksi`,0) AS `koreksi`,ifnull(`td`.`deviasi`,0) AS `deviasi`,ifnull(`td`.`statuscso`,0) AS `statuscso`,`td`.`keterangan` AS `keterangan`,`td`.`groupid` AS `groupid`,`g`.`groupdesc` AS `groupdesc` from ((((((((`dbttrsdeta` `td` left join `dbttrsheda` `th` on(`th`.`trsid` = `td`.`trsid`)) left join `viewcsoavalan` `vc` on(`vc`.`trsid` = `td`.`trsid`)) left join (select `totalcso1`.`itemid` AS `itemid`,`totalcso1`.`itembatchid` AS `itembatchid`,`totalcso1`.`statussubmit` AS `statussubmit`,`totalcso1`.`tipecso` AS `tipecso`,`totalcso1`.`qtytot` AS `qtytot`,`totalcso1`.`isstarted` AS `isstarted` from `totalcso1` where `totalcso1`.`tipecso` = 'A') `cso1` on(`cso1`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso2`.`itemid` AS `itemid`,`totalcso2`.`itembatchid` AS `itembatchid`,`totalcso2`.`statussubmit` AS `statussubmit`,`totalcso2`.`tipecso` AS `tipecso`,`totalcso2`.`qtytot` AS `qtytot`,`totalcso2`.`isstarted` AS `isstarted` from `totalcso2` where `totalcso2`.`tipecso` = 'A') `cso2` on(`cso2`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso3`.`itemid` AS `itemid`,`totalcso3`.`itembatchid` AS `itembatchid`,`totalcso3`.`statussubmit` AS `statussubmit`,`totalcso3`.`tipecso` AS `tipecso`,`totalcso3`.`qtytot` AS `qtytot`,`totalcso3`.`isstarted` AS `isstarted` from `totalcso3` where `totalcso3`.`tipecso` = 'A') `cso3` on(`cso3`.`itembatchid` = `td`.`itembatchid`)) left join (select `totalcso4`.`itemid` AS `itemid`,`totalcso4`.`itembatchid` AS `itembatchid`,`totalcso4`.`statussubmit` AS `statussubmit`,`totalcso4`.`tipecso` AS `tipecso`,`totalcso4`.`qtytot` AS `qtytot`,`totalcso4`.`isstarted` AS `isstarted` from `totalcso4` where `totalcso4`.`tipecso` = 'A') `cso4` on(`cso4`.`itembatchid` = `td`.`itembatchid`)) left join `analisator` `a` on(`a`.`userid` = `td`.`analisatorid`)) left join `dbmgroup` `g` on(`g`.`groupid` = `td`.`groupid`)) where `th`.`statusdoc` <> 'P' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalcso1`
--

/*!50001 DROP VIEW IF EXISTS `totalcso1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `totalcso1` AS select `d`.`itemid` AS `itemid`,`d`.`itembatchid` AS `itembatchid`,`d`.`statussubmit` AS `statussubmit`,`h`.`tipecso` AS `tipecso`,cast(sum(`d2`.`qty`) as float) AS `qtytot`,1 AS `isstarted` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 1 and `h`.`status` = 'A' and `d`.`statussubmit` = 'P' group by `d`.`itemid`,`d`.`itembatchid`,`d`.`statussubmit`,`h`.`tipecso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalcso2`
--

/*!50001 DROP VIEW IF EXISTS `totalcso2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `totalcso2` AS select `d`.`itemid` AS `itemid`,`d`.`itembatchid` AS `itembatchid`,`d`.`statussubmit` AS `statussubmit`,`h`.`tipecso` AS `tipecso`,cast(sum(`d2`.`qty`) as float) AS `qtytot`,1 AS `isstarted` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 2 and `h`.`status` = 'A' and `d`.`statussubmit` = 'P' group by `d`.`itemid`,`d`.`itembatchid`,`d`.`statussubmit`,`h`.`tipecso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalcso3`
--

/*!50001 DROP VIEW IF EXISTS `totalcso3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `totalcso3` AS select `d`.`itemid` AS `itemid`,`d`.`itembatchid` AS `itembatchid`,`d`.`statussubmit` AS `statussubmit`,`h`.`tipecso` AS `tipecso`,cast(sum(`d2`.`qty`) as float) AS `qtytot`,1 AS `isstarted` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 3 and `h`.`status` = 'A' and `d`.`statussubmit` = 'P' group by `d`.`itemid`,`d`.`itembatchid`,`d`.`statussubmit`,`h`.`tipecso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalcso4`
--

/*!50001 DROP VIEW IF EXISTS `totalcso4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `totalcso4` AS select `d`.`itemid` AS `itemid`,`d`.`itembatchid` AS `itembatchid`,`d`.`statussubmit` AS `statussubmit`,`h`.`tipecso` AS `tipecso`,cast(sum(`d2`.`qty`) as float) AS `qtytot`,1 AS `isstarted` from ((`dbtcsodet2` `d2` join `dbtcsodet` `d` on(`d`.`csodetid` = `d2`.`csodetid`)) join `dbtcsohed` `h` on(`h`.`csoid` = `d`.`csoid`)) where `d2`.`csocount` = 4 and `h`.`status` = 'A' and `d`.`statussubmit` = 'P' group by `d`.`itemid`,`d`.`itembatchid`,`d`.`statussubmit`,`h`.`tipecso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewcso`
--

/*!50001 DROP VIEW IF EXISTS `viewcso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewcso` AS select `ch`.`csoid` AS `csoid`,`ch`.`trsid` AS `trsid`,`ch`.`docrefid` AS `docrefid`,`ch`.`pelakuid` AS `pelakuid`,`ch`.`pelakuuname` AS `pelakuuname`,`ch`.`coyid` AS `coyid`,`ch`.`status` AS `status`,`ch`.`createddate` AS `createddate`,`ch`.`updateddate` AS `updateddate`,`cd`.`itemid` AS `itemid`,`cd`.`locationid` AS `locationid`,`cd`.`grade` AS `grade`,`cd`.`color` AS `color`,`cd`.`remark` AS `remark`,`cd`.`approval` AS `approval`,`cd`.`statusitem` AS `statusitem`,`cd`.`statussubmit` AS `statussubmit`,`cd`.`statushslcso` AS `statushslcso` from (`dbtcsohed` `ch` left join `dbtcsodet` `cd` on(`cd`.`csoid` = `ch`.`csoid`)) where `cd`.`statussubmit` = 'P' and `ch`.`status` = 'A' and `ch`.`tipecso` = 'R' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewcsoavalan`
--

/*!50001 DROP VIEW IF EXISTS `viewcsoavalan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewcsoavalan` AS select `ch`.`csoid` AS `csoid`,`ch`.`trsid` AS `trsid`,`ch`.`docrefid` AS `docrefid`,`ch`.`pelakuid` AS `pelakuid`,`ch`.`pelakuuname` AS `pelakuuname`,`ch`.`coyid` AS `coyid`,`ch`.`status` AS `status`,`ch`.`createddate` AS `createddate`,`ch`.`updateddate` AS `updateddate`,`cd`.`itemid` AS `itemid`,`cd`.`locationid` AS `locationid`,`cd`.`grade` AS `grade`,`cd`.`color` AS `color`,`cd`.`remark` AS `remark`,`cd`.`approval` AS `approval`,`cd`.`statusitem` AS `statusitem`,`cd`.`statussubmit` AS `statussubmit`,`cd`.`statushslcso` AS `statushslcso` from (`dbtcsohed` `ch` left join `dbtcsodet` `cd` on(`cd`.`csoid` = `ch`.`csoid`)) where `cd`.`statussubmit` = 'P' and `ch`.`status` = 'A' and `ch`.`tipecso` = 'A' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdashboard`
--

/*!50001 DROP VIEW IF EXISTS `viewdashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdashboard` AS select distinct `temp_viewdashboard`.`itemid` AS `itemid`,`temp_viewdashboard`.`itembatchid` AS `itembatchid`,`temp_viewdashboard`.`trsdetid` AS `trsdetid`,`temp_viewdashboard`.`itemcode` AS `itemcode`,`temp_viewdashboard`.`itemname` AS `itemname`,`temp_viewdashboard`.`batchno` AS `batchno`,`temp_viewdashboard`.`heatno` AS `heatno`,`temp_viewdashboard`.`dimension` AS `dimension`,`temp_viewdashboard`.`tolerance` AS `tolerance`,`temp_viewdashboard`.`kondisi` AS `kondisi`,`temp_viewdashboard`.`onhand` AS `onhand`,case when cast(`temp_viewdashboard`.`totalcso` as float) = 0 and `temp_viewdashboard`.`deviasi` = 0 and `temp_viewdashboard`.`koreksi` = 0 then 0 else ifnull(cast(`temp_viewdashboard`.`totalcso` as float) - `temp_viewdashboard`.`onhand` + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi`,0) end AS `selisih`,cast(`temp_viewdashboard`.`totalcso` as float) AS `totalcso`,case when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` < `temp_viewdashboard`.`onhand` > 0 and (`temp_viewdashboard`.`isstarted` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 1 when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` > `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 2 when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` = `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 3 else 0 end AS `status`,case when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` < `temp_viewdashboard`.`onhand` > 0 and (`temp_viewdashboard`.`isstarted` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'proses' when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` > `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'selisih +' when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` = `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'selesai' else 'belum' end AS `statusname`,`temp_viewdashboard`.`koreksi` AS `koreksi`,`temp_viewdashboard`.`deviasi` AS `deviasi`,`temp_viewdashboard`.`statuscso` AS `statuscso`,`temp_viewdashboard`.`groupid` AS `groupid`,`temp_viewdashboard`.`groupdesc` AS `groupdesc`,`temp_viewdashboard`.`analisator` AS `analisator`,`temp_viewdashboard`.`analisatorid` AS `analisatorid`,`temp_viewdashboard`.`keterangan` AS `keterangan` from `temp_viewdashboard` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdashboardavalan`
--

/*!50001 DROP VIEW IF EXISTS `viewdashboardavalan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdashboardavalan` AS select distinct `temp_viewdashboardavalan`.`itemid` AS `itemid`,`temp_viewdashboardavalan`.`itembatchid` AS `itembatchid`,`temp_viewdashboardavalan`.`trsdetid` AS `trsdetid`,`temp_viewdashboardavalan`.`itemcode` AS `itemcode`,`temp_viewdashboardavalan`.`itemname` AS `itemname`,`temp_viewdashboardavalan`.`batchno` AS `batchno`,`temp_viewdashboardavalan`.`heatno` AS `heatno`,`temp_viewdashboardavalan`.`dimension` AS `dimension`,`temp_viewdashboardavalan`.`tolerance` AS `tolerance`,`temp_viewdashboardavalan`.`kondisi` AS `kondisi`,`temp_viewdashboardavalan`.`onhand` AS `onhand`,ifnull(`temp_viewdashboardavalan`.`onhand` - (cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi`),0) AS `selisih`,cast(`temp_viewdashboardavalan`.`totalcso` as float) AS `totalcso`,`temp_viewdashboardavalan`.`isstarted` AS `isstarted`,case when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` < `temp_viewdashboardavalan`.`onhand` > 0 and (`temp_viewdashboardavalan`.`isstarted` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 1 when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` > `temp_viewdashboardavalan`.`onhand` and (`temp_viewdashboardavalan`.`totalcso` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 2 when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` = `temp_viewdashboardavalan`.`onhand` and (`temp_viewdashboardavalan`.`totalcso` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 3 else 0 end AS `status`,case when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` < `temp_viewdashboardavalan`.`onhand` > 0 and (`temp_viewdashboardavalan`.`isstarted` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 'proses' when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` > `temp_viewdashboardavalan`.`onhand` and (`temp_viewdashboardavalan`.`totalcso` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 'selisih +' when cast(`temp_viewdashboardavalan`.`totalcso` as float) + `temp_viewdashboardavalan`.`koreksi` + `temp_viewdashboardavalan`.`deviasi` = `temp_viewdashboardavalan`.`onhand` and (`temp_viewdashboardavalan`.`totalcso` <> 0 or `temp_viewdashboardavalan`.`koreksi` <> 0 or `temp_viewdashboardavalan`.`deviasi` <> 0) then 'selesai' else 'belum' end AS `statusname`,`temp_viewdashboardavalan`.`koreksi` AS `koreksi`,`temp_viewdashboardavalan`.`deviasi` AS `deviasi`,`temp_viewdashboardavalan`.`statuscso` AS `statuscso`,`temp_viewdashboardavalan`.`groupid` AS `groupid`,`temp_viewdashboardavalan`.`groupdesc` AS `groupdesc`,`temp_viewdashboardavalan`.`analisator` AS `analisator`,`temp_viewdashboardavalan`.`analisatorid` AS `analisatorid`,`temp_viewdashboardavalan`.`keterangan` AS `keterangan` from `temp_viewdashboardavalan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdetaildashb`
--

/*!50001 DROP VIEW IF EXISTS `viewdetaildashb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdetaildashb` AS select `u`.`name` AS `name`,`cd`.`itemid` AS `itemid`,`cd`.`itembatchid` AS `itembatchid`,`l`.`locationname` AS `locationname`,`cd`.`color` AS `color`,`cd2`.`qty` AS `qty`,`cd2`.`csocount` AS `csocount`,`cd`.`remark` AS `remark`,`th`.`statusdoc` AS `statusdoc`,case when `cd2`.`csocount` = 1 then `cd2`.`qty` else 0 end AS `cso1`,case when `cd2`.`csocount` = 2 then `cd2`.`qty` else 0 end AS `cso2`,case when `cd2`.`csocount` = 3 then `cd2`.`qty` else 0 end AS `cso3`,case when `cd2`.`csocount` = 4 then `cd2`.`qty` else 0 end AS `cso4` from (((((`dbtcsohed` `ch` join `dbtcsodet` `cd` on(`ch`.`csoid` = `cd`.`csoid`)) join `dbtcsodet2` `cd2` on(`cd2`.`csodetid` = `cd`.`csodetid`)) join `dbttrshed` `th` on(`th`.`trsid` = `ch`.`trsid`)) left join `dbmuser` `u` on(`u`.`userid` = `ch`.`pelakuid`)) left join `dbmlocation` `l` on(`l`.`locationid` = `cd`.`locationid`)) where `ch`.`status` = 'A' and `th`.`statusdoc` <> 'P' and `cd`.`statussubmit` = 'P' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdetaildashbavalan`
--

/*!50001 DROP VIEW IF EXISTS `viewdetaildashbavalan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdetaildashbavalan` AS select `u`.`name` AS `name`,`cd`.`itemid` AS `itemid`,`cd`.`itembatchid` AS `itembatchid`,`l`.`locationname` AS `locationname`,`cd`.`color` AS `color`,`cd2`.`qty` AS `qty`,`cd2`.`csocount` AS `csocount`,`cd`.`remark` AS `remark`,`th`.`statusdoc` AS `statusdoc`,case when `cd2`.`csocount` = 1 then `cd2`.`qty` else 0 end AS `cso1`,case when `cd2`.`csocount` = 2 then `cd2`.`qty` else 0 end AS `cso2`,case when `cd2`.`csocount` = 3 then `cd2`.`qty` else 0 end AS `cso3`,case when `cd2`.`csocount` = 4 then `cd2`.`qty` else 0 end AS `cso4` from (((((`dbtcsohed` `ch` join `dbtcsodet` `cd` on(`ch`.`csoid` = `cd`.`csoid`)) join `dbtcsodet2` `cd2` on(`cd2`.`csodetid` = `cd`.`csodetid`)) join `dbttrsheda` `th` on(`th`.`trsid` = `ch`.`trsid`)) left join `dbmuser` `u` on(`u`.`userid` = `ch`.`pelakuid`)) left join `dbmlocation` `l` on(`l`.`locationid` = `cd`.`locationid`)) where `ch`.`status` = 'A' and `th`.`statusdoc` <> 'P' and `cd`.`statussubmit` = 'P' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewreportcso`
--

/*!50001 DROP VIEW IF EXISTS `viewreportcso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `viewreportcso` AS select distinct `d`.`trsid` AS `trsid`,`d`.`itemid` AS `itemid`,`d`.`itemcode` AS `itemcode`,`d`.`itemname` AS `itemname`,`d`.`uom` AS `uom`,`j`.`name` AS `name`,if(`d2`.`wrh` = 'SBY1TP24',`d2`.`qty`,0) AS `SBY1TP24`,if(`d2`.`wrh` = 'SBY2TP24',`d2`.`qty`,0) AS `SBY2TP24`,if(`d2`.`wrh` = 'SBY6TSA',`d2`.`qty`,0) AS `SBY6TSA`,`d`.`onhand` AS `onhand`,`csodet`.`cso1` AS `cso1`,`d`.`onhand` - `csodet`.`cso1` AS `selisihcso1`,`csodet`.`cso2` AS `cso2`,`d`.`onhand` - `csodet`.`cso2` AS `selisihcso2`,`csodet`.`cso3` AS `cso3`,`d`.`onhand` - `csodet`.`cso3` AS `selisihcso3`,`d`.`keterangan` AS `keterangan` from ((((`dbttrsdet` `d` left join `dbttrshed` `h` on(`d`.`trsid` = `h`.`trsid`)) left join `dbttrsdet2` `d2` on(`d`.`trsdetid` = `d2`.`trsdet2id`)) left join `dbxjob` `j` on(`j`.`userid` = `d`.`analisatorid`)) left join (select distinct `x`.`itemid` AS `itemid`,`x`.`trsid` AS `trsid`,sum(`x`.`csoqty1`) over ( partition by `x`.`itemid`) AS `cso1`,sum(`x`.`csoqty2`) over ( partition by `x`.`itemid`) AS `cso2`,sum(`x`.`csoqty3`) over ( partition by `x`.`itemid`) AS `cso3` from (select distinct `d`.`itemid` AS `itemid`,`d`.`itemname` AS `itemname`,`d`.`trsid` AS `trsid`,sum(`csocount1`.`qty`) over ( partition by `csocount1`.`itemid`) AS `csoqty1`,0 AS `csoqty2`,0 AS `csoqty3` from ((`dbttrsdet` `d` left join `dbttrshed` `h` on(`h`.`trsid` = `d`.`trsid`)) left join (select distinct `cd`.`itemid` AS `itemid`,`cd`.`statussubmit` AS `statussubmit`,`ch`.`trsid` AS `trsid`,`ch`.`status` AS `status`,`cd2`.`csodet2id` AS `csodet2id`,`cd2`.`csodetid` AS `csodetid`,`cd2`.`csoid` AS `csoid`,`cd2`.`csocount` AS `csocount`,`cd2`.`qty` AS `qty` from ((`dbtcsodet` `cd` left join `dbtcsohed` `ch` on(`ch`.`csoid` = `cd`.`csoid`)) left join `dbtcsodet2` `cd2` on(`cd`.`csodetid` = `cd2`.`csodetid`)) where `ch`.`status` = 'P' and `cd`.`statussubmit` = 'P' and `cd2`.`csocount` = 1) `csocount1` on(`csocount1`.`itemid` = `d`.`itemid` and `csocount1`.`trsid` = `d`.`trsid`)) where `h`.`statusdoc` = 'P' and `h`.`trsid` = 1 union select distinct `d`.`itemid` AS `itemid`,`d`.`itemname` AS `itemname`,`d`.`trsid` AS `trsid`,0 AS `csoqty1`,sum(`csocount2`.`qty`) over ( partition by `csocount2`.`itemid`) AS `csoqty2`,0 AS `csoqty3` from ((`dbttrsdet` `d` left join `dbttrshed` `h` on(`h`.`trsid` = `d`.`trsid`)) left join (select distinct `cd`.`itemid` AS `itemid`,`cd`.`statussubmit` AS `statussubmit`,`ch`.`trsid` AS `trsid`,`ch`.`status` AS `status`,`cd2`.`csodet2id` AS `csodet2id`,`cd2`.`csodetid` AS `csodetid`,`cd2`.`csoid` AS `csoid`,`cd2`.`csocount` AS `csocount`,`cd2`.`qty` AS `qty` from ((`dbtcsodet` `cd` left join `dbtcsohed` `ch` on(`ch`.`csoid` = `cd`.`csoid`)) left join `dbtcsodet2` `cd2` on(`cd`.`csodetid` = `cd2`.`csodetid`)) where `ch`.`status` = 'P' and `cd`.`statussubmit` = 'P' and `cd2`.`csocount` = 2) `csocount2` on(`csocount2`.`itemid` = `d`.`itemid` and `csocount2`.`trsid` = `d`.`trsid`)) where `h`.`statusdoc` = 'P' and `h`.`trsid` = 1 union select distinct `d`.`itemid` AS `itemid`,`d`.`itemname` AS `itemname`,`d`.`trsid` AS `trsid`,0 AS `csoqty1`,0 AS `csoqty2`,sum(`csocount3`.`qty`) over ( partition by `csocount3`.`itemid`) AS `csoqty3` from ((`dbttrsdet` `d` left join `dbttrshed` `h` on(`h`.`trsid` = `d`.`trsid`)) left join (select distinct `cd`.`itemid` AS `itemid`,`cd`.`statussubmit` AS `statussubmit`,`ch`.`trsid` AS `trsid`,`ch`.`status` AS `status`,`cd2`.`csodet2id` AS `csodet2id`,`cd2`.`csodetid` AS `csodetid`,`cd2`.`csoid` AS `csoid`,`cd2`.`csocount` AS `csocount`,`cd2`.`qty` AS `qty` from ((`dbtcsodet` `cd` left join `dbtcsohed` `ch` on(`ch`.`csoid` = `cd`.`csoid`)) left join `dbtcsodet2` `cd2` on(`cd`.`csodetid` = `cd2`.`csodetid`)) where `ch`.`status` = 'P' and `cd`.`statussubmit` = 'P' and `cd2`.`csocount` = 3) `csocount3` on(`csocount3`.`itemid` = `d`.`itemid` and `csocount3`.`trsid` = `d`.`trsid`)) where `h`.`statusdoc` = 'P' and `h`.`trsid` = 1) `x`) `csodet` on(`d`.`itemid` = `csodet`.`itemid` and `d`.`trsid` = `csodet`.`trsid`)) */;
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

-- Dump completed on 2025-04-29 15:55:25
