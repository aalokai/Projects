-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2023 at 08:07 PM
-- Server version: 8.0.34-0ubuntu0.23.04.1
-- PHP Version: 8.1.12-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int NOT NULL,
  `coursename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `coursename`) VALUES
(1, 'Database'),
(2, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(1000) NOT NULL,
  `enquirydate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `usertype`, `status`) VALUES
('12345', 'qwerty', 'student', 'false'),
('admin@gmail.com', '12345', 'admin', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `newstext` varchar(1000) NOT NULL,
  `posteddate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qb`
--

CREATE TABLE `qb` (
  `qid` int NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(500) NOT NULL,
  `opt4` varchar(500) NOT NULL,
  `correct` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qb`
--

INSERT INTO `qb` (`qid`, `coursename`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `correct`) VALUES
(1, 'Database', 'In Hierarchical model records are organised as', 'Graph', 'List', 'Links', 'Tree', 'Tree'),
(2, 'Database', 'A relational database consists of a collection of', 'Tables', 'FieldsC', 'RecordsD', 'Keys', 'Tables'),
(3, 'Database', 'The term _______ is used to refer to a row.', 'Attribute', 'Tuple', 'Field', 'Instance', 'Tuple'),
(4, 'Database', 'The term attribute refers to a ___________ of a table', 'Record', 'Column', 'Tuple', 'Key', 'Column'),
(5, 'Database', 'Using which language can a user request information from a database ?', 'Query', 'Relational', 'Structural', 'Compiler', 'Query'),
(6, 'Database', 'One of the following is a valid record-based data model.', 'Object-oriented model', 'Relational model', 'Entity-relationship model', 'None of the above', 'Relational model'),
(7, 'Database', 'A top-to-bottom relationship among the items in a database is established by a', 'Hierarchical schema', 'Network schema', 'Relational schema', 'All of the above', 'Hierarchical schemaNetwork schema'),
(8, 'Database', 'A data model is:', 'Used to describe structure of a database', 'Set of basic operations on the database', 'Both', 'None of the above', 'Used to describe structure of a database'),
(9, 'Database', 'DBA stands for:', 'Data Bank Access', 'Database Access', 'Data Bank Administration', 'Database Administrator', 'Database Administrator'),
(10, 'Database', 'Between the users and database itself, a DBMS will act as:', 'Barrier', 'Interface', 'Referee', 'Obstacle', 'Interface');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int NOT NULL,
  `rollno` int NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `totalmark` int NOT NULL,
  `getmark` int NOT NULL,
  `examdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `rollno`, `coursename`, `totalmark`, `getmark`, `examdate`) VALUES
(1, 12345, 'Database', 10, 3, '2023-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `rollno` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `program` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `year` varchar(50) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `regdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`rollno`, `name`, `fname`, `mname`, `gender`, `address`, `program`, `branch`, `year`, `contactno`, `emailaddress`, `regdate`) VALUES
(1001, 'Kabir', 'dsafafd', 'dsrgtgdg', 'male', 'sdrgergeds', 'B.Tech.', 'CS', 'Final Year', '0987654321', 'sdsds@gmail.com', '2023-09-22'),
(1435, 'Aerial Rescue ', 'trhdsrh', 'fdhhzhzt', 'female', 'ragregsesgdzs', 'B.Tech.', 'CS', 'Final Year', '1234567890', 'SDGHFJ@DIA.COM', '2023-09-14'),
(1456, 'dsgrstare', 'raggdrareg', 'areagea', 'male', 'argehtjek', 'M.Tech.', 'IT', 'First Year', '12345678', 'dzg', '2023-09-20'),
(12345, 'abcd', 'abcd', 'abcd', 'male', 'abcd', 'B.Tech.', 'CS', 'First Year', '1234567890', 'apl@gmail.com', '2023-09-22'),
(12456, 'Aerial Rescue Object Detection', 'dsgdh', 'dsghj', 'female', 'drhtjuk', 'B.Tech.', 'CS', 'Second Year', '1245678', 'sdghj', '2023-09-20'),
(123456, 'Amit', 'Adarsh', 'Mamta', 'male', 'Kabir Nagar', 'B.Tech.', 'CS', 'Final Year', '1234567890', 'apple@gmail.com', '2023-09-15'),
(124567, 'kishan', 'trhdsrh', 'fdhhzhzt', 'male', 'Srgthdju', 'B.Tech.', 'CS', 'First Year', '3234567', 'aterst', '2023-09-20'),
(12345678, 'lhkugjhg', 'hgjhn', 'hiugykh', 'male', 'ilkyjf', 'B.Tech.', 'EC', 'Second Year', '123456', 'ewrtyuj', '2023-09-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qb`
--
ALTER TABLE `qb`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `qb`
--
ALTER TABLE `qb`
  MODIFY `qid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
