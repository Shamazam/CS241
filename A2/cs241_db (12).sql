-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 09:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs241_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` bigint(20) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` bigint(20) NOT NULL,
  `day_of_week` varchar(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `week` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `class_id`, `day_of_week`, `status`, `week`) VALUES
(4, 2, 4, 'Monday', 'present', 2),
(5, 4, 3, 'Monday', 'present', 2),
(7, 2, 3, 'Tuesday', 'present', 1),
(8, 4, 3, 'Thursday', 'present', 3),
(9, 4, 3, 'Friday', 'absent', 1),
(10, 4, 3, 'Thursday', 'absent', 1),
(11, 4, 12, 'Monday', 'present', 1),
(12, 4, 12, 'Tuesday', 'present', 1),
(13, 4, 12, 'Wednesday', 'present', 1),
(14, 4, 12, 'Thursday', 'late', 1),
(15, 4, 12, 'Friday', 'absent', 1),
(24, 2, 4, 'Monday', 'present', 1),
(25, 4, 12, 'Monday', 'present', 2),
(26, 5, 12, 'Monday', 'present', 1),
(27, 5, 12, 'Tuesday', 'present', 1),
(29, 2, 4, 'Tuesday', 'present', 1),
(30, 2, 4, 'Wednesday', 'late', 1),
(31, 4, 3, 'Monday', 'present', 1),
(32, 2, 3, 'Monday', 'present', 1),
(34, 2, 3, 'Wednesday', 'absent', 1),
(37, 4, 3, 'Tuesday', 'late', 1),
(41, 4, 3, 'Monday', 'present', 5),
(42, 4, 3, 'Tuesday', 'present', 4);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` bigint(20) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `classdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classid`, `classname`, `classdescription`) VALUES
(1, 'Mathematics', 'A comprehensive course covering algebra, geometry, and calculus.'),
(2, 'English Literature', 'In-depth study of classic and contemporary English literature.'),
(3, 'History', 'A survey of world history, focusing on major events and civilizations.'),
(4, 'Science', 'An introduction to biology, chemistry, and physics.'),
(5, 'Computer Science', 'A foundational course in programming and computer systems.'),
(6, 'Art', 'An exploration of various art forms, including painting, sculpture, and photography.'),
(7, 'Music', 'A study of musical theory, history, and performance.'),
(8, 'Physical Education', 'A course focused on physical fitness, sports, and health.'),
(9, 'Foreign Language', 'A language course designed to improve speaking, reading, and writing skills.'),
(10, 'Social Studies', 'A course that examines social, political, and economic issues.'),
(11, 'Trigonometry', 'Focuses in Beginner basics '),
(12, 'Literature - Level 1', 'Focuses on the introduction to varieties of English');

-- --------------------------------------------------------

--
-- Table structure for table `courseadmin`
--

CREATE TABLE `courseadmin` (
  `courseadminid` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseadmin`
--

INSERT INTO `courseadmin` (`courseadminid`, `email`, `dob`, `fname`, `lname`, `phone`, `address`, `password`) VALUES
(1, '101@gmail.com', '2024-09-17', 'sam', 'lam', '123454', '123', '$2a$10$vKBJDbnEIVy44psLlI/5muDGknMWiNb9Dm5xIPjnKcpocNq/AGFt6'),
(2, 'ap@gm.com', '2024-10-01', 'sam', 'lam', '123454', '1121', '$2a$10$Agxy72oLcmhX8gieyWRmpOkEioCY2hG.WGRvgwvu2BW2XZFv.3pXq');

-- --------------------------------------------------------

--
-- Table structure for table `courseteacher`
--

CREATE TABLE `courseteacher` (
  `courseteacherid` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseteacher`
--

INSERT INTO `courseteacher` (`courseteacherid`, `email`, `dob`, `fname`, `lname`, `phone`, `address`, `password`) VALUES
(1, '1122@gaml.com', '2024-08-20', 'sam', 'lam', '123454', 'ca', '$2a$10$vaXMZp.vRoPcGpTiraoU6uNUOrvqiKb5.zNgFyqx38HoV9DzcUFMC'),
(2, '1121@gmail.com', '2024-08-20', 'shamal', 'prasad', '917', '12qeqdqe', '$2a$10$1PGkaJsX41CWEFCCAJNuU.BdVbA2d.q3Km8LfFAIEkwCVvciqCdCW'),
(3, 'zxc@gmail.com', '2024-09-20', 'apple', 'can', '1234567', 'canada', '$2a$10$o1A0EylQ5XtJ3VYTIVIn4eUqg.fhLGAvXN9NEnjpb3PUyrWgrAJPi');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `message_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `parent_id`, `message_content`, `message_date`) VALUES
(1, 1, 'Your child, shamal prasad (ID: 4), was marked absent from the course History (Class ID: 3) on Friday during Week 1.', '2024-10-14'),
(2, 1, 'Your child, shamal prasad (ID: 4), was marked absent from the course History (Class ID: 3) on Thursday during Week 1.', '2024-10-14'),
(3, 1, 'Your child, shamal prasad (ID: 4), was marked absent from the course Literature - Level 1 (Class ID: 12) on Friday during Week 1.', '2024-10-15'),
(4, 1, 'Your child, sam lam (ID: 2), was marked absent from the course History (Class ID: 3) on Wednesday during Week 1.', '2024-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parentid` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parentid`, `email`, `dob`, `fname`, `lname`, `phone`, `address`, `password`) VALUES
(1, '10@gmail.com', '2024-09-25', 'sam', 'lam', '123454', '123', '$2a$10$EslaR9CnfgL8xiF2vwMzROiLxBjj93KNhm47VY/Qzw64VzdtJCTVO'),
(2, 'abs@gmail.com', '2006-02-23', 'apple', 'man', '1234567', 'suba', '$2a$10$VrbVFqnUhJ.zfK3j/pjbKOmcibpKwifRv7iptU4VVCbOkF/O.oxlq');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stuid` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `parent_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stuid`, `email`, `dob`, `fname`, `lname`, `phone`, `address`, `password`, `parent_id`) VALUES
(1, 'S11219545@student.usp.ac.fj', '2024-08-28', 'shamal', 'prasad', 917, 'ba', '1234', 1),
(2, '111@gaml.com', '2024-09-12', 'sam', 'lam', 123454, 'vw', '1234', 1),
(3, '121@gmail.com', '2024-09-04', 'shamal', 'prasad', 917, 'sth', '$2a$10$fm.yMnEI.P8dijZh//3mB.JuW5pAuZeCijjCSmAzp0yj9Cm8E2SVC', 1),
(4, '11@gmail.com', '2024-09-17', 'shamal', 'prasad', 917, 'qqaq', '$2a$10$E.U/6y./e3lPbbxJU.dEJONKxptXNkzsGhHIImaQvdO05keuGHxGW', 1),
(5, 'aqua@gmail.com', '2024-06-20', 'sam', 'lam', 123454, '1121dddd', '$2a$10$ous1K8SkiKamz97Q0Nctnuwktb2HqJ0HPtKjnjaf17WwDulJNDbGu', 1),
(6, 'qqq@gmail.com', '2024-10-02', 'nim', 'sim', 1341342, 'ba', '$2a$10$c85LRo/kCzhtj5He1/Hhi.s1l39F83ambxkvloaTaSiUDnoQeRzoC', 2),
(8, '12341@asf', '2024-10-24', 'dfgsd', 'sdfgsdg', 123456, '1234124', '$2a$10$6SfM0RJAPi4AWnRF2a48R.pYjvrRecgGtvJV2C.4PYa6Z80cpHoRK', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE `student_class` (
  `student_id` int(10) NOT NULL,
  `class_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`student_id`, `class_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 5),
(3, 6),
(4, 2),
(4, 3),
(4, 12),
(5, 12),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `courseteacher_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`courseteacher_id`, `class_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD UNIQUE KEY `unique_attendance_per_day` (`student_id`,`class_id`,`day_of_week`,`week`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `courseadmin`
--
ALTER TABLE `courseadmin`
  ADD PRIMARY KEY (`courseadminid`);

--
-- Indexes for table `courseteacher`
--
ALTER TABLE `courseteacher`
  ADD PRIMARY KEY (`courseteacherid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `fk_parent` (`parent_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parentid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stuid`),
  ADD KEY `fk_student_parent` (`parent_id`);

--
-- Indexes for table `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`student_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`courseteacher_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courseadmin`
--
ALTER TABLE `courseadmin`
  MODIFY `courseadminid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courseteacher`
--
ALTER TABLE `courseteacher`
  MODIFY `courseteacherid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parentid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stuid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`stuid`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`classid`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_parent` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parentid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_parent` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parentid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `student_class_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`stuid`),
  ADD CONSTRAINT `student_class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`classid`);

--
-- Constraints for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD CONSTRAINT `teacher_class_ibfk_1` FOREIGN KEY (`courseteacher_id`) REFERENCES `courseteacher` (`courseteacherid`),
  ADD CONSTRAINT `teacher_class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`classid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
