-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 01:40 PM
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
-- Database: `payment_gateway`
--

-- --------------------------------------------------------

--
-- Table structure for table `gateway`
--

CREATE TABLE `gateway` (
  `id` int(11) NOT NULL,
  `amount` int(255) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gateway`
--

INSERT INTO `gateway` (`id`, `amount`, `razorpay_payment_id`, `product_id`, `status`, `date`) VALUES
(1, 989, 'pay_OSAMVEyXQZjLHC', '1', NULL, '2024-06-28 17:26:53'),
(2, 12, 'pay_OSAQs0YY0jlRxd', '1', NULL, '2024-06-28 17:26:53'),
(3, 5, 'pay_OSASZIVcy1AGyD', '1', NULL, '2024-06-28 17:26:53'),
(4, 7, 'pay_OSAVGT0xuG0vkH', '1', NULL, '2024-06-28 17:26:53'),
(5, 7, 'pay_OSAcy8rolS160l', '1', NULL, '2024-06-28 17:26:53'),
(6, 4, 'pay_OSAeI8nimn8ocG', '1', NULL, '2024-06-28 17:26:53'),
(7, 898, 'pay_OSAhV8aDS0OMBx', '1', NULL, '2024-06-28 17:26:53'),
(8, 546, 'pay_OSAhxrYPP3Tffg', '1', NULL, '2024-06-28 17:26:53'),
(9, 768, 'pay_OSAkjZkOhixYFn', '1', NULL, '2024-06-28 17:28:00'),
(10, 1200, 'pay_OSAqCaXNhvKOAG', '1', NULL, '2024-06-28 17:33:10'),
(11, 50, 'pay_OSBA1T9yUctwwZ', '1', NULL, '2024-06-28 17:52:01'),
(12, 59, 'pay_OSBBD7lKdTpr7U', '1', NULL, '2024-06-28 17:53:04'),
(13, 300, 'FAILED', '1', 'failure', '2024-06-29 10:30:56'),
(14, 78, 'pay_OSSSrVHYbp04Jn', '1', 'failure', '2024-06-29 10:47:26'),
(15, 78, 'pay_OSSTMsVtLGNi6m', '1', 'success', '2024-06-29 10:48:01'),
(16, 80, 'pay_OSSVTlFk6hmXsl', '1', 'failure', '2024-06-29 10:49:56'),
(17, 80, 'pay_OST39wq1DDKbZ0', '1', 'failure', '2024-06-29 11:21:47'),
(18, 50, 'pay_OST4cwwcHfsv28', '1', 'failure', '2024-06-29 11:23:10'),
(19, 100, 'pay_OST60Hc0o5vUgO', '1', 'failure', '2024-06-29 11:24:28'),
(20, 120, 'pay_OST7SoZsMaeMvj', '1', 'failure', '2024-06-29 11:25:51'),
(21, 54, '1001', '1', 'success', '2024-06-29 11:40:31'),
(22, 33, '1001', '1', 'pay_OSTPXljnf5Q2uisuccess', '2024-06-29 11:43:05'),
(23, 3, 'razopay_0023', '1', 'Success: pay_OSTfStljEkS472', '2024-06-29 11:58:09'),
(24, 67, 'razopay_0024', '1', 'Failue: pay_OSTh2MA5wdBzmq', '2024-06-29 11:59:31'),
(25, 567, 'razopay_0025', '1', 'Failue: pay_OSUmjQQBjAV8ZT', '2024-06-29 13:03:38'),
(26, 10, 'razopay_0026', '1', 'Failue: pay_OTLNObHyl5UA6h', '2024-07-01 16:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `razorpay_payment_id`, `status`, `email`, `price`) VALUES
(1, '123', '123', 'success', 'something', 0),
(2, 'order_GOULzvaUdTkGxh', 'pay_GOUMD2ci7aJIq6', 'success', 'admin@azhark.com', 0),
(3, 'order_GOUOQbjWaGxTtn', 'pay_GOUOaVKgUe6vyY', 'success', 'contact@azhark.com', 500);

-- --------------------------------------------------------

--
-- Table structure for table `paytm`
--

CREATE TABLE `paytm` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `cust_id` varchar(12) NOT NULL,
  `industry_type_id` varchar(12) NOT NULL,
  `channel_id` varchar(12) NOT NULL,
  `txn_amount` decimal(10,2) NOT NULL,
  `txn_status` varchar(20) NOT NULL,
  `txn_response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payumoney`
--

CREATE TABLE `payumoney` (
  `id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `posted_hash` varchar(128) DEFAULT NULL,
  `merchant_key` varchar(50) DEFAULT NULL,
  `product_info` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payumoney`
--

INSERT INTO `payumoney` (`id`, `status`, `firstname`, `amount`, `txnid`, `posted_hash`, `merchant_key`, `product_info`, `email`) VALUES
(1, 'success', 'B N Manish', 10.00, 'e87d5e73e1c51b370b42', '5e5381a029ef51823242a336fd79b32c58db188c3088bf3326a2d17cb67a5a6926ef22502ab471bbc8283c354120553de4de4748210b32e343b450cc682b8092', 'oZ7oo9', 'Product Information', 'email@example.com'),
(2, 'failure', 'B N Manish', 10.00, '71b688718b8c043791d2', 'd9234d46d149ec96fe2e876882d921ad0ee8de4fd0b48a03f6d7bb681107ced2932c1c00b6aab6be00761bad322b37b06b880e9a2eb2164489ae0c08dfd1bf1b', 'oZ7oo9', 'Product Information', 'email@example.com'),
(3, 'failure', 'B N Manish', 10.00, '61154bcc269d256e5266', '1ae471585e1f36dbac9ce76b3e07094d3b3a925a46a4232e0561c2e0a0cb500da794411dc01c2e07ca5a8a03f707dc1eab9b43ab4296ee3884b26b97e6006006', 'oZ7oo9', 'Product Information', 'email@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gateway`
--
ALTER TABLE `gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paytm`
--
ALTER TABLE `paytm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payumoney`
--
ALTER TABLE `payumoney`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gateway`
--
ALTER TABLE `gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paytm`
--
ALTER TABLE `paytm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payumoney`
--
ALTER TABLE `payumoney`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
