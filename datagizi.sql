-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2014 at 12:32 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datagizi`
--

-- --------------------------------------------------------

--
-- Table structure for table `hewani`
--

CREATE TABLE IF NOT EXISTS `hewani` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `energi` float DEFAULT NULL,
  `karbo` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `lemak` float DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hewani`
--

INSERT INTO `hewani` (`id`, `nama`, `energi`, `karbo`, `protein`, `lemak`, `harga`) VALUES
(0, 'Ayam', 302, 0, 18.2, 25, 3250),
(1, 'Bandeng', 129, 0, 20, 4.8, 1100),
(2, 'Bawal', 96, 0, 19, 1.7, 1300),
(3, 'Bebek', 326, 0, 16, 28.6, 4500),
(4, 'Cumi-cumi', 75, 0.1, 16.1, 0.7, 3400),
(5, 'Daging Kambing', 154, 0, 16.6, 9.2, 9000),
(6, 'Daging Sapi', 207, 0, 18.8, 14, 9500),
(7, 'Ikan Mujair Segar', 89, 0, 18.7, 1, 3350),
(8, 'Ikan Tongkol', 117, 0, 23.2, 2.7, 4100),
(9, 'Kepiting', 151, 14.1, 13.8, 3.8, 35650),
(10, 'Kerang', 59, 3.6, 8, 1.1, 2750),
(11, 'Lele', 372, 3.5, 7.8, 36.3, 2100),
(12, 'Belut', 303, 0, 14, 27, 3750),
(13, 'Susu Sapi', 61, 4.3, 3.2, 3.5, 7500),
(14, 'Telur Ayam', 162, 0.7, 12.8, 11.5, 1500),
(15, 'Telur Puyuh', 168, 1.2, 12.3, 12.7, 1800),
(16, 'Tenggiri', 109, 0, 21.5, 2.6, 1200),
(17, 'Teri', 74, 4.1, 10.3, 1.4, 8500),
(18, 'Udang', 295, 1.8, 62.4, 2.3, 8500),
(19, 'Ikan Kakap', 92, 0, 20, 0.7, 2200);

-- --------------------------------------------------------

--
-- Table structure for table `nabati`
--

CREATE TABLE IF NOT EXISTS `nabati` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `energi` float DEFAULT NULL,
  `karbo` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `lemak` float DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nabati`
--

INSERT INTO `nabati` (`id`, `nama`, `energi`, `karbo`, `protein`, `lemak`, `harga`) VALUES
(0, 'Kacang Hijau', 345, 62.9, 22.2, 1.2, 1550),
(1, 'Kecap', 46, 9, 5.7, 1.3, 3500),
(2, 'Tahu', 68, 7.8, 4.6, 1.6, 2000),
(3, 'Tempe Kedelai', 149, 12.7, 18.3, 4, 2000),
(4, 'Kacang Merah', 336, 59.5, 23.1, 1.7, 1400),
(5, 'Kacang Tanah', 559, 23.6, 26.9, 44.2, 1000),
(6, 'Kacang Mente', 562, 23.6, 21.6, 49.6, 4400),
(7, 'Kacang Panjang', 357, 70, 17.3, 1.5, 1000),
(8, 'Kacang Kapri', 98, 17.7, 6.7, 0.4, 1750),
(9, 'Kacang Kedelai', 381, 24.9, 40.4, 16.7, 1300),
(10, 'Kemiri', 636, 8, 19, 63, 2300),
(11, 'Kenari', 657, 13, 15, 66, 1300),
(12, 'Koro', 332, 55, 24, 3, 1650),
(13, 'Lamtoro', 336, 59.7, 23.8, 1.2, 2100),
(14, 'Emping', 345, 71.5, 12, 1.5, 1800),
(15, 'Jamur Kuping Segar', 15, 0.9, 3.8, 0.6, 4500),
(16, 'Minyak Kelapa', 870, 0, 1, 98, 6200),
(17, 'Minyak Kelapa Sawit', 902, 0, 0, 100, 2200),
(18, 'Santan', 324, 5.6, 4.2, 34.3, 300),
(19, 'Margarin', 720, 0.4, 0.6, 81, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `pelengkap`
--

CREATE TABLE IF NOT EXISTS `pelengkap` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `energi` float DEFAULT NULL,
  `karbo` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `lemak` float DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelengkap`
--

INSERT INTO `pelengkap` (`id`, `nama`, `energi`, `karbo`, `protein`, `lemak`, `harga`) VALUES
(0, 'Agar-agar', 0, 0, 0, 0.2, 2350),
(1, 'Alpukat', 85, 7.7, 0.9, 6.5, 600),
(2, 'Anggur', 50, 12.8, 0.5, 0.2, 8500),
(3, 'Apel', 58, 14.9, 0.3, 0.4, 1300),
(4, 'Duku', 63, 16.1, 1, 0.2, 1250),
(5, 'Jahe', 51, 10.1, 1.5, 1, 750),
(6, 'Jeruk Manis', 45, 11.2, 0.9, 0.2, 2200),
(7, 'Jeruk Nipis', 37, 12.3, 0.8, 0.1, 1500),
(8, 'Madu', 294, 79.5, 0.3, 0, 7500),
(9, 'Mangga Arumanis', 46, 11.9, 0.4, 0.2, 4100),
(10, 'Mangga Muda', 59, 15.1, 0.5, 0.4, 1000),
(11, 'Manggis', 63, 15.6, 0.6, 0.6, 2950),
(12, 'Pisang Raja', 120, 31.8, 1.2, 0.3, 2450),
(13, 'Rambutan', 69, 18.1, 0.9, 0.1, 1500),
(14, 'Salak', 77, 20.9, 0.4, 0, 2100),
(15, 'Sawo', 92, 22.4, 0.5, 1.1, 1600),
(16, 'Semangka', 28, 6.9, 0.5, 0.2, 700),
(17, 'Sirsak', 65, 16.3, 1, 0.3, 1950),
(18, 'Srikaya', 101, 25.2, 1.7, 0.6, 2200),
(19, 'Yoghurt', 52, 4, 3.3, 2.5, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `pokok`
--

CREATE TABLE IF NOT EXISTS `pokok` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `energi` float DEFAULT NULL,
  `karbo` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `lemak` float DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokok`
--

INSERT INTO `pokok` (`id`, `nama`, `energi`, `karbo`, `protein`, `lemak`, `harga`) VALUES
(0, 'Beras', 360, 78.9, 6.8, 0.7, 1150),
(1, 'Beras Ketan Putih', 362, 6.7, 0.7, 79.4, 1500),
(2, 'Beras Ketan Hitam', 356, 78, 7, 0.7, 1400),
(3, 'Beras Jagung', 345, 76.5, 9.1, 2, 600),
(4, 'Beras Merah Tumbuk', 352, 76.2, 7.3, 0.9, 1500),
(5, 'Bihun', 360, 82.1, 4.7, 0.1, 1200),
(6, 'Biskuit', 458, 75.1, 6.9, 14.4, 2850),
(7, 'Kentang', 83, 19.1, 2, 0.1, 1350),
(8, 'Makaroni', 363, 78.7, 8.7, 0.4, 1500),
(9, 'Maizena', 343, 85, 0.3, 0, 3850),
(10, 'Tapioka', 362, 86.9, 0.5, 0.3, 1100),
(11, 'Tepung Beras', 364, 80, 7, 0.5, 1000),
(12, 'Tepung Sagu', 353, 84.7, 0.7, 0.25, 1250),
(13, 'Tepung Terigu', 365, 77.3, 8.9, 1.3, 1600),
(14, 'Tepung Hunkwee', 364, 83.5, 4.5, 1, 14500),
(15, 'Ubi Jalar', 323, 27.9, 1.8, 0.7, 800),
(16, 'Roti Putih', 248, 50, 8, 1.2, 2300),
(17, 'Singkong', 146, 34.7, 1.2, 0.3, 800),
(18, 'Talas', 98, 23.7, 1.9, 0.2, 3200),
(19, 'Ubi Manis', 83, 18.8, 1.5, 0.2, 750);

-- --------------------------------------------------------

--
-- Table structure for table `sayuran`
--

CREATE TABLE IF NOT EXISTS `sayuran` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `energi` float DEFAULT NULL,
  `karbo` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `lemak` float DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sayuran`
--

INSERT INTO `sayuran` (`id`, `nama`, `energi`, `karbo`, `protein`, `lemak`, `harga`) VALUES
(0, 'Bayam', 36, 6.5, 3.5, 0.5, 500),
(1, 'Buncis', 35, 7.7, 2.4, 0.2, 600),
(2, 'Daun Pepaya', 79, 11.9, 8, 2, 2500),
(3, 'Daun Singkong', 73, 13, 6.8, 1.2, 2500),
(4, 'Jengkol', 20, 3.1, 3.5, 0.1, 3200),
(5, 'Kecipir', 35, 5.8, 2.9, 0.2, 650),
(6, 'Kemangi', 46, 8.9, 4, 0.5, 1500),
(7, 'Ketimun', 12, 2.7, 0.7, 0.1, 2800),
(8, 'Bloomkol', 25, 4.9, 2.4, 0.2, 5250),
(9, 'Labu Siam', 26, 6.7, 0.6, 0.1, 1350),
(10, 'Lobak', 19, 4.2, 0.9, 0.1, 1100),
(11, 'Melinjo', 66, 13.3, 5, 0.7, 850),
(12, 'Pare', 29, 6.6, 1.1, 0.3, 1300),
(13, 'Rebung', 27, 5.2, 2.6, 0.3, 2750),
(14, 'Sawi', 22, 4, 2.3, 0.3, 750),
(15, 'Selada', 15, 2.9, 1.2, 0.2, 2500),
(16, 'Seledri', 20, 4.6, 1, 0.1, 2100),
(17, 'Terong', 24, 5.5, 1.1, 0.2, 950),
(18, 'Wortel', 42, 9.3, 1.2, 0.3, 1000),
(19, 'Kangkung', 29, 5.4, 3, 0.3, 1250);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
