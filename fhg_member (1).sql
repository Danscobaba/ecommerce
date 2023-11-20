-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 20, 2023 at 11:26 AM
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
-- Database: `fhg_member`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `short_name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Akure', 'Akr', 1, NULL, NULL),
(2, 'Owo', 'owo', 1, NULL, NULL),
(3, 'Akungba', 'Akungba', 1, NULL, NULL),
(4, 'Ado', 'Ado', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_cards`
--

DROP TABLE IF EXISTS `id_cards`;
CREATE TABLE IF NOT EXISTS `id_cards` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `entity_id` bigint UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `qr_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `id_cards`
--

INSERT INTO `id_cards` (`id`, `entity_id`, `issue_date`, `expiry_date`, `qr_code`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(2, 2, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(3, 3, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(4, 4, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(5, 5, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(6, 6, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(7, 7, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(8, 8, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(9, 9, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(10, 10, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(11, 11, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(12, 12, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(13, 13, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(14, 14, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(15, 15, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(16, 16, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(17, 17, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(18, 18, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(19, 19, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(20, 20, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(21, 21, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(22, 22, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(23, 23, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(24, 24, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(25, 25, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(26, 26, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(27, 27, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(28, 28, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(29, 29, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(30, 30, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(31, 31, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(32, 32, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(33, 33, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(34, 34, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(35, 35, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(36, 36, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(37, 37, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(38, 38, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(39, 39, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(40, 40, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(41, 41, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(42, 42, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(43, 43, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(44, 44, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(45, 45, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(46, 46, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(47, 47, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(48, 48, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(49, 49, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(50, 50, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(51, 51, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(52, 52, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(53, 53, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(54, 54, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(55, 55, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(56, 56, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(57, 57, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(58, 58, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(59, 59, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(60, 60, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(61, 61, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(62, 62, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(63, 63, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(64, 64, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(65, 65, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(66, 66, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(67, 67, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(68, 68, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(69, 69, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(70, 70, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(71, 71, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(72, 72, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(73, 73, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(74, 74, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(75, 75, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(76, 76, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(77, 77, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(78, 78, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(79, 79, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(80, 80, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(81, 81, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(82, 82, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(83, 83, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(84, 84, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(85, 85, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(86, 86, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(87, 87, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(88, 88, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(89, 89, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(90, 90, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(91, 91, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(92, 92, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(93, 93, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(94, 94, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(95, 95, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(96, 96, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(97, 97, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(98, 98, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(99, 99, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(100, 100, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(101, 101, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(102, 102, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(103, 103, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(104, 104, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(105, 105, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(106, 106, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(107, 107, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(108, 108, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(109, 109, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(110, 110, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(111, 111, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(112, 112, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(113, 113, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(114, 114, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(115, 115, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(116, 116, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(117, 117, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(118, 118, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(119, 119, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(120, 120, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(121, 121, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(122, 122, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(123, 123, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(124, 124, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(125, 125, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(126, 126, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(127, 127, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(128, 128, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(129, 129, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(130, 130, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(131, 131, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(132, 132, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(133, 133, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(134, 134, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(135, 135, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(136, 136, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(137, 137, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(138, 138, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(139, 139, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(140, 140, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(141, 141, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(142, 142, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(143, 143, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(144, 144, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(145, 145, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(146, 146, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(147, 147, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(148, 148, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(149, 149, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(150, 150, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(151, 151, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(152, 152, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(153, 153, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(154, 154, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(155, 155, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(156, 156, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(157, 157, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(158, 158, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(159, 159, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(160, 160, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(161, 161, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(162, 162, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(163, 163, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(164, 164, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(165, 165, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(166, 166, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(167, 167, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(168, 168, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(169, 169, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(170, 170, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(171, 171, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(172, 172, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(173, 173, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(174, 174, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(175, 175, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(176, 176, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(177, 177, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(178, 178, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(179, 179, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(180, 180, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(181, 181, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(182, 182, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(183, 183, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(184, 184, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(185, 185, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(186, 186, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(187, 187, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(188, 188, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(189, 189, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(190, 190, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(191, 191, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(192, 192, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(193, 193, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(194, 194, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(195, 195, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(196, 196, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(197, 197, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(198, 198, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(199, 199, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(200, 200, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(201, 201, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(202, 202, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(203, 203, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(204, 204, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(205, 205, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(206, 206, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(207, 207, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(208, 208, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(209, 209, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(210, 210, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(211, 211, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(212, 212, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(213, 213, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(214, 214, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(215, 215, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(216, 216, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(217, 217, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(218, 218, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(219, 219, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(220, 220, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(221, 221, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(222, 222, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(223, 223, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(224, 224, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(225, 225, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(226, 226, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(227, 227, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(228, 228, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(229, 229, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(230, 230, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(231, 231, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(232, 232, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(233, 233, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(234, 234, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(235, 235, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(236, 236, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(237, 237, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(238, 238, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(239, 239, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(240, 240, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(241, 241, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(242, 242, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(243, 243, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(244, 244, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(245, 245, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(246, 246, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(247, 247, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(248, 248, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(249, 249, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(250, 250, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(251, 251, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(252, 252, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(253, 253, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(254, 254, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(255, 255, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(256, 256, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(257, 257, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(258, 258, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(259, 259, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(260, 260, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(261, 261, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(262, 262, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(263, 263, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(264, 264, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(265, 265, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(266, 266, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(267, 267, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(268, 268, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(269, 269, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(270, 270, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(271, 271, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(272, 272, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(273, 273, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(274, 274, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(275, 275, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(276, 276, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(277, 277, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(278, 278, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(279, 279, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(280, 280, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(281, 281, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(282, 282, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(283, 283, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(284, 284, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(285, 285, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(286, 286, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(287, 287, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(288, 288, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(289, 289, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(290, 290, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(291, 291, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(292, 292, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(293, 293, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(294, 294, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(295, 295, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(296, 296, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(297, 297, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(298, 298, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(299, 299, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(300, 300, '2023-11-12', '2024-11-12', NULL, NULL, NULL),
(301, 301, '2023-11-17', '2024-11-17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mean_of_identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint NOT NULL,
  `identity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_id` int NOT NULL,
  `city_id` int NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `member_status` tinyint NOT NULL COMMENT '1:active, 2:deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `fullname`, `email`, `phone_no`, `passport`, `mean_of_identity`, `gender`, `identity_id`, `address`, `office_id`, `city_id`, `unique_id`, `created_by`, `member_status`, `created_at`, `updated_at`) VALUES
(1, 'Kessia Ceillier', 'kceillier0@360.cn', '8168214116', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 21410', 2, 1, 'owo-40530', 2, 2, '2023-11-12 09:16:31', NULL),
(2, 'Reube Titchard', 'rtitchard1@weibo.com', '7764897427', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 73830', 4, 2, 'akr-69398', 2, 1, '2023-11-12 09:16:31', NULL),
(3, 'Gertruda Mordie', 'gmordie2@oracle.com', '1063159115', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 29115', 4, 1, 'akr-48201', 1, 1, '2023-11-12 09:16:31', NULL),
(4, 'Georgie Usmar', 'gusmar3@storify.com', '3929524444', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '5th Floor', 2, 1, 'akr-70322', 1, 1, '2023-11-12 09:16:31', NULL),
(5, 'Dionysus Dell Casa', 'ddell4@nifty.com', '3072781303', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '10th Floor', 2, 2, 'owo-64506', 1, 1, '2023-11-12 09:16:31', NULL),
(6, 'Maddie Kivits', 'mkivits5@fastcompany.com', '2246154921', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 20094', 2, 1, 'akr-83343', 2, 1, '2023-11-12 09:16:31', NULL),
(7, 'Elwyn Mordin', 'emordin6@wiley.com', '7506948187', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 51', 4, 1, 'akr-23575', 1, 1, '2023-11-12 09:16:31', NULL),
(8, 'Alissa Rollason', 'arollason7@over-blog.com', '9555837234', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '12th Floor', 2, 1, 'akr-27086', 2, 1, '2023-11-12 09:16:31', NULL),
(9, 'Jackelyn Kembrey', 'jkembrey8@com.com', '5528378640', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 77992', 4, 2, 'owo-96295', 2, 1, '2023-11-12 09:16:31', NULL),
(10, 'Emmaline Slayny', 'eslayny9@nature.com', '7719989536', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 582', 2, 1, 'owo-3697', 1, 1, '2023-11-12 09:16:31', NULL),
(11, 'Reidar Barth', 'rbartha@deviantart.com', '9946187680', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1194', 2, 2, 'akr-30897', 2, 1, '2023-11-12 09:16:31', NULL),
(12, 'Chere Winchurst', 'cwinchurstb@youku.com', '9116141700', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 7526', 2, 2, 'akr-32390', 2, 1, '2023-11-12 09:16:31', NULL),
(13, 'Vito Britner', 'vbritnerc@tinyurl.com', '1929711192', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1661', 2, 1, 'owo-76401', 2, 1, '2023-11-12 09:16:31', NULL),
(14, 'Waite Whoolehan', 'wwhoolehand@google.it', '4408124198', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 4, 1, 'akr-94578', 1, 1, '2023-11-12 09:16:31', NULL),
(15, 'Doug Gateley', 'dgateleye@pagesperso-orange.fr', '9218764263', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '15th Floor', 4, 1, 'owo-72564', 1, 1, '2023-11-12 09:16:31', NULL),
(16, 'Ann Capineer', 'acapineerf@google.nl', '5449769181', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1154', 4, 2, 'owo-69132', 2, 1, '2023-11-12 09:16:31', NULL),
(17, 'Barthel Coche', 'bcocheg@guardian.co.uk', '4288789059', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 377', 4, 2, 'owo-94022', 1, 1, '2023-11-12 09:16:32', NULL),
(18, 'Gloriane Bockman', 'gbockmanh@comcast.net', '5317712221', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 993', 4, 1, 'owo-77225', 2, 1, '2023-11-12 09:16:32', NULL),
(19, 'Bernarr Boustred', 'bboustredi@purevolume.com', '5584611885', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1059', 4, 1, 'akr-51836', 2, 1, '2023-11-12 09:16:32', NULL),
(20, 'Kariotta Edbrooke', 'kedbrookej@ebay.com', '9663553092', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 35567', 4, 2, 'owo-15845', 1, 1, '2023-11-12 09:16:32', NULL),
(21, 'Ramsey Caldecott', 'rcaldecottk@tmall.com', '3765037279', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '20th Floor', 2, 2, 'akr-20747', 1, 1, '2023-11-12 09:16:32', NULL),
(22, 'Alberta Houndson', 'ahoundsonl@posterous.com', '2199087499', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1960', 4, 1, 'akr-29073', 2, 1, '2023-11-12 09:16:32', NULL),
(23, 'Antons Kleuer', 'akleuerm@oracle.com', '9119870200', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 472', 4, 2, 'owo-80788', 2, 1, '2023-11-12 09:16:32', NULL),
(24, 'Daveen Screaton', 'dscreatonn@sakura.ne.jp', '4625476498', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1925', 2, 1, 'akr-39630', 1, 1, '2023-11-12 09:16:32', NULL),
(25, 'Karoline Wilkenson', 'kwilkensono@smugmug.com', '7651943404', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 143', 2, 1, 'akr-49950', 2, 1, '2023-11-12 09:16:32', NULL),
(26, 'Violante Vasyunichev', 'vvasyunichevp@berkeley.edu', '2668743059', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 65271', 4, 2, 'owo-55730', 1, 1, '2023-11-12 09:16:32', NULL),
(27, 'Milli Buss', 'mbussq@barnesandnoble.com', '3647042256', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 83452', 2, 2, 'owo-45470', 1, 1, '2023-11-12 09:16:32', NULL),
(28, 'Cayla Flieg', 'cfliegr@tinyurl.com', '5405475032', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1305', 2, 1, 'owo-60846', 1, 1, '2023-11-12 09:16:32', NULL),
(29, 'Reggi Attyeo', 'rattyeos@cbsnews.com', '9095214231', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 59093', 2, 1, 'akr-74858', 1, 1, '2023-11-12 09:16:32', NULL),
(30, 'Penelope Coppock.', 'pcoppockt@howstuffworks.com', '9239722478', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '3rd Floor', 4, 1, 'akr-82792', 1, 1, '2023-11-12 09:16:32', NULL),
(31, 'Salim Goly', 'sgolyu@boston.com', '9662779193', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 40', 4, 1, 'akr-76273', 2, 1, '2023-11-12 09:16:32', NULL),
(32, 'Annetta Wadley', 'awadleyv@mit.edu', '9525221324', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1089', 2, 2, 'akr-84054', 1, 1, '2023-11-12 09:16:32', NULL),
(33, 'Pauletta Scane', 'pscanew@globo.com', '4029589974', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 57', 2, 2, 'owo-44060', 1, 1, '2023-11-12 09:16:32', NULL),
(34, 'Nert Lanmeid', 'nlanmeidx@google.com.br', '8808192758', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 96', 2, 1, 'owo-74798', 1, 1, '2023-11-12 09:16:32', NULL),
(35, 'Antone Gosnold', 'agosnoldy@imageshack.us', '9986224720', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1498', 2, 1, 'owo-53689', 1, 1, '2023-11-12 09:16:32', NULL),
(36, 'Rutter Oglethorpe', 'roglethorpez@admin.ch', '7722916530', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '6th Floor', 4, 1, 'owo-90731', 2, 1, '2023-11-12 09:16:32', NULL),
(37, 'Deanne Rouse', 'drouse10@goo.gl', '2396251970', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '13th Floor', 2, 2, 'akr-12680', 2, 1, '2023-11-12 09:16:32', NULL),
(38, 'Dov Al Hirsi', 'dal11@example.com', '8337398933', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '18th Floor', 2, 2, 'owo-83545', 1, 1, '2023-11-12 09:16:32', NULL),
(39, 'Joycelin MacAskill', 'jmacaskill12@discuz.net', '4279611057', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1518', 2, 2, 'akr-10563', 2, 1, '2023-11-12 09:16:32', NULL),
(40, 'Tamarah Goulding', 'tgoulding13@wikispaces.com', '1529421862', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '7th Floor', 2, 2, 'owo-56774', 2, 1, '2023-11-12 09:16:32', NULL),
(41, 'Gusella Oen', 'goen14@irs.gov', '1065502778', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '16th Floor', 2, 2, 'akr-14439', 1, 1, '2023-11-12 09:16:32', NULL),
(42, 'Abbey Penburton', 'apenburton15@salon.com', '6905855255', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 42', 2, 1, 'owo-5857', 2, 1, '2023-11-12 09:16:32', NULL),
(43, 'Ricard Mackness', 'rmackness16@washingtonpost.com', '8738206848', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 97', 2, 1, 'owo-39291', 1, 1, '2023-11-12 09:16:32', NULL),
(44, 'Riobard Danett', 'rdanett17@npr.org', '3024469533', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 905', 2, 1, 'owo-26347', 1, 1, '2023-11-12 09:16:32', NULL),
(45, 'Karylin Grinley', 'kgrinley18@soup.io', '7246296149', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '15th Floor', 2, 1, 'akr-9024', 2, 1, '2023-11-12 09:16:32', NULL),
(46, 'Debra Sallans', 'dsallans19@ow.ly', '5721987012', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '17th Floor', 4, 1, 'owo-86715', 1, 1, '2023-11-12 09:16:32', NULL),
(47, 'Avictor Manntschke', 'amanntschke1a@uiuc.edu', '3037646164', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '4th Floor', 4, 1, 'owo-82898', 2, 1, '2023-11-12 09:16:32', NULL),
(48, 'Fionna MacKill', 'fmackill1b@nps.gov', '6234065171', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 83295', 2, 2, 'owo-42902', 1, 1, '2023-11-12 09:16:32', NULL),
(49, 'Hercule Shortin', 'hshortin1c@smh.com.au', '1881772172', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '13th Floor', 2, 1, 'owo-43974', 2, 1, '2023-11-12 09:16:32', NULL),
(50, 'Mac Raeburn', 'mraeburn1d@wix.com', '6454488938', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 71', 4, 1, 'owo-26061', 1, 1, '2023-11-12 09:16:32', NULL),
(51, 'Jacques Noods', 'jnoods1e@blogs.com', '7933918110', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 3', 4, 1, 'akr-90691', 1, 1, '2023-11-12 09:16:32', NULL),
(52, 'Izaak Doblin', 'idoblin1f@answers.com', '1792698364', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 129', 2, 1, 'owo-36722', 2, 1, '2023-11-12 09:16:32', NULL),
(53, 'Ced Prazer', 'cprazer1g@miibeian.gov.cn', '9444809852', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 697', 4, 2, 'owo-74216', 1, 1, '2023-11-12 09:16:32', NULL),
(54, 'Dana Cornbell', 'dcornbell1h@dyndns.org', '2273896537', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1703', 4, 1, 'akr-84281', 2, 1, '2023-11-12 09:16:32', NULL),
(55, 'Correy Farrall', 'cfarrall1i@chicagotribune.com', '4086163032', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 39154', 2, 2, 'akr-88995', 2, 1, '2023-11-12 09:16:32', NULL),
(56, 'Augustin Youster', 'ayouster1j@businessweek.com', '9075655050', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 89764', 4, 2, 'owo-6881', 2, 1, '2023-11-12 09:16:32', NULL),
(57, 'Washington Mandrey', 'wmandrey1k@bluehost.com', '2638007462', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 752', 4, 1, 'owo-27675', 1, 1, '2023-11-12 09:16:32', NULL),
(58, 'Andre Bettam', 'abettam1l@opensource.org', '3622788533', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 67', 4, 2, 'akr-66292', 1, 1, '2023-11-12 09:16:32', NULL),
(59, 'Peirce Geraldez', 'pgeraldez1m@businesswire.com', '3009489397', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 34', 2, 2, 'akr-25003', 2, 1, '2023-11-12 09:16:32', NULL),
(60, 'Selene Langlois', 'slanglois1n@e-recht24.de', '4719743064', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 37774', 4, 2, 'owo-7770', 2, 1, '2023-11-12 09:16:32', NULL),
(61, 'Isahella Abbiss', 'iabbiss1o@dyndns.org', '2747540173', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1583', 4, 2, 'owo-48302', 2, 1, '2023-11-12 09:16:32', NULL),
(62, 'Lyell Sherbourne', 'lsherbourne1p@youku.com', '8607228534', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 7231', 4, 2, 'owo-96044', 2, 1, '2023-11-12 09:16:32', NULL),
(63, 'Garold McMarquis', 'gmcmarquis1q@jugem.jp', '7438385307', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1546', 4, 2, 'owo-89687', 2, 1, '2023-11-12 09:16:32', NULL),
(64, 'Cynthy Thomton', 'cthomton1r@google.it', '5283413472', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 4, 1, 'akr-73699', 1, 1, '2023-11-12 09:16:32', NULL),
(65, 'Regina Eye', 'reye1s@com.com', '2039075968', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '12th Floor', 2, 2, 'owo-75939', 1, 1, '2023-11-12 09:16:32', NULL),
(66, 'Burty Matitiaho', 'bmatitiaho1t@businessweek.com', '4106013747', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 217', 4, 1, 'akr-26045', 2, 1, '2023-11-12 09:16:32', NULL),
(67, 'Allina Osgar', 'aosgar1u@economist.com', '9845900943', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1275', 4, 1, 'akr-65899', 2, 1, '2023-11-12 09:16:32', NULL),
(68, 'Sauveur Jansie', 'sjansie1v@godaddy.com', '2907036128', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 346', 4, 2, 'owo-42744', 1, 1, '2023-11-12 09:16:32', NULL),
(69, 'Dahlia Cambling', 'dcambling1w@themeforest.net', '7815773607', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 27', 2, 2, 'akr-50100', 2, 1, '2023-11-12 09:16:32', NULL),
(70, 'Lorne Lavens', 'llavens1x@cbc.ca', '3903885345', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '2nd Floor', 4, 2, 'akr-71905', 2, 1, '2023-11-12 09:16:32', NULL),
(71, 'Delano Layzell', 'dlayzell1y@myspace.com', '2788826722', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 42573', 2, 2, 'owo-49795', 1, 1, '2023-11-12 09:16:32', NULL),
(72, 'Waite Kirkebye', 'wkirkebye1z@flavors.me', '5991035172', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 59', 4, 2, 'akr-21232', 2, 1, '2023-11-12 09:16:32', NULL),
(73, 'Brodie Brownlie', 'bbrownlie20@jigsy.com', '4139958173', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 27', 2, 1, 'akr-97887', 1, 1, '2023-11-12 09:16:32', NULL),
(74, 'Aron Lalevee', 'alalevee21@theatlantic.com', '6063482260', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 86878', 2, 2, 'akr-88970', 2, 1, '2023-11-12 09:16:32', NULL),
(75, 'Laurel Tatlow', 'ltatlow22@yolasite.com', '8751666416', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 62293', 4, 1, 'akr-69268', 1, 1, '2023-11-12 09:16:32', NULL),
(76, 'Leontine Milam', 'lmilam23@yahoo.co.jp', '1157694340', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '4th Floor', 2, 2, 'owo-70179', 1, 1, '2023-11-12 09:16:32', NULL),
(77, 'Ibrahim Welch', 'iwelch24@pinterest.com', '4016623280', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1209', 4, 1, 'owo-41903', 1, 1, '2023-11-12 09:16:32', NULL),
(78, 'Fayina Pointin', 'fpointin25@hp.com', '5887305740', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 86', 4, 2, 'owo-40516', 1, 1, '2023-11-12 09:16:32', NULL),
(79, 'Wynn Rizzetti', 'wrizzetti26@tumblr.com', '1903268195', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 36490', 4, 2, 'akr-12473', 2, 1, '2023-11-12 09:16:32', NULL),
(80, 'Gerri Gowers', 'ggowers27@un.org', '8932562615', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 363', 4, 1, 'owo-61902', 1, 1, '2023-11-12 09:16:32', NULL),
(81, 'Lilias Dwane', 'ldwane28@disqus.com', '1694159864', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 54', 4, 2, 'akr-51090', 1, 1, '2023-11-12 09:16:32', NULL),
(82, 'Ike Brashaw', 'ibrashaw29@nbcnews.com', '9001847153', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 4, 1, 'owo-51853', 1, 1, '2023-11-12 09:16:32', NULL),
(83, 'Lem Longwood', 'llongwood2a@blogtalkradio.com', '5135384986', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 33755', 2, 1, 'owo-13726', 2, 1, '2023-11-12 09:16:32', NULL),
(84, 'Shalna Vsanelli', 'svsanelli2b@businessinsider.com', '3389447580', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 90061', 2, 2, 'akr-60178', 2, 1, '2023-11-12 09:16:32', NULL),
(85, 'Benjamen Bockh', 'bbockh2c@geocities.com', '5587046449', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 25455', 2, 1, 'akr-98096', 1, 1, '2023-11-12 09:16:32', NULL),
(86, 'Rheba Lashbrook', 'rlashbrook2d@weibo.com', '4626487436', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 655', 4, 1, 'owo-63929', 2, 1, '2023-11-12 09:16:32', NULL),
(87, 'Ulrich Frood', 'ufrood2e@wiley.com', '7052615069', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 40280', 2, 2, 'akr-1346', 1, 1, '2023-11-12 09:16:32', NULL),
(88, 'Brandy Cadwell', 'bcadwell2f@feedburner.com', '9142376746', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '8th Floor', 4, 2, 'owo-97825', 2, 1, '2023-11-12 09:16:32', NULL),
(89, 'Ernesto Gillson', 'egillson2g@disqus.com', '3933211051', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '20th Floor', 4, 1, 'owo-16735', 1, 1, '2023-11-12 09:16:32', NULL),
(90, 'Randa Chazelle', 'rchazelle2h@gizmodo.com', '9926293568', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 1554', 4, 2, 'akr-11036', 1, 1, '2023-11-12 09:16:32', NULL),
(91, 'Etheline Rawson', 'erawson2i@ovh.net', '3012642094', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 14', 2, 2, 'akr-26015', 1, 1, '2023-11-12 09:16:32', NULL),
(92, 'Brendis Gunda', 'bgunda2j@dailymotion.com', '8504798758', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1742', 2, 2, 'owo-63368', 2, 1, '2023-11-12 09:16:32', NULL),
(93, 'Cathie Scutts', 'cscutts2k@mapy.cz', '1623637883', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '20th Floor', 4, 1, 'owo-48114', 1, 1, '2023-11-12 09:16:32', NULL),
(94, 'Eirena Sickling', 'esickling2l@people.com.cn', '5804407383', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 17', 4, 2, 'owo-86916', 2, 1, '2023-11-12 09:16:32', NULL),
(95, 'Alexandro Van Castele', 'avan2m@canalblog.com', '5767124140', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1555', 2, 1, 'akr-36149', 1, 1, '2023-11-12 09:16:32', NULL),
(96, 'Raffaello Bartoszinski', 'rbartoszinski2n@alexa.com', '7726885098', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1425', 4, 1, 'owo-71715', 1, 1, '2023-11-12 09:16:32', NULL),
(97, 'Nanine Cameli', 'ncameli2o@umich.edu', '3738440236', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1592', 4, 2, 'owo-53018', 2, 1, '2023-11-12 09:16:32', NULL),
(98, 'Dona Soldan', 'dsoldan2p@earthlink.net', '5035601524', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1466', 2, 2, 'akr-84155', 2, 1, '2023-11-12 09:16:32', NULL),
(99, 'Melany Goretti', 'mgoretti2q@webs.com', '7819657741', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 7', 2, 1, 'akr-20273', 2, 1, '2023-11-12 09:16:32', NULL),
(100, 'Henryetta Corstorphine', 'hcorstorphine2r@shutterfly.com', '4338141028', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '17th Floor', 4, 2, 'akr-58082', 2, 1, '2023-11-12 09:16:32', NULL),
(101, 'Angela Klempke', 'aklempke2s@macromedia.com', '5388328893', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1343', 4, 1, 'akr-40162', 1, 1, '2023-11-12 09:16:32', NULL),
(102, 'Gasper Bailey', 'gbailey2t@nytimes.com', '6029270595', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 43', 4, 2, 'owo-8498', 2, 1, '2023-11-12 09:16:32', NULL),
(103, 'Desmond Keddy', 'dkeddy2u@mit.edu', '6046655835', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 28509', 4, 2, 'akr-90953', 1, 1, '2023-11-12 09:16:32', NULL),
(104, 'Eve Booi', 'ebooi2v@cmu.edu', '3273628154', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 88115', 4, 1, 'owo-5689', 2, 1, '2023-11-12 09:16:32', NULL),
(105, 'Renelle Carbin', 'rcarbin2w@cmu.edu', '8065165242', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 1129', 4, 2, 'akr-8446', 1, 1, '2023-11-12 09:16:32', NULL),
(106, 'Corty Radsdale', 'cradsdale2x@seesaa.net', '3594334612', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 424', 4, 2, 'akr-30487', 1, 1, '2023-11-12 09:16:32', NULL),
(107, 'Lil Josefovic', 'ljosefovic2y@trellian.com', '9372808038', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '12th Floor', 4, 2, 'akr-82789', 2, 1, '2023-11-12 09:16:32', NULL),
(108, 'Robbin De Bernardi', 'rde2z@zdnet.com', '9609019136', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1108', 2, 1, 'akr-69537', 2, 1, '2023-11-12 09:16:32', NULL),
(109, 'Jerrilee MacElharge', 'jmacelharge30@abc.net.au', '1188199062', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 272', 4, 1, 'owo-559', 1, 1, '2023-11-12 09:16:32', NULL),
(110, 'Harli Ashwood', 'hashwood31@tumblr.com', '1376966610', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 37', 4, 1, 'owo-99874', 1, 1, '2023-11-12 09:16:32', NULL),
(111, 'Herschel Stidson', 'hstidson32@simplemachines.org', '3054393581', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 243', 2, 2, 'owo-14702', 2, 1, '2023-11-12 09:16:32', NULL),
(112, 'Liane Shingles', 'lshingles33@miibeian.gov.cn', '9335825121', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1521', 4, 1, 'akr-57536', 2, 1, '2023-11-12 09:16:32', NULL),
(113, 'Clarinda Jorcke', 'cjorcke34@ucla.edu', '8084087153', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 32049', 4, 2, 'owo-71955', 1, 1, '2023-11-12 09:16:32', NULL),
(114, 'Jacqui Pont', 'jpont35@plala.or.jp', '8961042778', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1868', 4, 2, 'akr-25904', 2, 1, '2023-11-12 09:16:32', NULL),
(115, 'Faina De Biasio', 'fde36@biblegateway.com', '8736377832', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 4, 2, 'owo-38606', 2, 1, '2023-11-12 09:16:32', NULL),
(116, 'Franni King', 'fking37@zimbio.com', '4333523609', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 85', 4, 1, 'owo-80188', 1, 1, '2023-11-12 09:16:32', NULL),
(117, 'Trisha Cainey', 'tcainey38@berkeley.edu', '6206918835', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1263', 2, 2, 'akr-48947', 1, 1, '2023-11-12 09:16:32', NULL),
(118, 'Cordell Dukesbury', 'cdukesbury39@multiply.com', '5499374936', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 75', 4, 1, 'owo-34430', 1, 1, '2023-11-12 09:16:32', NULL),
(119, 'Salvidor Bertwistle', 'sbertwistle3a@ucoz.ru', '2488548006', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1800', 4, 1, 'akr-95734', 2, 1, '2023-11-12 09:16:32', NULL),
(120, 'Kit Bonnaire', 'kbonnaire3b@nyu.edu', '1659865589', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '2nd Floor', 2, 2, 'owo-30608', 2, 1, '2023-11-12 09:16:32', NULL),
(121, 'Dayle Canavan', 'dcanavan3c@booking.com', '4637661261', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '5th Floor', 2, 2, 'akr-99224', 2, 1, '2023-11-12 09:16:32', NULL),
(122, 'Alejandrina Freak', 'afreak3d@senate.gov', '3721124131', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '15th Floor', 4, 2, 'owo-74020', 1, 1, '2023-11-12 09:16:32', NULL),
(123, 'Misha Stone', 'mstone3e@aol.com', '7381712233', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 56', 4, 1, 'owo-38407', 1, 1, '2023-11-12 09:16:32', NULL),
(124, 'Pascale Jannasch', 'pjannasch3f@scientificamerican.com', '4185461912', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '20th Floor', 2, 1, 'owo-58764', 2, 1, '2023-11-12 09:16:32', NULL),
(125, 'Giustino Eschelle', 'geschelle3g@purevolume.com', '1633897755', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '15th Floor', 2, 1, 'owo-55695', 1, 1, '2023-11-12 09:16:32', NULL),
(126, 'Aldin Pettendrich', 'apettendrich3h@usda.gov', '7946965623', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 32', 4, 2, 'owo-78751', 1, 1, '2023-11-12 09:16:32', NULL),
(127, 'Faustine covino', 'fcovino3i@tumblr.com', '7887686959', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 2', 2, 1, 'akr-76168', 2, 1, '2023-11-12 09:16:32', NULL),
(128, 'Dwain McKew', 'dmckew3j@stumbleupon.com', '5945552475', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '13th Floor', 4, 1, 'akr-75985', 2, 1, '2023-11-12 09:16:32', NULL),
(129, 'Munmro Cadamy', 'mcadamy3k@jiathis.com', '6995391204', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 38', 2, 2, 'akr-95764', 2, 1, '2023-11-12 09:16:32', NULL),
(130, 'Tate Chesterman', 'tchesterman3l@bizjournals.com', '2068987414', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '20th Floor', 4, 1, 'akr-88393', 2, 1, '2023-11-12 09:16:32', NULL),
(131, 'Clair Heustice', 'cheustice3m@microsoft.com', '4503822936', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 21870', 2, 2, 'owo-42748', 1, 1, '2023-11-12 09:16:32', NULL),
(132, 'Bernette Vitall', 'bvitall3n@github.io', '4523048447', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 437', 2, 1, 'akr-30801', 2, 1, '2023-11-12 09:16:32', NULL),
(133, 'Maddie Kiddle', 'mkiddle3o@wsj.com', '7889398076', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '8th Floor', 4, 2, 'owo-22893', 1, 1, '2023-11-12 09:16:32', NULL),
(134, 'Theressa Wandrey', 'twandrey3p@nsw.gov.au', '2898706525', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 35', 4, 2, 'owo-48579', 1, 1, '2023-11-12 09:16:32', NULL),
(135, 'Maxy Raittie', 'mraittie3q@amazon.co.jp', '3198687227', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 835', 2, 1, 'owo-84413', 1, 1, '2023-11-12 09:16:32', NULL),
(136, 'Paloma Wildin', 'pwildin3r@addthis.com', '2694360795', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 60837', 2, 2, 'akr-10245', 1, 1, '2023-11-12 09:16:32', NULL),
(137, 'Stacia Chevalier', 'schevalier3s@fc2.com', '9396428467', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 37', 2, 2, 'akr-64742', 2, 1, '2023-11-12 09:16:32', NULL),
(138, 'Cirillo Kruszelnicki', 'ckruszelnicki3t@dailymotion.com', '4097726788', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 35808', 2, 2, 'owo-31515', 2, 1, '2023-11-12 09:16:32', NULL),
(139, 'Flore Hallworth', 'fhallworth3u@nhs.uk', '4423260932', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 883', 2, 2, 'akr-47716', 1, 1, '2023-11-12 09:16:32', NULL),
(140, 'Nani Dewing', 'ndewing3v@storify.com', '4127440336', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '11th Floor', 2, 1, 'akr-4609', 1, 1, '2023-11-12 09:16:32', NULL),
(141, 'Ketty Ravens', 'kravens3w@seattletimes.com', '1004704260', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '7th Floor', 4, 1, 'akr-86702', 2, 1, '2023-11-12 09:16:32', NULL),
(142, 'Jonah Haberfield', 'jhaberfield3x@techcrunch.com', '8801638577', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 630', 2, 2, 'owo-1857', 1, 1, '2023-11-12 09:16:32', NULL),
(143, 'Jakob Geelan', 'jgeelan3y@latimes.com', '5007038000', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '7th Floor', 2, 2, 'akr-2474', 2, 1, '2023-11-12 09:16:32', NULL),
(144, 'Taylor Titmarsh', 'ttitmarsh3z@1688.com', '8981454185', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 903', 2, 1, 'akr-67782', 2, 1, '2023-11-12 09:16:32', NULL),
(145, 'Dieter Lethlay', 'dlethlay40@wsj.com', '3417727466', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 26', 2, 1, 'owo-95344', 2, 1, '2023-11-12 09:16:32', NULL),
(146, 'Marten Husband', 'mhusband41@hugedomains.com', '9075364058', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '10th Floor', 2, 1, 'owo-56546', 1, 1, '2023-11-12 09:16:32', NULL),
(147, 'Celia Jewkes', 'cjewkes42@indiatimes.com', '3711085125', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 87', 2, 2, 'akr-35327', 2, 1, '2023-11-12 09:16:32', NULL),
(148, 'Gustaf Treweke', 'gtreweke43@rediff.com', '2093695463', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 104', 2, 1, 'owo-80312', 1, 2, '2023-11-12 09:16:32', NULL),
(149, 'Alberik Bloom', 'abloom44@vk.com', '2275338271', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 28', 4, 1, 'akr-32991', 1, 1, '2023-11-12 09:16:32', NULL),
(150, 'Bary Tethcote', 'btethcote45@microsoft.com', '9515391730', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 11', 2, 2, 'owo-37661', 1, 1, '2023-11-12 09:16:32', NULL),
(151, 'Diane Liddall', 'dliddall0@blogger.com', '3653240846', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '16th Floor', 2, 2, 'owo-82070', 2, 1, '2023-11-12 09:17:24', NULL),
(152, 'Leigha Pitrelli', 'lpitrelli1@sogou.com', '3706470307', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 66', 4, 2, 'owo-9267', 2, 1, '2023-11-12 09:17:24', NULL),
(153, 'King Aidler', 'kaidler2@engadget.com', '5139602855', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 37502', 2, 1, 'akr-66438', 2, 1, '2023-11-12 09:17:24', NULL),
(154, 'Ezmeralda McCreary', 'emccreary3@mayoclinic.com', '3343632421', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 44416', 4, 2, 'owo-83048', 1, 1, '2023-11-12 09:17:24', NULL),
(155, 'Moore Gherardini', 'mgherardini4@mozilla.com', '2599409358', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 62', 2, 2, 'owo-91636', 1, 1, '2023-11-12 09:17:24', NULL),
(156, 'Obidiah Emptage', 'oemptage5@utexas.edu', '5127892813', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '12th Floor', 2, 2, 'akr-62970', 2, 1, '2023-11-12 09:17:25', NULL),
(157, 'Webb Moriarty', 'wmoriarty6@miibeian.gov.cn', '8823550632', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1345', 2, 1, 'owo-27785', 2, 1, '2023-11-12 09:17:25', NULL),
(158, 'Rayner Middas', 'rmiddas7@businesswire.com', '6824034550', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '10th Floor', 2, 1, 'akr-13524', 1, 1, '2023-11-12 09:17:25', NULL),
(159, 'Early Beevors', 'ebeevors8@youku.com', '5556253905', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 94', 4, 1, 'akr-39209', 1, 1, '2023-11-12 09:17:25', NULL),
(160, 'Lin Dreossi', 'ldreossi9@un.org', '1511566388', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 196', 2, 2, 'akr-92416', 1, 1, '2023-11-12 09:17:25', NULL),
(161, 'Freddy Larcher', 'flarchera@washington.edu', '1881270417', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 3976', 4, 1, 'akr-73117', 1, 1, '2023-11-12 09:17:25', NULL),
(162, 'Allyn Barkus', 'abarkusb@prlog.org', '6268751188', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1208', 2, 1, 'owo-51487', 1, 1, '2023-11-12 09:17:25', NULL),
(163, 'Omar Willoughey', 'owillougheyc@europa.eu', '4187048415', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 54507', 2, 2, 'akr-74186', 1, 1, '2023-11-12 09:17:25', NULL),
(164, 'Shaina Walkling', 'swalklingd@craigslist.org', '8263904393', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1675', 2, 2, 'owo-85975', 2, 1, '2023-11-12 09:17:25', NULL),
(165, 'Aubine Giraldez', 'agiraldeze@ed.gov', '9022910125', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 347', 4, 1, 'akr-87456', 1, 1, '2023-11-12 09:17:25', NULL),
(166, 'Shalom Ioannou', 'sioannouf@jiathis.com', '8503383618', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1240', 4, 1, 'owo-95736', 2, 1, '2023-11-12 09:17:25', NULL),
(167, 'Durante Beckford', 'dbeckfordg@wix.com', '4198777425', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 7', 2, 2, 'owo-94948', 1, 1, '2023-11-12 09:17:25', NULL),
(168, 'Darrelle Calveley', 'dcalveleyh@zdnet.com', '3417087287', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 358', 4, 2, 'owo-71808', 2, 1, '2023-11-12 09:17:25', NULL),
(169, 'Kai Samweyes', 'ksamweyesi@exblog.jp', '1254947339', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 783', 2, 2, 'owo-87264', 2, 1, '2023-11-12 09:17:25', NULL),
(170, 'Hatti Frangione', 'hfrangionej@aol.com', '8306209701', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 650', 2, 1, 'akr-61750', 1, 1, '2023-11-12 09:17:25', NULL),
(171, 'Rora Brothwood', 'rbrothwoodk@wix.com', '3272001867', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 57385', 4, 1, 'owo-12742', 1, 1, '2023-11-12 09:17:25', NULL),
(172, 'Vince Safont', 'vsafontl@xing.com', '5406935049', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 80761', 2, 2, 'owo-14522', 1, 1, '2023-11-12 09:17:25', NULL),
(173, 'Lusa Iacopetti', 'liacopettim@wufoo.com', '3594582125', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 96834', 4, 2, 'owo-34070', 2, 1, '2023-11-12 09:17:25', NULL),
(174, 'Herculie Ruilton', 'hruiltonn@ameblo.jp', '1078993096', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '4th Floor', 2, 2, 'owo-55426', 2, 1, '2023-11-12 09:17:25', NULL),
(175, 'Ashlie Batalini', 'abatalinio@wp.com', '2782207015', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1448', 2, 2, 'owo-57257', 1, 1, '2023-11-12 09:17:25', NULL),
(176, 'Ardelia Fierro', 'afierrop@netscape.com', '7986089262', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 52615', 4, 1, 'akr-89374', 1, 1, '2023-11-12 09:17:25', NULL),
(177, 'Milton Margerison', 'mmargerisonq@opensource.org', '8651836813', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 1484', 4, 2, 'akr-97198', 1, 1, '2023-11-12 09:17:25', NULL),
(178, 'Randal Sazio', 'rsazior@wordpress.org', '5367478823', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 975', 4, 1, 'akr-47431', 2, 1, '2023-11-12 09:17:25', NULL),
(179, 'Terry McEnhill', 'tmcenhills@scientificamerican.com', '4872454248', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 844', 4, 2, 'akr-43913', 1, 1, '2023-11-12 09:17:25', NULL),
(180, 'Chadd Saffer', 'csaffert@yellowbook.com', '3693507860', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 38901', 4, 1, 'owo-30779', 1, 1, '2023-11-12 09:17:25', NULL),
(181, 'Seka Richardsson', 'srichardssonu@berkeley.edu', '8057568141', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '16th Floor', 4, 2, 'akr-59974', 2, 1, '2023-11-12 09:17:25', NULL),
(182, 'Tonia Bartalot', 'tbartalotv@craigslist.org', '3605365017', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1885', 2, 1, 'owo-35002', 2, 1, '2023-11-12 09:17:25', NULL),
(183, 'Dru Abels', 'dabelsw@illinois.edu', '9219887977', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 58596', 2, 2, 'akr-63916', 2, 1, '2023-11-12 09:17:25', NULL),
(184, 'Shanta Kittless', 'skittlessx@pinterest.com', '9798429493', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 75', 2, 1, 'akr-93365', 1, 1, '2023-11-12 09:17:25', NULL),
(185, 'Cullin Gouda', 'cgouday@pinterest.com', '4464550551', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 542', 4, 1, 'owo-58184', 1, 1, '2023-11-12 09:17:25', NULL),
(186, 'Oberon Quernel', 'oquernelz@is.gd', '3621678970', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 51', 2, 2, 'akr-28218', 2, 1, '2023-11-12 09:17:25', NULL),
(187, 'Prue Ducaen', 'pducaen10@gizmodo.com', '3099324794', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1331', 2, 1, 'owo-67339', 1, 1, '2023-11-12 09:17:25', NULL),
(188, 'Serena Rudge', 'srudge11@uol.com.br', '3227424993', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 52', 4, 2, 'akr-77097', 1, 1, '2023-11-12 09:17:25', NULL),
(189, 'Conroy Camm', 'ccamm12@twitter.com', '5114033649', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1326', 2, 2, 'owo-12604', 2, 1, '2023-11-12 09:17:25', NULL),
(190, 'Maximilien Willshaw', 'mwillshaw13@bloglovin.com', '3683808091', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '11th Floor', 2, 1, 'owo-76865', 2, 1, '2023-11-12 09:17:25', NULL),
(191, 'Cassandra Shipsey', 'cshipsey14@flickr.com', '4083633797', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 73', 2, 1, 'akr-91805', 1, 1, '2023-11-12 09:17:25', NULL),
(192, 'Teri Roadnight', 'troadnight15@myspace.com', '3626948787', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 696', 4, 1, 'akr-96046', 1, 1, '2023-11-12 09:17:25', NULL),
(193, 'Stefanie Quinton', 'squinton16@ft.com', '3243463450', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1273', 4, 1, 'akr-8933', 1, 1, '2023-11-12 09:17:25', NULL),
(194, 'Sada Abbets', 'sabbets17@house.gov', '4598682186', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 730', 4, 1, 'owo-92131', 2, 1, '2023-11-12 09:17:25', NULL),
(195, 'Kaleena Gaucher', 'kgaucher18@alexa.com', '4284225561', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '6th Floor', 2, 2, 'akr-59655', 1, 1, '2023-11-12 09:17:25', NULL),
(196, 'Hervey Sigmund', 'hsigmund19@unicef.org', '2853489226', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 722', 2, 1, 'owo-63659', 1, 1, '2023-11-12 09:17:25', NULL),
(197, 'Shanna Doick', 'sdoick1a@lycos.com', '1742643606', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 63583', 2, 2, 'akr-4794', 1, 1, '2023-11-12 09:17:25', NULL),
(198, 'Marin Lambard', 'mlambard1b@about.com', '3175420881', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '7th Floor', 4, 2, 'akr-55144', 1, 1, '2023-11-12 09:17:25', NULL),
(199, 'Cindra McLay', 'cmclay1c@bloglovin.com', '8983492079', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1662', 2, 1, 'akr-73988', 2, 1, '2023-11-12 09:17:25', NULL),
(200, 'Emmy Polding', 'epolding1d@livejournal.com', '1544325454', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '18th Floor', 4, 1, 'akr-29378', 1, 1, '2023-11-12 09:17:25', NULL),
(201, 'Pavel MacConneely', 'pmacconneely1e@nsw.gov.au', '3317467133', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1599', 2, 1, 'owo-33351', 1, 1, '2023-11-12 09:17:25', NULL),
(202, 'Philippe Duley', 'pduley1f@theguardian.com', '2552665683', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 24522', 2, 1, 'akr-83969', 1, 1, '2023-11-12 09:17:25', NULL),
(203, 'Lynelle Shellibeer', 'lshellibeer1g@wufoo.com', '1538336983', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 360', 4, 1, 'akr-10234', 2, 1, '2023-11-12 09:17:25', NULL),
(204, 'Weston Goullee', 'wgoullee1h@macromedia.com', '8325193407', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 39875', 4, 1, 'akr-67291', 2, 1, '2023-11-12 09:17:25', NULL),
(205, 'Lorrin Slyvester', 'lslyvester1i@twitpic.com', '6766312925', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '19th Floor', 4, 2, 'akr-15868', 2, 1, '2023-11-12 09:17:25', NULL),
(206, 'Barbaraanne Akerman', 'bakerman1j@alibaba.com', '2348574970', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 31665', 2, 2, 'akr-69869', 1, 1, '2023-11-12 09:17:25', NULL),
(207, 'Aleksandr Sibson', 'asibson1k@netvibes.com', '7442032508', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1563', 4, 1, 'akr-350', 1, 1, '2023-11-12 09:17:25', NULL),
(208, 'Claretta Coviello', 'ccoviello1l@ocn.ne.jp', '1461068632', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 62543', 4, 2, 'owo-56595', 2, 1, '2023-11-12 09:17:25', NULL),
(209, 'Garrick Dimmer', 'gdimmer1m@biglobe.ne.jp', '8667028243', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 779', 2, 2, 'akr-85649', 1, 1, '2023-11-12 09:17:25', NULL),
(210, 'Juliette Carloni', 'jcarloni1n@g.co', '6581960327', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 84797', 2, 2, 'akr-39189', 2, 1, '2023-11-12 09:17:25', NULL),
(211, 'Emmalyn Hof', 'ehof1o@msn.com', '6964172861', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 108', 4, 2, 'akr-79351', 1, 1, '2023-11-12 09:17:25', NULL),
(212, 'Siobhan Aldred', 'saldred1p@ted.com', '2916593315', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 36', 2, 1, 'owo-41969', 2, 1, '2023-11-12 09:17:25', NULL),
(213, 'Angus Buncom', 'abuncom1q@usda.gov', '8516505481', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '11th Floor', 4, 2, 'owo-10674', 1, 1, '2023-11-12 09:17:25', NULL),
(214, 'Levon O\'Codihie', 'locodihie1r@behance.net', '6457228302', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 13829', 4, 2, 'akr-83750', 2, 1, '2023-11-12 09:17:25', NULL),
(215, 'Charmine Welchman', 'cwelchman1s@ovh.net', '3612509474', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 298', 2, 2, 'akr-58391', 2, 1, '2023-11-12 09:17:25', NULL),
(216, 'Elisha Naton', 'enaton1t@ifeng.com', '9747468539', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 67', 2, 1, 'owo-99156', 1, 1, '2023-11-12 09:17:25', NULL),
(217, 'Redford Cobbing', 'rcobbing1u@opera.com', '9064877811', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '13th Floor', 2, 2, 'akr-28378', 2, 1, '2023-11-12 09:17:25', NULL),
(218, 'Greer Leitche', 'gleitche1v@hugedomains.com', '8723425807', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 702', 2, 1, 'akr-2535', 1, 1, '2023-11-12 09:17:25', NULL),
(219, 'Myrtle Ellum', 'mellum1w@yahoo.co.jp', '2533886178', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '2nd Floor', 2, 1, 'owo-18976', 1, 1, '2023-11-12 09:17:25', NULL),
(220, 'Alexine Foden', 'afoden1x@java.com', '5896282948', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 83', 4, 2, 'owo-25923', 1, 1, '2023-11-12 09:17:25', NULL),
(221, 'Costa Loach', 'cloach1y@apache.org', '4665507213', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 212', 4, 1, 'akr-36371', 2, 1, '2023-11-12 09:17:25', NULL),
(222, 'Jarib Atlay', 'jatlay1z@loc.gov', '1912918475', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 630', 4, 2, 'owo-44177', 1, 1, '2023-11-12 09:17:25', NULL),
(223, 'Silvanus Kordovani', 'skordovani20@shareasale.com', '2486337186', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '1st Floor', 2, 1, 'akr-13364', 1, 1, '2023-11-12 09:17:25', NULL),
(224, 'Mindy Demonge', 'mdemonge21@yale.edu', '5296317889', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 36', 2, 1, 'akr-34348', 2, 1, '2023-11-12 09:17:25', NULL),
(225, 'Ofelia Burberye', 'oburberye22@addtoany.com', '3942777634', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1272', 2, 2, 'owo-35343', 1, 1, '2023-11-12 09:17:25', NULL),
(226, 'Mattheus Heugh', 'mheugh23@blogs.com', '4307639364', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 83', 2, 2, 'akr-72998', 1, 1, '2023-11-12 09:17:25', NULL),
(227, 'Bruno Elcum', 'belcum24@nymag.com', '5482322495', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '13th Floor', 4, 1, 'owo-63898', 1, 1, '2023-11-12 09:17:25', NULL),
(228, 'Francklin Piscopello', 'fpiscopello25@timesonline.co.uk', '4797612428', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1242', 4, 1, 'akr-95106', 1, 1, '2023-11-12 09:17:25', NULL),
(229, 'Faun Kennifick', 'fkennifick26@lulu.com', '6138459176', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 58808', 2, 1, 'akr-23462', 1, 1, '2023-11-12 09:17:25', NULL),
(230, 'Eliot Crossdale', 'ecrossdale27@ft.com', '6955911081', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 39309', 2, 2, 'owo-33193', 2, 1, '2023-11-12 09:17:25', NULL),
(231, 'Barnabe Cluitt', 'bcluitt28@barnesandnoble.com', '7451877047', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 14', 2, 2, 'owo-5850', 1, 1, '2023-11-12 09:17:25', NULL),
(232, 'Neale Lawly', 'nlawly29@stumbleupon.com', '8366591431', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '9th Floor', 4, 1, 'owo-6331', 2, 1, '2023-11-12 09:17:25', NULL),
(233, 'Tiffany Jacson', 'tjacson2a@twitpic.com', '2683701075', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 58', 2, 2, 'akr-9678', 1, 1, '2023-11-12 09:17:25', NULL),
(234, 'Rosy Schettini', 'rschettini2b@blogtalkradio.com', '6018837578', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 71', 2, 2, 'owo-2520', 1, 1, '2023-11-12 09:17:25', NULL),
(235, 'Clemence Seldner', 'cseldner2c@joomla.org', '5694888992', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 706', 2, 1, 'owo-47720', 2, 1, '2023-11-12 09:17:25', NULL),
(236, 'Rickie Irce', 'rirce2d@unblog.fr', '7496144625', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 77', 2, 1, 'owo-43669', 1, 1, '2023-11-12 09:17:25', NULL),
(237, 'Emmit Antonov', 'eantonov2e@youku.com', '5726627391', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 94', 4, 2, 'akr-9280', 2, 1, '2023-11-12 09:17:25', NULL),
(238, 'Brenn Helversen', 'bhelversen2f@soup.io', '7564315720', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '11th Floor', 2, 1, 'owo-39665', 2, 1, '2023-11-12 09:17:25', NULL),
(239, 'Dorothy Godspeede', 'dgodspeede2g@engadget.com', '6832238614', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 3808', 2, 1, 'akr-95120', 2, 1, '2023-11-12 09:17:25', NULL),
(240, 'Luella Isakowicz', 'lisakowicz2h@php.net', '7675047135', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 4', 4, 1, 'akr-10219', 2, 1, '2023-11-12 09:17:25', NULL),
(241, 'Sandra Sedman', 'ssedman2i@un.org', '5392286544', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 7756', 2, 1, 'akr-23839', 2, 1, '2023-11-12 09:17:25', NULL),
(242, 'Fanechka Quennell', 'fquennell2j@irs.gov', '2882226363', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '10th Floor', 2, 2, 'owo-96292', 1, 1, '2023-11-12 09:17:25', NULL),
(243, 'Tito Grenter', 'tgrenter2k@bandcamp.com', '6796392216', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 986', 4, 2, 'owo-30190', 1, 1, '2023-11-12 09:17:25', NULL),
(244, 'Ettore Pillans', 'epillans2l@bluehost.com', '5659278846', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1822', 2, 2, 'owo-82537', 2, 1, '2023-11-12 09:17:25', NULL),
(245, 'Casey Posnette', 'cposnette2m@ft.com', '3643261180', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 922', 4, 1, 'akr-17585', 1, 1, '2023-11-12 09:17:25', NULL),
(246, 'Leta Stother', 'lstother2n@webnode.com', '8853904945', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '17th Floor', 2, 1, 'akr-29019', 2, 1, '2023-11-12 09:17:25', NULL),
(247, 'Egor Coopman', 'ecoopman2o@zimbio.com', '9374749988', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1799', 4, 2, 'owo-42441', 1, 1, '2023-11-12 09:17:25', NULL),
(248, 'Aldus Rembrant', 'arembrant2p@usa.gov', '6543184305', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 75029', 4, 1, 'owo-75198', 1, 1, '2023-11-12 09:17:25', NULL),
(249, 'Neel Damerell', 'ndamerell2q@skyrock.com', '6168168371', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1728', 4, 2, 'akr-36673', 1, 1, '2023-11-12 09:17:25', NULL),
(250, 'Lise Alday', 'lalday2r@hubpages.com', '2815484317', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 81', 2, 1, 'owo-54975', 2, 1, '2023-11-12 09:17:25', NULL),
(251, 'Dewain Flute', 'dflute2s@webs.com', '8431060830', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '6th Floor', 4, 1, 'owo-13733', 1, 1, '2023-11-12 09:17:25', NULL),
(252, 'Jayme Waeland', 'jwaeland2t@yahoo.com', '4285180380', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 75', 4, 1, 'akr-90480', 1, 1, '2023-11-12 09:17:25', NULL),
(253, 'Belita Rodman', 'brodman2u@usnews.com', '1782483520', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 2', 4, 1, 'owo-64758', 1, 1, '2023-11-12 09:17:25', NULL),
(254, 'Cele Lattimore', 'clattimore2v@constantcontact.com', '7578658832', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 4, 1, 'owo-20270', 1, 1, '2023-11-12 09:17:25', NULL),
(255, 'Kassey Rilings', 'krilings2w@comcast.net', '1949404770', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 17735', 4, 1, 'owo-15368', 1, 1, '2023-11-12 09:17:25', NULL),
(256, 'Merridie Hans', 'mhans2x@mit.edu', '3029356947', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1432', 4, 1, 'akr-16571', 2, 1, '2023-11-12 09:17:25', NULL),
(257, 'Hildagarde Burke', 'hburke2y@t-online.de', '3919392849', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 651', 2, 2, 'owo-27207', 2, 1, '2023-11-12 09:17:25', NULL),
(258, 'Hershel Megany', 'hmegany2z@multiply.com', '4785074063', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1648', 2, 1, 'owo-2701', 1, 1, '2023-11-12 09:17:25', NULL),
(259, 'Warner Battell', 'wbattell30@exblog.jp', '7819255528', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 67', 4, 2, 'owo-70320', 1, 1, '2023-11-12 09:17:25', NULL),
(260, 'Gaile Hawkyens', 'ghawkyens31@storify.com', '7725059889', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 15', 2, 1, 'akr-34922', 1, 1, '2023-11-12 09:17:25', NULL),
(261, 'Layla Vynall', 'lvynall32@naver.com', '9174442186', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1549', 4, 2, 'owo-10483', 1, 1, '2023-11-12 09:17:25', NULL),
(262, 'Gaven Keller', 'gkeller33@barnesandnoble.com', '6658860129', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '5th Floor', 4, 2, 'owo-11147', 1, 1, '2023-11-12 09:17:25', NULL),
(263, 'Theressa Finnes', 'tfinnes34@salon.com', '1021791764', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '9th Floor', 4, 1, 'owo-40707', 1, 1, '2023-11-12 09:17:25', NULL),
(264, 'Shane Gout', 'sgout35@youku.com', '9306722764', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 556', 2, 2, 'akr-85965', 2, 1, '2023-11-12 09:17:25', NULL),
(265, 'Stanislaus Carlens', 'scarlens36@desdev.cn', '4172915382', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '1st Floor', 4, 1, 'akr-18402', 2, 1, '2023-11-12 09:17:25', NULL),
(266, 'Doug Jantel', 'djantel37@xing.com', '4884979732', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 1147', 4, 1, 'owo-99949', 1, 1, '2023-11-12 09:17:25', NULL),
(267, 'Gay Saice', 'gsaice38@theguardian.com', '1125455936', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 91112', 4, 1, 'owo-37764', 2, 1, '2023-11-12 09:17:25', NULL),
(268, 'Micheal Fairpool', 'mfairpool39@google.com.br', '6779416365', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 91676', 2, 2, 'owo-19160', 1, 1, '2023-11-12 09:17:25', NULL);
INSERT INTO `member` (`id`, `fullname`, `email`, `phone_no`, `passport`, `mean_of_identity`, `gender`, `identity_id`, `address`, `office_id`, `city_id`, `unique_id`, `created_by`, `member_status`, `created_at`, `updated_at`) VALUES
(269, 'Jaime Eldred', 'jeldred3a@lulu.com', '5126526221', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '7th Floor', 4, 1, 'akr-95699', 1, 1, '2023-11-12 09:17:25', NULL),
(270, 'Charmian Cluley', 'ccluley3b@acquirethisname.com', '6702403891', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 20450', 2, 2, 'akr-30472', 2, 1, '2023-11-12 09:17:25', NULL),
(271, 'Whitney Conley', 'wconley3c@prweb.com', '8392868455', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 726', 2, 1, 'akr-87383', 1, 1, '2023-11-12 09:17:25', NULL),
(272, 'Elinore Mountfort', 'emountfort3d@google.com.hk', '4002216249', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 959', 4, 2, 'akr-74489', 1, 1, '2023-11-12 09:17:25', NULL),
(273, 'Casey Nairn', 'cnairn3e@barnesandnoble.com', '1665551629', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '1st Floor', 4, 2, 'akr-43601', 1, 1, '2023-11-12 09:17:25', NULL),
(274, 'Reilly De Michele', 'rde3f@slideshare.net', '4608064371', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '10th Floor', 2, 1, 'owo-76975', 2, 1, '2023-11-12 09:17:25', NULL),
(275, 'Cordula Winkworth', 'cwinkworth3g@businesswire.com', '4153906811', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '9th Floor', 4, 1, 'owo-22747', 1, 1, '2023-11-12 09:17:25', NULL),
(276, 'Brianna Bustard', 'bbustard3h@t-online.de', '9266021486', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '8th Floor', 2, 1, 'owo-88210', 2, 1, '2023-11-12 09:17:25', NULL),
(277, 'Sergent Hickeringill', 'shickeringill3i@reuters.com', '5947980994', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 20', 4, 1, 'akr-54154', 2, 1, '2023-11-12 09:17:25', NULL),
(278, 'Gladys Giraldon', 'ggiraldon3j@acquirethisname.com', '9637356522', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '7th Floor', 2, 1, 'akr-54155', 2, 1, '2023-11-12 09:17:25', NULL),
(279, 'Branden Rebert', 'brebert3k@t-online.de', '5219546427', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1108', 4, 1, 'owo-24669', 1, 1, '2023-11-12 09:17:25', NULL),
(280, 'Niki Beaudry', 'nbeaudry3l@about.com', '9131547096', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 2020', 4, 2, 'akr-30967', 1, 1, '2023-11-12 09:17:25', NULL),
(281, 'Daisey MacTrustey', 'dmactrustey3m@squidoo.com', '4299049021', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 393', 2, 1, 'owo-21317', 1, 1, '2023-11-12 09:17:25', NULL),
(282, 'Galvin Hallaways', 'ghallaways3n@jugem.jp', '7858991455', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1021', 4, 1, 'owo-95424', 1, 1, '2023-11-12 09:17:25', NULL),
(283, 'Hillary Jedrzejewsky', 'hjedrzejewsky3o@weebly.com', '8575559327', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1273', 2, 1, 'akr-96273', 1, 1, '2023-11-12 09:17:25', NULL),
(284, 'Christoper Maudett', 'cmaudett3p@squidoo.com', '1796935244', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Suite 2', 4, 2, 'owo-54254', 1, 1, '2023-11-12 09:17:25', NULL),
(285, 'Ardra Ferrotti', 'aferrotti3q@intel.com', '9288734673', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 1198', 4, 2, 'owo-2147', 2, 1, '2023-11-12 09:17:25', NULL),
(286, 'Hastings Copcutt', 'hcopcutt3r@businessinsider.com', '2655874898', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '14th Floor', 2, 1, 'owo-19828', 1, 1, '2023-11-12 09:17:25', NULL),
(287, 'Brennan Allebone', 'ballebone3s@reddit.com', '2946656415', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '8th Floor', 4, 1, 'akr-1673', 2, 1, '2023-11-12 09:17:25', NULL),
(288, 'Rocky Grioli', 'rgrioli3t@shinystat.com', '8612396473', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 100', 2, 2, 'owo-54049', 2, 1, '2023-11-12 09:17:25', NULL),
(289, 'Jeniece Farnes', 'jfarnes3u@pcworld.com', '4352762444', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 671', 4, 1, 'akr-79814', 2, 1, '2023-11-12 09:17:25', NULL),
(290, 'Pearle McWhinnie', 'pmcwhinnie3v@biglobe.ne.jp', '2614883776', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 409', 4, 1, 'owo-40023', 1, 1, '2023-11-12 09:17:25', NULL),
(291, 'Cherry Blincko', 'cblincko3w@vkontakte.ru', '4622275326', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Apt 861', 2, 1, 'owo-18452', 2, 1, '2023-11-12 09:17:25', NULL),
(292, 'Kacy Winpenny', 'kwinpenny3x@de.vu', '8949935981', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1888', 4, 1, 'akr-97966', 1, 1, '2023-11-12 09:17:25', NULL),
(293, 'Susann McGiffin', 'smcgiffin3y@nih.gov', '5812329221', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'PO Box 6676', 4, 1, 'akr-24040', 1, 1, '2023-11-12 09:17:25', NULL),
(294, 'Joy Trynor', 'jtrynor3z@godaddy.com', '8045736130', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Suite 52', 4, 2, 'owo-70412', 2, 1, '2023-11-12 09:17:25', NULL),
(295, 'Jillie Durban', 'jdurban40@bluehost.com', '2893241220', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Apt 1227', 2, 1, 'owo-64992', 2, 1, '2023-11-12 09:17:25', NULL),
(296, 'Van Veltmann', 'vveltmann41@google.fr', '2855856591', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'PO Box 95833', 4, 1, 'owo-2911', 2, 1, '2023-11-12 09:17:25', NULL),
(297, 'Bonni Vargas', 'bvargas42@ebay.com', '9663815683', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, 'Room 1630', 4, 1, 'owo-6224', 1, 1, '2023-11-12 09:17:25', NULL),
(298, 'Bea Blest', 'bblest43@dailymotion.com', '8833282437', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, 'Room 74', 4, 2, 'owo-29831', 1, 1, '2023-11-12 09:17:25', NULL),
(299, 'Jacky Haselgrove', 'jhaselgrove44@prlog.org', '3456515815', '1699571827IMG_20230620_033355_819.jpg', NULL, 1, NULL, '6th Floor', 2, 1, 'akr-64514', 1, 1, '2023-11-12 09:17:25', NULL),
(300, 'Patton Bend', 'pbend45@hhs.gov', '9727970552', '1699571827IMG_20230620_033355_819.jpg', NULL, 2, NULL, '3rd Floor', 4, 2, 'owo-43301', 2, 1, '2023-11-12 09:17:25', NULL),
(301, 'Danscotech Akin', 'danscotech@gmail.com', '08167190132', '1700190021IMG_20230614_081041_394.jpg', NULL, 1, '', 'dghjk', 4, 2, 'owo-65455', 3, 1, '2023-11-17 02:00:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership_form`
--

DROP TABLE IF EXISTS `membership_form`;
CREATE TABLE IF NOT EXISTS `membership_form` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_11_08_204105_create_member_table', 1),
(5, '2023_11_08_204208_create_state_table', 1),
(6, '2023_11_08_204222_create_city_table', 1),
(7, '2023_11_08_214145_create_office_table', 1),
(8, '2023_11_09_055337_create_id_cards_table', 1),
(9, '2014_10_12_000000_create_users_table', 2),
(10, '2023_11_13_050259_create_membership_form', 3);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
CREATE TABLE IF NOT EXISTS `office` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `address`, `office_image`, `city_id`, `lat`, `lng`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '50 jjkjkkk bjki', '', 1, NULL, NULL, 5, NULL, NULL),
(4, 'Ireakari Estate 1 Orita Obele Akure', '', 2, NULL, NULL, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '0ae86d1d6f8aa804edf2344b8ed3e81939d1a457e565675d47fd51707fee3c13', '[\"*\"]', NULL, NULL, '2023-11-09 09:16:48', '2023-11-09 09:16:48'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '5412905ff5609128ad00180f16c953dbd987f82f9f0d2da7fb4bf1d68471cfea', '[\"*\"]', '2023-11-09 22:17:01', NULL, '2023-11-09 09:34:40', '2023-11-09 22:17:01'),
(3, 'App\\Models\\User', 6, 'API TOKEN', '9fe6b5b7f91440c95355b5e2850fa53532b3d3f12e80edf8dee6390a4d2dae64', '[\"*\"]', NULL, NULL, '2023-11-09 22:43:48', '2023-11-09 22:43:48'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '2613d9f29b274ad9563cacbf90b5c7fc257affcdf6f7cd7fd46f66065bf1851a', '[\"*\"]', '2023-11-10 03:13:07', NULL, '2023-11-09 22:44:17', '2023-11-10 03:13:07'),
(5, 'App\\Models\\User', 1, 'API TOKEN', 'e0e13eb459cd56d06e5faabacba8a815b6ba9aa794e4ce5fe8ae8c1182cfe6a1', '[\"*\"]', NULL, NULL, '2023-11-10 05:00:51', '2023-11-10 05:00:51'),
(6, 'App\\Models\\User', 1, 'API TOKEN', 'fc16f493d869ef90c79f4534dabecf74fea8a931cff27ef471c74573572a1715', '[\"*\"]', '2023-11-10 14:37:26', NULL, '2023-11-10 06:28:00', '2023-11-10 14:37:26'),
(7, 'App\\Models\\User', 1, 'API TOKEN', 'b23f830f026fb7560b2e37410e50bd83c2db06cc44e1668b65c6bb3f0834892d', '[\"*\"]', NULL, NULL, '2023-11-11 07:37:02', '2023-11-11 07:37:02'),
(8, 'App\\Models\\User', 1, 'API TOKEN', 'eb1d440b2035f67ec3759177ef66a8ba585d128051c6737e58ca2fc7672fd1ec', '[\"*\"]', NULL, NULL, '2023-11-11 07:37:03', '2023-11-11 07:37:03'),
(9, 'App\\Models\\User', 1, 'API TOKEN', '693e4c24fb9f6e25a9a11c4f263eefc3422e4c57398aa1380dba94dc94b814c0', '[\"*\"]', NULL, NULL, '2023-11-11 07:37:07', '2023-11-11 07:37:07'),
(10, 'App\\Models\\User', 1, 'API TOKEN', 'a18979bb47847347cb0b87aaa2c54154e536b109e8038d5cf9c5058be33c3fb2', '[\"*\"]', NULL, NULL, '2023-11-11 09:20:26', '2023-11-11 09:20:26'),
(11, 'App\\Models\\User', 1, 'API TOKEN', '15a9c4c2214e3835bca5d5f94c583e13fe78638ad03371388304537b53501814', '[\"*\"]', NULL, NULL, '2023-11-11 09:21:12', '2023-11-11 09:21:12'),
(12, 'App\\Models\\User', 1, 'API TOKEN', '4098c9c443c8dc691b0950318d16ec3482b0c3cdd9abddedc29929aeacbf2301', '[\"*\"]', NULL, NULL, '2023-11-11 09:23:53', '2023-11-11 09:23:53'),
(13, 'App\\Models\\User', 1, 'API TOKEN', '9f289e4e36adfe7faf2bad1a10c8dc6ea9f6e0d57efbfeb8a8bc718a18711670', '[\"*\"]', '2023-11-18 18:48:32', NULL, '2023-11-11 09:25:43', '2023-11-18 18:48:32'),
(14, 'App\\Models\\User', 1, 'API TOKEN', '0328eeb2d8e93e89e604c27e78c18c84f2dab1dddfa5c84303325daa23396551', '[\"*\"]', '2023-11-17 00:12:35', NULL, '2023-11-16 17:48:31', '2023-11-17 00:12:35'),
(15, 'App\\Models\\User', 7, 'API TOKEN', '05e1dc708d6ef3de32ef2fb2a8aa5469dfe0a22d5e5b1c47810a6756c2d3c467', '[\"*\"]', '2023-11-17 01:00:26', NULL, '2023-11-17 00:56:13', '2023-11-17 01:00:26'),
(16, 'App\\Models\\User', 7, 'API TOKEN', '31c12b5aab377d77b1c8d57ecdffe15ab76c7c872808563e328e41bcc294f5f5', '[\"*\"]', '2023-11-17 01:03:44', NULL, '2023-11-17 01:01:35', '2023-11-17 01:03:44'),
(17, 'App\\Models\\User', 7, 'API TOKEN', '66eae3ee973ebd3dd8d4d5e73ada68055702621132f31858f0dcaae2067c9a78', '[\"*\"]', '2023-11-17 08:10:36', NULL, '2023-11-17 01:04:10', '2023-11-17 08:10:36'),
(18, 'App\\Models\\User', 7, 'API TOKEN', 'd942e7445aa892a78f8c463020c19f68603dfdcdcc1cbd58bd17367435ffb63b', '[\"*\"]', '2023-11-17 16:30:56', NULL, '2023-11-17 08:10:58', '2023-11-17 16:30:56'),
(19, 'App\\Models\\User', 7, 'API TOKEN', '6179f5cc87e539ad0df4f66fbc17a505a150f205a33034a3fc46b2ad53deb114', '[\"*\"]', '2023-11-17 17:26:17', NULL, '2023-11-17 16:34:13', '2023-11-17 17:26:17'),
(20, 'App\\Models\\User', 9, 'API TOKEN', 'f163fcbde8a9847ab10254e2430f3b16f47278b19f987036fb2d11ac63b7cbd1', '[\"*\"]', NULL, NULL, '2023-11-18 18:48:44', '2023-11-18 18:48:44'),
(21, 'App\\Models\\User', 9, 'API TOKEN', '4b4b778075889a0bb6fafcfc40c751041450711da5182e5982635fa39fa4485e', '[\"*\"]', NULL, NULL, '2023-11-18 18:49:05', '2023-11-18 18:49:05'),
(22, 'App\\Models\\User', 7, 'API TOKEN', '5b8132b8e4ea02f39b9b7f84c608b666f7b4be2a7bd52bf3bdcfc1da1489f61b', '[\"*\"]', '2023-11-20 00:34:11', NULL, '2023-11-18 18:49:39', '2023-11-20 00:34:11'),
(23, 'App\\Models\\User', 1, 'API TOKEN', '32e692009f9fcb893cb58a62c29fe63d72abffc58b8059d24421fe49f3053291', '[\"*\"]', '2023-11-20 00:36:54', NULL, '2023-11-20 00:34:32', '2023-11-20 00:36:54'),
(24, 'App\\Models\\User', 7, 'API TOKEN', '8a2ccfcc5dcbc575ae86b054895e280a484412742206a794d97e5ae7e45af8b6', '[\"*\"]', '2023-11-20 01:54:07', NULL, '2023-11-20 00:37:08', '2023-11-20 01:54:07'),
(25, 'App\\Models\\User', 10, 'API TOKEN', '092223e5a6ee75f0fc73226bc59ab93d17e0a5114185b3697db945c292a6e386', '[\"*\"]', '2023-11-20 01:56:31', NULL, '2023-11-20 01:55:41', '2023-11-20 01:56:31'),
(26, 'App\\Models\\User', 10, 'API TOKEN', '05a176a24442d4e55c7556973ff46b3f68d7863b7f81cfac036a98b28f8d8868', '[\"*\"]', '2023-11-20 01:57:37', NULL, '2023-11-20 01:56:36', '2023-11-20 01:57:37'),
(27, 'App\\Models\\User', 1, 'API TOKEN', '5f021aeb064019e8636f8582a1a9064f685d37fd29dbd02f468abcf3482d2509', '[\"*\"]', '2023-11-20 02:09:54', NULL, '2023-11-20 02:00:16', '2023-11-20 02:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ondo', NULL, NULL),
(2, 'Ekiti', NULL, NULL),
(3, 'Osun', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint NOT NULL,
  `office_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `gender` tinyint NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` tinyint NOT NULL COMMENT '1:approve, 2:disapprove, 3:pending',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `email_verified_at`, `password`, `user_type`, `office_id`, `city_id`, `gender`, `photo`, `phone_no`, `user_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Adin', 'admin@gmail.com', NULL, '$2y$12$KH8vS5AAhO5JHILgf7LYeeOB67N9kuPryfv/4lWairQV.w4UkZ5Tm', 1, NULL, NULL, 1, NULL, '90876567890', 1, NULL, NULL, NULL),
(5, 'Arowojolu Daniel Akinyemi', 'adm@gmail.com', NULL, '$2y$12$D7qzWgyN4VPgh3kYX4dRge.tfWkPviO7d0suVrOQdgyGVa1jsbgDy', 3, 2, 1, 1, '1699571583IMG_20230614_081041_394.jpg', '+2348167190132', 1, NULL, '2023-11-09 22:13:04', '2023-11-09 22:13:04'),
(7, 'Danscp rr', 'danakin46@gmail.com', NULL, '$2y$12$KH8vS5AAhO5JHILgf7LYeeOB67N9kuPryfv/4lWairQV.w4UkZ5Tm', 3, 4, 2, 1, '1699586153winner.png', '576890876543', 1, NULL, '2023-11-10 02:15:54', '2023-11-10 02:15:54'),
(8, 'Arowojolu Daniel', 'danakin45@gmail.com', NULL, '$2y$12$h4A.Ux9oghzLteQlL2D5.eYBPtXepic3wdbuVkX.BaD0GQNo06fpy', 2, NULL, 1, 1, '', '+2348167190132', 1, NULL, NULL, NULL),
(9, 'John Ayo', 'johnayo@gmail.com', NULL, '$2y$12$IBkzdM.J30yHMIuqA04gOuY0cjD3I1cIwkmIx2thLcCSN2dCTZCSe', 2, NULL, 2, 1, '', '987654328', 1, NULL, NULL, NULL),
(10, 'Jacob Ola', 'jacobtimothy@gmail.com', NULL, '$2y$12$gzl8f/QBjJbsrVtF0y6IEevMClf8IZUbf.VQTQ0zfWn5EQ3i7f3Na', 4, 4, NULL, 2, '', '89765345678', 1, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
