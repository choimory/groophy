-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: groophy
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `board_1`
--

DROP TABLE IF EXISTS `board_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_1` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_1`
--

LOCK TABLES `board_1` WRITE;
/*!40000 ALTER TABLE `board_1` DISABLE KEYS */;
INSERT INTO `board_1` VALUES (1,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:25:15',0,0,NULL),(2,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:40',0,0,NULL),(3,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:45',0,0,NULL),(4,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:45',0,0,NULL),(6,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:48',0,0,NULL),(7,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:48',0,0,NULL),(8,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:48',0,0,NULL),(9,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:48',0,0,NULL),(13,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(14,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(15,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(16,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(17,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(18,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(19,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(20,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:50',0,0,NULL),(28,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(29,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(30,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(31,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(32,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(33,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(34,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(35,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(36,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(37,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(38,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(39,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(40,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(41,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(42,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(43,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:51',0,0,NULL),(59,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(60,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(61,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(62,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(63,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(64,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(65,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(66,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(67,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(68,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(69,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(70,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(71,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(72,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(73,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(74,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(75,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(76,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(77,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(78,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(79,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(80,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(81,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(82,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(83,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(84,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(85,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(86,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(87,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(88,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(89,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(90,'홍길동','test modify데이터의 처리','test modify \r\n필드 데이터 글자수','2018-11-15 16:26:52',0,0,NULL),(122,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(123,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(124,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(125,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(126,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(127,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(128,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(129,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(130,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(131,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(132,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(133,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(134,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(135,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(136,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(137,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(138,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(139,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(140,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(141,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(142,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(143,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(144,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(145,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(146,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(147,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(148,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(149,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(150,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(151,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(152,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(153,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(154,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(155,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(156,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(157,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(158,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(159,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(160,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(161,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(162,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(163,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(164,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(165,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(166,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(167,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(168,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(169,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(170,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(171,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(172,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(173,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(174,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(175,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(176,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(177,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(178,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(179,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(180,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(181,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(182,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(183,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(184,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(185,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:53',0,0,NULL),(249,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(250,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(251,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(252,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(253,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(254,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(255,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(256,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(257,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(258,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(259,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(260,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(261,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(262,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(263,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(264,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(265,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(266,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(267,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(268,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(269,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(270,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(271,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(272,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(273,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(274,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(275,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(276,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(277,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(278,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(279,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(280,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(281,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(282,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(283,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(284,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(285,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(286,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(287,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(288,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(289,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(290,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(291,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(292,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(293,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(294,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(295,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(296,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(297,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(298,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(299,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(300,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(301,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(302,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(303,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(304,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(305,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(306,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(307,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(308,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(309,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(310,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(311,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(312,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(313,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(314,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(315,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(316,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(317,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(318,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(319,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(320,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(321,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(322,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(323,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(324,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(325,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(326,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(327,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(328,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(329,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(330,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(331,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(332,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(333,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(334,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(335,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(336,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(337,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(338,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(339,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(340,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(341,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(342,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(343,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(344,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(345,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(346,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(347,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(348,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(349,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(350,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(351,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(352,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(353,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(354,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(355,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(356,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(357,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(358,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(359,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(360,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(361,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(362,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(363,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(364,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(365,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(366,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(367,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(368,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(369,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',0,0,NULL),(370,'홍길동','mysql 데이터의 처리','mysql 필드 데이터 글자수','2018-11-15 16:26:54',4,3,NULL);
/*!40000 ALTER TABLE `board_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_21`
--

DROP TABLE IF EXISTS `board_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_21` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(20) DEFAULT NULL,
  `bTitle` varchar(100) DEFAULT NULL,
  `bContent` varchar(300) DEFAULT NULL,
  `bDate` datetime DEFAULT NULL,
  `bHit` int(11) DEFAULT NULL,
  `bGroup` int(11) DEFAULT NULL,
  `bStep` int(11) DEFAULT NULL,
  `bIndent` int(11) DEFAULT NULL,
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_21`
--

LOCK TABLES `board_21` WRITE;
/*!40000 ALTER TABLE `board_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_22`
--

DROP TABLE IF EXISTS `board_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_22` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(20) DEFAULT NULL,
  `bTitle` varchar(100) DEFAULT NULL,
  `bContent` varchar(300) DEFAULT NULL,
  `bDate` datetime DEFAULT NULL,
  `bHit` int(11) DEFAULT NULL,
  `bGroup` int(11) DEFAULT NULL,
  `bStep` int(11) DEFAULT NULL,
  `bIndent` int(11) DEFAULT NULL,
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_22`
--

LOCK TABLES `board_22` WRITE;
/*!40000 ALTER TABLE `board_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_23`
--

DROP TABLE IF EXISTS `board_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_23` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(20) DEFAULT NULL,
  `bTitle` varchar(100) DEFAULT NULL,
  `bContent` varchar(300) DEFAULT NULL,
  `bDate` datetime DEFAULT NULL,
  `bHit` int(11) DEFAULT NULL,
  `bGroup` int(11) DEFAULT NULL,
  `bStep` int(11) DEFAULT NULL,
  `bIndent` int(11) DEFAULT NULL,
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_23`
--

LOCK TABLES `board_23` WRITE;
/*!40000 ALTER TABLE `board_23` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_3`
--

DROP TABLE IF EXISTS `board_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_3` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_3`
--

LOCK TABLES `board_3` WRITE;
/*!40000 ALTER TABLE `board_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8193`
--

DROP TABLE IF EXISTS `board_8193`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8193` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8193`
--

LOCK TABLES `board_8193` WRITE;
/*!40000 ALTER TABLE `board_8193` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8193` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8194`
--

DROP TABLE IF EXISTS `board_8194`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8194` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8194`
--

LOCK TABLES `board_8194` WRITE;
/*!40000 ALTER TABLE `board_8194` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8194` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8196`
--

DROP TABLE IF EXISTS `board_8196`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8196` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8196`
--

LOCK TABLES `board_8196` WRITE;
/*!40000 ALTER TABLE `board_8196` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8196` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8197`
--

DROP TABLE IF EXISTS `board_8197`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8197` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8197`
--

LOCK TABLES `board_8197` WRITE;
/*!40000 ALTER TABLE `board_8197` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8197` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8198`
--

DROP TABLE IF EXISTS `board_8198`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8198` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8198`
--

LOCK TABLES `board_8198` WRITE;
/*!40000 ALTER TABLE `board_8198` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8198` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8442`
--

DROP TABLE IF EXISTS `board_8442`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8442` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8442`
--

LOCK TABLES `board_8442` WRITE;
/*!40000 ALTER TABLE `board_8442` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8442` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8443`
--

DROP TABLE IF EXISTS `board_8443`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8443` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8443`
--

LOCK TABLES `board_8443` WRITE;
/*!40000 ALTER TABLE `board_8443` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8443` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8444`
--

DROP TABLE IF EXISTS `board_8444`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8444` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8444`
--

LOCK TABLES `board_8444` WRITE;
/*!40000 ALTER TABLE `board_8444` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8444` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8445`
--

DROP TABLE IF EXISTS `board_8445`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8445` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8445`
--

LOCK TABLES `board_8445` WRITE;
/*!40000 ALTER TABLE `board_8445` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8445` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_8446`
--

DROP TABLE IF EXISTS `board_8446`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_8446` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_8446`
--

LOCK TABLES `board_8446` WRITE;
/*!40000 ALTER TABLE `board_8446` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_8446` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9213`
--

DROP TABLE IF EXISTS `board_9213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9213` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9213`
--

LOCK TABLES `board_9213` WRITE;
/*!40000 ALTER TABLE `board_9213` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9213` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9214`
--

DROP TABLE IF EXISTS `board_9214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9214` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9214`
--

LOCK TABLES `board_9214` WRITE;
/*!40000 ALTER TABLE `board_9214` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9214` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9216`
--

DROP TABLE IF EXISTS `board_9216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9216` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9216`
--

LOCK TABLES `board_9216` WRITE;
/*!40000 ALTER TABLE `board_9216` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9216` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9217`
--

DROP TABLE IF EXISTS `board_9217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9217` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9217`
--

LOCK TABLES `board_9217` WRITE;
/*!40000 ALTER TABLE `board_9217` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9217` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9219`
--

DROP TABLE IF EXISTS `board_9219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9219` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9219`
--

LOCK TABLES `board_9219` WRITE;
/*!40000 ALTER TABLE `board_9219` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9219` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9220`
--

DROP TABLE IF EXISTS `board_9220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9220` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9220`
--

LOCK TABLES `board_9220` WRITE;
/*!40000 ALTER TABLE `board_9220` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9220` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9221`
--

DROP TABLE IF EXISTS `board_9221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9221` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9221`
--

LOCK TABLES `board_9221` WRITE;
/*!40000 ALTER TABLE `board_9221` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9221` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9222`
--

DROP TABLE IF EXISTS `board_9222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9222` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9222`
--

LOCK TABLES `board_9222` WRITE;
/*!40000 ALTER TABLE `board_9222` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9222` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9223`
--

DROP TABLE IF EXISTS `board_9223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9223` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9223`
--

LOCK TABLES `board_9223` WRITE;
/*!40000 ALTER TABLE `board_9223` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_9223` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_9224`
--

DROP TABLE IF EXISTS `board_9224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_9224` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_9224`
--

LOCK TABLES `board_9224` WRITE;
/*!40000 ALTER TABLE `board_9224` DISABLE KEYS */;
INSERT INTO `board_9224` VALUES (1,'tired','안녕하세요 잘해봅시다','화이팅','2018-12-07 13:02:30',1,0,NULL),(2,'tired','지도 장소 확인해주세요','네','2018-12-07 14:15:26',0,0,NULL);
/*!40000 ALTER TABLE `board_9224` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_notice`
--

DROP TABLE IF EXISTS `board_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_notice` (
  `bIndex` int(11) NOT NULL AUTO_INCREMENT,
  `uId` varchar(50) NOT NULL,
  `bTitle` varchar(200) NOT NULL,
  `bContent` text,
  `bDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bViewcnt` int(11) DEFAULT '0',
  `replyCnt` int(11) DEFAULT '0',
  `bFile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_notice`
--

LOCK TABLES `board_notice` WRITE;
/*!40000 ALTER TABLE `board_notice` DISABLE KEYS */;
INSERT INTO `board_notice` VALUES (1,'운영자','안녕하세요 groophy입니다','잘부탁드립니다','2018-12-07 12:26:08',2,0,'null'),(2,'운영자','임시점검 안내','임시점검이 있습니다 양해바랍니다','2018-12-07 12:27:19',1,0,''),(3,'운영자','groophy 변경사항 안내','변경사항을 안내해 드립니다','2018-12-07 12:27:42',1,0,''),(4,'운영자','특별 이벤트 안내','이벤트를 안내해 드립니다','2018-12-07 12:48:48',0,0,'');
/*!40000 ALTER TABLE `board_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `calendarindex` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `ctitle` varchar(45) NOT NULL,
  `cstartyear` int(11) NOT NULL,
  `cstartmonth` int(11) NOT NULL,
  `cstartdate` int(11) NOT NULL,
  `cstarthour` int(11) NOT NULL,
  `cstartminutes` int(11) NOT NULL,
  `cendyear` int(11) NOT NULL,
  `cendmonth` int(11) NOT NULL,
  `cenddate` int(11) NOT NULL,
  `cendhour` int(11) NOT NULL,
  `cendmintues` int(11) NOT NULL,
  `callday` int(11) DEFAULT NULL,
  PRIMARY KEY (`calendarindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_comment`
--

DROP TABLE IF EXISTS `group_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_comment` (
  `GC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `MEMBER_ID` varchar(20) NOT NULL,
  `GC_COMMENT` varchar(100) NOT NULL,
  `GC_REGDATE` datetime NOT NULL,
  `GC_REPORT` tinyint(4) NOT NULL DEFAULT '0',
  `GC_TEAM` int(11) NOT NULL,
  `GC_STEP` int(11) NOT NULL,
  `GC_INDENT` int(11) NOT NULL,
  PRIMARY KEY (`GC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_comment`
--

LOCK TABLES `group_comment` WRITE;
/*!40000 ALTER TABLE `group_comment` DISABLE KEYS */;
INSERT INTO `group_comment` VALUES (6,9217,'로봇아님','신청했습니다 참여하고 싶어요!','2018-12-07 00:41:29',0,0,0,0),(7,9217,'인간다람쥐','수락했습니다','2018-12-07 00:42:28',0,0,0,0),(8,9217,'비번매달바꿈','저도 들어가고 싶어요','2018-12-07 00:43:08',0,0,0,0),(9,9217,'심심이','신청 확인해주세요','2018-12-07 00:48:23',0,0,0,0);
/*!40000 ALTER TABLE `group_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_info`
--

DROP TABLE IF EXISTS `group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_info` (
  `GROUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_TITLE` varchar(100) NOT NULL,
  `GROUP_NAME` varchar(20) NOT NULL,
  `MEMBER_ID` varchar(20) NOT NULL,
  `GROUP_INTRODUCE` text,
  `CATEGORY` varchar(20) NOT NULL,
  `PROVINCE` varchar(10) NOT NULL,
  `CITY` varchar(10) NOT NULL,
  `DIFFICULTY` varchar(10) NOT NULL,
  `STARTDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `STUDYOFWEEK` varchar(50) DEFAULT NULL,
  `CURRENT_NUM` int(11) NOT NULL DEFAULT '1',
  `MAXIMUM_NUM` int(11) NOT NULL,
  `GROUP_REGDATE` date NOT NULL,
  `PROGRESS` tinyint(4) NOT NULL DEFAULT '0',
  `GROUP_PHOTO` varchar(45) DEFAULT 'default',
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_info`
--

LOCK TABLES `group_info` WRITE;
/*!40000 ALTER TABLE `group_info` DISABLE KEYS */;
INSERT INTO `group_info` VALUES (3,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8193,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8194,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8196,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8197,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8198,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8199,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8200,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8201,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8202,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8203,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8204,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8206,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8207,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8208,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8209,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8210,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8211,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8212,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8213,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8214,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8215,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8216,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8217,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8221,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8222,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8223,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8224,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8225,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8226,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8227,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8228,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8229,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8230,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8231,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8232,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8233,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8234,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8235,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8236,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8237,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8238,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8239,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8240,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8241,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8242,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8243,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8244,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8252,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8253,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8254,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8255,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8256,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8257,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8258,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8259,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8260,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8261,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8262,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8263,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8264,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8265,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8266,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8267,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8268,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8269,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8270,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8271,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8272,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8273,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8274,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8275,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8276,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8277,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8278,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8279,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8280,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8281,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8282,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8283,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8284,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8285,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8286,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8287,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8288,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8289,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8290,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8291,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8292,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8293,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8294,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8295,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8296,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8297,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8298,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8299,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8315,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8316,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8317,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8318,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8319,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8320,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8321,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8322,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8323,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8324,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8325,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8326,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8327,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8328,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8329,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8330,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8331,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8332,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8333,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8334,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8335,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8336,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8337,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8338,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8339,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8340,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8341,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8342,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8343,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8344,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8345,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8346,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8347,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8348,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8349,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8350,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8351,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8352,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8353,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8354,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8355,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8356,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8357,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8358,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8359,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8360,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8361,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8362,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8363,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8364,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8365,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8366,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8367,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8368,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8369,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8370,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8371,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8372,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8373,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8374,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8375,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8376,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8377,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8378,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8379,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8380,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8381,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8382,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8383,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8384,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8385,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8386,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8387,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8388,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8389,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8390,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8391,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8392,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8393,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8394,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8395,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8396,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8397,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8398,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8399,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8400,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8401,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8402,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8403,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8404,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8405,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8406,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8407,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8408,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8409,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8410,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8442,' 해외영업/외국계회사 대비를 위한 영어 면접 스터디','영어스터디','hogok','1. 영어면접\r\n\r\n\r\n\r\n2. 시간- 화목 1-4시/ 토 2-5시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 영어 토론/ 영어 모의 면접\r\n\r\n\r\n\r\n4. 댓글 주세요- 이름,간단한 자기소개,전번 (멘토분이 무료로 틈틈이 도와주는 스터디에요)','학업','강원도','춘천시','상','2018-12-11','2019-01-15','화목토',1,9,'2018-12-06',0,'8442'),(8443,'파이썬 공부 갑시다!','가즈아','humanchipmunk','1.주말마다\r\n2. 오후 5시~10시동안 진행합니다\r\n\r\n댓글/신청 주세요!','학업','강원도','춘천시','중','2018-12-07','2018-12-28','토일',1,5,'2018-12-06',0,'8443'),(8444,'자바 웹개발 기초','자바맨','ihatespeech','자바 웹개발 기초과정 같이 공부합시다\r\n\r\n자바\r\nHTML\r\nCSS\r\n자바스크립트\r\nJSP서블릿\r\n스프링 진행합니다','학업','강원도','춘천시','중','2018-12-08','2018-12-26','월화수목금토',1,5,'2018-12-06',0,'8444'),(8445,'상반기 취업 스터디 (하반기 남은 면접도 준비)','취공취공','ilikestudy','1. 상반기 취업 스터디\r\n\r\n\r\n\r\n2. 시간- 월수금 1시/ 월수금 4시/화목 저녁 7시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 커리큘럼- 당분간은 면접 중심으로 하면서 자소서 피드백/인적성 대비  (월수금 1시는 현재 기업분석,인적성,자소서 위주로 하고 있어요)\r\n\r\n\r\n\r\n4. 댓글 주세요(멘토분이 모집하고 도와주는 스터디에요/ 룸비외 추가비용은 없어요)','학업','강원도','춘천시','상','2018-12-07','2018-12-26','월화수목금',1,3,'2018-12-06',0,'default'),(8446,'영어 회화 취업 스터디 ( 실력 키우는 모임 )','영회취','jaesu','* 초급 회화반 - 기초회화 암기 ( 리더가 진행 )\r\n* 초중급 프리토킹반 - 생활 회화 및 프리토킹 ( 토스 6, 오픽 im3 이상 ) ( 영어권 체류 6개월 이상수준 ) ( 리더가 진행 )\r\n* 중급 프리토킹반 - 다양한 토픽 프리토킹 ( 토스 7, 오픽 ih 이상 ) ( 영어권 체류 1년 6개월 정도 )\r\n* 중상급이상 시사토론반 - 시사토픽 토론 ( 토스 8, 오픽 al 이상 ) ( 영어권 체류 3년 정도 )\r\n*  오픽, 토익 스피킹등 시험 준비에도 도움이 됩니다\r\n*  현재 참여하고 계시는 맴버분들 연령대는 20대 ~ 50대 입니다\r\n*  스터디 1회 참여비는 ( 초급회화 / 1만 5천원 ) ( 초중급 프리토킹 / 1만 2천원 ) ( 중급 프리토킹 / 중상급 시사토론 / 8천원 ) 이며 한꺼\r\n번에 한 두달치 회비를 걷지 않고 참여 하는 날만 참여비를 내시면 되며 스터디 교재비, 자료비, 장소비 모두 포함된 비용이며 이외에추가\r\n비용은 없습니다','학업','강원도','춘천시','하','2018-12-07','2019-01-11','월화수',1,6,'2018-12-06',0,'default'),(8447,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8448,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8449,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8450,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8451,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8452,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8453,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8454,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8455,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8456,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8457,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8458,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8459,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8460,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8461,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8462,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8463,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8464,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8465,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8466,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8467,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8468,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8469,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8470,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8471,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8472,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8473,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8474,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8475,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8476,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8477,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8478,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8479,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8480,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8481,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8482,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8483,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8484,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8485,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8486,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8487,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8488,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8489,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8490,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8491,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8492,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8493,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8494,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8495,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8496,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8497,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8498,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8499,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8500,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8501,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8502,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8503,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8504,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8505,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8506,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8507,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8508,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8509,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8510,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8511,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8512,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8513,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8514,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8515,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8516,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8517,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8518,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8519,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8520,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8521,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8522,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8523,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8524,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8525,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8526,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8527,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8528,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8529,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8530,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8531,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8532,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8533,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8534,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8535,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8536,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8537,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8538,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8539,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8540,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8541,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8542,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8543,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8544,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8545,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8546,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8547,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8548,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8549,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8550,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8551,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8552,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8553,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8554,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8555,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8556,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8557,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8558,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8559,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8560,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8561,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8562,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8563,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8564,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8565,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8566,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8567,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8568,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8569,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8570,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8571,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8572,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8573,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8574,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8575,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8576,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8577,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8578,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8579,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8580,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8581,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8582,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8583,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8584,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8585,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8586,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8587,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8588,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8589,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8590,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8591,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8592,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8593,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8594,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8595,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8596,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8597,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8598,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8599,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8600,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8601,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8602,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8603,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8604,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8605,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8606,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8607,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8608,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8609,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8610,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8611,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8612,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8613,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8614,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8615,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8616,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8617,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8618,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8619,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8620,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8621,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8622,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8623,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8624,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8625,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8626,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8627,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8628,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8629,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8630,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8631,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8632,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8633,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8634,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8635,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8636,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8637,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8638,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8639,' 해외영업/외국계회사 대비를 위한 영어 면접 스터디','영어스터디','hogok','1. 영어면접\r\n\r\n\r\n\r\n2. 시간- 화목 1-4시/ 토 2-5시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 영어 토론/ 영어 모의 면접\r\n\r\n\r\n\r\n4. 댓글 주세요- 이름,간단한 자기소개,전번 (멘토분이 무료로 틈틈이 도와주는 스터디에요)','학업','강원도','춘천시','상','2018-12-11','2019-01-15','화목토',1,9,'2018-12-06',0,'8442'),(8640,'파이썬 공부 갑시다!','가즈아','humanchipmunk','1.주말마다\r\n2. 오후 5시~10시동안 진행합니다\r\n\r\n댓글/신청 주세요!','학업','강원도','춘천시','중','2018-12-07','2018-12-28','토일',1,5,'2018-12-06',0,'8443'),(8641,'자바 웹개발 기초','자바맨','ihatespeech','자바 웹개발 기초과정 같이 공부합시다\r\n\r\n자바\r\nHTML\r\nCSS\r\n자바스크립트\r\nJSP서블릿\r\n스프링 진행합니다','학업','강원도','춘천시','중','2018-12-08','2018-12-26','월화수목금토',1,5,'2018-12-06',0,'8444'),(8642,'상반기 취업 스터디 (하반기 남은 면접도 준비)','취공취공','ilikestudy','1. 상반기 취업 스터디\r\n\r\n\r\n\r\n2. 시간- 월수금 1시/ 월수금 4시/화목 저녁 7시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 커리큘럼- 당분간은 면접 중심으로 하면서 자소서 피드백/인적성 대비  (월수금 1시는 현재 기업분석,인적성,자소서 위주로 하고 있어요)\r\n\r\n\r\n\r\n4. 댓글 주세요(멘토분이 모집하고 도와주는 스터디에요/ 룸비외 추가비용은 없어요)','학업','강원도','춘천시','상','2018-12-07','2018-12-26','월화수목금',1,3,'2018-12-06',0,'default'),(8643,'영어 회화 취업 스터디 ( 실력 키우는 모임 )','영회취','jaesu','* 초급 회화반 - 기초회화 암기 ( 리더가 진행 )\r\n* 초중급 프리토킹반 - 생활 회화 및 프리토킹 ( 토스 6, 오픽 im3 이상 ) ( 영어권 체류 6개월 이상수준 ) ( 리더가 진행 )\r\n* 중급 프리토킹반 - 다양한 토픽 프리토킹 ( 토스 7, 오픽 ih 이상 ) ( 영어권 체류 1년 6개월 정도 )\r\n* 중상급이상 시사토론반 - 시사토픽 토론 ( 토스 8, 오픽 al 이상 ) ( 영어권 체류 3년 정도 )\r\n*  오픽, 토익 스피킹등 시험 준비에도 도움이 됩니다\r\n*  현재 참여하고 계시는 맴버분들 연령대는 20대 ~ 50대 입니다\r\n*  스터디 1회 참여비는 ( 초급회화 / 1만 5천원 ) ( 초중급 프리토킹 / 1만 2천원 ) ( 중급 프리토킹 / 중상급 시사토론 / 8천원 ) 이며 한꺼\r\n번에 한 두달치 회비를 걷지 않고 참여 하는 날만 참여비를 내시면 되며 스터디 교재비, 자료비, 장소비 모두 포함된 비용이며 이외에추가\r\n비용은 없습니다','학업','강원도','춘천시','하','2018-12-07','2019-01-11','월화수',1,6,'2018-12-06',0,'default'),(8702,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8703,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8704,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8705,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8706,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8707,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8708,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8709,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8710,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8711,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8712,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8713,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8714,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8715,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8716,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8717,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8718,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8719,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8720,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8721,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8722,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8723,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8724,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8725,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8726,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8727,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8728,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8729,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8730,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8731,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8732,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8733,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8734,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8735,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8736,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8737,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8738,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8739,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8740,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8741,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8742,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8743,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8744,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8745,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8746,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8747,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8748,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8749,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8750,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8751,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8752,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8753,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8754,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8755,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8756,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8757,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8758,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8759,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8760,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8761,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8762,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8763,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8764,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8765,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8766,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8767,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8768,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8769,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8770,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8771,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8772,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8773,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8774,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8775,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8776,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8777,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8778,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8779,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8780,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8781,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8782,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8783,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8784,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8785,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8786,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8787,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8788,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8789,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8790,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8791,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8792,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8793,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8794,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8795,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8796,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8797,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8798,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8799,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8800,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8801,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8802,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8803,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8804,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8805,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8806,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8807,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8808,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8809,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8810,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8811,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8812,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8813,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8814,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8815,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8816,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8817,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8818,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8819,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8820,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8821,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8822,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8823,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8824,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8825,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8826,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8827,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8828,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8829,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8830,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8831,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8832,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8833,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8834,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8835,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8836,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8837,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8838,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8839,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8840,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8841,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8842,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8843,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8844,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8845,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8846,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8847,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8848,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8849,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8850,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8851,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8852,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8853,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8854,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8855,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8856,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8857,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8858,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8859,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8860,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8861,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8862,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8863,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8864,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8865,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8866,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8867,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8868,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8869,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8870,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8871,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8872,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8873,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8874,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8875,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8876,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8877,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8878,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8879,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8880,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8881,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8882,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8883,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8884,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8885,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8886,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8887,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8888,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8889,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8890,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8891,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8892,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8893,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8894,' 해외영업/외국계회사 대비를 위한 영어 면접 스터디','영어스터디','hogok','1. 영어면접\r\n\r\n\r\n\r\n2. 시간- 화목 1-4시/ 토 2-5시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 영어 토론/ 영어 모의 면접\r\n\r\n\r\n\r\n4. 댓글 주세요- 이름,간단한 자기소개,전번 (멘토분이 무료로 틈틈이 도와주는 스터디에요)','학업','강원도','춘천시','상','2018-12-11','2019-01-15','화목토',1,9,'2018-12-06',0,'8442'),(8895,'파이썬 공부 갑시다!','가즈아','humanchipmunk','1.주말마다\r\n2. 오후 5시~10시동안 진행합니다\r\n\r\n댓글/신청 주세요!','학업','강원도','춘천시','중','2018-12-07','2018-12-28','토일',1,5,'2018-12-06',0,'8443'),(8896,'자바 웹개발 기초','자바맨','ihatespeech','자바 웹개발 기초과정 같이 공부합시다\r\n\r\n자바\r\nHTML\r\nCSS\r\n자바스크립트\r\nJSP서블릿\r\n스프링 진행합니다','학업','강원도','춘천시','중','2018-12-08','2018-12-26','월화수목금토',1,5,'2018-12-06',0,'8444'),(8897,'상반기 취업 스터디 (하반기 남은 면접도 준비)','취공취공','ilikestudy','1. 상반기 취업 스터디\r\n\r\n\r\n\r\n2. 시간- 월수금 1시/ 월수금 4시/화목 저녁 7시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 커리큘럼- 당분간은 면접 중심으로 하면서 자소서 피드백/인적성 대비  (월수금 1시는 현재 기업분석,인적성,자소서 위주로 하고 있어요)\r\n\r\n\r\n\r\n4. 댓글 주세요(멘토분이 모집하고 도와주는 스터디에요/ 룸비외 추가비용은 없어요)','학업','강원도','춘천시','상','2018-12-07','2018-12-26','월화수목금',1,3,'2018-12-06',0,'default'),(8898,'영어 회화 취업 스터디 ( 실력 키우는 모임 )','영회취','jaesu','* 초급 회화반 - 기초회화 암기 ( 리더가 진행 )\r\n* 초중급 프리토킹반 - 생활 회화 및 프리토킹 ( 토스 6, 오픽 im3 이상 ) ( 영어권 체류 6개월 이상수준 ) ( 리더가 진행 )\r\n* 중급 프리토킹반 - 다양한 토픽 프리토킹 ( 토스 7, 오픽 ih 이상 ) ( 영어권 체류 1년 6개월 정도 )\r\n* 중상급이상 시사토론반 - 시사토픽 토론 ( 토스 8, 오픽 al 이상 ) ( 영어권 체류 3년 정도 )\r\n*  오픽, 토익 스피킹등 시험 준비에도 도움이 됩니다\r\n*  현재 참여하고 계시는 맴버분들 연령대는 20대 ~ 50대 입니다\r\n*  스터디 1회 참여비는 ( 초급회화 / 1만 5천원 ) ( 초중급 프리토킹 / 1만 2천원 ) ( 중급 프리토킹 / 중상급 시사토론 / 8천원 ) 이며 한꺼\r\n번에 한 두달치 회비를 걷지 않고 참여 하는 날만 참여비를 내시면 되며 스터디 교재비, 자료비, 장소비 모두 포함된 비용이며 이외에추가\r\n비용은 없습니다','학업','강원도','춘천시','하','2018-12-07','2019-01-11','월화수',1,6,'2018-12-06',0,'default'),(8899,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8900,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8901,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8902,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8903,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8904,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8905,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8906,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8907,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8908,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8909,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8910,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8911,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8912,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8913,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8914,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8915,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8916,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8917,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8918,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8919,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8920,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8921,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8922,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8923,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8924,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8925,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8926,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8927,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8928,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8929,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8930,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8931,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8932,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8933,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8934,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8935,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8936,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8937,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8938,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8939,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8940,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8941,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8942,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8943,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8944,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8945,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8946,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8947,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8948,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8949,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8950,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8951,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8952,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8953,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8954,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8955,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8956,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8957,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8958,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8959,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8960,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8961,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8962,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8963,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8964,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8965,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8966,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8967,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8968,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8969,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8970,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8971,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8972,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8973,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8974,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8975,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8976,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8977,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8978,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8979,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8980,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8981,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8982,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8983,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8984,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8985,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8986,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8987,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8988,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8989,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8990,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8991,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8992,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8993,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(8994,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(8995,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(8996,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(8997,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(8998,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(8999,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9000,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9001,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9002,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9003,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9004,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9005,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9006,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9007,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9008,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9009,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9010,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9011,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9012,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9013,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9014,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9015,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9016,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9017,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9018,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9019,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9020,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9021,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9022,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9023,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9024,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9025,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9026,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9027,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9028,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9029,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9030,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9031,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9032,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9033,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9034,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9035,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9036,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9037,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9038,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9039,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9040,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9041,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9042,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9043,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9044,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9045,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9046,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9047,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9048,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9049,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9050,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9051,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9052,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9053,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9054,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9055,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9056,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9057,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9058,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9059,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9060,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9061,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9062,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9063,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9064,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9065,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9066,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9067,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9068,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9069,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9070,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9071,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9072,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9073,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9074,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9075,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9076,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9077,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9078,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9079,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9080,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9081,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9082,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9083,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9084,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9085,'토익공부하실분 와주세요!','토익가즈아','pizza','토익공부 하실분 많이 와주세요\r\n\r\n취업준비생, 직장인, 대학생 모두 괜찮습니다\r\n\r\n주말에 3시간씩 진행할 예정이니 많은 관심 부탁드려요','토익','서울특별시','송파구','중','2018-12-11','2019-01-11','토일',1,7,'2018-12-05',0,'3'),(9086,'주식공부 재테크공부 관심있으신분 오세요','돈벌자','buildingman','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','기타','서울특별시','송파구','상','2018-12-07','2018-12-25','금',1,6,'2018-12-06',0,'8193'),(9087,'웹개발 공부 2개월동안 같이 진행하실분','IT공부','computer','매주 평일 3~5시에 진행합니다\r\n\r\n이론공부를 해나갈 생각입니다 \r\n많이 신청해주세요','프로그래밍','서울특별시','송파구','하','2018-12-07','2019-02-07','월화수목금',1,3,'2018-12-06',0,'default'),(9088,'요리공부 진행합니다','한식공부','choco','한식연구 2달간 진행합니다','기타','인천광역시','서구','중','2018-12-07','2019-02-07','수금',1,3,'2018-12-06',0,'default'),(9089,'토익공부 세미나 모집','토익공부','englishman','노베이스 환영\r\n\r\n한달간 진행','토익','대전광역시','서구','중','2018-12-11','2019-01-17','월수금일',1,6,'2018-12-06',0,'default'),(9090,'아침마다 도서관에서 출석하실분들','아침형인간 프로젝트','godsu','아침마다 일어나서 도서관에서 만나 \r\n인증하실분들 모이세요\r\n취업준비생들 규칙적인 생활합시다','학업','강원도','춘천시','하','2018-12-07','2019-03-01','월화수목금토',1,9,'2018-12-06',0,'default'),(9091,' 해외영업/외국계회사 대비를 위한 영어 면접 스터디','영어스터디','hogok','1. 영어면접\r\n\r\n\r\n\r\n2. 시간- 화목 1-4시/ 토 2-5시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 영어 토론/ 영어 모의 면접\r\n\r\n\r\n\r\n4. 댓글 주세요- 이름,간단한 자기소개,전번 (멘토분이 무료로 틈틈이 도와주는 스터디에요)','학업','강원도','춘천시','상','2018-12-11','2019-01-15','화목토',1,9,'2018-12-06',0,'8442'),(9092,'파이썬 공부 갑시다!','가즈아','humanchipmunk','1.주말마다\r\n2. 오후 5시~10시동안 진행합니다\r\n\r\n댓글/신청 주세요!','학업','강원도','춘천시','중','2018-12-07','2018-12-28','토일',1,5,'2018-12-06',0,'8443'),(9093,'자바 웹개발 기초','자바맨','ihatespeech','자바 웹개발 기초과정 같이 공부합시다\r\n\r\n자바\r\nHTML\r\nCSS\r\n자바스크립트\r\nJSP서블릿\r\n스프링 진행합니다','학업','강원도','춘천시','중','2018-12-08','2018-12-26','월화수목금토',1,5,'2018-12-06',0,'8444'),(9094,'상반기 취업 스터디 (하반기 남은 면접도 준비)','취공취공','ilikestudy','1. 상반기 취업 스터디\r\n\r\n\r\n\r\n2. 시간- 월수금 1시/ 월수금 4시/화목 저녁 7시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 커리큘럼- 당분간은 면접 중심으로 하면서 자소서 피드백/인적성 대비  (월수금 1시는 현재 기업분석,인적성,자소서 위주로 하고 있어요)\r\n\r\n\r\n\r\n4. 댓글 주세요(멘토분이 모집하고 도와주는 스터디에요/ 룸비외 추가비용은 없어요)','학업','강원도','춘천시','상','2018-12-07','2018-12-26','월화수목금',1,3,'2018-12-06',0,'default'),(9095,'영어 회화 취업 스터디 ( 실력 키우는 모임 )','영회취','jaesu','* 초급 회화반 - 기초회화 암기 ( 리더가 진행 )\r\n* 초중급 프리토킹반 - 생활 회화 및 프리토킹 ( 토스 6, 오픽 im3 이상 ) ( 영어권 체류 6개월 이상수준 ) ( 리더가 진행 )\r\n* 중급 프리토킹반 - 다양한 토픽 프리토킹 ( 토스 7, 오픽 ih 이상 ) ( 영어권 체류 1년 6개월 정도 )\r\n* 중상급이상 시사토론반 - 시사토픽 토론 ( 토스 8, 오픽 al 이상 ) ( 영어권 체류 3년 정도 )\r\n*  오픽, 토익 스피킹등 시험 준비에도 도움이 됩니다\r\n*  현재 참여하고 계시는 맴버분들 연령대는 20대 ~ 50대 입니다\r\n*  스터디 1회 참여비는 ( 초급회화 / 1만 5천원 ) ( 초중급 프리토킹 / 1만 2천원 ) ( 중급 프리토킹 / 중상급 시사토론 / 8천원 ) 이며 한꺼\r\n번에 한 두달치 회비를 걷지 않고 참여 하는 날만 참여비를 내시면 되며 스터디 교재비, 자료비, 장소비 모두 포함된 비용이며 이외에추가\r\n비용은 없습니다','학업','강원도','춘천시','하','2018-12-07','2019-01-11','월화수',1,6,'2018-12-06',0,'default'),(9213,'생활스터디 모집합니다','생활스터디','her','같이 생활스터디 하실분을 충원해요\r\n월요일 부터 금요일 까지 오전9시~오후 6시\r\n도서관 공개 열람실 같은 분위기 좋은 스터디룸에서\r\n같이 공부하고 출첵,점심,퇴첵을 같이하고 있답니다\r\n중간에 가시거나, 퇴첵은 별도 정해진데로 안하셔도 되나,\r\n출첵은 잘 지켜주실분만 모셔요\r\n전공무관,취준생,자격증공부 하시는분들\r\n서로 도움되면서 시너지 효과를 보며 공부했으면 좋겠어요.\r\n\r\n▶대략적인 시간표\r\n09:00~09:20 그날의 목표발표\r\n09:20~12:00 개별공부\r\n12:00~13:00 점심시간(같이 식사)\r\n13:00~17:40 개별공부\r\n17:40~18:00 목표달성률 발표\r\n','학업','강원도','춘천시','상','2018-12-08','2019-03-01','월화수목금',1,8,'2018-12-06',0,'9213'),(9214,'제약/바이오 취업스터디','제약취업스터디','ddiyong','제약/바이오 취업스터디 모집합니다. (직무, 경력 무관)\r\n\r\n모의면접을 위주로 기업분석, 업계분석, 직무공부 등을 함께 할 예정입니다.\r\n\r\n주 1~2회 정도 모였으면 합니다. (장소 및 시간 협의 후 조정가능)\r\n제약 쪽 면접 경험, 재직 경험이 있는 분도 있으니 서로 도와주며 정보공유 했으면 좋겠습니다.\r\n스터디 참여하실 수 있는 분 들어오세요!!','학업','강원도','춘천시','상','2018-12-14','2019-01-17','화목',1,6,'2018-12-06',0,'default'),(9216,'재테크공부 같이하실분','장사하자먹고살자','buildingman3','재테크 공부 하실분들을 모집합니다\r\n\r\n기본자금이 있으셔야되고 어느정도 기본지식이 되신분들끼리 진행하고 싶습니다\r\n\r\n신청해주세요','학업','강원도','춘천시','상','2018-12-07','2018-12-27','토일',1,4,'2018-12-06',0,'default'),(9217,'상반기 대비 취업스터디 같이하실분~','취업뿌셔','chipmunk','1. 상반기 취업 스터디\r\n\r\n\r\n\r\n2. 시간- 월수금 1시/ 월수금 4시/화목 저녁 7시 (시간 선택 가능)\r\n\r\n\r\n\r\n3. 커리큘럼- 당분간은 면접 중심으로 하면서 자소서 피드백/인적성 대비 (월수금 1시는 현재 기업분석,인적성,자소서 위주로 하고 있어요)\r\n\r\n\r\n\r\n4. 댓글 주세요(멘토분이 모집하고 도와주는 스터디에요/ 룸비외 추가비용은 없어요)','학업','강원도','춘천시','상','2018-12-12','2019-02-28','월수금',3,4,'2018-12-07',0,'9217'),(9219,'마지막이라고 생각/ 막판스파트 열심히 하실분! 취업스터디입니다','자소서스터디','choco2','>하반기 미리 대비해서 열심히 하실분!\r\n\r\n중간 이탈 없이 꾸준히 스터디 하실 분으로 모집합니다.\r\n\r\n열심히 하실분들만 연락주세요.\r\n\r\n상반기 미리 대비해서 열심히 하실분!\r\n중간 이탈 없이 꾸준히 스터디 하실 분으로 모집합니다.\r\n\r\n1. 모여서 자소서 완벽하게 작성하기 11월까지는 모집기업 많아요~\r\n-합격 자소서 최대한 모방한 다음 고쳐쓰기\r\n\r\n2. 기출문제 모의 면접 준비 후 면접관이 원하는 이미지 연습\r\n-면접관이 좋아하는 인상? 이랑 직무 면접 연습\r\n\r\n3. 인적성 연습해서 만점 목표로 꾸준히 수리 추리 연습\r\n\r\n이중에서 같이 하실부분만 하셔도 무방! 신청주세요~','학업','강원도','춘천시','상','2018-12-14','2019-01-17','월화수목금토',2,3,'2018-12-07',0,'9219'),(9220,'토익스터디 같이하실분','토익','3993fj3nifr','신청주세요','학업','서울특별시','도봉구','하','2017-12-11','2018-12-20','목일',1,3,'2018-12-07',0,'default'),(9221,'프로젝트 개발스터디 참여하실분을 찾고있습니다','개발스터디','23980ru9802fj','많은 관심 부탁드려요','프로그래밍','부산광역시','서구','중','2018-12-13','2019-02-07','월수일',4,6,'2018-12-07',0,'default'),(9222,'도서관 출석 스터디 모집중','도서관출첵스터디','3948urti8we3','아침에 도서관에서 만나고\r\n저녁에 브리핑 후 해산하는 스터디에요','학업','경상북도','안동시','하','2018-12-13','2019-02-07','월화수목금',2,9,'2018-12-07',0,'default'),(9223,'공무원 스터디 같이하실분','공무원스터디','3498uf9834f89u','금토일 오후 3시~6시 진행합니다','공무원시험','인천광역시','동구','상','2018-12-12','2019-01-17','금토일',3,4,'2018-12-07',0,'default'),(9224,'스터디 가즈아','스터디 가즈아','tired','스터디를 시작합니다','기타','강원도','춘천시','상','2018-12-14','2018-12-20','월화목금',3,4,'2018-12-07',1,'9224');
/*!40000 ALTER TABLE `group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map` (
  `group_id` int(11) NOT NULL,
  `mLocation` varchar(45) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info` (
  `MEMBER_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(90) NOT NULL,
  `NICKNAME` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `GENDER` varchar(10) NOT NULL,
  `MEMBER_PHOTO` varchar(100) DEFAULT NULL,
  `MEMBER_INTRODUCE` varchar(200) DEFAULT NULL,
  `MEMBER_REGDATE` date NOT NULL,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES ('23897f2879hf','$2a$10$p/h0HFTPsvXFNZUwVs0TUuw0C.prxecZuswoyII3N8rku/ONumFbW','닉네임을입력','leemade@google.com','01058384929','남성','default','자녀홈스쿨링준비중','2018-12-06'),('23980ru9802fj','$2a$10$oDTM9Un1gx2fhO5zATHNmOFLg3uXPGxugBRL5yid2GSukL6OgXY1m','valueone','leemade@google.com','01067672340','남성','default','what you see? 뭘봐','2018-12-06'),('2r23r2r83j','$2a$10$9Ekl74LJpgDKlFNwGTMOdeDECwkD2tbfiYKU.Wgk3geFTLThia2FS','어둠이날지배한다','leemade@google.com','01066452412','남성','default','목표는출석률100퍼센트!!','2018-12-06'),('3498uf9834f89u','$2a$10$/bw1SyiZ1sONn5NiHQdRuuRmQm4olLbjPR9ofGhp2JOW1tpayD5ai','10분남았당헤헤','leemade@google.com','01043531145','남성','default','아싸~!','2018-12-06'),('3948urti8we3','$2a$10$ffNTPQ99LlFhb8IxwC8kfOCHQ.H3liaN5y4tHbDjDegQfqRhZpqPq','부계정이지롱','leemade@google.com','01046221233','남성','default','어떻게만들엇게','2018-12-06'),('3993fj3nifr','$2a$10$i.MSsWL//xPffUARxWG0NutuZ/uqsugqDyw6zRXbZ5S11UDF7iS1W','춘천하면닭갈비','leemade@google.com','01073022914','여성','default','물론막국수도맛잇지만','2018-12-06'),('3w84uth','$2a$10$qNAA.5tY58K/rqhquaum9.iEgFZZH5K0303AEDdr0xl93zl4PAEjW','중앙대12학번','leemade@google.com','01049682934','남성','default','서연고아니라도 괜찮아','2018-12-06'),('45t8u495ujgfdio','$2a$10$iwYmTSXqBLswGiYUdGjtNuFQoPBRdU7A4ZKbG3ApPseJCl5eNGmW.','키는이광수얼굴도이광수','leemade@google.com','01077773452','남성','default','바리스타 독학하려다가 가입했습니다','2018-12-06'),('489tg43wtu48','$2a$10$hQSa6/Hcq/4qyk1RuNK5YOo0qcvJnqW.mjhRQwM5fdg2sAYOIm/o.','연봉1억만','leemade@google.com','01045635858','남성','default','연봉1억이꿈인 21살 방구석여포입니다','2018-12-06'),('4f8932fh','$2a$10$OU1UZveMST/3RPJK75W2mOQf0csEyNeZQd5LbShBZRniwbwH1rQSW','펜은모나미','leemade@google.com','01032154311','여성','default','펜은역시 모나미죠 ','2018-12-06'),('53g33f321','$2a$10$oJpAWvoyMcojBg7dXEbjS.jKOG0.Msn.pONKfLY5ATnJXi9rubDyW','이제나도유부남','leemade@google.com','01096853658','남성','default','공무원시험준비하고있는 서울에사는 31살유부남입니다.','2018-12-06'),('6767hfhueruifghe','$2a$10$ENW6sVhpeyUF9EKyA8256.35vETdY.VqI4Jjk4N1QtBJmZcCB3osu','비번매달바꿈','leemade@google.com','01085673452','남성','6767hfhueruifghe','해킹해보시던가','2018-12-06'),('8934j98fj398','$2a$10$Ad.P9JhY0PMllGCtAL97be1Da9y0GXZBpIFyNSYo4YKFWWu8tomLe','오빠가5명','leemade@google.com','01046458989','여성','default','둘째오빠빼고 다싫어','2018-12-06'),('8934ufgreuih','$2a$10$kvEzJGNCZyMkZEhG/miioek2DUn340HXdBuULkQrGSzXu8mq54Le6','강남f4','leemade@google.com','01099912318','남성','default','구준표닮음','2018-12-06'),('893wwwww4eu2','$2a$10$5j/Z4FcjO.bUYxnsRlENcOXtexyfPZeinKrELQ3VceE3HpJtZ9U22','닉네임노이로제','leemade@google.com','01078787878','남성','default','어제차임','2018-12-06'),('894rtu9834ut','$2a$10$81C2lBV8QUotaW906Eaks.2X9ZYA4i2k2QBYSJEVDjPU6KIejj.XO','수업31분남았당','leemade@google.com','01034565689','남성','default','시간아빨리가랑','2018-12-06'),('9f84h398fh3948f8','$2a$10$kmAz2OkfWoUpzqpitZUSyOONtsqjNVQ.v.XoOmYswqTPV0m1.jrSm','안녕하세용가리','leemade@google.com','01049492812','남성','default','해파리무침좋아하는 서울사는30살아재','2018-12-06'),('anais','$2a$10$dZRHmXEj1keaEjgKogC/h.A9otlZKxaZ.N/EItE2.BZyeahpR.oee','Cantata','leemade@google.com','01054548432','남성','default','수의학과나온 백수','2018-12-06'),('buildingman2','$2a$10$EiiEwJhP6j49UiGD699bt.cSKmVwl9llWtz0eTGhaqJzS4co/nh4m','건물주','choimory@naver.com','01029485993','남성','buildingman','건물주되는게 꿈입니다','2018-12-06'),('buildingman3','$2a$10$fIWpdpish2OXgPyOwcfwzOypyZZ751QnnBZ2ZcLnjqaiBaH3G75a.','건물주','choimory@naver.com','01023015664','남성','buildingman3','부 럽 다','2018-12-06'),('chipmunk','$2a$10$/YGdDdngfc5wvsuzBleHTOTYFvRqv2foFbXVNo8t22h0zgQbRsb3e','인간다람쥐','choimory@naver.com','01049289583','남성','chipmunk','잘부탁드립니다','2018-12-06'),('choco2','$2a$10$P7kSzcVaWP4dPEWhKDhvl.s/F8e9I2frGSqmGG4byB2Pumnf1QjtG','초코좋아','choimory@naver.com','01023119521','여성','choco2','초.코.좋.아','2018-12-07'),('curious','$2a$10$ZtHu6QzS0JBT6Z7tBocNceAdbFxyxMYkKkAFjBLUDZ2jnSGN7RgJK','궁그매','choimory@naver.com','01099859382','남성','curious','?','2018-12-07'),('d239hd89h','$2a$10$0Rn0Zn6EHuGecCG1MBQMYuAK05k6AE2nu0vKouBfnSEjoO3IBYr7y','평발이라공익','leemade@google.com','01034529183','남성','default','군대안가지롱메롱','2018-12-06'),('d2j398jhfdfhweh','$2a$10$e18cVgCli.AYVXhK7hToKeaMkrjctT3uhxQkLVHuHkY0ZzZ5EQSG6','재키와이짱','leemade@google.com','01013123633','남성','default','힙합공부하실분~?','2018-12-06'),('d32uihd2h8h8','$2a$10$B82sseWqSU/WT0Vs8Ym38eiO41u7tf2CLwkh5A2uqJMrlk205BQ02','고9마9웠어용','leemade@google.com','01035241231','여성','default','내닉네임의 비밀을 파헤쳐봐!!','2018-12-06'),('d3o2ic928yf','$2a$10$Eij8jgXc8E9cPKUthDVR7OIQHpluvlcUvrYsnOADgMs0igYxPKCDi','춘천은시골이당','leemade@google.com','01048592849','남성','default','춘천뜨고싶당!!','2018-12-06'),('ddiyong','$2a$10$dRCP/EAJLwvpVtx3gn7aeuxXJLm1HQ9qw7m/pHqdNxuDSFMALiZz2','띠용','choimory@naver.com','01020304994','여성','ddiyong','안녕안녕','2018-12-06'),('djoeifwef2','$2a$10$clhjk.8kiFcbPzynfvgtxOyxbCSzSlg.GEPyShdteBO3gyufrI.6W','더조은안녕','leemade@google.com','01013139248','남성','default','곤충에대해선 거의파브르','2018-12-06'),('dkelelfmfdho','$2a$10$oB96xLRr8dU9zmUdebMEge36.60HWzSQ4waZKc.NvEGlIxPgIWZsK','아심심해바라기','leemade@google.com','01058492758','남성','default','강릉에서꽃집해요','2018-12-06'),('dktnlatlagod','$2a$10$iKTgDHWS14nqKsToy6iUgOfHwmZ6YQnkNXw1QpmMWJdso4DAZ9pse','이선희늙었다','leemade@google.com','01046537465','여성','default','운석같이 공부하실분!!','2018-12-06'),('dlwptmftmf','$2a$10$N41OFi/bXwVm2JHeod0MCurmUdXYBDvda6LREuBS7p2rRcBg.qYsG','이제슬슬졸리다','leemade@google.com','01049238242','남성','default','부산사는11살이야','2018-12-06'),('donge2','$2a$10$O.1hSx4E/zN/z.BlNtOs9eahbqa4qj6kxZR/p1qTzihBz6SCjNfFi','동의버튼안눌러도되네','leemade@google.com','01046822941','남성','default','본인은 모든 이용약관에 동의합니다','2018-12-06'),('eg3948f98','$2a$10$g2B0FJBt5rIz3mJzg47oQe9A5o5kvCAXyd/qsCeRZxnpxT0.8UKOm','레쓰비중독','leemade@google.com','01012375683','남성','default','hsk1급따고싶습니다 ㅠ','2018-12-06'),('erfhiuo3hui4','$2a$10$2bIiX65JvfWmTSYryrv22OVFemrbisHfPKfKNlYSFNaDX3uqJjnni','엄크뜨면잠수','leemade@google.com','01012396950','남성','default','시끄러시끄러다비켜','2018-12-06'),('f2349jf98j32489','$2a$10$.QkVG1tt5/in.wzTVDHviu8R52PS2XoVmFLEOqwSmkvm9V9NbQzeq','닉네임중복도되나','leemade@google.com','01024112634','남성','default','제이름은요 ㅇ..','2018-12-06'),('f2398d2j98','$2a$10$6sa7X/jEhnU1BLACbyz0gOtsZVJ7.3H29CoQUc4Kgup4su.6nkK1W','중2병걸린돼지','leemade@google.com','01048293918','남성','default','재수는없다','2018-12-06'),('f246rfg2d','$2a$10$FVAJeGOhRA6L6HqNtu9uEu04NPAhZZwPCHXAvpSfipk2QUgZeHEBq','탈급식','leemade@google.com','01013451745','여성','default','자퇴하고 검정고시 준비하고있는 18살입니다','2018-12-06'),('f24j9j982j','$2a$10$R2Q69cPnzUeFHUwfUl4HiOg1dpfxa.oOe4CohmwXQag1VeR/sm3C6','유튜브그루피구독좀','leemade@google.com','01034522342','여성','default','구독좀해주세요','2018-12-06'),('f28f82h8hdf','$2a$10$8xR9I4hZ4dq.wLUMuvlWeOS5jycBLXyFrzmNIuzZVgs2hplm5hH9m','거식증완치','leemade@google.com','01035924819','남성','default','인생에서제일힘든건다이어트','2018-12-06'),('f29398dfh29','$2a$10$R1y7sWFJvZtuzVv81dqRjehcUQx3U37hANF72CD7W4rE1gykIYX96','칸타타칸타타타','leemade@google.com','01069882949','여성','default','33살직장인~','2018-12-06'),('f2983f9huhedwf','$2a$10$jRT7XcZTX9wsPxgNyZJAauB2dpAHy7r0XH8x.Yup3ZUFPa1zvagse','mcdonalds','leemade@google.com','01057345982','남성','default','버커킹?맥도날드?','2018-12-06'),('f298f892h89','$2a$10$Pc0iIuVSfI8teRa5G2NxpOOYKS3yJbtqo5vBlJ7tWzHWPVu5EGy7G','붸베베베벱궁금해허니','leemade@google.com','01063992481','남성','default','오버워치실버','2018-12-06'),('f298hf9hewuhf','$2a$10$kdtbGAgy7UbWTpicLy3v7uvbN5gwYeyFmoFflpaLdsrnvUWoqekli','타락파워전사','leemade@google.com','01059382948','여성','default','x','2018-12-06'),('f2u98h892h','$2a$10$GcmPJKf/IALYiONFK2H/B.AgE4YFZjjpc5PXLPd3xV6O8LeTY5P7K','피클은빼주세요','leemade@google.com','01035321235','여성','default','피클맛없엉','2018-12-06'),('f3489uf983489fj','$2a$10$BfmHNI3hH6jIVWLgWVBOk.Fpl7m0tVmneQgi0cjWfQO/cPsG9U4Mm','스타벅스는사치','leemade@google.com','01034534555','여성','default','이디야짱 특히 초코칩플랫치노','2018-12-06'),('f42398fh8923','$2a$10$Mw/UV3Zq/TSGoFG7Q8BkOeA9ZEDmin3D.CRWrI38fUw3GIjXG4sR6','안무러봣다요다야','leemade@google.com','01045632432','여성','default','우벵베에ㅔㅔ베에','2018-12-06'),('f4289f823hf','$2a$10$sQ2BMl0tfllNmiYY0E9WQ.ZBXMg7BxmDDdfTJSwHiFLGqzUnbHbtW','둘리는왜초록색일까','leemade@google.com','01049492841','남성','default','아시는분 연락좀요','2018-12-06'),('f5i9jiufhieurh','$2a$10$uAlXZWvCfW9Y619wV30L.uBfRqzeg2S7NSYAtvCxpNhUTprSnislm','내일이면끝이당','leemade@google.com','01039491837','여성','default','끝난다음엔뭐하지?','2018-12-06'),('f9843u98f839','$2a$10$Ds4r/uBnJMPmXiqc3Wj9kOwYRymwx54Zyj0rnQ6kUsqalTzQyCHLi','Donut','leemade@google.com','01043562828','여성','default','bongjur?','2018-12-06'),('fdhf2983f','$2a$10$UBpViIdBOJH1rU4X3vCj9.twghE8BYkFLxVtPiAHfVeGIEc43YYlK','디바는퓨리','leemade@google.com','01046932848','남성','default','메코보단퓨리','2018-12-06'),('fdshfghiu2h','$2a$10$LsZINiJDEnkoJmHNlzXMDebLmj4GRvdyjdAHv9r4gE5T0xHb8DIPC','회원가입기계','leemade@google.com','01068495029','남성','default','아이디어고갈','2018-12-06'),('ffjfj23dfj','$2a$10$T7MNWixc6TU8osSYSgK2i.h4FStXCcUbsCuaewu7qwCoHye2JsMAS','리더구슬맨','leemade@google.com','01079392848','남성','default','41살인데 아직도 백수','2018-12-06'),('fh834hf8h3','$2a$10$fiThVABZ3j5LdUucGDn.su5i4/o1h8iafagw0Jij4bO/is.MIvk.C','내일은금요일','leemade@google.com','01033332345','여성','default','금요일조아','2018-12-06'),('fi429f298f89289f','$2a$10$hBpkpoZaAIx/XQG2HH10dujwg7YR2/gg51cQQOLm1jw5nE.8D391K','내사촌누나오나미닮음','leemade@google.com','01069001392','여성','default','근데진짜오나미임','2018-12-06'),('fiowefn3f','$2a$10$2KVVLME8r2zgJCeHvABBm.O8t1sl4EIDfXx2zZEFshrIOhifRzti2','광고보고가입','leemade@google.com','01045345234','여성','default','광고좀안보이게해라','2018-12-06'),('fj29f298h','$2a$10$OJ7zkviYANa.4nvre8WiyezbvarF.iYNTYo1iaXr/ADMXDZbGDS6y','페라리남','leemade@google.com','01023462948','남성','default','요리사가꿈이에요','2018-12-06'),('fu23iufnhuiih','$2a$10$O3MoWqMX/18/YfqvwW6oIODPZunNqbjFPP1pxgJCb3zr8uyzFyb16','레드벨벳짱이쁨','leemade@google.com','01056734398','남성','default','아이린좋아하는 99년생 취준생입니다','2018-12-06'),('fuhi2u3h2','$2a$10$5iN43t6xArKYyr6Cw5TOcO3J5JFfVQ6fMgNAzAXVZG9ku77xKgCR6','탕수육은찍먹','leemade@google.com','01045633838','남성','default','올해목표: 한국사자격증따기','2018-12-06'),('fui94238dfqd23d24','$2a$10$MY5.f/rpB16LeMoVqieYyefdjxXla6iLYb3Eamv1bfOTEwNtEJIsy','컴알못컴공과','leemade@google.com','01034521234','남성','default','초등교사가 꿈입니다','2018-12-06'),('g34f32r13d','$2a$10$4HXzTxo8opIa.vHdskI4VeHINLzas/CDNiHM7qVRlVUAEAPJvhePG','닉네임아몰랑','leemade@google.com','01068684747','남성','default','c언어 배우는중이에용','2018-12-06'),('g3598g83','$2a$10$A.32D4hARItiMGCq34sIv.i.FY/vXZ2JqbxSjBxCGeZZ3ob7BSGR6','멜론지니','leemade@google.com','01056442234','여성','default','지니지니멜론멜론','2018-12-06'),('g389893j','$2a$10$vjQ4gqQ.cr7Vj145VsAFh.2Q.Ve9bH6TPZmJnPTf0yupc6wwhRN82','약관동의안해도되네','leemade@google.com','01099563452','남성','default','왜지금알았지','2018-12-06'),('g3984hf983h9','$2a$10$DnNZoiWZ1mIgiA4SMl7AAOF/Hfr1acl5ZSl.xrJVksm/XH/YJhypq','올때치킨','leemade@google.com','01056757934','남성','default','네네간장치킨맛잇어요 ㅎ','2018-12-06'),('g438989fg348','$2a$10$gvFInDWmkgr72o.ZrixAeeFeSe6sDxwsXgJIdDx.ajlKISu7z50ku','한현민실친','leemade@google.com','01053829418','남성','default','현민이 많이 사랑해주세요','2018-12-06'),('g45g984hg4h','$2a$10$q2ZCAYMoAG/DxDQAH4bPgOxdc.jhW0IG83hdC3yTt5fCMtP7bhjRu','그루피사장내동기','leemade@google.com','01079493859','여성','default','편돌이라고 무시하지마세요','2018-12-06'),('g893hg89h3','$2a$10$cZCf9RStMF2.OLcgUJheh.uLeLxVXoMiKLE91sHnJxmg72cVWpSNG','주말은왜짧을까','leemade@google.com','01034524568','남성','default','혹시아세요?','2018-12-06'),('ggj4893jf','$2a$10$GBg6nuq/BoG8ACDizOWjduhuH7QQDHMzpTAm5JgC/p8k1oQrRtpl.','불어스승님구함','leemade@google.com','01042346345','남성','default','유학가려고 불어배우고있는 24살입니다!','2018-12-06'),('ghldnjsrkdlq','$2a$10$E8nKlTGoYBPxJs75xsnXne.1YzVjjnpqIr8W8rBAdGmnE3DUopjpi','마피아장인','leemade@google.com','01063952849','여성','default','나는의사인데','2018-12-06'),('gkgkgkrof43f3','$2a$10$yiuhsizpVsLKQHSzXxBb9euRr26tjqUE9dbSXDgO/3H56Gb0F8OSa','네이버보다는다음','leemade@google.com','01068685923','남성','default','네이버보단그루피','2018-12-06'),('godsu','$2a$10$gSMf9StPxes.rCqUSU91jOHlQJ5M2BjID/bOfYgM7EQhz8F4XXC9y','드르렁','choimory@naver.com','01050304993','남성','godsu','열심히 하겠습니다','2018-12-06'),('h569h95069h','$2a$10$0eOQzOEejNNjSltMmJHAM.ychMsst0ynnWBfXCW9IFt1ywCy4iaru','배린이','leemade@google.com','01057933452','남성','default','배그알려주실분~','2018-12-06'),('hahaman','$2a$10$u5sFvST2VT87eO6aB170kOhDwEZMJEWB5stATQSkvBPTuynn0ztYm','하하맨','leemade@google.com','01072348133','남성','default','독신주의자','2018-12-06'),('happyu','$2a$10$sAZM4ppXUWSyEp6zZgE6LeSfKca0Q4bE5brM8XxOYeVF9cPXFYOPq','인생은자신감','leemade@google.com','01083132948','남성','default','미국에서8년유학했어요','2018-12-06'),('her','$2a$10$83jJ8eDvj2Q44dBsTFFrZ.nsyR4FljMeQvFyW0exHdC3SF911LT8W','호곡','choimory@naver.com','01020300531','남성','her','안녕하세요','2018-12-06'),('idf239dfj982h98df','$2a$10$ps9T63XXP8U1nS6tmkqVfuOfmmRnCO3t24VPc9VVdoT9Oq/a2uAO.','엄마따라가입함','leemade@google.com','01024245853','남성','default','우리엄마짱이죠?','2018-12-06'),('jjonak','$2a$10$fF6kLk3SoqeSkacrMd/Ki.PYZBzEDvnmLB.2W.mZ8qZBcou0D8dYW','쪼낙','leemade@google.com','01034592499','여성','default','JJoNak','2018-12-06'),('kirkland','$2a$10$4Ib.uDNK59mh3hhVA1Su..htu88uHOPpv18cLHRRkxamCdo/pHFLS','kirkland','leemade@google.com','01093829249','여성','default','경기도민','2018-12-06'),('kj9923je','$2a$10$mBC5lTvwZaiu6DKub/HzPuMxGQn5XZ3BvjdEEuxqeBNV6V4uxFgLy','Kaley','leemade@google.com','01031935949','남성','default','I live in Valencia,California','2018-12-06'),('oiuhf98243hf','$2a$10$RIg7bUI9J3rK9NQ9Gh9N/.tWgYiHytd8/usLjCQuluNeJ.w/VWe8i','텍사스에삼','leemade@google.com','01038592848','남성','default','텍사스에사는 22살남자입니다. 잘부탁드려요','2018-12-06'),('rhfudqhuidq','$2a$10$YcXRBbRmngk10sPxI2myweESP/U.ubr8MHTMmlpfoQfWSWl6vNZCS','목표는고려대','leemade@google.com','01032537354','남성','default','부모님두분다 고려대나오셨다!?','2018-12-06'),('robot','$2a$10$07tXzEiFkFAKkbIH69G2ce5xHLaleUSlC0Su0rmlZ.8ICar.vVmgm','로봇아님','choimory@naver.com','01020405070','남성','robot','빅데이터를 기반으로 분석하여 흥미있을법한 ','2018-12-06'),('roro2929','$2a$10$/dysHEyWw5lJcXozGw1XIuz7BSOrY.pFqXadqqJftZy1kJiteMNsy','밥먹으면서가입중','leemade@google.com','01044241653','남성','default','일본어 초보..','2018-12-06'),('ryujaehong','$2a$10$k8bFesS41nb6lYz5BhyRp./UZ00ZngODzUeZwrfU9Ch/L/X1oVwy.','류제홍','leemade@google.com','01046929924','남성','default','오버워치 프로게이머 류제홍','2018-12-06'),('seriousgirl','$2a$10$11ZirS8.T6sxDhfLtkLhkeMwNa7t.0zGcwEDfuxPFmRv/aI7rmZxy','호랑나비','leemade@google.com','01046822941','여성','default','페미니스트','2018-12-06'),('simsim','$2a$10$uP6qlwgk/xL00QZDOtt.HexelfwlWQpX2y9xAXKI2SwRG9daao3Hi','심심이','choimory@naver.com','01020305669','남성','simsim','심심','2018-12-06'),('sleepy','$2a$10$M63oVx6TCU3q6DKBhLpKkeV2eo4LkarWSPShKpikslO0Eykxs4lZa','잠온다','choimory@naver.com','0102302953','남성','sleepy','졸리네요','2018-12-07'),('tired','$2a$10$l7jV6RGVYwM/vC4V94ZhLelb0mS79rOTaMse5kdu9D.RmyO36Xlwa','닼섴','choimory@naver.com','01038493005','남성','tired','피고내','2018-12-07'),('tomorrowno','$2a$10$NzAfto2xDJAzHFAYduAE4et9jlzq.5HT5.v/KjYtMd.KU8/Tx83lm','내일은없다','leemade@google.com','01035824848','여성','default','내일은사실있다','2018-12-06'),('ufh3849hc','$2a$10$SFNIj52.z8zWZ4H.LEDGMuql/cETaly7e8mm/upnKB5W0l1D2.yC2','아이폰충','leemade@google.com','01052349567','여성','default','삼성망해라','2018-12-06'),('wifipassword','$2a$10$7wegPSH/wMVazkiA5RZLo.v7XLNkbITlLJVidst5wTXtHvTBO8.Mu','와파비번이뭔가요','leemade@google.com','01039592941','여성','default','히라가나마스터','2018-12-06'),('wyg53g45g4','$2a$10$.vMy0JMT95stGhwhlT66SO1UjGIR3Qc3NphZ2jAfcEcGGxZpbaML2','수학못하는수학교사','leemade@google.com','01057332348','여성','default','61살입니다.','2018-12-06'),('yearballey','$2a$10$.J2X0oRu3TaeAKWyjcqdUuWMCAMmz6olKdfw.ICOufXIAsJbcBKCa','iamtrash','leemade@google.com','01046922718','여성','default','인간은왜살까','2018-12-06');
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_stat`
--

DROP TABLE IF EXISTS `member_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_stat` (
  `MEMBER_ID` varchar(20) NOT NULL,
  `GROUP_ID` int(11) NOT NULL DEFAULT '0',
  `ACCEPT` tinyint(4) NOT NULL DEFAULT '0',
  `STUDYCOUNT` int(11) NOT NULL DEFAULT '0',
  `STUDYSUCCESS` int(11) NOT NULL DEFAULT '0',
  `KICKCOUNT` int(11) NOT NULL DEFAULT '0',
  `CHECKCOUNT` int(11) NOT NULL DEFAULT '0',
  `CHECKSUCCESS` int(11) NOT NULL DEFAULT '0',
  `BAN` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_stat`
--

LOCK TABLES `member_stat` WRITE;
/*!40000 ALTER TABLE `member_stat` DISABLE KEYS */;
INSERT INTO `member_stat` VALUES ('23897f2879hf',9223,1,0,0,0,0,0,0),('23980ru9802fj',9221,1,0,0,0,0,0,0),('2r23r2r83j',9223,1,0,0,0,0,0,0),('3498uf9834f89u',9223,1,0,0,0,0,0,0),('3948urti8we3',9222,1,0,0,0,0,0,0),('3993fj3nifr',9220,1,0,0,0,0,0,0),('3w84uth',9222,1,0,0,0,0,0,0),('45t8u495ujgfdio',9221,1,0,0,0,0,0,0),('489tg43wtu48',9221,1,0,0,0,0,0,0),('4f8932fh',9221,1,0,0,0,0,0,0),('53g33f321',9219,1,0,0,0,0,0,0),('6767hfhueruifghe',9217,0,6,1,0,127,66,0),('8934j98fj398',0,0,0,0,0,0,0,0),('8934ufgreuih',0,0,0,0,0,0,0,0),('893wwwww4eu2',0,0,0,0,0,0,0,0),('894rtu9834ut',0,0,0,0,0,0,0,0),('9f84h398fh3948f8',9217,1,2,2,0,92,88,0),('anais',0,0,0,0,0,0,0,0),('buildingman3',9216,1,0,0,0,0,0,0),('chipmunk',9217,1,8,7,0,111,102,0),('choco2',9219,1,0,0,0,0,0,0),('curious',9224,1,8,7,0,77,67,0),('d239hd89h',0,0,0,0,0,0,0,0),('d2j398jhfdfhweh',0,0,0,0,0,0,0,0),('d32uihd2h8h8',0,0,0,0,0,0,0,0),('d3o2ic928yf',0,0,0,0,0,0,0,0),('ddiyong',9214,1,0,0,0,0,0,0),('djoeifwef2',0,0,0,0,0,0,0,0),('dkelelfmfdho',0,0,0,0,0,0,0,0),('dktnlatlagod',0,0,0,0,0,0,0,0),('dlwptmftmf',0,0,0,0,0,0,0,0),('donge2',0,0,0,0,0,0,0,0),('eg3948f98',0,0,0,0,0,0,0,0),('erfhiuo3hui4',0,0,0,0,0,0,0,0),('f2349jf98j32489',0,0,0,0,0,0,0,0),('f2398d2j98',0,0,0,0,0,0,0,0),('f246rfg2d',0,0,0,0,0,0,0,0),('f24j9j982j',0,0,0,0,0,0,0,0),('f28f82h8hdf',0,0,0,0,0,0,0,0),('f29398dfh29',0,0,0,0,0,0,0,0),('f2983f9huhedwf',0,0,0,0,0,0,0,0),('f298f892h89',0,0,0,0,0,0,0,0),('f298hf9hewuhf',0,0,0,0,0,0,0,0),('f2u98h892h',0,0,0,0,0,0,0,0),('f3489uf983489fj',0,0,0,0,0,0,0,0),('f42398fh8923',0,0,0,0,0,0,0,0),('f4289f823hf',0,0,0,0,0,0,0,0),('f5i9jiufhieurh',0,0,0,0,0,0,0,0),('f9843u98f839',0,0,0,0,0,0,0,0),('fdhf2983f',0,0,0,0,0,0,0,0),('fdshfghiu2h',0,0,0,0,0,0,0,0),('ffjfj23dfj',0,0,0,0,0,0,0,0),('fh834hf8h3',0,0,0,0,0,0,0,0),('fi429f298f89289f',0,0,0,0,0,0,0,0),('fiowefn3f',0,0,0,0,0,0,0,0),('fj29f298h',0,0,0,0,0,0,0,0),('fu23iufnhuiih',0,0,0,0,0,0,0,0),('fuhi2u3h2',0,0,0,0,0,0,0,0),('fui94238dfqd23d24',0,0,0,0,0,0,0,0),('g34f32r13d',0,0,0,0,0,0,0,0),('g3598g83',0,0,0,0,0,0,0,0),('g389893j',0,0,0,0,0,0,0,0),('g3984hf983h9',0,0,0,0,0,0,0,0),('g438989fg348',0,0,0,0,0,0,0,0),('g45g984hg4h',0,0,0,0,0,0,0,0),('g893hg89h3',0,0,0,0,0,0,0,0),('ggj4893jf',0,0,0,0,0,0,0,0),('ghldnjsrkdlq',0,0,0,0,0,0,0,0),('gkgkgkrof43f3',0,0,0,0,0,0,0,0),('godsu',0,0,0,0,0,0,0,0),('h569h95069h',0,0,0,0,0,0,0,0),('hahaman',0,0,0,0,0,0,0,0),('happyu',0,0,0,0,0,0,0,0),('her',9213,1,0,0,0,0,0,0),('idf239dfj982h98df',0,0,0,0,0,0,0,0),('kirkland',0,0,0,0,0,0,0,0),('kj9923je',0,0,0,0,0,0,0,0),('oiuhf98243hf',0,0,0,0,0,0,0,0),('rhfudqhuidq',0,0,0,0,0,0,0,0),('robot',9217,1,7,6,0,135,122,0),('roro2929',0,0,0,0,0,0,0,0),('ryujaehong',0,0,0,0,0,0,0,0),('seriousgirl',0,0,0,0,0,0,0,0),('simsim',9217,0,6,5,0,111,99,0),('sleepy',9224,1,3,2,0,55,53,0),('tired',9224,1,7,3,1,111,67,0),('tomorrowno',0,0,0,0,0,0,0,0),('ufh3849hc',0,0,0,0,0,0,0,0),('wifipassword',0,0,0,0,0,0,0,0),('wyg53g45g4',0,0,0,0,0,0,0,0),('yearballey',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `member_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('강원도','강릉시'),('강원도','고성군'),('강원도','동해시'),('강원도','삼척시'),('강원도','속초시'),('강원도','양구군'),('강원도','양양군'),('강원도','영월군'),('강원도','원주시'),('강원도','인제군'),('강원도','정선군'),('강원도','철원군'),('강원도','춘천시'),('강원도','태백시'),('강원도','평창군'),('강원도','홍천군'),('강원도','화천군'),('강원도','횡성군'),('경기도','가평군'),('경기도','고양시 덕양구'),('경기도','고양시 일산동구'),('경기도','고양시 일산서구'),('경기도','과천시'),('경기도','광명시'),('경기도','광주시'),('경기도','구리시'),('경기도','군포시'),('경기도','김포시'),('경기도','남양주시'),('경기도','동두천시'),('경기도','부천시'),('경기도','성남시 분당구'),('경기도','성남시 수정구'),('경기도','성남시 중원구'),('경기도','수원시 권선구'),('경기도','수원시 영통구'),('경기도','수원시 장안구'),('경기도','수원시 팔달구'),('경기도','시흥시'),('경기도','안산시 단원구'),('경기도','안산시 상록구'),('경기도','안성시'),('경기도','안양시 동안구'),('경기도','안양시 만안구'),('경기도','양주시'),('경기도','양평군'),('경기도','여주시'),('경기도','연천군'),('경기도','오산시'),('경기도','용인시 기흥구'),('경기도','용인시 수지구'),('경기도','용인시 처인구'),('경기도','의왕시'),('경기도','의정부시'),('경기도','이천시'),('경기도','파주시'),('경기도','평택시'),('경기도','포천시'),('경기도','하남시'),('경기도','화성시'),('경상남도','거제시'),('경상남도','거창군'),('경상남도','고성군'),('경상남도','김해시'),('경상남도','남해군'),('경상남도','밀양시'),('경상남도','사천시'),('경상남도','산청군'),('경상남도','양산시'),('경상남도','의령군'),('경상남도','진주시'),('경상남도','창녕군'),('경상남도','창원시 마산합포구'),('경상남도','창원시 마산회원구'),('경상남도','창원시 성산구'),('경상남도','창원시 의창구'),('경상남도','창원시 진해구'),('경상남도','통영시'),('경상남도','하동군'),('경상남도','함안군'),('경상남도','함양군'),('경상남도','합천군'),('경상북도','경산시'),('경상북도','경주시'),('경상북도','고령군'),('경상북도','구미시'),('경상북도','군위군'),('경상북도','김천시'),('경상북도','문경시'),('경상북도','봉화군'),('경상북도','상주시'),('경상북도','성주군'),('경상북도','안동시'),('경상북도','영덕군'),('경상북도','영양군'),('경상북도','영주시'),('경상북도','영천시'),('경상북도','예천군'),('경상북도','울릉군'),('경상북도','울진군'),('경상북도','의성군'),('경상북도','청도군'),('경상북도','청송군'),('경상북도','칠곡군'),('경상북도','포항시 남구'),('경상북도','포항시 북구'),('광주광역시','광산구'),('광주광역시','남구'),('광주광역시','동구'),('광주광역시','북구'),('광주광역시','서구'),('대구광역시','남구'),('대구광역시','달서구'),('대구광역시','달성군'),('대구광역시','동구'),('대구광역시','북구'),('대구광역시','서구'),('대구광역시','수성구'),('대구광역시','중구'),('대전광역시','대덕구'),('대전광역시','동구'),('대전광역시','서구'),('대전광역시','유성구'),('대전광역시','중구'),('부산광역시','강서구'),('부산광역시','금정구'),('부산광역시','기장군'),('부산광역시','남구'),('부산광역시','동구'),('부산광역시','동래구'),('부산광역시','부산진구'),('부산광역시','북구'),('부산광역시','사상구'),('부산광역시','사하구'),('부산광역시','서구'),('부산광역시','수영구'),('부산광역시','연제구'),('부산광역시','영도구'),('부산광역시','중구'),('부산광역시','해운대구'),('서울특별시','강남구'),('서울특별시','강동구'),('서울특별시','강북구'),('서울특별시','강서구'),('서울특별시','관악구'),('서울특별시','광진구'),('서울특별시','구로구'),('서울특별시','금천구'),('서울특별시','노원구'),('서울특별시','도봉구'),('서울특별시','동대문구'),('서울특별시','동작구'),('서울특별시','마포구'),('서울특별시','서대문구'),('서울특별시','서초구'),('서울특별시','성동구'),('서울특별시','성북구'),('서울특별시','송파구'),('서울특별시','양천구'),('서울특별시','영등포구'),('서울특별시','용산구'),('서울특별시','은평구'),('서울특별시','종로구'),('서울특별시','중구'),('서울특별시','중랑구'),('세종특별자치시',''),('울산광역시','남구'),('울산광역시','동구'),('울산광역시','북구'),('울산광역시','울주군'),('울산광역시','중구'),('인천광역시','강화군'),('인천광역시','계양구'),('인천광역시','남동구'),('인천광역시','동구'),('인천광역시','미추홀구'),('인천광역시','부평구'),('인천광역시','서구'),('인천광역시','연수구'),('인천광역시','옹진군'),('인천광역시','중구'),('전라남도','강진군'),('전라남도','고흥군'),('전라남도','곡성군'),('전라남도','광양시'),('전라남도','구례군'),('전라남도','나주시'),('전라남도','담양군'),('전라남도','목포시'),('전라남도','무안군'),('전라남도','보성군'),('전라남도','순천시'),('전라남도','신안군'),('전라남도','여수시'),('전라남도','영광군'),('전라남도','영암군'),('전라남도','완도군'),('전라남도','장성군'),('전라남도','장흥군'),('전라남도','진도군'),('전라남도','함평군'),('전라남도','해남군'),('전라남도','화순군'),('전라북도','고창군'),('전라북도','군산시'),('전라북도','김제시'),('전라북도','남원시'),('전라북도','무주군'),('전라북도','부안군'),('전라북도','순창군'),('전라북도','완주군'),('전라북도','익산시'),('전라북도','임실군'),('전라북도','장수군'),('전라북도','전주시 덕진구'),('전라북도','전주시 완산구'),('전라북도','정읍시'),('전라북도','진안군'),('제주특별자치도','서귀포시'),('제주특별자치도','제주시'),('충청남도','계룡시'),('충청남도','공주시'),('충청남도','금산군'),('충청남도','논산시'),('충청남도','당진시'),('충청남도','보령시'),('충청남도','부여군'),('충청남도','서산시'),('충청남도','서천군'),('충청남도','아산시'),('충청남도','예산군'),('충청남도','천안시 동남구'),('충청남도','천안시 서북구'),('충청남도','청양군'),('충청남도','태안군'),('충청남도','홍성군'),('충청북도','괴산군'),('충청북도','단양군'),('충청북도','보은군'),('충청북도','영동군'),('충청북도','옥천군'),('충청북도','음성군'),('충청북도','제천시'),('충청북도','증평군'),('충청북도','진천군'),('충청북도','청주시 상당구'),('충청북도','청주시 서원구'),('충청북도','청주시 청원구'),('충청북도','청주시 흥덕구'),('충청북도','충주시');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_21`
--

DROP TABLE IF EXISTS `quiz_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_21` (
  `qIndex` int(11) NOT NULL AUTO_INCREMENT,
  `qQuestion` varchar(100) DEFAULT NULL,
  `answer1` varchar(100) DEFAULT NULL,
  `answer2` varchar(100) DEFAULT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `answer5` varchar(100) DEFAULT NULL,
  `qRightAnswer` varchar(100) DEFAULT NULL,
  `qExplain` varchar(300) DEFAULT NULL,
  `uId` varchar(20) DEFAULT NULL,
  `qRegDate` datetime DEFAULT NULL,
  PRIMARY KEY (`qIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_21`
--

LOCK TABLES `quiz_21` WRITE;
/*!40000 ALTER TABLE `quiz_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_22`
--

DROP TABLE IF EXISTS `quiz_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_22` (
  `qIndex` int(11) NOT NULL AUTO_INCREMENT,
  `qQuestion` varchar(100) DEFAULT NULL,
  `answer1` varchar(100) DEFAULT NULL,
  `answer2` varchar(100) DEFAULT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `answer5` varchar(100) DEFAULT NULL,
  `qRightAnswer` varchar(100) DEFAULT NULL,
  `qExplain` varchar(300) DEFAULT NULL,
  `uId` varchar(20) DEFAULT NULL,
  `qRegDate` datetime DEFAULT NULL,
  PRIMARY KEY (`qIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_22`
--

LOCK TABLES `quiz_22` WRITE;
/*!40000 ALTER TABLE `quiz_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_23`
--

DROP TABLE IF EXISTS `quiz_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_23` (
  `qIndex` int(11) NOT NULL AUTO_INCREMENT,
  `qQuestion` varchar(100) DEFAULT NULL,
  `answer1` varchar(100) DEFAULT NULL,
  `answer2` varchar(100) DEFAULT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `answer5` varchar(100) DEFAULT NULL,
  `qRightAnswer` varchar(100) DEFAULT NULL,
  `qExplain` varchar(300) DEFAULT NULL,
  `uId` varchar(20) DEFAULT NULL,
  `qRegDate` datetime DEFAULT NULL,
  PRIMARY KEY (`qIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_23`
--

LOCK TABLES `quiz_23` WRITE;
/*!40000 ALTER TABLE `quiz_23` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_1`
--

DROP TABLE IF EXISTS `reply_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_1` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_1`
--

LOCK TABLES `reply_1` WRITE;
/*!40000 ALTER TABLE `reply_1` DISABLE KEYS */;
INSERT INTO `reply_1` VALUES (1,49139,'ajax test','홍길자','2018-11-26 10:20:31','2018-11-26 10:20:31'),(2,49139,'modify ajax test  ','오작두','2018-11-26 10:21:57','2018-11-26 21:06:59'),(3,49139,'ajax test','오달순','2018-11-26 11:30:49','2018-11-26 11:30:49'),(4,49139,'test','홍길자','2018-11-27 16:38:27','2018-11-27 16:38:27'),(5,49139,'ajax register','홍길자','2018-11-27 16:41:15','2018-11-27 16:41:15'),(6,49138,'ajax test test','오달순','2018-11-27 16:51:10','2018-11-27 16:51:10'),(10,49140,'  		ajax register modify   		','오달순','2018-11-28 16:06:54','2018-11-28 16:07:48'),(11,49140,'  		ajax register object		','오달순','2018-11-28 16:06:54','2018-11-28 16:08:15'),(12,49140,'register','오달자','2018-11-28 16:09:53','2018-11-28 16:09:53'),(13,49139,'리밍보의 송금','오작두','2018-11-28 17:06:24','2018-11-28 17:06:24'),(14,49138,'리밍보의 수상한 송금','리밍보','2018-11-28 17:07:51','2018-11-28 17:07:51'),(15,49138,'리밍보의 송금','오달자','2018-11-28 17:08:39','2018-11-28 17:08:39'),(16,49137,'리밍보의 저수지 추적','리밍보','2018-11-28 17:09:30','2018-11-28 17:09:30'),(17,370,'tt','홍길동','2018-11-29 17:26:51','2018-11-29 17:26:51'),(18,370,'dfgdfg','gdgdfgdfg','2018-11-29 17:27:04','2018-11-29 17:27:04'),(19,370,'sad','홍길동','2018-12-04 10:48:46','2018-12-04 10:48:46');
/*!40000 ALTER TABLE `reply_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_3`
--

DROP TABLE IF EXISTS `reply_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_3` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_3`
--

LOCK TABLES `reply_3` WRITE;
/*!40000 ALTER TABLE `reply_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8193`
--

DROP TABLE IF EXISTS `reply_8193`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8193` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8193`
--

LOCK TABLES `reply_8193` WRITE;
/*!40000 ALTER TABLE `reply_8193` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8193` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8194`
--

DROP TABLE IF EXISTS `reply_8194`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8194` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8194`
--

LOCK TABLES `reply_8194` WRITE;
/*!40000 ALTER TABLE `reply_8194` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8194` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8196`
--

DROP TABLE IF EXISTS `reply_8196`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8196` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8196`
--

LOCK TABLES `reply_8196` WRITE;
/*!40000 ALTER TABLE `reply_8196` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8196` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8197`
--

DROP TABLE IF EXISTS `reply_8197`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8197` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8197`
--

LOCK TABLES `reply_8197` WRITE;
/*!40000 ALTER TABLE `reply_8197` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8197` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8198`
--

DROP TABLE IF EXISTS `reply_8198`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8198` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8198`
--

LOCK TABLES `reply_8198` WRITE;
/*!40000 ALTER TABLE `reply_8198` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8198` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8442`
--

DROP TABLE IF EXISTS `reply_8442`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8442` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8442`
--

LOCK TABLES `reply_8442` WRITE;
/*!40000 ALTER TABLE `reply_8442` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8442` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8443`
--

DROP TABLE IF EXISTS `reply_8443`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8443` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8443`
--

LOCK TABLES `reply_8443` WRITE;
/*!40000 ALTER TABLE `reply_8443` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8443` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8444`
--

DROP TABLE IF EXISTS `reply_8444`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8444` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8444`
--

LOCK TABLES `reply_8444` WRITE;
/*!40000 ALTER TABLE `reply_8444` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8444` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8445`
--

DROP TABLE IF EXISTS `reply_8445`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8445` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8445`
--

LOCK TABLES `reply_8445` WRITE;
/*!40000 ALTER TABLE `reply_8445` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8445` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_8446`
--

DROP TABLE IF EXISTS `reply_8446`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_8446` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_8446`
--

LOCK TABLES `reply_8446` WRITE;
/*!40000 ALTER TABLE `reply_8446` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_8446` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9213`
--

DROP TABLE IF EXISTS `reply_9213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9213` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9213`
--

LOCK TABLES `reply_9213` WRITE;
/*!40000 ALTER TABLE `reply_9213` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9213` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9214`
--

DROP TABLE IF EXISTS `reply_9214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9214` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9214`
--

LOCK TABLES `reply_9214` WRITE;
/*!40000 ALTER TABLE `reply_9214` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9214` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9216`
--

DROP TABLE IF EXISTS `reply_9216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9216` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9216`
--

LOCK TABLES `reply_9216` WRITE;
/*!40000 ALTER TABLE `reply_9216` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9216` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9217`
--

DROP TABLE IF EXISTS `reply_9217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9217` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9217`
--

LOCK TABLES `reply_9217` WRITE;
/*!40000 ALTER TABLE `reply_9217` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9217` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9219`
--

DROP TABLE IF EXISTS `reply_9219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9219` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9219`
--

LOCK TABLES `reply_9219` WRITE;
/*!40000 ALTER TABLE `reply_9219` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9219` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9220`
--

DROP TABLE IF EXISTS `reply_9220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9220` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9220`
--

LOCK TABLES `reply_9220` WRITE;
/*!40000 ALTER TABLE `reply_9220` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9220` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9221`
--

DROP TABLE IF EXISTS `reply_9221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9221` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9221`
--

LOCK TABLES `reply_9221` WRITE;
/*!40000 ALTER TABLE `reply_9221` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9221` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9222`
--

DROP TABLE IF EXISTS `reply_9222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9222` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9222`
--

LOCK TABLES `reply_9222` WRITE;
/*!40000 ALTER TABLE `reply_9222` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9222` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9223`
--

DROP TABLE IF EXISTS `reply_9223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9223` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9223`
--

LOCK TABLES `reply_9223` WRITE;
/*!40000 ALTER TABLE `reply_9223` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9223` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_9224`
--

DROP TABLE IF EXISTS `reply_9224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_9224` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL DEFAULT '0',
  `replytext` varchar(1000) NOT NULL,
  `replyer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_9224`
--

LOCK TABLES `reply_9224` WRITE;
/*!40000 ALTER TABLE `reply_9224` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_9224` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 14:29:25
