-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 05:40 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbstbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbberita`
--

CREATE TABLE IF NOT EXISTS `tbberita` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Judul` varchar(100) NOT NULL,
  `Berita` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbberita`
--

INSERT INTO `tbberita` (`Id`, `Judul`, `Berita`) VALUES
(1, 'Skripsi Final', 'alkisah seorang mahasiswi yang sedang berjuang menylesaikan skripsi'),
(2, 'lanjutan', 'ditengah malam terbesit keinginan untuk bertanya kepada seseorang'),
(3, 'lanjutan part 2', 'padahal orang yang ditanya juga masih belajar minim ilmu dengan ipk pas pasan lagi'),
(4, 'test bobot 1', 'erma'),
(5, 'test bobot 2', 'alkisah'),
(6, 'test bobot 3 ', 'orang');

-- --------------------------------------------------------

--
-- Table structure for table `tbcache`
--

CREATE TABLE IF NOT EXISTS `tbcache` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Query` varchar(100) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Value` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbindex`
--

CREATE TABLE IF NOT EXISTS `tbindex` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Term` varchar(30) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, 'alkisah', 1, 1, 1.09861),
(2, 'seorang', 1, 1, 1.79176),
(3, 'mahasiswi', 1, 1, 1.79176),
(4, 'seg', 1, 1, 1.79176),
(5, 'berjuang', 1, 1, 1.79176),
(6, 'menylesaikan', 1, 1, 1.79176),
(7, 'skripsi', 1, 1, 1.79176),
(8, 'ditengah', 2, 1, 1.79176),
(9, 'malam', 2, 1, 1.79176),
(10, 'terbesit', 2, 1, 1.79176),
(11, 'inginan', 2, 1, 1.79176),
(12, 'untuk', 2, 1, 1.79176),
(13, 'bertanya', 2, 1, 1.79176),
(14, 'seseorang', 2, 1, 1.79176),
(15, 'hal', 3, 1, 1.79176),
(16, 'orang', 3, 1, 1.09861),
(17, 'ditanya', 3, 1, 1.79176),
(18, 'masih', 3, 1, 1.79176),
(19, 'belajar', 3, 1, 1.79176),
(20, 'mm', 3, 1, 1.79176),
(21, 'ilmu', 3, 1, 1.79176),
(22, 'ipk', 3, 1, 1.79176),
(23, 'pas', 3, 1, 1.79176),
(24, 'pasan', 3, 1, 1.79176),
(25, 'lagi', 3, 1, 1.79176),
(26, 'erma', 4, 1, 1.79176),
(27, 'alkisah', 5, 1, 1.09861),
(28, 'orang', 6, 1, 1.09861);

-- --------------------------------------------------------

--
-- Table structure for table `tbstem`
--

CREATE TABLE IF NOT EXISTS `tbstem` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Term` varchar(30) NOT NULL,
  `Stem` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbstem`
--

INSERT INTO `tbstem` (`Id`, `Term`, `Stem`) VALUES
(1, 'pertemuan', 'temu'),
(2, 'bertemu', 'temu'),
(3, 'cr9', 'cristiano ronaldo'),
(4, 'kepindahan', 'pindah'),
(5, 'menembus', 'tembus'),
(6, 'menyusut', 'susut');

-- --------------------------------------------------------

--
-- Table structure for table `tbvektor`
--

CREATE TABLE IF NOT EXISTS `tbvektor` (
  `DocId` int(11) NOT NULL,
  `Panjang` float NOT NULL,
  PRIMARY KEY (`DocId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbvektor`
--

INSERT INTO `tbvektor` (`DocId`, `Panjang`) VALUES
(1, 4.52431),
(2, 4.74055),
(3, 5.77157),
(4, 1.79176),
(5, 1.09861),
(6, 1.09861);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
