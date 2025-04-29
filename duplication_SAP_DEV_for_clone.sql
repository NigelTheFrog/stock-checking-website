-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.88.55    Database: SOS_DEV_SAP
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcategory`
--

LOCK TABLES `dbmcategory` WRITE;
/*!40000 ALTER TABLE `dbmcategory` DISABLE KEYS */;
INSERT INTO `dbmcategory` VALUES (1,'Plat SS304 & 316','2023-09-10 21:06:54','','2024-03-04 02:28:56','theresia01743'),(2,'AS','2023-09-10 21:06:54','',NULL,NULL),(5,'Siku','2024-03-04 02:14:41','theresia01743','2024-03-04 02:14:41',NULL),(6,'Strep','2024-03-04 02:14:50','theresia01743','2024-03-04 02:14:50',NULL),(7,'Pipa industri','2024-03-04 02:15:16','theresia01743','2024-03-04 02:15:16',NULL),(8,'Pipa kilap bulat','2024-03-04 02:15:23','theresia01743','2024-08-03 03:29:07','ririn05227admin'),(9,'Plat SS410 & 201','2024-03-04 02:29:15','theresia01743','2024-03-04 02:29:15',NULL),(10,'Pipa Kotak','2024-08-03 03:28:57','ririn05227admin','2024-08-03 03:28:57',NULL),(11,'wiremesh','2024-11-01 02:45:32','admin','2024-11-01 02:45:32',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcolor`
--

LOCK TABLES `dbmcolor` WRITE;
/*!40000 ALTER TABLE `dbmcolor` DISABLE KEYS */;
INSERT INTO `dbmcolor` VALUES (1,'ungu','2024-11-01 02:15:38','admin','2024-11-01 02:15:38',NULL),(2,'pink','2024-11-01 02:15:42','admin','2024-11-01 02:15:42',NULL),(3,'kuning','2024-11-01 02:15:46','admin','2024-11-01 02:15:46',NULL),(4,'merah','2024-11-01 02:15:51','admin','2024-11-01 02:15:51',NULL),(5,'hitam','2024-11-01 02:16:00','admin','2024-11-01 02:16:00',NULL),(6,'putih','2024-11-01 02:16:08','admin','2024-11-01 02:16:08',NULL),(7,'hijau','2024-11-01 02:16:19','admin','2024-11-01 02:16:19',NULL),(8,'orange','2024-11-01 02:16:31','admin','2024-11-01 02:16:31',NULL),(9,'biru','2024-11-01 02:16:35','admin','2024-11-01 02:16:35',NULL),(10,'coklat','2024-11-01 02:16:58','admin','2024-11-01 02:16:58',NULL);
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
  `usewrhgrp` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(25) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `updated_by` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`coyid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcoy`
--

LOCK TABLES `dbmcoy` WRITE;
/*!40000 ALTER TABLE `dbmcoy` DISABLE KEYS */;
INSERT INTO `dbmcoy` VALUES (1,'AER SBY','PT. ANUGERAH EKSTRAVISI RAYA',NULL,'2023-09-10 21:12:56','','2024-11-14 04:28:08','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmdept`
--

LOCK TABLES `dbmdept` WRITE;
/*!40000 ALTER TABLE `dbmdept` DISABLE KEYS */;
INSERT INTO `dbmdept` VALUES (1,'HRD','2024-11-21 07:57:21','2024-11-21 07:57:21'),(2,'SAL','2024-11-21 07:57:24','2024-11-21 07:57:24'),(3,'MKT','2024-11-21 07:57:28','2024-11-21 07:57:28'),(4,'WRH','2024-11-21 07:57:31','2024-11-21 07:57:31'),(5,'FAC','2024-11-21 07:57:35','2024-11-21 07:57:35'),(6,'PUR','2024-11-21 07:57:39','2024-11-21 07:57:39');
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
INSERT INTO `dbmgrade` VALUES ('BLI01G','REALT','2025-02-26 10:56:50','2025-03-17 01:44:32','REAL'),('BLI02G','REALT','2025-03-13 07:40:57','2025-03-17 01:44:42','REAL'),('BLI05G','BLI05G','2025-03-17 10:23:42','2025-03-17 10:23:42',NULL),('BLI06S','BLI06S','2025-03-17 10:48:01','2025-03-17 10:48:01',NULL),('BLI07G','BLI07G','2025-03-17 10:27:43','2025-03-17 10:27:43',NULL),('BLI11G','BLI11G11','2025-02-26 09:18:02','2025-03-15 06:12:14',NULL),('JKT01L','JKT01L','2025-02-26 09:18:02','2025-02-26 09:18:02',NULL),('JKT01M','JKT01M','2025-03-17 11:00:04','2025-03-17 11:00:04',NULL),('JKT37M','JKT37M','2025-03-17 10:44:31','2025-03-17 10:44:31',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmgroup`
--

LOCK TABLES `dbmgroup` WRITE;
/*!40000 ALTER TABLE `dbmgroup` DISABLE KEYS */;
INSERT INTO `dbmgroup` VALUES (1,'Group 1','2024-11-14 04:33:58','admin','2024-11-14 04:33:58',NULL),(2,'Group 2','2024-11-14 04:34:04','admin','2024-11-14 04:34:04',NULL),(3,'Group 3','2024-11-14 04:34:11','admin','2024-11-14 04:34:11',NULL);
/*!40000 ALTER TABLE `dbmgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmgudang`
--

DROP TABLE IF EXISTS `dbmgudang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmgudang` (
  `gudangid` int(10) NOT NULL AUTO_INCREMENT,
  `gudangname` varchar(50) NOT NULL,
  PRIMARY KEY (`gudangid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmgudang`
--

LOCK TABLES `dbmgudang` WRITE;
/*!40000 ALTER TABLE `dbmgudang` DISABLE KEYS */;
INSERT INTO `dbmgudang` VALUES (1,'BLI05G'),(2,'BLI06S');
/*!40000 ALTER TABLE `dbmgudang` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmjobtype`
--

LOCK TABLES `dbmjobtype` WRITE;
/*!40000 ALTER TABLE `dbmjobtype` DISABLE KEYS */;
INSERT INTO `dbmjobtype` VALUES (1,'P','Pelaku','2023-09-10 21:34:37','',NULL,NULL),(2,'A','Analisator','2023-09-10 21:34:37','',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `keteranganid` int(11) NOT NULL DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmketerangan`
--

LOCK TABLES `dbmketerangan` WRITE;
/*!40000 ALTER TABLE `dbmketerangan` DISABLE KEYS */;
INSERT INTO `dbmketerangan` VALUES (2,'Cek Lokasi','2024-10-04 04:14:48','2024-10-04 04:14:48'),(11,'Cek warna','2024-10-04 04:53:22','2024-10-04 04:53:22'),(13,'Ada koreksi','2024-10-07 02:41:00','2024-10-07 02:41:00'),(0,'Cek ulang tata letak','2024-11-14 04:34:39','2024-11-14 04:34:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmlocation`
--

LOCK TABLES `dbmlocation` WRITE;
/*!40000 ALTER TABLE `dbmlocation` DISABLE KEYS */;
INSERT INTO `dbmlocation` VALUES (1,'TS','A1',1,0,'2024-11-01 02:17:41','admin','2025-02-03 06:58:14','admin'),(2,'TS','A2',0,0,'2024-11-01 02:17:53','admin','2025-02-03 06:58:14','admin'),(3,'TS','A3',0,0,'2024-11-01 02:18:25','admin','2025-02-03 06:58:14',NULL),(4,'TS','A4',0,0,'2024-11-01 02:18:36','admin','2025-02-03 06:58:14',NULL),(5,'TS','A5',0,0,'2024-11-01 02:18:52','admin','2025-02-03 06:58:14',NULL),(6,'TS','A6',0,0,'2024-11-01 02:19:04','admin','2025-02-03 06:58:14',NULL),(7,'TS','A7',0,0,'2024-11-01 02:19:11','admin','2025-02-03 06:58:14',NULL),(8,'TS','A8',0,0,'2024-11-01 02:19:21','admin','2025-02-03 06:58:14',NULL),(9,'TS','A9',0,0,'2024-11-01 02:19:27','admin','2025-02-03 06:58:14',NULL),(14,'TS','B1',0,0,'2024-11-01 02:21:53','admin','2025-02-03 06:58:14',NULL),(15,'TS','B2',0,0,'2024-11-01 02:21:58','admin','2025-02-03 06:58:14',NULL),(16,'TS','B3',0,0,'2024-11-01 02:22:03','admin','2025-02-03 06:58:14',NULL),(17,'TS','B4',0,0,'2024-11-01 02:22:07','admin','2025-02-03 06:58:14',NULL),(18,'TS','B5',0,0,'2024-11-01 02:22:19','admin','2025-02-03 06:58:14',NULL),(19,'TS','B6',0,0,'2024-11-01 02:22:24','admin','2025-02-03 06:58:14',NULL),(20,'TS','B7',0,0,'2024-11-01 02:22:29','admin','2025-02-03 06:58:14',NULL),(21,'TS','B8',0,0,'2024-11-01 02:22:33','admin','2025-02-03 06:58:14',NULL),(22,'TS','B9',0,0,'2024-11-01 02:22:43','admin','2025-02-03 06:58:14',NULL),(23,'TS','C1',0,0,'2024-11-01 02:22:48','admin','2025-02-03 06:58:14',NULL),(24,'TS','C2',0,0,'2024-11-01 02:22:53','admin','2025-02-03 06:58:14',NULL),(25,'TS','C3',0,0,'2024-11-01 02:22:57','admin','2025-02-03 06:58:14',NULL),(26,'TS','C4',0,0,'2024-11-01 02:23:06','admin','2025-02-03 06:58:14',NULL),(27,'TS','C5',0,0,'2024-11-01 02:23:12','admin','2025-02-03 06:58:14',NULL),(28,'TS','C6',0,0,'2024-11-01 02:23:19','admin','2025-02-03 06:58:14',NULL),(29,'TS','C7',0,0,'2024-11-01 02:23:26','admin','2025-02-03 06:58:14',NULL),(30,'TS','C8',0,0,'2024-11-01 02:23:32','admin','2025-02-03 06:58:14',NULL),(31,'TS','C9',0,0,'2024-11-01 02:23:37','admin','2025-02-03 06:58:14',NULL),(32,'TS','A1',0,0,'2024-11-01 02:23:37','admin','2025-02-03 06:58:14',NULL),(33,'1','TEST',0,0,'2025-02-26 02:08:04','admin','2025-02-26 02:08:04',NULL);
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
  `remember_token` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmuser`
--

LOCK TABLES `dbmuser` WRITE;
/*!40000 ALTER TABLE `dbmuser` DISABLE KEYS */;
INSERT INTO `dbmuser` VALUES (2,99908,'9437','nigel','$2y$12$2MftzcgBONWDtErHM8ShTe7wtMerp6sEhzmCMSd1IEFg34joU8Y7O','Nigel',1,4,'2024-09-17 04:34:36','admin','2024-09-17 04:34:36',NULL,NULL),(3,99793,'04496','kristiawan04496','$2y$12$BUxwHykbtGqIi8SRWPJs.OsJZ8TmL2bVHEA.4WqgUuh8LA.GzoI5a','Kristiawan',1,3,'2024-10-31 07:06:20','admin','2024-10-31 07:06:20',NULL,NULL),(12,0,'00000','admin','$2y$10$cY8SEVFGq2YyJ9RrVMY8q.xkoYcOzKjA4baeqdqKxBLY6CGujkrZi','Admin',1,1,'2023-06-13 17:39:32','admin',NULL,NULL,''),(16,99785,'08403','felix08403','$2y$12$2MftzcgBONWDtErHM8ShTe7wtMerp6sEhzmCMSd1IEFg34joU8Y7O','Felix',1,3,'2024-11-14 04:53:23','admin','2024-11-14 04:53:23',NULL,NULL),(17,99872,'99991','staffstok','$2y$12$oKbRxXvFK7rdIBr9oJPoFuHsGA4JzAmfNYCSHl93EIuhHNqoLkd82','staffstok',1,3,'2024-11-14 04:53:54','admin','2024-11-14 04:53:54',NULL,NULL),(18,99727,'99992','picwarehouse','$2y$12$pJQuzEyR1x6XGbaqlHMglu4u9b3qpnUCtoSu7VgN7bvgIKahjcmGy','picwarehouse',1,12,'2024-11-14 04:55:10','admin','2024-11-14 04:55:10',NULL,NULL),(19,99749,'99993','kawrh','$2y$12$0xHYwv6SHmhQ0Np4/V14v.U4xQN./uViWRV83bnC1nqmKka9bfXHC','kepala wrh',1,3,'2024-11-14 04:57:28','admin','2024-11-14 04:58:30','admin',NULL),(20,99228,'99994','kafac','$2y$12$OsGTek1fWrwgAMjn.MN6L.4Oa6fLRvRJrrpFhSRUfW033DXs2vSRm','kepala fac',1,3,'2024-11-14 04:58:05','admin','2024-11-14 04:59:04','admin',NULL),(21,99397,'99995','kapur','$2y$12$PA9yCrI376yUkYOZ.PQwG.s.hVrxb.PRzmt5IgmH6zcb82QRzV1xC','kepala purchasing',1,3,'2024-11-14 04:58:59','admin','2024-11-14 04:58:59',NULL,NULL),(22,99198,'99996','kaops','$2y$12$MDpkijnzzZ/8TwmoJ3WxyOvF60BDntFQinN9IFIUHRlYWZN2gu/KW','kepala operasional',1,3,'2024-11-14 04:59:55','admin','2024-11-14 04:59:55',NULL,NULL),(23,99401,'99997','regmen','$2y$12$.bii7bxteJSuwg0JnXORnen91eFLVnf0AoR5xO65GbovdjO/VditW','regional manager',1,3,'2024-11-14 05:00:33','admin','2024-11-14 05:00:33',NULL,NULL),(24,99747,'123456789','denny','$2y$12$EzN9oDyG4T4a1ujesXz3e.UjQVEwu9o59Tz5F7vOWhtSMuSVLp4YG','denny',1,4,'2024-12-28 03:43:47','admin','2024-12-28 03:43:47',NULL,NULL),(25,99599,'21212121','askhid','$2y$12$/kTOVPZH3W9KxPRXqAPvyeGfqOEXYWAyjQSBBQu8mO4JSqO0rnGh6','askhid',1,4,'2024-12-28 03:44:06','admin','2024-12-28 03:44:06',NULL,NULL),(27,99368,'001','testcss','$2y$12$zyY8IlR0gxQeCiXzoKstMusGO2D865QxnRSikBHktdwI5PbWTfkfe','test css',1,4,'2024-12-28 05:13:56','admin','2024-12-28 05:13:56',NULL,NULL),(28,99623,'091910','ertyu','$2y$12$p/p9kAvwgA0tbCzSdG3MD.I.n..hF6WmkT/6GavIZobNk99hruM8e','ertyu',1,4,'2025-02-07 02:55:31','admin','2025-02-07 03:01:44','admin',NULL),(29,99955,'911991','askhidd','$2y$12$itE5XTjuvaosO61bBQ4NnOITaekatNeClLBJ9kCybLC8VwOaRgxBi','askhidd',1,3,'2025-02-26 04:14:31','admin','2025-02-26 04:14:31',NULL,NULL),(30,99726,'00000','testcso','$2y$12$CDBK6j5p/A8GShx7mJyQsOQhIFo2nlgjFTY0PXcyeWSC/ZQ/iPI2e','Test CSO',1,4,'2025-03-13 06:56:57','admin','2025-03-13 06:56:57',NULL,NULL);
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
  `trsdetid` int(10) DEFAULT NULL,
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `locationid` int(11) NOT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `approval` char(1) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL,
  `statussubmit` varchar(1) NOT NULL COMMENT 'P= sudah submit\r\nD= belum submit',
  `statushslcso` char(1) NOT NULL COMMENT 'D = baru dibuat C = ada CSO ulang\r\nT = tambahan dari CSO ulang',
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`csodetid`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet`
--

LOCK TABLES `dbtcsodet` WRITE;
/*!40000 ALTER TABLE `dbtcsodet` DISABLE KEYS */;
INSERT INTO `dbtcsodet` VALUES (1,1,1,'A402AC0104000000','',22,'3','kuning',NULL,NULL,'R','D','D','2024-12-28 12:16:47'),(2,2,4,'I114A5KSS0000000','',18,'','','',NULL,'R','P','D','2024-12-30 09:55:45'),(3,2,8,'A142HFS02BL00000','',1,'','','',NULL,'R','P','D','2024-12-30 09:55:58'),(4,2,3,'A402AC0210000000','',22,'','','',NULL,'R','P','D','2024-12-30 09:56:11'),(5,2,2,'A402AC0204000000','',22,'','','',NULL,'R','P','D','2024-12-30 09:56:24'),(6,2,1,'A402AC0104000000','',21,'','','',NULL,'R','P','D','2024-12-30 09:56:40'),(7,3,9,'A402AC0104000000','',1,'','','',NULL,'R','P','D','2025-01-03 12:22:02'),(8,3,10,'I114A5KSS0000000','',1,'','','',NULL,'R','P','D','2025-01-03 12:22:30'),(9,3,11,'I114A5M000Z00000',NULL,21,'','',NULL,NULL,'R','P','D','2025-01-03 12:22:43'),(10,3,12,'I114A9G000Z00000','',1,'','','',NULL,'R','P','D','2025-01-03 12:23:04'),(11,3,13,'V114A7A000Z00000','',20,'','','',NULL,'R','P','D','2025-01-03 12:23:20'),(12,3,14,'V114A7A00S2Z0000','',22,'','','Selisih 1 barang',NULL,'R','P','C','2025-01-03 12:23:43'),(13,3,14,'V114A7A00S2Z0000','V114A7A00S2Z0000',22,'3',',merah','Kelebihan barang 3',NULL,'R','P','T','2025-01-03 12:25:37'),(14,4,16,'9999001','',22,'','ungu','',NULL,'R','P','D','2025-01-03 12:32:38'),(15,4,17,'I114A5KSS0000000','',21,'','','',NULL,'R','P','D','2025-01-03 12:32:50'),(16,5,19,'A402AC0210000000','',21,'','','',NULL,'R','P','D','2025-01-03 12:34:13'),(17,5,20,'A401ACS0102BL000','',22,'','','',NULL,'R','P','D','2025-01-03 12:34:22'),(18,5,21,'A402ACS0104BL000','',1,'','','1 barang hadiah',NULL,'R','P','C','2025-01-03 12:34:46'),(19,5,22,'A402ACS0104GM000','',1,'','','',NULL,'R','P','D','2025-01-03 12:34:57'),(20,5,21,'A402ACS0104BL000','A402ACS0104BL000',1,NULL,'','Barang hadiah 2',NULL,'R','P','T','2025-01-03 12:35:15'),(21,6,32,'A116D33B00000000','',1,'','','Tertukar',NULL,'R','P','D','2025-01-08 09:20:44'),(22,6,36,'A402AC0210000000','',22,'','','',NULL,'R','P','D','2025-01-08 09:21:06'),(23,6,33,'A121FSH100C00000','',1,'','','',NULL,'R','P','D','2025-01-08 09:21:20'),(24,6,34,'A142HFS010000000','',1,'','','',NULL,'R','P','D','2025-01-08 09:22:09'),(25,6,35,'A155IKF060000000','',21,'','','',NULL,'R','P','D','2025-01-08 09:22:23'),(26,6,37,'A402AC0216B00000','',20,'','','',NULL,'R','P','D','2025-01-08 09:22:38'),(27,6,38,'A402AC0304BL0000','',22,'','','',NULL,'R','P','D','2025-01-08 09:22:58'),(28,6,39,'A403ACB020900000','',21,'','','',NULL,'R','P','D','2025-01-08 09:23:25'),(29,6,40,'A404ACB0316BBL00','',22,'','','',NULL,'R','P','D','2025-01-08 09:23:38'),(30,6,41,'A415KS113G000000','',22,'','','',NULL,'R','P','D','2025-01-08 09:23:55'),(31,6,42,'A702CWH21R000000','',21,'','','',NULL,'R','P','D','2025-01-08 09:24:13'),(32,6,47,'A402ACS0104GM000','',21,'','','Ketukar ar 5j',NULL,'R','P','D','2025-01-08 09:24:43'),(33,6,48,'A113AR5J00000000','',1,'','','',NULL,'R','P','D','2025-01-08 09:24:56'),(34,7,53,'V113AF02W0000000','',22,'','','',NULL,'R','P','C','2025-01-20 15:40:17'),(35,7,50,'I114A5KSS0000000','',22,'','','',NULL,'R','P','C','2025-01-20 15:40:28'),(38,7,50,'I114A5KSS0000000','I114A5KSS0000000',22,NULL,'',NULL,NULL,'R','P','T','2025-01-22 11:44:39'),(39,7,53,'V113AF02W0000000','V113AF02W0000000',22,NULL,'',NULL,NULL,'R','P','C','2025-01-22 11:45:21'),(41,7,53,'V113AF02W0000000','V113AF02W0000000',22,NULL,'',NULL,NULL,'R','P','T','2025-01-22 11:49:47'),(42,7,52,'I125DRS01IBL0000','',22,'','','',NULL,'R','P','C','2025-01-22 11:50:04'),(44,7,52,'I125DRS01IBL0000','I125DRS01IBL0000',22,NULL,'',NULL,NULL,'R','P','T','2025-01-22 11:51:37'),(45,7,53,'V113AF02W0000000','',22,'','','',NULL,'R','P','D','2025-01-22 14:17:37'),(46,7,51,'I114A5M000Z00000','',21,'','','',NULL,'R','P','D','2025-01-22 14:17:56'),(47,7,49,'A517FHSC11BL0000','',22,'','','',NULL,'R','P','D','2025-01-22 14:18:06'),(48,8,54,'A113AR5J00000000','',22,'','','',NULL,'R','P','D','2025-01-22 14:39:11'),(49,8,55,'A116DT01C0000000','',1,'','','',NULL,'R','P','D','2025-01-22 14:40:20'),(50,8,56,'A121FSH100C00000','',22,'','','',NULL,'R','P','D','2025-01-22 14:40:32'),(51,8,57,'A713BTH121100000','',22,'','','',NULL,'R','P','D','2025-01-22 14:40:44'),(52,8,61,'N8221DP0020J3751','',22,'','','',NULL,'R','P','D','2025-01-22 14:40:59'),(53,8,62,'A111111000000075','',22,'','','',NULL,'R','P','D','2025-01-22 14:41:12'),(55,10,63,'A113AR5J00000000','',22,'3','','',NULL,'R','P','C','2025-02-05 11:44:24'),(56,10,70,'V114A7A00S2Z0000','',22,'3','kuning','',NULL,'R','P','D','2025-02-05 11:44:41'),(57,10,63,'A113AR5J00000000','A113AR5J00000000',22,'3','',NULL,NULL,'R','D','T','2025-02-05 11:45:01'),(58,10,67,'I114A5PBL0000000','',22,'3','kuning','',NULL,'R','P','D','2025-02-05 11:45:23'),(59,10,66,'A612GCA000000000','',1,'3','kuning','',NULL,'R','P','D','2025-02-05 11:46:18'),(60,10,69,'V112BF02W0000000','',22,'2','kuning','',NULL,'R','P','D','2025-02-05 11:46:42'),(61,10,68,'I122BD0500W00000','',22,'1','kuning','',NULL,'R','P','D','2025-02-05 11:47:37'),(62,10,63,'A113AR5J00000000','',28,'2','pink','',NULL,'R','P','D','2025-02-05 11:47:56'),(63,10,65,'A402AC0210000000','',21,'1','pink','',NULL,'R','P','D','2025-02-05 11:48:43'),(64,10,64,'A402AC0104000000','',5,'1','pink,merah','',NULL,'R','P','D','2025-02-05 11:48:59'),(66,12,74,'I114A5KSS0000000','',20,'1','ungu','',NULL,'R','P','D','2025-02-06 11:36:05'),(67,12,71,'A133FNS300SS0000','',22,'3','ungu,kuning','',NULL,'R','P','D','2025-02-06 11:36:21'),(68,13,73,'A612GCA000000000','',20,'1','pink','',NULL,'R','P','D','2025-02-06 11:38:10'),(69,13,72,'A602ODL000000000','',1,'','','',NULL,'R','P','D','2025-02-06 11:38:26'),(70,13,75,'X603PW0017050300','',21,'','','',NULL,'R','P','D','2025-02-06 11:38:37'),(71,14,78,'A123WS0130000000','',21,'1','kuning','',NULL,'R','P','D','2025-02-07 09:03:44'),(72,14,79,'A401ACP030100000','',21,'1','pink','',NULL,'R','P','D','2025-02-07 09:04:07'),(73,14,80,'A501PUSB0B000000','',21,'3','biru','',NULL,'R','P','D','2025-02-07 09:04:27'),(74,14,81,'A716TSC05SR00000','',22,'','','',NULL,'R','P','D','2025-02-07 09:04:41'),(75,15,82,'I114A5KSS0000000','',21,'','','',NULL,'R','P','C','2025-02-07 09:05:35'),(76,15,83,'I415BCP0103000000','',22,'1','kuning','',NULL,'R','P','D','2025-02-07 09:05:50'),(77,15,82,'I114A5KSS0000000','I114A5KSS0000000',21,'','',NULL,NULL,'R','D','T','2025-02-10 09:11:59'),(78,15,82,'I114A5KSS0000000','',16,'1','ungu,pink,merah,kuning','',NULL,'R','P','D','2025-02-10 09:18:16'),(79,15,85,'X914AH0704000000','',22,'1','pink,kuning','Tidak hitung',NULL,'R','P','D','2025-02-10 09:19:17'),(80,15,86,'X914APS300080100','',8,'1','kuning','',NULL,'R','P','D','2025-02-10 09:19:44'),(81,16,87,'A121FSH100C00000','',1,'','','',NULL,'R','P','D','2025-02-12 15:21:05'),(82,16,88,'A121FSH300CW0000','',21,'','','',NULL,'R','P','D','2025-02-12 15:21:21'),(83,16,89,'A131FHM125SAF000',NULL,1,'','','Salag admin',NULL,'R','P','D','2025-02-12 15:21:35'),(84,16,90,'A133FNS400SS0000','',20,'','','Gm hitung',NULL,'R','P','D','2025-02-12 15:21:54'),(85,16,91,'A526FP01C0000000','',22,'','','',NULL,'R','P','D','2025-02-12 15:22:08'),(86,16,92,'A526FP02BL000000','',22,'','','',NULL,'R','P','D','2025-02-12 15:22:22'),(87,16,93,'I141FS4SS0000000','',21,'','','',NULL,'R','P','D','2025-02-12 15:22:49'),(116,18,136,'A113AR5J00000000','',1,'BLI11G','','',NULL,'R','P','C','2025-03-15 13:13:04'),(119,18,138,'138','',1,'REAL','','',NULL,'R','P','C','2025-04-10 09:23:23'),(123,19,200,'200','',1,'REAL','','',NULL,'R','P','D','2025-04-10 11:42:08'),(124,19,200,'200','',1,'BLI05G','merah,ungu,pink,kuning','Cek',NULL,'R','P','D','2025-04-10 12:00:23'),(128,19,196,'A113AR5J00000000','',1,'REAL','','Coba',NULL,'R','P','D','2025-04-10 16:25:17'),(129,19,203,'9999001',NULL,1,'BLI05G','ungu,pink','',NULL,'TR','P','D','2025-04-10 16:29:17'),(130,18,138,'138','138',1,'REAL',',coklat','Test',NULL,'R','P','T','2025-04-21 10:48:03'),(131,18,136,'A113AR5J00000000','A113AR5J00000000',1,'REAL',',ungu',NULL,NULL,'R','P','T','2025-04-21 10:56:45'),(132,18,136,'A113AR5J00000000','',1,'REAL','pink,ungu','',NULL,'R','P','D','2025-04-21 10:58:10'),(133,18,137,'A116D33B00000000','',1,'REAL','ungu','',NULL,'R','P','C','2025-04-21 11:03:08'),(134,18,137,'A116D33B00000000','A116D33B00000000',1,'REAL','ungu',NULL,NULL,'R','P','T','2025-04-21 11:06:44'),(135,18,137,'A116D33B00000000','',1,'REAL','kuning','',NULL,'R','P','D','2025-04-21 11:07:54');
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
  `qty` float DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  `inputs` varchar(100) DEFAULT NULL,
  `operand` float DEFAULT NULL,
  `qty_pengali` decimal(10,3) DEFAULT NULL,
  `pengali` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`csodet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet2`
--

LOCK TABLES `dbtcsodet2` WRITE;
/*!40000 ALTER TABLE `dbtcsodet2` DISABLE KEYS */;
INSERT INTO `dbtcsodet2` VALUES (1,1,1,1,15,'2+3=5+10=15','2,3',2,2.000,5.000),(2,2,2,1,16,NULL,NULL,NULL,NULL,NULL),(3,3,2,1,4,NULL,NULL,NULL,NULL,NULL),(4,4,2,1,4,NULL,NULL,NULL,NULL,NULL),(5,5,2,1,1,NULL,NULL,NULL,NULL,NULL),(6,6,2,1,1,NULL,NULL,NULL,NULL,NULL),(7,7,3,1,1,'1','1',1,NULL,NULL),(8,8,3,1,16,'16','16',16,NULL,NULL),(9,9,3,1,14,NULL,NULL,NULL,NULL,NULL),(10,10,3,1,20,'20','20',20,NULL,NULL),(11,11,3,1,20,'20','20',20,NULL,NULL),(12,12,3,1,2,'2','2',2,NULL,NULL),(13,13,3,2,6,NULL,NULL,NULL,NULL,NULL),(14,14,4,1,10,'10','10',10,NULL,NULL),(15,15,4,1,16,'16','16',16,NULL,NULL),(16,16,5,1,1,'1','1',1,NULL,NULL),(17,17,5,1,1,'1','1',1,NULL,NULL),(18,18,5,1,2,'2','2',2,NULL,NULL),(19,19,5,1,1,'1','1',1,NULL,NULL),(20,20,5,2,3,NULL,NULL,NULL,NULL,NULL),(21,21,6,1,3,'3','3',3,NULL,NULL),(22,22,6,1,1,'1','1',1,NULL,NULL),(23,23,6,1,1,'1','1',1,NULL,NULL),(24,24,6,1,1,'1','1',1,NULL,NULL),(25,25,6,1,1,'1','1',1,NULL,NULL),(26,26,6,1,3,'3','3',3,NULL,NULL),(27,27,6,1,1,'1','1',1,NULL,NULL),(28,28,6,1,1,'1','1',1,NULL,NULL),(29,29,6,1,3,'3','3',3,NULL,NULL),(30,30,6,1,1,'1','1',1,NULL,NULL),(31,31,6,1,1,'1','1',1,NULL,NULL),(32,32,6,1,10,'10','10',10,NULL,NULL),(33,33,6,1,51,'51','51',51,NULL,NULL),(34,34,7,1,50,'50','50',50,NULL,NULL),(35,35,7,1,14,'14','14',14,NULL,NULL),(37,38,7,2,16,NULL,NULL,NULL,NULL,NULL),(38,39,7,2,9000,NULL,NULL,NULL,NULL,NULL),(40,41,7,3,1000,NULL,NULL,NULL,NULL,NULL),(41,42,7,1,900,'900','900',900,NULL,NULL),(43,44,7,2,6,NULL,NULL,NULL,NULL,NULL),(44,45,7,3,100,'100','100',100,NULL,NULL),(45,46,7,1,14,'14','14',14,NULL,NULL),(46,47,7,1,1,'1','1',1,NULL,NULL),(47,48,8,1,1,'1','1',1,NULL,NULL),(48,49,8,1,1,'1','1',1,NULL,NULL),(49,50,8,1,1,'1','1',1,NULL,NULL),(50,51,8,1,1,'1','1',1,NULL,NULL),(51,52,8,1,22,'22','22',22,NULL,NULL),(52,53,8,1,35,'35','35',35,NULL,NULL),(54,55,10,1,47,'47','47',47,NULL,NULL),(55,56,10,1,69,'69','69',69,NULL,NULL),(56,57,10,2,NULL,NULL,NULL,NULL,NULL,NULL),(57,58,10,1,47,'47','47',47,NULL,NULL),(58,59,10,1,213,'213','213',213,NULL,NULL),(59,60,10,1,192,'192','192',192,NULL,NULL),(60,61,10,1,76,'76','76',76,NULL,NULL),(61,62,10,2,46,'46','46',46,NULL,NULL),(62,63,10,1,5,'5','5',5,NULL,NULL),(63,64,10,1,1,'1','1',1,NULL,NULL),(65,66,12,1,16,'16','16',16,NULL,NULL),(66,67,12,1,20,'20','20',20,NULL,NULL),(67,68,13,1,211,'211','211',211,NULL,NULL),(68,69,13,1,20,'20','20',20,NULL,NULL),(69,70,13,1,2,'2','2',2,NULL,NULL),(70,71,14,1,8,'8','8',8,NULL,NULL),(71,72,14,1,10,'10','10',10,NULL,NULL),(72,73,14,1,6,'6','6',6,NULL,NULL),(73,74,14,1,15,'15','15',15,NULL,NULL),(74,75,15,1,1,'1','1',1,NULL,NULL),(75,76,15,1,3000,'3000','3000',3000,NULL,NULL),(76,77,15,2,NULL,NULL,NULL,NULL,NULL,NULL),(77,78,15,2,18,'18','18',18,NULL,NULL),(78,79,15,1,435,'435','435',435,NULL,NULL),(79,80,15,1,1,'1','1',1,NULL,NULL),(80,81,16,1,663,'663','663',663,NULL,NULL),(81,82,16,1,690,'690','690',690,NULL,NULL),(82,83,16,1,9000,NULL,NULL,NULL,NULL,NULL),(83,84,16,1,3,'3','3',3,NULL,NULL),(84,85,16,1,1,'1','1',1,NULL,NULL),(85,86,16,1,20,'20','20',20,NULL,NULL),(86,87,16,1,4,'4','4',4,NULL,NULL),(117,116,18,1,12,'12','12',12,NULL,NULL),(120,119,18,1,11,'11','11',11,NULL,NULL),(124,123,19,1,70,'70','70',70,NULL,NULL),(125,124,19,1,100,'100','100',100,NULL,NULL),(129,128,19,1,58,'58','58',58,NULL,NULL),(130,129,19,1,77,'77','77',77,NULL,NULL),(131,130,18,2,2,NULL,NULL,NULL,NULL,NULL),(132,131,18,2,4,NULL,NULL,NULL,NULL,NULL),(133,132,18,2,58,'58','58',58,NULL,NULL),(134,133,18,1,1,'1','1',1,NULL,NULL),(135,134,18,2,11,NULL,NULL,NULL,NULL,NULL),(136,135,18,2,5,'5','5',5,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsohed`
--

LOCK TABLES `dbtcsohed` WRITE;
/*!40000 ALTER TABLE `dbtcsohed` DISABLE KEYS */;
INSERT INTO `dbtcsohed` VALUES (1,1,'CSSAER SBY-testcss-202412','CSS',99368,'testcss',1,'P','R','2024-12-28 12:16:33',NULL),(2,1,'CSAER SBY-denny-202412-02',NULL,99747,'denny',1,'P','R','2024-12-30 09:54:53',NULL),(3,2,'CSOAER SBY-denny-202501-0','CSO',99747,'denny',1,'P','R','2025-01-03 12:14:18',NULL),(4,3,'CSSAER SBY-denny-202501-0','CSS',99747,'denny',1,'P','R','2025-01-03 12:32:23',NULL),(5,3,'CSSAER SBY-askhid-202501-','CSS',99599,'askhid',1,'P','R','2025-01-03 12:34:02',NULL),(6,5,'CSSAER SBY-askhid-202501-','CSS',99599,'askhid',1,'P','R','2025-01-08 09:20:12',NULL),(7,6,'CSSAER SBY-askhid-202501-','CSS',99599,'askhid',1,'P','R','2025-01-20 15:39:58',NULL),(8,7,'CSSAER SBY-askhid-202501-','CSS',99599,'askhid',1,'P','R','2025-01-22 14:38:57',NULL),(10,8,'CSSAER SBY-askhid-202502-','CSS',99599,'askhid',1,'P','R','2025-02-05 11:44:04',NULL),(12,9,'CSSAER SBY-denny-202502-1','CSS',99747,'denny',1,'P','R','2025-02-06 11:35:52',NULL),(13,9,'CSSAER SBY-askhid-202502-','CSS',99599,'askhid',1,'P','R','2025-02-06 11:37:52',NULL),(14,10,'CSSAER SBY-denny-202502-1','CSS',99747,'denny',1,'P','R','2025-02-07 09:03:26',NULL),(15,10,'CSSAER SBY-askhid-202502-','CSS',99599,'askhid',1,'P','R','2025-02-07 09:05:04',NULL),(16,11,'CSSAER SBY-askhid-202502-','CSS',99599,'askhid',1,'P','R','2025-02-12 15:20:49',NULL),(18,23,'CSOAER SBY-askhid-202503-','CSO',99599,'askhid',1,'A','R','2025-03-15 12:05:55',NULL),(19,29,'CSSAER SBY-askhid-202504-','CSS',99599,'askhid',1,'A','R','2025-04-10 11:41:44',NULL);
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
INSERT INTO `dbtcsoketerangan` VALUES (13,2),(13,11),(13,13),(13,0),(20,2),(20,11),(20,13),(20,0),(38,2),(38,11),(39,2),(39,11),(39,13),(39,0),(41,13),(41,0),(44,13),(57,2),(77,11),(77,13),(90,13),(92,13),(95,13),(97,13),(99,2),(99,11),(102,13),(104,13),(104,13),(106,13),(109,0),(110,0),(113,2),(130,13),(130,0),(131,13),(131,0),(134,13),(134,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsoprsn`
--

LOCK TABLES `dbtcsoprsn` WRITE;
/*!40000 ALTER TABLE `dbtcsoprsn` DISABLE KEYS */;
INSERT INTO `dbtcsoprsn` VALUES (1,1,99747,'denny','denny','5',1,1,NULL,'P','R'),(2,1,99368,'testcss','test css','5',1,1,NULL,'P','R'),(3,1,99908,'nigel','Nigel','3',1,2,NULL,'P','R'),(4,2,99747,'denny','denny','5',1,1,NULL,'P','R'),(5,2,99793,'kristiawan04496','Kristiawan','1',1,2,NULL,'P','R'),(7,3,99747,'denny','denny','4',1,1,NULL,'P','R'),(8,3,99599,'askhid','askhid','3',1,1,NULL,'P','R'),(9,3,99908,'nigel','Nigel','2',1,2,NULL,'P','R'),(10,3,99793,'kristiawan04496','Kristiawan','2',1,2,NULL,'P','R'),(11,5,99599,'askhid','askhid','3',1,1,NULL,'P','R'),(12,6,99599,'askhid','askhid','1',1,1,NULL,'P','R'),(13,6,99747,'denny','denny','2',1,2,NULL,'P','R'),(14,6,99872,'staffstok','staffstok','3',1,2,NULL,'P','R'),(15,7,99599,'askhid','askhid','4',1,1,NULL,'P','R'),(16,7,99747,'denny','denny','4',1,2,NULL,'P','R'),(17,8,99599,'askhid','askhid','2',1,1,NULL,'P','R'),(18,9,99747,'denny','denny','1',1,1,NULL,'P','R'),(19,9,99599,'askhid','askhid','1',1,1,NULL,'P','R'),(20,9,99198,'kaops','kepala operasional','1',1,2,NULL,'P','R'),(21,10,99747,'denny','denny','3',1,1,'a','P','R'),(22,10,99599,'askhid','askhid','2',1,1,'w','P','R'),(23,10,99198,'kaops','kepala operasional','5',1,2,'d','P','R'),(24,11,99599,'askhid','askhid','2',1,1,NULL,'P','R'),(25,11,99198,'kaops','kepala operasional','2',1,2,NULL,'P','R'),(26,11,99228,'kafac','kepala fac','3',1,2,NULL,'P','R');
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
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `itemcode` varchar(255) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `isbatch` int(1) NOT NULL,
  `batchno` varchar(50) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `onhand` float(10,2) NOT NULL,
  `koreksi` float DEFAULT NULL COMMENT 'update column type - denny - 20-11-24',
  `deviasi` float DEFAULT NULL COMMENT 'update column type - denny - 20-11-24',
  `groupid` int(11) DEFAULT NULL,
  `group_value` int(11) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` float DEFAULT NULL,
  `cogs_manual` float DEFAULT NULL,
  `nodoc` varchar(25) DEFAULT NULL,
  `statusitem` varchar(2) NOT NULL COMMENT 'R= Item reguler T = item temuan	',
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet`
--

LOCK TABLES `dbttrsdet` WRITE;
/*!40000 ALTER TABLE `dbttrsdet` DISABLE KEYS */;
INSERT INTO `dbttrsdet` VALUES (1,1,'A402AC0104000000','','A402AC0104000000','AC 01-04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',55591.6,NULL,NULL,'R',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-12-28 12:10:32'),(2,1,'A402AC0204000000','','A402AC0204000000','AC 02-04',0,NULL,NULL,NULL,NULL,NULL,9.00,1,0,NULL,NULL,'PCS',82494.9,50000,NULL,'R',1,99908,0,0,'selisih',NULL,0,0,NULL,'2024-12-28 12:10:32'),(3,1,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',130053,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-12-28 12:10:32'),(4,1,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,0,0,NULL,NULL,'PCS',53760.7,10,NULL,'R',1,99908,0,1,'halo',NULL,1,0,NULL,'2024-12-28 12:10:32'),(8,1,'A142HFS02BL00000','','A142HFS02BL00000','HFS 02 BL',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',154560,NULL,NULL,'R',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-12-30 09:53:06'),(9,2,'A402AC0104000000','','A402AC0104000000','AC 01-04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',55591.6,NULL,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:13:43'),(10,2,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,0,0,NULL,NULL,'PCS',53760.7,NULL,NULL,'R',1,99793,0,0,NULL,NULL,0,0,NULL,'2025-01-03 12:13:43'),(11,2,'I114A5M000Z00000','','I114A5M000Z00000','A 5M Z',0,NULL,NULL,NULL,NULL,NULL,14.00,0,0,NULL,NULL,'PCS',40748.4,NULL,NULL,'R',1,99793,0,1,'hilang',NULL,0,0,50000,'2025-01-03 12:13:43'),(12,2,'I114A9G000Z00000','','I114A9G000Z00000','A 9G Z',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',43577.2,NULL,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:13:43'),(13,2,'V114A7A000Z00000','','V114A7A000Z00000','A 7A Z',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',32154.3,NULL,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:13:43'),(14,2,'V114A7A00S2Z0000','','V114A7A00S2Z0000','A 7A S2 Z',0,NULL,NULL,NULL,NULL,NULL,3.00,0,0,0,NULL,'PCS',56262.8,90000,NULL,'R',2,99793,0,0,NULL,NULL,1,0,NULL,'2025-01-03 12:13:43'),(16,3,'9999001','9999001','','Pot',0,NULL,'991087','5',NULL,'1',10.00,0,0,NULL,NULL,'KG',NULL,30,NULL,'T',1,99908,0,1,'barang tidak jelas',NULL,0,0,NULL,'2025-01-03 12:32:19'),(17,3,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',53760.7,NULL,NULL,'R',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:32:19'),(19,3,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',130053,NULL,NULL,'R',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:33:36'),(20,3,'A401ACS0102BL000','','A401ACS0102BL000','ACS 01-02 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',150486,NULL,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:33:36'),(21,3,'A402ACS0104BL000','','A402ACS0104BL000','ACS 01-04 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,0,0,NULL,NULL,'PCS',60484.2,50000,NULL,'R',2,99793,0,0,'haloinitest',NULL,0,0,70000,'2025-01-03 12:33:36'),(22,3,'A402ACS0104GM000','','A402ACS0104GM000','ACS 01-04 GM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',63983,NULL,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-03 12:33:36'),(32,5,'A116D33B00000000','','A116D33B00000000','D 33 B',0,NULL,NULL,NULL,NULL,NULL,1.00,1,0,1,3,'PCS',139278,NULL,NULL,'R',1,NULL,0,0,'1',NULL,0,0,NULL,'2025-01-08 09:19:08'),(33,5,'A121FSH100C00000','','A121FSH100C00000','FSH - 1C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',97275.3,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(34,5,'A142HFS010000000','','A142HFS010000000','HFS 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',112564,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(35,5,'A155IKF060000000','','A155IKF060000000','IKF - 06',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1183140,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(36,5,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,4.00,0,0,1,-3,'PCS',130053,NULL,NULL,'R',1,NULL,0,0,'1',NULL,0,0,NULL,'2025-01-08 09:19:08'),(37,5,'A402AC0216B00000','','A402AC0216B00000','AC 02-16B',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',499535,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(38,5,'A402AC0304BL0000','','A402AC0304BL0000','AC 03-04 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',46373.5,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(39,5,'A403ACB020900000','','A403ACB020900000','ACB 02-09',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',114662,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(40,5,'A404ACB0316BBL00','','A404ACB0316BBL00','ACB 03-16B BL',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',439503,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(41,5,'A415KS113G000000','','A415KS113G000000','KS1 - 13G',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1202820,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(42,5,'A702CWH21R000000','','A702CWH21R000000','CWH 21-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',302586,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 09:19:08'),(47,5,'A402ACS0104GM000','','A402ACS0104GM000','ACS 01-04 GM',0,NULL,NULL,NULL,NULL,NULL,14.00,0,0,2,NULL,'PCS',63983,NULL,NULL,'R',1,NULL,0,0,'2 ketukar',NULL,0,0,NULL,'2025-01-08 09:21:44'),(48,5,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,47.00,NULL,NULL,2,NULL,'PCS',48859.2,NULL,NULL,'R',1,NULL,NULL,NULL,'2  ketukar',NULL,NULL,NULL,NULL,'2025-01-08 09:21:44'),(49,6,'A517FHSC11BL0000','','A517FHSC11BL0000','FLEXIBLE HOSE SC 11 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,0,0,NULL,NULL,'PCS',37268,NULL,NULL,'R',1,99747,0,0,NULL,NULL,0,0,NULL,'2025-01-20 15:39:31'),(50,6,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,0,0,NULL,NULL,'PCS',53760.7,NULL,NULL,'R',2,99872,0,0,NULL,NULL,0,0,NULL,'2025-01-20 15:39:31'),(51,6,'I114A5M000Z00000','','I114A5M000Z00000','A 5M Z',0,NULL,NULL,NULL,NULL,NULL,14.00,0,0,NULL,NULL,'PCS',40748.4,NULL,NULL,'R',1,99872,0,0,NULL,NULL,0,0,NULL,'2025-01-20 15:39:31'),(52,6,'I125DRS01IBL0000','','I125DRS01IBL0000','DRS 01I BL',0,NULL,NULL,NULL,NULL,NULL,6.00,0,0,NULL,NULL,'PCS',609428,NULL,NULL,'R',2,99747,0,0,NULL,NULL,0,0,NULL,'2025-01-20 15:39:31'),(53,6,'V113AF02W0000000','','V113AF02W0000000','ANGLE FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,100.00,-1200,0,0,NULL,'PCS',3597.15,4000,NULL,'R',3,99872,1,0,'SELISIH',NULL,1,0,NULL,'2025-01-20 15:39:31'),(54,7,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',45781.8,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-22 14:38:54'),(55,7,'A116DT01C0000000','','A116DT01C0000000','DT 01 C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',105356,NULL,NULL,'R',1,99747,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-22 14:38:54'),(56,7,'A121FSH100C00000','','A121FSH100C00000','FSH - 1C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',97290.2,NULL,NULL,'R',1,99747,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-22 14:38:54'),(57,7,'A713BTH121100000','','A713BTH121100000','BTH - 12 11',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',12328300,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-22 14:38:54'),(61,7,'N8221DP0020J3751','','N8221DP0020J3751','1 DERO - PRIMER GREEN 0.2 KG',0,NULL,NULL,NULL,NULL,NULL,20.00,-4,0,NULL,NULL,'KLG',6805,20000,NULL,'R',1,NULL,0,0,NULL,NULL,1,0,NULL,'2025-01-22 14:40:06'),(62,7,'A111111000000075','','A111111000000075','111 3/4',0,NULL,NULL,NULL,NULL,NULL,37.00,NULL,NULL,NULL,NULL,'PCS',43379.6,50000,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-22 14:40:06'),(63,8,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,48.00,0,0,3,-2,'PCS',45781.8,NULL,NULL,'R',2,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-05 11:43:51'),(64,8,'A402AC0104000000','','A402AC0104000000','AC 01-04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',55591.6,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-05 11:43:51'),(65,8,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',130053,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-05 11:43:51'),(66,8,'A612GCA000000000','','A612GCA000000000','GUEST CARD AER',0,NULL,NULL,NULL,NULL,NULL,211.00,0,0,1,NULL,'PCS',172,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,100,'2025-02-05 11:43:51'),(67,8,'I114A5PBL0000000','','I114A5PBL0000000','A 5P BL',0,NULL,NULL,NULL,NULL,NULL,45.00,0,0,2,1,'PCS',101842,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,90,'2025-02-05 11:43:51'),(68,8,'I122BD0500W00000','','I122BD0500W00000','BD 05 W',0,NULL,NULL,NULL,NULL,NULL,74.00,0,0,3,2,'PCS',47117.9,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-05 11:43:51'),(69,8,'V112BF02W0000000','','V112BF02W0000000','BASIN FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,194.00,0,0,1,NULL,'PCS',8889.1,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,200,'2025-02-05 11:43:51'),(70,8,'V114A7A00S2Z0000','','V114A7A00S2Z0000','A 7A S2 Z',0,NULL,NULL,NULL,NULL,NULL,71.00,0,0,2,-1,'PCS',56678.1,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,80,'2025-02-05 11:43:51'),(71,9,'A133FNS300SS0000','','A133FNS300SS0000','FNS 30 SS',0,NULL,NULL,NULL,NULL,NULL,20.00,0,0,NULL,NULL,'PCS',16528.3,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-06 11:35:16'),(72,9,'A602ODL000000000','','A602ODL000000000','OUTER DOS ( L )',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',10444.4,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 11:35:16'),(73,9,'A612GCA000000000','','A612GCA000000000','GUEST CARD AER',0,NULL,NULL,NULL,NULL,NULL,211.00,NULL,NULL,NULL,NULL,'PCS',172,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 11:35:16'),(74,9,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,0,0,NULL,NULL,'PCS',53760.7,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-06 11:35:16'),(75,9,'X603PW0017050300','','X603PW0017050300','PLASTIK WRAPPING 17MICRON X 50CM X 300M HJB',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'ROLL',65307.2,NULL,NULL,'R',1,99198,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 11:35:16'),(78,10,'A123WS0130000000','','A123WS0130000000','WS 13',0,NULL,NULL,NULL,NULL,NULL,8.00,0,0,NULL,NULL,'PCS',120370,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-07 09:02:44'),(79,10,'A401ACP030100000','','A401ACP030100000','ACP 03-01',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',82500.9,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-07 09:02:44'),(80,10,'A501PUSB0B000000','','A501PUSB0B000000','POP UP SIPHON B-B',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',24750,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-07 09:02:44'),(81,10,'A716TSC05SR00000','','A716TSC05SR00000','TSC - 05 (SR)',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',855550,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-07 09:02:44'),(82,10,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',53760.7,NULL,NULL,'R',2,99198,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-07 09:02:44'),(83,10,'I415BCP0103000000','','I415BCP0103000000','BCP 1 - 03',0,NULL,NULL,NULL,NULL,NULL,180.00,0,0,NULL,NULL,'PCS',119335,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-07 09:02:44'),(85,10,'X914AH0704000000','','X914AH0704000000','ACRYLIC HARGA 7 x 4 CM',0,NULL,NULL,NULL,NULL,NULL,430.00,0,0,NULL,NULL,'PCS',3084.62,3000,NULL,'R',1,NULL,0,1,NULL,NULL,0,0,NULL,'2025-02-08 08:18:48'),(86,10,'X914APS300080100','','X914APS300080100','ACRYLIC PUTIH SUSU 3MM 80 X 100 CM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',131891,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-08 08:18:49'),(87,11,'A121FSH100C00000','','A121FSH100C00000','FSH - 1C',0,NULL,NULL,NULL,NULL,NULL,1.00,0,0,1,NULL,'PCS',97299.5,89,NULL,'R',1,99198,0,0,NULL,NULL,0,0,NULL,'2025-02-12 15:20:43'),(88,11,'A121FSH300CW0000','','A121FSH300CW0000','FSH - 3CW',0,NULL,NULL,NULL,NULL,NULL,1.00,0,0,1,NULL,'PCS',98751.5,98,NULL,'R',1,99198,0,0,NULL,NULL,0,0,NULL,'2025-02-12 15:20:43'),(89,11,'A131FHM125SAF000','','A131FHM125SAF000','FHM 125 SA F',0,NULL,NULL,NULL,NULL,NULL,6.00,0,0,NULL,NULL,'PCS',36038.7,36,NULL,'R',1,NULL,0,0,NULL,NULL,1,0,NULL,'2025-02-12 15:20:43'),(90,11,'A133FNS400SS0000','','A133FNS400SS0000','FNS 40 SS',0,NULL,NULL,NULL,NULL,NULL,15.00,0,0,NULL,NULL,'PCS',18047.8,20,NULL,'R',1,NULL,0,1,NULL,NULL,0,0,NULL,'2025-02-12 15:20:43'),(91,11,'A526FP01C0000000','','A526FP01C0000000','FP 01 C',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',224984,30,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 15:20:43'),(92,11,'A526FP02BL000000','','A526FP02BL000000','FP 02 BL',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',216719,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 15:20:43'),(93,11,'I141FS4SS0000000','','I141FS4SS0000000','FS 04 SS',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',6959.08,NULL,NULL,'R',1,99228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 15:20:43'),(136,23,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,4.00,0,0,1,122,'PCS',47164.6,NULL,NULL,'R',2,99872,0,0,NULL,NULL,0,0,NULL,'2025-03-15 11:45:26'),(137,23,'A116D33B00000000','','A116D33B00000000','D 33 B',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',141500,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-15 11:45:26'),(138,23,'A121CSH300C00000','','A121CSH300C00000','CSH - 3C',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',93720.7,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-15 11:45:26'),(196,29,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,58.00,NULL,NULL,NULL,NULL,'PCS',47164.6,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 11:41:41'),(197,29,'A113AS5J00000000','','A113AS5J00000000','AS 5J',0,NULL,NULL,NULL,NULL,NULL,56.00,NULL,NULL,NULL,NULL,'PCS',58636.5,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 11:41:41'),(198,29,'I404ASL0116BGM00','','I404ASL0116BGM00','ASL 01-16B GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',199070,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 11:41:41'),(199,29,'V112BF02W0000000','','V112BF02W0000000','BASIN FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,194.00,NULL,NULL,NULL,NULL,'PCS',8865.58,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 11:41:41'),(200,29,'V113AF02W0000000','','V113AF02W0000000','ANGLE FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,226.00,NULL,NULL,NULL,NULL,'PCS',3597.15,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 11:41:41'),(203,29,'9999001','','','Test',0,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-10 16:29:17');
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
  `batchno` int(11) DEFAULT NULL,
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `wrh` varchar(50) NOT NULL,
  `wrh_history` text DEFAULT NULL,
  `qty` float(11,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2`
--

LOCK TABLES `dbttrsdet2` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2` DISABLE KEYS */;
INSERT INTO `dbttrsdet2` VALUES (1,1,NULL,'A402AC0104000000','','BLI01G',NULL,1.00),(2,2,NULL,'A402AC0204000000','','BLI01G',NULL,9.00),(3,3,NULL,'A402AC0210000000','','BLI01G',NULL,3.00),(4,3,NULL,'A402AC0210000000','','BLI02G',NULL,1.00),(6,4,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(7,8,NULL,'A142HFS02BL00000','','BLI05G',NULL,4.00),(8,9,NULL,'A402AC0104000000','','BLI01G',NULL,1.00),(9,10,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(10,11,NULL,'I114A5M000Z00000','','BLI01G',NULL,14.00),(11,12,NULL,'I114A9G000Z00000','','BLI01G',NULL,20.00),(12,13,NULL,'V114A7A000Z00000','','BLI01G',NULL,20.00),(13,14,NULL,'V114A7A00S2Z0000','','BLI01G',NULL,3.00),(14,16,NULL,'9999001','','',NULL,10.00),(15,17,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(16,19,NULL,'A402AC0210000000','','BLI02G',NULL,1.00),(17,20,NULL,'A401ACS0102BL000','','BLI02G',NULL,1.00),(18,21,NULL,'A402ACS0104BL000','','BLI02G',NULL,1.00),(19,22,NULL,'A402ACS0104GM000','','BLI02G',NULL,1.00),(24,30,NULL,'9999001','','',NULL,10.00),(25,31,NULL,'9999001','','',NULL,10.00),(26,32,NULL,'A116D33B00000000','','BLI02G',NULL,1.00),(27,33,NULL,'A121FSH100C00000','','BLI02G',NULL,1.00),(28,34,NULL,'A142HFS010000000','','BLI02G',NULL,1.00),(29,35,NULL,'A155IKF060000000','','BLI02G',NULL,1.00),(30,36,NULL,'A402AC0210000000','','BLI01G',NULL,3.00),(31,36,NULL,'A402AC0210000000','','BLI02G',NULL,1.00),(33,37,NULL,'A402AC0216B00000','','BLI01G',NULL,3.00),(34,38,NULL,'A402AC0304BL0000','','BLI01G',NULL,1.00),(35,39,NULL,'A403ACB020900000','','BLI01G',NULL,1.00),(36,40,NULL,'A404ACB0316BBL00','','BLI01G',NULL,3.00),(37,41,NULL,'A415KS113G000000','','BLI02G',NULL,1.00),(38,42,NULL,'A702CWH21R000000','','BLI02G',NULL,1.00),(39,47,NULL,'A402ACS0104GM000','','BLI01G',NULL,14.00),(40,48,NULL,'A113AR5J00000000','','BLI01G',NULL,47.00),(41,49,NULL,'A517FHSC11BL0000','','BLI01G',NULL,1.00),(42,50,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(43,51,NULL,'I114A5M000Z00000','','BLI01G',NULL,14.00),(44,52,NULL,'I125DRS01IBL0000','','BLI01G',NULL,6.00),(45,53,NULL,'V113AF02W0000000','','BLI01G',NULL,100.00),(46,54,NULL,'A113AR5J00000000','','BLI02G',NULL,1.00),(47,55,NULL,'A116DT01C0000000','','BLI02G',NULL,1.00),(48,56,NULL,'A121FSH100C00000','','BLI02G',NULL,1.00),(49,57,NULL,'A713BTH121100000','','BLI01G',NULL,1.00),(50,61,NULL,'N8221DP0020J3751','','JKT36M',NULL,20.00),(51,62,NULL,'A111111000000075','','SBY01T',NULL,37.00),(52,63,NULL,'A113AR5J00000000','','BLI01G',NULL,47.00),(53,63,NULL,'A113AR5J00000000','','BLI02G',NULL,1.00),(55,64,NULL,'A402AC0104000000','','BLI01G',NULL,1.00),(56,65,NULL,'A402AC0210000000','','BLI02G',NULL,1.00),(57,65,NULL,'A402AC0210000000','','BLI05G',NULL,3.00),(58,65,NULL,'A402AC0210000000','','BLI11G',NULL,1.00),(59,66,NULL,'A612GCA000000000','','BLI01G',NULL,211.00),(60,67,NULL,'I114A5PBL0000000','','BLI01G',NULL,12.00),(61,67,NULL,'I114A5PBL0000000','','JKT01L',NULL,1.00),(62,67,NULL,'I114A5PBL0000000','','JKT02M',NULL,21.00),(63,67,NULL,'I114A5PBL0000000','','JKT04M',NULL,8.00),(64,67,NULL,'I114A5PBL0000000','','JKT06M',NULL,3.00),(67,68,NULL,'I122BD0500W00000','','BLI01G',NULL,24.00),(68,68,NULL,'I122BD0500W00000','','BLI06S',NULL,12.00),(69,68,NULL,'I122BD0500W00000','','JKT02M',NULL,38.00),(70,69,NULL,'V112BF02W0000000','','BLI01G',NULL,194.00),(71,70,NULL,'V114A7A00S2Z0000','','BLI01G',NULL,18.00),(72,70,NULL,'V114A7A00S2Z0000','','BLI06S',NULL,50.00),(73,70,NULL,'V114A7A00S2Z0000','','JKT04M',NULL,2.00),(74,70,NULL,'V114A7A00S2Z0000','','JKT05M',NULL,1.00),(75,71,NULL,'A133FNS300SS0000','','BLI01G',NULL,20.00),(76,72,NULL,'A602ODL000000000','','BLI01G',NULL,20.00),(77,73,NULL,'A612GCA000000000','','BLI01G',NULL,211.00),(78,74,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(79,75,NULL,'X603PW0017050300','','BLI01G',NULL,2.00),(80,78,NULL,'A123WS0130000000','','JKT06L',NULL,8.00),(81,79,NULL,'A401ACP030100000','','JKT05M',NULL,10.00),(82,80,NULL,'A501PUSB0B000000','','JKT05M',NULL,6.00),(83,81,NULL,'A716TSC05SR00000','','JKT05M',NULL,15.00),(84,82,NULL,'I114A5KSS0000000','','BLI01G',NULL,16.00),(85,83,NULL,'I415BCP0103000000','','JKT05M',NULL,180.00),(86,85,NULL,'X914AH0704000000','','SBY01T',NULL,430.00),(87,86,NULL,'X914APS300080100','','SBY01T',NULL,1.00),(88,87,NULL,'A121FSH100C00000','','BLI02G',NULL,1.00),(89,88,NULL,'A121FSH300CW0000','','BLI02G',NULL,1.00),(90,89,NULL,'A131FHM125SAF000','','BLI06S',NULL,6.00),(91,90,NULL,'A133FNS400SS0000','','BLI06S',NULL,15.00),(92,91,NULL,'A526FP01C0000000','','BLI06S',NULL,3.00),(93,92,NULL,'A526FP02BL000000','','BLI06S',NULL,20.00),(94,93,NULL,'I141FS4SS0000000','','BLI06S',NULL,4.00),(121,136,NULL,'A113AR5J00000000','','REAL',NULL,4.00),(122,137,NULL,'A116D33B00000000','','REAL',NULL,10.00),(123,138,NULL,'A121CSH300C00000','','REAL',NULL,2.00),(191,196,NULL,'A113AR5J00000000','','REAL',NULL,58.00),(192,197,NULL,'A113AS5J00000000','','REAL',NULL,56.00),(193,198,NULL,'I404ASL0116BGM00','','REAL',NULL,4.00),(194,199,NULL,'V112BF02W0000000','','REAL',NULL,94.00),(195,199,NULL,'V112BF02W0000000','','BLI05G',NULL,100.00),(196,200,NULL,'V113AF02W0000000','','REAL',NULL,76.00),(197,200,NULL,'V113AF02W0000000','','BLI05G',NULL,150.00),(198,203,NULL,'9999001','','1',NULL,0.00);
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
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `wrh` varchar(10) NOT NULL,
  `qty` float(11,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2a`
--

LOCK TABLES `dbttrsdet2a` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2a` DISABLE KEYS */;
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
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `itemcode` varchar(255) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `isbatch` int(1) NOT NULL,
  `batchno` varchar(50) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` text DEFAULT NULL,
  `onhand` float(10,2) NOT NULL,
  `koreksi` int(10) DEFAULT NULL,
  `deviasi` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` float DEFAULT NULL,
  `cogs_manual` float DEFAULT NULL,
  `nodoc` varchar(25) DEFAULT NULL,
  `statusitem` varchar(1) NOT NULL COMMENT 'R= Item reguler T = item temuan	',
  `statuscso` int(1) NOT NULL,
  `analisatorid` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `keputusan` varchar(25) DEFAULT NULL,
  `kesalahan_admin` int(1) DEFAULT NULL,
  `batch_tertukar` smallint(1) DEFAULT NULL,
  `pembebanan` float DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsdetid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdeta`
--

LOCK TABLES `dbttrsdeta` WRITE;
/*!40000 ALTER TABLE `dbttrsdeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbttrsdeta` ENABLE KEYS */;
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
  `wrhapproval` tinyint(1) DEFAULT 0,
  `wrhapproved_by` int(11) DEFAULT NULL,
  `picwrhapproval` tinyint(1) DEFAULT NULL,
  `picwrhapproved_by` int(11) DEFAULT NULL,
  `facapproval` tinyint(1) DEFAULT 0,
  `facapproved_by` int(11) DEFAULT NULL,
  `purapproval` tinyint(1) DEFAULT NULL,
  `purapproved_by` int(11) DEFAULT NULL,
  `kaopsapproval` tinyint(1) DEFAULT NULL,
  `kaopsapproved_by` int(11) DEFAULT NULL,
  `regmenapproval` tinyint(1) DEFAULT 0,
  `regmenapproved_by` int(11) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `staffstokapproved_at` timestamp NULL DEFAULT NULL,
  `wrhapproved_at` timestamp NULL DEFAULT NULL,
  `picwrhapproved_at` timestamp NULL DEFAULT NULL,
  `facapproved_at` timestamp NULL DEFAULT NULL,
  `purapproved_at` timestamp NULL DEFAULT NULL,
  `kaopsapproved_at` timestamp NULL DEFAULT NULL,
  `regmenapproved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`trsid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrshed`
--

LOCK TABLES `dbttrshed` WRITE;
/*!40000 ALTER TABLE `dbttrshed` DISABLE KEYS */;
INSERT INTO `dbttrshed` VALUES (1,'CSSAER SBY2024-12-28-1','CSS','2024-12-28','2024-12-30',1,'Plat SS410 & 201,wiremesh,Pipa Kotak','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2024-12-28 12:10:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'CSOAER SBY2025-01-03-1','CSO','2025-01-03','2025-01-03',1,'wiremesh','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-01-03 12:13:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'CSSAER SBY2025-01-03-1','CSS','2025-01-03','2025-01-03',1,'Pipa industri','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-01-03 12:32:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'CSSAER SBY2025-01-08-2','CSS','2025-01-08','2025-01-08',2,'Pipa industri','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-01-08 09:19:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'CSSAER SBY2025-01-20-3','CSS','2025-01-20','2025-01-22',3,'Plat SS410 & 201','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-01-20 15:39:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'CSSAER SBY2025-01-22-4','CSS','2025-01-22','2025-01-22',4,'Siku,AS,Strep,Pipa industri','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-01-22 14:38:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'CSSAER SBY2025-02-05-1','CSS','2025-02-05','2025-02-05',1,'wiremesh','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-05 11:43:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'CSSAER SBY2025-02-06-2','CSS','2025-02-06','2025-02-06',2,'TESTER','P',1,12,1,28,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-06 11:35:16','2025-02-06 19:54:17','2025-02-06 20:03:00',NULL,NULL,NULL,NULL,NULL),(10,'CSSAER SBY2025-02-07-3','CSS','2025-02-07','2025-02-10',3,'TEST v2','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-07 09:02:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'CSSAER SBY2025-02-12-4','CSS','2025-02-12','2025-02-12',4,'AS','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-12 15:20:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'CSOAER SBY2025-03-15-1','CSO','2025-03-15',NULL,1,'Plat SS304 & 316,AS','A',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-03-15 11:45:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'CSSAER SBY2025-04-10-1','CSS','2025-04-10',NULL,1,'AS,wiremesh','A',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-04-10 11:41:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `startcsodate` date DEFAULT NULL,
  `endcsodate` date DEFAULT NULL,
  `idxno` int(2) NOT NULL,
  `csomaterial` varchar(100) DEFAULT NULL,
  `statusdoc` char(1) NOT NULL COMMENT 'P = FINAL CSO \r\nA = masih proses CSO  \r\nE = End waktu CSO',
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `typecekstok` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`trsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsheda`
--

LOCK TABLES `dbttrsheda` WRITE;
/*!40000 ALTER TABLE `dbttrsheda` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbttrsheda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxcsotype`
--

DROP TABLE IF EXISTS `dbxcsotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxcsotype` (
  `csotype` varchar(3) NOT NULL,
  `statuscekstok` char(1) DEFAULT 'R'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxcsotype`
--

LOCK TABLES `dbxcsotype` WRITE;
/*!40000 ALTER TABLE `dbxcsotype` DISABLE KEYS */;
INSERT INTO `dbxcsotype` VALUES ('CSO','R'),('CSS','R');
/*!40000 ALTER TABLE `dbxcsotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpor`
--

DROP TABLE IF EXISTS `dbximpor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpor` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
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
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan',
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
INSERT INTO `dbximpor` VALUES ('A113AR5J00000000',NULL,'A113AR5J00000000','AR 5J',NULL,NULL,NULL,NULL,NULL,'PCS',47164.63,36,'036',0,'','R',0,'2025-03-15 11:40:41',4.00),('A116D33B00000000',NULL,'A116D33B00000000','D 33 B',NULL,NULL,NULL,NULL,NULL,'PCS',141500.49,31,'031',0,'','R',0,'2025-03-15 11:40:41',10.00),('A121CSH300C00000',NULL,'A121CSH300C00000','CSH - 3C',NULL,NULL,NULL,NULL,NULL,'PCS',93720.74,21,'021',0,'','R',0,'2025-03-15 11:40:41',2.00);
/*!40000 ALTER TABLE `dbximpor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximporavalan`
--

DROP TABLE IF EXISTS `dbximporavalan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximporavalan` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `itemcode` varchar(255) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchid` int(10) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` float DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `subproductid` int(11) DEFAULT NULL,
  `subproductname` varchar(50) DEFAULT NULL,
  `statusitem` char(1) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan',
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp()
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
-- Table structure for table `dbximporcss`
--

DROP TABLE IF EXISTS `dbximporcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximporcss` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
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
INSERT INTO `dbximporcss` VALUES ('9999001',NULL,NULL,'Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TR',NULL,'2025-04-10 16:29:17',NULL),('A113AR5J00000000',NULL,'A113AR5J00000000','AR 5J',NULL,NULL,NULL,NULL,NULL,'PCS',47164.63,36,'036',0,'','R',0,'2025-04-10 11:38:18',58.00),('A113AS5J00000000',NULL,'A113AS5J00000000','AS 5J',NULL,NULL,NULL,NULL,NULL,'PCS',58636.48,36,'036',0,'','R',0,'2025-04-10 11:38:18',56.00),('I404ASL0116BGM00',NULL,'I404ASL0116BGM00','ASL 01-16B GM',NULL,NULL,NULL,NULL,NULL,'PCS',199069.80,231,'231',0,'','R',0,'2025-04-10 11:38:18',4.00),('V112BF02W0000000',NULL,'V112BF02W0000000','BASIN FAUCET 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',8865.58,311,'311',0,'','R',0,'2025-04-10 11:38:18',194.00),('V113AF02W0000000',NULL,'V113AF02W0000000','ANGLE FAUCET 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',3597.15,311,'311',0,'','R',0,'2025-04-10 11:38:18',226.00);
/*!40000 ALTER TABLE `dbximporcss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordet`
--

DROP TABLE IF EXISTS `dbximpordet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordet` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `batchid` int(11) DEFAULT NULL,
  `wrh` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordet`
--

LOCK TABLES `dbximpordet` WRITE;
/*!40000 ALTER TABLE `dbximpordet` DISABLE KEYS */;
INSERT INTO `dbximpordet` VALUES ('A113AR5J00000000',NULL,NULL,'BLI01G',3.00),('A113AR5J00000000',NULL,NULL,'BLI02G',1.00),('A121CSH300C00000',NULL,NULL,'BLI01G',1.00),('A121CSH300C00000',NULL,NULL,'BLI02G',1.00),('A116D33B00000000',NULL,NULL,'BLI01G',9.00),('A116D33B00000000',NULL,NULL,'BLI02G',1.00);
/*!40000 ALTER TABLE `dbximpordet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetavalan`
--

DROP TABLE IF EXISTS `dbximpordetavalan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetavalan` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) NOT NULL,
  `batchid` int(11) DEFAULT NULL,
  `wrh` varchar(10) DEFAULT NULL,
  `qty` float(10,2) NOT NULL
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
  `onhandbatch` decimal(10,3) DEFAULT NULL,
  `onhandsecbatch` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetbatchcss`
--

LOCK TABLES `dbximpordetbatchcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetbatchcss` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbximpordetbatchcss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbximpordetcss`
--

DROP TABLE IF EXISTS `dbximpordetcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbximpordetcss` (
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `wrh` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetcss`
--

LOCK TABLES `dbximpordetcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetcss` DISABLE KEYS */;
INSERT INTO `dbximpordetcss` VALUES ('V113AF02W0000000',NULL,'BLI01G',76.00),('V113AF02W0000000',NULL,'BLI05G',150.00),('A113AR5J00000000',NULL,'BLI01G',57.00),('A113AR5J00000000',NULL,'BLI02G',1.00),('A113AS5J00000000',NULL,'BLI01G',55.00),('A113AS5J00000000',NULL,'BLI02G',1.00),('I404ASL0116BGM00',NULL,'BLI01G',3.00),('I404ASL0116BGM00',NULL,'BLI02G',1.00),('V112BF02W0000000',NULL,'BLI01G',94.00),('V112BF02W0000000',NULL,'BLI05G',100.00),('9999001',NULL,'1',0.00);
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
  `typecekstok` varchar(5) DEFAULT 'CSO',
  `statuscekstok` char(1) DEFAULT 'R',
  `coyid` int(10) NOT NULL,
  `jobtypeid` int(1) NOT NULL COMMENT '1. pelaku 2. Analisator',
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxjob`
--

LOCK TABLES `dbxjob` WRITE;
/*!40000 ALTER TABLE `dbxjob` DISABLE KEYS */;
INSERT INTO `dbxjob` VALUES (12,99599,'askhid','askhid','CSO','R',1,1),(14,99908,'nigel','Nigel','CSO','R',1,2),(21,99785,'felix08403','Felix','CSO','R',1,2),(22,99872,'staffstok','staffstok','CSO','R',1,2),(50,99726,'testcso','Test CSO','CSO','R',1,1),(52,99623,'ertyu','ertyu','CSO','R',1,1),(53,99623,'ertyu','ertyu','CSS','R',1,1),(54,99599,'askhid','askhid','CSS','R',1,1),(55,99228,'kafac','kepala fac','CSS','R',1,2),(56,99749,'kawrh','kepala wrh','CSS','R',1,2),(57,99401,'regmen','regional manager','CSS','R',1,2);
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
  `statuscekstok` char(1) DEFAULT 'R'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxmaterial`
--

LOCK TABLES `dbxmaterial` WRITE;
/*!40000 ALTER TABLE `dbxmaterial` DISABLE KEYS */;
INSERT INTO `dbxmaterial` VALUES ('Plat SS304 & 316,AS','CSO','R'),('AS,wiremesh','CSS','R');
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
  `statuscekstok` char(1) DEFAULT 'R'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxsetdate`
--

LOCK TABLES `dbxsetdate` WRITE;
/*!40000 ALTER TABLE `dbxsetdate` DISABLE KEYS */;
INSERT INTO `dbxsetdate` VALUES ('2024-12-28','I',NULL,'R'),('2024-12-28','I',NULL,'R'),('2025-01-04','I','CSO','R'),('2025-02-20','I','CSS','R'),('2025-03-15','I','CSS','R'),('2025-03-15','I','CSO','R'),('2025-03-17','I','CSS','R'),('2025-03-17','I','CSS','R'),('2025-03-17','I','CSS','R'),('2025-03-17','I','CSS','R'),('2025-03-17','I','CSS','R'),('2025-04-10','I','CSS','R');
/*!40000 ALTER TABLE `dbxsetdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',3,'Personal Access Token','f75449e17457da2ae94ae396f1c35f8a8f8321d9b30e5fe1f55faa813357834a','[\"*\"]','2024-10-31 00:11:14',NULL,'2024-10-31 00:10:53','2024-10-31 00:11:14'),(2,'App\\Models\\User',13,'Personal Access Token','a175c2670f59584e6b9a19d8a3ce88fa3d9ff32e377ce318e1d64e702dfb4f14','[\"*\"]','2024-11-01 19:57:23',NULL,'2024-10-31 19:56:04','2024-11-01 19:57:23'),(3,'App\\Models\\User',13,'Personal Access Token','f1577553d7c1ba1af5ab372fcdbaf04875927b0ff27ec2c0fbc11f1dfc4e965d','[\"*\"]','2024-11-01 19:52:12',NULL,'2024-11-01 18:46:46','2024-11-01 19:52:12'),(4,'App\\Models\\User',13,'Personal Access Token','d4ba105261ed0fc75dcbbc72042b8bd3dc9202ddd12e5624ab120f8f38744c9c','[\"*\"]','2024-11-01 19:54:13',NULL,'2024-11-01 19:53:29','2024-11-01 19:54:13'),(5,'App\\Models\\User',16,'Personal Access Token','4dab2561b2d4e7b3847569de804490f8c7b2b294cedbbc89e6620b374b1369f2','[\"*\"]','2024-11-14 00:23:55',NULL,'2024-11-14 00:22:04','2024-11-14 00:23:55'),(6,'App\\Models\\User',2,'Personal Access Token','e1eacefdea3009479a6188af1953942158fd3abf909aaab0cf5eeb6cb6c44b56','[\"*\"]','2024-11-14 00:24:50',NULL,'2024-11-14 00:24:10','2024-11-14 00:24:50'),(7,'App\\Models\\User',16,'Personal Access Token','219859db15fc6d47a97aecb7d555a3609b0efa397560143d699125cbb3b268b7','[\"*\"]','2024-11-14 00:26:13',NULL,'2024-11-14 00:25:01','2024-11-14 00:26:13'),(8,'App\\Models\\User',16,'Personal Access Token','fecaf0ac1749998d2fc222afd49aa774889918535f85e76c93c474ceaa160a9b','[\"*\"]','2024-11-14 00:26:31',NULL,'2024-11-14 00:26:26','2024-11-14 00:26:31'),(9,'App\\Models\\User',2,'Personal Access Token','85827850fa038113fbeaf89c8030dbdf24ac32ffdbdd3dc5dcbbcd962ff29cc3','[\"*\"]','2024-11-14 00:28:37',NULL,'2024-11-14 00:26:40','2024-11-14 00:28:37'),(10,'App\\Models\\User',16,'Personal Access Token','a88c07067f0ad45a91085b8c4a955470a4e0793b23ef6e314bce147ad247261d','[\"*\"]','2024-11-14 00:30:21',NULL,'2024-11-14 00:29:05','2024-11-14 00:30:21'),(11,'App\\Models\\User',2,'Personal Access Token','c0c083c2c9df7e9ee4b6ea98db877da5f8f0006c27c49e8333af748954567fc3','[\"*\"]','2024-11-14 03:19:35',NULL,'2024-11-14 03:19:32','2024-11-14 03:19:35'),(12,'App\\Models\\User',16,'Personal Access Token','edba69564398db33dd99125efae860324b05797cfc8278042f6797f4aa86bc6a','[\"*\"]','2024-11-14 19:13:27',NULL,'2024-11-14 19:12:54','2024-11-14 19:13:27'),(13,'App\\Models\\User',2,'Personal Access Token','9731c1d8541f02da3e336ee5251dc551e2ff6c8c972714c7001be50e335b16d8','[\"*\"]',NULL,NULL,'2024-11-14 21:12:22','2024-11-14 21:12:22'),(14,'App\\Models\\User',3,'Personal Access Token','35c4dbb94f6d53a60fd693a292287f394cd192ac180f91ea45a573df42428bc3','[\"*\"]','2024-11-16 19:06:00',NULL,'2024-11-15 20:11:09','2024-11-16 19:06:00'),(15,'App\\Models\\User',3,'Personal Access Token','844537aac9bf56b79cdb2e3e91e588eaec8d5f3222c9f55b0bc831f93ca8b00b','[\"*\"]','2024-11-21 00:56:08',NULL,'2024-11-21 00:55:03','2024-11-21 00:56:08'),(16,'App\\Models\\User',27,'Personal Access Token','4e6010b8f36d2a74577a715fdcaa98d359afc3234c8347be83c2f393ce138237','[\"*\"]','2024-12-27 22:18:48',NULL,'2024-12-27 22:15:08','2024-12-27 22:18:48'),(17,'App\\Models\\User',24,'Personal Access Token','83eec6b067d9bdf78932b4346ab6dabfe539b755176a3e41ba16709f01ec0a7d','[\"*\"]','2024-12-30 01:39:53',NULL,'2024-12-29 19:54:41','2024-12-30 01:39:53'),(18,'App\\Models\\User',24,'Personal Access Token','5e72be4cb0e62bd754a71a8ce74f5f09d36909b34ea5f89469e7d5249e26a39b','[\"*\"]','2025-01-02 22:33:46',NULL,'2025-01-02 22:14:15','2025-01-02 22:33:46'),(19,'App\\Models\\User',25,'Personal Access Token','230fb97c137aab21b8ef0775f2b4eecd7703d3ac907547f3b1a7063c86159355','[\"*\"]','2025-01-02 23:13:00',NULL,'2025-01-02 22:33:58','2025-01-02 23:13:00'),(20,'App\\Models\\User',25,'Personal Access Token','8fc496490ae62ff3f9323dc48925b40be3486d632d275d8d29f3d05003cf50f0','[\"*\"]','2025-01-07 22:16:39',NULL,'2025-01-07 19:19:33','2025-01-07 22:16:39'),(21,'App\\Models\\User',25,'Personal Access Token','36c1e278e5e70771c1297b628d5d65c4951e857d7a62d27faeacc3392b1459e2','[\"*\"]','2025-01-20 01:55:42',NULL,'2025-01-20 01:39:54','2025-01-20 01:55:42'),(22,'App\\Models\\User',25,'Personal Access Token','365f944f9846110fdf542ad4800d096d1ec1e9681f25e17cdd3fb49b4ba1cd82','[\"*\"]','2025-01-21 21:48:29',NULL,'2025-01-21 21:18:59','2025-01-21 21:48:29'),(23,'App\\Models\\User',25,'Personal Access Token','281beaae963a5a8dee18d673e1206147355afc430cd2a62ef25031a1e70a8ff8','[\"*\"]','2025-01-22 00:16:27',NULL,'2025-01-21 21:48:42','2025-01-22 00:16:27'),(24,'App\\Models\\User',25,'Personal Access Token','eab878659a98a90a8ecc68e738bf70d8713ef8d1bd8d589711f78ccfaf679c22','[\"*\"]','2025-01-22 00:53:25',NULL,'2025-01-22 00:16:42','2025-01-22 00:53:25'),(25,'App\\Models\\User',27,'Personal Access Token','772dfcd47c0a904825265a7a182dcf8de9ab7807ae50dbf0510c6ce678e605db','[\"*\"]','2025-01-31 02:16:18',NULL,'2025-01-31 02:09:40','2025-01-31 02:16:18'),(26,'App\\Models\\User',25,'Personal Access Token','75719077ba0cb865bbd3dba5f4e15a1d01c5d485187578edf4969883e631b184','[\"*\"]','2025-02-04 21:43:42',NULL,'2025-02-04 21:43:31','2025-02-04 21:43:42'),(27,'App\\Models\\User',25,'Personal Access Token','3248f66ba393879b6371893c2a1c2b78e755d569d2f80380eddf36385368aeeb','[\"*\"]',NULL,NULL,'2025-02-04 21:44:00','2025-02-04 21:44:00'),(28,'App\\Models\\User',25,'Personal Access Token','6e2dc4289394c562f5312ae5d6c202d5684c91f4906e050018fd4f5bf7a39064','[\"*\"]','2025-02-04 21:59:16',NULL,'2025-02-04 21:44:00','2025-02-04 21:59:16'),(29,'App\\Models\\User',25,'Personal Access Token','8ad88aa8def7897da85e1dee453bfd535c424db0f66b315f8e0aba63d8f46228','[\"*\"]','2025-02-04 22:48:02',NULL,'2025-02-04 22:47:20','2025-02-04 22:48:02'),(30,'App\\Models\\User',24,'Personal Access Token','2061b452863b4811da5ac79d822c27aff48458f4288bd42c8c759fc3b4dc5354','[\"*\"]','2025-02-05 21:37:20',NULL,'2025-02-05 21:35:48','2025-02-05 21:37:20'),(31,'App\\Models\\User',25,'Personal Access Token','e9d307e8aa8957f4c583704ab9e5f5c8f91c81bcae5e3c408c34afa4b095f0a8','[\"*\"]','2025-02-05 23:02:36',NULL,'2025-02-05 21:37:49','2025-02-05 23:02:36'),(32,'App\\Models\\User',24,'Personal Access Token','deaefadc6dc5365449b85501ea64a2f4a74a252ab19ecaaac8785fe68f289b7a','[\"*\"]','2025-02-06 19:04:46',NULL,'2025-02-06 19:03:22','2025-02-06 19:04:46'),(33,'App\\Models\\User',25,'Personal Access Token','02ad76a68e49243f71cbb0f77d05d799e57b72c55dc596f2b08a5a55f80f80c2','[\"*\"]','2025-02-06 19:05:58',NULL,'2025-02-06 19:05:00','2025-02-06 19:05:58'),(34,'App\\Models\\User',25,'Personal Access Token','a2f4a63d8097bc953fd7639e86174021876bbe167c50d81afd1221511ba3faec','[\"*\"]','2025-02-09 20:33:45',NULL,'2025-02-09 19:15:16','2025-02-09 20:33:45'),(35,'App\\Models\\User',25,'Personal Access Token','d4ca04a6e46bb72f12eb62fba60baab6361a0d03c454931552b6ca20cf290d2d','[\"*\"]',NULL,NULL,'2025-02-09 19:56:15','2025-02-09 19:56:15'),(36,'App\\Models\\User',25,'Personal Access Token','1ee01bf1d7dfd767bd284050a65244ebcffead8453e859cba69326edccbb3581','[\"*\"]','2025-02-12 02:01:14',NULL,'2025-02-12 01:19:39','2025-02-12 02:01:14'),(37,'App\\Models\\User',25,'Personal Access Token','c98ad397924ee1686ea47f1464c4ce1eba867a5e16fbe7efb4c7b6344f4e937e','[\"*\"]','2025-02-19 20:07:23',NULL,'2025-02-19 19:51:52','2025-02-19 20:07:23'),(38,'App\\Models\\User',25,'Personal Access Token','8a3766067496d5cce5d3efab81833e244da726f546271cff37c998ebae6ec8f7','[\"*\"]','2025-02-19 20:09:57',NULL,'2025-02-19 20:07:39','2025-02-19 20:09:57'),(39,'App\\Models\\User',25,'Personal Access Token','6644e2bde19a326767b762a44d49676b488299e803617ccc434a407c6941c703','[\"*\"]','2025-02-25 19:46:05',NULL,'2025-02-25 19:05:06','2025-02-25 19:46:05'),(40,'App\\Models\\User',25,'Personal Access Token','3b46094fb96da7b28905ca05c7eecca423dec6f7aedfb8ba526bea97934cc331','[\"*\"]','2025-02-26 01:34:15',NULL,'2025-02-25 20:54:32','2025-02-26 01:34:15'),(41,'App\\Models\\User',25,'Personal Access Token','0335b3fc2578dfe06769ed5adae97f4d09e053ccb5837620fdcc3918bb27f4f4','[\"*\"]',NULL,NULL,'2025-03-06 01:20:12','2025-03-06 01:20:12'),(42,'App\\Models\\User',25,'Personal Access Token','a22c82af7e7f11898a4979a5e288e3463dad7e8bf184281884275ebb76d4f605','[\"*\"]',NULL,NULL,'2025-03-06 01:21:13','2025-03-06 01:21:13'),(43,'App\\Models\\User',25,'Personal Access Token','214c6211608405cbd5e0a535e3ae8efb56c07ae3582f1fe3b5f42558b05e363f','[\"*\"]',NULL,NULL,'2025-03-06 01:22:01','2025-03-06 01:22:01'),(44,'App\\Models\\User',25,'Personal Access Token','f1eecc746231b9b60c899260b5d783c2506dd13041e7b713e1dd71083ce82230','[\"*\"]',NULL,NULL,'2025-03-06 02:33:23','2025-03-06 02:33:23'),(45,'App\\Models\\User',25,'Personal Access Token','ef10695499182f1e5ecf3663cb1dfbf2083a8b49c507568121c0484dda9eca30','[\"*\"]',NULL,NULL,'2025-03-06 02:34:14','2025-03-06 02:34:14'),(46,'App\\Models\\User',27,'Personal Access Token','fe721cea147dceecf9134435dbd4e2b9e983c74105966bc925e669c40bf57d0a','[\"*\"]','2025-03-12 23:55:33',NULL,'2025-03-12 23:55:25','2025-03-12 23:55:33'),(47,'App\\Models\\User',27,'Personal Access Token','62e6e622d95994f8a52df3e20697d6f585efaabeac6802b54b35d9aa9be2aceb','[\"*\"]','2025-03-12 23:56:10',NULL,'2025-03-12 23:55:48','2025-03-12 23:56:10'),(48,'App\\Models\\User',30,'Personal Access Token','a605a2e1127f9f1a05f0fab2aef6b82b7d63583c7eca5d6632e32ca68b451c7a','[\"*\"]','2025-03-13 00:06:47',NULL,'2025-03-12 23:57:21','2025-03-13 00:06:47'),(49,'App\\Models\\User',27,'Personal Access Token','4489b1b415b422cbbf9cc6626947bf27a5c33a15764f123cc00ccfc2b69cf0d5','[\"*\"]','2025-03-13 00:11:22',NULL,'2025-03-13 00:08:24','2025-03-13 00:11:22'),(50,'App\\Models\\User',30,'Personal Access Token','a016d2948710b2b6e10093ca87757083782253be2358a21efa50e55aaf1cfd33','[\"*\"]','2025-03-13 00:39:55',NULL,'2025-03-13 00:11:34','2025-03-13 00:39:55'),(51,'App\\Models\\User',27,'Personal Access Token','29f62cb598acc550d86a9e5f114b7ee4aaa3aed45e9097cdff9f48c67808477c','[\"*\"]','2025-03-13 00:43:25',NULL,'2025-03-13 00:40:01','2025-03-13 00:43:25'),(52,'App\\Models\\User',25,'Personal Access Token','8dccf3731f3f52269f38d9749454c7a40a1b82aed7531c4ca13e69ce2bf0619a','[\"*\"]','2025-03-14 19:42:37',NULL,'2025-03-14 19:41:50','2025-03-14 19:42:37'),(53,'App\\Models\\User',25,'Personal Access Token','ec829c7ea76153774c639b713912fe607abcc1b637659eddfc0808d151d88131','[\"*\"]','2025-03-14 22:51:02',NULL,'2025-03-14 21:49:45','2025-03-14 22:51:02'),(54,'App\\Models\\User',25,'Personal Access Token','b07983ebdfa7fa77389f3221c567a788c2b24e7f1ed51c855664eebf7de3bf22','[\"*\"]','2025-03-16 21:04:06',NULL,'2025-03-14 21:55:04','2025-03-16 21:04:06'),(55,'App\\Models\\User',25,'Personal Access Token','f140af5b03fe73ee3a61e63d25888bf42aeb15bcdf604f179fc111e5d8a2a0a9','[\"*\"]','2025-03-16 23:22:04',NULL,'2025-03-14 23:12:42','2025-03-16 23:22:04'),(56,'App\\Models\\User',25,'Personal Access Token','2155886a2e88459acf1c2c489a7a6d7f2011287621c3953fe1d1a7382c955317','[\"*\"]','2025-03-17 00:33:15',NULL,'2025-03-16 23:37:53','2025-03-17 00:33:15'),(57,'App\\Models\\User',24,'Personal Access Token','c4854082f73765ac15eff998eae95a48f6ba3cb073f82d40a3573993a6190525','[\"*\"]','2025-03-18 20:19:57',NULL,'2025-03-18 20:19:50','2025-03-18 20:19:57'),(58,'App\\Models\\User',25,'Personal Access Token','2bf6f4083564c2ccc59a2047a42f335cc4c79fe35529e70a761edae4e2e09e3f','[\"*\"]','2025-04-09 19:13:46',NULL,'2025-04-09 19:13:26','2025-04-09 19:13:46'),(59,'App\\Models\\User',25,'Personal Access Token','b8751cb257187a4c21bef19c9a526d932281f5d0ea2b641d2845b2b78878eb28','[\"*\"]','2025-04-10 00:17:35',NULL,'2025-04-09 19:14:03','2025-04-10 00:17:35'),(60,'App\\Models\\User',25,'Personal Access Token','4ff033a95536b86aa023667fc99e59d0e144ef57a7739a51c9fe771d621d8596','[\"*\"]','2025-04-10 00:30:34',NULL,'2025-04-09 19:28:27','2025-04-10 00:30:34'),(61,'App\\Models\\User',25,'Personal Access Token','632688be84f224b3415729b6880dcd6c43618d6f5c4041ceb3239deeec48add9','[\"*\"]','2025-04-09 23:49:56',NULL,'2025-04-09 23:23:27','2025-04-09 23:49:56'),(62,'App\\Models\\User',25,'Personal Access Token','965db049583b1e275da711c170f49e2f8a08ef3f9db19c977f1f3b99ff9e1c6a','[\"*\"]','2025-04-10 19:29:32',NULL,'2025-04-10 02:24:52','2025-04-10 19:29:32'),(63,'App\\Models\\User',25,'Personal Access Token','8a7815f9b53f304875614e1b9a4271c506e852dd0c366257eb7ed9eaa0fd8651','[\"*\"]',NULL,NULL,'2025-04-11 02:12:36','2025-04-11 02:12:36'),(64,'App\\Models\\User',25,'Personal Access Token','5a3a02e1b61d0f6c67ddcf6695a80ff522a8332caf5c4b2b60f94e3657ed7502','[\"*\"]','2025-04-20 20:58:53',NULL,'2025-04-20 20:47:27','2025-04-20 20:58:53'),(65,'App\\Models\\User',25,'Personal Access Token','f383da36bebad936d2d5d5ac1fbab43a77cc2a0a79857c3e4dcede7802adc378','[\"*\"]','2025-04-20 21:03:59',NULL,'2025-04-20 21:02:44','2025-04-20 21:03:59'),(66,'App\\Models\\User',25,'Personal Access Token','cd05c23da03b30384a552f193aab8e7216d8be1796a84bf06e0f21c303d4d7f2','[\"*\"]','2025-04-21 01:52:51',NULL,'2025-04-20 21:06:37','2025-04-21 01:52:51');
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
-- Dumping events for database 'SOS_DEV_SAP'
--

--
-- Dumping routines for database 'SOS_DEV_SAP'
--
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
	AND d.statussubmit = 'P'
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
		`td`.`statuscso`
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
WITH total_cso AS (
select
	d.itemid,
	d.trsdetid,
	cast(sum(d2.qty) as float) AS qtytot,
	d2.csocount,
	d2.history
from
	dbtcsodet d
join dbtcsodet2 d2 on
	d.csodetid = d2.csodetid
join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	and h.tipecso = 'R'
	and `d`.`trsdetid` = paramTrsDetId
group by
	d.trsdetid,
	d2.csocount
)
SELECT
    `u`.`name` AS `name`,
    `u`.`username` AS `username`,
    `cd`.`itemid` AS `itemid`,
    `th`.`typecekstok` AS `typecekstok`,
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
    `cso1`.qtytot as cso1,
    `cso2`.qtytot as cso2,
    `cso3`.qtytot as cso3,
    `cso4`.qtytot as cso4,
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
	left join total_cso cso1 ON cso1.trsdetid = cd.trsdetid AND cso1.csocount =1
	left join total_cso cso2 ON cso2.trsdetid = cd.trsdetid AND cso2.csocount =2
	left join total_cso cso3 ON cso3.trsdetid = cd.trsdetid AND cso3.csocount =3
	left join total_cso cso4 ON cso4.trsdetid = cd.trsdetid AND cso4.csocount =4
where
    `ch`.`status` = 'A'
    and `ch`.`tipecso` = 'R'
    and `th`.`statusdoc` <> 'P'
    and `cd`.`statussubmit` = 'P'
     and `cd`.`trsdetid` = paramTrsDetId
   order by name, itemid;
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
				dbtcsodet2.qty
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
				group_concat(qty separator '; ') as locqty,
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
				dbtcsodet2.qty
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
				group_concat(qty separator '; ') as locqty
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
				dbtcsodet2.qty
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
				group_concat(qty separator '; ') as locqty
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
	dbttrsdeta.onhand,
	dbtcsodet.csoid ,
	dbttrsdeta.createddate,
	(
	select
		group_concat(dbmuser.name separator ', ') AS 'name'
	from
		dbmuser
	inner join dbtcsohed on
		dbmuser.userid = dbtcsohed.pelakuid
	where
		dbtcsohed.trsid = `paramTrsid`) as 'pelaku',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0) + +COALESCE(dbttrsdeta.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "1"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	)  as 'qtycso1',
	(
	select
		dbmlocation.locationname
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	inner join dbmlocation on
		dbtcsodet.locationid = dbmlocation.locationid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "1"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	GROUP BY dbtcsodet.trsdetid  
	) as 'loctcso1',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0) + +COALESCE(dbttrsdeta.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "2"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	) as 'qtycso2',
	(
	select
		dbmlocation.locationname
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	inner join dbmlocation on
		dbtcsodet.locationid = dbmlocation.locationid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "2"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	GROUP BY dbtcsodet.trsdetid  ) as 'loctcso2',
		(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0) + +COALESCE(dbttrsdeta.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "3"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	) as 'qtycso3',
	(
	select
		dbmlocation.locationname
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	inner join dbmlocation on
		dbtcsodet.locationid = dbmlocation.locationid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "3"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	GROUP BY dbtcsodet.trsdetid  ) as 'loctcso3',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdeta.deviasi, 0) + +COALESCE(dbttrsdeta.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdeta.trsdetid 
		and dbtcsodet2.csocount = "4"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
	) as 'trace'
from
	dbttrsdeta
left join dbttrsdet2a on
	dbttrsdeta.trsdetid = dbttrsdet2a.trsdet2id
left join dbmuser on
	dbmuser.userid = dbttrsdeta.analisatorid
inner join dbtcsodet on dbtcsodet.trsdetid  = dbttrsdeta.trsdetid
where
	dbttrsdeta.trsid = `paramTrsid`
	AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
group by
	dbttrsdeta.trsdetid;
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
		(d2.qty) - coalesce(tot.qtytot,0) as selisih,
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
		AND (d2.qty) - coalesce(tot.qtytot,0) <>0 
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
	),
	item AS(
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
	select
	(
	select
		COUNT(distinct(dbttrsdeta.trsdetid))
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	left join dbtcsodet on
		dbtcsodet.itembatchid = dbttrsdeta.itembatchid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) > 0
	) as item 
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = 0
	) as item 
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) > dbttrsdeta.onhand
	) as item ) as 'item_selisih_plus',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) < dbttrsdeta.onhand
	) as item ) as 'item_selisih_minus',
	(
	select
		COUNT(distinct dbttrsdeta.trsdetid)
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
		AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
		and not (coalesce(dbttrsdeta.groupid , 0) = 0)) as 'tertukar',
(
	select
		COUNT(distinct dbttrsdeta.trsdetid)
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
		AND COALESCE(dbttrsdeta.groupid, 0) = 0
		and not (coalesce(dbttrsdeta.batch_tertukar, 0) = 0)) as 'beda_batch',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
	) as item ) as 'item_ok',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
			and coalesce(dbttrsdeta.kesalahan_admin, 0) = 1
			and not dbttrsdeta.onhand = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
	) as item ) as 'kesalahan_admin_ok',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			and not dbttrsdeta.onhand = 0
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
	) as item ) as 'faktor_gudang_ok',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			and not dbttrsdeta.onhand = 0
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
	) as item ) as 'item_selisih',
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
			dbttrsdeta.deviasi 			
		from
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
			and not dbttrsdeta.onhand = 0
			and coalesce(dbttrsdeta.kesalahan_admin, 0) = 1
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
	) as item ) as 'kesalahan_admin_selisih',
	
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
		dbttrsdeta.deviasi
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	left join dbtcsodet on
		dbtcsodet.itembatchid = dbttrsdeta.itembatchid
	left join dbtcsodet2 on
		dbtcsodet2.csodetid = dbtcsodet.csodetid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND dbtcsodet2.csocount = (
		SELECT
			MAX(dbtcsodet2.csocount)
		FROM
			dbtcsodet
		INNER JOIN dbtcsodet2 ON
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		WHERE
			dbtcsodet.itembatchid = dbttrsdeta.itembatchid
			)
		and not dbttrsdeta.onhand = 0
		and coalesce(dbttrsdeta.kesalahan_admin, 0) = 0
		AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
		AND COALESCE(dbttrsdeta.groupid, 0) = 0
	GROUP BY
		dbttrsdeta.trsdetid
	HAVING
		SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
	) as item ) as 'faktor_gudang_selisih';
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
CREATE DEFINER=`dev`@`%` PROCEDURE `RekapitulasiHasilCssAvalan`()
BEGIN
	select
	date(dbttrsdeta.createddate) as `tanggal_import`,
	(
	select
		COUNT(dbttrsdeta.trsdetid)
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			)			
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) > 0
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
		AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
		and not (coalesce(dbttrsdeta.groupid , 0) = 0)
		AND date(dbttrsdeta.createddate) = `tanggal_import`
	) as 'tertukar',
	(
	select
		COUNT(distinct dbttrsdeta.trsdetid)
	from
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
		AND COALESCE(dbttrsdeta.groupid, 0) = 0
		and not (coalesce(dbttrsdeta.batch_tertukar, 0) = 0)
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			)
			and not dbttrsdeta.onhand = 0
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
			dbttrsheda
		inner join dbttrsdeta on
			dbttrsheda.trsid = dbttrsdeta.trsid
		left join dbtcsodet on
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
		left join dbtcsodet2 on
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		where
			dbttrsdeta.trsid = paramTrsid
			and NOT dbttrsheda.statusdoc = "A"
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			AND dbtcsodet2.csocount = (
				SELECT
					MAX(dbtcsodet2.csocount)
				FROM
					dbtcsodet
				INNER JOIN dbtcsodet2 ON
					dbtcsodet2.csodetid = dbtcsodet.csodetid
				WHERE
					dbtcsodet.trsdetid = dbttrsdeta.trsdetid
					AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			)
			and not dbttrsdeta.onhand = 0
			and coalesce(dbttrsdeta.kesalahan_admin, 0) = 1
		GROUP BY dbttrsdeta.trsdetid
		HAVING
			SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) = dbttrsdeta.onhand
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
		dbttrsheda
	inner join dbttrsdeta on
		dbttrsheda.trsid = dbttrsdeta.trsid
	left join dbtcsodet on
		dbtcsodet.trsdetid = dbttrsdeta.trsdetid
	left join dbtcsodet2 on
		dbtcsodet2.csodetid = dbtcsodet.csodetid
	where
		dbttrsdeta.trsid = paramTrsid
		and NOT dbttrsheda.statusdoc = "A"
		AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
		AND dbtcsodet2.csocount = (
		SELECT
			MAX(dbtcsodet2.csocount)
		FROM
			dbtcsodet
		INNER JOIN dbtcsodet2 ON
			dbtcsodet2.csodetid = dbtcsodet.csodetid
		WHERE
			dbtcsodet.trsdetid = dbttrsdeta.trsdetid
			AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')
			)
		and not dbttrsdeta.onhand = 0
	GROUP BY
		dbttrsdeta.trsdetid
	HAVING
		SUM(COALESCE(dbtcsodet2.qty , 0)) + (coalesce(dbttrsdeta.koreksi , 0)) + coalesce(dbttrsdeta.deviasi , 0) <> dbttrsdeta.onhand
	) as item 
	WHERE 
		date(item.createddate) = `tanggal_import`
	) as 'faktor_gudang_selisih'
FROM dbttrsdeta
WHERE dbttrsdeta.trsid = paramTrsid
GROUP BY date(dbttrsdeta.createddate);
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
select
    `y`.`trsdetid` as `trsdetid`,
    `y`.`itemid` as `itemid`,
    `y`.`itemcode` as `itemcode`,
    `y`.`itemname` as `itemname`,
    `y`.`batchno` as `batchno`,
    `y`.`dimension` as `dimension`,
    `y`.`tolerance` as `tolerance`,
    `y`.`onhand` as `onhand`,
    `y`.`cogs` as `cogs`,
    `y`.`cogs_manual` as `cogs_manual`,
    `y`.`selisihplus` as `selisihplus`,
    `y`.`selisihmin` as `selisihmin`,
    `y`.`totalcso` as `totalcso`,
    `y`.`nominalplus` as `nominalplus`,
    `y`.`nominalmin` as `nominalmin`,
    `y`.`status` as `status`,
    `y`.`statusname` as `statusname`,
    `y`.`koreksi` as `koreksi`,
    `y`.`deviasi` as `deviasi`,
    `y`.`statuscso` as `statuscso`,
    `y`.`groupid` as `groupid`,
    `y`.`groupdesc` as `groupdesc`,
    `y`.`analisator` as `analisator`,
    `y`.`analisatorid` as `analisatorid`,
    `y`.`keterangan` as `keterangan`,
    `y`.`keputusan` as `keputusan`,
    `y`.`pembebanan` as `pembebanan`,
    `y`.`nodoc` as `nodoc`
from
    (
    select
        distinct x.trsid as trsid,
        `x`.`trsdetid` as `trsdetid`,
        `x`.`itemid` as `itemid`,
        `x`.`itemcode` as `itemcode`,
        `x`.`itemname` as `itemname`,
        `x`.`batchno` as `batchno`,
        `x`.`dimension` as `dimension`,
        `x`.`tolerance` as `tolerance`,
        `x`.`onhand` as `onhand`,
        `x`.`cogs` as `cogs`,
        `x`.`cogs_manual` as `cogs_manual`,
        `x`.`kesalahan_admin` as `kesalahan_admin`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) as `selisihplus`,
        0 as `selisihmin`,
        `x`.`totalcso` as `totalcso`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalplus`,
        0 as `nominalmin`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 1
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 2
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 3
            else 0
        end as `status`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'proses'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'selisih +'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'selesai'
            else 'belum'
        end as `statusname`,
        `x`.`koreksi` as `koreksi`,
        `x`.`deviasi` as `deviasi`,
        `x`.`statuscso` as `statuscso`,
        `x`.`groupid` as `groupid`,
        `x`.`groupdesc` as `groupdesc`,
        `x`.`analisator` as `analisator`,
        `x`.`analisatorid` as `analisatorid`,
        `x`.`keterangan` as `keterangan`,
        `x`.`keputusan` as `keputusan`,
        `x`.`pembebanan` as `pembebanan`,
        `x`.`nodoc` as `nodoc`
    from
        (
        select
            distinct `td`.`trsdetid` as `trsdetid`,
            `td`.`trsid` as `trsid`,
            `l`.`trsid` as `id`,
            `td`.`itemid` as `itemid`,
            `td`.`itemcode` as `itemcode`,
            `td`.`itemname` as `itemname`,
            `td`.`batchno` as `batchno`,
            `td`.`dimension` as `dimension`,
            `td`.`tolerance` as `tolerance`,
            `td`.`onhand` as `onhand`,
            `j`.`name` as `analisator`,
            `j`.`userid` as `analisatorid`,
            case
                when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
                when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
                when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
                when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
                else 0
            end as `totalcso`,
            ifnull(`td`.`koreksi`, 0) as `koreksi`,
            ifnull(`td`.`deviasi`, 0) as `deviasi`,
            ifnull(`td`.`statuscso`, 0) as `statuscso`,
            `td`.`cogs` as `cogs`,
            `td`.`cogs_manual` as `cogs_manual`,
            `td`.`kesalahan_admin` as `kesalahan_admin`,
            `td`.`keterangan` as `keterangan`,
            `th`.`statusdoc` as `statusdoc`,
            `td`.`groupid` as `groupid`,
            0 as `0`,
            `g`.`groupdesc` as `groupdesc`,
            `td`.`keputusan` as `keputusan`,
            `td`.`pembebanan` as `pembebanan`,
            `td`.`nodoc` as `nodoc`
        from
            (((((((((`SOS`.`dbttrsdeta` `td`
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`,
                `SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `SOS`.`dbttrsheda`
            where
                `SOS`.`dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`SOS`.`dbtcsodet` `d`
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d`.`statussubmit` = 'P'
                and `h`.`status` = 'A') `cd` on
            (`cd`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 1
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso1` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 2
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso2` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 3
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso3` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `SOS`.`dbxjob`.`userid` as `userid`,
                `SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
                `SOS`.`dbxjob`.`name` as `name`
            from
                `SOS`.`dbxjob`
            where
                `SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `SOS`.`dbmgroup`.`groupid` as `groupid`,
                `SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
                `SOS`.`dbmgroup`.`created_at` as `createddate`,
                `SOS`.`dbmgroup`.`created_by` as `createdby`,
                `SOS`.`dbmgroup`.`updated_at` as `updateddate`,
                `SOS`.`dbmgroup`.`updated_by` as `updatedby`
            from
                `SOS`.`dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`
            from
                `SOS`.`dbttrsheda`
            order by
                `SOS`.`dbttrsheda`.`trsid` desc
            limit 1) `l` on
            (`l`.`trsid` = `td`.`trsid`))) `x`
    where
        `x`.`trsid` = `x`.`id`
        and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) > 0
union
    select
        distinct `x`.`trsdetid` as `trsdetid`,
        x.trsid as 'trsid',
        `x`.`itemid` as `itemid`,
        `x`.`itemcode` as `itemcode`,
        `x`.`itemname` as `itemname`,
        `x`.`batchno` as `batchno`,
        `x`.`dimension` as `dimension`,
        `x`.`tolerance` as `tolerance`,
        `x`.`onhand` as `onhand`,
        `x`.`cogs` as `cogs`,
        `x`.`cogs_manual` as `cogs_manual`,
        `x`.`kesalahan_admin` as `kesalahan_admin`,
        0 as `selisihplus`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) as `selisihmin`,
        `x`.`totalcso` as `totalcso`,
        0 as `nominalplus`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalmin`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 1
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 2
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 3
            else 0
        end as `status`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'proses'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'selisih +'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'selesai'
            else 'belum'
        end as `statusname`,
        `x`.`koreksi` as `koreksi`,
        `x`.`deviasi` as `deviasi`,
        `x`.`statuscso` as `statuscso`,
        `x`.`groupid` as `groupid`,
        `x`.`groupdesc` as `groupdesc`,
        `x`.`analisator` as `analisator`,
        `x`.`analisatorid` as `analisatorid`,
        `x`.`keterangan` as `keterangan`,
        `x`.`keputusan` as `keputusan`,
        `x`.`pembebanan` as `pembebanan`,
        `x`.`nodoc` as `nodoc`
    from
        (
        select
            distinct `td`.`trsdetid` as `trsdetid`,
            `td`.`trsid` as `trsid`,
            `l`.`trsid` as `id`,
            `td`.`itemid` as `itemid`,
            `td`.`itemcode` as `itemcode`,
            `td`.`itemname` as `itemname`,
            `td`.`batchno` as `batchno`,
            `td`.`dimension` as `dimension`,
            `td`.`tolerance` as `tolerance`,
            `td`.`onhand` as `onhand`,
            `j`.`name` as `analisator`,
            `j`.`userid` as `analisatorid`,
            case
                when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
                when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
                when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
                when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
                else 0
            end as `totalcso`,
            ifnull(`td`.`koreksi`, 0) as `koreksi`,
            ifnull(`td`.`deviasi`, 0) as `deviasi`,
            ifnull(`td`.`statuscso`, 0) as `statuscso`,
             ifnull(`td`.`cogs`, 0) as `cogs`,
            ifnull(`td`.`cogs_manual`, 0) as `cogs_manual`,
            `td`.`kesalahan_admin` as `kesalahan_admin`,
            `td`.`keterangan` as `keterangan`,
            `th`.`statusdoc` as `statusdoc`,
            `td`.`groupid` as `groupid`,
            `g`.`groupdesc` as `groupdesc`,
            `td`.`keputusan` as `keputusan`,
            `td`.`pembebanan` as `pembebanan`,
            `td`.`nodoc` as `nodoc`
        from
            (((((((((`SOS`.`dbttrsdeta` `td`
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`,
                `SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `SOS`.`dbttrsheda`
            where
                `SOS`.`dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`SOS`.`dbtcsodet` `d`
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d`.`statussubmit` = 'P'
                and `h`.`status` = 'A') `cd` on
            (`cd`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 1
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso1` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 2
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso2` on
            (`cso2`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 3
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso3` on
            (`cso3`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso4`.`itemid` = `td`.`itemid`))
        left join (
            select
                `SOS`.`dbxjob`.`userid` as `userid`,
                `SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
                `SOS`.`dbxjob`.`name` as `name`
            from
                `SOS`.`dbxjob`
            where
                `SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `SOS`.`dbmgroup`.`groupid` as `groupid`,
                `SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
                `SOS`.`dbmgroup`.`created_at` as `createddate`,
                `SOS`.`dbmgroup`.`created_by` as `createdby`,
                `SOS`.`dbmgroup`.`updated_at` as `updateddate`,
                `SOS`.`dbmgroup`.`updated_by` as `updatedby`
            from
                `SOS`.`dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`
            from
                `SOS`.`dbttrsheda`
            order by
                `SOS`.`dbttrsheda`.`trsid` desc
            limit 1) `l` on
            (`l`.`trsid` = `td`.`trsid`))) `x`
    where
        `x`.`trsid` = `x`.`id`
        and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) < 0) `y`
        inner join dbttrsheda th on th.trsid=y.trsid
WHERE th.statusdoc = 'E' AND (COALESCE(`y`.`kesalahan_admin`, 0) = 1)
order by
    `y`.`itemname`;
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
select
y.trsid as trsid,
	`y`.`trsdetid` as `trsdetid`,
	`y`.`itembatchid` as `itembatchid`,
	`y`.`itemcode` as `itemcode`,
	`y`.`itemname` as `itemname`,
	`y`.`batchno` as `batchno`,
	`y`.`dimension` as `dimension`,
	`y`.`tolerance` as `tolerance`,
	`y`.`onhand` as `onhand`,
	`y`.`cogs` as `cogs`,
	`y`.`cogs_manual` as `cogs_manual`,
	`y`.`selisihplus` as `selisihplus`,
	`y`.`selisihmin` as `selisihmin`,
	`y`.`totalcso` as `totalcso`,
	`y`.`nominalplus` as `nominalplus`,
	`y`.`nominalmin` as `nominalmin`,
	`y`.`status` as `status`,
	`y`.`statusname` as `statusname`,
	`y`.`koreksi` as `koreksi`,
	`y`.`deviasi` as `deviasi`,
	`y`.`statuscso` as `statuscso`,
	`y`.`groupid` as `groupid`,
	`y`.`groupdesc` as `groupdesc`,
	`y`.`analisator` as `analisator`,
	`y`.`analisatorid` as `analisatorid`,
	`y`.`keterangan` as `keterangan`,
	`y`.`keputusan` as `keputusan`,
	`y`.`pembebanan` as `pembebanan`,
	`y`.`nodoc` as `nodoc`
from
	(
	select
		distinct x.trsid as trsid,
		`x`.`trsdetid` as `trsdetid`,
		`x`.`itembatchid` as `itembatchid`,
		`x`.`itemcode` as `itemcode`,
		`x`.`itemname` as `itemname`,
		`x`.`batchno` as `batchno`,
		`x`.`dimension` as `dimension`,
		`x`.`tolerance` as `tolerance`,
		`x`.`onhand` as `onhand`,
		`x`.`cogs` as `cogs`,
		`x`.`cogs_manual` as `cogs_manual`,
		`x`.`kesalahan_admin` as `kesalahan_admin`,
		`x`.`batch_tertukar` as `batch_tertukar`,
		ifnull((`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`)-`x`.`onhand`, 0) as `selisihplus`,
		0 as `selisihmin`,
		`x`.`totalcso` as `totalcso`,
		ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalplus`,
		0 as `nominalmin`,
		case
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 1
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 2
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 3
			else 0
		end as `status`,
		case
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 'proses'
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 'selisih +'
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
			and (`x`.`totalcso` <> 0
			or `x`.`koreksi` <> 0
			or `x`.`deviasi` <> 0) then 'selesai'
			else 'belum'
		end as `statusname`,
		`x`.`koreksi` as `koreksi`,
		`x`.`deviasi` as `deviasi`,
		`x`.`statuscso` as `statuscso`,
		`x`.`groupid` as `groupid`,
		`x`.`groupdesc` as `groupdesc`,
		`x`.`analisator` as `analisator`,
		`x`.`analisatorid` as `analisatorid`,
		`x`.`keterangan` as `keterangan`,
		`x`.`keputusan` as `keputusan`,
		`x`.`pembebanan` as `pembebanan`,
		`x`.`nodoc` as `nodoc`
	from
		(
		select
			distinct 
			`td`.`trsid` as `trsid`,
			`td`.`trsdetid` as `trsdetid`,
			`l`.`trsid` as `id`,
			`td`.`itembatchid` as `itembatchid`,
			`td`.`itemcode` as `itemcode`,
			`td`.`itemname` as `itemname`,
			`td`.`batchno` as `batchno`,
			`td`.`dimension` as `dimension`,
			`td`.`tolerance` as `tolerance`,
			`td`.`onhand` as `onhand`,
			`j`.`name` as `analisator`,
			`j`.`userid` as `analisatorid`,
			case
				when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
				when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
				when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
				when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
				else 0
			end as `totalcso`,
			ifnull(`td`.`koreksi`, 0) as `koreksi`,
			ifnull(`td`.`deviasi`, 0) as `deviasi`,
			ifnull(`td`.`statuscso`, 0) as `statuscso`,
			`td`.`cogs` as `cogs`,
			`td`.`cogs_manual` as `cogs_manual`,
			`td`.`kesalahan_admin` as `kesalahan_admin`,
			`td`.batch_tertukar  as `batch_tertukar`,
			`td`.`keterangan` as `keterangan`,
			`th`.`statusdoc` as `statusdoc`,
			`td`.`groupid` as `groupid`,
			0 as `0`,
			`g`.`groupdesc` as `groupdesc`,
			`td`.`keputusan` as `keputusan`,
			`td`.`pembebanan` as `pembebanan`,
			`td`.`nodoc` as `nodoc`
		from
			(((((((((`SOS`.`dbttrsdeta` `td`
		left join (
			select
				`SOS`.`dbttrsheda`.`trsid` as `trsid`,
				`SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
			from
				`SOS`.`dbttrsheda`
			where
				`SOS`.`dbttrsheda`.`statusdoc` <> 'P') `th` on
			(`th`.`trsid` = `td`.`trsid`))
		left join (
			select
				`d`.`csodetid` as `csodetid`,
				`h`.`csoid` as `csoid`,
				`d`.`itembatchid` as `itembatchid`
			from
				(`SOS`.`dbtcsodet` `d`
			join `SOS`.`dbtcsohed` `h` on
				(`h`.`csoid` = `d`.`csoid`))
			where
				`d`.`statussubmit` = 'P'
				and `h`.`status` = 'A' and tipecso='A') `cd` on
			(`cd`.`itembatchid` = `td`.`itembatchid`))
		left join (select * from totalcso1 Where tipecso='A') `cso1` on
			(`cso1`.`itembatchid` = `td`.`itembatchid`))
		left join (select * from totalcso2 Where tipecso='A') `cso2` on
			(`cso2`.`itembatchid` = `td`.`itembatchid`))
		left join (select * from totalcso3 Where tipecso='A') `cso3` on
			(`cso3`.`itembatchid` = `td`.`itembatchid`))
		left join (select * from totalcso4 Where tipecso='A') `cso4` on
			(`cso4`.`itembatchid` = `td`.`itembatchid`))
		left join (
			select
				`SOS`.`dbxjob`.`userid` as `userid`,
				`SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
				`SOS`.`dbxjob`.`name` as `name`
			from
				`SOS`.`dbxjob`
			where
				`SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
			(`j`.`userid` = `td`.`analisatorid`))
		left join (
			select
				`SOS`.`dbmgroup`.`groupid` as `groupid`,
				`SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
				`SOS`.`dbmgroup`.`created_at` as `createddate`,
				`SOS`.`dbmgroup`.`created_by` as `createdby`,
				`SOS`.`dbmgroup`.`updated_at` as `updateddate`,
				`SOS`.`dbmgroup`.`updated_by` as `updatedby`
			from
				`SOS`.`dbmgroup`) `g` on
			(`g`.`groupid` = `td`.`groupid`))
		left join (
			select
				`SOS`.`dbttrsheda`.`trsid` as `trsid`
			from
				`SOS`.`dbttrsheda`
			order by
				`SOS`.`dbttrsheda`.`trsid` desc
			limit 1) `l` on
			(`l`.`trsid` = `td`.`trsid`))) `x`
where
	`x`.`trsid` = `x`.`id`and 
		ifnull((`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`)-`x`.`onhand`, 0) > 0
union

	select
		distinct 
		x.trsid as trsid,
		`x`.`trsdetid` as `trsdetid`,
		`x`.`itembatchid` as `itembatchid`,
		`x`.`itemcode` as `itemcode`,
		`x`.`itemname` as `itemname`,
		`x`.`batchno` as `batchno`,
		`x`.`dimension` as `dimension`,
		`x`.`tolerance` as `tolerance`,
		`x`.`onhand` as `onhand`,
		`x`.`cogs` as `cogs`,
		`x`.`cogs_manual` as `cogs_manual`,
		`x`.`kesalahan_admin` as `kesalahan_admin`,
		x.batch_tertukar as batch_tertukar,
		0 as `selisihplus`,
		ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) as `selisihmin`,
		`x`.`totalcso` as `totalcso`,
		0 as `nominalplus`,
		ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalmin`,
		case
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 1
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 2
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 3
			else 0
		end as `status`,
		case
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 'proses'
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 'selisih +'
			when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
			and (`x`.`totalcso` <> 0
				or `x`.`koreksi` <> 0
				or `x`.`deviasi` <> 0) then 'selesai'
			else 'belum'
		end as `statusname`,
		`x`.`koreksi` as `koreksi`,
		`x`.`deviasi` as `deviasi`,
		`x`.`statuscso` as `statuscso`,
		`x`.`groupid` as `groupid`,
		`x`.`groupdesc` as `groupdesc`,
		`x`.`analisator` as `analisator`,
		`x`.`analisatorid` as `analisatorid`,
		`x`.`keterangan` as `keterangan`,
		`x`.`keputusan` as `keputusan`,
		`x`.`pembebanan` as `pembebanan`,
		`x`.`nodoc` as `nodoc`
	from
		(
		select
			distinct 
			`td`.`trsid` as `trsid`,
			`td`.`trsdetid` as `trsdetid`,
			`l`.`trsid` as `id`,
			`td`.`itembatchid` as `itembatchid`,
			`td`.`itemcode` as `itemcode`,
			`td`.`itemname` as `itemname`,
			`td`.`batchno` as `batchno`,
			`td`.`dimension` as `dimension`,
			`td`.`tolerance` as `tolerance`,
			`td`.`onhand` as `onhand`,
			`j`.`name` as `analisator`,
			`j`.`userid` as `analisatorid`,
			case
				when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
				when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
				when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
				when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
				else 0
			end as `totalcso`,
			ifnull(`td`.`koreksi`, 0) as `koreksi`,
			ifnull(`td`.`deviasi`, 0) as `deviasi`,
			ifnull(`td`.`statuscso`, 0) as `statuscso`,
			ifnull(`td`.`cogs`, 0) as `cogs`,
			ifnull(`td`.`cogs_manual`, 0) as `cogs_manual`,
			`td`.`kesalahan_admin` as `kesalahan_admin`,
			td.batch_tertukar  as `batch_tertukar`,
			`td`.`keterangan` as `keterangan`,
			`th`.`statusdoc` as `statusdoc`,
			`td`.`groupid` as `groupid`,
			`g`.`groupdesc` as `groupdesc`,
			`td`.`keputusan` as `keputusan`,
			`td`.`pembebanan` as `pembebanan`,
			`td`.`nodoc` as `nodoc`
		from
			(((((((((`SOS`.`dbttrsdeta` `td`
		left join (
			select
				`SOS`.`dbttrsheda`.`trsid` as `trsid`,
				`SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
			from
				`SOS`.`dbttrsheda`
			where
				`SOS`.`dbttrsheda`.`statusdoc` <> 'P') `th` on
			(`th`.`trsid` = `td`.`trsid`))
		left join (
			select
				`d`.`csodetid` as `csodetid`,
				`h`.`csoid` as `csoid`,
				`d`.`itembatchid` as `itembatchid`
			from
				(`SOS`.`dbtcsodet` `d`
			join `SOS`.`dbtcsohed` `h` on
				(`h`.`csoid` = `d`.`csoid`))
			where
				`d`.`statussubmit` = 'P'
				and `h`.`status` = 'A' and tipecso='A') `cd` on
			(`cd`.itembatchid = `td`.itembatchid))
		left join (select * from totalcso1 Where tipecso='A') `cso1` on
			(`cso1`.itembatchid = `td`.itembatchid))
		left join (select * from totalcso2 Where tipecso='A') `cso2` on
			(`cso2`.itembatchid = `td`.itembatchid))
		left join (select * from totalcso3 Where tipecso='A') `cso3` on
			(`cso3`.itembatchid = `td`.itembatchid))
		left join (select * from totalcso4 Where tipecso='A') `cso4` on
			(`cso4`.itembatchid = `td`.itembatchid))
		left join (
			select
				`SOS`.`dbxjob`.`userid` as `userid`,
				`SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
				`SOS`.`dbxjob`.`name` as `name`
			from
				`SOS`.`dbxjob`
			where
				`SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
			(`j`.`userid` = `td`.`analisatorid`))
		left join (
			select
				`SOS`.`dbmgroup`.`groupid` as `groupid`,
				`SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
				`SOS`.`dbmgroup`.`created_at` as `createddate`,
				`SOS`.`dbmgroup`.`created_by` as `createdby`,
				`SOS`.`dbmgroup`.`updated_at` as `updateddate`,
				`SOS`.`dbmgroup`.`updated_by` as `updatedby`
			from
				`SOS`.`dbmgroup`) `g` on
			(`g`.`groupid` = `td`.`groupid`))
		left join (
			select
				`SOS`.`dbttrsheda`.`trsid` as `trsid`
			from
				`SOS`.`dbttrsheda`
			order by
				`SOS`.`dbttrsheda`.`trsid` desc
			limit 1) `l` on
			(`l`.`trsid` = `td`.`trsid`))) `x`
where
		`x`.`trsid` = `x`.`id` and 
ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) > 0
		) y
 WHERE
COALESCE(`y`.`groupid`, 0) = 0
AND (COALESCE(`y`.`kesalahan_admin`, 0) = 0)
order by
	`y`.`itemname`;
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
select
    `y`.`trsdetid` as `trsdetid`,
    `y`.`itemid` as `itemid`,
    `y`.`itemcode` as `itemcode`,
    `y`.`itemname` as `itemname`,
    `y`.`batchno` as `batchno`,
    `y`.`dimension` as `dimension`,
    `y`.`tolerance` as `tolerance`,
    `y`.`onhand` as `onhand`,
    `y`.`cogs` as `cogs`,
    `y`.`cogs_manual` as `cogs_manual`,
    `y`.`selisihplus` as `selisihplus`,
    `y`.`selisihmin` as `selisihmin`,
    `y`.`totalcso` as `totalcso`,
    `y`.`nominalplus` as `nominalplus`,
    `y`.`nominalmin` as `nominalmin`,
    `y`.`status` as `status`,
    `y`.`statusname` as `statusname`,
    `y`.`koreksi` as `koreksi`,
    `y`.`deviasi` as `deviasi`,
    `y`.`statuscso` as `statuscso`,
    `y`.`groupid` as `groupid`,
    `y`.`groupdesc` as `groupdesc`,
    `y`.`analisator` as `analisator`,
    `y`.`analisatorid` as `analisatorid`,
    `y`.`keterangan` as `keterangan`,
    `y`.`keputusan` as `keputusan`,
    `y`.`pembebanan` as `pembebanan`,
    `y`.`nodoc` as `nodoc`
from
    (
    select
        distinct x.trsid as trsid,
        `x`.`trsdetid` as `trsdetid`,
        `x`.`itemid` as `itemid`,
        `x`.`itemcode` as `itemcode`,
        `x`.`itemname` as `itemname`,
        `x`.`batchno` as `batchno`,
        `x`.`dimension` as `dimension`,
        `x`.`tolerance` as `tolerance`,
        `x`.`onhand` as `onhand`,
        `x`.`cogs` as `cogs`,
        `x`.`cogs_manual` as `cogs_manual`,
        `x`.`kesalahan_admin` as `kesalahan_admin`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) as `selisihplus`,
        0 as `selisihmin`,
        `x`.`totalcso` as `totalcso`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalplus`,
        0 as `nominalmin`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 1
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 2
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 3
            else 0
        end as `status`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'proses'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'selisih +'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
            or `x`.`koreksi` <> 0
            or `x`.`deviasi` <> 0) then 'selesai'
            else 'belum'
        end as `statusname`,
        `x`.`koreksi` as `koreksi`,
        `x`.`deviasi` as `deviasi`,
        `x`.`statuscso` as `statuscso`,
        `x`.`groupid` as `groupid`,
        `x`.`groupdesc` as `groupdesc`,
        `x`.`analisator` as `analisator`,
        `x`.`analisatorid` as `analisatorid`,
        `x`.`keterangan` as `keterangan`,
        `x`.`keputusan` as `keputusan`,
        `x`.`pembebanan` as `pembebanan`,
        `x`.`nodoc` as `nodoc`
    from
        (
        select
            distinct `td`.`trsdetid` as `trsdetid`,
            `td`.`trsid` as `trsid`,
            `l`.`trsid` as `id`,
            `td`.`itemid` as `itemid`,
            `td`.`itemcode` as `itemcode`,
            `td`.`itemname` as `itemname`,
            `td`.`batchno` as `batchno`,
            `td`.`dimension` as `dimension`,
            `td`.`tolerance` as `tolerance`,
            `td`.`onhand` as `onhand`,
            `j`.`name` as `analisator`,
            `j`.`userid` as `analisatorid`,
            case
                when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
                when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
                when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
                when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
                else 0
            end as `totalcso`,
            ifnull(`td`.`koreksi`, 0) as `koreksi`,
            ifnull(`td`.`deviasi`, 0) as `deviasi`,
            ifnull(`td`.`statuscso`, 0) as `statuscso`,
            `td`.`cogs` as `cogs`,
            `td`.`cogs_manual` as `cogs_manual`,
            `td`.`kesalahan_admin` as `kesalahan_admin`,
            `td`.`keterangan` as `keterangan`,
            `th`.`statusdoc` as `statusdoc`,
            `td`.`groupid` as `groupid`,
            0 as `0`,
            `g`.`groupdesc` as `groupdesc`,
            `td`.`keputusan` as `keputusan`,
            `td`.`pembebanan` as `pembebanan`,
            `td`.`nodoc` as `nodoc`
        from
            (((((((((`SOS`.`dbttrsdeta` `td`
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`,
                `SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `SOS`.`dbttrsheda`
            where
                `SOS`.`dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`SOS`.`dbtcsodet` `d`
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d`.`statussubmit` = 'P'
                and `h`.`status` = 'A') `cd` on
            (`cd`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 1
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso1` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 2
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso2` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 3
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso3` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `SOS`.`dbxjob`.`userid` as `userid`,
                `SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
                `SOS`.`dbxjob`.`name` as `name`
            from
                `SOS`.`dbxjob`
            where
                `SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `SOS`.`dbmgroup`.`groupid` as `groupid`,
                `SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
                `SOS`.`dbmgroup`.`created_at` as `createddate`,
                `SOS`.`dbmgroup`.`created_by` as `createdby`,
                `SOS`.`dbmgroup`.`updated_at` as `updateddate`,
                `SOS`.`dbmgroup`.`updated_by` as `updatedby`
            from
                `SOS`.`dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`
            from
                `SOS`.`dbttrsheda`
            order by
                `SOS`.`dbttrsheda`.`trsid` desc
            limit 1) `l` on
            (`l`.`trsid` = `td`.`trsid`))) `x`
    where
        `x`.`trsid` = `x`.`id`
        and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) > 0
union
    select
        distinct `x`.`trsdetid` as `trsdetid`,
        x.trsid as 'trsid',
        `x`.`itemid` as `itemid`,
        `x`.`itemcode` as `itemcode`,
        `x`.`itemname` as `itemname`,
        `x`.`batchno` as `batchno`,
        `x`.`dimension` as `dimension`,
        `x`.`tolerance` as `tolerance`,
        `x`.`onhand` as `onhand`,
        `x`.`cogs` as `cogs`,
        `x`.`cogs_manual` as `cogs_manual`,
        `x`.`kesalahan_admin` as `kesalahan_admin`,
        0 as `selisihplus`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) as `selisihmin`,
        `x`.`totalcso` as `totalcso`,
        0 as `nominalplus`,
        ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) * `x`.`cogs` as `nominalmin`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 1
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 2
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 3
            else 0
        end as `status`,
        case
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` < `x`.`onhand` > 0
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'proses'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` > `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'selisih +'
            when `x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi` = `x`.`onhand`
            and (`x`.`totalcso` <> 0
                or `x`.`koreksi` <> 0
                or `x`.`deviasi` <> 0) then 'selesai'
            else 'belum'
        end as `statusname`,
        `x`.`koreksi` as `koreksi`,
        `x`.`deviasi` as `deviasi`,
        `x`.`statuscso` as `statuscso`,
        `x`.`groupid` as `groupid`,
        `x`.`groupdesc` as `groupdesc`,
        `x`.`analisator` as `analisator`,
        `x`.`analisatorid` as `analisatorid`,
        `x`.`keterangan` as `keterangan`,
        `x`.`keputusan` as `keputusan`,
        `x`.`pembebanan` as `pembebanan`,
        `x`.`nodoc` as `nodoc`
    from
        (
        select
            distinct `td`.`trsdetid` as `trsdetid`,
            `td`.`trsid` as `trsid`,
            `l`.`trsid` as `id`,
            `td`.`itemid` as `itemid`,
            `td`.`itemcode` as `itemcode`,
            `td`.`itemname` as `itemname`,
            `td`.`batchno` as `batchno`,
            `td`.`dimension` as `dimension`,
            `td`.`tolerance` as `tolerance`,
            `td`.`onhand` as `onhand`,
            `j`.`name` as `analisator`,
            `j`.`userid` as `analisatorid`,
            case
                when `td`.`statuscso` = 1 then ifnull(`cso1`.`qtytot`, 0)
                when `td`.`statuscso` = 2 then ifnull(`cso2`.`qtytot`, 0)
                when `td`.`statuscso` = 3 then ifnull(`cso3`.`qtytot`, 0)
                when `td`.`statuscso` = 4 then ifnull(`cso4`.`qtytot`, 0)
                else 0
            end as `totalcso`,
            ifnull(`td`.`koreksi`, 0) as `koreksi`,
            ifnull(`td`.`deviasi`, 0) as `deviasi`,
            ifnull(`td`.`statuscso`, 0) as `statuscso`,
             ifnull(`td`.`cogs`, 0) as `cogs`,
            ifnull(`td`.`cogs_manual`, 0) as `cogs_manual`,
            `td`.`kesalahan_admin` as `kesalahan_admin`,
            `td`.`keterangan` as `keterangan`,
            `th`.`statusdoc` as `statusdoc`,
            `td`.`groupid` as `groupid`,
            `g`.`groupdesc` as `groupdesc`,
            `td`.`keputusan` as `keputusan`,
            `td`.`pembebanan` as `pembebanan`,
            `td`.`nodoc` as `nodoc`
        from
            (((((((((`SOS`.`dbttrsdeta` `td`
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`,
                `SOS`.`dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `SOS`.`dbttrsheda`
            where
                `SOS`.`dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`SOS`.`dbtcsodet` `d`
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d`.`statussubmit` = 'P'
                and `h`.`status` = 'A') `cd` on
            (`cd`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 1
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso1` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 2
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso2` on
            (`cso2`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 3
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso3` on
            (`cso3`.`itemid` = `td`.`itemid`))
        left join (
            select
                `d`.`itemid` as `itemid`,
                sum(`d2`.`qty`) as `qtytot`
            from
                ((`SOS`.`dbtcsodet2` `d2`
            join `SOS`.`dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `SOS`.`dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso4`.`itemid` = `td`.`itemid`))
        left join (
            select
                `SOS`.`dbxjob`.`userid` as `userid`,
                `SOS`.`dbxjob`.`jobtypeid` as `jobtypeid`,
                `SOS`.`dbxjob`.`name` as `name`
            from
                `SOS`.`dbxjob`
            where
                `SOS`.`dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `SOS`.`dbmgroup`.`groupid` as `groupid`,
                `SOS`.`dbmgroup`.`groupdesc` as `groupdesc`,
                `SOS`.`dbmgroup`.`created_at` as `createddate`,
                `SOS`.`dbmgroup`.`created_by` as `createdby`,
                `SOS`.`dbmgroup`.`updated_at` as `updateddate`,
                `SOS`.`dbmgroup`.`updated_by` as `updatedby`
            from
                `SOS`.`dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `SOS`.`dbttrsheda`.`trsid` as `trsid`
            from
                `SOS`.`dbttrsheda`
            order by
                `SOS`.`dbttrsheda`.`trsid` desc
            limit 1) `l` on
            (`l`.`trsid` = `td`.`trsid`))) `x`
    where
        `x`.`trsid` = `x`.`id`
        and ifnull(`x`.`onhand` - (`x`.`totalcso` + `x`.`koreksi` + `x`.`deviasi`), 0) < 0) `y`
        inner join dbttrsheda th on th.trsid=y.trsid
WHERE th.statusdoc = 'E' AND NOT COALESCE(`y`.`groupid`, 0) = 0 AND (COALESCE(`y`.`kesalahan_admin`, 0) = 0)
order by
    `y`.`itemname`;
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
	AND d.statussubmit = 'P'
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
	and h.tipecso = 'R'
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
	AND d.statussubmit = 'P'
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
	and h.tipecso = 'R'
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
	AND d.statussubmit = 'P'
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
	and h.tipecso = 'R'
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
/*!50001 VIEW `viewdashboard` AS select distinct `temp_viewdashboard`.`itemid` AS `itemid`,`temp_viewdashboard`.`itembatchid` AS `itembatchid`,`temp_viewdashboard`.`trsdetid` AS `trsdetid`,`temp_viewdashboard`.`itemcode` AS `itemcode`,`temp_viewdashboard`.`itemname` AS `itemname`,`temp_viewdashboard`.`batchno` AS `batchno`,`temp_viewdashboard`.`heatno` AS `heatno`,`temp_viewdashboard`.`dimension` AS `dimension`,`temp_viewdashboard`.`tolerance` AS `tolerance`,`temp_viewdashboard`.`kondisi` AS `kondisi`,`temp_viewdashboard`.`onhand` AS `onhand`,ifnull(`temp_viewdashboard`.`onhand` - (cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi`),0) AS `selisih`,cast(`temp_viewdashboard`.`totalcso` as float) AS `totalcso`,case when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` < `temp_viewdashboard`.`onhand` > 0 and (`temp_viewdashboard`.`isstarted` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 1 when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` > `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 2 when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` = `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 3 else 0 end AS `status`,case when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` < `temp_viewdashboard`.`onhand` > 0 and (`temp_viewdashboard`.`isstarted` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'proses' when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` > `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'selisih +' when cast(`temp_viewdashboard`.`totalcso` as float) + `temp_viewdashboard`.`koreksi` + `temp_viewdashboard`.`deviasi` = `temp_viewdashboard`.`onhand` and (`temp_viewdashboard`.`totalcso` <> 0 or `temp_viewdashboard`.`koreksi` <> 0 or `temp_viewdashboard`.`deviasi` <> 0) then 'selesai' else 'belum' end AS `statusname`,`temp_viewdashboard`.`koreksi` AS `koreksi`,`temp_viewdashboard`.`deviasi` AS `deviasi`,`temp_viewdashboard`.`statuscso` AS `statuscso`,`temp_viewdashboard`.`groupid` AS `groupid`,`temp_viewdashboard`.`groupdesc` AS `groupdesc`,`temp_viewdashboard`.`analisator` AS `analisator`,`temp_viewdashboard`.`analisatorid` AS `analisatorid`,`temp_viewdashboard`.`keterangan` AS `keterangan` from `temp_viewdashboard` */;
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

-- Dump completed on 2025-04-29 15:56:05
