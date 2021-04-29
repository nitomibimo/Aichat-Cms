-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 12:36 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oppo_mimpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@admin.com', '123456', '2018-12-11 14:24:45', '0000-00-00 00:00:00'),
(2, 'admin', 'admin@admin.com', 'password', '2018-12-11 14:25:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `nm_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `nm_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Technology', 1, NULL, NULL),
(2, 'Quality of life', 1, NULL, NULL),
(3, 'Fashion', 1, NULL, NULL),
(4, 'Grand Prize', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `id_period` int(10) UNSIGNED NOT NULL,
  `nm_period` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_period` date NOT NULL,
  `end_period` date NOT NULL,
  `undian_at` date NOT NULL,
  `gprize_at` date NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`id_period`, `nm_period`, `start_period`, `end_period`, `undian_at`, `gprize_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lucky Draw A', '2018-11-30', '2018-12-15', '2018-12-20', '2019-01-04', 1, NULL, NULL),
(2, 'Lucky Draw B & Grandprize 1', '2018-12-16', '2018-12-31', '2019-01-04', '2019-01-04', 0, NULL, NULL),
(3, 'Lucky Draw C', '2019-01-01', '2019-01-15', '2019-01-19', '2019-02-07', 0, NULL, NULL),
(4, 'Lucky Draw D & Grandprize 2', '2019-01-16', '2019-01-31', '2019-02-07', '2019-02-07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prize`
--

CREATE TABLE `prize` (
  `prize_id` tinyint(5) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `prize_name` varchar(50) NOT NULL DEFAULT '',
  `prize_desc` text,
  `prize_code` varchar(4) NOT NULL,
  `prize_image_name` varchar(50) DEFAULT NULL,
  `prize_qty` int(11) NOT NULL,
  `total_user` int(11) NOT NULL,
  `_deleted` enum('0','1') DEFAULT '0',
  `_created_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prize`
--

INSERT INTO `prize` (`prize_id`, `category_id`, `prize_name`, `prize_desc`, `prize_code`, `prize_image_name`, `prize_qty`, `total_user`, `_deleted`, `_created_date`, `last_updated`) VALUES
(1, 1, 'Smartwatch imoo', NULL, 'MBLW', '1.png', 20, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:02:42'),
(2, 1, 'O-free', NULL, 'QVBZ', '2.png', 15, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:02:58'),
(3, 1, 'Speaker Harman Kardon', NULL, 'OYIM', '3.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:10'),
(4, 1, 'OPPO F9', NULL, 'AUMO', '4.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:15'),
(5, 1, 'Dyson hairdryer', NULL, 'XLZN', '5.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:27'),
(6, 1, 'G-shock G-Steel', NULL, 'BPZL', '6.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:41'),
(7, 1, 'OPPO Find X', NULL, 'NXOY', '7.png', 5, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:45'),
(8, 2, 'Bean bag', NULL, 'SIGK', '8.png', 30, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:52'),
(9, 2, 'Voucher Traveloka', NULL, 'SYYA', '9.png', 5000, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:03:56'),
(10, 2, 'Voucher Garuda Airlines', NULL, 'KWUY', '10.png', 40, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:04'),
(11, 2, 'Voucher Entertainment', NULL, 'XZBN', '11.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:06'),
(12, 2, 'Trip to Raja Ampat', NULL, 'XYRC', '12.png', 3, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:11'),
(13, 2, 'Umroh', NULL, 'DXNL', '13.png', 3, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:14'),
(14, 4, 'Trip to Dubai', NULL, 'TJKS', '14.png', 1, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:17'),
(15, 4, 'Trip Aurora Borealis', NULL, 'OFAA', '15.png', 1, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:19'),
(16, 4, 'Trip to New York', NULL, 'WEYC', '16.png', 1, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:22'),
(17, 2, 'Voucher Shopee', NULL, 'LQKP', '17.png', 10000, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:25'),
(18, 2, 'Voucher MAP', NULL, 'ZMUV', '18.png', 200, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:29'),
(19, 3, 'Y.O.U MakeUp Set', NULL, 'TCFJ', '19.png', 1000, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:31'),
(20, 3, 'Herschel Backpack', NULL, 'ZJGN', '20.png', 30, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:36'),
(21, 3, 'Accessories Pandora', NULL, 'BANX', '21.png', 15, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:40'),
(22, 3, 'Fine Gold', NULL, 'KDGH', '22.png', 10, 0, '0', '2018-12-07 21:29:31', '2018-12-08 13:04:43'),
(23, 4, '2 Unit Rumah Impian @ Senilai 1M', NULL, 'VVPX', '23.png', 1, 0, '1', '2018-12-07 21:29:31', '2018-12-10 08:45:59'),
(24, 4, 'Uang Tunai 1 M', NULL, 'FJXG', '24.png', 1, 0, '1', '2018-12-07 21:29:31', '2018-12-10 08:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_fullname` varchar(100) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_phone` varchar(25) NOT NULL DEFAULT '',
  `user_address` text NOT NULL,
  `user_kelurahan` varchar(50) NOT NULL,
  `user_kecamatan` varchar(50) NOT NULL,
  `user_kabupaten` varchar(50) NOT NULL,
  `user_propinsi` varchar(50) NOT NULL,
  `user_postcode` varchar(6) NOT NULL,
  `user_buy_date` datetime NOT NULL,
  `user_imei` varchar(15) NOT NULL DEFAULT '',
  `user_no_ktp` varchar(30) NOT NULL,
  `user_path_ktp` varchar(100) NOT NULL,
  `user_path_invoice` varchar(100) NOT NULL,
  `user_path_warranty` varchar(100) NOT NULL,
  `_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `_created_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fullname`, `user_email`, `user_phone`, `user_address`, `user_kelurahan`, `user_kecamatan`, `user_kabupaten`, `user_propinsi`, `user_postcode`, `user_buy_date`, `user_imei`, `user_no_ktp`, `user_path_ktp`, `user_path_invoice`, `user_path_warranty`, `_deleted`, `_created_date`, `last_updated`) VALUES
(1, 'Amanda aliya', 'aduh@aduh.com', '34234234', 'sdfsf', 'sdfsdf', 'sfsdf', 'sdfsdf', 'sdfsdf', 'sdfs', '2018-12-31 00:00:00', 'sdfsdf', 'sdfsdfsdfsf', 'sdfsdfs', 'sdfsfsd', 'sdfsfsdf', '0', '0000-00-00 00:00:00', '2018-12-13 07:18:44'),
(2, 'Ferguso', 'sdsdsadsad', '32424234', 'sdasa', 'ewrwewr', 'erewr', 'werwrw', 'wrwer', 'erw', '2018-12-25 00:00:00', 'ewrwr', 'wrwerw', 'werewrw', 'ewrwe', 'werewrw', '1', '0000-00-00 00:00:00', '2018-12-13 07:18:41'),
(3, 'Sulis', 'sdsdsadsad', '32424234', 'asdaasd', 'ewrwewr', 'erewr', 'werwrw', 'wrwer', 'erw', '2018-12-25 00:00:00', 'ewrwr', 'wrwerw', 'werewrw', 'ewrwe', 'werewrw', '1', '0000-00-00 00:00:00', '2018-12-13 07:18:34'),
(4, 'Dadang', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:18:30'),
(5, 'Muslimin', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:17:54'),
(6, 'Endang', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:17:59'),
(7, 'Markus', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:18:05'),
(8, 'Stevano', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:18:12'),
(9, 'Zaskia', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:18:19'),
(10, 'Thomas', 'asdasdas', 'adasd', 'asdasd', 'asdad', 'sdsaad', 'sdasdasd', 'asdasdasd', 'asdsd', '2018-12-14 00:00:00', 'asdasdad', 'asdasdasd', 'asdasdasda', 'sdasdad', 'asdasdsadaa', '1', '2018-12-26 00:00:00', '2018-12-13 07:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `voucher_id` int(11) UNSIGNED NOT NULL,
  `prize_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `voucher_code` varchar(22) NOT NULL,
  `voucher_winner` enum('0','1') NOT NULL DEFAULT '0',
  `voucher_valid` enum('0','1','2') NOT NULL DEFAULT '0',
  `_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `_created_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`voucher_id`, `prize_id`, `user_id`, `period_id`, `voucher_code`, `voucher_winner`, `voucher_valid`, `_deleted`, `_created_date`, `last_updated`) VALUES
(1, 14, 1, 1, 'menang001', '1', '1', '0', '0000-00-00 00:00:00', '2018-12-13 07:05:57'),
(2, 1, 2, 1, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:21'),
(3, 1, 3, 1, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:01'),
(4, 1, 4, 2, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:55'),
(5, 3, 5, 2, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:07'),
(6, 4, 6, 2, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:09'),
(7, 3, 7, 2, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:12'),
(8, 5, 8, 3, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 08:41:14'),
(9, 8, 9, 3, 'bhkhk', '1', '2', '0', '2018-12-16 00:00:00', '2018-12-13 08:42:44'),
(10, 5, 10, 3, 'bhkhk', '1', '0', '0', '2018-12-16 00:00:00', '2018-12-13 08:42:04'),
(11, 6, 2, 3, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:30:28'),
(12, 8, 2, 3, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:30:32'),
(13, 15, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:42'),
(14, 3, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:45'),
(15, 4, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:47'),
(16, 12, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:53'),
(17, 12, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:55'),
(18, 16, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:57'),
(19, 8, 2, 4, 'bhkhk', '1', '1', '0', '2018-12-16 00:00:00', '2018-12-13 07:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `winner_report`
--

CREATE TABLE `winner_report` (
  `winner_id` int(11) UNSIGNED NOT NULL,
  `winner_voucher_id` int(11) NOT NULL,
  `winner_prize_id` tinyint(5) NOT NULL,
  `_deleted` enum('0','1') DEFAULT '0',
  `_created_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `winner_report`
--

INSERT INTO `winner_report` (`winner_id`, `winner_voucher_id`, `winner_prize_id`, `_deleted`, `_created_date`, `last_updated`) VALUES
(1, 1, 3, '0', '0000-00-00 00:00:00', '2018-12-12 08:01:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id_period`);

--
-- Indexes for table `prize`
--
ALTER TABLE `prize`
  ADD PRIMARY KEY (`prize_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `winner_report`
--
ALTER TABLE `winner_report`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `id_period` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prize`
--
ALTER TABLE `prize`
  MODIFY `prize_id` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `voucher_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `winner_report`
--
ALTER TABLE `winner_report`
  MODIFY `winner_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
