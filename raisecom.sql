-- MySQL dump 10.13  Distrib 5.5.44, for FreeBSD9.3 (amd64)
--
-- Host: localhost    Database: raisecom
-- ------------------------------------------------------
-- Server version	5.5.31

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
-- Table structure for table `ACCOUNTS`
--

DROP TABLE IF EXISTS `ACCOUNTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCOUNTS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` char(40) NOT NULL,
  `TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCOUNTS`
--

LOCK TABLES `ACCOUNTS` WRITE;
/*!40000 ALTER TABLE `ACCOUNTS` DISABLE KEYS */;
INSERT INTO `ACCOUNTS` VALUES (1,'admin','f865b53623b121fd34ee5426c792e5c33af8c227',9);
/*!40000 ALTER TABLE `ACCOUNTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMERS`
--

DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMERS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ADDRESS` varchar(255) CHARACTER SET utf8 NOT NULL,
  `EGN` bigint(10) unsigned NOT NULL,
  `ONU_MODEL` int(11) NOT NULL,
  `OLT` int(11) NOT NULL,
  `PON_PORT` int(11) NOT NULL,
  `PON_ONU_ID` tinyint(4) NOT NULL,
  `MAC_ADDRESS` bigint(20) unsigned NOT NULL,
  `SVR_TEMPLATE` tinyint(4) NOT NULL,
  `STATE` tinyint(4) NOT NULL DEFAULT '1',
  `MAX_CPE` smallint(6) NOT NULL,
  `RECV_POWER` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OLT` (`OLT`),
  KEY `PON_PORT` (`PON_PORT`),
  KEY `SVR_TEMPLATE` (`SVR_TEMPLATE`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERS`
--

LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
INSERT INTO `CUSTOMERS` VALUES (50,'HT803_R_Fixed','',0,5,2,23,1,277676466697609,0,1,0,0),(57,'HT803-R','',0,5,2,23,2,277676466697679,0,1,0,0),(58,'ht803-z','adfadfadsdddfadfadfadfadfadsfasdfasd',3333333333,7,2,23,9,92991830154861,0,1,0,0),(80,'ht803sr1','',0,9,2,23,11,92991842578424,6,1,0,0),(81,'ht803sr3','',0,9,2,23,8,92991845507226,0,1,0,0),(84,'5108-PE','',0,6,2,23,5,61707956079,0,1,0,0),(85,'ht803-1ge','',0,2,2,23,4,119836997156343,0,1,0,0),(86,'ht803','',0,1,2,23,6,268548759371377,0,1,0,0),(87,'ht803-u-2','',0,10,2,23,13,61715216037,0,1,0,0),(88,'ht803-1ge-z','',0,8,2,23,3,92991830146817,0,1,0,0),(89,'HT803-U-T','',0,10,2,23,7,305419896,0,1,0,0),(91,'ht803-1ge(T)','',0,15,2,23,10,61714791938,0,1,0,0),(92,'ht803(T)','',0,14,2,23,12,61714790898,0,1,0,0);
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HISTORY`
--

DROP TABLE IF EXISTS `HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HISTORY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMERS_ID` int(11) NOT NULL,
  `DATE` datetime NOT NULL,
  `ACTION` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MAC_ADDRESS` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMERS_ID` (`CUSTOMERS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HISTORY`
--

LOCK TABLES `HISTORY` WRITE;
/*!40000 ALTER TABLE `HISTORY` DISABLE KEYS */;
INSERT INTO `HISTORY` VALUES (2,48,'2015-07-23 12:06:06','Edit Customer',61707956079),(4,0,'2015-07-23 12:20:04','Add New Customer',4328719365),(5,53,'2015-07-23 12:25:51','Add New Customer',4328719365),(6,54,'2015-07-23 12:28:42','Add New Customer',3315759496140),(7,54,'2015-07-23 12:28:58','Delete Customer Veno Beno, 335838 Strishina Str., 8423478123',3315759496140),(8,48,'2015-07-23 12:44:35','Edit Customer',61707956079),(9,47,'2015-07-23 12:53:12','Edit Customer',119836997156343),(10,50,'2015-07-29 15:42:11','Edit Customer',277676466697609),(11,45,'2015-07-29 15:43:51','Edit Customer',277676466697679),(12,48,'2015-08-12 15:25:47','Delete Customer 5108-PE, , 0',61707956079),(13,52,'2015-08-12 15:26:05','Add New Customer',61707956079),(14,52,'2015-08-12 15:26:55','Edit Customer',61707956079),(15,52,'2015-08-12 15:27:43','Edit Customer',61707956079),(16,52,'2015-08-12 15:30:11','Edit Customer',61707956079),(17,52,'2015-08-12 15:30:38','Edit Customer',61707956079),(18,52,'2015-08-12 15:30:59','Edit Customer',61707956079),(19,52,'2015-08-12 15:31:30','Edit Customer',61707956079),(20,50,'2015-08-12 15:37:47','Edit Customer',277676466697609),(21,52,'2015-08-12 15:39:38','Delete Customer 5108-PE, , 0',61707956079),(22,53,'2015-08-12 15:40:14','Add New Customer',61707956079),(23,53,'2015-08-12 15:45:19','Delete Customer 5108-PE, , 0',61707956079),(24,54,'2015-08-12 15:45:39','Add New Customer',61707956079),(25,51,'2015-08-12 15:53:18','Delete Customer Svetlin, Slivnitza 357, 7711223311',92991830154861),(26,55,'2015-08-12 15:54:00','Add New Customer',92991830154861),(27,54,'2015-08-12 15:54:56','Delete Customer 5108-PE, , 0',61707956079),(28,56,'2015-08-12 15:55:10','Add New Customer',61707956079),(29,45,'2015-08-17 12:57:17','Delete Customer HT803-R, , 0',277676466697679),(30,57,'2015-08-17 12:57:37','Add New Customer',277676466697679),(31,55,'2015-08-17 12:57:59','Delete Customer ht803-z, , 0',92991830154861),(32,58,'2015-08-17 12:58:14','Add New Customer',92991830154861),(33,46,'2015-08-17 12:58:53','Delete Customer HT803-1GE-Z, , 0',92991830146817),(34,59,'2015-08-17 12:59:08','Add New Customer',92991830146817),(35,47,'2015-08-17 12:59:19','Delete Customer HT803-1GE, , 0',119836997156343),(36,60,'2015-08-17 12:59:29','Add New Customer',119836997156343),(37,61,'2015-08-27 18:09:38','Add New Customer',268548759371377),(38,60,'2015-09-01 14:29:06','Edit Customer',119836997156343),(39,59,'2015-09-04 13:49:03','Edit Customer',92991830146817),(40,60,'2015-09-04 14:21:30','Edit Customer',119836997156343),(41,59,'2015-09-04 14:21:48','Edit Customer',92991830146817),(42,59,'2015-09-04 14:21:58','Edit Customer',92991830146817),(43,60,'2015-09-07 15:00:14','Edit Customer',119836997156343),(44,59,'2015-09-07 15:00:50','Edit Customer',92991830146817),(45,57,'2015-09-07 15:01:41','Edit Customer',277676466697679),(46,56,'2015-09-07 15:05:56','Edit Customer',61707956079),(47,56,'2015-09-07 15:06:20','Edit Customer',61707956079),(48,56,'2015-09-07 15:06:53','Edit Customer',61707956079),(49,60,'2015-09-10 14:45:02','Edit Customer',119836997156343),(50,60,'2015-09-10 14:51:19','Edit Customer',119836997156343),(51,57,'2015-09-10 14:51:44','Edit Customer',277676466697679),(52,58,'2015-09-10 15:17:34','Edit Customer',92991830154861),(53,60,'2015-09-15 10:57:47','Edit Customer',119836997156343),(54,60,'2015-09-15 11:03:13','Edit Customer',119836997156343),(55,60,'2015-09-15 12:52:13','Edit Customer',119836997156343),(56,57,'2015-09-15 12:53:34','Edit Customer',277676466697679),(57,50,'2015-10-23 11:52:02','Edit Customer',277676466697609),(58,57,'2015-10-23 11:52:15','Edit Customer',277676466697679),(59,57,'2015-10-23 11:52:43','Edit Customer',277676466697679),(60,61,'2015-10-23 11:52:58','Edit Customer',268548759371377),(61,61,'2015-10-23 11:53:07','Edit Customer',268548759371377),(62,62,'2015-11-11 13:24:31','Add New Customer',92991830608845),(63,63,'2015-11-20 12:18:24','Add New Customer',92991830607470),(64,58,'2015-12-08 15:59:50','Edit Customer',92991830154861),(65,58,'2015-12-08 16:00:36','Edit Customer',92991830154861),(66,58,'2016-01-08 12:11:22','Edit Customer',92991830154861),(67,64,'2016-01-21 13:46:09','Add New Customer',277676468168165),(68,64,'2016-01-21 13:51:41','Edit Customer',277676468168258),(69,64,'2016-01-21 13:55:35','Edit Customer',277676468168385),(70,64,'2016-01-21 13:58:30','Edit Customer',277676468168237),(71,64,'2016-03-16 13:43:19','Edit Customer',277676468168209),(72,65,'2016-03-18 11:58:58','Add New Customer',119836997156089),(73,60,'2016-03-18 12:01:58','Delete Customer ht803-1ge, , 0',119836997156343),(74,66,'2016-03-18 12:02:14','Add New Customer',119836997156343),(75,61,'2016-04-07 14:46:24','Edit Customer',268548759371377),(76,67,'2016-05-04 13:04:22','Add New Customer',92991842578312),(77,62,'2016-05-04 13:04:42','Delete Customer ht803-sr, , 0',92991830608845),(78,65,'2016-05-05 14:21:22','Edit Customer',92991831091316),(79,68,'2016-06-17 15:15:25','Add New Customer',61709632620),(80,69,'2016-06-29 11:54:08','Add New Customer',61709632622),(81,70,'2016-06-30 16:59:22','Add New Customer',92991831091892),(82,71,'2016-06-30 17:12:39','Add New Customer',92991831091911),(83,67,'2016-07-14 13:14:08','Edit Customer',92991842578331),(84,67,'2016-07-14 13:26:23','Delete Customer ht803-sr, , 0',92991842578331),(85,72,'2016-07-14 13:26:55','Add New Customer',92991842578331),(86,66,'2016-07-14 13:29:56','Edit Customer',119836997156343),(87,66,'2016-07-14 13:30:17','Delete Customer ht803-1ge, , 0',119836997156343),(88,73,'2016-07-14 13:30:37','Add New Customer',119836997156343),(89,74,'2016-07-14 13:33:44','Add New Customer',92991842578310),(90,63,'2016-07-14 13:34:18','Delete Customer ht803-z-2, , 0',92991830607470),(91,75,'2016-07-14 13:53:36','Add New Customer',92991842578312),(92,75,'2016-07-14 15:23:15','Delete Customer ht803sr3, , 0',92991842578312),(93,76,'2016-07-14 15:23:28','Add New Customer',92991842578312),(94,76,'2016-07-14 15:37:18','Delete Customer ht803sr3, , 0',92991842578312),(95,77,'2016-07-14 15:37:33','Add New Customer',92991842578312),(96,74,'2016-07-14 15:38:07','Delete Customer ht803sr2, , 0',92991842578310),(97,78,'2016-07-14 15:38:19','Add New Customer',92991842578310),(98,78,'2016-07-14 15:49:16','Delete Customer ht803sr2, , 0',92991842578310),(99,79,'2016-07-14 15:49:30','Add New Customer',92991842578310),(100,72,'2016-07-14 15:50:03','Delete Customer ht803sr, , 0',92991842578331),(101,80,'2016-07-14 15:50:17','Add New Customer',92991842578331),(102,77,'2016-07-14 15:50:30','Delete Customer ht803sr3, , 0',92991842578312),(103,81,'2016-07-14 15:50:43','Add New Customer',92991842578312),(104,59,'2016-07-15 13:43:51','Delete Customer ht803-1ge-z, , 1',92991830146817),(105,82,'2016-07-15 13:44:06','Add New Customer',92991830146817),(106,70,'2016-07-15 13:44:31','Delete Customer iscom, 192.168.0.5, 0',92991831091892),(107,69,'2016-07-15 15:45:33','Delete Customer ht803-u-2nd, , 0',61709632622),(108,64,'2016-07-15 15:45:55','Delete Customer 2222222222, , 0',277676468168209),(109,73,'2016-07-15 15:46:27','Delete Customer ht803-1ge, , 0',119836997156343),(110,83,'2016-07-15 15:46:39','Add New Customer',119836997156343),(111,56,'2016-07-15 15:47:02','Delete Customer 5108-PE, , 0',61707956079),(112,84,'2016-07-15 15:47:20','Add New Customer',61707956079),(113,61,'2016-07-15 15:53:39','Edit Customer',268548759371377),(114,61,'2016-07-15 15:54:48','Edit Customer',268548759371377),(115,61,'2016-07-15 15:58:51','Edit Customer',268548759371377),(116,50,'2016-07-15 15:59:05','Edit Customer',277676466697609),(117,57,'2016-07-15 15:59:13','Edit Customer',277676466697679),(118,57,'2016-07-15 15:59:22','Edit Customer',277676466697679),(119,68,'2016-07-15 15:59:49','Edit Customer',61709632620),(120,58,'2016-07-15 16:00:01','Edit Customer',92991830154861),(121,65,'2016-07-15 16:00:15','Edit Customer',92991831091316),(122,81,'2016-07-18 13:49:36','Edit Customer',92991842578326),(123,79,'2016-07-18 13:50:26','Edit Customer',92991842578378),(124,80,'2016-07-18 13:52:05','Edit Customer',92991842578417),(125,81,'2016-07-18 13:52:55','Edit Customer',92991842578326),(126,79,'2016-07-19 11:50:46','Edit Customer',92991842578378),(127,80,'2016-07-19 11:51:08','Edit Customer',92991842578417),(128,81,'2016-07-19 11:51:35','Edit Customer',92991842578326),(129,79,'2016-07-27 12:21:09','Edit Customer',92991842578331),(130,80,'2016-07-27 12:21:39','Edit Customer',92991842578312),(131,81,'2016-07-27 12:22:29','Edit Customer',92991842578310),(132,68,'2016-07-27 16:25:40','Edit Customer',61709632620),(133,80,'2016-08-01 12:40:40','Edit Customer',92991842578378),(134,83,'2016-08-01 13:00:03','Edit Customer',119836997156343),(135,83,'2016-08-01 16:13:21','Delete Customer ht803-1ge, , 0',119836997156343),(136,85,'2016-08-01 16:13:33','Add New Customer',119836997156343),(137,79,'2016-08-10 11:01:47','Edit Customer',92991842578417),(138,80,'2016-08-10 11:02:17','Edit Customer',92991842578424),(139,68,'2016-08-22 11:04:06','Edit Customer',61713311334),(140,68,'2016-08-22 11:32:52','Edit Customer',61715216037),(141,81,'2016-08-22 15:26:04','Edit Customer',92991842578453),(142,61,'2016-08-23 12:43:12','Delete Customer ht803, , 0',268548759371377),(143,86,'2016-08-23 12:43:38','Add New Customer',268548759371377),(144,87,'2016-08-30 12:38:57','Add New Customer',61713311334),(145,68,'2016-09-08 10:33:35','Edit Customer',305419896),(146,68,'2016-09-08 12:37:24','Edit Customer',305419896),(147,79,'2016-09-08 12:41:39','Edit Customer',92991842578417),(148,79,'2016-09-08 12:42:15','Edit Customer',92991842578417),(149,79,'2016-09-08 12:42:29','Edit Customer',92991842578417),(150,79,'2016-09-08 12:43:19','Delete Customer ht803sr2, , 0',92991842578417),(151,80,'2016-09-08 12:45:48','Edit Customer',92991842578424),(152,65,'2016-09-08 12:46:35','Delete Customer ht803-1z-netguard, , 0',92991831091316),(153,80,'2016-09-08 12:47:48','Edit Customer',92991842578424),(154,81,'2016-09-09 11:34:54','Edit Customer',92991845507226),(155,82,'2016-10-03 10:43:08','Delete Customer ht803-1ge-z, , 0',92991830146817),(156,88,'2016-10-03 10:43:37','Add New Customer',92991830146817),(157,68,'2016-10-03 10:43:54','Delete Customer HT803-U, , 0',305419896),(158,89,'2016-10-03 10:44:09','Add New Customer',305419896),(159,71,'2016-10-03 10:59:08','Delete Customer ht803-03, 192.168.0 100, 0',92991831091911),(160,88,'2016-10-03 11:05:15','Edit Customer',92991830146817),(161,88,'2016-10-03 11:07:40','Edit Customer',92991830146817),(162,88,'2016-10-03 14:58:04','Edit Customer',92991830146817),(163,88,'2016-10-03 14:59:01','Edit Customer',92991830146817),(164,90,'2016-10-03 15:20:02','Add New Customer',2211975595527),(165,90,'2016-10-03 15:20:20','Delete Customer Veno, Beno, 0',2211975595527),(166,89,'2016-10-10 13:57:49','Edit Customer',305419896),(167,89,'2016-10-10 13:57:56','Edit Customer',305419896),(168,89,'2016-10-10 14:16:35','Edit Customer',305419896),(169,89,'2016-10-10 14:17:09','Edit Customer',305419896),(170,89,'2016-10-10 14:17:16','Edit Customer',305419896),(171,87,'2016-10-12 16:06:59','Edit Customer',61715216037),(172,91,'2016-10-25 11:25:35','Add New Customer',61714791938),(173,91,'2016-10-25 11:30:30','Edit Customer',61714791938),(174,91,'2016-10-25 11:31:04','Edit Customer',61714791938),(175,91,'2016-10-25 11:31:53','Edit Customer',61714791938),(176,92,'2016-10-25 12:06:06','Add New Customer',61714790898);
/*!40000 ALTER TABLE `HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OLT`
--

DROP TABLE IF EXISTS `OLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OLT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `MODEL` tinyint(4) NOT NULL,
  `IP_ADDRESS` int(10) unsigned NOT NULL,
  `RO` varchar(50) NOT NULL,
  `RW` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OLT`
--

LOCK TABLES `OLT` WRITE;
/*!40000 ALTER TABLE `OLT` DISABLE KEYS */;
INSERT INTO `OLT` VALUES (2,'ISCOM5508(B)',2,787316482,'public','private'),(3,'ISCOM5508(A)',1,3232261727,'public','private');
/*!40000 ALTER TABLE `OLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OLT_MODEL`
--

DROP TABLE IF EXISTS `OLT_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OLT_MODEL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `TYPE` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OLT_MODEL`
--

LOCK TABLES `OLT_MODEL` WRITE;
/*!40000 ALTER TABLE `OLT_MODEL` DISABLE KEYS */;
INSERT INTO `OLT_MODEL` VALUES (1,'ISCOM5508(A)',1),(2,'ISCOM5508(B)',2),(3,'ISCOM6800',2);
/*!40000 ALTER TABLE `OLT_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ONU`
--

DROP TABLE IF EXISTS `ONU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ONU` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET utf8 NOT NULL,
  `PORTS` tinyint(4) NOT NULL,
  `DTYPE` int(11) NOT NULL,
  `RF` tinyint(1) NOT NULL,
  `PSE` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ONU`
--

LOCK TABLES `ONU` WRITE;
/*!40000 ALTER TABLE `ONU` DISABLE KEYS */;
INSERT INTO `ONU` VALUES (1,'ht803',4,510509,0,1),(2,'ht803-1ge',1,510107,0,0),(4,'ht803-w',4,540406,0,0),(5,'ht803-r',4,530403,1,0),(6,'5108-pe',8,510801,0,1),(7,'ht803-z',4,510700,0,0),(8,'ht803-1ge-z',1,510109,0,0),(9,'ht803-sr',4,942682963,1,0),(10,'ht803-u-t',4,942691668,1,0),(11,'ht803-03',4,100000,0,1),(13,'AUTO',0,0,0,0),(14,'ht803-t',4,942682964,0,0),(15,'ht803-1ge-t',1,942688069,0,0);
/*!40000 ALTER TABLE `ONU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PON`
--

DROP TABLE IF EXISTS `PON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PON` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 NOT NULL,
  `OLT` int(11) NOT NULL,
  `SLOT_ID` tinyint(4) NOT NULL,
  `PORT_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OLT` (`OLT`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PON`
--

LOCK TABLES `PON` WRITE;
/*!40000 ALTER TABLE `PON` DISABLE KEYS */;
INSERT INTO `PON` VALUES (21,'port3',2,1,3),(22,'port2',2,1,2),(23,'port1',2,1,1),(24,'port4',2,1,4),(25,'port1',3,1,1);
/*!40000 ALTER TABLE `PON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SVR_TEMPLATE`
--

DROP TABLE IF EXISTS `SVR_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SVR_TEMPLATE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `PORTS` tinyint(4) NOT NULL,
  `OLT` int(11) NOT NULL,
  `TEMPLATE_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `OLT` (`OLT`),
  KEY `TEMPLATE_ID` (`TEMPLATE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SVR_TEMPLATE`
--

LOCK TABLES `SVR_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `SVR_TEMPLATE` DISABLE KEYS */;
INSERT INTO `SVR_TEMPLATE` VALUES (3,'4PORT_Bronze',4,1,3),(4,'boza',1,1,22),(5,'boza22',4,1,1),(6,'4port',4,2,2),(7,'1port',1,2,1);
/*!40000 ALTER TABLE `SVR_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-07 11:38:30