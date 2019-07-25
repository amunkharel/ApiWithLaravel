-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysqlcp.unm.edu:3306
-- Generation Time: Jul 25, 2019 at 01:29 PM
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
(1, 'Condo', 'Shawna Welch Sr.', 'Jensen Wuckert Jr.', '420 Medhurst Plain', '1-512-476-8669 x430', '608.840.0184', 'kelli.mraz@example.org', '2019-11-05', '623.00', '920.00', 'N', 'year', 'N', 'N', '5', '5', 'Y', '2 blocks', '3 blocks', 'Y', '83', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1987-12-08', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(2, 'House', 'Olaf Boyle', 'Amira Schultz MD', '309 Sanford Key', '471.634.3516 x07490', '692-935-0789 x76989', 'murray54@example.net', '2019-10-31', '417.00', '587.00', 'N', 'year', 'Y', 'N', '4', '4', 'N', '2 blocks', '3 blocks', 'N', '198', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2013-06-27', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(3, 'Efficiency', 'Mr. Greyson Goyette', 'Alize Dicki DVM', '40614 Howard Spurs', '1-970-808-4249', '(396) 908-0886', 'hschulist@example.com', '2019-11-02', '119.00', '809.00', 'Y', 'year', 'N', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '78', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1978-12-19', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(4, 'Condo', 'Keeley Marvin', 'Prof. Abbey Schiller', '252 Wilderman Underpass', '(769) 944-5761 x74006', '+1-791-710-1768', 'eda45@example.net', '2019-12-27', '449.00', '923.00', 'N', 'year', 'Y', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'N', '79', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1982-04-29', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(5, 'Room', 'Prof. Kelvin Kunde DDS', 'Micaela Haley II', '91333 Roslyn Alley', '+19283882840', '1-382-709-0558 x040', 'maye13@example.org', '2019-09-12', '988.00', '723.00', 'N', 'year', 'Y', 'Y', '1', '1', 'Y', '2 blocks', '3 blocks', 'Y', '156', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2005-02-02', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(6, 'Townhouse', 'Prof. Gail Gislason I', 'Khalid Bednar', '25390 Breitenberg Roads', '525-687-4954 x28819', '485.357.4442', 'cletus21@example.net', '2019-10-02', '940.00', '663.00', 'N', 'year', 'Y', 'Y', '1', '4', 'N', '2 blocks', '3 blocks', 'Y', '62', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1970-08-19', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(7, 'Efficiency', 'Agustina Orn V', 'Emmett Johnson III', '7797 Hoeger Plain', '996.956.1671 x9010', '+1-945-205-2358', 'bhessel@example.org', '2019-09-03', '976.00', '977.00', 'Y', 'year', 'N', 'Y', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '164', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2009-02-01', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(8, 'Duplex', 'Otha Boehm II', 'Cheyanne Sanford', '5185 Manuel Dale Apt. 718', '863.804.4478 x4870', '+1-615-702-1108', 'yherzog@example.org', '2019-09-07', '473.00', '863.00', 'Y', 'year', 'N', 'N', '5', '3', 'N', '2 blocks', '3 blocks', 'N', '74', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1979-06-28', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(9, 'Apartment', 'Adolphus Bechtelar', 'Cale Leannon', '9832 Abbott Cliff Suite 661', '1-598-632-4134 x3252', '657-646-0637', 'dmosciski@example.com', '2019-12-14', '799.00', '728.00', 'N', 'year', 'N', 'N', '2', '1', 'N', '2 blocks', '3 blocks', 'N', '107', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1991-10-03', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(10, 'Townhouse', 'Mr. Newell Jones', 'Ms. Thalia Heidenreich I', '404 Leda Mission Suite 660', '(305) 645-7671 x6949', '1-908-580-1609 x3448', 'trantow.bulah@example.org', '2019-11-10', '754.00', '823.00', 'N', 'year', 'Y', 'N', '2', '4', 'Y', '2 blocks', '3 blocks', 'N', '56', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2011-09-17', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(11, 'Apartment', 'Kacie Muller', 'Prof. Jared Hahn IV', '8391 Daniela Streets', '(801) 539-1112', '+1-558-685-0959', 'green.conner@example.com', '2019-08-25', '757.00', '627.00', 'Y', 'year', 'Y', 'Y', '4', '2', 'N', '2 blocks', '3 blocks', 'N', '104', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1990-09-07', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(12, 'House', 'Karianne Hagenes', 'Ariane Swaniawski', '92096 Spencer Canyon', '1-689-712-9306', '926.467.7414 x867', 'ritchie.triston@example.net', '2019-10-19', '755.00', '937.00', 'Y', 'year', 'Y', 'Y', '1', '2', 'N', '2 blocks', '3 blocks', 'Y', '150', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '2004-12-18', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(13, 'Duplex', 'Miss Heather Ernser DDS', 'Dr. Reagan Sporer', '906 Lonny Spurs Suite 457', '1-337-692-4207 x00858', '462.587.5455', 'tsipes@example.net', '2019-09-05', '539.00', '668.00', 'Y', 'year', 'Y', 'N', '5', '2', 'Y', '2 blocks', '3 blocks', 'N', '92', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1983-01-31', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(14, 'Townhouse', 'Mr. Dewayne Metz III', 'Dr. Dino Hickle', '42818 Hirthe Crest Apt. 303', '+1.348.605.3076', '1-762-305-1375 x859', 'ureinger@example.org', '2019-11-24', '991.00', '616.00', 'N', 'year', 'N', 'Y', '4', '2', 'Y', '2 blocks', '3 blocks', 'N', '92', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2006-03-25', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(15, 'Efficiency', 'Ms. Ottilie Carter V', 'Vena Jenkins', '48632 Effertz Expressway', '396-233-3219', '(750) 660-1877', 'smitham.halie@example.com', '2019-08-19', '502.00', '957.00', 'Y', 'year', 'N', 'Y', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '192', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1971-11-15', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(16, 'Townhouse', 'Nella Wunsch DVM', 'Prof. Nico Homenick DVM', '2446 Terry Vista Suite 974', '1-430-219-6759 x49074', '1-626-585-4101', 'scormier@example.net', '2019-08-16', '934.00', '601.00', 'Y', 'year', 'Y', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'N', '167', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2011-02-02', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(17, 'Townhouse', 'Karl Nitzsche Sr.', 'Ms. Katheryn Collins MD', '38518 Orval Village', '1-536-374-2104 x88105', '+1-502-387-9968', 'rohan.isabel@example.org', '2019-10-07', '333.00', '837.00', 'Y', 'year', 'Y', 'Y', '5', '2', 'N', '2 blocks', '3 blocks', 'N', '65', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2000-05-20', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(18, 'Apartment', 'Dr. Francesco Rath Jr.', 'Giovanna Berge I', '29157 Vicente Radial', '742.601.9305 x98226', '640.777.3756 x1026', 'douglas.jevon@example.com', '2019-12-28', '218.00', '712.00', 'N', 'year', 'N', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '50', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1996-01-12', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(19, 'Duplex', 'Shyanne Haley', 'Alexane Bayer', '30227 Lesly Views Suite 433', '1-952-822-8688 x589', '(681) 709-1630 x351', 'wpadberg@example.org', '2019-10-05', '101.00', '865.00', 'N', 'year', 'Y', 'N', '3', '4', 'N', '2 blocks', '3 blocks', 'Y', '165', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1990-04-18', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(20, 'House', 'Prof. Angus Schmitt I', 'Vergie Rowe', '38802 Seth Ports Apt. 196', '(336) 675-4938 x3223', '948-861-2904', 'vidal.kemmer@example.net', '2019-11-06', '821.00', '699.00', 'Y', 'year', 'Y', 'Y', '3', '2', 'Y', '2 blocks', '3 blocks', 'Y', '109', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1983-03-12', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(21, 'Duplex', 'Willow Goodwin', 'Ursula Hilpert', '37838 D\'Amore Springs Suite 101', '625-503-9359', '796.820.0759 x8816', 'jackie.hodkiewicz@example.com', '2019-11-07', '475.00', '724.00', 'Y', 'year', 'N', 'N', '2', '2', 'N', '2 blocks', '3 blocks', 'N', '85', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1987-09-29', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(22, 'House', 'Simone Dach', 'Alexis Lang', '82231 Bashirian Cove Suite 633', '983.331.1580', '1-764-209-4611 x224', 'sporer.carter@example.com', '2019-09-04', '596.00', '585.00', 'N', 'year', 'Y', 'N', '2', '5', 'N', '2 blocks', '3 blocks', 'Y', '145', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1972-01-10', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(23, 'Duplex', 'David Gutmann Jr.', 'Dr. Carolanne Upton Jr.', '733 Bernadette Unions', '(846) 586-8801', '(969) 313-1666', 'maeve64@example.org', '2019-12-07', '912.00', '913.00', 'N', 'year', 'Y', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'N', '141', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1989-11-28', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(24, 'Duplex', 'Gladyce Cummerata PhD', 'Prof. Chance Trantow', '960 Fritz Spring', '(492) 904-5729 x078', '834.291.5746 x73158', 'nicolas.nyah@example.com', '2019-09-22', '644.00', '738.00', 'N', 'year', 'N', 'N', '3', '5', 'Y', '2 blocks', '3 blocks', 'Y', '114', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1984-09-01', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(25, 'Room', 'Dr. Taryn Kling DDS', 'Sallie Mueller Sr.', '2407 Alta Manor Suite 400', '(671) 715-3080 x3178', '521-585-2741 x467', 'lilyan75@example.com', '2019-12-27', '369.00', '683.00', 'Y', 'year', 'N', 'N', '3', '4', 'N', '2 blocks', '3 blocks', 'Y', '161', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2004-04-08', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(26, 'Apartment', 'Paris Wyman', 'Mrs. Zora Bashirian', '989 Randall Hill', '563-251-5394 x69503', '(882) 521-4140 x20013', 'alvena.graham@example.net', '2019-11-27', '272.00', '939.00', 'N', 'year', 'N', 'N', '3', '4', 'Y', '2 blocks', '3 blocks', 'N', '195', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1975-02-20', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(27, 'Room', 'Orie Aufderhar', 'Kathryn Ondricka', '189 Kassulke Ford', '1-283-456-3926 x8013', '1-695-290-1666', 'ted.daniel@example.net', '2019-11-07', '283.00', '872.00', 'Y', 'year', 'Y', 'Y', '3', '3', 'Y', '2 blocks', '3 blocks', 'Y', '148', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2016-11-10', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(28, 'House', 'Prof. Isabella Wyman V', 'Mittie Howe II', '734 Metz Port', '240.512.1560 x67135', '1-906-481-3298', 'oren.schneider@example.com', '2019-12-24', '519.00', '692.00', 'N', 'year', 'N', 'Y', '4', '3', 'Y', '2 blocks', '3 blocks', 'N', '186', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1976-04-22', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(29, 'Efficiency', 'Brenden Gottlieb', 'Mrs. Sincere Bogisich Sr.', '3826 Vandervort Crossroad Apt. 084', '621.692.8665', '309.927.8969 x4510', 'adah.goldner@example.net', '2019-11-02', '819.00', '799.00', 'N', 'year', 'N', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '66', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2013-06-26', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(30, 'Room', 'Jaden Langosh', 'Ruben Wyman Sr.', '3187 Rylan River Suite 168', '(448) 641-2742 x2859', '315.821.1533 x74693', 'dasia00@example.org', '2019-09-24', '588.00', '822.00', 'N', 'year', 'Y', 'Y', '1', '2', 'Y', '2 blocks', '3 blocks', 'N', '120', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1976-03-27', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(31, 'Room', 'Darian Runolfsson', 'Prof. Geoffrey Paucek I', '524 Dovie Tunnel Apt. 753', '(310) 385-2359 x463', '(813) 385-3291', 'tdach@example.com', '2019-09-10', '225.00', '801.00', 'Y', 'year', 'N', 'N', '1', '3', 'N', '2 blocks', '3 blocks', 'Y', '155', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1970-02-08', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(32, 'Duplex', 'Dr. Jordi Runolfsson', 'Emilio VonRueden', '57712 Cleveland Trafficway', '+1 (935) 751-3786', '410.271.4694', 'pamela90@example.org', '2019-11-03', '818.00', '637.00', 'Y', 'year', 'N', 'Y', '1', '3', 'N', '2 blocks', '3 blocks', 'Y', '166', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2000-03-11', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(33, 'Efficiency', 'Wendell Gerhold DDS', 'Gage Keebler', '13612 Helena Center Apt. 784', '553-824-2544 x66226', '369.544.3671 x4051', 'adams.golden@example.com', '2019-09-12', '350.00', '514.00', 'Y', 'year', 'N', 'N', '4', '4', 'N', '2 blocks', '3 blocks', 'N', '119', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '2010-05-10', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(34, 'Townhouse', 'Kendra Nienow', 'Amiya Haley', '76286 Aufderhar Inlet', '(745) 522-8477 x13688', '678-280-8675 x3830', 'casper87@example.net', '2019-09-12', '899.00', '876.00', 'N', 'year', 'N', 'Y', '1', '4', 'N', '2 blocks', '3 blocks', 'Y', '189', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1992-11-21', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(35, 'House', 'Mr. Elmo DuBuque', 'Allan Hintz', '410 Cartwright Ridges', '815-238-3487 x645', '1-480-452-2078 x81984', 'desiree24@example.org', '2019-10-12', '484.00', '825.00', 'N', 'year', 'N', 'Y', '4', '5', 'Y', '2 blocks', '3 blocks', 'Y', '134', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2018-11-30', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(36, 'Efficiency', 'Lilly McKenzie', 'Arlo Prohaska PhD', '72578 Micah Drive', '506-401-3251', '1-607-670-5068 x49800', 'kristian.reinger@example.com', '2019-11-21', '643.00', '769.00', 'N', 'year', 'Y', 'N', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '57', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1997-06-18', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(37, 'House', 'Prof. Gerardo Fadel I', 'Molly Witting', '116 Bo Lakes', '(260) 489-4902 x412', '462-958-3918', 'elwyn68@example.net', '2019-09-06', '319.00', '725.00', 'Y', 'year', 'Y', 'N', '2', '5', 'N', '2 blocks', '3 blocks', 'Y', '116', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1984-10-19', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(38, 'House', 'Laurel Jakubowski', 'Josh Ondricka', '419 Smith Harbors Suite 929', '1-961-827-7172 x775', '1-835-224-5351 x732', 'felton.conroy@example.com', '2019-12-23', '532.00', '689.00', 'N', 'year', 'N', 'N', '5', '2', 'N', '2 blocks', '3 blocks', 'Y', '157', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2016-10-01', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(39, 'Efficiency', 'Kelley Lind', 'Dr. Raven Strosin MD', '187 Josefina Street Suite 034', '405-658-6371', '943.912.1824', 'edare@example.com', '2019-11-23', '143.00', '726.00', 'Y', 'year', 'N', 'N', '2', '2', 'N', '2 blocks', '3 blocks', 'Y', '178', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1984-03-21', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(40, 'Room', 'Salvador Ledner', 'Dr. Magdalena Ziemann DDS', '1387 Salma Way', '582.777.1967 x02732', '651-723-4295 x48573', 'ewell.ruecker@example.net', '2019-12-14', '952.00', '869.00', 'Y', 'year', 'N', 'Y', '4', '5', 'N', '2 blocks', '3 blocks', 'N', '154', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2015-09-25', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(41, 'House', 'Nayeli Becker', 'Mrs. Freda Auer III', '7128 Baylee Valleys', '(909) 777-2214 x6012', '958.850.7066 x102', 'zstokes@example.com', '2019-12-02', '991.00', '901.00', 'Y', 'year', 'N', 'N', '4', '5', 'Y', '2 blocks', '3 blocks', 'N', '121', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1977-11-16', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(42, 'Efficiency', 'Mrs. Dixie Jaskolski', 'Vergie Jaskolski II', '96120 Jacobi Harbors', '1-670-294-5175', '680-918-1165 x9727', 'schneider.deron@example.net', '2019-12-18', '677.00', '823.00', 'Y', 'year', 'N', 'N', '5', '3', 'N', '2 blocks', '3 blocks', 'N', '129', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2019-01-22', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(43, 'Efficiency', 'Prof. Jake Tremblay II', 'Mr. Justice Vandervort IV', '8606 Palma Centers Suite 839', '474.858.3613 x43188', '(310) 386-9767', 'bradley.johns@example.net', '2019-11-09', '353.00', '729.00', 'N', 'year', 'Y', 'Y', '2', '4', 'N', '2 blocks', '3 blocks', 'Y', '160', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2005-08-16', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(44, 'Apartment', 'Merle Mills DDS', 'Johathan Berge', '533 Clint Inlet', '847-874-5103 x4644', '+1 (578) 804-2771', 'felicia15@example.com', '2019-09-13', '840.00', '998.00', 'N', 'year', 'N', 'Y', '1', '5', 'Y', '2 blocks', '3 blocks', 'Y', '125', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1999-02-05', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(45, 'Duplex', 'Ms. Nella Oberbrunner', 'Rafael Hagenes', '86083 McClure River Apt. 075', '1-678-564-6692 x8816', '513.320.2288', 'lowe.osvaldo@example.org', '2020-01-02', '129.00', '860.00', 'Y', 'year', 'N', 'N', '4', '5', 'Y', '2 blocks', '3 blocks', 'N', '189', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1981-01-29', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(46, 'Duplex', 'Dr. Rollin Thompson', 'Ms. Kassandra Brown', '1946 Legros Junctions Apt. 621', '1-210-676-2461', '+1 (706) 500-3501', 'frami.lola@example.org', '2019-09-27', '207.00', '923.00', 'Y', 'year', 'N', 'Y', '5', '1', 'Y', '2 blocks', '3 blocks', 'Y', '125', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2012-07-27', 'Web Entry', 'Y', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(47, 'House', 'Abelardo Lebsack', 'Adolf Borer', '50608 Jamison Ports Suite 672', '+13874343669', '823-331-8476 x3569', 'kiana.rogahn@example.org', '2019-12-10', '216.00', '523.00', 'Y', 'year', 'Y', 'N', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '192', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1973-10-06', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(48, 'Duplex', 'Anastacio Grady DVM', 'Mr. Madison Feeney II', '11840 Terry Crossing', '768.317.6319 x5608', '1-639-638-3530 x8459', 'braun.ana@example.com', '2019-11-15', '644.00', '922.00', 'Y', 'year', 'Y', 'N', '5', '4', 'N', '2 blocks', '3 blocks', 'N', '63', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2001-01-13', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(49, 'Townhouse', 'Olin Littel', 'Joana Stoltenberg MD', '2262 Juvenal Orchard Apt. 897', '1-438-348-7089', '+1-306-843-5593', 'heloise.rath@example.org', '2019-11-11', '215.00', '989.00', 'N', 'year', 'Y', 'Y', '4', '3', 'Y', '2 blocks', '3 blocks', 'N', '60', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1983-04-05', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16'),
(50, 'Room', 'Prof. Janick Gleason PhD', 'Cory Schaefer', '986 Johns Coves Suite 254', '+1-431-439-9346', '1-940-766-6003', 'tamara.jaskolski@example.com', '2019-12-26', '798.00', '518.00', 'N', 'year', 'N', 'N', '4', '4', 'Y', '2 blocks', '3 blocks', 'N', '105', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1978-11-26', 'Web Entry', 'N', '2019-07-26 01:23:16', '2019-07-26 01:23:16');

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
