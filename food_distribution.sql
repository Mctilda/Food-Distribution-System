-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 08:22 AM
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
-- Database: `food_distribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Administrator_ID` int(11) NOT NULL,
  `Fullname` text NOT NULL,
  `Email_Address` text NOT NULL,
  `Position` text NOT NULL,
  `Recovery_Question` text NOT NULL,
  `Recovery_Answer` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Administrator_ID`, `Fullname`, `Email_Address`, `Position`, `Recovery_Question`, `Recovery_Answer`, `Password`) VALUES
(1, 'Mactilda Matsotso', 'mactilda.matsotso@strathmore.edu', 'System Administrator', '', '', '145187');

-- --------------------------------------------------------

--
-- Table structure for table `goods_donated`
--

CREATE TABLE `goods_donated` (
  `Dontation_ID` int(11) NOT NULL,
  `Commodity_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Quantity` text NOT NULL,
  `Date_Donated` text NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Fullname` text NOT NULL,
  `Email_Address` text NOT NULL,
  `Phone_Number` text NOT NULL,
  `Recovery_Question` text NOT NULL,
  `Recovery_Answer` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Fullname`, `Email_Address`, `Phone_Number`, `Recovery_Question`, `Recovery_Answer`, `Password`) VALUES
(1, 'Dorry Omondi', 'dorry.omondi@strathmore.edu', '0745690199', 'I love Travis Scott', 'Travis Scott Fan yEAAHH', '$2y$10$8W6zyCUTd6TjGKHZurMtUOq8GIU7tHu29A3zTKtZBCj/Y0clUG9hq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Administrator_ID`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`) USING HASH;

--
-- Indexes for table `goods_donated`
--
ALTER TABLE `goods_donated`
  ADD PRIMARY KEY (`Dontation_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Administrator_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goods_donated`
--
ALTER TABLE `goods_donated`
  MODIFY `Dontation_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
