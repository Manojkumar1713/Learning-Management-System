-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2020 at 12:57 PM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `Assign_date`
--

CREATE TABLE `Assign_date` (
  `id` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Assign_date`
--

INSERT INTO `Assign_date` (`id`, `date`, `lang`) VALUES
(1, '2020/6/3', 'Java'),
(2, '', ''),
(3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `C`
--

CREATE TABLE `C` (
  `id` int NOT NULL,
  `unit` int NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `C`
--

INSERT INTO `C` (`id`, `unit`, `chapter`, `video`, `files`) VALUES
(2, 1, 'OJECT', 'https://www.youtube.com/embed/UluKWE9V_iU', 'Manojresume1.docx'),
(3, 2, 'test', 'https://www.youtube.com/embed/UluKWE9V_iU', 'photo resume mm.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `Qid` int NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(255) NOT NULL,
  `opA` varchar(255) NOT NULL,
  `opB` varchar(255) NOT NULL,
  `opC` varchar(255) NOT NULL,
  `opD` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CC`
--

CREATE TABLE `CC` (
  `id` int NOT NULL,
  `unit` int NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CC`
--

INSERT INTO `CC` (`id`, `unit`, `chapter`, `video`, `files`) VALUES
(1, 3, 'OJECT', 'https://www.youtube.com/embed/UluKWE9V_iU', 'DT20184610050_Application.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cc`
--

CREATE TABLE `cc` (
  `Qid` int NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(255) NOT NULL,
  `opA` varchar(255) NOT NULL,
  `opB` varchar(255) NOT NULL,
  `opC` varchar(255) NOT NULL,
  `opD` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int NOT NULL,
  `topic` varchar(255) NOT NULL,
  `unit` int NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `topic`, `unit`, `date`) VALUES
(2, 'java', 1, '2020/6/3');

-- --------------------------------------------------------

--
-- Table structure for table `facultylogin`
--

CREATE TABLE `facultylogin` (
  `id` int NOT NULL,
  `register` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facultylogin`
--

INSERT INTO `facultylogin` (`id`, `register`, `password`, `course`) VALUES
(4, 'manoj', 'Check', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `Java`
--

CREATE TABLE `Java` (
  `id` int NOT NULL,
  `unit` int NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Java` (`id`, `unit`, `chapter`, `video`, `files`) VALUES
(9, 1, 'object', 'https://www.youtube.com/embed/UluKWE9V_iU', 'mmmm. resume.pdf'),
(10, 2, 'Manoj Test', 'https://www.youtube.com/embed/3ZscZJiqyD0', 'MyResume.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `Qid` int NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(500) NOT NULL,
  `opA` varchar(100) NOT NULL,
  `opB` varchar(100) NOT NULL,
  `opC` varchar(100) NOT NULL,
  `opD` varchar(100) NOT NULL,
  `correct` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`Qid`, `Test_name`, `Qname`, `opA`, `opB`, `opC`, `opD`, `correct`, `reason`) VALUES
(5, '1', 'what is java', 'pe', 'we', 're', 'fdf', 'we', 'dkfjfsld');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `register` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `register`, `password`) VALUES
(1, '9915004207', 'manasarvmk'),
(2, '9915004217', 'manasarathnam'),
(3, '9915004205', 'harish'),
(4, '9915004208', 'lokesh12');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int NOT NULL,
  `user` varchar(20) NOT NULL,
  `marks` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `Number` varchar(3) NOT NULL,
  `Language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user`, `marks`, `title`, `Number`, `Language`) VALUES
(2, '9915004207', 0, 'Test', 'A1', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int NOT NULL,
  `input` varchar(100) NOT NULL,
  `output` varchar(100) NOT NULL,
  `format` text NOT NULL,
  `t1in` varchar(100) NOT NULL,
  `t1out` varchar(1000) NOT NULL,
  `t2in` varchar(100) NOT NULL,
  `t2out` varchar(100) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `Number` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `input`, `output`, `format`, `t1in`, `t1out`, `t2in`, `t2out`, `ques`, `title`, `Number`, `author`, `language`) VALUES
(6, '5', '120', '', '6', '720', '3', '6', 'Write a program to find the factorial of a given number', 'Factorial of a number', 'A1', '', ''),
(10, '536', '635', '', '989', '989', '852', '258', 'Write a program to Reverse the given Number', 'Reversing the Number', 'A1', '', ''),
(11, '369', 'Not Palindrome', '', '989', 'Palindrome', '121', 'Palindrome', 'Write a program to check wheather the given number is palindrome are not', 'Palindrome', 'A2', '', ''),
(12, '153', 'ArmStrong', '', '989', 'Not Armstrong', '121', 'Not Armstrong', 'Write a program to check wheather the given number is Armstrong or not', 'Armstrong', 'A2', '', ''),
(13, '6\r\n1 1 2 2 3 3', '1 2 3', 'First line of input is array size\r\nSecond line of input is elements of array', '10\r\n1 1 2 2 2 2 3 3 4 5', '1 2 3 4 5', '6\r\n9 8 9 8 9 8', '9 8', 'Write a program to check remove the duplicates of array elements', 'Remove duplicate of Array Ellements', 'A1', '', ''),
(14, '6\r\n5 6 7 2 3 6', '6', 'first line will be size of array\r\nsecond line will be the array', '6\r\n5 6 7 2 3 6', '6', '3\r\n10 10 10 9', '9', 'Write a program in java to find second largest element in an array', 'Test', 'A1', 'manoj', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `uans`
--

CREATE TABLE `uans` (
  `sno` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `ans` text NOT NULL,
  `topic` varchar(30) NOT NULL,
  `testno` int NOT NULL,
  `marks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uans`
--

INSERT INTO `uans` (`sno`, `username`, `ans`, `topic`, `testno`, `marks`) VALUES
(2, '9915004207', 'C', 'java', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Assign_date`
--
ALTER TABLE `Assign_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `C`
--
ALTER TABLE `C`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `CC`
--
ALTER TABLE `CC`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultylogin`
--
ALTER TABLE `facultylogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Java`
--
ALTER TABLE `Java`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uans`
--
ALTER TABLE `uans`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Assign_date`
--
ALTER TABLE `Assign_date`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `C`
--
ALTER TABLE `C`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c`
--
ALTER TABLE `c`
  MODIFY `Qid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CC`
--
ALTER TABLE `CC`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc`
--
ALTER TABLE `cc`
  MODIFY `Qid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facultylogin`
--
ALTER TABLE `facultylogin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Java`
--
ALTER TABLE `Java`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `Qid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `uans`
--
ALTER TABLE `uans`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
