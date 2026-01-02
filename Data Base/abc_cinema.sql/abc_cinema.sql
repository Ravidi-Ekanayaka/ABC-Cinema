-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 08:36 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `First Name` varchar(12) NOT NULL,
  `Last Name` varchar(12) NOT NULL,
  `Email ID` varchar(20) NOT NULL,
  `Mobile Number` varchar(10) NOT NULL,
  `Message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`First Name`, `Last Name`, `Email ID`, `Mobile Number`, `Message`) VALUES
('alex', 'andrew', 'xyz@gmail.com', '0755581831', 'This is my first attempt'),
('jhon', 'messy', 'abc@hotmail.com', '1234567890', 'second attempt'),
('a', 'b', 'pqr@gmail.com', '1234567891', 'third attempt'),
('p', 'alex', 'abc@gmail.com', '2345167893', 'First try after update'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'Another try'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'again'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'amazing site'),
('p', 'alex', 'abc@gmail.com', '2345167893', 'aaaa'),
('jhon', 'messy', 'abc@hotmail.com', '1234567890', 'super'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'hyf'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'test 1'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'test 2\r\n'),
('L', 'Ivory', 'rty@gmail.com', '5234567891', 'test 3'),
('w', 'peter', 'wxy@hotmail.com', '1234567890', 'final test'),
('w', 'peter', 'wxy@hotmail.com', '1234567890', 'test 4'),
('w', 'peter', 'wxy@hotmail.com', '1234567890', 'test 5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
