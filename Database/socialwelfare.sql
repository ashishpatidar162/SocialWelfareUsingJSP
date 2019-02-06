/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.1.30-community : Database - socialwelfare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`socialwelfare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `socialwelfare`;

/*Table structure for table `cloth` */

DROP TABLE IF EXISTS `cloth`;

CREATE TABLE `cloth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `paymode` varchar(20) NOT NULL,
  `msg` varchar(40) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `cloth` */

insert  into `cloth`(`id`,`username`,`quantity`,`paymode`,`msg`) values (1,'null',12,'offline','afawf'),(2,'null',45,'offline','hello'),(3,'null',3,'offline','thanks'),(4,'null',12,'offline','hello'),(5,'ashish',13,'offline','reg'),(6,'sandeep@gmail.com',5,'offline','thanks');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`email`,`message`) values ('siddiqui.ishan@gmail.com','hi ritik pindari'),('ram@gmail.com','thanks for being supportive');

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `districtid` int(11) NOT NULL AUTO_INCREMENT,
  `stateid` int(11) NOT NULL,
  `districtname` varchar(20) NOT NULL,
  PRIMARY KEY (`districtid`),
  KEY `fk_st_dist` (`stateid`),
  CONSTRAINT `fk_st_dist` FOREIGN KEY (`stateid`) REFERENCES `state` (`stateid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `district` */

insert  into `district`(`districtid`,`stateid`,`districtname`) values (1,1,'Ernakulam'),(4,2,'chennai'),(5,3,'banglore'),(6,4,'ajmeer'),(7,1,'KOLLAM'),(8,1,'MALAPURAM'),(9,1,'KASARGOD'),(10,1,'THRISSUR'),(11,1,'THIRUVANANDAPURAM'),(12,1,'ALAPUZHA'),(13,1,'KOTTAYAM'),(14,1,'KANNOOR'),(15,1,'KOZHIKODE'),(16,5,'AGRA'),(17,6,'HYDRABAD'),(18,7,'indore'),(19,7,'dewas'),(20,7,'Agar');

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `paymode` varchar(20) NOT NULL,
  `msg` varchar(40) NOT NULL,
  `catogary` varchar(30) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `food` */

insert  into `food`(`id`,`username`,`quantity`,`paymode`,`msg`,`catogary`) values (1,'asdad',12,'offline','awdasd',''),(2,'ravi',12,'offline','hello',''),(3,'sohan',1000,'offline','thamks',''),(4,'sohan',2,'offline','thanks',''),(5,'sohan',3,'offline','thanks',''),(6,'mohit',23,'offline','thanks',''),(7,'mohit',23,'offline','thanks',''),(8,'sandeep@gmail.com',12,'offline','hi',''),(9,'sandeep@gmail.com',12,'offline','dd','RawFood'),(10,'sandeep@gmail.com',2,'offline','thanks','RawFood'),(11,'sandeep@gmail.com',100,'offline','thanks','RawFood'),(12,'sandeep@gmail.com',23,'offline','thnkss','RawFood');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`usertype`) values ('admin@gmail.com','admin','admin'),('ash@gmail.com','12345','user'),('ashish@gmail.com','1234567','user'),('charity@gmail.com','11111','user'),('childhood@gmail.com','123456','ngo'),('deeak@gmail.com','123456','ind'),('deepak@gmail.com','deepak123','user'),('donation@gmail.com','12345','ngo'),('health@gmail.com','123456','ngo'),('mohit@gmail.com','123456','user'),('palak@gmail.com','palak123','user'),('rigut@gaksdf.com','hello','user'),('robin@gmail.com','saksham888','user'),('rohi@gmail.com','1235','user'),('rohit@fmIL.COM','rohit','user'),('rohit@gmail.com','213','user'),('sandeep@gmail.com','123456','user'),('sharma@gmail.com','ram888','user'),('siddiqui.ishan1994@gmail.com','ishan888','user'),('sldjf@gmail.com','hello','user'),('social@gmail.com','123456','user'),('sohan@gmail.com','sohan123','user'),('usm@gmail.com','usm123','ngo'),('varshali@gmail.com','ram123','user'),('walfare@gmail.com','12356','ngo'),('welcome@gmail.com','123456','ngo');

/*Table structure for table `ngocloth` */

DROP TABLE IF EXISTS `ngocloth`;

CREATE TABLE `ngocloth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `paymode` varchar(20) NOT NULL,
  `msg` varchar(40) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `ngocloth` */

insert  into `ngocloth`(`id`,`username`,`quantity`,`paymode`,`msg`) values (1,'ashish',12,'offline','hello'),(2,'ravi',12,'offline','hello'),(3,'dipak',14,'offline','hello'),(4,'social@gmail.com',12,'offline','hhi'),(5,'social@gmail.com',12,'offline','hello');

/*Table structure for table `ngofood` */

DROP TABLE IF EXISTS `ngofood`;

CREATE TABLE `ngofood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `paymode` varchar(20) NOT NULL,
  `msg` varchar(40) NOT NULL,
  `catogary` varchar(30) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ngofood` */

insert  into `ngofood`(`id`,`username`,`quantity`,`paymode`,`msg`,`catogary`) values (1,'ashish',123,'offline','hello',''),(2,'ravi',12,'offline','hello',''),(3,'father vargis',4,'offline','thanks',''),(4,'rahul',12,'offline','hi',''),(5,'rahul',12,'offline','hi',''),(6,'father',5,'offline','thanks',''),(7,'father',5,'offline','thanks',''),(8,'ngo',3,'offline','please respond',''),(9,'social@gmail.com',12,'offline','hell',''),(10,'welcome@gmail.com',12,'offline','df','CookedFood');

/*Table structure for table `ngoofflinepay` */

DROP TABLE IF EXISTS `ngoofflinepay`;

CREATE TABLE `ngoofflinepay` (
  `username` varchar(100) NOT NULL,
  `amount` int(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ngoofflinepay` */

insert  into `ngoofflinepay`(`username`,`amount`,`message`) values ('ashish',123,'hello'),('ravi',12,'hello'),('dipak',123,'hello'),('dipak',123,'hello'),('social@gmail.com',123,'ada');

/*Table structure for table `ngoonlinepay` */

DROP TABLE IF EXISTS `ngoonlinepay`;

CREATE TABLE `ngoonlinepay` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `cvv` int(5) NOT NULL,
  `cardexpry` varchar(15) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ngoonlinepay` */

insert  into `ngoonlinepay`(`payid`,`username`,`card_no`,`amount`,`cvv`,`cardexpry`) values (1,'ashish',5555555555555555,123,345,'12/19'),(2,'ravi',8989898989898989,123,456,'13/12'),(3,'father vargis',1234123412341234,5000,988,'21/98'),(4,'monu',1212121212121212,123,345,'12/13');

/*Table structure for table `ngoreg` */

DROP TABLE IF EXISTS `ngoreg`;

CREATE TABLE `ngoreg` (
  `username` varchar(30) NOT NULL,
  `ngoname` varchar(45) NOT NULL,
  `address` varchar(80) NOT NULL,
  `district` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `regno` bigint(20) NOT NULL,
  `contactname` varchar(30) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  PRIMARY KEY (`regno`),
  KEY `fk_user_park_idx` (`username`),
  KEY `fk_park_dist_idx` (`district`),
  CONSTRAINT `fk_park_dist` FOREIGN KEY (`district`) REFERENCES `district` (`districtid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_user_park` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ngoreg` */

insert  into `ngoreg`(`username`,`ngoname`,`address`,`district`,`city`,`regno`,`contactname`,`contactno`) values ('childhood@gmail.com','childhood','sihore',17,'sihore',9874,'gullu',4677587908),('deepak@gmail.com','deepak','lantern square',18,'indore',456125,'9545865987',9578564589),('donation@gmail.com','donation','lantern square',18,'indore',562341,'shyam',9875488652),('charity@gmail.com','charity','bhopal',16,'bhopal',987411,'sonu',4677587908),('usm@gmail.com','usmia','maha laksmi nagar',18,'indore',9898965,'father vargis',9865784568);

/*Table structure for table `offlinepay` */

DROP TABLE IF EXISTS `offlinepay`;

CREATE TABLE `offlinepay` (
  `username` varchar(100) NOT NULL,
  `amount` int(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offlinepay` */

insert  into `offlinepay`(`username`,`amount`,`message`) values ('ashish',120,'hello'),('ravi',123,'hello'),('sohan',100,'hi'),('deepak',500,'thanks'),('sohan',3000,'thanks'),('rahul',3000,'thanks');

/*Table structure for table `onlinepay` */

DROP TABLE IF EXISTS `onlinepay`;

CREATE TABLE `onlinepay` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `cvv` int(5) NOT NULL,
  `cardexpry` varchar(15) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `onlinepay` */

insert  into `onlinepay`(`payid`,`username`,`card_no`,`amount`,`cvv`,`cardexpry`) values (1,'ashish',2222222222222222,120,123,'12/12'),(2,'ravi',6767676767676767,123,456,'12/13');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `statename` varchar(20) NOT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`stateid`,`statename`) values (1,'kerala'),(2,'tamilnadu'),(3,'karnataka'),(4,'rajastan'),(5,'delhi'),(6,'andra pradesh'),(7,'Madhya pradesh');

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  KEY `fk_user_user_idx` (`username`),
  CONSTRAINT `fk_user_user` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreg` */

insert  into `userreg`(`username`,`firstname`,`lastname`,`gender`,`contactno`) values ('ashish@gmail.com','Ashish','Patidar','m',9755487987),('rohit@gmail.com','Rohit','patidar','m',1234567890),('siddiqui.ishan1994@gmail.com','ishan','siddiqui','m',7542873695),('robin@gmail.com','sakshan','saxena','m',9575842256),('sharma@gmail.com','ram','sharma','m',9865457895),('palak@gmail.com','palak','sahu','f',9575648915),('sohan@gmail.com','sohan','lal','m',9575486236),('deeak@gmail.com','Deepak ','bharti','m',7828881887),('mohit@gmail.com','mohit','patidar','m',7828881887),('sandeep@gmail.com','sandeep','patidar','m',7878787878);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
