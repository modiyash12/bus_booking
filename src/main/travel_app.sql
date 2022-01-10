-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: travel_app
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `adddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Yash Modi','modinaman7@gmail.com',NULL,'8770853940','2021-07-11'),(2,'Yash Modi','modinaman7@gmail.com',NULL,'8770853940','2021-07-11'),(3,'meghna','meghna@gmail.com','000000','7776669998','2021-07-11'),(4,'anirban','anirban@gmail.com','112233','9981379857','2021-07-12'),(5,'anirban','anirban@gmail.com','112233','9981379857','2021-07-12');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookid` varchar(10) DEFAULT NULL,
  `custid` int DEFAULT NULL,
  `busid` int DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `busdate` date DEFAULT NULL,
  `dtiming` varchar(20) DEFAULT NULL,
  `busfare` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `bookdate` date DEFAULT NULL,
  `seatno` varchar(20) DEFAULT NULL,
  `paystatus` varchar(20) DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,'book_01',10000,20001,'guna','indore','2022-02-02','',800,'pizza','24','2021-07-12','berth20','due',2),(3,'book_01',10000,20001,'guna','indore','2022-02-02','',800,'piz','18','2021-07-12','berth19','due',2),(4,'book_03',10000,20001,'guna','indore','2022-02-02','',800,'dev','23','2021-07-12','berth20','due',3),(5,'book_03',10000,20001,'guna','indore','2022-02-02','',800,'meghna','18','2021-07-12','berth19','due',3),(6,'book_04',10000,20001,'guna','indore','2022-02-02','',800,'dev','23','2021-07-12','berth20','due',4),(7,'book_04',10000,20001,'guna','indore','2022-02-02','',800,'meghna','18','2021-07-12','berth19','due',4),(8,'book_05',10000,20001,'guna','indore','2022-02-02','',800,'dev','23','2021-07-12','berth20','due',5),(9,'book_05',10000,20001,'guna','indore','2022-02-02','',800,'meghna','18','2021-07-12','berth19','due',5),(10,'book_06',10000,20001,'guna','indore','2022-02-02','8:00',800,'somya','3','2021-07-12','berth18','paid',6),(11,'book_06',10000,20001,'guna','indore','2022-02-02','8:00',800,'anirban','23','2021-07-12','berth17','paid',6),(12,'book_07',10000,20000,'delhi','bombay','2021-02-04','11:00 PM',2500,'yash','24','2021-07-12','berth30','paid',7),(13,'book_07',10000,20000,'delhi','bombay','2021-02-04','11:00 PM',2500,'ani','23','2021-07-12','berth29','paid',7),(14,'book_08',10000,20000,'delhi','bombay','2021-02-04','11:00 PM',2500,'narendra','54','2021-07-12','berth28','paid',8),(15,'book_08',10000,20000,'delhi','bombay','2021-02-04','11:00 PM',2500,'kalpana','52','2021-07-12','berth27','paid',8);
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_detail`
--

DROP TABLE IF EXISTS `bus_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_detail` (
  `busid` int NOT NULL AUTO_INCREMENT,
  `busname` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `bustype` varchar(20) DEFAULT NULL,
  `atiming` varchar(20) DEFAULT NULL,
  `dtiming` varchar(20) DEFAULT NULL,
  `busdate` date DEFAULT NULL,
  `duration` varchar(6) DEFAULT NULL,
  `busfare` int DEFAULT NULL,
  `totalseat` int DEFAULT NULL,
  `seatleft` int DEFAULT NULL,
  PRIMARY KEY (`busid`)
) ENGINE=InnoDB AUTO_INCREMENT=20004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_detail`
--

LOCK TABLES `bus_detail` WRITE;
/*!40000 ALTER TABLE `bus_detail` DISABLE KEYS */;
INSERT INTO `bus_detail` VALUES (20000,'hansraj','delhi','bombay','ac','12:00 PM','11:00 PM','2021-02-04','11:hr',2500,30,26),(20001,'raj travel','guna','indore','non ac','12:00 PM','8:00','2022-02-02','7 hr',800,20,16),(20002,'kamla travel','goa','kolkata','ac','1:00','11:00 PM','2023-02-02','10:hr',3500,20,20),(20003,'atmecs travel','banglore','kolkata','Ac','12:00 PM','5:00','2022-02-02','8 hr',3000,20,20);
/*!40000 ALTER TABLE `bus_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `payid` int NOT NULL AUTO_INCREMENT,
  `bookid` varchar(20) DEFAULT NULL,
  `custid` int DEFAULT NULL,
  `payment` int DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `cardexpiry` varchar(20) DEFAULT NULL,
  `cardname` varchar(20) DEFAULT NULL,
  `paydate` date DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=30005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (30000,'book_06',10000,1600,'yash','222','yash','2021-07-12'),(30001,'book_06',10000,1600,'yash','222','yash','2021-07-12'),(30002,'book_07',10000,5000,'yash','4444','yash','2021-07-12'),(30003,'book_07',10000,5000,'yash','4444','yash','2021-07-12'),(30004,'book_08',10000,5000,'naman','55','naman','2021-07-12');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `securityquestion` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`custid`),
  UNIQUE KEY `custid` (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (10000,'Yash Modi','8770853940','yash.modi@atmecs.com','444444','Ward no 24 nfl road ruthiyai','kolkata','472110','fav movie','don','2021-07-11'),(10002,'meghna','8871812947','meghna@gmail.com','223344','durgapur','898776','Hyderbad','fav sweet','rasgulla','2021-07-11');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 23:23:06
