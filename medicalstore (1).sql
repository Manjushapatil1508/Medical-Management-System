-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 02:00 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicalstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(20) NOT NULL,
  `custname` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `custname`) VALUES
(1, 'shubham'),
(4, 'devang'),
(5, 'saurabh'),
(6, 'yograj'),
(8, 'bhushan'),
(9, 'gopi'),
(10, 'jayesh'),
(11, 'khushal'),
(12, 'nilesh'),
(13, 'maesh'),
(14, 'paresh'),
(15, 'prem'),
(16, 'durgesh'),
(17, 'ramesh'),
(18, 'parag'),
(19, 'lokesh'),
(21, 'shivam'),
(22, ''),
(28, 'shridhar'),
(29, 'yuvraj'),
(30, 'makarand');

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE IF NOT EXISTS `medical` (
`id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `name`, `quantity`, `price`) VALUES
(1, 'paracetamol', 10, 5),
(2, 'combiflame', 20, 6),
(3, 'crosin', 19, 5),
(4, 'vicks', 10, 25),
(5, 'ppr', 45, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
`id` int(20) NOT NULL,
  `custId` int(20) NOT NULL,
  `med_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `custId`, `med_name`, `quantity`, `price`) VALUES
(3, 0, 'crosin', 5, 25),
(4, 6, 'paracetamol', 5, 25),
(5, 6, 'crosin', 5, 25),
(6, 7, 'paracetamol', 3, 15),
(45, 0, 'paracetamol', 5, 25),
(47, 0, 'paracetamol', 3, 15),
(48, 0, 'paracetamol', 2, 10),
(49, 18, 'paracetamol', 1, 5),
(50, 18, 'crosin', 2, 10),
(51, 19, 'paracetamol', 2, 10),
(52, 19, 'crosin', 2, 10),
(53, 7, 'paracetamol', 4, 20),
(54, 7, 'crosin', 4, 20),
(55, 21, 'paracetamol', 2, 10),
(56, 23, 'paracetamol', 1, 5),
(57, 23, 'crosin', 1, 5),
(58, 24, 'paracetamol', 2, 10),
(59, 24, 'crosin', 2, 10),
(60, 25, 'paracetamol', 2, 10),
(61, 26, 'paracetamol', 1, 5),
(62, 27, 'paracetamol', 1, 5),
(63, 28, 'paracetamol', 1, 5),
(64, 29, 'paracetamol', 1, 5),
(65, 30, 'ppr', 5, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
