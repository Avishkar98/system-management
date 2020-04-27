-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2016 at 04:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `startTime` varchar(100) NOT NULL,
  `endTime` varchar(100) NOT NULL,
  `state` varchar(40) NOT NULL,
  `route` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--


INSERT INTO `timetable` (`id`, `destination`, `startTime`, `endTime`, `state`, `route`) VALUES
(1, 'Uditha', 'Isuranga', 'conductor@mora.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', 0),
(2, 'Tharinda', 'Kanda', 'driver@mora.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', 0),
(4, 'Avishka', 'Rathne', 'addmin@mora.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', 0),
(5, 'Sandaru', 'kaveesh', 'engineer@mora.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', 0),
(6, 'Kumari', 'Akka', 'worker@mora.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d',0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
