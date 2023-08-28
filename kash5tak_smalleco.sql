-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2023 at 06:56 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kash5tak_smalleco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$YU02HpNDZZS7dPmuyq0nM..D.ZX9D6WKaG3TrweHLh1qdbULymzj2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `logo`, `created_at`, `updated_at`, `type`) VALUES
(10, 'احذيه', 'shoes', 'uploads/1657369133xds.jpg', '2022-07-09 12:18:53', '2022-07-09 12:18:53', 'male'),
(11, 'بنطلون', 'trouser', 'uploads/1657369144wweew.jpg', '2022-07-09 12:19:04', '2022-07-09 12:19:04', 'male'),
(12, 'تنورة', 'skirt', 'uploads/1657369154eee.jpg', '2022-07-09 12:19:14', '2022-07-09 12:19:14', 'male'),
(13, 'ساعة ذكية', 'smart watch', 'uploads/1657369164www.jpg', '2022-07-09 12:19:24', '2022-07-09 12:19:24', 'male'),
(14, 'شنط', 'bags', 'uploads/1657369174sss.jpg', '2022-07-09 12:19:34', '2022-07-09 12:19:34', 'male'),
(15, 'فساتين', 'Dresses', 'uploads/1657369185dw.jpg', '2022-07-09 12:19:45', '2022-07-09 12:19:45', 'male'),
(16, 'تجربة', 'test', 'uploads/1664829046666.JPG', '2022-10-03 20:30:46', '2022-10-03 20:30:46', 'female'),
(17, 'تجربة', 'Test', 'uploads/1665597706Screenshot_٢٠٢٢-١٠-١٢-١٩-٥٠-٤٠-٣٩٧_com.example.shopping.jpg', '2022-10-12 18:01:46', '2022-10-12 18:01:46', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, '5ffffffff', 'ahmedsamye777@gmail.com', '111111111', 'ffffffffff', '2022-06-21 21:33:39', '2022-06-21 21:33:39'),
(2, 'siham', 'nada21.ali2021@gmail.com', '9671234567', 'usa', '2022-07-26 20:15:27', '2022-07-26 20:15:27'),
(3, 'ahmed', 'smsm91022@gmail.com', '967123455', 'egypt', '2022-08-04 11:26:06', '2022-08-04 11:26:06'),
(4, 'Ahmed', 'sw@gmail.com', '123456', 'egypt', '2022-08-07 08:57:31', '2022-08-07 08:57:31'),
(5, 'Ayman', 'dd@gmail.com', '123456', 'egypt', '2022-08-07 08:59:18', '2022-08-07 08:59:18'),
(6, 'Ayman', 'dd@gmail.com', '123456', 'egypt', '2022-08-07 09:01:21', '2022-08-07 09:01:21'),
(7, 'siham', 'ddd@gmail.com', '222222', 'sanaa', '2022-08-07 18:53:19', '2022-08-07 18:53:19'),
(8, 'ALI', 'ff@gmail.com', '123456', 'dubai', '2022-08-07 20:18:26', '2022-08-07 20:18:26'),
(9, 'si', 'si@gmail.com', '123456789', 'dubai', '2022-08-07 20:27:16', '2022-08-07 20:27:16'),
(10, 'mona', 'mina@gmail.com', '1234567890', 'egypt', '2022-08-07 21:10:42', '2022-08-07 21:10:42'),
(11, 'bavly', 'bavly@gmail.com', '012345', 'egypt', '2022-08-07 21:38:39', '2022-08-07 21:38:39'),
(12, 'ahmed', 'smsm91022@gmail.com', '967123455', 'egypt', '2022-08-10 09:04:36', '2022-08-10 09:04:36'),
(13, 'medo', 'ahmed@ahmed.com', '08', 'dwadwadafczxcwa', '2022-08-10 19:56:57', '2022-08-10 19:56:57'),
(14, 'xdw', 'ahmed@ahmed.com', '09', 'dwadazxcw', '2022-08-10 20:00:15', '2022-08-10 20:00:15'),
(15, 'xdw', 'ahmed@ahmed.com', '09', 'dwadazxcw', '2022-08-10 20:00:53', '2022-08-10 20:00:53'),
(16, 'xdw', 'ahmed@ahmed.com', '09', 'dwadazxcw', '2022-08-10 20:08:20', '2022-08-10 20:08:20'),
(17, 'xdw', 'ahmed@ahmed.com', '09', 'dwadazxcw', '2022-08-10 20:08:32', '2022-08-10 20:08:32'),
(18, 'mef', 'feaf@asdaw.com', '151231', 'awdawdzxcwa', '2022-08-10 20:10:47', '2022-08-10 20:10:47'),
(19, 'ye', 'ye@ye.com', '0515121351', 'dwadzcwzzz', '2022-08-10 20:47:18', '2022-08-10 20:47:18'),
(20, 'nano', 'nano@gmail.com', '123456', 'egy', '2022-08-11 09:11:07', '2022-08-11 09:11:07'),
(21, 'soso', 'ss@gmail.com', '1233', 'we', '2022-08-11 09:23:15', '2022-08-11 09:23:15'),
(22, 'gg', 'ggjj', '222', 'we', '2022-08-11 09:28:11', '2022-08-11 09:28:11'),
(23, 'tr', 'vhhf', '55666', 'ttt', '2022-08-11 09:31:03', '2022-08-11 09:31:03'),
(24, 'kk', 'kk@gmail.com', '123456', 'eee', '2022-08-11 15:50:30', '2022-08-11 15:50:30'),
(25, 'dd', 'dd@gmail.com', '12345', 'sana', '2022-08-11 17:57:39', '2022-08-11 17:57:39'),
(26, 'dd', 'dd@gmail.com', '12345', 'sana', '2022-08-11 18:00:23', '2022-08-11 18:00:23'),
(27, 'cc', 'cc@gmail.com', '1111', 'ggg', '2022-08-11 18:01:10', '2022-08-11 18:01:10'),
(28, 'cc', 'cc@gmail.com', '1111', 'ggg', '2022-08-11 18:04:20', '2022-08-11 18:04:20'),
(29, 'siham', 'sih@gmail.com', '123456', 'rrr', '2022-08-11 18:05:48', '2022-08-11 18:05:48'),
(30, 'siham', 'sih@gmail.com', '123456', 'rrr', '2022-08-11 18:05:53', '2022-08-11 18:05:53'),
(31, 'siham', 'sih@gmail.com', '123456', 'rrr', '2022-08-11 18:05:54', '2022-08-11 18:05:54'),
(32, 'siham', 'sih@gmail.com', '123456', 'rrr', '2022-08-11 18:06:04', '2022-08-11 18:06:04'),
(33, 'ss', 'ss@gmail', '123', 'dd', '2022-08-11 18:08:45', '2022-08-11 18:08:45'),
(34, 'sm', 'sm@gmail.com', '1212', 'we', '2022-08-11 18:24:33', '2022-08-11 18:24:33'),
(35, 'ssss', 'ssss', '2222', 'er', '2022-08-11 18:28:49', '2022-08-11 18:28:49'),
(36, 'jgnajwg', 'gawnmfmaf@gmail.com', '513213123', 'adwadwdazxcwacfz', '2022-08-11 19:19:26', '2022-08-11 19:19:26'),
(37, 'dd', 'dd', '0096773741454412', 'ghj', '2022-08-11 20:55:24', '2022-08-11 20:55:24'),
(38, 'saad', 'saa@g.com', '147', 'masr', '2022-08-15 08:09:10', '2022-08-15 08:09:10'),
(39, 'mona', 'dd@gm.com', '122', 'fff', '2022-08-15 08:29:33', '2022-08-15 08:29:33'),
(40, 'somia', 'ee', '155', 'vv', '2022-08-15 08:35:05', '2022-08-15 08:35:05'),
(41, 'Mohamed', 'mo', '1223', 'vv', '2022-08-15 08:45:27', '2022-08-15 08:45:27'),
(42, 'Omar', 'dd', '1236', 'gg', '2022-08-15 18:44:45', '2022-08-15 18:44:45'),
(43, 'Omar', 'dd', '1236', 'gg', '2022-08-15 18:44:46', '2022-08-15 18:44:46'),
(44, 'hhh', 'g', '1236', 't', '2022-08-15 18:55:47', '2022-08-15 18:55:47'),
(45, 'oo', 'oo', '33', 'pp', '2022-08-15 18:57:08', '2022-08-15 18:57:08'),
(46, 'ggh', 'jjh', '--', 'ff', '2022-08-15 18:57:56', '2022-08-15 18:57:56'),
(47, 'ggh', 'jjh', '--', 'ff', '2022-08-15 18:58:19', '2022-08-15 18:58:19'),
(48, 'kemo', 'wajdaw@asdwacom', '09', 'awkdjawkzvcafc', '2022-08-16 09:15:44', '2022-08-16 09:15:44'),
(49, 'fawfwadaw', 'adwdwa@asdwa.com', '09', '4adwadawzca', '2022-08-16 09:17:35', '2022-08-16 09:17:35'),
(50, 'fawdwada', 'awdwadwad', '0124212', 'dwadwadawd', '2022-08-16 13:47:14', '2022-08-16 13:47:14'),
(51, 'jhkhbkgbhbjhv', 'adwad@asdwa.com', '05', 'dawzxcwazcwacz', '2022-08-24 18:39:10', '2022-08-24 18:39:10'),
(52, 'abody', 'bahadi@gmail.com', '0562650822', 'ghhhhh', '2022-08-24 18:39:13', '2022-08-24 18:39:13'),
(53, 'abody', 'bahadi@gmail.com', '0562650822', 'ghhhhh', '2022-08-24 18:39:24', '2022-08-24 18:39:24'),
(54, 'reewswrdf', 'bx@x.com', '01425', 'egypt dor tany', '2022-08-24 18:45:40', '2022-08-24 18:45:40'),
(55, 'adope', 'bassa@gmail.com', '0562650822', 'yuuy', '2022-08-24 18:45:44', '2022-08-24 18:45:44'),
(56, 'dwa', 'dwaczsc2@yahoo.com', '014252', 'asdawdzcx', '2022-08-24 18:46:55', '2022-08-24 18:46:55'),
(57, 'yyyyy', 'bbb@.bb.com', '0562650822', 'hhhhh', '2022-08-24 18:47:24', '2022-08-24 18:47:24'),
(58, 'safi', 'sa', '555', 'ddg', '2022-08-26 19:17:47', '2022-08-26 19:17:47'),
(59, 'siham', 'siham', '00967778404656', 'cc', '2022-08-26 19:41:24', '2022-08-26 19:41:24'),
(60, 'siham', 'siham', '0096777328837', 'cc', '2022-08-26 19:42:00', '2022-08-26 19:42:00'),
(61, 'ggg', 'hhh', '5555', 'kkk', '2022-08-26 21:15:14', '2022-08-26 21:15:14'),
(62, 'Arwa', 'Ar', '666', 'er', '2022-08-31 20:56:56', '2022-08-31 20:56:56'),
(63, 'Yehya', 'y', '888', 'yy', '2022-08-31 20:58:12', '2022-08-31 20:58:12'),
(64, 'yasmin', 'y', '9999', 'y', '2022-08-31 21:02:35', '2022-08-31 21:02:35'),
(65, 'Mohammed', 'moh', '89', 'mog', '2022-08-31 21:56:50', '2022-08-31 21:56:50'),
(66, 'Maha', 'nn', '66', 'mmm', '2022-08-31 21:57:36', '2022-08-31 21:57:36'),
(67, 'noor', 'bb', '1236', 'bbb', '2022-08-31 22:03:53', '2022-08-31 22:03:53'),
(68, '6666', '6666', '6666', '666', '2022-09-01 07:53:44', '2022-09-01 07:53:44'),
(69, 'ii', 'tyy', '323', 'ghu', '2022-09-15 19:41:32', '2022-09-15 19:41:32'),
(70, 'kk', 'ggfy', '999', '123', '2022-09-15 19:44:56', '2022-09-15 19:44:56'),
(71, 'gg', 'qe', '1230', 'ghj', '2022-09-15 20:36:31', '2022-09-15 20:36:31'),
(72, 'اسماء', 'siham', '1236', 'ff', '2022-09-17 19:57:34', '2022-09-17 19:57:34'),
(73, 'Somya', 'dfgh', '6669', 'vbb', '2022-09-17 20:14:28', '2022-09-17 20:14:28'),
(74, 'gg', 'ggg', '858', 'hhh', '2022-09-17 21:22:55', '2022-09-17 21:22:55'),
(75, 'nano', 'dd', '5565', 'bbjj', '2022-09-18 18:17:58', '2022-09-18 18:17:58'),
(76, 'sdadaw', 'awdwadwa', '0512151213', 'adwdwa', '2022-09-23 12:45:52', '2022-09-23 12:45:52'),
(77, 'awh', 'wadwad', '051212', 'asdwadzxcwa', '2022-09-23 12:58:31', '2022-09-23 12:58:31'),
(78, 'ds', 'dwda', '32512', 'dadaw', '2022-09-23 13:33:59', '2022-09-23 13:33:59'),
(79, 'عبير', 'ss@gmail.com', '123', '123', '2022-09-23 22:13:04', '2022-09-23 22:13:04'),
(80, 'Ahmed', 'hhhgv', '2222', 'egypt', '2022-09-25 20:18:07', '2022-09-25 20:18:07'),
(81, 'Siham', 'gg@gmail.com', '996', 'اللن', '2022-09-26 15:16:36', '2022-09-26 15:16:36'),
(82, 'koky', 'dd', '963', 'gj', '2022-09-26 20:23:40', '2022-09-26 20:23:40'),
(83, 'dwadwad', 'dadwadawd@adwad.com', '000', 'dwadawdwa', '2022-09-27 14:39:18', '2022-09-27 14:39:18'),
(84, 'سمسم', 'ووو', '123', 'ووو', '2022-09-27 20:05:01', '2022-09-27 20:05:01'),
(85, 'bbb', 'ggf', '999', 'dgh', '2022-09-28 08:41:50', '2022-09-28 08:41:50'),
(86, 'احمد', 'ahmedsamye777@gmail.com', '01279568336', 'طنطا دولة و انا فرد منها', '2022-10-12 18:16:23', '2022-10-12 18:16:23'),
(87, 'ghntfvd', 'gghvcdd@dfff.com', '52885478', 'ggsxcww', '2022-10-15 17:15:46', '2022-10-15 17:15:46'),
(88, 'Abdullah', 'bahadik@gmail.com', '0562650822', 'jeddah', '2022-10-15 17:16:30', '2022-10-15 17:16:30'),
(89, 'cjxhdhxdd', 'xhxhxhxshs@sgshsj.com', '52885478', 'xhxhxhxdjxnxmxmss', '2022-10-15 17:17:11', '2022-10-15 17:17:11'),
(90, 'ff', 'fff', '1235', 'fggg', '2022-10-20 19:05:08', '2022-10-20 19:05:08'),
(91, 'frcvy', 'xdfsa@zdd.com', '025241552', 'gehntgnk', '2022-10-20 20:47:26', '2022-10-20 20:47:26'),
(92, 'تونه', 'تت', '888', 'يببل', '2022-10-21 20:06:24', '2022-10-21 20:06:24'),
(93, 'تونه', 'تت', '888', 'يببل', '2022-10-21 20:06:25', '2022-10-21 20:06:25'),
(94, 'لاتو', 'ىىبب', '55888', 'ىىرر', '2022-10-22 18:41:05', '2022-10-22 18:41:05'),
(95, 'ىىللل', 'للققق', '55555555', 'للللل', '2022-10-23 04:47:53', '2022-10-23 04:47:53'),
(96, 'fgbd', 'gghvcdd@dfff.com', '5288658525', 'ffvdswe', '2022-11-06 20:09:43', '2022-11-06 20:09:43'),
(97, 'fisksdk', 'xhxhxhxshs@sgshsj.com', '5288658525', 'xjdjdnssjsk', '2022-11-06 20:19:24', '2022-11-06 20:19:24'),
(98, 'dudjdhdsn', 'zbzjzjzx@djdj.com', '5288658525', 'dhsusjsnsns', '2022-11-06 20:23:42', '2022-11-06 20:23:42'),
(99, 'xjshsbs', 'dhddhdb@zjdj.com', '5288658525', 'fjdjdjd', '2022-11-06 20:27:57', '2022-11-06 20:27:57'),
(100, 'djddkd', 'fkgjgjfjf@sjdjd.com', '5288658525', 'fkfjdkdkslsl', '2022-11-06 20:30:27', '2022-11-06 20:30:27'),
(101, 'dhxhsjs', 'dhddhdb@zjdj.com', '5288658525', 'cjxjdj', '2022-11-06 20:32:30', '2022-11-06 20:32:30'),
(102, 'asdwadwa', 'dawdwad', '123123123', 'wadwadwadwa', '2022-11-06 20:35:23', '2022-11-06 20:35:23'),
(103, 'djdjdjd', 'dudhdhchxh', '5288658525', 'hxhxhdb', '2022-11-06 20:38:02', '2022-11-06 20:38:02'),
(104, 'urrudu', 'idjdjddj', '5288658525', 'jxdjdjjd', '2022-11-06 20:40:20', '2022-11-06 20:40:20'),
(105, 'fydhzhz', 'dhdhdhdd', '5288658525', 'zhshsbsn', '2022-11-06 20:43:01', '2022-11-06 20:43:01'),
(106, 'cdjdhd', 'dbdnsjs', '5288658525', 'dnsjsjaa', '2022-11-06 20:49:01', '2022-11-06 20:49:01'),
(107, 'djdj', 'jdjxjd', '5288658525', 'djzisisos', '2022-11-06 20:49:40', '2022-11-06 20:49:40'),
(108, 'xhsjsjs', 'sbdhshs', '598644', 'xbdbsbsh', '2022-11-06 20:56:30', '2022-11-06 20:56:30'),
(109, 'dwadwad', 'dawdwad@gmail.com', '35465465', 'awdwadwa', '2022-11-07 14:13:39', '2022-11-07 14:13:39'),
(110, 'dwadwad', 'dawdwad@gmail.com', '35465465', 'awdwadwa', '2022-11-07 14:14:01', '2022-11-07 14:14:01'),
(111, 'dwadawdad', 'dwadawdadzxcwa@gmail.com', '54165156', 'dwadadawd', '2022-11-07 14:14:51', '2022-11-07 14:14:51'),
(112, 'dwadawdad', 'dwadawdadzxcwa@gmail.com', '54165156', 'dwadadawd', '2022-11-07 14:15:16', '2022-11-07 14:15:16'),
(113, 'dwadawdad', 'dwadawdadzxcwa@gmail.com', '54165156', 'dwadadawd', '2022-11-07 14:15:33', '2022-11-07 14:15:33'),
(114, 'dwadaw', 'dwadawd@gmail.com', '54165156', 'dawdwad', '2022-11-07 14:17:31', '2022-11-07 14:17:31'),
(115, 'dwadaw', 'dwadawd@gmail.com', '54165156', 'dawdwad', '2022-11-07 14:17:31', '2022-11-07 14:17:31'),
(116, 'dwadaw', 'dwadawd@gmail.com', '54165156', 'dawdwad', '2022-11-07 14:18:56', '2022-11-07 14:18:56'),
(117, 'dawdaw', 'dawdwad@gmail.com', '242424', 'dawzxcwaczxcwa', '2022-11-07 14:21:02', '2022-11-07 14:21:02'),
(118, 'dwadwa', 'dwadwa@gmail.com', '242424', 'dawdawd', '2022-11-07 14:24:23', '2022-11-07 14:24:23'),
(119, 'ueajwad', 'fdwadaw@gmail.com', '242424', 'dawdwaczwa', '2022-11-07 14:25:20', '2022-11-07 14:25:20'),
(120, 'ueajwad', 'fdwadaw@gmail.com', '242424', 'dawdwaczwa', '2022-11-07 14:25:44', '2022-11-07 14:25:44'),
(121, 'ueajwad', 'fdwadaw@gmail.com', '242424', 'dawdwaczwa', '2022-11-07 14:25:52', '2022-11-07 14:25:52'),
(122, 'dwadaw', 'dwadawdadzxcwa@gmail.com', '54654261', 'dwadzxcwa', '2022-11-07 14:26:39', '2022-11-07 14:26:39'),
(123, 'fawfawf', 'awffwaf@gmail.com', '54654261', 'awfawfwaf', '2022-11-07 14:28:07', '2022-11-07 14:28:07'),
(124, 'dwadawd', 'dwadwadwa@gmail.com', '120202', 'dwadaxzcwa', '2022-11-07 14:31:43', '2022-11-07 14:31:43'),
(125, 'dwdwdd', 'dwdwadawdxzcw@gmail.com', '21513215', 'dawdzxcwa', '2022-11-07 14:35:04', '2022-11-07 14:35:04'),
(126, 'dawdzxc', 'dadwdasd@gmail.com', '512310512', 'dawdzxcwac', '2022-11-07 14:37:11', '2022-11-07 14:37:11'),
(127, 'dwadzxcwa', 'adwadxcaw@gmail.com', '64165151512', 'dwadazxcwa', '2022-11-07 14:38:12', '2022-11-07 14:38:12'),
(128, 'dwadzxcwa', 'adwadxcaw@gmail.com', '64165151512', 'dwadazxcwa', '2022-11-07 14:40:38', '2022-11-07 14:40:38'),
(129, 'kgjsekgm', 'kmawkdmwakd', '25105051', 'kmfakldmwad', '2022-11-07 14:41:48', '2022-11-07 14:41:48'),
(130, 'kgjsekgm', 'kmawkdmwakd', '25105051', 'kmfakldmwad', '2022-11-07 14:52:22', '2022-11-07 14:52:22'),
(131, 'dwadwad', 'dwadwadwa@gmail.com', '514541231', 'dwadwadwadwa', '2022-11-07 14:59:09', '2022-11-07 14:59:09'),
(132, 'dwadwad', 'dwadwadwa@gmail.com', '514541231', 'dwadwadwadwa', '2022-11-07 15:01:20', '2022-11-07 15:01:20'),
(133, 'earrdfwad', 'dwadwadwa@gmail.com', '2021512', 'dawdzxcwa', '2022-11-07 15:03:25', '2022-11-07 15:03:25'),
(134, 'dwadwad', 'wadawdwa', '213213213', 'wadwad', '2022-11-07 15:36:33', '2022-11-07 15:36:33'),
(135, 'dwadwad', 'wadawdwa', '213213213', 'wadwad', '2022-11-07 15:47:46', '2022-11-07 15:47:46'),
(136, 'dwadwad', 'wadawdwa', '213213213', 'wadwad', '2022-11-07 15:47:47', '2022-11-07 15:47:47'),
(137, 'dwadawd', 'dwwada', '53135132', 'dwadawd', '2022-11-07 15:48:29', '2022-11-07 15:48:29'),
(138, 'dwad', 'dwadwa', '53135132', 'dawdawdwa', '2022-11-07 15:54:53', '2022-11-07 15:54:53'),
(139, 'dwadzxcwa', 'dwadwad@gmail.com', '575452752428', 'dwadxzcwaczxcwa', '2022-11-19 13:32:39', '2022-11-19 13:32:39'),
(140, 'اةةةةا', 'bb@gmail.com', '888888888', 'ىىىىلللل', '2022-12-13 18:07:26', '2022-12-13 18:07:26'),
(141, 'ggnjhgg', 'bavly.naguib@yahoo.com', '9698888556', 'gffuhvfddguu', '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(142, 'ggnjhgg', 'bavly.naguib@yahoo.com', '9698888556', 'gffuhvfddguu', '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(143, 'cdsscc', 'ccsssw@gmail.com', '85557778855', 'fccxf', '2023-02-07 11:54:37', '2023-02-07 11:54:37'),
(144, 'dwadwa', 'dwadwadwad', '312321312312', 'dadwadwa', '2023-02-10 09:39:25', '2023-02-10 09:39:25'),
(145, 'dwadwa', 'dwadwadwad', '312321312312', 'dadwadwa', '2023-02-10 09:39:29', '2023-02-10 09:39:29'),
(146, 'dwadwa', 'dwadwadwad', '312321312312', 'dadwadwa', '2023-02-10 09:40:00', '2023-02-10 09:40:00'),
(147, 'dwadwa', 'dwadwadwad', '312321312312', 'dadwadwa', '2023-02-10 09:40:23', '2023-02-10 09:40:23'),
(148, 'dwadwa', 'dwadwadwad', '312321312312353', 'dadwadwa', '2023-02-10 09:41:02', '2023-02-10 09:41:02'),
(149, 'dwadwa', 'dwadwadwad', '312321312312353', 'dadwadwa', '2023-02-10 09:43:03', '2023-02-10 09:43:03'),
(150, 'dwadwa', 'dwadwadwad@gmail.com', '312321312312353', 'dadwadwa', '2023-02-10 09:44:26', '2023-02-10 09:44:26'),
(151, 'dwadwadwa', 'wadwadwazxcw@gmail.com', '202151212', 'dwadwadzxcwa', '2023-02-10 09:53:55', '2023-02-10 09:53:55'),
(152, 'dwadwadwa', 'wadwadwazxcw@gmail.com', '202151212', 'dwadwadzxcwa', '2023-02-10 09:54:33', '2023-02-10 09:54:33'),
(153, 'okikdwa', 'kwmakdmwa', '202151212', 'dwadwadaw', '2023-02-10 10:03:37', '2023-02-10 10:03:37'),
(154, 'okikdwa', 'kwmakdmwa', '202151212', 'dwadwadaw', '2023-02-10 10:05:48', '2023-02-10 10:05:48'),
(155, 'ىىررل', 'xddsaa@gmail.com', '58887755', 'ىللل', '2023-02-10 10:07:33', '2023-02-10 10:07:33'),
(156, 'ffghhb', 'cfghfss@gmail.com', '58887755', 'gfdsssee', '2023-02-10 10:08:00', '2023-02-10 10:08:00'),
(157, 'ffghhb', 'cfghfss@gmail.com', '58887755', 'gfdsssee', '2023-02-10 10:08:00', '2023-02-10 10:08:00'),
(158, 'menad', 'dejanmdwad@gmail.com', '174175721', 'dwadwadwaw', '2023-02-10 10:57:56', '2023-02-10 10:57:56'),
(159, 'bavly', 'dwadwadwadaw', '174175721', 'dawdwadawzxcz', '2023-02-10 11:00:22', '2023-02-10 11:00:22'),
(160, 'dwadwad', 'dwadwadwa', '174175721', 'zxcawcada', '2023-02-10 11:08:47', '2023-02-10 11:08:47'),
(161, 'ref3t', 'dwadazxczxcasa', '205413545', 'dawdzxcwaczxcaca', '2023-02-10 11:22:19', '2023-02-10 11:22:19'),
(162, 'bavly', 'bavly.naguib@yahoo.com', '0521231512', '12st. reyad ali ahmed', '2023-03-10 10:40:28', '2023-03-10 10:40:28'),
(163, 'xd', 'bavly.naguib@yahoo.com', '012454649167', '12hsjwjanwkdosw', '2023-03-10 10:51:50', '2023-03-10 10:51:50'),
(164, 'ahmed', 'ahmedsamye777@gmail.com', '+1279568336', 'hhh', '2023-03-11 10:02:04', '2023-03-11 10:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `splash_screen` varchar(255) NOT NULL,
  `male_screen` varchar(255) NOT NULL,
  `female_screen` varchar(255) NOT NULL,
  `baby_screen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `splash_screen`, `male_screen`, `female_screen`, `baby_screen`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1667664702index.jpg', 'uploads/male.JPG', 'uploads/female.JPG', 'uploads/baby.JPG', NULL, '2022-11-05 16:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_28_145047_create_admin_table', 1),
(6, '2022_05_31_101040_create_images_table', 1),
(7, '2022_05_31_135359_create_ships_table', 1),
(8, '2022_06_01_194016_create_categories_table', 1),
(9, '2022_06_04_211043_create_products_table', 1),
(10, '2022_06_04_211941_create_product_images_table', 1),
(11, '2022_06_05_105533_create_view_ships_table', 1),
(12, '2022_06_06_125010_create_customers_table', 1),
(13, '2022_06_06_135033_create_privacy_policy_table', 1),
(14, '2022_06_06_135207_create_move_table', 1),
(15, '2022_06_08_081816_create_talabats_table', 1),
(16, '2022_09_08_171159_create_setting_table', 2),
(17, '2022_09_08_171458_add_rate_to_products_table', 2),
(18, '2022_09_08_171458_add_rate_to_users_table', 3),
(22, '2022_10_03_201948_add_type_to_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `move`
--

CREATE TABLE `move` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `move`
--

INSERT INTO `move` (`id`, `customer_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '3', '18', '2022-08-06 08:11:16', '2022-08-06 08:11:16'),
(2, '20', '18', '2022-08-11 09:13:53', '2022-08-11 09:13:53'),
(3, '24', '18', '2022-08-11 17:57:39', '2022-08-11 17:57:39'),
(4, '25', '18', '2022-08-11 18:00:24', '2022-08-11 18:00:24'),
(5, '26', '18', '2022-08-11 18:01:11', '2022-08-11 18:01:11'),
(6, '27', '18', '2022-08-11 18:04:20', '2022-08-11 18:04:20'),
(7, '28', '18', '2022-08-11 18:05:48', '2022-08-11 18:05:48'),
(8, '29', '18', '2022-08-11 18:05:53', '2022-08-11 18:05:53'),
(9, '30', '18', '2022-08-11 18:05:54', '2022-08-11 18:05:54'),
(10, '31', '18', '2022-08-11 18:06:04', '2022-08-11 18:06:04'),
(11, '32', '18', '2022-08-11 18:08:45', '2022-08-11 18:08:45'),
(12, '33', '18', '2022-08-11 18:24:34', '2022-08-11 18:24:34'),
(13, '33', '18', '2022-08-11 18:28:49', '2022-08-11 18:28:49'),
(14, '33', '18', '2022-08-11 19:13:09', '2022-08-11 19:13:09'),
(15, '33', '18', '2022-08-11 19:13:12', '2022-08-11 19:13:12'),
(16, '33', '18', '2022-08-11 19:13:17', '2022-08-11 19:13:17'),
(17, '33', '18', '2022-08-11 19:14:54', '2022-08-11 19:14:54'),
(18, '33', '18', '2022-08-11 19:29:12', '2022-08-11 19:29:12'),
(19, '33', '18', '2022-08-11 20:10:46', '2022-08-11 20:10:46'),
(20, '33', '18', '2022-08-11 20:44:58', '2022-08-11 20:44:58'),
(21, '33', '18', '2022-08-12 19:36:44', '2022-08-12 19:36:44'),
(22, '33', '18', '2022-08-12 19:36:48', '2022-08-12 19:36:48'),
(23, '33', '18', '2022-08-12 19:37:38', '2022-08-12 19:37:38'),
(24, '33', '18', '2022-08-12 19:42:26', '2022-08-12 19:42:26'),
(25, '33', '18', '2022-08-12 19:42:59', '2022-08-12 19:42:59'),
(26, '49', '4', '2022-08-16 13:47:14', '2022-08-16 13:47:14'),
(27, '52', '4', '2022-08-24 18:39:25', '2022-08-24 18:39:25'),
(28, '33', '18', '2022-08-26 18:52:37', '2022-08-26 18:52:37'),
(29, '33', '18', '2022-08-26 19:06:30', '2022-08-26 19:06:30'),
(30, '33', '18', '2022-08-26 19:06:31', '2022-08-26 19:06:31'),
(31, '33', '18', '2022-08-26 19:17:48', '2022-08-26 19:17:48'),
(32, '58', '4', '2022-08-26 19:22:50', '2022-08-26 19:22:50'),
(33, '33', '4', '2022-08-26 19:41:27', '2022-08-26 19:41:27'),
(34, '59', '4', '2022-08-26 19:42:01', '2022-08-26 19:42:01'),
(35, '60', '4', '2022-08-26 19:47:08', '2022-08-26 19:47:08'),
(36, '60', '4', '2022-08-26 20:42:22', '2022-08-26 20:42:22'),
(37, '33', '18', '2022-08-26 22:00:38', '2022-08-26 22:00:38'),
(38, '33', '4', '2022-08-26 22:01:22', '2022-08-26 22:01:22'),
(39, '56', '4', '2022-08-29 09:35:00', '2022-08-29 09:35:00'),
(40, '51', '4', '2022-08-29 10:12:01', '2022-08-29 10:12:01'),
(41, '33', '33', '2022-09-15 20:34:40', '2022-09-15 20:34:40'),
(42, '71', '71', '2022-09-15 20:38:13', '2022-09-15 20:38:13'),
(43, '33', '33', '2022-09-17 19:55:04', '2022-09-17 19:55:04'),
(44, '72', '72', '2022-09-17 20:12:23', '2022-09-17 20:12:23'),
(45, '33', '33', '2022-09-17 20:12:42', '2022-09-17 20:12:42'),
(46, '33', '33', '2022-09-17 20:14:07', '2022-09-17 20:14:07'),
(47, '76', '76', '2022-09-23 12:46:15', '2022-09-23 12:46:15'),
(48, '76', '76', '2022-09-23 12:46:24', '2022-09-23 12:46:24'),
(49, '76', '76', '2022-09-23 12:46:34', '2022-09-23 12:46:34'),
(50, '76', '76', '2022-09-23 12:46:45', '2022-09-23 12:46:45'),
(51, '77', '77', '2022-09-23 13:02:11', '2022-09-23 13:02:11'),
(52, '77', '77', '2022-09-23 13:04:55', '2022-09-23 13:04:55'),
(53, '77', '77', '2022-09-23 13:08:46', '2022-09-23 13:08:46'),
(54, '77', '77', '2022-09-23 13:10:44', '2022-09-23 13:10:44'),
(55, '77', '77', '2022-09-23 13:12:17', '2022-09-23 13:12:17'),
(56, '77', '77', '2022-09-23 13:18:50', '2022-09-23 13:18:50'),
(57, '77', '77', '2022-09-23 13:18:55', '2022-09-23 13:18:55'),
(58, '78', '78', '2022-09-23 13:34:11', '2022-09-23 13:34:11'),
(59, '75', '75', '2022-09-23 21:45:20', '2022-09-23 21:45:20'),
(60, '33', '33', '2022-09-23 21:59:58', '2022-09-23 21:59:58'),
(61, '33', '33', '2022-09-23 22:12:25', '2022-09-23 22:12:25'),
(62, '79', '37', '2022-09-25 20:01:16', '2022-09-25 20:01:16'),
(63, '68', '68', '2022-09-25 20:17:38', '2022-09-25 20:17:38'),
(64, '83', '83', '2022-09-27 14:39:29', '2022-09-27 14:39:29'),
(65, '84', '84', '2022-09-28 08:41:20', '2022-09-28 08:41:20'),
(66, '87', '87', '2022-10-15 17:16:22', '2022-10-15 17:16:22'),
(67, '87', '87', '2022-10-15 17:17:09', '2022-10-15 17:17:09'),
(68, '90', '90', '2022-10-21 20:06:09', '2022-10-21 20:06:09'),
(69, '96', '96', '2022-11-06 20:19:15', '2022-11-06 20:19:15'),
(70, '117', '117', '2022-11-07 14:24:14', '2022-11-07 14:24:14'),
(71, '122', '122', '2022-11-07 14:27:56', '2022-11-07 14:27:56'),
(72, '136', '136', '2022-11-07 15:49:59', '2022-11-07 15:49:59'),
(73, '137', '137', '2022-11-07 15:54:41', '2022-11-07 15:54:41'),
(74, '143', '143', '2023-02-10 10:07:46', '2023-02-10 10:07:46'),
(75, '158', '158', '2023-02-10 11:00:10', '2023-02-10 11:00:10'),
(76, '164', '164', '2023-03-11 10:02:30', '2023-03-11 10:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bavly.naguib@yahoo.com', '$2y$10$55zwfih4tPUCEuRDdZ3av.P0CC76kK7gSp7mBM5fyhxsRfU7KEsfu', '2022-10-15 17:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc_ar` text NOT NULL,
  `desc_en` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `desc_ar`, `desc_en`, `created_at`, `updated_at`) VALUES
(1, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق  هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, '2022-11-05 14:21:03'),
(2, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق  هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, '2022-11-07 12:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `many` varchar(255) DEFAULT NULL,
  `desc_ar` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `s` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `l` tinyint(1) DEFAULT NULL,
  `xl` tinyint(1) DEFAULT NULL,
  `2xl` tinyint(1) DEFAULT NULL,
  `3xl` tinyint(1) DEFAULT NULL,
  `4xl` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `title_ar`, `title_en`, `category_id`, `price`, `many`, `desc_ar`, `desc_en`, `s`, `m`, `l`, `xl`, `2xl`, `3xl`, `4xl`, `created_at`, `updated_at`) VALUES
(28, '4', 'hufw', 'myissure', '11', '25050', '10', 'zxcwafaw', 'zxcwafaw', 0, 1, 1, 1, 0, 1, 0, '2022-07-12 16:10:23', '2022-10-19 20:33:33'),
(36, '18', 'dNoor', 'dwadwad', '15', '29000', '14', 'high quality', 'dawdwa', 1, 1, 0, 0, 1, 1, 0, '2022-07-12 22:53:50', '2022-10-15 17:17:11'),
(37, '18', 'xTopLux', 'dwadwad', '13', '12000', '20', 'sport watches', 'dawdwa', 1, 1, 1, 1, 0, 0, 1, '2022-07-13 11:03:51', '2023-02-10 11:08:48'),
(38, '18', 'Rado', 'dwadwad', '10', '450', '15', 'Soft and strong', 'dawdwa', 1, 1, 0, 0, 0, 0, 0, '2022-07-13 11:06:58', '2022-08-15 08:09:10'),
(39, '18', 'lux20', 'dwadwad', '11', '700', '27', 'sport watches', 'dawdwa', 0, 0, 0, 0, 1, 0, 0, '2022-07-13 11:11:09', '2022-08-31 21:02:36'),
(40, '18', 'formal', 'dwadwad', '11', '2000', '34', 'for you eveytime', 'dawdwa', 1, 1, 0, 0, 0, 0, 0, '2022-07-13 11:12:23', '2022-09-17 20:14:30'),
(52, '18', 'shose', 'dwadwad', '10', '1523', '7', 'fawdfwacvzxcwa', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-07-13 20:43:24', '2022-08-15 18:57:57'),
(53, '18', 'shoseadaw', 'dwadwad', '10', '1523', '12', 'fawdfwacvzxcwa', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-07-13 20:43:35', '2022-07-13 20:43:35'),
(54, '18', 'shoseadaw', 'dwadwad', '10', '1523', '2', 'fawdfwacvzxcwa', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-07-13 20:43:37', '2023-02-10 11:22:20'),
(55, '18', 'shoseadaw', 'dwadwad', '10', '1523', '7', 'fawdfwacvzxcwa', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-07-13 20:43:38', '2023-02-10 11:22:20'),
(64, '4', 'kewdwd', 'more', '11', '300', '62', 'dwadzxcwa', 'dwadzxcwa', 0, 0, 1, 1, 0, 0, 0, '2022-07-21 13:39:34', '2023-03-10 10:51:51'),
(65, '4', 'تجربة احمد', 'Ahmed Test', '15', '100', '84', 'محاولة واحد', 'Test One', 1, 1, 1, 1, 1, 1, 1, '2022-07-28 20:46:46', '2023-03-10 10:51:50'),
(67, '4', 'ahmed x8', 'dwadwad', '12', '2500', '1520', 'fawljkzvn;lvnaeiovnlzmlvnlkaevazvzx', 'dawdwa', 1, 1, 0, 1, 0, 0, 0, '2022-07-28 20:50:59', '2022-07-28 20:50:59'),
(68, '4', 'abduallh', 'dwadwad', '13', '1520', '18', 'adwkmvz kd;mvfwafcwa', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-08-24 19:18:13', '2023-02-10 11:08:48'),
(69, '4', 'meky', 'dwadwad', '13', '5000', '74', 'jhsbsvwvs x sbsnsbz bznxnxmdmdshxnckxndnx', 'dawdwa', 0, 1, 1, 0, 0, 1, 0, '2022-08-24 19:20:06', '2022-11-06 20:56:31'),
(70, '4', 'rere', 'dwadwad', '13', '680', '699', 'reterrerer', 'dawdwa', 0, 1, 0, 0, 0, 1, 0, '2022-08-24 19:20:57', '2022-09-26 20:23:41'),
(74, '37', 'وتين', 'dwadwad', '14', '8000', '20', 'شنط عمليه كبيرة لكل مناسباتك النهارية باستايل عصري', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-09-25 18:08:22', '2022-09-25 18:08:22'),
(75, '37', 'Sun', 'dwadwad', '10', '2200', '17', 'احذيه تواكب اناقتك في كل حين', 'dawdwa', 1, 1, 0, 0, 0, 0, 0, '2022-09-25 18:18:25', '2022-09-25 18:18:25'),
(76, '37', 'We', 'dwadwad', '14', '600', '18', 'بنطلونات مريحة', 'dawdwa', 1, 1, 0, 0, 0, 0, 0, '2022-09-25 18:38:20', '2022-09-26 15:16:37'),
(77, '37', 'دافنشي', 'dwadwad', '15', '1200', '33', 'عبايات فاخرة بأقمشة ذو جودة عاليه', 'dawdwa', 1, 1, 1, 0, 0, 0, 0, '2022-09-25 18:41:04', '2022-09-25 18:41:04'),
(78, '28', 'shoesce', 'hosex2da', '14', '250', '100', 'wdwadnb adkjlwha dkujlawnk jdlwalkjwabhhzvbxzv\\[owajdo;wjaufhrbnkjas cnajuwhdwaui hdwja dnl;j houjxzcln;jwa d;lowhaj na dwa adwadwadwa', 'dwaljzvhcnljfnajlxzn cjldnajl;nxjzvcn wkjadnkjaw dnkjwa dnkjwa dkjwa nkjcn wkja ncjwan ckjwankjcnw jalkncjkwa wad', 1, 1, 1, 0, 1, 0, 0, '2022-09-27 13:31:31', '2022-09-27 13:31:31'),
(79, '37', 'بوما', 'puma', '10', '6000', '95', 'حذاء سبورت مريح للقدم', 'sport shoes for foot', 1, 1, 1, 1, 0, 0, 0, '2022-09-28 08:07:33', '2023-03-11 10:02:04'),
(80, '37', 'مولي', 'moly', '11', '12000', '299', 'بنطلونات سبورت لكل الاوقات', 'for all time wear it', 1, 1, 1, 1, 1, 0, 0, '2022-09-28 08:15:43', '2022-12-13 18:07:26'),
(81, '4', '3arbyy', 'Arabic', '17', '500', '-7', 'hnfuk bncjvbakjwdhwan bzxljcwhacjn wkjachw akjcbnwakhcgwk.ahcbgwkacjb waku;hcb wab kjwac wa', 'dwa hmdawbhm dbwah dnwbakdghwajdn waoihd wam,dnwka jdhwba,jmdn wakudbwa,j dnjwka dwa', 0, 1, 0, 0, 0, 1, 1, '2022-10-15 18:46:18', '2023-03-10 10:40:28'),
(82, '4', 'kiko', 'xkiko', '10', '51210', '117', 'dwlkjadklwacxzcwa', 'wcwadwadzxcwa', 1, 1, 0, 0, 0, 0, 0, '2022-10-20 18:42:00', '2023-03-10 10:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `logo`, `created_at`, `updated_at`) VALUES
(12, '28', 'uploads/1657642223image_picker3266498532061121764.png', '2022-07-12 16:10:23', '2022-07-12 16:10:23'),
(13, '28', 'uploads/1657642223image_picker2284201210178387651.png', '2022-07-12 16:10:23', '2022-07-12 16:10:23'),
(28, '36', 'uploads/1657666430image_picker2727407703544722126.jpg', '2022-07-12 22:53:50', '2022-07-12 22:53:50'),
(30, '37', 'uploads/1657710231image_picker2509550355346733090.jpg', '2022-07-13 11:03:51', '2022-07-13 11:03:51'),
(31, '38', 'uploads/1657710418image_picker8148982312226954418.jpg', '2022-07-13 11:06:58', '2022-07-13 11:06:58'),
(32, '38', 'uploads/1657710418image_picker8042555778892842827.jpg', '2022-07-13 11:06:58', '2022-07-13 11:06:58'),
(34, '39', 'uploads/1657710669image_picker233162161775921972.jpg', '2022-07-13 11:11:09', '2022-07-13 11:11:09'),
(35, '40', 'uploads/1657710743image_picker8140249533838886743.jpg', '2022-07-13 11:12:23', '2022-07-13 11:12:23'),
(36, '40', 'uploads/1657710743image_picker6387683834488742046.jpg', '2022-07-13 11:12:23', '2022-07-13 11:12:23'),
(61, '52', 'uploads/1657745004image_picker5427939160775744932.png', '2022-07-13 20:43:24', '2022-07-13 20:43:24'),
(62, '52', 'uploads/1657745004image_picker4544559501099915987.png', '2022-07-13 20:43:24', '2022-07-13 20:43:24'),
(63, '53', 'uploads/1657745015image_picker5427939160775744932.png', '2022-07-13 20:43:35', '2022-07-13 20:43:35'),
(64, '53', 'uploads/1657745015image_picker4544559501099915987.png', '2022-07-13 20:43:35', '2022-07-13 20:43:35'),
(65, '54', 'uploads/1657745017image_picker5427939160775744932.png', '2022-07-13 20:43:37', '2022-07-13 20:43:37'),
(66, '54', 'uploads/1657745017image_picker4544559501099915987.png', '2022-07-13 20:43:37', '2022-07-13 20:43:37'),
(67, '55', 'uploads/1657745018image_picker5427939160775744932.png', '2022-07-13 20:43:38', '2022-07-13 20:43:38'),
(68, '55', 'uploads/1657745018image_picker4544559501099915987.png', '2022-07-13 20:43:38', '2022-07-13 20:43:38'),
(71, '37', 'uploads/1657888444image_picker704290169437832862.jpg', '2022-07-15 12:34:04', '2022-07-15 12:34:04'),
(88, '39', 'uploads/1658006279image_picker683205859167270479.png', '2022-07-16 21:17:59', '2022-07-16 21:17:59'),
(89, '39', 'uploads/1658094974image_picker316922880431223823.jpg', '2022-07-17 21:56:14', '2022-07-17 21:56:14'),
(90, '39', 'uploads/1658095019image_picker316922880431223823.jpg', '2022-07-17 21:56:59', '2022-07-17 21:56:59'),
(91, '36', 'uploads/1658234818image_picker1923836244999487744.jpg', '2022-07-19 12:46:58', '2022-07-19 12:46:58'),
(92, '56', 'uploads/1658236192image_picker7575997179245208069.jpg', '2022-07-19 13:09:52', '2022-07-19 13:09:52'),
(93, '56', 'uploads/1658236192image_picker1717268043284387842.jpg', '2022-07-19 13:09:52', '2022-07-19 13:09:52'),
(94, '57', 'uploads/1658237564image_picker3526298504509072906.jpg', '2022-07-19 13:32:44', '2022-07-19 13:32:44'),
(95, '57', 'uploads/1658237564image_picker4740855422218136882.jpg', '2022-07-19 13:32:44', '2022-07-19 13:32:44'),
(96, '58', 'uploads/1658237726image_picker3526298504509072906.jpg', '2022-07-19 13:35:26', '2022-07-19 13:35:26'),
(97, '58', 'uploads/1658237726image_picker4740855422218136882.jpg', '2022-07-19 13:35:26', '2022-07-19 13:35:26'),
(98, '59', 'uploads/1658237848image_picker4867074405329384020.jpg', '2022-07-19 13:37:28', '2022-07-19 13:37:28'),
(99, '59', 'uploads/1658237848image_picker8436687399363180215.jpg', '2022-07-19 13:37:28', '2022-07-19 13:37:28'),
(104, '63', 'uploads/1658410574image_picker823634306312727840.png', '2022-07-21 13:36:14', '2022-07-21 13:36:14'),
(105, '63', 'uploads/1658410574image_picker6583017605554018182.png', '2022-07-21 13:36:14', '2022-07-21 13:36:14'),
(108, '65', 'uploads/1659041206image-1.png', '2022-07-28 20:46:46', '2022-07-28 20:46:46'),
(109, '65', 'uploads/1659041206image-2.png', '2022-07-28 20:46:46', '2022-07-28 20:46:46'),
(110, '66', 'uploads/1659041291image_picker1232500301501757887.png', '2022-07-28 20:48:11', '2022-07-28 20:48:11'),
(111, '66', 'uploads/1659041291image_picker5644615933184123231.png', '2022-07-28 20:48:11', '2022-07-28 20:48:11'),
(112, '67', 'uploads/1659041459image_picker1704874899169043263.png', '2022-07-28 20:50:59', '2022-07-28 20:50:59'),
(113, '67', 'uploads/1659041459image_picker1379151923597286576.png', '2022-07-28 20:50:59', '2022-07-28 20:50:59'),
(114, '68', 'uploads/1661368693image_picker7914800173572738411.jpg', '2022-08-24 19:18:13', '2022-08-24 19:18:13'),
(115, '69', 'uploads/1661368806image_picker1798104275408415588.jpg', '2022-08-24 19:20:06', '2022-08-24 19:20:06'),
(116, '70', 'uploads/1661368857image_picker1294230870379528126.jpg', '2022-08-24 19:20:57', '2022-08-24 19:20:57'),
(124, '74', 'uploads/1664129302image_picker7258545870303391564.jpg', '2022-09-25 18:08:22', '2022-09-25 18:08:22'),
(125, '74', 'uploads/1664129302image_picker3375748255953045273.jpg', '2022-09-25 18:08:22', '2022-09-25 18:08:22'),
(126, '75', 'uploads/1664129905image_picker2989041510900647065.jpg', '2022-09-25 18:18:25', '2022-09-25 18:18:25'),
(127, '75', 'uploads/1664129905image_picker5444793095523054461.jpg', '2022-09-25 18:18:25', '2022-09-25 18:18:25'),
(128, '76', 'uploads/1664131100image_picker8027672366216636667.jpg', '2022-09-25 18:38:20', '2022-09-25 18:38:20'),
(129, '77', 'uploads/1664131264image_picker6081964430770019904.jpg', '2022-09-25 18:41:04', '2022-09-25 18:41:04'),
(130, '78', 'uploads/1664285491image_picker632629045185746367.jpg', '2022-09-27 13:31:31', '2022-09-27 13:31:31'),
(131, '79', 'uploads/1664352453image_picker5177986877359052884.webp', '2022-09-28 08:07:33', '2022-09-28 08:07:33'),
(132, '79', 'uploads/1664352453image_picker8296516284054539296.webp', '2022-09-28 08:07:33', '2022-09-28 08:07:33'),
(133, '80', 'uploads/1664352943image_picker9043280141696320613.jpg', '2022-09-28 08:15:43', '2022-09-28 08:15:43'),
(134, '80', 'uploads/1664352943image_picker4904717478134349457.jpg', '2022-09-28 08:15:43', '2022-09-28 08:15:43'),
(135, '81', 'uploads/1665859578image_picker3377181992238131546.jpg', '2022-10-15 18:46:18', '2022-10-15 18:46:18'),
(136, '64', 'uploads/1666093361image_picker1127384218379706763.jpg', '2022-10-18 11:42:41', '2022-10-18 11:42:41'),
(137, '64', 'uploads/1666094576image_picker6757953916404135374.jpg', '2022-10-18 12:02:56', '2022-10-18 12:02:56'),
(138, '82', 'uploads/1666291320image_picker3553360871717163144.jpg', '2022-10-20 18:42:00', '2022-10-20 18:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `var` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `var`, `value`, `created_at`, `updated_at`) VALUES
(1, 'earn_num', '3', NULL, '2022-10-03 20:54:48'),
(2, 'earn_vil', 'false', NULL, '2022-10-15 17:12:20'),
(3, 'shoping', '33', NULL, '2022-10-03 20:55:01'),
(4, 'shoping_vil', 'true', NULL, '2022-10-09 20:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE `ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `desc_ar` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ships`
--

INSERT INTO `ships` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `logo`, `link`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'اهلا فالموقع', 'Hello in web', 'تعليق بالموثع', 'Desc in web', 'uploads/1655842472WhatsApp Image 2022-05-10 at 9.49.54 PM.jpeg', 'https://www.facebook.com', '010222', '2022-06-21 20:14:32', '2022-06-21 20:14:32'),
(2, 'اهلا فالموقع1', 'Hello in web1', 'تعليق1', 'Desc1', 'uploads/1655842490whatsup.png', 'https://www.facebook.com', '010222', '2022-06-21 20:14:50', '2022-06-21 20:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `talabats`
--

CREATE TABLE `talabats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `many` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `talabats`
--

INSERT INTO `talabats` (`id`, `product_id`, `many`, `customer_id`, `size`, `price`, `read`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '1', '3x', '44', 1, '2022-06-03 16:37:09', '2022-11-06 16:01:13'),
(2, '8', '2', '4', '2x', '50', 0, '2022-08-10 17:03:53', '2022-08-10 17:03:53'),
(3, '2022-08-10 21:55:44.130377', '1', '13', 'null', '12000', 0, '2022-08-10 19:56:57', '2022-08-10 19:56:57'),
(4, '2022-08-10 21:56:29.427173', '1', '13', 'null', '100', 0, '2022-08-10 19:56:57', '2022-08-10 19:56:57'),
(5, '2022-08-10 21:55:54.867039', '2', '13', 'null', '29000', 0, '2022-08-10 19:56:57', '2022-08-10 19:56:57'),
(6, '2022-08-10 21:59:25.286709', '2', '14', 's', '12000', 0, '2022-08-10 20:00:15', '2022-08-10 20:00:15'),
(7, '2022-08-10 21:59:41.086498', '1', '14', '2XL', '700', 0, '2022-08-10 20:00:16', '2022-08-10 20:00:16'),
(8, '2022-08-10 21:59:53.745979', '1', '14', '3XL', '100', 0, '2022-08-10 20:00:16', '2022-08-10 20:00:16'),
(9, '2022-08-10 21:59:41.086498', '1', '15', '2XL', '700', 0, '2022-08-10 20:00:53', '2022-08-10 20:00:53'),
(10, '2022-08-10 21:59:25.286709', '2', '15', 's', '12000', 0, '2022-08-10 20:00:53', '2022-08-10 20:00:53'),
(11, '2022-08-10 21:59:53.745979', '1', '15', '3XL', '100', 0, '2022-08-10 20:00:54', '2022-08-10 20:00:54'),
(12, '8', '3', '4', '2x', '50', 0, '2022-08-10 20:05:48', '2022-08-10 20:05:48'),
(13, '8', '3', '2', '2x', '50', 0, '2022-08-10 20:06:41', '2022-08-10 20:06:41'),
(14, '2022-08-10 21:59:41.086498', '1', '16', '2XL', '700', 0, '2022-08-10 20:08:20', '2022-08-10 20:08:20'),
(15, '2022-08-10 21:59:25.286709', '2', '16', 's', '12000', 0, '2022-08-10 20:08:20', '2022-08-10 20:08:20'),
(16, '2022-08-10 21:59:53.745979', '1', '16', '3XL', '100', 0, '2022-08-10 20:08:21', '2022-08-10 20:08:21'),
(17, '2022-08-10 21:59:25.286709', '2', '17', 's', '12000', 0, '2022-08-10 20:08:32', '2022-08-10 20:08:32'),
(18, '2022-08-10 21:59:41.086498', '1', '17', '2XL', '700', 0, '2022-08-10 20:08:32', '2022-08-10 20:08:32'),
(19, '2022-08-10 21:59:53.745979', '1', '17', '3XL', '100', 0, '2022-08-10 20:08:32', '2022-08-10 20:08:32'),
(20, '2022-08-10 21:59:25.286709', '2', '17', 's', '12000', 0, '2022-08-10 20:08:39', '2022-08-10 20:08:39'),
(21, '2022-08-10 21:59:53.745979', '1', '17', '3XL', '100', 0, '2022-08-10 20:08:39', '2022-08-10 20:08:39'),
(22, '2022-08-10 21:59:41.086498', '1', '17', '2XL', '700', 0, '2022-08-10 20:08:39', '2022-08-10 20:08:39'),
(23, '2022-08-10 22:09:32.104835', '2', '18', 'M', '29000', 0, '2022-08-10 20:10:47', '2022-08-10 20:10:47'),
(24, '2022-08-10 22:10:25.719836', '1', '18', 'M', '150', 0, '2022-08-10 20:10:47', '2022-08-10 20:10:47'),
(25, '2022-08-10 22:14:42.646103', '2', '3', '3XL', '29000.0', 1, '2022-08-10 20:15:19', '2022-11-06 16:01:51'),
(26, '2022-08-10 22:15:01.887208', '1', '3', 'M', '150.0', 0, '2022-08-10 20:15:20', '2022-08-10 20:15:20'),
(27, '36', '1', '3', '2XL', '29000.0', 0, '2022-08-10 20:19:16', '2022-08-10 20:19:16'),
(28, '65', '2', '3', '3XL', '100.0', 0, '2022-08-10 20:19:16', '2022-08-10 20:19:16'),
(29, '36', '2', '19', 'M', '29000.0', 0, '2022-08-10 20:47:18', '2022-08-10 20:47:18'),
(30, '37', '1', '19', 'XL', '12000.0', 0, '2022-08-10 20:47:18', '2022-08-10 20:47:18'),
(31, '36', '2', '24', 'M', '29000.0', 0, '2022-08-11 15:50:31', '2022-08-11 15:50:31'),
(32, '28', '1', '36', 'M', '150.0', 0, '2022-08-11 19:19:26', '2022-08-11 19:19:26'),
(33, '65', '1', '36', 'XL', '100.0', 1, '2022-08-11 19:19:26', '2022-11-06 20:02:02'),
(34, '38', '1', '38', 'M', '450.0', 0, '2022-08-15 08:09:10', '2022-08-15 08:09:10'),
(35, '40', '1', '39', 'M', '2000.0', 0, '2022-08-15 08:29:33', '2022-08-15 08:29:33'),
(36, '40', '1', '40', 'M', '2000.0', 0, '2022-08-15 08:35:05', '2022-08-15 08:35:05'),
(37, '39', '1', '40', 'M', '700.0', 0, '2022-08-15 08:35:06', '2022-08-15 08:35:06'),
(38, '40', '1', '41', 'M', '2000.0', 0, '2022-08-15 08:45:27', '2022-08-15 08:45:27'),
(39, '39', '1', '41', 'M', '700.0', 0, '2022-08-15 08:45:28', '2022-08-15 08:45:28'),
(40, '52', '1', '42', 'M', '1523.0', 0, '2022-08-15 18:44:45', '2022-08-15 18:44:45'),
(41, '52', '1', '43', 'M', '1523.0', 0, '2022-08-15 18:44:46', '2022-08-15 18:44:46'),
(42, '52', '1', '44', 'M', '1523.0', 0, '2022-08-15 18:55:48', '2022-08-15 18:55:48'),
(43, '52', '1', '45', 'M', '1523.0', 0, '2022-08-15 18:57:09', '2022-08-15 18:57:09'),
(44, '52', '1', '46', 'M', '1523.0', 0, '2022-08-15 18:57:57', '2022-08-15 18:57:57'),
(45, '36', '2', '48', '2XL', '29000.0', 0, '2022-08-16 09:15:44', '2022-08-16 09:15:44'),
(46, '8', '3', '49', 'M', '1200.0', 0, '2022-08-16 09:17:35', '2022-08-16 09:17:35'),
(47, '65', '4', '54', '2XL', '100.0', 1, '2022-08-24 18:45:40', '2022-11-06 19:38:07'),
(48, '8', '1', '55', 'M', '1100.0', 0, '2022-08-24 18:45:45', '2022-08-24 18:45:45'),
(49, '65', '4', '56', '2XL', '100.0', 1, '2022-08-24 18:46:55', '2022-11-06 19:41:19'),
(50, '64', '3', '56', '2XL', '2500.0', 1, '2022-08-24 18:46:56', '2022-11-06 19:36:02'),
(51, '8', '2', '57', 'M', '1100.0', 0, '2022-08-24 18:47:24', '2022-08-24 18:47:24'),
(52, '64', '1', '61', 'M', '2500.0', 1, '2022-08-26 21:15:14', '2022-11-06 19:31:25'),
(53, '36', '1', '62', 'M', '29000.0', 0, '2022-08-31 20:56:56', '2022-08-31 20:56:56'),
(54, '36', '2', '63', 'M', '29000.0', 0, '2022-08-31 20:58:12', '2022-08-31 20:58:12'),
(55, '37', '1', '63', 'M', '12000.0', 0, '2022-08-31 20:58:13', '2022-08-31 20:58:13'),
(56, '39', '1', '64', 'M', '700.0', 0, '2022-08-31 21:02:36', '2022-08-31 21:02:36'),
(57, '36', '1', '65', 'M', '29000.0', 0, '2022-08-31 21:56:50', '2022-08-31 21:56:50'),
(58, '36', '1', '66', 'M', '29000.0', 0, '2022-08-31 21:57:36', '2022-08-31 21:57:36'),
(59, '40', '1', '66', 'M', '2000.0', 0, '2022-08-31 21:57:37', '2022-08-31 21:57:37'),
(60, '40', '1', '67', 'M', '2000.0', 0, '2022-08-31 22:03:54', '2022-08-31 22:03:54'),
(61, '37', '1', '68', 'M', '12000.0', 0, '2022-09-01 07:53:45', '2022-09-01 07:53:45'),
(62, '69', '1', '69', 'M', '5000.0', 1, '2022-09-15 19:41:32', '2022-11-06 19:29:49'),
(63, '54', '1', '70', 'M', '1523.0', 0, '2022-09-15 19:44:56', '2022-09-15 19:44:56'),
(64, '69', '1', '71', 'M', '5000.0', 1, '2022-09-15 20:36:32', '2022-11-06 19:31:17'),
(65, '37', '1', '72', 'M', '12000.0', 0, '2022-09-17 19:57:35', '2022-09-17 19:57:35'),
(66, '40', '1', '73', 'M', '2000.0', 0, '2022-09-17 20:14:30', '2022-09-17 20:14:30'),
(67, '36', '1', '74', 'M', '29000.0', 0, '2022-09-17 21:22:55', '2022-09-17 21:22:55'),
(68, '36', '1', '75', 'M', '29000.0', 0, '2022-09-18 18:17:59', '2022-09-18 18:17:59'),
(69, '68', '2', '76', 'M', '1520.0', 1, '2022-09-23 12:45:52', '2022-11-06 19:30:22'),
(70, '69', '1', '77', 'M', '5000.0', 0, '2022-09-23 12:58:32', '2022-09-23 12:58:32'),
(71, '69', '1', '78', 'M', '5000.0', 1, '2022-09-23 13:34:00', '2022-11-06 19:29:29'),
(72, '54', '3', '79', 'M', '1523.0', 0, '2022-09-23 22:13:04', '2022-09-23 22:13:04'),
(73, '76', '1', '80', 'M', '600.0', 0, '2022-09-25 20:18:07', '2022-09-25 20:18:07'),
(74, '76', '1', '81', 'M', '600.0', 0, '2022-09-26 15:16:37', '2022-09-26 15:16:37'),
(75, '70', '1', '82', 'M', '680.0', 1, '2022-09-26 20:23:41', '2022-11-06 19:27:38'),
(76, '69', '1', '83', 'M', '5000.0', 1, '2022-09-27 14:39:19', '2022-11-06 19:22:44'),
(77, '37', '1', '84', 'M', '12000.0', 0, '2022-09-27 20:05:02', '2022-09-27 20:05:02'),
(78, '79', '1', '85', 'M', '6000.0', 0, '2022-09-28 08:41:51', '2022-09-28 08:41:51'),
(79, '37', '1', '86', 'M', '12000.0', 0, '2022-10-12 18:16:23', '2022-10-12 18:16:23'),
(80, '79', '1', '87', 'M', '6000.0', 0, '2022-10-15 17:15:46', '2022-10-15 17:15:46'),
(81, '79', '1', '88', 'M', '6000.0', 0, '2022-10-15 17:16:30', '2022-10-15 17:16:30'),
(82, '79', '1', '89', 'M', '6000.0', 0, '2022-10-15 17:17:11', '2022-10-15 17:17:11'),
(83, '36', '2', '89', 'M', '29000.0', 0, '2022-10-15 17:17:11', '2022-10-15 17:17:11'),
(84, '64', '1', '90', 'M', '300.0', 1, '2022-10-20 19:05:09', '2022-11-06 19:18:34'),
(85, '69', '3', '91', 'M', '5000.0', 1, '2022-10-20 20:47:27', '2022-11-06 19:18:23'),
(86, '37', '1', '92', 'M', '12000.0', 1, '2022-10-21 20:06:26', '2022-11-06 16:02:37'),
(87, '37', '1', '93', 'M', '12000.0', 0, '2022-10-21 20:06:26', '2022-10-21 20:06:26'),
(88, '81', '1', '94', 'M', '500.0', 1, '2022-10-22 18:41:05', '2022-11-06 18:58:03'),
(89, '69', '8', '95', 'M', '5000.0', 1, '2022-10-23 04:47:53', '2022-11-06 18:58:34'),
(90, '82', '1', '96', 'M', '51210.0', 1, '2022-11-06 20:09:43', '2022-11-06 20:16:48'),
(91, '82', '1', '97', 'M', '51210.0', 1, '2022-11-06 20:19:24', '2022-11-06 20:20:49'),
(92, '81', '1', '97', 'M', '500.0', 1, '2022-11-06 20:19:24', '2022-11-06 20:20:48'),
(93, '69', '1', '98', 'M', '5000.0', 1, '2022-11-06 20:23:43', '2022-11-06 20:27:31'),
(94, '69', '1', '99', 'M', '5000.0', 1, '2022-11-06 20:27:57', '2022-11-06 20:37:47'),
(95, '69', '1', '100', 'M', '5000.0', 1, '2022-11-06 20:30:27', '2022-11-06 20:40:04'),
(96, '69', '1', '101', 'M', '5000.0', 1, '2022-11-06 20:32:31', '2022-11-06 20:41:21'),
(97, '81', '1', '102', 'M', '500.0', 1, '2022-11-06 20:35:24', '2022-11-06 20:41:24'),
(98, '69', '1', '103', 'M', '5000.0', 1, '2022-11-06 20:38:02', '2022-11-06 20:41:22'),
(99, '69', '1', '104', 'M', '5000.0', 1, '2022-11-06 20:40:20', '2022-11-06 20:41:23'),
(100, '69', '1', '105', 'M', '5000.0', 1, '2022-11-06 20:43:02', '2022-11-06 20:49:13'),
(101, '69', '1', '106', 'M', '5000.0', 1, '2022-11-06 20:49:01', '2022-11-06 20:49:12'),
(102, '69', '1', '107', 'M', '5000.0', 1, '2022-11-06 20:49:40', '2022-11-06 20:49:54'),
(103, '69', '1', '108', 'M', '5000.0', 0, '2022-11-06 20:56:31', '2022-11-06 20:56:31'),
(104, '81', '1', '118', 'M', '500.0', 1, '2022-11-07 14:24:23', '2022-12-13 18:23:35'),
(105, '81', '1', '137', 'M', '500.0', 1, '2022-11-07 15:48:30', '2022-12-13 18:23:34'),
(106, '81', '1', '138', 'M', '500.0', 1, '2022-11-07 15:54:53', '2022-12-13 18:23:33'),
(107, '81', '1', '139', 'M', '500.0', 1, '2022-11-19 13:32:39', '2022-12-13 18:23:31'),
(108, '80', '1', '140', 'M', '12000.0', 0, '2022-12-13 18:07:26', '2022-12-13 18:07:26'),
(109, '81', '2', '141', 'M', '500.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(110, '65', '2', '141', 'M', '100.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(111, '82', '2', '141', 'M', '51210.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(112, '82', '2', '142', 'M', '51210.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(113, '65', '2', '142', 'M', '100.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(114, '81', '2', '142', 'M', '500.0', 0, '2023-02-07 10:22:58', '2023-02-07 10:22:58'),
(115, '54', '2', '143', 'M', '1523.0', 0, '2023-02-07 11:54:37', '2023-02-07 11:54:37'),
(116, '55', '1', '143', 'M', '1523.0', 0, '2023-02-07 11:54:38', '2023-02-07 11:54:38'),
(117, '54', '1', '155', 'M', '1523.0', 0, '2023-02-10 10:07:33', '2023-02-10 10:07:33'),
(118, '55', '1', '155', 'M', '1523.0', 0, '2023-02-10 10:07:33', '2023-02-10 10:07:33'),
(119, '54', '1', '156', 'M', '1523.0', 0, '2023-02-10 10:08:00', '2023-02-10 10:08:00'),
(120, '55', '1', '156', 'M', '1523.0', 0, '2023-02-10 10:08:00', '2023-02-10 10:08:00'),
(121, '54', '1', '157', 'M', '1523.0', 0, '2023-02-10 10:08:01', '2023-02-10 10:08:01'),
(122, '55', '1', '157', 'M', '1523.0', 0, '2023-02-10 10:08:01', '2023-02-10 10:08:01'),
(123, '82', '1', '158', 'M', '51210.0', 1, '2023-02-10 10:57:56', '2023-02-10 11:02:14'),
(124, '81', '1', '158', 'M', '500.0', 1, '2023-02-10 10:57:57', '2023-02-10 11:02:05'),
(125, '64', '1', '159', 'M', '300.0', 1, '2023-02-10 11:00:23', '2023-02-10 11:02:03'),
(126, '37', '1', '159', 'M', '12000.0', 0, '2023-02-10 11:00:23', '2023-02-10 11:00:23'),
(127, '68', '1', '159', 'M', '1520.0', 1, '2023-02-10 11:00:23', '2023-02-10 11:02:00'),
(128, '64', '1', '160', 'M', '300.0', 1, '2023-02-10 11:08:48', '2023-03-05 06:50:39'),
(129, '68', '1', '160', 'M', '1520.0', 1, '2023-02-10 11:08:48', '2023-03-05 06:50:47'),
(130, '37', '1', '160', 'M', '12000.0', 0, '2023-02-10 11:08:48', '2023-02-10 11:08:48'),
(131, '54', '1', '161', 'M', '1523.0', 0, '2023-02-10 11:22:20', '2023-02-10 11:22:20'),
(132, '55', '1', '161', 'M', '1523.0', 0, '2023-02-10 11:22:20', '2023-02-10 11:22:20'),
(133, '82', '1', '162', 'M', '51210.0', 0, '2023-03-10 10:40:28', '2023-03-10 10:40:28'),
(134, '81', '1', '162', 'M', '500.0', 0, '2023-03-10 10:40:28', '2023-03-10 10:40:28'),
(135, '65', '1', '163', 'M', '100.0', 0, '2023-03-10 10:51:50', '2023-03-10 10:51:50'),
(136, '64', '1', '163', 'M', '300.0', 0, '2023-03-10 10:51:51', '2023-03-10 10:51:51'),
(137, '79', '1', '164', 'M', '6000.0', 0, '2023-03-11 10:02:04', '2023-03-11 10:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `longitude` text NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `male` tinyint(1) DEFAULT NULL,
  `female` tinyint(1) DEFAULT NULL,
  `baby` tinyint(1) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name_ar`, `name_en`, `email`, `email_verified_at`, `password`, `phone`, `address`, `longitude`, `latitude`, `title_ar`, `title_en`, `male`, `female`, `baby`, `logo`, `remember_token`, `created_at`, `updated_at`, `rate`) VALUES
(4, 'بافلي', 'bavly', 'bavly.naguib@yahoo.com', '2022-06-30 20:13:38', '$2y$10$BnuymwA8Zun1an/tN5BiW.ZCFavwrTitV8cwFeJ3Defv0MBiJMFnW', '01275297003', 'sadawdwadwa', 'https://goo.gl/maps/mQyCsQU37REPZYTk7', '0', 'ops store', 'bavly Store', 1, 1, 0, 'uploads/16676617982020_2_26_16_36_8_710.jpg', NULL, '2022-06-30 20:13:24', '2023-03-05 06:56:15', '3'),
(5, 'mena', 'mena', 'bebonagi2@gmail.com', '2022-07-03 02:50:45', '$2y$10$Chi/VDdoEQ0msbb7ekZAiOuwkR7FwfHWqYS1vzH5umPity0Y/AV.6', '3143124', 'sadawdwadwa', '2144214', '21421421', 'adwadwa', 'wadwadwad', 0, 0, 1, 'uploads/1656798435009.png', NULL, '2022-07-02 21:47:15', '2022-07-03 02:50:45', '0'),
(11, 'kero', 's', 'kero@kero.com', '2022-07-13 17:58:44', '$2y$10$zPMSn5T9TI7M/tffzPe3yeL6iYG6RHl1/wpAP8MUrj/5hVVCO0lwa', '0512342132', 'dwadzxcwacz', '456', '468456', 'kero dress', 's', 0, 1, 0, 'uploads/1656798435009.png', NULL, '2022-07-04 15:15:08', '2022-09-08 19:00:31', '5'),
(12, 'kemo', 's', 'kemo@ere.com', '2022-07-13 17:58:44', '$2y$10$FdlEa7VtzwAkQ5oH2xUAA.kqILt4z.pgtj65.8DUTuKgj5fwMN1yi', '01225325212', 'dwadzcwaca', '456', '468456', 'kemo store', 's', 1, 1, 0, 'uploads/1656798435009.png', NULL, '2022-07-04 16:06:33', '2022-07-04 16:06:33', '0'),
(15, 'medo', 's', 'medo@medo.com', '2022-07-13 17:58:44', '$2y$10$yMbwB75KYFZVZHbGSj8aqOA61Vibr2/XbFhrG7Z2SAzxSG/8MMm2y', '0512153123', 'ardearxzczxc', '456', '468456', 'medo xd Store', 's', 1, 1, 1, 'uploads/1656798435009.png', NULL, '2022-07-04 16:16:09', '2022-07-04 16:16:09', '0'),
(18, 'Ali', 's', 'nada21.ali2021@gmail.com', '2022-07-13 17:58:44', '$2y$10$7phILDA.h4MDet8TADP.auysAYw3l5ZZ95aOXywCqIcMp1gu5aL0S', '737414544', 'Sana\'a', '456', '468456', 'Moonlight2', 's', 0, 0, 0, 'uploads/1661760812scaled_image_picker2175224100261039760.webp', NULL, '2022-07-12 22:36:26', '2022-08-29 08:13:32', '0'),
(19, 'medo', 's', 'medox@adw.com', '2022-07-13 17:58:44', '$2y$10$CX6GYgzwCeADt7mGY7HtNO9SQ.4kPeYpR9txHdafHyCl2lX0XU2MK', '05132156123', 'Al-Jawf', '456', '468456', 'medo x', 's', 1, 1, 1, 'uploads/1656798435009.png', NULL, '2022-07-13 20:45:06', '2022-07-13 20:45:06', '0'),
(20, 'abdullah', 's', 'bahadik2018@gmail.com', '2022-07-13 17:58:44', '$2y$10$ywiHelUruLgEaYHSmicl5uKTS3zEA4sviejnnlguNI0oy1pRFobQK', '041513543523', 'Tabūk', '456', '468456', 'kiko Design', 's', 1, 1, 1, 'uploads/1656798435009.png', NULL, '2022-07-19 18:15:49', '2022-07-19 18:15:49', '0'),
(24, 'jujie', 's', 'ahmed@gmailk.com', '2022-07-13 17:58:44', '$2y$10$w2a3WsYsUr0ORJBsspWfK.1oTheHH9Vl7KbXEivsBuVnf9Yf0l7VO', '052132153123', 'Al-Qaṭīf', '456', '468456', '10202512', 's', 1, 1, 1, 'uploads/1659041910scaled_image_picker7394053113034544959.png', NULL, '2022-07-28 20:58:30', '2022-07-28 20:58:30', '0'),
(25, 'abody', 's', 'bb@hh.com', NULL, '$2y$10$f3QLTGSUe9S1fOZUl5V.juxO2W8Tva5ZTCPkXdC6ftnPKYjA93VYW', '0562650822', 'Jiddah', '456', '468456', 'abody', 's', 1, 0, 0, 'uploads/1661367170scaled_image_picker306590637628168994.jpg', NULL, '2022-08-24 18:52:50', '2022-08-24 18:52:50', '0'),
(26, 'wdawadwa', 's', 'wadwad', NULL, '$2y$10$ETeAgq8E/TvDrfuTgLGLuOtYb1ThwCQsQFOjXa0mz9MjTox78MX6m', '0151212', 'Al-Kharj (oasis)', '456', '468456', 'dwadwa', 's', 1, 1, 1, 'uploads/1662127506scaled_image_picker814448858227972150.jpg', NULL, '2022-09-02 14:05:06', '2022-09-02 14:05:06', '0'),
(27, 'wdawadwa', 's', 'wadwad@asdwa.com', '2022-09-02 14:16:57', '$2y$10$dVGpj6kODGV88VmJo0.Fl.DaKPekO.V62gcbQLlmpS4.Xs8k2MO0a', '0151212', 'Al-Kharj (oasis)', '456', '468456', 'dwadwa', 's', 1, 1, 1, 'uploads/1662127524scaled_image_picker814448858227972150.jpg', NULL, '2022-09-02 14:05:24', '2022-09-02 14:16:57', '0'),
(28, 'Rose', 's', 'siham1554@gmail.com', '2022-09-25 18:09:59', '$2y$10$gDD9xQxda9yEHk1irthlxeRgsmeCv9SpvedQbRR2jnAtsjEOny/VK', '737414544', 'Al-Ṭaʾif', '456', '468456', 'BabyCare', 's', 0, 0, 1, 'uploads/1663339244scaled_image_picker7095284930128437449.jpg', NULL, '2022-09-16 14:40:44', '2022-09-25 18:09:59', '0'),
(29, 'nnn', 's', 'hgg', NULL, '$2y$10$yw0w39pZ6eLhmKdxLRGikeb2k60r1y2P3raZatakis0c5Ggl2Thgu', '123456', 'Al-Qaṭīf', '456', '468456', 'gg', 's', 0, 0, 1, 'uploads/1663357809scaled_image_picker2749213513945211038.jpg', NULL, '2022-09-16 19:50:09', '2022-09-16 19:50:09', '0'),
(30, 'nn', 's', 'fgh', NULL, '$2y$10$EpFMww1sT9fr1m/vCgXeCeWjngSPbfcl2PACN97gaAcKzeBECLGl.', '69635588', 'Al-Dammām', '456', '468456', 'bb', 's', 0, 0, 1, 'uploads/1663358093scaled_image_picker4529944538245717224.jpg', NULL, '2022-09-16 19:54:53', '2022-09-16 19:54:53', '0'),
(31, 'hhh', 's', 'jjj', NULL, '$2y$10$7EYmwuJdwu7PUqkR0KM2m.6EFHFmx0aKCCnw.gZshLMUpuqOYhlQ2', '88888', 'Buraydah', '456', '468456', 'bb', 's', 0, 1, 0, 'uploads/1663358404scaled_image_picker780538273720237231.jpg', NULL, '2022-09-16 20:00:04', '2022-09-16 20:00:04', '0'),
(33, 'dd', 's', 'ff', NULL, '$2y$10$AMz5BIDiKryoHnBTcegG0eofMXE67xxNsker6mHbzVOYYZPIZ1U7S', '963258', 'Al-Qaṭīf', '456', '468456', 'bbm', 's', 0, 1, 0, 'uploads/1663359994scaled_image_picker8887441506742804991.jpg', NULL, '2022-09-16 20:26:34', '2022-09-16 20:26:34', '0'),
(34, 'dd', 's', 'ggg', NULL, '$2y$10$e7GdRdDxpYnCFXmQvcy3S.VVynnqvz8E/Vc/yTXm9vhoVhl1cAoVu', '0852', 'Ḥāʾil', '456', '468456', 'nn', 's', 0, 1, 0, 'uploads/1663360539scaled_image_picker4901918177587103046.jpg', NULL, '2022-09-16 20:35:40', '2022-09-16 20:35:40', '0'),
(35, 'Queen', 's', 'smsm9102@gmail.com', NULL, '$2y$10$uWn06CRMpiq/nL8ziV8HS.cSsqTWqZJrf.WooAOIdRxaOvDu4DYzW', '737414544', 'Buraydah', '456', '468456', 'Queen🔥', 's', 0, 1, 0, 'uploads/1663404490scaled_image_picker1723835286609516614.jpg', NULL, '2022-09-17 08:48:10', '2022-09-17 08:48:10', '0'),
(36, 'hh', 's', 'sfg@gmail.com', NULL, '$2y$10$JAariER4ZCDABoNm7w3yu.3Yw2xnVVTVWeQSzT76j5MwqqT2d1C7u', '737414544', 'Buraydah', '456', '468456', 'ok', 's', 0, 1, 0, 'uploads/1663404767scaled_image_picker2071112317465056163.jpg', NULL, '2022-09-17 08:52:47', '2022-09-17 08:52:47', '0'),
(37, 'LightMoon', 'LightMoon', 'hamza6063@gmail.com', '2022-09-25 18:06:02', '$2y$10$p91z4XPfAGHdLC6Ydm9UFuES6sFbht3hdJMK7MznUH0RbNaBy4Q/e', '737414544', 'Jiddah', '456', '468456', 'LightMoon', 'LightMoon', 0, 0, 0, 'uploads/1663442862scaled_image_picker5893941516349100473.jpg', NULL, '2022-09-17 19:27:42', '2022-09-28 08:08:23', '0'),
(38, 'Ner', 's', 'cvbhf', NULL, '$2y$10$okdh0bqKklrRexCqfBEUY.Ksr1NCM/.JnGsY.4rCyiiZt10BxsB4m', '9852', 'Dhahran', '456', '468456', 'vvhy', 's', 0, 0, 1, 'uploads/1663449477scaled_image_picker2631177406991985316.jpg', NULL, '2022-09-17 21:17:57', '2022-09-17 21:17:57', '0'),
(39, 'kk', 's', 'kk@gmail.com', NULL, '$2y$10$nGTxpKn9hNDuPdVey5Sb8.rRr6gggvgjVJBpe7/yKIX0kyu0dXNGK', '737414544', 'Jīzān', '456', '468456', 'myqueen', 's', 0, 1, 1, 'uploads/1663449699scaled_image_picker3608290936721889251.jpg', NULL, '2022-09-17 21:21:39', '2022-09-17 21:21:39', '0'),
(40, 'smsm', 's', 'smsm9022@gmail.com', NULL, '$2y$10$jY4brUrGDEaI5fb3iIKgoO1whVN/JWgkP3TRNki59wLazNBYbAbcy', '12345678', 'Dhahran', '456', '468456', 'مولي', 's', 1, 1, 1, 'uploads/1664093206scaled_image_picker3420044216317849702.jpg', NULL, '2022-09-25 08:06:46', '2022-09-25 08:06:46', '0'),
(41, 'ahmed', 'ahmed samy', 'ahmedsamye777@gmail.com', '2022-10-12 18:30:00', '$2y$10$5aUPGBJ1mN1P3S9YALmSNODG2tR.4qWPcHW0u0OG1.bt18QSp4snq', '01279568336', 'Al-Jawf', '456', '468456', 'gaint', 'gaint', 1, 1, 1, 'uploads/1665599040scaled_image_picker2260420749873324744.jpg', NULL, '2022-10-12 18:24:00', '2022-10-12 18:30:00', '0'),
(42, 'احمد', 'ahmed', 'regret883883regret@gmail.com', NULL, '$2y$10$erWAIV0X/EVuM/HUox5kyeCeBs3CB7ZaxtXmrzjGz71/0emHs7ZJK', '464858', 'Al-Kharj (oasis)', '456', '468456', 'متجر', 'store', 0, 1, 0, 'uploads/1665599713scaled_image_picker6248439965796643414.jpg', NULL, '2022-10-12 18:35:13', '2022-10-12 18:35:13', '0'),
(43, 'ali', 'ali english', 'bebonagi2@gamil.com', NULL, '$2y$10$CGQ8359GEaCQotMjpQfggeWRvfINlPdvKuwsYfgvCZirOMarmLBa2', '051234212315', 'Al-Qaṭīf', '456', '468456', 'ali Store Suadi', 'Ali Store English', 1, 1, 1, 'uploads/1667646948scaled_image_picker2145561446693745419.jpg', NULL, '2022-11-05 11:15:48', '2022-11-05 11:15:48', '0');

-- --------------------------------------------------------

--
-- Table structure for table `view_ships`
--

CREATE TABLE `view_ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `ship_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `move`
--
ALTER TABLE `move`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talabats`
--
ALTER TABLE `talabats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `view_ships`
--
ALTER TABLE `view_ships`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `move`
--
ALTER TABLE `move`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `talabats`
--
ALTER TABLE `talabats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `view_ships`
--
ALTER TABLE `view_ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
