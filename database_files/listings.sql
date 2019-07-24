-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysqlcp.unm.edu:3306
-- Generation Time: Jul 24, 2019 at 03:00 PM
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
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rental_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_available` date NOT NULL,
  `rent_amount` decimal(6,2) NOT NULL,
  `deposit` decimal(6,2) DEFAULT NULL,
  `lease` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lease_duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furnished` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utilities` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bedrooms` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bathrooms` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handicapped_access` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unm_distance` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_distance` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pets` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pets_deposit` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stove` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refrigerator` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dishwasher` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disposal` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `washer_dryer` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laundry_hookup` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laundry_facilities` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `air_conditioning` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fireplace` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dining_room` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fenced_yard` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patio` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swimming_pool` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jacuzzi` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'Townhouse', 'Miss Rafaela Zemlak Sr.', 'Shanie Yundt I', '2997 Reichel Square', '1-751-305-1972', '(626) 702-7064 x473', 'goyette.tierra@example.net', '2019-11-03', '718.00', '517.00', 'Y', 'year', 'N', 'N', '3', '3', 'Y', '2 blocks', '3 blocks', 'N', '149', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1970-04-13', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(2, 'Townhouse', 'Mervin McKenzie', 'Amie Hansen', '649 Mayer Parks', '383.971.9245', '570-247-6646 x67218', 'keagan12@example.com', '2019-10-24', '804.00', '592.00', 'Y', 'year', 'N', 'N', '2', '3', 'Y', '2 blocks', '3 blocks', 'N', '96', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1974-08-01', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(3, 'Townhouse', 'Dr. Curt King', 'Tamara Ankunding', '7953 Demarcus Keys Suite 614', '610-265-9993 x5198', '(894) 677-6734 x75108', 'shahn@example.org', '2019-10-10', '968.00', '510.00', 'Y', 'year', 'N', 'Y', '5', '2', 'Y', '2 blocks', '3 blocks', 'Y', '166', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1974-07-06', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(4, 'Condo', 'John Littel', 'Watson Hettinger', '44042 Felipa Summit', '594-348-5492', '538-600-1219', 'gregoria.quigley@example.org', '2019-12-05', '729.00', '748.00', 'N', 'year', 'N', 'Y', '4', '4', 'N', '2 blocks', '3 blocks', 'N', '58', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1996-03-24', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(5, 'Room', 'Oda Keebler', 'Hermina Corkery', '583 Feest Wells Suite 278', '(613) 629-4417', '+1 (215) 312-4588', 'emmerich.augustus@example.com', '2019-08-20', '675.00', '782.00', 'Y', 'year', 'Y', 'N', '4', '3', 'N', '2 blocks', '3 blocks', 'N', '142', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1999-10-14', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(6, 'Apartment', 'Edyth Herman', 'Edward Stehr', '8183 Cordia Forges', '(249) 386-0291 x0684', '(436) 216-7727 x32665', 'schroeder.winifred@example.org', '2019-12-29', '586.00', '599.00', 'N', 'year', 'N', 'N', '2', '4', 'Y', '2 blocks', '3 blocks', 'Y', '180', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1997-01-02', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(7, 'Apartment', 'Bennett Cummerata', 'Walker Rempel', '7381 Homenick Glen Apt. 414', '(785) 232-0072 x947', '696-419-7788', 'vmarks@example.org', '2019-09-14', '669.00', '812.00', 'Y', 'year', 'Y', 'N', '1', '1', 'N', '2 blocks', '3 blocks', 'Y', '106', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2017-06-11', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(8, 'House', 'Gerda Stanton', 'Ivah Jaskolski V', '7161 Upton Fields Apt. 053', '467.324.4866 x67017', '1-328-847-1410 x21583', 'cgraham@example.com', '2019-12-06', '473.00', '573.00', 'N', 'year', 'N', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'N', '123', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2007-07-25', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(9, 'Efficiency', 'Dianna Schuppe', 'Vickie Runte IV', '97959 Ericka Ports Apt. 038', '(536) 745-8303 x51580', '908-477-2360 x19478', 'bernita.reichert@example.com', '2019-08-27', '128.00', '848.00', 'Y', 'year', 'Y', 'Y', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '66', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1972-04-17', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(10, 'Condo', 'Dillan Glover IV', 'Randal Kessler', '68744 Philip Valley', '(792) 345-9630 x1856', '972.417.1032 x502', 'johnson.rocio@example.com', '2019-09-06', '468.00', '645.00', 'N', 'year', 'Y', 'N', '4', '1', 'N', '2 blocks', '3 blocks', 'Y', '83', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2011-12-09', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(11, 'Room', 'Anastacio Prosacco', 'Mrs. Icie Yost DDS', '952 Zetta Inlet Apt. 390', '(228) 515-2620 x63568', '+1.252.807.5304', 'vanessa.johns@example.com', '2019-10-01', '408.00', '629.00', 'N', 'year', 'N', 'Y', '3', '1', 'Y', '2 blocks', '3 blocks', 'N', '164', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2017-02-11', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(12, 'House', 'Prof. Sage Swaniawski IV', 'Prof. Walter Ferry', '68839 Kenna Estates', '1-703-390-6117 x0980', '+1-568-850-0652', 'paufderhar@example.com', '2019-10-30', '743.00', '667.00', 'Y', 'year', 'N', 'Y', '1', '4', 'N', '2 blocks', '3 blocks', 'N', '100', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1982-09-28', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(13, 'Duplex', 'Lavon Lesch', 'Dr. Delia Pacocha Jr.', '3240 Hailey Estates Suite 989', '569.402.4574', '(308) 569-3863 x6743', 'vzieme@example.net', '2019-11-05', '627.00', '690.00', 'Y', 'year', 'N', 'Y', '4', '4', 'N', '2 blocks', '3 blocks', 'Y', '184', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2018-05-22', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(14, 'Room', 'Ena Stehr', 'Pearlie Grant', '858 Stoltenberg Street Suite 933', '1-806-552-5884 x1364', '(482) 321-1053 x2367', 'fwolff@example.net', '2019-07-12', '624.00', '739.00', 'N', 'year', 'Y', 'N', '4', '1', 'N', '2 blocks', '3 blocks', 'Y', '54', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2009-12-10', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(15, 'Apartment', 'Elwin Stroman', 'Akeem Ebert', '34584 Dixie Islands Suite 306', '+13395406482', '+1.727.431.2305', 'fritsch.fernando@example.com', '2019-07-30', '122.00', '758.00', 'Y', 'year', 'N', 'Y', '4', '2', 'N', '2 blocks', '3 blocks', 'Y', '192', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1970-04-19', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(16, 'Room', 'Yesenia Waters Sr.', 'Mr. Arjun Wunsch IV', '1009 Doyle Port', '(749) 990-1793 x00779', '1-692-413-2952 x64386', 'jedidiah01@example.net', '2019-08-14', '958.00', '943.00', 'Y', 'year', 'Y', 'N', '2', '4', 'Y', '2 blocks', '3 blocks', 'Y', '126', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2009-11-03', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(17, 'Townhouse', 'Prof. Federico McCullough', 'Mr. Kurt Mayert', '270 Leuschke Springs', '601-406-6675', '650.895.9833 x89476', 'josh64@example.net', '2019-09-11', '542.00', '604.00', 'N', 'year', 'N', 'Y', '2', '2', 'Y', '2 blocks', '3 blocks', 'N', '80', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1974-05-30', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(18, 'Room', 'Jermain Schinner', 'Mrs. Norma Raynor', '8622 Roderick Dale', '(465) 752-1788 x9247', '+1-327-406-1052', 'talia.ward@example.net', '2019-10-13', '335.00', '960.00', 'Y', 'year', 'Y', 'N', '5', '5', 'Y', '2 blocks', '3 blocks', 'Y', '89', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2012-12-19', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(19, 'House', 'Garth Weissnat', 'Lavinia Kuhlman V', '6851 Klein Brooks Apt. 885', '+1-708-322-2634', '409.992.8727 x01905', 'maverick.nikolaus@example.net', '2019-12-19', '495.00', '512.00', 'Y', 'year', 'Y', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '133', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1992-08-22', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(20, 'Room', 'Thomas Ward', 'Stephanie Becker', '5866 Kemmer Port Suite 589', '901-704-3552 x630', '830.909.8029 x97139', 'ydurgan@example.org', '2019-08-01', '965.00', '924.00', 'N', 'year', 'N', 'N', '2', '2', 'N', '2 blocks', '3 blocks', 'N', '101', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1982-02-25', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(21, 'Duplex', 'Miss Emmanuelle Davis V', 'Leann Borer', '8705 Fahey River', '(261) 433-6717 x47950', '(826) 223-0848 x1609', 'filiberto.runte@example.org', '2019-09-15', '855.00', '833.00', 'Y', 'year', 'Y', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '134', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1977-08-01', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(22, 'Apartment', 'Deontae Huel', 'Don Mills', '4473 Kautzer Common Apt. 202', '353-488-5207', '(282) 246-2621', 'koepp.erna@example.net', '2019-09-15', '134.00', '861.00', 'Y', 'year', 'N', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '135', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1970-03-23', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(23, 'Apartment', 'Manuel O\'Connell', 'Jan Willms', '509 Caesar Avenue Suite 007', '751-920-5459 x7646', '+1 (281) 925-5024', 'wanda.mante@example.com', '2019-11-09', '774.00', '535.00', 'N', 'year', 'N', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'Y', '120', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2004-04-05', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(24, 'Apartment', 'Prof. Edwin Fadel Jr.', 'Anderson Bauch', '293 Baby Locks', '+1-881-818-9404', '1-410-567-8184', 'larkin.alvera@example.net', '2019-12-10', '416.00', '579.00', 'N', 'year', 'Y', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '181', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1977-10-09', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(25, 'Townhouse', 'Catharine Kovacek', 'Ms. Kristina Wolf I', '36782 Unique Glens', '1-491-502-3854 x65140', '235-260-8222', 'achamplin@example.org', '2019-09-07', '640.00', '895.00', 'Y', 'year', 'Y', 'N', '2', '5', 'Y', '2 blocks', '3 blocks', 'Y', '91', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2001-10-25', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(26, 'Condo', 'Ethan Harvey', 'Miss Zena Turcotte III', '986 Makenna Route Suite 571', '1-430-453-4994', '+1 (451) 709-2204', 'kdickens@example.com', '2019-11-06', '650.00', '568.00', 'N', 'year', 'N', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'Y', '62', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1981-12-05', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(27, 'House', 'Mr. Jordyn Dach', 'Doyle Bayer', '9921 Aaliyah Glens', '(743) 725-6331 x33059', '715.657.1937 x75210', 'simonis.alfredo@example.com', '2019-09-20', '504.00', '910.00', 'Y', 'year', 'Y', 'Y', '5', '3', 'N', '2 blocks', '3 blocks', 'N', '139', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1983-04-17', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(28, 'Room', 'Anderson Armstrong IV', 'Savion Runte', '9567 Andreane Corners', '(802) 644-4557', '1-614-933-1591 x46021', 'huel.alejandrin@example.net', '2019-09-22', '529.00', '568.00', 'Y', 'year', 'N', 'N', '4', '5', 'N', '2 blocks', '3 blocks', 'Y', '184', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1974-03-04', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(29, 'Room', 'Margarete Powlowski', 'Prof. Hermann Kassulke V', '74864 Rocky Dam', '+1-709-520-5369', '1-315-762-0329 x339', 'nellie05@example.com', '2019-09-03', '284.00', '511.00', 'N', 'year', 'N', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '194', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2015-07-18', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(30, 'Townhouse', 'Esther Schmitt', 'Lacy Herman I', '418 Donny Forks', '1-448-936-0475', '407-397-1252 x4253', 'zboncak.savanah@example.com', '2019-09-24', '706.00', '691.00', 'N', 'year', 'N', 'N', '1', '3', 'N', '2 blocks', '3 blocks', 'N', '115', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2008-11-17', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(31, 'Duplex', 'Wallace Graham', 'Margarita Hettinger', '2619 Raynor Well', '861-510-2698 x802', '787.360.7423 x21669', 'kbechtelar@example.net', '2019-08-20', '607.00', '661.00', 'Y', 'year', 'Y', 'Y', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '99', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2008-11-14', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(32, 'Duplex', 'Sandy Cassin', 'Mr. Johann Blanda IV', '525 Augusta Cliffs', '+1.786.797.2641', '293.706.1741', 'jeremy82@example.com', '2019-07-30', '935.00', '608.00', 'N', 'year', 'N', 'N', '1', '1', 'N', '2 blocks', '3 blocks', 'Y', '189', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1997-07-23', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(33, 'Apartment', 'Green Kuvalis', 'Prof. Troy Conroy', '185 Watsica Brook Suite 592', '934.753.0906', '1-830-686-3029 x571', 'anita81@example.net', '2019-09-10', '110.00', '638.00', 'Y', 'year', 'N', 'N', '1', '4', 'Y', '2 blocks', '3 blocks', 'N', '149', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2004-05-21', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(34, 'Townhouse', 'Prof. Deon Wolf III', 'Elisha Rolfson', '74922 Ellis Center Apt. 902', '434-540-0432', '(579) 399-8328', 'marcelino23@example.org', '2019-09-24', '125.00', '544.00', 'N', 'year', 'Y', 'Y', '3', '2', 'N', '2 blocks', '3 blocks', 'Y', '78', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2003-07-11', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(35, 'Room', 'Kelsi Gerlach', 'Prof. Weldon Haley I', '54909 Leffler Cove', '1-242-338-1932 x905', '(516) 954-7698 x47758', 'melyna.wunsch@example.net', '2019-10-09', '320.00', '1000.00', 'Y', 'year', 'Y', 'Y', '4', '5', 'N', '2 blocks', '3 blocks', 'Y', '88', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2007-10-20', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(36, 'Duplex', 'Tiara Barrows', 'Carli Jacobi', '3021 Hipolito Flats Apt. 594', '(702) 574-1457', '+1.257.657.9782', 'vince.volkman@example.net', '2019-09-02', '399.00', '770.00', 'N', 'year', 'Y', 'Y', '2', '3', 'Y', '2 blocks', '3 blocks', 'N', '124', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1977-03-06', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(37, 'Apartment', 'Spencer Cummerata', 'Yoshiko Braun', '543 Turcotte Avenue', '903.242.2823 x553', '1-945-649-6782 x78512', 'lebsack.peter@example.org', '2019-08-30', '721.00', '761.00', 'N', 'year', 'N', 'Y', '3', '1', 'N', '2 blocks', '3 blocks', 'Y', '116', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1984-04-29', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(38, 'Townhouse', 'Mrs. Cydney Ebert', 'Braeden Trantow DVM', '4989 Padberg Locks Apt. 716', '+1 (537) 326-5084', '(447) 653-6985', 'lance50@example.org', '2019-09-01', '765.00', '858.00', 'Y', 'year', 'N', 'Y', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '157', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1973-07-11', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(39, 'Townhouse', 'Prof. Johnny Mayer', 'Ms. Elisha Lehner', '6855 Blick Harbors', '(693) 886-6595', '807-588-4147 x05966', 'ian.vonrueden@example.net', '2019-09-22', '330.00', '994.00', 'Y', 'year', 'Y', 'Y', '3', '5', 'N', '2 blocks', '3 blocks', 'N', '117', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2003-06-11', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(40, 'Efficiency', 'Lucile Smitham', 'Sebastian Larson', '47761 Kilback Underpass', '1-372-582-2867 x5176', '689.201.7062', 'alexandre05@example.org', '2019-10-24', '129.00', '699.00', 'N', 'year', 'Y', 'N', '5', '1', 'N', '2 blocks', '3 blocks', 'Y', '127', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1987-06-16', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(41, 'Duplex', 'Mr. Troy Murphy IV', 'Johnpaul Macejkovic', '4395 Parker Spur Suite 061', '1-936-346-3966 x26309', '1-924-641-1602', 'bartell.meghan@example.net', '2019-08-21', '666.00', '670.00', 'N', 'year', 'N', 'Y', '4', '2', 'N', '2 blocks', '3 blocks', 'N', '73', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2008-01-08', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(42, 'Room', 'Mr. Rhiannon Herman DVM', 'Dr. Selina Weissnat DDS', '117 Kemmer Lodge', '783-615-3208', '(297) 984-1770 x998', 'lindsey61@example.org', '2019-11-12', '391.00', '553.00', 'N', 'year', 'N', 'Y', '4', '4', 'N', '2 blocks', '3 blocks', 'Y', '199', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2004-04-23', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(43, 'House', 'Dion Sawayn', 'Garry McKenzie', '115 Tony Wells', '1-649-618-0565', '+1.452.770.7107', 'tyshawn.beier@example.com', '2019-08-14', '769.00', '765.00', 'Y', 'year', 'N', 'Y', '5', '3', 'N', '2 blocks', '3 blocks', 'Y', '67', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1981-01-22', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(44, 'Duplex', 'Taryn Kassulke', 'Buck Mosciski DVM', '284 George Prairie Suite 891', '(886) 713-9291 x385', '207.644.9485', 'daniel.judge@example.org', '2019-10-31', '423.00', '855.00', 'Y', 'year', 'N', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '134', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2008-12-03', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(45, 'Townhouse', 'Maddison Klein', 'Cortney Price', '272 Clark Square', '(452) 822-9786 x471', '(837) 895-5494 x877', 'hegmann.gia@example.org', '2019-08-01', '491.00', '650.00', 'Y', 'year', 'N', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'N', '77', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1989-09-28', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(46, 'House', 'Pierce Champlin Jr.', 'Marianna Turner', '82563 Mayert Cliff Suite 550', '297-271-4051 x27441', '+1.405.997.4513', 'fadel.alexane@example.net', '2019-12-05', '212.00', '545.00', 'N', 'year', 'Y', 'Y', '1', '3', 'Y', '2 blocks', '3 blocks', 'Y', '142', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1992-06-03', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(47, 'Apartment', 'Noelia Mante', 'Prof. Sarai Ward', '842 Esther Keys', '1-470-660-1090 x0935', '1-484-780-8744 x28375', 'bethel67@example.com', '2019-12-14', '919.00', '657.00', 'Y', 'year', 'N', 'N', '1', '5', 'N', '2 blocks', '3 blocks', 'Y', '133', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2005-11-29', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(48, 'Efficiency', 'Judge Miller', 'Mateo Friesen', '4153 Walker Crest Apt. 665', '319-328-0082 x5142', '401-389-1221', 'thiel.drew@example.com', '2019-09-24', '761.00', '538.00', 'Y', 'year', 'Y', 'Y', '1', '2', 'N', '2 blocks', '3 blocks', 'Y', '105', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1973-07-12', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(49, 'Apartment', 'Prof. Eddie Casper DVM', 'Esther Auer', '48426 Chase Well', '+1.481.910.5346', '1-961-588-1659 x239', 'dsteuber@example.org', '2019-08-16', '421.00', '694.00', 'Y', 'year', 'Y', 'N', '4', '3', 'Y', '2 blocks', '3 blocks', 'Y', '195', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2018-10-07', 'Web Entry', 'Y', '2019-07-25 01:48:00', '2019-07-25 01:48:00'),
(50, 'Apartment', 'Kiara Gerlach', 'Collin Herzog', '8782 Ferry Route', '448.506.9913 x744', '+1-907-249-8888', 'rowe.jasper@example.com', '2019-12-30', '800.00', '895.00', 'Y', 'year', 'N', 'Y', '5', '2', 'Y', '2 blocks', '3 blocks', 'Y', '109', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1975-03-20', 'Web Entry', 'N', '2019-07-25 01:48:00', '2019-07-25 01:48:00');

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
