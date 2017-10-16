-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2017 at 11:20 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travlendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ID_Activity` int(11) NOT NULL,
  `ID_StartLocation` int(11) NOT NULL,
  `ID_Destination` int(11) NOT NULL,
  `TransportationCode` char(3) NOT NULL,
  `Activity_Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `Priority_Scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`ID_Activity`, `ID_StartLocation`, `ID_Destination`, `TransportationCode`, `Activity_Name`, `Date`, `Start_Time`, `End_Time`, `Priority_Scale`) VALUES
(1, 1, 2, '101', 'Belajar', '2017-10-17', '08:00:00', '13:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE `distance` (
  `ID_StartLocation` int(11) NOT NULL,
  `ID_Destination` int(11) NOT NULL,
  `Distance_KM` int(11) DEFAULT NULL,
  `Distance_M` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`ID_StartLocation`, `ID_Destination`, `Distance_KM`, `Distance_M`) VALUES
(1, 2, 2, 100),
(3, 1, 4, 300);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `ID_Location` int(11) NOT NULL,
  `Location_Name` varchar(30) NOT NULL,
  `Location_Address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`ID_Location`, `Location_Name`, `Location_Address`) VALUES
(1, 'POLBAN', 'Jalan Kampus Polban, Ciwaruga.'),
(2, 'ITB', 'Jl. Ganesha No.10'),
(3, 'BIP', 'Jl. Merdeka No.56');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `Transportation_Code` char(3) NOT NULL,
  `Transportation_Name` varchar(20) NOT NULL,
  `Transportation_Velocity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`Transportation_Code`, `Transportation_Name`, `Transportation_Velocity`) VALUES
('101', 'Mobil', 55),
('102', 'Motor', 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`ID_Activity`),
  ADD KEY `ID_StartLocation` (`ID_StartLocation`),
  ADD KEY `TransportationCode` (`TransportationCode`),
  ADD KEY `ID_Destination` (`ID_Destination`);

--
-- Indexes for table `distance`
--
ALTER TABLE `distance`
  ADD PRIMARY KEY (`ID_StartLocation`,`ID_Destination`),
  ADD KEY `ID_Destination` (`ID_Destination`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`ID_Location`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`Transportation_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `ID_Activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `ID_Location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`ID_StartLocation`) REFERENCES `distance` (`ID_StartLocation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`TransportationCode`) REFERENCES `transportation` (`Transportation_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_ibfk_3` FOREIGN KEY (`ID_Destination`) REFERENCES `distance` (`ID_Destination`);

--
-- Constraints for table `distance`
--
ALTER TABLE `distance`
  ADD CONSTRAINT `distance_ibfk_1` FOREIGN KEY (`ID_Destination`) REFERENCES `location` (`ID_Location`),
  ADD CONSTRAINT `distance_ibfk_2` FOREIGN KEY (`ID_StartLocation`) REFERENCES `location` (`ID_Location`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
