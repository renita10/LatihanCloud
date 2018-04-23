-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 04:04 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'abc123456', 1, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE IF NOT EXISTS `tb_buku` (
  `KODE_BUKU` varchar(3) NOT NULL,
  `JUDUL_BUKU` varchar(50) NOT NULL,
  `TAHUN_BUKU` year(4) NOT NULL,
  PRIMARY KEY (`KODE_BUKU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`KODE_BUKU`, `JUDUL_BUKU`, `TAHUN_BUKU`) VALUES
('001', 'Laskar Pelangi', 2014),
('002', 'Bona dan Rongrong', 2013),
('003', 'bobo', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE IF NOT EXISTS `tb_penerbit` (
  `kode_penerbit` varchar(4) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat_penerbit` text NOT NULL,
  `kota_penerbit` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_penerbit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`kode_penerbit`, `nama_penerbit`, `alamat_penerbit`, `kota_penerbit`) VALUES
('001', 'Gramedia', 'Bandung', 'Jakarta'),
('002', 'Tereliye', 'Manaa ajah', 'dimanapun dia berada'),
('003', 'wenitay', 'botekan', 'comal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengarang`
--

CREATE TABLE IF NOT EXISTS `tb_pengarang` (
  `kode_pengarang` varchar(4) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL,
  `alamat_pengarang` varchar(50) NOT NULL,
  `email_pengarang` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_pengarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengarang`
--

INSERT INTO `tb_pengarang` (`kode_pengarang`, `nama_pengarang`, `alamat_pengarang`, `email_pengarang`) VALUES
('R001', 'Andi Irawan', 'Pegunungan', 'andiIr@gmail.com'),
('R002', 'Bonar Benar', 'dipinggiran sungai mengalir', 'bonarselalubenar@gmail.com'),
('R003', 'namaku', 'alamatku', 'emailku');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('yuichan', '8db3f5579099ef59e40a03f3d5d8d8c9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
