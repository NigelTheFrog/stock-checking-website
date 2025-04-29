-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.88.55    Database: SOS_DEV_RTG
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmcategory`
--

LOCK TABLES `dbmcategory` WRITE;
/*!40000 ALTER TABLE `dbmcategory` DISABLE KEYS */;
INSERT INTO `dbmcategory` VALUES (12,'Pintu 2 (Wiremesh, kawat galvanis, bendrat, baja r','2024-11-04 01:18:19','admin','2024-11-04 01:18:19',NULL),(13,'Besi Beton Kecil (6mm-12mm)','2024-11-04 01:18:57','admin','2024-11-04 01:18:57',NULL),(14,'Beton Besar (13mm-32mm)','2024-11-04 01:19:18','admin','2024-11-04 01:19:18',NULL),(15,'Pegirian 38 (All Product)','2024-11-04 01:19:57','admin','2024-11-04 01:19:57',NULL),(16,'Pegirian 24 (All Product)','2024-11-04 01:20:12','admin','2024-11-04 01:20:12',NULL),(17,'KA-B21 (WF, Hbeam, CNP, INP, Sheetpile)','2024-11-04 01:20:59','admin','2024-11-04 01:20:59',NULL),(18,'KA-B22 (Pipa Kotak, Pipa Bulat)','2024-11-04 01:21:25','admin','2024-11-04 01:21:25',NULL),(19,'KA-B3 (Pipa Hitam, Paku, Kawat Las, Atap, Bondeck)','2024-11-04 01:21:58','admin','2024-11-04 01:21:58',NULL),(20,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','2024-11-04 01:22:28','admin','2024-11-04 01:22:28',NULL);
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
INSERT INTO `dbmcoy` VALUES (1,'RRA SBY','PT. RANGKA RAYA',NULL,'2023-09-10 21:12:56','','2024-08-30 07:43:31','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmdept`
--

LOCK TABLES `dbmdept` WRITE;
/*!40000 ALTER TABLE `dbmdept` DISABLE KEYS */;
INSERT INTO `dbmdept` VALUES (1,'PUR','2024-11-21 13:24:24','2024-11-21 13:24:24'),(2,'SAL','2024-11-21 13:24:24','2024-11-21 13:24:24'),(3,'FAC','2024-11-21 13:24:24','2024-11-21 13:24:24'),(4,'GAF','2024-11-21 13:24:24','2024-11-21 13:24:24'),(5,'QMR','2024-11-21 13:24:24','2024-11-21 13:24:24'),(6,'R&D','2024-11-21 06:24:35','2024-11-21 06:24:35'),(7,'HRD','2024-11-21 06:27:30','2024-11-21 06:27:30');
/*!40000 ALTER TABLE `dbmdept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbmgrade`
--

DROP TABLE IF EXISTS `dbmgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmgrade` (
  `gradecode` char(1) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`gradecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmgrade`
--

LOCK TABLES `dbmgrade` WRITE;
/*!40000 ALTER TABLE `dbmgrade` DISABLE KEYS */;
INSERT INTO `dbmgrade` VALUES ('2','grade 2','2025-04-11 09:59:21','2025-04-11 09:59:21'),('3','GRADE 3','2025-03-21 03:05:00','2025-03-21 03:05:00'),('A','Grade A','2025-02-01 05:39:01','2025-02-01 05:39:01');
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
INSERT INTO `dbmgroup` VALUES (1,'ketukar','2025-01-08 05:23:25','admin','2025-01-08 05:23:25',NULL),(2,'kebalik','2025-01-08 05:23:34','admin','2025-01-08 05:23:34',NULL),(3,'keselip','2025-01-08 05:23:39','admin','2025-01-08 05:23:39',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmkeputusan`
--

LOCK TABLES `dbmkeputusan` WRITE;
/*!40000 ALTER TABLE `dbmkeputusan` DISABLE KEYS */;
INSERT INTO `dbmkeputusan` VALUES (1,'FPDS','2023-09-10 21:37:05','',NULL,NULL),(2,'Pembebanan','2023-09-10 21:37:05','',NULL,NULL),(3,'GI-GR-WO','2023-09-10 21:37:05','',NULL,NULL),(4,'Pembetulan SJ Transfer','2023-10-17 15:23:18','admin',NULL,NULL),(5,'Pembuatan SJ Transfer','2023-10-17 15:24:27','admin',NULL,NULL),(6,'Tidak Pembebanan','2024-11-04 01:39:41','admin','2024-11-04 01:39:41',NULL),(7,'Adjust CSO IN','2024-11-04 01:40:06','admin','2024-11-04 01:40:06',NULL),(8,'Adjust CSO OUT','2024-11-04 01:40:15','admin','2024-11-04 01:40:37','admin'),(9,'Adjust CSO IN/OUT','2024-11-04 01:40:29','admin','2024-11-04 01:40:29',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmketerangan`
--

LOCK TABLES `dbmketerangan` WRITE;
/*!40000 ALTER TABLE `dbmketerangan` DISABLE KEYS */;
INSERT INTO `dbmketerangan` VALUES (1,'Cek Lokasi','2024-11-14 03:15:30','2024-11-14 03:15:30'),(2,'Cek Warna','2024-11-14 03:15:37','2024-11-14 03:15:37'),(3,'Ada koreksi','2024-11-14 03:15:45','2024-11-14 03:15:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmlocation`
--

LOCK TABLES `dbmlocation` WRITE;
/*!40000 ALTER TABLE `dbmlocation` DISABLE KEYS */;
INSERT INTO `dbmlocation` VALUES (1,'TS','A1',0,0,'2024-11-01 02:17:41','admin','2025-02-17 03:57:37','admin'),(2,'TS','A2',0,0,'2024-11-01 02:17:53','admin','2025-02-17 03:57:37','admin'),(3,'TS','A3',0,0,'2024-11-01 02:18:25','admin','2025-02-17 03:57:37',NULL),(4,'TS','A4',0,0,'2024-11-01 02:18:36','admin','2025-02-17 03:57:37',NULL),(5,'TS','A5',0,0,'2024-11-01 02:18:52','admin','2025-02-17 03:57:37',NULL),(6,'TS','A6',0,0,'2024-11-01 02:19:04','admin','2025-02-17 03:57:37',NULL),(7,'TS','A7',0,0,'2024-11-01 02:19:11','admin','2025-02-17 03:57:37',NULL),(8,'TS','A8',0,0,'2024-11-01 02:19:21','admin','2025-02-17 03:57:37',NULL),(9,'TS','A9',0,0,'2024-11-01 02:19:27','admin','2025-02-17 03:57:37',NULL),(14,'TS','B1',0,0,'2024-11-01 02:21:53','admin','2025-02-17 03:57:37',NULL),(15,'TS','B2',0,0,'2024-11-01 02:21:58','admin','2025-02-17 03:57:37',NULL),(16,'TS','B3',0,0,'2024-11-01 02:22:03','admin','2025-02-17 03:57:37',NULL),(17,'TS','B4',0,0,'2024-11-01 02:22:07','admin','2025-02-17 03:57:37',NULL),(18,'TS','B5',0,0,'2024-11-01 02:22:19','admin','2025-02-17 03:57:37',NULL),(19,'TS','B6',0,0,'2024-11-01 02:22:24','admin','2025-02-17 03:57:37',NULL),(20,'TS','B7',0,0,'2024-11-01 02:22:29','admin','2025-02-17 03:57:37',NULL),(21,'TS','B8',0,0,'2024-11-01 02:22:33','admin','2025-02-17 03:57:37',NULL),(22,'TS','B9',0,0,'2024-11-01 02:22:43','admin','2025-02-17 03:57:37',NULL),(23,'TS','C1',1,0,'2024-11-01 02:22:48','admin','2025-02-17 03:57:37',NULL),(24,'TS','C2',0,0,'2024-11-01 02:22:53','admin','2025-02-17 03:57:37',NULL),(25,'TS','C3',0,0,'2024-11-01 02:22:57','admin','2025-02-17 03:57:37',NULL),(26,'TS','C4',0,0,'2024-11-01 02:23:06','admin','2025-02-17 03:57:37',NULL),(27,'TS','C5',0,0,'2024-11-01 02:23:12','admin','2025-02-17 03:57:37',NULL),(28,'TS','C6',0,0,'2024-11-01 02:23:19','admin','2025-02-17 03:57:37',NULL),(29,'TS','C7',0,0,'2024-11-01 02:23:26','admin','2025-02-17 03:57:37',NULL),(30,'TS','C8',0,0,'2024-11-01 02:23:32','admin','2025-02-17 03:57:37',NULL),(31,'TS','C9',0,0,'2024-11-01 02:23:37','admin','2025-02-17 03:57:37',NULL),(32,'KA','B21',0,0,'2024-11-16 04:58:55','admin','2025-02-17 03:57:37',NULL),(33,'KA','B52',0,0,'2024-11-16 04:59:00','admin','2025-02-17 03:57:37',NULL),(34,'KA','C4',0,0,'2024-11-16 04:59:07','admin','2025-02-17 03:57:37',NULL),(35,'KA','B3',0,0,'2024-11-16 04:59:16','admin','2025-02-17 03:57:37',NULL),(36,'KA','01-01',0,0,'2025-02-20 10:56:45','','2025-02-20 10:56:45',NULL),(37,'KA','01-01A',0,0,'2025-02-20 10:59:10','','2025-02-20 10:59:10',NULL),(38,'KA','04-01B',0,0,'2025-02-20 10:59:10','','2025-02-20 10:59:10',NULL),(39,'KA','01-C31',0,0,'2025-02-20 10:59:10','','2025-02-20 10:59:10',NULL),(40,'KA','12A-A4A',0,0,'2025-02-20 11:24:47','admin','2025-02-20 11:24:47',NULL),(41,'KA','12A-A03',0,0,'2025-02-20 11:26:27','admin','2025-02-20 11:26:27',NULL),(42,'','22-C21',0,0,'2025-02-20 12:12:09','admin','2025-02-20 12:12:09',NULL),(43,'','04A-B22',0,0,'2025-02-20 14:24:47','admin','2025-02-20 14:24:47',NULL),(44,'','01A-A20',0,0,'2025-03-21 09:23:30','admin','2025-03-21 09:23:30',NULL),(45,'','01A-A03',0,0,'2025-03-21 09:23:30','admin','2025-03-21 09:23:30',NULL),(46,'','04A-B52',0,0,'2025-04-11 11:34:27','admin','2025-04-11 11:34:27',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmuser`
--

LOCK TABLES `dbmuser` WRITE;
/*!40000 ALTER TABLE `dbmuser` DISABLE KEYS */;
INSERT INTO `dbmuser` VALUES (2,99908,'9437','nigel','$2y$12$yk/WnFyjjpokRPUnJyGSy.fpR7rY.d5BWuEhwtPQS14JGQE4B0r8y','Nigel',1,3,'2024-09-17 04:34:36','admin','2024-09-17 04:34:36',NULL,NULL),(3,99793,'04496','kristiawan04496','$2y$12$BUxwHykbtGqIi8SRWPJs.OsJZ8TmL2bVHEA.4WqgUuh8LA.GzoI5a','Kristiawan',1,3,'2024-10-31 07:06:20','admin','2024-10-31 07:06:20',NULL,NULL),(12,0,'00000','admin','$2y$10$cY8SEVFGq2YyJ9RrVMY8q.xkoYcOzKjA4baeqdqKxBLY6CGujkrZi','Admin',1,1,'2023-06-13 17:39:32','admin',NULL,NULL,''),(13,99921,'9442','aldo9442','$2y$12$QScR11T3Hx9OE0gZgchGi.iTVlG7LaBS1uDATsiUor3eW/PRlZBDe','Aldo',1,3,'2024-11-01 02:31:42','admin','2024-12-23 04:29:25','admin',NULL),(14,99193,'9834','oki9834','$2y$12$7itHr/pzKzGz7/DBRfxx.OV9O.DfyVz6QvSVilqGTPREhgLxKlUBu','Oki',1,3,'2024-11-01 02:32:42','admin','2024-11-01 02:32:42',NULL,'zlEy0GP7C7uJhKSYslLPf3D8zuKH8NMvy1H6YOXcjw5SeDCPxemVP6FITsJq'),(15,99402,'8463','irene8463','$2y$12$yL9PvKfxvW4v9CY/NdSRVuiD.J1OjzwL6NKt.3TD9t61vueAZ1zUm','Irene',1,3,'2024-11-01 02:33:32','admin','2024-11-01 02:33:32',NULL,NULL),(16,99642,'001','agung001','$2y$12$5YIl4BK62YUNVfSs4zPI1u0x051kDGOHfTF84YrTM9uYOddSrsJ06','Agung',1,3,'2024-11-02 03:33:24','admin','2024-11-04 02:25:46','admin',NULL),(17,99295,'09661','dea9661','$2y$12$G8A3UNegDoyNBhO1WwoEA.OuTCaiObf2TWfuwujRlDApz.sGwgQCi','Dea',1,3,'2024-11-06 05:03:18','admin','2024-11-06 05:03:18',NULL,NULL),(18,99392,'09314','zefanya9314','$2y$12$x1R3XWJ3ZUEN1IApFNMqv.7ZXZeeCSaT3kQwepEDp3y/xjJ/O/fvO','Zefanya',1,3,'2024-11-06 05:09:53','admin','2024-11-06 05:09:53',NULL,NULL),(19,99341,'10253','joy10253','$2y$12$27CNJDpFQwyhbtSz7VD36OZ2xuKGpQn0ib6y1cKyOiIi4SiKuYEOO','Joy',1,3,'2024-12-23 02:18:05','admin','2024-12-23 02:18:05',NULL,NULL),(20,99261,'2717','gunawan2717','$2y$12$ppGHNKB8LIb0naFTGVjXh.SvM3GEwC.KX9t.wsu/mvHGJ4rhFcTWO','Gunawan',1,3,'2024-12-23 02:27:23','admin','2024-12-23 02:27:23',NULL,NULL),(21,99537,'12340987','denny','$2y$12$SVZqK9uyzAxnd3yLWHGv8OXv4BUGe575cbQFgpnCAqhRSYuD00no6','denny',1,4,'2025-01-02 07:34:31','admin','2025-01-02 07:34:31',NULL,NULL),(22,99166,'909090911','saya','$2y$12$24GhF2g5Sqd7jMNvqaLSpOCrVe0.Xsb7mC3Rso9xVq2GUIX773GfW','saya',1,3,'2025-01-02 07:34:44','admin','2025-01-02 07:34:44',NULL,NULL),(23,99501,'0001','testcso','$2y$12$SXfeGPKkm9z/nEwWJ3bEKeWD9mkeHFIeyBDZuzJsRfYi8V58MDf1W','Test CSO',1,3,'2025-01-09 07:39:11','admin','2025-01-09 07:39:11',NULL,NULL),(24,99708,'10482','askhid','$2y$12$4zK2IHJJ5ejRPeE6SRJ5xe1ivqFPBJDipoGEEJczX1lap/1zSMzlC','askhid',1,4,'2025-01-22 07:57:23','admin','2025-01-22 07:57:23',NULL,NULL),(25,99413,'1234554321','ertyu','$2y$12$1bsWdafymd5GBIlzd310mOgScmHzXRRenAXfxnrfmWRevyRO0pmm.','ertyu',1,4,'2025-01-30 08:46:28','admin','2025-01-30 08:46:28',NULL,NULL);
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
  `itemid` varchar(255) NOT NULL,
  `itembatchid` varchar(255) DEFAULT NULL,
  `locationid` int(11) NOT NULL,
  `grade` char(1) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `approval` char(1) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL COMMENT 'R= Item reguler\r\nT = item temuan TR= temuan reguler TA= temuan avalan',
  `statussubmit` varchar(1) NOT NULL COMMENT 'P= sudah submit\r\nD= belum submit',
  `statushslcso` char(1) NOT NULL COMMENT 'D = baru dibuat C = ada CSO ulang\r\nT = tambahan dari CSO ulang',
  `keteranganid` int(11) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`csodetid`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet`
--

LOCK TABLES `dbtcsodet` WRITE;
/*!40000 ALTER TABLE `dbtcsodet` DISABLE KEYS */;
INSERT INTO `dbtcsodet` VALUES (1,1,1,'FAAA006OO00300000000000470','',35,'','','',NULL,'R','P','D',NULL,'2025-01-04 08:48:03'),(2,1,2,'FAAA006OO00300000000000490','',35,'','','',NULL,'R','P','D',NULL,'2025-01-04 08:48:15'),(3,1,3,'FAAF044OO00130000000012000','',35,'','','',NULL,'R','P','D',NULL,'2025-01-04 08:48:26'),(4,1,4,'FBAN999OO00047609150006096F','',32,'','','',NULL,'R','P','D',NULL,'2025-01-04 08:48:35'),(5,2,8,'FAAA002OO00050000000006000AB','',35,'','','',NULL,'R','P','D',NULL,'2025-01-04 09:21:25'),(6,2,9,'FAAA002OO00050000000006000BR','',35,'1','','',NULL,'R','P','D',NULL,'2025-01-04 09:21:41'),(7,2,10,'FAAA002OO00060000000006000AB','',34,'','','',NULL,'R','P','D',NULL,'2025-01-04 09:21:58'),(8,2,11,'FAAA002OO00060000000006000L','',35,'','','',NULL,'R','P','D',NULL,'2025-01-04 09:22:15'),(9,4,19,'AAAR244OO00040012500004780GLY','',35,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:17:38'),(10,4,20,'ABAR212OO00040012200004880CHF','',35,'','','Tukar',NULL,'R','P','D',NULL,'2025-01-08 12:18:01'),(11,4,21,'ABAR214OO00040012200004880GLY','',33,'','','Tukar',NULL,'R','P','D',NULL,'2025-01-08 12:18:16'),(12,4,22,'FAAA002OO00050000000006000AB','',35,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:19:03'),(13,4,23,'FAAA002OO00060000000006000AB','',34,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:19:25'),(14,4,24,'FAAA002OO00120000000006000BR','',34,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:19:40'),(15,4,25,'FAAA002OO00127000000006000AB','',35,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:20:02'),(16,4,26,'FAAA006OO00200000000006000','',33,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:20:20'),(17,4,27,'FAAA999OO00065000000002000','',34,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:20:36'),(18,4,28,'FBAG999OO00017012200002440ST','',35,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:20:52'),(19,4,29,'FBAI015OO00007012200002440','',33,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:21:09'),(20,5,34,'AAAR244OO00040012500004780GLY','',33,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:30:20'),(21,5,35,'ABAR212OO00040012200001640CHF','',32,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:30:47'),(22,5,36,'ABAR212OO00040012200002440CHF','',34,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:30:56'),(23,5,36,'ABAR212OO00040012200002440CHF','',33,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:31:06'),(24,5,37,'ABAR212OO00040012200004880CHF','',35,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:31:56'),(25,5,38,'ABAR213OO00040011200002440CHF','',33,'','','',NULL,'R','P','D',NULL,'2025-01-08 12:32:08'),(26,6,15,'FAAA002OO00050000000006000AB',NULL,32,'3','merah',NULL,NULL,'R','P','D',NULL,'2025-01-09 14:50:38'),(27,7,40,'9999001','',35,'1','ungu','',NULL,'R','P','D',NULL,'2025-01-13 14:32:53'),(28,7,41,'FAAA006OO00300000000000470','',35,'1','ungu','',NULL,'R','P','D',NULL,'2025-01-13 14:33:07'),(29,7,42,'FBAI015OO00080012200002440KP','',35,'2','ungu','',NULL,'R','P','D',NULL,'2025-01-13 14:33:27'),(30,7,43,'FBAJ999OO00120000380006000F','',34,'3','kuning','',NULL,'R','P','D',NULL,'2025-01-13 14:33:45'),(31,8,47,'FAAA006OO00300000000000470','',35,'','','',NULL,'R','P','D',NULL,'2025-01-13 15:10:32'),(32,8,48,'FBAN999OO00047609150006096F','',35,'','','',NULL,'R','P','D',NULL,'2025-01-13 15:10:47'),(33,8,49,'FCAY153OO-00000AVESTA','',34,'','','',NULL,'R','P','D',NULL,'2025-01-13 15:10:59'),(34,8,50,'FFBX999OO00190500127000000G','',32,'','','',NULL,'R','P','D',NULL,'2025-01-13 15:11:12'),(35,3,15,'FAAA002OO00050000000006000AB','',33,'','','',NULL,'R','P','C',NULL,'2025-01-20 15:57:39'),(36,9,55,'FAAF044OO00130000000012000','',32,'','','',NULL,'R','P','D',NULL,'2025-01-21 08:49:51'),(37,9,54,'FAAA999OO00040000000002000','',32,'','','',NULL,'R','P','D',NULL,'2025-01-21 08:50:12'),(38,3,15,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB',33,'','',NULL,NULL,'R','D','T',NULL,'2025-01-22 14:59:54'),(39,10,51,'AAAR244OO00040012500004780GLY','',32,'','','',NULL,'R','P','D',NULL,'2025-01-22 15:11:48'),(40,10,52,'ABAR212OO00040012200001640CHF','',35,'3','ungu','',NULL,'R','P','D',NULL,'2025-01-22 15:11:58'),(41,10,53,'FAAA002OO00050000000006000AB','',33,'','','',NULL,'R','P','D',NULL,'2025-01-22 15:12:11'),(42,10,57,'FBAI015OO00018012200002440GRC','',32,'','','',NULL,'R','P','D',NULL,'2025-01-22 15:12:25'),(43,10,56,'FBAG999OO00015012200002440GRC','',33,'','','',NULL,'R','P','D',NULL,'2025-01-22 15:12:34'),(44,11,58,'AAAA194OO001270000000003000EKI','',33,'1','ungu','',NULL,'R','P','C',NULL,'2025-01-30 15:43:11'),(45,12,58,'AAAA194OO001270000000003000EKI','',1,'2','merah','',NULL,'R','P','C',NULL,'2025-01-30 15:43:53'),(46,11,58,'AAAA194OO001270000000003000EKI','AAAA194OO001270000000003000EKI',28,'1','ungu',NULL,NULL,'R','P','T',NULL,'2025-01-30 15:45:03'),(47,12,58,'AAAA194OO001270000000003000EKI','AAAA194OO001270000000003000EKI',16,'2','merah',NULL,NULL,'R','P','T',NULL,'2025-01-30 15:45:03'),(49,13,58,'AAAA194OO001270000000003000EKI','',22,'2','','',NULL,'R','P','D',NULL,'2025-01-30 15:47:43'),(50,13,59,'ABAIZZZOO001600001606148','',26,'3','','',NULL,'R','P','D',NULL,'2025-01-30 15:48:04'),(51,13,60,'KEAAZZZOO00100010212920','',30,'1','kuning','',NULL,'R','P','D',NULL,'2025-01-30 15:48:27'),(52,13,61,'KEAAZZZOO0012700000008005800WA','',34,'1','merah','',NULL,'R','P','D',NULL,'2025-01-30 15:48:50'),(53,13,62,'KEAAZZZOO0019053400KUNWAL330','',29,'1','kuning','',NULL,'R','P','C',NULL,'2025-01-30 15:49:11'),(54,13,62,'KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330',29,'1','kuning',NULL,NULL,'R','D','T',NULL,'2025-01-30 15:54:30'),(55,13,62,'KEAAZZZOO0019053400KUNWAL330','',18,'','','',NULL,'R','P','C',NULL,'2025-01-30 16:58:27'),(56,13,62,'KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330',18,NULL,'',NULL,NULL,'R','P','T',NULL,'2025-01-30 16:58:52'),(57,14,67,'ABAI278OO00004011000.412SA2','',33,'1','ungu','',NULL,'R','P','D',NULL,'2025-02-05 12:00:19'),(58,14,64,'ABPB278OO00006001002000SA2','',26,'1','merah','',NULL,'R','P','D',NULL,'2025-02-05 12:00:48'),(59,14,65,'AAAA194OO00127000003000EKI','',35,'1','ungu','',NULL,'R','P','D',NULL,'2025-02-05 12:21:40'),(60,14,63,'ABAI278OO000070IA23.42KGLBR','',33,'1','ungu','',NULL,'R','P','D',NULL,'2025-02-05 13:16:08'),(61,14,66,'AAAJ194OO000500409EKI','',34,'2','pink','',NULL,'R','P','D',NULL,'2025-02-05 13:16:24'),(62,14,68,'BAAAZZZOO00127000000003100GCM','',35,'1','','',NULL,'R','P','D',NULL,'2025-02-05 13:17:01'),(63,14,69,'CAAAZZZOO001400555SBM','',28,'1','kuning','',NULL,'R','P','D',NULL,'2025-02-05 13:17:20'),(64,15,70,'ABAR212OO00040012200004880CHF','',33,'','','',NULL,'R','P','D',NULL,'2025-02-06 13:05:24'),(65,15,71,'FAAA999OO00065000000002000','',35,'','','',NULL,'R','P','D',NULL,'2025-02-06 13:05:38'),(68,17,72,'FAAB999OO00060000060006000TM','',5,'','','',NULL,'R','P','D',NULL,'2025-02-06 13:07:06'),(69,17,73,'FBAG999OO00017012200002440ST','',6,'','','',NULL,'R','P','D',NULL,'2025-02-06 13:07:19'),(70,18,76,'FAAA002OO00140000000006000L','',34,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:02:05'),(71,18,77,'FAAA002OO00150000000006000L','',32,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:02:18'),(72,18,74,'ABAR212OO00040012200004880CHF','',32,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:03:06'),(73,18,75,'ABAR214OO00040012200004880GLY','',28,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:03:44'),(74,18,81,'FCAY327 OO0003200000000ASME','',29,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:04:46'),(75,18,79,'FBAI015OO00050012200002440GRC','',35,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:05:30'),(76,18,78,'FBAI015OO00050012200002440ET','',32,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:05:47'),(77,18,80,'FBAK999OO00027012200002440','',9,'','','',NULL,'R','P','D',NULL,'2025-02-12 16:06:11'),(78,6,16,'FAAA002OO00050000000006000BR','',23,'A','kuning','Abc',NULL,'R','P','D',NULL,'2025-02-14 15:20:23'),(79,19,83,'ABAR214OO00040012200004880GLY','',33,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:26:29'),(80,19,82,'ABAR212OO00040012200004880CHF','',33,'1','pink','',NULL,'R','P','D',NULL,'2025-02-17 10:26:45'),(81,19,84,'ABAR224OO00040012200004880CHF','',32,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:27:01'),(82,19,91,'ZZZZZZZOO000000ALBRPO00000','',34,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:27:18'),(83,19,86,'PAAA134OO00350000000001000','',31,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:27:38'),(84,19,85,'KHFU999OO00190500000000000KTT','',32,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:27:54'),(85,19,88,'PEAA539OO02540000000004000MJ','',34,'3','','',NULL,'R','P','D',NULL,'2025-02-17 10:28:36'),(86,19,89,'PEBL538OO02032000000004000QL','',33,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:28:52'),(87,19,89,'PEBL538OO02032000000004000QL','',33,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:29:11'),(88,19,90,'FFDC120OO00381000254000000SL','',32,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:29:22'),(89,19,87,'PEAA537OO01524000000004000QL','',32,'','','',NULL,'R','P','D',NULL,'2025-02-17 10:29:59'),(110,22,100,'ABAR212OO00040012200004880CHF','',33,'','','',NULL,'R','P','C',NULL,'2025-02-18 11:47:24'),(111,22,100,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF',33,'1','',NULL,NULL,'R','P','T',NULL,'2025-02-18 11:48:07'),(112,23,100,'ABAR212OO00040012200004880CHF','',33,'2','','',NULL,'R','P','D',NULL,'2025-02-18 14:45:22'),(119,24,124,'FFCS120OO00762000000000000','',43,'1','ungu,pink','',NULL,'R','P','D',NULL,'2025-02-20 14:25:46'),(120,24,122,'FFBX999OO00254000127000000G','',42,'','ungu','',NULL,'R','P','D',NULL,'2025-02-20 14:30:54'),(121,24,127,'KHFU999OO00190500000000000KTT','',32,'','','',NULL,'R','P','D',NULL,'2025-02-20 14:53:50'),(122,24,126,'FFED210OO03556000000000000A','',32,'','','',NULL,'R','P','D',NULL,'2025-02-20 14:54:02'),(123,24,123,'FFCJ120OO00254000000000000','',33,'','','',NULL,'R','P','D',NULL,'2025-02-20 14:54:15'),(124,24,125,'FFDZ999OO00190500000000000STD','',43,'3','','',NULL,'R','P','D',NULL,'2025-02-20 14:54:33'),(132,25,138,'ABAR212OO00040012200004880CHF','',23,'2','','',NULL,'R','P','C',NULL,'2025-04-11 16:59:34'),(133,25,143,'ABAR237OO00040012200004880CHF','',46,'2','','',NULL,'R','P','C',NULL,'2025-04-11 17:00:23'),(134,25,143,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF',46,'2','',NULL,NULL,'R','P','T',NULL,'2025-04-11 17:01:06'),(135,25,142,'ABAR236OO00040012200002440CHJ','',46,'2','ungu,pink','',NULL,'R','P','D',NULL,'2025-04-12 09:45:03'),(136,25,142,'ABAR236OO00040012200002440CHJ','',46,'3','','',NULL,'R','P','D',NULL,'2025-04-12 09:45:23'),(137,25,138,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF',46,'2','MERAH','test',NULL,'R','D','T',NULL,'2025-04-12 09:49:58');
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
  `qty` decimal(10,2) DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  `inputs` varchar(100) DEFAULT NULL,
  `operand` float DEFAULT NULL,
  `qty_pengali` decimal(10,3) DEFAULT NULL,
  `pengali` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`csodet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet2`
--

LOCK TABLES `dbtcsodet2` WRITE;
/*!40000 ALTER TABLE `dbtcsodet2` DISABLE KEYS */;
INSERT INTO `dbtcsodet2` VALUES (1,1,1,1,2.00,'2','2',2,NULL,NULL),(2,2,1,1,2.00,'2','2',2,NULL,NULL),(3,3,1,1,1.00,'1','1',1,NULL,NULL),(4,4,1,1,53.00,'53','53',53,NULL,NULL),(5,5,2,1,3000.00,'3000','3000',3000,NULL,NULL),(6,6,2,1,600.00,'600','600',600,NULL,NULL),(7,7,2,1,499.00,'499','499',499,NULL,NULL),(8,8,2,1,967.00,'967','967',967,NULL,NULL),(9,9,4,1,1.00,'1','1',1,NULL,NULL),(10,10,4,1,70.00,'70','70',70,NULL,NULL),(11,11,4,1,126.00,'126','126',126,NULL,NULL),(12,12,4,1,2110.00,'2110','2110',2110,NULL,NULL),(13,13,4,1,394.00,'394','394',394,NULL,NULL),(14,14,4,1,1028.00,'1028','1028',1028,NULL,NULL),(15,15,4,1,609.00,'609','609',609,NULL,NULL),(16,16,4,1,162.00,'162','162',162,NULL,NULL),(17,17,4,1,1000.00,'1000','1000',1000,NULL,NULL),(18,18,4,1,185.00,'185','185',185,NULL,NULL),(19,19,4,1,1277.00,'1277','1277',1277,NULL,NULL),(20,20,5,1,5.00,'5','5',5,NULL,NULL),(21,21,5,1,1.00,'1','1',1,NULL,NULL),(22,22,5,1,1.00,'1','1',1,NULL,NULL),(23,23,5,1,1.00,'1','1',1,NULL,NULL),(24,24,5,1,72.00,'72','72',72,NULL,NULL),(25,25,5,1,1.00,'1','1',1,NULL,NULL),(26,26,6,1,8.00,'2+3=5+3=8','2,3,3',2,NULL,NULL),(27,27,7,1,1.00,'1','1',1,NULL,NULL),(28,28,7,1,2.00,'2','2',2,NULL,NULL),(29,29,7,1,29.00,'29','29',29,NULL,NULL),(30,30,7,1,461.00,'461','461',461,NULL,NULL),(31,31,8,1,2.00,'2','2',2,NULL,NULL),(32,32,8,1,28.00,'28','28',28,NULL,NULL),(33,33,8,1,5.00,'5','5',5,NULL,NULL),(34,34,8,1,68.00,'68','68',68,NULL,NULL),(35,35,3,1,100.00,'100','100',100,NULL,NULL),(36,36,9,1,1.00,'1','1',1,NULL,NULL),(37,37,9,1,100.00,'100','100',100,NULL,NULL),(38,38,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(39,39,10,1,1.00,'1','1',1,NULL,NULL),(40,40,10,1,1.00,'1','1',1,NULL,NULL),(41,41,10,1,1645.00,'1645','1645',1645,NULL,NULL),(42,42,10,1,35.00,'35','35',35,NULL,NULL),(43,43,10,1,18.00,'18','18',18,NULL,NULL),(44,44,11,1,200.00,'200','200',200,NULL,NULL),(45,45,12,1,104.00,'104','104',104,NULL,NULL),(46,46,11,2,50.00,NULL,NULL,NULL,NULL,NULL),(47,47,12,2,200.00,NULL,NULL,NULL,NULL,NULL),(49,49,13,2,54.00,'54','54',54,NULL,NULL),(50,50,13,1,1.00,'1','1',1,NULL,NULL),(51,51,13,1,176.00,'176','176',176,NULL,NULL),(52,52,13,1,2954.00,'2954','2954',2954,NULL,NULL),(53,53,13,1,90.00,'90','90',90,NULL,NULL),(54,54,13,2,NULL,NULL,NULL,NULL,NULL,NULL),(55,55,13,2,13.00,'13','13',13,NULL,NULL),(56,54,13,3,NULL,NULL,NULL,NULL,NULL,NULL),(57,56,13,3,90.00,NULL,NULL,NULL,NULL,NULL),(58,57,14,1,81.00,'81','81',81,NULL,NULL),(59,58,14,1,7.00,'7','7',7,NULL,NULL),(60,59,14,1,44.00,'44','44',44,NULL,NULL),(61,60,14,1,37.00,'37','37',37,NULL,NULL),(62,61,14,1,8.00,'8','8',8,NULL,NULL),(63,62,14,1,11.00,'11','11',11,NULL,NULL),(64,63,14,1,8.00,'8','8',8,NULL,NULL),(65,64,15,1,76.00,'76','76',76,NULL,NULL),(66,65,15,1,1148.00,'1148','1148',1148,NULL,NULL),(69,68,17,1,1519.00,'1519','1519',1519,NULL,NULL),(70,69,17,1,175.00,'175','175',175,NULL,NULL),(71,70,18,1,2220.00,'2220','2220',2220,NULL,NULL),(72,71,18,1,2235.00,'2235','2235',2235,NULL,NULL),(73,72,18,1,110.00,'110','110',110,NULL,NULL),(74,73,18,1,0.00,'0','0',0,NULL,NULL),(75,74,18,1,0.00,'0','0',0,NULL,NULL),(76,75,18,1,59.00,'59','59',59,NULL,NULL),(77,76,18,1,190.00,'190','190',190,NULL,NULL),(78,77,18,1,1.00,'1','1',1,NULL,NULL),(79,78,6,1,3.00,'3','3',3,NULL,NULL),(80,79,19,1,120.00,'120','120',120,NULL,NULL),(81,80,19,1,76.00,'76','76',76,NULL,NULL),(82,81,19,1,97.00,'97','97',97,NULL,NULL),(83,82,19,1,3.00,'3','3',3,NULL,NULL),(84,83,19,1,0.60,'0.6','0.6',0.6,NULL,NULL),(85,84,19,1,12.00,'12','12',12,NULL,NULL),(86,85,19,1,47.00,'47','47',47,NULL,NULL),(87,86,19,1,26.00,'26','26',26,NULL,NULL),(88,87,19,1,4.00,'4','4',4,NULL,NULL),(89,88,19,1,52.00,'52','52',52,NULL,NULL),(90,89,19,1,26.00,'26','26',26,NULL,NULL),(115,110,22,1,80.00,'80','80',80,NULL,NULL),(116,111,22,2,60.00,NULL,NULL,NULL,NULL,NULL),(117,112,23,2,19.00,'19','19',19,NULL,NULL),(124,119,24,1,256.00,'256','256',256,NULL,NULL),(125,120,24,1,3.00,'3','3',3,NULL,NULL),(126,121,24,1,1.00,'1','1',1,NULL,NULL),(127,122,24,1,2.00,'2','2',2,NULL,NULL),(128,123,24,1,9.00,'9','9',9,NULL,NULL),(129,124,24,1,5.00,'5','5',5,NULL,NULL),(137,132,25,1,1.00,'1','1',1,NULL,NULL),(138,133,25,1,55.00,'55','55',55,NULL,NULL),(139,134,25,2,55.00,NULL,NULL,NULL,NULL,NULL),(140,135,25,1,1.00,'1','1',1,NULL,NULL),(141,136,25,1,1.00,'1','1',1,NULL,NULL),(142,137,25,2,10010.00,'10010',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsohed`
--

LOCK TABLES `dbtcsohed` WRITE;
/*!40000 ALTER TABLE `dbtcsohed` DISABLE KEYS */;
INSERT INTO `dbtcsohed` VALUES (1,1,'CSORRA SBY-denny-202501-0','CSO',99537,'denny',1,'P','R','2025-01-04 08:47:48',NULL),(2,2,'CSSRRA SBY-denny-202501-0','CSS',99537,'denny',1,'P','R','2025-01-04 09:21:08',NULL),(3,3,'CSORRA SBY-denny-202501-0','CSO',99537,'denny',1,'P','R','2025-01-04 09:33:37',NULL),(4,4,'CSSRRA SBY-denny-202501-0','CSS',99537,'denny',1,'P','R','2025-01-08 12:17:01',NULL),(5,5,'CSSRRA SBY-denny-202501-0','CSS',99537,'denny',1,'P','R','2025-01-08 12:30:06',NULL),(6,3,'CSORRA SBY-testcso-202501','CSO',99501,'testcso',1,'P','R','2025-01-09 14:39:13',NULL),(7,6,'CSSRRA SBY-saya-202501-07','CSS',99166,'saya',1,'P','R','2025-01-13 14:32:05',NULL),(8,7,'CSSRRA SBY-saya-202501-08','CSS',99166,'saya',1,'P','R','2025-01-13 15:10:18',NULL),(9,8,'CSSRRA SBY-denny-202501-0','CSS',99537,'denny',1,'P','R','2025-01-21 08:49:38',NULL),(10,8,'CSSRRA SBY-askhid-202501-','CSS',99708,'askhid',1,'P','R','2025-01-22 15:11:38',NULL),(11,9,'CSSRRA SBY-saya-202501-11','CSS',99166,'saya',1,'P','R','2025-01-30 15:42:49',NULL),(12,9,'CSSRRA SBY-askhid-202501-','CSS',99708,'askhid',1,'P','R','2025-01-30 15:43:37',NULL),(13,9,'CSSRRA SBY-ertyu-202501-1','CSS',99413,'ertyu',1,'P','R','2025-01-30 15:47:22',NULL),(14,10,'CSSRRA SBY-denny-202502-1','CSS',99537,'denny',1,'P','R','2025-02-05 11:59:51',NULL),(15,11,'CSSRRA SBY-askhid-202502-','CSS',99708,'askhid',1,'P','R','2025-02-06 13:05:14',NULL),(16,3,'CSORRA SBY-saya-202502-16','CSO',99166,'saya',1,'P','R','2025-02-06 13:06:40',NULL),(17,11,'CSSRRA SBY-saya-202502-17','CSS',99166,'saya',1,'P','R','2025-02-06 13:06:54',NULL),(18,12,'CSSRRA SBY-askhid-202502-','CSS',99708,'askhid',1,'P','R','2025-02-12 16:01:33',NULL),(19,13,'CSSRRA SBY-testcso-202502','CSS',99501,'testcso',1,'P','R','2025-02-14 14:29:12',NULL),(22,15,'CSORRA SBY-ertyu-202502-2','CSO',99413,'ertyu',1,'P','R','2025-02-18 11:46:58',NULL),(23,15,'CSORRA SBY-askhid-202502-','CSO',99708,'askhid',1,'P','R','2025-02-18 14:44:37',NULL),(24,16,'CSORRA SBY-askhid-202502-','CSO',99708,'askhid',1,'P','R','2025-02-20 14:25:16',NULL),(25,19,'CSSRRA SBY-askhid-202504-','CSS',99708,'askhid',1,'A','R','2025-04-11 16:54:52',NULL);
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
INSERT INTO `dbtcsoketerangan` VALUES (71,1),(71,2),(75,1),(76,1),(75,2),(76,2),(75,3),(76,3),(103,3),(113,3),(114,3),(7,1),(7,2),(7,3),(38,1),(46,1),(47,1),(46,2),(47,2),(46,3),(47,3),(54,1),(54,2),(54,3),(54,1),(56,1),(54,2),(56,2),(54,3),(56,3),(98,1),(99,1),(100,1),(101,1),(102,1),(99,1),(100,1),(101,1),(102,1),(106,1),(107,1),(111,1),(114,3),(130,1),(131,1),(134,3),(137,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsoprsn`
--

LOCK TABLES `dbtcsoprsn` WRITE;
/*!40000 ALTER TABLE `dbtcsoprsn` DISABLE KEYS */;
INSERT INTO `dbtcsoprsn` VALUES (1,1,99537,'denny','denny','1',1,1,NULL,'P','R'),(2,1,99166,'saya','saya','1',1,2,NULL,'P','R'),(4,2,99537,'denny','denny','3',1,1,NULL,'P','R'),(5,4,99537,'denny','denny','4',1,1,NULL,'P','R'),(6,4,99166,'saya','saya','4',1,2,NULL,'P','R'),(8,5,99537,'denny','denny','3',1,1,NULL,'P','R'),(9,5,99921,'aldo9442','Aldo','4',1,2,NULL,'P','R'),(11,6,99166,'saya','saya','2',1,1,'g','P','R'),(13,6,99537,'denny','denny','3',1,2,'d','P','R'),(14,6,99341,'joy10253','Joy','3',1,2,'g','P','R'),(17,7,99166,'saya','saya','6',1,1,NULL,'P','R'),(18,7,99537,'denny','denny','7',1,2,NULL,'P','R'),(19,7,99261,'gunawan2717','Gunawan','7',1,2,NULL,'P','R'),(20,8,99537,'denny','denny','2',1,2,NULL,'P','R'),(21,8,99708,'askhid','askhid','6',1,1,NULL,'P','R'),(22,8,99793,'kristiawan04496','Kristiawan','2',1,2,NULL,'P','R'),(23,8,99908,'nigel','Nigel','3',1,2,NULL,'P','R'),(24,9,99166,'saya','saya','1',1,1,NULL,'P','R'),(25,9,99708,'askhid','askhid','1',1,1,NULL,'P','R'),(26,9,99413,'ertyu','ertyu','5',1,1,NULL,'P','R'),(27,9,99921,'aldo9442','Aldo','1',1,2,NULL,'P','R'),(28,10,99537,'denny','denny','1',1,1,NULL,'P','R'),(29,11,99708,'askhid','askhid','3',1,1,NULL,'P','R'),(30,11,99166,'saya','saya','6',1,1,NULL,'P','R'),(31,11,99413,'ertyu','ertyu','1',1,2,NULL,'P','R'),(32,11,99501,'testcso','Test CSO','1',1,2,NULL,'P','R'),(33,12,99708,'askhid','askhid','2',1,1,NULL,'P','R'),(34,12,99341,'joy10253','Joy','5',1,2,NULL,'P','R'),(35,12,99392,'zefanya9314','Zefanya','3',1,2,NULL,'P','R'),(36,13,99501,'testcso','Test CSO','3',1,1,NULL,'P','R'),(37,13,99708,'askhid','askhid','3',1,2,NULL,'P','R'),(39,3,99537,'denny','denny','2',1,1,NULL,'P','R'),(40,3,99501,'testcso','Test CSO','4',1,1,NULL,'P','R'),(41,3,99166,'saya','saya','5',1,2,NULL,'P','R'),(42,15,99413,'ertyu','ertyu','3',1,1,NULL,'P','R'),(43,15,99708,'askhid','askhid','3',1,1,NULL,'P','R'),(44,15,99501,'testcso','Test CSO','3',1,2,NULL,'P','R'),(45,16,99708,'askhid','askhid','2',1,1,NULL,'P','R'),(46,16,99261,'gunawan2717','Gunawan','2',1,2,NULL,'P','R');
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
  `koreksi` decimal(10,2) DEFAULT NULL,
  `deviasi` decimal(10,2) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `group_value` int(11) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(10,2) DEFAULT NULL,
  `cogs_manual` decimal(10,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet`
--

LOCK TABLES `dbttrsdet` WRITE;
/*!40000 ALTER TABLE `dbttrsdet` DISABLE KEYS */;
INSERT INTO `dbttrsdet` VALUES (1,1,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','FAAA006OO00300000000000470','BESI AS S45C 30MM X 0.47M',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'BTG',1000.00,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 08:16:26'),(2,1,'FAAA006OO00300000000000490','FAAA006OO00300000000000490','FAAA006OO00300000000000490','BESI AS S45C 30MM X 0.49M',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'BTG',1000.00,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 08:16:26'),(3,1,'FAAF044OO00130000000012000','FAAF044OO00130000000012000','FAAF044OO00130000000012000','BESI BETON ULIR 13MMX12M ',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'BTG',7126.20,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 08:16:26'),(4,1,'FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','GRATING 25/4.3/30/6/100/6000/905 F',0,NULL,NULL,NULL,NULL,NULL,53.00,NULL,NULL,NULL,NULL,'LBR',20311.72,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 08:16:26'),(8,2,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','BESI AS ST41 5MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,3000.00,NULL,NULL,NULL,NULL,'BTG',10931.26,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 09:17:22'),(9,2,'FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','BESI AS ST41 5MM X 6M BR',0,NULL,NULL,NULL,NULL,NULL,600.00,NULL,NULL,NULL,NULL,'BTG',10856.33,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 09:17:22'),(10,2,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','BESI AS ST41 6MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,499.00,NULL,NULL,NULL,NULL,'BTG',10562.13,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 09:17:22'),(11,2,'FAAA002OO00060000000006000L','FAAA002OO00060000000006000L','FAAA002OO00060000000006000L','BESI AS ST41 6MM X 6M L',0,NULL,NULL,NULL,NULL,NULL,967.00,NULL,NULL,NULL,NULL,'BTG',10302.57,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 09:17:22'),(15,3,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','BESI AS ST41 5MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,3000.00,200.00,0.00,NULL,NULL,'BTG',10931.26,0.00,NULL,'R',2,99166,0,0,NULL,NULL,0,0,NULL,'2025-01-04 09:29:14'),(16,3,'FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','BESI AS ST41 5MM X 6M BR',0,NULL,NULL,NULL,NULL,NULL,600.00,NULL,NULL,NULL,NULL,'BTG',10856.33,0.00,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-04 09:29:14'),(17,3,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','BESI AS ST41 6MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,499.00,0.01,0.00,NULL,NULL,'BTG',10562.13,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-01-04 09:29:14'),(19,4,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','ACP PVDF PB 4X1250X4780 AL 0.3 GLY',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',24699.48,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(20,4,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,0.00,0.00,1,NULL,'LBR',18389.11,5.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-01-08 12:16:13'),(21,4,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',0,NULL,NULL,NULL,NULL,NULL,120.00,0.00,0.00,1,NULL,'LBR',19824.17,5.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-01-08 12:16:13'),(22,4,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','BESI AS ST41 5MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,2115.00,NULL,NULL,2,-5,'BTG',10931.09,10.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(23,4,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','BESI AS ST41 6MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,389.00,NULL,NULL,2,5,'BTG',10562.13,10.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(24,4,'FAAA002OO00120000000006000BR','FAAA002OO00120000000006000BR','FAAA002OO00120000000006000BR','BESI AS ST41 12MM X 6M BR',0,NULL,NULL,NULL,NULL,NULL,1028.00,NULL,NULL,NULL,NULL,'BTG',10404.72,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(25,4,'FAAA002OO00127000000006000AB','FAAA002OO00127000000006000AB','FAAA002OO00127000000006000AB','BESI AS ST41 1/2\" X 6M AB',0,NULL,NULL,NULL,NULL,NULL,609.00,NULL,NULL,NULL,NULL,'BTG',10135.18,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(26,4,'FAAA006OO00200000000006000','FAAA006OO00200000000006000','FAAA006OO00200000000006000','BESI AS S45C 20MM X 6M',0,NULL,NULL,NULL,NULL,NULL,162.00,NULL,NULL,NULL,NULL,'BTG',14026.63,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(27,4,'FAAA999OO00065000000002000','FAAA999OO00065000000002000','FAAA999OO00065000000002000','SILVER STEEL 6.5MM X 2M',0,NULL,NULL,NULL,NULL,NULL,1148.00,NULL,NULL,NULL,NULL,'BTG',20943.40,0.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(28,4,'FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','PLAT BORDES 1.7MMX4ftX8ft PRESS',0,NULL,NULL,NULL,NULL,NULL,185.00,NULL,NULL,NULL,NULL,'LBR',11156.11,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(29,4,'FBAI015OO00007012200002440','FBAI015OO00007012200002440','FBAI015OO00007012200002440','PLAT BESI 0.7MMX4ftx8ft CB',0,NULL,NULL,NULL,NULL,NULL,1277.00,NULL,NULL,NULL,NULL,'LBR',10318.14,NULL,NULL,'R',1,99166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:16:13'),(34,5,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','ACP PVDF PB 4X1250X4780 AL 0.3 GLY',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,1,-4,'LBR',24699.48,2.00,NULL,'R',1,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:30:04'),(35,5,'ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','ACP PE MSG 4MMX1220X1640 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',26777.82,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:30:04'),(36,5,'ABAR212OO00040012200002440CHF','ABAR212OO00040012200002440CHF','ABAR212OO00040012200002440CHF','ACP PE MSG 4MMX1220X2440 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,1.00,-1.00,0.00,NULL,NULL,'LBR',18389.11,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-01-08 12:30:04'),(37,5,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,1,4,'LBR',18389.11,2.00,NULL,'R',1,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:30:04'),(38,5,'ABAR213OO00040011200002440CHF','ABAR213OO00040011200002440CHF','ABAR213OO00040011200002440CHF','ACP PE GR 4MMX1120X2440 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',2617.69,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-08 12:30:04'),(39,3,'9999001','','','1',0,NULL,'1','1',NULL,'1',2.00,0.01,0.00,NULL,NULL,'2',NULL,0.00,NULL,'TR',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-01-13 10:50:57'),(40,6,'9999001','9999001','','1',0,NULL,'1','1',NULL,'1',1.00,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'TR',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 14:28:29'),(41,6,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','FAAA006OO00300000000000470','BESI AS S45C 30MM X 0.47M',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'BTG',1000.00,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 14:28:29'),(42,6,'FBAI015OO00080012200002440KP','FBAI015OO00080012200002440KP','FBAI015OO00080012200002440KP','PLAT BESI 8MMX4ftX8ft (GR C)',0,NULL,NULL,NULL,NULL,NULL,30.00,0.00,0.00,NULL,NULL,'LBR',5601.13,0.00,NULL,'R',1,99341,0,0,NULL,NULL,0,0,NULL,'2025-01-13 14:28:29'),(43,6,'FBAJ999OO00120000380006000F','FBAJ999OO00120000380006000F','FBAJ999OO00120000380006000F','STREP BESI 12MMX38MMX6M F',0,NULL,NULL,NULL,NULL,NULL,461.00,NULL,NULL,NULL,NULL,'BTG',9716.92,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 14:28:29'),(47,7,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','FAAA006OO00300000000000470','BESI AS S45C 30MM X 0.47M',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'BTG',1000.00,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 15:09:46'),(48,7,'FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','GRATING 25/4.3/30/6/100/6000/905 F',0,NULL,NULL,NULL,NULL,NULL,29.00,0.00,0.00,NULL,NULL,'LBR',20311.72,0.00,NULL,'R',1,99261,0,0,NULL,NULL,0,0,NULL,'2025-01-13 15:09:46'),(49,7,'FCAY153OO-00000AVESTA','FCAY153OO-00000AVESTA','FCAY153OO-00000AVESTA','K LAS AVESTA WELDING 316',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'KG ',10000.00,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 15:09:46'),(50,7,'FFBX999OO00190500127000000G','FFBX999OO00190500127000000G','FFBX999OO00190500127000000G','V. SOCK AIR 3/4\" X 1/2\" (G BRAND)',0,NULL,NULL,NULL,NULL,NULL,68.00,NULL,NULL,NULL,NULL,'BJ ',72248.65,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-13 15:09:46'),(51,8,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','ACP PVDF PB 4X1250X4780 AL 0.3 GLY',0,NULL,NULL,NULL,NULL,NULL,1.00,2.00,0.00,NULL,NULL,'LBR',24699.48,2000.00,NULL,'R',1,99537,0,0,NULL,NULL,1,0,NULL,'2025-01-21 08:49:35'),(52,8,'ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','ACP PE MSG 4MMX1220X1640 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',26777.82,NULL,NULL,'R',1,99537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-21 08:49:35'),(53,8,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','BESI AS ST41 5MM X 6M AB',0,NULL,NULL,NULL,NULL,NULL,1645.00,0.00,0.00,NULL,NULL,'BTG',10931.26,NULL,NULL,'R',1,99793,0,0,NULL,NULL,0,0,NULL,'2025-01-21 08:49:35'),(54,8,'FAAA999OO00040000000002000','FAAA999OO00040000000002000','FAAA999OO00040000000002000','SILVER STEEL 4MM X 2M',0,NULL,NULL,NULL,NULL,NULL,130.00,NULL,NULL,NULL,NULL,'BTG',60801.18,6000.00,NULL,'R',1,99793,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-21 08:49:35'),(55,8,'FAAF044OO00130000000012000','FAAF044OO00130000000012000','FAAF044OO00130000000012000','BESI BETON ULIR 13MMX12M ',0,NULL,NULL,NULL,NULL,NULL,1.00,0.00,0.00,NULL,NULL,'BTG',7126.20,NULL,NULL,'R',1,99793,0,0,NULL,NULL,0,0,NULL,'2025-01-21 08:49:35'),(56,8,'FBAG999OO00015012200002440GRC','FBAG999OO00015012200002440GRC','FBAG999OO00015012200002440GRC','PLAT BORDES 1.5MMX4ftX8ft PRESS KH',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'LBR',8621.97,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-21 08:49:35'),(57,8,'FBAI015OO00018012200002440GRC','FBAI015OO00018012200002440GRC','FBAI015OO00018012200002440GRC','PLAT BESI 1.8MMX4ftX8ft (GR C)',0,NULL,NULL,NULL,NULL,NULL,35.00,NULL,NULL,NULL,NULL,'LBR',8977.23,NULL,NULL,'R',1,99908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-21 08:49:35'),(58,9,'AAAA194OO001270000000003000EKI','AAAA194OO001270000000003000EKI','AAAA194OO001270000000003000EKI','AS ALM 6061 1/2\"X3M EKI',0,NULL,NULL,NULL,NULL,NULL,304.00,NULL,NULL,NULL,NULL,'BTG',49790.82,NULL,NULL,'R',2,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-30 15:34:20'),(59,9,'ABAIZZZOO001600001606148','ABAIZZZOO001600001606148','ABAIZZZOO001600001606148','PLAT ALM 6061 16MMX4FTX8FT HMA',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',49502.00,NULL,NULL,'R',1,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-30 15:34:20'),(60,9,'KEAAZZZOO00100010212920','KEAAZZZOO00100010212920','KEAAZZZOO00100010212920','PIPA KUN 2\"X1.2MMX5.8M WAL',0,NULL,NULL,NULL,NULL,NULL,176.00,NULL,NULL,NULL,NULL,'BTG',131823.88,NULL,NULL,'R',1,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-30 15:34:20'),(61,9,'KEAAZZZOO0012700000008005800WA','KEAAZZZOO0012700000008005800WA','KEAAZZZOO0012700000008005800WA','PIPA KUN 1/2\"X0.8MMX5.8M WAL',0,NULL,NULL,NULL,NULL,NULL,2954.00,NULL,NULL,NULL,NULL,'BTG',129059.45,NULL,NULL,'R',1,99921,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-01-30 15:34:20'),(62,9,'KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330','PIPA KUN 3/4\"X1.2MMX5.8M WAL',0,NULL,NULL,NULL,NULL,NULL,90.00,0.00,0.00,NULL,NULL,'BTG',129267.01,NULL,NULL,'R',3,99921,0,0,NULL,NULL,0,0,NULL,'2025-01-30 15:34:20'),(63,10,'ABAI278OO000070IA23.42KGLBR','ABAI278OO000070IA23.42KGLBR','ABAI278OO000070IA23.42KGLBR','PLAT ALM 1100 0.7MMX1MX2M IA2',0,NULL,NULL,NULL,NULL,NULL,35.00,0.00,0.00,2,2,'LBR',52164.72,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,600.00,'2025-02-04 11:30:34'),(64,10,'ABPB278OO00006001002000SA2','ABPB278OO00006001002000SA2','ABPB278OO00006001002000SA2','PLAT ALM 1100 0.6MMX1MX2M SA2',0,NULL,NULL,NULL,NULL,NULL,5.00,0.00,0.00,1,1,'LBR',44971.17,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,500.00,'2025-02-04 11:30:34'),(65,10,'AAAA194OO00127000003000EKI','','AAAA194OO00127000003000EKI','AS ALM 6061 1/2\"X3M EKI ',0,NULL,NULL,NULL,NULL,NULL,44.00,NULL,NULL,NULL,NULL,'BTG',52226.82,NULL,NULL,'R',1,99708,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-05 11:58:40'),(66,10,'AAAJ194OO000500409EKI','','AAAJ194OO000500409EKI','STREP ALM 5X50MMX6M EKI',0,NULL,NULL,NULL,NULL,NULL,10.00,0.00,0.00,2,-2,'BTG',49511.00,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,700.00,'2025-02-05 11:58:40'),(67,10,'ABAI278OO00004011000.412SA2','','ABAI278OO00004011000.412SA2','PLAT ALM 1100 0.4MMX1MX2M SA2',0,NULL,NULL,NULL,NULL,NULL,83.00,0.00,0.00,1,-1,'LBR',50250.00,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,50.00,'2025-02-05 11:58:41'),(68,10,'BAAAZZZOO00127000000003100GCM','','BAAAZZZOO00127000000003100GCM','AS BRONZE 1/2\"X3.1 M GCM                       ',0,NULL,NULL,NULL,NULL,NULL,9.00,0.00,0.00,3,NULL,'BTG',154800.13,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,10.00,'2025-02-05 11:58:41'),(69,10,'CAAAZZZOO001400555SBM','','CAAAZZZOO001400555SBM','AS TBG BULAT 14MMX4M SBM',0,NULL,NULL,NULL,NULL,NULL,10.00,0.00,0.00,3,NULL,'PCS',155673.80,0.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,100.00,'2025-02-05 11:58:41'),(70,11,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,0.00,0.00,NULL,NULL,'LBR',18389.11,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-06 13:04:58'),(71,11,'FAAA999OO00065000000002000','FAAA999OO00065000000002000','FAAA999OO00065000000002000','SILVER STEEL 6.5MM X 2M',0,NULL,NULL,NULL,NULL,NULL,1148.00,NULL,NULL,NULL,NULL,'BTG',20943.40,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 13:04:58'),(72,11,'FAAB999OO00060000060006000TM','FAAB999OO00060000060006000TM','FAAB999OO00060000060006000TM','BESI AS SEGI-4 6MMX6MMX6M TM',0,NULL,NULL,NULL,NULL,NULL,1519.00,NULL,NULL,NULL,NULL,'BTG',18671.17,NULL,NULL,'R',1,99413,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 13:04:58'),(73,11,'FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','PLAT BORDES 1.7MMX4ftX8ft PRESS',0,NULL,NULL,NULL,NULL,NULL,175.00,NULL,NULL,NULL,NULL,'LBR',11156.11,NULL,NULL,'R',1,99501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-06 13:04:58'),(74,12,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,NULL,NULL,'LBR',18389.11,5.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 16:01:11'),(75,12,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',0,NULL,NULL,NULL,NULL,NULL,120.00,0.00,0.00,NULL,NULL,'LBR',19824.17,1.00,NULL,'R',1,99341,0,0,NULL,NULL,1,0,NULL,'2025-02-12 16:01:11'),(76,12,'FAAA002OO00140000000006000L','FAAA002OO00140000000006000L','FAAA002OO00140000000006000L','BESI AS ST41 14MM X 6M L',0,NULL,NULL,NULL,NULL,NULL,2235.00,0.00,0.00,1,NULL,'BTG',10199.95,10.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-12 16:01:11'),(77,12,'FAAA002OO00150000000006000L','FAAA002OO00150000000006000L','FAAA002OO00150000000006000L','BESI AS ST41 15MM X 6M L',0,NULL,NULL,NULL,NULL,NULL,2220.00,0.00,0.00,1,NULL,'BTG',10234.79,20.00,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-12 16:01:11'),(78,12,'FBAI015OO00050012200002440ET','FBAI015OO00050012200002440ET','FBAI015OO00050012200002440ET','PLAT BESI 5MMX4ftX8ft ET',0,NULL,NULL,NULL,NULL,NULL,190.00,NULL,NULL,NULL,NULL,'LBR',9739.30,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 16:01:11'),(79,12,'FBAI015OO00050012200002440GRC','FBAI015OO00050012200002440GRC','FBAI015OO00050012200002440GRC','PLAT BESI 5MMX4ftX8ft (GR C)',0,NULL,NULL,NULL,NULL,NULL,59.00,NULL,NULL,NULL,NULL,'LBR',8716.68,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 16:01:11'),(80,12,'FBAK999OO00027012200002440','FBAK999OO00027012200002440','FBAK999OO00027012200002440','PLAT BORDES 2.7MMX4ftX8ft',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'LBR',9716.38,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-12 16:01:11'),(81,12,'FCAY327 OO0003200000000ASME','FCAY327 OO0003200000000ASME','FCAY327 OO0003200000000ASME','K LAS 3.2MM ASOSTA 3.8 ASME SFA 5.4',0,NULL,NULL,NULL,NULL,NULL,14.80,0.00,0.00,NULL,NULL,'KG ',10000.00,200.00,NULL,'R',1,99341,0,1,NULL,NULL,0,0,NULL,'2025-02-12 16:01:11'),(82,13,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,NULL,NULL,'LBR',18389.11,NULL,NULL,'R',1,99708,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(83,13,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',0,NULL,NULL,NULL,NULL,NULL,120.00,NULL,NULL,NULL,NULL,'LBR',19824.17,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(84,13,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ACP PE O 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,97.00,NULL,NULL,NULL,NULL,'LBR',18903.52,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(85,13,'KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','BALL VALVE KUN 3/4\" KIT-TWN',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'BJ ',41757.14,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(86,13,'PAAA134OO00350000000001000','PAAA134OO00350000000001000','PAAA134OO00350000000001000','AS PU 35MM X 1M',0,NULL,NULL,NULL,NULL,NULL,0.60,NULL,NULL,NULL,NULL,'BTG',41666.67,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(87,13,'PEAA537OO01524000000004000QL','PEAA537OO01524000000004000QL','PEAA537OO01524000000004000QL','PIPA PVC PUTIH JIS AW 6\" X 4 M Q-LON',0,NULL,NULL,NULL,NULL,NULL,26.00,NULL,NULL,NULL,NULL,'BTG',27466.49,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(88,13,'PEAA539OO02540000000004000MJ','PEAA539OO02540000000004000MJ','PEAA539OO02540000000004000MJ','PIPA PVC JIS AW PLATINUM LYON 10\" X 4M MJP',0,NULL,NULL,NULL,NULL,NULL,47.00,NULL,NULL,NULL,NULL,'BTG',27862.91,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(89,13,'PEBL538OO02032000000004000QL','PEBL538OO02032000000004000QL','PEBL538OO02032000000004000QL','PIPA PVC PUTIH JIS AW 8\" X 4M Q-LON',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'BTG',26232.11,0.00,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-14 14:27:36'),(90,13,'FFDC120OO00381000254000000SL','','FFDC120OO00381000254000000SL','RED CONC SCH40 WLD 1 1/2\" X 1\" SL',0,NULL,NULL,NULL,NULL,NULL,52.00,NULL,NULL,NULL,NULL,'BJ ',19600.00,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-17 10:03:46'),(91,13,'ZZZZZZZOO000000ALBRPO00000','','ZZZZZZZOO000000ALBRPO00000','ALUMINIUM BRAZING POWDER',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'KLG',20000.00,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-17 10:05:24'),(100,15,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,NULL,NULL,'LBR',18389.11,0.00,NULL,'R',2,99501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-18 11:46:43'),(101,15,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',0,NULL,NULL,NULL,NULL,NULL,120.00,120.00,0.00,NULL,NULL,'LBR',19824.17,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 11:46:43'),(102,15,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ACP PE B 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,124.00,124.00,0.00,NULL,NULL,'LBR',20489.41,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 11:46:43'),(103,15,'ABAR239OC00040012200004880CHF','ABAR239OC00040012200004880CHF','ABAR239OC00040012200004880CHF','ACP PE PG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,24.00,24.00,0.00,NULL,NULL,'LBR',23013.17,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 11:46:43'),(104,15,'ABAR241OO00040012200004880CHF','ABAR241OO00040012200004880CHF','ABAR241OO00040012200004880CHF','ACP PE Y 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,88.00,88.00,0.00,NULL,NULL,'LBR',18542.78,NULL,NULL,'R',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 11:46:43'),(109,15,'9999001','','','TEMUAN',0,NULL,'TEMUAN','TEMUAN',NULL,'TEMUAN',10.00,0.06,0.00,NULL,NULL,'KG',NULL,0.00,NULL,'TR',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 14:21:15'),(110,15,'9999002','','','Closet Sensor',0,NULL,'123321444','10x2',NULL,'1',10.00,0.06,0.00,NULL,NULL,'KG',NULL,0.00,NULL,'TR',1,NULL,0,0,NULL,NULL,0,0,NULL,'2025-02-18 14:24:41'),(122,16,'FFBX999OO00254000127000000G','FFBX999OO00254000127000000G','FFBX999OO00254000127000000G','V. SOCK AIR 1\" X 1/2\" (G BRAND)',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'BJ ',61972.99,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-20 14:25:05'),(123,16,'FFCJ120OO00254000000000000','FFCJ120OO00254000000000000','FFCJ120OO00254000000000000','ELBOW BS SCH40 SMLS A234 1\" 45',0,NULL,NULL,NULL,NULL,NULL,10.00,0.00,0.00,NULL,NULL,'BJ ',58176.09,0.00,NULL,'R',1,99261,0,0,NULL,NULL,0,0,NULL,'2025-02-20 14:25:05'),(124,16,'FFCS120OO00762000000000000','FFCS120OO00762000000000000','FFCS120OO00762000000000000','TEE SGP 3\"',0,NULL,NULL,NULL,NULL,NULL,256.00,NULL,NULL,NULL,NULL,'BJ ',24452.72,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-20 14:25:05'),(125,16,'FFDZ999OO00190500000000000STD','FFDZ999OO00190500000000000STD','FFDZ999OO00190500000000000STD','FLANGE BESI 10K 3/4\" STD',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'BJ ',29004.39,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-20 14:25:05'),(126,16,'FFED210OO03556000000000000A','FFED210OO03556000000000000A','FFED210OO03556000000000000A','BLIND FLANGE ANSI 300 A105 14\" BLRF',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'BJ ',22898.50,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-20 14:25:05'),(127,16,'KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','BALL VALVE KUN 3/4\" KIT-TWN',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'BJ ',41757.14,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-02-20 14:25:05'),(138,19,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,21.00,NULL,NULL,NULL,NULL,'LBR',18389.11,NULL,NULL,'R',2,99642,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 15:16:32'),(139,19,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',0,NULL,NULL,NULL,NULL,NULL,120.00,NULL,NULL,NULL,NULL,'LBR',19824.17,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 15:16:32'),(140,19,'ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','ACP PE LY 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,47.00,NULL,NULL,NULL,NULL,'LBR',27467.33,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 15:16:32'),(141,19,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ACP PE O 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,97.00,NULL,NULL,NULL,NULL,'LBR',18903.52,NULL,NULL,'R',1,99392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-04-11 15:16:32'),(142,19,'ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','ACP PE BU 4MMX1220X2440 AL 0.2 CHJ',0,NULL,NULL,NULL,NULL,NULL,2.00,0.00,0.00,0,NULL,'LBR',22482.22,NULL,NULL,'R',1,99392,0,0,NULL,NULL,0,0,NULL,'2025-04-11 15:16:32'),(143,19,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ACP PE B 4MMX1220X4880 AL 0.2 CHF',0,NULL,NULL,NULL,NULL,NULL,124.00,0.00,0.00,NULL,NULL,'LBR',20489.41,NULL,NULL,'R',2,99642,0,0,NULL,NULL,1,0,NULL,'2025-04-11 15:16:32');
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
  `qty` float(11,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2`
--

LOCK TABLES `dbttrsdet2` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2` DISABLE KEYS */;
INSERT INTO `dbttrsdet2` VALUES (1,1,NULL,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','01',2.00),(2,2,NULL,'FAAA006OO00300000000000490','FAAA006OO00300000000000490','01',2.00),(3,3,NULL,'FAAF044OO00130000000012000','FAAF044OO00130000000012000','01',1.00),(4,4,NULL,'FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','01',53.00),(5,8,NULL,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','01A',3000.00),(6,9,NULL,'FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','01A',600.00),(7,10,NULL,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','01A',499.00),(8,11,NULL,'FAAA002OO00060000000006000L','FAAA002OO00060000000006000L','01A',967.00),(9,15,NULL,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','01A',3000.00),(10,16,NULL,'FAAA002OO00050000000006000BR','FAAA002OO00050000000006000BR','01A',600.00),(11,17,NULL,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','01A',499.00),(12,18,NULL,'9999002','','',500.00),(13,19,NULL,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','04A',1.00),(14,20,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A',76.00),(15,21,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A',120.00),(16,22,NULL,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','01A',2115.00),(17,23,NULL,'FAAA002OO00060000000006000AB','FAAA002OO00060000000006000AB','01A',389.00),(18,24,NULL,'FAAA002OO00120000000006000BR','FAAA002OO00120000000006000BR','01A',1028.00),(19,25,NULL,'FAAA002OO00127000000006000AB','FAAA002OO00127000000006000AB','01A',609.00),(20,26,NULL,'FAAA006OO00200000000006000','FAAA006OO00200000000006000','OnHand',161.00),(21,26,NULL,'FAAA006OO00200000000006000','FAAA006OO00200000000006000','01A',1.00),(23,27,NULL,'FAAA999OO00065000000002000','FAAA999OO00065000000002000','04',1148.00),(24,28,NULL,'FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','01A',185.00),(25,29,NULL,'FBAI015OO00007012200002440','FBAI015OO00007012200002440','01A',1277.00),(26,34,NULL,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','04A',1.00),(27,35,NULL,'ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','04A',1.00),(28,36,NULL,'ABAR212OO00040012200002440CHF','ABAR212OO00040012200002440CHF','04A',1.00),(29,37,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A',76.00),(30,38,NULL,'ABAR213OO00040011200002440CHF','ABAR213OO00040011200002440CHF','04A',1.00),(31,39,NULL,'9999001','','',2.00),(32,40,NULL,'9999001','9999001','',1.00),(33,41,NULL,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','01',2.00),(34,42,NULL,'FBAI015OO00080012200002440KP','FBAI015OO00080012200002440KP','01A',30.00),(35,43,NULL,'FBAJ999OO00120000380006000F','FBAJ999OO00120000380006000F','01A',461.00),(36,47,NULL,'FAAA006OO00300000000000470','FAAA006OO00300000000000470','01',2.00),(37,48,NULL,'FBAN999OO00047609150006096F','FBAN999OO00047609150006096F','01',29.00),(38,49,NULL,'FCAY153OO-00000AVESTA','FCAY153OO-00000AVESTA','01',5.00),(39,50,NULL,'FFBX999OO00190500127000000G','FFBX999OO00190500127000000G','01',68.00),(40,51,NULL,'AAAR244OO00040012500004780GLY','AAAR244OO00040012500004780GLY','04A',1.00),(41,52,NULL,'ABAR212OO00040012200001640CHF','ABAR212OO00040012200001640CHF','04A',1.00),(42,53,NULL,'FAAA002OO00050000000006000AB','FAAA002OO00050000000006000AB','01A',1645.00),(43,54,NULL,'FAAA999OO00040000000002000','FAAA999OO00040000000002000','04',130.00),(44,55,NULL,'FAAF044OO00130000000012000','FAAF044OO00130000000012000','01',1.00),(45,56,NULL,'FBAG999OO00015012200002440GRC','FBAG999OO00015012200002440GRC','01A',18.00),(46,57,NULL,'FBAI015OO00018012200002440GRC','FBAI015OO00018012200002440GRC','01A',35.00),(47,58,NULL,'AAAA194OO001270000000003000EKI','AAAA194OO001270000000003000EKI','01A',304.00),(48,59,NULL,'ABAIZZZOO001600001606148','ABAIZZZOO001600001606148','01A',1.00),(49,60,NULL,'KEAAZZZOO00100010212920','KEAAZZZOO00100010212920','OnHand',88.00),(50,60,NULL,'KEAAZZZOO00100010212920','KEAAZZZOO00100010212920','01A',75.00),(51,60,NULL,'KEAAZZZOO00100010212920','KEAAZZZOO00100010212920','45',13.00),(52,61,NULL,'KEAAZZZOO0012700000008005800WA','KEAAZZZOO0012700000008005800WA','OnHand',1477.00),(53,61,NULL,'KEAAZZZOO0012700000008005800WA','KEAAZZZOO0012700000008005800WA','01A',1067.00),(54,61,NULL,'KEAAZZZOO0012700000008005800WA','KEAAZZZOO0012700000008005800WA','45',410.00),(55,62,NULL,'KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330','45',69.00),(56,62,NULL,'KEAAZZZOO0019053400KUNWAL330','KEAAZZZOO0019053400KUNWAL330','01A',21.00),(57,63,NULL,'ABAI278OO000070IA23.42KGLBR','ABAI278OO000070IA23.42KGLBR','01A',23.00),(58,63,NULL,'ABAI278OO000070IA23.42KGLBR','ABAI278OO000070IA23.42KGLBR','101A',12.00),(60,64,NULL,'ABPB278OO00006001002000SA2','ABPB278OO00006001002000SA2','01A',5.00),(61,65,NULL,'AAAA194OO00127000003000EKI','AAAA194OO00127000003000EKI','002',44.00),(62,66,NULL,'AAAJ194OO000500409EKI','AAAJ194OO000500409EKI','002',10.00),(63,67,NULL,'ABAI278OO00004011000.412SA2','ABAI278OO00004011000.412SA2','001',83.00),(64,68,NULL,'BAAAZZZOO00127000000003100GCM','BAAAZZZOO00127000000003100GCM','002',9.00),(65,69,NULL,'CAAAZZZOO001400555SBM','CAAAZZZOO001400555SBM','002',10.00),(66,70,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A',76.00),(67,71,NULL,'FAAA999OO00065000000002000','FAAA999OO00065000000002000','04',1148.00),(68,72,NULL,'FAAB999OO00060000060006000TM','FAAB999OO00060000060006000TM','01A',1519.00),(69,73,NULL,'FBAG999OO00017012200002440ST','FBAG999OO00017012200002440ST','01A',175.00),(70,74,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A',76.00),(71,75,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A',120.00),(72,76,NULL,'FAAA002OO00140000000006000L','FAAA002OO00140000000006000L','01A',2235.00),(73,77,NULL,'FAAA002OO00150000000006000L','FAAA002OO00150000000006000L','01A',2220.00),(74,78,NULL,'FBAI015OO00050012200002440ET','FBAI015OO00050012200002440ET','01A',190.00),(75,79,NULL,'FBAI015OO00050012200002440GRC','FBAI015OO00050012200002440GRC','01A',59.00),(76,80,NULL,'FBAK999OO00027012200002440','FBAK999OO00027012200002440','01A',1.00),(77,81,NULL,'FCAY327 OO0003200000000ASME','FCAY327 OO0003200000000ASME','01',14.80),(78,82,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-2',19.00),(79,82,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-3',2.00),(80,82,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-1',55.00),(81,83,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-2',5.00),(82,83,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-1',115.00),(84,84,NULL,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-2',29.00),(85,84,NULL,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-1',68.00),(87,85,NULL,'KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','04-01B-3',12.00),(88,86,NULL,'PAAA134OO00350000000001000','PAAA134OO00350000000001000','01-000-2',0.60),(89,87,NULL,'PEAA537OO01524000000004000QL','PEAA537OO01524000000004000QL','21-C21-2',4.00),(90,87,NULL,'PEAA537OO01524000000004000QL','PEAA537OO01524000000004000QL','22-C21-2',22.00),(92,88,NULL,'PEAA539OO02540000000004000MJ','PEAA539OO02540000000004000MJ','22-C21-2',47.00),(93,89,NULL,'PEBL538OO02032000000004000QL','PEBL538OO02032000000004000QL','21-C21-2',1.00),(94,89,NULL,'PEBL538OO02032000000004000QL','PEBL538OO02032000000004000QL','22-C21-2',3.00),(95,90,NULL,'FFDC120OO00381000254000000SL','FFDC120OO00381000254000000SL','04-01B-3',52.00),(96,91,NULL,'ZZZZZZZOO000000ALBRPO00000','ZZZZZZZOO000000ALBRPO00000','01A-C31-2',3.00),(108,100,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-2',19.00),(109,100,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-3',2.00),(110,100,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-1',55.00),(111,101,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-2',5.00),(112,101,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-1',115.00),(114,102,NULL,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-2',55.00),(115,102,NULL,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-1',69.00),(117,103,NULL,'ABAR239OC00040012200004880CHF','ABAR239OC00040012200004880CHF','04A-B52-2',20.00),(118,103,NULL,'ABAR239OC00040012200004880CHF','ABAR239OC00040012200004880CHF','04A-B52-1',4.00),(120,104,NULL,'ABAR241OO00040012200004880CHF','ABAR241OO00040012200004880CHF','04A-B52-2',84.00),(121,104,NULL,'ABAR241OO00040012200004880CHF','ABAR241OO00040012200004880CHF','04A-B52-1',4.00),(125,109,NULL,'9999001','','33',10.00),(126,110,NULL,'9999002','','01A-B52-2',10.00),(138,122,NULL,'FFBX999OO00254000127000000G','FFBX999OO00254000127000000G','04A-B22-2',3.00),(139,123,NULL,'FFCJ120OO00254000000000000','FFCJ120OO00254000000000000','04A-B22-1',10.00),(140,124,NULL,'FFCS120OO00762000000000000','FFCS120OO00762000000000000','04A-B22-1',256.00),(141,125,NULL,'FFDZ999OO00190500000000000STD','FFDZ999OO00190500000000000STD','04A-B22-2',5.00),(142,126,NULL,'FFED210OO03556000000000000A','FFED210OO03556000000000000A','04A-B22-1',2.00),(143,127,NULL,'KHFU999OO00190500000000000KTT','KHFU999OO00190500000000000KTT','04A-B22-3',1.00),(153,138,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-2',19.00),(154,138,NULL,'ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-3',2.00),(156,139,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-1',115.00),(157,139,NULL,'ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-2',5.00),(159,140,NULL,'ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','04A-B52-1',46.00),(160,140,NULL,'ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','04A-B52-2',1.00),(162,141,NULL,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-1',68.00),(163,141,NULL,'ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-2',29.00),(165,142,NULL,'ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','04A-B52-2',1.00),(166,142,NULL,'ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','04A-B52-3',1.00),(168,143,NULL,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-1',69.00),(169,143,NULL,'ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-2',55.00);
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
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
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
  `wrhapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved\r\n1 = Approved',
  `wrhapproved_by` int(11) DEFAULT NULL,
  `picwrhapproval` tinyint(1) DEFAULT NULL,
  `picwrhapproved_by` int(11) DEFAULT NULL,
  `facapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `facapproved_by` int(11) DEFAULT NULL,
  `purapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `purapproved_by` int(11) DEFAULT NULL,
  `kaopsapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `kaopsapproved_by` int(11) DEFAULT NULL,
  `regmenapproval` tinyint(1) DEFAULT 0 COMMENT '0 = Not Approved',
  `regmenapproved_by` int(11) DEFAULT NULL,
  `staffstokapproved_at` timestamp NULL DEFAULT NULL,
  `wrhapproved_at` timestamp NULL DEFAULT NULL,
  `picwrhapproved_at` timestamp NULL DEFAULT NULL,
  `facapproved_at` timestamp NULL DEFAULT NULL,
  `purapproved_at` timestamp NULL DEFAULT NULL,
  `kaopsapproved_at` timestamp NULL DEFAULT NULL,
  `regmenapproved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`trsid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrshed`
--

LOCK TABLES `dbttrshed` WRITE;
/*!40000 ALTER TABLE `dbttrshed` DISABLE KEYS */;
INSERT INTO `dbttrshed` VALUES ('2025-01-04 08:16:26',1,'CSORRA SBY2025-01-04-1','CSO','2025-01-04','2025-01-04',1,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-04 09:17:22',2,'CSSRRA SBY2025-01-04-1','CSS','2025-01-04','2025-01-04',1,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-04 09:29:14',3,'CSORRA SBY2025-01-04-2','CSO','2025-01-04','2025-02-18',2,'Besi Beton Kecil (6mm-12mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-08 12:16:13',4,'CSSRRA SBY2025-01-08-2','CSS','2025-01-08','2025-01-08',2,'Besi Beton Kecil (6mm-12mm),Beton Besar (13mm-32mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-08 12:30:04',5,'CSSRRA SBY2025-01-08-3','CSS','2025-01-08','2025-01-08',3,'Pintu 2 (Wiremesh, kawat galvanis, bendrat, baja r','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-13 14:28:29',6,'CSSRRA SBY2025-01-13-4','CSS','2025-01-13','2025-01-13',4,'Beton Besar (13mm-32mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-13 15:09:46',7,'CSSRRA SBY2025-01-13-5','CSS','2025-01-13','2025-01-13',5,'Pegirian 38 (All Product)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-21 08:49:35',8,'CSSRRA SBY2025-01-21-6','CSS','2025-01-21','2025-01-22',6,'KA-B22 (Pipa Kotak, Pipa Bulat)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-01-30 15:34:20',9,'CSSRRA SBY2025-01-30-7','CSS','2025-01-30','2025-02-04',7,'Besi Beton Kecil (6mm-12mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-04 11:30:34',10,'CSSRRA SBY2025-02-04-1','CSS','2025-02-04','2025-02-05',1,'Pintu 2 (Wiremesh, kawat galvanis, bendrat, baja r','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-06 13:04:58',11,'CSSRRA SBY2025-02-06-2','CSS','2025-02-06','2025-02-06',2,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-12 16:01:11',12,'CSSRRA SBY2025-02-12-3','CSS','2025-02-12','2025-02-12',3,'Beton Besar (13mm-32mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-14 14:27:36',13,'CSSRRA SBY2025-02-14-4','CSS','2025-02-14','2025-02-17',4,'Pintu 2 (Wiremesh, kawat galvanis, bendrat, baja r,Besi Beton Kecil (6mm-12mm)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-18 11:46:43',15,'CSORRA SBY2025-02-18-1','CSO','2025-02-18','2025-02-20',1,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-02-20 14:25:05',16,'CSORRA SBY2025-02-20-2','CSO','2025-02-20','2025-02-20',2,'KA-B3 (Pipa Hitam, Paku, Kawat Las, Atap, Bondeck),KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2025-04-11 15:16:32',19,'CSSRRA SBY2025-04-11-1','CSS','2025-04-11',NULL,1,'KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','A',NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
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
  `itembatchid` varchar(255) NOT NULL,
  `itemcode` varchar(255) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `batchid` int(10) DEFAULT NULL,
  `heatno` varchar(50) DEFAULT NULL,
  `dimension` varchar(100) DEFAULT NULL,
  `tolerance` varchar(100) DEFAULT NULL,
  `kondisi` varchar(250) DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL,
  `cogs` decimal(10,2) DEFAULT NULL,
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
  `cogs` decimal(10,2) DEFAULT NULL,
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
  `itembatchid` varchar(255) NOT NULL,
  `itemcode` varchar(255) NOT NULL,
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
  `statusitem` varchar(5) NOT NULL,
  `isbatch` int(1) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `onhand` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximporcss`
--

LOCK TABLES `dbximporcss` WRITE;
/*!40000 ALTER TABLE `dbximporcss` DISABLE KEYS */;
INSERT INTO `dbximporcss` VALUES ('ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','ACP PE MSG 4MMX1220X4880 AL 0.2 CHF',NULL,NULL,NULL,NULL,NULL,'LBR',18389.11,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:36:27',21.000),('ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','ACP PE GG 4MMX1220X4880 AL 0.2 GLY',NULL,NULL,NULL,NULL,NULL,'LBR',19824.17,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:38:10',120.000),('ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','ACP PE LY 4MMX1220X4880 AL 0.2 CHF',NULL,NULL,NULL,NULL,NULL,'LBR',27467.33,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:38:10',47.000),('ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','ACP PE O 4MMX1220X4880 AL 0.2 CHF',NULL,NULL,NULL,NULL,NULL,'LBR',18903.52,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:38:10',97.000),('ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','ACP PE BU 4MMX1220X2440 AL 0.2 CHJ',NULL,NULL,NULL,NULL,NULL,'LBR',22482.22,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:36:27',2.000),('ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','ACP PE B 4MMX1220X4880 AL 0.2 CHF',NULL,NULL,NULL,NULL,NULL,'LBR',20489.41,NULL,NULL,NULL,NULL,'R',0,'2025-04-11 11:38:10',124.000);
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
  `itembatchid` varchar(255) NOT NULL,
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
  `itembatchid` varchar(255) NOT NULL,
  `wrh` varchar(50) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `batchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetcss`
--

LOCK TABLES `dbximpordetcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetcss` DISABLE KEYS */;
INSERT INTO `dbximpordetcss` VALUES ('ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-2',19.00,NULL),('ABAR212OO00040012200004880CHF','ABAR212OO00040012200004880CHF','04A-B52-3',2.00,NULL),('ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','04A-B52-2',1.00,NULL),('ABAR236OO00040012200002440CHJ','ABAR236OO00040012200002440CHJ','04A-B52-3',1.00,NULL),('ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-1',115.00,NULL),('ABAR214OO00040012200004880GLY','ABAR214OO00040012200004880GLY','04A-B52-2',5.00,NULL),('ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','04A-B52-1',46.00,NULL),('ABAR223OO00040012200004880CHF','ABAR223OO00040012200004880CHF','04A-B52-2',1.00,NULL),('ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-1',68.00,NULL),('ABAR224OO00040012200004880CHF','ABAR224OO00040012200004880CHF','04A-B52-2',29.00,NULL),('ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-1',69.00,NULL),('ABAR237OO00040012200004880CHF','ABAR237OO00040012200004880CHF','04A-B52-2',55.00,NULL);
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
  `statuscekstok` char(1) DEFAULT 'R',
  `coyid` int(10) NOT NULL,
  `jobtypeid` int(1) NOT NULL COMMENT '1. pelaku 2. Analisator',
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxjob`
--

LOCK TABLES `dbxjob` WRITE;
/*!40000 ALTER TABLE `dbxjob` DISABLE KEYS */;
INSERT INTO `dbxjob` VALUES (58,99708,'askhid','askhid','CSO','R',1,1),(59,99413,'ertyu','ertyu','CSO','R',1,1),(60,99501,'testcso','Test CSO','CSO','R',1,2),(61,99166,'saya','saya','CSO','R',1,2),(63,99392,'zefanya9314','Zefanya','CSS','R',1,2),(64,99295,'dea9661','Dea','CSS','R',1,2),(65,99642,'agung001','Agung','CSS','R',1,2),(66,99708,'askhid','askhid','CSS','R',1,1);
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
INSERT INTO `dbxmaterial` VALUES ('Pegirian 38 (All Product)','CSO','R'),('KA-C4 (Pipa Galvanis, Seng Talang, Coil, Mortar)','CSS','R');
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
INSERT INTO `dbxsetdate` VALUES ('2025-02-17','I','CSS','R'),('2025-02-20','I','CSO','R'),('2025-03-21','I','CSS','R'),('2025-04-11','I','CSS','R');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',3,'Personal Access Token','f75449e17457da2ae94ae396f1c35f8a8f8321d9b30e5fe1f55faa813357834a','[\"*\"]','2024-10-31 00:11:14',NULL,'2024-10-31 00:10:53','2024-10-31 00:11:14'),(2,'App\\Models\\User',13,'Personal Access Token','a175c2670f59584e6b9a19d8a3ce88fa3d9ff32e377ce318e1d64e702dfb4f14','[\"*\"]','2024-11-01 20:45:14',NULL,'2024-10-31 19:56:04','2024-11-01 20:45:14'),(3,'App\\Models\\User',13,'Personal Access Token','f1577553d7c1ba1af5ab372fcdbaf04875927b0ff27ec2c0fbc11f1dfc4e965d','[\"*\"]','2024-11-01 19:52:12',NULL,'2024-11-01 18:46:46','2024-11-01 19:52:12'),(4,'App\\Models\\User',13,'Personal Access Token','d4ba105261ed0fc75dcbbc72042b8bd3dc9202ddd12e5624ab120f8f38744c9c','[\"*\"]','2024-11-01 20:10:54',NULL,'2024-11-01 19:53:29','2024-11-01 20:10:54'),(5,'App\\Models\\User',16,'Personal Access Token','9f951a32a33a494fbc1cdd8de9bd7c2fb43e0dabd6405b2dad79d7cbabbcd408','[\"*\"]','2024-11-07 19:55:55',NULL,'2024-11-01 20:35:13','2024-11-07 19:55:55'),(6,'App\\Models\\User',13,'Personal Access Token','745648bd2e780fa6316ac2e42ec611091e531b40201ab07dc63b4bd2b4812e1b','[\"*\"]','2024-11-03 20:14:06',NULL,'2024-11-01 20:45:36','2024-11-03 20:14:06'),(7,'App\\Models\\User',13,'Personal Access Token','e80f12fdd5450789731f72264edba79dce0b463ca34aa1c1c247a95339379940','[\"*\"]','2024-11-01 20:54:06',NULL,'2024-11-01 20:49:21','2024-11-01 20:54:06'),(8,'App\\Models\\User',13,'Personal Access Token','ae3d6d8b857b81037ee42a96e4fef79243965306167354ffec3bd316649033f2','[\"*\"]','2024-11-01 21:04:59',NULL,'2024-11-01 20:54:27','2024-11-01 21:04:59'),(9,'App\\Models\\User',13,'Personal Access Token','a704d57d56d57e4e46031389a757b69fc961c4bd962bf20f51abf142e45d3da6','[\"*\"]','2024-11-01 21:21:19',NULL,'2024-11-01 21:20:50','2024-11-01 21:21:19'),(10,'App\\Models\\User',13,'Personal Access Token','7820cd2086edd768e227a03851f5d099ea14bb2804b8313a3f568a28e58e3bbe','[\"*\"]','2024-11-02 00:42:36',NULL,'2024-11-02 00:41:27','2024-11-02 00:42:36'),(11,'App\\Models\\User',13,'Personal Access Token','95e9f5eacaa90a136cbb6da8cfa8c39f2d6888b007e095f5ad05b655136b2e62','[\"*\"]','2024-11-05 00:42:12',NULL,'2024-11-03 20:23:32','2024-11-05 00:42:12'),(12,'App\\Models\\User',13,'Personal Access Token','ee36e9da136ab8c90dfc3e676be1bcfa82cd16917acea054719c2f6bd9274f78','[\"*\"]','2024-11-08 20:05:41',NULL,'2024-11-07 18:54:20','2024-11-08 20:05:41'),(13,'App\\Models\\User',13,'Personal Access Token','07aec93ebfb9abcdd5fd6e6c254ef0f6a943df7229bbc593875498a362a67e2a','[\"*\"]','2024-12-13 02:06:05',NULL,'2024-11-11 23:26:23','2024-12-13 02:06:05'),(14,'App\\Models\\User',20,'Personal Access Token','1f3b4c694c65dfff8ea656299169f43551468a78cbc511f4d618a42ddedecb16','[\"*\"]',NULL,NULL,'2024-12-22 21:43:34','2024-12-22 21:43:34'),(15,'App\\Models\\User',20,'Personal Access Token','172dabb1c0f961dd44e1234a0fc07a5ddd553a76e18977bce08c0a0a3b12e97c','[\"*\"]',NULL,NULL,'2024-12-22 21:43:34','2024-12-22 21:43:34'),(16,'App\\Models\\User',20,'Personal Access Token','379b54fae28d10da75c2c1e22eaa02b59516316dee377ce5b8a761d5d77d1a86','[\"*\"]','2024-12-22 21:43:41',NULL,'2024-12-22 21:43:34','2024-12-22 21:43:41'),(17,'App\\Models\\User',20,'Personal Access Token','cac9b58aeee6d40a35a160ae277112817e8e365dacae154993ce075ad8818783','[\"*\"]','2024-12-22 21:44:45',NULL,'2024-12-22 21:44:21','2024-12-22 21:44:45'),(18,'App\\Models\\User',20,'Personal Access Token','f583f62c43078c92ccaa97b846d890c466179a3c31b8e3e4611dce41492bc3d5','[\"*\"]','2024-12-27 21:25:48',NULL,'2024-12-27 21:24:37','2024-12-27 21:25:48'),(19,'App\\Models\\User',20,'Personal Access Token','f1767e3fb167822dcd01ba8446db46d2c8efbe670c9901420809e4e63e3e8b8c','[\"*\"]','2024-12-27 21:29:03',NULL,'2024-12-27 21:28:56','2024-12-27 21:29:03'),(20,'App\\Models\\User',22,'Personal Access Token','1aa0e6ed1e9d272ea6b82ce68c2413ac12da2094408a9656bf04f6ce42c67c2e','[\"*\"]','2025-01-02 00:59:52',NULL,'2025-01-02 00:55:20','2025-01-02 00:59:52'),(21,'App\\Models\\User',21,'Personal Access Token','fadcb4af54613d66f8fbbb1dd74a404e4ec41cc4a402ea15cb433261da172ac1','[\"*\"]','2025-01-02 19:25:04',NULL,'2025-01-02 01:00:05','2025-01-02 19:25:04'),(22,'App\\Models\\User',21,'Personal Access Token','66145a7e4510adeb9531eb35ed369c2c43ac88a7542608f7716a9714a3f79e92','[\"*\"]','2025-01-03 20:26:20',NULL,'2025-01-03 18:47:43','2025-01-03 20:26:20'),(23,'App\\Models\\User',21,'Personal Access Token','0da7ab1f715962aa8eb7d4c19999a63f904a11a6bd252ea74e02c7840db68cec','[\"*\"]','2025-01-07 22:52:17',NULL,'2025-01-07 22:16:54','2025-01-07 22:52:17'),(24,'App\\Models\\User',23,'Personal Access Token','7c8c712610049408468247153e609e49d164394a989a4d24aa346f26e43c66e4','[\"*\"]','2025-01-09 00:57:51',NULL,'2025-01-09 00:39:39','2025-01-09 00:57:51'),(25,'App\\Models\\User',22,'Personal Access Token','14979782591420c567fd143debfa7ffdf64362f87f9a96590acc6015638ca04e','[\"*\"]','2025-01-14 01:47:53',NULL,'2025-01-13 00:31:33','2025-01-14 01:47:53'),(26,'App\\Models\\User',21,'Personal Access Token','758d8ff13159b67212e4bd4f14c2aa3ebe9f94d24d4c537bc4c3c75127801538','[\"*\"]','2025-01-20 01:56:17',NULL,'2025-01-20 01:56:12','2025-01-20 01:56:17'),(27,'App\\Models\\User',21,'Personal Access Token','df5e06ce89c7085e725c04f7d8db846113bcbc57537b1127cd18cb4124f5f8c3','[\"*\"]','2025-01-21 00:57:57',NULL,'2025-01-20 01:57:29','2025-01-21 00:57:57'),(28,'App\\Models\\User',24,'Personal Access Token','e8f15bb851e70c2851b54c8994f3dbf2b17b827c93e4248880c4c85d4cd32b55','[\"*\"]','2025-01-22 03:34:07',NULL,'2025-01-22 00:57:29','2025-01-22 03:34:07'),(29,'App\\Models\\User',22,'Personal Access Token','6ea5bcd0ad7931b85406be41ddedb9b42d1c46a190c4aecc8d807f6c91214fd5','[\"*\"]','2025-01-30 01:43:18',NULL,'2025-01-30 01:42:43','2025-01-30 01:43:18'),(30,'App\\Models\\User',24,'Personal Access Token','84899fc448c43e113eaff18d09eb5b998083bb28be052df35cf4d4afb157abd1','[\"*\"]',NULL,NULL,'2025-01-30 01:43:32','2025-01-30 01:43:32'),(31,'App\\Models\\User',24,'Personal Access Token','0251c0528233634ddb2d65dc85373ab6660fe437180d97514f2efbbe7348f559','[\"*\"]','2025-01-30 01:45:27',NULL,'2025-01-30 01:43:32','2025-01-30 01:45:27'),(32,'App\\Models\\User',22,'Personal Access Token','c4f8ba7635a8257579bfbd1403fcfb6f28fdf26326e34c07c16fc866b3bcc81b','[\"*\"]','2025-01-30 01:47:06',NULL,'2025-01-30 01:45:38','2025-01-30 01:47:06'),(33,'App\\Models\\User',25,'Personal Access Token','b2b28f966544bd34b9c3fec3c5bc8c0ff50048f59754864dbc83b4aec1915df9','[\"*\"]','2025-02-03 19:56:04',NULL,'2025-01-30 01:47:18','2025-02-03 19:56:04'),(34,'App\\Models\\User',21,'Personal Access Token','aac07501181f1fbd896d86bb873bbce056d71d8cb6db73e719d56e1846d50f52','[\"*\"]','2025-02-04 22:47:00',NULL,'2025-02-04 21:59:47','2025-02-04 22:47:00'),(35,'App\\Models\\User',21,'Personal Access Token','fa2a379efbaafd339dc77e5271ab670724fb728a5316b08c97d3443efcbc9225','[\"*\"]','2025-02-05 01:16:43',NULL,'2025-02-04 22:48:15','2025-02-05 01:16:43'),(36,'App\\Models\\User',24,'Personal Access Token','124aa6101919225d3794ad32a0d7ce07bc77ece899454ee496406c66e9d6c7d1','[\"*\"]','2025-02-05 23:06:24',NULL,'2025-02-05 23:05:11','2025-02-05 23:06:24'),(37,'App\\Models\\User',22,'Personal Access Token','ee55a8a80248f442f411a986515969506cc846957c7e4be9a66313be994aa24f','[\"*\"]','2025-02-06 19:02:54',NULL,'2025-02-05 23:06:37','2025-02-06 19:02:54'),(38,'App\\Models\\User',24,'Personal Access Token','0e6814b3bd967e24281b7ff91882d1fbb75361f35c177e436ca4d88d8b68d22a','[\"*\"]','2025-02-12 02:06:19',NULL,'2025-02-12 02:01:28','2025-02-12 02:06:19'),(39,'App\\Models\\User',23,'Personal Access Token','e5cc4f83ef11549b73a4b55386dfeba4d0cc0a57410bc35dc63625729fbfb6dc','[\"*\"]','2025-02-14 01:23:53',NULL,'2025-02-14 00:30:01','2025-02-14 01:23:53'),(40,'App\\Models\\User',24,'Personal Access Token','9c835b38efa5cd3bcceba9eafdd39290665b8618ad67f5658eed32e1a97f81d3','[\"*\"]',NULL,NULL,'2025-02-16 19:22:14','2025-02-16 19:22:14'),(41,'App\\Models\\User',24,'Personal Access Token','3f3b711cdbfc51ba6c3b154aed28d2c15769233c60bffff19995b2272a4acbb9','[\"*\"]','2025-02-16 20:25:34',NULL,'2025-02-16 20:25:24','2025-02-16 20:25:34'),(42,'App\\Models\\User',23,'Personal Access Token','32de6ece6812d2d1fe678d0600d4ee797211aaacfd532a1ca3d818c3ab471d51','[\"*\"]','2025-02-16 23:49:45',NULL,'2025-02-16 20:26:03','2025-02-16 23:49:45'),(43,'App\\Models\\User',25,'Personal Access Token','9e035140ecf5f4a88f0fd12bfe5873b2d2243d076773c8f057db7d5ada91e24f','[\"*\"]','2025-02-16 23:50:45',NULL,'2025-02-16 23:50:03','2025-02-16 23:50:45'),(44,'App\\Models\\User',24,'Personal Access Token','bc7de909d0da7adf3174085be4eefc4025b4cacf6cc62f98c6c53a658e02a9d1','[\"*\"]','2025-02-17 19:40:39',NULL,'2025-02-16 23:51:06','2025-02-17 19:40:39'),(45,'App\\Models\\User',25,'Personal Access Token','100c486ff1135c5202eb058047aa31f537642d7fe7413a2b97b68a8b97835d99','[\"*\"]','2025-02-17 19:48:47',NULL,'2025-02-17 19:40:56','2025-02-17 19:48:47'),(46,'App\\Models\\User',24,'Personal Access Token','599c460f2ced4d7af48ec000a55feaddb16c78ae46a0786ca625403661358589','[\"*\"]','2025-02-17 20:57:22',NULL,'2025-02-17 19:48:58','2025-02-17 20:57:22'),(47,'App\\Models\\User',25,'Personal Access Token','39531c8078a88b959811cf97c783ecd401a76d353490befd4d9639a304707427','[\"*\"]','2025-02-18 00:44:20',NULL,'2025-02-17 20:57:35','2025-02-18 00:44:20'),(48,'App\\Models\\User',24,'Personal Access Token','0fe2803f18dce6e93bbea7d79d548e887e24be79b34b5e6ced2a5597dd908577','[\"*\"]','2025-02-18 18:47:55',NULL,'2025-02-18 00:44:34','2025-02-18 18:47:55'),(49,'App\\Models\\User',24,'Personal Access Token','bad3fc4b549af4e97da89db816405c48718bb726aa0c8615a254d547d1c3d6d5','[\"*\"]','2025-02-19 21:34:35',NULL,'2025-02-19 21:12:58','2025-02-19 21:34:35'),(50,'App\\Models\\User',25,'Personal Access Token','445b7ca2ee743907d45f494b1a6323854ef0765910ec6d65a9600471fc82c9c4','[\"*\"]','2025-02-19 21:49:43',NULL,'2025-02-19 21:34:49','2025-02-19 21:49:43'),(51,'App\\Models\\User',24,'Personal Access Token','b8bfa7024e301008d2306a480c998de47bff096fe9545cfaec49dc75a998dbc5','[\"*\"]','2025-02-20 01:25:20',NULL,'2025-02-19 21:50:08','2025-02-20 01:25:20'),(52,'App\\Models\\User',24,'Personal Access Token','978fa2f4071809d183cbb9e4ae9d49212393f14064b8c3452b5f799419a46880','[\"*\"]','2025-02-23 21:01:15',NULL,'2025-02-21 01:19:43','2025-02-23 21:01:15'),(53,'App\\Models\\User',24,'Personal Access Token','c5d3e117cf5d7fd2ed8244397713446da639015f15b5cbf6ad4cc1a0ad4cad77','[\"*\"]',NULL,NULL,'2025-03-06 19:45:02','2025-03-06 19:45:02'),(54,'App\\Models\\User',24,'Personal Access Token','3c1f441020b8312ddcdf55b126e476e8995e6eea5a3108e39db0a6e35b7120a0','[\"*\"]',NULL,NULL,'2025-03-06 19:45:23','2025-03-06 19:45:23'),(55,'App\\Models\\User',24,'Personal Access Token','21603f107e46e0ab6969c5fcefa55af5af04dfc801bce11a81a6ae5ed765476e','[\"*\"]',NULL,NULL,'2025-03-06 19:46:26','2025-03-06 19:46:26'),(56,'App\\Models\\User',24,'Personal Access Token','ecc35bcc055ea46a880107599a9b6dd8720a0c3470315779cbd6eb7ce862bb2f','[\"*\"]',NULL,NULL,'2025-03-06 19:57:23','2025-03-06 19:57:23'),(57,'App\\Models\\User',24,'Personal Access Token','6b6b7b0483d4c3e9dcab1152062e94d3cd8329485458c82bc6c3137ded5aa024','[\"*\"]','2025-03-07 00:32:57',NULL,'2025-03-07 00:31:54','2025-03-07 00:32:57'),(58,'App\\Models\\User',24,'Personal Access Token','990c783278b3b8f7287795c86b8e5fededeb2778134c1ebf46fbb8f4c4f937df','[\"*\"]','2025-03-20 21:16:49',NULL,'2025-03-20 20:03:58','2025-03-20 21:16:49'),(59,'App\\Models\\User',24,'Personal Access Token','d9e5924d97845697d6476a9fc3316ea6f7e7658445326e25774c8edb3eb033ab','[\"*\"]','2025-03-20 20:16:54',NULL,'2025-03-20 20:07:26','2025-03-20 20:16:54'),(60,'App\\Models\\User',21,'Personal Access Token','208389299ae5ec09699fc974060ebe3ad74efbf573ecc6e1fd746d8ab5aea62c','[\"*\"]',NULL,NULL,'2025-04-11 01:21:39','2025-04-11 01:21:39'),(61,'App\\Models\\User',24,'Personal Access Token','dd253733542a606f3a0a1a256efc7e4dcc916693d072d135c592f8a74aa39976','[\"*\"]',NULL,NULL,'2025-04-11 01:22:09','2025-04-11 01:22:09'),(62,'App\\Models\\User',24,'Personal Access Token','bf13e7d00840e07f267419a1a65e7fecd8d8d7fe08c2417e11c1be07a25fc263','[\"*\"]','2025-04-11 20:35:18',NULL,'2025-04-11 02:54:34','2025-04-11 20:35:18'),(63,'App\\Models\\User',21,'Personal Access Token','d8d0d4f360555f56aa3d4d44d98e895b08b9d16015bf17d7d542c0db480d0448','[\"*\"]',NULL,NULL,'2025-04-11 19:48:23','2025-04-11 19:48:23'),(64,'App\\Models\\User',24,'Personal Access Token','20515b5bc2463481f6fac871c504f1e7f2853f77b33cb7232e0a4ea0e4b9c72a','[\"*\"]','2025-04-11 20:19:59',NULL,'2025-04-11 19:48:36','2025-04-11 20:19:59');
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
-- Dumping events for database 'SOS_DEV_RTG'
--

--
-- Dumping routines for database 'SOS_DEV_RTG'
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
	d2.csocount,
	d.createddate
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
		case
		`td`.`statuscso`
			when 1 then `cso1`.`createddate`
			when 2 then `cso2`.`createddate`
			when 3 then `cso3`.`createddate`
			when 4 then `cso4`.`createddate`
			else 0
		end as `createddate`,
		ifnull(`td`.`koreksi`, 0) AS `koreksi`,
		ifnull(`td`.`deviasi`, 0) AS `deviasi`,
		ifnull(`td`.`statuscso`, 0) AS `statuscso`,
		`td`.`groupid` AS `groupid`,
		`g`.`groupdesc` AS `groupdesc`,
		`td`.`statusitem` AS `statusitem`,
		`td`.`analisator_checked` AS `analisator_checked`,
		`td`.`group_value` as `group_value`
-- 		`td`.`createddate` as `createddate`
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
	`sub1`.`typecekstok`,
	SUBSTRING_INDEX(`sub1`.`createddate`," ",1) as `createddate`
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
	and d.statussubmit = 'P' 
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
			AND COALESCE(dbttrsdeta.kesalahan_admin,0) = 0 
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
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
			AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
			AND COALESCE(dbttrsdeta.groupid, 0) = 0
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
		and coalesce(dbttrsdeta.kesalahan_admin, 0) = 0
		AND COALESCE(dbttrsdeta.batch_tertukar ,0) = 0 
		AND COALESCE(dbttrsdeta.groupid, 0) = 0
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
            (((((((((`dbttrsdeta` `td`
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`,
                `dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `dbttrsheda`
            where
                `dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`dbtcsodet` `d`
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `dbxjob`.`userid` as `userid`,
                `dbxjob`.`jobtypeid` as `jobtypeid`,
                `dbxjob`.`name` as `name`
            from
                `dbxjob`
            where
                `dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `dbmgroup`.`groupid` as `groupid`,
                `dbmgroup`.`groupdesc` as `groupdesc`,
                `dbmgroup`.`created_at` as `createddate`,
                `dbmgroup`.`created_by` as `createdby`,
                `dbmgroup`.`updated_at` as `updateddate`,
                `dbmgroup`.`updated_by` as `updatedby`
            from
                `dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`
            from
                `dbttrsheda`
            order by
                `dbttrsheda`.`trsid` desc
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
            (((((((((`dbttrsdeta` `td`
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`,
                `dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `dbttrsheda`
            where
                `dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`dbtcsodet` `d`
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso4`.`itemid` = `td`.`itemid`))
        left join (
            select
                `dbxjob`.`userid` as `userid`,
                `dbxjob`.`jobtypeid` as `jobtypeid`,
                `dbxjob`.`name` as `name`
            from
                `dbxjob`
            where
                `dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `dbmgroup`.`groupid` as `groupid`,
                `dbmgroup`.`groupdesc` as `groupdesc`,
                `dbmgroup`.`created_at` as `createddate`,
                `dbmgroup`.`created_by` as `createdby`,
                `dbmgroup`.`updated_at` as `updateddate`,
                `dbmgroup`.`updated_by` as `updatedby`
            from
                `dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`
            from
                `dbttrsheda`
            order by
                `dbttrsheda`.`trsid` desc
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
			(((((((((`dbttrsdeta` `td`
		left join (
			select
				`dbttrsheda`.`trsid` as `trsid`,
				`dbttrsheda`.`statusdoc` as `statusdoc`
			from
				`dbttrsheda`
			where
				`dbttrsheda`.`statusdoc` <> 'P') `th` on
			(`th`.`trsid` = `td`.`trsid`))
		left join (
			select
				`d`.`csodetid` as `csodetid`,
				`h`.`csoid` as `csoid`,
				`d`.`itembatchid` as `itembatchid`
			from
				(`dbtcsodet` `d`
			join `dbtcsohed` `h` on
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
				`dbxjob`.`userid` as `userid`,
				`dbxjob`.`jobtypeid` as `jobtypeid`,
				`dbxjob`.`name` as `name`
			from
				`dbxjob`
			where
				.`dbxjob`.`jobtypeid` = 2) `j` on
			(`j`.`userid` = `td`.`analisatorid`))
		left join (
			select
				`dbmgroup`.`groupid` as `groupid`,
				`dbmgroup`.`groupdesc` as `groupdesc`,
				`dbmgroup`.`created_at` as `createddate`,
				`dbmgroup`.`created_by` as `createdby`,
				`dbmgroup`.`updated_at` as `updateddate`,
				`dbmgroup`.`updated_by` as `updatedby`
			from
				`dbmgroup`) `g` on
			(`g`.`groupid` = `td`.`groupid`))
		left join (
			select
				`dbttrsheda`.`trsid` as `trsid`
			from
				`dbttrsheda`
			order by
				`dbttrsheda`.`trsid` desc
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
			(((((((((`dbttrsdeta` `td`
		left join (
			select
				`dbttrsheda`.`trsid` as `trsid`,
				`dbttrsheda`.`statusdoc` as `statusdoc`
			from
				`dbttrsheda`
			where
				`dbttrsheda`.`statusdoc` <> 'P') `th` on
			(`th`.`trsid` = `td`.`trsid`))
		left join (
			select
				`d`.`csodetid` as `csodetid`,
				`h`.`csoid` as `csoid`,
				`d`.`itembatchid` as `itembatchid`
			from
				(`dbtcsodet` `d`
			join `dbtcsohed` `h` on
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
				`dbxjob`.`userid` as `userid`,
				`dbxjob`.`jobtypeid` as `jobtypeid`,
				`dbxjob`.`name` as `name`
			from
				`dbxjob`
			where
				`dbxjob`.`jobtypeid` = 2) `j` on
			(`j`.`userid` = `td`.`analisatorid`))
		left join (
			select
				`dbmgroup`.`groupid` as `groupid`,
				`dbmgroup`.`groupdesc` as `groupdesc`,
				`dbmgroup`.`created_at` as `createddate`,
				`dbmgroup`.`created_by` as `createdby`,
				`dbmgroup`.`updated_at` as `updateddate`,
				`dbmgroup`.`updated_by` as `updatedby`
			from
				`dbmgroup`) `g` on
			(`g`.`groupid` = `td`.`groupid`))
		left join (
			select
				`dbttrsheda`.`trsid` as `trsid`
			from
				`dbttrsheda`
			order by
				`dbttrsheda`.`trsid` desc
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
                `dbttrsheda`.`trsid` as `trsid`,
                `dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `dbttrsheda`
            where
                `dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`dbtcsodet` `d`
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso1`.`itemid` = `td`.`itemid`))
        left join (
            select
                `dbxjob`.`userid` as `userid`,
                `dbxjob`.`jobtypeid` as `jobtypeid`,
                `dbxjob`.`name` as `name`
            from
                `dbxjob`
            where
                `dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `dbmgroup`.`groupid` as `groupid`,
                `dbmgroup`.`groupdesc` as `groupdesc`,
                `dbmgroup`.`created_at` as `createddate`,
                `dbmgroup`.`created_by` as `createdby`,
                `dbmgroup`.`updated_at` as `updateddate`,
                `dbmgroup`.`updated_by` as `updatedby`
            from
                `dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`
            from
                `dbttrsheda`
            order by
                `dbttrsheda`.`trsid` desc
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
            (((((((((`dbttrsdeta` `td`
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`,
                `dbttrsheda`.`statusdoc` as `statusdoc`
            from
                `dbttrsheda`
            where
                `dbttrsheda`.`statusdoc` = 'A') `th` on
            (`th`.`trsid` = `td`.`trsid`))
        left join (
            select
                `d`.`csodetid` as `csodetid`,
                `h`.`csoid` as `csoid`,
                `d`.`itemid` as `itemid`
            from
                (`dbtcsodet` `d`
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
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
                ((`dbtcsodet2` `d2`
            join `dbtcsodet` `d` on
                (`d`.`csodetid` = `d2`.`csodetid`))
            join `dbtcsohed` `h` on
                (`h`.`csoid` = `d`.`csoid`))
            where
                `d2`.`csocount` = 4
                and `h`.`status` = 'A'
            group by
                `d`.`itemid`) `cso4` on
            (`cso4`.`itemid` = `td`.`itemid`))
        left join (
            select
                `dbxjob`.`userid` as `userid`,
                `dbxjob`.`jobtypeid` as `jobtypeid`,
                `dbxjob`.`name` as `name`
            from
                `dbxjob`
            where
                `dbxjob`.`jobtypeid` = 2) `j` on
            (`j`.`userid` = `td`.`analisatorid`))
        left join (
            select
                `dbmgroup`.`groupid` as `groupid`,
                `dbmgroup`.`groupdesc` as `groupdesc`,
                `dbmgroup`.`created_at` as `createddate`,
                `dbmgroup`.`created_by` as `createdby`,
                `dbmgroup`.`updated_at` as `updateddate`,
                `dbmgroup`.`updated_by` as `updatedby`
            from
                `dbmgroup`) `g` on
            (`g`.`groupid` = `td`.`groupid`))
        left join (
            select
                `dbttrsheda`.`trsid` as `trsid`
            from
                `dbttrsheda`
            order by
                `dbttrsheda`.`trsid` desc
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

-- Dump completed on 2025-04-29 16:05:33
