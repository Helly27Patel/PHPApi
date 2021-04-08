-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2021 at 06:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_detail`
--

DROP TABLE IF EXISTS `student_detail`;
CREATE TABLE IF NOT EXISTS `student_detail` (
  `stud_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_name` varchar(100) NOT NULL,
  `stud_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_detail`
--

INSERT INTO `student_detail` (`stud_id`, `stud_name`, `stud_email`, `password`) VALUES
(1, 'Helly Patel', 'helly@gmail.com', 'helly@123'),
(7, 'hhh', 'hhh@gmail.com', 'dccd75e00abc56692cc5ee1983f24059'),
(3, 'xyz', 'xyz@gmail.com', 'xyz@123'),
(4, 'abc', 'abc@gmail.com', 'b24331b1a138cde62aa1f679164fc62f'),
(5, 'MNG', 'mng@gmail.com', 'ab73f4dfa90ef6c59a77d111bc82f974'),
(6, 'MNG', 'mng@gmail.com', 'ab73f4dfa90ef6c59a77d111bc82f974');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
