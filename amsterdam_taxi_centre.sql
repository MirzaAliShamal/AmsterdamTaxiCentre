-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 09:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amsterdam_taxi_centre`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` int(11) NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flight_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_datetime` timestamp NULL DEFAULT NULL,
  `return_datetime` timestamp NULL DEFAULT NULL,
  `vehicle_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `large_cases` int(11) DEFAULT NULL,
  `small_cases` int(11) DEFAULT NULL,
  `payment_method` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1. Cash in Car, 2. Card in Car, 3. Pay Online',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci,
  `fare` double(8,2) NOT NULL,
  `status` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0.Pending, 1. Accepted, 2. Completed, 4. Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `uuid`, `from`, `from_lat`, `from_long`, `to`, `to_lat`, `to_long`, `flight_no`, `arrival_from`, `airline`, `meeting_point`, `ship_name`, `direction`, `pickup_datetime`, `return_datetime`, `vehicle_type`, `passenger`, `large_cases`, `small_cases`, `payment_method`, `phone`, `name`, `email`, `instruction`, `fare`, `status`, `created_at`, `updated_at`) VALUES
(26, 87950583, 'Netherlands American Cemetery, Amerikaanse Begraafplaats, Margraten, Netherlands', '50.8179244', '5.8052218', 'Neer, Netherlands', '51.259826', '5.9893002', NULL, NULL, NULL, NULL, NULL, '1', '2021-03-30 04:28:00', NULL, 'Saloon', 4, 2, 2, '1', '+923004273023', 'fdas dsa', 'shahzadahmed63@gmail.com', 'hello there', 81.00, '0', '2021-03-29 22:29:20', '2021-03-29 22:29:20'),
(27, 46554934, 'Franeker, Netherlands', '53.1888206', '5.5564857', 'Sneek, Netherlands', '53.0337476', '5.6556473', NULL, NULL, NULL, NULL, NULL, '1', '2021-03-30 06:06:00', NULL, 'Saloon', 4, 2, 2, '1', '61032131233', 'fdsafd', 'hello@gmail.com', 'dsafasdf', 33.00, '0', '2021-03-31 00:07:32', '2021-03-31 00:07:32'),
(28, 33006749, 'Franeker, Netherlands', '53.1888206', '5.5564857', 'Sneek, Netherlands', '53.0337476', '5.6556473', NULL, NULL, NULL, NULL, NULL, '1', '2021-03-30 06:06:00', NULL, 'Saloon', 4, 2, 2, '1', '61032131233', 'fdsafd', 'hello@gmail.com', 'dsafasdf', 33.00, '0', '2021-03-31 00:11:55', '2021-03-31 00:11:55'),
(29, 74027436, 'Dordrecht, Netherlands', '51.81329789999999', '4.6900929', 'Netherlands', '52.132633', '5.291265999999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-03-31 06:15:00', NULL, 'Saloon', 4, 2, 2, '1', '1312312313', 'dsa', 'shahzadahmed63@gmail.com', 'my new booking', 137.00, '0', '2021-03-31 00:16:48', '2021-03-31 00:16:48'),
(30, 53664009, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Adelaarsweg 90, Amsterdam, Nederland', '52.3877023', '4.9178322', 'Jsjdsj', 'Jeekek', 'Snsjsn', 'at arrivals with a name board', NULL, '1', '2021-04-01 03:25:00', NULL, 'Saloon', 4, 2, 2, '2', '0684391949', '222', 'achmed_amakranvb@hotmail.com', NULL, 54.00, '0', '2021-04-01 01:26:20', '2021-04-01 01:26:20'),
(31, 19063063, 'Amsterdam, Netherlands', '52.3675734', '4.9041389', 'Breda, Netherlands', '51.5719149', '4.768323', NULL, NULL, NULL, NULL, NULL, '2', '2021-04-03 16:17:00', '2021-04-03 23:17:00', 'Saloon', 4, 2, 2, '1', '43223412', 'dsffasdfas', 'hello@gmail.com', 'fasdfasdf', 341.96, '0', '2021-04-03 16:18:00', '2021-04-03 16:18:00'),
(32, 12037705, 'Amsterdam, Netherlands', '52.3675734', '4.9041389', 'Culemborg, Netherlands', '51.9561076', '5.240044800000001', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-03 21:00:00', NULL, 'Bus', 8, 4, 8, '1', '3001234567', 'Shan Shahid', 'shahzadahmed63@gmail.com', 'lorem ipsum sit imit', 170.18, '0', '2021-04-03 19:00:52', '2021-04-03 19:00:52'),
(33, 76973461, 'Culemborg, Netherlands', '51.9561076', '5.240044800000001', 'Delft, Netherlands', '52.01157689999999', '4.3570677', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-03 21:01:00', NULL, 'Sedan', 4, 2, 2, '2', '32131231', 'fjakls', 'falksdjfsl@jlkfasd.com', 'fsadkjflasdf;as', 139.70, '0', '2021-04-03 19:04:22', '2021-04-03 19:04:22'),
(34, 88255422, 'Arnhem, Netherlands', '51.9851034', '5.898729599999999', 'Floradorp, Amsterdam, Netherlands', '52.3989074', '4.9148681', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-08 21:37:00', NULL, 'Sedan', 4, 2, 2, '1', '3004273023', 'Shahzad', 'hishahzadahmed@gmail.com', 'hello there', 169.95, '0', '2021-04-08 19:38:34', '2021-04-08 19:38:34'),
(35, 43146212, 'Hengelo, Netherlands', '52.2574121', '6.7927725', 'Spijkenisse, Netherlands', '51.85615019999999', '4.2972181', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 18:28:00', NULL, 'Sedan', 4, 2, 2, '1', '3004273024', 'Shahzad AHmed', 'hishahzadahmed@gmail.com', 'hello there', 335.10, '0', '2021-04-09 16:28:59', '2021-04-09 16:28:59'),
(36, 63134976, 'Deventer, Netherlands', '52.2660751', '6.1552165', 'Enschede, Netherlands', '52.2215372', '6.8936619', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 18:32:00', NULL, 'Stationwagen', 4, 2, 4, '2', '3310312312312', 'Shan', 'hishahzadahmed@gmail.com', 'fjasld', 104.72, '0', '2021-04-09 16:33:29', '2021-04-09 16:33:29'),
(37, 80623163, 'Krimpen aan den IJssel, Netherlands', '51.9143534', '4.5962325', 'Deventer, Netherlands', '52.2660751', '6.1552165', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 18:36:00', NULL, 'Sedan', 4, 2, 2, '1', '2131231', 'shahi', 'hishahzadahmed@gmail.com', 'fjlasdfl', 230.24, '0', '2021-04-09 16:36:58', '2021-04-09 16:36:58'),
(38, 26231085, 'Deventer, Netherlands', '52.2660751', '6.1552165', 'Emmen, Netherlands', '52.7858037', '6.8975851', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 18:38:00', NULL, 'Bus', 8, 4, 8, '1', '2', 'Shahzad Ahmed', 'hello@gmail.com', 'd', 182.00, '0', '2021-04-09 16:39:10', '2021-04-09 16:39:10'),
(39, 94940299, 'Bergen op Zoom, Netherlands', '51.49457580000001', '4.2871622', 'Joure, Netherlands', '52.965521', '5.797177899999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 18:50:00', NULL, 'Stationwagen', 4, 2, 4, '1', '+923004273023', 'abc abc', 'fasd2fa@gja.com', 'jkj', 378.09, '0', '2021-04-09 17:04:02', '2021-04-09 17:04:02'),
(40, 48226382, 'Adelaarsweg, Amsterdam, Nederland', '52.3872059', '4.9167321', 'Amsterdam Centraal, Stationsplein, Amsterdam, Nederland', '52.37905319999999', '4.9003621', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 23:06:00', NULL, 'Sedan', 4, 2, 2, '1', '0685672263', 'jan beton', 'achmed_amakranvb@hotmail.com', 'bellen als buiten', 15.00, '0', '2021-04-09 17:07:36', '2021-04-09 17:07:36'),
(41, 58077688, 'h', NULL, NULL, 'h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:04:00', NULL, 'Sedan', 4, 2, 2, '1', '+923004273023', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'hello there', 15.00, '0', '2021-04-09 17:20:19', '2021-04-09 17:20:19'),
(42, 58681801, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Venlo, Nederland', '51.3703748', '6.172403099999999', '45fg4', 'London', 'KlM', 'at arrivals with a name board', NULL, '1', '2021-04-09 19:21:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Achm', 'achmed_amakranvb@hotmail.com', 'Bellen bij aankomst', 373.00, '0', '2021-04-09 17:22:41', '2021-04-09 17:22:41'),
(43, 10668789, 'Barendrecht, Netherlands', '51.8515088', '4.5485809', 'Hengelo, Netherlands', '52.2574121', '6.7927725', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:04:00', NULL, 'Stationwagen', 4, 2, 4, '1', '+923004273023', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'hello there wowwwwwwwwwwwwww', 317.74, '0', '2021-04-09 17:24:47', '2021-04-09 17:24:47'),
(44, 24863569, 'Haarlem, Nederland', '52.3873878', '4.6462194', 'Amsterdam Centraal, Stationsplein, Amsterdam, Nederland', '52.37905319999999', '4.9003621', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:24:00', NULL, 'Sedan', 4, 2, 2, '1', '0684391949', 'Ach', 'achmed_amakranvb@hotmail.com', NULL, 37.89, '0', '2021-04-09 17:25:09', '2021-04-09 17:25:09'),
(45, 41174070, 'Amersfoort, Netherlands', '52.1561113', '5.387826599999999', 'Weert, Netherlands', '51.2439415', '5.7142222', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:29:00', NULL, 'Sedan', 4, 2, 2, '1', '2342342', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'fsaldjfas', 228.75, '0', '2021-04-09 17:29:40', '2021-04-09 17:29:40'),
(46, 92868017, 'F.F.L.O., Tilburgseweg, Goirle, Netherlands', '51.5215249', '5.066993200000001', 'Roosendaal, Netherlands', '51.535849', '4.465321299999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:31:00', NULL, 'Stationwagen', 4, 2, 4, '1', '234324234', 'Shahzad Ahmed', 'hishazadahmed@gmail.com', 'jslkadfja;sd', 88.87, '0', '2021-04-09 17:33:11', '2021-04-09 17:33:11'),
(47, 88274030, 'Urk, Netherlands', '52.66305329999999', '5.598946499999999', 'Deventer, Netherlands', '52.2660751', '6.1552165', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:34:00', NULL, 'Stationwagen', 4, 2, 4, '1', '2131231231', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'hello there how are you', 127.49, '0', '2021-04-09 17:35:03', '2021-04-09 17:35:03'),
(48, 28991149, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Fagotstraat, Eindhoven, Netherlands', '51.4349135', '5.5212621', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:38:00', NULL, 'Stationwagen', 4, 2, 4, '2', '13212', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'asdfasd', 208.94, '0', '2021-04-09 17:39:10', '2021-04-09 17:39:10'),
(49, 66011020, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Fagotstraat, Eindhoven, Netherlands', '51.4349135', '5.5212621', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 19:38:00', NULL, 'Stationwagen', 4, 2, 4, '2', '13212', 'Shahzad Ahmed', 'hishahzadahmed@gmail.com', 'asdfasd', 208.94, '0', '2021-04-09 17:39:46', '2021-04-09 17:39:46'),
(50, 18996973, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Adelaarsweg, Amsterdam, Nederland', '52.3872059', '4.9167321', 'Kl1356', 'London', 'KLM', 'at arrivals with a name board', NULL, '1', '2021-04-09 19:44:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Jan', 'achmed_amakranvb@hotmail.com', 'Bellen bij aankomst', 46.48, '0', '2021-04-09 17:45:20', '2021-04-09 17:45:20'),
(51, 22536893, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'WTC Amsterdam Business Club, Strawinskylaan, Amsterdam, Nederland', '52.34058899999999', '4.874803999999999', 'Ksks', 'Hshshsh', 'Enenensjsj', 'at arrivals with a name board', NULL, '1', '2021-04-09 19:55:00', NULL, 'Sedan', 4, 2, 2, '1', '0684391949', 'Ja', 'achmed_amakranvb@hotmail.com', 'Hh', 21.81, '0', '2021-04-09 17:56:42', '2021-04-09 17:56:42'),
(52, 57457457, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Sloterdijk station, Orlyplein, Amsterdam, Nederland', '52.3888316', '4.837304500000001', 'Kajaaja', 'London', 'KLM', 'at arrivals with a name board', NULL, '1', '2021-04-09 20:55:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Ahj', 'achmed_amakranvb@hotmail.com', NULL, 25.99, '0', '2021-04-09 18:56:47', '2021-04-09 18:56:47'),
(53, 44964283, 'Felison Cruise Terminal IJmuiden', '52.45937619999999', '4.568349099999999', 'Amsterdam Airport Schiphol', '4.7682744', '5.5564857', NULL, NULL, NULL, NULL, 'dasad', '1', '2021-04-09 21:12:00', NULL, 'Stationwagen', 4, 2, 4, '2', '32423423', 'fdasfasd', 'hishahzadahmed@gmail.com', 'fasdfasd', 58.00, '0', '2021-04-09 19:14:18', '2021-04-09 19:14:18'),
(54, 29963288, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Cruise Terminal Rotterdam', '4.4867355', NULL, '123', 'abc', 'xyz', 'at arrivals with a name board', NULL, '1', '2021-04-09 21:20:00', NULL, 'Sedan', 4, 2, 2, '1', '123141241', 'Shahzad Ahmed', 'fasd2fa@gja.com', 'asdfasdf', 103.83, '0', '2021-04-09 19:21:14', '2021-04-09 19:21:14'),
(55, 74042215, 'Gouda, Netherlands', '52.0115205', '4.7104633', 'Apeldoorn, Netherlands', '52.21115700000001', '5.9699231', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 21:21:00', NULL, 'Sedan', 4, 2, 2, '2', '123132123', 'adfs adfs', 'hello@gmail.com', 'fdasf', 173.41, '0', '2021-04-09 19:22:09', '2021-04-09 19:22:09'),
(56, 94312777, 'Passenger Terminal Amsterdam', '52.3778637', '4.915205400000001', 'Rotterdam The Hague Airport', '4.4398832', NULL, NULL, NULL, NULL, NULL, '123321fasdfads', '1', '2021-04-09 21:22:00', NULL, 'Stationwagen', 4, 2, 4, '1', '324234', 'Shahzad Ahmed', 'fasd2fa@gja.com', 'dsf', 131.08, '0', '2021-04-09 19:22:55', '2021-04-09 19:22:55'),
(57, 91962394, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Noordwijk, Nederland', '52.2399885', '4.4500094', 'Kl1256', 'London', 'KLM', 'at arrivals with a name board', NULL, '1', '2021-04-09 21:24:00', NULL, 'Sedan', 4, 2, 2, '1', '0684391949', 'Ahmed', 'achmed_amakranvb@hotmail.com', NULL, 48.41, '0', '2021-04-09 19:24:56', '2021-04-09 19:24:56'),
(58, 39129253, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '2', '2021-04-29 21:27:00', '2021-04-30 17:27:00', 'Stationwagen', 4, 2, 4, '1', '12312', 'abc ba', 'fasd2fa@gja.com', 'adsfasd', 623.39, '0', '2021-04-09 19:28:12', '2021-04-09 19:28:12'),
(59, 45123396, 'Den Haag, Netherlands', '52.0704978', '4.3006999', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 21:29:00', NULL, 'Stationwagen', 4, 2, 4, '1', '123123', 'adfs adfs', 'hello@gmail.com', 'dsaf', 287.46, '0', '2021-04-09 19:30:10', '2021-04-09 19:30:10'),
(60, 78061366, 'Den Haag, Netherlands', '52.0704978', '4.3006999', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 21:29:00', NULL, 'Stationwagen', 4, 2, 4, '1', '123123', 'adfs adfs', 'hello@gmail.com', 'dsaf', 287.46, '0', '2021-04-09 19:30:37', '2021-04-09 19:30:37'),
(61, 11366822, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '2', '2021-05-04 21:31:00', '2021-04-20 21:28:00', 'Bus', 8, 4, 8, '2', '11111', 'abc ba', 'fasd2fa@gja.com', 'dsf', 1030.61, '0', '2021-04-09 19:31:37', '2021-04-09 19:31:37'),
(62, 92727094, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-09 21:33:00', NULL, 'Stationwagen', 4, 2, 4, '1', '12312', 'adfs adfs', 'hello@gmail.com', 'dfs', 382.00, '0', '2021-04-09 19:34:06', '2021-04-09 19:34:06'),
(63, 47263513, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Sloterdijk station, Orlyplein, Amsterdam, Nederland', '52.3888316', '4.837304500000001', 'KL1212', 'Londom', 'TRANSAVIA', 'at arrivals with a name board', NULL, '2', '2021-04-09 21:36:00', '2021-04-09 23:30:00', 'Sedan', 4, 2, 2, '2', '0684391949', 'Ja', 'achmed_amakranvb@hotmail.com', 'Bellen bij aankomst', 25.99, '0', '2021-04-09 19:38:23', '2021-04-09 19:38:23'),
(64, 54326398, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Bergen op Zoom, Nederland', '51.49457580000001', '4.2871622', 'KL123', 'London', 'KLM', 'at arrivals with a name board', NULL, '2', '2021-04-10 19:02:00', '2021-04-12 19:02:00', 'Sedan', 4, 2, 2, '1', '0684391949', 'Ach', 'achmed_amakranvb@hotmail.com', 'Bellen', 207.05, '0', '2021-04-10 17:03:57', '2021-04-10 17:03:57'),
(65, 70467770, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Mosveld 12, Amsterdam, Nederland', '52.39123710000001', '4.9157753', 'kl1098', 'London', 'KLM', 'at arrivals with a name board', NULL, '2', '2021-04-10 18:12:00', '2021-04-22 16:12:00', 'Bus', 8, 4, 8, '2', '0639245938', 'Youssef', 'youssefj@live.nl', 'Mooi', 142.63, '0', '2021-04-10 17:05:04', '2021-04-10 17:05:04'),
(66, 43791891, 'Amsterdam Airport Schiphol', '52.3105386', '4.7682744', 'Utrecht, Nederland', '52.09073739999999', '5.1214201', 'KL123', 'Praag', 'KLM', 'at arrivals with a name board', NULL, '2', '2021-04-10 19:05:00', '2021-04-14 20:05:00', 'Sedan', 4, 2, 2, '1', '0684391949', 'Ac', 'achmed_amakranvb@hotmail.com', NULL, 82.34, '0', '2021-04-10 17:05:57', '2021-04-10 17:05:57'),
(67, 75072733, 'Adelaarsweg 96, Amsterdam, Nederland', '52.3878881', '4.9182469', 'WTC Amsterdam Business Club, Strawinskylaan, Amsterdam, Nederland', '52.34058899999999', '4.874803999999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 23:18:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Ac', 'achmed_amakranvb@hotmail.com', 'Bellen', 42.58, '0', '2021-04-10 21:19:01', '2021-04-10 21:19:01'),
(68, 23442270, 'Arnhem, Netherlands', '51.9851034', '5.898729599999999', 'Deventer, Netherlands', '52.2660751', '6.1552165', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 23:50:00', NULL, 'Bus', 8, 4, 8, '1', '1231231233', 'Shahzad Ahmed', 'hello@gmail.com', 'fsadf', 93.00, '0', '2021-04-10 22:14:41', '2021-04-10 22:14:41'),
(69, 99807388, 'Mosveld, Amsterdam, Nederland', '52.3913372', '4.9126194', 'Rotterdam The Hague Airport', '4.4398832', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:14:00', NULL, 'Sedan', 4, 2, 2, '1', '0639245938', 'Youssef', 'youssefj@live.nl', NULL, 179.59, '0', '2021-04-10 22:14:48', '2021-04-10 22:14:48'),
(70, 58802153, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Den Haag, Netherlands', '52.0704978', '4.3006999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:14:00', NULL, 'Stationwagen', 4, 2, 4, '1', '234234', 'abc ba', 'abc@gmail.com', 'dsfadfs', 51.15, '0', '2021-04-10 22:15:24', '2021-04-10 22:15:24'),
(71, 52971641, 'Schiedam, Netherlands', '51.91695989999999', '4.398818599999999', 'Fagotstraat, Eindhoven, Netherlands', '51.4349135', '5.5212621', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:17:00', NULL, 'Bus', 8, 4, 8, '1', '3242', 'Shahzad Ahmed', 'abc@gmail.com', 'dfasfds', 254.00, '0', '2021-04-10 22:17:47', '2021-04-10 22:17:47'),
(72, 13344617, 'Arnhem, Netherlands', '51.9851034', '5.898729599999999', 'Floradorp, Amsterdam, Netherlands', '52.3989074', '4.9148681', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:18:00', NULL, 'Sedan', 4, 2, 2, '1', '324234', 'd', 'fasd2fa@gja.com', 'dsfsd', 221.84, '0', '2021-04-10 22:19:18', '2021-04-10 22:19:18'),
(73, 37946969, 'Deventer, Netherlands', '52.2660751', '6.1552165', 'Franeker, Netherlands', '53.1888206', '5.5564857', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:19:00', NULL, 'Bus', 8, 4, 8, '1', '2342', 'adfs adfs', 'hello@gmail.com', 'fsd', 272.00, '0', '2021-04-10 22:19:50', '2021-04-10 22:19:50'),
(74, 11899815, 'Capelle aan den IJssel, Netherlands', '51.9301505', '4.5777053', 'Deventer, Netherlands', '52.2660751', '6.1552165', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:19:00', NULL, 'Sedan', 4, 2, 2, '1', '123132', 'Shahzad Ahmed', 'abc@gmail.com', 'fasdfad', 273.00, '0', '2021-04-10 22:21:30', '2021-04-10 22:21:30'),
(75, 26913747, 'Katwijk aan Zee, Nederland', '52.1992517', '4.4114135', 'Eindhoven Airport', '5.378423899999999', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-04-10 00:22:00', NULL, 'Sedan', 4, 2, 2, '2', '0639245938', 'Youssef', 'youssefj@live.nl', NULL, 296.78, '0', '2021-04-10 22:22:55', '2021-04-10 22:22:55'),
(76, 90585202, 'Amsterdam Centraal, Stationsplein, Amsterdam, Nederland', '52.37905319999999', '4.9003621', 'IJdijk, Amsterdam, Nederland', '52.3705177', '4.9763132', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-11 14:12:00', NULL, 'Sedan', 4, 2, 2, '1', '0639245938', 'Youssef', 'youssefj@live.nl', 'Aaa', 16.79, '0', '2021-04-11 12:14:02', '2021-04-11 12:14:02'),
(77, 61813995, 'Cruise Terminal Rotterdam', '51.90585979999999', '4.4867355', 'Rotterdam The Hague Airport', '4.4398832', NULL, NULL, NULL, NULL, NULL, 'Abinormal', '2', '2021-04-11 14:17:00', '2021-04-28 02:17:00', 'Stationwagen', 4, 2, 4, '2', '0639245938', 'Youssef', 'youssefj@live.nl', 'Jajaja', 43.10, '0', '2021-04-11 12:18:58', '2021-04-11 12:18:58'),
(78, 10823229, 'Haarlem, Nederland', '52.3873878', '4.6462194', 'Hilversum, Nederland', '52.2291696', '5.166897400000001', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-11 22:59:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Ac', 'achmed_amakranvb@hotmail.com', NULL, 108.03, '0', '2021-04-11 21:00:41', '2021-04-11 21:00:41'),
(79, 76316795, 'Nijmegen, Nederland', '51.8125626', '5.8372264', 'Kampen, Nederland', '52.5579645', '5.914461699999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-12 11:28:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Hhaha', 'naahaj@hotmail.com', NULL, 237.49, '0', '2021-04-12 09:28:46', '2021-04-12 09:28:46'),
(80, 18690876, 'Mosplein, Amsterdam, Nederland', '52.3919882', '4.9124036', 'Rotterdam Airportplein, Rotterdam, Nederland', '51.9479605', '4.434355399999999', NULL, NULL, NULL, NULL, NULL, '2', '2021-04-12 15:49:00', '2021-04-29 14:49:00', 'Bus', 8, 4, 8, '1', '0639245938', 'Youssef Jafar', 'youssefj@live.nl', NULL, 447.60, '0', '2021-04-12 13:50:34', '2021-04-12 13:50:34'),
(81, 21392889, 'Haarlem, Nederland', '52.3873878', '4.6462194', 'Breda, Nederland', '51.5719149', '4.768323', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-13 14:34:00', NULL, 'Sedan', 4, 2, 2, '2', '0684391949', 'Ac', 'achmed_amakranvb@hotmail.com', NULL, 258.61, '0', '2021-04-13 12:35:09', '2021-04-13 12:35:09'),
(82, 29296439, 'Atatürk, Amsterdam, Nederland', '52.4031022', '4.897777899999999', 'Zaans Medisch Centrum, Koningin Julianaplein, Zaandam, Nederland', '52.45283389999999', '4.827164', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-14 15:30:00', NULL, 'Sedan', 4, 2, 2, '1', '81234567', 'Ami', 'youssefj@live.nl', NULL, 23.87, '0', '2021-04-14 13:31:29', '2021-04-14 13:31:29'),
(83, 50999928, 'Amsterdam, Netherlands', '52.3675734', '4.9041389', 'Floradorp, Amsterdam, Netherlands', '52.3989074', '4.9148681', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-15 20:15:00', NULL, 'Sedan', 4, 2, 2, '1', NULL, 'abc ba', 'abc@gmail.com', 'asdfasdf', 10.00, '0', '2021-04-15 18:17:18', '2021-04-15 18:17:18'),
(84, 44537734, 'Arnhem, Netherlands', '51.9851034', '5.898729599999999', 'Den Haag, Netherlands', '52.0704978', '4.3006999', NULL, NULL, NULL, NULL, NULL, '1', '2021-04-15 20:20:00', NULL, 'Bus', 8, 4, 8, '1', '+923004273024', 'wow wow', 'wow@gmail.coom', 'hello there', 238.00, '0', '2021-04-15 18:28:43', '2021-04-15 18:28:43'),
(85, 84835065, 'WTC Amsterdam Business Club, Strawinskylaan, Amsterdam, Nederland', '52.34058899999999', '4.874803999999999', 'Amsterdam Airport Schiphol', '4.7682744', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-04-27 04:34:00', NULL, 'Sedan', 4, 2, 2, '1', '+31684391949', 'Achmed', 'achmed_amakranvb@hotmail.com', NULL, 30.00, '0', '2021-04-27 02:35:30', '2021-04-27 02:35:30'),
(86, 58705876, 'WTC Amsterdam Business Club, Strawinskylaan, Amsterdam, Nederland', '52.34058899999999', '4.874803999999999', 'Amsterdam Airport Schiphol', '4.7682744', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-04-27 04:36:00', NULL, 'Bus', 8, 4, 8, '2', '+31684391949', 'Achmed', 'achmed_amakranvb@hotmail.com', NULL, 30.00, '0', '2021-04-27 02:37:17', '2021-04-27 02:37:17'),
(87, 74486629, 'Erasmusplein 28, Papendrecht, Nederland', '51.8299702', '4.6826194', 'Pieter Zeemanweg 146, Dordrecht, Nederland', '51.7736987', '4.637368299999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-05-01 06:30:00', NULL, 'Sedan', 4, 2, 2, '1', '+31687876056', 'Martin', 'lmgboss28@icloud.com', NULL, 27.76, '0', '2021-04-30 21:19:06', '2021-04-30 21:19:06'),
(88, 38443107, 'P+R Sloterdijk, Piarcoplein, Amsterdam, Nederland', '52.3900263', '4.838459299999999', 'Johan Kernstraat 30, Amsterdam, Nederland', '52.3597386', '4.828361399999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-05-04 20:30:00', NULL, 'Sedan', 4, 2, 2, '2', '+31615300109', 'imane assissou', 'yasmin_ia@hotmail.com', NULL, 15.00, '0', '2021-05-04 18:27:17', '2021-05-04 18:27:17'),
(89, 98867238, 'Mostardstraat, Voerendaal, Netherlands', '50.8556979', '5.9467156', 'Vallettastraat, Rotterdam, Netherlands', '51.949842', '4.5613229', NULL, NULL, NULL, NULL, 'rmjrykry', '1', '2021-05-12 17:19:00', NULL, 'Sedan', 4, 2, 2, '1', '+31612894738', 'tehtej', 'htehe@gmail.com', 'thyjrj', 409.00, '0', '2021-05-11 15:20:58', '2021-05-11 15:20:58'),
(90, 27292021, 'Mostardstraat, Voerendaal, Netherlands', '50.8556979', '5.9467156', 'Vallettastraat, Rotterdam, Netherlands', '51.949842', '4.5613229', NULL, NULL, NULL, NULL, 'rmjrykry', '1', '2021-05-12 17:19:00', NULL, 'Sedan', 4, 2, 2, '1', '+31612894738', 'tehtej', 'htehe@gmail.com', 'thyjrj', 409.00, '0', '2021-05-11 15:20:58', '2021-05-11 15:20:58'),
(91, 10038645, 'Cas Oorthuyskade, Amsterdam, Nederland', '52.3600563', '4.988761999999999', 'de Bijenkorf Amsterdam, Dam, Amsterdam, Nederland', '52.3736183', '4.894502000000001', NULL, NULL, NULL, NULL, NULL, '1', '2021-05-29 15:26:00', NULL, 'Sedan', 4, 2, 2, '1', '+31630165326', 'Timothy', 'timothy20@hotmail.com', NULL, 17.86, '0', '2021-05-29 13:27:54', '2021-05-29 13:27:54'),
(92, 81475796, 'Amstelstation, Julianaplein, Amsterdam, Nederland', '52.34659300000001', '4.9183552', 'Burgemeester Tellegenstraat, Amsterdam, Nederland', '52.3499833', '4.8988295', NULL, NULL, NULL, NULL, NULL, '1', '2021-06-02 20:40:00', NULL, 'Sedan', 4, 2, 2, '2', '+31614229824', 'Loraine Redjosetiko', 'l.redjosetiko@hotmail.com', NULL, 15.00, '0', '2021-06-02 18:35:16', '2021-06-02 18:35:16'),
(93, 26201329, 'Cas Oorthuyskade 29, Amsterdam, Nederland', '52.3601247', '4.988915800000001', 'Ferdinand Bolstraat 333, Amsterdam, Nederland', '52.3487993', '4.893964299999999', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-04 18:10:00', NULL, 'Sedan', 4, 2, 2, '2', '+31638579693', 'Laurens van Kalmthout', 'laurensvankalmthout@hotmail.com', NULL, 21.68, '0', '2021-07-04 15:24:29', '2021-07-04 15:24:29'),
(94, 90093110, 'Holland Casino, Max Euweplein 62, Amsterdam, Nederland', '52.3626138', '4.8823021', 'Cas Oorthuyskade 29, 1087 BB Amsterdam, Nederland', '52.3601247', '4.988915800000001', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-05 03:00:00', NULL, 'Sedan', 4, 2, 2, '2', '+31638579693', 'Laurens van Kalmthout', 'laurensvankalmthout@hotmail.com', NULL, 31.94, '0', '2021-07-05 00:29:54', '2021-07-05 00:29:54'),
(95, 67505132, 'FG Food Labs, Katshoek, Rotterdam, Netherlands', '51.926627', '4.479434200000001', 'Bestevâerstraat, Amsterdam, Netherlands', '52.3777741', '4.8586146', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-07 07:46:00', NULL, 'Sedan', 4, 2, 2, '1', '+923069387974', 'Mirza Ali Shamal', 'mali70162@gmail.com', 'Ni oye', 152.04, '0', '2021-07-07 05:47:25', '2021-07-07 05:47:25'),
(96, 89483495, 'FG Food Labs, Katshoek, Rotterdam, Netherlands', '51.926627', '4.479434200000001', 'Bestevâerstraat, Amsterdam, Netherlands', '52.3777741', '4.8586146', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-07 07:46:00', NULL, 'Sedan', 4, 2, 2, '1', '+923069387974', 'Mirza Ali Shamal', 'mali70162@gmail.com', 'Ni oye', 152.04, '0', '2021-07-07 05:48:11', '2021-07-07 05:48:11'),
(97, 56609473, 'FG Food Labs, Katshoek, Rotterdam, Netherlands', '51.926627', '4.479434200000001', 'Bestevâerstraat, Amsterdam, Netherlands', '52.3777741', '4.8586146', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-07 07:46:00', NULL, 'Sedan', 4, 2, 2, '1', '+923069387974', 'Mirza Ali Shamal', 'mali70162@gmail.com', 'Ni oye', 152.04, '0', '2021-07-07 05:49:45', '2021-07-07 05:49:45'),
(98, 61953607, 'FG Food Labs, Katshoek, Rotterdam, Netherlands', '51.926627', '4.479434200000001', 'Bestevâerstraat, Amsterdam, Netherlands', '52.3777741', '4.8586146', NULL, NULL, NULL, NULL, NULL, '1', '2021-07-07 07:46:00', NULL, 'Sedan', 4, 2, 2, '1', '+923069387974', 'Mirza Ali Shamal', 'mali70162@gmail.com', 'Ni oye', 152.04, '0', '2021-07-07 05:53:25', '2021-07-07 05:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `contact_enquiries`
--

CREATE TABLE `contact_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_17_164722_create_terminals_table', 1),
(5, '2021_03_20_154206_create_bookings_table', 1),
(6, '2021_03_21_045219_create_transactions_table', 1),
(7, '2021_03_21_083551_create_jobs_table', 1),
(8, '2021_03_21_100342_create_faqs_table', 1),
(9, '2021_03_22_081053_create_settings_table', 1),
(10, '2021_03_24_160714_alter_bookings_table_for_adding_column', 1),
(11, '2021_03_24_180131_create_contact_enquiries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'fare_rate', '2', '2021-03-28 09:22:08', '2021-03-28 09:22:08'),
(2, 'base_fare', '0', '2021-03-28 09:22:08', '2021-03-28 09:22:08'),
(3, 'miles_limit', '3', '2021-03-28 09:22:09', '2021-03-28 09:22:09'),
(4, 'confirmation_email', 'Info@amsterdamtaxicentrale.com', '2021-03-28 13:52:07', '2021-04-11 12:16:51'),
(5, 'secondary_confirmation_email', 'youssefj@live.nl', '2021-04-01 22:44:16', '2021-04-15 18:44:15'),
(6, 'bus_per_km', '3.00', '2021-04-10 18:37:40', '2021-07-04 15:28:32'),
(7, 'bus_per_minute', '0.40', '2021-04-10 18:37:40', '2021-07-04 15:28:32'),
(8, 'sedan_per_km', '1.80', '2021-04-10 18:37:40', '2021-07-07 05:46:23'),
(9, 'sedan_per_minute', '0.40', '2021-04-10 18:37:40', '2021-07-04 15:28:32'),
(10, 'booking_panel_on_time', '8:00', '2021-07-07 02:47:34', '2021-07-07 05:25:49'),
(11, 'booking_panel_off_time', '20:00', '2021-07-07 02:47:34', '2021-07-07 05:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `terminals`
--

CREATE TABLE `terminals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1. Ariport Terminal 2. Cruise Terminal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terminals`
--

INSERT INTO `terminals` (`id`, `name`, `address`, `lat`, `long`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Amsterdam Airport Schiphol', 'Amsterdam Airport Schiphol (AMS), Evert van de Beekstraat, Schiphol, Netherlands', '52.3105386', '4.7682744', '1', '2021-04-01 00:04:42', '2021-04-01 00:04:42'),
(4, 'Rotterdam The Hague Airport', 'Rotterdam The Hague Airport (RTM), Rotterdam Airportplein, Rotterdam, Netherlands', '51.95550859999999', '4.4398832', '1', '2021-04-01 00:04:55', '2021-04-01 00:04:55'),
(5, 'Eindhoven Airport', 'Eindhoven Airport, Luchthavenweg, Eindhoven, Netherlands', '51.4504567', '5.378423899999999', '1', '2021-04-01 00:05:06', '2021-04-01 00:05:06'),
(6, 'Passenger Terminal Amsterdam', 'Passenger Terminal Amsterdam, Piet Heinkade, Amsterdam, Netherlands', '52.3778637', '4.915205400000001', '2', '2021-04-01 00:05:20', '2021-04-01 00:05:20'),
(7, 'Cruise Terminal Rotterdam', 'Cruise Terminal Rotterdam, Wilhelminakade, Rotterdam, Netherlands', '51.90585979999999', '4.4867355', '2', '2021-04-01 00:05:33', '2021-04-01 00:05:33'),
(8, 'Felison Cruise Terminal IJmuiden', 'Felison Cruise Terminal, IJmuiden, Netherlands', '52.45937619999999', '4.568349099999999', '2', '2021-04-01 00:05:46', '2021-04-01 00:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1.Captured, 2. Refunded',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@atc.com', NULL, '$2y$10$NfNMMWkLqpDduAC7Kk/DN.JBbuHLOHk04KsaJ4mbdlM1ONeHLmjn2', 'admin', NULL, '2021-03-28 06:11:19', '2021-04-11 09:36:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookings_uuid_unique` (`uuid`);

--
-- Indexes for table `contact_enquiries`
--
ALTER TABLE `contact_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminals`
--
ALTER TABLE `terminals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `contact_enquiries`
--
ALTER TABLE `contact_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `terminals`
--
ALTER TABLE `terminals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
