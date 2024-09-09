-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: IssueTickets
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ClientID` int NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DIB'),(2,'Ideas Pvt Ltd'),(3,'Quality time'),(4,'Woodcorp'),(5,'SM Cotton'),(6,'Dadex'),(7,'Ajmal Enterprises'),(8,'Jhulay Lal cotton'),(9,'Synegery Corporation'),(10,'Workshop'),(11,'AS Agro'),(12,'Office'),(13,'Qamar Enterprises'),(14,'AMS supplies'),(15,'Synergy Corporation'),(16,'Yard'),(17,'Maheen Rheman'),(18,'Parveen Khalid'),(19,'Britlite'),(20,'Bank'),(21,'Other'),(22,'New customer - potential');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Mechanical'),(2,'Electrical'),(3,'Accounts'),(4,'Admin'),(5,'Sales');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generators`
--

DROP TABLE IF EXISTS `generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generators` (
  `GeneratorID` int NOT NULL AUTO_INCREMENT,
  `RMGNo` varchar(255) DEFAULT NULL,
  `KVA` int DEFAULT NULL,
  `EngineType` varchar(255) DEFAULT NULL,
  `Internal` tinyint(1) DEFAULT NULL,
  `EngineCondition` varchar(255) DEFAULT NULL,
  `EngineLocation` varchar(255) DEFAULT NULL,
  `Particulars` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GeneratorID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generators`
--

LOCK TABLES `generators` WRITE;
/*!40000 ALTER TABLE `generators` DISABLE KEYS */;
INSERT INTO `generators` VALUES (1,'2',365,'TypeA',1,'Major Overhauling','Workshop',NULL),(2,'3',365,'TypeB',1,'Ready to hire','Yard',NULL),(3,'4',455,'TypeC',1,NULL,'SM Cotton - Bela',NULL),(4,'5',500,'TypeD',1,'Alternator & turbo change','Workshop',NULL),(5,'6',500,'TypeE',1,NULL,'AS Agro - Authal',NULL),(6,'8',725,'TypeF',1,NULL,'Workshop',NULL),(7,'9',1275,'TypeG',1,NULL,'Ajmal - Karachi',NULL),(8,'10',100,'TypeH',1,NULL,'Dadex - Hyderabad',NULL),(9,'11',250,'TypeI',1,NULL,'Workshop',NULL),(10,'12',635,'TypeJ',1,NULL,'Yard',NULL),(11,'14',500,'TypeK',1,NULL,'Yard',NULL),(12,'16',635,'TypeL',1,NULL,'Yard',NULL),(13,'18',725,'TypeM',1,NULL,'DIB - Karachi',NULL),(14,'19',100,'TypeN',1,NULL,'Yard',NULL),(15,'20',250,'TypeO',1,NULL,'Yard',NULL),(16,'21',365,'TypeP',1,NULL,'Jullay lal - Sangarh',NULL),(17,'22',1000,'TypeQ',1,NULL,'Quality dyeing - Karachi',NULL),(18,'25',25,'TypeR',1,NULL,'Maheen - Karachi',NULL),(19,'28',33,'TypeS',1,NULL,'Yard',NULL),(20,'37',20,'TypeT',1,NULL,'Parveen - Karachi',NULL),(21,'40',100,'TypeU',1,NULL,'Ideas - Faisalabad',NULL),(22,'41',365,'TypeV',1,NULL,'Yard',NULL),(23,'43',275,'TypeW',1,NULL,NULL,NULL),(24,'44',310,'TypeX',1,NULL,NULL,NULL),(25,'47',100,'TypeY',1,NULL,NULL,NULL),(26,'49',500,'TypeZ',1,NULL,NULL,NULL),(27,'50',60,'TypeAA',1,NULL,NULL,NULL),(28,'Other',1000,'TypeBB',0,NULL,'External DADEX engine',NULL),(29,'Admin & Accounts',NULL,'TypeCC',1,NULL,'Accounts and admin issues',NULL),(30,'51',22,'Mazda',NULL,'Broken','Workshop',NULL),(31,'Sales',NULL,NULL,NULL,NULL,NULL,NULL),(32,'Marketing',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuerecognitions`
--

DROP TABLE IF EXISTS `issuerecognitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuerecognitions` (
  `IssueRecognitionID` int NOT NULL AUTO_INCREMENT,
  `IssueRecognitionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IssueRecognitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuerecognitions`
--

LOCK TABLES `issuerecognitions` WRITE;
/*!40000 ALTER TABLE `issuerecognitions` DISABLE KEYS */;
INSERT INTO `issuerecognitions` VALUES (1,'Daily meeting'),(2,'Sporadic');
/*!40000 ALTER TABLE `issuerecognitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `IssueID` int NOT NULL AUTO_INCREMENT,
  `IssueName` varchar(255) DEFAULT NULL,
  `Remarks` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`IssueID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'Head rebuild',NULL),(2,'Module card replace',NULL),(3,'Module card calibrate in-house',NULL),(4,'Card Installation',NULL),(5,'Load testing',NULL),(6,'Stolen Battery',NULL),(7,'Relay Issue','Generator is not starting because of Relay'),(8,'Stolen Cables',NULL),(9,'Canopy',NULL),(10,'Movement',NULL),(11,'Breaker',NULL),(12,'Oil Pressure Sensor',NULL),(13,'Oil Cooler Housing',NULL),(14,'Alternator Rewinding',NULL),(15,'Turbo',NULL),(18,'Cheque deposite',NULL),(19,'Cheque Collection',NULL),(20,'Other',NULL),(21,'Rear seal',NULL),(22,'Service - Oil',NULL),(23,'Service - Oil top up',NULL),(24,'Service - Oil Filters',NULL),(25,'Spare - Fuel filter',NULL),(26,'Spare - Water speerator',NULL),(27,'Potential sale',NULL),(28,'Battery - replace',NULL),(29,'Overhaul',NULL),(30,'Governor card',NULL),(31,'Electrical wiring',NULL),(32,'Self',NULL),(33,'Dynamo',NULL),(34,'Gaskit',NULL),(35,'Lugs',NULL),(36,'Variable switch',NULL),(37,'Invoice',NULL),(38,'Quotation',NULL),(39,'Operators',NULL),(40,'SMU',NULL),(41,'Commissioning',NULL),(42,'Calibration',NULL),(43,'Field charger',NULL),(44,'Safety',NULL),(45,'Module card',NULL),(46,'Health check',NULL),(47,'Assembly',NULL),(48,'Routine service',NULL),(49,'Radiator service',NULL),(50,'Ready to hire',NULL),(51,'Machining',NULL),(52,'Water pump',NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `PersonID` int NOT NULL AUTO_INCREMENT,
  `PersonName` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Tanveer Alam','Mechanical Incharge',1),(2,'Muhammad Irshad','Electrical Incharge',2),(3,'Abdul Waseem','Operations incharge',4),(4,'Syed Zahid','Manager Sales',5),(5,'Umer Nawaz','Head of Operations',4),(6,'Shamir Raza','Manager Accounts',3),(7,'Shahid Pervaid','Painter',1),(8,'Asher Ali','Jr. Admin',4),(9,'Niaz Muhammad','Fabricater',1),(10,'Muhajid Abbas','Assistant Mechanic',1);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priorities` (
  `PriorityID` int NOT NULL AUTO_INCREMENT,
  `PriorityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PriorityID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'Critical'),(2,'Urgent'),(3,'High'),(4,'Medium'),(5,'Low');
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `StatusID` int NOT NULL AUTO_INCREMENT,
  `StatusName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Closed'),(2,'Open'),(3,'Void');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary` (
  `SummaryID` int NOT NULL AUTO_INCREMENT,
  `TicketID` int DEFAULT NULL,
  `UpdateDate` datetime NOT NULL,
  `UpdateText` text NOT NULL,
  PRIMARY KEY (`SummaryID`),
  KEY `TicketID` (`TicketID`),
  CONSTRAINT `summary_ibfk_1` FOREIGN KEY (`TicketID`) REFERENCES `tickets` (`TicketID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
INSERT INTO `summary` VALUES (1,92,'2024-08-21 09:53:00','Zahid will get a design approved by Faraz Sahib'),(2,92,'2024-08-21 10:14:00','Test Update. Please disregard '),(3,36,'2024-08-21 10:33:00','Tanveer not available. Radiators core is with the welder. We expect to get it back by 23rd August '),(4,75,'2024-08-21 10:35:00','Canopy will be ready by 7:00 Pm today August 21st.'),(5,88,'2024-08-21 10:37:00','Radiator gate pass has been made'),(6,93,'2024-08-21 10:37:00','This will be done by Friday.'),(7,5,'2024-08-21 10:39:00','This is no longer valid. This generator will come back today. Calibration will be done when the generator goes to the next site and is on load.'),(8,14,'2024-08-21 10:41:00','Alternator is ready. We should have it by later today. Adnan is the vendor'),(9,15,'2024-08-21 10:42:00','Waseem: We are only missing the manifold. We should have the manifold by Saturday August 24th'),(10,41,'2024-08-21 10:43:00','Irshad sb will complete the job by 1:30 PM today.'),(11,42,'2024-08-21 10:44:00','This id done.'),(12,44,'2024-08-21 10:46:00','This is done.'),(13,81,'2024-08-21 10:47:00','Waiting for Shahmir to release funds.'),(14,89,'2024-08-21 10:48:00','Checked by Tanveer Mujahid.'),(15,96,'2024-08-21 10:50:00','Done.'),(16,67,'2024-08-21 10:51:00','Zahid is trying to connect with the client.'),(17,84,'2024-08-21 10:52:00','We need to purchase a new module card. A new ticket will be issued for this.'),(18,86,'2024-08-21 10:53:00','Waseem, will go after Jumma prayer August 23th'),(19,7,'2024-08-21 10:54:00','LSM: Load shedding module card. Zahid will schedule a time with the client and Irshad sahib'),(20,20,'2024-08-21 15:41:00','This is just a test. \r\nTo Test this function, this ticket was opened and a summary update added and then closed. '),(21,111,'2024-08-22 13:18:00','Waseem shb takes quotations for RMG-014 and RMG-016 movement'),(22,7,'2024-08-22 13:19:00','Irshad: we will done this job in next week'),(23,77,'2024-08-22 13:21:00','We are waiting for RMG 14 and 16 to be moved to our workshop. A new ticket will be issued for movement order.'),(24,82,'2024-08-22 13:26:00','Irshad shb and umer shb need to visit at yard for measurement of wire'),(25,93,'2024-08-22 13:28:00','faraz shb and umer shb guide him for purchasing'),(26,84,'2024-08-22 13:28:00','We need to purchase the module as the module of this generator has been cannibalized by RMG 43. The purchase ticket for this module is either ticket no 110 or ticket no 100'),(27,105,'2024-08-22 13:31:00','this job will be done when genset on load'),(28,100,'2024-08-22 13:34:00','Waseem shb needs to coordinate with Al Zaheer Autos'),(29,108,'2024-08-22 13:35:00','Irshad shb needs to coordinate with umer shb for guidance'),(30,81,'2024-08-23 11:14:00','Umer suggested and Faraz agrees that we should put barbed wire along the boundary wall. Niaz will install the barbed wire. We will generate a new ticket for this.'),(31,82,'2024-08-23 11:24:00','Waseem shb needs to take items list from Umer shb'),(32,7,'2024-08-24 14:35:00','Still waiting for scheduling from clients end. We expect to schedule a time sometimes next week (As per Zahid)'),(33,128,'2024-08-24 14:37:00','Wiring for control and power.\r\nWe expect to do this by Monday.'),(34,15,'2024-08-24 14:38:00','Waseem: We are only missing the manifold. We should have the manifold by Saturday August 26th'),(35,36,'2024-08-24 14:39:00','Done'),(36,77,'2024-08-24 14:44:00','Now to be dismantled at the workshop rather than the yard.'),(37,113,'2024-08-24 14:56:00','Monday meeting scheduled'),(38,7,'2024-08-28 13:08:00','Dadex has given the time for this Tuesday'),(39,15,'2024-08-28 13:08:00','Manifold still missing'),(40,53,'2024-08-28 13:09:00','To be returned today'),(41,67,'2024-08-28 13:11:00','Person is still not available'),(42,81,'2024-08-28 13:12:00','Get one wire coil for this first. '),(43,128,'2024-08-28 13:22:00','We now expect this to be done today August 28th Wednesday'),(44,132,'2024-08-28 13:26:00','To be purchase curbstone now'),(45,136,'2024-08-28 13:28:00','Wait for cash for this.'),(46,137,'2024-08-28 13:28:00','Waiting for the rainy season to stop'),(47,137,'2024-08-28 13:29:00','We are also waiting for spray paint ticket #138'),(48,140,'2024-08-28 13:30:00','We are waiting for cash. '),(49,141,'2024-08-28 13:31:00','Waiting for running the genset on load'),(50,141,'2024-08-28 13:32:00',''),(51,15,'2024-08-30 15:02:00','Manifold is now available. We are waiting for a bill from the vendor, Nadeem Autos (Shahir Shah)'),(52,67,'2024-08-30 15:04:00','Invoices have not reached Ideas. Our bills are with the contact person'),(53,84,'2024-08-30 15:08:00','Rizwan shb takes followup from imran'),(54,93,'2024-08-30 15:09:00','Quotation will be shared by today'),(55,121,'2024-08-30 15:12:00','We are waiting for the engine  to run at at least 50 hrs. Currently is has only run 5 hrs.'),(56,128,'2024-08-30 15:15:00','Pending due to flexible cable wire and AVR'),(57,129,'2024-08-30 15:17:00','pending due to the rainy season'),(58,134,'2024-08-30 15:19:00','Self is making a suspicious noise '),(59,136,'2024-08-30 15:21:00','We need to install\r\n1. Lights\r\n2. Air pipe for compressor. '),(60,140,'2024-08-30 15:22:00','This is now connected to the purchasing for RMG 16 ticket no 147'),(61,84,'2024-08-31 14:38:00','Check has been received. Umer is bring the module card.'),(62,128,'2024-08-31 14:51:00','The generator is not in starting position'),(63,129,'2024-08-31 14:53:00','Batteries are here now. We are scheduling to do this on Monday.'),(64,132,'2024-08-31 14:54:00','Upon inspection of the yard, Faraz concluded that we no not need any further elevation of the gensets this year.'),(65,134,'2024-08-31 14:55:00','The original self of RMG 22 is in the workshop and it has been repaired. On Monday Irshad sb will take the original self and replace it with the current self in RMG 22. Irshad sb will bring the self currently in RMG 22 back to the workshop and Mr Waseem will then have that self repaired. '),(66,138,'2024-08-31 14:59:00','Waseem will do this on Monday'),(67,147,'2024-08-31 15:00:00','Niaz will go with Waseem on Monday'),(68,152,'2024-08-31 15:03:00','Waseem will get this on Monday'),(69,153,'2024-08-31 15:05:00','Umer will take a test drive before we start working on this.'),(70,154,'2024-08-31 15:05:00','Break light, horn and wipers are working. Now we only need to check ABS'),(71,15,'2024-09-03 16:09:00','Manifold is now in the workshop. We are waiting for fitting for the complete job to be finished before we close this ticket'),(72,67,'2024-09-03 16:10:00','Shahmir and Zahid will visit their office on Thr Aug 5th at 4:00 pm'),(73,82,'2024-09-03 16:11:00','Lights have been provided by Umer and wire is here'),(74,116,'2024-09-03 16:19:00','Target: August 5th, Waseem sb will get quotations'),(75,120,'2024-09-03 16:20:00','waiting for estimate amount from Waseem shb'),(76,121,'2024-09-03 16:23:00','We expect to reach 50 hrs this week'),(77,132,'2024-09-03 16:28:00','We are closing this ticket.'),(78,134,'2024-09-03 16:30:00','Waseem is still waiting for the self from Irshad sb. '),(79,136,'2024-09-03 16:31:00','We are waiting on this ticket for financial reasons.'),(80,141,'2024-09-03 16:33:00','The generator is not starting. Currently at 4:30 pm Mujahid is at the site working on the issue. We are taking the current self for replacement. '),(81,146,'2024-09-03 16:47:00','Too expensive. We are shelving the idea for now \r\nRs 1250 + 300 per t shirt '),(82,153,'2024-09-03 16:50:00','Sami is working on Alto '),(83,155,'2024-09-03 16:51:00','Sami is working on Cultus'),(84,156,'2024-09-03 16:52:00','We have a quotation for Rs. 230 KG, and 11,500 per battery. \r\nWe now intend to take the batteries to Landhi 6 number, where we expect to get a better rate. '),(85,164,'2024-09-03 17:11:00','Tanveer needs Umer shb\'s guidance to complete this job'),(86,7,'2024-09-04 14:04:00','This is done.'),(87,15,'2024-09-04 14:04:00','This work has been completed.'),(88,81,'2024-09-04 14:08:00','Farhan will do this and Zahid will follow up. Farhan was suppose to show up today which he did not. '),(89,92,'2024-09-04 14:09:00','Zahid will go tomorrow at 12:00 PM'),(90,105,'2024-09-04 14:10:00','The genset is in the yard. We can only do the load test when we have the genset on load. We can only do this when the generator is with the customer,'),(91,108,'2024-09-04 14:11:00','\r\nHooter and relay are in the workshop. This is now pending on Irshad.'),(92,119,'2024-09-04 14:12:00','We are waiting for the material.'),(93,121,'2024-09-04 14:14:00','We are at 43 hours. We should expect to change the oil by the end of this week'),(94,122,'2024-09-04 14:18:00','We need materials for this work. \r\nNiaz is working on RMG 5, 14 and 16 '),(95,125,'2024-09-04 14:22:00','Niaz will work on this after RMG 14, 5 and 16 \r\nIf a deal comes Niaz will use pane flex to make do so any deal can go through.'),(96,128,'2024-09-04 14:24:00','Still \"Pending due to flexible cable wire and AVR\"'),(97,129,'2024-09-04 14:25:00','Done. All good.'),(98,134,'2024-09-04 14:26:00','RMG 9 had a self issue. We used this self in RMG 9. Now, RMG 9 self needs repairing. '),(99,137,'2024-09-04 14:32:00','We have spray paint. We will paint the logo when we go for the service, ticket # 121'),(100,141,'2024-09-04 14:33:00','This is done. \r\nThere is a sound in an injectors but there is no need to address this now. '),(101,145,'2024-09-04 14:45:00','Removed out of the canopy. Removed all attachment (external) of the engine.\r\nNext Step: Internal removal (Ring, piston, liner, injectors, crank, pump etc).\r\nThe Radiator is ok.  '),(102,147,'2024-09-04 14:48:00','All the material bought as been consumed. This work is all mixed with RMG 14, 16 and 5. All these canopies are being worked on together. '),(103,151,'2024-09-04 14:49:00','Waseem will get this tomorrow. '),(104,152,'2024-09-04 14:51:00','We will purchase this as needed. Tanveer: \"We this this for 4 gensets RMG 16, RMG 5, RMG 14, RMG 41.\" If we need extra we can use this at anytime, we require at least 50 ft. \r\nAlso, we need to buy 70 mm lugs Nos. 24 pcs.'),(105,153,'2024-09-04 14:55:00','This is an issue with the Alto. Sami is busy but we will give him time - a few hours a day - to work on the car.'),(106,154,'2024-09-04 15:00:00','New fog lights have been installed. ABS light is still on.'),(107,155,'2024-09-04 15:04:00','Sami diagnosed that the issue is a card issue - electrical. Now the car is with Jerry and is being repaired. '),(108,156,'2024-09-04 15:05:00','Still: \"We now intend to take the batteries to Landhi 6 number, where we expect to get a better rate.\"'),(109,159,'2024-09-04 15:06:00','Reminder given to Zahid.'),(110,161,'2024-09-04 15:07:00','Dismantling complete. Fault: Water pump, which has been for repair to embassy autos. '),(111,162,'2024-09-04 15:09:00','done.'),(112,165,'2024-09-04 15:10:00','The self that we were going to put into RMG 22 has been put in RMG 9. The issue was resolved. '),(113,163,'2024-09-04 15:11:00','Head is not yet ready. '),(114,170,'2024-09-04 17:01:00','This is done.'),(115,67,'2024-09-05 16:57:00','The concerned person did not pick up the phone and now this has been rescheduled for Aug 6th.'),(116,81,'2024-09-05 17:00:00','Waseem will get two sensor lights, for Rs 5,500 each. '),(117,92,'2024-09-05 17:02:00','Final layout has been approved. We expect to get the fliers by 10th Sep.'),(118,108,'2024-09-05 17:04:00','Irshad will do this when possible. '),(119,116,'2024-09-05 17:05:00','Waseem has the rates and will share the email after the meeting.'),(120,119,'2024-09-05 17:06:00','Still waiting for the material '),(121,121,'2024-09-05 17:07:00','Shahmir will arrange the consumables for this. August 7th '),(122,123,'2024-09-05 17:09:00','Subject to availability of testers (ticket no. 176 ) This list should be completed by Sep 23th'),(123,128,'2024-09-05 17:13:00','This ticket is dependent on purchase of AVR (ticket No. 177 ). '),(124,136,'2024-09-05 17:20:00','This will be done with Ticket no. 121'),(125,145,'2024-09-05 17:21:00','Internal removal (Ring, piston, liner, injectors, crank, pump etc) --> done\r\nNow the Generator will go to the machining shop (ticket no. 178) \r\n'),(126,151,'2024-09-05 17:30:00','We are still waiting for quotation.'),(127,152,'2024-09-05 17:31:00','Waseem will get the quotation.'),(128,153,'2024-09-05 17:32:00','Waseem says that there is an engine problem'),(129,154,'2024-09-05 17:33:00','we are closing this. The car needs to go for wiring and a new ticket will be opened for this.'),(130,155,'2024-09-05 17:34:00','Jerry will tell us more tomorrow.'),(131,156,'2024-09-05 17:35:00','We plan to do this on Saturday'),(132,161,'2024-09-05 17:37:00','Pump dismantled and sent to Embassy autos. We expect to get the pump tomorrow. We are closing this ticket and new tickets will be generated for future work'),(133,163,'2024-09-05 17:38:00','Head is not yet ready -> same'),(134,164,'2024-09-05 17:39:00','We are closing this ticket. We will do the calibration once the generator is back.'),(135,166,'2024-09-05 17:40:00','Zahid visited the client with Shoaib. Now the client will visit synergy factory.'),(136,167,'2024-09-05 17:41:00','We need a solenoid wire and switch. So, the next time we visit the site we can replace the wire and switch (valve) for a permanent solution.'),(137,168,'2024-09-05 17:44:00','complete filets and service. '),(138,168,'2024-09-05 17:44:00','All consumables are available in the store - Shahmir '),(139,171,'2024-09-05 17:45:00','Going to Mirpur Bhattaro, Ashram Rice Mill.'),(140,67,'2024-09-06 15:58:00','Again, No response from the client'),(141,108,'2024-09-06 16:00:00','This hooter need to install in RMG-041'),(142,128,'2024-09-06 16:04:00','Now are cannibalizing AVR from RMG 2. A vendor, Bismillah Engineering - Adnan,  will come today to help with troubleshooting. '),(143,153,'2024-09-06 16:07:00','Umer, says we will dismantle the engineer here at the workshop with the help of Sami'),(144,155,'2024-09-06 16:07:00','Suspension work is urgently required.'),(145,163,'2024-09-06 16:09:00','Head is not yet ready -> same'),(146,175,'2024-09-06 16:13:00','Operator arranged: Muhammad Khan. '),(147,177,'2024-09-06 16:15:00','Waseem will get quotation.'),(148,178,'2024-09-06 16:16:00','To be sent on Monday'),(149,181,'2024-09-06 16:18:00','Tanveer will visit on Tuesday, 10 September 2024\r\nZahid/Waseem\r\nTanveer\r\nIrshad'),(150,67,'2024-09-07 14:55:00','Zahid will coordinate'),(151,81,'2024-09-07 14:56:00','Waseem will get the quotation for it on Monday'),(152,116,'2024-09-07 15:00:00','Waseem will get quotation on monday'),(153,120,'2024-09-07 15:01:00','375 per KG - Adnan Sikander (Shershah)\r\n360 per KG - '),(154,134,'2024-09-07 15:05:00','Waseem receive the self by today from vendor'),(155,151,'2024-09-07 15:07:00','Waseem will get quotation on Monday'),(156,152,'2024-09-07 15:08:00','Rs.4500/- 8ft quotation received via call (70 mm)'),(157,153,'2024-09-07 15:10:00','\"Sami is not free\" - Waseem'),(158,156,'2024-09-07 15:11:00','quotation will provided by today \"Waseem\"'),(159,176,'2024-09-07 15:16:00','A gravity tester has been purchased other items pending'),(160,177,'2024-09-07 15:17:00','R-448 still waiting for quotation'),(161,181,'2024-09-07 15:19:00','service date will be change'),(162,184,'2024-09-07 15:22:00','Diesel, silicon, and diesel purchased by selvestor');
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `TicketID` int NOT NULL AUTO_INCREMENT,
  `StartDate` date DEFAULT NULL,
  `TicketGenerationTime` time DEFAULT NULL,
  `TicketResolutionTime` time DEFAULT NULL,
  `GeneratorID` int DEFAULT NULL,
  `IssueID` int DEFAULT NULL,
  `ClientID` int DEFAULT NULL,
  `TicketTypeID` int DEFAULT NULL,
  `IssueRecognitionID` int DEFAULT NULL,
  `PriorityID` int DEFAULT NULL,
  `AssignedTo` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `CompletedDate` date DEFAULT NULL,
  `TimeTakenDays` time DEFAULT NULL,
  `PendingDays` time DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TicketID`),
  KEY `GeneratorID` (`GeneratorID`),
  KEY `IssueID` (`IssueID`),
  KEY `ClientID` (`ClientID`),
  KEY `TicketTypeID` (`TicketTypeID`),
  KEY `IssueRecognitionID` (`IssueRecognitionID`),
  KEY `PriorityID` (`PriorityID`),
  KEY `AssignedTo` (`AssignedTo`),
  KEY `DepartmentID` (`DepartmentID`),
  KEY `StatusID` (`StatusID`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`GeneratorID`) REFERENCES `generators` (`GeneratorID`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`IssueID`) REFERENCES `issues` (`IssueID`),
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`),
  CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`TicketTypeID`) REFERENCES `tickettypes` (`TicketTypeID`),
  CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`IssueRecognitionID`) REFERENCES `issuerecognitions` (`IssueRecognitionID`),
  CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`PriorityID`) REFERENCES `priorities` (`PriorityID`),
  CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`AssignedTo`) REFERENCES `people` (`PersonID`),
  CONSTRAINT `tickets_ibfk_8` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `tickets_ibfk_9` FOREIGN KEY (`StatusID`) REFERENCES `statuses` (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2024-08-08','10:47:00','10:45:00',25,1,2,1,1,1,1,1,1,'2024-08-09',NULL,NULL,'Muhajid is helping Tanveer with this work.'),(2,'2024-08-08','10:50:00','00:00:00',25,5,2,1,1,1,1,1,1,'2024-08-09',NULL,NULL,''),(3,'2024-08-08','10:54:00','00:00:00',25,9,2,1,1,1,1,1,1,'2024-08-10',NULL,NULL,'Foaming and fitting. Shahid will do this.'),(4,'2024-08-08','10:55:00','00:00:00',25,10,2,1,1,1,3,4,1,'2024-08-10',NULL,NULL,'Shahmir will get the quotations'),(5,'2024-08-08','10:57:00','00:00:00',17,3,3,6,1,2,2,2,1,'2024-08-21',NULL,NULL,''),(6,'2024-08-08','10:59:00','10:59:00',7,2,7,5,1,3,2,1,1,'2024-08-08',NULL,NULL,''),(7,'2024-08-08','11:00:00','00:00:00',28,4,6,5,1,3,2,2,1,'2024-09-04',NULL,NULL,'Waiting for client response for scheduling '),(8,'2024-08-08','11:02:00','00:00:00',17,5,3,6,1,3,5,1,1,NULL,NULL,NULL,'After placing fuel tank we will know how much pipe is needed'),(9,'2024-08-08','11:07:00','00:00:00',16,11,8,6,1,1,4,2,1,'2024-08-10',NULL,NULL,''),(10,'2024-08-08','11:10:00','00:00:00',8,5,6,8,1,4,4,2,1,'2024-08-10',NULL,NULL,''),(11,'2024-08-08','11:12:00','00:00:00',23,7,2,4,1,1,5,2,1,'2024-08-09',NULL,NULL,''),(12,'2024-08-08','11:18:00','00:00:00',23,12,2,6,1,1,5,2,1,'2024-08-09',NULL,NULL,'Third time this issues has come up at this site. Different engines. Investigate'),(13,'2024-08-08','11:26:00','00:00:00',9,13,10,9,1,4,3,1,3,NULL,NULL,NULL,''),(14,'2024-08-08','11:29:00','00:00:00',4,14,10,1,1,2,1,1,1,'2024-08-24',NULL,NULL,'Alternator is with the vendor. '),(15,'2024-08-08','11:30:00','00:00:00',4,15,10,1,1,2,1,1,1,'2024-09-04',NULL,NULL,'Purchase: Exhaust and manifold '),(16,'2024-08-08','11:35:00','11:36:00',5,15,11,1,1,1,1,1,1,'2024-08-08',NULL,NULL,'Cannibalized from RMG 5'),(17,'2024-08-01','16:08:00','00:00:00',29,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,'To check Void function.'),(18,'2024-08-08','16:13:00','00:00:00',1,1,1,1,1,1,5,1,1,'2024-08-08',NULL,NULL,'closed test. This is just a test '),(19,'2024-08-08','00:00:00','00:00:00',1,1,1,1,1,1,6,1,3,NULL,NULL,NULL,'void test '),(20,'2024-08-08','16:47:00','00:00:00',29,18,10,11,2,4,3,4,1,'2024-08-08',NULL,NULL,'Going to deliver cheques to Rizwan Sahib'),(21,'2024-08-08','17:02:00','17:02:00',29,20,12,12,2,5,3,4,1,'2024-08-08',NULL,NULL,'Tire change for Faraz\'s car'),(22,'2024-08-08','18:08:00','00:00:00',29,20,12,12,2,3,6,3,3,NULL,NULL,NULL,'Prepare the trial balance for auditor - 10 working days required from today'),(23,'2024-08-08','18:13:00','00:00:00',29,20,12,12,2,2,6,3,1,'2024-08-08',NULL,NULL,'Prepare petty cash cheques FMO Aug 2024'),(24,'2024-08-08','18:30:00','00:00:00',23,1,1,6,1,1,6,3,1,'2024-08-08',NULL,NULL,'coordinate with outsider mechanic to resolve the complain'),(25,'2024-08-08','18:33:00','00:00:00',29,20,12,12,2,3,8,4,1,'2024-08-10',NULL,NULL,'Update the gate pass details in excel sheet till July 2024'),(26,'2024-08-08','00:00:00','00:00:00',29,19,12,11,2,3,3,4,1,'2024-08-08',NULL,NULL,'Please collect the cheques tomorrow morning form britlight'),(27,'2024-08-08','18:50:00','00:00:00',29,18,12,10,2,5,3,1,1,'2024-08-08',NULL,NULL,''),(28,'2024-08-09','17:16:00','00:00:00',29,19,12,11,2,2,3,3,1,NULL,NULL,NULL,'Chq deliver at RM House'),(29,'2024-08-09','17:24:00','00:00:00',29,20,12,12,2,2,8,3,1,'2024-08-10',NULL,NULL,'Chq deposit in HBL Bank'),(30,'2024-08-09','17:31:00','18:32:00',29,20,12,10,2,3,8,1,1,'2024-08-10',NULL,NULL,'cash withdraw from ATM for Umer shb'),(31,'2024-08-09','17:46:00','00:00:00',16,5,8,3,2,3,5,2,1,NULL,NULL,NULL,'need to coordinate with operator to confirm the genset running load and torque load'),(32,'2024-08-10','11:48:00','00:00:00',29,20,12,12,2,3,8,4,1,NULL,NULL,NULL,'Purchase pantry for office with Shahid Pervaiz'),(33,'2024-08-10','12:06:00','00:00:00',4,15,10,4,1,3,3,4,1,NULL,NULL,NULL,'Ref#15 Waseem shb need to go shershah for purchasing hosing of Turbo'),(34,'2024-08-10','12:12:00','00:00:00',9,1,10,4,1,4,3,4,1,NULL,NULL,NULL,'Welding water manifold'),(35,'2024-08-10','12:14:00','00:00:00',9,13,10,4,1,2,3,4,1,'2024-08-17',NULL,NULL,'Purchase new oil cooler hosing for RMG-011'),(36,'2024-08-10','12:16:00','00:00:00',22,20,10,4,1,1,1,1,1,'2024-08-24',NULL,NULL,'Purchase radiator core for RMG-041'),(37,'2024-08-10','12:19:00','00:00:00',17,5,3,8,1,3,4,5,1,NULL,NULL,NULL,'Visit the site for tank installation'),(38,'2024-08-10','12:20:00','00:00:00',17,9,3,4,1,2,9,1,1,NULL,NULL,NULL,'Panaflex work at site'),(39,'2024-08-10','12:23:00','00:00:00',17,5,3,8,1,2,3,4,1,'2024-08-10',NULL,NULL,'tank movement for load testing'),(40,'2024-08-10','12:27:00','00:00:00',6,9,10,4,1,3,9,1,1,'2024-08-10',NULL,NULL,'Purchase pipe form Singer chowrangi with Shahid'),(41,'2024-08-10','12:29:00','00:00:00',6,20,10,4,1,2,2,2,1,'2024-08-22',NULL,NULL,'Variable change'),(42,'2024-08-10','12:30:00','00:00:00',6,20,1,4,1,2,2,2,1,'2024-08-21',NULL,NULL,'Purchase variable'),(43,'2024-08-10','12:33:00','00:00:00',25,20,2,8,1,2,2,2,1,'2024-08-13',NULL,NULL,'Visit Faisalabad for commissioning RMG-47 (100 KVA)'),(44,'2024-08-10','13:11:00','00:00:00',4,15,10,4,1,2,3,4,1,'2024-08-21',NULL,NULL,'Purchase turbo hosing for RMG-005'),(45,'2024-08-10','13:13:00','00:00:00',17,5,3,4,1,2,9,1,1,'2024-08-12',NULL,NULL,'Purchase pipes for tank'),(46,'2024-08-12','11:09:00','00:00:00',11,2,10,4,1,3,1,1,1,'2024-08-12',NULL,NULL,'ECU card repairing'),(47,'2024-08-12','00:00:00','00:00:00',23,21,2,4,1,1,1,1,1,NULL,NULL,NULL,'Purchase rear seal and visit the faisalabad site to install'),(48,'2024-08-12','00:00:00','00:00:00',23,21,2,4,1,1,1,1,3,NULL,NULL,NULL,'Purchase rear seal and visit the faisalabad site to install'),(49,'2024-08-12','11:24:00','00:00:00',5,23,11,12,1,1,3,4,1,NULL,NULL,NULL,'Deliver oil and filter for top-up'),(50,'2024-08-12','00:00:00','00:00:00',29,27,13,7,1,3,4,5,1,'2024-08-12',NULL,NULL,'Visit the site for genset inquiry'),(51,'2024-08-13','11:11:00','00:00:00',22,5,10,8,1,1,5,1,1,'2024-08-16',NULL,NULL,'Need to check genset before installation of radiator core'),(52,'2024-08-13','11:12:00','00:00:00',22,20,10,6,1,2,6,3,1,NULL,NULL,NULL,'Purchase of diesel to check for radiator leaks'),(53,'2024-08-13','11:34:00','00:00:00',11,2,12,8,1,2,1,1,1,'2024-09-03',NULL,NULL,'Return ECM card '),(54,'2024-08-13','11:39:00','00:00:00',23,21,2,4,1,1,10,1,1,NULL,NULL,NULL,'Rear oil seal repairing at site on urgent basis'),(55,'2024-08-13','11:41:00','00:00:00',6,20,1,1,1,2,3,4,1,NULL,NULL,NULL,'Repair grinder from Singer chowrangi'),(56,'2024-08-13','11:46:00','00:00:00',16,28,8,14,1,1,5,1,1,NULL,NULL,NULL,'Change old batteries with new '),(57,'2024-08-13','11:55:00','00:00:00',30,29,10,1,1,5,1,1,1,'2024-08-17',NULL,NULL,'Dismantle test and overhaul'),(58,'2024-08-13','12:08:00','00:00:00',29,20,12,10,1,3,3,1,1,NULL,NULL,NULL,'HBL - Check deposit '),(59,'2024-08-13','12:24:00','00:00:00',29,20,12,10,2,3,3,4,1,NULL,NULL,NULL,'Faraz shb utility bills and fuel bill'),(60,'2024-08-15','11:28:00','00:00:00',29,20,10,2,1,3,9,4,1,NULL,NULL,NULL,'need to purchase wastage cloth for workshop'),(61,'2024-08-15','11:31:00','00:00:00',29,20,12,10,1,3,3,3,1,'2024-08-17',NULL,NULL,'Cheque book activation at askari bank bahadurabad'),(62,'2024-08-15','11:32:00','00:00:00',29,18,12,10,1,2,3,3,1,NULL,NULL,NULL,'Need to deposit 2 cheques of vendors'),(63,'2024-08-15','11:34:00','00:00:00',29,19,12,11,1,2,3,3,1,NULL,NULL,NULL,'Deliver the cheques for signing at britlight'),(64,'2024-08-15','11:36:00','00:00:00',6,20,10,13,1,2,9,1,1,'2024-08-16',NULL,NULL,'Grinder machine repairing -01 \r\npipe purchasing for RMG-008 canopy '),(65,'2024-08-15','11:38:00','00:00:00',29,20,12,8,1,3,3,3,1,'2024-08-20',NULL,NULL,'Need to visit PMCL office for sim issues'),(66,'2024-08-15','11:43:00','00:00:00',6,8,1,8,1,3,4,5,1,'2024-08-16',NULL,NULL,'Visit DIB site for stolen battery issue for refund the battery amount and operator issue'),(67,'2024-08-15','11:45:00','00:00:00',23,27,2,8,1,3,4,5,2,NULL,NULL,NULL,'Need to visit for invoicing issue'),(68,'2024-08-15','11:49:00','00:00:00',23,28,10,8,1,3,3,4,1,NULL,NULL,NULL,'Collect 03 batteries from yard '),(69,'2024-08-15','11:56:00','00:00:00',29,20,12,8,1,3,4,5,1,NULL,NULL,NULL,'Visit PSO Pump for genset inspection'),(70,'2024-08-15','12:12:00','00:00:00',23,20,2,4,1,1,5,1,3,'2024-08-17',NULL,NULL,'Need to inform irshad shb to install flexible wire for governor card'),(71,'2024-08-15','12:21:00','00:00:00',13,9,1,4,1,3,9,1,1,NULL,NULL,NULL,'Lock repairing work in canopy\r\n'),(72,'2024-08-16','12:04:00','00:00:00',16,20,8,12,1,5,5,4,2,NULL,NULL,NULL,'Batteries return from Sangarh'),(73,'2024-08-16','12:29:00','00:00:00',29,18,12,10,1,3,3,4,1,'2024-08-17',NULL,NULL,'05 vendors chq deposit'),(74,'2024-08-16','12:30:00','00:00:00',29,18,12,12,1,3,3,3,1,NULL,NULL,NULL,'operatos advance deposit'),(75,'2024-08-16','12:34:00','00:00:00',6,9,10,9,1,1,9,1,1,'2024-08-22',NULL,NULL,'RMG - 008 canopy rebuil'),(76,'2024-08-16','00:00:00','00:00:00',17,20,3,8,1,3,4,5,1,'2024-08-16',NULL,NULL,'Visit for revised agreement'),(77,'2024-08-17','11:37:00','00:00:00',11,29,10,4,1,3,1,1,1,'2024-08-28',NULL,NULL,'Dismantling RMG-014 at yard '),(78,'2024-08-17','11:41:00','00:00:00',30,1,10,4,1,3,3,4,1,'2024-08-20',NULL,NULL,'Head needs repairing at star engineering'),(79,'2024-08-17','11:44:00','00:00:00',6,9,10,13,1,1,9,4,1,'2024-08-17',NULL,NULL,'Canvas, namda, MS sheet \r\nwaseem shb is going with him'),(80,'2024-08-17','11:46:00','00:00:00',9,13,10,13,1,2,3,1,1,'2024-08-17',NULL,NULL,'Arrange oil cooler packing'),(81,'2024-08-17','11:48:00','00:00:00',29,20,10,4,1,2,4,4,2,NULL,NULL,NULL,'Lights system at yard (Mehran Town)'),(82,'2024-08-19','12:47:00','00:00:00',29,20,10,13,1,3,3,4,1,'2024-09-03',NULL,NULL,'Purchase lights and wire for yard'),(83,'2024-08-19','12:52:00','00:00:00',9,13,10,4,1,2,1,1,1,NULL,NULL,NULL,'Fitting of Oil cooler'),(84,'2024-08-19','12:54:00','00:00:00',9,2,10,4,1,3,2,2,1,'2024-09-03',NULL,NULL,'Install Module in RMG 11'),(85,'2024-08-19','12:55:00','00:00:00',6,20,10,13,1,1,3,4,1,'2024-08-20',NULL,NULL,'Packing seal bellow seal'),(86,'2024-08-19','12:57:00','00:00:00',29,20,12,12,1,4,3,4,1,'2024-08-28',NULL,NULL,'Take quotation for purchasing items of probox'),(87,'2024-08-19','13:00:00','00:00:00',30,20,10,4,1,2,6,3,1,'2024-08-20',NULL,NULL,'Alternator revarnish'),(88,'2024-08-20','14:27:00','00:00:00',22,20,1,12,1,1,3,1,1,NULL,NULL,NULL,'Gate passs'),(89,'2024-08-20','14:52:00','00:00:00',2,20,12,12,1,2,1,1,1,'2024-08-21',NULL,NULL,'chk RMG-003 before deployment'),(90,'2024-08-20','14:56:00','00:00:00',6,9,10,4,1,2,1,1,1,'2024-08-20',NULL,NULL,'packing seal installation '),(91,'2024-08-20','14:58:00','00:00:00',29,20,12,8,1,3,4,5,1,'2024-08-20',NULL,NULL,'Visit TCS for 1000 KVA'),(92,'2024-08-20','00:00:00','00:00:00',29,27,12,12,1,3,4,5,2,NULL,NULL,NULL,'make flyer for marketing'),(93,'2024-08-20','15:01:00','00:00:00',29,20,12,12,1,1,3,4,2,NULL,NULL,NULL,'take quotation for sever, PC and keyboard'),(94,'2024-08-20','15:18:00','00:00:00',29,20,12,12,1,1,6,3,1,'2024-08-21',NULL,NULL,'heads opening in ticket system'),(95,'2024-08-20','15:23:00','00:00:00',6,20,12,13,1,1,3,4,1,'2024-08-20',NULL,NULL,'Nut bolt, color, fuse purchasinf'),(96,'2024-08-20','16:34:00','00:00:00',28,20,21,12,2,3,6,3,1,'2024-08-21',NULL,NULL,'Possible heads for accounts and admin'),(97,'2024-08-21','10:57:00','00:00:00',2,10,14,15,1,1,3,1,1,'2024-08-22',NULL,NULL,'Gate Pass'),(98,'2024-08-21','10:59:00','00:00:00',2,10,14,15,1,1,4,5,1,'2024-08-22',NULL,NULL,'Movement to Hub Choki'),(99,'2024-08-21','11:00:00','00:00:00',2,10,14,15,1,1,1,1,1,'2024-08-22',NULL,NULL,'Waseem will assist.'),(100,'2024-08-21','11:02:00','00:00:00',9,2,10,13,1,2,3,4,1,'2024-09-03',NULL,NULL,'Module card.'),(101,'2024-08-21','11:05:00','00:00:00',6,9,10,4,1,1,9,1,1,'2024-08-22',NULL,NULL,'Canvas and silencer '),(102,'2024-08-21','11:07:00','00:00:00',6,41,3,15,1,1,2,5,1,'2024-08-22',NULL,NULL,'Move RMG 8 to replace RMG 22'),(103,'2024-08-21','11:09:00','00:00:00',17,10,16,12,1,1,4,5,1,'2024-08-22',NULL,NULL,'Move RMG 22 from Quality Dying to Yard'),(104,'2024-08-21','11:16:00','00:00:00',2,10,14,15,1,1,1,1,1,'2024-08-22',NULL,NULL,'Tanveer will commission RMG 3 at Hub Choki'),(105,'2024-08-21','11:25:00','00:00:00',17,42,16,14,1,4,2,2,2,NULL,NULL,NULL,'To be done when on load.'),(106,'2024-08-21','11:28:00','00:00:00',6,43,16,15,1,2,2,2,1,'2024-08-22',NULL,NULL,'Can be installed on site after movement.'),(107,'2024-08-21','11:37:00','00:00:00',6,9,10,15,1,1,2,2,1,'2024-08-22',NULL,NULL,'Lights to be installed in canopy'),(108,'2024-08-21','11:46:00','00:00:00',6,44,10,15,1,2,2,2,2,NULL,NULL,NULL,'installation of phase rely with hooter for engine safety\r\n'),(109,'2024-08-21','11:52:00','00:00:00',6,43,10,13,2,3,3,2,1,'2024-09-03',NULL,NULL,'purchase safety rely and hooter'),(110,'2024-08-21','11:58:00','00:00:00',9,45,10,15,1,3,3,2,3,NULL,NULL,NULL,''),(111,'2024-08-21','13:08:00','00:00:00',12,10,16,1,2,3,3,4,1,'2024-08-24',NULL,NULL,'RMG 16 to be moved to the workshop'),(112,'2024-08-21','13:10:00','00:00:00',11,10,16,1,2,3,3,4,1,'2024-08-24',NULL,NULL,'RMG 14 to be moved to the workshop'),(113,'2024-08-21','14:15:00','00:00:00',28,27,21,8,2,3,4,NULL,1,'2024-08-28',NULL,NULL,'Visit Unilever for sales'),(114,'2024-08-21','00:00:00','14:17:00',17,14,21,1,2,1,3,NULL,3,NULL,NULL,NULL,'Test Ticket'),(115,'2024-08-21','00:00:00','00:00:00',1,32,11,1,2,1,8,NULL,3,NULL,NULL,NULL,'Test Ticket To be voided'),(116,'2024-08-21','15:45:00','00:00:00',29,20,12,12,2,3,3,NULL,2,NULL,NULL,NULL,'We need to get transit insurance and talk about regular insurance '),(117,'2024-08-22','00:00:00','00:00:00',2,31,14,17,1,1,2,NULL,1,'2024-08-24',NULL,NULL,'voltage issue at the site.'),(118,'2024-08-22','00:00:00','13:37:00',2,20,14,8,1,1,3,NULL,1,'2024-08-22',NULL,NULL,'visit at site for deliver the parts'),(119,'2024-08-23','00:00:00','00:00:00',28,20,16,15,1,1,9,NULL,2,NULL,NULL,NULL,'Niaz will install barbed wire for the yard.'),(120,'2024-08-23','00:00:00','00:00:00',29,20,16,13,1,2,3,NULL,2,NULL,NULL,NULL,'Purchase bob-wire for yard '),(121,'2024-08-23','00:00:00','00:00:00',6,22,3,1,1,1,1,NULL,1,'2024-09-07',NULL,NULL,'Routine service of RMG-008 after 50 hours'),(122,'2024-08-23','11:31:00','00:00:00',4,9,10,4,1,2,9,NULL,2,NULL,NULL,NULL,'The canopy roof needs repairing'),(123,'2024-08-23','11:33:00','00:00:00',28,28,10,4,1,3,2,NULL,2,NULL,NULL,NULL,'identify all faulty batteries'),(124,'2024-08-23','00:00:00','00:00:00',29,20,21,2,1,3,3,NULL,1,'2024-08-24',NULL,NULL,'Probox AVQ-336 Service'),(125,'2024-08-23','00:00:00','00:00:00',17,9,10,4,1,4,9,NULL,2,NULL,NULL,NULL,'The canopy roof needs repairing'),(126,'2024-08-23','13:34:00','00:00:00',32,20,10,12,1,1,1,NULL,3,NULL,NULL,NULL,'test'),(127,'2024-08-23','13:36:00',NULL,1,14,7,1,1,1,1,NULL,3,NULL,NULL,NULL,'test ticket'),(128,'2024-08-24','14:36:00','00:00:00',4,14,10,15,1,2,2,NULL,2,NULL,NULL,NULL,'Alternator commissioning'),(129,'2024-08-24','14:40:00','00:00:00',22,20,21,12,1,2,10,NULL,1,'2024-09-04',NULL,NULL,'Off-load checking of RMG-41'),(130,'2024-08-24','14:48:00','00:00:00',4,20,21,2,1,3,9,NULL,1,'2024-08-28',NULL,NULL,'Alternator cleaning job'),(131,'2024-08-24','15:06:00','00:00:00',6,28,3,12,1,2,3,NULL,1,'2024-08-28',NULL,NULL,'Arrange the batteries pair for RMG-008'),(132,'2024-08-24','15:18:00','00:00:00',28,20,16,13,1,3,3,NULL,1,'2024-09-03',NULL,NULL,'Purchase blocks or wood blocks for the yard '),(133,'2024-08-24','15:18:00','00:00:00',29,32,21,4,1,4,3,NULL,1,'2024-08-28',NULL,NULL,'Probox self repairing'),(134,'2024-08-24','15:24:00','00:00:00',17,32,16,18,1,3,3,NULL,2,NULL,NULL,NULL,'self repairing'),(135,'2024-08-24','15:25:00','00:00:00',6,20,3,17,1,1,2,NULL,1,'2024-08-28',NULL,NULL,'analyzer work at RMG-008'),(136,'2024-08-24','15:27:00','00:00:00',1,31,10,4,1,3,5,NULL,2,NULL,NULL,NULL,'maintenance work at workshop \r\noutsource: Farhan'),(137,'2024-08-24','15:28:00','00:00:00',6,9,3,4,1,5,7,NULL,1,'2024-09-07',NULL,NULL,'logo paint - canopy RMG-008'),(138,'2024-08-24','15:29:00','00:00:00',6,9,3,13,1,3,3,NULL,1,'2024-09-03',NULL,NULL,'purchase spray paint for RMG-008'),(139,'2024-08-24','15:31:00','00:00:00',28,45,21,17,1,1,3,NULL,1,'2024-08-28',NULL,NULL,'take quotation for Arif\'s genset module'),(140,'2024-08-24','15:34:00','00:00:00',9,9,10,4,1,4,9,NULL,2,NULL,NULL,NULL,'dholki and canopy roof needs repairing'),(141,'2024-08-24','15:45:00','00:00:00',7,46,7,8,1,2,1,NULL,1,'2024-09-04',NULL,NULL,'need to check the health status of RMG-009 (1275 KVA)'),(142,'2024-08-28','13:40:00','00:00:00',1,20,3,13,1,2,3,NULL,1,'2024-08-28',NULL,NULL,'Need to purchase the battery '),(143,'2024-08-28','13:41:00','00:00:00',28,20,21,12,1,3,3,NULL,1,'2024-08-28',NULL,NULL,'deliver the genset at umer shb home'),(144,'2024-08-28','13:42:00','00:00:00',11,47,10,4,1,3,1,NULL,1,'2024-08-30',NULL,NULL,'Engine has been dismantled and is now to be assembled. '),(145,'2024-08-28','13:48:00','00:00:00',12,29,10,12,1,2,1,NULL,2,NULL,NULL,NULL,'need to overhaul the engine'),(146,'2024-08-28','14:26:00','00:00:00',28,20,12,13,1,5,3,NULL,1,'2024-09-03',NULL,NULL,'take quotations for tshirts'),(147,'2024-08-29','15:23:00','00:00:00',12,9,10,13,1,3,9,NULL,2,NULL,NULL,NULL,'Purchase canopy accessories for RMG-016 canopy'),(148,'2024-08-30','15:45:00','00:00:00',8,20,6,17,1,1,4,NULL,1,'2024-08-30',NULL,NULL,'Complain received and resolved with Mujahid'),(149,'2024-08-30','15:45:00','00:00:00',8,20,7,13,1,5,10,NULL,3,NULL,NULL,NULL,''),(150,'2024-08-29','16:48:00','00:00:00',27,28,21,1,1,1,3,NULL,1,'2024-08-30',NULL,NULL,'complain received and resolved'),(151,'2024-08-30','15:51:00','00:00:00',8,20,6,1,1,4,3,NULL,2,NULL,NULL,NULL,'Purchase lifty pump'),(152,'2024-08-30','15:54:00','15:54:00',12,20,10,13,1,3,3,NULL,2,NULL,NULL,NULL,'Take a quotation and purchase flexible wire 70 mm'),(153,'2024-08-30','16:05:00','00:00:00',28,20,10,14,1,3,3,NULL,2,NULL,NULL,NULL,'Check ALTO and repair it'),(154,'2024-08-30','16:08:00','00:00:00',28,20,21,4,1,3,3,NULL,1,'2024-09-05',NULL,NULL,'Check Probox and repair it'),(155,'2024-08-30','16:10:00','00:00:00',28,20,21,1,1,3,3,NULL,2,NULL,NULL,NULL,'Check Cultus and repair it.'),(156,'2024-08-31','14:50:00','00:00:00',28,28,10,13,1,3,3,NULL,2,NULL,NULL,NULL,'Take 2 or 3 quotations for scrape batteries'),(157,'2024-08-31','15:05:00','00:00:00',30,9,10,4,2,3,9,NULL,1,NULL,NULL,NULL,'Canopy base work done by niaz'),(158,'2024-08-31','15:07:00','00:00:00',28,20,10,1,1,3,9,NULL,1,'2024-08-31',NULL,NULL,'Office kitchen roof maintenance work'),(159,'2024-08-31','15:24:00','00:00:00',28,27,21,13,1,3,8,NULL,1,'2024-09-05',NULL,NULL,'Zahid needs to work on sales of used engine'),(160,'2024-09-03','16:53:00','00:00:00',28,20,21,12,1,3,8,NULL,1,'2024-09-05',NULL,NULL,'Make a list of faulty batteries'),(161,'2024-09-03','16:55:00','00:00:00',9,29,10,4,1,3,1,NULL,1,'2024-09-05',NULL,NULL,'Dismantling head, water pump of RMG-011 at workshop'),(162,'2024-09-03','17:06:00','00:00:00',30,20,12,13,1,3,6,NULL,1,'2024-09-04',NULL,NULL,'Selvestor going to collect parts from Danish Motors and also deliver the water pump of RMG-011 at Embassy Autos'),(163,'2024-09-03','00:00:00','00:00:00',30,20,10,12,1,3,3,NULL,2,NULL,NULL,NULL,'Collect head from Star Engineering'),(164,'2024-09-03','17:10:00','00:00:00',22,42,16,8,1,2,5,NULL,1,'2024-09-05',NULL,NULL,'Injectors calibration and make FSR of ready-to-hire. '),(165,'2024-09-03','17:13:00','00:00:00',7,32,7,17,1,1,10,NULL,1,'2024-09-04',NULL,NULL,'Complain received \"Self is not working\"'),(166,'2024-09-04','15:11:00','00:00:00',31,27,21,8,1,3,4,NULL,2,NULL,NULL,NULL,'Arabian petrol pump. Sale of 100 KvA genset with Sohaib'),(167,'2024-09-04','15:13:00','00:00:00',8,31,6,6,1,1,2,NULL,2,NULL,NULL,NULL,'Shutoff value.'),(168,'2024-09-04','15:17:00','00:00:00',11,48,10,18,1,4,1,NULL,2,NULL,NULL,NULL,'Changing filters change'),(169,'2024-09-04','15:19:00','00:00:00',11,49,10,18,1,4,1,NULL,2,NULL,NULL,NULL,'Radiator service.'),(170,'2024-09-04','15:20:00','00:00:00',28,20,10,4,1,2,3,NULL,1,'2024-09-04',NULL,NULL,'Baby grinder repair.'),(171,'2024-09-04','17:04:00','00:00:00',22,50,10,19,1,3,4,NULL,1,'2024-09-05',NULL,NULL,''),(172,'2024-09-04','17:05:00','00:00:00',2,50,10,19,1,3,4,NULL,2,NULL,NULL,NULL,'Sales'),(173,'2024-09-04','17:05:00','00:00:00',17,50,10,19,1,3,4,NULL,2,NULL,NULL,NULL,'Sales'),(174,'2024-09-04','17:15:00','00:00:00',27,10,21,20,2,4,3,NULL,2,NULL,NULL,NULL,'Generator to be moved back to RMPL on September 13th'),(175,'2024-09-04','17:18:00','00:00:00',22,39,10,3,2,2,3,NULL,2,NULL,NULL,NULL,'We need a new operator for RMG 41'),(176,'2024-09-05','17:10:00','00:00:00',28,20,10,13,1,2,3,NULL,2,NULL,NULL,NULL,'Gravity tester, acid, battery tester, and charger'),(177,'2024-09-05','17:15:00','00:00:00',4,20,10,13,1,4,3,NULL,2,NULL,NULL,NULL,'Purchase AVR from Zaheer Autos'),(178,'2024-09-05','17:26:00','00:00:00',12,51,10,4,1,3,3,NULL,2,NULL,NULL,NULL,'parts are going for machine work at United Engineering'),(179,'2024-09-05','17:28:00','00:00:00',12,52,10,4,1,3,3,NULL,2,NULL,NULL,NULL,'Water pump repair '),(180,'2024-09-05','17:51:00','00:00:00',22,41,21,12,1,1,2,NULL,2,NULL,NULL,NULL,'Commissioning of RMG-041 (365 KVA)'),(181,'2024-09-05','18:01:00','00:00:00',5,22,11,12,1,2,1,NULL,2,NULL,NULL,NULL,'Routine service of RMG-006'),(182,'2024-09-06','16:20:00','00:00:00',11,31,10,4,1,4,2,NULL,2,NULL,NULL,NULL,'Complete wiring of RMG-014'),(183,'2024-09-06','16:21:00','00:00:00',11,9,10,4,1,4,2,NULL,2,NULL,NULL,NULL,'Fuel tank door '),(184,'2024-09-06','16:23:00','00:00:00',30,20,10,13,1,3,3,NULL,2,NULL,NULL,NULL,'Purchase cotton waste, diesel for washing, lemon max 03, Oil silicon 03.'),(185,'2024-09-06','16:27:00','00:00:00',28,20,12,12,1,3,8,NULL,2,NULL,NULL,NULL,'Order for Biryaniii.. '),(186,'2024-09-06','16:32:00','00:00:00',28,20,21,4,1,3,1,NULL,1,'2024-09-06',NULL,NULL,'ET Laptop repairing'),(187,'2024-09-07','15:24:00','00:00:00',28,39,21,12,1,2,3,NULL,2,NULL,NULL,NULL,'Operator - Shahbaz has not submitted a police certificate.'),(188,'2024-09-07','15:26:00','00:00:00',28,39,10,12,1,3,3,NULL,2,NULL,NULL,NULL,'arrange 02 operator'),(189,'2024-09-07','15:28:00','00:00:00',31,27,1,8,1,3,4,NULL,2,NULL,NULL,NULL,'Zahid and Irshad are going for the site visit '),(190,'2024-09-07','15:30:00','00:00:00',6,52,3,4,1,2,1,NULL,2,NULL,NULL,NULL,'Water pump repairing'),(191,'2024-09-07','15:32:00','00:00:00',6,52,3,13,1,2,3,NULL,2,NULL,NULL,NULL,'Take quotation for water pump');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickettypes`
--

DROP TABLE IF EXISTS `tickettypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickettypes` (
  `TicketTypeID` int NOT NULL AUTO_INCREMENT,
  `TicketTypeName` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TicketTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickettypes`
--

LOCK TABLES `tickettypes` WRITE;
/*!40000 ALTER TABLE `tickettypes` DISABLE KEYS */;
INSERT INTO `tickettypes` VALUES (1,'BreakDown',NULL),(2,'Cleaning Issues',NULL),(3,'Operator Related',NULL),(4,'Repair',NULL),(5,'Outside Work for client','This is work we do for our clients that we charge them for. This is a profit generating head'),(6,'Trouble shooting',NULL),(7,'Stolen cable issue',NULL),(8,'Visit',NULL),(9,'Welding',NULL),(10,'Depricated-Bank',NULL),(11,'Depricated-BriteLite',NULL),(12,'Other',NULL),(13,'Purchase',NULL),(14,'Maintenance',NULL),(15,'Installation',NULL),(16,'CRM',NULL),(17,'Complain',NULL),(18,'preventive maintenance',NULL),(19,'Marketing',NULL),(20,'Generator return',NULL),(21,'Deployment',NULL);
/*!40000 ALTER TABLE `tickettypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 15:45:47
