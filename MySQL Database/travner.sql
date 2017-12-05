/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.16 : Database - travner
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `travner`;

/*Table structure for table `activity` */

CREATE TABLE `activity` (
  `ACTIVITY_ID` int(11) NOT NULL,
  `TRAVEL_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVITY_NAME` varchar(30) DEFAULT NULL,
  `TIME_START` datetime NOT NULL,
  `TIME_END` datetime NOT NULL,
  `SPARE_TIME` time DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `FK_DOING_AN_ACTIVITY` (`USER_ID`),
  KEY `FK_RELATIONSHIP_1` (`TRAVEL_ID`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`TRAVEL_ID`) REFERENCES `travel` (`TRAVEL_ID`),
  CONSTRAINT `FK_DOING_AN_ACTIVITY` FOREIGN KEY (`USER_ID`) REFERENCES `user_account` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `activity` */

/*Table structure for table `location` */

CREATE TABLE `location` (
  `LOCATION_LONG` decimal(10,0) NOT NULL,
  `LOCATION_LAT` decimal(10,0) NOT NULL,
  PRIMARY KEY (`LOCATION_LONG`,`LOCATION_LAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `location` */

/*Table structure for table `travel` */

CREATE TABLE `travel` (
  `TRAVEL_ID` int(11) NOT NULL,
  `STARTLOCATION_LONG` decimal(10,0) NOT NULL,
  `STARTLOCATION_LAT` decimal(10,0) NOT NULL,
  `DESTLOCATION_LONG` decimal(10,0) NOT NULL,
  `DESTLOCATION_LAT` decimal(10,0) NOT NULL,
  `TRANSPORTATION_MODE` varchar(15) NOT NULL,
  `DEPARTURE_TIME` datetime NOT NULL,
  PRIMARY KEY (`TRAVEL_ID`),
  KEY `FK_DESTINATION` (`STARTLOCATION_LONG`,`STARTLOCATION_LAT`),
  KEY `FK_START_LOCATION` (`DESTLOCATION_LONG`,`DESTLOCATION_LAT`),
  CONSTRAINT `FK_START_LOCATION` FOREIGN KEY (`DESTLOCATION_LONG`, `DESTLOCATION_LAT`) REFERENCES `location` (`LOCATION_LONG`, `LOCATION_LAT`),
  CONSTRAINT `FK_DESTINATION` FOREIGN KEY (`STARTLOCATION_LONG`, `STARTLOCATION_LAT`) REFERENCES `location` (`LOCATION_LONG`, `LOCATION_LAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `travel` */

/*Table structure for table `user_account` */

CREATE TABLE `user_account` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_account` */

/*Table structure for table `vehicle` */

CREATE TABLE `vehicle` (
  `VEHICLE_NAME` varchar(15) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`VEHICLE_NAME`),
  KEY `FK_HAVE_A_VEHICLE` (`USER_ID`),
  CONSTRAINT `FK_HAVE_A_VEHICLE` FOREIGN KEY (`USER_ID`) REFERENCES `user_account` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
