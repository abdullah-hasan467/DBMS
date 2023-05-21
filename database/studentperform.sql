-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 12:20 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentperform`
--

-- --------------------------------------------------------

--
-- Table structure for table `achieve_co_plo`
--

CREATE TABLE `achieve_co_plo` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `co1` decimal(65,2) NOT NULL,
  `co2` decimal(65,2) NOT NULL,
  `co3` decimal(65,2) NOT NULL,
  `co4` decimal(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `achieve_co_plo`
--

INSERT INTO `achieve_co_plo` (`id`, `student_id`, `course_id`, `section`, `semester`, `exam_type`, `co1`, `co2`, `co3`, `co4`) VALUES
(1, 1531176, 'CSE303', '1', 'Summer22', 'Midterm', '28.18', '30.00', '40.00', '37.00'),
(2, 1611001, 'CSE303', '1', 'Summer22', 'Midterm', '37.27', '20.00', '0.00', '16.00'),
(3, 1910876, 'CSE303', '1', 'Summer22', 'Midterm', '69.09', '15.00', '90.00', '80.00'),
(4, 2020001, 'CSE303', '1', 'Summer22', 'Midterm', '45.45', '45.00', '76.00', '76.00'),
(5, 2020760, 'CSE303', '1', 'Summer22', 'Midterm', '46.36', '7.50', '90.00', '70.00'),
(6, 1810810, 'CSE303', '1', 'Summer22', 'Midterm', '50.91', '30.00', '56.00', '58.00');

-- --------------------------------------------------------

--
-- Table structure for table `courseoutline`
--

CREATE TABLE `courseoutline` (
  `id` int(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `section` int(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `course_outline` text NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit_value` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `course_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseoutline`
--

INSERT INTO `courseoutline` (`id`, `course_id`, `section`, `semester`, `course_outline`, `course_title`, `credit_value`, `duration`, `course_desc`) VALUES
(2, 'CSE101', 7, 'Autumn22', '480535CSE303_CourseOutline.pdf', 'Introduction Programming Language', 3, 90, 'Conventional and database approaches. Basic concepts of DBMS. Hierarchical, network and relational data\r\nmodels. Entity-relationship modeling. Relational database designing: decomposition and normalization;\r\nfunctional dependencies. Relational algebra and calculus. Structured query language (SQL). Query\r\noptimization. Database programming with SQL and PL/SQL. Database security and administration. Distributed\r\ndatabases. Object-oriented data modeling. Specific database systems: oracle, MS SQL server, access.'),
(3, 'CSE303+L', 2, 'Autumn22', '971371CSE 303L, Course Outline.pdf', 'Database Management System', 1, 90, 'Conventional and database approaches. Basic concepts of DBMS. Hierarchical, network and relational data\r\nmodels. Entity-relationship modeling. Relational database designing: decomposition and normalization;\r\nfunctional dependencies. Relational algebra and calculus. Structured query language (SQL). Query\r\noptimization. Database programming with SQL and PL/SQL. Database security and administration. Distributed\r\ndatabases. Object-oriented data modeling. Specific database systems: oracle, MS SQL server, access.');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `school` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `enrolled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `school_id`, `school`, `department`, `semester`, `course_id`, `enrolled`) VALUES
(1, 1001, 'SLASS', 'MKT', 'Summer21', 'AAT101', '39'),
(2, 1002, 'SBE', 'BBA', 'Summer21', 'ACN201', '48'),
(3, 1002, 'SBE', 'BBA', 'Summer21', 'ACN202', '49'),
(4, 1001, 'SLASS', 'ACT', 'Summer21', 'ANT101', '40'),
(5, 1002, 'SBE', 'BBA', 'Summer21', 'ACN301', '40'),
(6, 1002, 'SBE', 'BBA', 'Summer21', 'ACN305', '40'),
(7, 1003, 'SELS', 'ENVS', 'Summer21', 'BCB103', '11'),
(8, 1003, 'SELS', 'ENVM', 'Summer21', 'BCB104', '11'),
(9, 1003, 'SELS', 'ENVS', 'Summer21', 'BCB302', '18'),
(10, 1002, 'SBE', 'BBA', 'Summer21', 'BUS201', '46'),
(11, 1004, 'SETS', 'CSE', 'Summer21', 'CIS101', '37'),
(12, 1004, 'SETS', 'CSE', 'Summer21', 'CIS101L', '37'),
(13, 1005, 'SPPH', 'BParmacy', 'Summer21', 'BIO101', '17');

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE `questionbank` (
  `id` int(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `section` int(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `word` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`id`, `course_id`, `section`, `semester`, `question`, `exam_type`, `word`) VALUES
(1, 'CSE101', 4, 'Autumn22', '941076mid_software.pdf', 'Quiz', 'how list infer choose classify conclude combine compose delete'),
(5, 'CSE303', 2, 'Autumn22', '183332quiz.pdf', 'Midterm', 'choose name list relate match when spell divide'),
(6, 'CSE303', 2, 'Autumn22', '420189Class test-1_SP-2022.pdf', 'Midterm', 'compose defend disprove estimate explain recommend measure perceive'),
(7, 'CSE317', 1, 'Autumn22', '507820quiz.pdf', 'Final', 'simplify theme takepartin testfor relationships interence'),
(9, 'Eng101', 11, 'Autumn22', '958265quiz2_B (1).pdf', 'Quiz', 'build construct experimentwith identify interview model organise'),
(11, 'CSE203', 2, 'Autumn22', '303588cse-313_aut21_mid (1).pdf', 'Midterm', '');

-- --------------------------------------------------------

--
-- Table structure for table `questionmark`
--

CREATE TABLE `questionmark` (
  `id` int(11) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `section` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `question_details` text NOT NULL,
  `q1` decimal(65,0) NOT NULL,
  `q2` decimal(65,0) NOT NULL,
  `q3` decimal(65,0) NOT NULL,
  `q4` decimal(65,0) NOT NULL,
  `co1` varchar(255) NOT NULL,
  `co2` varchar(255) NOT NULL,
  `co3` varchar(255) NOT NULL,
  `co4` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questionmark`
--

INSERT INTO `questionmark` (`id`, `course_id`, `section`, `semester`, `question_details`, `q1`, `q2`, `q3`, `q4`, `co1`, `co2`, `co3`, `co4`, `exam_type`) VALUES
(1, 'CSE303', 1, 'Summer21', 'q1 [30]\r\nq2 [30]\r\nq3 [20]\r\nq4 [20]', '30', '30', '20', '20', 'q2', 'q1', 'q3', 'q4', 'midterm'),
(2, 'CSE212', 3, 'Spring22', 'Q1 [30] \r\nQ2 [20] ', '30', '20', '0', '0', '', 'q1', '', 'q2', 'Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `spiderchart`
--

CREATE TABLE `spiderchart` (
  `id` int(11) NOT NULL,
  `number_of_students` int(255) DEFAULT NULL,
  `CO` varchar(255) NOT NULL,
  `successfully_achieved` int(255) NOT NULL,
  `successfully_achieved_per` decimal(65,2) NOT NULL,
  `failed_to_achieve` int(255) NOT NULL,
  `failed_to_achieve_per` decimal(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spiderchart`
--

INSERT INTO `spiderchart` (`id`, `number_of_students`, `CO`, `successfully_achieved`, `successfully_achieved_per`, `failed_to_achieve`, `failed_to_achieve_per`) VALUES
(1, 103, 'CO1', 55, '53.00', 48, '47.00'),
(2, 103, 'CO2', 28, '27.00', 75, '73.00'),
(3, 103, 'CO3', 50, '49.00', 53, '51.00'),
(4, 103, 'CO4', 59, '57.00', 44, '43.00'),
(5, 103, 'PO2', 55, '53.00', 48, '47.00'),
(6, 103, 'PO3', 28, '27.00', 75, '73.00'),
(7, 103, 'PO4', 50, '49.00', 53, '51.00'),
(8, 103, 'PO6', 59, '57.00', 44, '43.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `role`, `images`) VALUES
(3, 'Ishraqe Ahmed', 'Ishraqe', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ishraqe@gmail.com', '01533334444', 'Dhaka, Bangladesh', 3, '331447avatar.png'),
(4, 'Md Akram Hossain', 'akramcse', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'akramcse@gmail.com', '01532218493', 'Dhaka, Bangladesh', 1, '234408akram.jpg'),
(5, 'Nahin Fatema', 'Nahin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'nahin@gmail.com', '01723233434', 'Gazipur, Bangladesh', 4, '637585maliha.jpg'),
(6, 'Al Abid Supto', 'Supto', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'supto@gmail.com', '01745453533', 'Dhaka, Bangladesh', 2, '604747user2-160x160.jpg'),
(7, 'Inteshar Asif ', 'arman', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asif@gmail.com', '01523455432', 'Noakhali, Bangladesh', 2, ''),
(8, 'Mohammed Abullah Al Hasan', 'arman', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hasan@gmail.com', '01634413441', 'Tangail, Bangladesh', 0, '567312avatar4.png'),
(9, 'Sadita Ahmed', 'sadita', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sadita@gmail.com', '', '', 2, '876826avatar3.png'),
(10, 'Rahima Uddin', 'rahima', 'd5f12e53a182c062b6bf30c1445153faff12269a', 'rahima6@gmail.com', '', '', 3, '175353user3-128x128.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achieve_co_plo`
--
ALTER TABLE `achieve_co_plo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseoutline`
--
ALTER TABLE `courseoutline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionmark`
--
ALTER TABLE `questionmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spiderchart`
--
ALTER TABLE `spiderchart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achieve_co_plo`
--
ALTER TABLE `achieve_co_plo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courseoutline`
--
ALTER TABLE `courseoutline`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questionbank`
--
ALTER TABLE `questionbank`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questionmark`
--
ALTER TABLE `questionmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spiderchart`
--
ALTER TABLE `spiderchart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
