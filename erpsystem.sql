-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2017 at 10:24 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erpsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `UserName` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`UserName`, `UserPassword`) VALUES
('b521caa6e1db82e5a01c924a419870cb72b81635', 'b521caa6e1db82e5a01c924a419870cb72b81635');

-- --------------------------------------------------------

--
-- Table structure for table `companytype`
--

CREATE TABLE `companytype` (
  `Companyname` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companytype`
--

INSERT INTO `companytype` (`Companyname`) VALUES
('RA'),
('dell');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `Cutname` varchar(500) NOT NULL,
  `Add` varchar(1000) NOT NULL,
  `City` varchar(5000) NOT NULL,
  `pin` varchar(500) NOT NULL,
  `Contact` varchar(1000) NOT NULL,
  `Contact2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`Cutname`, `Add`, `City`, `pin`, `Contact`, `Contact2`) VALUES
('sandeep', 'mtr\n', 'mte', '281001', '8923118432', '9997139737');

-- --------------------------------------------------------

--
-- Table structure for table `itemtype`
--

CREATE TABLE `itemtype` (
  `Itemtype` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtype`
--

INSERT INTO `itemtype` (`Itemtype`) VALUES
('mouse');

-- --------------------------------------------------------

--
-- Table structure for table `mac`
--

CREATE TABLE `mac` (
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mac`
--

INSERT INTO `mac` (`address`) VALUES
('0A-00-27-00-00-10');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `type` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `Modelno` varchar(5000) NOT NULL,
  `Sale Rate` varchar(500) NOT NULL,
  `Stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`type`, `company`, `Modelno`, `Sale Rate`, `Stock`) VALUES
('mouse', 'dell', '2555', '20', 35);

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `passcode` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`passcode`) VALUES
('35707b807996cc3f434d405ce81ec75d90039993');

-- --------------------------------------------------------

--
-- Table structure for table `purchasevoucher`
--

CREATE TABLE `purchasevoucher` (
  `Invoiceno` int(50) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `Supplier` varchar(500) NOT NULL,
  `Contact` varchar(500) NOT NULL,
  `Contact2` varchar(500) NOT NULL,
  `Address` varchar(5000) NOT NULL,
  `City` varchar(500) NOT NULL,
  `Pincode` varchar(500) NOT NULL,
  `GrandTotal` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `puritems`
--

CREATE TABLE `puritems` (
  `Date` varchar(255) NOT NULL,
  `Supplier` varchar(255) NOT NULL,
  `Item` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Modelno` varchar(100) NOT NULL,
  `Salerate` varchar(100) NOT NULL,
  `Purrate` varchar(100) NOT NULL,
  `Quantity` varchar(100) NOT NULL,
  `Total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saleitems`
--

CREATE TABLE `saleitems` (
  `Date` varchar(255) NOT NULL,
  `Invoiceno` int(255) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Company` varchar(255) NOT NULL,
  `Modelno` varchar(255) NOT NULL,
  `imei` longtext NOT NULL,
  `Salerate` longtext NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Total` longtext NOT NULL,
  `disc` varchar(255) NOT NULL,
  `discamount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saleitems`
--

INSERT INTO `saleitems` (`Date`, `Invoiceno`, `Item`, `Company`, `Modelno`, `imei`, `Salerate`, `Quantity`, `Total`, `disc`, `discamount`) VALUES
('04-02-2017', 0, 'mouse', 'dell', '2555', 'cv', '20', '5', '100.0', '12.6', '87.40'),
('04-02-2017', 1, 'mouse', 'dell', '2555', 'bn ', '20', '5', '100.0', '12.6', '87.40');

-- --------------------------------------------------------

--
-- Table structure for table `salevoucher`
--

CREATE TABLE `salevoucher` (
  `Invoiceno` int(255) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `Customer` varchar(500) NOT NULL,
  `Contact` varchar(5000) NOT NULL,
  `Contact2` varchar(5000) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `City` varchar(500) NOT NULL,
  `Pincode` varchar(5000) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `Vat` varchar(255) NOT NULL,
  `additional` varchar(255) NOT NULL,
  `roff` varchar(255) NOT NULL,
  `vatp` varchar(255) NOT NULL,
  `addp` varchar(255) NOT NULL,
  `scharge` varchar(255) NOT NULL,
  `GrandTotal` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salevoucher`
--

INSERT INTO `salevoucher` (`Invoiceno`, `Date`, `Customer`, `Contact`, `Contact2`, `Address`, `City`, `Pincode`, `amount`, `Vat`, `additional`, `roff`, `vatp`, `addp`, `scharge`, `GrandTotal`) VALUES
(0, '04-02-2017', 'sandeep', '8923118432', '9997139737', 'mtr\n', 'mte', '281001', '87.40', '10.93', '1.75', '(-).08', '12.5%', '2%', '20.6', '120.60'),
(1, '04-02-2017', 'sandeep', '8923118432', '9997139737', 'mtr\n', 'mte', '281001', '174.80', '21.85', '3.50', '(-).15', '12.5%', '2%', '25', '225.00');

-- --------------------------------------------------------

--
-- Table structure for table `supplyer`
--

CREATE TABLE `supplyer` (
  `name` varchar(500) NOT NULL,
  `Addresh` varchar(1000) NOT NULL,
  `City` varchar(1000) NOT NULL,
  `pin` varchar(1000) NOT NULL,
  `Contact` varchar(500) NOT NULL,
  `Contact2` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplyer`
--

INSERT INTO `supplyer` (`name`, `Addresh`, `City`, `pin`, `Contact`, `Contact2`) VALUES
('sonu', 'mtr\n', 'mte', '281001', '8956231478', '895565233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `purchasevoucher`
--
ALTER TABLE `purchasevoucher`
  ADD PRIMARY KEY (`Invoiceno`);

--
-- Indexes for table `salevoucher`
--
ALTER TABLE `salevoucher`
  ADD PRIMARY KEY (`Invoiceno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchasevoucher`
--
ALTER TABLE `purchasevoucher`
  MODIFY `Invoiceno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
