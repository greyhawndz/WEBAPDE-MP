CREATE DATABASE  IF NOT EXISTS `whatdo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `whatdo`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: whatdo
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `accountID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birthday` date DEFAULT NULL,
  `about_me` varchar(500) DEFAULT NULL,
  `sex` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `realname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accountID`),
  UNIQUE KEY `Name_UNIQUE` (`name`),
  UNIQUE KEY `accountID_UNIQUE` (`accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'greyhawndz','1234','1995-11-06','I suck','Male','suck@gmail.com',19,NULL),(2,'yellow guy','4321','1995-01-01','He suck','Male','isuck@gmail.com',12,NULL),(7,'manto','1234','2002-01-01',NULL,'Male','manto@yahoo.com',20,NULL),(8,'johnpogi','secret','1996-05-12',NULL,'Male','johncaingles@gmail.com',18,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `placeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `reviewID` int(11) DEFAULT NULL,
  `accountID` int(11) DEFAULT NULL,
  PRIMARY KEY (`placeID`),
  UNIQUE KEY `placeID_UNIQUE` (`placeID`),
  KEY `reviewID_idx` (`reviewID`),
  KEY `accountID_idx` (`accountID`),
  CONSTRAINT `accID` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reviewID` FOREIGN KEY (`reviewID`) REFERENCES `review` (`reviewID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'De La Salle University','2401 Taft Avenue',NULL,1,1);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `accountID` int(11) NOT NULL,
  `placeID` int(11) NOT NULL,
  PRIMARY KEY (`reviewID`),
  UNIQUE KEY `reviewID_UNIQUE` (`reviewID`),
  KEY `accountID_idx` (`accountID`),
  KEY `placeID_idx` (`placeID`),
  CONSTRAINT `accountID` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placeID` FOREIGN KEY (`placeID`) REFERENCES `place` (`placeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'HELLO',5,'DLSU IS BEST',1,1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `idvisit` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `place` int(11) NOT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `username_idx` (`username`),
  KEY `placename_idx` (`place`),
  KEY `place_idx` (`place`),
  KEY `visit_place_idx` (`place`),
  CONSTRAINT `visit_place` FOREIGN KEY (`place`) REFERENCES `place` (`placeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `visit_username` FOREIGN KEY (`username`) REFERENCES `account` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-25 16:59:28
