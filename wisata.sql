-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 11:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_pengunjung`
--

CREATE TABLE `db_pengunjung` (
  `id` int(11) NOT NULL,
  `nama_pengunjung` varchar(255) NOT NULL,
  `total_tiket` int(11) NOT NULL,
  `noHp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_pengunjung`
--

INSERT INTO `db_pengunjung` (`id`, `nama_pengunjung`, `total_tiket`, `noHp`) VALUES
(4, 'Rahmad', 6, '081111111111'),
(5, 'Adam', 8, '082222222222'),
(6, 'Yoga', 5, '083333333333');

-- --------------------------------------------------------

--
-- Table structure for table `db_transaksi`
--

CREATE TABLE `db_transaksi` (
  `id` int(11) NOT NULL,
  `nama_pengunjung` varchar(255) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `tanggal` date NOT NULL,
  `noHp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_transaksi`
--

INSERT INTO `db_transaksi` (`id`, `nama_pengunjung`, `nama_wisata`, `qty`, `subtotal`, `tanggal`, `noHp`) VALUES
(18, 'Rahmad', 'Pantai Tangkisung', 6, 60000, '2025-01-04', '081111111111');

-- --------------------------------------------------------

--
-- Table structure for table `db_wisata`
--

CREATE TABLE `db_wisata` (
  `id` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `stok_tiket` int(11) DEFAULT NULL,
  `harga_tiket` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_wisata`
--

INSERT INTO `db_wisata` (`id`, `nama_tempat`, `stok_tiket`, `harga_tiket`) VALUES
(10, 'Tahura', 100, 18000),
(11, 'Pantai Batakan', 200, 10000),
(12, 'Pantai Tangkisung', 50, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_pengunjung`
--
ALTER TABLE `db_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_wisata`
--
ALTER TABLE `db_wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_pengunjung`
--
ALTER TABLE `db_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_transaksi`
--
ALTER TABLE `db_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `db_wisata`
--
ALTER TABLE `db_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
