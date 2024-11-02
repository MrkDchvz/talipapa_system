-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 04:24 PM
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
-- Database: `myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accountType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountId`, `username`, `password`, `accountType`) VALUES
(1, 'admin', '123', 'ADMIN'),
(2, 'cashier', '321', 'CASHIER');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `isVoid` tinyint(1) NOT NULL DEFAULT 0,
  `orderDate` datetime NOT NULL,
  `productId` int(11) NOT NULL,
  `orderQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `totalAmount`, `isVoid`, `orderDate`, `productId`, `orderQuantity`) VALUES
(1, 1000, 1, '2014-07-06 00:00:00', 1, 0),
(2, 100, 1, '2024-01-11 16:41:30', 4, 10),
(4, 100, 1, '2024-01-11 16:44:07', 1, 10),
(5, 400, 1, '2024-01-12 12:08:36', 2, 4),
(6, 10, 1, '2024-01-13 07:45:45', 4, 1),
(7, 20, 1, '2024-01-13 07:48:36', 6, 2),
(8, 100, 1, '2024-01-13 09:27:18', 4, 10),
(9, 1, 1, '2024-01-13 16:36:24', 4, 1),
(12, 4900, 1, '2024-01-17 10:42:13', 14, 70),
(13, 204, 0, '2024-01-17 11:04:21', 20, 17),
(14, 70, 1, '2024-01-17 13:14:30', 21, 7),
(15, 4200, 1, '2024-01-17 13:17:28', 14, 60),
(16, 54, 0, '2024-01-17 18:34:55', 11, 6),
(17, 10, 0, '2024-01-17 19:19:53', 15, 1),
(18, 24, 0, '2024-01-17 19:35:25', 17, 3),
(19, 42, 1, '2024-01-17 20:53:35', 27, 7),
(20, 84, 1, '2024-01-17 20:57:52', 32, 7),
(21, 510, 1, '2024-01-17 20:57:52', 23, 30),
(22, 156, 1, '2024-01-17 21:17:28', 33, 13),
(23, 192, 1, '2024-01-17 21:19:12', 34, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stockQuantity` int(11) NOT NULL,
  `productType` varchar(255) NOT NULL,
  `isVoid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `price`, `stockQuantity`, `productType`, `isVoid`) VALUES
(1, 'BLUE BALLPEN', 10, 4, 'Office Supply', 1),
(2, 'YELLOW PAD PAPER', 100, 14, 'Office Supply', 1),
(3, 'BLACK BALLPEN', 10, 30, 'Office Supply', 1),
(4, 'PENCIL', 1, 21, 'Office Supply', 1),
(6, 'OISHI BREAD PAN', 10, 16, 'Office Supply', 1),
(8, 'LARGE NOTEBOOK', 10, 10, 'Office Supply', 1),
(9, 'GLUE', 9, 6, 'Office Supply', 1),
(10, '1/4 PAD PAPER', 16, 13, 'Office Supply', 1),
(11, 'GREEN BALLPEN', 9, 0, 'Office Supply', 0),
(13, 'CHIPS', 69, 69, 'Dry Foods', 0),
(14, 'KANGKONG CHIPS MAX', 70, 70, 'Dry Foods', 0),
(15, 'GREAT TASTE WHITE COFFEE', 10, 10, 'Dry Foods', 0),
(16, 'FLEX TAPE', 20, 1, 'Office Supply', 1),
(17, 'OISHI BREAD PAN', 8, 0, 'Dry Foods', 0),
(18, 'MEOW MEOW GLOVES', 10, 14, 'Equipment', 1),
(19, 'FUWA FUWA BREAD', 20, 10, 'Dry Foods', 0),
(20, 'ZESTO APPLE JUICE', 12, 0, 'Dry Foods', 0),
(21, 'ZESTO ORANGE JUICE', 10, 11, 'Dry Foods', 0),
(22, 'KIT KAT CHOCOLATE', 20, 40, 'Dry Foods', 0),
(23, 'HERSHEY\'S WHITE CHOCOLATE', 17, 30, 'Dry Foods', 0),
(24, 'YELLOW BALLPEN', 10, 20, 'Office Supply', 0),
(25, 'MOBY HUGE', 69, 69, 'Dry Goods', 0),
(26, 'ORANGE', 23, 40, 'Fruit', 0),
(27, 'ERASER', 6, 7, 'Office Supply', 0),
(28, 'POTATO CHIPS', 10, 10, 'Dry Foods', 0),
(29, 'FUW FUWA CHOCOLATE', 6, 5, 'Dry Foods', 0),
(30, 'BOND PAPER', 11, 9, 'Office Tools', 0),
(31, 'CHICKEN', 13, 18, 'Frozen Foods', 0),
(32, 'GROUND BEEF', 12, 7, 'Frozen Products', 0),
(33, 'PORK', 12, 13, 'Frozen Foods', 0),
(34, 'SQUID', 16, 12, 'Frozen Foods', 0),
(35, 'GROUND PORK', 12, 12, 'Frozen Foods', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
