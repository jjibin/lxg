-- MySQL dump 10.12
--
-- Host: localhost    Database: pbs
-- ------------------------------------------------------
-- Server version	5.2.3-falcon-alpha-community-nt

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
-- Table structure for table `additem`
--

DROP TABLE IF EXISTS `additem`;
CREATE TABLE `additem` (
  `Itemno` varchar(200) NOT NULL,
  `Itemname` varchar(300) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Price` varchar(200) DEFAULT NULL,
  `Stock` varchar(200) DEFAULT NULL,
  `Arrivaldate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Itemno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additem`
--

LOCK TABLES `additem` WRITE;
/*!40000 ALTER TABLE `additem` DISABLE KEYS */;
INSERT INTO `additem` VALUES ('1','ALL PIN (ESTEEM/GOLDEN/GEM/GLOBE)','Stationary','13.00','680','2016/03/28 '),('10','CASH BOOK 200 PAGE','Stationary','260.00','425','2016/03/28 '),('11','CELLO TAPE 1\" (PREMIER/WONDER/APEX)','Stationary','9.00','450','2016/03/28 '),('110','OHP PENS PERM FINE BLUE','Fancy','15.00','120','2016/03/27 '),('12','CELLO TAPE 1/2\" (PREMIER/WONDER/APEX)','Stationary','5.00','400','2016/03/28 '),('13','CHEQUE/DRAFT REGISTER (LEDGER PAPER) (192 PAGES)','Office','110.00','450','2016/03/28 '),('14','PEN(CELLO FINE GRIP)','Fancy','12.00','220','2016/03/22'),('15','COMPUTER PAPER 10X12X1 80 COL 60 GSM','Office','310.00','470','2016/03/28 '),('151','UJALA SUPREME','Stationary','55.00','45','2016/03/29 '),('16','C.P.F. PASS BOOK 80 LEAF','Office','26.00','450','2016/03/28 '),('17','FAX ROLL 30 MTR. ','Stationary','67.00','400','2016/04/21'),('2','BALL PEN (CELLO FINE GRIP)','Stationary','4.00','250','2016/03/28 '),('3','FEVICOL 100 GRM','Stationary','30.00','330','2016/03/28 '),('32','WATCH','Fancy','300.00','32','2016/03/29 '),('4','FEVICOL 200 GRM','Stationary','55.00','450','2016/03/28 '),('44','PAPER BROWN','Stationary','3.00','50','2016/03/21 '),('49','PENCIL ','Stationery','3.00','120','2016/03/24'),('5','CALCULATOR 12 DIGIT CASIO/CITIZEN','Office','344.00','494','2016/03/28 '),('55','CHART','Stationary','6.00','500','2016/03/27 '),('58','Exo','Stationery','25.00','45','2016/03/22 '),('6','CARBON PAPER (KORES/CAMLE)','Office','82.00','450','2016/03/28 '),('63','REFILE (CELLO FINE GRIP)','Stationary','3.00','92','2016/03/29 '),('68','JUNIOR HORLICKS','Kids','153.00','100','2010/01/01 '),('7','CARBON PAPER PENCIL (BIG SIZE)','Stationary','166.00','300','2016/03/28 '),('8','CARTRIDGE SHEET 1/2 SIZE','Office','3.00','300','2016/03/28 '),('9','CARTRIDGE SHEET FULL SIZE','Office','5.00','450','2016/03/28 ');
/*!40000 ALTER TABLE `additem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('jsbss','jsbss');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `CategoryName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Stationary'),('Fancy'),('Office'),('Kids');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inboxtab`
--

DROP TABLE IF EXISTS `inboxtab`;
CREATE TABLE `inboxtab` (
  `Shopname` varchar(300) DEFAULT NULL,
  `Message` varchar(700) DEFAULT NULL,
  `DateofPurchase` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inboxtab`
--

LOCK TABLES `inboxtab` WRITE;
/*!40000 ALTER TABLE `inboxtab` DISABLE KEYS */;
INSERT INTO `inboxtab` VALUES ('Geetha Stores','14 - 20\n32 - 8\n5 - 1\n7 - 50\n151 - 25','2010/01/01  '),('Sadananda Stores','2 - 50\n44 - 40\n68 - 40\n5 - 2','');
/*!40000 ALTER TABLE `inboxtab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `Srno` varchar(100) DEFAULT NULL,
  `particulars` varchar(400) DEFAULT NULL,
  `quanity` varchar(200) DEFAULT NULL,
  `Rate` varchar(200) DEFAULT NULL,
  `Amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `Title` varchar(100) DEFAULT NULL,
  `Owner` varchar(100) DEFAULT NULL,
  `Address` varchar(400) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DOJ` varchar(100) DEFAULT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('Das Communications','Das','Gandhipark,\nMysore Road,\nMananthavady,\nWayanad','Mananthavady,india','9878987892','dascommunications@gmail.com','21/04/2016','DAS','dasc'),('Devika Stores','Devanandan','Chungam,\nMain Road,\nKalpetta,\nWayanad','Kalpetta,india','9656245455','devikastores@gmail.com','10/04/2016','DEVIKA','devikadevi'),('Geetha Stores','Geethanandan','Near SBI,,\nKozhikode Road,\nPanamaram,\nWayanad','Mananthavady,india','9321211112','geethastores@gmail.com','22/04/2016','GEETHA','geethat'),('Ismail Stores','Ismail','Gandhi Park,\nMysore Road,\nMananthavady,\nWayanad','Mananthavady,india','7898986966','ismailstores@gmail.com','12/04/2016','ISMAILM','ismam'),('Sadananda Stores','Sadanandan','Bull Street,\nNear Jose Talkies, \nMananthavady,\nWayanad','Mananthavady,india','8748788998','sadanandastores@gmail.com','06/04/2016','SADANANDA','sad');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showbill`
--

DROP TABLE IF EXISTS `showbill`;
CREATE TABLE `showbill` (
  `Title` varchar(200) DEFAULT NULL,
  `Location` varchar(400) DEFAULT NULL,
  `Date` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Challanno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showbill`
--

LOCK TABLES `showbill` WRITE;
/*!40000 ALTER TABLE `showbill` DISABLE KEYS */;
INSERT INTO `showbill` VALUES ('Das Communications','Main Road\nPattambi,Palakkad','','das','0001234'),('Das Communications','Main Road\nPattambi,Palakkad','','das','0001234'),('Sadananda','No:24,Mysore Road,\nMannathavady,Wayanad','2016/03/28  ','Sadanandanph','0001234'),('cp','ooty road meppadi','2016/03/28  ','ammu','0001234'),('sabu','ooty road bathery	','2016/03/29  ','sabin','0001234');
/*!40000 ALTER TABLE `showbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showprintbil`
--

DROP TABLE IF EXISTS `showprintbil`;
CREATE TABLE `showprintbil` (
  `Title` varchar(200) DEFAULT NULL,
  `Status` varchar(400) DEFAULT NULL,
  `Location` varchar(400) DEFAULT NULL,
  `Date` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `BillNo` varchar(300) DEFAULT NULL,
  `Total` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showprintbil`
--

LOCK TABLES `showprintbil` WRITE;
/*!40000 ALTER TABLE `showprintbil` DISABLE KEYS */;
INSERT INTO `showprintbil` VALUES ('Das Communications','Your Request has to be Processed!','Gandhipark,\nMysore Road,\nMananthavady,\nWayanad','2010/01/01  ','DAS','00001234001','12659'),('Sadananda Stores','Your Request has to be Processed!','Bull Street,\nNear Jose Talkies, \nMananthavady,\nWayanad','2010/01/01  ','SADANANDA','00001234002','7128');
/*!40000 ALTER TABLE `showprintbil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `Usernam` varchar(200) NOT NULL,
  `Passwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Usernam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES ('Sadananda','sad');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-12-31 21:26:52
