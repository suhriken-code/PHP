-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 09:06 AM
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
-- Database: `voetbal`
--

-- --------------------------------------------------------

--
-- Table structure for table `voetballers`
--

CREATE TABLE `voetballers` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `achternaam` varchar(50) NOT NULL,
  `geboortedatum` date DEFAULT NULL,
  `foto_url` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voetballers`
--

INSERT INTO `voetballers` (`id`, `voornaam`, `achternaam`, `geboortedatum`, `foto_url`) VALUES
(80, 'Jan', 'Jongbloed', '1940-11-25', 'Jan_Jongbloed.jpg'),
(81, 'Wim', 'Suurbier', '1945-01-16', 'Wim_Suurbier.jpg'),
(82, 'Ruud', 'Krol', '1949-03-24', 'Ruud_Krol.jpg'),
(83, 'Wim', 'Rijsbergen', '1952-01-18', 'Wim_Rijsbergen.jpg'),
(84, 'Arie', 'Haan', '1948-11-16', 'Arie_Haan.jpg'),
(85, 'Theo', 'de Jong', '1947-08-11', 'Theo_de_Jong.jpg'),
(86, 'Johan', 'Neeskens', '1951-09-15', 'Johan_Neeskens.jpg'),
(87, 'Wim', 'van Hanegem', '1944-02-20', 'Wim_van_Hanegem.jpg'),
(88, 'Johan', 'Cruijff', '1947-04-25', 'Johan_Cruijff.jpg'),
(89, 'Johnny', 'Rep', '1951-11-25', 'Johnny_Rep.jpg'),
(90, 'Rob', 'Rensenbrink', '1947-07-03', 'Rob_Rensenbrink.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `voetballers`
--
ALTER TABLE `voetballers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `voetballers`
--
ALTER TABLE `voetballers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
