-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost: 3306
-- Generation Time: Apr 15, 2024 at 10:44 PM
-- Server version: 8.0.36
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AUTH_ID` int NOT NULL,
  `AUTH_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
desc `author`;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AUTH_ID`, `AUTH_NAME`) VALUES
(1, 'Erwin Kreyszig'),
(2, 'Dexter Booth'),
(3, 'Maurice J. Bach'),
(4, 'Harvey Deitel'),
(5, 'Ramez Elmasri'),
(6, 'Abraham Silberschatz'),
(7, 'David A Patterson'),
(8, 'Mikko H. Lipasti'),
(9, 'Jon Duckett'),
(10, 'Marjin Haverbeke');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` varchar(8) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `LANGUAGE` varchar(20) NOT NULL,
  `PUBLISHER` varchar(30) DEFAULT NULL,
  `MRP` int NOT NULL,
  `PUB_DATE` date NOT NULL,
  `QUANTITY` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `TITLE`, `LANGUAGE`, `PUBLISHER`, `MRP`, `PUB_DATE`, `QUANTITY`) VALUES
('CS2201', 'Operating System Principles', 'ENGLISH', 'Wiley', 526, '2020-07-17', 4),
('CS2202', 'Operating Systems', 'ENGLISH', 'O\'Reilly Media', 600, '2020-04-07', 25),
('CS2203', 'Computer Organisation and Architecture', 'ENGLISH', 'Palgrave', 600, '2020-04-01', 20),
('CS2204', 'Modern Processor Design', 'ENGLISH', 'Henry & Mikko', 600, '2018-04-11', 76),
('CS2231', 'Database System Concepts', 'ENGLISH', 'Ramakrishnan', 600, '2018-04-11', 76),
('CS2233', 'HTML & CSS Designs', 'ENGLISH', 'O\'Reilly Media', 700, '2020-04-01', 12),
('CS2234', 'Eloquent JavaScript', 'ENGLISH', 'Henry & Mikko', 600, '2018-04-11', 76),
('MA2201', 'SEA Advanced Engineering Mathematics', 'ENGLISH', 'John Wiley & Sons', 1000, '2001-02-14', 12),
('MA2202', 'Engineering Mathematics', 'ENGLISH', 'Palgrave', 715, '2017-07-01', 20);

-- --------------------------------------------------------

--
-- Table structure for table `emplogin`
--

CREATE TABLE `emplogin` (
  `EMP_ID` varchar(8) NOT NULL,
  `PASS` int NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `CONTACT NO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emplogin`
--

INSERT INTO `emplogin` (`EMP_ID`, `PASS`, `EMAIL`, `CONTACT NO`) VALUES
('E01', 190704, 'kpratik653@gmail.com', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `employeee`
--

CREATE TABLE `employeee` (
  `EMP_ID` varchar(8) NOT NULL,
  `E_FNAME` varchar(10) NOT NULL,
  `E_LNAME` varchar(10) NOT NULL,
  `E_DOB` date NOT NULL,
  `E_GENDER` varchar(1) NOT NULL,
  `E_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeee`
--

INSERT INTO `employeee` (`EMP_ID`, `E_FNAME`, `E_LNAME`, `E_DOB`, `E_GENDER`, `E_ADDRESS`) VALUES
('E01', 'Pratik', 'Shrivastav', '2004-07-19', 'M', 'Dwarka New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `student_rollno` int NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `ISSUED_DATE` text NOT NULL,
  `RENEWED_DATE` text NOT NULL,
  `FINE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`student_rollno`, `ISBN`, `ISSUED_DATE`, `RENEWED_DATE`, `FINE`) VALUES
(100000, 'CSC5011', '2020-09-27', '2020-10-02', 10),
(100000, 'CSC5012', '2022-02-02', '', 0),
(100000, '63662', '2024-04-16', '', 0),
(200000, 'CSC5012', '2024-04-16', '', 0),
(100000, 'CS2232', '1959-01-06', '', 0),
(100000, 'CS2201', '2024-04-19', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `EMP_ID` varchar(8) NOT NULL,
  `student_rollno` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`EMP_ID`, `student_rollno`) VALUES
('E01', 101617);

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `student_rollno` int NOT NULL,
  `student_password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `student_emailid` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `student_contact` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_attempt` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`student_rollno`, `student_password`, `student_emailid`, `student_contact`, `login_attempt`) VALUES
(100000, '123456789', 'a@gmail.com', '9000000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_rollno` int NOT NULL,
  `student_firstname` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_lastname` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_date_of_birth` date NOT NULL,
  `student_gender` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_bloodgroup` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_branch` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_semester` int NOT NULL,
  `student_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_hostelite` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_hobbies` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_image` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`student_rollno`, `student_firstname`, `student_lastname`, `student_date_of_birth`, `student_gender`, `student_bloodgroup`, `student_branch`, `student_semester`, `student_address`, `student_hostelite`, `student_hobbies`, `student_image`) VALUES
(100000, 'Test', 'User1', '1990-10-25', 'M', 'B', 'COMP', 5, 'sdagfyia', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `written`
--

CREATE TABLE `written` (
  `ISBN` varchar(8) NOT NULL,
  `AUTH_ID` decimal(11,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `written`
--

INSERT INTO `written` (`ISBN`, `AUTH_ID`) VALUES
('CSC5011', 3.750000),
('CSC5012', 5.000000),
('CSC5012', 6.250000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AUTH_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `emplogin`
--
ALTER TABLE `emplogin`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `employeee`
--
ALTER TABLE `employeee`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD KEY `ibfk` (`ISBN`),
  ADD KEY `issbk` (`student_rollno`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD KEY `mefk` (`EMP_ID`),
  ADD KEY `msfk` (`student_rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
