-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 05:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clienzydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` mediumtext DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Keval', 9869572111, 'keval_mco@outlook.com', '202cb962ac59075b964b07152d234b70', '2023-07-01 16:27:59'),
(3, 'Manoj', 9969530228, 'manoj_mco@rediffmail.com', '977c0156d7403e2bebba75cdf5652678', '2024-05-27 14:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblassignments`
--

CREATE TABLE `tblassignments` (
  `assignmentID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblassignments`
--

INSERT INTO `tblassignments` (`assignmentID`, `ID`, `EmployeeID`) VALUES
(32, 914300490, 35),
(33, 914300492, 35),
(34, 914300493, 36),
(35, 914300383, 35),
(36, 914300383, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `ClientAddedBy` varchar(20) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `Tag` varchar(20) DEFAULT NULL,
  `financialyear` varchar(15) DEFAULT NULL,
  `file` varchar(15) DEFAULT NULL,
  `budgethrs` int(10) DEFAULT NULL,
  `actualhrs` int(10) DEFAULT NULL,
  `expense` varchar(30) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(20) NOT NULL DEFAULT 'Not Started',
  `PaymentStatus` varchar(12) NOT NULL DEFAULT 'Pending',
  `expiryDate1` date DEFAULT NULL,
  `expiryDate2` date DEFAULT NULL,
  `expiryDate3` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `ContactName`, `CompanyName`, `Notes`, `ClientAddedBy`, `deadline`, `Tag`, `financialyear`, `file`, `budgethrs`, `actualhrs`, `expense`, `remark`, `CreationDate`, `Status`, `PaymentStatus`, `expiryDate1`, `expiryDate2`, `expiryDate3`) VALUES
(914300383, 'keval', 'K.J Somaiya Institute of Technology', 'hehe', NULL, '2023-07-26', 'ROC', '23-24', '21R', 12, 16, '1800', 'hehe', '2023-06-27 17:22:53', 'Completed', 'Paid', '2027-06-29', '2027-06-29', '2027-06-28'),
(914300490, 'Sakshi', 'K.J Somaiya Institute of Technology', 'hehe', 'Keval', '2023-07-21', 'ROC', '23-24', '21A', 12, 14, '1200', '', '2023-07-01 16:53:21', 'Completed', 'Paid', '2025-07-07', '2025-07-08', '2025-07-09'),
(914300491, 'Jimit Parmar', 'K.J Somaiya Institute of Technology', 'abc', 'jimit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-01 16:54:33', 'In Process', 'Overdue', '2025-07-01', '2025-07-02', '2025-07-03'),
(914300492, 'Jimit Parmar', 'K.J Somaiya Institute of Technology', 'hehe', 'Keval', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 17:20:49', 'Not Started', 'Paid', '2025-07-02', '2025-07-03', NULL),
(914300493, 'jim', 'K.J Somaiya Institute of Technology', '..', 'Jimit Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 17:22:49', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300494, 'Jimit Parmar', 'K.J Somaiya Institute of Technology', 'yes', 'sakshi', '2023-09-22', 'ROC', '23-24', '321a', 12, 15, '1300', '', '2023-08-23 09:10:35', 'In Process', 'Pending', NULL, NULL, NULL),
(914300495, 'Jimit Parmar', 'random', 'hehe', 'sakshi', '2023-09-10', 'ROC', '23-24', '2Q', 12, 16, '2211', '', '2023-08-23 09:23:57', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300496, 'Jimit Parmar', 'K.J Somaiya Institute of Technology', 'he', 'sakshi', '2023-08-31', 'LOAN', '23-24', '31W', 14, 15, '1600', 'e', '2023-08-23 09:58:27', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300497, 'atharva', 'jim', 'hehe', 'Keval', '2024-07-26', 'JIM', '24-25', 'gg5', 760, 700, '67000', 'hehe', '2024-05-25 17:08:50', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300498, 'atharva', 'jim', 'hehe', 'Keval', '2024-07-26', 'JIM', '24-25', 'gg5', 760, 700, '67000', 'hehe', '2024-05-25 17:09:54', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300499, 'jim', 'jim', 'hehe', 'Keval', '2024-06-25', 'JIM', '24-25', 'jj2', 50, 60, '6000', 'hehe', '2024-05-25 17:10:18', 'Not Started', 'Pending', NULL, NULL, NULL),
(914300500, 'atharva', 'kjsit', 'none', 'sakshi', '2024-07-26', 'JIM', '24-25', 'hhe', 67, 70, '10000', 'none', '2024-05-25 17:12:35', 'Not Started', 'Pending', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblclient_employee`
--

CREATE TABLE `tblclient_employee` (
  `mainID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EmployeeID` int(11) NOT NULL,
  `EmployeeName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `EmployeePhnumber` bigint(10) DEFAULT NULL,
  `Password` text DEFAULT 'password',
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EmployeeID`, `EmployeeName`, `EmployeePhnumber`, `Password`, `CreationDate`) VALUES
(35, 'Jimit Parmar', 9004406410, '45ef8838ed870ca2225fd045e007f645', '2023-07-01 16:53:41'),
(36, 'sakshi', 9004406410, '202cb962ac59075b964b07152d234b70', '2023-07-02 17:21:29'),
(37, 'atharva', 9998332166, '45ef8838ed870ca2225fd045e007f645', '2024-05-25 17:16:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblassignments`
--
ALTER TABLE `tblassignments`
  ADD PRIMARY KEY (`assignmentID`),
  ADD KEY `ClientID` (`ID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient_employee`
--
ALTER TABLE `tblclient_employee`
  ADD PRIMARY KEY (`mainID`),
  ADD KEY `ClientID` (`ID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblassignments`
--
ALTER TABLE `tblassignments`
  MODIFY `assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914300501;

--
-- AUTO_INCREMENT for table `tblclient_employee`
--
ALTER TABLE `tblclient_employee`
  MODIFY `mainID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblassignments`
--
ALTER TABLE `tblassignments`
  ADD CONSTRAINT `tblassignments_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tblclient` (`ID`),
  ADD CONSTRAINT `tblassignments_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `tblemployee` (`EmployeeID`);

--
-- Constraints for table `tblclient_employee`
--
ALTER TABLE `tblclient_employee`
  ADD CONSTRAINT `tblclient_employee_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tblclient` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblclient_employee_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `tblemployee` (`EmployeeID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
