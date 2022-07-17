-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: shipment_db
-- ------------------------------------------------------
-- Server version	5.7.38

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
-- Table structure for table `shipment_boxes`
--

DROP TABLE IF EXISTS `shipment_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_boxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_id` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `location_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8d84srippnpmp1kbd70l98ymb` (`shipment_id`),
  KEY `FK938y9uodoa9qn3uuhdriminyc` (`status_id`),
  CONSTRAINT `FK8d84srippnpmp1kbd70l98ymb` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`),
  CONSTRAINT `FK938y9uodoa9qn3uuhdriminyc` FOREIGN KEY (`status_id`) REFERENCES `static_shipments_boxes_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_boxes`
--

LOCK TABLES `shipment_boxes` WRITE;
/*!40000 ALTER TABLE `shipment_boxes` DISABLE KEYS */;
INSERT INTO `shipment_boxes` VALUES (1,'B49A89329BB',9,'Freezer 1/Division 1/Drawer 1/Slot 3',NULL,1,1),(2,'B7135B8BD1B',7,'Freezer 1/Division 1/Drawer 1/Slot 1',NULL,2,1),(3,'B065E4EDBC8',7,'Freezer 1/Division 1/Drawer 1/Slot 1',NULL,3,1);
/*!40000 ALTER TABLE `shipment_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_from` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `received_at` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `condition_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6oi6mbtvq08ht0r1vu09uqdmn` (`condition_id`),
  KEY `FKk8rey4lwbisc9s7sdmmna5wle` (`status_id`),
  CONSTRAINT `FK6oi6mbtvq08ht0r1vu09uqdmn` FOREIGN KEY (`condition_id`) REFERENCES `static_shipments_condition` (`id`),
  CONSTRAINT `FKk8rey4lwbisc9s7sdmmna5wle` FOREIGN KEY (`status_id`) REFERENCES `static_shipments_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,'ospedale tal de tali','bla bla','2019-08-08 07:00:00','123456789',1,2),(2,'Garibaldi',NULL,'1996-12-31 16:45:00','34567123456',1,1),(3,'Garibaldi','sssss-1-35:0978/90','2003-09-26 19:59:00','ab-34rgt67',1,1);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_shipments_boxes_status`
--

DROP TABLE IF EXISTS `static_shipments_boxes_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_shipments_boxes_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_shipments_boxes_status`
--

LOCK TABLES `static_shipments_boxes_status` WRITE;
/*!40000 ALTER TABLE `static_shipments_boxes_status` DISABLE KEYS */;
INSERT INTO `static_shipments_boxes_status` VALUES (1,'Stored. Ready to be processed'),(2,'Completed');
/*!40000 ALTER TABLE `static_shipments_boxes_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_shipments_condition`
--

DROP TABLE IF EXISTS `static_shipments_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_shipments_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_shipments_condition`
--

LOCK TABLES `static_shipments_condition` WRITE;
/*!40000 ALTER TABLE `static_shipments_condition` DISABLE KEYS */;
INSERT INTO `static_shipments_condition` VALUES (1,'Good Conditions'),(2,'Not Good Conditions');
/*!40000 ALTER TABLE `static_shipments_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_shipments_status`
--

DROP TABLE IF EXISTS `static_shipments_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_shipments_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_shipments_status`
--

LOCK TABLES `static_shipments_status` WRITE;
/*!40000 ALTER TABLE `static_shipments_status` DISABLE KEYS */;
INSERT INTO `static_shipments_status` VALUES (1,'Shipment Acquired'),(2,'Temporary Stored'),(3,'Temporary Stored + Documents'),(4,'Completed');
/*!40000 ALTER TABLE `static_shipments_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 14:12:58
