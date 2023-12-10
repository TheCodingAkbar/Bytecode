-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 05:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `florismdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataevent`
--

CREATE TABLE `dataevent` (
  `eventID` varchar(255) NOT NULL,
  `eventLokasi` varchar(255) DEFAULT NULL,
  `eventNama` varchar(255) DEFAULT NULL,
  `eventTanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataevent`
--

INSERT INTO `dataevent` (`eventID`, `eventLokasi`, `eventNama`, `eventTanggal`) VALUES
('E1', 'Lokasi Event 1', 'Nama Event 1', '2023-03-01'),
('E2', 'Lokasi Event 2', 'Nama Event 2', '2023-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `datagaleri`
--

CREATE TABLE `datagaleri` (
  `galeriID` varchar(255) NOT NULL,
  `galeriNama` blob DEFAULT NULL,
  `galeriFeedback` text DEFAULT NULL,
  `galeriDeskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datagaleri`
--

INSERT INTO `datagaleri` (`galeriID`, `galeriNama`, `galeriFeedback`, `galeriDeskripsi`) VALUES
('G1', 0x4e616d612047616c6572692031, 'Feedback Galeri 1', 'Deskripsi Galeri 1'),
('G2', 0x4e616d612047616c6572692032, 'Feedback Galeri 2', 'Deskripsi Galeri 2');

-- --------------------------------------------------------

--
-- Table structure for table `datatiketdanpembayaran`
--

CREATE TABLE `datatiketdanpembayaran` (
  `tiketPembayaranID` varchar(255) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `tiketTanggalPembayaran` date DEFAULT NULL,
  `tiketTujuan` varchar(255) DEFAULT NULL,
  `tiketJumlah` decimal(10,2) DEFAULT NULL,
  `tiketHarga` decimal(10,0) DEFAULT NULL,
  `tiketJumlahPembayaran` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datatiketdanpembayaran`
--

INSERT INTO `datatiketdanpembayaran` (`tiketPembayaranID`, `userID`, `tiketTanggalPembayaran`, `tiketTujuan`, `tiketJumlah`, `tiketHarga`, `tiketJumlahPembayaran`) VALUES
('TP3', 1, '2023-03-01', 'Destinasi C', 4.00, 60, 240),
('TP4', 2, '2023-04-01', 'Destinasi D', 5.00, 45, 225);

-- --------------------------------------------------------

--
-- Table structure for table `datauserdanregis`
--

CREATE TABLE `datauserdanregis` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nomorTelepon` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datauserdanregis`
--

INSERT INTO `datauserdanregis` (`userID`, `username`, `password`, `nomorTelepon`, `gender`, `email`) VALUES
(1, 'user1', 'password1', 123456789, 'Male', 'user1@example.com'),
(2, 'user2', 'password2', 987654321, 'Female', 'user2@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataevent`
--
ALTER TABLE `dataevent`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `datagaleri`
--
ALTER TABLE `datagaleri`
  ADD PRIMARY KEY (`galeriID`);

--
-- Indexes for table `datatiketdanpembayaran`
--
ALTER TABLE `datatiketdanpembayaran`
  ADD PRIMARY KEY (`tiketPembayaranID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `datauserdanregis`
--
ALTER TABLE `datauserdanregis`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datauserdanregis`
--
ALTER TABLE `datauserdanregis`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datatiketdanpembayaran`
--
ALTER TABLE `datatiketdanpembayaran`
  ADD CONSTRAINT `datatiketdanpembayaran_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `datauserdanregis` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
