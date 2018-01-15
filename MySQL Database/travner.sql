/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.6.16 : Database - travner
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travner` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `travner`;

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `ACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRAVEL_ID` int(11) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `ACTIVITY_NAME` varchar(60) DEFAULT NULL,
  `TIME_START` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TIME_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SPARE_TIME` time DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `FK_DOING_AN_ACTIVITY` (`EMAIL`),
  KEY `FK_RELATIONSHIP_1` (`TRAVEL_ID`),
  CONSTRAINT `FK_DOING_AN_ACTIVITY` FOREIGN KEY (`EMAIL`) REFERENCES `user_account` (`EMAIL`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`TRAVEL_ID`) REFERENCES `travel` (`TRAVEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `activity` */

insert  into `activity`(`ACTIVITY_ID`,`TRAVEL_ID`,`EMAIL`,`ACTIVITY_NAME`,`TIME_START`,`TIME_END`,`SPARE_TIME`) values 
(1,1,'sitti@polban.me','Menunggu keberangkatan pesawat ke kendari','2017-09-19 05:10:00','2017-09-19 05:10:00','00:40:00'),
(2,2,'sitti@polban.me','Sampai di bandara Kendari','2017-09-19 11:10:00','2017-09-19 11:10:00','00:00:00'),
(3,3,'sitti@polban.me','Sampai di hotel untuk ishoma Tartil dan diskusi dengan depar','2017-09-19 12:30:00','2017-09-19 15:00:00','00:30:00'),
(4,4,'sitti@polban.me','Makan sore','2017-09-19 15:30:00','2017-09-19 16:30:00','00:00:00'),
(5,5,'sitti@polban.me','Kunjungan korban Narkoba','2017-09-19 17:00:00','2017-09-19 18:30:00','00:12:00'),
(6,6,'sitti@polban.me','Kembali ke hotel','2017-09-19 19:00:00','2017-09-19 00:00:00','00:00:00');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `LOCATION_LONG` decimal(14,10) NOT NULL,
  `LOCATION_LAT` decimal(14,10) NOT NULL,
  PRIMARY KEY (`LOCATION_LONG`,`LOCATION_LAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`LOCATION_LONG`,`LOCATION_LAT`) values 
(-6.3065247000,106.7989756000),
(-6.1253505000,106.6578245000),
(-4.0773177000,122.4157904000),
(-4.0329527000,122.5320514000),
(-3.9855385000,122.4907418000),
(-3.9242358000,122.4767668000);

/*Table structure for table `travel` */

DROP TABLE IF EXISTS `travel`;

CREATE TABLE `travel` (
  `TRAVEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STARTLOCATION_LONG` decimal(14,10) NOT NULL,
  `STARTLOCATION_LAT` decimal(14,10) NOT NULL,
  `DESTLOCATION_LONG` decimal(14,10) NOT NULL,
  `DESTLOCATION_LAT` decimal(14,10) NOT NULL,
  `TRANSPORTATION_MODE` varchar(15) NOT NULL,
  `DEPARTURE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRAVEL_ID`),
  KEY `FK_DESTINATION` (`STARTLOCATION_LONG`,`STARTLOCATION_LAT`),
  KEY `FK_START_LOCATION` (`DESTLOCATION_LONG`,`DESTLOCATION_LAT`),
  CONSTRAINT `FK_START_LOCATION` FOREIGN KEY (`DESTLOCATION_LONG`, `DESTLOCATION_LAT`) REFERENCES `location` (`LOCATION_LONG`, `LOCATION_LAT`),
  CONSTRAINT `FK_DESTINATION` FOREIGN KEY (`STARTLOCATION_LONG`, `STARTLOCATION_LAT`) REFERENCES `location` (`LOCATION_LONG`, `LOCATION_LAT`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `travel` */

insert  into `travel`(`TRAVEL_ID`,`STARTLOCATION_LONG`,`STARTLOCATION_LAT`,`DESTLOCATION_LONG`,`DESTLOCATION_LAT`,`TRANSPORTATION_MODE`,`DEPARTURE_TIME`) values 
(1,-6.3065247000,106.7989756000,-6.1253505000,106.6578245000,'Mobil Pribadi','2017-09-19 03:30:00'),
(2,-6.1253505000,106.6578245000,-4.0773177000,122.4157904000,'Pesawat','2017-09-19 05:10:00'),
(3,-4.0773177000,122.4157904000,-3.9855385000,122.4907418000,'Mobil Dinas','2017-09-19 11:30:00'),
(4,-3.9855385000,122.4907418000,-4.0329527000,122.5320514000,'Jalan Kaki','2017-09-19 03:15:00'),
(5,-4.0329527000,122.5320514000,-3.9242358000,122.4767668000,'Mobil Dinas','2017-09-19 16:30:00'),
(6,-3.9242358000,122.4767668000,-3.9855385000,122.4907418000,'Mobil Dinas','2017-09-19 19:21:00');

/*Table structure for table `user_account` */

DROP TABLE IF EXISTS `user_account`;

CREATE TABLE `user_account` (
  `USERNAME` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `PROFILE_PICTURE` longblob,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_account` */

insert  into `user_account`(`USERNAME`,`EMAIL`,`PASSWORD`,`PROFILE_PICTURE`) values 
('sitti','sitti@polban.me','password',NULL);

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `VEHICLE_NAME` varchar(15) NOT NULL,
  `EMAIL` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`VEHICLE_NAME`,`EMAIL`),
  KEY `FK_HAVE_A_VEHICLE` (`EMAIL`),
  CONSTRAINT `FK_HAVE_A_VEHICLE` FOREIGN KEY (`EMAIL`) REFERENCES `user_account` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`VEHICLE_NAME`,`EMAIL`) values 
('Mobil','sitti@polban.me');

/*Table structure for table `activity_list` */

DROP TABLE IF EXISTS `activity_list`;

/*!50001 DROP VIEW IF EXISTS `activity_list` */;
/*!50001 DROP TABLE IF EXISTS `activity_list` */;

/*!50001 CREATE TABLE  `activity_list`(
 `ACTIVITY_NAME` varchar(60) ,
 `TIME_START` timestamp ,
 `TIME_END` timestamp ,
 `DESTLOCATION_LONG` decimal(14,10) ,
 `DESTLOCATION_LAT` decimal(14,10) ,
 `TRANSPORTATION_MODE` varchar(15) ,
 `DEPARTURE_TIME` timestamp 
)*/;

/*View structure for view activity_list */

/*!50001 DROP TABLE IF EXISTS `activity_list` */;
/*!50001 DROP VIEW IF EXISTS `activity_list` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `activity_list` AS (select `activity`.`ACTIVITY_NAME` AS `ACTIVITY_NAME`,`activity`.`TIME_START` AS `TIME_START`,`activity`.`TIME_END` AS `TIME_END`,`travel`.`DESTLOCATION_LONG` AS `DESTLOCATION_LONG`,`travel`.`DESTLOCATION_LAT` AS `DESTLOCATION_LAT`,`travel`.`TRANSPORTATION_MODE` AS `TRANSPORTATION_MODE`,`travel`.`DEPARTURE_TIME` AS `DEPARTURE_TIME` from (`activity` join `travel`) where (`travel`.`TRAVEL_ID` = `activity`.`TRAVEL_ID`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
