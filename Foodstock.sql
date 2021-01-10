-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2021 at 08:10 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Foodstock`
--

-- --------------------------------------------------------

--
-- Table structure for table `Aliments`
--

CREATE TABLE `Aliments` (
  `id` int NOT NULL,
  `nom` int NOT NULL,
  `prix` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assoc_aliment_type_saison`
--

CREATE TABLE `assoc_aliment_type_saison` (
  `assoc_id` int NOT NULL,
  `assoc_id_aliment` int NOT NULL,
  `assoc_id_type` datetime NOT NULL,
  `assoc_id_Saison` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_achat`
--

CREATE TABLE `date_achat` (
  `id` int NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Saison`
--

CREATE TABLE `Saison` (
  `id` int NOT NULL,
  `nom` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aliments`
--
ALTER TABLE `Aliments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prix` (`prix`);

--
-- Indexes for table `assoc_aliment_type_saison`
--
ALTER TABLE `assoc_aliment_type_saison`
  ADD PRIMARY KEY (`assoc_id_type`),
  ADD UNIQUE KEY `assoc_id_Prix` (`assoc_id_aliment`),
  ADD UNIQUE KEY `assoc_id_Saison` (`assoc_id_Saison`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_achat`
--
ALTER TABLE `date_achat`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `Saison`
--
ALTER TABLE `Saison`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Aliments`
--
ALTER TABLE `Aliments`
  ADD CONSTRAINT `Aliments_ibfk_1` FOREIGN KEY (`id`) REFERENCES `assoc_aliment_type_saison` (`assoc_id_aliment`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
