CREATE DATABASE  IF NOT EXISTS `K00266682_ sellMyTicket` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `K00266682_ sellMyTicket`;
-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: K00266682_ sellMyTicket
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

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
  `idAccount` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `Username` varchar(30) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(45) NOT NULL,
  `suspended` tinyint(4) DEFAULT NULL,
  `permissionID` int(11) NOT NULL,
  `locationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAccount`),
  UNIQUE KEY `idAccount_UNIQUE` (`idAccount`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  KEY `FK_permission_idx` (`permissionID`),
  KEY `FK_location_account_idx` (`locationID`),
  CONSTRAINT `FK_location_account` FOREIGN KEY (`locationID`) REFERENCES `location` (`idLocation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_permission` FOREIGN KEY (`permissionID`) REFERENCES `permission` (`idPermission`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Nil','Welbourn','nwelbourn0','823-445-4757','nwelbourn0@state.gov','KTk343NwIhU0','6520 Shopko Avenue',1,2,1),(2,'Ware','Landsbury','wlandsbury1','103-791-8472','wlandsbury1@networksolutions.com','UOdbvMX','2 Farwell Road',1,3,16),(3,'Alisander','Jaynes','ajaynes2','956-661-7576','ajaynes2@globo.com','xq9Jsi5','308 Stephen Court',0,1,6),(4,'Brendin','Ewert','bewert3','172-865-1646','bewert3@reference.com','lPWLZfDVXZn5','0450 Del Sol Lane',0,1,9),(5,'Dorey','Winfindale','dwinfindale4','816-322-9835','dwinfindale4@printfriendly.com','Z3AOByacC','06114 Orin Hill',0,1,13),(6,'Cahra','Krale','ckrale5','964-739-1162','ckrale5@ftc.gov','zI2jTlev0','1 Emmet Park',1,3,10),(7,'Elroy','Pimbley','epimbley6','293-776-0142','epimbley6@webs.com','U9DCMe','433 Morningstar Hill',0,1,4),(8,'Sayer','Goman','sgoman7','642-656-6646','sgoman7@dot.gov','lf6ztJ','9365 South Crossing',0,3,9),(9,'Nathalia','Gammel','ngammel8','712-189-3412','ngammel8@cyberchimps.com','Z8OTvUeM','410 Superior Way',1,2,2),(10,'Doreen','Harbar','dharbar9','383-462-6340','dharbar9@infoseek.co.jp','FxOKhG','636 Schiller Drive',0,2,8),(11,'Berne','Barti','bbartia','423-337-7211','bbartia@adobe.com','V6blJjSXtysE','43482 Oakridge Lane',1,2,12),(12,'Mart','Hussy','mhussyb','733-208-4495','mhussyb@cisco.com','68JMKJ','833 Saint Paul Circle',0,2,20),(13,'Berni','Whatman','bwhatmanc','859-620-8714','bwhatmanc@free.fr','nMcJO9V','408 Holy Cross Pass',1,1,13),(14,'Darby','Denys','ddenysd','201-606-6495','ddenysd@disqus.com','PfH3ktwPOPrt','326 Northfield Way',1,1,10),(15,'Camellia','Calbreath','ccalbreathe','548-205-7353','ccalbreathe@mediafire.com','5JhZveGm','3005 Kedzie Road',1,2,11),(16,'Daron','Beri','dberif','130-363-4487','dberif@deviantart.com','DYVqLNlkE0','4 Vernon Parkway',0,2,16),(17,'Dominik','Gowry','dgowryg','374-261-9076','dgowryg@dmoz.org','JTx3HDR','0 Lindbergh Lane',0,2,13),(18,'Ruggiero','Trevance','rtrevanceh','214-326-7447','rtrevanceh@usnews.com','UNBHB167KBVy','9 Derek Park',0,1,10),(19,'Ofilia','Kepe','okepei','761-784-0835','okepei@princeton.edu','KdgPyEJRn','13 Loftsgordon Hill',1,1,9),(20,'Melodee','Roget','mrogetj','902-717-9632','mrogetj@tiny.cc','6vXF1YmkOro','880 Darwin Road',1,3,5),(21,'Melosa','Yanshin','myanshink','472-947-2125','myanshink@engadget.com','amLuZ8jv2','3116 Carey Way',1,3,5),(22,'Kippar','Allatt','kallattl','998-855-2777','kallattl@flavors.me','oZ2eish','7 Alpine Avenue',0,2,8),(23,'Jean','Winnett','jwinnettm','388-552-4850','jwinnettm@prlog.org','Cag94555oV','32 Ridgeview Trail',1,1,18),(24,'Udell','Najafian','unajafiann','486-869-4397','unajafiann@va.gov','TUYRENCq','961 Riverside Alley',1,1,6),(25,'Lucita','Proctor','lproctoro','537-608-3502','lproctoro@mozilla.com','sLGZiU','54928 Evergreen Crossing',0,1,19),(26,'Meagan','Claridge','mclaridgep','254-401-3896','mclaridgep@kickstarter.com','YW6ITXf5G0','82058 Scoville Lane',0,2,5),(27,'Bear','Lees','bleesq','932-519-1748','bleesq@fema.gov','YGNCtExi','09110 Clemons Center',1,3,8),(28,'Cassie','Swanbourne','cswanbourner','799-216-1789','cswanbourner@ibm.com','iyVtGkR','27229 High Crossing Center',0,1,4),(29,'Anica','Weedon','aweedons','504-483-9553','aweedons@archive.org','gURM2hrcvX','53877 Nova Street',1,1,4),(30,'Kassey','Sanzio','ksanziot','261-718-3617','ksanziot@thetimes.co.uk','haUSC6h','5105 Mitchell Junction',1,1,20);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `idCity` int(11) NOT NULL,
  `cityName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Ishikari'),(2,'Poitiers'),(3,'Paris 10'),(4,'Dimona'),(5,'Tarko-Sale'),(6,'Chiang Yuen'),(7,'Wijewo'),(8,'Jiangwei'),(9,'San Francisco'),(10,'Antaparco'),(11,'Lota'),(12,'Quintã'),(13,'Morales'),(14,'Kampong Chhnang'),(15,'Formosa'),(16,'San José de Miranda'),(17,'Balneário Camboriú'),(18,'Montería'),(19,'Tagakpan'),(20,'Lille'),(21,'Devon'),(22,'Bojadła'),(23,'Geshan'),(24,'Chocianów'),(25,'Paphos'),(26,'Nonoichi'),(27,'Molchanovo'),(28,'Tangpu'),(29,'Maomiaoji'),(30,'Liangli');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `idCountry` int(11) NOT NULL,
  `countryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Indonesia'),(2,'China'),(3,'Ireland'),(4,'Portugal'),(5,'Sweden'),(6,'India'),(7,'Bahrain'),(8,'Colombia'),(9,'Malawi'),(10,'Czech Republic'),(11,'Japan'),(12,'Romania'),(13,'Poland'),(14,'Spain'),(15,'Morocco'),(16,'Burkina Faso'),(17,'Ukraine'),(18,'Italy'),(19,'France'),(20,'Peru'),(21,'Mexico'),(22,'Indonesia'),(23,'Brazil'),(24,'Burkina Faso'),(25,'Peru'),(26,'Sri Lanka'),(27,'Russia'),(28,'Indonesia'),(29,'Yemen'),(30,'Jordan');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `idEvent` int(11) NOT NULL,
  `idvenue` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `idtype` int(11) NOT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `homeTeam` varchar(45) DEFAULT NULL,
  `awayTeam` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEvent`),
  KEY `eventVenue_idx` (`idvenue`),
  KEY `eventtype_idx` (`idtype`),
  CONSTRAINT `eventVenue` FOREIGN KEY (`idvenue`) REFERENCES `venue` (`idVenue`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `eventtype` FOREIGN KEY (`idtype`) REFERENCES `event_type` (`idType`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,2,'random','0000-00-00','14:00','avsewva',2,'','svvas','sdfbsrbv'),(2,1,'in hac habitasse','0000-00-00','5:27','odio elementum eu',2,NULL,'est quam pharetra','est phasellus'),(3,2,'eget eros','0000-00-00','20:39','libero',15,NULL,'proin eu mi','lacus morbi quis tortor id'),(4,2,'metus vitae ipsum','0000-00-00','17:19','sit amet diam in magna',1,'','mauris laoreet ut rhoncus','nisl nunc nisl duis bibendum'),(5,11,'mi in','0000-00-00','17:36','at velit vivamus',13,'','vestibulum rutrum','cubilia'),(6,14,'mauris','0000-00-00','1:34','vehicula consequat morbi a',8,'','orci luctus et ultrices posuere','in hac'),(7,10,'quis odio consequat','0000-00-00','17:29','nulla tempus',11,'','ac tellus','elementum ligula vehicula consequat'),(8,11,'eget','0000-00-00','10:48','nullam orci pede venenatis non',6,'nisi at nibh','',''),(9,11,'ligula in lacus','0000-00-00','10:33','consequat',3,'est congue elementum in hac','',''),(10,10,'nec','0000-00-00','4:54','aliquam non mauris',7,'diam nam tristique tortor','',''),(11,9,'tortor','0000-00-00','3:00','morbi quis tortor id nulla',14,'vestibulum vestibulum',NULL,NULL),(12,5,'felis ut at','0000-00-00','9:24','rhoncus dui vel sem sed',5,'','amet nulla','sed'),(13,6,'lobortis vel','0000-00-00','6:37','vel nulla eget eros',6,'','faucibus orci luctus et ultrices','in leo maecenas'),(14,4,'lacus','0000-00-00','0:38','donec vitae',12,'','congue eget','orci pede venenatis non'),(15,14,'elementum eu','0000-00-00','20:01','lorem ipsum dolor sit amet',8,'quis tortor id',NULL,NULL),(16,9,'metus','0000-00-00','3:17','suscipit ligula',15,'gravida nisi at nibh','',''),(17,12,'mi pede malesuada','0000-00-00','11:29','duis',9,'','dictumst','vestibulum'),(18,10,'malesuada in','0000-00-00','0:51','nunc rhoncus dui vel sem',5,'','eget','ut tellus nulla ut erat'),(19,12,'a odio in hac','0000-00-00','0:15','elementum pellentesque quisque porta volutpat',3,'suspendisse accumsan tortor quis turpis','',''),(20,15,'justo in blandit ultrices','0000-00-00','9:00','facilisi',11,'eget','',''),(21,15,'in','0000-00-00','14:20','posuere cubilia curae donec pharetra',12,'','tempus vel pede morbi porttitor','leo'),(22,4,'eget elit','0000-00-00','13:35','primis in faucibus orci',2,'','purus aliquet at feugiat','a ipsum integer a'),(23,1,'accumsan','0000-00-00','1:49','sollicitudin',9,'','maecenas pulvinar','faucibus orci'),(24,13,'curae donec','0000-00-00','0:36','vulputate',9,'','posuere cubilia','congue etiam'),(25,10,'duis faucibus accumsan odio','0000-00-00','0:52','curae donec pharetra magna',12,'','proin interdum mauris','id'),(26,2,'in purus','0000-00-00','9:54','erat id',5,'','eget tincidunt','tortor eu pede'),(27,14,'convallis morbi','0000-00-00','20:36','leo',14,'','ipsum ac tellus','lacinia sapien quis libero'),(28,8,'tristique tortor eu','0000-00-00','22:58','ut nunc',14,'amet','',''),(29,8,'nam dui proin','0000-00-00','21:23','accumsan felis ut',12,'quam a odio','',''),(30,4,'at ipsum ac','0000-00-00','21:38','parturient montes',4,'morbi porttitor lorem id ligula','',''),(31,15,'libero','0000-00-00','16:30','praesent lectus vestibulum quam',12,'etiam vel augue vestibulum rutrum','','');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_type` (
  `idType` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
INSERT INTO `event_type` VALUES (1,'nisi'),(2,'eget'),(3,'ante vivamus tortor duis mattis'),(4,'pulvinar sed'),(5,'metus aenean fermentum donec'),(6,'pharetra magna vestibulum aliquet'),(7,'mattis odio donec'),(8,'sed'),(9,'convallis morbi'),(10,'nisi'),(11,'in hac habitasse platea'),(12,'justo etiam pretium iaculis justo'),(13,'non mi integer ac neque'),(14,'dictumst'),(15,'nam ultrices libero'),(16,'praesent blandit'),(17,'lacus purus aliquet at'),(18,'nulla suspendisse potenti'),(19,'fermentum justo nec'),(20,'cras non velit nec');
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee` (
  `idPayment` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idPayment`),
  CONSTRAINT `feePaymentID` FOREIGN KEY (`idPayment`) REFERENCES `payment` (`idPayment`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (1,48,'0000-00-00'),(2,56,'0000-00-00'),(3,46,'0000-00-00'),(4,37,'0000-00-00'),(5,62,'0000-00-00'),(6,54,'0000-00-00'),(7,67,'0000-00-00');
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `idFeedback` int(11) NOT NULL,
  `Stars` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFeedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,'iaculis diam erat fermentum justo'),(2,5,'consequat dui nec nisi volutpat eleifend donec ut'),(3,4,'congue risus semper porta volutpat quam'),(4,3,'ligula suspendisse ornare consequat lectus in est risus auctor sed'),(5,1,'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet'),(6,3,'risus semper porta volutpat quam'),(7,1,'amet diam in magna bibendum imperdiet nullam orci pede venenatis'),(8,5,'risus semper porta volutpat quam pede lobortis'),(9,4,'augue aliquam erat volutpat in congue etiam justo'),(10,4,'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae'),(11,4,'mi in porttitor pede justo eu'),(12,1,'imperdiet sapien urna pretium nisl ut'),(13,3,'justo maecenas rhoncus aliquam lacus morbi quis tortor'),(14,4,'vestibulum rutrum rutrum neque aenean auctor'),(15,3,'turpis integer aliquet massa id lobortis convallis tortor'),(16,3,'ut nulla sed accumsan felis ut at'),(17,3,'in purus eu magna vulputate luctus cum'),(18,1,'donec dapibus duis at velit eu est congue elementum'),(19,2,'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing'),(20,2,'accumsan felis ut at dolor quis odio consequat varius'),(21,3,'libero convallis eget eleifend luctus ultricies eu nibh quisque'),(22,4,'cras pellentesque volutpat dui maecenas'),(23,5,'duis bibendum felis sed interdum venenatis turpis enim blandit mi'),(24,3,'cursus vestibulum proin eu mi nulla ac enim'),(25,1,'luctus et ultrices posuere cubilia curae'),(26,4,'est risus auctor sed tristique in tempus sit amet'),(27,4,'eu felis fusce posuere felis sed lacus morbi sem mauris'),(28,2,'accumsan tellus nisi eu orci mauris lacinia sapien quis libero'),(29,3,'ipsum primis in faucibus orci'),(30,3,'proin interdum mauris non ligula pellentesque ultrices');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackid`
--

DROP TABLE IF EXISTS `feedbackid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbackid` (
  `idFeedbackID` int(11) NOT NULL,
  `AccountID` int(11) NOT NULL,
  PRIMARY KEY (`idFeedbackID`,`AccountID`),
  KEY `FK_AccountID_idx` (`AccountID`),
  CONSTRAINT `FK_AccountIDFeed` FOREIGN KEY (`AccountID`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_FeedbackID` FOREIGN KEY (`idFeedbackID`) REFERENCES `feedback` (`idFeedback`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackid`
--

LOCK TABLES `feedbackid` WRITE;
/*!40000 ALTER TABLE `feedbackid` DISABLE KEYS */;
INSERT INTO `feedbackid` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `feedbackid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `cityID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLocation`),
  KEY `FK_Venue_city_idx` (`cityID`),
  KEY `FK_Venue_country_idx` (`countryID`),
  CONSTRAINT `FK_Venue_city` FOREIGN KEY (`cityID`) REFERENCES `city` (`idCity`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Venue_country` FOREIGN KEY (`countryID`) REFERENCES `country` (`idCountry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idMessage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'ante ipsum primis in faucibus','molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc','0000-00-00'),(2,'vestibulum ante ipsum','habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem','0000-00-00'),(3,'suspendisse potenti in','nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque','0000-00-00'),(4,'massa tempor convallis nulla','leo maecenas pulvinar lobortis est phasellus sit amet erat nulla','0000-00-00'),(5,'in ante vestibulum ante ipsum','nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget','0000-00-00'),(6,'ante vivamus tortor duis mattis','vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget','0000-00-00'),(7,'iaculis justo in hac','aliquet maecenas leo odio condimentum id luctus nec molestie sed','0000-00-00'),(8,'suspendisse potenti in eleifend quam','quis turpis sed ante vivamus tortor duis mattis egestas metus','0000-00-00'),(9,'nulla ultrices aliquet maecenas leo','morbi vestibulum velit id pretium iaculis diam erat fermentum justo','0000-00-00'),(10,'congue etiam justo','congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero','0000-00-00'),(11,'nisi at nibh','velit donec diam neque vestibulum eget vulputate ut ultrices vel augue','0000-00-00'),(12,'arcu libero rutrum ac','pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate','0000-00-00'),(13,'fusce lacus purus aliquet','primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus','0000-00-00'),(14,'posuere cubilia curae','quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst','0000-00-00'),(15,'sit amet nulla','in hac habitasse platea dictumst maecenas ut massa quis augue','0000-00-00'),(16,'quis turpis eget elit','quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue','0000-00-00'),(17,'amet nunc viverra dapibus','massa donec dapibus duis at velit eu est congue elementum in','0000-00-00'),(18,'non interdum in ante','ultrices mattis odio donec vitae nisi nam ultrices libero non','0000-00-00'),(19,'dictumst aliquam augue quam','aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio','0000-00-00'),(20,'semper est quam pharetra magna','diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu','0000-00-00'),(21,'tempor turpis nec','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna','0000-00-00'),(22,'tellus semper interdum mauris ullamcorper','posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed','0000-00-00'),(23,'rutrum rutrum neque aenean','id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique','0000-00-00'),(24,'lectus pellentesque at nulla suspendisse','non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet','0000-00-00'),(25,'lacus at turpis donec','venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem','0000-00-00'),(26,'dolor vel est donec','dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean','0000-00-00'),(27,'mauris lacinia sapien quis','leo maecenas pulvinar lobortis est phasellus sit amet erat nulla','0000-00-00'),(28,'sit amet sem fusce','donec odio justo sollicitudin ut suscipit a feugiat et eros','0000-00-00'),(29,'mauris lacinia sapien','luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur','0000-00-00'),(30,'ut massa quis augue luctus','mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac','0000-00-00');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageid`
--

DROP TABLE IF EXISTS `messageid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageid` (
  `idMessageID` int(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `RecipientID` int(11) NOT NULL,
  PRIMARY KEY (`idMessageID`,`SenderID`,`RecipientID`),
  KEY `FK_AccountIDmess_idx` (`SenderID`),
  KEY `FK_RecipientID_idx` (`RecipientID`),
  CONSTRAINT `FK_AccountIDmess` FOREIGN KEY (`SenderID`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MessageID` FOREIGN KEY (`idMessageID`) REFERENCES `message` (`idMessage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_RecipientID` FOREIGN KEY (`RecipientID`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageid`
--

LOCK TABLES `messageid` WRITE;
/*!40000 ALTER TABLE `messageid` DISABLE KEYS */;
INSERT INTO `messageid` VALUES (1,1,12),(2,2,7),(3,3,5),(4,4,7),(5,5,16),(6,6,15),(7,7,3),(8,8,14),(9,9,13),(10,10,12);
/*!40000 ALTER TABLE `messageid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `idBuyer` int(11) NOT NULL,
  `idTicket` int(11) NOT NULL,
  `Amount` double NOT NULL,
  `Accepted` tinyint(4) NOT NULL,
  PRIMARY KEY (`idBuyer`,`idTicket`),
  KEY `orderTicketID_idx` (`idTicket`),
  CONSTRAINT `orderBuyerID` FOREIGN KEY (`idBuyer`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orderTicketID` FOREIGN KEY (`idTicket`) REFERENCES `ticket` (`idTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1,11,45,1),(2,10,260,0),(2,12,497,0),(2,13,434,1),(3,3,381,0),(4,5,101,1),(4,16,73,1),(5,20,290,0),(6,9,343,1),(6,10,72,1),(8,4,58,0),(9,3,184,1),(9,8,428,1),(10,2,383,0),(11,2,51,0),(11,8,428,0),(12,1,237,1),(12,8,334,0),(12,18,217,0),(13,7,338,1),(13,19,402,1),(14,18,490,0),(15,1,333,0),(15,3,336,1),(16,3,157,1),(17,14,349,0),(18,3,467,0),(18,7,347,1),(18,19,292,0),(19,9,357,0);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `idPayment` int(11) NOT NULL,
  `idTicket` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`idPayment`),
  KEY `FK_TicketIDPay_idx` (`idTicket`),
  KEY `FK_TicketIDPayment_idx` (`idTicket`),
  CONSTRAINT `FK_TicketIDPayment` FOREIGN KEY (`idTicket`) REFERENCES `offers` (`idTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,20,'0000-00-00',323),(2,11,'0000-00-00',146),(3,12,'0000-00-00',101),(4,7,'0000-00-00',489),(5,13,'0000-00-00',427),(6,13,'0000-00-00',335),(7,11,'0000-00-00',467),(8,8,'0000-00-00',111);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_history` (
  `Payment_id` int(11) NOT NULL,
  `accountid` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`Payment_id`,`accountid`),
  KEY `paymentAcoountIDFK_idx` (`accountid`),
  CONSTRAINT `paymentAcoountIDFK` FOREIGN KEY (`accountid`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paymentIDHist` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`idPayment`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
INSERT INTO `payment_history` VALUES (1,14,199,'0000-00-00'),(2,10,495,'0000-00-00'),(3,11,61,'0000-00-00'),(4,1,341,'0000-00-00'),(5,2,193,'0000-00-00'),(6,6,135,'0000-00-00'),(7,15,170,'0000-00-00');
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `idPermission` int(11) NOT NULL,
  `Level_of_permission` int(11) NOT NULL,
  PRIMARY KEY (`idPermission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `idPayment` int(11) NOT NULL,
  `idticket` int(11) NOT NULL,
  `confirmed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idPayment`,`idticket`),
  KEY `FK_TicketIDSale_idx` (`idticket`),
  CONSTRAINT `FK_PaymentID` FOREIGN KEY (`idPayment`) REFERENCES `payment` (`idPayment`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TicketIDSale` FOREIGN KEY (`idticket`) REFERENCES `offers` (`idTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,20,127),(2,11,127),(3,12,101),(4,7,127),(5,13,127),(6,8,111);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL,
  `idEvent` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idTicket`),
  KEY `TicektEventID_idx` (`idEvent`),
  CONSTRAINT `TicektEventID` FOREIGN KEY (`idEvent`) REFERENCES `event` (`idEvent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,4,189,1),(2,2,259,0),(3,3,39,0),(4,2,11,0),(5,11,83,1),(6,13,119,0),(7,15,206,0),(8,14,56,0),(9,13,19,0),(10,14,441,0),(11,6,345,0),(12,4,111,0),(13,9,231,1),(14,7,442,1),(15,14,330,0),(16,9,116,1),(17,15,144,1),(18,2,128,1),(19,3,424,1),(20,1,92,0),(21,4,427,0),(22,10,171,1),(23,9,135,0),(24,7,265,0),(25,13,46,1),(26,1,193,1),(27,7,403,1),(28,13,15,0),(29,1,179,0),(30,7,131,1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketid`
--

DROP TABLE IF EXISTS `ticketid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketid` (
  `idTicketID` int(11) NOT NULL,
  `idAccount` int(11) NOT NULL,
  PRIMARY KEY (`idTicketID`,`idAccount`),
  KEY `FK_AccountIDtick_idx` (`idAccount`),
  CONSTRAINT `FK_AccountIDtick` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TicketID` FOREIGN KEY (`idTicketID`) REFERENCES `ticket` (`idTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketid`
--

LOCK TABLES `ticketid` WRITE;
/*!40000 ALTER TABLE `ticketid` DISABLE KEYS */;
INSERT INTO `ticketid` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `ticketid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `idVenue` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVenue`),
  KEY `VenueLocation_idx` (`location_id`),
  CONSTRAINT `VenueLocation` FOREIGN KEY (`location_id`) REFERENCES `location` (`idLocation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'et ultrices',7,6751),(2,'in',10,11938),(3,'odio',12,14589),(4,'parturient',13,2125),(5,'tempus',2,2583),(6,'quam',9,6093),(7,'natoque',11,8963),(8,'nullam',4,12928),(9,'mus',5,5099),(10,'cursus vestibulum',6,10300),(11,'semper interdum',6,1902),(12,'convallis nunc',2,5634),(13,'cursus vestibulum',7,6218),(14,'blandit',12,10565),(15,'a',3,5075),(16,'posuere cubilia',11,4192),(17,'libero quis',7,1666),(18,'odio',8,2883),(19,'curae donec',3,2572),(20,'sagittis dui',13,8677),(21,'ipsum aliquam',15,8169),(22,'sapien varius',7,9200),(23,'justo eu',12,14554),(24,'nullam',1,7397),(25,'et',12,6946),(26,'commodo vulputate',8,4377),(27,'placerat praesent',13,10407),(28,'phasellus',7,5114),(29,'orci luctus',1,505),(30,'fermentum donec',9,4493);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10  9:00:02
