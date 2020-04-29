-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2020 at 02:23 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelulusan`
--

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `mapel_id` int(11) NOT NULL,
  `mapel_nama` varchar(100) NOT NULL,
  `mapel_kode` varchar(10) NOT NULL,
  `mapel_kelompok` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`mapel_id`, `mapel_nama`, `mapel_kode`, `mapel_kelompok`) VALUES
(1, 'Pendidikan Agama dan Budi Pekerti', 'pab', 'A'),
(2, 'Pendidikan Kewarganegaraan', 'pkn', 'A'),
(3, 'Bahasa Indonesia', 'ind', 'A'),
(4, 'Bahasa Inggris', 'ing', 'A'),
(6, 'Matematika', 'mtkw', 'A'),
(7, 'Sejarah Indonesia', 'sji', 'A'),
(8, 'Pendidikan Jasmani dan Kesehatan', 'pjk', 'B'),
(9, 'Seni Budaya', 'snb', 'B'),
(10, 'Prakarya dan Kewirausahaan', 'pkwu', 'B'),
(11, 'Bahasa Jawa', 'bjw', 'B'),
(12, 'Matematika', 'mtklm', 'C'),
(13, 'Fisika', 'fis', 'C'),
(14, 'Kimia', 'kim', 'C'),
(15, 'Biologi', 'bio', 'C'),
(16, 'Sejarah', 'sjlm', 'C'),
(17, 'Geografi', 'geo', 'C'),
(18, 'Sosiologi', 'sos', 'C'),
(19, 'Ekonomi', 'eko', 'C'),
(20, 'Bahasa dan Sastra Inggris', 'bsig', 'C'),
(21, 'Bahasa Arab', 'arb', 'C'),
(22, 'Bahasa Jepang', 'jpg', 'C'),
(23, 'Bahasa Jerman', 'jrm', 'C'),
(24, 'Bahasa Mandarin', 'mdr', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nilai_id` int(11) NOT NULL,
  `nilai_siswa_nis` varchar(11) NOT NULL,
  `nilai_mapel_id` int(11) NOT NULL,
  `nilai_angka` int(11) NOT NULL,
  `nilai_tahun` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `pengaturan_id` int(1) NOT NULL,
  `pengaturan_sekolah` text NOT NULL,
  `pengaturan_alamat` text NOT NULL,
  `pengaturan_telp` varchar(100) NOT NULL,
  `pengaturan_fax` varchar(100) NOT NULL,
  `pengaturan_web` varchar(100) NOT NULL,
  `pengaturan_email` varchar(100) NOT NULL,
  `pengaturan_kab` varchar(100) NOT NULL,
  `pengaturan_pos` varchar(6) NOT NULL,
  `pengaturan_tgl_buka` date NOT NULL,
  `pengaturan_jam_buka` time NOT NULL,
  `pengaturan_tahun` varchar(5) NOT NULL,
  `pengaturan_nomor` varchar(20) NOT NULL,
  `pengaturan_password` text NOT NULL,
  `pengaturan_login_img` varchar(50) NOT NULL,
  `pengaturan_kop_img` varchar(50) NOT NULL,
  `pengaturan_ttd_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`pengaturan_id`, `pengaturan_sekolah`, `pengaturan_alamat`, `pengaturan_telp`, `pengaturan_fax`, `pengaturan_web`, `pengaturan_email`, `pengaturan_kab`, `pengaturan_pos`, `pengaturan_tgl_buka`, `pengaturan_jam_buka`, `pengaturan_tahun`, `pengaturan_nomor`, `pengaturan_password`, `pengaturan_login_img`, `pengaturan_kop_img`, `pengaturan_ttd_img`) VALUES
(1, 'SMA Negeri 1 Yogyakarta', 'Jalan HOS Cokroaminoto No. 10 ', '0274 513454', '0274 542604', 'http://sman1yogya.sch.id', 'humas@sman1yogya.sch.id', 'Yogyakarta', '55253', '2020-05-02', '10:00:00', '2020', '123/2020', 'Rahasia123456', 'b6474a361047b4ce922e887bc129d059.jpg', '926ee8eb19e1e6cf90e45d4c62741848.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(6) NOT NULL,
  `siswa_nisn` varchar(15) NOT NULL,
  `siswa_nama` varchar(50) NOT NULL,
  `siswa_kelas` varchar(15) NOT NULL,
  `siswa_absen` varchar(3) NOT NULL,
  `siswa_tmp_lahir` varchar(100) NOT NULL,
  `siswa_tgl_lahir` date NOT NULL,
  `siswa_ortu` varchar(200) NOT NULL,
  `siswa_tahun_lulus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`mapel_id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nilai_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`pengaturan_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `mapel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `nilai_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `pengaturan_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
