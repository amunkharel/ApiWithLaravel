-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysqlcp.unm.edu:3306
-- Generation Time: Jul 30, 2019 at 09:32 AM
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
  `deposit` decimal(6,0) DEFAULT NULL,
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
(1, 'Duplex', 'Prof. Merlin Gottlieb', 'Daron Dibbert', '1252 Georgianna Hill Apt. 542', '973-900-5349 x5424', '(712) 363-6036', 'sage.murazik@example.com', '2019-09-13', '259.00', '978', 'Y', 'year', 'Y', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '188', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1985-08-24', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(2, 'House', 'Furman Walsh', 'Dr. Demario Bins', '83882 Morgan Skyway Suite 994', '+1 (756) 447-4805', '906-948-6942 x5188', 'emory89@example.net', '2019-07-24', '683.00', '578', 'Y', 'year', 'Y', 'Y', '1', '1', 'Y', '2 blocks', '3 blocks', 'Y', '127', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1979-12-02', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(3, 'Townhouse', 'Miss Dessie Erdman', 'Amari Cremin', '792 Salvatore Greens', '1-412-463-2263 x543', '1-491-643-4924', 'opal01@example.com', '2019-12-18', '617.00', '903', 'N', 'year', 'N', 'N', '4', '2', 'N', '2 blocks', '3 blocks', 'N', '193', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1970-10-21', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(4, 'Room', 'Heaven Harvey V', 'Dr. Sonya Rath', '68091 Kaylie Circle Suite 889', '+1.597.467.5973', '651-610-4499 x064', 'fmarquardt@example.com', '2020-01-04', '140.00', '845', 'N', 'year', 'N', 'Y', '5', '4', 'N', '2 blocks', '3 blocks', 'Y', '118', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2014-10-06', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(5, 'Room', 'Esmeralda Glover', 'Mitchel Predovic', '44520 Norwood Ridges Suite 376', '+1-484-314-0291', '(614) 640-8596 x2580', 'krystina15@example.net', '2019-08-28', '104.00', '545', 'N', 'year', 'N', 'N', '1', '1', 'N', '2 blocks', '3 blocks', 'Y', '60', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2008-05-21', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(6, 'Efficiency', 'Mr. Fausto Paucek', 'Herbert Quitzon', '73257 Savanna Key Suite 526', '1-727-791-1458 x1994', '956.436.6657', 'pmills@example.org', '2019-11-17', '484.00', '687', 'Y', 'year', 'N', 'N', '5', '5', 'N', '2 blocks', '3 blocks', 'N', '168', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2013-02-16', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(7, 'Room', 'Ofelia Streich', 'Savanah Walter', '3129 Ruecker Square', '+1.484.471.4825', '228.532.5895 x497', 'malinda.dickens@example.org', '2019-11-03', '519.00', '840', 'N', 'year', 'Y', 'Y', '2', '2', 'Y', '2 blocks', '3 blocks', 'N', '146', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1979-08-13', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(8, 'Condo', 'Miss Jude Corkery', 'Halie Ondricka', '53178 Hilda Island', '+1-290-260-4423', '+1-478-480-1928', 'ewisoky@example.com', '2019-10-18', '678.00', '918', 'N', 'year', 'Y', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'Y', '112', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2005-04-05', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(9, 'House', 'Dr. Berniece Quitzon IV', 'Lavina Mills', '3439 Mitchel Parkway Suite 456', '+1-987-353-2208', '+1.452.974.1928', 'pfannerstill.madyson@example.net', '2019-11-23', '604.00', '588', 'N', 'year', 'Y', 'Y', '5', '3', 'Y', '2 blocks', '3 blocks', 'N', '127', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2015-11-02', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(10, 'Condo', 'Jada Fisher', 'Renee Lueilwitz', '438 Marjolaine Mission', '(971) 285-1073 x2884', '521-399-8747', 'leila.stehr@example.net', '2020-05-05', '470.00', '980', 'N', 'year', 'Y', 'N', '2', '2', 'N', '2 blocks', '3 blocks', 'Y', '100', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2012-02-05', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(11, 'Efficiency', 'Marty Breitenberg', 'Mr. Cole Boyle', '83698 McGlynn Lodge Apt. 532', '949-366-5751', '(670) 552-8343 x429', 'stark.pauline@example.org', '2019-08-16', '341.00', '969', 'N', 'year', 'N', 'Y', '1', '5', 'N', '2 blocks', '3 blocks', 'Y', '70', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1988-12-02', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(12, 'House', 'Immanuel Labadie', 'Mr. Raleigh Jaskolski', '3317 Leffler Village', '1-721-882-6294 x60927', '+1.493.795.8717', 'klocko.davon@example.net', '2019-09-07', '498.00', '648', 'N', 'year', 'Y', 'N', '1', '2', 'N', '2 blocks', '3 blocks', 'Y', '68', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1975-04-27', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(13, 'Duplex', 'Kailyn Baumbach Sr.', 'Adolphus Greenholt', '8454 Deja Road', '828.956.2922 x65551', '+18323632763', 'madyson22@example.org', '2019-11-29', '473.00', '565', 'Y', 'year', 'Y', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'N', '190', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1993-04-29', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(14, 'Apartment', 'Eladio Satterfield', 'Madyson Vandervort', '833 Jacobs Common Apt. 897', '975-245-8072', '1-227-566-6556', 'fnienow@example.net', '2019-11-05', '288.00', '773', 'Y', 'year', 'N', 'N', '1', '4', 'N', '2 blocks', '3 blocks', 'Y', '97', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1991-03-31', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(15, 'Duplex', 'Maybell Mosciski', 'Mr. Jasper Corkery', '7633 Ortiz Well Suite 419', '+1 (294) 532-8073', '235-776-4826', 'fred.wiegand@example.com', '2019-09-30', '827.00', '675', 'N', 'year', 'Y', 'N', '2', '1', 'N', '2 blocks', '3 blocks', 'Y', '189', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1976-10-04', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(16, 'Duplex', 'Dr. Samson Watsica II', 'Kenneth Zieme', '969 Alisha Fork Apt. 227', '902.250.8858 x3584', '301-658-1578 x99885', 'nmante@example.org', '2019-11-11', '618.00', '995', 'N', 'year', 'N', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'N', '118', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1973-01-30', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(17, 'Room', 'Harley Rogahn DVM', 'Jaylin Brown IV', '779 Rogahn Rest Suite 611', '1-895-432-6930 x3160', '913.939.2171', 'walter.elda@example.net', '2019-10-26', '136.00', '943', 'Y', 'year', 'N', 'Y', '5', '5', 'N', '2 blocks', '3 blocks', 'Y', '183', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1999-01-15', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(18, 'Condo', 'Avery Brown', 'Jalon Borer', '309 Leannon Meadows Apt. 898', '(760) 523-9153 x25685', '(989) 374-3012 x1150', 'oernser@example.net', '2020-06-02', '598.00', '993', 'N', 'year', 'N', 'N', '1', '3', 'Y', '2 blocks', '3 blocks', 'Y', '94', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2002-04-06', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(19, 'House', 'Jett Bogisich', 'Keeley Gislason', '13867 Tomas Field Suite 297', '(478) 594-1883 x26752', '887-640-2317 x776', 'ykreiger@example.net', '2020-02-28', '579.00', '789', 'N', 'year', 'Y', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '131', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2006-01-02', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(20, 'Efficiency', 'Jon Nitzsche II', 'Jefferey Rolfson MD', '95566 Nienow Streets', '+1.790.924.4081', '993-989-9539', 'orin27@example.com', '2020-02-02', '480.00', '543', 'Y', 'year', 'Y', 'Y', '5', '5', 'N', '2 blocks', '3 blocks', 'Y', '84', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2003-09-07', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(21, 'House', 'Isabell Baumbach', 'Dr. Freda Schimmel', '94787 Hilda Corner Suite 328', '942.293.8887 x536', '872-874-5396', 'mcclure.odessa@example.org', '2020-01-03', '968.00', '599', 'Y', 'year', 'Y', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '153', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1974-09-02', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(22, 'Townhouse', 'Ava White V', 'Mrs. Mollie Rice', '890 Rohan Prairie Apt. 052', '(296) 710-4527 x66230', '+1.325.296.2578', 'kreiger.daphney@example.org', '2019-10-10', '257.00', '580', 'N', 'year', 'N', 'Y', '3', '1', 'N', '2 blocks', '3 blocks', 'N', '85', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1974-07-02', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(23, 'Duplex', 'Martin Powlowski', 'Emmanuelle Parisian', '646 Casimir Manors Suite 231', '206-614-9450', '996.494.8486', 'cwill@example.org', '2019-08-25', '339.00', '580', 'N', 'year', 'Y', 'N', '1', '1', 'N', '2 blocks', '3 blocks', 'Y', '183', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1987-03-09', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(24, 'Duplex', 'Guido Swift', 'Forest Sanford', '340 Nolan Glen', '234-844-7321', '(364) 642-3221', 'erdman.lucinda@example.com', '2019-08-23', '250.00', '872', 'N', 'year', 'Y', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '50', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1983-05-01', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(25, 'Condo', 'Dr. Torey Dickens III', 'Howell Price', '7450 Beth Point', '310.470.8456 x7227', '1-514-872-5659', 'conroy.raleigh@example.com', '2019-09-26', '292.00', '732', 'N', 'year', 'Y', 'N', '2', '3', 'N', '2 blocks', '3 blocks', 'N', '68', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1982-05-24', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(26, 'Duplex', 'Adelbert Grant', 'Aiyana Moen', '448 Monty Mission Apt. 421', '703-772-9128 x58700', '+1 (206) 269-7346', 'tabbott@example.org', '2020-03-10', '962.00', '637', 'Y', 'year', 'Y', 'Y', '1', '5', 'N', '2 blocks', '3 blocks', 'N', '163', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2000-10-15', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(27, 'Townhouse', 'Ms. Abbie Watsica DVM', 'Mr. Sherwood Abbott', '550 Mandy Burgs Apt. 939', '389-988-4346', '1-218-736-4000', 'casandra84@example.com', '2020-04-05', '285.00', '553', 'N', 'year', 'N', 'Y', '5', '2', 'Y', '2 blocks', '3 blocks', 'N', '51', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2008-01-10', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(28, 'Townhouse', 'Prof. Ansel Willms', 'Dr. Raoul Huel', '196 Bonnie Causeway', '936-931-8457', '+1.683.422.2745', 'dax.hilpert@example.net', '2019-09-11', '316.00', '929', 'N', 'year', 'Y', 'Y', '1', '4', 'Y', '2 blocks', '3 blocks', 'N', '89', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1978-11-06', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(29, 'Condo', 'Mazie Huels', 'Esther Strosin', '744 Scottie Shore Apt. 573', '458-327-3118 x399', '+14159745196', 'dcrona@example.net', '2019-09-01', '494.00', '840', 'Y', 'year', 'Y', 'Y', '2', '5', 'N', '2 blocks', '3 blocks', 'N', '132', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2018-08-24', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(30, 'Townhouse', 'Shania Bechtelar', 'Sheridan McKenzie Sr.', '343 Hartmann Burg Suite 371', '1-231-977-1372', '+17026721120', 'lindsey67@example.net', '2019-10-25', '749.00', '935', 'N', 'year', 'Y', 'N', '2', '1', 'Y', '2 blocks', '3 blocks', 'N', '68', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2003-03-09', 'Web Entry', 'Y', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(31, 'Room', 'Mrs. Olga Bode III', 'Anne McLaughlin Sr.', '585 Ladarius Glens Suite 834', '+1-439-846-2499', '1-312-610-9864', 'kkoepp@example.net', '2019-12-15', '921.00', '890', 'N', 'year', 'Y', 'N', '2', '2', 'N', '2 blocks', '3 blocks', 'N', '114', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1991-11-08', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(32, 'Efficiency', 'Carli Walker', 'Courtney Swaniawski', '397 Weber Walk', '810-212-0227 x983', '930-778-1356 x60740', 'lamont40@example.org', '2019-09-14', '559.00', '818', 'Y', 'year', 'Y', 'N', '1', '5', 'N', '2 blocks', '3 blocks', 'N', '59', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2015-04-22', 'Web Entry', 'N', '2019-07-30 21:28:12', '2019-07-30 21:28:12'),
(33, 'Townhouse', 'Mr. Lisandro Reichel', 'Mr. Aiden Harvey Sr.', '6106 Goyette Springs Suite 553', '585.971.6179', '(405) 665-0866 x463', 'devante.fay@example.net', '2019-04-24', '515.00', '845', 'N', 'year', 'N', 'Y', '2', '3', 'N', '2 blocks', '3 blocks', 'N', '66', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1994-07-21', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(34, 'Efficiency', 'Dr. Jeramie Bartoletti', 'Prof. Odessa Stiedemann II', '135 Ottilie Road', '1-967-860-0889 x6224', '(589) 569-5955', 'rhane@example.com', '2019-09-12', '429.00', '822', 'N', 'year', 'Y', 'N', '2', '1', 'Y', '2 blocks', '3 blocks', 'N', '196', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1972-08-26', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(35, 'Efficiency', 'Noel Dooley I', 'Dr. Austin Smith PhD', '19332 Schamberger Dam Suite 052', '+1.742.367.2601', '(653) 577-8473 x359', 'thora.brown@example.org', '2020-03-03', '686.00', '567', 'Y', 'year', 'Y', 'Y', '5', '3', 'N', '2 blocks', '3 blocks', 'N', '119', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1976-08-30', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(36, 'Room', 'Freeman Goldner', 'Nella Beahan', '6461 Sage Ridge', '+16237571819', '967-729-2635', 'jovani87@example.org', '2019-09-08', '266.00', '791', 'N', 'year', 'N', 'Y', '5', '5', 'N', '2 blocks', '3 blocks', 'N', '186', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1971-03-01', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(37, 'House', 'Zane Littel', 'Palma Hartmann', '125 Cremin Plaza', '390.273.1289', '(925) 372-8207 x734', 'caleb.greenholt@example.org', '2019-08-09', '1000.00', '817', 'Y', 'year', 'Y', 'N', '2', '2', 'Y', '2 blocks', '3 blocks', 'N', '149', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2000-09-29', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(38, 'Duplex', 'Dr. Alec Gutmann DVM', 'Deonte Crona', '7830 Block Ridge Apt. 694', '+1-743-733-7111', '504-335-4273 x5913', 'volkman.quentin@example.net', '2020-01-26', '594.00', '706', 'N', 'year', 'Y', 'N', '2', '4', 'N', '2 blocks', '3 blocks', 'N', '67', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1975-01-26', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(39, 'House', 'Bernard Quitzon', 'Mr. Rosario Halvorson Jr.', '691 Nader Squares', '(332) 913-1496 x829', '+13264703578', 'ahauck@example.org', '2019-08-28', '957.00', '851', 'Y', 'year', 'Y', 'Y', '5', '5', 'N', '2 blocks', '3 blocks', 'N', '172', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2006-11-30', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(40, 'Room', 'Leola Wiegand Jr.', 'Pamela Ritchie', '8238 Kaden Junctions', '+1.892.201.5749', '(515) 204-8930 x531', 'ernser.sheridan@example.net', '2019-10-04', '233.00', '906', 'N', 'year', 'Y', 'N', '1', '5', 'N', '2 blocks', '3 blocks', 'N', '181', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1974-09-29', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(41, 'Townhouse', 'Dr. Dino Romaguera MD', 'Maryjane Bogisich', '953 Tracy Road Suite 968', '(709) 232-6001 x001', '518-673-7756', 'bode.bettie@example.org', '2020-01-15', '615.00', '865', 'N', 'year', 'N', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'N', '158', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2018-10-11', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(42, 'Duplex', 'Larry Corwin', 'Carmela Gorczany', '60161 Lindgren Harbors', '1-814-582-7489 x16045', '1-286-412-3801 x757', 'schimmel.rosamond@example.net', '2019-11-16', '499.00', '979', 'Y', 'year', 'N', 'Y', '1', '3', 'N', '2 blocks', '3 blocks', 'Y', '172', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1997-09-17', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(43, 'Townhouse', 'Daphney Halvorson', 'Macey Trantow', '3538 Sauer Rest Suite 152', '+1.756.433.0216', '+1-981-271-7670', 'bayer.dahlia@example.org', '2020-02-01', '946.00', '882', 'Y', 'year', 'Y', 'Y', '5', '3', 'N', '2 blocks', '3 blocks', 'Y', '73', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1984-02-15', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(44, 'Efficiency', 'Timothy Konopelski', 'Elisha Rice', '718 Ondricka Views Apt. 539', '+1.641.353.0319', '1-954-464-8415 x5207', 'bailee83@example.org', '2019-10-26', '584.00', '748', 'N', 'year', 'Y', 'N', '4', '5', 'N', '2 blocks', '3 blocks', 'Y', '126', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1999-10-12', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(45, 'Room', 'Dr. Dorothy Ferry Sr.', 'Mr. Mustafa Turner', '924 Howell Springs Suite 652', '558-422-6781 x27910', '1-959-890-5325 x1673', 'bwaelchi@example.net', '2019-09-04', '216.00', '987', 'Y', 'year', 'N', 'Y', '1', '4', 'Y', '2 blocks', '3 blocks', 'Y', '92', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1993-11-21', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(46, 'Room', 'Vernon Gutmann', 'Zane Heaney V', '6320 Bins Glens Suite 828', '342-325-1425 x711', '(643) 291-0498 x7482', 'flang@example.com', '2020-02-06', '384.00', '685', 'Y', 'year', 'Y', 'Y', '5', '4', 'N', '2 blocks', '3 blocks', 'Y', '166', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2006-08-04', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(47, 'Room', 'Mr. Jerod Kuhn', 'Jerod Stoltenberg', '55957 Gottlieb Fork Apt. 999', '1-843-846-6998 x295', '(870) 625-0778 x42652', 'brakus.jordyn@example.com', '2020-06-25', '666.00', '775', 'Y', 'year', 'Y', 'N', '2', '3', 'N', '2 blocks', '3 blocks', 'N', '199', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2004-12-09', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(48, 'Efficiency', 'Olga Spinka', 'Ms. Yasmeen Pfannerstill', '5406 Leffler Ports Apt. 662', '1-967-647-2628', '790-876-2168', 'ramiro85@example.net', '2019-10-09', '883.00', '629', 'Y', 'year', 'N', 'Y', '3', '1', 'N', '2 blocks', '3 blocks', 'Y', '71', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1993-05-01', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(49, 'Townhouse', 'Marisol Marvin Jr.', 'Cody Dach', '3057 Luettgen Highway', '1-785-500-7801 x6556', '460-225-0645 x27105', 'watsica.shayne@example.net', '2019-09-17', '376.00', '743', 'Y', 'year', 'N', 'N', '2', '3', 'N', '2 blocks', '3 blocks', 'Y', '56', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1992-04-10', 'Web Entry', 'N', '2019-07-30 21:28:13', '2019-07-30 21:28:13'),
(50, 'Townhouse', 'Dr. Davin Stoltenberg V', 'Giovanni Abbott', '15771 Veronica Ranch', '657.994.7934', '247-794-7441 x0941', 'brakus.odessa@example.net', '2020-02-22', '446.00', '706', 'Y', 'year', 'Y', 'Y', '2', '5', 'Y', '2 blocks', '3 blocks', 'Y', '126', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1986-04-03', 'Web Entry', 'Y', '2019-07-30 21:28:13', '2019-07-30 21:28:13');

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
