-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2025 at 05:50 AM
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
-- Database: `toko_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nik`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `jabatan`) VALUES
('400216', 'bani', '216', 'Kasir', 'serpong', '08216734', 'bani@gmail.com', 'Laki-laki'),
('400265', 'dzifqi', '265', 'Admin', 'jaksel', '08214567', 'dzifqi@gmail.com', 'Laki-laki'),
('400289', 'bintang', '289', 'Pegawai', 'cileduk', '08217634', 'bintang@gmail.com', 'Laki-laki'),
('400376', 'leo', '376', 'Teknisi', 'jakput', '08217653', 'leo@gmail.com', 'Laki-laki'),
('400387', 'willy', '387', 'Admin', 'Alsut', '08219832', 'willy@gmail.com', 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga_beli` decimal(12,2) DEFAULT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_barang`, `kode_barang`, `nama_barang`, `kategori`, `satuan`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'HW001', 'Mouse Logitech M170', 'Hardware', 'PCS', 60000.00, 85000.00, 99),
(2, 'HW002', 'Keyboard Mechanical RGB', 'Hardware', 'PCS', 150000.00, 200000.00, 99),
(3, 'HW003', 'Harddisk WD 1TB', 'Hardware', 'PCS', 500000.00, 600000.00, 100),
(4, 'HW004', 'RAM DDR4 8GB', 'Hardware', 'PCS', 400000.00, 475000.00, 100),
(5, 'HW005', 'Monitor LED 24\" Samsung', 'Hardware', 'PCS', 1200000.00, 1350000.00, 5),
(6, 'SW001', 'Windows 11 Pro Original', 'Software', 'LICENSE', 1800000.00, 2000000.00, 1000),
(7, 'SW002', 'Microsoft Office 2021', 'Software', 'LICENSE', 2200000.00, 2500000.00, 1000),
(8, 'SW003', 'Antivirus Kaspersky 1Yr', 'Software', 'LICENSE', 150000.00, 200000.00, 1000),
(9, 'SW004', 'Adobe Photoshop CC 2023', 'Software', 'LICENSE', 600000.00, 750000.00, 999),
(10, 'SW005', 'CorelDRAW Graphics Suite', 'Software', 'LICENSE', 1500000.00, 1800000.00, 1000),
(11, 'BW001', 'Jasa Instalasi Software', 'Brainware', 'PCS', 0.00, 50000.00, 1000),
(12, 'BW002', 'Jasa Instalasi OS + Driver', 'Brainware', 'JASA', 0.00, 75000.00, 999),
(13, 'BW003', 'Kursus Komputer Dasar', 'Brainware', 'JASA', 0.00, 300000.00, 1000),
(14, 'BW004', 'Pelatihan Microsoft Office', 'Brainware', 'JASA', 0.00, 350000.00, 1000),
(15, 'BW005', 'Jasa Service Komputer', 'Brainware', 'JASA', 0.00, 100000.00, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`id_transaksi`, `kode_barang`, `nama_barang`, `harga_jual`, `jumlah`, `total`, `tanggal_transaksi`) VALUES
(1, 'HW002', 'Keyboard Mechanical RGB', 200000.00, 1, 200000.00, '2025-06-09 02:26:20'),
(2, 'HW001', 'Mouse Logitech M170', 85000.00, 1, 85000.00, '2025-06-09 02:26:41'),
(3, 'SW004', 'Adobe Photoshop CC 2023', 750000.00, 1, 750000.00, '2025-06-09 02:27:10'),
(4, 'BW002', 'Jasa Instalasi OS + Driver', 75000.00, 1, 75000.00, '2025-06-09 02:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `akses` enum('Admin','Pegawai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `akses`) VALUES
(1, 'willy', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Admin'),
(3, 'dzifqi', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Admin'),
(4, 'bintang', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Pegawai'),
(5, 'leo', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Pegawai'),
(6, 'bani', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Pegawai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
