/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.28-MariaDB : Database - testgmapsapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testgmapsapi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `testgmapsapi`;

/*Table structure for table `data_lokasi` */

DROP TABLE IF EXISTS `data_lokasi`;

CREATE TABLE `data_lokasi` (
  `startloc` varchar(500) NOT NULL,
  `startlat` double NOT NULL,
  `startlng` double NOT NULL,
  `destinationloc` varchar(500) NOT NULL,
  `destinationlat` double NOT NULL,
  `destinationlng` double NOT NULL,
  `distance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_lokasi` */

insert  into `data_lokasi`(`startloc`,`startlat`,`startlng`,`destinationloc`,`destinationlat`,`destinationlng`,`distance`) values 
('Jl. Lavender No.18, Ciwaruga, Parongpong, Kabupaten Bandung Barat, Jawa Barat 40559, Indonesia',-6.8545104,107.58312679999995,'Jl. Sarirasa No.23, Sarijadi, Sukasari, Kota Bandung, Jawa Barat 40151, Indonesia',-6.876631499999999,107.57862380000006,3.8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
