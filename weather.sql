-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 04:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_weather`
--

CREATE TABLE `city_weather` (
  `id` int(11) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `time_taken` timestamp NOT NULL DEFAULT current_timestamp(),
  `temperature` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_weather`
--

INSERT INTO `city_weather` (`id`, `city_name`, `time_taken`, `temperature`) VALUES
(1, 'Jastrzębie-Zdrój', '2021-04-16 11:08:00', 2.41),
(2, 'Jastrzębie-Zdrój', '2021-04-16 11:28:01', 2.59),
(3, 'Jastrzębie-Zdrój', '2021-04-16 12:00:01', 2.97),
(4, 'Jastrzębie-Zdrój', '2021-04-17 02:00:01', 2.41),
(5, 'Jastrzębie-Zdrój', '2021-04-17 03:00:00', 2.41),
(6, 'Jastrzębie-Zdrój', '2021-04-17 04:00:00', 2.41),
(7, 'Jastrzębie-Zdrój', '2021-04-17 05:00:00', 2.41),
(8, 'Jastrzębie-Zdrój', '2021-04-17 06:00:00', 2.78),
(9, 'Jastrzębie-Zdrój', '2021-04-17 07:00:00', 2.96),
(10, 'Jastrzębie-Zdrój', '2021-04-17 08:00:00', 2.97),
(11, 'Jastrzębie-Zdrój', '2021-04-17 09:00:00', 3.33),
(12, 'Jastrzębie-Zdrój', '2021-04-17 10:00:00', 3.33),
(13, 'Jastrzębie-Zdrój', '2021-04-17 11:00:01', 3.7),
(14, 'Jastrzębie-Zdrój', '2021-04-17 12:00:00', 4.25),
(15, 'Jastrzębie-Zdrój', '2021-04-17 23:00:00', 4.25),
(16, 'Jastrzębie-Zdrój', '2021-04-18 00:00:00', 4.44),
(17, 'Jastrzębie-Zdrój', '2021-04-18 01:00:01', 4.44),
(18, 'Jastrzębie-Zdrój', '2021-04-18 02:00:00', 4.25),
(19, 'Jastrzębie-Zdrój', '2021-04-18 03:00:13', 4.44),
(20, 'Jastrzębie-Zdrój', '2021-04-18 06:52:37', 4.81),
(21, 'Jastrzębie-Zdrój', '2021-04-18 07:00:01', 4.81),
(22, 'Jastrzębie-Zdrój', '2021-04-18 08:00:02', 5.19),
(23, 'Jastrzębie-Zdrój', '2021-04-18 09:00:01', 6.29),
(24, 'Jastrzębie-Zdrój', '2021-04-18 10:00:02', 6.48),
(25, 'Jastrzębie-Zdrój', '2021-04-18 11:00:00', 7.04),
(26, 'Jastrzębie-Zdrój', '2021-04-18 12:00:00', 8.14),
(27, 'Jastrzębie-Zdrój', '2021-04-18 13:00:01', 8.87),
(28, 'Jastrzębie-Zdrój', '2021-04-18 14:00:01', 9.25),
(29, 'Jastrzębie-Zdrój', '2021-04-18 15:00:02', 9.8);

-- --------------------------------------------------------

--
-- Indexes for table `city_weather`
--
ALTER TABLE `city_weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_weather`
--
ALTER TABLE `city_weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
