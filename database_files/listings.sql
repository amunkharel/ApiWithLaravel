-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysqlcp.unm.edu:3306
-- Generation Time: Sep 06, 2019 at 11:09 AM
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
  `rent_amount` int(10) UNSIGNED NOT NULL,
  `deposit` int(10) UNSIGNED DEFAULT NULL,
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
(1, 'Duplex', 'Margie Baumbach', 'Flo Reichel', '1219 Miller Ports Suite 651', '+1 (228) 367-5305', '+1-772-469-4429', 'rolfson.luisa@example.org', '2019-12-15', 478, 572, 'Y', 'year', 'Y', 'Y', '2', '5', 'N', '2 blocks', '3 blocks', 'N', '119', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2009-11-19', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(2, 'House', 'Korey Lindgren', 'Prof. Adrien Jerde', '87556 Bettie Isle', '1-414-439-1243', '965-931-7181 x8243', 'magali56@example.org', '2019-11-10', 350, 587, 'Y', 'year', 'N', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'N', '51', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1986-09-24', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(3, 'Apartment', 'Alec Ortiz', 'Antonietta Konopelski DVM', '975 Smith Islands', '1-531-855-3644', '(550) 765-0583 x1219', 'pouros.johan@example.com', '2019-11-18', 825, 586, 'Y', 'year', 'N', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '50', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1986-06-08', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(4, 'Efficiency', 'Ricardo Lockman', 'Aimee Luettgen', '917 Elsa Tunnel', '(576) 297-9369', '(889) 831-6147 x33056', 'cgrady@example.org', '2019-12-15', 161, 742, 'Y', 'year', 'Y', 'Y', '5', '3', 'N', '2 blocks', '3 blocks', 'Y', '118', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1992-11-17', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(5, 'Room', 'Ms. Claudie Gleichner Jr.', 'Ola Feest', '6358 Jeanie Key Apt. 741', '1-727-519-5632 x529', '827.767.4644 x7706', 'marc.bogan@example.com', '2020-07-09', 782, 887, 'Y', 'year', 'N', 'Y', '2', '5', 'Y', '2 blocks', '3 blocks', 'N', '69', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1998-08-31', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(6, 'House', 'Monique Koelpin', 'Hoyt Emard', '1769 Christiana Mews', '1-798-945-6016 x8675', '240.544.6880 x172', 'gisselle.anderson@example.com', '2020-01-11', 145, 994, 'Y', 'year', 'N', 'N', '5', '2', 'N', '2 blocks', '3 blocks', 'Y', '179', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '2000-07-15', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(7, 'Efficiency', 'Barry Will', 'Tremayne Kemmer', '5105 Pacocha Plaza Suite 769', '(538) 992-2746 x317', '+1 (507) 323-6535', 'giles65@example.org', '2019-10-05', 172, 792, 'N', 'year', 'Y', 'N', '4', '3', 'Y', '2 blocks', '3 blocks', 'Y', '70', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1997-08-09', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(8, 'Room', 'Bernie Mills', 'Muhammad Conroy', '87783 Robin Parks Apt. 062', '460.535.3376 x50734', '+1 (343) 582-8939', 'janick66@example.org', '2019-09-12', 161, 586, 'Y', 'year', 'N', 'Y', '3', '4', 'N', '2 blocks', '3 blocks', 'Y', '84', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2014-04-26', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(9, 'Room', 'Milford Aufderhar', 'Ms. Zoie Strosin Sr.', '59295 Stella Points', '+19216898796', '818-455-1378 x206', 'orland.jaskolski@example.net', '2019-12-18', 511, 567, 'N', 'year', 'Y', 'Y', '2', '4', 'N', '2 blocks', '3 blocks', 'Y', '79', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1984-07-20', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(10, 'Efficiency', 'Elenor Gutkowski', 'Prof. Tommie Bartell', '7321 Georgianna Cape Suite 337', '352.973.0694 x4125', '340-405-1349 x08384', 'keagan06@example.com', '2020-07-30', 985, 513, 'N', 'year', 'N', 'N', '1', '5', 'Y', '2 blocks', '3 blocks', 'N', '165', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2008-10-01', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(11, 'Duplex', 'Darrion Fahey', 'Dakota Mayert', '31001 Claudia View Suite 368', '(695) 816-8066 x710', '+1.587.403.1563', 'verna93@example.com', '2020-08-11', 197, 897, 'Y', 'year', 'Y', 'Y', '2', '1', 'Y', '2 blocks', '3 blocks', 'Y', '143', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1989-08-21', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(12, 'Room', 'Estrella Heathcote', 'Branson Graham PhD', '10289 Derick Spurs', '970.530.3530', '(891) 787-5545', 'stroman.ansley@example.net', '2020-04-09', 460, 517, 'N', 'year', 'N', 'Y', '4', '5', 'N', '2 blocks', '3 blocks', 'Y', '135', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1981-09-05', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(13, 'Condo', 'Prof. Lavern Ernser MD', 'Jeanette Macejkovic', '76616 Price Forks', '515-237-8127', '831-407-9703 x5065', 'willms.clemens@example.net', '2019-12-08', 868, 976, 'Y', 'year', 'N', 'Y', '2', '1', 'Y', '2 blocks', '3 blocks', 'N', '83', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2000-04-19', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(14, 'Condo', 'Dr. Tanner Tremblay', 'Coleman Cartwright', '526 Elian Orchard', '981-416-0522 x3612', '1-609-481-0860 x1321', 'vinnie.ryan@example.org', '2020-06-30', 396, 601, 'Y', 'year', 'N', 'Y', '2', '4', 'N', '2 blocks', '3 blocks', 'Y', '120', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '2012-01-26', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(15, 'Efficiency', 'Eulah Harvey', 'Mr. Wade Lind DVM', '610 Nelson Lodge', '+1-907-905-0364', '(454) 706-6698 x546', 'ferry.yessenia@example.com', '2019-10-30', 218, 812, 'Y', 'year', 'Y', 'Y', '5', '5', 'Y', '2 blocks', '3 blocks', 'Y', '143', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1990-04-25', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(16, 'House', 'Clement McGlynn II', 'Orpha Thompson', '3686 Lera Ranch', '614-244-0096', '+17022813095', 'fisher.ebony@example.net', '2019-10-13', 382, 612, 'N', 'year', 'Y', 'Y', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '127', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1980-09-13', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(17, 'Townhouse', 'Hettie Wolff', 'Mathilde Mraz', '304 Swaniawski Court', '(743) 698-1375 x4794', '979-760-6506 x891', 'cassin.nestor@example.org', '2020-01-08', 845, 799, 'Y', 'year', 'Y', 'N', '2', '1', 'Y', '2 blocks', '3 blocks', 'Y', '66', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1976-06-13', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(18, 'Efficiency', 'Kara Turcotte IV', 'Nikolas Jacobi', '44845 Shanahan Tunnel', '(234) 760-6629 x339', '+19654699378', 'williamson.kobe@example.org', '2020-02-13', 384, 720, 'Y', 'year', 'Y', 'Y', '1', '4', 'N', '2 blocks', '3 blocks', 'N', '145', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2005-12-01', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(19, 'House', 'Lexus Macejkovic', 'Danika Kemmer', '25531 Hipolito Lakes', '645-225-4533 x77553', '1-410-791-4536', 'sheridan29@example.net', '2020-03-22', 370, 764, 'Y', 'year', 'Y', 'Y', '1', '3', 'N', '2 blocks', '3 blocks', 'Y', '78', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1987-01-23', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(20, 'House', 'Christopher Roberts', 'Julio Cormier', '8242 Percival Centers', '1-694-289-4637 x549', '919.832.5802 x64749', 'nwuckert@example.net', '2020-01-30', 618, 784, 'N', 'year', 'N', 'N', '5', '2', 'N', '2 blocks', '3 blocks', 'Y', '102', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2006-10-02', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(21, 'Duplex', 'Ricardo Kutch', 'Ms. Germaine Gusikowski II', '1448 Kerluke Via Apt. 184', '(835) 386-4788 x0294', '395.510.1754 x551', 'alexanne67@example.com', '2019-09-27', 671, 917, 'Y', 'year', 'N', 'Y', '5', '1', 'N', '2 blocks', '3 blocks', 'N', '63', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1997-08-26', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(22, 'Efficiency', 'Monroe Dare V', 'Guadalupe Murray', '215 Marquardt Highway', '(443) 288-1376', '356-586-9581 x4232', 'claudia54@example.com', '2019-12-18', 601, 770, 'Y', 'year', 'N', 'N', '5', '3', 'N', '2 blocks', '3 blocks', 'Y', '89', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Some Additional Info on the apartment', '1989-06-13', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(23, 'Apartment', 'Rusty Weimann', 'Hester Cassin', '8302 Percival Plain', '473-779-0541 x94842', '(234) 850-8439 x60744', 'jjohns@example.net', '2020-08-16', 320, 990, 'N', 'year', 'Y', 'Y', '1', '1', 'Y', '2 blocks', '3 blocks', 'N', '129', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '1971-08-19', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(24, 'Townhouse', 'Louisa Rodriguez DVM', 'Luisa Feest', '3377 Orn Bypass Suite 329', '(758) 430-5595 x8431', '636-908-6501', 'amertz@example.com', '2020-01-16', 570, 987, 'Y', 'year', 'Y', 'Y', '3', '2', 'N', '2 blocks', '3 blocks', 'Y', '60', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1970-06-30', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(25, 'Townhouse', 'Albina Crist', 'Titus Farrell', '44487 Odell Trail Suite 648', '(480) 873-6799', '+1-804-803-4037', 'kprohaska@example.com', '2019-09-03', 114, 917, 'N', 'year', 'N', 'N', '5', '3', 'Y', '2 blocks', '3 blocks', 'Y', '145', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1979-03-15', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(26, 'Efficiency', 'Dr. Kelsi Bashirian DDS', 'Hobart Rath DVM', '91054 Dayton Flats Suite 894', '571-980-4488 x352', '763-996-9932', 'therese63@example.net', '1979-01-16', 102, 957, 'Y', 'year', 'N', 'N', '3', '3', 'Y', '2 blocks', '3 blocks', 'N', '71', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2018-03-23', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(27, 'Condo', 'Beryl Goldner V', 'Bernard Renner', '69198 Runolfsdottir Estates Suite 725', '1-793-627-7771', '401-837-5482 x20489', 'pagac.maria@example.org', '1970-10-14', 275, 672, 'Y', 'year', 'N', 'N', '5', '5', 'N', '2 blocks', '3 blocks', 'N', '74', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2012-04-25', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(28, 'Duplex', 'Mr. Gustave Hoppe', 'Dr. Zita Heidenreich', '936 Priscilla Cliffs', '378-216-6877', '+17912644054', 'lela.jerde@example.net', '1992-06-15', 856, 714, 'Y', 'year', 'N', 'N', '1', '1', 'N', '2 blocks', '3 blocks', 'N', '189', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1996-01-26', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(29, 'Efficiency', 'Dr. Glen Baumbach', 'Deven Olson', '49232 Manuela Branch', '(851) 285-3619 x72285', '1-914-349-9496', 'dgoyette@example.com', '1972-12-31', 753, 575, 'Y', 'year', 'N', 'Y', '1', '2', 'N', '2 blocks', '3 blocks', 'Y', '78', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '2008-04-01', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(30, 'House', 'Ewell Torphy', 'Elisabeth Casper', '35356 Valentine Islands', '464.980.8431 x697', '(843) 972-3273 x76267', 'gheathcote@example.org', '2018-01-30', 408, 723, 'N', 'year', 'Y', 'N', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '183', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1978-02-05', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(31, 'Duplex', 'Abigale Erdman DVM', 'Rebeca Walsh', '65861 Hermann Glen Apt. 430', '1-673-867-7387 x5159', '378.667.6745 x931', 'dawson.streich@example.org', '1975-12-23', 908, 825, 'Y', 'year', 'Y', 'Y', '1', '3', 'N', '2 blocks', '3 blocks', 'Y', '170', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1984-05-29', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(32, 'Townhouse', 'Mr. Kadin Armstrong DDS', 'Ms. Leslie Lemke', '7450 Zboncak Causeway', '812.638.3436 x91134', '+1-591-996-5945', 'leslie04@example.org', '2012-06-25', 649, 973, 'Y', 'year', 'Y', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '96', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1975-11-11', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(33, 'Condo', 'Jamal Schmidt', 'Noelia White', '499 Abshire Radial', '207-766-1276', '1-772-606-1998 x09491', 'garett83@example.org', '2015-09-20', 983, 510, 'N', 'year', 'N', 'Y', '3', '2', 'N', '2 blocks', '3 blocks', 'N', '152', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1973-08-08', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(34, 'Efficiency', 'Madge Cummerata', 'Jovanny Jaskolski', '338 Borer Passage', '302-700-1681', '1-823-247-3042', 'drutherford@example.org', '2017-07-20', 861, 905, 'N', 'year', 'Y', 'N', '3', '2', 'Y', '2 blocks', '3 blocks', 'N', '79', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1979-07-11', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(35, 'Townhouse', 'Elyssa Hilpert', 'Domenico Wisozk', '9087 Alexys Islands', '1-754-483-4848', '597-531-6101 x36299', 'markus.wilderman@example.net', '2006-04-18', 727, 567, 'Y', 'year', 'N', 'Y', '1', '1', 'Y', '2 blocks', '3 blocks', 'N', '117', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Some Additional Info on the apartment', '1974-04-16', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(36, 'Efficiency', 'Lillie Donnelly', 'Mrs. Pearline King Sr.', '55161 Bernier Inlet', '(731) 304-9837 x2152', '1-767-400-6845 x7896', 'vivian18@example.org', '1971-05-29', 629, 963, 'Y', 'year', 'Y', 'N', '4', '4', 'Y', '2 blocks', '3 blocks', 'Y', '146', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1993-03-19', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(37, 'Efficiency', 'Ernie Sawayn', 'Maude Ziemann', '2870 McGlynn Crescent Apt. 940', '206.483.4937 x42316', '+1.928.471.4116', 'yasmeen.walsh@example.net', '2003-10-05', 905, 546, 'Y', 'year', 'N', 'N', '4', '1', 'Y', '2 blocks', '3 blocks', 'Y', '107', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1986-05-28', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(38, 'Duplex', 'Caden Toy', 'Dr. Carey Kunde', '2778 Spencer Forge', '(771) 823-9387', '395-409-4712 x242', 'denesik.jess@example.com', '2008-07-12', 857, 722, 'N', 'year', 'Y', 'Y', '4', '2', 'N', '2 blocks', '3 blocks', 'Y', '175', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1995-08-26', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(39, 'Room', 'Alene McDermott I', 'Myrtie Murazik MD', '817 West Tunnel Apt. 899', '+1.759.872.7701', '1-847-200-5455 x7020', 'abbott.mafalda@example.org', '1979-03-09', 958, 563, 'Y', 'year', 'N', 'Y', '4', '1', 'N', '2 blocks', '3 blocks', 'Y', '175', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2003-01-10', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(40, 'Room', 'Vince Hettinger', 'Dr. Marcus Towne I', '70574 Koepp Parks', '1-958-474-1000', '1-928-841-0249', 'cleve82@example.com', '1972-03-29', 857, 959, 'Y', 'year', 'N', 'N', '1', '5', 'Y', '2 blocks', '3 blocks', 'N', '53', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1970-04-18', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(41, 'Condo', 'Kamille Block', 'Eudora Bins', '55993 Kraig Ramp Suite 633', '+1-897-950-1305', '+1-521-723-3368', 'graham.dashawn@example.org', '1997-06-02', 752, 909, 'Y', 'year', 'Y', 'Y', '4', '3', 'N', '2 blocks', '3 blocks', 'Y', '102', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2017-09-09', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(42, 'House', 'Dr. Brenden Hill III', 'Luna Corkery', '50442 Kamryn Grove', '(331) 525-5422', '238.523.0946', 'ashleigh.rowe@example.org', '1986-07-21', 676, 738, 'Y', 'year', 'N', 'N', '5', '3', 'N', '2 blocks', '3 blocks', 'Y', '138', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'Some Additional Info on the apartment', '1997-05-07', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(43, 'Apartment', 'Ned Keebler', 'Angelita Grant', '710 Georgianna Walk', '958-434-1744 x49439', '674.446.0385 x3885', 'lois92@example.com', '2016-04-16', 721, 850, 'Y', 'year', 'N', 'Y', '3', '5', 'Y', '2 blocks', '3 blocks', 'N', '110', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1978-10-29', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(44, 'Apartment', 'Carter Friesen', 'Zoie Bruen', '733 Martin View Apt. 145', '+1.936.503.1687', '367.470.2720 x58457', 'joyce.dooley@example.org', '2009-05-31', 477, 628, 'N', 'year', 'N', 'Y', '4', '5', 'N', '2 blocks', '3 blocks', 'N', '94', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Some Additional Info on the apartment', '1987-10-07', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(45, 'Duplex', 'Dr. Lilla Hansen Sr.', 'Evie Abbott', '37272 Axel Ramp Apt. 684', '940.436.6901 x32440', '429-527-3675 x222', 'icie85@example.net', '1984-10-04', 272, 717, 'N', 'year', 'Y', 'Y', '3', '1', 'Y', '2 blocks', '3 blocks', 'Y', '60', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Some Additional Info on the apartment', '1984-10-02', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(46, 'Room', 'Aaron Davis', 'Mrs. Beaulah Beahan', '926 Cindy Ridge Suite 130', '429.776.5833 x21869', '641-705-9203 x325', 'kevon.rosenbaum@example.com', '2006-01-08', 756, 656, 'Y', 'year', 'N', 'Y', '3', '4', 'Y', '2 blocks', '3 blocks', 'Y', '123', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '1991-10-14', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(47, 'Efficiency', 'Madie Erdman', 'Eric Weimann', '88028 Sincere Plain', '+1-954-207-9135', '395.549.5008 x72580', 'ocie.simonis@example.net', '1987-11-27', 862, 755, 'Y', 'year', 'Y', 'Y', '2', '5', 'N', '2 blocks', '3 blocks', 'Y', '69', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Some Additional Info on the apartment', '2008-03-19', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(48, 'House', 'Ressie Satterfield PhD', 'Gregorio Feest', '71940 Koelpin Course Apt. 079', '974-286-3613 x60397', '1-797-256-0385 x6205', 'spfannerstill@example.net', '1976-03-05', 887, 845, 'Y', 'year', 'N', 'N', '5', '1', 'Y', '2 blocks', '3 blocks', 'Y', '60', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '1989-08-22', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(49, 'Apartment', 'Mariano Wuckert', 'Dr. Krista Schowalter', '160 Kip Roads Apt. 087', '401-540-8276', '838.764.0576', 'bethel04@example.org', '2003-05-11', 712, 723, 'N', 'year', 'Y', 'Y', '1', '2', 'N', '2 blocks', '3 blocks', 'N', '145', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'Some Additional Info on the apartment', '2007-06-21', 'Web Entry', 'Y', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(50, 'Apartment', 'Laverna Fisher I', 'Tyrique Feil DDS', '2582 Weissnat Meadows', '369.750.6467', '297-934-2052 x181', 'webster.larkin@example.com', '2019-02-16', 953, 932, 'N', 'year', 'N', 'Y', '1', '5', 'Y', '2 blocks', '3 blocks', 'Y', '93', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y', 'Some Additional Info on the apartment', '2018-10-30', 'Web Entry', 'N', '2019-09-06 23:04:18', '2019-09-06 23:04:18'),
(51, 'Room', 'Kharel', 'Amun', '1110 Dr. Martin Luther King Jr. Ave NE', '662-497-8671', NULL, NULL, '2019-10-10', 50000, 100, 'N', NULL, 'N', 'E', NULL, NULL, 'N', NULL, NULL, 'N', NULL, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, NULL, NULL, NULL, '2019-09-06 23:05:48', '2019-09-06 23:05:48');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
