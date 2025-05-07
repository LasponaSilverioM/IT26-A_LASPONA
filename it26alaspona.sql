-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 10:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it26alaspona`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `number_of_complaints` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email_address`, `number_of_complaints`) VALUES
(1013, 'earl', 'navarro', 'iloveyou@gmail.com', 40),
(1015, 'clive', 'quino', 'vicegovernor@gmail.com', 31),
(1030, 'oniel', 'roque', 'oniel@gmail.com', 20),
(1032, 'rence', 'renren', 'rensoy@gmail.com', 11),
(1034, 'tristan', 'tantan', 'tristan@gmail.com', 2),
(1042, 'diether', 'do', 'dieth@gmail.com', 12),
(1043, 'hehe', 'Barsobia', 'barsobia@gmail.com', 2),
(1044, 'louie', 'biboy', 'bebot@gmail.com', 7),
(1045, 'anthony', 'tonton', 'anthony@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `purchase_number` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`purchase_number`, `order_id`, `date_of_purchase`, `customer_id`) VALUES
(1001, 11101, '2024-02-03', 1044),
(1002, 11102, '2024-02-05', 1043),
(1003, 11103, '2024-02-03', 1045),
(1004, 11104, '2024-02-15', 1042),
(1005, 11105, '2024-02-17', 1034),
(1007, 11107, '2024-02-29', 1032),
(1008, 11103, '2024-02-07', 1013),
(1009, 11109, '2024-12-07', 1015),
(1020, 11120, '2024-12-17', 1030);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`purchase_number`,`order_id`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;