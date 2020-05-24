-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2020 at 02:33 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_e` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_s` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_e`, `name`, `id_s`) VALUES
(1, 'empl1', 1),
(2, 'empl2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_s` int(10) NOT NULL,
  `service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_s`, `service`) VALUES
(1, 'remontturbin'),
(2, 'remonthodovoi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(10) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `problem` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `phonenumber`, `problem`) VALUES
(19, 'Ян', '1234567890', 'субдлор'),
(4, 'werwew', '1234567890', 'saasdadda'),
(5, 'Максим', '0966198393', 'поломка турбіни'),
(6, 'Максим', '0966198393', 'поломка турбіни'),
(7, 'петро', '1234567890', 'фаввіфаіавфафівафіваі'),
(8, 'Назар', '1234567890', 'ремонт рульової рейки'),
(9, 'Роман', '1234567890', 'іфівфівівфівфівфівівфвфіф'),
(10, 'werwew', 'йцукенгшщз', 'івавафі'),
(11, 'werwew', 'qwertyuiop', 'qdqed13e12de21dqe'),
(12, 'werwew', 'qwertyuiop', 'erwegergweg'),
(13, 'werwew', 'qwertyuiop', 'йуцйуйцккцй'),
(14, 'werwew', '0966198393', 'йуцйуйцккцй'),
(15, 'Ян', '1234567890', 'йцйуйуйцйц'),
(16, 'Ян', '0966198393', 'стукає двигун'),
(17, 'Ян', '1234567890', 'afaffsdfs'),
(18, 'werwew', '1234567890', 'ghvghv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_e`),
  ADD KEY `id_s` (`id_s`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_s`),
  ADD KEY `id_s` (`id_s`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id_e` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id_s` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_s`) REFERENCES `service` (`id_s`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
