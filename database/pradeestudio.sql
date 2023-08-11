-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 11, 2023 at 09:23 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pradeestudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `BookingId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `servicetype` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `bookingdate` date NOT NULL,
  PRIMARY KEY (`BookingId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingId`, `username`, `servicetype`, `package`, `bookingdate`) VALUES
(1, 'tharu', 'service2', 'package2', '2023-08-08'),
(2, 'pradeep', 'service1', 'package2', '2023-07-31'),
(3, 'pradeep', 'service1', 'package2', '2023-07-31'),
(4, 'test1', 'service2', 'package1', '2023-08-16'),
(5, 'test1', 'service2', 'package1', '2023-08-16'),
(6, 'test1', 'service2', 'package1', '2023-08-16'),
(7, 'pradeep', 'service1', 'package1', '2023-08-22'),
(8, 'pradeep', 'service1', 'package1', '2023-08-23'),
(9, 'AA3127', 'service1', 'package1', '2023-08-23'),
(10, 'Mahesh', 'service1', 'package1', '2023-08-29'),
(11, 'pradeep', 'service2', 'package1', '2023-08-21'),
(12, 'pradeep', 'service2', 'package2', '2023-08-23'),
(13, 'pradeep', 'service2', 'package2', '2023-08-23'),
(14, 'pradeep', 'service2', 'package2', '2023-08-23'),
(15, 'pradeep', 'service2', 'package2', '2023-08-23'),
(16, 'tharu', 'service2', 'package2', '2023-08-20'),
(17, 'tharu', 'service1', 'package1', '2023-08-22'),
(18, 'tharu', 'service2', 'package2', '2023-08-17'),
(19, 'user1', 'service1', 'package1', '2023-08-23'),
(20, 'user2', 'service1', 'package1', '2023-08-23'),
(21, 'tharu', 'service1', 'package1', '2023-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `msg_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `msg` varchar(500) NOT NULL,
  PRIMARY KEY (`msg_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_ID`, `name`, `email`, `phone`, `msg`) VALUES
(1, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 1'),
(2, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 1'),
(3, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(4, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 5'),
(5, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 1'),
(6, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 6'),
(7, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 6'),
(8, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 9'),
(9, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 6'),
(10, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(11, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(12, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(13, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(14, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(15, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'test'),
(16, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test'),
(17, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test'),
(18, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test'),
(19, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test'),
(20, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 5'),
(21, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 6'),
(22, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 5'),
(23, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 5'),
(24, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 6'),
(25, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 11'),
(26, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test55'),
(27, 'Mahesh pradeep abekoon', 'www.maheshpradeepabekoon@gmail.com', '0765691098', 'test 1'),
(28, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'hi'),
(29, 'Mahesh pradeep abekoon', 'test2@gmail.com', '0765691098', 'hi'),
(30, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 9'),
(31, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 6'),
(32, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 6'),
(33, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 5'),
(34, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 5'),
(35, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 9'),
(36, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 6'),
(37, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 6'),
(38, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'gggggg'),
(39, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 5'),
(40, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', '555555555'),
(41, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test 9'),
(42, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test last'),
(43, 'Mahesh pradeep abekoon', 'mahesh.educ99@gmail.com', '0765691098', 'test last');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('test1', 'test2@gmail.com', '$2y$10$d'),
('AA3127', 'test2@gmail.com', '$2y$10$B'),
('Mahesh', 'pathumpradeep99@gmail.com', '$2y$10$u'),
('11111', 'maheshpradeepabekoon@gmail.com', '$2y$10$f'),
('1223344', 'www.maheshpradeepabekoon@gmail.com', '$2y$10$/'),
('pradeep', 'pathumpradeep99@gmail.com', '$2y$10$2'),
('kasun', 'pahsaramethnuwn99@gmail.com', '$2y$10$y'),
('tharu', 'test2@gmail.com', '$2y$10$LDX4ZbInS/0Po0NkJ2.VxOlr9qLE2jAWhzc1fmrfzKqHtO7qz6Fn.'),
('kushan', 'pahsaramethnuwn99@gmail.com', '$2y$10$4teb/VSM069xneqbeGRKDeYNlbsyGe2mDBXuC.L2aKr.Ct2Ot2lKm'),
('champa', 'pahsaramethnuwn99@gmail.com', '$2y$10$8muDqhHOTwQ7NcLKjSGJLe8wz8kXHpK.jgXYpYri1KitM4lYOuVg.'),
('tharushi', 'pathumpradeep99@gmail.com', '$2y$10$.ZwM/aF8JZuqU6rWtW2OqevlHTf7qVPsWWsc3On8BrNoYwMBUON12'),
('abekoon', 'www.maheshpradeepabekoon@gmail.com', '$2y$10$ox/u7ZPcQygUvmSaKIa4/OkZJsbYvlqOkBKWM1qydLiLC7hvQF6CO'),
('hesha', 'mahesh.educ99@gmail.com', '$2y$10$/14REzY0KYItNyVUUYCkp.63xPCTX86JUJonjFM3DjO0qXbAz26CC'),
('nasa', 'mahesh.educ99@gmail.com', '$2y$10$yNCmFW8SQwlqpAb0P2YMt.rOAJUENmAkZD2RYOFvLeL8SwzO7vRS6'),
('user1', 'user1@gmail.com', '$2y$10$qpDhadg/g3DpZECrzKWq9OS6WJC9mtehdYWrCGFfAnlIe8HvJiNbG'),
('user2', 'user2@gmail.com', '$2y$10$8HwjnPKKRDultIynSD5qqexdClwTYet.h6OKg5Z5Z9xJOMVAX1csW');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
