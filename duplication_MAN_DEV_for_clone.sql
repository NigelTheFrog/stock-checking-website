-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.88.55    Database: SOS_DEV_SAP_MAN
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
 1 AS `typecekstok`*/;
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
INSERT INTO `dbmcoy` VALUES (1,'AER GDG','PT. ANUGERAH EKSTRAVISI RAYA',NULL,'2023-09-10 21:12:56','','2024-11-14 04:28:08','admin');
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
  `gradecode` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `group` varchar(15) DEFAULT NULL,
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
INSERT INTO `dbmgrade` VALUES ('BLI01G','BLI01G','','2025-03-14 15:00:01','2025-03-22 02:26:23'),('BLI02G','BLI02G','BALI','2025-03-14 15:00:01','2025-03-14 15:00:01'),('BLI05G','BLI05G','BALI','2025-03-14 15:00:01','2025-03-14 15:00:01'),('BLI06S','BLI06S','BALI','2025-03-14 15:00:01','2025-03-14 15:00:01'),('BLI07G','BLI07G','BALI','2025-03-14 15:00:01','2025-03-14 15:00:01'),('BLI11G','BLI11G','BALI','2025-03-14 08:09:51','2025-03-14 08:09:51'),('ert','ert',NULL,'2025-03-22 12:01:53','2025-03-22 12:01:53'),('JKT01L','JKT01L','JKT','2025-03-14 15:00:01','2025-03-14 15:00:01'),('JKT01M','JKT01M','JKT','2025-03-14 15:00:01','2025-03-14 15:00:01'),('JKT02M','JKT02M','JKT','2025-03-14 15:00:01','2025-03-14 15:00:01'),('JKT04M','JKT04M','JKT','2025-03-14 15:00:01','2025-03-14 15:00:01'),('SBY01T','SBY01T','','2025-03-14 15:00:01','2025-03-14 15:00:01'),('SBY02T','SBY02T','SBY','2025-03-14 15:00:01','2025-03-14 15:00:01');
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
-- Table structure for table `dbmitem`
--

DROP TABLE IF EXISTS `dbmitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbmitem` (
  `itemcode` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `konversi` decimal(12,3) DEFAULT NULL,
  `std_berat_kemasan` decimal(12,3) DEFAULT NULL,
  `std_material_loss_minus` decimal(12,3) DEFAULT NULL COMMENT 'dalam %',
  `std_material_loss_plus` decimal(12,3) DEFAULT NULL COMMENT 'dalam %',
  `total_produksi` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`itemcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmitem`
--

LOCK TABLES `dbmitem` WRITE;
/*!40000 ALTER TABLE `dbmitem` DISABLE KEYS */;
INSERT INTO `dbmitem` VALUES ('A111111000000075','111 3/4',100.000,0.000,-1.500,1.500,36.597),('A111201000000050','201 1/2',0.000,0.000,0.000,0.000,0.000),('A401AC0102000000','AC 01-02',0.000,0.000,0.000,0.000,0.000),('A402AC0104000000','AC 01-04',0.000,0.000,0.000,0.000,0.000),('A402AC0202000000','AC 02-02',0.000,0.000,0.000,0.000,0.000),('A402AC0204000000','AC 02-04',0.000,0.000,0.000,0.000,0.000),('A402AC0210000000','AC 02-10',0.000,0.000,0.000,0.000,0.000),('A402AC0216B00000','AC 02-16B',0.000,0.000,0.000,0.000,0.000),('A402AC0304BL0000','AC 03-04 BL',0.000,0.000,0.000,0.000,0.000),('A403ACB011000000','ACB 01-10',0.000,0.000,0.000,0.000,0.000),('A403ACB020900000','ACB 02-09',0.000,0.000,0.000,0.000,0.000),('A404AC0116000060','AC 01-16 60 CM',0.000,0.000,0.000,0.000,0.000),('A404AC0116B00060','AC 01-16 60 CM (B)',0.000,0.000,0.000,0.000,0.000),('A404ACB0316BBL00','ACB 03-16B BL',0.000,0.000,0.000,0.000,0.000),('I114A5KSS0000000','A 5K SS',500.000,99.000,0.000,0.000,0.000),('I114A5L000Z00000','A 5L Z',0.000,0.000,0.000,0.000,0.000),('I114A5M000Z00000','A 5M Z',2.000,2.000,2.000,2.000,2.000),('I114A5PBL0000000','A 5P BL',3.000,0.000,3.000,0.000,3.000),('I114A9G000Z00000','A 9G Z',10.000,10.000,-1.000,1.000,0.000),('I118BC1000B00075','BC 01 3/4 B',2.000,2.000,-1.000,1.000,2.333),('I402ASB0104A0000','ASB 01-04A',0.000,0.000,0.000,0.000,0.000),('I403ASB010900000','ASB 01-09',70.000,70.000,-70.000,70.000,70.000),('I404ASL0116BGM00','ASL 01-16B GM',1.000,5.000,-0.650,0.650,10.000),('I415BCP0103000000','BCP 1 - 03',5.000,22.000,-1.500,1.500,0.000),('X904DBR010100300','DISPLAY BR 01 100 x 300',0.000,3.000,0.000,3.000,0.000),('X904DEXC02A00000','DISPLAY EXCELLENCE 02 A',0.000,0.000,0.000,0.000,0.000),('X904DEXC02B00000','DISPLAY EXCELLENCE 02 B',0.000,0.000,0.000,0.000,0.000),('X904DGDL00240230','DISPLAY GONDOLA 240 x 230',0.000,0.000,0.000,0.000,0.000),('X904DM1S00050070','DISPLAY MEJA 1S 50 x 70 CM',0.000,0.000,0.000,0.000,0.000);
/*!40000 ALTER TABLE `dbmitem` ENABLE KEYS */;
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
  `keputusandesc` varchar(25) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmlocation`
--

LOCK TABLES `dbmlocation` WRITE;
/*!40000 ALTER TABLE `dbmlocation` DISABLE KEYS */;
INSERT INTO `dbmlocation` VALUES (1,'BLI01G','Gudang Bali 01, Container G',0,1,'2025-02-19 04:32:54','admin','2025-02-20 06:33:30','admin'),(2,'BLI02G','BLI02G',0,1,'2025-02-19 04:42:53','admin','2025-02-19 04:42:53',NULL),(3,'BLI05G','BLI05G',0,1,'2025-02-19 04:42:53','admin','2025-02-19 04:42:53',NULL),(4,'JKT04M','JKT04M',0,1,'2025-02-19 04:47:14','admin','2025-02-19 04:47:14',NULL),(5,'BLI07G','BLI07G',0,1,'2025-02-19 04:47:14','admin','2025-02-19 04:47:14',NULL),(6,'JKT01L','JKT01L',0,1,'2025-02-19 04:47:14','admin','2025-02-19 04:47:14',NULL),(7,'JKT02M','JKT02M',0,1,'2025-02-19 04:47:14','admin','2025-02-19 04:47:14',NULL),(8,'BLI06S','BLI06S',0,1,'2025-02-19 04:47:15','admin','2025-02-19 04:47:15',NULL),(13,'SBY01T','SBY01T',0,0,'2025-03-12 05:00:27','admin','2025-03-12 05:00:27',NULL),(14,'SBY02T','SBY02T',0,0,'2025-03-12 05:00:27','admin','2025-03-12 05:00:27',NULL),(15,'JKT01M','JKT01M',0,0,'2025-03-12 06:52:30','admin','2025-03-12 06:52:30',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmuser`
--

LOCK TABLES `dbmuser` WRITE;
/*!40000 ALTER TABLE `dbmuser` DISABLE KEYS */;
INSERT INTO `dbmuser` VALUES (2,99908,'9437','nigel','$2y$12$2MftzcgBONWDtErHM8ShTe7wtMerp6sEhzmCMSd1IEFg34joU8Y7O','Nigel',1,4,'2024-09-17 04:34:36','admin','2024-09-17 04:34:36',NULL,NULL),(3,99793,'04496','kristiawan04496','$2y$12$BUxwHykbtGqIi8SRWPJs.OsJZ8TmL2bVHEA.4WqgUuh8LA.GzoI5a','Kristiawan',1,3,'2024-10-31 07:06:20','admin','2024-10-31 07:06:20',NULL,NULL),(12,0,'00000','admin','$2y$10$cY8SEVFGq2YyJ9RrVMY8q.xkoYcOzKjA4baeqdqKxBLY6CGujkrZi','Admin',1,1,'2023-06-13 17:39:32','admin','2025-02-21 09:15:52','admin',''),(16,99785,'08403','felix08403','$2y$12$2MftzcgBONWDtErHM8ShTe7wtMerp6sEhzmCMSd1IEFg34joU8Y7O','Felix',1,3,'2024-11-14 04:53:23','admin','2024-11-14 04:53:23',NULL,NULL),(17,99872,'99991','staffstok','$2y$12$oKbRxXvFK7rdIBr9oJPoFuHsGA4JzAmfNYCSHl93EIuhHNqoLkd82','staffstok',1,3,'2024-11-14 04:53:54','admin','2024-11-14 04:53:54',NULL,NULL),(18,99727,'99992','picwarehouse','$2y$12$pJQuzEyR1x6XGbaqlHMglu4u9b3qpnUCtoSu7VgN7bvgIKahjcmGy','picwarehouse',1,3,'2024-11-14 04:55:10','admin','2024-11-14 04:55:10',NULL,NULL),(19,99749,'99993','kawrh','$2y$12$0xHYwv6SHmhQ0Np4/V14v.U4xQN./uViWRV83bnC1nqmKka9bfXHC','kepala wrh',1,6,'2024-11-14 04:57:28','admin','2024-11-14 04:58:30','admin',NULL),(20,99228,'99994','kafac','$2y$12$OsGTek1fWrwgAMjn.MN6L.4Oa6fLRvRJrrpFhSRUfW033DXs2vSRm','kepala fac',1,7,'2024-11-14 04:58:05','admin','2024-11-14 04:59:04','admin',NULL),(21,99397,'99995','kapur','$2y$12$PA9yCrI376yUkYOZ.PQwG.s.hVrxb.PRzmt5IgmH6zcb82QRzV1xC','kepala purchasing',1,3,'2024-11-14 04:58:59','admin','2024-11-14 04:58:59',NULL,NULL),(22,99198,'99996','kaops','$2y$12$MDpkijnzzZ/8TwmoJ3WxyOvF60BDntFQinN9IFIUHRlYWZN2gu/KW','kepala operasional',1,3,'2024-11-14 04:59:55','admin','2024-11-14 04:59:55',NULL,NULL),(23,99401,'99997','regmen','$2y$12$.bii7bxteJSuwg0JnXORnen91eFLVnf0AoR5xO65GbovdjO/VditW','regional manager',1,3,'2024-11-14 05:00:33','admin','2024-11-14 05:00:33',NULL,NULL),(24,99747,'123456789','denny','$2y$12$EzN9oDyG4T4a1ujesXz3e.UjQVEwu9o59Tz5F7vOWhtSMuSVLp4YG','denny',1,3,'2024-12-28 03:43:47','admin','2024-12-28 03:43:47',NULL,NULL),(27,99368,'001','testcss','$2y$12$zyY8IlR0gxQeCiXzoKstMusGO2D865QxnRSikBHktdwI5PbWTfkfe','test css',1,4,'2024-12-28 05:13:56','admin','2024-12-28 05:13:56',NULL,NULL),(28,99778,'002','testcso','$2y$12$hYOLqJT6VAKopsp4vOObeeITWnWK02EGtALR3DYTJYwHyBQP6eSRe','Test CSO',1,4,'2025-02-20 03:09:07','admin','2025-02-20 03:09:07',NULL,NULL),(29,99190,'121','askhid','$2y$12$G/G4TfN6JL2TDhHyInwC8ODozo5G/EKT6EZQ1LGrnxCdS34Q7HBse','askhid',1,4,'2025-02-26 02:48:11','admin','2025-02-26 02:48:11',NULL,NULL);
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
  `locationid` int(11) DEFAULT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `approval` char(1) DEFAULT NULL,
  `statusitem` varchar(5) NOT NULL,
  `statussubmit` varchar(1) NOT NULL COMMENT 'P= sudah submit\r\nD= belum submit',
  `statushslcso` char(1) NOT NULL COMMENT 'D = baru dibuat C = ada CSO ulang\r\nT = tambahan dari CSO ulang',
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`csodetid`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet`
--

LOCK TABLES `dbtcsodet` WRITE;
/*!40000 ALTER TABLE `dbtcsodet` DISABLE KEYS */;
INSERT INTO `dbtcsodet` VALUES (1,1,2,'I114A5KSS0000000','',6,'A','pink,ungu','',NULL,'R','P','D','2025-02-20 10:05:02'),(2,1,2,'I114A5KSS0000000',NULL,7,'B','merah',NULL,NULL,'R','P','D','2025-02-20 10:05:18'),(3,1,2,'I114A5KSS0000000','',5,'C','kuning','',NULL,'R','P','D','2025-02-20 10:06:21'),(4,1,2,'I114A5KSS0000000',NULL,1,'C','ungu',NULL,NULL,'R','P','D','2025-02-20 10:06:53'),(5,2,2,'I114A5KSS0000000','',1,'C','merah','',NULL,'R','P','D','2025-02-20 10:09:14'),(6,2,1,'9999001','',2,'A','merah','',NULL,'R','P','D','2025-02-20 10:10:11'),(7,1,1,'9999001','',8,'C','pink','',NULL,'R','P','D','2025-02-20 10:10:49'),(8,1,8,'9999002',NULL,8,'B','merah','',NULL,'TR','P','D','2025-02-20 10:12:50'),(9,2,3,'I114A5M000Z00000','',7,'C','kuning','',NULL,'R','P','C','2025-02-20 10:26:33'),(10,2,3,'I114A5M000Z00000','',1,'C','merah','',NULL,'R','P','C','2025-02-20 10:40:48'),(11,1,3,'I114A5M000Z00000',NULL,7,'B','merah',NULL,NULL,'R','P','C','2025-02-20 10:45:50'),(12,2,3,'I114A5M000Z00000','I114A5M000Z00000',7,'C','kuning',NULL,NULL,'R','P','T','2025-02-20 10:46:28'),(13,2,3,'I114A5M000Z00000','I114A5M000Z00000',1,'C','merah',NULL,NULL,'R','P','T','2025-02-20 10:46:28'),(14,1,3,'I114A5M000Z00000','I114A5M000Z00000',7,'B','merah',NULL,NULL,'R','P','T','2025-02-20 10:46:28'),(15,2,4,'V114A7A000Z00000',NULL,1,'C','kuning',NULL,NULL,'R','P','D','2025-02-20 11:22:18'),(16,2,4,'V114A7A000Z00000','',5,'A','pink','',NULL,'R','P','D','2025-02-20 11:22:53'),(17,1,4,'V114A7A000Z00000','',7,'C','kuning','',NULL,'R','P','D','2025-02-20 11:24:04'),(18,1,5,'V114A7A00S2Z0000',NULL,1,'','kuning',NULL,NULL,'R','P','C','2025-02-20 11:42:45'),(19,1,5,'V114A7A00S2Z0000','',6,'B','merah','',NULL,'R','P','C','2025-02-20 11:43:52'),(20,1,5,'V114A7A00S2Z0000','V114A7A00S2Z0000',1,'C','kuning',NULL,NULL,'R','P','T','2025-02-20 11:44:16'),(21,1,5,'V114A7A00S2Z0000','V114A7A00S2Z0000',6,'B','merah',NULL,NULL,'R','P','T','2025-02-20 11:44:16'),(23,2,5,'V114A7A00S2Z0000','',7,'A','putih','',NULL,'R','P','D','2025-02-20 11:48:34'),(24,2,5,'V114A7A00S2Z0000',NULL,4,'C','orange',NULL,NULL,'R','P','D','2025-02-20 11:49:01'),(25,3,9,'I114A9G000Z00000',NULL,2,'A','MERAH','test',NULL,'R','P','D','2025-03-10 11:34:15'),(26,3,9,'I114A9G000Z00000','',6,'A','MERAH','test',NULL,'R','P','D','2025-03-10 11:44:38'),(27,3,10,'I118BC1000B00075','',3,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:42:22'),(28,3,11,'I403ASB010900000','',2,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:42:55'),(29,3,12,'I404ASL0116BGM00','',2,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:43:30'),(30,3,13,'I415BCP0103000000','',5,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:44:05'),(31,3,10,'I118BC1000B00075','',8,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:42:22'),(32,3,10,'I118BC1000B00075','',1,'A','MERAH','test',NULL,'R','P','D','2025-03-10 13:42:22'),(82,7,77,'A401AC0102000000',NULL,4,'JKT04M',NULL,NULL,NULL,'R','P','D','2025-03-28 15:45:35'),(83,7,84,'A403ACB011000000',NULL,7,'JKT02M',NULL,NULL,NULL,'R','P','D','2025-03-28 15:51:35');
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
  `type` tinyint(1) DEFAULT NULL COMMENT '0 = Material Ecer\r\n1 = Material Utuh',
  `qty` float DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  `inputs` varchar(100) DEFAULT NULL,
  `operand` float DEFAULT NULL,
  `konversi` float DEFAULT NULL,
  `berat_kotor` float DEFAULT NULL,
  `history_berat_kotor` varchar(100) DEFAULT NULL,
  `input_berat_kotor` varchar(100) DEFAULT NULL,
  `berat_kemasan` float DEFAULT NULL,
  `history_berat_kemasan` varchar(100) DEFAULT NULL,
  `input_berat_kemasan` varchar(100) DEFAULT NULL,
  `berat_keran` float DEFAULT NULL,
  `history_berat_keran` varchar(100) DEFAULT NULL,
  `input_berat_keran` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  PRIMARY KEY (`csodet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsodet2`
--

LOCK TABLES `dbtcsodet2` WRITE;
/*!40000 ALTER TABLE `dbtcsodet2` DISABLE KEYS */;
INSERT INTO `dbtcsodet2` VALUES (1,1,1,1,NULL,1,'1','1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,1,1,NULL,74,'20+25=45+20=65+8=73+1+8=74','20,25,20,1',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,1,1,NULL,1,'1','1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,1,1,NULL,8,'2+2+4=8','2,2',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,2,1,NULL,8,'8','8',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,2,1,NULL,60,'60','60',60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,1,1,NULL,60,'60','60',60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,1,1,NULL,120,'120','120',120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,2,1,NULL,14,'14','14',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,2,1,NULL,14,'14','14',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,1,1,NULL,52,'50+2=52','50,2',50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,2,2,NULL,45,'20+5=25+20=45','20,5',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,2,2,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,1,2,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,2,1,NULL,40,'20+20=40','20,20',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,16,2,1,NULL,2,'2','2',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,1,1,NULL,75,'75','75',75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,1,1,NULL,114,'20+20+20=60+14=74+40=114','20,20,20,14',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,19,1,1,NULL,2,'2','2',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,20,1,2,NULL,114,'30+40=70+40=110+4+40=114','30,40,4',30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,21,1,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,23,2,2,NULL,6,'6','6',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,24,2,2,NULL,3,'2+1=3','2,1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,25,3,1,NULL,20,'20','20',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,26,3,1,NULL,6,'6','6',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,27,3,1,NULL,100,'100','100',100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,28,3,1,NULL,14,'14','14',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,29,3,1,NULL,4,'4','4',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,30,3,1,NULL,15,'15','15',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,31,3,1,NULL,50,'50','50',50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,3,1,NULL,43.75,'42','42',42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,82,7,1,1,2,'2','2',2,501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1002,''),(104,82,7,1,0,NULL,NULL,NULL,NULL,NULL,123,'123','123',20,'20','20',3,'3','3',100,''),(105,83,7,1,1,5,'5','5',5,0.001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.005,''),(106,83,7,1,1,20,'20','20',20,0.005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.1,''),(107,83,7,1,0,NULL,NULL,NULL,NULL,NULL,30,'30','30',10,'10','10',5,'5','5',15,'');
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
INSERT INTO `dbtcsohed` VALUES (1,1,'CSOAER SBY-testcss-202502','CSO',99368,'testcss',1,'P','R','2025-02-20 10:00:38',NULL),(2,1,'CSOAER SBY-testcso-202502','CSO',99778,'testcso',1,'P','R','2025-02-20 10:08:56',NULL),(3,2,'CSOAER GDG-askhid-202503-','CSO',99190,'askhid',1,'P','R','2025-03-10 10:56:04',NULL),(4,3,'CSOAER GDG-testcso-202503','CSO',99778,'testcso',1,'A','R','2025-03-14 14:32:24',NULL),(5,9,'CSOAER GDG-testcso-202503','CSO',99778,'testcso',1,'A','R','2025-03-22 11:32:20',NULL),(6,14,'CSSAER GDG-askhid-202503-','CSS',99190,'askhid',1,'A','R','2025-03-28 15:42:43',NULL),(7,9,'CSOAER GDG-askhid-202503-','CSO',99190,'askhid',1,'A','R','2025-03-28 15:44:25',NULL);
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
INSERT INTO `dbtcsoketerangan` VALUES (12,2),(13,2),(14,2),(20,2),(21,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbtcsoprsn`
--

LOCK TABLES `dbtcsoprsn` WRITE;
/*!40000 ALTER TABLE `dbtcsoprsn` DISABLE KEYS */;
INSERT INTO `dbtcsoprsn` VALUES (1,1,99368,'testcss','test css','3',1,1,NULL,'P','R'),(2,1,99778,'testcso','Test CSO','2',1,1,NULL,'P','R'),(3,2,99190,'askhid','askhid','2',1,1,NULL,'P','R'),(4,2,99401,'regmen','regional manager','2',1,2,NULL,'P','R');
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
  `jenis` tinyint(1) DEFAULT NULL COMMENT '0 = Finish Good\r\n1 = Raw Material',
  `analisatorid` int(11) DEFAULT NULL,
  `analisator_checked` tinyint(1) DEFAULT NULL,
  `tidak_hitung` int(1) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `keputusan` varchar(25) DEFAULT NULL,
  `kesalahan_admin` int(1) DEFAULT NULL,
  `batch_tertukar` smallint(1) DEFAULT NULL,
  `pembebanan` float DEFAULT NULL,
  `konversi_1` decimal(12,3) DEFAULT NULL,
  `konversi_2` decimal(12,3) DEFAULT 0.000,
  `konversi_3` decimal(12,3) DEFAULT 0.000,
  `std_berat_kemasan` decimal(12,3) DEFAULT NULL,
  `std_material_loss_minus` decimal(12,3) DEFAULT NULL,
  `std_material_loss_plus` decimal(12,3) DEFAULT NULL,
  `total_produksi` decimal(12,3) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`trsdetid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet`
--

LOCK TABLES `dbttrsdet` WRITE;
/*!40000 ALTER TABLE `dbttrsdet` DISABLE KEYS */;
INSERT INTO `dbttrsdet` VALUES (1,1,'9999001','9999001','','A 5K SS (C)',0,NULL,'','33X50MM',NULL,'REJECT',120.00,NULL,NULL,NULL,NULL,'PCS',NULL,NULL,NULL,'TR',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000,0.000,0.000,1.000,1.000,1.000,1.000,'2025-02-20 09:34:31'),(2,1,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,92.00,NULL,NULL,NULL,NULL,'PCS',54490.3,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2.000,0.000,0.000,2.000,2.000,2.000,2.000,'2025-02-20 09:34:31'),(3,1,'I114A5M000Z00000','','I114A5M000Z00000','A 5M Z',0,NULL,NULL,NULL,NULL,NULL,79.00,NULL,NULL,NULL,NULL,'PCS',40958.5,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3.000,0.000,0.000,3.000,3.000,3.000,3.000,'2025-02-20 09:34:31'),(4,1,'V114A7A000Z00000','','V114A7A000Z00000','A 7A Z',0,NULL,NULL,NULL,NULL,NULL,119.00,NULL,NULL,NULL,NULL,'PCS',32154.3,NULL,'2055','R',1,NULL,NULL,NULL,NULL,NULL,'3',NULL,NULL,64308.7,4.000,0.000,0.000,4.000,4.000,4.000,4.000,'2025-02-20 09:34:31'),(5,1,'V114A7A00S2Z0000','','V114A7A00S2Z0000','A 7A S2 Z',0,NULL,NULL,NULL,NULL,NULL,125.00,NULL,NULL,NULL,NULL,'PCS',55465.3,NULL,NULL,'R',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5.000,0.000,0.000,5.000,5.000,5.000,5.000,'2025-02-20 09:34:31'),(8,1,'9999002','','','A 5M Z (A)',0,NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'910850','TR',1,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,56.000,0.000,0.000,57.000,58.000,59.000,60.000,'2025-02-20 10:12:50'),(9,2,'I114A9G000Z00000','','I114A9G000Z00000','A 9G Z',0,NULL,NULL,NULL,NULL,NULL,27.00,0,0,NULL,NULL,'PCS',43577.2,NULL,NULL,'R',1,NULL,99401,0,0,NULL,NULL,0,0,NULL,500.000,0.000,0.000,20.000,-0.560,0.560,78.575,'2025-02-21 15:45:23'),(10,2,'I118BC1000B00075','','I118BC1000B00075','BC 01 3/4 B',0,NULL,NULL,NULL,NULL,NULL,192.00,NULL,NULL,NULL,NULL,'PCS',13922.5,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100.000,0.000,0.000,35.000,-1.535,1.535,51.333,'2025-02-21 15:45:23'),(11,2,'I403ASB010900000','','I403ASB010900000','ASB 01-09',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',84303.1,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10.000,0.000,0.000,15.000,-0.759,0.911,30.134,'2025-02-21 15:45:23'),(12,2,'I404ASL0116BGM00','','I404ASL0116BGM00','ASL 01-16B GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',187483,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59.000,0.000,0.000,10.000,-0.651,1.000,80.090,'2025-02-21 15:45:23'),(13,2,'I415BCP0103000000','','I415BCP0103000000','BCP 1 - 03',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',119335,NULL,NULL,'R',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102.000,0.000,0.000,17.000,-1.650,1.750,69.990,'2025-02-21 15:45:23'),(77,9,'A401AC0102000000','','A401AC0102000000','AC 01-02',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',245175,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,501.000,100.000,0.000,0.000,0.000,0.000,0.005,'2025-03-22 11:22:00'),(78,9,'A402AC0104000000','','A402AC0104000000','AC 01-04',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',55591.6,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(79,9,'A402AC0202000000','','A402AC0202000000','AC 02-02',0,NULL,NULL,NULL,NULL,NULL,43.00,NULL,NULL,NULL,NULL,'PCS',199439,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(80,9,'A402AC0204000000','','A402AC0204000000','AC 02-04',0,NULL,NULL,NULL,NULL,NULL,19.00,NULL,NULL,NULL,NULL,'PCS',82494.9,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(81,9,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',130053,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.001,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(82,9,'A402AC0216B00000','','A402AC0216B00000','AC 02-16B',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',499535,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.001,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(83,9,'A402AC0304BL0000','','A402AC0304BL0000','AC 03-04 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',46373.5,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.002,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(84,9,'A403ACB011000000','','A403ACB011000000','ACB 01-10',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',152469,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.001,0.005,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(85,9,'A404AC0116000060','','A404AC0116000060','AC 01-16 60 CM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',406767,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10.000,10.000,10.000,10.000,10.000,10.000,10.000,'2025-03-22 11:22:00'),(86,9,'A404AC0116B00060','','A404AC0116B00060','AC 01-16 60 CM (B)',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',11166.6,NULL,NULL,'R',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-22 11:22:00'),(145,14,'A111111000000075','','A111111000000075','111 3/4',0,NULL,NULL,NULL,NULL,NULL,37.00,NULL,NULL,NULL,NULL,'PCS',43379.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(146,14,'A111201000000050','','A111201000000050','201 1/2',0,NULL,NULL,NULL,NULL,NULL,72.00,NULL,NULL,NULL,NULL,'PCS',8376.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(147,14,'A114AOV03B000000','','A114AOV03B000000','AOV 03 B',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',106732,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(148,14,'I114A5KSS0000000','','I114A5KSS0000000','A 5K SS',0,NULL,NULL,NULL,NULL,NULL,2397.00,NULL,NULL,NULL,NULL,'PCS',55028.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(149,14,'I114A5L000Z00000','','I114A5L000Z00000','A 5L Z',0,NULL,NULL,NULL,NULL,NULL,2937.00,NULL,NULL,NULL,NULL,'PCS',39190,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(150,14,'I116D9G000Z00000','','I116D9G000Z00000','D 9G Z',0,NULL,NULL,NULL,NULL,NULL,29.00,NULL,NULL,NULL,NULL,'PCS',51495.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(151,14,'I401ASL0102GM000','','I401ASL0102GM000','ASL 01-02 GM',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',122389,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(152,14,'V113AF02W0000000','','V113AF02W0000000','ANGLE FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,226.00,NULL,NULL,NULL,NULL,'PCS',3597.15,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,0.000,0.000,0.000,0.000,0.000,'2025-03-27 10:50:14'),(160,14,'I114A5M000Z00000','','I114A5M000Z00000','A 5M Z',0,NULL,NULL,NULL,NULL,NULL,103.00,NULL,NULL,NULL,NULL,'PCS',41009.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:17'),(161,14,'I114A5PBL0000000','','I114A5PBL0000000','A 5P BL',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',103127,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(162,14,'V114A7A00S2Z0000','','V114A7A00S2Z0000','A 7A S2 Z',0,NULL,NULL,NULL,NULL,NULL,177.00,NULL,NULL,NULL,NULL,'PCS',58670,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(163,14,'V114A7A000Z00000','','V114A7A000Z00000','A 7A Z',0,NULL,NULL,NULL,NULL,NULL,148.00,NULL,NULL,NULL,NULL,'PCS',33023.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(164,14,'I114A9G000Z00000','','I114A9G000Z00000','A 9G Z',0,NULL,NULL,NULL,NULL,NULL,26.00,NULL,NULL,NULL,NULL,'PCS',43577.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(165,14,'A402AC0104000000','','A402AC0104000000','AC 01-04',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',55591.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(166,14,'A402AC0202000000','','A402AC0202000000','AC 02-02',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',199439,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(167,14,'A402AC0204000000','','A402AC0204000000','AC 02-04',0,NULL,NULL,NULL,NULL,NULL,21.00,NULL,NULL,NULL,NULL,'PCS',82494.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(168,14,'A402AC0210000000','','A402AC0210000000','AC 02-10',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',130053,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:18'),(169,14,'A402AC0216B00000','','A402AC0216B00000','AC 02-16B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',499535,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(170,14,'A402AC0304BL0000','','A402AC0304BL0000','AC 03-04 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',46373.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(171,14,'A403ACB011000000','','A403ACB011000000','ACB 01-10',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',152469,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(172,14,'A403ACB020900000','','A403ACB020900000','ACB 02-09',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',114662,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(173,14,'A404ACB0316BBL00','','A404ACB0316BBL00','ACB 03-16B BL',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',439503,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(174,14,'A404ACP011800000','','A404ACP011800000','ACP 01-18',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',87640.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(175,14,'A401ACP030100000','','A401ACP030100000','ACP 03-01',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',82500.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(176,14,'A403ACP031400000','','A403ACP031400000','ACP 03-14',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',77155.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(177,14,'A114ACR1B0000000','','A114ACR1B0000000','ACR 01B',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',108876,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:19'),(178,14,'A114ACR3C0000000','','A114ACR3C0000000','ACR 03C',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',114382,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(179,14,'A401ACS0102BL000','','A401ACS0102BL000','ACS 01-02 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',150486,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(180,14,'A401ACS0102GM000','','A401ACS0102GM000','ACS 01-02 GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',168022,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(181,14,'A402ACS0104BL000','','A402ACS0104BL000','ACS 01-04 BL',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',60484.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(182,14,'A402ACS0104GM000','','A402ACS0104GM000','ACS 01-04 GM',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',63983,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(183,14,'A403ACS0109BL000','','A403ACS0109BL000','ACS 01-09 BL',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',100471,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(184,14,'A403ACS0109GM000','','A403ACS0109GM000','ACS 01-09 GM',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'PCS',124267,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(185,14,'A403ACS0110BL000','','A403ACS0110BL000','ACS 01-10 BL',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',115330,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:20'),(186,14,'A403ACS0110GM000','','A403ACS0110GM000','ACS 01-10 GM',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',154529,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(187,14,'A404ACS0116BBL00','','A404ACS0116BBL00','ACS 01-16B BL',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',270198,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(188,14,'A404ACS0116BGM00','','A404ACS0116BGM00','ACS 01-16B GM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',402302,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(189,14,'A404ACS0116BGMSR','','A404ACS0116BGMSR','ACS 01-16B GM (SR)',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',174447,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(190,14,'A403ACS0210BL000','','A403ACS0210BL000','ACS 02-10 BL',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',126494,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(191,14,'A114AL0100000000','','A114AL0100000000','AL 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',194763,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(192,14,'A114AOV1A0000000','','A114AOV1A0000000','AOV 01A',0,NULL,NULL,NULL,NULL,NULL,28.00,NULL,NULL,NULL,NULL,'PCS',101975,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:21'),(193,14,'A114AOV9BY000000','','A114AOV9BY000000','AOV 09BY',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',106513,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(194,14,'A113AR5J00000000','','A113AR5J00000000','AR 5J',0,NULL,NULL,NULL,NULL,NULL,86.00,NULL,NULL,NULL,NULL,'PCS',47164.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(195,14,'A113AS5J00000000','','A113AS5J00000000','AS 5J',0,NULL,NULL,NULL,NULL,NULL,66.00,NULL,NULL,NULL,NULL,'PCS',58636.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(196,14,'I401ASB010270000','','I401ASB010270000','ASB 01-02 70 CM',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',187594,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(197,14,'I402ASB0104A0000','','I402ASB0104A0000','ASB 01-04A',0,NULL,NULL,NULL,NULL,NULL,108.00,NULL,NULL,NULL,NULL,'PCS',54413.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(198,14,'I403ASB010900000','','I403ASB010900000','ASB 01-09',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',84497.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:22'),(199,14,'I403ASB011000000','','I403ASB011000000','ASB 01-10',0,NULL,NULL,NULL,NULL,NULL,38.00,NULL,NULL,NULL,NULL,'PCS',112412,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(200,14,'I404ASB011670000','','I404ASB011670000','ASB 01-16 70 CM',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',290577,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(201,14,'I404ASB0116B7000','','I404ASB0116B7000','ASB 01-16B 70 CM',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',403705,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(202,14,'I402ASL0104GM000','','I402ASL0104GM000','ASL 01-04 GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',22278.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(203,14,'I402ASL01045GM00','','I402ASL01045GM00','ASL 01-045 GM',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',51393.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(204,14,'I403ASL0110GM000','','I403ASL0110GM000','ASL 01-10 GM',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',75406.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(205,14,'I404ASL0116BGM00','','I404ASL0116BGM00','ASL 01-16B GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',199070,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:23'),(206,14,'I404ASL0120GM000','','I404ASL0120GM000','ASL 01-20 GM',0,NULL,NULL,NULL,NULL,NULL,23.00,NULL,NULL,NULL,NULL,'PCS',70446,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(207,14,'A114AT01BL000000','','A114AT01BL000000','AT 01 BL',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',110046,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(208,14,'A114AT01C0000000','','A114AT01C0000000','AT 01 C',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',89450.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(209,14,'A114AT01GM000000','','A114AT01GM000000','AT 01 GM',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',108897,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(210,14,'A114AY0100000000','','A114AY0100000000','AY 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',83232.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(211,14,'V112BF0100000000','','V112BF0100000000','BASIN FAUCET 01',0,NULL,NULL,NULL,NULL,NULL,43.00,NULL,NULL,NULL,NULL,'PCS',26417.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(212,14,'V112BF02W0000000','','V112BF02W0000000','BASIN FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,196.00,NULL,NULL,NULL,NULL,'PCS',8889.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(213,14,'I118BC1000B00050','','I118BC1000B00050','BC 01 1/2 B',0,NULL,NULL,NULL,NULL,NULL,295.00,NULL,NULL,NULL,NULL,'PCS',12817.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:24'),(214,14,'I118BC1000B00075','','I118BC1000B00075','BC 01 3/4 B',0,NULL,NULL,NULL,NULL,NULL,175.00,NULL,NULL,NULL,NULL,'PCS',13922.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(215,14,'I415BCP0101000000','','I415BCP0101000000','BCP 1 - 01',0,NULL,NULL,NULL,NULL,NULL,122.00,NULL,NULL,NULL,NULL,'PCS',86916.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(216,14,'I415BCP0103000000','','I415BCP0103000000','BCP 1 - 03',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',119337,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(217,14,'I122BD0300W00000','','I122BD0300W00000','BD 03 W',0,NULL,NULL,NULL,NULL,NULL,69.00,NULL,NULL,NULL,NULL,'PCS',43429.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(218,14,'I122BD0400C00000','','I122BD0400C00000','BD 04 C',0,NULL,NULL,NULL,NULL,NULL,198.00,NULL,NULL,NULL,NULL,'PCS',53748.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(219,14,'I122BD0400W00000','','I122BD0400W00000','BD 04 W',0,NULL,NULL,NULL,NULL,NULL,52.00,NULL,NULL,NULL,NULL,'PCS',40733.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(220,14,'I122BD0500BL0000','','I122BD0500BL0000','BD 05 BL',0,NULL,NULL,NULL,NULL,NULL,113.00,NULL,NULL,NULL,NULL,'PCS',66936.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(221,14,'I122BD0500W00000','','I122BD0500W00000','BD 05 W',0,NULL,NULL,NULL,NULL,NULL,99.00,NULL,NULL,NULL,NULL,'PCS',47025.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:25'),(222,14,'A121BSH100W00000','','A121BSH100W00000','BSH - 1W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',160500,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(223,14,'A729BT201C000000','','A729BT201C000000','BT2 - 01C',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',26459.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(224,14,'A713BTH121100000','','A713BTH121100000','BTH - 12 11',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',12328300,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(225,14,'A143CO0000000400','','A143CO0000000400','CLEAN OUT 4',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',129599,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(226,14,'A123CS0180000000','','A123CS0180000000','CS 18',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',360113,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(227,14,'A121CSH300C00000','','A121CSH300C00000','CSH - 3C',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',93720.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(228,14,'A526CT0300000000','','A526CT0300000000','CT - 03',0,NULL,NULL,NULL,NULL,NULL,19.00,NULL,NULL,NULL,NULL,'PCS',1511380,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:26'),(229,14,'A702CWB11C000000','','A702CWB11C000000','CWB 11-C',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',288516,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(230,14,'A702CWB11C010000','','A702CWB11C010000','CWB 11-C 01',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',618323,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(231,14,'A702CWB11C020000','','A702CWB11C020000','CWB 11-C 02',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',617120,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(232,14,'A702CWB33C000000','','A702CWB33C000000','CWB 33-C',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',275990,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(233,14,'A702CWB33C010000','','A702CWB33C010000','CWB 33-C 01',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',502512,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(234,14,'A702CWB33C070000','','A702CWB33C070000','CWB 33-C 07',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',466762,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(235,14,'A702CWB33C080000','','A702CWB33C080000','CWB 33-C 08',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',466921,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:27'),(236,14,'A702CWB33C120000','','A702CWB33C120000','CWB 33-C 12',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',364878,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(237,14,'A702CWB33C410000','','A702CWB33C410000','CWB 33-C 41',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',475392,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(238,14,'A702CWB33C420000','','A702CWB33C420000','CWB 33-C 42',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',407270,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(239,14,'A702CWB34O000000','','A702CWB34O000000','CWB 34-O',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',300572,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(240,14,'A702CWB34O410000','','A702CWB34O410000','CWB 34-O 41',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',424975,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(241,14,'A702CWB34O420000','','A702CWB34O420000','CWB 34-O 42',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',424365,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(242,14,'A702CWB35R000000','','A702CWB35R000000','CWB 35-R',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'PCS',295372,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(243,14,'A702CWB35R070000','','A702CWB35R070000','CWB 35-R 07',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',659094,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(244,14,'A702CWB36O000000','','A702CWB36O000000','CWB 36-O',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',283929,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:28'),(245,14,'A702CWB37R000000','','A702CWB37R000000','CWB 37-R',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',684202,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:29'),(246,14,'A702CWB38C000000','','A702CWB38C000000','CWB 38-C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',392233,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:29'),(247,14,'A702CWB39R000000','','A702CWB39R000000','CWB 39-R',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',494852,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:29'),(248,14,'A702CWB40R000000','','A702CWB40R000000','CWB 40-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',517675,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:29'),(249,14,'A702CWB45O000000','','A702CWB45O000000','CWB 45-O',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',363101,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:29'),(250,14,'A702CWB46O000000','','A702CWB46O000000','CWB 46-O',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',411819,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(251,14,'A702CWB47R000000','','A702CWB47R000000','CWB 47-R',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',361442,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(252,14,'A702CWB48R000000','','A702CWB48R000000','CWB 48-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',486517,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(253,14,'A702CWB51O340000','','A702CWB51O340000','CWB 51-O 34',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1745790,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(254,14,'A702CWB55O060000','','A702CWB55O060000','CWB 55-O 06',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',636571,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(255,14,'A702CWH10R000000','','A702CWH10R000000','CWH 10-R',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',313022,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(256,14,'A702CWH14C000000','','A702CWH14C000000','CWH 14-C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',268137,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(257,14,'A702CWH18R000000','','A702CWH18R000000','CWH 18-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',278154,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(258,14,'A702CWH19R000000','','A702CWH19R000000','CWH 19-R',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',285685,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:30'),(259,14,'A702CWH20R000000','','A702CWH20R000000','CWH 20-R',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'PCS',318376,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(260,14,'A702CWH21R000000','','A702CWH21R000000','CWH 21-R',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',307099,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(261,14,'A702CWH22R000000','','A702CWH22R000000','CWH 22-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',381572,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(262,14,'A702CWH25R000000','','A702CWH25R000000','CWH 25-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',320768,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(263,14,'A702CWH26R000000','','A702CWH26R000000','CWH 26-R',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',443061,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(264,14,'A702CWH27R100000','','A702CWH27R100000','CWH 27-R 10',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',613710,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(265,14,'A116D11A00000000','','A116D11A00000000','D 11A',0,NULL,NULL,NULL,NULL,NULL,98.00,NULL,NULL,NULL,NULL,'PCS',131481,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(266,14,'A116D33B00000000','','A116D33B00000000','D 33 B',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',141500,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:31'),(267,14,'I116D5KSS0000000','','I116D5KSS0000000','D 5K SS',0,NULL,NULL,NULL,NULL,NULL,62.00,NULL,NULL,NULL,NULL,'PCS',76723,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(268,14,'I116D5L000Z00000','','I116D5L000Z00000','D 5L Z',0,NULL,NULL,NULL,NULL,NULL,118.00,NULL,NULL,NULL,NULL,'PCS',48359.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(269,14,'I116D5M000Z00000','','I116D5M000Z00000','D 5M Z',0,NULL,NULL,NULL,NULL,NULL,95.00,NULL,NULL,NULL,NULL,'PCS',50560.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(270,14,'I116D5PBL0000000','','I116D5PBL0000000','D 5P BL',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',129727,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(271,14,'V116D7A000Z00000','','V116D7A000Z00000','D 7A Z',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',33385.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(272,14,'A116D99BY0000000','','A116D99BY0000000','D 99BY',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',140208,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:32'),(273,14,'A116DCR11B000000','','A116DCR11B000000','DCR 11B',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',122330,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(274,14,'A116DCR33C000000','','A116DCR33C000000','DCR 33C',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',127723,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(275,14,'X904DBR010100300','','X904DBR010100300','DISPLAY BR 01 100 x 300',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',6500000,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(276,14,'X904DEXC02A00000','','X904DEXC02A00000','DISPLAY EXCELLENCE 02 A',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',774500,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(277,14,'X904DEXC02B00000','','X904DEXC02B00000','DISPLAY EXCELLENCE 02 B',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',759195,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(278,14,'X904DGDL00240230','','X904DGDL00240230','DISPLAY GONDOLA 240 x 230',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',9000000,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(279,14,'X904DM1S00050070','','X904DM1S00050070','DISPLAY MEJA 1S 50 x 70 CM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',492209,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(280,14,'I125DRS01IBL0000','','I125DRS01IBL0000','DRS 01I BL',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',612443,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:33'),(281,14,'I125DRS01IC00000','','I125DRS01IC00000','DRS 01I C',0,NULL,NULL,NULL,NULL,NULL,21.00,NULL,NULL,NULL,NULL,'PCS',484867,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(282,14,'A116DT01BL000000','','A116DT01BL000000','DT 01 BL',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',128029,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(283,14,'A116DT01C0000000','','A116DT01C0000000','DT 01 C',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',105356,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(284,14,'A116DT01GM000000','','A116DT01GM000000','DT 01 GM',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',128804,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(285,14,'I701DW01I0000000','','I701DW01I0000000','DW 01 I',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',176894,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(286,14,'A116DY0100000000','','A116DY0100000000','DY 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',142728,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(287,14,'A717ESC010000000','','A717ESC010000000','ESC - 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1335100,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:34'),(288,14,'A717ESC030000000','','A717ESC030000000','ESC - 03',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1474830,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(289,14,'A132FA3000SS0000','','A132FA3000SS0000','FA 30 SS',0,NULL,NULL,NULL,NULL,NULL,83.00,NULL,NULL,NULL,NULL,'PCS',18554,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(290,14,'A132FA4000SS0000','','A132FA4000SS0000','FA 40 SS',0,NULL,NULL,NULL,NULL,NULL,84.00,NULL,NULL,NULL,NULL,'PCS',20065.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(291,14,'A132FA5000SS0000','','A132FA5000SS0000','FA 50 SS',0,NULL,NULL,NULL,NULL,NULL,90.00,NULL,NULL,NULL,NULL,'PCS',21371.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(292,14,'A131FHM125SAF000','','A131FHM125SAF000','FHM 125 SA F',0,NULL,NULL,NULL,NULL,NULL,25.00,NULL,NULL,NULL,NULL,'PCS',36249.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(293,14,'A131FHM150SAF000','','A131FHM150SAF000','FHM 150 SA F',0,NULL,NULL,NULL,NULL,NULL,23.00,NULL,NULL,NULL,NULL,'PCS',39825.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:35'),(294,14,'A729FL0100000000','','A729FL0100000000','FL - 01',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',61313.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(295,14,'A729FL0200000000','','A729FL0200000000','FL - 02',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',59426.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(296,14,'A729FL0300000000','','A729FL0300000000','FL - 03',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',62964.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(297,14,'A517FHSC11BL0000','','A517FHSC11BL0000','FLEXIBLE HOSE SC 11 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',37268,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(298,14,'A133FNS300SS0000','','A133FNS300SS0000','FNS 30 SS',0,NULL,NULL,NULL,NULL,NULL,20.00,NULL,NULL,NULL,NULL,'PCS',16528.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(299,14,'A133FNS400SS0000','','A133FNS400SS0000','FNS 40 SS',0,NULL,NULL,NULL,NULL,NULL,36.00,NULL,NULL,NULL,NULL,'PCS',18047.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(300,14,'A133FNS500SS0000','','A133FNS500SS0000','FNS 50 SS',0,NULL,NULL,NULL,NULL,NULL,111.00,NULL,NULL,NULL,NULL,'PCS',19760.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(301,14,'A526FP01BL000000','','A526FP01BL000000','FP 01 BL',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',220846,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:36'),(302,14,'A526FP01C0000000','','A526FP01C0000000','FP 01 C',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',207930,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(303,14,'A526FP02BL000000','','A526FP02BL000000','FP 02 BL',0,NULL,NULL,NULL,NULL,NULL,25.00,NULL,NULL,NULL,NULL,'PCS',194376,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(304,14,'A526FP02C0000000','','A526FP02C0000000','FP 02 C',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',213630,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(305,14,'I141FS2SS0000000','','I141FS2SS0000000','FS 02 SS',0,NULL,NULL,NULL,NULL,NULL,157.00,NULL,NULL,NULL,NULL,'PCS',7231.92,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(306,14,'I141FS4SS0000000','','I141FS4SS0000000','FS 04 SS',0,NULL,NULL,NULL,NULL,NULL,59.00,NULL,NULL,NULL,NULL,'PCS',7149.11,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(307,14,'A121FSH100C00000','','A121FSH100C00000','FSH - 1C',0,NULL,NULL,NULL,NULL,NULL,33.00,NULL,NULL,NULL,NULL,'PCS',96727,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:37'),(308,14,'A121FSH100CC0000','','A121FSH100CC0000','FSH - 1CC',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',99949.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:38'),(309,14,'A121FSH300CW0000','','A121FSH300CW0000','FSH - 3CW',0,NULL,NULL,NULL,NULL,NULL,58.00,NULL,NULL,NULL,NULL,'PCS',98751.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:38'),(310,14,'A206FV0000O00050','','A206FV0000O00050','FV AER O 1/2',0,NULL,NULL,NULL,NULL,NULL,63.00,NULL,NULL,NULL,NULL,'PCS',68716.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:38'),(311,14,'A206FV0000O00075','','A206FV0000O00075','FV AER O 3/4',0,NULL,NULL,NULL,NULL,NULL,44.00,NULL,NULL,NULL,NULL,'PCS',77559.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:38'),(312,14,'A134FW3000SS0000','','A134FW3000SS0000','FW 30 SS',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,NULL,NULL,'PCS',16746.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(313,14,'A134FW4000SS0000','','A134FW4000SS0000','FW 40 SS',0,NULL,NULL,NULL,NULL,NULL,52.00,NULL,NULL,NULL,NULL,'PCS',18620.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(314,14,'A134FW5000SS0000','','A134FW5000SS0000','FW 50 SS',0,NULL,NULL,NULL,NULL,NULL,56.00,NULL,NULL,NULL,NULL,'PCS',20367.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(315,14,'A121GSH210C00000','','A121GSH210C00000','GSH 2 - 1C',0,NULL,NULL,NULL,NULL,NULL,49.00,NULL,NULL,NULL,NULL,'PCS',80400.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(316,14,'A121GSH31CW00000','','A121GSH31CW00000','GSH 3 - 1CW',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',134132,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(317,14,'A121GSH450CW0000','','A121GSH450CW0000','GSH 4 - 5CW',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',95332,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(318,14,'A121GSH53BGW0000','','A121GSH53BGW0000','GSH 5 - 3BGW',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',192964,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(319,14,'A121GSH53GM00000','','A121GSH53GM00000','GSH 5 - 3GM',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',187883,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:39'),(320,14,'A121GSH53RGB0000','','A121GSH53RGB0000','GSH 5 - 3RGB',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',204676,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(321,14,'A612GCA000000000','','A612GCA000000000','GUEST CARD AER',0,NULL,NULL,NULL,NULL,NULL,211.00,NULL,NULL,NULL,NULL,'PCS',172,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(322,14,'X518HSC11BL00000','','X518HSC11BL00000','HANGER SC 11 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',7453.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(323,14,'A501WS27GM000000','','A501WS27GM000000','HEAD WS 27 GM',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',354482,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(324,14,'A142HFS010000000','','A142HFS010000000','HFS 01',0,NULL,NULL,NULL,NULL,NULL,138.00,NULL,NULL,NULL,NULL,'PCS',115784,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(325,14,'A142HFS01BL00000','','A142HFS01BL00000','HFS 01 BL',0,NULL,NULL,NULL,NULL,NULL,21.00,NULL,NULL,NULL,NULL,'PCS',114781,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(326,14,'A142HFS01GM00000','','A142HFS01GM00000','HFS 01 GM',0,NULL,NULL,NULL,NULL,NULL,44.00,NULL,NULL,NULL,NULL,'PCS',116960,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:40'),(327,14,'A142HFS020000000','','A142HFS020000000','HFS 02',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',154369,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(328,14,'A142HFS02BL00000','','A142HFS02BL00000','HFS 02 BL',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',156659,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(329,14,'A142HFS02GM00000','','A142HFS02GM00000','HFS 02 GM',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',154588,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(330,14,'I154HMX01SS00000','','I154HMX01SS00000','HMX 01 SS',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',166316,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(331,14,'A114HOV1A0000000','','A114HOV1A0000000','HOV 01A',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',90340.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(332,14,'A114HOV3B0000000','','A114HOV3B0000000','HOV 03 B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',92957.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:41'),(333,14,'A114HOV9BY000000','','A114HOV9BY000000','HOV 09BY',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',92387.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(334,14,'I121HS30001W0000','','I121HS30001W0000','HS 3 - 1W',0,NULL,NULL,NULL,NULL,NULL,125.00,NULL,NULL,NULL,NULL,'PCS',63409,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(335,14,'I121HS40003W0000','','I121HS40003W0000','HS 4 - 3W',0,NULL,NULL,NULL,NULL,NULL,106.00,NULL,NULL,NULL,NULL,'PCS',64679.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(336,14,'I121HS50001WBL00','','I121HS50001WBL00','HS 5 - 1WBL',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',66797.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(337,14,'V121HSV1003C0000','','V121HSV1003C0000','HSV 1 - 3C',0,NULL,NULL,NULL,NULL,NULL,61.00,NULL,NULL,NULL,NULL,'PCS',23795.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(338,14,'A706HU0400000000','','A706HU0400000000','HU 04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',627650,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(339,14,'A706HU0800000000','','A706HU0800000000','HU 08',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',718202,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(340,14,'A706HU0900000000','','A706HU0900000000','HU 09',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',806919,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(341,14,'A701HW02T0000000','','A701HW02T0000000','HW 02 T',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',352944,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(342,14,'A701HW0300000000','','A701HW0300000000','HW 03',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',305895,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(343,14,'A701HW0312000000','','A701HW0312000000','HW 03 12',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',534527,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(344,14,'I701HW03IB000000','','I701HW03IB000000','HW 03 I (B)',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',115570,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(345,14,'A701HW0400000000','','A701HW0400000000','HW 04',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',263514,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(346,14,'A701HW0500000000','','A701HW0500000000','HW 05',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',339329,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(347,14,'I701HW05I0000000','','I701HW05I0000000','HW 05 I',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',153118,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:42'),(348,14,'I701HW06I0000000','','I701HW06I0000000','HW 06 I',0,NULL,NULL,NULL,NULL,NULL,279.00,NULL,NULL,NULL,NULL,'PCS',99770.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(349,14,'A717HWC080000000','','A717HWC080000000','HWC - 08',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',972881,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(350,14,'A717HWC090000000','','A717HWC090000000','HWC - 09',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',1098200,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(351,14,'A717HWC160100000','','A717HWC160100000','HWC - 16 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',9470050,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(352,14,'A155IKF030000000','','A155IKF030000000','IKF - 03',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1488600,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(353,14,'A155IKF060000000','','A155IKF060000000','IKF - 06',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1183140,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(354,14,'A717ISC010000000','','A717ISC010000000','ISC - 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',7270820,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(355,14,'A717ISC040000000','','A717ISC040000000','ISC - 04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',6054810,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(356,14,'V122JS0100C00000','','V122JS0100C00000','JS 01 C',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',28275.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(357,14,'A121JSH230CBL000','','A121JSH230CBL000','JSH 2 - 3CBL',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',129642,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(358,14,'A121JSH230CPBL00','','A121JSH230CPBL00','JSH 2 - 3CPBL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',124336,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(359,14,'V114KF0100000000','','V114KF0100000000','KITCHEN FAUCET 01',0,NULL,NULL,NULL,NULL,NULL,110.00,NULL,NULL,NULL,NULL,'PCS',29064.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:43'),(360,14,'V114KF02W0000000','','V114KF02W0000000','KITCHEN FAUCET 02 W',0,NULL,NULL,NULL,NULL,NULL,34.00,NULL,NULL,NULL,NULL,'PCS',14890.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(361,14,'I155KMX01SS00000','','I155KMX01SS00000','KMX 01 SS',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',208226,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(362,14,'A415KS1010000000','','A415KS1010000000','KS1 - 01',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',1296560,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(363,14,'A415KS1020000000','','A415KS1020000000','KS1 - 02',0,NULL,NULL,NULL,NULL,NULL,35.00,NULL,NULL,NULL,NULL,'PCS',552660,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(364,14,'A415KS111BL00000','','A415KS111BL00000','KS1 - 11BL',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',871264,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(365,14,'A415KS111G000000','','A415KS111G000000','KS1 - 11G',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',870094,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(366,14,'A415KS111W000000','','A415KS111W000000','KS1 - 11W',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',939426,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(367,14,'A415KS112BL00000','','A415KS112BL00000','KS1 - 12BL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1080120,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(368,14,'A415KS112G000000','','A415KS112G000000','KS1 - 12G',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1085050,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:44'),(369,14,'A415KS113BL00000','','A415KS113BL00000','KS1 - 13BL',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',1200480,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:45'),(370,14,'A415KS114BL00000','','A415KS114BL00000','KS1 - 14BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1287950,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:45'),(371,14,'A415KS114W000000','','A415KS114W000000','KS1 - 14W',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1384560,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:45'),(372,14,'A415KS115BL00000','','A415KS115BL00000','KS1 - 15BL',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',1354290,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:45'),(373,14,'A415KS119BL00000','','A415KS119BL00000','KS1 - 19BL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1123400,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:45'),(374,14,'A415KS125DC00000','','A415KS125DC00000','KS1 - 25DC',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1370610,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(375,14,'A415KS126DG00000','','A415KS126DG00000','KS1 - 26DG',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1615180,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(376,14,'A415KS126W000000','','A415KS126W000000','KS1 - 26W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1791760,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(377,14,'A415KS207G000000','','A415KS207G000000','KS2 - 07G',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1295540,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(378,14,'A415KS213B000000','','A415KS213B000000','KS2 - 13B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1444720,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(379,14,'A415KS213DG00000','','A415KS213DG00000','KS2 - 13DG',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1397120,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(380,14,'A415KS217BL00000','','A415KS217BL00000','KS2 - 17BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1437780,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(381,14,'A415KS222AB00000','','A415KS222AB00000','KS2 - 22AB',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1503120,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(382,14,'A147LFS01SS00700','','A147LFS01SS00700','LFS 01 SS 70 CM',0,NULL,NULL,NULL,NULL,NULL,41.00,NULL,NULL,NULL,NULL,'PCS',329834,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(383,14,'A147LFS03SS00700','','A147LFS03SS00700','LFS 03 SS 70 CM',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',320706,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:46'),(384,14,'A147LFS03SSGM700','','A147LFS03SSGM700','LFS 03 SS G 70 CM',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',324699,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(385,14,'A147LFS04SSBL700','','A147LFS04SSBL700','LFS 04 SS BL 70 CM',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',329407,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(386,14,'A147LFS04SSGM700','','A147LFS04SSGM700','LFS 04 SS G 70 CM',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',374459,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(387,14,'A147LFS04SSW0700','','A147LFS04SSW0700','LFS 04 SS W 70 CM',0,NULL,NULL,NULL,NULL,NULL,57.00,NULL,NULL,NULL,NULL,'PCS',321324,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(388,14,'X609LAS000000000','','X609LAS000000000','LUBANG ANGIN SALON',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',649.652,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(389,14,'A156MBS010000000','','A156MBS010000000','MBS - 1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1059620,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(390,14,'A156MBS040000000','','A156MBS040000000','MBS - 4',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',1371140,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(391,14,'A156MBS05BL00000','','A156MBS05BL00000','MBS - 5 BL',0,NULL,NULL,NULL,NULL,NULL,39.00,NULL,NULL,NULL,NULL,'PCS',1192520,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(392,14,'A156MBS05BLC0000','','A156MBS05BLC0000','MBS - 5 BLC',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1056600,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:47'),(393,14,'A156MBS05GM00000','','A156MBS05GM00000','MBS - 5 GM',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',1321000,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(394,14,'A156MBS06000000','','A156MBS06000000','MBS - 6',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',785901,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(395,14,'A156MBS06BL00000','','A156MBS06BL00000','MBS - 6 BL',0,NULL,NULL,NULL,NULL,NULL,27.00,NULL,NULL,NULL,NULL,'PCS',964093,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(396,14,'A156MBSM01GM0000','','A156MBSM01GM0000','MBS - M1 GM',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',1430480,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(397,14,'A902MFHTMG000000','','A902MFHTMG000000','MICROFIBER FACE & HAIR TOWEL AER MISK GRAVEL',0,NULL,NULL,NULL,NULL,NULL,26.00,NULL,NULL,NULL,NULL,'PCS',29597,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(398,14,'A902MFHTSI000000','','A902MFHTSI000000','MICROFIBER FACE & HAIR TOWEL AER SILK IVORY',0,NULL,NULL,NULL,NULL,NULL,67.00,NULL,NULL,NULL,NULL,'PCS',29598,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(399,14,'A156MS0500000000','','A156MS0500000000','MS - 5',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',1163890,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(400,14,'A156MS06BL000000','','A156MS06BL000000','MS - 6 BL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',838472,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(401,14,'A156MSC01GM00000','','A156MSC01GM00000','MSC - 01 GM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',2094210,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(402,14,'I156MST01I000000','','I156MST01I000000','MST 01 I',0,NULL,NULL,NULL,NULL,NULL,31.00,NULL,NULL,NULL,NULL,'PCS',719389,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(403,14,'I156MST02I000000','','I156MST02I000000','MST 02 I',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',760280,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:48'),(404,14,'A141NFS3K0000000','','A141NFS3K0000000','NEW FS 03 K',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',138388,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(405,14,'A141NFS4KBL00000','','A141NFS4KBL00000','NEW FS 04 K BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',64593.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(406,14,'I141NFS4SSK20100','','I141NFS4SSK20100','NFS 04 SSK 201',0,NULL,NULL,NULL,NULL,NULL,202.00,NULL,NULL,NULL,NULL,'PCS',26146,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(407,14,'V901NP0000000000','','V901NP0000000000','NOTA PENJUALAN AVA',0,NULL,NULL,NULL,NULL,NULL,30.00,NULL,NULL,NULL,NULL,'PCS',6718.34,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(408,14,'A717OSC010000000','','A717OSC010000000','OSC - 01',0,NULL,NULL,NULL,NULL,NULL,29.00,NULL,NULL,NULL,NULL,'PCS',1168600,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(409,14,'A717OSC020000000','','A717OSC020000000','OSC - 02',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',1061840,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(410,14,'A717OSC050000000','','A717OSC050000000','OSC - 05',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',1326490,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(411,14,'A717OSC060000000','','A717OSC060000000','OSC - 06',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',993273,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:49'),(412,14,'A717OSC120000000','','A717OSC120000000','OSC - 12',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',1282920,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(413,14,'A717OSC130000000','','A717OSC130000000','OSC - 13',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1203380,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(414,14,'A717OSC140000000','','A717OSC140000000','OSC - 14',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1279310,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(415,14,'A717OSC150000000','','A717OSC150000000','OSC - 15',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1011130,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(416,14,'A717OSC220000000','','A717OSC220000000','OSC - 22',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1107160,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(417,14,'A717OSC230000000','','A717OSC230000000','OSC - 23',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',1094580,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(418,14,'A602ODL000000000','','A602ODL000000000','OUTER DOS ( L )',0,NULL,NULL,NULL,NULL,NULL,34.00,NULL,NULL,NULL,NULL,'PCS',10449.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(419,14,'A602ODM000000000','','A602ODM000000000','OUTER DOS ( M )',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',6064.97,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(420,14,'X504PWS000040GM0','','X504PWS000040GM0','PIPA WS 40 GM',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',53311,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(421,14,'X603PW0017050300','','X603PW0017050300','PLASTIK WRAPPING 17MICRON X 50CM X 300M HJB',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'ROLL',65314.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:50'),(422,14,'A121PSH0101C0000','','A121PSH0101C0000','PSH1 - 1C',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',184143,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(423,14,'A121PSH0201C0000','','A121PSH0201C0000','PSH2 - 1C',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',199651,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(424,14,'A703PW0500000000','','A703PW0500000000','PW 05',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1525950,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(425,14,'A401RBD340000000','','A401RBD340000000','RAILING BAR D-34',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',140300,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(426,14,'I401RB01I0000000','','I401RB01I0000000','RB 01 I',0,NULL,NULL,NULL,NULL,NULL,58.00,NULL,NULL,NULL,NULL,'PCS',98272.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(427,14,'I145RS3SS0000000','','I145RS3SS0000000','RS 03 SS',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',13421.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(428,14,'I145RS4SS0000300','','I145RS4SS0000300','RS 04 SS 3\"',0,NULL,NULL,NULL,NULL,NULL,23.00,NULL,NULL,NULL,NULL,'PCS',34506.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:51'),(429,14,'I145RS4SS0000400','','I145RS4SS0000400','RS 04 SS 4\"',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',42196.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(430,14,'A163RU0100000000','','A163RU0100000000','RU - 1',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',1115970,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(431,14,'A163RU1000000000','','A163RU1000000000','RU - 10',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1014680,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(432,14,'A163RU1100000000','','A163RU1100000000','RU - 11',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',691986,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(433,14,'A163RU1200000000','','A163RU1200000000','RU - 12',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',690776,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(434,14,'A163RU1300000000','','A163RU1300000000','RU - 13',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',700911,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(435,14,'A163RU1400000000','','A163RU1400000000','RU - 14',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',737264,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(436,14,'I117S5JSS0000000','','I117S5JSS0000000','S 5J SS',0,NULL,NULL,NULL,NULL,NULL,27.00,NULL,NULL,NULL,NULL,'PCS',44203.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(437,14,'I117S5KSS0000000','','I117S5KSS0000000','S 5K SS',0,NULL,NULL,NULL,NULL,NULL,154.00,NULL,NULL,NULL,NULL,'PCS',40010.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:52'),(438,14,'I117S5LZ00000000','','I117S5LZ00000000','S 5L Z',0,NULL,NULL,NULL,NULL,NULL,50.00,NULL,NULL,NULL,NULL,'PCS',29701.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(439,14,'I117S5MZ00000000','','I117S5MZ00000000','S 5M Z',0,NULL,NULL,NULL,NULL,NULL,157.00,NULL,NULL,NULL,NULL,'PCS',31980.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(440,14,'I117S5P000FBL000','','I117S5P000FBL000','S 5P FBL',0,NULL,NULL,NULL,NULL,NULL,19.00,NULL,NULL,NULL,NULL,'PCS',67666.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(441,14,'I117S5P000NBL000','','I117S5P000NBL000','S 5P NBL',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'PCS',69592.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(442,14,'V117S7AZ00000000','','V117S7AZ00000000','S 7A Z',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',18431.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(443,14,'I117S9GZ00000000','','I117S9GZ00000000','S 9G Z',0,NULL,NULL,NULL,NULL,NULL,49.00,NULL,NULL,NULL,NULL,'PCS',33111.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(444,14,'I132SA3000SS0000','','I132SA3000SS0000','SA 30 SS',0,NULL,NULL,NULL,NULL,NULL,87.00,NULL,NULL,NULL,NULL,'PCS',11719.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(445,14,'I132SA4000SS0000','','I132SA4000SS0000','SA 40 SS',0,NULL,NULL,NULL,NULL,NULL,56.00,NULL,NULL,NULL,NULL,'PCS',13327.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:53'),(446,14,'I132SA5000SS0000','','I132SA5000SS0000','SA 50 SS',0,NULL,NULL,NULL,NULL,NULL,98.00,NULL,NULL,NULL,NULL,'PCS',14920.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(447,14,'I141SACHR2000000','','I141SACHR2000000','SA CHROME 02',0,NULL,NULL,NULL,NULL,NULL,82.00,NULL,NULL,NULL,NULL,'PCS',76635.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(448,14,'I141SACHR2K00000','','I141SACHR2K00000','SA CHROME 02 K',0,NULL,NULL,NULL,NULL,NULL,102.00,NULL,NULL,NULL,NULL,'PCS',96788.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(449,14,'A154SACW01000000','','A154SACW01000000','SAC - W1',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',604318,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(450,14,'A153SAGSH3000000','','A153SAGSH3000000','SAG - SH3',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',251695,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(451,14,'A152SAHBR0100000','','A152SAHBR0100000','SAH - BR1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',859780,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(452,14,'A152SAHBS0100000','','A152SAHBS0100000','SAH - BS1',0,NULL,NULL,NULL,NULL,NULL,79.00,NULL,NULL,NULL,NULL,'PCS',307903,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:54'),(453,14,'A152SAHBS0200000','','A152SAHBS0200000','SAH - BS2',0,NULL,NULL,NULL,NULL,NULL,100.00,NULL,NULL,NULL,NULL,'PCS',317130,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(454,14,'A152SAHBS02T0000','','A152SAHBS02T0000','SAH - BS2 T',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',441839,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(455,14,'A152SAHBS0400000','','A152SAHBS0400000','SAH - BS4',0,NULL,NULL,NULL,NULL,NULL,74.00,NULL,NULL,NULL,NULL,'PCS',301182,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(456,14,'A152SAHBT1BLR000','','A152SAHBT1BLR000','SAH - BT1 BLR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',586339,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(457,14,'A152SAHBV1BG0000','','A152SAHBV1BG0000','SAH - BV1 BG',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',527229,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(458,14,'A152SAHBV1GM0000','','A152SAHBV1GM0000','SAH - BV1 GM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',553498,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(459,14,'A152SAHBV1WR0000','','A152SAHBV1WR0000','SAH - BV1 WR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',541668,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(460,14,'A157SAHC04000000','','A157SAHC04000000','SAH - C4',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',218311,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:55'),(461,14,'A157SAHD02000000','','A157SAHD02000000','SAH - D2',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',361733,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(462,14,'A157SAHDV1BG0000','','A157SAHDV1BG0000','SAH - DV1 BG',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',471316,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(463,14,'A157SAHDV1GM0000','','A157SAHDV1GM0000','SAH - DV1 GM',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',464441,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(464,14,'A154SAHH02000000','','A154SAHH02000000','SAH - H2',0,NULL,NULL,NULL,NULL,NULL,70.00,NULL,NULL,NULL,NULL,'PCS',351521,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(465,14,'A154SAHH02GM0000','','A154SAHH02GM0000','SAH - H2 GM',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',562389,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(466,14,'A154SAHH02T00000','','A154SAHH02T00000','SAH - H2 T',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',499141,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(467,14,'A154SAHHC0100000','','A154SAHHC0100000','SAH - HC1',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1067270,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:56'),(468,14,'A154SAHHT1BLR000','','A154SAHHT1BLR000','SAH - HT1 BLR',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',670841,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(469,14,'A154SAHHV1BG0000','','A154SAHHV1BG0000','SAH - HV1 BG',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',617508,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(470,14,'A154SAHHV1GM0000','','A154SAHHV1GM0000','SAH - HV1 GM',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',639064,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(471,14,'A154SAHHY0100000','','A154SAHHY0100000','SAH - HY1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',682628,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(472,14,'A155SAHK01000000','','A155SAHK01000000','SAH - K1',0,NULL,NULL,NULL,NULL,NULL,26.00,NULL,NULL,NULL,NULL,'PCS',251716,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(473,14,'A155SAHK02000000','','A155SAHK02000000','SAH - K2',0,NULL,NULL,NULL,NULL,NULL,7.00,NULL,NULL,NULL,NULL,'PCS',256016,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(474,14,'A155SAHK02GBL000','','A155SAHK02GBL000','SAH - K2 GBL',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',337650,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(475,14,'A155SAHK02GM0000','','A155SAHK02GM0000','SAH - K2 GM',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',382880,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(476,14,'A155SAHK02T00000','','A155SAHK02T00000','SAH - K2 T',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',382663,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:57'),(477,14,'A155SAHK03B00000','','A155SAHK03B00000','SAH - K3 B',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',535803,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(478,14,'A155SAHK03BL0000','','A155SAHK03BL0000','SAH - K3 BL',0,NULL,NULL,NULL,NULL,NULL,12.00,NULL,NULL,NULL,NULL,'PCS',512138,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(479,14,'A155SAHK03G00000','','A155SAHK03G00000','SAH - K3 G',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',525429,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(480,14,'A155SAHK04000000','','A155SAHK04000000','SAH - K4',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',255092,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(481,14,'A155SAHK04B00000','','A155SAHK04B00000','SAH - K4 B',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',952503,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(482,14,'A155SAHKC0100000','','A155SAHKC0100000','SAH - KC1',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1247490,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(483,14,'A155SAHKP0100000','','A155SAHKP0100000','SAH - KP1',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',575539,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(484,14,'A155SAHKV1BG0000','','A155SAHKV1BG0000','SAH - KV1 BG',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',573038,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:58'),(485,14,'A155SAHKV1GM0000','','A155SAHKV1GM0000','SAH - KV1 GM',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',607586,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(486,14,'A155SAHKV1WR0000','','A155SAHKV1WR0000','SAH - KV1 WR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',543841,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(487,14,'A151SAHMV1BG0000','','A151SAHMV1BG0000','SAH - MV1 BG',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',533550,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(488,14,'A151SAHMV1WR0000','','A151SAHMV1WR0000','SAH - MV1 WR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',506598,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(489,14,'A151SAHMY0100000','','A151SAHMY0100000','SAH - MY1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',673322,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(490,14,'A153SAHSB0100000','','A153SAHSB0100000','SAH - SB1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',333214,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(491,14,'A153SAHSH0100000','','A153SAHSH0100000','SAH - SH1',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',267055,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(492,14,'A153SAHSH0200000','','A153SAHSH0200000','SAH - SH2',0,NULL,NULL,NULL,NULL,NULL,26.00,NULL,NULL,NULL,NULL,'PCS',263757,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(493,14,'A153SAHSH02GM000','','A153SAHSH02GM000','SAH - SH2 GM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',0.02,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(494,14,'A153SAHSH02T0000','','A153SAHSH02T0000','SAH - SH2 T',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',363214,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:58:59'),(495,14,'A153SAHSR0100000','','A153SAHSR0100000','SAH - SR1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',491982,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(496,14,'A154SAHW01000000','','A154SAHW01000000','SAH - W1',0,NULL,NULL,NULL,NULL,NULL,33.00,NULL,NULL,NULL,NULL,'PCS',258783,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(497,14,'A154SAHW02000000','','A154SAHW02000000','SAH - W2',0,NULL,NULL,NULL,NULL,NULL,31.00,NULL,NULL,NULL,NULL,'PCS',248228,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(498,14,'A154SAHW02BL0000','','A154SAHW02BL0000','SAH - W2 BL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',317638,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(499,14,'A154SAHW02GBL000','','A154SAHW02GBL000','SAH - W2 GBL',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',314584,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(500,14,'A154SAHW02GM0000','','A154SAHW02GM0000','SAH - W2 GM',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',344238,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(501,14,'A154SAHW02T00000','','A154SAHW02T00000','SAH - W2 T',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',356259,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:00'),(502,14,'A154SAHW02W00000','','A154SAHW02W00000','SAH - W2 W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',326813,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(503,14,'A154SAHW04000000','','A154SAHW04000000','SAH - W4',0,NULL,NULL,NULL,NULL,NULL,30.00,NULL,NULL,NULL,NULL,'PCS',222265,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(504,14,'A154SAHW04C00000','','A154SAHW04C00000','SAH - W4C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',215439,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(505,14,'A154SAHWB01BL000','','A154SAHWB01BL000','SAH - WB1 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',435718,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(506,14,'A154SAHWK0100000','','A154SAHWK0100000','SAH - WK1',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',349658,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(507,14,'A154SAHWR0100000','','A154SAHWR0100000','SAH - WR1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',649608,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(508,14,'A154SAHWT1BLR000','','A154SAHWT1BLR000','SAH - WT1 BLR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',530551,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(509,14,'A154SAHWV1WR0000','','A154SAHWV1WR0000','SAH - WV1 WR',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',384943,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(510,14,'A154SAHWY0100000','','A154SAHWY0100000','SAH - WY1',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',415438,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(511,14,'A152SAMBS2000000','','A152SAMBS2000000','SAM - BS2',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',362320,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(512,14,'A159SAMGP03BL000','','A159SAMGP03BL000','SAM - GP3 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',3184400,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(513,14,'A159SAMGP03GM000','','A159SAMGP03GM000','SAM - GP3 GM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',3253390,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:01'),(514,14,'A159SAMGT0100000','','A159SAMGT0100000','SAM - GT1',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',2021880,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(515,14,'A159SAMGT01GM000','','A159SAMGT01GM000','SAM - GT1 GM',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',2578310,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(516,14,'A154SAMHP02BRG00','','A154SAMHP02BRG00','SAM - HP2 BRG',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',819835,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(517,14,'A155SAMKP02BRG00','','A155SAMKP02BRG00','SAM - KP2 BRG',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',1122710,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(518,14,'A155SAMKP03BL000','','A155SAMKP03BL000','SAM - KP3 BL',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1060710,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(519,14,'A155SAMKP03GM000','','A155SAMKP03GM000','SAM - KP3 GM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',1131740,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(520,14,'A151SAMMP03BL000','','A151SAMMP03BL000','SAM - MP3 BL',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1011950,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(521,14,'A154SAMW02000000','','A154SAMW02000000','SAM - W2',0,NULL,NULL,NULL,NULL,NULL,37.00,NULL,NULL,NULL,NULL,'PCS',260890,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(522,14,'A154SAMWP02BRG00','','A154SAMWP02BRG00','SAM - WP2 BRG',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',570474,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(523,14,'A154SAMWP03BL000','','A154SAMWP03BL000','SAM - WP3 BL',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',515930,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:02'),(524,14,'A157SASBV0200000','','A157SASBV0200000','SAS - BV2',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',397010,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(525,14,'A157SASBV0500000','','A157SASBV0500000','SAS - BV5',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',401720,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(526,14,'A152SASBX03BLC00','','A152SASBX03BLC00','SAS - BX3 BLC',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',643849,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(527,14,'A114SASKF0300000','','A114SASKF0300000','SAS - KF3',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',825717,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(528,14,'A114SASKX02C0000','','A114SASKX02C0000','SAS - KX2 C',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',405722,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(529,14,'A157SASSV0500000','','A157SASSV0500000','SAS - SV5',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',272546,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(530,14,'A154SASWH03TBLC','','A154SASWH03TBLC','SAS - WH3 T BLC',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',683650,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(531,14,'A154SASWH0500000','','A154SASWH0500000','SAS - WH5',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',452406,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(532,14,'A154SASWX03BLC00','','A154SASWX03BLC00','SAS - WX3 BLC',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',400804,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(533,14,'A154SASWX0500000','','A154SASWX0500000','SAS - WX5',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',358159,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(534,14,'A154SATH01BL0000','','A154SATH01BL0000','SAT - H1 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',343037,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(535,14,'A155SATK01BL0000','','A155SATK01BL0000','SAT - K1 BL',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',231850,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:03'),(536,14,'A122SC5000S00000','','A122SC5000S00000','SC 05 S',0,NULL,NULL,NULL,NULL,NULL,137.00,NULL,NULL,NULL,NULL,'PCS',77336.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(537,14,'A122SC5000W00000','','A122SC5000W00000','SC 05 W',0,NULL,NULL,NULL,NULL,NULL,208.00,NULL,NULL,NULL,NULL,'PCS',58367.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(538,14,'A122SC5000WH0000','','A122SC5000WH0000','SC 05 W HEAD',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',24507.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(539,14,'A122SC7000C00000','','A122SC7000C00000','SC 07 C',0,NULL,NULL,NULL,NULL,NULL,104.00,NULL,NULL,NULL,NULL,'PCS',72774.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(540,14,'A122SC7000W00000','','A122SC7000W00000','SC 07 W',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',69261.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(541,14,'A122SC9000C00000','','A122SC9000C00000','SC 09 C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',75649.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(542,14,'A122SC9000W00000','','A122SC9000W00000','SC 09 W',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',55277.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(543,14,'A122SC10W0000000','','A122SC10W0000000','SC 10 W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',40345.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(544,14,'A122SC1100BG0000','','A122SC1100BG0000','SC 11 BG',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',115009,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(545,14,'A122SC1100BL0000','','A122SC1100BL0000','SC 11 BL',0,NULL,NULL,NULL,NULL,NULL,33.00,NULL,NULL,NULL,NULL,'PCS',72201.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:04'),(546,14,'A122SC1100C00000','','A122SC1100C00000','SC 11 C',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',86962,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(547,14,'A122SC1100PGM000','','A122SC1100PGM000','SC 11 PGM',0,NULL,NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,'PCS',91907.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(548,14,'A122SC1100W00000','','A122SC1100W00000','SC 11 W',0,NULL,NULL,NULL,NULL,NULL,31.00,NULL,NULL,NULL,NULL,'PCS',57649.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(549,14,'A122SC1200PBL000','','A122SC1200PBL000','SC 12 PBL',0,NULL,NULL,NULL,NULL,NULL,21.00,NULL,NULL,NULL,NULL,'PCS',64906.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(550,14,'A122SC1200PGM000','','A122SC1200PGM000','SC 12 PGM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',72681.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(551,14,'A117SCR1B0N00000','','A117SCR1B0N00000','SCR 01B N',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',79565.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:05'),(552,14,'A117SCR3C0F00000','','A117SCR3C0F00000','SCR 03C F',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',85954.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(553,14,'I405SDX0101I0000','','I405SDX0101I0000','SDX1 - 01 I',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',46317.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(554,14,'I405SDX0102I0000','','I405SDX0102I0000','SDX1 - 02 I',0,NULL,NULL,NULL,NULL,NULL,55.00,NULL,NULL,NULL,NULL,'PCS',43356.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(555,14,'I405SDX0103I0000','','I405SDX0103I0000','SDX1 - 03 I',0,NULL,NULL,NULL,NULL,NULL,43.00,NULL,NULL,NULL,NULL,'PCS',52034.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(556,14,'I405SDX0201I0000','','I405SDX0201I0000','SDX2 - 01 I',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',99683.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(557,14,'I412ST1212AIR000','','I412ST1212AIR000','SEAL TAPE 12 MM AIR KUNING 12M',0,NULL,NULL,NULL,NULL,NULL,4707.00,NULL,NULL,NULL,NULL,'PCS',942.664,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(558,14,'V412ST1200R01000','','V412ST1200R01000','SEAL TAPE 12 MM AVA MERAH 10M',0,NULL,NULL,NULL,NULL,NULL,100.00,NULL,NULL,NULL,NULL,'PCS',728.346,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(559,14,'X506SKP000060063','','X506SKP000060063','SEKRUP 6 X 5/8',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',49.28,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(560,14,'A162SETT01000000','','A162SETT01000000','SET - T1',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',790589,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:06'),(561,14,'A161SETW02000000','','A161SETW02000000','SET - W2',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',1136370,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(562,14,'A161SETW03000000','','A161SETW03000000','SET - W3',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1435920,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(563,14,'A161SETW04000000','','A161SETW04000000','SET - W4',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',2267560,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(564,14,'A425SFGB1EW00000','','A425SFGB1EW00000','SFGB 1E W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',314335,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(565,14,'A425SFGB1EWB0000','','A425SFGB1EWB0000','SFGB 1E WB',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',295983,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(566,14,'A425SFGB1FWB3500','','A425SFGB1FWB3500','SFGB 1F WB 35 CM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',109711,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(567,14,'A425SFGB1FWG5300','','A425SFGB1FWG5300','SFGB 1F WG 53 CM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',115872,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(568,14,'A425SFGB1FWO3500','','A425SFGB1FWO3500','SFGB 1F WO 35 CM',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',76758.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(569,14,'A425SFGB1HW00000','','A425SFGB1HW00000','SFGB 1H W',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',132759,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(570,14,'A141SFS03KGM0000','','A141SFS03KGM0000','SFS 03 K GM',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',87508.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:07'),(571,14,'A425SFUG1AW00000','','A425SFUG1AW00000','SFUG 1A W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',271318,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(572,14,'A113SH0100000000','','A113SH0100000000','SH 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',115649,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(573,14,'I113SH5JSS000000','','I113SH5JSS000000','SH 5J SS',0,NULL,NULL,NULL,NULL,NULL,120.00,NULL,NULL,NULL,NULL,'PCS',32425.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(574,14,'I113SH5KSS000000','','I113SH5KSS000000','SH 5K SS',0,NULL,NULL,NULL,NULL,NULL,53.00,NULL,NULL,NULL,NULL,'PCS',23397.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(575,14,'I113SH5LZ0000000','','I113SH5LZ0000000','SH 5L Z',0,NULL,NULL,NULL,NULL,NULL,56.00,NULL,NULL,NULL,NULL,'PCS',26789,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(576,14,'I113SH5PBL000000','','I113SH5PBL000000','SH 5P BL',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',58431.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(577,14,'V113SH7AZ0000000','','V113SH7AZ0000000','SH 7A Z',0,NULL,NULL,NULL,NULL,NULL,58.00,NULL,NULL,NULL,NULL,'PCS',15126.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:08'),(578,14,'I113SH9GZ0000000','','I113SH9GZ0000000','SH 9G Z',0,NULL,NULL,NULL,NULL,NULL,100.00,NULL,NULL,NULL,NULL,'PCS',29888.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(579,14,'A113SHCR1A000000','','A113SHCR1A000000','SHCR 01A',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',51513.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(580,14,'A113SHCR1B000000','','A113SHCR1B000000','SHCR 01B',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',71193.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(581,14,'A113SHCR3B00000','','A113SHCR3B00000','SHCR 03B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',46667.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(582,14,'A113SHCR3C000000','','A113SHCR3C000000','SHCR 03C',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',68952.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(583,14,'A113SHOV1A000000','','A113SHOV1A000000','SHOV 01A',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',58682.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(584,14,'A113SHOV1B000000','','A113SHOV1B000000','SHOV 01B',0,NULL,NULL,NULL,NULL,NULL,31.00,NULL,NULL,NULL,NULL,'PCS',55910.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(585,14,'A113SHOV3B000000','','A113SHOV3B000000','SHOV 03 B',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',62231.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(586,14,'A113SHOV9BY00000','','A113SHOV9BY00000','SHOV 09BY',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',63705.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(587,14,'A161SHTW01000000','','A161SHTW01000000','SHT - W1',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',1446350,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:09'),(588,14,'A161SHTW02000000','','A161SHTW02000000','SHT - W2',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',2019670,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(589,14,'A113SHT01BL00000','','A113SHT01BL00000','SHT 01 BL',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',57431,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(590,14,'A113SHT01C000000','','A113SHT01C000000','SHT 01 C',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',49316.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(591,14,'A113SHT01GM00000','','A113SHT01GM00000','SHT 01 GM',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',56136.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(592,14,'A113SHY010000000','','A113SHY010000000','SHY 01',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',75165.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(593,14,'A413SH100BB00125','','A413SH100BB00125','SIPHON B-B 1 1/4',0,NULL,NULL,NULL,NULL,NULL,90.00,NULL,NULL,NULL,NULL,'PCS',281309,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(594,14,'A413SH000BS00125','','A413SH000BS00125','SIPHON BS 1 1/4',0,NULL,NULL,NULL,NULL,NULL,154.00,NULL,NULL,NULL,NULL,'PCS',238550,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:10'),(595,14,'I413SHP000W00125','','I413SHP000W00125','SIPHON P-W 1 1/4',0,NULL,NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,'PCS',15409,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(596,14,'I413SH0000SS0125','','I413SH0000SS0125','SIPHON SS 1 1/4',0,NULL,NULL,NULL,NULL,NULL,353.00,NULL,NULL,NULL,NULL,'PCS',59338.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(597,14,'V141SKM01SS00000','','V141SKM01SS00000','SKM 01 SS',0,NULL,NULL,NULL,NULL,NULL,67.00,NULL,NULL,NULL,NULL,'PCS',6247.75,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(598,14,'V141SKM02SSGM000','','V141SKM02SSGM000','SKM 02 SS GM',0,NULL,NULL,NULL,NULL,NULL,114.00,NULL,NULL,NULL,NULL,'PCS',16622.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(599,14,'V141SKM03SSBL000','','V141SKM03SSBL000','SKM 03 SS BL',0,NULL,NULL,NULL,NULL,NULL,57.00,NULL,NULL,NULL,NULL,'PCS',16618,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(600,14,'V141SKM04SSC0000','','V141SKM04SSC0000','SKM 04 SS C',0,NULL,NULL,NULL,NULL,NULL,59.00,NULL,NULL,NULL,NULL,'PCS',13229.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:11'),(601,14,'I133SN3000SS0000','','I133SN3000SS0000','SN 30 SS',0,NULL,NULL,NULL,NULL,NULL,159.00,NULL,NULL,NULL,NULL,'PCS',13603.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(602,14,'I133SN4000SS0000','','I133SN4000SS0000','SN 40 SS',0,NULL,NULL,NULL,NULL,NULL,339.00,NULL,NULL,NULL,NULL,'PCS',15733.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(603,14,'I133SN5000SS0000','','I133SN5000SS0000','SN 50 SS',0,NULL,NULL,NULL,NULL,NULL,125.00,NULL,NULL,NULL,NULL,'PCS',17364.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(604,14,'A117SOV1A0F00000','','A117SOV1A0F00000','SOV 01A F',0,NULL,NULL,NULL,NULL,NULL,47.00,NULL,NULL,NULL,NULL,'PCS',68641.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(605,14,'A117SOV1A0N00000','','A117SOV1A0N00000','SOV 01A N',0,NULL,NULL,NULL,NULL,NULL,11.00,NULL,NULL,NULL,NULL,'PCS',66752.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(606,14,'A117SOV1A0W00000','','A117SOV1A0W00000','SOV 01A W',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'PCS',64897.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:12'),(607,14,'A117SOV3B0N00000','','A117SOV3B0N00000','SOV 03B N',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',72551.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(608,14,'A117SOV3B0W00000','','A117SOV3B0W00000','SOV 03B W',0,NULL,NULL,NULL,NULL,NULL,10.00,NULL,NULL,NULL,NULL,'PCS',67269.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(609,14,'A117SOV3C0N00000','','A117SOV3C0N00000','SOV 03C N',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',73838.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(610,14,'A117SOV9BYN00000','','A117SOV9BYN00000','SOV 09BY N',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',72053.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(611,14,'A117SOV9BYW00000','','A117SOV9BYW00000','SOV 09BY W',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',71074.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(612,14,'V903SPK000200100','','V903SPK000200100','SPANDUK AVA 200 X 100 CM',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',31082.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(613,14,'I141SPLASKB00000','','I141SPLASKB00000','SPLAST K - B',0,NULL,NULL,NULL,NULL,NULL,76.00,NULL,NULL,NULL,NULL,'PCS',8274.94,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:13'),(614,14,'I141SPLASKC00000','','I141SPLASKC00000','SPLAST K - C',0,NULL,NULL,NULL,NULL,NULL,104.00,NULL,NULL,NULL,NULL,'PCS',8267.33,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(615,14,'I141SPLASKG00000','','I141SPLASKG00000','SPLAST K - G',0,NULL,NULL,NULL,NULL,NULL,211.00,NULL,NULL,NULL,NULL,'PCS',8274.46,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(616,14,'I141SPLASKW00000','','I141SPLASKW00000','SPLAST K - W',0,NULL,NULL,NULL,NULL,NULL,77.00,NULL,NULL,NULL,NULL,'PCS',8268.28,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(617,14,'A111SPV01BG00000','','A111SPV01BG00000','SPV 01 BG',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',221052,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(618,14,'A111SPV01GM00000','','A111SPV01GM00000','SPV 01 GM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',215912,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(619,14,'A111SPY010000000','','A111SPY010000000','SPY 01',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',286403,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(620,14,'A157SSV010000000','','A157SSV010000000','SSV 01',0,NULL,NULL,NULL,NULL,NULL,29.00,NULL,NULL,NULL,NULL,'PCS',193390,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:14'),(621,14,'A209SSV01C000000','','A209SSV01C000000','SSV 01C',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',168203,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(622,14,'A117ST01FBL00000','','A117ST01FBL00000','ST 01 FBL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',70961.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(623,14,'A117ST01FGM00000','','A117ST01FGM00000','ST 01 FGM',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',69371.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(624,14,'A117ST01NBL00000','','A117ST01NBL00000','ST 01 NBL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',72516.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(625,14,'A117ST01NC000000','','A117ST01NC000000','ST 01 NC',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',58208.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(626,14,'A117ST01NGM00000','','A117ST01NGM00000','ST 01 NGM',0,NULL,NULL,NULL,NULL,NULL,19.00,NULL,NULL,NULL,NULL,'PCS',71030.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(627,14,'A209SV0100000000','','A209SV0100000000','SV 01',0,NULL,NULL,NULL,NULL,NULL,59.00,NULL,NULL,NULL,NULL,'PCS',88691,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(628,14,'I134SW3000SS0000','','I134SW3000SS0000','SW 30 SS',0,NULL,NULL,NULL,NULL,NULL,122.00,NULL,NULL,NULL,NULL,'PCS',10671.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(629,14,'I134SW4000SS0000','','I134SW4000SS0000','SW 40 SS',0,NULL,NULL,NULL,NULL,NULL,148.00,NULL,NULL,NULL,NULL,'PCS',12128,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:15'),(630,14,'I134SW5000SS0000','','I134SW5000SS0000','SW 50 SS',0,NULL,NULL,NULL,NULL,NULL,108.00,NULL,NULL,NULL,NULL,'PCS',14001.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(631,14,'A117SY0100000000','','A117SY0100000000','SY 01',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',71456.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(632,14,'I113TA5JSS000000','','I113TA5JSS000000','TA 5J SS',0,NULL,NULL,NULL,NULL,NULL,134.00,NULL,NULL,NULL,NULL,'PCS',36872.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(633,14,'I113TA5L00Z00000','','I113TA5L00Z00000','TA 5L Z',0,NULL,NULL,NULL,NULL,NULL,72.00,NULL,NULL,NULL,NULL,'PCS',26318.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(634,14,'I113TA5M00Z00000','','I113TA5M00Z00000','TA 5M Z',0,NULL,NULL,NULL,NULL,NULL,129.00,NULL,NULL,NULL,NULL,'PCS',28478.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(635,14,'I113TA5PBL000000','','I113TA5PBL000000','TA 5P BL',0,NULL,NULL,NULL,NULL,NULL,34.00,NULL,NULL,NULL,NULL,'PCS',59803.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(636,14,'V113TA7AZ0000000','','V113TA7AZ0000000','TA 7A Z',0,NULL,NULL,NULL,NULL,NULL,45.00,NULL,NULL,NULL,NULL,'PCS',15757.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(637,14,'I113TA9G00Z00000','','I113TA9G00Z00000','TA 9G Z',0,NULL,NULL,NULL,NULL,NULL,44.00,NULL,NULL,NULL,NULL,'PCS',31060.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:16'),(638,14,'X914TV5518SGS000','','X914TV5518SGS000','TACO FLOORING TV 5518 SPC GREY STERLING',0,NULL,NULL,NULL,NULL,NULL,75.00,NULL,NULL,NULL,NULL,'BOX',549550,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(639,14,'A902TKA304012BL0','','A902TKA304012BL0','TAS KAIN AER 30X40X12 HITAM',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',5598.98,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(640,14,'A113TAT01GM00000','','A113TAT01GM00000','TAT 01 GM',0,NULL,NULL,NULL,NULL,NULL,14.00,NULL,NULL,NULL,NULL,'PCS',59299.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(641,14,'A113TAY010000000','','A113TAY010000000','TAY 01',0,NULL,NULL,NULL,NULL,NULL,25.00,NULL,NULL,NULL,NULL,'PCS',74826.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(642,14,'A729TC0100000000','','A729TC0100000000','TC - 01',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',430411,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(643,14,'A729TC0200000000','','A729TC0200000000','TC - 02',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',439996,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(644,14,'A729TC1000000000','','A729TC1000000000','TC - 10',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',194468,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(645,14,'A729TC1200000000','','A729TC1200000000','TC - 12',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',192528,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(646,14,'A729TC1300000000','','A729TC1300000000','TC - 13',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',196266,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(647,14,'A729TC1400000000','','A729TC1400000000','TC - 14',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',117776,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(648,14,'A729TC1600000000','','A729TC1600000000','TC - 16',0,NULL,NULL,NULL,NULL,NULL,61.00,NULL,NULL,NULL,NULL,'PCS',402770,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:17'),(649,14,'A111TCR1B0000000','','A111TCR1B0000000','TCR 01B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',78861.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(650,14,'A111TCR3C0000000','','A111TCR3C0000000','TCR 03C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',81423.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(651,14,'A111TCR9BX000000','','A111TCR9BX000000','TCR 09BX',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',57178.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(652,14,'A113TF01A0000000','','A113TF01A0000000','TF 01 A',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',51170.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(653,14,'A113TF01B0000000','','A113TF01B0000000','TF 01 B',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',50587.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(654,14,'A113TF03B0000000','','A113TF03B0000000','TF 03 B',0,NULL,NULL,NULL,NULL,NULL,140.00,NULL,NULL,NULL,NULL,'PCS',55447.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(655,14,'A113TF09BY000000','','A113TF09BY000000','TF 09 BY',0,NULL,NULL,NULL,NULL,NULL,30.00,NULL,NULL,NULL,NULL,'PCS',55295.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(656,14,'A716TBTWC0200000','','A716TBTWC0200000','TOILET BOWL TWC - 02',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',451303,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:18'),(657,14,'A111TOV1C0000000','','A111TOV1C0000000','TOV 01 C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',95186.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(658,14,'A111TOV1A0000000','','A111TOV1A0000000','TOV 01A',0,NULL,NULL,NULL,NULL,NULL,85.00,NULL,NULL,NULL,NULL,'PCS',81054.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(659,14,'A111TOV03B000000','','A111TOV03B000000','TOV 03 B',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',86980.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(660,14,'A111TOV9BY000000','','A111TOV9BY000000','TOV 09BY',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',84612.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(661,14,'A111TR5J00F00000','','A111TR5J00F00000','TR 5J F',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',39330.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(662,14,'A716TSC040000000','','A716TSC040000000','TSC - 04',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',1240680,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(663,14,'A716TWC010000000','','A716TWC010000000','TWC - 01',0,NULL,NULL,NULL,NULL,NULL,58.00,NULL,NULL,NULL,NULL,'PCS',602487,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(664,14,'A716TWC020000000','','A716TWC020000000','TWC - 02',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',805600,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(665,14,'A716TWC090000000','','A716TWC090000000','TWC - 09',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',524134,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(666,14,'A716TWC160000000','','A716TWC160000000','TWC - 16',0,NULL,NULL,NULL,NULL,NULL,128.00,NULL,NULL,NULL,NULL,'PCS',625502,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(667,14,'V113TAF010000000','','V113TAF010000000','TWO ANGLE FAUCET 01',0,NULL,NULL,NULL,NULL,NULL,122.00,NULL,NULL,NULL,NULL,'PCS',11532.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(668,14,'A702UCW05AR00000','','A702UCW05AR00000','UCW 05A-R',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',355806,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(669,14,'A702UCW05R000000','','A702UCW05R000000','UCW 05-R',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',355806,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:19'),(670,14,'A702UCW06O000000','','A702UCW06O000000','UCW 06-O',0,NULL,NULL,NULL,NULL,NULL,13.00,NULL,NULL,NULL,NULL,'PCS',223108,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(671,14,'I114V5KSS0000000','','I114V5KSS0000000','V 5K SS',0,NULL,NULL,NULL,NULL,NULL,34.00,NULL,NULL,NULL,NULL,'PCS',55067.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(672,14,'I114V5PBL0000000','','I114V5PBL0000000','V 5P BL',0,NULL,NULL,NULL,NULL,NULL,68.00,NULL,NULL,NULL,NULL,'PCS',118786,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(673,14,'V114V7A00S2Z00000','','V114V7A00S2Z00000','V 7A S2 Z',0,NULL,NULL,NULL,NULL,NULL,95.00,NULL,NULL,NULL,NULL,'PCS',59169.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(674,14,'V114V7A000Z00000','','V114V7A000Z00000','V 7A Z',0,NULL,NULL,NULL,NULL,NULL,28.00,NULL,NULL,NULL,NULL,'PCS',36710.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(675,14,'A114VCR1B0000000','','A114VCR1B0000000','VCR 01B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',122206,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(676,14,'A114VCR3C0000000','','A114VCR3C0000000','VCR 03C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',122503,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(677,14,'C207APB200000004','','C207APB200000004','VENBRITE ALKALI PRIMER B2000 4 KG',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PAIL',94256.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(678,14,'C302BC3114S00001','','C302BC3114S00001','VENDOMAIN PRIMER EPOXY BLACK C3114 1 L SET',0,NULL,NULL,NULL,NULL,NULL,60.00,NULL,NULL,NULL,NULL,'KLG',55495.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(679,14,'C302LGC3108S0001','','C302LGC3108S0001','VENDOMAIN PRIMER EPOXY LIGHT GREY C3108 1 L SET',0,NULL,NULL,NULL,NULL,NULL,40.00,NULL,NULL,NULL,NULL,'KLG',55495.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(680,14,'C302WC3003S00001','','C302WC3003S00001','VENDOMAIN PRIMER EPOXY WHITE C3003 1 L SET',0,NULL,NULL,NULL,NULL,NULL,17.00,NULL,NULL,NULL,NULL,'KLG',55495.5,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(681,14,'C402LGN101100020','','C402LGN101100020','VENDOPROOF LIGHT GREY N1011 20 KG',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PAIL',797297,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(682,14,'X609VRP000000000','','X609VRP000000000','VERLOP RING PLASTIK',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',698.597,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(683,14,'A114VL0100000000','','A114VL0100000000','VL 01',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',208633,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:20'),(684,14,'A114VOV1A0000000','','A114VOV1A0000000','VOV 01A',0,NULL,NULL,NULL,NULL,NULL,28.00,NULL,NULL,NULL,NULL,'PCS',116915,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(685,14,'A114VOV3B0000000','','A114VOV3B0000000','VOV 03 B',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',120163,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(686,14,'A114VOV3C0000000','','A114VOV3C0000000','VOV 03 C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',102930,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(687,14,'A114VOV9BY000000','','A114VOV9BY000000','VOV 09BY',0,NULL,NULL,NULL,NULL,NULL,29.00,NULL,NULL,NULL,NULL,'PCS',120705,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(688,14,'A114VT01BL000000','','A114VT01BL000000','VT 01 BL',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',124082,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(689,14,'A114VT01GM000000','','A114VT01GM000000','VT 01 GM',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',124504,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(690,14,'A114VY0100000000','','A114VY0100000000','VY 01',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',85642.7,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(691,14,'I112W5KSS0000000','','I112W5KSS0000000','W 5K SS',0,NULL,NULL,NULL,NULL,NULL,18.00,NULL,NULL,NULL,NULL,'PCS',53273.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(692,14,'I112W5L000Z00000','','I112W5L000Z00000','W 5L Z',0,NULL,NULL,NULL,NULL,NULL,145.00,NULL,NULL,NULL,NULL,'PCS',36882.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:21'),(693,14,'I112W5PBL0000000','','I112W5PBL0000000','W 5P BL',0,NULL,NULL,NULL,NULL,NULL,57.00,NULL,NULL,NULL,NULL,'PCS',122982,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(694,14,'V112W7A000SS0000','','V112W7A000SS0000','W 7A SS',0,NULL,NULL,NULL,NULL,NULL,82.00,NULL,NULL,NULL,NULL,'PCS',46600.8,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(695,14,'V112W7A000Z00000','','V112W7A000Z00000','W 7A Z',0,NULL,NULL,NULL,NULL,NULL,27.00,NULL,NULL,NULL,NULL,'PCS',27703.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(696,14,'I112W9G000Z00000','','I112W9G000Z00000','W 9G Z',0,NULL,NULL,NULL,NULL,NULL,62.00,NULL,NULL,NULL,NULL,'PCS',40013.1,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(697,14,'V117WFF010000000','','V117WFF010000000','WALL FAUCET FILTER 01',0,NULL,NULL,NULL,NULL,NULL,54.00,NULL,NULL,NULL,NULL,'PCS',11540.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(698,14,'V117WFN010000000','','V117WFN010000000','WALL FAUCET NEPPLE 01',0,NULL,NULL,NULL,NULL,NULL,392.00,NULL,NULL,NULL,NULL,'PCS',11422.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(699,14,'V117WFN02W000000','','V117WFN02W000000','WALL FAUCET NEPPLE 02 W',0,NULL,NULL,NULL,NULL,NULL,61.00,NULL,NULL,NULL,NULL,'PCS',4081.38,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(700,14,'A526WTTWC160TFF0','','A526WTTWC160TFF0','WATER TANK TWC - 16 TANPA FILL & FLUSH',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',128282,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:22'),(701,14,'A112WF0300000050','','A112WF0300000050','WF 03 1/2',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',274330,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(702,14,'A112WHT01BL00000','','A112WHT01BL00000','WHT 01 BL',0,NULL,NULL,NULL,NULL,NULL,3.00,NULL,NULL,NULL,NULL,'PCS',148093,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(703,14,'A112WHT01C000000','','A112WHT01C000000','WHT 01 C',0,NULL,NULL,NULL,NULL,NULL,9.00,NULL,NULL,NULL,NULL,'PCS',131081,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(704,14,'I154WMX01P000000','','I154WMX01P000000','WMX 01 P',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',112141,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(705,14,'A112WOV1C0000000','','A112WOV1C0000000','WOV 01 C',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',117216,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(706,14,'A112WOV1A0000000','','A112WOV1A0000000','WOV 01A',0,NULL,NULL,NULL,NULL,NULL,75.00,NULL,NULL,NULL,NULL,'PCS',91640.4,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(707,14,'A112WOV03B000000','','A112WOV03B000000','WOV 03 B',0,NULL,NULL,NULL,NULL,NULL,116.00,NULL,NULL,NULL,NULL,'PCS',94292.2,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(708,14,'A112WOV9BY000000','','A112WOV9BY000000','WOV 09BY',0,NULL,NULL,NULL,NULL,NULL,29.00,NULL,NULL,NULL,NULL,'PCS',97078.9,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:23'),(709,14,'I123WS03IBL00000','','I123WS03IBL00000','WS 03 I BL',0,NULL,NULL,NULL,NULL,NULL,19.00,NULL,NULL,NULL,NULL,'PCS',57911.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(710,14,'A123WS0110000000','','A123WS0110000000','WS 11',0,NULL,NULL,NULL,NULL,NULL,63.00,NULL,NULL,NULL,NULL,'PCS',116744,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(711,14,'A123WS011C000000','','A123WS011C000000','WS 11C',0,NULL,NULL,NULL,NULL,NULL,24.00,NULL,NULL,NULL,NULL,'PCS',164592,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(712,14,'A123WS0120FR0000','','A123WS0120FR0000','WS 12 FR',0,NULL,NULL,NULL,NULL,NULL,106.00,NULL,NULL,NULL,NULL,'PCS',49953.6,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(713,14,'A123WS0130000000','','A123WS0130000000','WS 13',0,NULL,NULL,NULL,NULL,NULL,115.00,NULL,NULL,NULL,NULL,'PCS',122285,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(714,14,'A123WS0150000000','','A123WS0150000000','WS 15',0,NULL,NULL,NULL,NULL,NULL,35.00,NULL,NULL,NULL,NULL,'PCS',77422,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(715,14,'A123WS0160000000','','A123WS0160000000','WS 16',0,NULL,NULL,NULL,NULL,NULL,42.00,NULL,NULL,NULL,NULL,'PCS',192456,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(716,14,'A123WS016H000000','','A123WS016H000000','WS 16 HEAD',0,NULL,NULL,NULL,NULL,NULL,6.00,NULL,NULL,NULL,NULL,'PCS',155353,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:24'),(717,14,'A123WS0190000000','','A123WS0190000000','WS 19',0,NULL,NULL,NULL,NULL,NULL,75.00,NULL,NULL,NULL,NULL,'PCS',214317,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(718,14,'A123WS0200000000','','A123WS0200000000','WS 20',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',137780,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(719,14,'A123WS021BLC0000','','A123WS021BLC0000','WS 21 BLC',0,NULL,NULL,NULL,NULL,NULL,5.00,NULL,NULL,NULL,NULL,'PCS',201655,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(720,14,'A123WS0220000000','','A123WS0220000000','WS 22',0,NULL,NULL,NULL,NULL,NULL,16.00,NULL,NULL,NULL,NULL,'PCS',398990,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(721,14,'A123WS0240W00000','','A123WS0240W00000','WS 24 W',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',134258,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(722,14,'A123WS027BGW000','','A123WS027BGW000','WS 27 BGW',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',355954,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(723,14,'A123WS27GM000000','','A123WS27GM000000','WS 27 GM',0,NULL,NULL,NULL,NULL,NULL,23.00,NULL,NULL,NULL,NULL,'PCS',215965,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(724,14,'A112WT01BL000000','','A112WT01BL000000','WT 01 BL',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',120352,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(725,14,'A112WT01C0000000','','A112WT01C0000000','WT 01 C',0,NULL,NULL,NULL,NULL,NULL,2.00,NULL,NULL,NULL,NULL,'PCS',106047,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(726,14,'A112WT01GM000000','','A112WT01GM000000','WT 01 GM',0,NULL,NULL,NULL,NULL,NULL,8.00,NULL,NULL,NULL,NULL,'PCS',124382,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(727,14,'X111EPLWS23SP000','','X111EPLWS23SP000','XEPL-WS23-SP',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',203613,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(728,14,'X111EPLWS69SP000','','X111EPLWS69SP000','XEPL-WS69-SP',0,NULL,NULL,NULL,NULL,NULL,4.00,NULL,NULL,NULL,NULL,'PCS',219605,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(729,14,'X112GMD75SW00000','','X112GMD75SW00000','XGMD-75S-W',0,NULL,NULL,NULL,NULL,NULL,22.00,NULL,NULL,NULL,NULL,'PCS',155553,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:25'),(730,14,'X422MDAC75GD0000','','X422MDAC75GD0000','XMDA-C75-GD',0,NULL,NULL,NULL,NULL,NULL,1.00,NULL,NULL,NULL,NULL,'PCS',18748.3,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:26'),(731,14,'A121YSH500C00000','','A121YSH500C00000','YSH - 5C',0,NULL,NULL,NULL,NULL,NULL,128.00,NULL,NULL,NULL,NULL,'PCS',126824,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:26'),(732,14,'A121YSH500CBL000','','A121YSH500CBL000','YSH - 5CBL',0,NULL,NULL,NULL,NULL,NULL,15.00,NULL,NULL,NULL,NULL,'PCS',137271,NULL,NULL,'R',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,0.000,NULL,NULL,NULL,NULL,'2025-03-27 10:59:26');
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
  `wrh` varchar(10) NOT NULL,
  `qty` float(11,2) NOT NULL,
  PRIMARY KEY (`trsdet2id`)
) ENGINE=InnoDB AUTO_INCREMENT=1322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrsdet2`
--

LOCK TABLES `dbttrsdet2` WRITE;
/*!40000 ALTER TABLE `dbttrsdet2` DISABLE KEYS */;
INSERT INTO `dbttrsdet2` VALUES (1,1,NULL,'9999001','','TEMUAN',120.00),(2,2,NULL,'I114A5KSS0000000','','BLI01G',16.00),(3,2,NULL,'I114A5KSS0000000','','BLI07G',1.00),(4,2,NULL,'I114A5KSS0000000','','JKT01L',1.00),(5,2,NULL,'I114A5KSS0000000','','JKT02M',74.00),(9,3,NULL,'I114A5M000Z00000','','BLI01G',14.00),(10,3,NULL,'I114A5M000Z00000','','JKT02M',65.00),(12,4,NULL,'V114A7A000Z00000','','BLI01G',40.00),(13,4,NULL,'V114A7A000Z00000','','BLI07G',1.00),(14,4,NULL,'V114A7A000Z00000','','JKT02M',78.00),(15,5,NULL,'V114A7A00S2Z0000','','BLI01G',114.00),(16,5,NULL,'V114A7A00S2Z0000','','JKT01L',2.00),(17,5,NULL,'V114A7A00S2Z0000','','JKT02M',6.00),(18,5,NULL,'V114A7A00S2Z0000','','JKT04M',3.00),(22,8,NULL,'9999002','','TEMUAN',0.00),(23,9,NULL,'I114A9G000Z00000','','BLI01G',20.00),(24,9,NULL,'I114A9G000Z00000','','BLI06S',5.00),(25,9,NULL,'I114A9G000Z00000','','JKT01L',2.00),(26,10,NULL,'I118BC1000B00075','','BLI01G',192.00),(27,11,NULL,'I403ASB010900000','','BLI01G',14.00),(28,12,NULL,'I404ASL0116BGM00','','BLI01G',3.00),(29,12,NULL,'I404ASL0116BGM00','','BLI02G',1.00),(31,13,NULL,'I415BCP0103000000','','BLI01G',15.00),(99,77,NULL,'A401AC0102000000','','JKT04M',1.00),(100,78,NULL,'A402AC0104000000','','BLI01G',1.00),(101,78,NULL,'A402AC0104000000','','JKT02M',1.00),(103,79,NULL,'A402AC0202000000','','BLI01G',11.00),(104,79,NULL,'A402AC0202000000','','BLI11G',1.00),(105,79,NULL,'A402AC0202000000','','JKT02M',31.00),(106,80,NULL,'A402AC0204000000','','BLI01G',11.00),(107,80,NULL,'A402AC0204000000','','BLI07G',1.00),(108,80,NULL,'A402AC0204000000','','BLI11G',1.00),(109,80,NULL,'A402AC0204000000','','JKT02M',6.00),(113,81,NULL,'A402AC0210000000','','BLI02G',1.00),(114,81,NULL,'A402AC0210000000','','BLI11G',1.00),(116,82,NULL,'A402AC0216B00000','','BLI01G',2.00),(117,82,NULL,'A402AC0216B00000','','BLI11G',1.00),(119,83,NULL,'A402AC0304BL0000','','BLI01G',1.00),(120,84,NULL,'A403ACB011000000','','JKT02M',1.00),(121,85,NULL,'A404AC0116000060','','JKT04M',1.00),(122,86,NULL,'A404AC0116B00060','','JKT04M',1.00),(234,145,NULL,'A111111000000075','','SBY01T',37.00),(235,146,NULL,'A111201000000050','','SBY02T',72.00),(236,147,NULL,'A114AOV03B000000','','JKT01L',2.00),(237,147,NULL,'A114AOV03B000000','','JKT02M',14.00),(239,148,NULL,'I114A5KSS0000000','','BLI01G',16.00),(240,148,NULL,'I114A5KSS0000000','','JKT01L',1.00),(241,148,NULL,'I114A5KSS0000000','','JKT02M',74.00),(242,148,NULL,'I114A5KSS0000000','','SBY01T',2306.00),(246,149,NULL,'I114A5L000Z00000','','BLI01G',24.00),(247,149,NULL,'I114A5L000Z00000','','JKT01L',5.00),(248,149,NULL,'I114A5L000Z00000','','JKT02M',790.00),(249,149,NULL,'I114A5L000Z00000','','SBY01T',1867.00),(250,149,NULL,'I114A5L000Z00000','','SBY02T',251.00),(253,150,NULL,'I116D9G000Z00000','','JKT01L',9.00),(254,150,NULL,'I116D9G000Z00000','','JKT02M',20.00),(256,151,NULL,'I401ASL0102GM000','','BLI01G',5.00),(257,151,NULL,'I401ASL0102GM000','','BLI02G',1.00),(259,152,NULL,'V113AF02W0000000','','BLI01G',76.00),(260,152,NULL,'V113AF02W0000000','','BLI05G',150.00),(262,160,NULL,'I114A5M000Z00000','','BLI01G',14.00),(263,160,NULL,'I114A5M000Z00000','','JKT02M',89.00),(264,161,NULL,'I114A5PBL0000000','','BLI01G',6.00),(265,161,NULL,'I114A5PBL0000000','','JKT01L',1.00),(266,162,NULL,'V114A7A00S2Z0000','','BLI01G',101.00),(267,162,NULL,'V114A7A00S2Z0000','','JKT01L',2.00),(268,162,NULL,'V114A7A00S2Z0000','','JKT02M',74.00),(269,163,NULL,'V114A7A000Z00000','','BLI01G',40.00),(270,163,NULL,'V114A7A000Z00000','','JKT02M',108.00),(271,164,NULL,'I114A9G000Z00000','','BLI01G',20.00),(272,164,NULL,'I114A9G000Z00000','','BLI06S',4.00),(273,164,NULL,'I114A9G000Z00000','','JKT01L',2.00),(274,165,NULL,'A402AC0104000000','','BLI01G',1.00),(275,165,NULL,'A402AC0104000000','','JKT02M',1.00),(276,166,NULL,'A402AC0202000000','','BLI01G',11.00),(277,166,NULL,'A402AC0202000000','','JKT02M',11.00),(278,167,NULL,'A402AC0204000000','','BLI01G',15.00),(279,167,NULL,'A402AC0204000000','','JKT02M',6.00),(280,168,NULL,'A402AC0210000000','','BLI02G',1.00),(281,169,NULL,'A402AC0216B00000','','BLI01G',2.00),(282,170,NULL,'A402AC0304BL0000','','BLI01G',1.00),(283,171,NULL,'A403ACB011000000','','JKT02M',1.00),(284,172,NULL,'A403ACB020900000','','BLI01G',1.00),(285,173,NULL,'A404ACB0316BBL00','','BLI01G',3.00),(286,174,NULL,'A404ACP011800000','','BLI01G',2.00),(287,175,NULL,'A401ACP030100000','','BLI01G',10.00),(288,176,NULL,'A403ACP031400000','','BLI01G',9.00),(289,176,NULL,'A403ACP031400000','','BLI06S',2.00),(290,177,NULL,'A114ACR1B0000000','','BLI06S',5.00),(291,177,NULL,'A114ACR1B0000000','','JKT01L',1.00),(292,177,NULL,'A114ACR1B0000000','','JKT02M',1.00),(293,178,NULL,'A114ACR3C0000000','','BLI01G',2.00),(294,179,NULL,'A401ACS0102BL000','','BLI02G',1.00),(295,180,NULL,'A401ACS0102GM000','','BLI01G',3.00),(296,180,NULL,'A401ACS0102GM000','','JKT02M',1.00),(297,181,NULL,'A402ACS0104BL000','','BLI02G',1.00),(298,181,NULL,'A402ACS0104BL000','','JKT02M',7.00),(299,182,NULL,'A402ACS0104GM000','','BLI01G',2.00),(300,182,NULL,'A402ACS0104GM000','','BLI02G',1.00),(301,182,NULL,'A402ACS0104GM000','','JKT02M',10.00),(302,183,NULL,'A403ACS0109BL000','','BLI01G',3.00),(303,183,NULL,'A403ACS0109BL000','','JKT02M',1.00),(304,184,NULL,'A403ACS0109GM000','','BLI01G',7.00),(305,184,NULL,'A403ACS0109GM000','','BLI06S',4.00),(306,184,NULL,'A403ACS0109GM000','','JKT02M',1.00),(307,185,NULL,'A403ACS0110BL000','','BLI02G',1.00),(308,185,NULL,'A403ACS0110BL000','','JKT02M',3.00),(309,186,NULL,'A403ACS0110GM000','','JKT02M',6.00),(310,187,NULL,'A404ACS0116BBL00','','BLI01G',2.00),(311,187,NULL,'A404ACS0116BBL00','','JKT02M',3.00),(312,188,NULL,'A404ACS0116BGM00','','JKT02M',2.00),(313,189,NULL,'A404ACS0116BGMSR','','BLI01G',6.00),(314,190,NULL,'A403ACS0210BL000','','BLI01G',4.00),(315,190,NULL,'A403ACS0210BL000','','JKT02M',9.00),(316,191,NULL,'A114AL0100000000','','JKT01L',1.00),(317,192,NULL,'A114AOV1A0000000','','JKT01L',2.00),(318,192,NULL,'A114AOV1A0000000','','JKT02M',26.00),(319,193,NULL,'A114AOV9BY000000','','BLI01G',15.00),(320,193,NULL,'A114AOV9BY000000','','JKT02M',2.00),(321,194,NULL,'A113AR5J00000000','','BLI01G',57.00),(322,194,NULL,'A113AR5J00000000','','BLI02G',1.00),(323,194,NULL,'A113AR5J00000000','','JKT02M',28.00),(324,195,NULL,'A113AS5J00000000','','BLI01G',55.00),(325,195,NULL,'A113AS5J00000000','','BLI02G',1.00),(326,195,NULL,'A113AS5J00000000','','BLI06S',9.00),(327,195,NULL,'A113AS5J00000000','','JKT01L',1.00),(328,196,NULL,'I401ASB010270000','','JKT02M',10.00),(329,197,NULL,'I402ASB0104A0000','','BLI01G',10.00),(330,197,NULL,'I402ASB0104A0000','','BLI06S',98.00),(331,198,NULL,'I403ASB010900000','','BLI01G',14.00),(332,199,NULL,'I403ASB011000000','','BLI01G',22.00),(333,199,NULL,'I403ASB011000000','','JKT02M',16.00),(334,200,NULL,'I404ASB011670000','','BLI01G',12.00),(335,200,NULL,'I404ASB011670000','','JKT02M',3.00),(336,201,NULL,'I404ASB0116B7000','','BLI01G',15.00),(337,202,NULL,'I402ASL0104GM000','','BLI01G',4.00),(338,203,NULL,'I402ASL01045GM00','','BLI01G',5.00),(339,203,NULL,'I402ASL01045GM00','','JKT02M',6.00),(340,204,NULL,'I403ASL0110GM000','','BLI01G',9.00),(341,205,NULL,'I404ASL0116BGM00','','BLI01G',3.00),(342,205,NULL,'I404ASL0116BGM00','','BLI02G',1.00),(343,206,NULL,'I404ASL0120GM000','','BLI01G',10.00),(344,206,NULL,'I404ASL0120GM000','','JKT02M',13.00),(345,207,NULL,'A114AT01BL000000','','BLI01G',5.00),(346,207,NULL,'A114AT01BL000000','','JKT02M',1.00),(347,208,NULL,'A114AT01C0000000','','BLI01G',4.00),(348,209,NULL,'A114AT01GM000000','','BLI01G',2.00),(349,209,NULL,'A114AT01GM000000','','JKT02M',1.00),(350,210,NULL,'A114AY0100000000','','BLI01G',1.00),(351,211,NULL,'V112BF0100000000','','JKT02M',43.00),(352,212,NULL,'V112BF02W0000000','','BLI01G',94.00),(353,212,NULL,'V112BF02W0000000','','BLI05G',100.00),(354,212,NULL,'V112BF02W0000000','','JKT01L',2.00),(355,213,NULL,'I118BC1000B00050','','BLI01G',208.00),(356,213,NULL,'I118BC1000B00050','','BLI06S',2.00),(357,213,NULL,'I118BC1000B00050','','JKT01L',13.00),(358,213,NULL,'I118BC1000B00050','','JKT02M',72.00),(359,214,NULL,'I118BC1000B00075','','BLI01G',175.00),(360,215,NULL,'I415BCP0101000000','','JKT02M',122.00),(361,216,NULL,'I415BCP0103000000','','BLI01G',15.00),(362,216,NULL,'I415BCP0103000000','','JKT02M',1.00),(363,217,NULL,'I122BD0300W00000','','BLI01G',40.00),(364,217,NULL,'I122BD0300W00000','','BLI06S',24.00),(365,217,NULL,'I122BD0300W00000','','JKT01L',5.00),(366,218,NULL,'I122BD0400C00000','','BLI01G',9.00),(367,218,NULL,'I122BD0400C00000','','JKT02M',189.00),(368,219,NULL,'I122BD0400W00000','','BLI01G',32.00),(369,219,NULL,'I122BD0400W00000','','JKT02M',20.00),(370,220,NULL,'I122BD0500BL0000','','BLI01G',10.00),(371,220,NULL,'I122BD0500BL0000','','BLI06S',6.00),(372,220,NULL,'I122BD0500BL0000','','JKT02M',97.00),(373,221,NULL,'I122BD0500W00000','','BLI01G',12.00),(374,221,NULL,'I122BD0500W00000','','JKT02M',87.00),(375,222,NULL,'A121BSH100W00000','','JKT01L',1.00),(376,223,NULL,'A729BT201C000000','','BLI01G',4.00),(377,224,NULL,'A713BTH121100000','','BLI01G',1.00),(378,225,NULL,'A143CO0000000400','','BLI01G',7.00),(379,225,NULL,'A143CO0000000400','','JKT02M',13.00),(380,226,NULL,'A123CS0180000000','','BLI06S',4.00),(381,227,NULL,'A121CSH300C00000','','BLI01G',1.00),(382,227,NULL,'A121CSH300C00000','','BLI02G',1.00),(383,227,NULL,'A121CSH300C00000','','JKT01L',1.00),(384,227,NULL,'A121CSH300C00000','','JKT02M',15.00),(385,228,NULL,'A526CT0300000000','','BLI01G',11.00),(386,228,NULL,'A526CT0300000000','','JKT02M',8.00),(387,229,NULL,'A702CWB11C000000','','BLI01G',11.00),(388,230,NULL,'A702CWB11C010000','','BLI01G',11.00),(389,231,NULL,'A702CWB11C020000','','BLI01G',2.00),(390,232,NULL,'A702CWB33C000000','','BLI01G',1.00),(391,232,NULL,'A702CWB33C000000','','BLI06S',2.00),(392,233,NULL,'A702CWB33C010000','','BLI01G',6.00),(393,233,NULL,'A702CWB33C010000','','JKT02M',10.00),(394,234,NULL,'A702CWB33C070000','','BLI06S',10.00),(395,234,NULL,'A702CWB33C070000','','JKT02M',1.00),(396,235,NULL,'A702CWB33C080000','','BLI01G',3.00),(397,236,NULL,'A702CWB33C120000','','JKT02M',2.00),(398,237,NULL,'A702CWB33C410000','','BLI01G',2.00),(399,237,NULL,'A702CWB33C410000','','BLI02G',1.00),(400,237,NULL,'A702CWB33C410000','','JKT02M',5.00),(401,238,NULL,'A702CWB33C420000','','JKT02M',1.00),(402,239,NULL,'A702CWB34O000000','','JKT02M',1.00),(403,240,NULL,'A702CWB34O410000','','BLI01G',3.00),(404,240,NULL,'A702CWB34O410000','','JKT02M',1.00),(405,241,NULL,'A702CWB34O420000','','BLI01G',2.00),(406,242,NULL,'A702CWB35R000000','','BLI01G',8.00),(407,242,NULL,'A702CWB35R000000','','JKT02M',4.00),(408,243,NULL,'A702CWB35R070000','','JKT02M',2.00),(409,244,NULL,'A702CWB36O000000','','BLI01G',4.00),(410,245,NULL,'A702CWB37R000000','','BLI01G',2.00),(411,245,NULL,'A702CWB37R000000','','JKT02M',1.00),(412,246,NULL,'A702CWB38C000000','','BLI01G',1.00),(413,247,NULL,'A702CWB39R000000','','BLI01G',6.00),(414,247,NULL,'A702CWB39R000000','','BLI02G',1.00),(415,247,NULL,'A702CWB39R000000','','BLI06S',7.00),(416,247,NULL,'A702CWB39R000000','','JKT02M',2.00),(417,248,NULL,'A702CWB40R000000','','BLI01G',1.00),(418,249,NULL,'A702CWB45O000000','','BLI01G',3.00),(419,249,NULL,'A702CWB45O000000','','BLI06S',1.00),(420,249,NULL,'A702CWB45O000000','','JKT02M',1.00),(421,250,NULL,'A702CWB46O000000','','BLI01G',4.00),(422,250,NULL,'A702CWB46O000000','','BLI06S',2.00),(423,251,NULL,'A702CWB47R000000','','BLI01G',2.00),(424,251,NULL,'A702CWB47R000000','','BLI02G',1.00),(425,251,NULL,'A702CWB47R000000','','JKT02M',3.00),(426,252,NULL,'A702CWB48R000000','','BLI01G',1.00),(427,253,NULL,'A702CWB51O340000','','JKT02M',1.00),(428,254,NULL,'A702CWB55O060000','','JKT02M',2.00),(429,255,NULL,'A702CWH10R000000','','BLI01G',8.00),(430,255,NULL,'A702CWH10R000000','','BLI06S',7.00),(431,256,NULL,'A702CWH14C000000','','JKT02M',1.00),(432,257,NULL,'A702CWH18R000000','','BLI01G',1.00),(433,258,NULL,'A702CWH19R000000','','BLI01G',7.00),(434,258,NULL,'A702CWH19R000000','','BLI06S',2.00),(435,259,NULL,'A702CWH20R000000','','BLI01G',10.00),(436,259,NULL,'A702CWH20R000000','','JKT02M',2.00),(437,260,NULL,'A702CWH21R000000','','BLI01G',2.00),(438,260,NULL,'A702CWH21R000000','','BLI02G',1.00),(439,261,NULL,'A702CWH22R000000','','BLI01G',1.00),(440,262,NULL,'A702CWH25R000000','','BLI01G',1.00),(441,263,NULL,'A702CWH26R000000','','BLI01G',3.00),(442,263,NULL,'A702CWH26R000000','','BLI02G',1.00),(443,263,NULL,'A702CWH26R000000','','JKT02M',3.00),(444,264,NULL,'A702CWH27R100000','','JKT02M',1.00),(445,265,NULL,'A116D11A00000000','','BLI01G',12.00),(446,265,NULL,'A116D11A00000000','','JKT01L',1.00),(447,265,NULL,'A116D11A00000000','','JKT02M',85.00),(448,266,NULL,'A116D33B00000000','','BLI01G',9.00),(449,266,NULL,'A116D33B00000000','','BLI02G',1.00),(450,266,NULL,'A116D33B00000000','','JKT01L',3.00),(451,267,NULL,'I116D5KSS0000000','','BLI01G',7.00),(452,267,NULL,'I116D5KSS0000000','','BLI06S',6.00),(453,267,NULL,'I116D5KSS0000000','','JKT01L',4.00),(454,267,NULL,'I116D5KSS0000000','','JKT02M',45.00),(455,268,NULL,'I116D5L000Z00000','','BLI01G',52.00),(456,268,NULL,'I116D5L000Z00000','','BLI06S',18.00),(457,268,NULL,'I116D5L000Z00000','','JKT01L',3.00),(458,268,NULL,'I116D5L000Z00000','','JKT02M',45.00),(459,269,NULL,'I116D5M000Z00000','','BLI01G',41.00),(460,269,NULL,'I116D5M000Z00000','','BLI06S',5.00),(461,269,NULL,'I116D5M000Z00000','','JKT02M',49.00),(462,270,NULL,'I116D5PBL0000000','','BLI01G',7.00),(463,270,NULL,'I116D5PBL0000000','','JKT02M',6.00),(464,271,NULL,'V116D7A000Z00000','','BLI01G',6.00),(465,272,NULL,'A116D99BY0000000','','BLI01G',6.00),(466,272,NULL,'A116D99BY0000000','','JKT02M',2.00),(467,273,NULL,'A116DCR11B000000','','BLI01G',3.00),(468,273,NULL,'A116DCR11B000000','','JKT02M',1.00),(469,274,NULL,'A116DCR33C000000','','BLI01G',5.00),(470,274,NULL,'A116DCR33C000000','','JKT01L',2.00),(471,275,NULL,'X904DBR010100300','','JKT01M',1.00),(472,276,NULL,'X904DEXC02A00000','','JKT01L',1.00),(473,277,NULL,'X904DEXC02B00000','','JKT01L',1.00),(474,278,NULL,'X904DGDL00240230','','JKT01M',2.00),(475,279,NULL,'X904DM1S00050070','','JKT01L',1.00),(476,280,NULL,'I125DRS01IBL0000','','BLI01G',6.00),(477,281,NULL,'I125DRS01IC00000','','BLI01G',4.00),(478,281,NULL,'I125DRS01IC00000','','JKT02M',17.00),(479,282,NULL,'A116DT01BL000000','','BLI01G',4.00),(480,282,NULL,'A116DT01BL000000','','BLI02G',1.00),(481,282,NULL,'A116DT01BL000000','','JKT02M',2.00),(482,283,NULL,'A116DT01C0000000','','BLI01G',4.00),(483,283,NULL,'A116DT01C0000000','','BLI02G',1.00),(484,283,NULL,'A116DT01C0000000','','JKT02M',1.00),(485,284,NULL,'A116DT01GM000000','','BLI01G',7.00),(486,284,NULL,'A116DT01GM000000','','BLI02G',1.00),(487,285,NULL,'I701DW01I0000000','','BLI01G',9.00),(488,286,NULL,'A116DY0100000000','','JKT02M',1.00),(489,287,NULL,'A717ESC010000000','','JKT02M',1.00),(490,288,NULL,'A717ESC030000000','','BLI01G',3.00),(491,289,NULL,'A132FA3000SS0000','','BLI01G',61.00),(492,289,NULL,'A132FA3000SS0000','','BLI06S',12.00),(493,289,NULL,'A132FA3000SS0000','','JKT01L',10.00),(494,290,NULL,'A132FA4000SS0000','','BLI01G',50.00),(495,290,NULL,'A132FA4000SS0000','','BLI06S',9.00),(496,290,NULL,'A132FA4000SS0000','','JKT01L',15.00),(497,290,NULL,'A132FA4000SS0000','','JKT02M',10.00),(498,291,NULL,'A132FA5000SS0000','','BLI01G',60.00),(499,291,NULL,'A132FA5000SS0000','','BLI06S',12.00),(500,291,NULL,'A132FA5000SS0000','','JKT01L',17.00),(501,291,NULL,'A132FA5000SS0000','','JKT02M',1.00),(502,292,NULL,'A131FHM125SAF000','','BLI01G',16.00),(503,292,NULL,'A131FHM125SAF000','','BLI06S',6.00),(504,292,NULL,'A131FHM125SAF000','','JKT01L',3.00),(505,293,NULL,'A131FHM150SAF000','','BLI01G',19.00),(506,293,NULL,'A131FHM150SAF000','','JKT01L',3.00),(507,293,NULL,'A131FHM150SAF000','','JKT02M',1.00),(508,294,NULL,'A729FL0100000000','','BLI01G',6.00),(509,295,NULL,'A729FL0200000000','','BLI01G',5.00),(510,296,NULL,'A729FL0300000000','','BLI01G',4.00),(511,297,NULL,'A517FHSC11BL0000','','BLI01G',1.00),(512,298,NULL,'A133FNS300SS0000','','BLI01G',8.00),(513,298,NULL,'A133FNS300SS0000','','JKT01L',12.00),(514,299,NULL,'A133FNS400SS0000','','BLI06S',27.00),(515,299,NULL,'A133FNS400SS0000','','JKT01L',4.00),(516,299,NULL,'A133FNS400SS0000','','JKT02M',5.00),(517,300,NULL,'A133FNS500SS0000','','BLI01G',24.00),(518,300,NULL,'A133FNS500SS0000','','BLI06S',12.00),(519,300,NULL,'A133FNS500SS0000','','JKT01L',13.00),(520,300,NULL,'A133FNS500SS0000','','JKT02M',62.00),(521,301,NULL,'A526FP01BL000000','','BLI01G',4.00),(522,302,NULL,'A526FP01C0000000','','BLI01G',5.00),(523,302,NULL,'A526FP01C0000000','','BLI06S',2.00),(524,303,NULL,'A526FP02BL000000','','BLI01G',5.00),(525,303,NULL,'A526FP02BL000000','','BLI06S',20.00),(526,304,NULL,'A526FP02C0000000','','BLI01G',9.00),(527,304,NULL,'A526FP02C0000000','','JKT02M',1.00),(528,305,NULL,'I141FS2SS0000000','','BLI01G',35.00),(529,305,NULL,'I141FS2SS0000000','','JKT01L',2.00),(530,305,NULL,'I141FS2SS0000000','','JKT02M',120.00),(531,306,NULL,'I141FS4SS0000000','','JKT02M',59.00),(532,307,NULL,'A121FSH100C00000','','BLI01G',20.00),(533,307,NULL,'A121FSH100C00000','','BLI02G',1.00),(534,307,NULL,'A121FSH100C00000','','JKT01L',2.00),(535,307,NULL,'A121FSH100C00000','','JKT02M',10.00),(536,308,NULL,'A121FSH100CC0000','','BLI01G',7.00),(537,308,NULL,'A121FSH100CC0000','','JKT02M',3.00),(538,309,NULL,'A121FSH300CW0000','','BLI01G',38.00),(539,309,NULL,'A121FSH300CW0000','','BLI02G',1.00),(540,309,NULL,'A121FSH300CW0000','','BLI06S',6.00),(541,309,NULL,'A121FSH300CW0000','','JKT01L',1.00),(542,309,NULL,'A121FSH300CW0000','','JKT02M',12.00),(543,310,NULL,'A206FV0000O00050','','BLI01G',55.00),(544,310,NULL,'A206FV0000O00050','','BLI06S',6.00),(545,310,NULL,'A206FV0000O00050','','JKT01L',2.00),(546,311,NULL,'A206FV0000O00075','','BLI01G',38.00),(547,311,NULL,'A206FV0000O00075','','BLI06S',5.00),(548,311,NULL,'A206FV0000O00075','','JKT01L',1.00),(549,312,NULL,'A134FW3000SS0000','','BLI01G',35.00),(550,312,NULL,'A134FW3000SS0000','','JKT01L',13.00),(551,312,NULL,'A134FW3000SS0000','','JKT02M',28.00),(552,313,NULL,'A134FW4000SS0000','','BLI01G',23.00),(553,313,NULL,'A134FW4000SS0000','','BLI06S',12.00),(554,313,NULL,'A134FW4000SS0000','','JKT01L',5.00),(555,313,NULL,'A134FW4000SS0000','','JKT02M',12.00),(556,314,NULL,'A134FW5000SS0000','','BLI01G',24.00),(557,314,NULL,'A134FW5000SS0000','','BLI06S',12.00),(558,314,NULL,'A134FW5000SS0000','','JKT01L',8.00),(559,314,NULL,'A134FW5000SS0000','','JKT02M',12.00),(560,315,NULL,'A121GSH210C00000','','BLI01G',8.00),(561,315,NULL,'A121GSH210C00000','','JKT01L',3.00),(562,315,NULL,'A121GSH210C00000','','JKT02M',38.00),(563,316,NULL,'A121GSH31CW00000','','BLI02G',1.00),(564,316,NULL,'A121GSH31CW00000','','JKT02M',1.00),(565,317,NULL,'A121GSH450CW0000','','BLI01G',7.00),(566,318,NULL,'A121GSH53BGW0000','','BLI02G',1.00),(567,318,NULL,'A121GSH53BGW0000','','JKT02M',1.00),(568,319,NULL,'A121GSH53GM00000','','BLI01G',9.00),(569,319,NULL,'A121GSH53GM00000','','JKT02M',6.00),(570,320,NULL,'A121GSH53RGB0000','','BLI01G',1.00),(571,321,NULL,'A612GCA000000000','','BLI01G',211.00),(572,322,NULL,'X518HSC11BL00000','','BLI01G',1.00),(573,323,NULL,'A501WS27GM000000','','JKT02M',5.00),(574,324,NULL,'A142HFS010000000','','BLI01G',67.00),(575,324,NULL,'A142HFS010000000','','BLI02G',1.00),(576,324,NULL,'A142HFS010000000','','JKT01L',5.00),(577,324,NULL,'A142HFS010000000','','JKT02M',65.00),(578,325,NULL,'A142HFS01BL00000','','BLI01G',20.00),(579,325,NULL,'A142HFS01BL00000','','JKT02M',1.00),(580,326,NULL,'A142HFS01GM00000','','BLI01G',44.00),(581,327,NULL,'A142HFS020000000','','BLI01G',1.00),(582,327,NULL,'A142HFS020000000','','JKT02M',3.00),(583,328,NULL,'A142HFS02BL00000','','BLI01G',2.00),(584,328,NULL,'A142HFS02BL00000','','JKT02M',6.00),(585,329,NULL,'A142HFS02GM00000','','BLI01G',13.00),(586,329,NULL,'A142HFS02GM00000','','JKT02M',2.00),(587,330,NULL,'I154HMX01SS00000','','BLI01G',6.00),(588,330,NULL,'I154HMX01SS00000','','JKT02M',3.00),(589,331,NULL,'A114HOV1A0000000','','JKT01L',1.00),(590,331,NULL,'A114HOV1A0000000','','JKT02M',1.00),(591,332,NULL,'A114HOV3B0000000','','JKT01L',2.00),(592,333,NULL,'A114HOV9BY000000','','BLI01G',1.00),(593,334,NULL,'I121HS30001W0000','','BLI01G',29.00),(594,334,NULL,'I121HS30001W0000','','JKT01L',4.00),(595,334,NULL,'I121HS30001W0000','','JKT02M',92.00),(596,335,NULL,'I121HS40003W0000','','BLI01G',28.00),(597,335,NULL,'I121HS40003W0000','','JKT01M',1.00),(598,335,NULL,'I121HS40003W0000','','JKT01L',2.00),(599,335,NULL,'I121HS40003W0000','','JKT02M',75.00),(600,336,NULL,'I121HS50001WBL00','','BLI01G',12.00),(601,336,NULL,'I121HS50001WBL00','','JKT01L',1.00),(602,337,NULL,'V121HSV1003C0000','','BLI01G',61.00),(603,338,NULL,'A706HU0400000000','','JKT02M',1.00),(604,339,NULL,'A706HU0800000000','','JKT02M',1.00),(605,340,NULL,'A706HU0900000000','','BLI01G',1.00),(606,341,NULL,'A701HW02T0000000','','BLI01G',3.00),(607,341,NULL,'A701HW02T0000000','','JKT02M',2.00),(608,342,NULL,'A701HW0300000000','','JKT02M',17.00),(609,343,NULL,'A701HW0312000000','','JKT02M',1.00),(610,344,NULL,'I701HW03IB000000','','JKT02M',2.00),(611,345,NULL,'A701HW0400000000','','BLI01G',2.00),(612,346,NULL,'A701HW0500000000','','BLI01G',2.00),(613,347,NULL,'I701HW05I0000000','','JKT02M',8.00),(614,348,NULL,'I701HW06I0000000','','BLI01G',24.00),(615,348,NULL,'I701HW06I0000000','','BLI06S',50.00),(616,348,NULL,'I701HW06I0000000','','JKT02M',205.00),(617,349,NULL,'A717HWC080000000','','BLI01G',3.00),(618,349,NULL,'A717HWC080000000','','JKT02M',2.00),(619,350,NULL,'A717HWC090000000','','BLI01G',1.00),(620,350,NULL,'A717HWC090000000','','BLI06S',2.00),(621,350,NULL,'A717HWC090000000','','JKT02M',3.00),(622,351,NULL,'A717HWC160100000','','BLI01G',1.00),(623,352,NULL,'A155IKF030000000','','JKT02M',2.00),(624,353,NULL,'A155IKF060000000','','BLI02G',1.00),(625,354,NULL,'A717ISC010000000','','JKT02M',1.00),(626,355,NULL,'A717ISC040000000','','JKT02M',1.00),(627,356,NULL,'V122JS0100C00000','','BLI01G',9.00),(628,357,NULL,'A121JSH230CBL000','','BLI01G',1.00),(629,357,NULL,'A121JSH230CBL000','','JKT02M',14.00),(630,358,NULL,'A121JSH230CPBL00','','BLI01G',2.00),(631,359,NULL,'V114KF0100000000','','JKT02M',110.00),(632,360,NULL,'V114KF02W0000000','','BLI01G',32.00),(633,360,NULL,'V114KF02W0000000','','JKT01L',2.00),(634,361,NULL,'I155KMX01SS00000','','BLI01G',6.00),(635,361,NULL,'I155KMX01SS00000','','BLI06S',7.00),(636,361,NULL,'I155KMX01SS00000','','JKT02M',2.00),(637,362,NULL,'A415KS1010000000','','BLI01G',3.00),(638,362,NULL,'A415KS1010000000','','BLI06S',3.00),(639,362,NULL,'A415KS1010000000','','JKT02M',1.00),(640,363,NULL,'A415KS1020000000','','BLI01G',4.00),(641,363,NULL,'A415KS1020000000','','BLI06S',4.00),(642,363,NULL,'A415KS1020000000','','JKT02M',27.00),(643,364,NULL,'A415KS111BL00000','','BLI06S',5.00),(644,364,NULL,'A415KS111BL00000','','JKT02M',1.00),(645,365,NULL,'A415KS111G000000','','BLI01G',2.00),(646,365,NULL,'A415KS111G000000','','JKT02M',2.00),(647,366,NULL,'A415KS111W000000','','BLI01G',2.00),(648,366,NULL,'A415KS111W000000','','JKT02M',1.00),(649,367,NULL,'A415KS112BL00000','','JKT02M',2.00),(650,368,NULL,'A415KS112G000000','','BLI01G',1.00),(651,368,NULL,'A415KS112G000000','','JKT02M',2.00),(652,369,NULL,'A415KS113BL00000','','BLI01G',4.00),(653,369,NULL,'A415KS113BL00000','','JKT02M',2.00),(654,370,NULL,'A415KS114BL00000','','BLI06S',1.00),(655,371,NULL,'A415KS114W000000','','JKT02M',3.00),(656,372,NULL,'A415KS115BL00000','','BLI01G',5.00),(657,372,NULL,'A415KS115BL00000','','JKT02M',5.00),(658,373,NULL,'A415KS119BL00000','','BLI06S',2.00),(659,374,NULL,'A415KS125DC00000','','JKT02M',1.00),(660,375,NULL,'A415KS126DG00000','','BLI01G',1.00),(661,375,NULL,'A415KS126DG00000','','JKT02M',1.00),(662,376,NULL,'A415KS126W000000','','JKT02M',1.00),(663,377,NULL,'A415KS207G000000','','BLI01G',1.00),(664,378,NULL,'A415KS213B000000','','JKT02M',2.00),(665,379,NULL,'A415KS213DG00000','','BLI01G',1.00),(666,380,NULL,'A415KS217BL00000','','BLI01G',1.00),(667,381,NULL,'A415KS222AB00000','','JKT02M',1.00),(668,382,NULL,'A147LFS01SS00700','','BLI01G',11.00),(669,382,NULL,'A147LFS01SS00700','','JKT02M',30.00),(670,383,NULL,'A147LFS03SS00700','','BLI01G',16.00),(671,383,NULL,'A147LFS03SS00700','','JKT02M',1.00),(672,384,NULL,'A147LFS03SSGM700','','BLI01G',5.00),(673,384,NULL,'A147LFS03SSGM700','','JKT02M',2.00),(674,385,NULL,'A147LFS04SSBL700','','BLI01G',7.00),(675,386,NULL,'A147LFS04SSGM700','','BLI01G',5.00),(676,387,NULL,'A147LFS04SSW0700','','BLI01G',57.00),(677,388,NULL,'X609LAS000000000','','BLI06S',2.00),(678,389,NULL,'A156MBS010000000','','BLI01G',1.00),(679,390,NULL,'A156MBS040000000','','BLI01G',8.00),(680,390,NULL,'A156MBS040000000','','JKT02M',6.00),(681,391,NULL,'A156MBS05BL00000','','BLI01G',6.00),(682,391,NULL,'A156MBS05BL00000','','JKT02M',33.00),(683,392,NULL,'A156MBS05BLC0000','','BLI01G',1.00),(684,393,NULL,'A156MBS05GM00000','','BLI01G',3.00),(685,393,NULL,'A156MBS05GM00000','','BLI02G',1.00),(686,393,NULL,'A156MBS05GM00000','','BLI06S',3.00),(687,393,NULL,'A156MBS05GM00000','','JKT02M',2.00),(688,394,NULL,'A156MBS06000000','','BLI01G',11.00),(689,394,NULL,'A156MBS06000000','','BLI05G',4.00),(690,395,NULL,'A156MBS06BL00000','','BLI01G',6.00),(691,395,NULL,'A156MBS06BL00000','','JKT02M',21.00),(692,396,NULL,'A156MBSM01GM0000','','JKT02M',5.00),(693,397,NULL,'A902MFHTMG000000','','BLI01G',26.00),(694,398,NULL,'A902MFHTSI000000','','BLI01G',67.00),(695,399,NULL,'A156MS0500000000','','BLI06S',2.00),(696,399,NULL,'A156MS0500000000','','JKT02M',15.00),(697,400,NULL,'A156MS06BL000000','','JKT02M',2.00),(698,401,NULL,'A156MSC01GM00000','','JKT02M',2.00),(699,402,NULL,'I156MST01I000000','','BLI01G',4.00),(700,402,NULL,'I156MST01I000000','','BLI06S',2.00),(701,402,NULL,'I156MST01I000000','','JKT02M',25.00),(702,403,NULL,'I156MST02I000000','','BLI01G',8.00),(703,403,NULL,'I156MST02I000000','','BLI06S',2.00),(704,404,NULL,'A141NFS3K0000000','','BLI01G',8.00),(705,404,NULL,'A141NFS3K0000000','','JKT01L',2.00),(706,404,NULL,'A141NFS3K0000000','','JKT02M',12.00),(707,405,NULL,'A141NFS4KBL00000','','BLI01G',1.00),(708,406,NULL,'I141NFS4SSK20100','','BLI01G',10.00),(709,406,NULL,'I141NFS4SSK20100','','BLI02G',1.00),(710,406,NULL,'I141NFS4SSK20100','','JKT01L',4.00),(711,406,NULL,'I141NFS4SSK20100','','JKT02M',187.00),(712,407,NULL,'V901NP0000000000','','BLI01G',30.00),(713,408,NULL,'A717OSC010000000','','BLI01G',3.00),(714,408,NULL,'A717OSC010000000','','BLI06S',11.00),(715,408,NULL,'A717OSC010000000','','JKT02M',15.00),(716,409,NULL,'A717OSC020000000','','BLI01G',2.00),(717,409,NULL,'A717OSC020000000','','JKT02M',2.00),(718,410,NULL,'A717OSC050000000','','BLI01G',6.00),(719,410,NULL,'A717OSC050000000','','BLI06S',3.00),(720,410,NULL,'A717OSC050000000','','JKT02M',4.00),(721,411,NULL,'A717OSC060000000','','JKT02M',13.00),(722,412,NULL,'A717OSC120000000','','BLI06S',2.00),(723,412,NULL,'A717OSC120000000','','JKT02M',5.00),(724,413,NULL,'A717OSC130000000','','BLI01G',2.00),(725,413,NULL,'A717OSC130000000','','BLI06S',1.00),(726,414,NULL,'A717OSC140000000','','JKT02M',1.00),(727,415,NULL,'A717OSC150000000','','BLI02G',1.00),(728,415,NULL,'A717OSC150000000','','JKT02M',2.00),(729,416,NULL,'A717OSC220000000','','BLI01G',2.00),(730,417,NULL,'A717OSC230000000','','BLI01G',1.00),(731,417,NULL,'A717OSC230000000','','BLI06S',6.00),(732,418,NULL,'A602ODL000000000','','BLI01G',34.00),(733,419,NULL,'A602ODM000000000','','BLI01G',18.00),(734,420,NULL,'X504PWS000040GM0','','JKT02M',5.00),(735,421,NULL,'X603PW0017050300','','BLI01G',1.00),(736,422,NULL,'A121PSH0101C0000','','BLI01G',2.00),(737,423,NULL,'A121PSH0201C0000','','BLI01G',4.00),(738,423,NULL,'A121PSH0201C0000','','JKT02M',5.00),(739,424,NULL,'A703PW0500000000','','BLI01G',1.00),(740,424,NULL,'A703PW0500000000','','JKT02M',1.00),(741,425,NULL,'A401RBD340000000','','BLI01G',2.00),(742,425,NULL,'A401RBD340000000','','JKT02M',4.00),(743,426,NULL,'I401RB01I0000000','','BLI01G',17.00),(744,426,NULL,'I401RB01I0000000','','BLI06S',11.00),(745,426,NULL,'I401RB01I0000000','','JKT02M',30.00),(746,427,NULL,'I145RS3SS0000000','','BLI01G',11.00),(747,427,NULL,'I145RS3SS0000000','','JKT02M',3.00),(748,428,NULL,'I145RS4SS0000300','','JKT02M',23.00),(749,429,NULL,'I145RS4SS0000400','','BLI01G',6.00),(750,429,NULL,'I145RS4SS0000400','','JKT02M',3.00),(751,430,NULL,'A163RU0100000000','','JKT02M',6.00),(752,431,NULL,'A163RU1000000000','','BLI01G',3.00),(753,432,NULL,'A163RU1100000000','','BLI01G',3.00),(754,432,NULL,'A163RU1100000000','','JKT02M',1.00),(755,433,NULL,'A163RU1200000000','','BLI01G',3.00),(756,433,NULL,'A163RU1200000000','','JKT02M',7.00),(757,434,NULL,'A163RU1300000000','','BLI01G',4.00),(758,435,NULL,'A163RU1400000000','','BLI01G',3.00),(759,436,NULL,'I117S5JSS0000000','','BLI01G',3.00),(760,436,NULL,'I117S5JSS0000000','','JKT01L',6.00),(761,436,NULL,'I117S5JSS0000000','','JKT02M',18.00),(762,437,NULL,'I117S5KSS0000000','','BLI01G',9.00),(763,437,NULL,'I117S5KSS0000000','','JKT01L',6.00),(764,437,NULL,'I117S5KSS0000000','','JKT02M',139.00),(765,438,NULL,'I117S5LZ00000000','','BLI01G',17.00),(766,438,NULL,'I117S5LZ00000000','','JKT01L',3.00),(767,438,NULL,'I117S5LZ00000000','','JKT02M',30.00),(768,439,NULL,'I117S5MZ00000000','','BLI01G',37.00),(769,439,NULL,'I117S5MZ00000000','','JKT02M',120.00),(770,440,NULL,'I117S5P000FBL000','','BLI01G',6.00),(771,440,NULL,'I117S5P000FBL000','','JKT02M',13.00),(772,441,NULL,'I117S5P000NBL000','','BLI01G',6.00),(773,441,NULL,'I117S5P000NBL000','','JKT02M',6.00),(774,442,NULL,'V117S7AZ00000000','','BLI01G',2.00),(775,442,NULL,'V117S7AZ00000000','','JKT02M',2.00),(776,443,NULL,'I117S9GZ00000000','','BLI01G',34.00),(777,443,NULL,'I117S9GZ00000000','','JKT01L',2.00),(778,443,NULL,'I117S9GZ00000000','','JKT02M',13.00),(779,444,NULL,'I132SA3000SS0000','','BLI01G',52.00),(780,444,NULL,'I132SA3000SS0000','','BLI06S',23.00),(781,444,NULL,'I132SA3000SS0000','','JKT01L',12.00),(782,445,NULL,'I132SA4000SS0000','','BLI01G',43.00),(783,445,NULL,'I132SA4000SS0000','','JKT01L',13.00),(784,446,NULL,'I132SA5000SS0000','','BLI01G',36.00),(785,446,NULL,'I132SA5000SS0000','','JKT01L',16.00),(786,446,NULL,'I132SA5000SS0000','','JKT02M',46.00),(787,447,NULL,'I141SACHR2000000','','BLI01G',65.00),(788,447,NULL,'I141SACHR2000000','','BLI06S',3.00),(789,447,NULL,'I141SACHR2000000','','JKT01L',2.00),(790,447,NULL,'I141SACHR2000000','','JKT02M',12.00),(791,448,NULL,'I141SACHR2K00000','','BLI01G',67.00),(792,448,NULL,'I141SACHR2K00000','','BLI02G',1.00),(793,448,NULL,'I141SACHR2K00000','','JKT02M',34.00),(794,449,NULL,'A154SACW01000000','','BLI01G',1.00),(795,449,NULL,'A154SACW01000000','','BLI02G',1.00),(796,449,NULL,'A154SACW01000000','','JKT02M',1.00),(797,450,NULL,'A153SAGSH3000000','','JKT01L',1.00),(798,451,NULL,'A152SAHBR0100000','','BLI01G',1.00),(799,452,NULL,'A152SAHBS0100000','','BLI01G',30.00),(800,452,NULL,'A152SAHBS0100000','','BLI02G',1.00),(801,452,NULL,'A152SAHBS0100000','','JKT02M',48.00),(802,453,NULL,'A152SAHBS0200000','','BLI01G',14.00),(803,453,NULL,'A152SAHBS0200000','','BLI06S',3.00),(804,453,NULL,'A152SAHBS0200000','','JKT01L',1.00),(805,453,NULL,'A152SAHBS0200000','','JKT02M',82.00),(806,454,NULL,'A152SAHBS02T0000','','BLI01G',1.00),(807,455,NULL,'A152SAHBS0400000','','BLI01G',1.00),(808,455,NULL,'A152SAHBS0400000','','JKT01L',2.00),(809,455,NULL,'A152SAHBS0400000','','JKT02M',71.00),(810,456,NULL,'A152SAHBT1BLR000','','BLI05G',1.00),(811,457,NULL,'A152SAHBV1BG0000','','JKT02M',3.00),(812,458,NULL,'A152SAHBV1GM0000','','JKT02M',1.00),(813,459,NULL,'A152SAHBV1WR0000','','JKT02M',1.00),(814,460,NULL,'A157SAHC04000000','','BLI01G',3.00),(815,461,NULL,'A157SAHD02000000','','JKT02M',2.00),(816,462,NULL,'A157SAHDV1BG0000','','BLI01G',5.00),(817,462,NULL,'A157SAHDV1BG0000','','JKT02M',1.00),(818,463,NULL,'A157SAHDV1GM0000','','BLI01G',6.00),(819,463,NULL,'A157SAHDV1GM0000','','JKT02M',2.00),(820,464,NULL,'A154SAHH02000000','','BLI01G',36.00),(821,464,NULL,'A154SAHH02000000','','BLI06S',17.00),(822,464,NULL,'A154SAHH02000000','','JKT02M',17.00),(823,465,NULL,'A154SAHH02GM0000','','BLI01G',5.00),(824,465,NULL,'A154SAHH02GM0000','','BLI02G',1.00),(825,465,NULL,'A154SAHH02GM0000','','JKT02M',1.00),(826,466,NULL,'A154SAHH02T00000','','JKT02M',1.00),(827,467,NULL,'A154SAHHC0100000','','BLI01G',1.00),(828,467,NULL,'A154SAHHC0100000','','JKT02M',2.00),(829,468,NULL,'A154SAHHT1BLR000','','JKT02M',3.00),(830,469,NULL,'A154SAHHV1BG0000','','BLI01G',2.00),(831,470,NULL,'A154SAHHV1GM0000','','BLI01G',6.00),(832,470,NULL,'A154SAHHV1GM0000','','JKT02M',5.00),(833,471,NULL,'A154SAHHY0100000','','BLI02G',1.00),(834,472,NULL,'A155SAHK01000000','','BLI01G',14.00),(835,472,NULL,'A155SAHK01000000','','JKT02M',12.00),(836,473,NULL,'A155SAHK02000000','','BLI01G',6.00),(837,473,NULL,'A155SAHK02000000','','JKT01L',1.00),(838,474,NULL,'A155SAHK02GBL000','','BLI01G',7.00),(839,474,NULL,'A155SAHK02GBL000','','JKT02M',3.00),(840,475,NULL,'A155SAHK02GM0000','','BLI01G',1.00),(841,475,NULL,'A155SAHK02GM0000','','BLI06S',9.00),(842,476,NULL,'A155SAHK02T00000','','JKT02M',2.00),(843,477,NULL,'A155SAHK03B00000','','BLI06S',1.00),(844,477,NULL,'A155SAHK03B00000','','JKT02M',3.00),(845,478,NULL,'A155SAHK03BL0000','','BLI01G',4.00),(846,478,NULL,'A155SAHK03BL0000','','JKT02M',8.00),(847,479,NULL,'A155SAHK03G00000','','BLI01G',2.00),(848,480,NULL,'A155SAHK04000000','','BLI01G',3.00),(849,481,NULL,'A155SAHK04B00000','','JKT02M',1.00),(850,482,NULL,'A155SAHKC0100000','','BLI01G',1.00),(851,482,NULL,'A155SAHKC0100000','','JKT02M',1.00),(852,483,NULL,'A155SAHKP0100000','','BLI01G',3.00),(853,484,NULL,'A155SAHKV1BG0000','','JKT02M',3.00),(854,485,NULL,'A155SAHKV1GM0000','','BLI01G',11.00),(855,486,NULL,'A155SAHKV1WR0000','','JKT02M',1.00),(856,487,NULL,'A151SAHMV1BG0000','','BLI01G',4.00),(857,487,NULL,'A151SAHMV1BG0000','','JKT02M',1.00),(858,488,NULL,'A151SAHMV1WR0000','','JKT02M',1.00),(859,489,NULL,'A151SAHMY0100000','','JKT02M',1.00),(860,490,NULL,'A153SAHSB0100000','','BLI01G',1.00),(861,491,NULL,'A153SAHSH0100000','','BLI01G',6.00),(862,491,NULL,'A153SAHSH0100000','','BLI02G',1.00),(863,491,NULL,'A153SAHSH0100000','','BLI06S',2.00),(864,491,NULL,'A153SAHSH0100000','','JKT01L',2.00),(865,492,NULL,'A153SAHSH0200000','','BLI01G',19.00),(866,492,NULL,'A153SAHSH0200000','','BLI06S',3.00),(867,492,NULL,'A153SAHSH0200000','','JKT02M',4.00),(868,493,NULL,'A153SAHSH02GM000','','BLI01G',1.00),(869,494,NULL,'A153SAHSH02T0000','','BLI01G',1.00),(870,495,NULL,'A153SAHSR0100000','','BLI01G',1.00),(871,496,NULL,'A154SAHW01000000','','BLI01G',22.00),(872,496,NULL,'A154SAHW01000000','','BLI02G',1.00),(873,496,NULL,'A154SAHW01000000','','BLI06S',7.00),(874,496,NULL,'A154SAHW01000000','','JKT02M',3.00),(875,497,NULL,'A154SAHW02000000','','BLI01G',17.00),(876,497,NULL,'A154SAHW02000000','','BLI06S',12.00),(877,497,NULL,'A154SAHW02000000','','JKT01L',1.00),(878,497,NULL,'A154SAHW02000000','','JKT02M',1.00),(879,498,NULL,'A154SAHW02BL0000','','BLI01G',1.00),(880,498,NULL,'A154SAHW02BL0000','','JKT02M',1.00),(881,499,NULL,'A154SAHW02GBL000','','BLI01G',7.00),(882,499,NULL,'A154SAHW02GBL000','','JKT02M',2.00),(883,500,NULL,'A154SAHW02GM0000','','BLI01G',6.00),(884,500,NULL,'A154SAHW02GM0000','','BLI02G',1.00),(885,500,NULL,'A154SAHW02GM0000','','BLI06S',8.00),(886,500,NULL,'A154SAHW02GM0000','','JKT02M',1.00),(887,501,NULL,'A154SAHW02T00000','','BLI01G',1.00),(888,502,NULL,'A154SAHW02W00000','','JKT02M',1.00),(889,503,NULL,'A154SAHW04000000','','JKT02M',30.00),(890,504,NULL,'A154SAHW04C00000','','JKT02M',1.00),(891,505,NULL,'A154SAHWB01BL000','','BLI01G',1.00),(892,506,NULL,'A154SAHWK0100000','','BLI01G',6.00),(893,507,NULL,'A154SAHWR0100000','','BLI01G',1.00),(894,508,NULL,'A154SAHWT1BLR000','','JKT02M',1.00),(895,509,NULL,'A154SAHWV1WR0000','','BLI02G',1.00),(896,510,NULL,'A154SAHWY0100000','','BLI02G',1.00),(897,510,NULL,'A154SAHWY0100000','','BLI06S',8.00),(898,510,NULL,'A154SAHWY0100000','','JKT02M',1.00),(899,511,NULL,'A152SAMBS2000000','','JKT01L',1.00),(900,512,NULL,'A159SAMGP03BL000','','BLI01G',1.00),(901,513,NULL,'A159SAMGP03GM000','','BLI01G',1.00),(902,514,NULL,'A159SAMGT0100000','','BLI01G',1.00),(903,515,NULL,'A159SAMGT01GM000','','BLI01G',4.00),(904,516,NULL,'A154SAMHP02BRG00','','BLI01G',3.00),(905,516,NULL,'A154SAMHP02BRG00','','BLI06S',6.00),(906,516,NULL,'A154SAMHP02BRG00','','JKT02M',1.00),(907,517,NULL,'A155SAMKP02BRG00','','BLI01G',5.00),(908,517,NULL,'A155SAMKP02BRG00','','JKT02M',1.00),(909,518,NULL,'A155SAMKP03BL000','','JKT02M',3.00),(910,519,NULL,'A155SAMKP03GM000','','BLI01G',2.00),(911,520,NULL,'A151SAMMP03BL000','','BLI01G',3.00),(912,521,NULL,'A154SAMW02000000','','JKT02M',37.00),(913,522,NULL,'A154SAMWP02BRG00','','BLI01G',3.00),(914,522,NULL,'A154SAMWP02BRG00','','JKT02M',1.00),(915,523,NULL,'A154SAMWP03BL000','','BLI01G',3.00),(916,523,NULL,'A154SAMWP03BL000','','JKT02M',1.00),(917,524,NULL,'A157SASBV0200000','','BLI01G',4.00),(918,524,NULL,'A157SASBV0200000','','BLI02G',1.00),(919,524,NULL,'A157SASBV0200000','','JKT02M',4.00),(920,525,NULL,'A157SASBV0500000','','JKT02M',1.00),(921,526,NULL,'A152SASBX03BLC00','','BLI02G',1.00),(922,527,NULL,'A114SASKF0300000','','BLI01G',3.00),(923,527,NULL,'A114SASKF0300000','','BLI06S',1.00),(924,527,NULL,'A114SASKF0300000','','JKT02M',1.00),(925,528,NULL,'A114SASKX02C0000','','BLI01G',4.00),(926,529,NULL,'A157SASSV0500000','','BLI01G',1.00),(927,529,NULL,'A157SASSV0500000','','JKT01L',1.00),(928,529,NULL,'A157SASSV0500000','','JKT02M',1.00),(929,530,NULL,'A154SASWH03TBLC','','JKT02M',4.00),(930,531,NULL,'A154SASWH0500000','','BLI02G',1.00),(931,531,NULL,'A154SASWH0500000','','JKT02M',1.00),(932,532,NULL,'A154SASWX03BLC00','','BLI01G',1.00),(933,532,NULL,'A154SASWX03BLC00','','BLI06S',1.00),(934,533,NULL,'A154SASWX0500000','','BLI01G',1.00),(935,534,NULL,'A154SATH01BL0000','','JKT02M',1.00),(936,535,NULL,'A155SATK01BL0000','','JKT02M',5.00),(937,536,NULL,'A122SC5000S00000','','BLI01G',49.00),(938,536,NULL,'A122SC5000S00000','','BLI02G',1.00),(939,536,NULL,'A122SC5000S00000','','BLI06S',6.00),(940,536,NULL,'A122SC5000S00000','','JKT01L',1.00),(941,536,NULL,'A122SC5000S00000','','JKT02M',80.00),(942,537,NULL,'A122SC5000W00000','','BLI01G',14.00),(943,537,NULL,'A122SC5000W00000','','BLI06S',10.00),(944,537,NULL,'A122SC5000W00000','','JKT02M',184.00),(945,538,NULL,'A122SC5000WH0000','','BLI01G',5.00),(946,539,NULL,'A122SC7000C00000','','BLI01G',61.00),(947,539,NULL,'A122SC7000C00000','','BLI06S',3.00),(948,539,NULL,'A122SC7000C00000','','JKT01L',4.00),(949,539,NULL,'A122SC7000C00000','','JKT02M',36.00),(950,540,NULL,'A122SC7000W00000','','BLI01G',10.00),(951,540,NULL,'A122SC7000W00000','','BLI06S',3.00),(952,540,NULL,'A122SC7000W00000','','JKT01L',2.00),(953,540,NULL,'A122SC7000W00000','','JKT02M',1.00),(954,541,NULL,'A122SC9000C00000','','BLI01G',1.00),(955,542,NULL,'A122SC9000W00000','','BLI01G',3.00),(956,543,NULL,'A122SC10W0000000','','JKT01L',1.00),(957,544,NULL,'A122SC1100BG0000','','BLI01G',1.00),(958,545,NULL,'A122SC1100BL0000','','BLI01G',29.00),(959,545,NULL,'A122SC1100BL0000','','BLI02G',1.00),(960,545,NULL,'A122SC1100BL0000','','JKT02M',3.00),(961,546,NULL,'A122SC1100C00000','','BLI01G',2.00),(962,546,NULL,'A122SC1100C00000','','BLI06S',14.00),(963,547,NULL,'A122SC1100PGM000','','BLI01G',17.00),(964,547,NULL,'A122SC1100PGM000','','BLI06S',6.00),(965,547,NULL,'A122SC1100PGM000','','JKT02M',1.00),(966,548,NULL,'A122SC1100W00000','','BLI01G',28.00),(967,548,NULL,'A122SC1100W00000','','BLI02G',1.00),(968,548,NULL,'A122SC1100W00000','','BLI06S',2.00),(969,549,NULL,'A122SC1200PBL000','','BLI01G',12.00),(970,549,NULL,'A122SC1200PBL000','','BLI05G',6.00),(971,549,NULL,'A122SC1200PBL000','','JKT02M',3.00),(972,550,NULL,'A122SC1200PGM000','','BLI06S',2.00),(973,551,NULL,'A117SCR1B0N00000','','JKT01L',2.00),(974,552,NULL,'A117SCR3C0F00000','','BLI01G',1.00),(975,553,NULL,'I405SDX0101I0000','','BLI01G',4.00),(976,554,NULL,'I405SDX0102I0000','','BLI01G',9.00),(977,554,NULL,'I405SDX0102I0000','','JKT02M',46.00),(978,555,NULL,'I405SDX0103I0000','','BLI01G',4.00),(979,555,NULL,'I405SDX0103I0000','','BLI06S',39.00),(980,556,NULL,'I405SDX0201I0000','','BLI01G',6.00),(981,557,NULL,'I412ST1212AIR000','','BLI01G',3654.00),(982,557,NULL,'I412ST1212AIR000','','BLI06S',3.00),(983,557,NULL,'I412ST1212AIR000','','JKT01L',50.00),(984,557,NULL,'I412ST1212AIR000','','JKT02M',1000.00),(985,558,NULL,'V412ST1200R01000','','BLI01G',100.00),(986,559,NULL,'X506SKP000060063','','BLI06S',16.00),(987,560,NULL,'A162SETT01000000','','BLI01G',8.00),(988,561,NULL,'A161SETW02000000','','JKT02M',16.00),(989,562,NULL,'A161SETW03000000','','JKT02M',3.00),(990,563,NULL,'A161SETW04000000','','BLI01G',3.00),(991,564,NULL,'A425SFGB1EW00000','','BLI01G',1.00),(992,565,NULL,'A425SFGB1EWB0000','','JKT02M',1.00),(993,566,NULL,'A425SFGB1FWB3500','','BLI01G',1.00),(994,566,NULL,'A425SFGB1FWB3500','','JKT02M',1.00),(995,567,NULL,'A425SFGB1FWG5300','','BLI01G',1.00),(996,568,NULL,'A425SFGB1FWO3500','','BLI01G',1.00),(997,568,NULL,'A425SFGB1FWO3500','','JKT02M',1.00),(998,569,NULL,'A425SFGB1HW00000','','BLI01G',2.00),(999,570,NULL,'A141SFS03KGM0000','','BLI01G',1.00),(1000,570,NULL,'A141SFS03KGM0000','','BLI06S',8.00),(1001,571,NULL,'A425SFUG1AW00000','','BLI06S',1.00),(1002,572,NULL,'A113SH0100000000','','JKT02M',1.00),(1003,573,NULL,'I113SH5JSS000000','','BLI01G',15.00),(1004,573,NULL,'I113SH5JSS000000','','BLI06S',6.00),(1005,573,NULL,'I113SH5JSS000000','','JKT02M',99.00),(1006,574,NULL,'I113SH5KSS000000','','BLI01G',13.00),(1007,574,NULL,'I113SH5KSS000000','','JKT01L',2.00),(1008,574,NULL,'I113SH5KSS000000','','JKT02M',38.00),(1009,575,NULL,'I113SH5LZ0000000','','BLI01G',24.00),(1010,575,NULL,'I113SH5LZ0000000','','BLI06S',20.00),(1011,575,NULL,'I113SH5LZ0000000','','JKT02M',12.00),(1012,576,NULL,'I113SH5PBL000000','','BLI01G',9.00),(1013,576,NULL,'I113SH5PBL000000','','JKT02M',13.00),(1014,577,NULL,'V113SH7AZ0000000','','BLI01G',44.00),(1015,577,NULL,'V113SH7AZ0000000','','BLI06S',12.00),(1016,577,NULL,'V113SH7AZ0000000','','JKT01L',2.00),(1017,578,NULL,'I113SH9GZ0000000','','BLI01G',29.00),(1018,578,NULL,'I113SH9GZ0000000','','BLI06S',45.00),(1019,578,NULL,'I113SH9GZ0000000','','JKT01L',2.00),(1020,578,NULL,'I113SH9GZ0000000','','JKT02M',24.00),(1021,579,NULL,'A113SHCR1A000000','','JKT01L',1.00),(1022,580,NULL,'A113SHCR1B000000','','JKT02M',1.00),(1023,581,NULL,'A113SHCR3B00000','','JKT01L',2.00),(1024,582,NULL,'A113SHCR3C000000','','JKT01L',1.00),(1025,582,NULL,'A113SHCR3C000000','','JKT02M',1.00),(1026,583,NULL,'A113SHOV1A000000','','BLI01G',11.00),(1027,583,NULL,'A113SHOV1A000000','','BLI02G',1.00),(1028,583,NULL,'A113SHOV1A000000','','JKT02M',1.00),(1029,584,NULL,'A113SHOV1B000000','','BLI01G',31.00),(1030,585,NULL,'A113SHOV3B000000','','BLI01G',6.00),(1031,585,NULL,'A113SHOV3B000000','','BLI06S',1.00),(1032,585,NULL,'A113SHOV3B000000','','JKT02M',3.00),(1033,586,NULL,'A113SHOV9BY00000','','BLI01G',12.00),(1034,586,NULL,'A113SHOV9BY00000','','JKT02M',10.00),(1035,587,NULL,'A161SHTW01000000','','BLI01G',3.00),(1036,588,NULL,'A161SHTW02000000','','BLI06S',10.00),(1037,588,NULL,'A161SHTW02000000','','JKT02M',4.00),(1038,589,NULL,'A113SHT01BL00000','','BLI02G',1.00),(1039,589,NULL,'A113SHT01BL00000','','JKT02M',16.00),(1040,590,NULL,'A113SHT01C000000','','JKT02M',4.00),(1041,591,NULL,'A113SHT01GM00000','','BLI01G',8.00),(1042,591,NULL,'A113SHT01GM00000','','BLI02G',1.00),(1043,591,NULL,'A113SHT01GM00000','','JKT02M',7.00),(1044,592,NULL,'A113SHY010000000','','BLI02G',1.00),(1045,592,NULL,'A113SHY010000000','','JKT02M',1.00),(1046,593,NULL,'A413SH100BB00125','','BLI01G',25.00),(1047,593,NULL,'A413SH100BB00125','','BLI06S',8.00),(1048,593,NULL,'A413SH100BB00125','','JKT02M',57.00),(1049,594,NULL,'A413SH000BS00125','','BLI01G',32.00),(1050,594,NULL,'A413SH000BS00125','','BLI06S',7.00),(1051,594,NULL,'A413SH000BS00125','','JKT02M',115.00),(1052,595,NULL,'I413SHP000W00125','','BLI01G',20.00),(1053,595,NULL,'I413SHP000W00125','','JKT01L',2.00),(1054,595,NULL,'I413SHP000W00125','','JKT02M',2.00),(1055,596,NULL,'I413SH0000SS0125','','BLI01G',93.00),(1056,596,NULL,'I413SH0000SS0125','','JKT01L',2.00),(1057,596,NULL,'I413SH0000SS0125','','JKT02M',258.00),(1058,597,NULL,'V141SKM01SS00000','','BLI01G',61.00),(1059,597,NULL,'V141SKM01SS00000','','JKT02M',6.00),(1060,598,NULL,'V141SKM02SSGM000','','BLI01G',50.00),(1061,598,NULL,'V141SKM02SSGM000','','BLI06S',50.00),(1062,598,NULL,'V141SKM02SSGM000','','JKT02M',14.00),(1063,599,NULL,'V141SKM03SSBL000','','BLI01G',50.00),(1064,599,NULL,'V141SKM03SSBL000','','BLI06S',6.00),(1065,599,NULL,'V141SKM03SSBL000','','JKT02M',1.00),(1066,600,NULL,'V141SKM04SSC0000','','BLI01G',44.00),(1067,600,NULL,'V141SKM04SSC0000','','JKT02M',15.00),(1068,601,NULL,'I133SN3000SS0000','','BLI01G',34.00),(1069,601,NULL,'I133SN3000SS0000','','JKT01L',6.00),(1070,601,NULL,'I133SN3000SS0000','','JKT02M',119.00),(1071,602,NULL,'I133SN4000SS0000','','BLI01G',24.00),(1072,602,NULL,'I133SN4000SS0000','','JKT01L',7.00),(1073,602,NULL,'I133SN4000SS0000','','JKT02M',308.00),(1074,603,NULL,'I133SN5000SS0000','','BLI01G',36.00),(1075,603,NULL,'I133SN5000SS0000','','JKT01L',8.00),(1076,603,NULL,'I133SN5000SS0000','','JKT02M',81.00),(1077,604,NULL,'A117SOV1A0F00000','','BLI01G',12.00),(1078,604,NULL,'A117SOV1A0F00000','','JKT02M',35.00),(1079,605,NULL,'A117SOV1A0N00000','','BLI01G',10.00),(1080,605,NULL,'A117SOV1A0N00000','','JKT02M',1.00),(1081,606,NULL,'A117SOV1A0W00000','','BLI01G',13.00),(1082,606,NULL,'A117SOV1A0W00000','','BLI02G',1.00),(1083,606,NULL,'A117SOV1A0W00000','','JKT01L',2.00),(1084,606,NULL,'A117SOV1A0W00000','','JKT02M',1.00),(1085,607,NULL,'A117SOV3B0N00000','','BLI01G',6.00),(1086,607,NULL,'A117SOV3B0N00000','','BLI06S',9.00),(1087,607,NULL,'A117SOV3B0N00000','','JKT01L',3.00),(1088,608,NULL,'A117SOV3B0W00000','','BLI01G',6.00),(1089,608,NULL,'A117SOV3B0W00000','','BLI06S',4.00),(1090,609,NULL,'A117SOV3C0N00000','','JKT01L',1.00),(1091,610,NULL,'A117SOV9BYN00000','','JKT02M',5.00),(1092,611,NULL,'A117SOV9BYW00000','','BLI01G',12.00),(1093,611,NULL,'A117SOV9BYW00000','','BLI02G',1.00),(1094,612,NULL,'V903SPK000200100','','BLI01G',9.00),(1095,613,NULL,'I141SPLASKB00000','','BLI01G',76.00),(1096,614,NULL,'I141SPLASKC00000','','BLI01G',104.00),(1097,615,NULL,'I141SPLASKG00000','','BLI01G',91.00),(1098,615,NULL,'I141SPLASKG00000','','JKT02M',120.00),(1099,616,NULL,'I141SPLASKW00000','','BLI01G',76.00),(1100,616,NULL,'I141SPLASKW00000','','JKT01L',1.00),(1101,617,NULL,'A111SPV01BG00000','','JKT02M',1.00),(1102,618,NULL,'A111SPV01GM00000','','JKT02M',1.00),(1103,619,NULL,'A111SPY010000000','','JKT02M',4.00),(1104,620,NULL,'A157SSV010000000','','BLI01G',13.00),(1105,620,NULL,'A157SSV010000000','','JKT02M',16.00),(1106,621,NULL,'A209SSV01C000000','','BLI01G',6.00),(1107,621,NULL,'A209SSV01C000000','','JKT02M',3.00),(1108,622,NULL,'A117ST01FBL00000','','BLI02G',1.00),(1109,622,NULL,'A117ST01FBL00000','','JKT02M',1.00),(1110,623,NULL,'A117ST01FGM00000','','BLI01G',5.00),(1111,623,NULL,'A117ST01FGM00000','','BLI02G',1.00),(1112,624,NULL,'A117ST01NBL00000','','BLI02G',1.00),(1113,624,NULL,'A117ST01NBL00000','','JKT02M',1.00),(1114,625,NULL,'A117ST01NC000000','','BLI02G',1.00),(1115,626,NULL,'A117ST01NGM00000','','BLI01G',5.00),(1116,626,NULL,'A117ST01NGM00000','','BLI02G',1.00),(1117,626,NULL,'A117ST01NGM00000','','JKT02M',13.00),(1118,627,NULL,'A209SV0100000000','','BLI01G',18.00),(1119,627,NULL,'A209SV0100000000','','JKT01L',2.00),(1120,627,NULL,'A209SV0100000000','','JKT02M',39.00),(1121,628,NULL,'I134SW3000SS0000','','BLI01G',48.00),(1122,628,NULL,'I134SW3000SS0000','','JKT01L',6.00),(1123,628,NULL,'I134SW3000SS0000','','JKT02M',68.00),(1124,629,NULL,'I134SW4000SS0000','','BLI01G',38.00),(1125,629,NULL,'I134SW4000SS0000','','JKT01L',8.00),(1126,629,NULL,'I134SW4000SS0000','','JKT02M',102.00),(1127,630,NULL,'I134SW5000SS0000','','BLI01G',36.00),(1128,630,NULL,'I134SW5000SS0000','','JKT01L',6.00),(1129,630,NULL,'I134SW5000SS0000','','JKT02M',66.00),(1130,631,NULL,'A117SY0100000000','','BLI02G',1.00),(1131,632,NULL,'I113TA5JSS000000','','BLI01G',15.00),(1132,632,NULL,'I113TA5JSS000000','','JKT02M',119.00),(1133,633,NULL,'I113TA5L00Z00000','','BLI01G',14.00),(1134,633,NULL,'I113TA5L00Z00000','','BLI06S',6.00),(1135,633,NULL,'I113TA5L00Z00000','','JKT02M',52.00),(1136,634,NULL,'I113TA5M00Z00000','','BLI01G',29.00),(1137,634,NULL,'I113TA5M00Z00000','','JKT02M',100.00),(1138,635,NULL,'I113TA5PBL000000','','BLI01G',19.00),(1139,635,NULL,'I113TA5PBL000000','','JKT01L',2.00),(1140,635,NULL,'I113TA5PBL000000','','JKT02M',13.00),(1141,636,NULL,'V113TA7AZ0000000','','BLI01G',44.00),(1142,636,NULL,'V113TA7AZ0000000','','JKT02M',1.00),(1143,637,NULL,'I113TA9G00Z00000','','BLI01G',40.00),(1144,637,NULL,'I113TA9G00Z00000','','JKT01L',2.00),(1145,637,NULL,'I113TA9G00Z00000','','JKT02M',2.00),(1146,638,NULL,'X914TV5518SGS000','','JKT01M',75.00),(1147,639,NULL,'A902TKA304012BL0','','JKT01L',1.00),(1148,640,NULL,'A113TAT01GM00000','','BLI02G',1.00),(1149,640,NULL,'A113TAT01GM00000','','JKT02M',13.00),(1150,641,NULL,'A113TAY010000000','','JKT02M',25.00),(1151,642,NULL,'A729TC0100000000','','BLI01G',6.00),(1152,643,NULL,'A729TC0200000000','','JKT02M',4.00),(1153,644,NULL,'A729TC1000000000','','BLI01G',3.00),(1154,645,NULL,'A729TC1200000000','','BLI01G',8.00),(1155,646,NULL,'A729TC1300000000','','BLI01G',8.00),(1156,647,NULL,'A729TC1400000000','','BLI01G',6.00),(1157,648,NULL,'A729TC1600000000','','BLI01G',59.00),(1158,648,NULL,'A729TC1600000000','','JKT02M',2.00),(1159,649,NULL,'A111TCR1B0000000','','BLI01G',1.00),(1160,649,NULL,'A111TCR1B0000000','','JKT02M',1.00),(1161,650,NULL,'A111TCR3C0000000','','JKT02M',1.00),(1162,651,NULL,'A111TCR9BX000000','','JKT01L',1.00),(1163,652,NULL,'A113TF01A0000000','','BLI01G',10.00),(1164,652,NULL,'A113TF01A0000000','','JKT01L',3.00),(1165,653,NULL,'A113TF01B0000000','','JKT01L',1.00),(1166,654,NULL,'A113TF03B0000000','','BLI01G',15.00),(1167,654,NULL,'A113TF03B0000000','','JKT01L',2.00),(1168,654,NULL,'A113TF03B0000000','','JKT02M',123.00),(1169,655,NULL,'A113TF09BY000000','','BLI01G',24.00),(1170,655,NULL,'A113TF09BY000000','','JKT02M',6.00),(1171,656,NULL,'A716TBTWC0200000','','BLI01G',1.00),(1172,657,NULL,'A111TOV1C0000000','','BLI02G',1.00),(1173,658,NULL,'A111TOV1A0000000','','BLI02G',1.00),(1174,658,NULL,'A111TOV1A0000000','','JKT01L',2.00),(1175,658,NULL,'A111TOV1A0000000','','JKT02M',82.00),(1176,659,NULL,'A111TOV03B000000','','JKT01L',3.00),(1177,660,NULL,'A111TOV9BY000000','','BLI01G',1.00),(1178,660,NULL,'A111TOV9BY000000','','BLI06S',4.00),(1179,660,NULL,'A111TOV9BY000000','','JKT02M',10.00),(1180,661,NULL,'A111TR5J00F00000','','JKT01L',2.00),(1181,662,NULL,'A716TSC040000000','','BLI01G',1.00),(1182,663,NULL,'A716TWC010000000','','BLI01G',18.00),(1183,663,NULL,'A716TWC010000000','','JKT02M',40.00),(1184,664,NULL,'A716TWC020000000','','BLI01G',16.00),(1185,664,NULL,'A716TWC020000000','','BLI06S',2.00),(1186,665,NULL,'A716TWC090000000','','JKT02M',22.00),(1187,666,NULL,'A716TWC160000000','','BLI01G',3.00),(1188,666,NULL,'A716TWC160000000','','BLI06S',11.00),(1189,666,NULL,'A716TWC160000000','','JKT02M',114.00),(1190,667,NULL,'V113TAF010000000','','BLI01G',20.00),(1191,667,NULL,'V113TAF010000000','','JKT01L',2.00),(1192,667,NULL,'V113TAF010000000','','JKT02M',100.00),(1193,668,NULL,'A702UCW05AR00000','','JKT02M',8.00),(1194,669,NULL,'A702UCW05R000000','','JKT02M',1.00),(1195,670,NULL,'A702UCW06O000000','','BLI01G',4.00),(1196,670,NULL,'A702UCW06O000000','','JKT02M',9.00),(1197,671,NULL,'I114V5KSS0000000','','BLI01G',11.00),(1198,671,NULL,'I114V5KSS0000000','','JKT02M',23.00),(1199,672,NULL,'I114V5PBL0000000','','BLI01G',34.00),(1200,672,NULL,'I114V5PBL0000000','','BLI06S',1.00),(1201,672,NULL,'I114V5PBL0000000','','JKT02M',33.00),(1202,673,NULL,'V114V7A00S2Z00000','','BLI01G',40.00),(1203,673,NULL,'V114V7A00S2Z00000','','JKT02M',55.00),(1204,674,NULL,'V114V7A000Z00000','','BLI01G',20.00),(1205,674,NULL,'V114V7A000Z00000','','JKT01L',2.00),(1206,674,NULL,'V114V7A000Z00000','','JKT02M',6.00),(1207,675,NULL,'A114VCR1B0000000','','JKT01L',1.00),(1208,675,NULL,'A114VCR1B0000000','','JKT02M',1.00),(1209,676,NULL,'A114VCR3C0000000','','JKT02M',1.00),(1210,677,NULL,'C207APB200000004','','BLI01G',3.00),(1211,678,NULL,'C302BC3114S00001','','BLI01G',60.00),(1212,679,NULL,'C302LGC3108S0001','','BLI01G',40.00),(1213,680,NULL,'C302WC3003S00001','','BLI01G',17.00),(1214,681,NULL,'C402LGN101100020','','BLI01G',1.00),(1215,682,NULL,'X609VRP000000000','','BLI06S',3.00),(1216,683,NULL,'A114VL0100000000','','BLI01G',18.00),(1217,684,NULL,'A114VOV1A0000000','','BLI01G',27.00),(1218,684,NULL,'A114VOV1A0000000','','JKT01L',1.00),(1219,685,NULL,'A114VOV3B0000000','','JKT01L',2.00),(1220,686,NULL,'A114VOV3C0000000','','JKT01L',1.00),(1221,687,NULL,'A114VOV9BY000000','','BLI01G',16.00),(1222,687,NULL,'A114VOV9BY000000','','BLI02G',1.00),(1223,687,NULL,'A114VOV9BY000000','','JKT01L',2.00),(1224,687,NULL,'A114VOV9BY000000','','JKT02M',10.00),(1225,688,NULL,'A114VT01BL000000','','BLI01G',1.00),(1226,688,NULL,'A114VT01BL000000','','JKT02M',1.00),(1227,689,NULL,'A114VT01GM000000','','JKT02M',18.00),(1228,690,NULL,'A114VY0100000000','','BLI01G',5.00),(1229,690,NULL,'A114VY0100000000','','BLI02G',1.00),(1230,691,NULL,'I112W5KSS0000000','','BLI01G',14.00),(1231,691,NULL,'I112W5KSS0000000','','JKT01L',2.00),(1232,691,NULL,'I112W5KSS0000000','','JKT02M',2.00),(1233,692,NULL,'I112W5L000Z00000','','BLI01G',32.00),(1234,692,NULL,'I112W5L000Z00000','','BLI06S',31.00),(1235,692,NULL,'I112W5L000Z00000','','JKT01L',6.00),(1236,692,NULL,'I112W5L000Z00000','','JKT02M',76.00),(1237,693,NULL,'I112W5PBL0000000','','BLI01G',22.00),(1238,693,NULL,'I112W5PBL0000000','','JKT02M',35.00),(1239,694,NULL,'V112W7A000SS0000','','BLI01G',74.00),(1240,694,NULL,'V112W7A000SS0000','','BLI06S',7.00),(1241,694,NULL,'V112W7A000SS0000','','JKT02M',1.00),(1242,695,NULL,'V112W7A000Z00000','','BLI01G',14.00),(1243,695,NULL,'V112W7A000Z00000','','JKT02M',13.00),(1244,696,NULL,'I112W9G000Z00000','','BLI01G',38.00),(1245,696,NULL,'I112W9G000Z00000','','BLI06S',6.00),(1246,696,NULL,'I112W9G000Z00000','','JKT01L',3.00),(1247,696,NULL,'I112W9G000Z00000','','JKT02M',15.00),(1248,697,NULL,'V117WFF010000000','','BLI01G',20.00),(1249,697,NULL,'V117WFF010000000','','JKT02M',34.00),(1250,698,NULL,'V117WFN010000000','','BLI01G',20.00),(1251,698,NULL,'V117WFN010000000','','JKT02M',372.00),(1252,699,NULL,'V117WFN02W000000','','BLI01G',61.00),(1253,700,NULL,'A526WTTWC160TFF0','','BLI01G',1.00),(1254,701,NULL,'A112WF0300000050','','JKT02M',1.00),(1255,702,NULL,'A112WHT01BL00000','','JKT02M',3.00),(1256,703,NULL,'A112WHT01C000000','','BLI01G',6.00),(1257,703,NULL,'A112WHT01C000000','','JKT02M',3.00),(1258,704,NULL,'I154WMX01P000000','','BLI01G',4.00),(1259,704,NULL,'I154WMX01P000000','','JKT02M',4.00),(1260,705,NULL,'A112WOV1C0000000','','JKT02M',1.00),(1261,706,NULL,'A112WOV1A0000000','','BLI01G',7.00),(1262,706,NULL,'A112WOV1A0000000','','BLI06S',54.00),(1263,706,NULL,'A112WOV1A0000000','','JKT01L',1.00),(1264,706,NULL,'A112WOV1A0000000','','JKT02M',13.00),(1265,707,NULL,'A112WOV03B000000','','BLI06S',4.00),(1266,707,NULL,'A112WOV03B000000','','JKT01L',3.00),(1267,707,NULL,'A112WOV03B000000','','JKT02M',109.00),(1268,708,NULL,'A112WOV9BY000000','','BLI01G',6.00),(1269,708,NULL,'A112WOV9BY000000','','JKT02M',23.00),(1270,709,NULL,'I123WS03IBL00000','','BLI01G',18.00),(1271,709,NULL,'I123WS03IBL00000','','JKT01L',1.00),(1272,710,NULL,'A123WS0110000000','','BLI01G',47.00),(1273,710,NULL,'A123WS0110000000','','BLI02G',1.00),(1274,710,NULL,'A123WS0110000000','','BLI06S',3.00),(1275,710,NULL,'A123WS0110000000','','JKT01L',2.00),(1276,710,NULL,'A123WS0110000000','','JKT02M',10.00),(1277,711,NULL,'A123WS011C000000','','BLI01G',18.00),(1278,711,NULL,'A123WS011C000000','','JKT02M',6.00),(1279,712,NULL,'A123WS0120FR0000','','BLI01G',56.00),(1280,712,NULL,'A123WS0120FR0000','','JKT01L',2.00),(1281,712,NULL,'A123WS0120FR0000','','JKT02M',48.00),(1282,713,NULL,'A123WS0130000000','','BLI01G',49.00),(1283,713,NULL,'A123WS0130000000','','JKT01L',2.00),(1284,713,NULL,'A123WS0130000000','','JKT02M',64.00),(1285,714,NULL,'A123WS0150000000','','BLI01G',21.00),(1286,714,NULL,'A123WS0150000000','','BLI06S',1.00),(1287,714,NULL,'A123WS0150000000','','JKT01L',1.00),(1288,714,NULL,'A123WS0150000000','','JKT02M',12.00),(1289,715,NULL,'A123WS0160000000','','BLI01G',38.00),(1290,715,NULL,'A123WS0160000000','','BLI06S',4.00),(1291,716,NULL,'A123WS016H000000','','BLI01G',6.00),(1292,717,NULL,'A123WS0190000000','','BLI01G',53.00),(1293,717,NULL,'A123WS0190000000','','BLI06S',1.00),(1294,717,NULL,'A123WS0190000000','','JKT01L',2.00),(1295,717,NULL,'A123WS0190000000','','JKT02M',19.00),(1296,718,NULL,'A123WS0200000000','','BLI01G',2.00),(1297,718,NULL,'A123WS0200000000','','BLI06S',1.00),(1298,718,NULL,'A123WS0200000000','','JKT02M',2.00),(1299,719,NULL,'A123WS021BLC0000','','BLI02G',1.00),(1300,719,NULL,'A123WS021BLC0000','','BLI06S',1.00),(1301,719,NULL,'A123WS021BLC0000','','JKT01L',1.00),(1302,719,NULL,'A123WS021BLC0000','','JKT02M',2.00),(1303,720,NULL,'A123WS0220000000','','BLI01G',16.00),(1304,721,NULL,'A123WS0240W00000','','BLI01G',1.00),(1305,722,NULL,'A123WS027BGW000','','BLI02G',1.00),(1306,723,NULL,'A123WS27GM000000','','BLI01G',8.00),(1307,723,NULL,'A123WS27GM000000','','BLI06S',10.00),(1308,723,NULL,'A123WS27GM000000','','JKT02M',5.00),(1309,724,NULL,'A112WT01BL000000','','JKT02M',1.00),(1310,725,NULL,'A112WT01C0000000','','BLI01G',2.00),(1311,726,NULL,'A112WT01GM000000','','JKT02M',8.00),(1312,727,NULL,'X111EPLWS23SP000','','JKT02M',1.00),(1313,728,NULL,'X111EPLWS69SP000','','BLI01G',3.00),(1314,728,NULL,'X111EPLWS69SP000','','JKT02M',1.00),(1315,729,NULL,'X112GMD75SW00000','','JKT02M',22.00),(1316,730,NULL,'X422MDAC75GD0000','','JKT02M',1.00),(1317,731,NULL,'A121YSH500C00000','','BLI01G',92.00),(1318,731,NULL,'A121YSH500C00000','','BLI06S',6.00),(1319,731,NULL,'A121YSH500C00000','','JKT02M',30.00),(1320,732,NULL,'A121YSH500CBL000','','BLI06S',1.00),(1321,732,NULL,'A121YSH500CBL000','','JKT02M',14.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbttrshed`
--

LOCK TABLES `dbttrshed` WRITE;
/*!40000 ALTER TABLE `dbttrshed` DISABLE KEYS */;
INSERT INTO `dbttrshed` VALUES (1,'CSOAER SBY2025-02-20-1','CSO','2025-02-20','2025-02-20',1,'Plat SS304 & 316,AS','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-20 09:34:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'CSOAER SBY2025-02-21-2','CSO','2025-02-21','2025-03-10',2,'Plat SS304 & 316','P',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-02-21 15:45:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'CSOAER GDG2025-03-22-1','CSO','2025-03-22',NULL,1,'Plat SS304 & 316,AS','A',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-03-22 11:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'CSSAER GDG2025-03-27-1','CSS','2025-03-27',NULL,1,'Plat SS304 & 316','A',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-03-27 10:50:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `csotype` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxcsotype`
--

LOCK TABLES `dbxcsotype` WRITE;
/*!40000 ALTER TABLE `dbxcsotype` DISABLE KEYS */;
INSERT INTO `dbxcsotype` VALUES ('CSO'),('CSS');
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
  `konversi_1` decimal(12,3) DEFAULT 0.000,
  `konversi_2` decimal(12,3) DEFAULT 0.000,
  `konversi_3` decimal(12,3) DEFAULT 0.000,
  `std_berat_kemasan` decimal(12,3) DEFAULT 0.000,
  `std_material_loss_minus` decimal(12,3) DEFAULT 0.000,
  `std_material_loss_plus` decimal(12,3) DEFAULT 0.000,
  `total_produksi` decimal(12,3) DEFAULT 0.000,
  `jenis` tinyint(4) DEFAULT NULL COMMENT '0 = Finish Good\r\n1 = Raw Material',
  UNIQUE KEY `dbximpor_UN` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpor`
--

LOCK TABLES `dbximpor` WRITE;
/*!40000 ALTER TABLE `dbximpor` DISABLE KEYS */;
INSERT INTO `dbximpor` VALUES ('A401AC0102000000',NULL,'A401AC0102000000','AC 01-02',NULL,NULL,NULL,NULL,NULL,'PCS',245175.02,221,'221',0,'','R',0,'2025-03-14 15:08:29',1.00,501.000,100.000,0.000,0.000,0.000,0.000,0.005,1),('A402AC0104000000',NULL,'A402AC0104000000','AC 01-04',NULL,NULL,NULL,NULL,NULL,'PCS',55591.65,221,'221',0,'','R',0,'2025-03-14 15:08:29',2.00,100.000,0.000,0.000,0.000,0.000,0.000,0.000,1),('A402AC0202000000',NULL,'A402AC0202000000','AC 02-02',NULL,NULL,NULL,NULL,NULL,'PCS',199439.32,221,'221',0,'','R',0,'2025-03-14 15:08:33',43.00,1000.000,0.000,0.000,0.000,0.000,0.000,0.000,1),('A402AC0204000000',NULL,'A402AC0204000000','AC 02-04',NULL,NULL,NULL,NULL,NULL,'PCS',82494.86,221,'221',0,'','R',0,'2025-03-14 15:08:33',19.00,300.000,0.000,0.000,0.000,0.000,0.000,0.000,1),('A402AC0210000000',NULL,'A402AC0210000000','AC 02-10',NULL,NULL,NULL,NULL,NULL,'PCS',130052.89,221,'221',0,'','R',0,'2025-03-14 15:08:33',2.00,0.001,0.000,0.000,0.000,0.000,0.000,0.000,1),('A402AC0216B00000',NULL,'A402AC0216B00000','AC 02-16B',NULL,NULL,NULL,NULL,NULL,'PCS',499534.65,221,'221',0,'','R',0,'2025-03-14 15:08:33',3.00,0.001,0.000,0.000,0.000,0.000,0.000,0.000,1),('A402AC0304BL0000',NULL,'A402AC0304BL0000','AC 03-04 BL',NULL,NULL,NULL,NULL,NULL,'PCS',46373.50,221,'221',0,'','R',0,'2025-03-14 15:08:34',1.00,0.002,0.000,0.000,0.000,0.000,0.000,0.000,1),('A403ACB011000000',NULL,'A403ACB011000000','ACB 01-10',NULL,NULL,NULL,NULL,NULL,'PCS',152468.83,221,'221',0,'','R',0,'2025-03-14 15:08:34',1.00,0.001,0.005,0.000,0.000,0.000,0.000,0.000,1),('A404AC0116000060',NULL,'A404AC0116000060','AC 01-16 60 CM',NULL,NULL,NULL,NULL,NULL,'PCS',406767.46,221,'221',0,'','R',0,'2025-03-14 15:08:29',1.00,10.000,10.000,10.000,10.000,10.000,10.000,10.000,1),('A404AC0116B00060',NULL,'A404AC0116B00060','AC 01-16 60 CM (B)',NULL,NULL,NULL,NULL,NULL,'PCS',11166.63,221,'221',0,'','R',0,'2025-03-14 15:08:29',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,1);
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
  `konversi_1` decimal(12,3) DEFAULT 0.000,
  `konversi_2` decimal(12,3) DEFAULT 0.000,
  `konversi_3` decimal(12,3) DEFAULT 0.000,
  `std_berat_kemasan` decimal(12,3) DEFAULT 0.000,
  `std_material_loss_minus` decimal(12,3) DEFAULT 0.000,
  `std_material_loss_plus` decimal(12,3) DEFAULT 0.000,
  `total_produksi` decimal(12,3) DEFAULT 0.000,
  `jenis` tinyint(4) DEFAULT NULL COMMENT '0 = Finish Good\r\n1 = Raw Material',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximporcss`
--

LOCK TABLES `dbximporcss` WRITE;
/*!40000 ALTER TABLE `dbximporcss` DISABLE KEYS */;
INSERT INTO `dbximporcss` VALUES ('A111111000000075',NULL,'A111111000000075','111 3/4',NULL,NULL,NULL,NULL,NULL,'PCS',43379.59,30,'030',0,'','R',0,'2025-03-22 09:41:51',37.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111201000000050',NULL,'A111201000000050','201 1/2',NULL,NULL,NULL,NULL,NULL,'PCS',8376.60,40,'040',0,'','R',0,'2025-03-22 09:41:51',72.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111SPV01BG00000',NULL,'A111SPV01BG00000','SPV 01 BG',NULL,NULL,NULL,NULL,NULL,'PCS',221051.94,73,'073',0,'','R',0,'2025-03-27 10:59:14',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111SPV01GM00000',NULL,'A111SPV01GM00000','SPV 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',215911.88,73,'073',0,'','R',0,'2025-03-27 10:59:14',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111SPY010000000',NULL,'A111SPY010000000','SPY 01',NULL,NULL,NULL,NULL,NULL,'PCS',286402.58,73,'073',0,'','R',0,'2025-03-27 10:59:14',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TCR1B0000000',NULL,'A111TCR1B0000000','TCR 01B',NULL,NULL,NULL,NULL,NULL,'PCS',78861.33,32,'032',0,'','R',0,'2025-03-27 10:59:18',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TCR3C0000000',NULL,'A111TCR3C0000000','TCR 03C',NULL,NULL,NULL,NULL,NULL,'PCS',81423.48,32,'032',0,'','R',0,'2025-03-27 10:59:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TCR9BX000000',NULL,'A111TCR9BX000000','TCR 09BX',NULL,NULL,NULL,NULL,NULL,'PCS',57178.45,32,'032',0,'','R',0,'2025-03-27 10:59:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TOV03B000000',NULL,'A111TOV03B000000','TOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',86980.87,31,'031',0,'','R',0,'2025-03-27 10:59:19',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TOV1A0000000',NULL,'A111TOV1A0000000','TOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',81054.57,31,'031',0,'','R',0,'2025-03-27 10:59:19',85.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TOV1C0000000',NULL,'A111TOV1C0000000','TOV 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',95186.56,31,'031',0,'','R',0,'2025-03-27 10:59:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TOV9BY000000',NULL,'A111TOV9BY000000','TOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',84612.29,31,'031',0,'','R',0,'2025-03-27 10:59:19',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A111TR5J00F00000',NULL,'A111TR5J00F00000','TR 5J F',NULL,NULL,NULL,NULL,NULL,'PCS',39330.49,35,'035',0,'','R',0,'2025-03-27 10:59:19',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WF0300000050',NULL,'A112WF0300000050','WF 03 1/2',NULL,NULL,NULL,NULL,NULL,'PCS',274329.59,43,'043',0,'','R',0,'2025-03-27 10:59:22',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WHT01BL00000',NULL,'A112WHT01BL00000','WHT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',148092.64,37,'037',0,'','R',0,'2025-03-27 10:59:23',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WHT01C000000',NULL,'A112WHT01C000000','WHT 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',131080.79,37,'037',0,'','R',0,'2025-03-27 10:59:23',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WOV03B000000',NULL,'A112WOV03B000000','WOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',94292.24,31,'031',0,'','R',0,'2025-03-27 10:59:23',116.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WOV1A0000000',NULL,'A112WOV1A0000000','WOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',91640.35,31,'031',0,'','R',0,'2025-03-27 10:59:23',75.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WOV1C0000000',NULL,'A112WOV1C0000000','WOV 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',117216.25,31,'031',0,'','R',0,'2025-03-27 10:59:23',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WOV9BY000000',NULL,'A112WOV9BY000000','WOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',97078.87,31,'031',0,'','R',0,'2025-03-27 10:59:23',29.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WT01BL000000',NULL,'A112WT01BL000000','WT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',120351.67,37,'037',0,'','R',0,'2025-03-27 10:59:25',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WT01C0000000',NULL,'A112WT01C0000000','WT 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',106047.19,37,'037',0,'','R',0,'2025-03-27 10:59:25',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A112WT01GM000000',NULL,'A112WT01GM000000','WT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',124381.82,37,'037',0,'','R',0,'2025-03-27 10:59:25',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113AR5J00000000',NULL,'A113AR5J00000000','AR 5J',NULL,NULL,NULL,NULL,NULL,'PCS',47164.63,36,'036',0,'','R',0,'2025-03-27 10:58:22',86.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113AS5J00000000',NULL,'A113AS5J00000000','AS 5J',NULL,NULL,NULL,NULL,NULL,'PCS',58636.48,36,'036',0,'','R',0,'2025-03-27 10:58:22',66.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SH0100000000',NULL,'A113SH0100000000','SH 01',NULL,NULL,NULL,NULL,NULL,'PCS',115649.20,72,'072',0,'','R',0,'2025-03-27 10:59:08',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHCR1A000000',NULL,'A113SHCR1A000000','SHCR 01A',NULL,NULL,NULL,NULL,NULL,'PCS',51513.34,32,'032',0,'','R',0,'2025-03-27 10:59:09',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHCR1B000000',NULL,'A113SHCR1B000000','SHCR 01B',NULL,NULL,NULL,NULL,NULL,'PCS',71193.77,32,'032',0,'','R',0,'2025-03-27 10:59:09',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHCR3B00000',NULL,'A113SHCR3B00000','SHCR 03B',NULL,NULL,NULL,NULL,NULL,'PCS',46667.79,32,'032',0,'','R',0,'2025-03-27 10:59:09',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHCR3C000000',NULL,'A113SHCR3C000000','SHCR 03C',NULL,NULL,NULL,NULL,NULL,'PCS',68952.29,32,'032',0,'','R',0,'2025-03-27 10:59:09',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHOV1A000000',NULL,'A113SHOV1A000000','SHOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',58682.08,31,'031',0,'','R',0,'2025-03-27 10:59:09',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHOV1B000000',NULL,'A113SHOV1B000000','SHOV 01B',NULL,NULL,NULL,NULL,NULL,'PCS',55910.63,31,'031',0,'','R',0,'2025-03-27 10:59:09',31.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHOV3B000000',NULL,'A113SHOV3B000000','SHOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',62231.20,31,'031',0,'','R',0,'2025-03-27 10:59:09',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHOV9BY00000',NULL,'A113SHOV9BY00000','SHOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',63705.76,31,'031',0,'','R',0,'2025-03-27 10:59:09',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHT01BL00000',NULL,'A113SHT01BL00000','SHT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',57431.04,37,'037',0,'','R',0,'2025-03-27 10:59:10',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHT01C000000',NULL,'A113SHT01C000000','SHT 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',49316.95,37,'037',0,'','R',0,'2025-03-27 10:59:10',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHT01GM00000',NULL,'A113SHT01GM00000','SHT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',56136.22,37,'037',0,'','R',0,'2025-03-27 10:59:10',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113SHY010000000',NULL,'A113SHY010000000','SHY 01',NULL,NULL,NULL,NULL,NULL,'PCS',75165.22,33,'033',0,'','R',0,'2025-03-27 10:59:10',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TAT01GM00000',NULL,'A113TAT01GM00000','TAT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',59299.10,37,'037',0,'','R',0,'2025-03-27 10:59:17',14.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TAY010000000',NULL,'A113TAY010000000','TAY 01',NULL,NULL,NULL,NULL,NULL,'PCS',74826.30,33,'033',0,'','R',0,'2025-03-27 10:59:17',25.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TF01A0000000',NULL,'A113TF01A0000000','TF 01 A',NULL,NULL,NULL,NULL,NULL,'PCS',51170.63,31,'031',0,'','R',0,'2025-03-27 10:59:18',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TF01B0000000',NULL,'A113TF01B0000000','TF 01 B',NULL,NULL,NULL,NULL,NULL,'PCS',50587.93,31,'031',0,'','R',0,'2025-03-27 10:59:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TF03B0000000',NULL,'A113TF03B0000000','TF 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',55447.53,31,'031',0,'','R',0,'2025-03-27 10:59:18',140.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A113TF09BY000000',NULL,'A113TF09BY000000','TF 09 BY',NULL,NULL,NULL,NULL,NULL,'PCS',55295.63,31,'031',0,'','R',0,'2025-03-27 10:59:18',30.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114ACR1B0000000',NULL,'A114ACR1B0000000','ACR 01B',NULL,NULL,NULL,NULL,NULL,'PCS',108875.63,32,'032',0,'','R',0,'2025-03-27 10:58:19',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114ACR3C0000000',NULL,'A114ACR3C0000000','ACR 03C',NULL,NULL,NULL,NULL,NULL,'PCS',114381.76,32,'032',0,'','R',0,'2025-03-27 10:58:20',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AL0100000000',NULL,'A114AL0100000000','AL 01',NULL,NULL,NULL,NULL,NULL,'PCS',194763.22,34,'034',0,'','R',0,'2025-03-27 10:58:21',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AOV03B000000',NULL,'A114AOV03B000000','AOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',106732.37,31,'031',0,'','R',0,'2025-03-22 09:42:30',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AOV1A0000000',NULL,'A114AOV1A0000000','AOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',101975.22,31,'031',0,'','R',0,'2025-03-27 10:58:21',28.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AOV9BY000000',NULL,'A114AOV9BY000000','AOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',106513.41,31,'031',0,'','R',0,'2025-03-27 10:58:21',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AT01BL000000',NULL,'A114AT01BL000000','AT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',110046.39,37,'037',0,'','R',0,'2025-03-27 10:58:24',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AT01C0000000',NULL,'A114AT01C0000000','AT 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',89450.11,37,'037',0,'','R',0,'2025-03-27 10:58:24',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AT01GM000000',NULL,'A114AT01GM000000','AT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',108896.95,37,'037',0,'','R',0,'2025-03-27 10:58:24',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114AY0100000000',NULL,'A114AY0100000000','AY 01',NULL,NULL,NULL,NULL,NULL,'PCS',83232.18,33,'033',0,'','R',0,'2025-03-27 10:58:24',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114HOV1A0000000',NULL,'A114HOV1A0000000','HOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',90340.47,31,'031',0,'','R',0,'2025-03-27 10:58:41',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114HOV3B0000000',NULL,'A114HOV3B0000000','HOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',92957.88,31,'031',0,'','R',0,'2025-03-27 10:58:41',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114HOV9BY000000',NULL,'A114HOV9BY000000','HOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',92387.54,31,'031',0,'','R',0,'2025-03-27 10:58:42',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114SASKF0300000',NULL,'A114SASKF0300000','SAS - KF3',NULL,NULL,NULL,NULL,NULL,'PCS',825716.64,78,'078',0,'','R',0,'2025-03-27 10:59:03',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114SASKX02C0000',NULL,'A114SASKX02C0000','SAS - KX2 C',NULL,NULL,NULL,NULL,NULL,'PCS',405722.49,72,'072',0,'','R',0,'2025-03-27 10:59:03',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VCR1B0000000',NULL,'A114VCR1B0000000','VCR 01B',NULL,NULL,NULL,NULL,NULL,'PCS',122205.95,32,'032',0,'','R',0,'2025-03-27 10:59:20',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VCR3C0000000',NULL,'A114VCR3C0000000','VCR 03C',NULL,NULL,NULL,NULL,NULL,'PCS',122503.06,32,'032',0,'','R',0,'2025-03-27 10:59:20',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VL0100000000',NULL,'A114VL0100000000','VL 01',NULL,NULL,NULL,NULL,NULL,'PCS',208632.68,34,'034',0,'','R',0,'2025-03-27 10:59:20',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VOV1A0000000',NULL,'A114VOV1A0000000','VOV 01A',NULL,NULL,NULL,NULL,NULL,'PCS',116914.52,31,'031',0,'','R',0,'2025-03-27 10:59:21',28.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VOV3B0000000',NULL,'A114VOV3B0000000','VOV 03 B',NULL,NULL,NULL,NULL,NULL,'PCS',120163.01,31,'031',0,'','R',0,'2025-03-27 10:59:21',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VOV3C0000000',NULL,'A114VOV3C0000000','VOV 03 C',NULL,NULL,NULL,NULL,NULL,'PCS',102930.04,31,'031',0,'','R',0,'2025-03-27 10:59:21',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VOV9BY000000',NULL,'A114VOV9BY000000','VOV 09BY',NULL,NULL,NULL,NULL,NULL,'PCS',120705.11,31,'031',0,'','R',0,'2025-03-27 10:59:21',29.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VT01BL000000',NULL,'A114VT01BL000000','VT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',124082.16,37,'037',0,'','R',0,'2025-03-27 10:59:21',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VT01GM000000',NULL,'A114VT01GM000000','VT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',124503.52,37,'037',0,'','R',0,'2025-03-27 10:59:21',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A114VY0100000000',NULL,'A114VY0100000000','VY 01',NULL,NULL,NULL,NULL,NULL,'PCS',85642.71,33,'033',0,'','R',0,'2025-03-27 10:59:21',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116D11A00000000',NULL,'A116D11A00000000','D 11A',NULL,NULL,NULL,NULL,NULL,'PCS',131481.29,31,'031',0,'','R',0,'2025-03-27 10:58:31',98.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116D33B00000000',NULL,'A116D33B00000000','D 33 B',NULL,NULL,NULL,NULL,NULL,'PCS',141500.49,31,'031',0,'','R',0,'2025-03-27 10:58:31',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116D99BY0000000',NULL,'A116D99BY0000000','D 99BY',NULL,NULL,NULL,NULL,NULL,'PCS',140208.41,31,'031',0,'','R',0,'2025-03-27 10:58:32',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DCR11B000000',NULL,'A116DCR11B000000','DCR 11B',NULL,NULL,NULL,NULL,NULL,'PCS',122329.83,32,'032',0,'','R',0,'2025-03-27 10:58:32',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DCR33C000000',NULL,'A116DCR33C000000','DCR 33C',NULL,NULL,NULL,NULL,NULL,'PCS',127722.92,32,'032',0,'','R',0,'2025-03-27 10:58:33',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DT01BL000000',NULL,'A116DT01BL000000','DT 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',128029.04,37,'037',0,'','R',0,'2025-03-27 10:58:34',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DT01C0000000',NULL,'A116DT01C0000000','DT 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',105355.67,37,'037',0,'','R',0,'2025-03-27 10:58:34',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DT01GM000000',NULL,'A116DT01GM000000','DT 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',128803.77,37,'037',0,'','R',0,'2025-03-27 10:58:34',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A116DY0100000000',NULL,'A116DY0100000000','DY 01',NULL,NULL,NULL,NULL,NULL,'PCS',142728.06,33,'033',0,'','R',0,'2025-03-27 10:58:34',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SCR1B0N00000',NULL,'A117SCR1B0N00000','SCR 01B N',NULL,NULL,NULL,NULL,NULL,'PCS',79565.42,32,'032',0,'','R',0,'2025-03-27 10:59:05',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SCR3C0F00000',NULL,'A117SCR3C0F00000','SCR 03C F',NULL,NULL,NULL,NULL,NULL,'PCS',85954.20,32,'032',0,'','R',0,'2025-03-27 10:59:06',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV1A0F00000',NULL,'A117SOV1A0F00000','SOV 01A F',NULL,NULL,NULL,NULL,NULL,'PCS',68641.09,31,'031',0,'','R',0,'2025-03-27 10:59:12',47.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV1A0N00000',NULL,'A117SOV1A0N00000','SOV 01A N',NULL,NULL,NULL,NULL,NULL,'PCS',66752.76,31,'031',0,'','R',0,'2025-03-27 10:59:12',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV1A0W00000',NULL,'A117SOV1A0W00000','SOV 01A W',NULL,NULL,NULL,NULL,NULL,'PCS',64897.30,31,'031',0,'','R',0,'2025-03-27 10:59:12',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV3B0N00000',NULL,'A117SOV3B0N00000','SOV 03B N',NULL,NULL,NULL,NULL,NULL,'PCS',72551.57,31,'031',0,'','R',0,'2025-03-27 10:59:12',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV3B0W00000',NULL,'A117SOV3B0W00000','SOV 03B W',NULL,NULL,NULL,NULL,NULL,'PCS',67269.68,31,'031',0,'','R',0,'2025-03-27 10:59:13',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV3C0N00000',NULL,'A117SOV3C0N00000','SOV 03C N',NULL,NULL,NULL,NULL,NULL,'PCS',73838.93,31,'031',0,'','R',0,'2025-03-27 10:59:13',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV9BYN00000',NULL,'A117SOV9BYN00000','SOV 09BY N',NULL,NULL,NULL,NULL,NULL,'PCS',72053.93,31,'031',0,'','R',0,'2025-03-27 10:59:13',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SOV9BYW00000',NULL,'A117SOV9BYW00000','SOV 09BY W',NULL,NULL,NULL,NULL,NULL,'PCS',71074.07,31,'031',0,'','R',0,'2025-03-27 10:59:13',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117ST01FBL00000',NULL,'A117ST01FBL00000','ST 01 FBL',NULL,NULL,NULL,NULL,NULL,'PCS',70961.42,37,'037',0,'','R',0,'2025-03-27 10:59:15',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117ST01FGM00000',NULL,'A117ST01FGM00000','ST 01 FGM',NULL,NULL,NULL,NULL,NULL,'PCS',69371.58,37,'037',0,'','R',0,'2025-03-27 10:59:15',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117ST01NBL00000',NULL,'A117ST01NBL00000','ST 01 NBL',NULL,NULL,NULL,NULL,NULL,'PCS',72516.64,37,'037',0,'','R',0,'2025-03-27 10:59:15',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117ST01NC000000',NULL,'A117ST01NC000000','ST 01 NC',NULL,NULL,NULL,NULL,NULL,'PCS',58208.65,37,'037',0,'','R',0,'2025-03-27 10:59:15',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117ST01NGM00000',NULL,'A117ST01NGM00000','ST 01 NGM',NULL,NULL,NULL,NULL,NULL,'PCS',71030.41,37,'037',0,'','R',0,'2025-03-27 10:59:15',19.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A117SY0100000000',NULL,'A117SY0100000000','SY 01',NULL,NULL,NULL,NULL,NULL,'PCS',71456.84,33,'033',0,'','R',0,'2025-03-27 10:59:16',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121BSH100W00000',NULL,'A121BSH100W00000','BSH - 1W',NULL,NULL,NULL,NULL,NULL,'PCS',160499.65,20,'020',0,'','R',0,'2025-03-27 10:58:26',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121CSH300C00000',NULL,'A121CSH300C00000','CSH - 3C',NULL,NULL,NULL,NULL,NULL,'PCS',93720.74,21,'021',0,'','R',0,'2025-03-27 10:58:26',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121FSH100C00000',NULL,'A121FSH100C00000','FSH - 1C',NULL,NULL,NULL,NULL,NULL,'PCS',96726.95,21,'021',0,'','R',0,'2025-03-27 10:58:37',33.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121FSH100CC0000',NULL,'A121FSH100CC0000','FSH - 1CC',NULL,NULL,NULL,NULL,NULL,'PCS',99949.59,21,'021',0,'','R',0,'2025-03-27 10:58:38',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121FSH300CW0000',NULL,'A121FSH300CW0000','FSH - 3CW',NULL,NULL,NULL,NULL,NULL,'PCS',98751.53,21,'021',0,'','R',0,'2025-03-27 10:58:38',58.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH210C00000',NULL,'A121GSH210C00000','GSH 2 - 1C',NULL,NULL,NULL,NULL,NULL,'PCS',80400.22,21,'021',0,'','R',0,'2025-03-27 10:58:39',49.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH31CW00000',NULL,'A121GSH31CW00000','GSH 3 - 1CW',NULL,NULL,NULL,NULL,NULL,'PCS',134132.36,21,'021',0,'','R',0,'2025-03-27 10:58:39',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH450CW0000',NULL,'A121GSH450CW0000','GSH 4 - 5CW',NULL,NULL,NULL,NULL,NULL,'PCS',95332.02,21,'021',0,'','R',0,'2025-03-27 10:58:39',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH53BGW0000',NULL,'A121GSH53BGW0000','GSH 5 - 3BGW',NULL,NULL,NULL,NULL,NULL,'PCS',192963.81,21,'021',0,'','R',0,'2025-03-27 10:58:39',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH53GM00000',NULL,'A121GSH53GM00000','GSH 5 - 3GM',NULL,NULL,NULL,NULL,NULL,'PCS',187882.82,21,'021',0,'','R',0,'2025-03-27 10:58:39',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121GSH53RGB0000',NULL,'A121GSH53RGB0000','GSH 5 - 3RGB',NULL,NULL,NULL,NULL,NULL,'PCS',204675.67,21,'021',0,'','R',0,'2025-03-27 10:58:39',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121JSH230CBL000',NULL,'A121JSH230CBL000','JSH 2 - 3CBL',NULL,NULL,NULL,NULL,NULL,'PCS',129642.25,21,'021',0,'','R',0,'2025-03-27 10:58:43',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121JSH230CPBL00',NULL,'A121JSH230CPBL00','JSH 2 - 3CPBL',NULL,NULL,NULL,NULL,NULL,'PCS',124336.08,21,'021',0,'','R',0,'2025-03-27 10:58:43',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121PSH0101C0000',NULL,'A121PSH0101C0000','PSH1 - 1C',NULL,NULL,NULL,NULL,NULL,'PCS',184142.78,21,'021',0,'','R',0,'2025-03-27 10:58:51',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121PSH0201C0000',NULL,'A121PSH0201C0000','PSH2 - 1C',NULL,NULL,NULL,NULL,NULL,'PCS',199650.75,21,'021',0,'','R',0,'2025-03-27 10:58:51',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121YSH500C00000',NULL,'A121YSH500C00000','YSH - 5C',NULL,NULL,NULL,NULL,NULL,'PCS',126824.25,21,'021',0,'','R',0,'2025-03-27 10:59:26',128.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A121YSH500CBL000',NULL,'A121YSH500CBL000','YSH - 5CBL',NULL,NULL,NULL,NULL,NULL,'PCS',137271.39,21,'021',0,'','R',0,'2025-03-27 10:59:26',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC10W0000000',NULL,'A122SC10W0000000','SC 10 W',NULL,NULL,NULL,NULL,NULL,'PCS',40345.25,254,'254',0,'','R',0,'2025-03-27 10:59:04',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1100BG0000',NULL,'A122SC1100BG0000','SC 11 BG',NULL,NULL,NULL,NULL,NULL,'PCS',115008.57,23,'023',0,'','R',0,'2025-03-27 10:59:04',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1100BL0000',NULL,'A122SC1100BL0000','SC 11 BL',NULL,NULL,NULL,NULL,NULL,'PCS',72201.65,23,'023',0,'','R',0,'2025-03-27 10:59:04',33.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1100C00000',NULL,'A122SC1100C00000','SC 11 C',NULL,NULL,NULL,NULL,NULL,'PCS',86962.04,23,'023',0,'','R',0,'2025-03-27 10:59:05',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1100PGM000',NULL,'A122SC1100PGM000','SC 11 PGM',NULL,NULL,NULL,NULL,NULL,'PCS',91907.83,23,'023',0,'','R',0,'2025-03-27 10:59:05',24.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1100W00000',NULL,'A122SC1100W00000','SC 11 W',NULL,NULL,NULL,NULL,NULL,'PCS',57649.47,23,'023',0,'','R',0,'2025-03-27 10:59:05',31.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1200PBL000',NULL,'A122SC1200PBL000','SC 12 PBL',NULL,NULL,NULL,NULL,NULL,'PCS',64906.19,23,'023',0,'','R',0,'2025-03-27 10:59:05',21.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC1200PGM000',NULL,'A122SC1200PGM000','SC 12 PGM',NULL,NULL,NULL,NULL,NULL,'PCS',72681.10,23,'023',0,'','R',0,'2025-03-27 10:59:05',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC5000S00000',NULL,'A122SC5000S00000','SC 05 S',NULL,NULL,NULL,NULL,NULL,'PCS',77336.73,23,'023',0,'','R',0,'2025-03-27 10:59:03',137.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC5000W00000',NULL,'A122SC5000W00000','SC 05 W',NULL,NULL,NULL,NULL,NULL,'PCS',58367.90,23,'023',0,'','R',0,'2025-03-27 10:59:04',208.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC5000WH0000',NULL,'A122SC5000WH0000','SC 05 W HEAD',NULL,NULL,NULL,NULL,NULL,'PCS',24507.30,23,'023',0,'','R',0,'2025-03-27 10:59:04',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC7000C00000',NULL,'A122SC7000C00000','SC 07 C',NULL,NULL,NULL,NULL,NULL,'PCS',72774.22,23,'023',0,'','R',0,'2025-03-27 10:59:04',104.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC7000W00000',NULL,'A122SC7000W00000','SC 07 W',NULL,NULL,NULL,NULL,NULL,'PCS',69261.76,23,'023',0,'','R',0,'2025-03-27 10:59:04',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC9000C00000',NULL,'A122SC9000C00000','SC 09 C',NULL,NULL,NULL,NULL,NULL,'PCS',75649.24,23,'023',0,'','R',0,'2025-03-27 10:59:04',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A122SC9000W00000',NULL,'A122SC9000W00000','SC 09 W',NULL,NULL,NULL,NULL,NULL,'PCS',55277.23,23,'023',0,'','R',0,'2025-03-27 10:59:04',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123CS0180000000',NULL,'A123CS0180000000','CS 18',NULL,NULL,NULL,NULL,NULL,'PCS',360112.93,22,'022',0,'','R',0,'2025-03-27 10:58:26',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0110000000',NULL,'A123WS0110000000','WS 11',NULL,NULL,NULL,NULL,NULL,'PCS',116744.10,22,'022',0,'','R',0,'2025-03-27 10:59:24',63.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS011C000000',NULL,'A123WS011C000000','WS 11C',NULL,NULL,NULL,NULL,NULL,'PCS',164591.53,22,'022',0,'','R',0,'2025-03-27 10:59:24',24.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0120FR0000',NULL,'A123WS0120FR0000','WS 12 FR',NULL,NULL,NULL,NULL,NULL,'PCS',49953.59,22,'022',0,'','R',0,'2025-03-27 10:59:24',106.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0130000000',NULL,'A123WS0130000000','WS 13',NULL,NULL,NULL,NULL,NULL,'PCS',122284.54,22,'022',0,'','R',0,'2025-03-27 10:59:24',115.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0150000000',NULL,'A123WS0150000000','WS 15',NULL,NULL,NULL,NULL,NULL,'PCS',77422.00,22,'022',0,'','R',0,'2025-03-27 10:59:24',35.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0160000000',NULL,'A123WS0160000000','WS 16',NULL,NULL,NULL,NULL,NULL,'PCS',192456.11,22,'022',0,'','R',0,'2025-03-27 10:59:24',42.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS016H000000',NULL,'A123WS016H000000','WS 16 HEAD',NULL,NULL,NULL,NULL,NULL,'PCS',155352.53,22,'022',0,'','R',0,'2025-03-27 10:59:24',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0190000000',NULL,'A123WS0190000000','WS 19',NULL,NULL,NULL,NULL,NULL,'PCS',214317.39,22,'022',0,'','R',0,'2025-03-27 10:59:24',75.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0200000000',NULL,'A123WS0200000000','WS 20',NULL,NULL,NULL,NULL,NULL,'PCS',137780.16,22,'022',0,'','R',0,'2025-03-27 10:59:25',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS021BLC0000',NULL,'A123WS021BLC0000','WS 21 BLC',NULL,NULL,NULL,NULL,NULL,'PCS',201655.49,22,'022',0,'','R',0,'2025-03-27 10:59:25',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0220000000',NULL,'A123WS0220000000','WS 22',NULL,NULL,NULL,NULL,NULL,'PCS',398989.61,22,'022',0,'','R',0,'2025-03-27 10:59:25',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS0240W00000',NULL,'A123WS0240W00000','WS 24 W',NULL,NULL,NULL,NULL,NULL,'PCS',134257.97,22,'022',0,'','R',0,'2025-03-27 10:59:25',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS027BGW000',NULL,'A123WS027BGW000','WS 27 BGW',NULL,NULL,NULL,NULL,NULL,'PCS',355953.78,22,'022',0,'','R',0,'2025-03-27 10:59:25',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A123WS27GM000000',NULL,'A123WS27GM000000','WS 27 GM',NULL,NULL,NULL,NULL,NULL,'PCS',215965.04,22,'022',0,'','R',0,'2025-03-27 10:59:25',23.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A131FHM125SAF000',NULL,'A131FHM125SAF000','FHM 125 SA F',NULL,NULL,NULL,NULL,NULL,'PCS',36249.27,12,'012',0,'','R',0,'2025-03-27 10:58:35',25.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A131FHM150SAF000',NULL,'A131FHM150SAF000','FHM 150 SA F',NULL,NULL,NULL,NULL,NULL,'PCS',39825.84,12,'012',0,'','R',0,'2025-03-27 10:58:35',23.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A132FA3000SS0000',NULL,'A132FA3000SS0000','FA 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',18554.05,11,'011',0,'','R',0,'2025-03-27 10:58:35',83.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A132FA4000SS0000',NULL,'A132FA4000SS0000','FA 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',20065.05,11,'011',0,'','R',0,'2025-03-27 10:58:35',84.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A132FA5000SS0000',NULL,'A132FA5000SS0000','FA 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',21371.36,11,'011',0,'','R',0,'2025-03-27 10:58:35',90.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A133FNS300SS0000',NULL,'A133FNS300SS0000','FNS 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',16528.31,11,'011',0,'','R',0,'2025-03-27 10:58:36',20.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A133FNS400SS0000',NULL,'A133FNS400SS0000','FNS 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',18047.80,11,'011',0,'','R',0,'2025-03-27 10:58:36',36.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A133FNS500SS0000',NULL,'A133FNS500SS0000','FNS 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',19760.49,11,'011',0,'','R',0,'2025-03-27 10:58:36',111.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A134FW3000SS0000',NULL,'A134FW3000SS0000','FW 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',16746.11,11,'011',0,'','R',0,'2025-03-27 10:58:38',76.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A134FW4000SS0000',NULL,'A134FW4000SS0000','FW 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',18620.06,11,'011',0,'','R',0,'2025-03-27 10:58:39',52.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A134FW5000SS0000',NULL,'A134FW5000SS0000','FW 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',20367.81,11,'011',0,'','R',0,'2025-03-27 10:58:39',56.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A141NFS3K0000000',NULL,'A141NFS3K0000000','NEW FS 03 K',NULL,NULL,NULL,NULL,NULL,'PCS',138388.49,61,'061',0,'','R',0,'2025-03-27 10:58:48',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A141NFS4KBL00000',NULL,'A141NFS4KBL00000','NEW FS 04 K BL',NULL,NULL,NULL,NULL,NULL,'PCS',64593.28,61,'061',0,'','R',0,'2025-03-27 10:58:49',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A141SFS03KGM0000',NULL,'A141SFS03KGM0000','SFS 03 K GM',NULL,NULL,NULL,NULL,NULL,'PCS',87508.58,61,'061',0,'','R',0,'2025-03-27 10:59:07',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS010000000',NULL,'A142HFS010000000','HFS 01',NULL,NULL,NULL,NULL,NULL,'PCS',115783.64,61,'061',0,'','R',0,'2025-03-27 10:58:40',138.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS01BL00000',NULL,'A142HFS01BL00000','HFS 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',114781.20,61,'061',0,'','R',0,'2025-03-27 10:58:40',21.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS01GM00000',NULL,'A142HFS01GM00000','HFS 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',116960.35,61,'061',0,'','R',0,'2025-03-27 10:58:40',44.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS020000000',NULL,'A142HFS020000000','HFS 02',NULL,NULL,NULL,NULL,NULL,'PCS',154369.03,61,'061',0,'','R',0,'2025-03-27 10:58:41',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS02BL00000',NULL,'A142HFS02BL00000','HFS 02 BL',NULL,NULL,NULL,NULL,NULL,'PCS',156658.59,61,'061',0,'','R',0,'2025-03-27 10:58:41',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A142HFS02GM00000',NULL,'A142HFS02GM00000','HFS 02 GM',NULL,NULL,NULL,NULL,NULL,'PCS',154587.56,61,'061',0,'','R',0,'2025-03-27 10:58:41',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A143CO0000000400',NULL,'A143CO0000000400','CLEAN OUT 4',NULL,NULL,NULL,NULL,NULL,'PCS',129599.33,61,'061',0,'','R',0,'2025-03-27 10:58:26',20.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS01SS00700',NULL,'A147LFS01SS00700','LFS 01 SS 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',329834.48,62,'062',0,'','R',0,'2025-03-27 10:58:46',41.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS03SS00700',NULL,'A147LFS03SS00700','LFS 03 SS 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',320705.58,62,'062',0,'','R',0,'2025-03-27 10:58:46',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS03SSGM700',NULL,'A147LFS03SSGM700','LFS 03 SS G 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',324699.20,62,'062',0,'','R',0,'2025-03-27 10:58:46',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS04SSBL700',NULL,'A147LFS04SSBL700','LFS 04 SS BL 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',329407.21,62,'062',0,'','R',0,'2025-03-27 10:58:47',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS04SSGM700',NULL,'A147LFS04SSGM700','LFS 04 SS G 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',374459.32,62,'062',0,'','R',0,'2025-03-27 10:58:47',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A147LFS04SSW0700',NULL,'A147LFS04SSW0700','LFS 04 SS W 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',321324.22,62,'062',0,'','R',0,'2025-03-27 10:58:47',57.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A151SAHMV1BG0000',NULL,'A151SAHMV1BG0000','SAH - MV1 BG',NULL,NULL,NULL,NULL,NULL,'PCS',533549.73,73,'073',0,'','R',0,'2025-03-27 10:58:59',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A151SAHMV1WR0000',NULL,'A151SAHMV1WR0000','SAH - MV1 WR',NULL,NULL,NULL,NULL,NULL,'PCS',506597.62,73,'073',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A151SAHMY0100000',NULL,'A151SAHMY0100000','SAH - MY1',NULL,NULL,NULL,NULL,NULL,'PCS',673322.27,73,'073',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A151SAMMP03BL000',NULL,'A151SAMMP03BL000','SAM - MP3 BL',NULL,NULL,NULL,NULL,NULL,'PCS',1011949.45,73,'073',0,'','R',0,'2025-03-27 10:59:02',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBR0100000',NULL,'A152SAHBR0100000','SAH - BR1',NULL,NULL,NULL,NULL,NULL,'PCS',859780.08,73,'073',0,'','R',0,'2025-03-27 10:58:54',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBS0100000',NULL,'A152SAHBS0100000','SAH - BS1',NULL,NULL,NULL,NULL,NULL,'PCS',307902.75,71,'071',0,'','R',0,'2025-03-27 10:58:54',79.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBS0200000',NULL,'A152SAHBS0200000','SAH - BS2',NULL,NULL,NULL,NULL,NULL,'PCS',317129.94,71,'071',0,'','R',0,'2025-03-27 10:58:55',100.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBS02T0000',NULL,'A152SAHBS02T0000','SAH - BS2 T',NULL,NULL,NULL,NULL,NULL,'PCS',441839.41,71,'071',0,'','R',0,'2025-03-27 10:58:55',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBS0400000',NULL,'A152SAHBS0400000','SAH - BS4',NULL,NULL,NULL,NULL,NULL,'PCS',301182.37,71,'071',0,'','R',0,'2025-03-27 10:58:55',74.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBT1BLR000',NULL,'A152SAHBT1BLR000','SAH - BT1 BLR',NULL,NULL,NULL,NULL,NULL,'PCS',586339.16,73,'073',0,'','R',0,'2025-03-27 10:58:55',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBV1BG0000',NULL,'A152SAHBV1BG0000','SAH - BV1 BG',NULL,NULL,NULL,NULL,NULL,'PCS',527228.67,73,'073',0,'','R',0,'2025-03-27 10:58:55',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBV1GM0000',NULL,'A152SAHBV1GM0000','SAH - BV1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',553497.55,73,'073',0,'','R',0,'2025-03-27 10:58:55',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAHBV1WR0000',NULL,'A152SAHBV1WR0000','SAH - BV1 WR',NULL,NULL,NULL,NULL,NULL,'PCS',541667.95,73,'073',0,'','R',0,'2025-03-27 10:58:55',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SAMBS2000000',NULL,'A152SAMBS2000000','SAM - BS2',NULL,NULL,NULL,NULL,NULL,'PCS',362319.84,71,'071',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A152SASBX03BLC00',NULL,'A152SASBX03BLC00','SAS - BX3 BLC',NULL,NULL,NULL,NULL,NULL,'PCS',643849.44,73,'073',0,'','R',0,'2025-03-27 10:59:03',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAGSH3000000',NULL,'A153SAGSH3000000','SAG - SH3',NULL,NULL,NULL,NULL,NULL,'PCS',251694.58,71,'071',0,'','R',0,'2025-03-27 10:58:54',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSB0100000',NULL,'A153SAHSB0100000','SAH - SB1',NULL,NULL,NULL,NULL,NULL,'PCS',333214.21,72,'072',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSH0100000',NULL,'A153SAHSH0100000','SAH - SH1',NULL,NULL,NULL,NULL,NULL,'PCS',267055.17,71,'071',0,'','R',0,'2025-03-27 10:58:59',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSH0200000',NULL,'A153SAHSH0200000','SAH - SH2',NULL,NULL,NULL,NULL,NULL,'PCS',263757.43,71,'071',0,'','R',0,'2025-03-27 10:58:59',26.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSH02GM000',NULL,'A153SAHSH02GM000','SAH - SH2 GM',NULL,NULL,NULL,NULL,NULL,'PCS',0.02,72,'072',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSH02T0000',NULL,'A153SAHSH02T0000','SAH - SH2 T',NULL,NULL,NULL,NULL,NULL,'PCS',363214.21,71,'071',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A153SAHSR0100000',NULL,'A153SAHSR0100000','SAH - SR1',NULL,NULL,NULL,NULL,NULL,'PCS',491982.38,73,'073',0,'','R',0,'2025-03-27 10:59:00',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SACW01000000',NULL,'A154SACW01000000','SAC - W1',NULL,NULL,NULL,NULL,NULL,'PCS',604318.47,73,'073',0,'','R',0,'2025-03-27 10:58:54',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHH02000000',NULL,'A154SAHH02000000','SAH - H2',NULL,NULL,NULL,NULL,NULL,'PCS',351520.89,71,'071',0,'','R',0,'2025-03-27 10:58:56',70.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHH02GM0000',NULL,'A154SAHH02GM0000','SAH - H2 GM',NULL,NULL,NULL,NULL,NULL,'PCS',562388.64,72,'072',0,'','R',0,'2025-03-27 10:58:56',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHH02T00000',NULL,'A154SAHH02T00000','SAH - H2 T',NULL,NULL,NULL,NULL,NULL,'PCS',499141.32,71,'071',0,'','R',0,'2025-03-27 10:58:56',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHHC0100000',NULL,'A154SAHHC0100000','SAH - HC1',NULL,NULL,NULL,NULL,NULL,'PCS',1067269.32,73,'073',0,'','R',0,'2025-03-27 10:58:56',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHHT1BLR000',NULL,'A154SAHHT1BLR000','SAH - HT1 BLR',NULL,NULL,NULL,NULL,NULL,'PCS',670840.65,73,'073',0,'','R',0,'2025-03-27 10:58:57',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHHV1BG0000',NULL,'A154SAHHV1BG0000','SAH - HV1 BG',NULL,NULL,NULL,NULL,NULL,'PCS',617507.83,73,'073',0,'','R',0,'2025-03-27 10:58:57',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHHV1GM0000',NULL,'A154SAHHV1GM0000','SAH - HV1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',639064.37,73,'073',0,'','R',0,'2025-03-27 10:58:57',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHHY0100000',NULL,'A154SAHHY0100000','SAH - HY1',NULL,NULL,NULL,NULL,NULL,'PCS',682628.44,73,'073',0,'','R',0,'2025-03-27 10:58:57',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW01000000',NULL,'A154SAHW01000000','SAH - W1',NULL,NULL,NULL,NULL,NULL,'PCS',258783.11,71,'071',0,'','R',0,'2025-03-27 10:59:00',33.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02000000',NULL,'A154SAHW02000000','SAH - W2',NULL,NULL,NULL,NULL,NULL,'PCS',248227.64,71,'071',0,'','R',0,'2025-03-27 10:59:00',31.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02BL0000',NULL,'A154SAHW02BL0000','SAH - W2 BL',NULL,NULL,NULL,NULL,NULL,'PCS',317638.05,72,'072',0,'','R',0,'2025-03-27 10:59:00',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02GBL000',NULL,'A154SAHW02GBL000','SAH - W2 GBL',NULL,NULL,NULL,NULL,NULL,'PCS',314583.85,72,'072',0,'','R',0,'2025-03-27 10:59:00',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02GM0000',NULL,'A154SAHW02GM0000','SAH - W2 GM',NULL,NULL,NULL,NULL,NULL,'PCS',344237.76,72,'072',0,'','R',0,'2025-03-27 10:59:00',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02T00000',NULL,'A154SAHW02T00000','SAH - W2 T',NULL,NULL,NULL,NULL,NULL,'PCS',356259.20,72,'072',0,'','R',0,'2025-03-27 10:59:00',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW02W00000',NULL,'A154SAHW02W00000','SAH - W2 W',NULL,NULL,NULL,NULL,NULL,'PCS',326813.46,72,'072',0,'','R',0,'2025-03-27 10:59:00',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW04000000',NULL,'A154SAHW04000000','SAH - W4',NULL,NULL,NULL,NULL,NULL,'PCS',222265.23,71,'071',0,'','R',0,'2025-03-27 10:59:01',30.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHW04C00000',NULL,'A154SAHW04C00000','SAH - W4C',NULL,NULL,NULL,NULL,NULL,'PCS',215439.20,71,'071',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWB01BL000',NULL,'A154SAHWB01BL000','SAH - WB1 BL',NULL,NULL,NULL,NULL,NULL,'PCS',435718.12,72,'072',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWK0100000',NULL,'A154SAHWK0100000','SAH - WK1',NULL,NULL,NULL,NULL,NULL,'PCS',349658.00,73,'073',0,'','R',0,'2025-03-27 10:59:01',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWR0100000',NULL,'A154SAHWR0100000','SAH - WR1',NULL,NULL,NULL,NULL,NULL,'PCS',649608.44,73,'073',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWT1BLR000',NULL,'A154SAHWT1BLR000','SAH - WT1 BLR',NULL,NULL,NULL,NULL,NULL,'PCS',530550.99,73,'073',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWV1WR0000',NULL,'A154SAHWV1WR0000','SAH - WV1 WR',NULL,NULL,NULL,NULL,NULL,'PCS',384942.87,73,'073',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAHWY0100000',NULL,'A154SAHWY0100000','SAH - WY1',NULL,NULL,NULL,NULL,NULL,'PCS',415438.38,73,'073',0,'','R',0,'2025-03-27 10:59:01',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAMHP02BRG00',NULL,'A154SAMHP02BRG00','SAM - HP2 BRG',NULL,NULL,NULL,NULL,NULL,'PCS',819834.79,73,'073',0,'','R',0,'2025-03-27 10:59:02',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAMW02000000',NULL,'A154SAMW02000000','SAM - W2',NULL,NULL,NULL,NULL,NULL,'PCS',260889.79,71,'071',0,'','R',0,'2025-03-27 10:59:02',37.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAMWP02BRG00',NULL,'A154SAMWP02BRG00','SAM - WP2 BRG',NULL,NULL,NULL,NULL,NULL,'PCS',570474.01,73,'073',0,'','R',0,'2025-03-27 10:59:02',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SAMWP03BL000',NULL,'A154SAMWP03BL000','SAM - WP3 BL',NULL,NULL,NULL,NULL,NULL,'PCS',515929.99,73,'073',0,'','R',0,'2025-03-27 10:59:02',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SASWH03TBLC',NULL,'A154SASWH03TBLC','SAS - WH3 T BLC',NULL,NULL,NULL,NULL,NULL,'PCS',683650.42,73,'073',0,'','R',0,'2025-03-27 10:59:03',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SASWH0500000',NULL,'A154SASWH0500000','SAS - WH5',NULL,NULL,NULL,NULL,NULL,'PCS',452405.90,72,'072',0,'','R',0,'2025-03-27 10:59:03',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SASWX03BLC00',NULL,'A154SASWX03BLC00','SAS - WX3 BLC',NULL,NULL,NULL,NULL,NULL,'PCS',400803.50,73,'073',0,'','R',0,'2025-03-27 10:59:03',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SASWX0500000',NULL,'A154SASWX0500000','SAS - WX5',NULL,NULL,NULL,NULL,NULL,'PCS',358158.78,72,'072',0,'','R',0,'2025-03-27 10:59:03',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A154SATH01BL0000',NULL,'A154SATH01BL0000','SAT - H1 BL',NULL,NULL,NULL,NULL,NULL,'PCS',343036.62,71,'071',0,'','R',0,'2025-03-27 10:59:03',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155IKF030000000',NULL,'A155IKF030000000','IKF - 03',NULL,NULL,NULL,NULL,NULL,'PCS',1488599.56,78,'078',0,'','R',0,'2025-03-27 10:58:43',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155IKF060000000',NULL,'A155IKF060000000','IKF - 06',NULL,NULL,NULL,NULL,NULL,'PCS',1183134.94,78,'078',0,'','R',0,'2025-03-27 10:58:43',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK01000000',NULL,'A155SAHK01000000','SAH - K1',NULL,NULL,NULL,NULL,NULL,'PCS',251716.41,71,'071',0,'','R',0,'2025-03-27 10:58:57',26.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK02000000',NULL,'A155SAHK02000000','SAH - K2',NULL,NULL,NULL,NULL,NULL,'PCS',256016.18,71,'071',0,'','R',0,'2025-03-27 10:58:57',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK02GBL000',NULL,'A155SAHK02GBL000','SAH - K2 GBL',NULL,NULL,NULL,NULL,NULL,'PCS',337650.43,72,'072',0,'','R',0,'2025-03-27 10:58:57',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK02GM0000',NULL,'A155SAHK02GM0000','SAH - K2 GM',NULL,NULL,NULL,NULL,NULL,'PCS',382880.02,72,'072',0,'','R',0,'2025-03-27 10:58:57',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK02T00000',NULL,'A155SAHK02T00000','SAH - K2 T',NULL,NULL,NULL,NULL,NULL,'PCS',382662.96,71,'071',0,'','R',0,'2025-03-27 10:58:57',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK03B00000',NULL,'A155SAHK03B00000','SAH - K3 B',NULL,NULL,NULL,NULL,NULL,'PCS',535803.36,71,'071',0,'','R',0,'2025-03-27 10:58:58',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK03BL0000',NULL,'A155SAHK03BL0000','SAH - K3 BL',NULL,NULL,NULL,NULL,NULL,'PCS',512137.96,71,'071',0,'','R',0,'2025-03-27 10:58:58',12.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK03G00000',NULL,'A155SAHK03G00000','SAH - K3 G',NULL,NULL,NULL,NULL,NULL,'PCS',525428.88,71,'071',0,'','R',0,'2025-03-27 10:58:58',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK04000000',NULL,'A155SAHK04000000','SAH - K4',NULL,NULL,NULL,NULL,NULL,'PCS',255092.50,73,'073',0,'','R',0,'2025-03-27 10:58:58',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHK04B00000',NULL,'A155SAHK04B00000','SAH - K4 B',NULL,NULL,NULL,NULL,NULL,'PCS',952502.70,73,'073',0,'','R',0,'2025-03-27 10:58:58',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHKC0100000',NULL,'A155SAHKC0100000','SAH - KC1',NULL,NULL,NULL,NULL,NULL,'PCS',1247490.35,73,'073',0,'','R',0,'2025-03-27 10:58:58',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHKP0100000',NULL,'A155SAHKP0100000','SAH - KP1',NULL,NULL,NULL,NULL,NULL,'PCS',575539.15,71,'071',0,'','R',0,'2025-03-27 10:58:58',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHKV1BG0000',NULL,'A155SAHKV1BG0000','SAH - KV1 BG',NULL,NULL,NULL,NULL,NULL,'PCS',573038.48,73,'073',0,'','R',0,'2025-03-27 10:58:58',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHKV1GM0000',NULL,'A155SAHKV1GM0000','SAH - KV1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',607585.53,73,'073',0,'','R',0,'2025-03-27 10:58:58',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAHKV1WR0000',NULL,'A155SAHKV1WR0000','SAH - KV1 WR',NULL,NULL,NULL,NULL,NULL,'PCS',543841.25,73,'073',0,'','R',0,'2025-03-27 10:58:59',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAMKP02BRG00',NULL,'A155SAMKP02BRG00','SAM - KP2 BRG',NULL,NULL,NULL,NULL,NULL,'PCS',1122711.43,73,'073',0,'','R',0,'2025-03-27 10:59:02',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAMKP03BL000',NULL,'A155SAMKP03BL000','SAM - KP3 BL',NULL,NULL,NULL,NULL,NULL,'PCS',1060714.43,73,'073',0,'','R',0,'2025-03-27 10:59:02',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SAMKP03GM000',NULL,'A155SAMKP03GM000','SAM - KP3 GM',NULL,NULL,NULL,NULL,NULL,'PCS',1131736.16,73,'073',0,'','R',0,'2025-03-27 10:59:02',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A155SATK01BL0000',NULL,'A155SATK01BL0000','SAT - K1 BL',NULL,NULL,NULL,NULL,NULL,'PCS',231849.90,71,'071',0,'','R',0,'2025-03-27 10:59:03',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS010000000',NULL,'A156MBS010000000','MBS - 1',NULL,NULL,NULL,NULL,NULL,'PCS',1059615.98,75,'075',0,'','R',0,'2025-03-27 10:58:47',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS040000000',NULL,'A156MBS040000000','MBS - 4',NULL,NULL,NULL,NULL,NULL,'PCS',1371142.16,74,'074',0,'','R',0,'2025-03-27 10:58:47',14.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS05BL00000',NULL,'A156MBS05BL00000','MBS - 5 BL',NULL,NULL,NULL,NULL,NULL,'PCS',1192516.40,75,'075',0,'','R',0,'2025-03-27 10:58:47',39.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS05BLC0000',NULL,'A156MBS05BLC0000','MBS - 5 BLC',NULL,NULL,NULL,NULL,NULL,'PCS',1056602.00,75,'075',0,'','R',0,'2025-03-27 10:58:47',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS05GM00000',NULL,'A156MBS05GM00000','MBS - 5 GM',NULL,NULL,NULL,NULL,NULL,'PCS',1321004.41,75,'075',0,'','R',0,'2025-03-27 10:58:47',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS06000000',NULL,'A156MBS06000000','MBS - 6',NULL,NULL,NULL,NULL,NULL,'PCS',785900.92,74,'074',0,'','R',0,'2025-03-27 10:58:48',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBS06BL00000',NULL,'A156MBS06BL00000','MBS - 6 BL',NULL,NULL,NULL,NULL,NULL,'PCS',964093.15,74,'074',0,'','R',0,'2025-03-27 10:58:48',27.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MBSM01GM0000',NULL,'A156MBSM01GM0000','MBS - M1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',1430474.99,76,'076',0,'','R',0,'2025-03-27 10:58:48',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MS0500000000',NULL,'A156MS0500000000','MS - 5',NULL,NULL,NULL,NULL,NULL,'PCS',1163890.21,74,'074',0,'','R',0,'2025-03-27 10:58:48',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MS06BL000000',NULL,'A156MS06BL000000','MS - 6 BL',NULL,NULL,NULL,NULL,NULL,'PCS',838472.03,74,'074',0,'','R',0,'2025-03-27 10:58:48',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A156MSC01GM00000',NULL,'A156MSC01GM00000','MSC - 01 GM',NULL,NULL,NULL,NULL,NULL,'PCS',2094211.04,74,'074',0,'','R',0,'2025-03-27 10:58:48',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SAHC04000000',NULL,'A157SAHC04000000','SAH - C4',NULL,NULL,NULL,NULL,NULL,'PCS',218310.65,73,'073',0,'','R',0,'2025-03-27 10:58:55',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SAHD02000000',NULL,'A157SAHD02000000','SAH - D2',NULL,NULL,NULL,NULL,NULL,'PCS',361733.43,71,'071',0,'','R',0,'2025-03-27 10:58:56',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SAHDV1BG0000',NULL,'A157SAHDV1BG0000','SAH - DV1 BG',NULL,NULL,NULL,NULL,NULL,'PCS',471316.32,73,'073',0,'','R',0,'2025-03-27 10:58:56',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SAHDV1GM0000',NULL,'A157SAHDV1GM0000','SAH - DV1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',464440.79,73,'073',0,'','R',0,'2025-03-27 10:58:56',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SASBV0200000',NULL,'A157SASBV0200000','SAS - BV2',NULL,NULL,NULL,NULL,NULL,'PCS',397010.42,72,'072',0,'','R',0,'2025-03-27 10:59:03',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SASBV0500000',NULL,'A157SASBV0500000','SAS - BV5',NULL,NULL,NULL,NULL,NULL,'PCS',401719.93,72,'072',0,'','R',0,'2025-03-27 10:59:03',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SASSV0500000',NULL,'A157SASSV0500000','SAS - SV5',NULL,NULL,NULL,NULL,NULL,'PCS',272545.53,72,'072',0,'','R',0,'2025-03-27 10:59:03',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A157SSV010000000',NULL,'A157SSV010000000','SSV 01',NULL,NULL,NULL,NULL,NULL,'PCS',193389.78,71,'071',0,'','R',0,'2025-03-27 10:59:14',29.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A159SAMGP03BL000',NULL,'A159SAMGP03BL000','SAM - GP3 BL',NULL,NULL,NULL,NULL,NULL,'PCS',3184402.82,73,'073',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A159SAMGP03GM000',NULL,'A159SAMGP03GM000','SAM - GP3 GM',NULL,NULL,NULL,NULL,NULL,'PCS',3253390.58,73,'073',0,'','R',0,'2025-03-27 10:59:01',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A159SAMGT0100000',NULL,'A159SAMGT0100000','SAM - GT1',NULL,NULL,NULL,NULL,NULL,'PCS',2021882.72,72,'072',0,'','R',0,'2025-03-27 10:59:02',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A159SAMGT01GM000',NULL,'A159SAMGT01GM000','SAM - GT1 GM',NULL,NULL,NULL,NULL,NULL,'PCS',2578314.87,72,'072',0,'','R',0,'2025-03-27 10:59:02',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A161SETW02000000',NULL,'A161SETW02000000','SET - W2',NULL,NULL,NULL,NULL,NULL,'PCS',1136367.29,42,'042',0,'','R',0,'2025-03-27 10:59:06',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A161SETW03000000',NULL,'A161SETW03000000','SET - W3',NULL,NULL,NULL,NULL,NULL,'PCS',1435915.53,42,'042',0,'','R',0,'2025-03-27 10:59:07',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A161SETW04000000',NULL,'A161SETW04000000','SET - W4',NULL,NULL,NULL,NULL,NULL,'PCS',2267564.67,42,'042',0,'','R',0,'2025-03-27 10:59:07',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A161SHTW01000000',NULL,'A161SHTW01000000','SHT - W1',NULL,NULL,NULL,NULL,NULL,'PCS',1446348.39,42,'042',0,'','R',0,'2025-03-27 10:59:09',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A161SHTW02000000',NULL,'A161SHTW02000000','SHT - W2',NULL,NULL,NULL,NULL,NULL,'PCS',2019668.90,42,'042',0,'','R',0,'2025-03-27 10:59:10',14.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A162SETT01000000',NULL,'A162SETT01000000','SET - T1',NULL,NULL,NULL,NULL,NULL,'PCS',790589.06,42,'042',0,'','R',0,'2025-03-27 10:59:06',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU0100000000',NULL,'A163RU0100000000','RU - 1',NULL,NULL,NULL,NULL,NULL,'PCS',1115969.31,42,'042',0,'','R',0,'2025-03-27 10:58:52',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU1000000000',NULL,'A163RU1000000000','RU - 10',NULL,NULL,NULL,NULL,NULL,'PCS',1014675.72,42,'042',0,'','R',0,'2025-03-27 10:58:52',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU1100000000',NULL,'A163RU1100000000','RU - 11',NULL,NULL,NULL,NULL,NULL,'PCS',691985.87,42,'042',0,'','R',0,'2025-03-27 10:58:52',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU1200000000',NULL,'A163RU1200000000','RU - 12',NULL,NULL,NULL,NULL,NULL,'PCS',690775.49,42,'042',0,'','R',0,'2025-03-27 10:58:52',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU1300000000',NULL,'A163RU1300000000','RU - 13',NULL,NULL,NULL,NULL,NULL,'PCS',700911.01,42,'042',0,'','R',0,'2025-03-27 10:58:52',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A163RU1400000000',NULL,'A163RU1400000000','RU - 14',NULL,NULL,NULL,NULL,NULL,'PCS',737263.54,42,'042',0,'','R',0,'2025-03-27 10:58:52',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A206FV0000O00050',NULL,'A206FV0000O00050','FV AER O 1/2',NULL,NULL,NULL,NULL,NULL,'PCS',68716.49,51,'051',0,'','R',0,'2025-03-27 10:58:38',63.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A206FV0000O00075',NULL,'A206FV0000O00075','FV AER O 3/4',NULL,NULL,NULL,NULL,NULL,'PCS',77559.32,51,'051',0,'','R',0,'2025-03-27 10:58:38',44.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A209SSV01C000000',NULL,'A209SSV01C000000','SSV 01C',NULL,NULL,NULL,NULL,NULL,'PCS',168202.93,35,'035',0,'','R',0,'2025-03-27 10:59:14',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A209SV0100000000',NULL,'A209SV0100000000','SV 01',NULL,NULL,NULL,NULL,NULL,'PCS',88691.01,35,'035',0,'','R',0,'2025-03-27 10:59:15',59.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A401ACP030100000',NULL,'A401ACP030100000','ACP 03-01',NULL,NULL,NULL,NULL,NULL,'PCS',82500.94,221,'221',0,'','R',0,'2025-03-27 10:58:19',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A401ACS0102BL000',NULL,'A401ACS0102BL000','ACS 01-02 BL',NULL,NULL,NULL,NULL,NULL,'PCS',150486.29,221,'221',0,'','R',0,'2025-03-27 10:58:20',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A401ACS0102GM000',NULL,'A401ACS0102GM000','ACS 01-02 GM',NULL,NULL,NULL,NULL,NULL,'PCS',168021.55,221,'221',0,'','R',0,'2025-03-27 10:58:20',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A401RBD340000000',NULL,'A401RBD340000000','RAILING BAR D-34',NULL,NULL,NULL,NULL,NULL,'PCS',140299.90,24,'024',0,'','R',0,'2025-03-27 10:58:51',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0104000000',NULL,'A402AC0104000000','AC 01-04',NULL,NULL,NULL,NULL,NULL,'PCS',55591.66,221,'221',0,'','R',0,'2025-03-27 10:58:18',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0202000000',NULL,'A402AC0202000000','AC 02-02',NULL,NULL,NULL,NULL,NULL,'PCS',199439.32,221,'221',0,'','R',0,'2025-03-27 10:58:18',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0204000000',NULL,'A402AC0204000000','AC 02-04',NULL,NULL,NULL,NULL,NULL,'PCS',82494.86,221,'221',0,'','R',0,'2025-03-27 10:58:18',21.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0210000000',NULL,'A402AC0210000000','AC 02-10',NULL,NULL,NULL,NULL,NULL,'PCS',130052.89,221,'221',0,'','R',0,'2025-03-27 10:58:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0216B00000',NULL,'A402AC0216B00000','AC 02-16B',NULL,NULL,NULL,NULL,NULL,'PCS',499534.65,221,'221',0,'','R',0,'2025-03-27 10:58:18',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402AC0304BL0000',NULL,'A402AC0304BL0000','AC 03-04 BL',NULL,NULL,NULL,NULL,NULL,'PCS',46373.50,221,'221',0,'','R',0,'2025-03-27 10:58:19',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402ACS0104BL000',NULL,'A402ACS0104BL000','ACS 01-04 BL',NULL,NULL,NULL,NULL,NULL,'PCS',60484.19,221,'221',0,'','R',0,'2025-03-27 10:58:20',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A402ACS0104GM000',NULL,'A402ACS0104GM000','ACS 01-04 GM',NULL,NULL,NULL,NULL,NULL,'PCS',63982.95,221,'221',0,'','R',0,'2025-03-27 10:58:20',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACB011000000',NULL,'A403ACB011000000','ACB 01-10',NULL,NULL,NULL,NULL,NULL,'PCS',152468.83,221,'221',0,'','R',0,'2025-03-27 10:58:19',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACB020900000',NULL,'A403ACB020900000','ACB 02-09',NULL,NULL,NULL,NULL,NULL,'PCS',114662.12,221,'221',0,'','R',0,'2025-03-27 10:58:19',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACP031400000',NULL,'A403ACP031400000','ACP 03-14',NULL,NULL,NULL,NULL,NULL,'PCS',77155.48,221,'221',0,'','R',0,'2025-03-27 10:58:19',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACS0109BL000',NULL,'A403ACS0109BL000','ACS 01-09 BL',NULL,NULL,NULL,NULL,NULL,'PCS',100470.54,221,'221',0,'','R',0,'2025-03-27 10:58:20',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACS0109GM000',NULL,'A403ACS0109GM000','ACS 01-09 GM',NULL,NULL,NULL,NULL,NULL,'PCS',124267.22,221,'221',0,'','R',0,'2025-03-27 10:58:20',12.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACS0110BL000',NULL,'A403ACS0110BL000','ACS 01-10 BL',NULL,NULL,NULL,NULL,NULL,'PCS',115329.97,221,'221',0,'','R',0,'2025-03-27 10:58:20',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACS0110GM000',NULL,'A403ACS0110GM000','ACS 01-10 GM',NULL,NULL,NULL,NULL,NULL,'PCS',154528.59,221,'221',0,'','R',0,'2025-03-27 10:58:20',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A403ACS0210BL000',NULL,'A403ACS0210BL000','ACS 02-10 BL',NULL,NULL,NULL,NULL,NULL,'PCS',126494.12,221,'221',0,'','R',0,'2025-03-27 10:58:21',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A404ACB0316BBL00',NULL,'A404ACB0316BBL00','ACB 03-16B BL',NULL,NULL,NULL,NULL,NULL,'PCS',439502.78,221,'221',0,'','R',0,'2025-03-27 10:58:19',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A404ACP011800000',NULL,'A404ACP011800000','ACP 01-18',NULL,NULL,NULL,NULL,NULL,'PCS',87640.28,221,'221',0,'','R',0,'2025-03-27 10:58:19',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A404ACS0116BBL00',NULL,'A404ACS0116BBL00','ACS 01-16B BL',NULL,NULL,NULL,NULL,NULL,'PCS',270198.47,221,'221',0,'','R',0,'2025-03-27 10:58:21',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A404ACS0116BGM00',NULL,'A404ACS0116BGM00','ACS 01-16B GM',NULL,NULL,NULL,NULL,NULL,'PCS',402302.20,221,'221',0,'','R',0,'2025-03-27 10:58:21',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A404ACS0116BGMSR',NULL,'A404ACS0116BGMSR','ACS 01-16B GM (SR)',NULL,NULL,NULL,NULL,NULL,'PCS',174447.12,221,'221',0,'','R',0,'2025-03-27 10:58:21',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A413SH000BS00125',NULL,'A413SH000BS00125','SIPHON BS 1 1/4',NULL,NULL,NULL,NULL,NULL,'PCS',238549.58,63,'063',0,'','R',0,'2025-03-27 10:59:10',154.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A413SH100BB00125',NULL,'A413SH100BB00125','SIPHON B-B 1 1/4',NULL,NULL,NULL,NULL,NULL,'PCS',281309.32,63,'063',0,'','R',0,'2025-03-27 10:59:10',90.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS1010000000',NULL,'A415KS1010000000','KS1 - 01',NULL,NULL,NULL,NULL,NULL,'PCS',1296560.29,271,'271',0,'','R',0,'2025-03-27 10:58:44',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS1020000000',NULL,'A415KS1020000000','KS1 - 02',NULL,NULL,NULL,NULL,NULL,'PCS',552659.52,271,'271',0,'','R',0,'2025-03-27 10:58:44',35.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS111BL00000',NULL,'A415KS111BL00000','KS1 - 11BL',NULL,NULL,NULL,NULL,NULL,'PCS',871264.12,272,'272',0,'','R',0,'2025-03-27 10:58:44',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS111G000000',NULL,'A415KS111G000000','KS1 - 11G',NULL,NULL,NULL,NULL,NULL,'PCS',870094.10,272,'272',0,'','R',0,'2025-03-27 10:58:44',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS111W000000',NULL,'A415KS111W000000','KS1 - 11W',NULL,NULL,NULL,NULL,NULL,'PCS',939425.52,272,'272',0,'','R',0,'2025-03-27 10:58:44',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS112BL00000',NULL,'A415KS112BL00000','KS1 - 12BL',NULL,NULL,NULL,NULL,NULL,'PCS',1080119.15,272,'272',0,'','R',0,'2025-03-27 10:58:44',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS112G000000',NULL,'A415KS112G000000','KS1 - 12G',NULL,NULL,NULL,NULL,NULL,'PCS',1085053.55,272,'272',0,'','R',0,'2025-03-27 10:58:44',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS113BL00000',NULL,'A415KS113BL00000','KS1 - 13BL',NULL,NULL,NULL,NULL,NULL,'PCS',1200484.19,272,'272',0,'','R',0,'2025-03-27 10:58:45',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS114BL00000',NULL,'A415KS114BL00000','KS1 - 14BL',NULL,NULL,NULL,NULL,NULL,'PCS',1287953.20,272,'272',0,'','R',0,'2025-03-27 10:58:45',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS114W000000',NULL,'A415KS114W000000','KS1 - 14W',NULL,NULL,NULL,NULL,NULL,'PCS',1384560.12,272,'272',0,'','R',0,'2025-03-27 10:58:45',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS115BL00000',NULL,'A415KS115BL00000','KS1 - 15BL',NULL,NULL,NULL,NULL,NULL,'PCS',1354291.54,272,'272',0,'','R',0,'2025-03-27 10:58:45',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS119BL00000',NULL,'A415KS119BL00000','KS1 - 19BL',NULL,NULL,NULL,NULL,NULL,'PCS',1123401.10,272,'272',0,'','R',0,'2025-03-27 10:58:45',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS125DC00000',NULL,'A415KS125DC00000','KS1 - 25DC',NULL,NULL,NULL,NULL,NULL,'PCS',1370610.82,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS126DG00000',NULL,'A415KS126DG00000','KS1 - 26DG',NULL,NULL,NULL,NULL,NULL,'PCS',1615177.12,272,'272',0,'','R',0,'2025-03-27 10:58:46',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS126W000000',NULL,'A415KS126W000000','KS1 - 26W',NULL,NULL,NULL,NULL,NULL,'PCS',1791764.15,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS207G000000',NULL,'A415KS207G000000','KS2 - 07G',NULL,NULL,NULL,NULL,NULL,'PCS',1295539.87,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS213B000000',NULL,'A415KS213B000000','KS2 - 13B',NULL,NULL,NULL,NULL,NULL,'PCS',1444722.98,272,'272',0,'','R',0,'2025-03-27 10:58:46',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS213DG00000',NULL,'A415KS213DG00000','KS2 - 13DG',NULL,NULL,NULL,NULL,NULL,'PCS',1397123.17,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS217BL00000',NULL,'A415KS217BL00000','KS2 - 17BL',NULL,NULL,NULL,NULL,NULL,'PCS',1437779.06,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A415KS222AB00000',NULL,'A415KS222AB00000','KS2 - 22AB',NULL,NULL,NULL,NULL,NULL,'PCS',1503116.07,272,'272',0,'','R',0,'2025-03-27 10:58:46',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1EW00000',NULL,'A425SFGB1EW00000','SFGB 1E W',NULL,NULL,NULL,NULL,NULL,'PCS',314335.34,224,'224',0,'','R',0,'2025-03-27 10:59:07',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1EWB0000',NULL,'A425SFGB1EWB0000','SFGB 1E WB',NULL,NULL,NULL,NULL,NULL,'PCS',295983.10,224,'224',0,'','R',0,'2025-03-27 10:59:07',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1FWB3500',NULL,'A425SFGB1FWB3500','SFGB 1F WB 35 CM',NULL,NULL,NULL,NULL,NULL,'PCS',109711.07,224,'224',0,'','R',0,'2025-03-27 10:59:07',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1FWG5300',NULL,'A425SFGB1FWG5300','SFGB 1F WG 53 CM',NULL,NULL,NULL,NULL,NULL,'PCS',115871.65,224,'224',0,'','R',0,'2025-03-27 10:59:07',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1FWO3500',NULL,'A425SFGB1FWO3500','SFGB 1F WO 35 CM',NULL,NULL,NULL,NULL,NULL,'PCS',76758.28,224,'224',0,'','R',0,'2025-03-27 10:59:07',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFGB1HW00000',NULL,'A425SFGB1HW00000','SFGB 1H W',NULL,NULL,NULL,NULL,NULL,'PCS',132759.32,224,'224',0,'','R',0,'2025-03-27 10:59:07',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A425SFUG1AW00000',NULL,'A425SFUG1AW00000','SFUG 1A W',NULL,NULL,NULL,NULL,NULL,'PCS',271317.84,224,'224',0,'','R',0,'2025-03-27 10:59:07',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A501WS27GM000000',NULL,'A501WS27GM000000','HEAD WS 27 GM',NULL,NULL,NULL,NULL,NULL,'PCS',354481.90,22,'022',0,'','R',0,'2025-03-27 10:58:40',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A517FHSC11BL0000',NULL,'A517FHSC11BL0000','FLEXIBLE HOSE SC 11 BL',NULL,NULL,NULL,NULL,NULL,'PCS',37268.00,23,'023',0,'','R',0,'2025-03-27 10:58:36',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526CT0300000000',NULL,'A526CT0300000000','CT - 03',NULL,NULL,NULL,NULL,NULL,'PCS',1511382.70,256,'256',0,'','R',0,'2025-03-27 10:58:26',19.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526FP01BL000000',NULL,'A526FP01BL000000','FP 01 BL',NULL,NULL,NULL,NULL,NULL,'PCS',220846.09,256,'256',0,'','R',0,'2025-03-27 10:58:36',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526FP01C0000000',NULL,'A526FP01C0000000','FP 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',207930.22,256,'256',0,'','R',0,'2025-03-27 10:58:36',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526FP02BL000000',NULL,'A526FP02BL000000','FP 02 BL',NULL,NULL,NULL,NULL,NULL,'PCS',194375.73,256,'256',0,'','R',0,'2025-03-27 10:58:37',25.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526FP02C0000000',NULL,'A526FP02C0000000','FP 02 C',NULL,NULL,NULL,NULL,NULL,'PCS',213629.94,256,'256',0,'','R',0,'2025-03-27 10:58:37',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A526WTTWC160TFF0',NULL,'A526WTTWC160TFF0','WATER TANK TWC - 16 TANPA FILL & FLUSH',NULL,NULL,NULL,NULL,NULL,'PCS',128282.01,254,'254',0,'','R',0,'2025-03-27 10:59:22',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A602ODL000000000',NULL,'A602ODL000000000','OUTER DOS ( L )',NULL,NULL,NULL,NULL,NULL,'PCS',10449.57,302,'302',0,'','R',0,'2025-03-27 10:58:50',34.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A602ODM000000000',NULL,'A602ODM000000000','OUTER DOS ( M )',NULL,NULL,NULL,NULL,NULL,'PCS',6064.97,302,'302',0,'','R',0,'2025-03-27 10:58:50',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A612GCA000000000',NULL,'A612GCA000000000','GUEST CARD AER',NULL,NULL,NULL,NULL,NULL,'PCS',172.00,310,'310',0,'','R',0,'2025-03-27 10:58:40',211.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A701HW02T0000000',NULL,'A701HW02T0000000','HW 02 T',NULL,NULL,NULL,NULL,NULL,'PCS',352943.56,251,'251',0,'','R',0,'2025-03-27 10:58:42',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A701HW0300000000',NULL,'A701HW0300000000','HW 03',NULL,NULL,NULL,NULL,NULL,'PCS',305895.48,251,'251',0,'','R',0,'2025-03-27 10:58:42',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A701HW0312000000',NULL,'A701HW0312000000','HW 03 12',NULL,NULL,NULL,NULL,NULL,'PCS',534527.28,251,'251',0,'','R',0,'2025-03-27 10:58:42',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A701HW0400000000',NULL,'A701HW0400000000','HW 04',NULL,NULL,NULL,NULL,NULL,'PCS',263513.56,251,'251',0,'','R',0,'2025-03-27 10:58:42',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A701HW0500000000',NULL,'A701HW0500000000','HW 05',NULL,NULL,NULL,NULL,NULL,'PCS',339329.47,251,'251',0,'','R',0,'2025-03-27 10:58:42',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB11C000000',NULL,'A702CWB11C000000','CWB 11-C',NULL,NULL,NULL,NULL,NULL,'PCS',288515.64,251,'251',0,'','R',0,'2025-03-27 10:58:26',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB11C010000',NULL,'A702CWB11C010000','CWB 11-C 01',NULL,NULL,NULL,NULL,NULL,'PCS',618322.95,251,'251',0,'','R',0,'2025-03-27 10:58:27',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB11C020000',NULL,'A702CWB11C020000','CWB 11-C 02',NULL,NULL,NULL,NULL,NULL,'PCS',617119.59,251,'251',0,'','R',0,'2025-03-27 10:58:27',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C000000',NULL,'A702CWB33C000000','CWB 33-C',NULL,NULL,NULL,NULL,NULL,'PCS',275990.26,251,'251',0,'','R',0,'2025-03-27 10:58:27',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C010000',NULL,'A702CWB33C010000','CWB 33-C 01',NULL,NULL,NULL,NULL,NULL,'PCS',502511.90,251,'251',0,'','R',0,'2025-03-27 10:58:27',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C070000',NULL,'A702CWB33C070000','CWB 33-C 07',NULL,NULL,NULL,NULL,NULL,'PCS',466762.21,251,'251',0,'','R',0,'2025-03-27 10:58:27',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C080000',NULL,'A702CWB33C080000','CWB 33-C 08',NULL,NULL,NULL,NULL,NULL,'PCS',466920.77,251,'251',0,'','R',0,'2025-03-27 10:58:27',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C120000',NULL,'A702CWB33C120000','CWB 33-C 12',NULL,NULL,NULL,NULL,NULL,'PCS',364878.19,251,'251',0,'','R',0,'2025-03-27 10:58:27',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C410000',NULL,'A702CWB33C410000','CWB 33-C 41',NULL,NULL,NULL,NULL,NULL,'PCS',475391.74,251,'251',0,'','R',0,'2025-03-27 10:58:28',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB33C420000',NULL,'A702CWB33C420000','CWB 33-C 42',NULL,NULL,NULL,NULL,NULL,'PCS',407269.77,251,'251',0,'','R',0,'2025-03-27 10:58:28',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB34O000000',NULL,'A702CWB34O000000','CWB 34-O',NULL,NULL,NULL,NULL,NULL,'PCS',300571.50,251,'251',0,'','R',0,'2025-03-27 10:58:28',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB34O410000',NULL,'A702CWB34O410000','CWB 34-O 41',NULL,NULL,NULL,NULL,NULL,'PCS',424975.26,251,'251',0,'','R',0,'2025-03-27 10:58:28',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB34O420000',NULL,'A702CWB34O420000','CWB 34-O 42',NULL,NULL,NULL,NULL,NULL,'PCS',424364.72,251,'251',0,'','R',0,'2025-03-27 10:58:28',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB35R000000',NULL,'A702CWB35R000000','CWB 35-R',NULL,NULL,NULL,NULL,NULL,'PCS',295371.55,251,'251',0,'','R',0,'2025-03-27 10:58:28',12.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB35R070000',NULL,'A702CWB35R070000','CWB 35-R 07',NULL,NULL,NULL,NULL,NULL,'PCS',659093.54,251,'251',0,'','R',0,'2025-03-27 10:58:28',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB36O000000',NULL,'A702CWB36O000000','CWB 36-O',NULL,NULL,NULL,NULL,NULL,'PCS',283928.90,251,'251',0,'','R',0,'2025-03-27 10:58:28',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB37R000000',NULL,'A702CWB37R000000','CWB 37-R',NULL,NULL,NULL,NULL,NULL,'PCS',684202.47,251,'251',0,'','R',0,'2025-03-27 10:58:29',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB38C000000',NULL,'A702CWB38C000000','CWB 38-C',NULL,NULL,NULL,NULL,NULL,'PCS',392233.01,251,'251',0,'','R',0,'2025-03-27 10:58:29',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB39R000000',NULL,'A702CWB39R000000','CWB 39-R',NULL,NULL,NULL,NULL,NULL,'PCS',494851.60,251,'251',0,'','R',0,'2025-03-27 10:58:29',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB40R000000',NULL,'A702CWB40R000000','CWB 40-R',NULL,NULL,NULL,NULL,NULL,'PCS',517674.68,251,'251',0,'','R',0,'2025-03-27 10:58:29',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB45O000000',NULL,'A702CWB45O000000','CWB 45-O',NULL,NULL,NULL,NULL,NULL,'PCS',363100.75,251,'251',0,'','R',0,'2025-03-27 10:58:29',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB46O000000',NULL,'A702CWB46O000000','CWB 46-O',NULL,NULL,NULL,NULL,NULL,'PCS',411819.44,251,'251',0,'','R',0,'2025-03-27 10:58:30',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB47R000000',NULL,'A702CWB47R000000','CWB 47-R',NULL,NULL,NULL,NULL,NULL,'PCS',361441.82,251,'251',0,'','R',0,'2025-03-27 10:58:30',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB48R000000',NULL,'A702CWB48R000000','CWB 48-R',NULL,NULL,NULL,NULL,NULL,'PCS',486516.79,251,'251',0,'','R',0,'2025-03-27 10:58:30',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB51O340000',NULL,'A702CWB51O340000','CWB 51-O 34',NULL,NULL,NULL,NULL,NULL,'PCS',1745786.32,251,'251',0,'','R',0,'2025-03-27 10:58:30',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWB55O060000',NULL,'A702CWB55O060000','CWB 55-O 06',NULL,NULL,NULL,NULL,NULL,'PCS',636570.67,251,'251',0,'','R',0,'2025-03-27 10:58:30',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH10R000000',NULL,'A702CWH10R000000','CWH 10-R',NULL,NULL,NULL,NULL,NULL,'PCS',313022.19,251,'251',0,'','R',0,'2025-03-27 10:58:30',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH14C000000',NULL,'A702CWH14C000000','CWH 14-C',NULL,NULL,NULL,NULL,NULL,'PCS',268137.04,251,'251',0,'','R',0,'2025-03-27 10:58:30',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH18R000000',NULL,'A702CWH18R000000','CWH 18-R',NULL,NULL,NULL,NULL,NULL,'PCS',278153.95,251,'251',0,'','R',0,'2025-03-27 10:58:30',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH19R000000',NULL,'A702CWH19R000000','CWH 19-R',NULL,NULL,NULL,NULL,NULL,'PCS',285685.35,251,'251',0,'','R',0,'2025-03-27 10:58:30',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH20R000000',NULL,'A702CWH20R000000','CWH 20-R',NULL,NULL,NULL,NULL,NULL,'PCS',318376.08,251,'251',0,'','R',0,'2025-03-27 10:58:31',12.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH21R000000',NULL,'A702CWH21R000000','CWH 21-R',NULL,NULL,NULL,NULL,NULL,'PCS',307099.15,251,'251',0,'','R',0,'2025-03-27 10:58:31',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH22R000000',NULL,'A702CWH22R000000','CWH 22-R',NULL,NULL,NULL,NULL,NULL,'PCS',381571.59,251,'251',0,'','R',0,'2025-03-27 10:58:31',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH25R000000',NULL,'A702CWH25R000000','CWH 25-R',NULL,NULL,NULL,NULL,NULL,'PCS',320768.08,251,'251',0,'','R',0,'2025-03-27 10:58:31',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH26R000000',NULL,'A702CWH26R000000','CWH 26-R',NULL,NULL,NULL,NULL,NULL,'PCS',443061.15,251,'251',0,'','R',0,'2025-03-27 10:58:31',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702CWH27R100000',NULL,'A702CWH27R100000','CWH 27-R 10',NULL,NULL,NULL,NULL,NULL,'PCS',613710.06,251,'251',0,'','R',0,'2025-03-27 10:58:31',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702UCW05AR00000',NULL,'A702UCW05AR00000','UCW 05A-R',NULL,NULL,NULL,NULL,NULL,'PCS',355805.95,251,'251',0,'','R',0,'2025-03-27 10:59:19',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702UCW05R000000',NULL,'A702UCW05R000000','UCW 05-R',NULL,NULL,NULL,NULL,NULL,'PCS',355805.95,251,'251',0,'','R',0,'2025-03-27 10:59:19',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A702UCW06O000000',NULL,'A702UCW06O000000','UCW 06-O',NULL,NULL,NULL,NULL,NULL,'PCS',223108.23,251,'251',0,'','R',0,'2025-03-27 10:59:19',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A703PW0500000000',NULL,'A703PW0500000000','PW 05',NULL,NULL,NULL,NULL,NULL,'PCS',1525952.68,251,'251',0,'','R',0,'2025-03-27 10:58:51',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A706HU0400000000',NULL,'A706HU0400000000','HU 04',NULL,NULL,NULL,NULL,NULL,'PCS',627649.59,252,'252',0,'','R',0,'2025-03-27 10:58:42',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A706HU0800000000',NULL,'A706HU0800000000','HU 08',NULL,NULL,NULL,NULL,NULL,'PCS',718201.56,252,'252',0,'','R',0,'2025-03-27 10:58:42',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A706HU0900000000',NULL,'A706HU0900000000','HU 09',NULL,NULL,NULL,NULL,NULL,'PCS',806919.42,252,'252',0,'','R',0,'2025-03-27 10:58:42',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A713BTH121100000',NULL,'A713BTH121100000','BTH - 12 11',NULL,NULL,NULL,NULL,NULL,'PCS',12328330.99,257,'257',0,'','R',0,'2025-03-27 10:58:26',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TBTWC0200000',NULL,'A716TBTWC0200000','TOILET BOWL TWC - 02',NULL,NULL,NULL,NULL,NULL,'PCS',451302.57,254,'254',0,'','R',0,'2025-03-27 10:59:18',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TSC040000000',NULL,'A716TSC040000000','TSC - 04',NULL,NULL,NULL,NULL,NULL,'PCS',1240678.09,254,'254',0,'','R',0,'2025-03-27 10:59:19',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TWC010000000',NULL,'A716TWC010000000','TWC - 01',NULL,NULL,NULL,NULL,NULL,'PCS',602486.92,254,'254',0,'','R',0,'2025-03-27 10:59:19',58.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TWC020000000',NULL,'A716TWC020000000','TWC - 02',NULL,NULL,NULL,NULL,NULL,'PCS',805600.50,254,'254',0,'','R',0,'2025-03-27 10:59:19',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TWC090000000',NULL,'A716TWC090000000','TWC - 09',NULL,NULL,NULL,NULL,NULL,'PCS',524133.77,254,'254',0,'','R',0,'2025-03-27 10:59:19',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A716TWC160000000',NULL,'A716TWC160000000','TWC - 16',NULL,NULL,NULL,NULL,NULL,'PCS',625501.78,254,'254',0,'','R',0,'2025-03-27 10:59:19',128.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717ESC010000000',NULL,'A717ESC010000000','ESC - 01',NULL,NULL,NULL,NULL,NULL,'PCS',1335099.54,254,'254',0,'','R',0,'2025-03-27 10:58:34',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717ESC030000000',NULL,'A717ESC030000000','ESC - 03',NULL,NULL,NULL,NULL,NULL,'PCS',1474825.57,254,'254',0,'','R',0,'2025-03-27 10:58:35',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717HWC080000000',NULL,'A717HWC080000000','HWC - 08',NULL,NULL,NULL,NULL,NULL,'PCS',972880.55,254,'254',0,'','R',0,'2025-03-27 10:58:43',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717HWC090000000',NULL,'A717HWC090000000','HWC - 09',NULL,NULL,NULL,NULL,NULL,'PCS',1098200.13,254,'254',0,'','R',0,'2025-03-27 10:58:43',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717HWC160100000',NULL,'A717HWC160100000','HWC - 16 01',NULL,NULL,NULL,NULL,NULL,'PCS',9470046.55,255,'255',0,'','R',0,'2025-03-27 10:58:43',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717ISC010000000',NULL,'A717ISC010000000','ISC - 01',NULL,NULL,NULL,NULL,NULL,'PCS',7270816.96,255,'255',0,'','R',0,'2025-03-27 10:58:43',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717ISC040000000',NULL,'A717ISC040000000','ISC - 04',NULL,NULL,NULL,NULL,NULL,'PCS',6054807.59,255,'255',0,'','R',0,'2025-03-27 10:58:43',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC010000000',NULL,'A717OSC010000000','OSC - 01',NULL,NULL,NULL,NULL,NULL,'PCS',1168595.67,254,'254',0,'','R',0,'2025-03-27 10:58:49',29.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC020000000',NULL,'A717OSC020000000','OSC - 02',NULL,NULL,NULL,NULL,NULL,'PCS',1061838.86,254,'254',0,'','R',0,'2025-03-27 10:58:49',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC050000000',NULL,'A717OSC050000000','OSC - 05',NULL,NULL,NULL,NULL,NULL,'PCS',1326494.85,254,'254',0,'','R',0,'2025-03-27 10:58:49',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC060000000',NULL,'A717OSC060000000','OSC - 06',NULL,NULL,NULL,NULL,NULL,'PCS',993272.84,254,'254',0,'','R',0,'2025-03-27 10:58:49',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC120000000',NULL,'A717OSC120000000','OSC - 12',NULL,NULL,NULL,NULL,NULL,'PCS',1282924.51,254,'254',0,'','R',0,'2025-03-27 10:58:50',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC130000000',NULL,'A717OSC130000000','OSC - 13',NULL,NULL,NULL,NULL,NULL,'PCS',1203376.84,254,'254',0,'','R',0,'2025-03-27 10:58:50',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC140000000',NULL,'A717OSC140000000','OSC - 14',NULL,NULL,NULL,NULL,NULL,'PCS',1279306.52,254,'254',0,'','R',0,'2025-03-27 10:58:50',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC150000000',NULL,'A717OSC150000000','OSC - 15',NULL,NULL,NULL,NULL,NULL,'PCS',1011130.46,254,'254',0,'','R',0,'2025-03-27 10:58:50',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC220000000',NULL,'A717OSC220000000','OSC - 22',NULL,NULL,NULL,NULL,NULL,'PCS',1107155.55,254,'254',0,'','R',0,'2025-03-27 10:58:50',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A717OSC230000000',NULL,'A717OSC230000000','OSC - 23',NULL,NULL,NULL,NULL,NULL,'PCS',1094576.50,254,'254',0,'','R',0,'2025-03-27 10:58:50',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729BT201C000000',NULL,'A729BT201C000000','BT2 - 01C',NULL,NULL,NULL,NULL,NULL,'PCS',26459.53,256,'256',0,'','R',0,'2025-03-27 10:58:26',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729FL0100000000',NULL,'A729FL0100000000','FL - 01',NULL,NULL,NULL,NULL,NULL,'PCS',61313.41,256,'256',0,'','R',0,'2025-03-27 10:58:36',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729FL0200000000',NULL,'A729FL0200000000','FL - 02',NULL,NULL,NULL,NULL,NULL,'PCS',59426.76,256,'256',0,'','R',0,'2025-03-27 10:58:36',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729FL0300000000',NULL,'A729FL0300000000','FL - 03',NULL,NULL,NULL,NULL,NULL,'PCS',62964.32,256,'256',0,'','R',0,'2025-03-27 10:58:36',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC0100000000',NULL,'A729TC0100000000','TC - 01',NULL,NULL,NULL,NULL,NULL,'PCS',430411.34,256,'256',0,'','R',0,'2025-03-27 10:59:17',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC0200000000',NULL,'A729TC0200000000','TC - 02',NULL,NULL,NULL,NULL,NULL,'PCS',439995.61,256,'256',0,'','R',0,'2025-03-27 10:59:17',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC1000000000',NULL,'A729TC1000000000','TC - 10',NULL,NULL,NULL,NULL,NULL,'PCS',194468.18,256,'256',0,'','R',0,'2025-03-27 10:59:17',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC1200000000',NULL,'A729TC1200000000','TC - 12',NULL,NULL,NULL,NULL,NULL,'PCS',192528.41,256,'256',0,'','R',0,'2025-03-27 10:59:17',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC1300000000',NULL,'A729TC1300000000','TC - 13',NULL,NULL,NULL,NULL,NULL,'PCS',196266.05,256,'256',0,'','R',0,'2025-03-27 10:59:17',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC1400000000',NULL,'A729TC1400000000','TC - 14',NULL,NULL,NULL,NULL,NULL,'PCS',117775.68,256,'256',0,'','R',0,'2025-03-27 10:59:17',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A729TC1600000000',NULL,'A729TC1600000000','TC - 16',NULL,NULL,NULL,NULL,NULL,'PCS',402770.46,256,'256',0,'','R',0,'2025-03-27 10:59:17',61.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A902MFHTMG000000',NULL,'A902MFHTMG000000','MICROFIBER FACE & HAIR TOWEL AER MISK GRAVEL',NULL,NULL,NULL,NULL,NULL,'PCS',29597.00,310,'310',0,'','R',0,'2025-03-27 10:58:48',26.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A902MFHTSI000000',NULL,'A902MFHTSI000000','MICROFIBER FACE & HAIR TOWEL AER SILK IVORY',NULL,NULL,NULL,NULL,NULL,'PCS',29598.00,310,'310',0,'','R',0,'2025-03-27 10:58:48',67.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('A902TKA304012BL0',NULL,'A902TKA304012BL0','TAS KAIN AER 30X40X12 HITAM',NULL,NULL,NULL,NULL,NULL,'PCS',5598.98,310,'310',0,'','R',0,'2025-03-27 10:59:17',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('C207APB200000004',NULL,'C207APB200000004','VENBRITE ALKALI PRIMER B2000 4 KG',NULL,NULL,NULL,NULL,NULL,'PAIL',94256.76,241,'241',0,'','R',0,'2025-03-27 10:59:20',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('C302BC3114S00001',NULL,'C302BC3114S00001','VENDOMAIN PRIMER EPOXY BLACK C3114 1 L SET',NULL,NULL,NULL,NULL,NULL,'KLG',55495.50,241,'241',0,'','R',0,'2025-03-27 10:59:20',60.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('C302LGC3108S0001',NULL,'C302LGC3108S0001','VENDOMAIN PRIMER EPOXY LIGHT GREY C3108 1 L SET',NULL,NULL,NULL,NULL,NULL,'KLG',55495.50,241,'241',0,'','R',0,'2025-03-27 10:59:20',40.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('C302WC3003S00001',NULL,'C302WC3003S00001','VENDOMAIN PRIMER EPOXY WHITE C3003 1 L SET',NULL,NULL,NULL,NULL,NULL,'KLG',55495.50,241,'241',0,'','R',0,'2025-03-27 10:59:20',17.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('C402LGN101100020',NULL,'C402LGN101100020','VENDOPROOF LIGHT GREY N1011 20 KG',NULL,NULL,NULL,NULL,NULL,'PAIL',797297.29,241,'241',0,'','R',0,'2025-03-27 10:59:20',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I112W5KSS0000000',NULL,'I112W5KSS0000000','W 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',53273.28,113,'113',0,'','R',0,'2025-03-27 10:59:21',18.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I112W5L000Z00000',NULL,'I112W5L000Z00000','W 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',36882.93,111,'111',0,'','R',0,'2025-03-27 10:59:21',145.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I112W5PBL0000000',NULL,'I112W5PBL0000000','W 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',122981.82,112,'112',0,'','R',0,'2025-03-27 10:59:21',57.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I112W9G000Z00000',NULL,'I112W9G000Z00000','W 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',40013.06,111,'111',0,'','R',0,'2025-03-27 10:59:22',62.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113SH5JSS000000',NULL,'I113SH5JSS000000','SH 5J SS',NULL,NULL,NULL,NULL,NULL,'PCS',32425.31,113,'113',0,'','R',0,'2025-03-27 10:59:08',120.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113SH5KSS000000',NULL,'I113SH5KSS000000','SH 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',23397.83,113,'113',0,'','R',0,'2025-03-27 10:59:08',53.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113SH5LZ0000000',NULL,'I113SH5LZ0000000','SH 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',26789.04,111,'111',0,'','R',0,'2025-03-27 10:59:08',56.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113SH5PBL000000',NULL,'I113SH5PBL000000','SH 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',58431.17,112,'112',0,'','R',0,'2025-03-27 10:59:08',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113SH9GZ0000000',NULL,'I113SH9GZ0000000','SH 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',29888.59,111,'111',0,'','R',0,'2025-03-27 10:59:08',100.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113TA5JSS000000',NULL,'I113TA5JSS000000','TA 5J SS',NULL,NULL,NULL,NULL,NULL,'PCS',36872.06,113,'113',0,'','R',0,'2025-03-27 10:59:16',134.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113TA5L00Z00000',NULL,'I113TA5L00Z00000','TA 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',26318.06,111,'111',0,'','R',0,'2025-03-27 10:59:16',72.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113TA5M00Z00000',NULL,'I113TA5M00Z00000','TA 5M Z',NULL,NULL,NULL,NULL,NULL,'PCS',28478.89,111,'111',0,'','R',0,'2025-03-27 10:59:16',129.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113TA5PBL000000',NULL,'I113TA5PBL000000','TA 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',59803.73,112,'112',0,'','R',0,'2025-03-27 10:59:16',34.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I113TA9G00Z00000',NULL,'I113TA9G00Z00000','TA 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',31060.38,111,'111',0,'','R',0,'2025-03-27 10:59:16',44.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114A5KSS0000000',NULL,'I114A5KSS0000000','A 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',55028.64,113,'113',0,'','R',0,'2025-03-22 09:41:51',2397.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114A5L000Z00000',NULL,'I114A5L000Z00000','A 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',39190.04,111,'111',0,'','R',0,'2025-03-22 09:41:51',2937.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114A5M000Z00000',NULL,'I114A5M000Z00000','A 5M Z',NULL,NULL,NULL,NULL,NULL,'PCS',41009.20,111,'111',0,'','R',0,'2025-03-27 10:58:17',103.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114A5PBL0000000',NULL,'I114A5PBL0000000','A 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',103126.71,112,'112',0,'','R',0,'2025-03-27 10:58:17',7.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114A9G000Z00000',NULL,'I114A9G000Z00000','A 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',43577.19,111,'111',0,'','R',0,'2025-03-27 10:58:18',26.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114V5KSS0000000',NULL,'I114V5KSS0000000','V 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',55067.35,113,'113',0,'','R',0,'2025-03-27 10:59:20',34.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I114V5PBL0000000',NULL,'I114V5PBL0000000','V 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',118786.50,112,'112',0,'','R',0,'2025-03-27 10:59:20',68.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I116D5KSS0000000',NULL,'I116D5KSS0000000','D 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',76722.99,113,'113',0,'','R',0,'2025-03-27 10:58:31',62.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I116D5L000Z00000',NULL,'I116D5L000Z00000','D 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',48359.75,111,'111',0,'','R',0,'2025-03-27 10:58:32',118.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I116D5M000Z00000',NULL,'I116D5M000Z00000','D 5M Z',NULL,NULL,NULL,NULL,NULL,'PCS',50560.51,111,'111',0,'','R',0,'2025-03-27 10:58:32',95.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I116D5PBL0000000',NULL,'I116D5PBL0000000','D 5P BL',NULL,NULL,NULL,NULL,NULL,'PCS',129726.89,112,'112',0,'','R',0,'2025-03-27 10:58:32',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I116D9G000Z00000',NULL,'I116D9G000Z00000','D 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',51495.30,111,'111',0,'','R',0,'2025-03-22 09:42:30',29.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5JSS0000000',NULL,'I117S5JSS0000000','S 5J SS',NULL,NULL,NULL,NULL,NULL,'PCS',44203.41,113,'113',0,'','R',0,'2025-03-27 10:58:52',27.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5KSS0000000',NULL,'I117S5KSS0000000','S 5K SS',NULL,NULL,NULL,NULL,NULL,'PCS',40010.91,113,'113',0,'','R',0,'2025-03-27 10:58:52',154.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5LZ00000000',NULL,'I117S5LZ00000000','S 5L Z',NULL,NULL,NULL,NULL,NULL,'PCS',29701.85,111,'111',0,'','R',0,'2025-03-27 10:58:52',50.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5MZ00000000',NULL,'I117S5MZ00000000','S 5M Z',NULL,NULL,NULL,NULL,NULL,'PCS',31980.35,111,'111',0,'','R',0,'2025-03-27 10:58:53',157.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5P000FBL000',NULL,'I117S5P000FBL000','S 5P FBL',NULL,NULL,NULL,NULL,NULL,'PCS',67666.18,112,'112',0,'','R',0,'2025-03-27 10:58:53',19.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S5P000NBL000',NULL,'I117S5P000NBL000','S 5P NBL',NULL,NULL,NULL,NULL,NULL,'PCS',69592.91,112,'112',0,'','R',0,'2025-03-27 10:58:53',12.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I117S9GZ00000000',NULL,'I117S9GZ00000000','S 9G Z',NULL,NULL,NULL,NULL,NULL,'PCS',33111.16,111,'111',0,'','R',0,'2025-03-27 10:58:53',49.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I118BC1000B00050',NULL,'I118BC1000B00050','BC 01 1/2 B',NULL,NULL,NULL,NULL,NULL,'PCS',12817.60,111,'111',0,'','R',0,'2025-03-27 10:58:24',295.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I118BC1000B00075',NULL,'I118BC1000B00075','BC 01 3/4 B',NULL,NULL,NULL,NULL,NULL,'PCS',13922.49,111,'111',0,'','R',0,'2025-03-27 10:58:25',175.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I121HS30001W0000',NULL,'I121HS30001W0000','HS 3 - 1W',NULL,NULL,NULL,NULL,NULL,'PCS',63409.00,101,'101',0,'','R',0,'2025-03-27 10:58:42',125.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I121HS40003W0000',NULL,'I121HS40003W0000','HS 4 - 3W',NULL,NULL,NULL,NULL,NULL,'PCS',64679.58,101,'101',0,'','R',0,'2025-03-27 10:58:42',106.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I121HS50001WBL00',NULL,'I121HS50001WBL00','HS 5 - 1WBL',NULL,NULL,NULL,NULL,NULL,'PCS',66797.08,101,'101',0,'','R',0,'2025-03-27 10:58:42',13.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I122BD0300W00000',NULL,'I122BD0300W00000','BD 03 W',NULL,NULL,NULL,NULL,NULL,'PCS',43429.48,103,'103',0,'','R',0,'2025-03-27 10:58:25',69.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I122BD0400C00000',NULL,'I122BD0400C00000','BD 04 C',NULL,NULL,NULL,NULL,NULL,'PCS',53748.08,103,'103',0,'','R',0,'2025-03-27 10:58:25',198.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I122BD0400W00000',NULL,'I122BD0400W00000','BD 04 W',NULL,NULL,NULL,NULL,NULL,'PCS',40733.36,103,'103',0,'','R',0,'2025-03-27 10:58:25',52.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I122BD0500BL0000',NULL,'I122BD0500BL0000','BD 05 BL',NULL,NULL,NULL,NULL,NULL,'PCS',66936.27,103,'103',0,'','R',0,'2025-03-27 10:58:25',113.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I122BD0500W00000',NULL,'I122BD0500W00000','BD 05 W',NULL,NULL,NULL,NULL,NULL,'PCS',47025.24,103,'103',0,'','R',0,'2025-03-27 10:58:25',99.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I123WS03IBL00000',NULL,'I123WS03IBL00000','WS 03 I BL',NULL,NULL,NULL,NULL,NULL,'PCS',57911.27,102,'102',0,'','R',0,'2025-03-27 10:59:24',19.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I125DRS01IBL0000',NULL,'I125DRS01IBL0000','DRS 01I BL',NULL,NULL,NULL,NULL,NULL,'PCS',612443.18,105,'105',0,'','R',0,'2025-03-27 10:58:33',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I125DRS01IC00000',NULL,'I125DRS01IC00000','DRS 01I C',NULL,NULL,NULL,NULL,NULL,'PCS',484866.89,105,'105',0,'','R',0,'2025-03-27 10:58:33',21.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I132SA3000SS0000',NULL,'I132SA3000SS0000','SA 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',11719.72,131,'131',0,'','R',0,'2025-03-27 10:58:53',87.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I132SA4000SS0000',NULL,'I132SA4000SS0000','SA 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',13327.23,131,'131',0,'','R',0,'2025-03-27 10:58:53',56.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I132SA5000SS0000',NULL,'I132SA5000SS0000','SA 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',14920.35,131,'131',0,'','R',0,'2025-03-27 10:58:54',98.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I133SN3000SS0000',NULL,'I133SN3000SS0000','SN 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',13603.46,131,'131',0,'','R',0,'2025-03-27 10:59:12',159.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I133SN4000SS0000',NULL,'I133SN4000SS0000','SN 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',15733.76,131,'131',0,'','R',0,'2025-03-27 10:59:12',339.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I133SN5000SS0000',NULL,'I133SN5000SS0000','SN 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',17364.84,131,'131',0,'','R',0,'2025-03-27 10:59:12',125.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I134SW3000SS0000',NULL,'I134SW3000SS0000','SW 30 SS',NULL,NULL,NULL,NULL,NULL,'PCS',10671.06,131,'131',0,'','R',0,'2025-03-27 10:59:15',122.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I134SW4000SS0000',NULL,'I134SW4000SS0000','SW 40 SS',NULL,NULL,NULL,NULL,NULL,'PCS',12127.95,131,'131',0,'','R',0,'2025-03-27 10:59:15',148.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I134SW5000SS0000',NULL,'I134SW5000SS0000','SW 50 SS',NULL,NULL,NULL,NULL,NULL,'PCS',14001.88,131,'131',0,'','R',0,'2025-03-27 10:59:16',108.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141FS2SS0000000',NULL,'I141FS2SS0000000','FS 02 SS',NULL,NULL,NULL,NULL,NULL,'PCS',7231.92,83,'083',0,'','R',0,'2025-03-27 10:58:37',157.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141FS4SS0000000',NULL,'I141FS4SS0000000','FS 04 SS',NULL,NULL,NULL,NULL,NULL,'PCS',7149.11,83,'083',0,'','R',0,'2025-03-27 10:58:37',59.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141NFS4SSK20100',NULL,'I141NFS4SSK20100','NFS 04 SSK 201',NULL,NULL,NULL,NULL,NULL,'PCS',26145.96,83,'083',0,'','R',0,'2025-03-27 10:58:49',202.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SACHR2000000',NULL,'I141SACHR2000000','SA CHROME 02',NULL,NULL,NULL,NULL,NULL,'PCS',76635.75,82,'082',0,'','R',0,'2025-03-27 10:58:54',82.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SACHR2K00000',NULL,'I141SACHR2K00000','SA CHROME 02 K',NULL,NULL,NULL,NULL,NULL,'PCS',96788.80,82,'082',0,'','R',0,'2025-03-27 10:58:54',102.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SPLASKB00000',NULL,'I141SPLASKB00000','SPLAST K - B',NULL,NULL,NULL,NULL,NULL,'PCS',8274.94,81,'081',0,'','R',0,'2025-03-27 10:59:13',76.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SPLASKC00000',NULL,'I141SPLASKC00000','SPLAST K - C',NULL,NULL,NULL,NULL,NULL,'PCS',8267.33,81,'081',0,'','R',0,'2025-03-27 10:59:13',104.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SPLASKG00000',NULL,'I141SPLASKG00000','SPLAST K - G',NULL,NULL,NULL,NULL,NULL,'PCS',8274.46,81,'081',0,'','R',0,'2025-03-27 10:59:14',211.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I141SPLASKW00000',NULL,'I141SPLASKW00000','SPLAST K - W',NULL,NULL,NULL,NULL,NULL,'PCS',8268.28,81,'081',0,'','R',0,'2025-03-27 10:59:14',77.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I145RS3SS0000000',NULL,'I145RS3SS0000000','RS 03 SS',NULL,NULL,NULL,NULL,NULL,'PCS',13421.58,83,'083',0,'','R',0,'2025-03-27 10:58:51',14.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I145RS4SS0000300',NULL,'I145RS4SS0000300','RS 04 SS 3\"',NULL,NULL,NULL,NULL,NULL,'PCS',34506.34,83,'083',0,'','R',0,'2025-03-27 10:58:51',23.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I145RS4SS0000400',NULL,'I145RS4SS0000400','RS 04 SS 4\"',NULL,NULL,NULL,NULL,NULL,'PCS',42196.31,83,'083',0,'','R',0,'2025-03-27 10:58:51',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I154HMX01SS00000',NULL,'I154HMX01SS00000','HMX 01 SS',NULL,NULL,NULL,NULL,NULL,'PCS',166315.90,151,'151',0,'','R',0,'2025-03-27 10:58:41',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I154WMX01P000000',NULL,'I154WMX01P000000','WMX 01 P',NULL,NULL,NULL,NULL,NULL,'PCS',112141.00,151,'151',0,'','R',0,'2025-03-27 10:59:23',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I155KMX01SS00000',NULL,'I155KMX01SS00000','KMX 01 SS',NULL,NULL,NULL,NULL,NULL,'PCS',208225.97,151,'151',0,'','R',0,'2025-03-27 10:58:44',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I156MST01I000000',NULL,'I156MST01I000000','MST 01 I',NULL,NULL,NULL,NULL,NULL,'PCS',719389.32,152,'152',0,'','R',0,'2025-03-27 10:58:48',31.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I156MST02I000000',NULL,'I156MST02I000000','MST 02 I',NULL,NULL,NULL,NULL,NULL,'PCS',760279.93,152,'152',0,'','R',0,'2025-03-27 10:58:48',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I401ASB010270000',NULL,'I401ASB010270000','ASB 01-02 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',187594.23,231,'231',0,'','R',0,'2025-03-27 10:58:22',10.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I401ASL0102GM000',NULL,'I401ASL0102GM000','ASL 01-02 GM',NULL,NULL,NULL,NULL,NULL,'PCS',122389.11,231,'231',0,'','R',0,'2025-03-22 09:41:01',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I401RB01I0000000',NULL,'I401RB01I0000000','RB 01 I',NULL,NULL,NULL,NULL,NULL,'PCS',98272.37,104,'104',0,'','R',0,'2025-03-27 10:58:51',58.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I402ASB0104A0000',NULL,'I402ASB0104A0000','ASB 01-04A',NULL,NULL,NULL,NULL,NULL,'PCS',54413.71,231,'231',0,'','R',0,'2025-03-27 10:58:22',108.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I402ASL01045GM00',NULL,'I402ASL01045GM00','ASL 01-045 GM',NULL,NULL,NULL,NULL,NULL,'PCS',51393.75,231,'231',0,'','R',0,'2025-03-27 10:58:23',11.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I402ASL0104GM000',NULL,'I402ASL0104GM000','ASL 01-04 GM',NULL,NULL,NULL,NULL,NULL,'PCS',22278.28,231,'231',0,'','R',0,'2025-03-27 10:58:23',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I403ASB010900000',NULL,'I403ASB010900000','ASB 01-09',NULL,NULL,NULL,NULL,NULL,'PCS',84497.16,231,'231',0,'','R',0,'2025-03-27 10:58:22',14.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I403ASB011000000',NULL,'I403ASB011000000','ASB 01-10',NULL,NULL,NULL,NULL,NULL,'PCS',112412.10,231,'231',0,'','R',0,'2025-03-27 10:58:22',38.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I403ASL0110GM000',NULL,'I403ASL0110GM000','ASL 01-10 GM',NULL,NULL,NULL,NULL,NULL,'PCS',75406.56,231,'231',0,'','R',0,'2025-03-27 10:58:23',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I404ASB011670000',NULL,'I404ASB011670000','ASB 01-16 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',290577.36,231,'231',0,'','R',0,'2025-03-27 10:58:23',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I404ASB0116B7000',NULL,'I404ASB0116B7000','ASB 01-16B 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',403705.26,231,'231',0,'','R',0,'2025-03-27 10:58:23',15.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I404ASL0116BGM00',NULL,'I404ASL0116BGM00','ASL 01-16B GM',NULL,NULL,NULL,NULL,NULL,'PCS',199069.80,231,'231',0,'','R',0,'2025-03-27 10:58:23',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I404ASL0120GM000',NULL,'I404ASL0120GM000','ASL 01-20 GM',NULL,NULL,NULL,NULL,NULL,'PCS',70446.04,231,'231',0,'','R',0,'2025-03-27 10:58:23',23.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I405SDX0101I0000',NULL,'I405SDX0101I0000','SDX1 - 01 I',NULL,NULL,NULL,NULL,NULL,'PCS',46317.85,232,'232',0,'','R',0,'2025-03-27 10:59:06',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I405SDX0102I0000',NULL,'I405SDX0102I0000','SDX1 - 02 I',NULL,NULL,NULL,NULL,NULL,'PCS',43356.28,232,'232',0,'','R',0,'2025-03-27 10:59:06',55.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I405SDX0103I0000',NULL,'I405SDX0103I0000','SDX1 - 03 I',NULL,NULL,NULL,NULL,NULL,'PCS',52034.95,232,'232',0,'','R',0,'2025-03-27 10:59:06',43.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I405SDX0201I0000',NULL,'I405SDX0201I0000','SDX2 - 01 I',NULL,NULL,NULL,NULL,NULL,'PCS',99683.47,232,'232',0,'','R',0,'2025-03-27 10:59:06',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I412ST1212AIR000',NULL,'I412ST1212AIR000','SEAL TAPE 12 MM AIR KUNING 12M',NULL,NULL,NULL,NULL,NULL,'PCS',942.66,91,'091',0,'','R',0,'2025-03-27 10:59:06',4707.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I413SH0000SS0125',NULL,'I413SH0000SS0125','SIPHON SS 1 1/4',NULL,NULL,NULL,NULL,NULL,'PCS',59338.34,84,'084',0,'','R',0,'2025-03-27 10:59:11',353.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I413SHP000W00125',NULL,'I413SHP000W00125','SIPHON P-W 1 1/4',NULL,NULL,NULL,NULL,NULL,'PCS',15408.96,84,'084',0,'','R',0,'2025-03-27 10:59:10',24.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I415BCP0101000000',NULL,'I415BCP0101000000','BCP 1 - 01',NULL,NULL,NULL,NULL,NULL,'PCS',86916.21,281,'281',0,'','R',0,'2025-03-27 10:58:25',122.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I415BCP0103000000',NULL,'I415BCP0103000000','BCP 1 - 03',NULL,NULL,NULL,NULL,NULL,'PCS',119336.97,281,'281',0,'','R',0,'2025-03-27 10:58:25',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I701DW01I0000000',NULL,'I701DW01I0000000','DW 01 I',NULL,NULL,NULL,NULL,NULL,'PCS',176893.82,261,'261',0,'','R',0,'2025-03-27 10:58:34',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I701HW03IB000000',NULL,'I701HW03IB000000','HW 03 I (B)',NULL,NULL,NULL,NULL,NULL,'PCS',115570.05,261,'261',0,'','R',0,'2025-03-27 10:58:42',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I701HW05I0000000',NULL,'I701HW05I0000000','HW 05 I',NULL,NULL,NULL,NULL,NULL,'PCS',153118.23,261,'261',0,'','R',0,'2025-03-27 10:58:42',8.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('I701HW06I0000000',NULL,'I701HW06I0000000','HW 06 I',NULL,NULL,NULL,NULL,NULL,'PCS',99770.94,261,'261',0,'','R',0,'2025-03-27 10:58:43',279.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V112BF0100000000',NULL,'V112BF0100000000','BASIN FAUCET 01',NULL,NULL,NULL,NULL,NULL,'PCS',26417.67,311,'311',0,'','R',0,'2025-03-27 10:58:24',43.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V112BF02W0000000',NULL,'V112BF02W0000000','BASIN FAUCET 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',8889.10,311,'311',0,'','R',0,'2025-03-27 10:58:24',196.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V112W7A000SS0000',NULL,'V112W7A000SS0000','W 7A SS',NULL,NULL,NULL,NULL,NULL,'PCS',46600.79,312,'312',0,'','R',0,'2025-03-27 10:59:22',82.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V112W7A000Z00000',NULL,'V112W7A000Z00000','W 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',27703.19,313,'313',0,'','R',0,'2025-03-27 10:59:22',27.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V113AF02W0000000',NULL,'V113AF02W0000000','ANGLE FAUCET 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',3597.15,311,'311',0,'','R',0,'2025-03-22 09:41:01',226.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V113SH7AZ0000000',NULL,'V113SH7AZ0000000','SH 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',15126.21,313,'313',0,'','R',0,'2025-03-27 10:59:08',58.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V113TA7AZ0000000',NULL,'V113TA7AZ0000000','TA 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',15757.30,313,'313',0,'','R',0,'2025-03-27 10:59:16',45.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V113TAF010000000',NULL,'V113TAF010000000','TWO ANGLE FAUCET 01',NULL,NULL,NULL,NULL,NULL,'PCS',11532.22,311,'311',0,'','R',0,'2025-03-27 10:59:19',122.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114A7A000Z00000',NULL,'V114A7A000Z00000','A 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',33023.06,313,'313',0,'','R',0,'2025-03-27 10:58:18',148.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114A7A00S2Z0000',NULL,'V114A7A00S2Z0000','A 7A S2 Z',NULL,NULL,NULL,NULL,NULL,'PCS',58669.96,313,'313',0,'','R',0,'2025-03-27 10:58:18',177.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114KF0100000000',NULL,'V114KF0100000000','KITCHEN FAUCET 01',NULL,NULL,NULL,NULL,NULL,'PCS',29064.15,311,'311',0,'','R',0,'2025-03-27 10:58:43',110.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114KF02W0000000',NULL,'V114KF02W0000000','KITCHEN FAUCET 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',14890.11,311,'311',0,'','R',0,'2025-03-27 10:58:43',34.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114V7A000Z00000',NULL,'V114V7A000Z00000','V 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',36710.27,313,'313',0,'','R',0,'2025-03-27 10:59:20',28.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V114V7A00S2Z00000',NULL,'V114V7A00S2Z00000','V 7A S2 Z',NULL,NULL,NULL,NULL,NULL,'PCS',59169.45,313,'313',0,'','R',0,'2025-03-27 10:59:20',95.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V116D7A000Z00000',NULL,'V116D7A000Z00000','D 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',33385.55,313,'313',0,'','R',0,'2025-03-27 10:58:32',6.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V117S7AZ00000000',NULL,'V117S7AZ00000000','S 7A Z',NULL,NULL,NULL,NULL,NULL,'PCS',18431.94,313,'313',0,'','R',0,'2025-03-27 10:58:53',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V117WFF010000000',NULL,'V117WFF010000000','WALL FAUCET FILTER 01',NULL,NULL,NULL,NULL,NULL,'PCS',11540.40,311,'311',0,'','R',0,'2025-03-27 10:59:22',54.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V117WFN010000000',NULL,'V117WFN010000000','WALL FAUCET NEPPLE 01',NULL,NULL,NULL,NULL,NULL,'PCS',11422.26,311,'311',0,'','R',0,'2025-03-27 10:59:22',392.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V117WFN02W000000',NULL,'V117WFN02W000000','WALL FAUCET NEPPLE 02 W',NULL,NULL,NULL,NULL,NULL,'PCS',4081.38,311,'311',0,'','R',0,'2025-03-27 10:59:22',61.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V121HSV1003C0000',NULL,'V121HSV1003C0000','HSV 1 - 3C',NULL,NULL,NULL,NULL,NULL,'PCS',23795.67,314,'314',0,'','R',0,'2025-03-27 10:58:42',61.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V122JS0100C00000',NULL,'V122JS0100C00000','JS 01 C',NULL,NULL,NULL,NULL,NULL,'PCS',28275.37,315,'315',0,'','R',0,'2025-03-27 10:58:43',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V141SKM01SS00000',NULL,'V141SKM01SS00000','SKM 01 SS',NULL,NULL,NULL,NULL,NULL,'PCS',6247.76,316,'316',0,'','R',0,'2025-03-27 10:59:11',67.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V141SKM02SSGM000',NULL,'V141SKM02SSGM000','SKM 02 SS GM',NULL,NULL,NULL,NULL,NULL,'PCS',16622.37,316,'316',0,'','R',0,'2025-03-27 10:59:11',114.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V141SKM03SSBL000',NULL,'V141SKM03SSBL000','SKM 03 SS BL',NULL,NULL,NULL,NULL,NULL,'PCS',16618.03,316,'316',0,'','R',0,'2025-03-27 10:59:11',57.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V141SKM04SSC0000',NULL,'V141SKM04SSC0000','SKM 04 SS C',NULL,NULL,NULL,NULL,NULL,'PCS',13229.88,316,'316',0,'','R',0,'2025-03-27 10:59:11',59.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V412ST1200R01000',NULL,'V412ST1200R01000','SEAL TAPE 12 MM AVA MERAH 10M',NULL,NULL,NULL,NULL,NULL,'PCS',728.35,318,'318',0,'','R',0,'2025-03-27 10:59:06',100.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V901NP0000000000',NULL,'V901NP0000000000','NOTA PENJUALAN AVA',NULL,NULL,NULL,NULL,NULL,'PCS',6718.34,310,'310',0,'','R',0,'2025-03-27 10:58:49',30.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('V903SPK000200100',NULL,'V903SPK000200100','SPANDUK AVA 200 X 100 CM',NULL,NULL,NULL,NULL,NULL,'PCS',31082.94,301,'301',0,'','R',0,'2025-03-27 10:59:13',9.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X111EPLWS23SP000',NULL,'X111EPLWS23SP000','XEPL-WS23-SP',NULL,NULL,NULL,NULL,NULL,'PCS',203613.33,73,'073',0,'','R',0,'2025-03-27 10:59:25',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X111EPLWS69SP000',NULL,'X111EPLWS69SP000','XEPL-WS69-SP',NULL,NULL,NULL,NULL,NULL,'PCS',219605.48,73,'073',0,'','R',0,'2025-03-27 10:59:25',4.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X112GMD75SW00000',NULL,'X112GMD75SW00000','XGMD-75S-W',NULL,NULL,NULL,NULL,NULL,'PCS',155553.40,30,'030',0,'','R',0,'2025-03-27 10:59:25',22.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X422MDAC75GD0000',NULL,'X422MDAC75GD0000','XMDA-C75-GD',NULL,NULL,NULL,NULL,NULL,'PCS',18748.34,273,'273',0,'','R',0,'2025-03-27 10:59:25',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X504PWS000040GM0',NULL,'X504PWS000040GM0','PIPA WS 40 GM',NULL,NULL,NULL,NULL,NULL,'PCS',53311.03,22,'022',0,'','R',0,'2025-03-27 10:58:50',5.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X506SKP000060063',NULL,'X506SKP000060063','SEKRUP 6 X 5/8',NULL,NULL,NULL,NULL,NULL,'PCS',49.28,30,'030',0,'','R',0,'2025-03-27 10:59:06',16.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X518HSC11BL00000',NULL,'X518HSC11BL00000','HANGER SC 11 BL',NULL,NULL,NULL,NULL,NULL,'PCS',7453.60,23,'023',0,'','R',0,'2025-03-27 10:58:40',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X603PW0017050300',NULL,'X603PW0017050300','PLASTIK WRAPPING 17MICRON X 50CM X 300M HJB',NULL,NULL,NULL,NULL,NULL,'ROLL',65314.35,302,'302',0,'','R',0,'2025-03-27 10:58:50',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X609LAS000000000',NULL,'X609LAS000000000','LUBANG ANGIN SALON',NULL,NULL,NULL,NULL,NULL,'PCS',649.65,301,'301',0,'','R',0,'2025-03-27 10:58:47',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X609VRP000000000',NULL,'X609VRP000000000','VERLOP RING PLASTIK',NULL,NULL,NULL,NULL,NULL,'PCS',698.60,301,'301',0,'','R',0,'2025-03-27 10:59:20',3.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X904DBR010100300',NULL,'X904DBR010100300','DISPLAY BR 01 100 x 300',NULL,NULL,NULL,NULL,NULL,'PCS',6500000.00,301,'301',0,'','R',0,'2025-03-27 10:58:33',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X904DEXC02A00000',NULL,'X904DEXC02A00000','DISPLAY EXCELLENCE 02 A',NULL,NULL,NULL,NULL,NULL,'PCS',774500.00,301,'301',0,'','R',0,'2025-03-27 10:58:33',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X904DEXC02B00000',NULL,'X904DEXC02B00000','DISPLAY EXCELLENCE 02 B',NULL,NULL,NULL,NULL,NULL,'PCS',759195.19,301,'301',0,'','R',0,'2025-03-27 10:58:33',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X904DGDL00240230',NULL,'X904DGDL00240230','DISPLAY GONDOLA 240 x 230',NULL,NULL,NULL,NULL,NULL,'PCS',9000000.00,301,'301',0,'','R',0,'2025-03-27 10:58:33',2.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X904DM1S00050070',NULL,'X904DM1S00050070','DISPLAY MEJA 1S 50 x 70 CM',NULL,NULL,NULL,NULL,NULL,'PCS',492208.98,301,'301',0,'','R',0,'2025-03-27 10:58:33',1.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0),('X914TV5518SGS000',NULL,'X914TV5518SGS000','TACO FLOORING TV 5518 SPC GREY STERLING',NULL,NULL,NULL,NULL,NULL,'BOX',549549.55,301,'301',0,'','R',0,'2025-03-27 10:59:17',75.00,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0);
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
  `wrh` varchar(10) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordet`
--

LOCK TABLES `dbximpordet` WRITE;
/*!40000 ALTER TABLE `dbximpordet` DISABLE KEYS */;
INSERT INTO `dbximpordet` VALUES ('A401AC0102000000',NULL,NULL,'JKT04M',1.00),('A402AC0104000000',NULL,NULL,'BLI01G',1.00),('A402AC0104000000',NULL,NULL,'JKT02M',1.00),('A404AC0116000060',NULL,NULL,'JKT04M',1.00),('A404AC0116B00060',NULL,NULL,'JKT04M',1.00),('A402AC0202000000',NULL,NULL,'BLI01G',11.00),('A402AC0202000000',NULL,NULL,'BLI11G',1.00),('A402AC0202000000',NULL,NULL,'JKT02M',31.00),('A402AC0204000000',NULL,NULL,'BLI01G',11.00),('A402AC0204000000',NULL,NULL,'BLI07G',1.00),('A402AC0204000000',NULL,NULL,'BLI11G',1.00),('A402AC0204000000',NULL,NULL,'JKT02M',6.00),('A402AC0210000000',NULL,NULL,'BLI02G',1.00),('A402AC0210000000',NULL,NULL,'BLI11G',1.00),('A402AC0216B00000',NULL,NULL,'BLI01G',2.00),('A402AC0216B00000',NULL,NULL,'BLI11G',1.00),('A402AC0304BL0000',NULL,NULL,'BLI01G',1.00),('A403ACB011000000',NULL,NULL,'JKT02M',1.00);
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
  `wrh` varchar(10) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbximpordetcss`
--

LOCK TABLES `dbximpordetcss` WRITE;
/*!40000 ALTER TABLE `dbximpordetcss` DISABLE KEYS */;
INSERT INTO `dbximpordetcss` VALUES ('V113AF02W0000000',NULL,'BLI01G',76.00),('V113AF02W0000000',NULL,'BLI05G',150.00),('I401ASL0102GM000',NULL,'BLI01G',5.00),('I401ASL0102GM000',NULL,'BLI02G',1.00),('A111111000000075',NULL,'SBY01T',37.00),('A111201000000050',NULL,'SBY02T',72.00),('I114A5KSS0000000',NULL,'BLI01G',16.00),('I114A5KSS0000000',NULL,'JKT01L',1.00),('I114A5KSS0000000',NULL,'JKT02M',74.00),('I114A5KSS0000000',NULL,'SBY01T',2306.00),('I114A5L000Z00000',NULL,'BLI01G',24.00),('I114A5L000Z00000',NULL,'JKT01L',5.00),('I114A5L000Z00000',NULL,'JKT02M',790.00),('I114A5L000Z00000',NULL,'SBY01T',1867.00),('I114A5L000Z00000',NULL,'SBY02T',251.00),('A114AOV03B000000',NULL,'JKT01L',2.00),('A114AOV03B000000',NULL,'JKT02M',14.00),('I116D9G000Z00000',NULL,'JKT01L',9.00),('I116D9G000Z00000',NULL,'JKT02M',20.00),('I114A5M000Z00000',NULL,'BLI01G',14.00),('I114A5M000Z00000',NULL,'JKT02M',89.00),('I114A5PBL0000000',NULL,'BLI01G',6.00),('I114A5PBL0000000',NULL,'JKT01L',1.00),('V114A7A00S2Z0000',NULL,'BLI01G',101.00),('V114A7A00S2Z0000',NULL,'JKT01L',2.00),('V114A7A00S2Z0000',NULL,'JKT02M',74.00),('V114A7A000Z00000',NULL,'BLI01G',40.00),('V114A7A000Z00000',NULL,'JKT02M',108.00),('I114A9G000Z00000',NULL,'BLI01G',20.00),('I114A9G000Z00000',NULL,'BLI06S',4.00),('I114A9G000Z00000',NULL,'JKT01L',2.00),('A402AC0104000000',NULL,'BLI01G',1.00),('A402AC0104000000',NULL,'JKT02M',1.00),('A402AC0202000000',NULL,'BLI01G',11.00),('A402AC0202000000',NULL,'JKT02M',11.00),('A402AC0204000000',NULL,'BLI01G',15.00),('A402AC0204000000',NULL,'JKT02M',6.00),('A402AC0210000000',NULL,'BLI02G',1.00),('A402AC0216B00000',NULL,'BLI01G',2.00),('A402AC0304BL0000',NULL,'BLI01G',1.00),('A403ACB011000000',NULL,'JKT02M',1.00),('A403ACB020900000',NULL,'BLI01G',1.00),('A404ACB0316BBL00',NULL,'BLI01G',3.00),('A404ACP011800000',NULL,'BLI01G',2.00),('A401ACP030100000',NULL,'BLI01G',10.00),('A403ACP031400000',NULL,'BLI01G',9.00),('A403ACP031400000',NULL,'BLI06S',2.00),('A114ACR1B0000000',NULL,'BLI06S',5.00),('A114ACR1B0000000',NULL,'JKT01L',1.00),('A114ACR1B0000000',NULL,'JKT02M',1.00),('A114ACR3C0000000',NULL,'BLI01G',2.00),('A401ACS0102BL000',NULL,'BLI02G',1.00),('A401ACS0102GM000',NULL,'BLI01G',3.00),('A401ACS0102GM000',NULL,'JKT02M',1.00),('A402ACS0104BL000',NULL,'BLI02G',1.00),('A402ACS0104BL000',NULL,'JKT02M',7.00),('A402ACS0104GM000',NULL,'BLI01G',2.00),('A402ACS0104GM000',NULL,'BLI02G',1.00),('A402ACS0104GM000',NULL,'JKT02M',10.00),('A403ACS0109BL000',NULL,'BLI01G',3.00),('A403ACS0109BL000',NULL,'JKT02M',1.00),('A403ACS0109GM000',NULL,'BLI01G',7.00),('A403ACS0109GM000',NULL,'BLI06S',4.00),('A403ACS0109GM000',NULL,'JKT02M',1.00),('A403ACS0110BL000',NULL,'BLI02G',1.00),('A403ACS0110BL000',NULL,'JKT02M',3.00),('A403ACS0110GM000',NULL,'JKT02M',6.00),('A404ACS0116BBL00',NULL,'BLI01G',2.00),('A404ACS0116BBL00',NULL,'JKT02M',3.00),('A404ACS0116BGM00',NULL,'JKT02M',2.00),('A404ACS0116BGMSR',NULL,'BLI01G',6.00),('A403ACS0210BL000',NULL,'BLI01G',4.00),('A403ACS0210BL000',NULL,'JKT02M',9.00),('A114AL0100000000',NULL,'JKT01L',1.00),('A114AOV1A0000000',NULL,'JKT01L',2.00),('A114AOV1A0000000',NULL,'JKT02M',26.00),('A114AOV9BY000000',NULL,'BLI01G',15.00),('A114AOV9BY000000',NULL,'JKT02M',2.00),('A113AR5J00000000',NULL,'BLI01G',57.00),('A113AR5J00000000',NULL,'BLI02G',1.00),('A113AR5J00000000',NULL,'JKT02M',28.00),('A113AS5J00000000',NULL,'BLI01G',55.00),('A113AS5J00000000',NULL,'BLI02G',1.00),('A113AS5J00000000',NULL,'BLI06S',9.00),('A113AS5J00000000',NULL,'JKT01L',1.00),('I401ASB010270000',NULL,'JKT02M',10.00),('I402ASB0104A0000',NULL,'BLI01G',10.00),('I402ASB0104A0000',NULL,'BLI06S',98.00),('I403ASB010900000',NULL,'BLI01G',14.00),('I403ASB011000000',NULL,'BLI01G',22.00),('I403ASB011000000',NULL,'JKT02M',16.00),('I404ASB011670000',NULL,'BLI01G',12.00),('I404ASB011670000',NULL,'JKT02M',3.00),('I404ASB0116B7000',NULL,'BLI01G',15.00),('I402ASL0104GM000',NULL,'BLI01G',4.00),('I402ASL01045GM00',NULL,'BLI01G',5.00),('I402ASL01045GM00',NULL,'JKT02M',6.00),('I403ASL0110GM000',NULL,'BLI01G',9.00),('I404ASL0116BGM00',NULL,'BLI01G',3.00),('I404ASL0116BGM00',NULL,'BLI02G',1.00),('I404ASL0120GM000',NULL,'BLI01G',10.00),('I404ASL0120GM000',NULL,'JKT02M',13.00),('A114AT01BL000000',NULL,'BLI01G',5.00),('A114AT01BL000000',NULL,'JKT02M',1.00),('A114AT01C0000000',NULL,'BLI01G',4.00),('A114AT01GM000000',NULL,'BLI01G',2.00),('A114AT01GM000000',NULL,'JKT02M',1.00),('A114AY0100000000',NULL,'BLI01G',1.00),('V112BF0100000000',NULL,'JKT02M',43.00),('V112BF02W0000000',NULL,'BLI01G',94.00),('V112BF02W0000000',NULL,'BLI05G',100.00),('V112BF02W0000000',NULL,'JKT01L',2.00),('I118BC1000B00050',NULL,'BLI01G',208.00),('I118BC1000B00050',NULL,'BLI06S',2.00),('I118BC1000B00050',NULL,'JKT01L',13.00),('I118BC1000B00050',NULL,'JKT02M',72.00),('I118BC1000B00075',NULL,'BLI01G',175.00),('I415BCP0101000000',NULL,'JKT02M',122.00),('I415BCP0103000000',NULL,'BLI01G',15.00),('I415BCP0103000000',NULL,'JKT02M',1.00),('I122BD0300W00000',NULL,'BLI01G',40.00),('I122BD0300W00000',NULL,'BLI06S',24.00),('I122BD0300W00000',NULL,'JKT01L',5.00),('I122BD0400C00000',NULL,'BLI01G',9.00),('I122BD0400C00000',NULL,'JKT02M',189.00),('I122BD0400W00000',NULL,'BLI01G',32.00),('I122BD0400W00000',NULL,'JKT02M',20.00),('I122BD0500BL0000',NULL,'BLI01G',10.00),('I122BD0500BL0000',NULL,'BLI06S',6.00),('I122BD0500BL0000',NULL,'JKT02M',97.00),('I122BD0500W00000',NULL,'BLI01G',12.00),('I122BD0500W00000',NULL,'JKT02M',87.00),('A121BSH100W00000',NULL,'JKT01L',1.00),('A729BT201C000000',NULL,'BLI01G',4.00),('A713BTH121100000',NULL,'BLI01G',1.00),('A143CO0000000400',NULL,'BLI01G',7.00),('A143CO0000000400',NULL,'JKT02M',13.00),('A123CS0180000000',NULL,'BLI06S',4.00),('A121CSH300C00000',NULL,'BLI01G',1.00),('A121CSH300C00000',NULL,'BLI02G',1.00),('A121CSH300C00000',NULL,'JKT01L',1.00),('A121CSH300C00000',NULL,'JKT02M',15.00),('A526CT0300000000',NULL,'BLI01G',11.00),('A526CT0300000000',NULL,'JKT02M',8.00),('A702CWB11C000000',NULL,'BLI01G',11.00),('A702CWB11C010000',NULL,'BLI01G',11.00),('A702CWB11C020000',NULL,'BLI01G',2.00),('A702CWB33C000000',NULL,'BLI01G',1.00),('A702CWB33C000000',NULL,'BLI06S',2.00),('A702CWB33C010000',NULL,'BLI01G',6.00),('A702CWB33C010000',NULL,'JKT02M',10.00),('A702CWB33C070000',NULL,'BLI06S',10.00),('A702CWB33C070000',NULL,'JKT02M',1.00),('A702CWB33C080000',NULL,'BLI01G',3.00),('A702CWB33C120000',NULL,'JKT02M',2.00),('A702CWB33C410000',NULL,'BLI01G',2.00),('A702CWB33C410000',NULL,'BLI02G',1.00),('A702CWB33C410000',NULL,'JKT02M',5.00),('A702CWB33C420000',NULL,'JKT02M',1.00),('A702CWB34O000000',NULL,'JKT02M',1.00),('A702CWB34O410000',NULL,'BLI01G',3.00),('A702CWB34O410000',NULL,'JKT02M',1.00),('A702CWB34O420000',NULL,'BLI01G',2.00),('A702CWB35R000000',NULL,'BLI01G',8.00),('A702CWB35R000000',NULL,'JKT02M',4.00),('A702CWB35R070000',NULL,'JKT02M',2.00),('A702CWB36O000000',NULL,'BLI01G',4.00),('A702CWB37R000000',NULL,'BLI01G',2.00),('A702CWB37R000000',NULL,'JKT02M',1.00),('A702CWB38C000000',NULL,'BLI01G',1.00),('A702CWB39R000000',NULL,'BLI01G',6.00),('A702CWB39R000000',NULL,'BLI02G',1.00),('A702CWB39R000000',NULL,'BLI06S',7.00),('A702CWB39R000000',NULL,'JKT02M',2.00),('A702CWB40R000000',NULL,'BLI01G',1.00),('A702CWB45O000000',NULL,'BLI01G',3.00),('A702CWB45O000000',NULL,'BLI06S',1.00),('A702CWB45O000000',NULL,'JKT02M',1.00),('A702CWB46O000000',NULL,'BLI01G',4.00),('A702CWB46O000000',NULL,'BLI06S',2.00),('A702CWB47R000000',NULL,'BLI01G',2.00),('A702CWB47R000000',NULL,'BLI02G',1.00),('A702CWB47R000000',NULL,'JKT02M',3.00),('A702CWB48R000000',NULL,'BLI01G',1.00),('A702CWB51O340000',NULL,'JKT02M',1.00),('A702CWB55O060000',NULL,'JKT02M',2.00),('A702CWH10R000000',NULL,'BLI01G',8.00),('A702CWH10R000000',NULL,'BLI06S',7.00),('A702CWH14C000000',NULL,'JKT02M',1.00),('A702CWH18R000000',NULL,'BLI01G',1.00),('A702CWH19R000000',NULL,'BLI01G',7.00),('A702CWH19R000000',NULL,'BLI06S',2.00),('A702CWH20R000000',NULL,'BLI01G',10.00),('A702CWH20R000000',NULL,'JKT02M',2.00),('A702CWH21R000000',NULL,'BLI01G',2.00),('A702CWH21R000000',NULL,'BLI02G',1.00),('A702CWH22R000000',NULL,'BLI01G',1.00),('A702CWH25R000000',NULL,'BLI01G',1.00),('A702CWH26R000000',NULL,'BLI01G',3.00),('A702CWH26R000000',NULL,'BLI02G',1.00),('A702CWH26R000000',NULL,'JKT02M',3.00),('A702CWH27R100000',NULL,'JKT02M',1.00),('A116D11A00000000',NULL,'BLI01G',12.00),('A116D11A00000000',NULL,'JKT01L',1.00),('A116D11A00000000',NULL,'JKT02M',85.00),('A116D33B00000000',NULL,'BLI01G',9.00),('A116D33B00000000',NULL,'BLI02G',1.00),('A116D33B00000000',NULL,'JKT01L',3.00),('I116D5KSS0000000',NULL,'BLI01G',7.00),('I116D5KSS0000000',NULL,'BLI06S',6.00),('I116D5KSS0000000',NULL,'JKT01L',4.00),('I116D5KSS0000000',NULL,'JKT02M',45.00),('I116D5L000Z00000',NULL,'BLI01G',52.00),('I116D5L000Z00000',NULL,'BLI06S',18.00),('I116D5L000Z00000',NULL,'JKT01L',3.00),('I116D5L000Z00000',NULL,'JKT02M',45.00),('I116D5M000Z00000',NULL,'BLI01G',41.00),('I116D5M000Z00000',NULL,'BLI06S',5.00),('I116D5M000Z00000',NULL,'JKT02M',49.00),('I116D5PBL0000000',NULL,'BLI01G',7.00),('I116D5PBL0000000',NULL,'JKT02M',6.00),('V116D7A000Z00000',NULL,'BLI01G',6.00),('A116D99BY0000000',NULL,'BLI01G',6.00),('A116D99BY0000000',NULL,'JKT02M',2.00),('A116DCR11B000000',NULL,'BLI01G',3.00),('A116DCR11B000000',NULL,'JKT02M',1.00),('A116DCR33C000000',NULL,'BLI01G',5.00),('A116DCR33C000000',NULL,'JKT01L',2.00),('X904DBR010100300',NULL,'JKT01M',1.00),('X904DEXC02A00000',NULL,'JKT01L',1.00),('X904DEXC02B00000',NULL,'JKT01L',1.00),('X904DGDL00240230',NULL,'JKT01M',2.00),('X904DM1S00050070',NULL,'JKT01L',1.00),('I125DRS01IBL0000',NULL,'BLI01G',6.00),('I125DRS01IC00000',NULL,'BLI01G',4.00),('I125DRS01IC00000',NULL,'JKT02M',17.00),('A116DT01BL000000',NULL,'BLI01G',4.00),('A116DT01BL000000',NULL,'BLI02G',1.00),('A116DT01BL000000',NULL,'JKT02M',2.00),('A116DT01C0000000',NULL,'BLI01G',4.00),('A116DT01C0000000',NULL,'BLI02G',1.00),('A116DT01C0000000',NULL,'JKT02M',1.00),('A116DT01GM000000',NULL,'BLI01G',7.00),('A116DT01GM000000',NULL,'BLI02G',1.00),('I701DW01I0000000',NULL,'BLI01G',9.00),('A116DY0100000000',NULL,'JKT02M',1.00),('A717ESC010000000',NULL,'JKT02M',1.00),('A717ESC030000000',NULL,'BLI01G',3.00),('A132FA3000SS0000',NULL,'BLI01G',61.00),('A132FA3000SS0000',NULL,'BLI06S',12.00),('A132FA3000SS0000',NULL,'JKT01L',10.00),('A132FA4000SS0000',NULL,'BLI01G',50.00),('A132FA4000SS0000',NULL,'BLI06S',9.00),('A132FA4000SS0000',NULL,'JKT01L',15.00),('A132FA4000SS0000',NULL,'JKT02M',10.00),('A132FA5000SS0000',NULL,'BLI01G',60.00),('A132FA5000SS0000',NULL,'BLI06S',12.00),('A132FA5000SS0000',NULL,'JKT01L',17.00),('A132FA5000SS0000',NULL,'JKT02M',1.00),('A131FHM125SAF000',NULL,'BLI01G',16.00),('A131FHM125SAF000',NULL,'BLI06S',6.00),('A131FHM125SAF000',NULL,'JKT01L',3.00),('A131FHM150SAF000',NULL,'BLI01G',19.00),('A131FHM150SAF000',NULL,'JKT01L',3.00),('A131FHM150SAF000',NULL,'JKT02M',1.00),('A729FL0100000000',NULL,'BLI01G',6.00),('A729FL0200000000',NULL,'BLI01G',5.00),('A729FL0300000000',NULL,'BLI01G',4.00),('A517FHSC11BL0000',NULL,'BLI01G',1.00),('A133FNS300SS0000',NULL,'BLI01G',8.00),('A133FNS300SS0000',NULL,'JKT01L',12.00),('A133FNS400SS0000',NULL,'BLI06S',27.00),('A133FNS400SS0000',NULL,'JKT01L',4.00),('A133FNS400SS0000',NULL,'JKT02M',5.00),('A133FNS500SS0000',NULL,'BLI01G',24.00),('A133FNS500SS0000',NULL,'BLI06S',12.00),('A133FNS500SS0000',NULL,'JKT01L',13.00),('A133FNS500SS0000',NULL,'JKT02M',62.00),('A526FP01BL000000',NULL,'BLI01G',4.00),('A526FP01C0000000',NULL,'BLI01G',5.00),('A526FP01C0000000',NULL,'BLI06S',2.00),('A526FP02BL000000',NULL,'BLI01G',5.00),('A526FP02BL000000',NULL,'BLI06S',20.00),('A526FP02C0000000',NULL,'BLI01G',9.00),('A526FP02C0000000',NULL,'JKT02M',1.00),('I141FS2SS0000000',NULL,'BLI01G',35.00),('I141FS2SS0000000',NULL,'JKT01L',2.00),('I141FS2SS0000000',NULL,'JKT02M',120.00),('I141FS4SS0000000',NULL,'JKT02M',59.00),('A121FSH100C00000',NULL,'BLI01G',20.00),('A121FSH100C00000',NULL,'BLI02G',1.00),('A121FSH100C00000',NULL,'JKT01L',2.00),('A121FSH100C00000',NULL,'JKT02M',10.00),('A121FSH100CC0000',NULL,'BLI01G',7.00),('A121FSH100CC0000',NULL,'JKT02M',3.00),('A121FSH300CW0000',NULL,'BLI01G',38.00),('A121FSH300CW0000',NULL,'BLI02G',1.00),('A121FSH300CW0000',NULL,'BLI06S',6.00),('A121FSH300CW0000',NULL,'JKT01L',1.00),('A121FSH300CW0000',NULL,'JKT02M',12.00),('A206FV0000O00050',NULL,'BLI01G',55.00),('A206FV0000O00050',NULL,'BLI06S',6.00),('A206FV0000O00050',NULL,'JKT01L',2.00),('A206FV0000O00075',NULL,'BLI01G',38.00),('A206FV0000O00075',NULL,'BLI06S',5.00),('A206FV0000O00075',NULL,'JKT01L',1.00),('A134FW3000SS0000',NULL,'BLI01G',35.00),('A134FW3000SS0000',NULL,'JKT01L',13.00),('A134FW3000SS0000',NULL,'JKT02M',28.00),('A134FW4000SS0000',NULL,'BLI01G',23.00),('A134FW4000SS0000',NULL,'BLI06S',12.00),('A134FW4000SS0000',NULL,'JKT01L',5.00),('A134FW4000SS0000',NULL,'JKT02M',12.00),('A134FW5000SS0000',NULL,'BLI01G',24.00),('A134FW5000SS0000',NULL,'BLI06S',12.00),('A134FW5000SS0000',NULL,'JKT01L',8.00),('A134FW5000SS0000',NULL,'JKT02M',12.00),('A121GSH210C00000',NULL,'BLI01G',8.00),('A121GSH210C00000',NULL,'JKT01L',3.00),('A121GSH210C00000',NULL,'JKT02M',38.00),('A121GSH31CW00000',NULL,'BLI02G',1.00),('A121GSH31CW00000',NULL,'JKT02M',1.00),('A121GSH450CW0000',NULL,'BLI01G',7.00),('A121GSH53BGW0000',NULL,'BLI02G',1.00),('A121GSH53BGW0000',NULL,'JKT02M',1.00),('A121GSH53GM00000',NULL,'BLI01G',9.00),('A121GSH53GM00000',NULL,'JKT02M',6.00),('A121GSH53RGB0000',NULL,'BLI01G',1.00),('A612GCA000000000',NULL,'BLI01G',211.00),('X518HSC11BL00000',NULL,'BLI01G',1.00),('A501WS27GM000000',NULL,'JKT02M',5.00),('A142HFS010000000',NULL,'BLI01G',67.00),('A142HFS010000000',NULL,'BLI02G',1.00),('A142HFS010000000',NULL,'JKT01L',5.00),('A142HFS010000000',NULL,'JKT02M',65.00),('A142HFS01BL00000',NULL,'BLI01G',20.00),('A142HFS01BL00000',NULL,'JKT02M',1.00),('A142HFS01GM00000',NULL,'BLI01G',44.00),('A142HFS020000000',NULL,'BLI01G',1.00),('A142HFS020000000',NULL,'JKT02M',3.00),('A142HFS02BL00000',NULL,'BLI01G',2.00),('A142HFS02BL00000',NULL,'JKT02M',6.00),('A142HFS02GM00000',NULL,'BLI01G',13.00),('A142HFS02GM00000',NULL,'JKT02M',2.00),('I154HMX01SS00000',NULL,'BLI01G',6.00),('I154HMX01SS00000',NULL,'JKT02M',3.00),('A114HOV1A0000000',NULL,'JKT01L',1.00),('A114HOV1A0000000',NULL,'JKT02M',1.00),('A114HOV3B0000000',NULL,'JKT01L',2.00),('A114HOV9BY000000',NULL,'BLI01G',1.00),('I121HS30001W0000',NULL,'BLI01G',29.00),('I121HS30001W0000',NULL,'JKT01L',4.00),('I121HS30001W0000',NULL,'JKT02M',92.00),('I121HS40003W0000',NULL,'BLI01G',28.00),('I121HS40003W0000',NULL,'JKT01M',1.00),('I121HS40003W0000',NULL,'JKT01L',2.00),('I121HS40003W0000',NULL,'JKT02M',75.00),('I121HS50001WBL00',NULL,'BLI01G',12.00),('I121HS50001WBL00',NULL,'JKT01L',1.00),('V121HSV1003C0000',NULL,'BLI01G',61.00),('A706HU0400000000',NULL,'JKT02M',1.00),('A706HU0800000000',NULL,'JKT02M',1.00),('A706HU0900000000',NULL,'BLI01G',1.00),('A701HW02T0000000',NULL,'BLI01G',3.00),('A701HW02T0000000',NULL,'JKT02M',2.00),('A701HW0300000000',NULL,'JKT02M',17.00),('A701HW0312000000',NULL,'JKT02M',1.00),('I701HW03IB000000',NULL,'JKT02M',2.00),('A701HW0400000000',NULL,'BLI01G',2.00),('A701HW0500000000',NULL,'BLI01G',2.00),('I701HW05I0000000',NULL,'JKT02M',8.00),('I701HW06I0000000',NULL,'BLI01G',24.00),('I701HW06I0000000',NULL,'BLI06S',50.00),('I701HW06I0000000',NULL,'JKT02M',205.00),('A717HWC080000000',NULL,'BLI01G',3.00),('A717HWC080000000',NULL,'JKT02M',2.00),('A717HWC090000000',NULL,'BLI01G',1.00),('A717HWC090000000',NULL,'BLI06S',2.00),('A717HWC090000000',NULL,'JKT02M',3.00),('A717HWC160100000',NULL,'BLI01G',1.00),('A155IKF030000000',NULL,'JKT02M',2.00),('A155IKF060000000',NULL,'BLI02G',1.00),('A717ISC010000000',NULL,'JKT02M',1.00),('A717ISC040000000',NULL,'JKT02M',1.00),('V122JS0100C00000',NULL,'BLI01G',9.00),('A121JSH230CBL000',NULL,'BLI01G',1.00),('A121JSH230CBL000',NULL,'JKT02M',14.00),('A121JSH230CPBL00',NULL,'BLI01G',2.00),('V114KF0100000000',NULL,'JKT02M',110.00),('V114KF02W0000000',NULL,'BLI01G',32.00),('V114KF02W0000000',NULL,'JKT01L',2.00),('I155KMX01SS00000',NULL,'BLI01G',6.00),('I155KMX01SS00000',NULL,'BLI06S',7.00),('I155KMX01SS00000',NULL,'JKT02M',2.00),('A415KS1010000000',NULL,'BLI01G',3.00),('A415KS1010000000',NULL,'BLI06S',3.00),('A415KS1010000000',NULL,'JKT02M',1.00),('A415KS1020000000',NULL,'BLI01G',4.00),('A415KS1020000000',NULL,'BLI06S',4.00),('A415KS1020000000',NULL,'JKT02M',27.00),('A415KS111BL00000',NULL,'BLI06S',5.00),('A415KS111BL00000',NULL,'JKT02M',1.00),('A415KS111G000000',NULL,'BLI01G',2.00),('A415KS111G000000',NULL,'JKT02M',2.00),('A415KS111W000000',NULL,'BLI01G',2.00),('A415KS111W000000',NULL,'JKT02M',1.00),('A415KS112BL00000',NULL,'JKT02M',2.00),('A415KS112G000000',NULL,'BLI01G',1.00),('A415KS112G000000',NULL,'JKT02M',2.00),('A415KS113BL00000',NULL,'BLI01G',4.00),('A415KS113BL00000',NULL,'JKT02M',2.00),('A415KS114BL00000',NULL,'BLI06S',1.00),('A415KS114W000000',NULL,'JKT02M',3.00),('A415KS115BL00000',NULL,'BLI01G',5.00),('A415KS115BL00000',NULL,'JKT02M',5.00),('A415KS119BL00000',NULL,'BLI06S',2.00),('A415KS125DC00000',NULL,'JKT02M',1.00),('A415KS126DG00000',NULL,'BLI01G',1.00),('A415KS126DG00000',NULL,'JKT02M',1.00),('A415KS126W000000',NULL,'JKT02M',1.00),('A415KS207G000000',NULL,'BLI01G',1.00),('A415KS213B000000',NULL,'JKT02M',2.00),('A415KS213DG00000',NULL,'BLI01G',1.00),('A415KS217BL00000',NULL,'BLI01G',1.00),('A415KS222AB00000',NULL,'JKT02M',1.00),('A147LFS01SS00700',NULL,'BLI01G',11.00),('A147LFS01SS00700',NULL,'JKT02M',30.00),('A147LFS03SS00700',NULL,'BLI01G',16.00),('A147LFS03SS00700',NULL,'JKT02M',1.00),('A147LFS03SSGM700',NULL,'BLI01G',5.00),('A147LFS03SSGM700',NULL,'JKT02M',2.00),('A147LFS04SSBL700',NULL,'BLI01G',7.00),('A147LFS04SSGM700',NULL,'BLI01G',5.00),('A147LFS04SSW0700',NULL,'BLI01G',57.00),('X609LAS000000000',NULL,'BLI06S',2.00),('A156MBS010000000',NULL,'BLI01G',1.00),('A156MBS040000000',NULL,'BLI01G',8.00),('A156MBS040000000',NULL,'JKT02M',6.00),('A156MBS05BL00000',NULL,'BLI01G',6.00),('A156MBS05BL00000',NULL,'JKT02M',33.00),('A156MBS05BLC0000',NULL,'BLI01G',1.00),('A156MBS05GM00000',NULL,'BLI01G',3.00),('A156MBS05GM00000',NULL,'BLI02G',1.00),('A156MBS05GM00000',NULL,'BLI06S',3.00),('A156MBS05GM00000',NULL,'JKT02M',2.00),('A156MBS06000000',NULL,'BLI01G',11.00),('A156MBS06000000',NULL,'BLI05G',4.00),('A156MBS06BL00000',NULL,'BLI01G',6.00),('A156MBS06BL00000',NULL,'JKT02M',21.00),('A156MBSM01GM0000',NULL,'JKT02M',5.00),('A902MFHTMG000000',NULL,'BLI01G',26.00),('A902MFHTSI000000',NULL,'BLI01G',67.00),('A156MS0500000000',NULL,'BLI06S',2.00),('A156MS0500000000',NULL,'JKT02M',15.00),('A156MS06BL000000',NULL,'JKT02M',2.00),('A156MSC01GM00000',NULL,'JKT02M',2.00),('I156MST01I000000',NULL,'BLI01G',4.00),('I156MST01I000000',NULL,'BLI06S',2.00),('I156MST01I000000',NULL,'JKT02M',25.00),('I156MST02I000000',NULL,'BLI01G',8.00),('I156MST02I000000',NULL,'BLI06S',2.00),('A141NFS3K0000000',NULL,'BLI01G',8.00),('A141NFS3K0000000',NULL,'JKT01L',2.00),('A141NFS3K0000000',NULL,'JKT02M',12.00),('A141NFS4KBL00000',NULL,'BLI01G',1.00),('I141NFS4SSK20100',NULL,'BLI01G',10.00),('I141NFS4SSK20100',NULL,'BLI02G',1.00),('I141NFS4SSK20100',NULL,'JKT01L',4.00),('I141NFS4SSK20100',NULL,'JKT02M',187.00),('V901NP0000000000',NULL,'BLI01G',30.00),('A717OSC010000000',NULL,'BLI01G',3.00),('A717OSC010000000',NULL,'BLI06S',11.00),('A717OSC010000000',NULL,'JKT02M',15.00),('A717OSC020000000',NULL,'BLI01G',2.00),('A717OSC020000000',NULL,'JKT02M',2.00),('A717OSC050000000',NULL,'BLI01G',6.00),('A717OSC050000000',NULL,'BLI06S',3.00),('A717OSC050000000',NULL,'JKT02M',4.00),('A717OSC060000000',NULL,'JKT02M',13.00),('A717OSC120000000',NULL,'BLI06S',2.00),('A717OSC120000000',NULL,'JKT02M',5.00),('A717OSC130000000',NULL,'BLI01G',2.00),('A717OSC130000000',NULL,'BLI06S',1.00),('A717OSC140000000',NULL,'JKT02M',1.00),('A717OSC150000000',NULL,'BLI02G',1.00),('A717OSC150000000',NULL,'JKT02M',2.00),('A717OSC220000000',NULL,'BLI01G',2.00),('A717OSC230000000',NULL,'BLI01G',1.00),('A717OSC230000000',NULL,'BLI06S',6.00),('A602ODL000000000',NULL,'BLI01G',34.00),('A602ODM000000000',NULL,'BLI01G',18.00),('X504PWS000040GM0',NULL,'JKT02M',5.00),('X603PW0017050300',NULL,'BLI01G',1.00),('A121PSH0101C0000',NULL,'BLI01G',2.00),('A121PSH0201C0000',NULL,'BLI01G',4.00),('A121PSH0201C0000',NULL,'JKT02M',5.00),('A703PW0500000000',NULL,'BLI01G',1.00),('A703PW0500000000',NULL,'JKT02M',1.00),('A401RBD340000000',NULL,'BLI01G',2.00),('A401RBD340000000',NULL,'JKT02M',4.00),('I401RB01I0000000',NULL,'BLI01G',17.00),('I401RB01I0000000',NULL,'BLI06S',11.00),('I401RB01I0000000',NULL,'JKT02M',30.00),('I145RS3SS0000000',NULL,'BLI01G',11.00),('I145RS3SS0000000',NULL,'JKT02M',3.00),('I145RS4SS0000300',NULL,'JKT02M',23.00),('I145RS4SS0000400',NULL,'BLI01G',6.00),('I145RS4SS0000400',NULL,'JKT02M',3.00),('A163RU0100000000',NULL,'JKT02M',6.00),('A163RU1000000000',NULL,'BLI01G',3.00),('A163RU1100000000',NULL,'BLI01G',3.00),('A163RU1100000000',NULL,'JKT02M',1.00),('A163RU1200000000',NULL,'BLI01G',3.00),('A163RU1200000000',NULL,'JKT02M',7.00),('A163RU1300000000',NULL,'BLI01G',4.00),('A163RU1400000000',NULL,'BLI01G',3.00),('I117S5JSS0000000',NULL,'BLI01G',3.00),('I117S5JSS0000000',NULL,'JKT01L',6.00),('I117S5JSS0000000',NULL,'JKT02M',18.00),('I117S5KSS0000000',NULL,'BLI01G',9.00),('I117S5KSS0000000',NULL,'JKT01L',6.00),('I117S5KSS0000000',NULL,'JKT02M',139.00),('I117S5LZ00000000',NULL,'BLI01G',17.00),('I117S5LZ00000000',NULL,'JKT01L',3.00),('I117S5LZ00000000',NULL,'JKT02M',30.00),('I117S5MZ00000000',NULL,'BLI01G',37.00),('I117S5MZ00000000',NULL,'JKT02M',120.00),('I117S5P000FBL000',NULL,'BLI01G',6.00),('I117S5P000FBL000',NULL,'JKT02M',13.00),('I117S5P000NBL000',NULL,'BLI01G',6.00),('I117S5P000NBL000',NULL,'JKT02M',6.00),('V117S7AZ00000000',NULL,'BLI01G',2.00),('V117S7AZ00000000',NULL,'JKT02M',2.00),('I117S9GZ00000000',NULL,'BLI01G',34.00),('I117S9GZ00000000',NULL,'JKT01L',2.00),('I117S9GZ00000000',NULL,'JKT02M',13.00),('I132SA3000SS0000',NULL,'BLI01G',52.00),('I132SA3000SS0000',NULL,'BLI06S',23.00),('I132SA3000SS0000',NULL,'JKT01L',12.00),('I132SA4000SS0000',NULL,'BLI01G',43.00),('I132SA4000SS0000',NULL,'JKT01L',13.00),('I132SA5000SS0000',NULL,'BLI01G',36.00),('I132SA5000SS0000',NULL,'JKT01L',16.00),('I132SA5000SS0000',NULL,'JKT02M',46.00),('I141SACHR2000000',NULL,'BLI01G',65.00),('I141SACHR2000000',NULL,'BLI06S',3.00),('I141SACHR2000000',NULL,'JKT01L',2.00),('I141SACHR2000000',NULL,'JKT02M',12.00),('I141SACHR2K00000',NULL,'BLI01G',67.00),('I141SACHR2K00000',NULL,'BLI02G',1.00),('I141SACHR2K00000',NULL,'JKT02M',34.00),('A154SACW01000000',NULL,'BLI01G',1.00),('A154SACW01000000',NULL,'BLI02G',1.00),('A154SACW01000000',NULL,'JKT02M',1.00),('A153SAGSH3000000',NULL,'JKT01L',1.00),('A152SAHBR0100000',NULL,'BLI01G',1.00),('A152SAHBS0100000',NULL,'BLI01G',30.00),('A152SAHBS0100000',NULL,'BLI02G',1.00),('A152SAHBS0100000',NULL,'JKT02M',48.00),('A152SAHBS0200000',NULL,'BLI01G',14.00),('A152SAHBS0200000',NULL,'BLI06S',3.00),('A152SAHBS0200000',NULL,'JKT01L',1.00),('A152SAHBS0200000',NULL,'JKT02M',82.00),('A152SAHBS02T0000',NULL,'BLI01G',1.00),('A152SAHBS0400000',NULL,'BLI01G',1.00),('A152SAHBS0400000',NULL,'JKT01L',2.00),('A152SAHBS0400000',NULL,'JKT02M',71.00),('A152SAHBT1BLR000',NULL,'BLI05G',1.00),('A152SAHBV1BG0000',NULL,'JKT02M',3.00),('A152SAHBV1GM0000',NULL,'JKT02M',1.00),('A152SAHBV1WR0000',NULL,'JKT02M',1.00),('A157SAHC04000000',NULL,'BLI01G',3.00),('A157SAHD02000000',NULL,'JKT02M',2.00),('A157SAHDV1BG0000',NULL,'BLI01G',5.00),('A157SAHDV1BG0000',NULL,'JKT02M',1.00),('A157SAHDV1GM0000',NULL,'BLI01G',6.00),('A157SAHDV1GM0000',NULL,'JKT02M',2.00),('A154SAHH02000000',NULL,'BLI01G',36.00),('A154SAHH02000000',NULL,'BLI06S',17.00),('A154SAHH02000000',NULL,'JKT02M',17.00),('A154SAHH02GM0000',NULL,'BLI01G',5.00),('A154SAHH02GM0000',NULL,'BLI02G',1.00),('A154SAHH02GM0000',NULL,'JKT02M',1.00),('A154SAHH02T00000',NULL,'JKT02M',1.00),('A154SAHHC0100000',NULL,'BLI01G',1.00),('A154SAHHC0100000',NULL,'JKT02M',2.00),('A154SAHHT1BLR000',NULL,'JKT02M',3.00),('A154SAHHV1BG0000',NULL,'BLI01G',2.00),('A154SAHHV1GM0000',NULL,'BLI01G',6.00),('A154SAHHV1GM0000',NULL,'JKT02M',5.00),('A154SAHHY0100000',NULL,'BLI02G',1.00),('A155SAHK01000000',NULL,'BLI01G',14.00),('A155SAHK01000000',NULL,'JKT02M',12.00),('A155SAHK02000000',NULL,'BLI01G',6.00),('A155SAHK02000000',NULL,'JKT01L',1.00),('A155SAHK02GBL000',NULL,'BLI01G',7.00),('A155SAHK02GBL000',NULL,'JKT02M',3.00),('A155SAHK02GM0000',NULL,'BLI01G',1.00),('A155SAHK02GM0000',NULL,'BLI06S',9.00),('A155SAHK02T00000',NULL,'JKT02M',2.00),('A155SAHK03B00000',NULL,'BLI06S',1.00),('A155SAHK03B00000',NULL,'JKT02M',3.00),('A155SAHK03BL0000',NULL,'BLI01G',4.00),('A155SAHK03BL0000',NULL,'JKT02M',8.00),('A155SAHK03G00000',NULL,'BLI01G',2.00),('A155SAHK04000000',NULL,'BLI01G',3.00),('A155SAHK04B00000',NULL,'JKT02M',1.00),('A155SAHKC0100000',NULL,'BLI01G',1.00),('A155SAHKC0100000',NULL,'JKT02M',1.00),('A155SAHKP0100000',NULL,'BLI01G',3.00),('A155SAHKV1BG0000',NULL,'JKT02M',3.00),('A155SAHKV1GM0000',NULL,'BLI01G',11.00),('A155SAHKV1WR0000',NULL,'JKT02M',1.00),('A151SAHMV1BG0000',NULL,'BLI01G',4.00),('A151SAHMV1BG0000',NULL,'JKT02M',1.00),('A151SAHMV1WR0000',NULL,'JKT02M',1.00),('A151SAHMY0100000',NULL,'JKT02M',1.00),('A153SAHSB0100000',NULL,'BLI01G',1.00),('A153SAHSH0100000',NULL,'BLI01G',6.00),('A153SAHSH0100000',NULL,'BLI02G',1.00),('A153SAHSH0100000',NULL,'BLI06S',2.00),('A153SAHSH0100000',NULL,'JKT01L',2.00),('A153SAHSH0200000',NULL,'BLI01G',19.00),('A153SAHSH0200000',NULL,'BLI06S',3.00),('A153SAHSH0200000',NULL,'JKT02M',4.00),('A153SAHSH02GM000',NULL,'BLI01G',1.00),('A153SAHSH02T0000',NULL,'BLI01G',1.00),('A153SAHSR0100000',NULL,'BLI01G',1.00),('A154SAHW01000000',NULL,'BLI01G',22.00),('A154SAHW01000000',NULL,'BLI02G',1.00),('A154SAHW01000000',NULL,'BLI06S',7.00),('A154SAHW01000000',NULL,'JKT02M',3.00),('A154SAHW02000000',NULL,'BLI01G',17.00),('A154SAHW02000000',NULL,'BLI06S',12.00),('A154SAHW02000000',NULL,'JKT01L',1.00),('A154SAHW02000000',NULL,'JKT02M',1.00),('A154SAHW02BL0000',NULL,'BLI01G',1.00),('A154SAHW02BL0000',NULL,'JKT02M',1.00),('A154SAHW02GBL000',NULL,'BLI01G',7.00),('A154SAHW02GBL000',NULL,'JKT02M',2.00),('A154SAHW02GM0000',NULL,'BLI01G',6.00),('A154SAHW02GM0000',NULL,'BLI02G',1.00),('A154SAHW02GM0000',NULL,'BLI06S',8.00),('A154SAHW02GM0000',NULL,'JKT02M',1.00),('A154SAHW02T00000',NULL,'BLI01G',1.00),('A154SAHW02W00000',NULL,'JKT02M',1.00),('A154SAHW04000000',NULL,'JKT02M',30.00),('A154SAHW04C00000',NULL,'JKT02M',1.00),('A154SAHWB01BL000',NULL,'BLI01G',1.00),('A154SAHWK0100000',NULL,'BLI01G',6.00),('A154SAHWR0100000',NULL,'BLI01G',1.00),('A154SAHWT1BLR000',NULL,'JKT02M',1.00),('A154SAHWV1WR0000',NULL,'BLI02G',1.00),('A154SAHWY0100000',NULL,'BLI02G',1.00),('A154SAHWY0100000',NULL,'BLI06S',8.00),('A154SAHWY0100000',NULL,'JKT02M',1.00),('A152SAMBS2000000',NULL,'JKT01L',1.00),('A159SAMGP03BL000',NULL,'BLI01G',1.00),('A159SAMGP03GM000',NULL,'BLI01G',1.00),('A159SAMGT0100000',NULL,'BLI01G',1.00),('A159SAMGT01GM000',NULL,'BLI01G',4.00),('A154SAMHP02BRG00',NULL,'BLI01G',3.00),('A154SAMHP02BRG00',NULL,'BLI06S',6.00),('A154SAMHP02BRG00',NULL,'JKT02M',1.00),('A155SAMKP02BRG00',NULL,'BLI01G',5.00),('A155SAMKP02BRG00',NULL,'JKT02M',1.00),('A155SAMKP03BL000',NULL,'JKT02M',3.00),('A155SAMKP03GM000',NULL,'BLI01G',2.00),('A151SAMMP03BL000',NULL,'BLI01G',3.00),('A154SAMW02000000',NULL,'JKT02M',37.00),('A154SAMWP02BRG00',NULL,'BLI01G',3.00),('A154SAMWP02BRG00',NULL,'JKT02M',1.00),('A154SAMWP03BL000',NULL,'BLI01G',3.00),('A154SAMWP03BL000',NULL,'JKT02M',1.00),('A157SASBV0200000',NULL,'BLI01G',4.00),('A157SASBV0200000',NULL,'BLI02G',1.00),('A157SASBV0200000',NULL,'JKT02M',4.00),('A157SASBV0500000',NULL,'JKT02M',1.00),('A152SASBX03BLC00',NULL,'BLI02G',1.00),('A114SASKF0300000',NULL,'BLI01G',3.00),('A114SASKF0300000',NULL,'BLI06S',1.00),('A114SASKF0300000',NULL,'JKT02M',1.00),('A114SASKX02C0000',NULL,'BLI01G',4.00),('A157SASSV0500000',NULL,'BLI01G',1.00),('A157SASSV0500000',NULL,'JKT01L',1.00),('A157SASSV0500000',NULL,'JKT02M',1.00),('A154SASWH03TBLC',NULL,'JKT02M',4.00),('A154SASWH0500000',NULL,'BLI02G',1.00),('A154SASWH0500000',NULL,'JKT02M',1.00),('A154SASWX03BLC00',NULL,'BLI01G',1.00),('A154SASWX03BLC00',NULL,'BLI06S',1.00),('A154SASWX0500000',NULL,'BLI01G',1.00),('A154SATH01BL0000',NULL,'JKT02M',1.00),('A155SATK01BL0000',NULL,'JKT02M',5.00),('A122SC5000S00000',NULL,'BLI01G',49.00),('A122SC5000S00000',NULL,'BLI02G',1.00),('A122SC5000S00000',NULL,'BLI06S',6.00),('A122SC5000S00000',NULL,'JKT01L',1.00),('A122SC5000S00000',NULL,'JKT02M',80.00),('A122SC5000W00000',NULL,'BLI01G',14.00),('A122SC5000W00000',NULL,'BLI06S',10.00),('A122SC5000W00000',NULL,'JKT02M',184.00),('A122SC5000WH0000',NULL,'BLI01G',5.00),('A122SC7000C00000',NULL,'BLI01G',61.00),('A122SC7000C00000',NULL,'BLI06S',3.00),('A122SC7000C00000',NULL,'JKT01L',4.00),('A122SC7000C00000',NULL,'JKT02M',36.00),('A122SC7000W00000',NULL,'BLI01G',10.00),('A122SC7000W00000',NULL,'BLI06S',3.00),('A122SC7000W00000',NULL,'JKT01L',2.00),('A122SC7000W00000',NULL,'JKT02M',1.00),('A122SC9000C00000',NULL,'BLI01G',1.00),('A122SC9000W00000',NULL,'BLI01G',3.00),('A122SC10W0000000',NULL,'JKT01L',1.00),('A122SC1100BG0000',NULL,'BLI01G',1.00),('A122SC1100BL0000',NULL,'BLI01G',29.00),('A122SC1100BL0000',NULL,'BLI02G',1.00),('A122SC1100BL0000',NULL,'JKT02M',3.00),('A122SC1100C00000',NULL,'BLI01G',2.00),('A122SC1100C00000',NULL,'BLI06S',14.00),('A122SC1100PGM000',NULL,'BLI01G',17.00),('A122SC1100PGM000',NULL,'BLI06S',6.00),('A122SC1100PGM000',NULL,'JKT02M',1.00),('A122SC1100W00000',NULL,'BLI01G',28.00),('A122SC1100W00000',NULL,'BLI02G',1.00),('A122SC1100W00000',NULL,'BLI06S',2.00),('A122SC1200PBL000',NULL,'BLI01G',12.00),('A122SC1200PBL000',NULL,'BLI05G',6.00),('A122SC1200PBL000',NULL,'JKT02M',3.00),('A122SC1200PGM000',NULL,'BLI06S',2.00),('A117SCR1B0N00000',NULL,'JKT01L',2.00),('A117SCR3C0F00000',NULL,'BLI01G',1.00),('I405SDX0101I0000',NULL,'BLI01G',4.00),('I405SDX0102I0000',NULL,'BLI01G',9.00),('I405SDX0102I0000',NULL,'JKT02M',46.00),('I405SDX0103I0000',NULL,'BLI01G',4.00),('I405SDX0103I0000',NULL,'BLI06S',39.00),('I405SDX0201I0000',NULL,'BLI01G',6.00),('I412ST1212AIR000',NULL,'BLI01G',3654.00),('I412ST1212AIR000',NULL,'BLI06S',3.00),('I412ST1212AIR000',NULL,'JKT01L',50.00),('I412ST1212AIR000',NULL,'JKT02M',1000.00),('V412ST1200R01000',NULL,'BLI01G',100.00),('X506SKP000060063',NULL,'BLI06S',16.00),('A162SETT01000000',NULL,'BLI01G',8.00),('A161SETW02000000',NULL,'JKT02M',16.00),('A161SETW03000000',NULL,'JKT02M',3.00),('A161SETW04000000',NULL,'BLI01G',3.00),('A425SFGB1EW00000',NULL,'BLI01G',1.00),('A425SFGB1EWB0000',NULL,'JKT02M',1.00),('A425SFGB1FWB3500',NULL,'BLI01G',1.00),('A425SFGB1FWB3500',NULL,'JKT02M',1.00),('A425SFGB1FWG5300',NULL,'BLI01G',1.00),('A425SFGB1FWO3500',NULL,'BLI01G',1.00),('A425SFGB1FWO3500',NULL,'JKT02M',1.00),('A425SFGB1HW00000',NULL,'BLI01G',2.00),('A141SFS03KGM0000',NULL,'BLI01G',1.00),('A141SFS03KGM0000',NULL,'BLI06S',8.00),('A425SFUG1AW00000',NULL,'BLI06S',1.00),('A113SH0100000000',NULL,'JKT02M',1.00),('I113SH5JSS000000',NULL,'BLI01G',15.00),('I113SH5JSS000000',NULL,'BLI06S',6.00),('I113SH5JSS000000',NULL,'JKT02M',99.00),('I113SH5KSS000000',NULL,'BLI01G',13.00),('I113SH5KSS000000',NULL,'JKT01L',2.00),('I113SH5KSS000000',NULL,'JKT02M',38.00),('I113SH5LZ0000000',NULL,'BLI01G',24.00),('I113SH5LZ0000000',NULL,'BLI06S',20.00),('I113SH5LZ0000000',NULL,'JKT02M',12.00),('I113SH5PBL000000',NULL,'BLI01G',9.00),('I113SH5PBL000000',NULL,'JKT02M',13.00),('V113SH7AZ0000000',NULL,'BLI01G',44.00),('V113SH7AZ0000000',NULL,'BLI06S',12.00),('V113SH7AZ0000000',NULL,'JKT01L',2.00),('I113SH9GZ0000000',NULL,'BLI01G',29.00),('I113SH9GZ0000000',NULL,'BLI06S',45.00),('I113SH9GZ0000000',NULL,'JKT01L',2.00),('I113SH9GZ0000000',NULL,'JKT02M',24.00),('A113SHCR1A000000',NULL,'JKT01L',1.00),('A113SHCR1B000000',NULL,'JKT02M',1.00),('A113SHCR3B00000',NULL,'JKT01L',2.00),('A113SHCR3C000000',NULL,'JKT01L',1.00),('A113SHCR3C000000',NULL,'JKT02M',1.00),('A113SHOV1A000000',NULL,'BLI01G',11.00),('A113SHOV1A000000',NULL,'BLI02G',1.00),('A113SHOV1A000000',NULL,'JKT02M',1.00),('A113SHOV1B000000',NULL,'BLI01G',31.00),('A113SHOV3B000000',NULL,'BLI01G',6.00),('A113SHOV3B000000',NULL,'BLI06S',1.00),('A113SHOV3B000000',NULL,'JKT02M',3.00),('A113SHOV9BY00000',NULL,'BLI01G',12.00),('A113SHOV9BY00000',NULL,'JKT02M',10.00),('A161SHTW01000000',NULL,'BLI01G',3.00),('A161SHTW02000000',NULL,'BLI06S',10.00),('A161SHTW02000000',NULL,'JKT02M',4.00),('A113SHT01BL00000',NULL,'BLI02G',1.00),('A113SHT01BL00000',NULL,'JKT02M',16.00),('A113SHT01C000000',NULL,'JKT02M',4.00),('A113SHT01GM00000',NULL,'BLI01G',8.00),('A113SHT01GM00000',NULL,'BLI02G',1.00),('A113SHT01GM00000',NULL,'JKT02M',7.00),('A113SHY010000000',NULL,'BLI02G',1.00),('A113SHY010000000',NULL,'JKT02M',1.00),('A413SH100BB00125',NULL,'BLI01G',25.00),('A413SH100BB00125',NULL,'BLI06S',8.00),('A413SH100BB00125',NULL,'JKT02M',57.00),('A413SH000BS00125',NULL,'BLI01G',32.00),('A413SH000BS00125',NULL,'BLI06S',7.00),('A413SH000BS00125',NULL,'JKT02M',115.00),('I413SHP000W00125',NULL,'BLI01G',20.00),('I413SHP000W00125',NULL,'JKT01L',2.00),('I413SHP000W00125',NULL,'JKT02M',2.00),('I413SH0000SS0125',NULL,'BLI01G',93.00),('I413SH0000SS0125',NULL,'JKT01L',2.00),('I413SH0000SS0125',NULL,'JKT02M',258.00),('V141SKM01SS00000',NULL,'BLI01G',61.00),('V141SKM01SS00000',NULL,'JKT02M',6.00),('V141SKM02SSGM000',NULL,'BLI01G',50.00),('V141SKM02SSGM000',NULL,'BLI06S',50.00),('V141SKM02SSGM000',NULL,'JKT02M',14.00),('V141SKM03SSBL000',NULL,'BLI01G',50.00),('V141SKM03SSBL000',NULL,'BLI06S',6.00),('V141SKM03SSBL000',NULL,'JKT02M',1.00),('V141SKM04SSC0000',NULL,'BLI01G',44.00),('V141SKM04SSC0000',NULL,'JKT02M',15.00),('I133SN3000SS0000',NULL,'BLI01G',34.00),('I133SN3000SS0000',NULL,'JKT01L',6.00),('I133SN3000SS0000',NULL,'JKT02M',119.00),('I133SN4000SS0000',NULL,'BLI01G',24.00),('I133SN4000SS0000',NULL,'JKT01L',7.00),('I133SN4000SS0000',NULL,'JKT02M',308.00),('I133SN5000SS0000',NULL,'BLI01G',36.00),('I133SN5000SS0000',NULL,'JKT01L',8.00),('I133SN5000SS0000',NULL,'JKT02M',81.00),('A117SOV1A0F00000',NULL,'BLI01G',12.00),('A117SOV1A0F00000',NULL,'JKT02M',35.00),('A117SOV1A0N00000',NULL,'BLI01G',10.00),('A117SOV1A0N00000',NULL,'JKT02M',1.00),('A117SOV1A0W00000',NULL,'BLI01G',13.00),('A117SOV1A0W00000',NULL,'BLI02G',1.00),('A117SOV1A0W00000',NULL,'JKT01L',2.00),('A117SOV1A0W00000',NULL,'JKT02M',1.00),('A117SOV3B0N00000',NULL,'BLI01G',6.00),('A117SOV3B0N00000',NULL,'BLI06S',9.00),('A117SOV3B0N00000',NULL,'JKT01L',3.00),('A117SOV3B0W00000',NULL,'BLI01G',6.00),('A117SOV3B0W00000',NULL,'BLI06S',4.00),('A117SOV3C0N00000',NULL,'JKT01L',1.00),('A117SOV9BYN00000',NULL,'JKT02M',5.00),('A117SOV9BYW00000',NULL,'BLI01G',12.00),('A117SOV9BYW00000',NULL,'BLI02G',1.00),('V903SPK000200100',NULL,'BLI01G',9.00),('I141SPLASKB00000',NULL,'BLI01G',76.00),('I141SPLASKC00000',NULL,'BLI01G',104.00),('I141SPLASKG00000',NULL,'BLI01G',91.00),('I141SPLASKG00000',NULL,'JKT02M',120.00),('I141SPLASKW00000',NULL,'BLI01G',76.00),('I141SPLASKW00000',NULL,'JKT01L',1.00),('A111SPV01BG00000',NULL,'JKT02M',1.00),('A111SPV01GM00000',NULL,'JKT02M',1.00),('A111SPY010000000',NULL,'JKT02M',4.00),('A157SSV010000000',NULL,'BLI01G',13.00),('A157SSV010000000',NULL,'JKT02M',16.00),('A209SSV01C000000',NULL,'BLI01G',6.00),('A209SSV01C000000',NULL,'JKT02M',3.00),('A117ST01FBL00000',NULL,'BLI02G',1.00),('A117ST01FBL00000',NULL,'JKT02M',1.00),('A117ST01FGM00000',NULL,'BLI01G',5.00),('A117ST01FGM00000',NULL,'BLI02G',1.00),('A117ST01NBL00000',NULL,'BLI02G',1.00),('A117ST01NBL00000',NULL,'JKT02M',1.00),('A117ST01NC000000',NULL,'BLI02G',1.00),('A117ST01NGM00000',NULL,'BLI01G',5.00),('A117ST01NGM00000',NULL,'BLI02G',1.00),('A117ST01NGM00000',NULL,'JKT02M',13.00),('A209SV0100000000',NULL,'BLI01G',18.00),('A209SV0100000000',NULL,'JKT01L',2.00),('A209SV0100000000',NULL,'JKT02M',39.00),('I134SW3000SS0000',NULL,'BLI01G',48.00),('I134SW3000SS0000',NULL,'JKT01L',6.00),('I134SW3000SS0000',NULL,'JKT02M',68.00),('I134SW4000SS0000',NULL,'BLI01G',38.00),('I134SW4000SS0000',NULL,'JKT01L',8.00),('I134SW4000SS0000',NULL,'JKT02M',102.00),('I134SW5000SS0000',NULL,'BLI01G',36.00),('I134SW5000SS0000',NULL,'JKT01L',6.00),('I134SW5000SS0000',NULL,'JKT02M',66.00),('A117SY0100000000',NULL,'BLI02G',1.00),('I113TA5JSS000000',NULL,'BLI01G',15.00),('I113TA5JSS000000',NULL,'JKT02M',119.00),('I113TA5L00Z00000',NULL,'BLI01G',14.00),('I113TA5L00Z00000',NULL,'BLI06S',6.00),('I113TA5L00Z00000',NULL,'JKT02M',52.00),('I113TA5M00Z00000',NULL,'BLI01G',29.00),('I113TA5M00Z00000',NULL,'JKT02M',100.00),('I113TA5PBL000000',NULL,'BLI01G',19.00),('I113TA5PBL000000',NULL,'JKT01L',2.00),('I113TA5PBL000000',NULL,'JKT02M',13.00),('V113TA7AZ0000000',NULL,'BLI01G',44.00),('V113TA7AZ0000000',NULL,'JKT02M',1.00),('I113TA9G00Z00000',NULL,'BLI01G',40.00),('I113TA9G00Z00000',NULL,'JKT01L',2.00),('I113TA9G00Z00000',NULL,'JKT02M',2.00),('X914TV5518SGS000',NULL,'JKT01M',75.00),('A902TKA304012BL0',NULL,'JKT01L',1.00),('A113TAT01GM00000',NULL,'BLI02G',1.00),('A113TAT01GM00000',NULL,'JKT02M',13.00),('A113TAY010000000',NULL,'JKT02M',25.00),('A729TC0100000000',NULL,'BLI01G',6.00),('A729TC0200000000',NULL,'JKT02M',4.00),('A729TC1000000000',NULL,'BLI01G',3.00),('A729TC1200000000',NULL,'BLI01G',8.00),('A729TC1300000000',NULL,'BLI01G',8.00),('A729TC1400000000',NULL,'BLI01G',6.00),('A729TC1600000000',NULL,'BLI01G',59.00),('A729TC1600000000',NULL,'JKT02M',2.00),('A111TCR1B0000000',NULL,'BLI01G',1.00),('A111TCR1B0000000',NULL,'JKT02M',1.00),('A111TCR3C0000000',NULL,'JKT02M',1.00),('A111TCR9BX000000',NULL,'JKT01L',1.00),('A113TF01A0000000',NULL,'BLI01G',10.00),('A113TF01A0000000',NULL,'JKT01L',3.00),('A113TF01B0000000',NULL,'JKT01L',1.00),('A113TF03B0000000',NULL,'BLI01G',15.00),('A113TF03B0000000',NULL,'JKT01L',2.00),('A113TF03B0000000',NULL,'JKT02M',123.00),('A113TF09BY000000',NULL,'BLI01G',24.00),('A113TF09BY000000',NULL,'JKT02M',6.00),('A716TBTWC0200000',NULL,'BLI01G',1.00),('A111TOV1C0000000',NULL,'BLI02G',1.00),('A111TOV1A0000000',NULL,'BLI02G',1.00),('A111TOV1A0000000',NULL,'JKT01L',2.00),('A111TOV1A0000000',NULL,'JKT02M',82.00),('A111TOV03B000000',NULL,'JKT01L',3.00),('A111TOV9BY000000',NULL,'BLI01G',1.00),('A111TOV9BY000000',NULL,'BLI06S',4.00),('A111TOV9BY000000',NULL,'JKT02M',10.00),('A111TR5J00F00000',NULL,'JKT01L',2.00),('A716TSC040000000',NULL,'BLI01G',1.00),('A716TWC010000000',NULL,'BLI01G',18.00),('A716TWC010000000',NULL,'JKT02M',40.00),('A716TWC020000000',NULL,'BLI01G',16.00),('A716TWC020000000',NULL,'BLI06S',2.00),('A716TWC090000000',NULL,'JKT02M',22.00),('A716TWC160000000',NULL,'BLI01G',3.00),('A716TWC160000000',NULL,'BLI06S',11.00),('A716TWC160000000',NULL,'JKT02M',114.00),('V113TAF010000000',NULL,'BLI01G',20.00),('V113TAF010000000',NULL,'JKT01L',2.00),('V113TAF010000000',NULL,'JKT02M',100.00),('A702UCW05AR00000',NULL,'JKT02M',8.00),('A702UCW05R000000',NULL,'JKT02M',1.00),('A702UCW06O000000',NULL,'BLI01G',4.00),('A702UCW06O000000',NULL,'JKT02M',9.00),('I114V5KSS0000000',NULL,'BLI01G',11.00),('I114V5KSS0000000',NULL,'JKT02M',23.00),('I114V5PBL0000000',NULL,'BLI01G',34.00),('I114V5PBL0000000',NULL,'BLI06S',1.00),('I114V5PBL0000000',NULL,'JKT02M',33.00),('V114V7A00S2Z00000',NULL,'BLI01G',40.00),('V114V7A00S2Z00000',NULL,'JKT02M',55.00),('V114V7A000Z00000',NULL,'BLI01G',20.00),('V114V7A000Z00000',NULL,'JKT01L',2.00),('V114V7A000Z00000',NULL,'JKT02M',6.00),('A114VCR1B0000000',NULL,'JKT01L',1.00),('A114VCR1B0000000',NULL,'JKT02M',1.00),('A114VCR3C0000000',NULL,'JKT02M',1.00),('C207APB200000004',NULL,'BLI01G',3.00),('C302BC3114S00001',NULL,'BLI01G',60.00),('C302LGC3108S0001',NULL,'BLI01G',40.00),('C302WC3003S00001',NULL,'BLI01G',17.00),('C402LGN101100020',NULL,'BLI01G',1.00),('X609VRP000000000',NULL,'BLI06S',3.00),('A114VL0100000000',NULL,'BLI01G',18.00),('A114VOV1A0000000',NULL,'BLI01G',27.00),('A114VOV1A0000000',NULL,'JKT01L',1.00),('A114VOV3B0000000',NULL,'JKT01L',2.00),('A114VOV3C0000000',NULL,'JKT01L',1.00),('A114VOV9BY000000',NULL,'BLI01G',16.00),('A114VOV9BY000000',NULL,'BLI02G',1.00),('A114VOV9BY000000',NULL,'JKT01L',2.00),('A114VOV9BY000000',NULL,'JKT02M',10.00),('A114VT01BL000000',NULL,'BLI01G',1.00),('A114VT01BL000000',NULL,'JKT02M',1.00),('A114VT01GM000000',NULL,'JKT02M',18.00),('A114VY0100000000',NULL,'BLI01G',5.00),('A114VY0100000000',NULL,'BLI02G',1.00),('I112W5KSS0000000',NULL,'BLI01G',14.00),('I112W5KSS0000000',NULL,'JKT01L',2.00),('I112W5KSS0000000',NULL,'JKT02M',2.00),('I112W5L000Z00000',NULL,'BLI01G',32.00),('I112W5L000Z00000',NULL,'BLI06S',31.00),('I112W5L000Z00000',NULL,'JKT01L',6.00),('I112W5L000Z00000',NULL,'JKT02M',76.00),('I112W5PBL0000000',NULL,'BLI01G',22.00),('I112W5PBL0000000',NULL,'JKT02M',35.00),('V112W7A000SS0000',NULL,'BLI01G',74.00),('V112W7A000SS0000',NULL,'BLI06S',7.00),('V112W7A000SS0000',NULL,'JKT02M',1.00),('V112W7A000Z00000',NULL,'BLI01G',14.00),('V112W7A000Z00000',NULL,'JKT02M',13.00),('I112W9G000Z00000',NULL,'BLI01G',38.00),('I112W9G000Z00000',NULL,'BLI06S',6.00),('I112W9G000Z00000',NULL,'JKT01L',3.00),('I112W9G000Z00000',NULL,'JKT02M',15.00),('V117WFF010000000',NULL,'BLI01G',20.00),('V117WFF010000000',NULL,'JKT02M',34.00),('V117WFN010000000',NULL,'BLI01G',20.00),('V117WFN010000000',NULL,'JKT02M',372.00),('V117WFN02W000000',NULL,'BLI01G',61.00),('A526WTTWC160TFF0',NULL,'BLI01G',1.00),('A112WF0300000050',NULL,'JKT02M',1.00),('A112WHT01BL00000',NULL,'JKT02M',3.00),('A112WHT01C000000',NULL,'BLI01G',6.00),('A112WHT01C000000',NULL,'JKT02M',3.00),('I154WMX01P000000',NULL,'BLI01G',4.00),('I154WMX01P000000',NULL,'JKT02M',4.00),('A112WOV1C0000000',NULL,'JKT02M',1.00),('A112WOV1A0000000',NULL,'BLI01G',7.00),('A112WOV1A0000000',NULL,'BLI06S',54.00),('A112WOV1A0000000',NULL,'JKT01L',1.00),('A112WOV1A0000000',NULL,'JKT02M',13.00),('A112WOV03B000000',NULL,'BLI06S',4.00),('A112WOV03B000000',NULL,'JKT01L',3.00),('A112WOV03B000000',NULL,'JKT02M',109.00),('A112WOV9BY000000',NULL,'BLI01G',6.00),('A112WOV9BY000000',NULL,'JKT02M',23.00),('I123WS03IBL00000',NULL,'BLI01G',18.00),('I123WS03IBL00000',NULL,'JKT01L',1.00),('A123WS0110000000',NULL,'BLI01G',47.00),('A123WS0110000000',NULL,'BLI02G',1.00),('A123WS0110000000',NULL,'BLI06S',3.00),('A123WS0110000000',NULL,'JKT01L',2.00),('A123WS0110000000',NULL,'JKT02M',10.00),('A123WS011C000000',NULL,'BLI01G',18.00),('A123WS011C000000',NULL,'JKT02M',6.00),('A123WS0120FR0000',NULL,'BLI01G',56.00),('A123WS0120FR0000',NULL,'JKT01L',2.00),('A123WS0120FR0000',NULL,'JKT02M',48.00),('A123WS0130000000',NULL,'BLI01G',49.00),('A123WS0130000000',NULL,'JKT01L',2.00),('A123WS0130000000',NULL,'JKT02M',64.00),('A123WS0150000000',NULL,'BLI01G',21.00),('A123WS0150000000',NULL,'BLI06S',1.00),('A123WS0150000000',NULL,'JKT01L',1.00),('A123WS0150000000',NULL,'JKT02M',12.00),('A123WS0160000000',NULL,'BLI01G',38.00),('A123WS0160000000',NULL,'BLI06S',4.00),('A123WS016H000000',NULL,'BLI01G',6.00),('A123WS0190000000',NULL,'BLI01G',53.00),('A123WS0190000000',NULL,'BLI06S',1.00),('A123WS0190000000',NULL,'JKT01L',2.00),('A123WS0190000000',NULL,'JKT02M',19.00),('A123WS0200000000',NULL,'BLI01G',2.00),('A123WS0200000000',NULL,'BLI06S',1.00),('A123WS0200000000',NULL,'JKT02M',2.00),('A123WS021BLC0000',NULL,'BLI02G',1.00),('A123WS021BLC0000',NULL,'BLI06S',1.00),('A123WS021BLC0000',NULL,'JKT01L',1.00),('A123WS021BLC0000',NULL,'JKT02M',2.00),('A123WS0220000000',NULL,'BLI01G',16.00),('A123WS0240W00000',NULL,'BLI01G',1.00),('A123WS027BGW000',NULL,'BLI02G',1.00),('A123WS27GM000000',NULL,'BLI01G',8.00),('A123WS27GM000000',NULL,'BLI06S',10.00),('A123WS27GM000000',NULL,'JKT02M',5.00),('A112WT01BL000000',NULL,'JKT02M',1.00),('A112WT01C0000000',NULL,'BLI01G',2.00),('A112WT01GM000000',NULL,'JKT02M',8.00),('X111EPLWS23SP000',NULL,'JKT02M',1.00),('X111EPLWS69SP000',NULL,'BLI01G',3.00),('X111EPLWS69SP000',NULL,'JKT02M',1.00),('X112GMD75SW00000',NULL,'JKT02M',22.00),('X422MDAC75GD0000',NULL,'JKT02M',1.00),('A121YSH500C00000',NULL,'BLI01G',92.00),('A121YSH500C00000',NULL,'BLI06S',6.00),('A121YSH500C00000',NULL,'JKT02M',30.00),('A121YSH500CBL000',NULL,'BLI06S',1.00),('A121YSH500CBL000',NULL,'JKT02M',14.00);
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
  `coyid` int(10) NOT NULL,
  `jobtypeid` int(1) NOT NULL COMMENT '1. pelaku 2. Analisator',
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxjob`
--

LOCK TABLES `dbxjob` WRITE;
/*!40000 ALTER TABLE `dbxjob` DISABLE KEYS */;
INSERT INTO `dbxjob` VALUES (9,99778,'testcso','Test CSO','CSO',1,1),(10,99190,'askhid','askhid','CSO',1,2),(11,99190,'askhid','askhid','CSS',1,1),(12,99401,'regmen','regional manager','CSS',1,2),(13,99397,'kapur','kepala purchasing','CSS',1,2),(14,99727,'picwarehouse','picwarehouse','CSS',1,2);
/*!40000 ALTER TABLE `dbxjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbxmaterial`
--

DROP TABLE IF EXISTS `dbxmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbxmaterial` (
  `csomaterial` varchar(100) DEFAULT NULL,
  `typecekstok` varchar(5) DEFAULT NULL,
  `jenis` tinyint(4) DEFAULT NULL COMMENT '0 = Finish Good\r\n1 = Raw Material'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxmaterial`
--

LOCK TABLES `dbxmaterial` WRITE;
/*!40000 ALTER TABLE `dbxmaterial` DISABLE KEYS */;
INSERT INTO `dbxmaterial` VALUES ('Plat SS304 & 316,AS','CSO',1),('Plat SS304 & 316','CSS',NULL);
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
  `typecekstok` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbxsetdate`
--

LOCK TABLES `dbxsetdate` WRITE;
/*!40000 ALTER TABLE `dbxsetdate` DISABLE KEYS */;
INSERT INTO `dbxsetdate` VALUES ('2025-03-12','I','CSO'),('2025-03-13','I','CSS'),('2025-03-14','I','CSO'),('2025-03-22','I','CSO'),('2025-03-22','I','CSO'),('2025-03-22','I','CSS'),('2025-03-22','I','CSS'),('2025-03-27','I','CSS'),('2025-03-27','I','CSS');
/*!40000 ALTER TABLE `dbxsetdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grpdashboard`
--

DROP TABLE IF EXISTS `grpdashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grpdashboard` (
  `trsid` int(11) NOT NULL,
  `group` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grpdashboard`
--

LOCK TABLES `grpdashboard` WRITE;
/*!40000 ALTER TABLE `grpdashboard` DISABLE KEYS */;
INSERT INTO `grpdashboard` VALUES (5,'BALI'),(5,'JKT'),(5,'BALI'),(5,'BALI'),(9,'JKT'),(9,'BALI'),(11,'SBY'),(11,'JKT'),(11,'BALI'),(12,'SBY'),(12,'JKT'),(12,'BALI'),(12,'NO'),(14,'SBY'),(14,'JKT'),(14,'BALI'),(14,'NO');
/*!40000 ALTER TABLE `grpdashboard` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',3,'Personal Access Token','f75449e17457da2ae94ae396f1c35f8a8f8321d9b30e5fe1f55faa813357834a','[\"*\"]','2024-10-31 00:11:14',NULL,'2024-10-31 00:10:53','2024-10-31 00:11:14'),(2,'App\\Models\\User',13,'Personal Access Token','a175c2670f59584e6b9a19d8a3ce88fa3d9ff32e377ce318e1d64e702dfb4f14','[\"*\"]','2024-11-01 19:57:23',NULL,'2024-10-31 19:56:04','2024-11-01 19:57:23'),(3,'App\\Models\\User',13,'Personal Access Token','f1577553d7c1ba1af5ab372fcdbaf04875927b0ff27ec2c0fbc11f1dfc4e965d','[\"*\"]','2024-11-01 19:52:12',NULL,'2024-11-01 18:46:46','2024-11-01 19:52:12'),(4,'App\\Models\\User',13,'Personal Access Token','d4ba105261ed0fc75dcbbc72042b8bd3dc9202ddd12e5624ab120f8f38744c9c','[\"*\"]','2024-11-01 19:54:13',NULL,'2024-11-01 19:53:29','2024-11-01 19:54:13'),(5,'App\\Models\\User',16,'Personal Access Token','4dab2561b2d4e7b3847569de804490f8c7b2b294cedbbc89e6620b374b1369f2','[\"*\"]','2024-11-14 00:23:55',NULL,'2024-11-14 00:22:04','2024-11-14 00:23:55'),(6,'App\\Models\\User',2,'Personal Access Token','e1eacefdea3009479a6188af1953942158fd3abf909aaab0cf5eeb6cb6c44b56','[\"*\"]','2024-11-14 00:24:50',NULL,'2024-11-14 00:24:10','2024-11-14 00:24:50'),(7,'App\\Models\\User',16,'Personal Access Token','219859db15fc6d47a97aecb7d555a3609b0efa397560143d699125cbb3b268b7','[\"*\"]','2024-11-14 00:26:13',NULL,'2024-11-14 00:25:01','2024-11-14 00:26:13'),(8,'App\\Models\\User',16,'Personal Access Token','fecaf0ac1749998d2fc222afd49aa774889918535f85e76c93c474ceaa160a9b','[\"*\"]','2024-11-14 00:26:31',NULL,'2024-11-14 00:26:26','2024-11-14 00:26:31'),(9,'App\\Models\\User',2,'Personal Access Token','85827850fa038113fbeaf89c8030dbdf24ac32ffdbdd3dc5dcbbcd962ff29cc3','[\"*\"]','2024-11-14 00:28:37',NULL,'2024-11-14 00:26:40','2024-11-14 00:28:37'),(10,'App\\Models\\User',16,'Personal Access Token','a88c07067f0ad45a91085b8c4a955470a4e0793b23ef6e314bce147ad247261d','[\"*\"]','2024-11-14 00:30:21',NULL,'2024-11-14 00:29:05','2024-11-14 00:30:21'),(11,'App\\Models\\User',2,'Personal Access Token','c0c083c2c9df7e9ee4b6ea98db877da5f8f0006c27c49e8333af748954567fc3','[\"*\"]','2024-11-14 03:19:35',NULL,'2024-11-14 03:19:32','2024-11-14 03:19:35'),(12,'App\\Models\\User',16,'Personal Access Token','edba69564398db33dd99125efae860324b05797cfc8278042f6797f4aa86bc6a','[\"*\"]','2024-11-14 19:13:27',NULL,'2024-11-14 19:12:54','2024-11-14 19:13:27'),(13,'App\\Models\\User',2,'Personal Access Token','9731c1d8541f02da3e336ee5251dc551e2ff6c8c972714c7001be50e335b16d8','[\"*\"]',NULL,NULL,'2024-11-14 21:12:22','2024-11-14 21:12:22'),(14,'App\\Models\\User',3,'Personal Access Token','35c4dbb94f6d53a60fd693a292287f394cd192ac180f91ea45a573df42428bc3','[\"*\"]','2024-11-16 19:06:00',NULL,'2024-11-15 20:11:09','2024-11-16 19:06:00'),(15,'App\\Models\\User',3,'Personal Access Token','844537aac9bf56b79cdb2e3e91e588eaec8d5f3222c9f55b0bc831f93ca8b00b','[\"*\"]','2024-11-21 00:56:08',NULL,'2024-11-21 00:55:03','2024-11-21 00:56:08'),(16,'App\\Models\\User',27,'Personal Access Token','4e6010b8f36d2a74577a715fdcaa98d359afc3234c8347be83c2f393ce138237','[\"*\"]','2024-12-27 22:18:48',NULL,'2024-12-27 22:15:08','2024-12-27 22:18:48'),(17,'App\\Models\\User',24,'Personal Access Token','83eec6b067d9bdf78932b4346ab6dabfe539b755176a3e41ba16709f01ec0a7d','[\"*\"]','2024-12-30 01:39:53',NULL,'2024-12-29 19:54:41','2024-12-30 01:39:53'),(18,'App\\Models\\User',24,'Personal Access Token','5e72be4cb0e62bd754a71a8ce74f5f09d36909b34ea5f89469e7d5249e26a39b','[\"*\"]','2025-01-02 22:33:46',NULL,'2025-01-02 22:14:15','2025-01-02 22:33:46'),(19,'App\\Models\\User',25,'Personal Access Token','230fb97c137aab21b8ef0775f2b4eecd7703d3ac907547f3b1a7063c86159355','[\"*\"]','2025-01-02 23:13:00',NULL,'2025-01-02 22:33:58','2025-01-02 23:13:00'),(20,'App\\Models\\User',25,'Personal Access Token','8fc496490ae62ff3f9323dc48925b40be3486d632d275d8d29f3d05003cf50f0','[\"*\"]','2025-01-07 22:16:39',NULL,'2025-01-07 19:19:33','2025-01-07 22:16:39'),(21,'App\\Models\\User',25,'Personal Access Token','36c1e278e5e70771c1297b628d5d65c4951e857d7a62d27faeacc3392b1459e2','[\"*\"]','2025-01-20 01:55:42',NULL,'2025-01-20 01:39:54','2025-01-20 01:55:42'),(22,'App\\Models\\User',25,'Personal Access Token','365f944f9846110fdf542ad4800d096d1ec1e9681f25e17cdd3fb49b4ba1cd82','[\"*\"]','2025-01-21 21:48:29',NULL,'2025-01-21 21:18:59','2025-01-21 21:48:29'),(23,'App\\Models\\User',25,'Personal Access Token','281beaae963a5a8dee18d673e1206147355afc430cd2a62ef25031a1e70a8ff8','[\"*\"]','2025-01-22 00:16:27',NULL,'2025-01-21 21:48:42','2025-01-22 00:16:27'),(24,'App\\Models\\User',25,'Personal Access Token','eab878659a98a90a8ecc68e738bf70d8713ef8d1bd8d589711f78ccfaf679c22','[\"*\"]','2025-01-22 00:53:25',NULL,'2025-01-22 00:16:42','2025-01-22 00:53:25'),(25,'App\\Models\\User',27,'Personal Access Token','772dfcd47c0a904825265a7a182dcf8de9ab7807ae50dbf0510c6ce678e605db','[\"*\"]','2025-01-31 02:16:18',NULL,'2025-01-31 02:09:40','2025-01-31 02:16:18'),(26,'App\\Models\\User',25,'Personal Access Token','75719077ba0cb865bbd3dba5f4e15a1d01c5d485187578edf4969883e631b184','[\"*\"]','2025-02-04 21:43:42',NULL,'2025-02-04 21:43:31','2025-02-04 21:43:42'),(27,'App\\Models\\User',25,'Personal Access Token','3248f66ba393879b6371893c2a1c2b78e755d569d2f80380eddf36385368aeeb','[\"*\"]',NULL,NULL,'2025-02-04 21:44:00','2025-02-04 21:44:00'),(28,'App\\Models\\User',25,'Personal Access Token','6e2dc4289394c562f5312ae5d6c202d5684c91f4906e050018fd4f5bf7a39064','[\"*\"]','2025-02-04 21:59:16',NULL,'2025-02-04 21:44:00','2025-02-04 21:59:16'),(29,'App\\Models\\User',27,'Personal Access Token','52b81516ea897d6b7dccb88a3003c2117d6101b8463a1482f5e64cbddcc40534','[\"*\"]','2025-02-17 21:52:34',NULL,'2025-02-17 21:32:56','2025-02-17 21:52:34'),(30,'App\\Models\\User',27,'Personal Access Token','e973e06468a1facae3e9f954d1b4cda6f555e6d094002808a296e1bf346d7465','[\"*\"]','2025-02-19 01:40:10',NULL,'2025-02-18 23:31:57','2025-02-19 01:40:10'),(31,'App\\Models\\User',27,'Personal Access Token','c307e6a733fa5ff9419abc5c28effeac0a5189722b6ff9ef2277bdcebcef87ac','[\"*\"]','2025-02-19 19:05:07',NULL,'2025-02-19 00:17:32','2025-02-19 19:05:07'),(32,'App\\Models\\User',27,'Personal Access Token','46c9616ec69c81531288db2549dd7cf369b098894067cdb47da0a2829bd2f92a','[\"*\"]','2025-02-19 20:08:31',NULL,'2025-02-19 20:01:16','2025-02-19 20:08:31'),(33,'App\\Models\\User',28,'Personal Access Token','2791d973e39a45f6b71cac2e70f8e26bfee24973bb3c87b2f161c1024aa5129a','[\"*\"]','2025-02-19 20:11:18',NULL,'2025-02-19 20:09:33','2025-02-19 20:11:18'),(34,'App\\Models\\User',27,'Personal Access Token','c1883d8ee42063ab508446a1479fe3cf15e759b3323f622026c02b02a10217b1','[\"*\"]','2025-02-19 20:15:12',NULL,'2025-02-19 20:11:35','2025-02-19 20:15:12'),(35,'App\\Models\\User',28,'Personal Access Token','546fc79dd4cf022594813c24c81a93a14e0a2a2b0c731d3401c0154f7b58edfa','[\"*\"]','2025-02-19 20:46:04',NULL,'2025-02-19 20:15:25','2025-02-19 20:46:04'),(36,'App\\Models\\User',28,'Personal Access Token','1c0f1ac40b8f1a5f9651f56688300c900add9ad3bf1e3fc479bd5b03ab1fbf12','[\"*\"]','2025-02-19 20:46:26',NULL,'2025-02-19 20:46:19','2025-02-19 20:46:26'),(37,'App\\Models\\User',27,'Personal Access Token','5ccd17274bb9690efc6531bfebc6c6b163e31e7f2140efce4c94447475437e9d','[\"*\"]','2025-02-19 21:19:38',NULL,'2025-02-19 20:46:37','2025-02-19 21:19:38'),(38,'App\\Models\\User',28,'Personal Access Token','77c6569eee9e6fe8f41596c650196db0c524d5716285cde5d37fb8e33dd023f7','[\"*\"]','2025-02-19 21:24:00',NULL,'2025-02-19 21:19:44','2025-02-19 21:24:00'),(39,'App\\Models\\User',27,'Personal Access Token','134353906ab37a93957ba99effa56160c1285a6f96ed912f9abe8ecedd862f3c','[\"*\"]','2025-02-19 21:48:54',NULL,'2025-02-19 21:24:13','2025-02-19 21:48:54'),(40,'App\\Models\\User',27,'Personal Access Token','0bcd80996c12a749acc3664323301618faf37e60b312a52a788e38f444b2ebf4','[\"*\"]','2025-02-19 21:49:08',NULL,'2025-02-19 21:49:04','2025-02-19 21:49:08'),(41,'App\\Models\\User',28,'Personal Access Token','9a40ffc254a2da7bf1d1b332d3343d31c529b6f1ca1503e8b270d45724c9fb1c','[\"*\"]','2025-02-19 21:55:52',NULL,'2025-02-19 21:49:18','2025-02-19 21:55:52'),(42,'App\\Models\\User',29,'Personal Access Token','439f914777b833ab8db04e6bc593cd6d4b685855d5d59cf2448d6c0d99806785','[\"*\"]','2025-03-09 19:29:54',NULL,'2025-03-09 19:29:05','2025-03-09 19:29:54'),(43,'App\\Models\\User',29,'Personal Access Token','42e4d58f388542cc1bd025098e3dda006ecb2d700a2616654de97bbdac09668c','[\"*\"]','2025-03-17 20:24:41',NULL,'2025-03-09 20:51:53','2025-03-17 20:24:41'),(44,'App\\Models\\User',29,'Personal Access Token','178c8dad501a83be232c1996d224b9f9decbd6d65333f0abee842a295fd00b14','[\"*\"]',NULL,NULL,'2025-03-09 20:53:23','2025-03-09 20:53:23'),(45,'App\\Models\\User',29,'Personal Access Token','dad2991ee9d5f52ea2898a44e39c571f4efb41d6cacc0bd9de14b6a39c196598','[\"*\"]','2025-03-09 23:44:11',NULL,'2025-03-09 21:07:32','2025-03-09 23:44:11'),(46,'App\\Models\\User',29,'Personal Access Token','2f94be880a1c630d01d241d5b630f2a9e27af13121fa481463d39060a5550f0c','[\"*\"]',NULL,NULL,'2025-03-09 21:36:16','2025-03-09 21:36:16'),(47,'App\\Models\\User',28,'Personal Access Token','22866aa5c4294e6513f1ac82d1d07eefcdd06900f016741b405c8c732cc45f1f','[\"*\"]','2025-03-14 01:10:04',NULL,'2025-03-14 00:33:38','2025-03-14 01:10:04'),(48,'App\\Models\\User',28,'Personal Access Token','10fc92c3b1c3338b7df3929866cdfcbec4848ba94d556b7c6c9a5f7ebdf1ead0','[\"*\"]','2025-03-14 18:52:23',NULL,'2025-03-14 01:10:41','2025-03-14 18:52:23'),(49,'App\\Models\\User',28,'Personal Access Token','9de51344848bc0ba1a59b9d3ff56bcf22bfab65fc4f02732cabc238ff4bc3e62','[\"*\"]','2025-03-14 21:55:00',NULL,'2025-03-14 18:55:11','2025-03-14 21:55:00'),(50,'App\\Models\\User',28,'Personal Access Token','9391254ac144cb7397468e81404157c33adc017ccf404babb851cf8cc71f3a4e','[\"*\"]','2025-03-19 00:17:47',NULL,'2025-03-16 21:06:01','2025-03-19 00:17:47'),(51,'App\\Models\\User',29,'Personal Access Token','a7b50e7fed5d7ebdd94232589a49cf1a30c1f5ac6cef70c190024c76b99af3bf','[\"*\"]',NULL,NULL,'2025-03-16 22:06:38','2025-03-16 22:06:38'),(52,'App\\Models\\User',29,'Personal Access Token','c54c9fa3243f7dc975eda96c18d90a246146c0fd3e20c84ecf3ab17d579d6ad9','[\"*\"]','2025-03-18 00:20:02',NULL,'2025-03-17 20:22:28','2025-03-18 00:20:02'),(53,'App\\Models\\User',28,'Personal Access Token','77726e025a47db5338a88209003282d7272dfd1ecd0f4cc663bd4f7cb09ff3ca','[\"*\"]','2025-03-19 19:11:12',NULL,'2025-03-19 00:20:33','2025-03-19 19:11:12'),(54,'App\\Models\\User',28,'Personal Access Token','745df06701b9e3bcf839d39628728a685a57efe62f2ff4b86ae9a34c748cdd63','[\"*\"]','2025-03-19 21:19:14',NULL,'2025-03-19 19:11:42','2025-03-19 21:19:14'),(55,'App\\Models\\User',28,'Personal Access Token','e22fee617ffb2ec57fa300e28da62989249e60c439d28e1e6eed8598501d04e9','[\"*\"]','2025-03-20 23:03:41',NULL,'2025-03-19 21:21:32','2025-03-20 23:03:41'),(56,'App\\Models\\User',28,'Personal Access Token','d9a8c53c407f4c7332e4a94ee2f104f28975f24bbd0a618a939a482505506d07','[\"*\"]','2025-03-20 21:35:36',NULL,'2025-03-20 21:35:30','2025-03-20 21:35:36'),(57,'App\\Models\\User',28,'Personal Access Token','f163b703896c091120d119bed2f2a2343bf0f33fca366544d5ee892153e27a7a','[\"*\"]','2025-03-21 18:40:54',NULL,'2025-03-20 23:03:41','2025-03-21 18:40:54'),(58,'App\\Models\\User',28,'Personal Access Token','a9d4f79600024d928d99e3c738d8a8f3dcc393393706f0afaab7eb86ad3190f1','[\"*\"]','2025-03-25 02:28:25',NULL,'2025-03-21 21:27:19','2025-03-25 02:28:25'),(59,'App\\Models\\User',28,'Personal Access Token','f7d9068526532416fbc4c35b876944c5b9d483cee7ef21bfa6fd766dc0544777','[\"*\"]','2025-03-25 02:23:57',NULL,'2025-03-25 02:20:54','2025-03-25 02:23:57'),(60,'App\\Models\\User',28,'Personal Access Token','9fe429a20f149741f922292eeb97e1e99d9db0b84dec039794ace96daff774f4','[\"*\"]','2025-03-27 02:35:04',NULL,'2025-03-26 19:20:20','2025-03-27 02:35:04'),(61,'App\\Models\\User',28,'Personal Access Token','23db7ba657c44de40146169b62486c869dc2157e9f44b17a7968b0c654d38af2','[\"*\"]',NULL,NULL,'2025-03-26 21:36:55','2025-03-26 21:36:55'),(62,'App\\Models\\User',28,'Personal Access Token','d1b2e4f1cc1a235a1c0ade854277cd5a96dd5443473890b19b540e3c80e54744','[\"*\"]','2025-03-27 02:17:55',NULL,'2025-03-26 21:37:51','2025-03-27 02:17:55'),(63,'App\\Models\\User',29,'Personal Access Token','3361bcc782f9e2f6bf82a6f50fd849808a784b96f02fdb87aca89ef78970d7a4','[\"*\"]','2025-03-28 01:53:48',NULL,'2025-03-28 01:42:25','2025-03-28 01:53:48');
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
-- Dumping events for database 'SOS_DEV_SAP_MAN'
--

--
-- Dumping routines for database 'SOS_DEV_SAP_MAN'
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
	with total_cso AS (
	select
		d.trsdetid,
		sum(ifnull(d2.total, 0)) AS qtytot,
		1 AS isstarted,
		d2.csocount
	from
		dbtcsodet d
	join dbtcsodet2 d2 on
		d.csodetid = d2.csodetid
	join dbtcsohed h on
		h.csoid = d.csoid
	where
		h.status = 'A'
		and d.statussubmit = 'P'
	group by
		d.trsdetid,
		d2.csocount
	),
	group_warehouse as(
		select d.trsdetid, GROUP_CONCAT(DISTINCT d2.wrh separator', ') as description,
		GROUP_CONCAT(DISTINCT coalesce(nullif(dbmgrade.`group`,''),"NO") separator', ') as wrh from dbttrsdet2 d2
		left join dbttrsdet d on d2.trsdetid = d.trsdetid 
		join dbttrshed h on d.trsid = h.trsid
		join dbmgrade on d2.wrh = dbmgrade.gradecode
		where h.statusdoc <> 'P'
		group by d.trsdetid
	)
	,sub1 AS (
	select
			distinct `td`.`itemid` AS `itemid`,
			`td`.`trsdetid` AS `trsdetid`,
			`td`.`itemcode` AS `itemcode`,
			`td`.`itemname` AS `itemname`,
			`th`.`typecekstok` as `typecekstok`,
			`gw`.`description` as `description`,
			`gw`.`wrh` as `wrh`,
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
			ifnull(`td`.`koreksi`, 0) AS `koreksi`,
			ifnull(`td`.`deviasi`, 0) AS `deviasi`,
			ifnull(`td`.`statuscso`, 0) AS `statuscso`,
			`td`.`groupid` AS `groupid`,
			`g`.`groupdesc` AS `groupdesc`,
			`td`.`statusitem` AS `statusitem`,
			`td`.`analisator_checked` AS `analisator_checked`,
			`td`.`group_value` as `group_value`,
			`td`.`konversi_1` as `konversi_1`,
			`td`.`konversi_2` as `konversi_2`,
			`td`.`konversi_3` as `konversi_3`,
			`td`.`std_berat_kemasan` as `std_berat_kemasan`,
			`td`.`std_material_loss_minus` as `std_material_loss_minus`,
			`td`.`std_material_loss_plus` as `std_material_loss_plus`,
			`td`.`total_produksi` as `total_produksi`
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
	left join group_warehouse gw ON
		gw.trsdetid = td.trsdetid
	where
			th.statusdoc <> 'P' 
	)
	select
		`sub1`.`itemid`,
		`sub1`.`trsdetid`,
		`sub1`.`itemcode`,
		`sub1`.`itemname`,
		`sub1`.`description`,
		`sub1`.`wrh`,
		`sub1`.`onhand`,
		(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi`) - `sub1`.`onhand` AS `selisih`,
		`sub1`.`totalcso` AS `totalcso`,
		`sub1`.`std_material_loss_minus`,
		`sub1`.`std_material_loss_plus`,
		`sub1`.`total_produksi`,
		CASE when `sub1`.`total_produksi` <> 0 
			then (`sub1`.`totalcso` + 
			`sub1`.`koreksi` + 
			`sub1`.`deviasi` - 
			`sub1`.`onhand`)/`sub1`.`total_produksi`*100
		else 0
		END as percentage,		
		CASE
			when `sub1`.`total_produksi` <> 0 then 
			(
				case when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 1 -- ok
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 2 -- minus NOK
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 3 -- PLUS NOK
				else 0
				end 
			)
			else 
			(
				case when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 4 -- true
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 5 -- false minus
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 6 -- false plus
				else 0
				end  
			)
		END AS `status`,
		CASE
			when `sub1`.`total_produksi` <> 0 then 
			(
				case when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'ok' -- ok
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` < `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'nok -' -- minus NOK
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_plus` AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`)
				/`sub1`.`total_produksi` > `sub1`.`std_material_loss_minus`) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'nok +' -- PLUS NOK
				else 'belum'
				end 
			)
			else 
			(
				case when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'true' -- true
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) < -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'false -' -- false minus
				when 
				((`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > 1 AND
				(`sub1`.`totalcso` + `sub1`.`koreksi` + `sub1`.`deviasi` - `sub1`.`onhand`) > -1 ) and (`sub1`.`isstarted` <> 0
			    or `sub1`.`koreksi` <> 0) then 'false +' -- false plus
				else 'belum'
				end  
			)
		END AS `statusname`,
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
	cast(sum(d2.total) as float) AS qtytot,
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
    `cd2`.`csodetid` as `csodetid`,
    `cd`.`itemid` AS `itemid`,
    `th`.`typecekstok` AS `typecekstok`,
    `cd2`.type AS `jenis_produksi`,
    `cd2`.`csocount` AS `csocount`,
    `cd`.`grade` AS `grade`,
    `g`.`description` AS `description`,
    `th`.`statusdoc` AS `statusdoc`,
    `l`.`locationname` AS `locationname`,
    `cd`.`color` AS `color`,
    `cd2`.`qty` AS `qty`,
    `cd2`.`history` as `history`,
    `cd2`.`konversi` as `konversi`,
	`cd2`.`berat_kotor` as `berat_kotor`,
	`cd2`.`berat_kemasan` as `berat_kemasan`,
	`cd2`.`berat_keran` as `berat_keran`,
	`cd2`.`total` as `total`,
    `cso1`.`qtytot` as `cso1`,
    `cso2`.`qtytot` as `cso2`,
    `cso3`.`qtytot` as `cso3`,
    `cso4`.`qtytot` as `cso4`,
    `cd`.`remark` AS `remark`
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
BEGIN with grade as(
select d.trsdetid,d.itemid,d2.csocount,d.statussubmit
	,GROUP_CONCAT(d.grade SEPARATOR ', ') as grade
	from dbtcsodet d 
	left join dbtcsodet2 d2 on d.csodetid = d2.csodetid join dbtcsohed h on
	h.csoid = d.csoid
where
	h.status = 'A'
	and d.statussubmit = 'P'
	and tipecso = 'R' AND
	grade <>"" group by d.trsdetid , d2.csocount,d.statussubmit)
	
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
	dbttrsdet.onhand,
	dbttrsdet.createddate,
	grade,
	(
	select
		group_concat(DISTINCT dbtcsohed.csoid separator ', ') AS 'csoid'
	from
		dbtcsohed
	inner join dbtcsodet on
		dbtcsodet.csoid = dbtcsohed.csoid 
	where
		dbtcsodet.trsdetid = dbttrsdet.trsdetid 
	) as 'csoid',
	(
	select
		group_concat(DISTINCT dbmuser.name separator ', ') AS 'pelaku'
	from
		dbmuser
	inner join dbtcsohed on
		dbmuser.userid = dbtcsohed.pelakuid
	inner join dbtcsodet on
		dbtcsodet.csoid = dbtcsohed.csoid 
	where
		dbtcsodet.trsdetid = dbttrsdet.trsdetid 
	) as 'pelaku',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0) + +COALESCE(dbttrsdet.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "1"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
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
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "1"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
	GROUP BY dbtcsodet.trsdetid  
	) as 'loctcso1',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0) + +COALESCE(dbttrsdet.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "2"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
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
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "2"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
	GROUP BY dbtcsodet.trsdetid  ) as 'loctcso2',
		(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0) + +COALESCE(dbttrsdet.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "3"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
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
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "3"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
	GROUP BY dbtcsodet.trsdetid  ) as 'loctcso3',
	(
	select
		(SUM(dbtcsodet2.qty)+COALESCE(dbttrsdet.deviasi, 0) + +COALESCE(dbttrsdet.koreksi, 0))
	from
		dbtcsodet
	inner join dbtcsodet2 on
		dbtcsodet.csodetid = dbtcsodet2.csodetid
	where
		dbtcsodet.trsdetid  = dbttrsdet.trsdetid 
		and dbtcsodet2.csocount = "4"
		AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
	) as 'trace'
from
	dbttrsdet
left join dbttrsdet2 on
	dbttrsdet.trsdetid = dbttrsdet2.trsdet2id
left join dbmuser on
	dbmuser.userid = dbttrsdet.analisatorid
inner join dbtcsodet on dbtcsodet.trsdetid  = dbttrsdet.trsdetid
where
	dbttrsdet.trsid =`paramTrsid`
	AND (dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')
group by
	dbttrsdet.trsdetid;
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
		h.trsid = paramTrsId
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
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'T')
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
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'T')
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
				and not dbttrsdet.onhand = 0
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
				AND (dbttrsdet.statusitem = 'R' OR dbttrsdet.statusitem = 'T')
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
	AND
	grade <> ""
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
	AND
	grade <> ""
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TestReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dev`@`%` PROCEDURE `TestReport`(IN `paramTrsid` VARCHAR(255))
BEGIN 
with total_qty as 
(
	select 
		d.trsdetid,
		d.locationid,
		l.locationname,
		sum(coalesce(d2.qty,0)) as qty
	from dbtcsodet d 
	left join dbtcsodet2 d2 on d2.csodetid = d.csodetid
	join dbtcsohed h  on d.csoid = h.csoid
	left join dbmlocation l on d.locationid = l.locationid
	WHERE 
		h.trsid = paramTrsid
	group by d.locationid,d.trsdetid, d2.csocount
	order by d.trsdetid, d.locationid
	
),
area as 
(
	select
		d.trsdetid,
		group_concat(DISTINCT l.locationname) AS 'loc'
	from
		dbtcsodet d left join dbmlocation l on d.locationid = l.locationid
		left join dbtcsohed h on d.csoid=h.csoid
	where
		h.trsid = paramTrsid
	group by d.trsdetid
)
select 
	d.trsdetid, 
	d.itemid,
	d.itemname,
	t.locationname, 
	t.qty,d.onhand, 
	p.name,
	a.loc as area,
	d.konversi_1,
	d.konversi_2,
	d.konversi_3,
	d.std_berat_kemasan,
	d.std_material_loss_minus,
	d.std_material_loss_plus,
	d.total_produksi
from dbttrsdet d
left join total_qty t on t.trsdetid = d.trsdetid
left join dbtcsoprsn p on d.analisatorid = p.userid AND p.jobtypeid =2 
left join area a on d.trsdetid = a.trsdetid
where d.trsid=paramTrsid;
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
/*!50001 VIEW `analisator` AS select `dbxjob`.`jobid` AS `jobid`,`dbxjob`.`userid` AS `userid`,`dbxjob`.`username` AS `username`,`dbxjob`.`name` AS `name`,`dbxjob`.`coyid` AS `coyid`,`dbxjob`.`jobtypeid` AS `jobtypeid`,`dbxjob`.`typecekstok` AS `typecekstok` from `dbxjob` where `dbxjob`.`jobtypeid` = 2 */;
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

-- Dump completed on 2025-04-29 16:06:21
