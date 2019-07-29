-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysqlcp.unm.edu:3306
-- Generation Time: Jul 29, 2019 at 04:31 PM
-- Server version: 5.6.45-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sac_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rental_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rental_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_available` date NOT NULL,
  `rent_amount` decimal(6,2) NOT NULL,
  `deposit` decimal(6,1) DEFAULT NULL,
  `lease` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lease_duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furnished` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utilities` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bedrooms` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bathrooms` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handicapped_access` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unm_distance` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_distance` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pets` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pets_deposit` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stove` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `refrigerator` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `dishwasher` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `disposal` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `washer_dryer` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `laundry_hookup` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `laundry_facilities` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `air_conditioning` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `fireplace` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `dining_room` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `garage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `fenced_yard` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `patio` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `swimming_pool` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `jacuzzi` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `additional_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `received_by` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `rental_type`, `last_name`, `first_name`, `rental_address`, `phone`, `phone_2`, `email_address`, `date_available`, `rent_amount`, `deposit`, `lease`, `lease_duration`, `furnished`, `utilities`, `no_bedrooms`, `no_bathrooms`, `handicapped_access`, `unm_distance`, `bus_distance`, `pets`, `pets_deposit`, `stove`, `refrigerator`, `dishwasher`, `disposal`, `washer_dryer`, `laundry_hookup`, `laundry_facilities`, `air_conditioning`, `fireplace`, `dining_room`, `garage`, `fenced_yard`, `patio`, `swimming_pool`, `jacuzzi`, `additional_info`, `date_received`, `received_by`, `approved`, `created_at`, `updated_at`) VALUES
(1, 'Efficiency', 'Lucinda Berge', 'Mr. Albin Cassin', '90393 Keven Orchard Apt. 474', '+1-372-697-0179', '(396) 785-3495 x650', 'kohler.gregoria@example.com', '2019-09-09', '478.00', '992.0', 'N', 'year', 'Y', 'Y', '5', '1', 'Y', '2 blocks', '3 blocks', 'N', '71', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1971-06-27', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(2, 'Condo', 'Jensen Medhurst', 'Kane Schneider PhD', '9772 Hills Valleys', '561-963-1701 x8377', '386.671.3416 x55701', 'abeier@example.com', '2019-08-04', '519.00', '749.0', 'N', 'year', 'N', 'Y', '5', '1', 'N', '2 blocks', '3 blocks', 'Y', '60', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1979-07-09', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(3, 'Efficiency', 'Madaline Schneider', 'Bailee Gulgowski', '879 Hodkiewicz Trail', '321.638.9515 x2003', '+1-835-359-6349', 'stroman.kim@example.org', '2019-12-24', '782.00', '693.0', 'Y', 'year', 'Y', 'Y', '1', '1', 'N', '2 blocks', '3 blocks', 'N', '55', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1980-12-16', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(4, 'Townhouse', 'Allison Schowalter', 'Bud Fahey', '872 Pagac Plain', '+1 (224) 738-9432', '(978) 202-7938 x84222', 'eula.brekke@example.com', '2019-12-01', '365.00', '810.0', 'Y', 'year', 'Y', 'N', '2', '3', 'N', '2 blocks', '3 blocks', 'N', '82', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2013-06-29', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(5, 'Condo', 'Hattie Sawayn', 'Izabella Waelchi', '476 Christian Forest', '1-339-721-7338 x9605', '1-595-930-3205 x3773', 'lelah70@example.com', '2019-09-25', '723.00', '721.0', 'Y', 'year', 'N', 'N', '5', '4', 'Y', '2 blocks', '3 blocks', 'Y', '56', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2017-04-27', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(6, 'House', 'Wilford Murphy', 'Mr. Orin Lang', '4204 Evie Grove Apt. 500', '510.329.4264 x176', '513-506-8866 x073', 'kali.corkery@example.org', '2019-09-19', '219.00', '969.0', 'N', 'year', 'Y', 'Y', '3', '1', 'N', '2 blocks', '3 blocks', 'Y', '122', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2002-02-13', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(7, 'Room', 'Rosalia Wunsch', 'Keon Bauch', '1517 Hegmann Cape', '+1-935-489-8361', '812.500.4300', 'beatrice72@example.com', '2019-10-05', '662.00', '607.0', 'Y', 'year', 'N', 'Y', '4', '5', 'N', '2 blocks', '3 blocks', 'Y', '113', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1999-04-22', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(8, 'Efficiency', 'Jeanne Hintz DVM', 'Libby Kunde', '122 Nienow Expressway Apt. 875', '1-695-341-2087 x692', '(326) 528-1157 x56356', 'haylie.schoen@example.org', '2019-09-06', '646.00', '779.0', 'N', 'year', 'Y', 'Y', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '70', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2003-02-10', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(9, 'Condo', 'Kayden Will', 'Winifred Mayer', '318 Runolfsdottir Loaf Suite 355', '939-334-0122 x1851', '(203) 655-8173 x0172', 'gregg26@example.com', '2019-10-04', '714.00', '655.0', 'Y', 'year', 'Y', 'N', '2', '3', 'Y', '2 blocks', '3 blocks', 'Y', '67', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1993-12-26', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(10, 'Condo', 'Roel White', 'Karlie O\'Connell', '7164 Lesch Ways Apt. 470', '1-325-640-3383 x37867', '380.760.0110', 'uerdman@example.org', '2019-11-27', '225.00', '588.0', 'N', 'year', 'Y', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '70', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1991-04-19', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(11, 'Duplex', 'Cecilia Sanford', 'Prof. Modesto Bradtke I', '710 O\'Hara Forges Apt. 064', '601.882.6404', '+1.417.562.1708', 'jess.howe@example.org', '2019-11-14', '638.00', '665.0', 'Y', 'year', 'Y', 'N', '2', '2', 'Y', '2 blocks', '3 blocks', 'Y', '130', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2015-12-02', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(12, 'Efficiency', 'Green Volkman', 'Miss Jewel Schmeler', '837 Nathanial Manor', '1-650-703-4766', '1-756-776-8052 x17696', 'conor00@example.com', '2019-09-04', '895.00', '805.0', 'N', 'year', 'Y', 'N', '3', '1', 'N', '2 blocks', '3 blocks', 'Y', '76', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1992-03-26', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(13, 'Duplex', 'Joyce Gleason', 'Skyla Swift', '86881 Jaydon Motorway Apt. 529', '+1 (558) 763-6770', '412-203-0450 x354', 'katelyn.runte@example.com', '2019-09-29', '555.00', '500.0', 'N', 'year', 'Y', 'N', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '110', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2017-05-10', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(14, 'Apartment', 'Mrs. Eva Zieme DDS', 'Nico Schroeder', '57997 Ernser Drive Apt. 889', '1-898-579-0905 x1488', '1-326-612-7424 x82084', 'elsie.considine@example.net', '2019-10-22', '694.00', '843.0', 'N', 'year', 'N', 'Y', '4', '1', 'Y', '2 blocks', '3 blocks', 'N', '165', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1996-06-06', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(15, 'Townhouse', 'Laury Reynolds', 'Miss Delores Davis DVM', '167 Jordi Underpass Suite 234', '+1-442-763-5423', '1-779-654-4787 x5230', 'pearl.kiehn@example.com', '2019-09-05', '938.00', '959.0', 'Y', 'year', 'Y', 'N', '1', '4', 'Y', '2 blocks', '3 blocks', 'Y', '124', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2016-06-01', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(16, 'Efficiency', 'Bruce Hoeger', 'Oleta Kessler', '5377 Lesch Haven', '1-982-867-1102 x92355', '997-397-3833 x47548', 'bernhard00@example.org', '2019-11-16', '122.00', '880.0', 'Y', 'year', 'N', 'Y', '3', '1', 'N', '2 blocks', '3 blocks', 'N', '186', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1998-02-25', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(17, 'Townhouse', 'Kira Rodriguez I', 'Mr. Ben Padberg I', '84749 Crooks Mount Suite 150', '262.969.3103', '347-329-8669', 'garrett.ziemann@example.org', '2019-09-30', '247.00', '946.0', 'Y', 'year', 'Y', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '81', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2000-09-24', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(18, 'Apartment', 'Wilfrid Cruickshank', 'Percy Kessler Jr.', '8927 Corwin Well', '482.815.1851', '1-647-886-9665', 'aufderhar.preston@example.net', '2019-09-10', '840.00', '770.0', 'Y', 'year', 'N', 'N', '4', '5', 'Y', '2 blocks', '3 blocks', 'Y', '69', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2004-10-22', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(19, 'Room', 'Camryn Corwin', 'Dr. Hiram Wisozk DVM', '684 Constantin Valley Suite 915', '780.350.5813 x184', '(217) 248-6538', 'tmcdermott@example.com', '2019-09-06', '490.00', '705.0', 'N', 'year', 'Y', 'N', '5', '2', 'N', '2 blocks', '3 blocks', 'Y', '131', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1976-10-14', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(20, 'Condo', 'Lempi Olson', 'Prof. Royal Lehner', '902 Hoeger Shoals', '201-520-2286 x58776', '(552) 364-6407 x85557', 'alden20@example.org', '2019-08-25', '584.00', '933.0', 'N', 'year', 'Y', 'Y', '1', '5', 'N', '2 blocks', '3 blocks', 'N', '78', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1981-05-19', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(21, 'Apartment', 'Mrs. Stephany Willms I', 'Samantha Price I', '21660 Loraine Parkway', '1-607-295-8816 x95650', '391-748-9691 x791', 'alena13@example.com', '2019-09-09', '403.00', '844.0', 'Y', 'year', 'N', 'N', '3', '3', 'N', '2 blocks', '3 blocks', 'Y', '51', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1996-05-15', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(22, 'Apartment', 'Elijah O\'Reilly', 'Aurelie Smith', '63684 Moen Square', '1-582-703-7042', '1-492-979-2132 x75465', 'kamille.auer@example.net', '2019-12-23', '113.00', '925.0', 'N', 'year', 'N', 'N', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '136', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2010-01-03', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(23, 'House', 'Hattie Barrows I', 'Mr. Everett Gutmann V', '1196 Tromp Ranch', '1-496-262-8684', '546.927.2256', 'block.kelly@example.net', '2019-12-27', '201.00', '620.0', 'Y', 'year', 'Y', 'Y', '1', '1', 'N', '2 blocks', '3 blocks', 'N', '134', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2012-08-18', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(24, 'House', 'Ubaldo Spencer', 'Prof. Antonietta Dicki', '48476 Rodriguez Cove', '434.980.5863', '445-890-5542 x715', 'cecile.ullrich@example.org', '2019-09-29', '183.00', '612.0', 'Y', 'year', 'Y', 'Y', '1', '1', 'N', '2 blocks', '3 blocks', 'Y', '127', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2009-03-04', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(25, 'Townhouse', 'Miss Frida Wilderman', 'Mrs. Jaida Goyette IV', '347 Camilla Union', '768.365.3024', '902.249.6798 x8529', 'johann47@example.org', '2019-07-08', '287.00', '791.0', 'Y', 'year', 'Y', 'N', '3', '4', 'N', '2 blocks', '3 blocks', 'Y', '198', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2017-07-31', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(26, 'Apartment', 'Daryl Wolff', 'Ms. Cayla Smith PhD', '3214 Jarrod Loaf', '1-223-936-4671 x80143', '456.450.5245', 'kali89@example.com', '2019-12-14', '544.00', '726.0', 'Y', 'year', 'N', 'Y', '5', '1', 'N', '2 blocks', '3 blocks', 'Y', '111', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2019-04-11', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(27, 'Townhouse', 'Prof. Mateo Jacobi', 'Jaden Gerlach', '953 Lebsack Haven Suite 057', '+1-707-926-7497', '460-852-1657', 'turner.clay@example.org', '2019-09-10', '550.00', '611.0', 'N', 'year', 'N', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '129', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1971-09-15', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(28, 'Duplex', 'Mr. Isac Kuvalis', 'Calista Brekke MD', '612 Leffler Square Suite 508', '(859) 549-3927 x8236', '894-750-8612 x1344', 'cole.ariel@example.org', '2019-09-07', '624.00', '679.0', 'Y', 'year', 'Y', 'Y', '3', '3', 'Y', '2 blocks', '3 blocks', 'N', '88', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1993-01-13', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(29, 'House', 'Elise Hessel', 'Krystina Jenkins I', '4439 Stracke Fords', '+1-792-734-0812', '(851) 250-6321 x112', 'koch.karen@example.org', '2019-09-20', '975.00', '611.0', 'Y', 'year', 'Y', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '197', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2014-11-13', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(30, 'Efficiency', 'Baron Thompson', 'Vallie Nolan', '66324 Brakus Square Apt. 848', '798.750.0407', '1-583-669-3991', 'imarvin@example.com', '2019-09-23', '800.00', '741.0', 'Y', 'year', 'N', 'N', '2', '1', 'Y', '2 blocks', '3 blocks', 'N', '120', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1971-10-08', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(31, 'Room', 'Vito Langworth', 'Roger VonRueden', '9026 Berge Mill', '+1-470-323-2413', '698.843.3951', 'legros.rashawn@example.org', '2019-12-05', '960.00', '537.0', 'Y', 'year', 'N', 'N', '5', '4', 'Y', '2 blocks', '3 blocks', 'N', '124', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1994-06-08', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(32, 'House', 'Adolf Wiza', 'Ruthie Daniel', '98806 Mohr Club Suite 733', '1-887-964-0562 x787', '635.543.3157 x96009', 'floyd.christiansen@example.org', '2019-11-30', '586.00', '555.0', 'Y', 'year', 'Y', 'N', '5', '1', 'N', '2 blocks', '3 blocks', 'N', '187', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2011-01-29', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(33, 'House', 'Gerda Collier I', 'Prof. Carey Terry', '439 Wisoky Loop', '496-475-2572 x0995', '1-989-242-1796 x418', 'effie.marvin@example.net', '2019-09-28', '151.00', '648.0', 'Y', 'year', 'N', 'Y', '3', '4', 'Y', '2 blocks', '3 blocks', 'N', '52', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1970-08-30', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(34, 'Room', 'Laisha Ruecker', 'Fletcher Hermiston', '200 McKenzie Crest Suite 660', '+1-667-336-4994', '(648) 562-2732 x4259', 'malinda.zulauf@example.com', '2019-11-05', '548.00', '944.0', 'Y', 'year', 'Y', 'Y', '2', '3', 'Y', '2 blocks', '3 blocks', 'N', '169', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1992-09-26', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(35, 'Duplex', 'Ellsworth Gerhold', 'Macy Wyman', '304 Ratke Coves Apt. 885', '+1-754-747-7598', '+1-474-217-8318', 'thilpert@example.com', '2019-12-12', '975.00', '654.0', 'N', 'year', 'Y', 'Y', '2', '3', 'Y', '2 blocks', '3 blocks', 'N', '185', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2008-09-15', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(36, 'Apartment', 'Miss Izabella Stark IV', 'General Okuneva', '963 Mante Ridge', '+1.503.345.8696', '382-724-1669 x443', 'joany.kozey@example.net', '2019-11-13', '105.00', '546.0', 'Y', 'year', 'N', 'N', '3', '3', 'Y', '2 blocks', '3 blocks', 'N', '173', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1973-08-09', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(37, 'Condo', 'Kody Thiel IV', 'Fermin Gutmann', '6728 Aufderhar Plaza', '1-972-363-3238', '+16536462474', 'valerie20@example.com', '2019-12-07', '286.00', '606.0', 'N', 'year', 'Y', 'N', '4', '1', 'N', '2 blocks', '3 blocks', 'Y', '178', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2001-04-04', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(38, 'Room', 'Mr. Marc Huel I', 'Aurore Mante', '296 Mante Trafficway', '(893) 330-1154', '1-706-823-8559 x45737', 'vilma.carter@example.net', '2019-11-16', '506.00', '718.0', 'N', 'year', 'Y', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'N', '105', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1988-11-04', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(39, 'House', 'Dr. Madonna O\'Conner', 'Dora Ratke', '36100 Runte Trace Apt. 326', '+1.219.866.1505', '283.245.0799 x80379', 'mertz.dannie@example.org', '2019-08-20', '401.00', '843.0', 'Y', 'year', 'Y', 'Y', '3', '2', 'Y', '2 blocks', '3 blocks', 'Y', '105', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1973-06-01', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(40, 'Condo', 'Jennings Johnson', 'Donavon Murazik', '118 Maeve Rue Suite 040', '+1 (930) 540-0785', '1-764-874-0046', 'nienow.antwan@example.com', '2019-11-29', '629.00', '697.0', 'Y', 'year', 'Y', 'Y', '4', '1', 'Y', '2 blocks', '3 blocks', 'N', '85', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1975-03-07', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(41, 'House', 'Gladys Friesen', 'Hope Kerluke', '62116 Lueilwitz Grove Suite 945', '261-279-2874 x93921', '889.615.9565 x16353', 'enid37@example.org', '2019-09-14', '349.00', '762.0', 'Y', 'year', 'Y', 'Y', '5', '2', 'Y', '2 blocks', '3 blocks', 'Y', '107', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2007-02-17', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(42, 'House', 'Hazle Pollich', 'Earnest Dickens', '16235 Gerry Bridge', '756.808.4674 x1591', '676-587-1071 x64963', 'kaylah20@example.org', '2019-12-14', '839.00', '693.0', 'Y', 'year', 'Y', 'N', '2', '3', 'Y', '2 blocks', '3 blocks', 'N', '167', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1974-02-11', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(43, 'Condo', 'Emerson Swaniawski', 'Dr. Alvina Wuckert DDS', '949 Kiehn Square Apt. 040', '(706) 205-7735', '+1-312-534-0664', 'kcartwright@example.com', '2019-08-17', '214.00', '874.0', 'Y', 'year', 'Y', 'Y', '1', '2', 'N', '2 blocks', '3 blocks', 'N', '61', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1985-05-07', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(44, 'House', 'Fletcher Luettgen', 'Madisen Miller', '376 Stokes Walk Suite 397', '784-982-7720', '+1 (389) 583-7236', 'nicolas.emery@example.net', '2019-10-09', '128.00', '561.0', 'N', 'year', 'N', 'N', '1', '5', 'N', '2 blocks', '3 blocks', 'Y', '169', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1981-02-13', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(45, 'House', 'Kitty Graham', 'Flavio Lesch PhD', '33840 Vandervort Lodge', '(593) 985-4582', '229.663.3670 x307', 'dejah09@example.com', '2019-10-06', '420.00', '563.0', 'Y', 'year', 'Y', 'Y', '5', '2', 'Y', '2 blocks', '3 blocks', 'Y', '87', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2000-07-03', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(46, 'Townhouse', 'Mr. Raheem Langosh PhD', 'Prof. Franco Welch III', '648 Lowe Corners', '(354) 930-4651', '208-705-1973', 'fmante@example.org', '2020-04-23', '175.00', '642.0', 'Y', 'year', 'Y', 'Y', '3', '2', 'N', '2 blocks', '3 blocks', 'Y', '180', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2011-04-06', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(47, 'Apartment', 'Keven Rowe', 'Katharina Schuster', '9591 Leanna Shore Apt. 751', '+16025284675', '708.340.7565', 'rkemmer@example.org', '2020-02-27', '749.00', '685.0', 'Y', 'year', 'N', 'Y', '4', '5', 'Y', '2 blocks', '3 blocks', 'Y', '138', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1980-01-03', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(48, 'House', 'Afton Hackett', 'Opal Wyman', '49062 Adella Trail', '623-316-4529', '1-393-506-9973', 'hoppe.adella@example.com', '2019-11-25', '270.00', '522.0', 'N', 'year', 'N', 'N', '5', '5', 'Y', '2 blocks', '3 blocks', 'N', '52', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1975-02-20', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(49, 'Townhouse', 'Molly Abbott', 'Prof. Daija Corkery', '982 Tomasa Avenue', '685.704.6127 x186', '1-661-520-3115', 'schulist.alexanne@example.com', '2019-12-25', '949.00', '577.0', 'Y', 'year', 'N', 'Y', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '156', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1997-01-25', 'Web Entry', 'Y', '2019-07-30 04:26:28', '2019-07-30 04:26:28'),
(50, 'Townhouse', 'Dr. Bessie Shields', 'Ismael Stiedemann I', '78695 Runte Street', '(778) 400-0203 x769', '(901) 700-2356', 'pjacobson@example.org', '2019-12-09', '424.00', '954.0', 'Y', 'year', 'Y', 'N', '3', '3', 'N', '2 blocks', '3 blocks', 'Y', '106', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1977-09-02', 'Web Entry', 'N', '2019-07-30 04:26:28', '2019-07-30 04:26:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
