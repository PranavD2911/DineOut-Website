-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: May 22, 2023 at 07:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radhekrishna`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `enquiry_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `date` date NOT NULL,
  `people` int(100) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`enquiry_id`, `name`, `email`, `phone`, `date`, `people`, `message`) VALUES
(1, 'Omkar Nandaram Khaire ', 'abc@gmail.com', 2147483647, '2023-05-21', 5, 'vsvc cxsd vdsvds'),
(2, 'anjali satre', 'anjalisatre52705@gmail.com', 2147483647, '2023-05-22', 6, 'Hi I wat to book this table');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `enquiry_dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `name`, `email`, `subject`, `message`, `enquiry_dt`) VALUES
(2, 'Pranav Dhage ', 'abc@gmail.com', 'Hi this is subject section', 'ahc ajc jhajc ', '2023-05-20'),
(4, 'Jay Hadavale', 'abc@gmail.com', 'Hi this is subject section', 'Hi I am jay', '2023-05-22'),
(5, 'Anjali Satre', 'yediajali@123', 'Hi this is subject section', 'sdcdscc mcc c cdcdkhbc cxmcxc cxccm ', '2023-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `enquiry_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`enquiry_id`, `username`, `password`) VALUES
(1, 'pranav123', 'pranav123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
