-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2020 at 10:52 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 NOT NULL,
  `email` varchar(80) CHARACTER SET latin1 NOT NULL,
  `message` text CHARACTER SET latin1 NOT NULL,
  `likee` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `likee`) VALUES
(1, 'yougesh raj', 'awareraj212@gmail.com', 'hellow how are you', 'likee');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET latin1 NOT NULL,
  `lname` text CHARACTER SET latin1 NOT NULL,
  `gender` text NOT NULL,
  `mbno` varchar(15) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `address` varchar(150) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fname`, `lname`, `gender`, `mbno`, `dob`, `email`, `password`, `address`) VALUES
(1, 'yougesh', 'raj', '', '9407108173', '2020-02-19', 'awareraj212@gmail.com', 'ready', 'at+po-kaushalpur,distt-banka,state-bihar'),
(2, 'yougesh', 'raj', 'male', '8271883070', '1996-07-30', 'pyareazazkhan@gmail.com', 'azaz', 'add'),
(3, 'yougesh', 'raj', 'male', '8271883070', '1996-07-30', 'pyareazazkhan@gmail.com', 'azaz', 'add'),
(4, 'choti', 'kumari', 'male', '8409606101', '1996-07-30', 'chotibhardwaj@gmail.com', 'chhoti', 'add'),
(5, 'choti', 'kumari', 'male', '8409606101', '1996-07-30', 'chotibhardwaj@gmail.com', 'chhoti', 'add'),
(8, 'shubham', 'namdev', 'male', '12345678', '1996-07-30', 'shubham@gmail.com', 'azaz', 'add'),
(9, 'shubham', 'namdev', 'male', '12345678', '1996-07-30', 'shubham@gmail.com', 'azaz', 'add'),
(10, 'prabha', 'devi', 'male', '123456789', '1996-07-30', 'abcdeg@gmail.com', 'paro', 'add'),
(11, 'prabha', 'devi', 'male', '123456789', '1996-07-30', 'abcdeg@gmail.com', 'paro', 'add');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
