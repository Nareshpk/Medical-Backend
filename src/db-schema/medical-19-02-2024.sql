-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance001mb`
--

CREATE TABLE `allowance001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `staff_Name` varchar(40) NOT NULL,
  `bike_No` varchar(40) NOT NULL,
  `travel_durection` varchar(40) NOT NULL,
  `km` varchar(40) NOT NULL,
  `petrole_paid_amount` varchar(40) NOT NULL,
  `bying_petrole_amount` varchar(40) NOT NULL,
  `balance` varchar(40) NOT NULL,
  `Re_Balance_amount` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allowance001mb`
--

INSERT INTO `allowance001mb` (`sl_no`, `unitslno`, `sslno`, `staff_Name`, `bike_No`, `travel_durection`, `km`, `petrole_paid_amount`, `bying_petrole_amount`, `balance`, `Re_Balance_amount`, `date`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 4, 'Yuvi', 'TN/81/W/6172', 'kulithalai to musiri', '12km', '200', '70', '130', '130', '2024-01-09 05:30:00', 'Nareshpk', '2024-01-09 00:08:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer001mb`
--

CREATE TABLE `customer001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `prodslno` int(11) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `customer_mobile` varchar(40) NOT NULL,
  `qty` varchar(40) NOT NULL,
  `retail_cost` varchar(40) NOT NULL,
  `customer_price` varchar(40) NOT NULL,
  `profit` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer001mb`
--

INSERT INTO `customer001mb` (`sl_no`, `unitslno`, `date`, `prodslno`, `customer_name`, `customer_mobile`, `qty`, `retail_cost`, `customer_price`, `profit`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, '2024-01-16 05:30:00', 5, 'Test', '9042180029', '2', '300', '400', '100', 'Nareshpk', '2024-01-16 18:07:50', NULL, NULL),
(2, 1, '2024-01-16 05:30:00', 5, 'Test', '9042180029', '1', '150', '200', '50', 'Nareshpk', '2024-01-16 18:08:58', NULL, NULL),
(3, 1, '2024-01-16 05:30:00', 5, 'Test', '9042180029', '1', '150', '300', '150', 'Nareshpk', '2024-01-16 18:10:28', NULL, NULL),
(5, 1, '2024-01-17 05:30:00', 5, 'Test', '9042180029', '3', '750', '1000', '250', 'Nareshpk', '2024-01-17 21:59:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dayilyexpenses001mb`
--

CREATE TABLE `dayilyexpenses001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `notes` varchar(40) NOT NULL,
  `amount` int(40) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dayilyexpenses001mb`
--

INSERT INTO `dayilyexpenses001mb` (`sl_no`, `unitslno`, `name`, `notes`, `amount`, `date`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(3, 1, 'sfg', 'sdfgsdfg', 123, '2023-11-07 05:30:00', 'Naresh', '2023-11-07 22:09:39', 'Naresh', '2023-11-07 22:11:19'),
(4, 1, 'werwetr', 'asfdasf', 2435, '2023-11-07 05:30:00', 'Naresh', '2023-11-07 22:11:09', NULL, NULL),
(7, 1, 'Test', 'test', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 19:40:06', NULL, NULL),
(8, 1, 'Test', 'test', 1000, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 19:43:16', NULL, NULL),
(9, 1, 'teteste', 'test', 1000, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 19:47:04', 'Nareshpk', '2023-11-12 19:49:44'),
(10, 1, 'Test', 'test', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 19:56:00', NULL, NULL),
(11, 1, 'Test', 'teste', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 19:59:22', NULL, NULL),
(12, 1, 'Test', 'teste', 1500, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:00:31', NULL, NULL),
(13, 1, 'test', 'test', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:06:07', NULL, NULL),
(14, 1, 'test', 'teste', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:06:47', NULL, NULL),
(15, 1, 'Test', 'Test', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:10:04', NULL, NULL),
(16, 1, 'Test', 'teste', 1000, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:11:27', NULL, NULL),
(17, 1, 'test', 'tteset', 500, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:23:11', NULL, NULL),
(18, 1, 'test', 'teste', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:26:20', NULL, NULL),
(19, 1, 'test', 'teset', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:27:08', NULL, NULL),
(20, 1, 'test', 'tese', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:28:13', NULL, NULL),
(21, 1, 'test', 'test', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:47:19', NULL, NULL),
(22, 1, 'test', 'teest', 100, '2023-11-12 05:30:00', 'Nareshpk', '2023-11-12 20:48:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department001mb`
--

CREATE TABLE `department001mb` (
  `sl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department001mb`
--

INSERT INTO `department001mb` (`sl_no`, `sslno`, `department`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 8, 'Admin', 'rizwana', '2021-09-06 13:18:33', 'Nareshpk', '2024-01-16 22:53:09'),
(2, 8, 'Accounts Management', 'Nareshpk', '2024-01-16 22:57:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis001mb`
--

CREATE TABLE `diagnosis001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `diagnosis` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diagnosis001mb`
--

INSERT INTO `diagnosis001mb` (`sl_no`, `unitslno`, `diagnosis`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(2, 1, 'Test', 'Naresh', '2023-10-22 20:16:45', NULL, NULL),
(4, 1, 'Test3', 'Naresh', '2023-10-22 20:19:18', NULL, NULL),
(5, 1, 'Test4', 'Naresh', '2023-10-22 20:19:34', NULL, NULL),
(6, 1, 'Tes66', 'Naresh', '2023-10-22 20:20:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `distribution001mb`
--

CREATE TABLE `distribution001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `prodslno` int(11) NOT NULL,
  `clinicslno` int(11) NOT NULL,
  `qty` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distribution001mb`
--

INSERT INTO `distribution001mb` (`sl_no`, `unitslno`, `date`, `prodslno`, `clinicslno`, `qty`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(2, 1, '2024-01-16 05:30:00', 4, 3, '30', 'Nareshpk', '2024-01-16 20:38:00', NULL, NULL),
(3, 1, '2024-01-17 05:30:00', 5, 2, '2', 'Nareshpk', '2024-01-17 21:42:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor001mb`
--

CREATE TABLE `doctor001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `d_first_name` varchar(40) NOT NULL,
  `d_last_name` varchar(40) NOT NULL,
  `specialist` varchar(40) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor001mb`
--

INSERT INTO `doctor001mb` (`sl_no`, `unitslno`, `d_first_name`, `d_last_name`, `specialist`, `date_of_birth`, `email`, `contact`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 'Naresh', 'Kumar', 'Test', '1997-12-27 00:00:00', 'nk607@gmail.com', '9042180029', 'Naresh', '2023-10-22 16:33:42', 'Naresh', '2023-10-22 17:09:10'),
(4, 1, 'Yuvi', 'M', 'Test', '1998-05-20 00:00:00', 'yuvi@gmail.com', '9042180029', 'Naresh', '2023-10-22 21:28:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monthlyexpenses001mb`
--

CREATE TABLE `monthlyexpenses001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `mname` varchar(40) NOT NULL,
  `mnotes` varchar(40) NOT NULL,
  `mamount` int(40) NOT NULL,
  `mdate` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient001mb`
--

CREATE TABLE `patient001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `patient_id` varchar(40) NOT NULL,
  `patient_fname` varchar(40) NOT NULL,
  `patient_lname` varchar(40) NOT NULL,
  `age` int(40) NOT NULL,
  `sex` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient001mb`
--

INSERT INTO `patient001mb` (`sl_no`, `unitslno`, `patient_id`, `patient_fname`, `patient_lname`, `age`, `sex`, `address`, `phone`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(2, 1, 'SE/PRS/22-23/0001', 'Naresh', 'Kumar', 25, 'M', 'kuliathalai', '9042180029', 'Naresh', '2023-10-22 21:26:43', NULL, NULL),
(3, 1, 'SE/PRS/22-23/0002', 'punitha', 'krishnan', 29, 'F', 'Kulithalai', '6384965407', 'Naresh', '2023-10-22 21:27:32', NULL, NULL),
(4, 1, 'SE/PRS/22-23/0003', 'yuvi', 'M', 25, 'M', 'Kulithalai', '9042180029', 'Naresh', '2023-10-24 19:04:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patientmaster001mb`
--

CREATE TABLE `patientmaster001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `pc_patient_id` varchar(40) NOT NULL,
  `pc_patient_fname` varchar(40) NOT NULL,
  `pc_patient_lname` varchar(40) NOT NULL,
  `display_lname` varchar(40) NOT NULL,
  `treatment` varchar(40) NOT NULL,
  `diagnosis` varchar(40) NOT NULL,
  `age` int(40) NOT NULL,
  `sex` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patientmaster001mb`
--

INSERT INTO `patientmaster001mb` (`sl_no`, `unitslno`, `pc_patient_id`, `pc_patient_fname`, `pc_patient_lname`, `display_lname`, `treatment`, `diagnosis`, `age`, `sex`, `address`, `phone`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 'AMK/10-23/0001', 'Naresh', 'Kumar', 'NareshKumar', 'Test ok, Test', 'Tes66', 25, 'M', 'Kulithalai', '9042180029', 'Naresh', '2023-10-31 23:03:02', NULL, NULL),
(2, 1, 'AMK/10-23/0002', 'yuvi', 'maanikam', 'yuvimaanikam', 'Test ok, Test', 'Test4', 26, 'M', 'kulithalai', '9042180000', 'Naresh', '2023-10-31 23:08:11', NULL, NULL),
(3, 1, 'AMK/10-23/0003', 'punitha', 'krishnan', 'punithakrishnan', 'Test ok, Test', 'Test3', 30, 'F', 'trichy', '8870899888', 'Naresh', '2023-10-31 23:08:52', NULL, NULL),
(4, 1, 'AMK/10-23/0004', 'moorthy', 'perumal', 'moorthyperumal', 'Test ok, Test', 'Tes66', 29, 'M', 'Trichy', '9042180028', 'Naresh', '2023-10-31 23:09:34', NULL, NULL),
(5, 1, 'AMK/10-23/0005', 'sriram', 'kannan', 'sriramkannan', 'Test ok, Test', 'Test3', 25, 'M', 'Thannerppali', '9042180025', 'Naresh', '2023-10-31 23:10:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patientop001mb`
--

CREATE TABLE `patientop001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `pslno` int(11) NOT NULL,
  `dslno` int(11) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `age` int(40) NOT NULL,
  `sex` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `diagnosis` varchar(40) NOT NULL,
  `fees` int(40) DEFAULT NULL,
  `balance` int(40) DEFAULT NULL,
  `fstatus` varchar(40) NOT NULL,
  `cdate` datetime NOT NULL,
  `rdate` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patientop001mb`
--

INSERT INTO `patientop001mb` (`sl_no`, `unitslno`, `pslno`, `dslno`, `pname`, `age`, `sex`, `address`, `phone`, `diagnosis`, `fees`, `balance`, `fstatus`, `cdate`, `rdate`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 100, 500, 'partial paid', '2023-10-28 00:00:00', '2023-10-28 00:00:00', 'Naresh', '2023-10-28 22:55:21', 'Naresh', '2023-10-29 18:09:27'),
(2, 1, 3, 1, 'punitha', 29, 'F', 'Kulithalai', '6384965407', 'Test4', 123, 123, 'partial paid', '2023-10-29 00:00:00', '2023-10-29 00:00:00', 'Naresh', '2023-10-29 17:43:10', NULL, NULL),
(3, 1, 3, 4, 'punitha', 29, 'F', 'Kulithalai', '6384965407', 'Test4', 200, 0, 'Paid', '2023-10-29 00:00:00', '2023-10-30 00:00:00', 'Naresh', '2023-10-29 18:58:36', NULL, NULL),
(4, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 300, 100, 'partial paid', '2023-11-02 00:00:00', '2023-11-16 00:00:00', 'Naresh', '2023-11-02 20:46:44', NULL, NULL),
(5, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Test4', 124, 0, 'Paid', '2023-11-08 00:00:00', '2023-11-09 00:00:00', 'Naresh', '2023-11-08 21:47:22', NULL, NULL),
(6, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Test4', 100, 100, 'UnPaid', '2023-11-09 00:00:00', '2023-11-15 00:00:00', 'Naresh', '2023-11-09 21:34:06', NULL, NULL),
(7, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 100, 50, 'Paid', '2023-11-13 00:00:00', '2023-11-16 00:00:00', 'Nareshpk', '2023-11-13 11:56:37', NULL, NULL),
(8, 1, 4, 4, 'yuvi', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 100, 100, 'UnPaid', '2024-01-06 00:00:00', '2024-01-06 00:00:00', 'Nareshpk', '2024-01-06 17:26:59', NULL, NULL),
(9, 1, 3, 1, 'punitha', 29, 'F', 'Kulithalai', '6384965407', 'Test4', 400, 0, 'Paid', '2024-01-06 00:00:00', '2024-01-08 00:00:00', 'Nareshpk', '2024-01-06 17:28:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patientpc001mb`
--

CREATE TABLE `patientpc001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `pcslno` int(11) NOT NULL,
  `dcslno` int(11) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `age` int(40) NOT NULL,
  `sex` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `diagnosis` varchar(40) NOT NULL,
  `treatment` varchar(40) NOT NULL,
  `fees` int(40) DEFAULT NULL,
  `balance` int(40) DEFAULT NULL,
  `visit` varchar(40) DEFAULT NULL,
  `fstatus` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patientpc001mb`
--

INSERT INTO `patientpc001mb` (`sl_no`, `unitslno`, `pcslno`, `dcslno`, `pname`, `age`, `sex`, `address`, `phone`, `diagnosis`, `treatment`, `fees`, `balance`, `visit`, `fstatus`, `date`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(4, 1, 5, 1, 'sriramkannan', 25, 'M', 'Thannerppali', '9042180025', 'Test3', 'Test ok, Test', 100, 200, NULL, 'Paid', '2023-11-01 23:22:36', 'Naresh', '2023-11-01 23:23:29', NULL, NULL),
(5, 1, 4, 1, 'moorthyperumal', 29, 'M', 'Trichy', '9042180028', 'Tes66', 'Test ok, Test', 200, 200, NULL, 'partial paid', '2023-11-01 23:22:36', 'Naresh', '2023-11-01 23:23:29', NULL, NULL),
(6, 1, 3, 1, 'punithakrishnan', 30, 'F', 'trichy', '8870899888', 'Test3', 'Test ok, Test', 300, 0, NULL, 'Paid', '2023-11-01 23:22:36', 'Naresh', '2023-11-01 23:23:29', NULL, NULL),
(7, 1, 2, 4, 'yuvimaanikam', 26, 'M', 'kulithalai', '9042180000', 'Test4', 'Test ok, Test', 100, 100, NULL, 'Paid', '2023-11-01 23:22:36', 'Naresh', '2023-11-01 23:24:32', NULL, NULL),
(8, 1, 1, 4, 'NareshKumar', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 'Test ok, Test', 400, 0, NULL, 'Paid', '2023-11-01 23:22:36', 'Naresh', '2023-11-01 23:24:32', NULL, NULL),
(9, 1, 5, 4, 'sriramkannan', 25, 'M', 'Thannerppali', '9042180025', 'Test3', 'Test ok, Test', 100, 300, NULL, 'UnPaid', '2023-11-08 21:57:37', 'Naresh', '2023-11-08 21:58:34', NULL, NULL),
(10, 1, 4, 4, 'moorthyperumal', 29, 'M', 'Trichy', '9042180028', 'Tes66', 'Test ok, Test', 300, 300, NULL, 'partial paid', '2023-11-08 21:57:37', 'Naresh', '2023-11-08 21:58:34', NULL, NULL),
(11, 1, 5, 1, 'sriramkannan', 25, 'M', 'Thannerppali', '9042180025', 'Test3', 'Test ok, Test', 100, 100, NULL, 'Paid', '2023-11-09 21:34:16', 'Naresh', '2023-11-09 21:35:00', NULL, NULL),
(12, 1, 4, 1, 'moorthyperumal', 29, 'M', 'Trichy', '9042180028', 'Tes66', 'Test ok, Test', 123, 1234, NULL, 'Paid', '2023-11-09 21:34:16', 'Naresh', '2023-11-09 21:35:00', NULL, NULL),
(13, 1, 3, 1, 'punithakrishnan', 30, 'F', 'trichy', '8870899888', 'Test3', 'Test ok, Test', 123, 1234, NULL, 'Paid', '2023-11-09 21:34:16', 'Naresh', '2023-11-09 22:08:39', NULL, NULL),
(14, 1, 2, 1, 'yuvimaanikam', 26, 'M', 'kulithalai', '9042180000', 'Test4', 'Test ok, Test', 1000, 0, NULL, 'Paid', '2023-11-09 21:34:16', 'Naresh', '2023-11-09 22:08:39', NULL, NULL),
(15, 1, 5, 4, 'sriramkannan', 25, 'M', 'Thannerppali', '9042180025', 'Test3', 'Test ok, Test', 400, 100, NULL, 'Paid', '2023-11-11 00:00:00', 'Naresh', '2023-11-11 10:31:15', NULL, NULL),
(16, 1, 4, 4, 'moorthyperumal', 29, 'M', 'Trichy', '9042180028', 'Tes66', 'Test ok, Test', 200, 900, NULL, 'Paid', '2023-11-11 00:00:00', 'Naresh', '2023-11-11 10:31:15', NULL, NULL),
(17, 1, 3, 4, 'punithakrishnan', 30, 'F', 'trichy', '8870899888', 'Test3', 'Test ok, Test', 100, 200, NULL, 'Paid', '2023-11-11 00:00:00', 'Naresh', '2023-11-11 10:31:15', NULL, NULL),
(18, 1, 1, 4, 'NareshKumar', 25, 'M', 'Kulithalai', '9042180029', 'Tes66', 'Test ok, Test', 3000, 0, NULL, 'Paid', '2023-11-11 00:00:00', 'Naresh', '2023-11-11 11:12:15', NULL, NULL),
(19, 1, 5, 4, 'sriramkannan', 25, 'M', 'Thannerppali', '9042180025', 'Test3', 'Test ok, Test', 500, 0, NULL, 'Paid', '2024-01-06 00:00:00', 'Nareshpk', '2024-01-06 21:02:06', NULL, NULL),
(20, 1, 4, 4, 'moorthyperumal', 29, 'M', 'Trichy', '9042180028', 'Tes66', 'Test ok, Test', 500, 100, NULL, 'partial paid', '2024-01-06 00:00:00', 'Nareshpk', '2024-01-06 21:02:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prodbuy001mb`
--

CREATE TABLE `prodbuy001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `pro_slno` int(11) NOT NULL,
  `prod_price` varchar(40) NOT NULL,
  `qty` varchar(40) NOT NULL,
  `total` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodbuy001mb`
--

INSERT INTO `prodbuy001mb` (`sl_no`, `unitslno`, `date`, `pro_slno`, `prod_price`, `qty`, `total`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, '2024-01-17 05:30:00', 5, '250', '50', '12500', 'Nareshpk', '2024-01-17 20:49:32', 'Nareshpk', '2024-01-17 22:10:05'),
(2, 1, '2024-01-17 05:30:00', 4, '200', '10', '2000', 'Nareshpk', '2024-01-17 20:52:18', 'Nareshpk', '2024-02-07 21:26:57'),
(3, 1, '2024-01-18 05:30:00', 3, '300', '5', '1500', 'Nareshpk', '2024-01-17 20:52:33', NULL, NULL),
(4, 1, '2024-01-17 05:30:00', 2, '200', '5', '1000', 'Nareshpk', '2024-01-17 20:52:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prodmaster001mb`
--

CREATE TABLE `prodmaster001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `prod_id` varchar(40) NOT NULL,
  `prod_name` varchar(40) NOT NULL,
  `prod_price` varchar(40) NOT NULL,
  `qty` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodmaster001mb`
--

INSERT INTO `prodmaster001mb` (`sl_no`, `unitslno`, `prod_id`, `prod_name`, `prod_price`, `qty`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(2, 1, 'prod/0002', 'Product 2', '200', '1', 'Nareshpk', '2024-01-16 14:17:10', NULL, NULL),
(3, 1, 'prod/0003', 'Prodcut-3', '300', '1', 'Nareshpk', '2024-01-16 14:17:49', NULL, NULL),
(4, 1, 'prod/0004', 'prodcut 4', '200', '1', 'Nareshpk', '2024-01-16 14:19:03', NULL, NULL),
(5, 1, 'prod/0005', 'Test', '250', '1', 'Nareshpk', '2024-01-16 14:39:20', 'Nareshpk', '2024-01-16 20:48:57'),
(6, 1, 'prod/0005', 'Test-1', '500', '1', 'Nareshpk', '2024-01-17 22:06:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role001mb`
--

CREATE TABLE `role001mb` (
  `id` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `rolename` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role001mb`
--

INSERT INTO `role001mb` (`id`, `unitslno`, `rolename`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 'superadmin', 'Naresh', '2021-09-06 13:18:33', 'siva', '2021-09-06 13:18:33'),
(2, 1, 'admin', 'Naresh', '2021-09-06 13:18:33', 'siva', '2021-09-06 13:18:33'),
(3, 1, 'user', 'Naresh', '2021-09-06 13:18:33', 'siva', '2021-09-06 13:18:33'),
(4, 1, 'guest', 'Naresh', '2021-09-06 13:18:33', 'siva', '2021-09-06 13:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `status001mb`
--

CREATE TABLE `status001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `code_group` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status001mb`
--

INSERT INTO `status001mb` (`sl_no`, `unitslno`, `code_group`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`, `status`, `name`) VALUES
(8, 1, 4, 'setmt1', '2022-08-03 15:44:30', NULL, NULL, 'A', 'ACTIVE'),
(9, 1, 4, 'setmt1', '2022-08-03 15:45:23', NULL, NULL, 'I', 'IN ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `treatment001mb`
--

CREATE TABLE `treatment001mb` (
  `sl_no` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `treatment` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `treatment001mb`
--

INSERT INTO `treatment001mb` (`sl_no`, `unitslno`, `treatment`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 'Test', 'Naresh', '2023-10-22 20:06:34', NULL, NULL),
(3, 1, 'Test ok', 'Naresh', '2023-10-22 20:09:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unitdeptmaster001mb`
--

CREATE TABLE `unitdeptmaster001mb` (
  `sl_no` int(11) NOT NULL,
  `departsl_no` int(11) NOT NULL,
  `unitsl_no` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `unitdeptmaster001mb`
--

INSERT INTO `unitdeptmaster001mb` (`sl_no`, `departsl_no`, `unitsl_no`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 1, 'sekar1', '2022-08-05 11:55:33', 'setmt1', '2022-08-19 15:56:17'),
(3, 1, 2, 'Naresh', '2023-10-29 15:48:07', NULL, NULL),
(4, 2, 1, 'Nareshpk', '2024-01-16 22:57:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unitmaster001mb`
--

CREATE TABLE `unitmaster001mb` (
  `sl_no` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `unit_describtion` varchar(200) NOT NULL,
  `status` char(10) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `unitmaster001mb`
--

INSERT INTO `unitmaster001mb` (`sl_no`, `unit_name`, `unit_describtion`, `status`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 'Kulithalai', 'unit description', '8', '', '2022-08-02 18:52:13', 'Nareshpk', '2024-01-16 22:44:48'),
(2, 'Musiri', 'unit description', '8', '', '2022-08-02 19:07:30', 'Nareshpk', '2024-01-16 22:45:00'),
(3, 'Thuraiyur', 'Test', '8', 'Naresh', '2023-10-29 15:21:41', 'Nareshpk', '2024-01-16 22:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `user001mb`
--

CREATE TABLE `user001mb` (
  `person_id` int(11) NOT NULL,
  `unitslno` int(11) NOT NULL,
  `dpslno` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `securityquestion` varchar(250) NOT NULL,
  `securityanswer` varchar(250) NOT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user001mb`
--

INSERT INTO `user001mb` (`person_id`, `unitslno`, `dpslno`, `roleid`, `firstname`, `lastname`, `username`, `password`, `status`, `email`, `securityquestion`, `securityanswer`, `theme`, `insert_user`, `insert_datetime`, `updated_user`, `updated_datetime`) VALUES
(1, 1, 1, 1, '', '', 'Nareshpk', '$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa', 'A', 'adc@gmail.com', 'What was your childhood nickname ?', 'ss', '#286090', 'Naresh', '2021-09-06 13:18:33', 'Naresh', '2021-09-06 13:18:33'),
(2, 2, 1, 1, 'Naresh', 'Kumar', 'Nareshpk', '$2b$10$j9EYffASPJuUjWM5pvzwSup2dkfPNj.9HvaZxCvPpMZYvFGXMU4ZC', 'A', 'nareshpk@gmail.com', 'What was your childhood nickname ?', 'Test', '#286090', 'Naresh', '2023-10-29 15:58:56', NULL, NULL),
(3, 2, 1, 1, 'Naresh', 'Kumar', 'nkumar', '$2b$10$vYHZ7uJ5pQEp60YvIF/t6uwS.HdZmDHWqy.7sgoyK8M4dkmrJ0W2e', 'A', 'nk@gmail.com', 'What was your childhood nickname ?', 'Test', '#286090', 'Nareshpk', '2023-11-13 12:42:22', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowance001mb`
--
ALTER TABLE `allowance001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `sslno` (`sslno`);

--
-- Indexes for table `customer001mb`
--
ALTER TABLE `customer001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `prodslno` (`prodslno`);

--
-- Indexes for table `dayilyexpenses001mb`
--
ALTER TABLE `dayilyexpenses001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `department001mb`
--
ALTER TABLE `department001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `sslno` (`sslno`);

--
-- Indexes for table `diagnosis001mb`
--
ALTER TABLE `diagnosis001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `distribution001mb`
--
ALTER TABLE `distribution001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `prodslno` (`prodslno`),
  ADD KEY `clinicslno` (`clinicslno`);

--
-- Indexes for table `doctor001mb`
--
ALTER TABLE `doctor001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `monthlyexpenses001mb`
--
ALTER TABLE `monthlyexpenses001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `patient001mb`
--
ALTER TABLE `patient001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `patientmaster001mb`
--
ALTER TABLE `patientmaster001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `patientop001mb`
--
ALTER TABLE `patientop001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `pslno` (`pslno`),
  ADD KEY `dslno` (`dslno`);

--
-- Indexes for table `patientpc001mb`
--
ALTER TABLE `patientpc001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `pcslno` (`pcslno`),
  ADD KEY `dcslno` (`dcslno`);

--
-- Indexes for table `prodbuy001mb`
--
ALTER TABLE `prodbuy001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `pro_slno` (`pro_slno`);

--
-- Indexes for table `prodmaster001mb`
--
ALTER TABLE `prodmaster001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `role001mb`
--
ALTER TABLE `role001mb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status001mb`
--
ALTER TABLE `status001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `treatment001mb`
--
ALTER TABLE `treatment001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `unitdeptmaster001mb`
--
ALTER TABLE `unitdeptmaster001mb`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `departsl_no` (`departsl_no`),
  ADD KEY `unitsl_no` (`unitsl_no`);

--
-- Indexes for table `unitmaster001mb`
--
ALTER TABLE `unitmaster001mb`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `user001mb`
--
ALTER TABLE `user001mb`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `unitslno` (`unitslno`),
  ADD KEY `dpslno` (`dpslno`),
  ADD KEY `roleid` (`roleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowance001mb`
--
ALTER TABLE `allowance001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer001mb`
--
ALTER TABLE `customer001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dayilyexpenses001mb`
--
ALTER TABLE `dayilyexpenses001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `department001mb`
--
ALTER TABLE `department001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diagnosis001mb`
--
ALTER TABLE `diagnosis001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `distribution001mb`
--
ALTER TABLE `distribution001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor001mb`
--
ALTER TABLE `doctor001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monthlyexpenses001mb`
--
ALTER TABLE `monthlyexpenses001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient001mb`
--
ALTER TABLE `patient001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientmaster001mb`
--
ALTER TABLE `patientmaster001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patientop001mb`
--
ALTER TABLE `patientop001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patientpc001mb`
--
ALTER TABLE `patientpc001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prodbuy001mb`
--
ALTER TABLE `prodbuy001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prodmaster001mb`
--
ALTER TABLE `prodmaster001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role001mb`
--
ALTER TABLE `role001mb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status001mb`
--
ALTER TABLE `status001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `treatment001mb`
--
ALTER TABLE `treatment001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unitdeptmaster001mb`
--
ALTER TABLE `unitdeptmaster001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unitmaster001mb`
--
ALTER TABLE `unitmaster001mb`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user001mb`
--
ALTER TABLE `user001mb`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowance001mb`
--
ALTER TABLE `allowance001mb`
  ADD CONSTRAINT `allowance001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `doctor001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer001mb`
--
ALTER TABLE `customer001mb`
  ADD CONSTRAINT `customer001mb_ibfk_1` FOREIGN KEY (`prodslno`) REFERENCES `prodmaster001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department001mb`
--
ALTER TABLE `department001mb`
  ADD CONSTRAINT `department001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE;

--
-- Constraints for table `distribution001mb`
--
ALTER TABLE `distribution001mb`
  ADD CONSTRAINT `distribution001mb_ibfk_1` FOREIGN KEY (`prodslno`) REFERENCES `prodmaster001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distribution001mb_ibfk_2` FOREIGN KEY (`clinicslno`) REFERENCES `unitmaster001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patientop001mb`
--
ALTER TABLE `patientop001mb`
  ADD CONSTRAINT `patientop001mb_ibfk_1` FOREIGN KEY (`pslno`) REFERENCES `patient001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patientop001mb_ibfk_2` FOREIGN KEY (`dslno`) REFERENCES `doctor001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patientpc001mb`
--
ALTER TABLE `patientpc001mb`
  ADD CONSTRAINT `patientpc001mb_ibfk_1` FOREIGN KEY (`pcslno`) REFERENCES `patientmaster001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patientpc001mb_ibfk_2` FOREIGN KEY (`dcslno`) REFERENCES `doctor001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prodbuy001mb`
--
ALTER TABLE `prodbuy001mb`
  ADD CONSTRAINT `prodbuy001mb_ibfk_1` FOREIGN KEY (`pro_slno`) REFERENCES `prodmaster001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unitdeptmaster001mb`
--
ALTER TABLE `unitdeptmaster001mb`
  ADD CONSTRAINT `unitdeptmaster001mb_ibfk_1` FOREIGN KEY (`departsl_no`) REFERENCES `department001mb` (`sl_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `unitdeptmaster001mb_ibfk_2` FOREIGN KEY (`unitsl_no`) REFERENCES `unitmaster001mb` (`sl_no`) ON DELETE CASCADE;

--
-- Constraints for table `user001mb`
--
ALTER TABLE `user001mb`
  ADD CONSTRAINT `user001mb_ibfk_1` FOREIGN KEY (`unitslno`) REFERENCES `unitmaster001mb` (`sl_no`),
  ADD CONSTRAINT `user001mb_ibfk_2` FOREIGN KEY (`dpslno`) REFERENCES `department001mb` (`sl_no`),
  ADD CONSTRAINT `user001mb_ibfk_3` FOREIGN KEY (`roleid`) REFERENCES `role001mb` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
