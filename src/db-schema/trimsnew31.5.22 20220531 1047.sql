-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema trims
--

CREATE DATABASE IF NOT EXISTS trims;
USE trims;

--
-- Definition of table `activity001mb`
--

DROP TABLE IF EXISTS `activity001mb`;
CREATE TABLE `activity001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(200) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity001mb`
--

/*!40000 ALTER TABLE `activity001mb` DISABLE KEYS */;
INSERT INTO `activity001mb` (`sl_no`,`activity`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,' Audit the purchase orders issued to raw material suppliers and outsource suppliers','A','siva','2022-03-21 15:48:42','siva','2022-03-21 15:51:43'),
 (2,'Compare the raw material supplier with whom the order made and the approved outsource supplier list of the supplier.','A','siva','2022-03-21 15:49:08',NULL,NULL),
 (3,' Compare the approved suppliers list of raw material with approved list of SMPL, if applicable','A','siva','2022-03-21 19:02:02',NULL,NULL),
 (4,'Check the 2nd tier supplier list','A','siva','2022-03-22 09:32:01',NULL,NULL),
 (5,'Compare the material specification given in purchase order with specification given in SMPL drawing','A','siva','2022-03-22 09:32:28',NULL,NULL),
 (6,'Check the incoming inspection plan with respect to SMPL requirements','A','siva','2022-03-22 09:34:39',NULL,NULL),
 (7,'Audit the records of incoming inspection for having carried out inspection. Audit few samples for conformance, if feasible.','A','siva','2022-03-22 09:36:02',NULL,NULL),
 (8,'Check the equipments, instruments and gauges used for assessing the incoming quantity','A','siva','2022-03-22 09:36:41',NULL,NULL),
 (9,' Audit the 5 S of raw material storage area.','A','siva','2022-03-22 09:37:35',NULL,NULL),
 (10,'1.10 Check the action / countermeasure taken for lots rejected','A','siva','2022-03-22 09:38:09',NULL,NULL),
 (11,'Audit the 5S status across the company','A','siva','2022-03-22 09:39:54',NULL,NULL),
 (12,'Check the drawings for latest revision','A','siva','2022-03-22 09:40:52',NULL,NULL),
 (13,' Audit Operations Standard','A','siva','2022-03-22 09:41:29',NULL,NULL),
 (14,'Check procedure of adherence to First Off Inspection and Patrol Inspection','A','siva','2022-03-22 09:43:02',NULL,NULL),
 (15,' Audit the checking of components by operators','A','siva','2022-03-22 09:44:01',NULL,NULL),
 (16,' Audit the instruments and gauges used for adequency and calibration','A','siva','2022-03-22 09:45:15',NULL,NULL),
 (17,'Audit the tools and fixtures for capability and maintenance','A','siva','2022-03-22 09:50:56',NULL,NULL),
 (18,' Audit the material handling systems','A','siva','2022-03-22 10:37:23',NULL,NULL),
 (19,' Check process capability status. (Note down the figures to process capability status)','A','siva','2022-03-22 10:38:10',NULL,NULL),
 (20,'Audit the control of non-conforming parts','A','siva','2022-03-22 10:39:53',NULL,NULL),
 (21,'Audit the control on special processes if applicable','A','siva','2022-03-22 10:40:56',NULL,NULL);
/*!40000 ALTER TABLE `activity001mb` ENABLE KEYS */;


--
-- Definition of table `assessmentcriteria001mb`
--

DROP TABLE IF EXISTS `assessmentcriteria001mb`;
CREATE TABLE `assessmentcriteria001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `criteria` varchar(40) NOT NULL,
  `details` varchar(250) NOT NULL,
  `max` int(20) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessmentcriteria001mb`
--

/*!40000 ALTER TABLE `assessmentcriteria001mb` DISABLE KEYS */;
INSERT INTO `assessmentcriteria001mb` (`sl_no`,`criteria`,`details`,`max`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Organisation ','Does the company have adequate no. of people and infrastructure to process required quantity?',10,'A','siva','2022-03-18 11:31:22','siva','2022-03-18 11:32:28'),
 (2,'Material Control','Are the adequate controls excessed by the supplier (Supplier) on raw material, consumables and accessories used in processing?',10,'A','siva','2022-03-18 11:33:45',NULL,NULL),
 (3,'Equipment Control','Are the equipments used for the processing are in good condition and properly maintained and controlled?',10,'A','siva','2022-03-18 11:34:12',NULL,NULL),
 (4,'Inspection Procedure and Facilities','Are the adequate facilities and skills available for identifying and controlling the defects?',10,'A','siva','2022-03-18 11:34:42',NULL,NULL),
 (5,'Calibration','Do they have adequate verification instruments and proper control?',10,'A','siva','2022-03-18 11:35:19',NULL,NULL),
 (6,'Subcontractor Control','Are their subcontractor methods satisfactory does it induced confidence this includes annual maintenance contract and outside lab test?',10,'A','siva','2022-03-18 11:35:46',NULL,NULL),
 (7,'Records','Do they have adequate records to prove effective control?',10,'A','siva','2022-03-18 11:36:17',NULL,NULL),
 (8,'Control Storage and Handling','Are their storage handling and preservation methods good enap to prevent damage or defect to product?',10,'A','siva','2022-03-18 11:36:54',NULL,NULL),
 (9,'House Keeping','How Clean is their work area including the orderlines in keeping products?',10,'A','siva','2022-03-18 11:37:15',NULL,NULL),
 (10,'Process Capability','How are the skill of people employed for the nature of processing under taken?',10,'A','siva','2022-03-18 11:37:41','siva','2022-03-18 11:46:12');
/*!40000 ALTER TABLE `assessmentcriteria001mb` ENABLE KEYS */;


--
-- Definition of table `breakdown001mb`
--

DROP TABLE IF EXISTS `breakdown001mb`;
CREATE TABLE `breakdown001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `breakdown001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdown001mb`
--

/*!40000 ALTER TABLE `breakdown001mb` DISABLE KEYS */;
INSERT INTO `breakdown001mb` (`sl_no`,`sslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,2,'Grinder Belt Cut','Grinder not working','latha','2022-01-06 13:52:22',NULL,NULL),
 (3,1,'Printer Shorted','shorting problem','latha','2022-01-06 13:53:56',NULL,NULL),
 (4,2,'Motor Burned','Motor is not working','latha','2022-01-06 13:54:33',NULL,NULL);
/*!40000 ALTER TABLE `breakdown001mb` ENABLE KEYS */;


--
-- Definition of table `breakdownreg001wb`
--

DROP TABLE IF EXISTS `breakdownreg001wb`;
CREATE TABLE `breakdownreg001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `bdsl` int(11) NOT NULL,
  `rcsl` int(11) NOT NULL,
  `pasl` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `spareCost` int(11) NOT NULL,
  `sparesQty` int(11) NOT NULL,
  `attendby` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `filename` varchar(50) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `sslno` (`sslno`),
  KEY `bdsl` (`bdsl`),
  KEY `rcsl` (`rcsl`),
  KEY `pasl` (`pasl`),
  CONSTRAINT `breakdownreg001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `spares001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_3` FOREIGN KEY (`bdsl`) REFERENCES `breakdown001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_4` FOREIGN KEY (`rcsl`) REFERENCES `rootcause001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_5` FOREIGN KEY (`pasl`) REFERENCES `preventiveaction001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdownreg001wb`
--

/*!40000 ALTER TABLE `breakdownreg001wb` DISABLE KEYS */;
INSERT INTO `breakdownreg001wb` (`sl_no`,`mslno`,`date`,`bdsl`,`rcsl`,`pasl`,`sslno`,`spareCost`,`sparesQty`,`attendby`,`remarks`,`startTime`,`endTime`,`filename`,`filepath`,`originalfilename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (10,1,'2022-03-01 00:00:00',2,2,2,7,0,0,'sekar','good','12:05','13:06','C:\\fakepath\\logo.jpg','undefined','1653050478769_logo.jpg','siva','2022-05-20 18:11:18','siva','2022-05-20 18:11:18'),
 (11,1,'2022-03-02 00:00:00',3,3,3,2,0,0,'hema','bad','13:06','16:10','C:\\fakepath\\page1-01.jpg','undefined','1653041997580_page1-01.jpg','siva','2022-05-20 15:49:57','siva','2022-05-20 15:49:57'),
 (12,1,'2022-03-03 00:00:00',4,4,4,2,10000,5,'sri','good','18:07','23:13','breakdown3.png','undefined','1646635066938_breakdown3.png','siva','2022-03-07 12:07:46','undefined','2022-03-07 12:07:46'),
 (13,1,'2022-05-18 00:00:00',4,4,4,2,0,0,'fdd','cfbdvf','19:11','23:15','C:\\fakepath\\page1-01.jpg','undefined','1653046898608_page1-01.jpg','siva','2022-05-20 17:11:38','siva','2022-05-20 17:11:38'),
 (14,2,'2022-05-17 00:00:00',3,3,3,2,4000,2,'A','A','07:34','20:34','4c96102cede87dce786d67d9996bb97d.jpg','undefined','1652965494315_4c96102cede87dce786d67d9996bb97d.jpg','siva','2022-05-19 18:34:54',NULL,NULL);
/*!40000 ALTER TABLE `breakdownreg001wb` ENABLE KEYS */;


--
-- Definition of table `checklist001mb`
--

DROP TABLE IF EXISTS `checklist001mb`;
CREATE TABLE `checklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mcslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `checkpoints` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mcslno` (`mcslno`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `checklist001mb_ibfk_1` FOREIGN KEY (`mcslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `checklist001mb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist001mb`
--

/*!40000 ALTER TABLE `checklist001mb` DISABLE KEYS */;
INSERT INTO `checklist001mb` (`sl_no`,`mcslno`,`sslno`,`checkpoints`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'Grinding wheel checked','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (9,1,4,'machine on/off checked','latha','2022-02-11 17:49:29',NULL,NULL),
 (10,1,2,'shaft working','latha','2022-02-11 17:51:11',NULL,NULL),
 (11,1,1,'machne working condition','latha','2022-02-11 17:52:01',NULL,NULL),
 (13,1,1,'belt checked','latha','2022-02-14 16:57:55',NULL,NULL);
/*!40000 ALTER TABLE `checklist001mb` ENABLE KEYS */;


--
-- Definition of table `companydetails001mb`
--

DROP TABLE IF EXISTS `companydetails001mb`;
CREATE TABLE `companydetails001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(150) NOT NULL,
  `address1` varchar(150) NOT NULL,
  `address2` varchar(150) NOT NULL,
  `address3` varchar(150) NOT NULL,
  `gst_in` int(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `pin_code` int(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companydetails001mb`
--

/*!40000 ALTER TABLE `companydetails001mb` DISABLE KEYS */;
INSERT INTO `companydetails001mb` (`sl_no`,`company`,`address1`,`address2`,`address3`,`gst_in`,`city`,`state`,`country`,`pin_code`,`email_id`,`contact_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'Srinivas EnterPrises Unit I','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',57567,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6785646546,'latha','2022-04-12 11:17:50','latha','2022-04-12 17:32:26'),
 (2,'Srinivas EnterPrises Unit II','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5678567,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9675237784,'latha','2022-04-12 11:33:10','latha','2022-04-12 13:28:33'),
 (3,'Test Company 1','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5465745,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6567743543,'latha','2022-04-12 11:33:49','latha','2022-04-12 17:32:35'),
 (4,'Trims','345tfgmn','fgfgg','sdsd',454,'tenkasi','tamilnadu','india',627859,'dhaya@gmail.com',9791717574,'siva','2022-05-13 15:55:07',NULL,NULL);
/*!40000 ALTER TABLE `companydetails001mb` ENABLE KEYS */;


--
-- Definition of table `consignee001mb`
--

DROP TABLE IF EXISTS `consignee001mb`;
CREATE TABLE `consignee001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_slno` int(11) NOT NULL,
  `consignee` varchar(150) NOT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `address3` varchar(150) DEFAULT NULL,
  `gst_in` int(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `pin_code` int(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `company_slno` (`company_slno`),
  CONSTRAINT `consignee001mb_ibfk_1` FOREIGN KEY (`company_slno`) REFERENCES `companydetails001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignee001mb`
--

/*!40000 ALTER TABLE `consignee001mb` DISABLE KEYS */;
INSERT INTO `consignee001mb` (`sl_no`,`company_slno`,`consignee`,`address1`,`address2`,`address3`,`gst_in`,`city`,`state`,`country`,`pin_code`,`email_id`,`contact_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'trichy','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',6435345,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6754435453,'latha','2022-04-12 16:06:48','latha','2022-04-13 10:40:52'),
 (2,1,'madurai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',673457,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9643563422,'latha','2022-04-12 17:02:59','latha','2022-04-15 12:20:41'),
 (3,1,'theni','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5675672,'Karuppatti','Hosur','India',635113,'abc@gmail.com',8464633336,'latha','2022-04-12 17:33:23','latha','2022-04-15 12:20:59'),
 (5,2,'erode','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',4675755,'Karuppatti','Hosur','India',635113,'abc@gmail.com',8764355643,'latha','2022-04-13 10:41:14','latha','2022-04-15 12:22:01'),
 (6,2,'chennai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',56745423,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9762385644,'latha','2022-04-13 10:42:00','latha','2022-04-15 12:22:14'),
 (7,2,'mumbai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',3546456,'Karuppatti','Hosur','India',635113,'abc@gmail.com',7654533243,'latha','2022-04-13 10:42:20','latha','2022-04-15 12:22:25'),
 (8,3,'delhi','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',45674635,'Karuppatti','Hosur','India',635113,'abc@gmail.com',8546344564,'latha','2022-04-13 10:43:42','latha','2022-04-15 12:22:53'),
 (9,3,'thanjur','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',35463,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6455342342,'latha','2022-04-13 10:44:57',NULL,NULL),
 (10,3,'salem','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',67435235,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9545234232,'latha','2022-04-13 10:45:16',NULL,NULL);
/*!40000 ALTER TABLE `consignee001mb` ENABLE KEYS */;


--
-- Definition of table `dailychecklist001wb`
--

DROP TABLE IF EXISTS `dailychecklist001wb`;
CREATE TABLE `dailychecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `dailychecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `dailychecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailychecklist001wb`
--

/*!40000 ALTER TABLE `dailychecklist001wb` DISABLE KEYS */;
INSERT INTO `dailychecklist001wb` (`sl_no`,`mslno`,`cpslno`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (7,3,1,'2022-10-01 00:00:00','Aravinth','2022-01-10 10:43:42',NULL,NULL),
 (8,3,1,'2022-10-01 00:00:00','Aravinth','2022-01-10 10:44:23',NULL,NULL),
 (15,1,1,'2022-01-27 17:16:56','latha','2022-01-27 17:16:56','latha','2022-01-27 17:32:32'),
 (16,6,1,'2022-01-28 18:59:57','latha','2022-01-28 18:59:57','latha','2022-01-28 19:00:02'),
 (17,1,9,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:26',NULL,NULL),
 (18,1,10,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:35',NULL,NULL),
 (20,1,13,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:47',NULL,NULL),
 (85,1,1,'2022-03-08 00:00:00','siva','2022-03-08 14:23:55',NULL,NULL),
 (86,1,9,'2022-03-08 00:00:00','siva','2022-03-08 14:24:02',NULL,NULL),
 (87,1,10,'2022-03-08 00:00:00','siva','2022-03-08 14:29:26',NULL,NULL),
 (88,1,11,'2022-03-08 00:00:00','siva','2022-03-08 14:29:33',NULL,NULL),
 (89,1,1,'2022-05-24 00:00:00','siva','2022-05-24 13:27:38',NULL,NULL);
/*!40000 ALTER TABLE `dailychecklist001wb` ENABLE KEYS */;


--
-- Definition of table `department001mb`
--

DROP TABLE IF EXISTS `department001mb`;
CREATE TABLE `department001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `department001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department001mb`
--

/*!40000 ALTER TABLE `department001mb` DISABLE KEYS */;
INSERT INTO `department001mb` (`sl_no`,`sslno`,`department`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Top Management','rizwana','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (2,2,'Marketing','rizwana','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (3,1,'NPD','latha','2022-01-05 12:00:29','latha','2022-01-05 12:00:32'),
 (4,1,'Purchase','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (5,1,'Store','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (6,1,'HR','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (7,1,'Production','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (8,1,'Quality','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (9,1,'Maintenance','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (10,1,'Despatch','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21');
/*!40000 ALTER TABLE `department001mb` ENABLE KEYS */;


--
-- Definition of table `email001mb`
--

DROP TABLE IF EXISTS `email001mb`;
CREATE TABLE `email001mb` (
  `emailId` int(11) NOT NULL AUTO_INCREMENT,
  `emailFrom` varchar(50) NOT NULL,
  `emailTo` varchar(50) NOT NULL,
  `emailCC` text NOT NULL,
  `emailBCC` text NOT NULL,
  `emailDate` datetime DEFAULT NULL,
  `emailSubject` varchar(100) DEFAULT NULL,
  `emailBody` text,
  `emailCurrentPlace` varchar(30) DEFAULT NULL,
  `isEmailViewed` varchar(30) DEFAULT NULL,
  `isEmailAttachmentExists` varchar(10) DEFAULT NULL,
  `multipleEmailId` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email001mb`
--

/*!40000 ALTER TABLE `email001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `email001mb` ENABLE KEYS */;


--
-- Definition of table `emailattachment001mb`
--

DROP TABLE IF EXISTS `emailattachment001mb`;
CREATE TABLE `emailattachment001mb` (
  `emailattachmentid` int(11) NOT NULL AUTO_INCREMENT,
  `content` tinyblob,
  `contenttype` varchar(255) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailattachmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailattachment001mb`
--

/*!40000 ALTER TABLE `emailattachment001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailattachment001mb` ENABLE KEYS */;


--
-- Definition of table `emailsignature001mb`
--

DROP TABLE IF EXISTS `emailsignature001mb`;
CREATE TABLE `emailsignature001mb` (
  `emailSignatureId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL,
  `companyWebsite` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `employeeDesignation` varchar(255) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  `employeeNamePrefix` varchar(255) DEFAULT NULL,
  `logoLink` varchar(255) DEFAULT NULL,
  `mobileNumber` int(10) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailSignatureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailsignature001mb`
--

/*!40000 ALTER TABLE `emailsignature001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsignature001mb` ENABLE KEYS */;


--
-- Definition of table `emp001mb`
--

DROP TABLE IF EXISTS `emp001mb`;
CREATE TABLE `emp001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `empcode` varchar(10) NOT NULL,
  `empname` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `age` int(20) NOT NULL,
  `doj` datetime NOT NULL,
  `dob` datetime NOT NULL,
  `fname` varchar(200) NOT NULL,
  `bgroup` varchar(200) NOT NULL,
  `female` varchar(200) NOT NULL,
  `married` varchar(200) NOT NULL,
  `child` varchar(200) DEFAULT NULL,
  `dep` varchar(200) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `add2` varchar(200) NOT NULL,
  `edu` varchar(200) NOT NULL,
  `exp` varchar(200) NOT NULL,
  `det` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp001mb`
--

/*!40000 ALTER TABLE `emp001mb` DISABLE KEYS */;
INSERT INTO `emp001mb` (`sl_no`,`empcode`,`empname`,`des`,`age`,`doj`,`dob`,`fname`,`bgroup`,`female`,`married`,`child`,`dep`,`add1`,`add2`,`edu`,`exp`,`det`,`filename`,`filepath`,`originalfilename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (24,'sas','sdsdasad','a',2,'2022-05-24 00:00:00','2022-05-26 00:00:00','as','as','female','Married','asa','sas','as','as','asas','kj','axZx','logo.jpg','undefined','1653048162595_logo.jpg','siva','2022-05-20 17:32:42',NULL,NULL),
 (25,'sas','xzsxz','a',2,'2022-05-24 00:00:00','2022-05-26 00:00:00','as','as','female','Married','asa','sas','as','as','asas','kj','axZx','logo.jpg','undefined','1653049061020_logo.jpg','siva','2022-05-20 17:47:40',NULL,NULL),
 (26,'56y5','tyh','6ty',7,'2022-05-05 00:00:00','2022-05-12 00:00:00','tyu','ty','male','Married','ty','ty','tyut','y','yu','ty','t','page1-01.jpg','undefined','1653391715994_page1-01.jpg','siva','2022-05-24 16:58:35',NULL,NULL);
/*!40000 ALTER TABLE `emp001mb` ENABLE KEYS */;


--
-- Definition of table `employef001mb`
--

DROP TABLE IF EXISTS `employef001mb`;
CREATE TABLE `employef001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `fa_no` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employef001mb`
--

/*!40000 ALTER TABLE `employef001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `employef001mb` ENABLE KEYS */;


--
-- Definition of table `filemanager001mb`
--

DROP TABLE IF EXISTS `filemanager001mb`;
CREATE TABLE `filemanager001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filemanager001mb`
--

/*!40000 ALTER TABLE `filemanager001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `filemanager001mb` ENABLE KEYS */;


--
-- Definition of table `fireplan001wb`
--

DROP TABLE IF EXISTS `fireplan001wb`;
CREATE TABLE `fireplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `fire` varchar(200) NOT NULL,
  `app` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fireplan001wb`
--

/*!40000 ALTER TABLE `fireplan001wb` DISABLE KEYS */;
INSERT INTO `fireplan001wb` (`sl_no`,`fire`,`app`,`loc`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`date`) VALUES 
 (22,'asda','sdf','sd','siva','2022-05-24 12:13:39','siva','2022-05-24 12:18:56','0000-00-00');
/*!40000 ALTER TABLE `fireplan001wb` ENABLE KEYS */;


--
-- Definition of table `firstaidwb001`
--

DROP TABLE IF EXISTS `firstaidwb001`;
CREATE TABLE `firstaidwb001` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `eslno` int(11) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `app` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `eslno` (`eslno`),
  CONSTRAINT `firstaidwb001_ibfk_1` FOREIGN KEY (`eslno`) REFERENCES `employef001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firstaidwb001`
--

/*!40000 ALTER TABLE `firstaidwb001` DISABLE KEYS */;
/*!40000 ALTER TABLE `firstaidwb001` ENABLE KEYS */;


--
-- Definition of table `login001mb`
--

DROP TABLE IF EXISTS `login001mb`;
CREATE TABLE `login001mb` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `securityanswer` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login001mb`
--

/*!40000 ALTER TABLE `login001mb` DISABLE KEYS */;
INSERT INTO `login001mb` (`loginid`,`firstname`,`lastname`,`domain`,`username`,`password`,`enabled`,`securityanswer`,`message`,`securityquestion`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`theme`) VALUES 
 (6,'sivakumar','karunamoorthy','Manufacturing','siva','$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa',0,'tiger123','testing','','A','insertUser','2021-10-20 12:08:13',NULL,NULL,'#1f812c'),
 (7,'kannan','mathiyalagan','Manufacturing','kannan','$2a$11$2N69AGoLLDfv0p1Hgrx3YeAw/d7phkAXdXMsyH539L9jaQmOFxUV6',0,'testing123','testing','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (8,'karya Tech','karya Tech','Manufacturing','karya','$2a$11$IRaX57IBLbMiRpxvd/PYpuqfGGemBg7e4kNKNfpNhPMMMWANi3NYS',0,'testing123','testing','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (43,'girija','kumari','School','girija','$2a$11$WL.BLgqXSmaLZ/DmGxKffuuZxOT8xWfgUnG6wDItnn8BKRVydxq8C',0,'testing123456','testing456','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (44,'naresh','naresh','Buying House','naresh','$2a$11$Il8WVsibPf8nHuGYplrimuf/uerDdSYIIk4sGZr05BwhvoFjOo.j.',0,'testing123','testing123','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (45,'Iswarya','ravikumar','Calibration Labs','iswarya','$2a$11$p59HJTAlHslvqWSIBFG/Pu7yWveJkNjUdyYzCxJWZXRvgDV2l8KJm',0,'testing','test','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (46,'fgh','dfh','Manufacturing','sss','',1,'s',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (47,'tamil','k','Buying House','tamil K','',1,'hhhh',NULL,'What is the name of your favorite childhood friend ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (48,'`uyuruyiy8','sdjfhsjkhfjkj','Manufacturing','etdtdd','',1,'fjhsjshg',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (49,'sss','sss','Construction','tamil','',1,'ee',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (50,'abc','cde','Buying House','raj','',1,'aaa',NULL,'In what city did you meet your spouse/significant other ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (51,'selvam S','R','Manufacturing','selvamRaja','$2b$10$CtGEDPZAAxR9eWib0dqsRO4lHAb0yQUAtGlBF0YjQyFqRmmgeWTx.',1,'dfg',NULL,'In what city did you meet your spouse/significant other ?','Authorization','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (52,'latha','b','Manufacturing','latha','$2b$10$90JZq12mqexGDS7qrQluDeyKXdPwnje9cEIINhgJ2j9hxtWOZ3lru',1,'vb',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 09:48:21',NULL,NULL,'#286090'),
 (53,'latha','b','Manufacturing','latha','$2b$10$0vlJ8K0NCepUhCWnd7ECnOCWzNYJQqAiI1R81GPTaqlZg.fN5kinu',1,'vb',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:00:56',NULL,NULL,'#286090'),
 (54,'tamil','r','Manufacturing','tamil','$2b$10$NhhJO08gNEhdHrfsgPLs7ucP5d1DmfzspS8nUiIdt6OX.aNYHMmG6',1,'fdg',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:14:27',NULL,NULL,'#286090'),
 (55,'selvam','R','Construction','selvam','$2b$10$2atxpqU3FRjN5bLA7B.wHeNZ8ZBwXHWRRnfASs3NgBaM5cymqTNW6',1,'dfg',NULL,'What is the name of your favorite childhood friend ?','Pending','insertuser','2021-09-03 10:20:00',NULL,NULL,'#286090'),
 (56,'sam','R','Manufacturing','sam','$2b$10$3VFMObQ7Z8xCR2Q2bbNlAeSYAsHxkZQjVoZI/gbZ0POVicxqpiD4y',1,'ljml',NULL,'What was your childhood nickname ?','Pending','insertuser','2021-09-03 10:21:30',NULL,NULL,'#286090'),
 (57,'tamil','r','Buying House','tamil','$2b$10$o1MzCzF..d3NOHvxnJxs1OitaX1yQ09sShgf6zuEQHNMjh2VyZg4G',1,'fbd',NULL,'In what city did you meet your spouse/significant other ?','In Progress','insertuser','2021-09-03 10:36:59',NULL,NULL,'#286090'),
 (58,'tamil','R','Manufacturing','tamil','$2b$10$Q/nw./4r.IkHsUHzAO/H3OLTw2z8OXm6hs.kiNVFt1dETnYKWJWuC',1,'dsf',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:50:16',NULL,NULL,'#286090'),
 (59,'klh','K','Manufacturing','hl','$2b$10$lQLcLSugTv7VC7aOdTnZNesuPhS9tHOIJiMBXd04iaDc2yUQ8r9Du',1,'gfh',NULL,'In what city did you meet your spouse/significant other ?','In Progress','insertuser','2021-09-03 10:54:32',NULL,NULL,'#286090'),
 (60,'latha','B','Buying House','latha','$2b$10$WXp9x2KZaSirsj7goZqhC.15ZOXrgswwqRTPxj3igvqeB3DwaVycS',1,'fvb',NULL,'What street did you live on in third grade ?','In Progress','insertuser','2021-09-03 11:00:20',NULL,NULL,'#286090'),
 (61,'latha','B','Manufacturing','latha','$2b$10$op4Zbo4ldsyytOc6H87QMeXyQcj8t0Ysz9Vxf60bWSG34S34fZrIK',1,'ghn',NULL,'What is your oldest sibling\'s middle name ?','New','insertuser','2021-09-03 11:12:07',NULL,NULL,'#286090'),
 (62,'aaa','s','Calibration Labs','aaa','$2b$10$HoYS9eXdJVN7OvTd9/At.OX/ZBohlPZlnpNEcinXf0PLLU1.VI0.2',1,'dfs',NULL,'What school did you attend for sixth grade ?','New','insertuser','2021-09-03 11:19:04',NULL,NULL,'#286090'),
 (63,'latha','B','Construction','latha','$2b$10$AQav7CdSoLBIfotJZomUVuBoP6tJXY1Ffxa0CqASvrreWOFzeoc6O',1,'dfb',NULL,'What was your childhood nickname ?','New','insertuser','2021-09-03 11:20:13',NULL,NULL,'#286090'),
 (64,'fff','s','Construction','fff','$2b$10$pB0grwAGWaPdhG7afEdVGuy1eTnh9unSbsZbyvm7UUfO38dovU15e',1,'sss',NULL,'What is the name of your favorite childhood friend ?','In Progress','insertuser','2021-09-03 11:46:35','updateuser','2021-09-03 11:46:54','#286090'),
 (65,'rizwana','s','Manufacturing','rizwana','$2b$10$0PkcfmeJfeUAqoNSawdiq.3mAldU8eWN0CM3MfVL/RVwumpduo0H6',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:18:33',NULL,NULL,'#a97676ff'),
 (66,'rizwana','s','Manufacturing','rizwana','$2b$10$otsOkYluUydzKckzfHO1C.UTRAXrft2w4wowpBH8bLyPkMhmhlX36',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:15',NULL,NULL,'#286090'),
 (67,'rizwana','s','Manufacturing','rizwana','$2b$10$JJB2RQEN2G2lDxpgXPpnTeoumUy.RSgfD3e3TMfhkliI.zlSakwmq',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (68,'rizwana','s','Manufacturing','rizwana','$2b$10$CfzP75hE1zphBU4fmldvZeetYoPdKSN3ExYgAqOmRFTEMVrHFGTD6',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (69,'rizwana','s','Manufacturing','rizwana','$2b$10$v7TicAN1fYmHJt5qTuvm4edbMcnUmnLo4mq8e8/IR19FNslEK3tey',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (70,'rizwana','s','Manufacturing','rizwana','$2b$10$bKpv7nLVfbKUm6UIcU2wq.aGUt5Lj47MXviUrP0eAFg64OoB0Zrxy',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:54',NULL,NULL,'#286090'),
 (71,'rizwana','s','Manufacturing','rizwana','$2b$10$1mHT42tTp2BCU0j.G6kaxeZv2s9Tpm.lhRhjMmx90oKziDdcw/gde',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:54',NULL,NULL,'#286090'),
 (72,'rizwana','s','Manufacturing','rizwana','$2b$10$.qfjTO4Nm8Q/gCvmQ3dR2eLGmLqTYmSv7YFfHvx/EppeWzikYBz8e',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:20:32',NULL,NULL,'#286090'),
 (73,'rizwana','s','Manufacturing','rizwana','$2b$10$EpK/5WPkw44i91mGmArChea9ZUAD/Te.AeEN6Q2QQrQt3qnV.r35G',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:41',NULL,NULL,'#286090'),
 (74,'rizwana','s','Manufacturing','rizwana','$2b$10$PMNrFoXl86yk1yqnUP3Qv.0bc5dGEWdmvLZRev7Elc0te0dA/y0oq',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:42',NULL,NULL,'#286090'),
 (75,'rizwana','s','Manufacturing','rizwana','$2b$10$f2yoB/m.al5kX8vGSsjmDOTfuXaopZJpHNca7B8LfX0l5NsUFpAru',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:53',NULL,NULL,'#286090'),
 (76,'rizwana','s','Manufacturing','rizwana','$2b$10$..JJUDhnLPCrVp6EBnN0zOx3rRQtrKmzHC..JK3mvX.F5JTsBv.FO',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:53',NULL,NULL,'#286090'),
 (77,'rizwana','Shahul Hameed','Manufacturing','rizwana','$2b$10$yAvFwaa.TX/HAXFt.oZBcO.slw3VeGy/Tm7Pnlj7kkv/NWgps1EG2',1,'SS',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:25:01',NULL,NULL,'#286090'),
 (78,'rizwana','Shahul Hameed','Manufacturing','rizwana','$2b$10$prN4ZVYIrXmf4u4EguISBuG0CMZ.MdIlHaswD9yGZhPfz.2cq6NSy',1,'SS',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:25:17',NULL,NULL,'#286090'),
 (79,'chandrasekaran','L','Manufacturing','sekar','$2b$10$75cJf6a/t2pA3s3QLf7lSupbJayScpYGbMpZPonEb436AW5zPJI9O',1,'chandru',NULL,'What was your childhood nickname ?','A','insertUser','2021-12-31 10:36:29',NULL,NULL,'#3a38c3'),
 (80,'Aravinth','A','Manufacturing','Aravinth','$2b$10$hc.SaA.lB1Aor2LgYT/EOuPNsc56.UgqSipget5DtCnt5Y0y8Vrwq',1,'kaka',NULL,'What was your childhood nickname ?','In Progress','sekar','2021-12-23 12:02:13','Aravinth','2021-12-23 12:27:46','#286090'),
 (81,'Moorthy','P','Manufacturing','moorthy','$2b$10$5xTtAIJc9qirevcs/CgwPu6RHvGmQCo7SHf53SlACbfKgp7jtqLOu',1,'aravinth',NULL,'What is the name of your favorite childhood friend ?','In Progress','Aravinth','2021-12-23 12:32:25',NULL,NULL,'#286090');
/*!40000 ALTER TABLE `login001mb` ENABLE KEYS */;


--
-- Definition of table `machine001mb`
--

DROP TABLE IF EXISTS `machine001mb`;
CREATE TABLE `machine001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `mcode` varchar(50) NOT NULL,
  `mname` varchar(500) NOT NULL,
  `year` datetime NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `mtype` varchar(100) NOT NULL,
  `make` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `machine001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine001mb`
--

/*!40000 ALTER TABLE `machine001mb` DISABLE KEYS */;
INSERT INTO `machine001mb` (`sl_no`,`sslno`,`mcode`,`mname`,`year`,`capacity`,`mtype`,`make`,`location`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'TS/MC/01','LATHE MACHINE','2021-09-06 13:18:33','5LTR','10mm','Nokia','Shop Floor','Moorthy','2021-09-06 13:18:33','siva','2022-05-19 18:43:03'),
 (2,2,'TS/MC/02','JIG BORING MACHINE','2021-09-06 13:18:33','5LTR','10mm','Nokia','Shop Floor','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (3,1,'TS/MC/03','BENCH GRINDING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:03:50','Aravinth','2022-01-04 16:06:49'),
 (4,1,'TS/MC/4','BENCH GRINDING MACHINE','2021-01-09 05:30:00','10LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:07:17',NULL,NULL),
 (5,1,'TS/MC/5','CNC','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:09:16',NULL,NULL),
 (6,1,'TS/MC/6','BENCH GRINDING MACHINE','2021-01-09 05:30:00','10LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:12:31',NULL,NULL),
 (7,5,'TS/MC/3','JIG BORING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:14:59','siva','2022-05-20 17:21:49'),
 (8,7,'TS/MC/3','JIG BORING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:22:31','Aravinth','2022-01-04 17:39:31'),
 (9,1,'TS/MC/9','lathe','2021-12-28 05:30:00','15','10mm','nokia','first floor','latha','2022-01-05 11:56:37','latha','2022-01-05 11:59:11'),
 (11,1,'TS/MC/10','jig boring','2021-12-29 05:30:00','5','10mm','nokia','first floor','latha','2022-01-05 11:59:37','siva','2022-05-20 17:21:21');
/*!40000 ALTER TABLE `machine001mb` ENABLE KEYS */;


--
-- Definition of table `machine001wb`
--

DROP TABLE IF EXISTS `machine001wb`;
CREATE TABLE `machine001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `cpslno` int(11) NOT NULL,
  `checkpointdate` datetime NOT NULL,
  `observation` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `machine001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `machine001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine001wb`
--

/*!40000 ALTER TABLE `machine001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine001wb` ENABLE KEYS */;


--
-- Definition of table `materialinward001wb`
--

DROP TABLE IF EXISTS `materialinward001wb`;
CREATE TABLE `materialinward001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supfrom_slno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `dc_no` varchar(30) NOT NULL,
  `dc_date` datetime NOT NULL,
  `description` varchar(100) NOT NULL,
  `advised_qty` int(30) NOT NULL,
  `received_qty` int(30) NOT NULL,
  `accepted_qty` int(30) NOT NULL,
  `rejected_qty` int(30) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supfrom_slno` (`supfrom_slno`),
  CONSTRAINT `materialinward001wb_ibfk_1` FOREIGN KEY (`supfrom_slno`) REFERENCES `purchaseorder001wb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialinward001wb`
--

/*!40000 ALTER TABLE `materialinward001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialinward001wb` ENABLE KEYS */;


--
-- Definition of table `materialreqslip001wb`
--

DROP TABLE IF EXISTS `materialreqslip001wb`;
CREATE TABLE `materialreqslip001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `spare_slno` int(15) NOT NULL,
  `mrs_no` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `requestor_name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `spare_slno` (`spare_slno`),
  CONSTRAINT `materialreqslip001wb_ibfk_1` FOREIGN KEY (`spare_slno`) REFERENCES `spares001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialreqslip001wb`
--

/*!40000 ALTER TABLE `materialreqslip001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialreqslip001wb` ENABLE KEYS */;


--
-- Definition of table `payment001wb`
--

DROP TABLE IF EXISTS `payment001wb`;
CREATE TABLE `payment001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `saleorder_slno` int(11) NOT NULL,
  `pay_date` datetime NOT NULL,
  `pay_status` varchar(20) NOT NULL,
  `due_date` datetime NOT NULL,
  `gst_no` int(30) NOT NULL,
  `gst_percent` varchar(30) NOT NULL,
  `gst_amount` int(30) NOT NULL,
  `total_amount` int(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `saleorder_slno` (`saleorder_slno`),
  CONSTRAINT `payment001wb_ibfk_1` FOREIGN KEY (`saleorder_slno`) REFERENCES `salesorder001wb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment001wb`
--

/*!40000 ALTER TABLE `payment001wb` DISABLE KEYS */;
INSERT INTO `payment001wb` (`sl_no`,`saleorder_slno`,`pay_date`,`pay_status`,`due_date`,`gst_no`,`gst_percent`,`gst_amount`,`total_amount`,`remarks`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,3,'2022-04-21 00:00:00','Paid','2022-04-21 00:00:00',3435434,'24',960,4960,'good','siva','2022-04-20 16:03:44',NULL,NULL),
 (2,1,'2022-04-21 00:00:00','Paid','2022-04-22 00:00:00',246435,'18',45,295,'good','siva','2022-04-20 16:08:31','siva','2022-04-20 16:08:35');
/*!40000 ALTER TABLE `payment001wb` ENABLE KEYS */;


--
-- Definition of table `person001mb`
--

DROP TABLE IF EXISTS `person001mb`;
CREATE TABLE `person001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `maritalstatus` varchar(30) DEFAULT NULL,
  `bloodgroup` varchar(30) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `address3` varchar(50) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `mobileno` int(15) DEFAULT NULL,
  `workphoneno` int(11) DEFAULT NULL,
  `homephoneno` int(11) DEFAULT NULL,
  `primaryemail` varchar(30) DEFAULT NULL,
  `secondaryemail` varchar(30) DEFAULT NULL,
  `occupationtype` varchar(30) DEFAULT NULL,
  `occupationrole` varchar(30) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `UNI_firstname` (`firstname`),
  UNIQUE KEY `UNI_lastname` (`lastname`),
  UNIQUE KEY `UNI_dob` (`dob`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person001mb`
--

/*!40000 ALTER TABLE `person001mb` DISABLE KEYS */;
INSERT INTO `person001mb` (`person_id`,`firstname`,`lastname`,`age`,`dob`,`sex`,`maritalstatus`,`bloodgroup`,`address1`,`address2`,`address3`,`religion`,`city`,`state`,`country`,`zipcode`,`mobileno`,`workphoneno`,`homephoneno`,`primaryemail`,`secondaryemail`,`occupationtype`,`occupationrole`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'sivakumar','karunamoorthy',35,'1986-09-06 13:18:33','male','married','o+','#25, 7th Cross Rd','Narayana Garden','Thalakkudi-Tiruchirappalli','hindu','Trichy','TamilNadu','India',621216,98765432,98765432,98765432,'adc@gmail.com','adc@gmail.com','fulltime','manager','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,'latha','b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-01-20 08:59:58','latha','2022-02-09 12:07:18'),
 (3,'aravinth','a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-01-31 16:01:46','siva','2022-02-09 12:06:50'),
 (5,'chandrasekar','l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-01 16:54:02','latha','2022-02-03 12:52:44'),
 (8,'Kavitha','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 13:33:13','latha','2022-02-11 13:36:01'),
 (9,'selvam','r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 13:37:45',NULL,NULL),
 (10,'sfs','sfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 14:20:10',NULL,NULL),
 (11,'moorthy','p',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-24 13:39:48','latha','2022-02-24 13:40:01');
/*!40000 ALTER TABLE `person001mb` ENABLE KEYS */;


--
-- Definition of table `preventiveaction001mb`
--

DROP TABLE IF EXISTS `preventiveaction001mb`;
CREATE TABLE `preventiveaction001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `rcslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  KEY `rcslno` (`rcslno`),
  CONSTRAINT `preventiveaction001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `preventiveaction001mb_ibfk_2` FOREIGN KEY (`rcslno`) REFERENCES `rootcause001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventiveaction001mb`
--

/*!40000 ALTER TABLE `preventiveaction001mb` DISABLE KEYS */;
INSERT INTO `preventiveaction001mb` (`sl_no`,`sslno`,`rcslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,2,2,'Change belt in 2 month once','check the life time of belt','latha','2022-01-06 14:30:52',NULL,NULL),
 (3,1,3,'Don\'t keep near windows','take care of machine','latha','2022-01-06 14:33:15',NULL,NULL),
 (4,2,4,'Follow Specified Weight before operations','follow the machine rules','latha','2022-01-06 14:35:58','siva','2022-02-25 17:52:26');
/*!40000 ALTER TABLE `preventiveaction001mb` ENABLE KEYS */;


--
-- Definition of table `preventivechecklist001wb`
--

DROP TABLE IF EXISTS `preventivechecklist001wb`;
CREATE TABLE `preventivechecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `checkpointdate` datetime NOT NULL,
  `observation` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `preventivechecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `preventivechecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventivechecklist001wb`
--

/*!40000 ALTER TABLE `preventivechecklist001wb` DISABLE KEYS */;
INSERT INTO `preventivechecklist001wb` (`sl_no`,`mslno`,`cpslno`,`checkpointdate`,`observation`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (5,11,1,'2022-03-01 00:00:00','dsdvsd','siva','2022-03-07 14:10:46',NULL,NULL),
 (36,1,1,'2022-03-09 00:00:00','nice','siva','2022-03-09 14:09:23','siva','2022-03-09 14:09:55'),
 (37,1,9,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (38,1,10,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (39,1,11,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (40,1,13,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23','latha','2022-03-25 18:35:49'),
 (41,1,1,'2022-05-20 00:00:00','zz','siva','2022-05-18 17:31:05',NULL,NULL),
 (42,1,9,'2022-05-20 00:00:00','zxz','siva','2022-05-18 17:31:05',NULL,NULL),
 (43,1,10,'2022-05-20 00:00:00','12121','siva','2022-05-18 17:31:05',NULL,NULL),
 (44,1,11,'2022-05-20 00:00:00','1231','siva','2022-05-18 17:31:05',NULL,NULL),
 (45,1,13,'2022-05-20 00:00:00','123','siva','2022-05-18 17:31:05',NULL,NULL);
/*!40000 ALTER TABLE `preventivechecklist001wb` ENABLE KEYS */;


--
-- Definition of table `preventiveplan001wb`
--

DROP TABLE IF EXISTS `preventiveplan001wb`;
CREATE TABLE `preventiveplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `mslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  CONSTRAINT `preventiveplan001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventiveplan001wb`
--

/*!40000 ALTER TABLE `preventiveplan001wb` DISABLE KEYS */;
INSERT INTO `preventiveplan001wb` (`sl_no`,`mslno`,`status`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'P','2022-05-24 00:00:00','siva','2022-05-13 15:29:50','siva','2022-05-20 17:07:33'),
 (2,1,'A','2022-05-24 00:00:00','siva','2022-05-18 17:30:45',NULL,NULL),
 (3,1,'P','2022-05-24 00:00:00','siva','2022-05-19 18:41:07',NULL,NULL),
 (4,1,'P','2022-05-25 00:00:00','siva','2022-05-24 13:27:25',NULL,NULL),
 (5,1,'P','2022-05-25 00:00:00','siva','2022-05-24 13:28:21',NULL,NULL),
 (6,1,'A','2022-05-25 00:00:00','siva','2022-05-24 13:29:05',NULL,NULL),
 (7,1,'P','2022-05-31 00:00:00','siva','2022-05-24 13:29:50',NULL,NULL),
 (8,1,'P','2022-05-27 00:00:00','siva','2022-05-24 16:03:50',NULL,NULL),
 (9,1,'A','2022-05-27 00:00:00','siva','2022-05-24 17:34:27',NULL,NULL);
/*!40000 ALTER TABLE `preventiveplan001wb` ENABLE KEYS */;


--
-- Definition of table `prod001mb`
--

DROP TABLE IF EXISTS `prod001mb`;
CREATE TABLE `prod001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `pdno` int(50) NOT NULL,
  `pdname` varchar(500) NOT NULL,
  `details` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod001mb`
--

/*!40000 ALTER TABLE `prod001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod001mb` ENABLE KEYS */;


--
-- Definition of table `purchaseorder001wb`
--

DROP TABLE IF EXISTS `purchaseorder001wb`;
CREATE TABLE `purchaseorder001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_slno` int(15) NOT NULL,
  `consignee_slno` int(15) NOT NULL,
  `date` datetime NOT NULL,
  `purreq_slno` int(15) NOT NULL,
  `other_ref` varchar(50) NOT NULL,
  `dispatch_through` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `terms_delivery` varchar(100) NOT NULL,
  `supplier_from` varchar(150) NOT NULL,
  `suppquot_slno` int(15) NOT NULL,
  `HSN` varchar(50) NOT NULL,
  `part_no` varchar(50) NOT NULL,
  `due_on` datetime NOT NULL,
  `amount` int(15) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `purreq_slno` (`purreq_slno`),
  KEY `suppquot_slno` (`suppquot_slno`),
  KEY `company_slno` (`company_slno`),
  KEY `consignee_slno` (`consignee_slno`),
  CONSTRAINT `purchaseorder001wb_ibfk_1` FOREIGN KEY (`purreq_slno`) REFERENCES `purchasereqslip001wb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `purchaseorder001wb_ibfk_2` FOREIGN KEY (`suppquot_slno`) REFERENCES `supplierquotation001wb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `purchaseorder001wb_ibfk_3` FOREIGN KEY (`company_slno`) REFERENCES `companydetails001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `purchaseorder001wb_ibfk_4` FOREIGN KEY (`consignee_slno`) REFERENCES `consignee001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseorder001wb`
--

/*!40000 ALTER TABLE `purchaseorder001wb` DISABLE KEYS */;
INSERT INTO `purchaseorder001wb` (`sl_no`,`company_slno`,`consignee_slno`,`date`,`purreq_slno`,`other_ref`,`dispatch_through`,`destination`,`terms_delivery`,`supplier_from`,`suppquot_slno`,`HSN`,`part_no`,`due_on`,`amount`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (11,1,1,'2022-04-16 00:00:00',7,'new','new','new','new','new',1,'56745','23543','2022-04-18 00:00:00',250,'latha','2022-04-15 12:13:26','latha','2022-04-18 12:26:44'),
 (12,1,1,'2022-04-18 00:00:00',7,'new','new','new','new','new',3,'345646','4565467','2022-04-19 00:00:00',4000,'latha','2022-04-15 12:13:56','latha','2022-04-18 16:28:10'),
 (13,1,1,'2022-04-21 00:00:00',7,'new','new','new','new','new',1,'56756','345436','2022-04-22 00:00:00',250,'latha','2022-04-15 12:14:21','latha','2022-04-18 17:26:42'),
 (15,2,5,'2022-04-19 00:00:00',8,'sample','sample','sample','sample','sample',1,'457456','345546','2022-04-20 00:00:00',250,'latha','2022-04-15 12:15:17','latha','2022-04-18 16:28:19'),
 (16,2,5,'2022-04-20 00:00:00',8,'sample','sample','sample','sample','sample',3,'67453','672345','2022-04-20 00:00:00',4000,'latha','2022-04-15 12:15:48','latha','2022-04-18 12:25:36'),
 (17,2,5,'2022-04-19 00:00:00',8,'sample','sample','sample','sample','sample',3,'34546','544534','2022-04-21 00:00:00',4000,'latha','2022-04-15 12:16:16','latha','2022-04-18 16:28:28'),
 (21,1,2,'2022-04-21 00:00:00',8,'3434','34343','34343','34343','trims',4,'34343','3434','2022-04-21 00:00:00',250,'siva','2022-04-20 12:52:57','siva','2022-04-20 12:53:01');
/*!40000 ALTER TABLE `purchaseorder001wb` ENABLE KEYS */;


--
-- Definition of table `purchasereqslip001wb`
--

DROP TABLE IF EXISTS `purchasereqslip001wb`;
CREATE TABLE `purchasereqslip001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sparename_slno` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `prs_no` varchar(30) NOT NULL,
  `po_date` datetime NOT NULL,
  `req_date` datetime NOT NULL,
  `po_no` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sparename_slno` (`sparename_slno`),
  CONSTRAINT `purchasereqslip001wb_ibfk_1` FOREIGN KEY (`sparename_slno`) REFERENCES `spares001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasereqslip001wb`
--

/*!40000 ALTER TABLE `purchasereqslip001wb` DISABLE KEYS */;
INSERT INTO `purchasereqslip001wb` (`sl_no`,`sparename_slno`,`department`,`date`,`prs_no`,`po_date`,`req_date`,`po_no`,`description`,`quantity`,`remarks`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (7,2,'purchase','2022-03-28 00:00:00','4564','2022-03-30 00:00:00','2022-03-30 00:00:00','45323','tube','32','good','latha','2022-03-28 13:20:11','siva','2022-03-30 16:24:16'),
 (8,7,'purchase','2022-03-30 15:32:44','343535','2022-03-31 00:00:00','2022-03-31 00:00:00','345454','bolt','10mm','good','siva','2022-03-30 15:32:44','siva','2022-03-30 16:24:03');
/*!40000 ALTER TABLE `purchasereqslip001wb` ENABLE KEYS */;


--
-- Definition of table `registration001mb`
--

DROP TABLE IF EXISTS `registration001mb`;
CREATE TABLE `registration001mb` (
  `registerid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `securityanswer` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration001mb`
--

/*!40000 ALTER TABLE `registration001mb` DISABLE KEYS */;
INSERT INTO `registration001mb` (`registerid`,`firstname`,`lastname`,`domain`,`username`,`securityquestion`,`securityanswer`,`message`,`status`,`email`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (49,'sss','sss','Construction','tamil','What was your childhood nickname ?','ee','ee','In Progress','','','0000-00-00 00:00:00',NULL,NULL),
 (50,'abc','cde','Buying House','raj','In what city did you meet your spouse/significant other ?','aaa','aa','In Progress','','','0000-00-00 00:00:00',NULL,NULL),
 (51,'selvam S','R','Manufacturing','selvamRaja','In what city did you meet your spouse/significant other ?','dfg','sg','Authorization','selvamrsraja@gmail.com','','0000-00-00 00:00:00',NULL,NULL),
 (69,'latha','B','Manufacturing','latha','What is your oldest sibling\'s middle name ?','ghn','fd','New','latha0707hema@gmail.com','insertuser','2021-09-03 11:12:07',NULL,NULL),
 (70,'aaa','s','Calibration Labs','aaa','What school did you attend for sixth grade ?','dfs','sdfv','New','latha0707hema@gmail.com','insertuser','2021-09-03 11:19:04',NULL,NULL),
 (72,'fff','s','Construction','fff','What is the name of your favorite childhood friend ?','sss','xfdv','In Progress','hema0707latha@gmail.com','insertuser','2021-09-03 11:46:35','updateuser','2021-09-03 11:46:54'),
 (73,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:18:33',NULL,NULL),
 (74,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:15',NULL,NULL),
 (75,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:27',NULL,NULL),
 (76,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:28',NULL,NULL),
 (77,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:28',NULL,NULL),
 (78,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (79,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (80,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (81,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:41',NULL,NULL),
 (82,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:42',NULL,NULL),
 (83,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:53',NULL,NULL),
 (84,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:53',NULL,NULL),
 (85,'rizwana','Shahul Hameed','Manufacturing','rizwana','What was your childhood nickname ?','SS','ss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:25:01',NULL,NULL),
 (86,'rizwana','Shahul Hameed','Manufacturing','rizwana','What was your childhood nickname ?','SS','ss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:25:17',NULL,NULL),
 (87,'chandrasekaran','L','Manufacturing','sekar','What was your childhood nickname ?','chandru','good','In Progress','kavichandran877@gmail.com','siva','2021-10-22 16:41:43',NULL,NULL),
 (88,'Aravinth','A','Manufacturing','Aravinth','What was your childhood nickname ?','kaka','good','In Progress','ajayaravind797@gmail.com','sekar','2021-12-23 12:02:13','Aravinth','2021-12-23 12:27:45'),
 (89,'Moorthy','P','Manufacturing','moorthy','What is the name of your favorite childhood friend ?','aravinth','excellent','In Progress','moorthyp2096@gmail.com','Aravinth','2021-12-23 12:32:25',NULL,NULL);
/*!40000 ALTER TABLE `registration001mb` ENABLE KEYS */;


--
-- Definition of table `role001mb`
--

DROP TABLE IF EXISTS `role001mb`;
CREATE TABLE `role001mb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role001mb`
--

/*!40000 ALTER TABLE `role001mb` DISABLE KEYS */;
INSERT INTO `role001mb` (`id`,`rolename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'superadmin','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,'admin','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (3,'user','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (4,'guest','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33');
/*!40000 ALTER TABLE `role001mb` ENABLE KEYS */;


--
-- Definition of table `rootcause001mb`
--

DROP TABLE IF EXISTS `rootcause001mb`;
CREATE TABLE `rootcause001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `brslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  KEY `brslno` (`brslno`),
  CONSTRAINT `rootcause001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `rootcause001mb_ibfk_2` FOREIGN KEY (`brslno`) REFERENCES `breakdown001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rootcause001mb`
--

/*!40000 ALTER TABLE `rootcause001mb` DISABLE KEYS */;
INSERT INTO `rootcause001mb` (`sl_no`,`sslno`,`brslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,2,2,'Self Life Experied','Experied','latha','2022-01-06 13:56:12',NULL,NULL),
 (3,1,3,'Rain water sprayed in plugs','careless mistake','latha','2022-01-06 14:02:07',NULL,NULL),
 (4,2,4,'Over loaded operation','careless mistake','latha','2022-01-06 14:05:51',NULL,NULL);
/*!40000 ALTER TABLE `rootcause001mb` ENABLE KEYS */;


--
-- Definition of table `safetyequwb001`
--

DROP TABLE IF EXISTS `safetyequwb001`;
CREATE TABLE `safetyequwb001` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `seNo` varchar(200) NOT NULL,
  `pur` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safetyequwb001`
--

/*!40000 ALTER TABLE `safetyequwb001` DISABLE KEYS */;
INSERT INTO `safetyequwb001` (`sl_no`,`seNo`,`pur`,`stock`,`remark`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (22,'asa','as','as','asd','siva','2022-05-24 10:32:34',NULL,NULL);
/*!40000 ALTER TABLE `safetyequwb001` ENABLE KEYS */;


--
-- Definition of table `salesorder001wb`
--

DROP TABLE IF EXISTS `salesorder001wb`;
CREATE TABLE `salesorder001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `porder_slno` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `delivery_note` varchar(100) NOT NULL,
  `mode_pay` varchar(50) NOT NULL,
  `Ref_no_date` varchar(50) NOT NULL,
  `other_ref` varchar(50) NOT NULL,
  `buyer_order_no` varchar(50) NOT NULL,
  `buyer_date` datetime NOT NULL,
  `dispatch_doc_no` varchar(50) NOT NULL,
  `delivery_note_date` varchar(50) NOT NULL,
  `dispatch_through` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `bill_of_lading` varchar(50) NOT NULL,
  `motorvehicle_no` varchar(50) NOT NULL,
  `terms_delivery` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `porder_slno` (`porder_slno`),
  CONSTRAINT `salesorder001wb_ibfk_1` FOREIGN KEY (`porder_slno`) REFERENCES `purchaseorder001wb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesorder001wb`
--

/*!40000 ALTER TABLE `salesorder001wb` DISABLE KEYS */;
INSERT INTO `salesorder001wb` (`sl_no`,`porder_slno`,`invoice_no`,`date`,`delivery_note`,`mode_pay`,`Ref_no_date`,`other_ref`,`buyer_order_no`,`buyer_date`,`dispatch_doc_no`,`delivery_note_date`,`dispatch_through`,`destination`,`bill_of_lading`,`motorvehicle_no`,`terms_delivery`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,11,'547567','2022-04-21 00:00:00','new','45days','54756','546','5546','2022-04-22 00:00:00','546757','5465','new','trichy','land','547657','goods','latha','2022-04-18 18:00:17',NULL,NULL),
 (3,16,'54321','2022-04-21 00:00:00','samle','samle','samle','samle','order1','2022-04-28 00:00:00','42435','samle','samle','samle','samle','tn4232','done','siva','2022-04-20 16:01:33','siva','2022-04-20 16:01:37');
/*!40000 ALTER TABLE `salesorder001wb` ENABLE KEYS */;


--
-- Definition of table `spares001mb`
--

DROP TABLE IF EXISTS `spares001mb`;
CREATE TABLE `spares001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `msslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `spares` varchar(50) NOT NULL,
  `sparescost` int(11) DEFAULT NULL,
  `specification` varchar(50) NOT NULL,
  `leadtime` datetime DEFAULT NULL,
  `minimumstocklevel` int(11) DEFAULT '0',
  `reorderlevel` int(11) DEFAULT '0',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `msslno` (`msslno`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `spares001mb_ibfk_1` FOREIGN KEY (`msslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `spares001mb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spares001mb`
--

/*!40000 ALTER TABLE `spares001mb` DISABLE KEYS */;
INSERT INTO `spares001mb` (`sl_no`,`msslno`,`sslno`,`spares`,`sparescost`,`specification`,`leadtime`,`minimumstocklevel`,`reorderlevel`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,2,2,'Nozzle',2000,'8mm','2021-09-06 13:18:33',74,5,'rizwana','2021-09-06 13:18:33','siva','2022-03-07 12:05:07'),
 (7,6,1,'Belt',500,'standard','2021-09-06 13:18:33',2,4,'Aravinth','2022-01-04 17:10:37','siva','2022-03-04 10:07:13');
/*!40000 ALTER TABLE `spares001mb` ENABLE KEYS */;


--
-- Definition of table `status001mb`
--

DROP TABLE IF EXISTS `status001mb`;
CREATE TABLE `status001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `code_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status001mb`
--

/*!40000 ALTER TABLE `status001mb` DISABLE KEYS */;
INSERT INTO `status001mb` (`sl_no`,`code`,`code_group`,`name`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'machine_status',1,'Active','A','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (2,'machine_status',1,'Inactive','A','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (4,'machine_status',2,'ok','A','Aravinth','2022-01-04 17:28:03',NULL,NULL),
 (5,'machine_status',2,'Not ok','P','Aravinth','2022-01-04 17:29:17',NULL,NULL),
 (6,'machine_status',3,'Plan','A','Aravinth','2022-01-04 17:29:41',NULL,NULL),
 (7,'machine_status',3,'Achieved','P','Aravinth','2022-01-04 17:30:07',NULL,NULL),
 (8,'TS/MC/09',1,'plan','a','latha','2022-01-05 12:02:06',NULL,NULL);
/*!40000 ALTER TABLE `status001mb` ENABLE KEYS */;


--
-- Definition of table `suppchecklist001mb`
--

DROP TABLE IF EXISTS `suppchecklist001mb`;
CREATE TABLE `suppchecklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `activitysl_no` int(11) NOT NULL,
  `checkpoints_name` varchar(250) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `activitysl_no` (`activitysl_no`),
  CONSTRAINT `suppchecklist001mb_ibfk_1` FOREIGN KEY (`activitysl_no`) REFERENCES `activity001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppchecklist001mb`
--

/*!40000 ALTER TABLE `suppchecklist001mb` DISABLE KEYS */;
INSERT INTO `suppchecklist001mb` (`sl_no`,`activitysl_no`,`checkpoints_name`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Do the purchase documents clearly describe the item ordered including the material specification, technical data, test certificates and delivery requirements?','A','siva','2022-03-21 16:29:33',NULL,NULL),
 (2,2,'Are the orders made only on listed suppliers?','I','siva','2022-03-21 16:36:43','siva','2022-03-21 16:46:09'),
 (3,3,'Do the lists tally?','A','siva','2022-03-22 09:33:32',NULL,NULL),
 (4,4,'Are the 2nd tier suppliers approved by SMPL?','A','siva','2022-03-22 09:33:51',NULL,NULL),
 (5,5,'Do the specification tally?','A','siva','2022-03-22 09:34:20',NULL,NULL),
 (6,6,'Do the incoming inspection plan contain all the SMPL\'s requirement, checking method and checking frequency?','A','siva','2022-03-22 09:34:57',NULL,NULL),
 (7,7,'Are the records, complete in all respects and products, when cross checked conforming to plan?','A','siva','2022-03-22 09:36:25',NULL,NULL),
 (8,8,'Are they appropriate, accurate and calibrated?','A','siva','2022-03-22 09:37:07',NULL,NULL),
 (9,9,'Are the 1S, 2S and 3S activities of raw material storage / handling of acceptable standard?','A','siva','2022-03-22 09:37:55',NULL,NULL),
 (10,10,'Are the actions appropriate, timely and completed?','A','siva','2022-03-22 09:38:30',NULL,NULL),
 (11,11,'Is the 5S system practiced effectively?','A','siva','2022-03-22 09:40:19',NULL,NULL),
 (12,12,'Are the drawings are current as per latest revision?','A','siva','2022-03-22 09:41:02',NULL,NULL),
 (13,13,'Are the operation standards derived from control plan?','A','siva','2022-03-22 09:41:49',NULL,NULL),
 (14,13,'Do the operation standards complete, specifying what, when, where and how of controlling quality?','A','siva','2022-03-22 09:42:12',NULL,NULL),
 (15,13,'Do the operations standards correspond to the latest revision of the drawing?','A','siva','2022-03-22 09:42:41',NULL,NULL),
 (16,14,'Do the supplier practice 1st off and patrol inspection and records maintained?','A','siva','2022-03-22 09:43:32',NULL,NULL),
 (17,15,'Do the operators check components periodically?','A','siva','2022-03-22 09:44:32',NULL,NULL),
 (18,15,'Have the operators been trained for the job?','A','siva','2022-03-22 09:44:53',NULL,NULL),
 (19,16,'Are the gauges / instruments used adequate and appropriate?','A','siva','2022-03-22 09:46:46',NULL,NULL),
 (20,16,'Are they being calibrated on-time?','A','siva','2022-03-22 09:48:56',NULL,NULL),
 (21,17,'Are the jigs & fixtures used are of acceptable standard and properly maintained?','A','siva','2022-03-22 09:51:27',NULL,NULL),
 (22,17,'Are there any calibration systems for checking jigs and fixture and records maintained?','A','siva','2022-03-22 09:52:09',NULL,NULL),
 (23,18,'Are the containers used to achieve zero counting, zero transfer and zero damage?','A','siva','2022-03-22 10:37:48',NULL,NULL),
 (24,19,'Do the supplier have the data of critical major characteristics?','A','siva','2022-03-22 10:38:36',NULL,NULL),
 (25,19,'Has the supplier assessed a Cpk value for critical and major characteristics and are greater than 1.67?','A','siva','2022-03-22 10:38:50',NULL,NULL),
 (26,19,'Are the critical and major characteristics process monitored through control charts?','A','siva','2022-03-22 10:39:09',NULL,NULL),
 (27,19,'Has the supplier got a plan for improving not capable processes?','A','siva','2022-03-22 10:39:28',NULL,NULL),
 (28,20,'Are all rejections identified, segregated reasons recorded and disposed appropriately?','A','siva','2022-03-22 10:40:10',NULL,NULL),
 (29,20,'Has the supplier implemented the prioritised reduction plan for the rejections?','A','siva','2022-03-22 10:40:26',NULL,NULL),
 (30,21,'Are the special processes done at SMPL approved sources?','A','siva','2022-03-22 10:41:15',NULL,NULL),
 (31,21,'Are the special process parameters are controlled?','A','siva','2022-03-22 10:41:29',NULL,NULL),
 (32,21,'Are the quality checks defined?','A','siva','2022-03-22 10:41:45',NULL,NULL);
/*!40000 ALTER TABLE `suppchecklist001mb` ENABLE KEYS */;


--
-- Definition of table `supplierassessment001wb`
--

DROP TABLE IF EXISTS `supplierassessment001wb`;
CREATE TABLE `supplierassessment001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supp_slno` int(11) NOT NULL,
  `assess_slno` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supp_slno` (`supp_slno`),
  KEY `assess_slno` (`assess_slno`),
  CONSTRAINT `supplierassessment001wb_ibfk_1` FOREIGN KEY (`supp_slno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierassessment001wb_ibfk_2` FOREIGN KEY (`assess_slno`) REFERENCES `assessmentcriteria001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierassessment001wb`
--

/*!40000 ALTER TABLE `supplierassessment001wb` DISABLE KEYS */;
INSERT INTO `supplierassessment001wb` (`sl_no`,`supp_slno`,`assess_slno`,`score`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,5,1,9,'latha','2022-03-20 11:28:57','latha','2022-03-20 11:29:08'),
 (3,5,5,343,'siva','2022-05-18 17:31:20',NULL,NULL);
/*!40000 ALTER TABLE `supplierassessment001wb` ENABLE KEYS */;


--
-- Definition of table `supplierattendancereport001wb`
--

DROP TABLE IF EXISTS `supplierattendancereport001wb`;
CREATE TABLE `supplierattendancereport001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supregsl_no` int(11) NOT NULL,
  `trainingsl_no` int(11) NOT NULL,
  `trainer_name` varchar(150) NOT NULL,
  `trainee_name` varchar(150) NOT NULL,
  `trainee_role` varchar(150) NOT NULL,
  `attendancestatus` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `trainingsl_no` (`trainingsl_no`),
  CONSTRAINT `supplierattendancereport001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierattendancereport001wb_ibfk_2` FOREIGN KEY (`trainingsl_no`) REFERENCES `trainingplan001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierattendancereport001wb`
--

/*!40000 ALTER TABLE `supplierattendancereport001wb` DISABLE KEYS */;
INSERT INTO `supplierattendancereport001wb` (`sl_no`,`supregsl_no`,`trainingsl_no`,`trainer_name`,`trainee_name`,`trainee_role`,`attendancestatus`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,5,5,'ramu','SARAVANAKUMAR P','PRODUCTION MANAGER','P','2022-03-24 00:00:00','latha','2022-03-24 13:18:32','latha','2022-03-24 13:18:37'),
 (3,5,6,'sekar','GANESH','PROGRAMMER','P','2022-03-27 00:00:00','latha','2022-03-25 10:57:19',NULL,NULL),
 (4,6,5,'LATHA','RAMESH','PRODUCTION ','P','2022-03-27 00:00:00','latha','2022-03-25 11:02:05',NULL,NULL);
/*!40000 ALTER TABLE `supplierattendancereport001wb` ENABLE KEYS */;


--
-- Definition of table `supplieraudit001wb`
--

DROP TABLE IF EXISTS `supplieraudit001wb`;
CREATE TABLE `supplieraudit001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supregslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregslno` (`supregslno`),
  CONSTRAINT `supplieraudit001wb_ibfk_1` FOREIGN KEY (`supregslno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplieraudit001wb`
--

/*!40000 ALTER TABLE `supplieraudit001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplieraudit001wb` ENABLE KEYS */;


--
-- Definition of table `supplierquotation001wb`
--

DROP TABLE IF EXISTS `supplierquotation001wb`;
CREATE TABLE `supplierquotation001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `purchasereq_slno` int(11) NOT NULL,
  `supplier_slno` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `quotation_no` varchar(30) NOT NULL,
  `quotation_date` datetime NOT NULL,
  `validity` datetime NOT NULL,
  `person_name` varchar(30) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` int(15) NOT NULL,
  `price` int(15) NOT NULL,
  `number` varchar(30) NOT NULL,
  `mail_id` varchar(30) NOT NULL,
  `terms_condition` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `purchasereq_slno` (`purchasereq_slno`),
  KEY `supplier_slno` (`supplier_slno`),
  CONSTRAINT `supplierquotation001wb_ibfk_1` FOREIGN KEY (`purchasereq_slno`) REFERENCES `purchasereqslip001wb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierquotation001wb_ibfk_2` FOREIGN KEY (`supplier_slno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierquotation001wb`
--

/*!40000 ALTER TABLE `supplierquotation001wb` DISABLE KEYS */;
INSERT INTO `supplierquotation001wb` (`sl_no`,`purchasereq_slno`,`supplier_slno`,`address`,`quotation_no`,`quotation_date`,`validity`,`person_name`,`description`,`quantity`,`price`,`number`,`mail_id`,`terms_condition`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,7,6,'Trichy','234334','2022-03-31 00:00:00','2022-03-31 00:00:00','sekar','10mm',5,50,'1323243343','test@gmail.com','true','siva','2022-03-29 17:17:37','siva','2022-03-30 13:19:36'),
 (3,7,6,'trichy','4355','2022-04-01 00:00:00','2022-04-10 00:00:00','hema','20mm',20,200,'1234567890','test@gmail.com','All conditions Applied','siva','2022-03-31 15:00:31',NULL,NULL),
 (4,7,5,'trichy','45646453','2022-04-27 00:00:00','2022-04-21 00:00:00','sekar','5mm',5,50,'9976604078','sekar@gmail.com','all condition applied','siva','2022-04-20 12:22:41','siva','2022-04-20 16:07:02');
/*!40000 ALTER TABLE `supplierquotation001wb` ENABLE KEYS */;


--
-- Definition of table `supplierregistration001mb`
--

DROP TABLE IF EXISTS `supplierregistration001mb`;
CREATE TABLE `supplierregistration001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(40) NOT NULL,
  `supplier_code` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `gstin` varchar(30) NOT NULL,
  `certification` varchar(50) NOT NULL,
  `nature` varchar(50) NOT NULL,
  `product_desc` varchar(100) NOT NULL,
  `reputed_cust` varchar(50) NOT NULL,
  `concern` varchar(100) NOT NULL,
  `other_Info` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierregistration001mb`
--

/*!40000 ALTER TABLE `supplierregistration001mb` DISABLE KEYS */;
INSERT INTO `supplierregistration001mb` (`sl_no`,`supplier_name`,`supplier_code`,`address`,`contact`,`gstin`,`certification`,`nature`,`product_desc`,`reputed_cust`,`concern`,`other_Info`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (5,'G.R. & COMPANY','MPV/RMS/001','NO.688/1A, 688/1B2B, SRI SAI MANOR, VASAVI STREET, BEHIND KARUR VYSYA BANK, HOSUR-635109','9789772661','2345678','ISO 9001:2015 CERTIFIED','Manufacturer','BOLTS WASHERS','ABC LIMITED','no','no','latha','2022-03-18 18:38:47',NULL,NULL),
 (6,'TRMIS','MPV/RMS/002','Trichy','23544673','2435','ISO3244','Manufacturer','Bolt','LIMITED','no','no','latha','2022-03-25 11:00:13',NULL,NULL);
/*!40000 ALTER TABLE `supplierregistration001mb` ENABLE KEYS */;


--
-- Definition of table `supplierreport001wb`
--

DROP TABLE IF EXISTS `supplierreport001wb`;
CREATE TABLE `supplierreport001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supregsl_no` int(11) NOT NULL,
  `activesl_no` int(11) NOT NULL,
  `supchecksl_no` int(11) NOT NULL,
  `observation` varchar(250) NOT NULL,
  `audit_score` int(20) NOT NULL,
  `NCR_ref` int(20) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `activesl_no` (`activesl_no`),
  KEY `supchecksl_no` (`supchecksl_no`),
  CONSTRAINT `supplierreport001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierreport001wb_ibfk_2` FOREIGN KEY (`activesl_no`) REFERENCES `activity001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierreport001wb_ibfk_3` FOREIGN KEY (`supchecksl_no`) REFERENCES `suppchecklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierreport001wb`
--

/*!40000 ALTER TABLE `supplierreport001wb` DISABLE KEYS */;
INSERT INTO `supplierreport001wb` (`sl_no`,`supregsl_no`,`activesl_no`,`supchecksl_no`,`observation`,`audit_score`,`NCR_ref`,`remarks`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,5,1,1,'good',50,15,'good','siva','2022-03-21 18:44:41',NULL,NULL),
 (3,6,8,8,'good',8,45646,'good','latha','2022-03-25 16:34:49','latha','2022-03-25 16:34:52');
/*!40000 ALTER TABLE `supplierreport001wb` ENABLE KEYS */;


--
-- Definition of table `suppliertrainingplan001wb`
--

DROP TABLE IF EXISTS `suppliertrainingplan001wb`;
CREATE TABLE `suppliertrainingplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `supregsl_no` int(11) NOT NULL,
  `trainingsl_no` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `trainingsl_no` (`trainingsl_no`),
  CONSTRAINT `suppliertrainingplan001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `suppliertrainingplan001wb_ibfk_2` FOREIGN KEY (`trainingsl_no`) REFERENCES `trainingplan001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliertrainingplan001wb`
--

/*!40000 ALTER TABLE `suppliertrainingplan001wb` DISABLE KEYS */;
INSERT INTO `suppliertrainingplan001wb` (`sl_no`,`supregsl_no`,`trainingsl_no`,`status`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (11,5,5,'P','2022-03-31 00:00:00','siva','2022-03-31 12:52:55',NULL,NULL);
/*!40000 ALTER TABLE `suppliertrainingplan001wb` ENABLE KEYS */;


--
-- Definition of table `systemproperties001mb`
--

DROP TABLE IF EXISTS `systemproperties001mb`;
CREATE TABLE `systemproperties001mb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemproperties001mb`
--

/*!40000 ALTER TABLE `systemproperties001mb` DISABLE KEYS */;
INSERT INTO `systemproperties001mb` (`ID`,`name`,`description`,`type`,`status`) VALUES 
 (1,'Login.Domain','Manufacturing','Domain','Y'),
 (2,'Login.Domain','Construction','Domain','Y'),
 (3,'Login.Domain','Buying House','Domain','Y'),
 (4,'Login.Domain','Calibration Labs','Domain','Y'),
 (5,'Login.Domain','School','Domain','Y'),
 (6,'Registration.SecurityQuestion','What was your childhood nickname ?','SecurityQuestion','Y'),
 (7,'Registration.SecurityQuestion','In what city did you meet your spouse/significant other ?','SecurityQuestion','Y'),
 (8,'Registration.SecurityQuestion','What is the name of your favorite childhood friend ?','SecurityQuestion','Y'),
 (9,'Registration.SecurityQuestion','What street did you live on in third grade ?','SecurityQuestion','Y'),
 (10,'Registration.SecurityQuestion','What is your oldest sibling\'s middle name ?','SecurityQuestion','Y'),
 (11,'Registration.SecurityQuestion','What school did you attend for sixth grade ?','SecurityQuestion','Y'),
 (12,'Item.Status','To Deliver','Status','Y'),
 (13,'Item.Status','To Bill','Status','Y'),
 (14,'Item.Status','Draft','Status','Y'),
 (15,'Item.Status','Completed','Status','Y'),
 (16,'Item.Status','Closed','Status','Y'),
 (17,'Item.Status','Cancelled','Status','Y'),
 (18,'EmpStatus.status','Active','status','Y'),
 (19,'EmpStatus.status','Inactive','status','Y'),
 (20,'EmpGender.gender','Male','gender','Y'),
 (21,'EmpGender.gender','Female','gender','Y'),
 (22,'Recruit.JobOpening','open','JobOpening','Y'),
 (23,'Recruit.JobOpening','closed','JobOpening','Y'),
 (24,'Recruit.JobApplicant','open','JobApplicant','Y'),
 (25,'Recruit.JobApplicant','replied','JobApplicant','Y'),
 (26,'Recruit.JobApplicant','rejected','JobApplicant','Y'),
 (27,'Recruit.JobApplicant','hold','JobApplicant','Y'),
 (28,'Recruit.OfferLetter','Draft','OfferLetter','Y'),
 (29,'Recruit.OfferLetter','Submitted','OfferLetter','Y'),
 (30,'Recruit.OfferLetter','Cancelled','OfferLetter','Y'),
 (31,'Recruit.OfferLetter','Queued for Saving','OfferLetter','Y'),
 (32,'Recruit.OfferLetter','Queued for Submission','OfferLetter','Y'),
 (33,'Recruit.OfferLetter','Queued for Cancellation','OfferLetter','Y'),
 (34,'Name.Prefix','Mr','Prefix','Y'),
 (35,'Name.Prefix','Mrs','Prefix','Y'),
 (36,'Name.Prefix','Ms','Prefix','Y'),
 (37,'Name.Prefix','Other','Prefix','Y'),
 (38,'Leave.leaveApp','Open','leaveApp','Y'),
 (39,'Leave.leaveApp','Approved','leaveApp','Y'),
 (40,'Leave.leaveApp','Rejected','leaveApp','Y'),
 (41,'Leave.leaveType','Sick','leaveType','Y'),
 (42,'Leave.leaveType','Casual','leaveType','Y'),
 (43,'Leave.leaveType','Vacation','leaveType','Y'),
 (44,'Leave.leaveType','Paternity','leaveType','Y'),
 (45,'Leave.leaveType','Maternity','leaveType','Y'),
 (46,'Leave.leaveType','Privilege','leaveType','Y'),
 (47,'Leave.leaveType','Compensetory','leaveType','Y'),
 (48,'Holiday.Week','Monday','Week','Y'),
 (49,'Holiday.Week','Tuesday','Week','Y'),
 (50,'Holiday.Week','Wednesday','Week','Y'),
 (51,'Holiday.Week','Thursday','Week','Y'),
 (52,'Holiday.Week','Friday','Week','Y'),
 (53,'Holiday.Week','Saturday','Week','Y'),
 (54,'Holiday.Week','Sunday','Week','Y'),
 (55,'processpr.Month','1','Month','Y'),
 (56,'processpr.Month','2','Month','Y'),
 (57,'processpr.Month','3','Month','Y'),
 (58,'processpr.Month','4','Month','Y'),
 (59,'processpr.Month','5','Month','Y'),
 (60,'processpr.Month','6','Month','Y'),
 (61,'processpr.Month','7','Month','Y'),
 (62,'processpr.Month','8','Month','Y'),
 (63,'processpr.Month','9','Month','Y'),
 (64,'processpr.Month','10','Month','Y'),
 (65,'processpr.Month','11','Month','Y'),
 (66,'processpr.Month','12','Month','Y'),
 (67,'Salary.Mode','Yes','Mode','Y'),
 (68,'Salary.Mode','No','Mode','Y'),
 (69,'Expense.Type','Food','Type','Y'),
 (70,'Expense.Type','Medical','Type','Y'),
 (71,'Expense.Type','Travel','Type','Y'),
 (72,'Expense.Type','Calls','Type','Y'),
 (73,'Expense.Type','Others','Type','Y'),
 (74,'Product.Planning','Sales Order','Planning','Y'),
 (75,'Product.Planning','Material Request','Planning','Y'),
 (76,'Product.Planning','Material Delivery','Planning','Y'),
 (77,'Itembom.status','Enabled','status','Y'),
 (78,'Itembom.status','Variant','status','Y'),
 (79,'Itembom.status','Template','status','Y'),
 (80,'Itembom.status','Disabled','status','Y'),
 (81,'Item.Group','Products','Group','Y'),
 (82,'Item.Group','Raw Materials','Group','Y'),
 (83,'Item.Group','Sub Assemblies','Group','Y'),
 (84,'Item.Group','All ItemGroups','Group','Y'),
 (85,'Manufacture.List','Sales-WPL','List','Y'),
 (86,'Manufacture.List','Supplier-WPL','List','Y'),
 (87,'Manufacture.List','Work-in Progress-WPL','List','Y'),
 (88,'Manufacture.List','Finished Goods-WPL','List','Y'),
 (89,'Manufacture.List','All Warehouses-WPL','List','Y'),
 (90,'PRMatReq.Type','Purchase','Type','Y'),
 (91,'PRMatReq.Type','Material Transfer','Type','Y'),
 (92,'PRMatReq.Type','Material Issue','Type','Y'),
 (93,'PRMatReq.Type','Manufacture','Type','Y'),
 (94,'PRSupp.Type','Asiatic Solution','Type','Y'),
 (95,'PRSupp.Type','Eagle Hardware','Type','Y'),
 (96,'PRSupp.Type','KSMerchandise','Type','Y'),
 (97,'PRSupp.Type','New World Reality','Type','Y'),
 (98,'PRSupp.Type','HomeBase','Type','Y'),
 (99,'PRSupp.Type','Scotier','Type','Y'),
 (100,'PRSupp.Type','HeliosAir','Type','Y'),
 (101,'PRRawmat.List','Yes','List','Y'),
 (102,'PRRawmat.List','No','List','Y'),
 (103,'SuAddress.Type','Billing','Type','Y'),
 (104,'SuAddress.Type','Shipping','Type','Y'),
 (105,'SuAddress.Type','Office','Type','Y'),
 (106,'SuAddress.Type','Personal','Type','Y'),
 (107,'SuAddress.Type','Plant','Type','Y'),
 (108,'SuAddress.Type','Postal','Type','Y'),
 (109,'SuAddress.Type','Shop','Type','Y'),
 (110,'SuAddress.Type','Subsidiary','Type','Y'),
 (111,'SuAddress.Type','Warehouse','Type','Y'),
 (112,'SuAddress.Type','Other','Type','Y'),
 (113,'Supplier.Type','Distributor','Type','Y'),
 (114,'Supplier.Type','Electrical','Type','Y'),
 (115,'Supplier.Type','Hardware','Type','Y'),
 (116,'Supplier.Type','Local','Type','Y'),
 (117,'Supplier.Type','Pharmaceutical','Type','Y'),
 (118,'Supplier.Type','Raw Material','Type','Y'),
 (119,'Supplier.Type','Services','Type','Y'),
 (120,'Supplier.Status','Open','Status','Y'),
 (121,'Supplier.Status','Enabled','Status','Y'),
 (122,'Supplier.Status','Passive','Status','Y'),
 (123,'Supplier.Status','Replied','Status','Y'),
 (124,'Putree.type','Supplier Type','type','Y'),
 (125,'Putree.type','Supplier','type','Y'),
 (126,'Putree.type','Item Group','type','Y'),
 (127,'Putree.type','Item','type','Y'),
 (128,'PuBase.type','Purchase Invoice','type','Y'),
 (129,'PuBase.type','Purchase Order','type','Y'),
 (130,'PuBase.type','Purchase Receipt','type','Y'),
 (131,'valqty.choose','Value','choose','Y'),
 (132,'valqty.choose','Quantity','choose','Y'),
 (133,'range.type','Daily','type','Y'),
 (134,'range.type','Monthly','type','Y'),
 (135,'range.type','Weekly','type','Y'),
 (136,'range.type','Quarterly','type','Y'),
 (137,'range.type','Half-Yearly','type','Y'),
 (138,'range.type','Yearly','type','Y'),
 (139,'crms.status','Lead','status','Y'),
 (140,'crms.status','Replied','status','Y'),
 (141,'crms.status','Open','status','Y'),
 (142,'crms.status','Opportunity','status','Y'),
 (143,'crms.status','Interested','status','Y'),
 (144,'crms.status','Converted','status','Y'),
 (145,'crms.status','Do Not Contact','status','Y'),
 (146,'crmscust.status','Open','status','Y'),
 (147,'crmscust.status','Dormant','status','Y'),
 (148,'crmscust.status','Active','status','Y'),
 (149,'crmcontact.status','Passive','status','Y'),
 (150,'crmcontact.status','Open','status','Y'),
 (151,'crmcontact.status','Replied','status','Y'),
 (152,'crmoppo.type','Sales','type','Y'),
 (153,'crmoppo.type','Maintainence','type','Y'),
 (154,'crmoppo.from','Lead','from','Y'),
 (155,'crmoppo.from','Customer','from','Y'),
 (156,'crmsoppo.status','Open','status','Y'),
 (157,'crmsoppo.status','Quotation','status','Y'),
 (158,'crmsoppo.status','Converted','status','Y'),
 (159,'crmsoppo.status','Lost','status','Y'),
 (160,'crmsoppo.status','Replied','status','Y'),
 (161,'crmsoppo.status','Closed','status','Y'),
 (162,'crmcommunics.status','Open','status','Y'),
 (163,'crmcommunics.status','Replied','status','Y'),
 (164,'crmcommunics.status','Closed','status','Y'),
 (165,'crmcommunics.status','Linked','status','Y'),
 (166,'crmcommunics.sentrec','Sent','sentrec','Y'),
 (167,'crmcommunics.sentrec','Received','sentrec','Y'),
 (168,'inactivecust.type','Sales Person','type','Y'),
 (169,'inactivecust.type','Sales Invoice','type','Y'),
 (170,'stktransent.title','Material issue','title','Y'),
 (171,'stktransent.title','Material Receipt','title','Y'),
 (172,'stktransent.title','Material Transfer','title','Y'),
 (173,'stktransent.title','Material Transfer for Manufacture','title','Y'),
 (174,'stktransent.title','Manufacture','title','Y'),
 (175,'stktransent.title','Replace','title','Y'),
 (176,'stktransent.title','Sub-Contract','title','Y'),
 (177,'stkvoucher.type','Delivery Note','type','Y'),
 (178,'stkvoucher.type','Purchase Receipt','type','Y'),
 (179,'stkvoucher.type','Stock Entry','type','Y'),
 (180,'stkvoucher.type','Sales inVoice','type','Y'),
 (181,'shipping.status','Enabled','status','Y'),
 (182,'shipping.status','Disabled','status','Y'),
 (183,'receiptdoc.type','Purchase Invoice','type','Y'),
 (184,'receiptdoc.type','Purchase Receipt','type','Y'),
 (185,'itemnaming.select','ItemCode','select','Y'),
 (186,'itemnaming.select','NamingServices','select','Y'),
 (187,'defvalue.method','FIFO','method','Y'),
 (188,'defvalue.method','Moving Average','method','Y'),
 (189,'party.type','Customer','type','Y'),
 (190,'party.type','Supplier','type','Y'),
 (191,'letterhead.list','Manager','list','Y'),
 (192,'letterhead.list','Human Resource','list','Y'),
 (193,'letterhead.list','Finance head','list','Y'),
 (194,'account.type','Cost of Goods Sold','type','Y'),
 (195,'account.type','Sales','type','Y'),
 (196,'account.type','Debtors','type','Y'),
 (197,'account.type','National Bank','type','Y'),
 (198,'account.type','Cash','type','Y'),
 (199,'account.type','Stores','type','Y'),
 (200,'account.type','Creditors','type','Y'),
 (201,'account.type','Freight and Forwarding','type','Y'),
 (202,'account.type','Changes','type','Y'),
 (203,'account.type','Stock Received','type','Y'),
 (204,'account.type','Not Billed','type','Y'),
 (205,'payment.mode','Cash','mode','Y'),
 (206,'payment.mode','Wire Transfer','mode','Y'),
 (207,'payment.mode','Check','mode','Y'),
 (208,'payment.mode','Credit Card','mode','Y'),
 (209,'payment.mode','Bank Draft','mode','Y'),
 (210,'currency.type','INR','type','Y'),
 (211,'currency.type','USD','type','Y'),
 (212,'currency.type','EUR','type','Y'),
 (213,'currency.type','JPN','type','Y'),
 (214,'payment.type','Receive','type','Y'),
 (215,'payment.type','Pay','type','Y'),
 (216,'payment.type','Internal Transfer','type','Y'),
 (217,'payreq.status','Paid','status','Y'),
 (218,'payreq.status','Initiated','status','Y'),
 (219,'payreq.status','Failed','status','Y'),
 (220,'payreq.status','Cancelled','status','Y'),
 (221,'payreq.status','Draft','status','Y'),
 (222,'journal.satus','Bank Entry','satus','Y'),
 (223,'journal.satus','Cash Entry','satus','Y'),
 (224,'journal.satus','Credit Card Entry','satus','Y'),
 (225,'journal.satus','Debit Note','satus','Y'),
 (226,'journal.satus','Credit Note','satus','Y'),
 (227,'journal.satus','Centre Entry','satus','Y'),
 (228,'journal.satus','Excise Entry','satus','Y'),
 (229,'journal.satus','Wire off Entry','satus','Y'),
 (230,'journal.satus','Opening Entry','satus','Y'),
 (231,'journal.satus','Depreciation Entry','satus','Y'),
 (232,'accounttype.name','Savings','name','Y'),
 (233,'accounttype.name','Current','name','Y'),
 (234,'company.domain','Manufacturing','domain','Y'),
 (235,'company.domain','IT','domain','Y'),
 (236,'company.domain','BPO','domain','Y'),
 (237,'chartacc.type','Standard','type','Y'),
 (238,'chartacc.type','Customized','type','Y'),
 (239,'task.status','Accepted','status','Y'),
 (240,'task.status','Approved','status','Y'),
 (241,'task.status','Assigned','status','Y'),
 (242,'task.status','AutoReject','status','Y'),
 (243,'task.status','Closed','status','Y'),
 (244,'task.status','Completed','status','Y'),
 (245,'task.status','Failed','status','Y'),
 (246,'task.status','In Planning','status','Y'),
 (247,'task.status','In Progress','status','Y'),
 (248,'task.status','Interrupted','status','Y'),
 (249,'task.status','Not Started','status','Y'),
 (250,'task.status','On hold','status','Y'),
 (251,'task.status','Open','status','Y'),
 (252,'task.status','Planned','status','Y'),
 (253,'task.status','Rejected','status','Y'),
 (254,'task.status','Unassigned','status','Y'),
 (255,'task.status','Waiting for Approval','status','Y'),
 (256,'Working','Working','task.status','Y'),
 (257,'Receivable','Receivable','type.account','Y'),
 (258,'type.account','Payable','account','Y'),
 (259,'bc.type','Bank','type','Y'),
 (260,'bc.type','Cash','type','Y'),
 (261,'month.name','January','name','Y'),
 (262,'month.name','February','name','Y'),
 (263,'month.name','March','name','Y'),
 (264,'month.name','April','name','Y'),
 (265,'month.name','May','name','Y'),
 (266,'month.name','June','name','Y'),
 (267,'month.name','July','name','Y'),
 (268,'month.name','August','name','Y'),
 (269,'month.name','September','name','Y'),
 (270,'month.name','October','name','Y'),
 (271,'month.name','November','name','Y'),
 (272,'month.name','December','name','Y'),
 (273,'attend.status','Present','status','Y'),
 (274,'attend.status','Absent','status','Y'),
 (275,'emp.holiday','Sunday','holiday','Y'),
 (276,'emp.holiday','Monday','holiday','Y'),
 (277,'emp.holiday','Tuesday','holiday','Y'),
 (278,'emp.holiday','Wednesday','holiday','Y'),
 (279,'emp.holiday','Thursday','holiday','Y'),
 (280,'emp.holiday','Friday','holiday','Y'),
 (281,'emp.holiday','Saturday','holiday','Y'),
 (282,'purchase.taxstatus','Enabled','taxstatus','Y'),
 (283,'purchase.taxstatus','Disabled','taxstatus','Y'),
 (284,'exceed.type','Warn','type','Y'),
 (285,'exceed.type','Stop','type','Y'),
 (286,'exceed.type','Ignore','type','Y'),
 (287,'ProdOrder.status','Draft','status','Y'),
 (288,'ProdOrder.status','Notstarted','status','Y'),
 (289,'ProdOrder.status','Submitted','status','Y'),
 (290,'ProdOrder.status','Stopped','status','Y'),
 (291,'ProdOrder.status','Unstopped','status','Y'),
 (292,'ProdOrder.status','In-Process','status','Y'),
 (293,'ProdOrder.status','Completed','status','Y'),
 (294,'ProdOrder.status','Cancelled','status','Y'),
 (295,'Dummy.status','Dummy1','dummy','Y'),
 (296,'Dummy.status','Dummy2','dummy','Y'),
 (297,'Dummy.status','Dummy3','dummy','Y'),
 (298,'Year.status','2020','year','Y'),
 (299,'Year.status','2021','year','Y'),
 (300,'Year.status','2022','year','Y'),
 (301,'Year.status','2023','year','Y'),
 (302,'Year.status','2024','year','Y'),
 (303,'Year.status','2025','year','Y'),
 (304,'StartYear.status','2021','startyear','Y'),
 (305,'StartYear.status','2022','startyear','Y'),
 (306,'StartYear.status','2023','startyear','Y'),
 (307,'StartYear.status','2024','startyear','Y'),
 (308,'StartYear.status','2025','startyear','Y'),
 (309,'StartYear.status','2026','startyear','Y'),
 (310,'StartYear.status','2027','startyear','Y'),
 (311,'StartYear.status','2028','startyear','Y'),
 (312,'StartYear.status','2029','startyear','Y'),
 (313,'StartYear.status','2030','startyear','Y'),
 (314,'StartYear.status','2031','startyear','Y'),
 (315,'StartYear.status','2032','startyear','Y'),
 (316,'StartYear.status','2033','startyear','Y'),
 (317,'StartYear.status','2034','startyear','Y'),
 (318,'StartYear.status','2035','startyear','Y'),
 (319,'StartYear.status','2036','startyear','Y'),
 (320,'StartYear.status','2037','startyear','Y'),
 (321,'StartYear.status','2038','startyear','Y'),
 (322,'StartYear.status','2039','startyear','Y'),
 (323,'StartYear.status','2040','startyear','Y'),
 (324,'EndYear.status','2021','endyear','Y'),
 (325,'EndYear.status','2022','endyear','Y'),
 (326,'EndYear.status','2023','endyear','Y'),
 (327,'EndYear.status','2024','endyear','Y'),
 (328,'EndYear.status','2025','endyear','Y'),
 (329,'EndYear.status','2026','endyear','Y'),
 (330,'EndYear.status','2027','endyear','Y'),
 (331,'EndYear.status','2028','endyear','Y'),
 (332,'EndYear.status','2029','endyear','Y'),
 (333,'EndYear.status','2030','endyear','Y'),
 (334,'EndYear.status','2031','endyear','Y'),
 (335,'EndYear.status','2032','endyear','Y'),
 (336,'EndYear.status','2033','endyear','Y'),
 (337,'EndYear.status','2034','endyear','Y'),
 (338,'EndYear.status','2035','endyear','Y'),
 (339,'EndYear.status','2036','endyear','Y'),
 (340,'EndYear.status','2037','endyear','Y'),
 (341,'EndYear.status','2038','endyear','Y'),
 (342,'EndYear.status','2039','endyear','Y'),
 (343,'EndYear.status','2040','endyear','Y'),
 (344,'Register.status','In Progress','register','Y'),
 (345,'Register.status','Pending','register','Y'),
 (346,'Register.status','Cancel','register','Y'),
 (347,'Register.status','Authorization','register','Y'),
 (348,'Register.status','New','register','Y');
/*!40000 ALTER TABLE `systemproperties001mb` ENABLE KEYS */;


--
-- Definition of table `tool001mb`
--

DROP TABLE IF EXISTS `tool001mb`;
CREATE TABLE `tool001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `pdno` int(50) NOT NULL,
  `Fix1` varchar(500) NOT NULL,
  `Fix2` varchar(500) NOT NULL,
  `Fix3` varchar(500) NOT NULL,
  `Fix4` varchar(500) NOT NULL,
  `Fix5` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tool001mb`
--

/*!40000 ALTER TABLE `tool001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool001mb` ENABLE KEYS */;


--
-- Definition of table `trainingplan001mb`
--

DROP TABLE IF EXISTS `trainingplan001mb`;
CREATE TABLE `trainingplan001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `trainingname` varchar(150) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainingplan001mb`
--

/*!40000 ALTER TABLE `trainingplan001mb` DISABLE KEYS */;
INSERT INTO `trainingplan001mb` (`sl_no`,`trainingname`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (5,'ROOT CAUSE ANALYSIS, CAPA & EFFECTIVENESS','A','latha','2022-03-23 17:37:12','latha','2022-03-23 17:37:19'),
 (6,'PPAP DOCUMENTS PREPARETION','A','latha','2022-03-23 17:37:33',NULL,NULL);
/*!40000 ALTER TABLE `trainingplan001mb` ENABLE KEYS */;


--
-- Definition of table `user001mb`
--

DROP TABLE IF EXISTS `user001mb`;
CREATE TABLE `user001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `dpslno` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `securityquestion` varchar(250) NOT NULL,
  `securityanswer` varchar(250) NOT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `dpslno` (`dpslno`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `user001mb_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person001mb` (`person_id`),
  CONSTRAINT `user001mb_ibfk_2` FOREIGN KEY (`dpslno`) REFERENCES `department001mb` (`sl_no`),
  CONSTRAINT `user001mb_ibfk_3` FOREIGN KEY (`roleid`) REFERENCES `role001mb` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user001mb`
--

/*!40000 ALTER TABLE `user001mb` DISABLE KEYS */;
INSERT INTO `user001mb` (`person_id`,`dpslno`,`roleid`,`username`,`password`,`status`,`email`,`securityquestion`,`securityanswer`,`theme`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'siva','$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa','A','adc@gmail.com','What was your childhood nickname ?','ss','#774e8a','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,2,2,'latha','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','latha0707hema@gmail.com','What was your childhood nickname ?','latha','#8d4da6','latha','2022-01-20 08:59:58','latha','2022-02-09 12:07:18'),
 (3,3,3,'aravinth','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','latha0707hema@gmail','What was your childhood nickname ?','latha','#1f812c','latha','2021-09-06 13:18:33','siva','2022-02-09 12:06:50'),
 (5,4,4,'sekar','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','kavichandran877@gmail.com','What was your childhood nickname ?','latha','#286090','latha','2022-01-20 08:59:58','latha','2022-02-03 12:52:44'),
 (8,5,3,'kavitha','$2b$10$cSZ1TGPDJAs.FMCyHj0RleysCcTIkWJTaGKoYrT0bsGypTINbXbXO','A','kavitha270895@gmail.com','What was your childhood nickname ?','kavi','#286090','latha','2022-02-11 13:33:13','latha','2022-02-11 13:36:01'),
 (9,6,2,'selvam','$2b$10$Co1fTNvFwbLi0aCKfxadZOCR33Ll.xsu5Jj4ImTFZOSqoDDcn.ude','A','latha0707hema@gmail.com','What was your childhood nickname ?','selvam','#286090','latha','2022-02-11 13:37:45',NULL,NULL),
 (10,7,1,'sfd','$2b$10$jCowSnXffbaSYAxDYNDSEei05Fs1.ZFWqmm3FdDfNMhc0uiAIwp2a','A','selvamraja1104@gmail.com','What was your childhood nickname ?','sfd','#286090','latha','2022-02-11 14:20:10',NULL,NULL),
 (11,4,4,'moorthy','$2b$10$v0032Ost0h5Gr9nDp7xQJ.fjVDlB9Tgj0ZBy2oylNH3PLeuLlRdDa','A','moorthyp2096@gmail.com','What was your childhood nickname ?','moorthy','#286090','latha','2022-02-24 13:39:48','latha','2022-02-24 13:40:01');
/*!40000 ALTER TABLE `user001mb` ENABLE KEYS */;


--
-- Definition of table `userrole001mb`
--

DROP TABLE IF EXISTS `userrole001mb`;
CREATE TABLE `userrole001mb` (
  `userroleid` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`userroleid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole001mb`
--

/*!40000 ALTER TABLE `userrole001mb` DISABLE KEYS */;
INSERT INTO `userrole001mb` (`userroleid`,`loginid`,`role`,`username`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (39,46,'ROLE_ADMIN','sss','','0000-00-00 00:00:00',NULL,NULL),
 (40,47,'','tamil K','','0000-00-00 00:00:00',NULL,NULL),
 (41,48,'','etdtdd','','0000-00-00 00:00:00',NULL,NULL),
 (42,49,'','tamil','','0000-00-00 00:00:00',NULL,NULL),
 (43,50,'ROLE_USER','raj','','0000-00-00 00:00:00',NULL,NULL),
 (44,51,'','selvamRaja','','0000-00-00 00:00:00',NULL,NULL),
 (45,62,'','aaa','insertuser','2021-09-03 11:19:04',NULL,'2021-09-03 11:19:05'),
 (46,63,'ROLE_USER','latha','insertuser','2021-09-03 11:20:13','updateuser','2021-09-03 11:20:39'),
 (47,64,'','fff','insertuser','2021-09-03 11:46:35',NULL,'2021-09-03 11:46:35'),
 (48,65,'','rizwana','insertuser','2021-09-06 13:18:33',NULL,'2021-09-06 13:18:33'),
 (49,66,'','rizwana','insertuser','2021-09-06 13:19:15',NULL,'2021-09-06 13:19:16'),
 (50,67,'','rizwana','insertuser','2021-09-06 13:19:27',NULL,'2021-09-06 13:19:28'),
 (51,68,'','rizwana','insertuser','2021-09-06 13:19:28',NULL,'2021-09-06 13:19:28'),
 (52,69,'','rizwana','insertuser','2021-09-06 13:19:28',NULL,'2021-09-06 13:19:28'),
 (53,70,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:19:54'),
 (54,71,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:19:54'),
 (55,72,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:20:32'),
 (56,73,'','rizwana','insertuser','2021-09-06 13:21:41',NULL,'2021-09-06 13:21:42'),
 (57,74,'','rizwana','insertuser','2021-09-06 13:21:42',NULL,'2021-09-06 13:21:42'),
 (58,75,'','rizwana','insertuser','2021-09-06 13:21:53',NULL,'2021-09-06 13:21:53'),
 (59,76,'','rizwana','insertuser','2021-09-06 13:21:53',NULL,'2021-09-06 13:21:53'),
 (60,77,'','rizwana','insertuser','2021-09-06 13:25:01',NULL,'2021-09-06 13:25:01'),
 (61,78,'','rizwana','insertuser','2021-09-06 13:25:17',NULL,'2021-09-06 13:25:17'),
 (62,79,'ROLE_GUEST','sekar','siva','2021-10-22 16:41:43',NULL,'2021-10-22 16:41:43'),
 (63,80,'ROLE_GUEST','Aravinth','sekar','2021-12-23 12:02:13',NULL,'2021-12-23 12:02:14'),
 (64,81,'ROLE_GUEST','moorthy','Aravinth','2021-12-23 12:32:25',NULL,'2021-12-23 12:32:25');
/*!40000 ALTER TABLE `userrole001mb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
