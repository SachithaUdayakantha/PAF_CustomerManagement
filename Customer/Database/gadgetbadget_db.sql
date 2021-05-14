-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2021 at 03:57 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gadgetbadget_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nic` varchar(10) CHARACTER SET latin1 NOT NULL,
  `phoneNo` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cusAddress` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cusPassword` varchar(8) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `customerName`, `nic`, `phoneNo`, `email`, `cusAddress`, `cusPassword`) VALUES
(7, 'sachitha', '951442860', 716001614, 'usachithauk@gmail.com', 'thambuttegama', '123456'),
(8, 'dulaj', '123456789', 1111222333, 'ssdjk199503@gmail.com', 'anuradhapura', '123456'),
(9, 'ayesh', '22244456', 321456789, 'sdasd@gmail.com', 'wariyapola', 'asdfgh'),
(10, 'bhagya', '54564778', 54654, 'bhagya@gmail.com', 'thambuttegama', 'asdqwe');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
