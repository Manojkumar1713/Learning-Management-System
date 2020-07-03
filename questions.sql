-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2020 at 11:14 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `id` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Assign_date`
--

INSERT INTO `Assign_date` (`id`, `date`, `lang`) VALUES
(1, '2020/06/30', 'Java'),
(2, '', ''),
(3, '2020/06/30', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `Qid` int(255) NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(255) NOT NULL,
  `opA` varchar(255) NOT NULL,
  `opB` varchar(255) NOT NULL,
  `opC` varchar(255) NOT NULL,
  `opD` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `C`
--

CREATE TABLE `C` (
  `id` int(255) NOT NULL,
  `unit` int(255) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `C`
--

INSERT INTO `C` (`id`, `unit`, `chapter`, `video`, `files`, `author`) VALUES
(2, 1, 'OJECT', 'https://www.youtube.com/embed/UluKWE9V_iU', 'Manojresume1.docx', ''),
(3, 2, 'test', 'https://www.youtube.com/embed/UluKWE9V_iU', 'photo resume mm.pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `cc`
--

CREATE TABLE `cc` (
  `Qid` int(11) NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(255) NOT NULL,
  `opA` varchar(255) NOT NULL,
  `opB` varchar(255) NOT NULL,
  `opC` varchar(255) NOT NULL,
  `opD` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CC`
--

CREATE TABLE `CC` (
  `id` int(255) NOT NULL,
  `unit` int(255) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CC`
--

INSERT INTO `CC` (`id`, `unit`, `chapter`, `video`, `files`, `author`) VALUES
(1, 3, 'OJECT', 'https://www.youtube.com/embed/UluKWE9V_iU', 'DT20184610050_Application.pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `topic`, `unit`, `date`) VALUES
(1, 'java', 1, '2021/12/15'),
(2, 'java', 5, '2020/10/06');

-- --------------------------------------------------------

--
-- Table structure for table `facultylogin`
--

CREATE TABLE `facultylogin` (
  `id` int(11) NOT NULL,
  `register` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultylogin`
--

INSERT INTO `facultylogin` (`id`, `register`, `password`, `course`) VALUES
(1, 'manoj', 'check', 'C'),
(2, 'rrlcse', 'csedept', 'Java'),
(3, 'rrscse', '1234', 'Java'),
(4, 'PNJCSE', 'BuntyNagaraj', 'C'),
(5, 'RSTCSE', 'shreya27', 'C'),
(6, 'DBKCSE', 'mariappan', 'C'),
(7, 'kmscse', 'tamilcse', 'C'),
(8, 'SVDCSE', 'SVDCSE', 'C'),
(9, 'TDRCSE', 'TDRCSE', 'Java'),
(10, 'GERCSE', 'srv162714', 'Java'),
(11, 'vidya', 'vidyamari', 'C'),
(12, 'BPMCSE', 'PONNIPIT', 'Java'),
(13, 'asvcse', 'SENTHIL', 'Java'),
(14, 'JJRCSE', 'jjrcse', 'C'),
(16, 'mm0193', '1234', 'python32'),
(17, 'RSTCSE1', 'shreya27', 'python32'),
(18, 'MRACSE', 'EZHILO', 'python32'),
(19, 'ARSCSE', 'JENI$%^nisha', 'python32'),
(20, 'RRSCSE', 'raja1234561@', 'python32'),
(21, 'CBSINT', 'STUDIO1555', 'python32'),
(22, 'Suprakash', '123456', 'C'),
(23, 'PVSINT', 'Ritvik@1516', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `Qid` int(11) NOT NULL,
  `Test_name` varchar(255) NOT NULL,
  `Qname` varchar(500) NOT NULL,
  `opA` varchar(100) NOT NULL,
  `opB` varchar(100) NOT NULL,
  `opC` varchar(100) NOT NULL,
  `opD` varchar(100) NOT NULL,
  `correct` text NOT NULL,
  `reason` text NOT NULL,
  `fname` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`Qid`, `Test_name`, `Qname`, `opA`, `opB`, `opC`, `opD`, `correct`, `reason`, `fname`, `author`) VALUES
(1, 'java', 'what is java', 'programming language', 'food item', 'techinical problem', 'I D K', 'A', 'it is a programming language', '', ''),
(4, '1', 'is it working', 'A', 'B', 'C', 'D', 'C', 'C is correct', '', ''),
(5, '5', 'Which of the following methods can be used to change the size of a java.awt.Component object?', 'resize()', 'size() ', 'dimension() ', 'setSize()', 'D', 'Resize method is used to change the component width and height.', '', 'rrlcse'),
(6, '5', 'Which is a component in AWT that can contain another components like buttons, textfields, labels etc.?', 'Window', 'Container', 'Panel', 'Frame', 'B', 'Container is used to keep components', '', 'rrlcse');

-- --------------------------------------------------------

--
-- Table structure for table `Java`
--

CREATE TABLE `Java` (
  `id` int(255) NOT NULL,
  `unit` int(100) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `files` text NOT NULL,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Java` (`id`, `unit`, `chapter`, `video`, `files`, `author`) VALUES
(9, 1, 'object', 'https://www.youtube.com/embed/UluKWE9V_iU', 'mmmm. resume.pdf', ''),
(11, 5, 'Graphics Class', 'https://www.youtube.com/embed/NjeQ0qDFIks', 'CSE18R272 Unit V (1).pdf', 'rrlcse');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
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
(4, '9915004208', 'lokesh12'),
(5, '9915004207', 'manasarvmk'),
(6, '9918004100', '1234'),
(7, 'SVDCSE', 'SVDCSE'),
(8, 'SVDCSE', 'SVDCSE'),
(9, '9918004063', 'manas1316'),
(10, '9918004115', '03082001'),
(11, '9918004085', 'satyanvv450'),
(12, '9918004109', '27102000'),
(13, '9918004117', '9918004117'),
(14, '9918004065', '21032000'),
(15, '9918004103', '05032002'),
(16, '9918004116', '01022001'),
(17, '9918004089', '02111999'),
(18, '9918004108', '29062001'),
(19, '9918004073', '30092000'),
(20, '9918004070', 'dhanunjai'),
(21, '9918004087', 'patan442001'),
(22, '9918004080', '12072000'),
(23, '9918004118', '23112000'),
(24, '9918004098', '07091999'),
(25, '9916004010', 'buggy4320'),
(26, '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(100) NOT NULL,
  `user` varchar(20) NOT NULL,
  `marks` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `Number` varchar(300) NOT NULL,
  `Language` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `user`, `marks`, `title`, `Number`, `Language`, `author`) VALUES
(18, '9918004117', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(19, '9918004117', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(20, '9918004103', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(21, '9918004117', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(22, '9918004115', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(23, '9918004117', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(24, '9918004116', 0, 'classes', 'A10', 'java', 'rrlcse'),
(26, '9918004117', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(28, '9918004115', 0, 'Loop', 'B1', 'java', 'rrscse'),
(31, '9918004115', 7, 'Online Coding Competition', 'B201', 'java', 'gercse'),
(33, '9918004103', 0, 'Online Coding Competition', 'B201', 'java', 'gercse'),
(34, '9918004108', 0, 'Factorial of a number', 'A1', 'java', ''),
(35, '9918004108', 0, 'Palindrome', 'A2', 'java', ''),
(36, '9918004108', 0, 'Palindrome', 'A2', 'java', ''),
(37, '9918004103', 0, 'Code Competition', 'B101', 'java', 'asvcse'),
(38, '9918004089', 0, 'Factorial of a number', 'A1', 'java', ''),
(39, '9918004087', 0, 'online coding competition', 'B203', 'java', 'gercse'),
(41, '9918004115', 0, 'Code Competition', 'B101', 'java', 'asvcse'),
(42, '9918004089', 0, 'Armstrong', 'A2', 'java', ''),
(43, '9918004103', 0, 'online coding competition', 'B202', 'java', 'gercse'),
(44, '9918004118', 0, 'Coding Contest', 'A204', 'c', 'kmscse'),
(46, '9918004080', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(47, '9918004080', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(48, '9918004089', 0, 'Online Coding Competition', 'B201', 'java', ''),
(49, '9918004080', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(50, '9918004089', 0, 'online coding competition', 'B203', 'java', 'gercse'),
(53, '9918004087', 0, 'Loop', 'B1', 'java', 'rrscse'),
(54, '9918004098', 0, 'classes', 'A10', 'java', 'rrlcse'),
(55, '9915004207', 10, 'online coding competition', 'B203', 'java', 'gercse'),
(56, '9918004098', 0, '', '', 'c', ''),
(57, '9918004085', 0, 'Loop', 'A11', 'java', 'rrlcse'),
(58, '9918004080', 7, 'classes', 'A10', 'java', 'rrlcse'),
(59, '9918004080', 10, 'Loop', 'A11', 'java', 'rrlcse'),
(60, '9918004080', 10, 'Loop', 'B1', 'java', 'rrscse'),
(61, '9918004080', 7, 'Online Coding Competition', 'B201', 'java', 'gercse');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `input` varchar(100) NOT NULL,
  `output` varchar(100) NOT NULL,
  `format` text NOT NULL,
  `t1in` varchar(100) NOT NULL,
  `t1out` varchar(1000) NOT NULL,
  `t2in` varchar(100) NOT NULL,
  `t2out` varchar(100) NOT NULL,
  `ques` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `Number` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `input`, `output`, `format`, `t1in`, `t1out`, `t2in`, `t2out`, `ques`, `title`, `Number`, `author`, `language`) VALUES
(15, '1 100', '1 9 45  55 99', 'Range is given start end', '100 200', ' ', '200 300', '297', 'Write a program to print kaprekar numbers in the given range.', 'classes', 'A10', 'rrlcse', 'Java'),
(16, '20 15', '20', 'Enter two integer values n1 n2', '87 98', '98', '102 103', '103', 'Write a program to find maximum of two numbers.', 'Loop', 'A11', 'rrlcse', 'Java'),
(18, '6', '1 2 3', 'Enter an integer number n', '24', '1 2 3 4 6 8', '30', '1 2 3 5 6', 'Write a program to find the factors of a given number.', 'Loop', 'B1', 'rrscse', 'Java'),
(20, '4', '1\r\n23\r\n456\r\n78910', 'Enter N value', '3', '1\r\n23\r\n456\r\n', '2', '1\r\n23', 'Design a C program to make such a pattern like right angle triangle with number increased by 1', 'Coding Contest', 'A204', 'kmscse', 'C'),
(21, '3', '1\r\n12\r\n123', 'Enter N value', '4', '1\r\n12\r\n123\r\n1234\r\n', '5', '1\r\n12\r\n123\r\n1234\r\n12345', 'Design a C to display the pattern like right angle triangle with a number.', 'Coding Contest', 'A205', 'kmscse', 'C'),
(22, '4', '    1 \r\n  2 3 \r\n 4 5 6 \r\n7 8 9 10\r\n', 'Enter N value', '3', '   1 \r\n  2 3 \r\n 4 5 6 ', '2', '   1  \r\n  2 3 ', 'Design a program in C to make such a pattern like a pyramid with numbers increased by 1.', 'Coding Contest', 'A206', 'kmscse', 'C'),
(23, '4\r\n', '   * \r\n  * * \r\n * * * \r\n* * * *\r\n', 'Enter N value', '3', '   * \r\n  * * \r\n * * * \r\n', '2', '   * \r\n  * * \r\n', 'Design a program in C to make such a pattern like a pyramid with an asterisk(*).', 'Coding Contest', 'A207', 'kmscse', 'C'),
(24, '3', '861', 'Enter the number of terms', '2', '84', '5', '86415', 'Design a program in C to display the sum of the series [ 7 + 77 + 777 + 7777 ...]', 'Coding Contest', 'A208', 'kmscse', 'C'),
(25, '4', '1 4\r\n2', 'Enter a number to count the non-prime divisors.', '9', '1 9\r\n2', '20', '1 4 10 20\r\n4', 'Consider a number N, the task is to find the count of non-prime divisors of the given number N.', 'Coding Contest', 'A215', 'kmscse', 'C'),
(27, '4', '24', 'Enter the number n', '8', '40320', '7', '5040', 'Given an integer number n, you have to print the factorial of this number.', 'CODING CONTEST', 'A101', 'PNJCSE', 'C'),
(28, '3', '0 1 1 ', 'Enter a number n.', '4', '0 1 1 2', '5', '0 1 1 2 3 ', 'Given an integer number n, you have to print the Fibonacci series of this number.', 'CODING CONTEST', 'A102', 'PNJCSE', 'C'),
(29, '3\r\n1 5 1\r\n', '5\r\n', 'Enter the size of array N\r\nEnter the array elements.', '3\r\n6 6 3\r\n', '3', '4\r\n2 2 2 4\r\n', '4', 'Create a program in C to print all unique elements in an array. ', 'Coding Contest', 'A218', 'kmscse', 'C'),
(30, '5\r\n2 4 6 3 1 ', '1 2 3 4 6', 'Enter a number count n.\r\nAnd The numbers n1, n2, n3, â€¦.. , nn', '4\r\n2 1 5 4 ', '1 2 4 5 ', '6\r\n3 5 7 2 6 1 ', '1 2 3 5 6 7 ', 'Given a set of number n, you have to arrange the given numbers from smallest to largest. ', 'CODING CONTEST', 'A103', 'PNJCSE', 'C'),
(31, '5\r\n2 4 6 3 1 \r\n', '6 4 3 2 1 ', 'A number count n.\r\n\r\nThe numbers n1, n2, n3, â€¦.. , nn\r\n', '4\r\n2 1 5 4 \r\n', '5 4 2 1', '6\r\n3 5 7 2 6 1\r\n', '7 6 5 3 2 1  ', 'Given a set of number n, you have to arrange the given numbers from largest to smallest.', 'CODING CONTEST', 'A104', 'PNJCSE', 'C'),
(32, '5\r\n2 4 6 3 1 \r\n', '6', 'A number count n.\r\n\r\nThe numbers n1, n2, n3, â€¦.. , nn\r\n', '4\r\n2 1 5 4 \r\n', '5', '6\r\n3 5 7 2 6 1\r\n', '7', 'Given a set of number n, you have to find the biggest number from the given list.  ', 'CODING CONTEST', 'A105', 'PNJCSE', 'C'),
(33, '5\r\n2 4 6 3 1 \r\n', '1', 'A number count n.\r\n\r\nThe numbers n1, n2, n3, â€¦.. , nn\r\n', '4\r\n2 5 4 8 \r\n', '2', '6\r\n3 5 7 8 6 9\r\n', '3', 'Given a set of number n, you have to find the smallest number from the given list.  ', 'CODING CONTEST', 'A106', 'PNJCSE', 'C'),
(34, '1 5 6 3 8 ', '6 3', 'The first line contains numbers separated by a space.\r\nn1.n2.n3.,,,nn', '10 11 4 1 6 7 2 9', '10 2', '1 1 1 1', '1 1 ', 'Given a array of numbers (integers), find second maximum and second minimum in this array.', 'CODING CONTEST', 'A111', 'PNJCSE', 'C'),
(35, '2 3 4 5 6', '2 3 4 6 ', 'The first line contains the numbers of list A separated by a space.\r\nn1,n2,n3,...nn', '8 9 6 5 3', '8 9 6 3 ', '21 47 32 43', '21 47 32 43', 'Given a array A of numbers (integers), you have to print those numbers which are not multiples of 5.', 'CODING CONTEST', 'A112', 'PNJCSE', 'C'),
(36, '2 3 4 5 7', '7', 'The first line contains the numbers of list A separated by a space.', '8 9 6 5 3', 'No Data', '21 49 32 43', '49', ' Given a array A of numbers (integers), you have to print those numbers which are multiples of 7.', 'CODING CONTEST', 'A113', 'PNJCSE', 'C'),
(37, '2 4 5 7 8', '5', 'The first line contains the numbers of list A separated by a space.', '8 9 6 4 5 3', '6', '7 9 6 5', '4', 'Given an array A of numbers (integers), you have to print the numbers of element in the array. ', 'CODING CONTEST', 'A118', 'PNJCSE', 'C'),
(38, '2 8 7', '8 2 ', 'The number x, y and z.', '3 9 11', '11 3', '2.15 1.75 5.62', '5.62 1.75 ', 'Accept any three numbers from the user. To print the biggest and smallest among 3 numbers. ', 'CODING CONTEST', 'A125', 'PNJCSE', 'C'),
(39, 'Abc.txt\r\nC programming is Middle level language\r\n', 'C programming is Middle level language', 'The File Name fname[]\r\nThe File Content con[]\r\n', 'XYZ.txt\r\nProgram\r\n', 'Program\r\n', 'Raja.txt\r\nSoftware\r\n', 'Software\r\n', 'Accept a file name from the user. Display the content of the file. ', 'CODING CONTEST', 'A127', 'PNJCSE', 'C'),
(40, 'Abc.txt\r\nC programming is Middle level language\r\n', 'Abc.txt\r\n\r\n', 'The File Name fname[]\r\nThe File Content con[]\r\n', 'XYZ.txt\r\nProgram\r\n', 'XYZ.txt\r\n\r\n', 'Raja.txt\r\nSoftware\r\n', 'Raja.txt\r\n', 'Accept a file name from the user. Display the name of the file. ', 'CODING CONTEST', 'A128', 'PNJCSE', 'C'),
(41, 'Abc.txt\r\nlanguage\r\n', '8', 'The File Name fname[]\r\nThe File Content con[]\r\n', 'XYZ.txt\r\nProgram\r\n', '7', 'Raja.txt\r\nSoftware\r\n', '8', 'Accept a file name from the user. Display the length of the file content. ', 'CODING CONTEST', 'A129', 'PNJCSE', 'C'),
(42, 'Abc.txt\r\nLanguage\r\n', 'L', 'The File Name fname[]\r\nThe File Content con[]\r\n', 'XYZ.txt\r\nProgram\r\n', 'P', 'Raja.txt\r\nSoftware\r\n', 'S', 'Accept a file name from the user. Display the first letter of the file content. ', 'CODING CONTEST', 'A130', 'PNJCSE', 'C'),
(43, '5	', '101', 'A decimal number n', '7', '111', '6', '110', 'Accept an any decimal number from the user. Write a program to convert the decimal number to binary.', 'CODING CONTEST', 'A139', 'PNJCSE', 'C'),
(44, '101', '5', 'A binary number n', '111', '7', '110', '6', 'Accept an any binary number from the user. Write a program to convert the binary number to decimal. ', 'CODING CONTEST', 'A140', 'PNJCSE', 'C'),
(45, '2 3 \r\n5 6 \r\n\r\n1 2 \r\n3 4 ', '3 5 \r\n8 10', 'Two matrix X and Y ', '1 4 \r\n2 4 \r\n\r\n\r\n0 5 \r\n1 9\r\n', '1 9 \r\n3 13', '3 4 \r\n4 4 \r\n\r\n2 5 \r\n3 9\r\n\r\n', '5 9\r\n7 13\r\n', 'Accept an any two matrix from user. Write a program to find the sum of two matrix.  ', 'CODING CONTEST', 'A141', 'PNJCSE', 'C'),
(46, '2 3 \r\n5 6\r\n\r\n\r\n1 2	\r\n3 4	\r\n', '1 1\r\n2 2\r\n', 'Two matrix X and Y ', '5 4 \r\n6 4 \r\n\r\n4 5 \r\n5 9 ', '1 -1\r\n1 -5\r\n', '7 4\r\n8 4\r\n\r\n6 5 \r\n7 9 ', '1 -1\r\n1 -5\r\n', 'Accept an any two matrix from user. Write a program to find the difference of two matrix.  ', 'CODING CONTEST', 'A142', 'PNJCSE', 'C'),
(47, '2 3 \r\n5 6\r\n\r\n\r\n1 2	\r\n3 4	\r\n', '11 16\r\n23 34\r\n', 'Two matrix X and Y ', '9 4 \r\n10 4\r\n\r\n\r\n8 5 \r\n9 9 ', '108 81\r\n116 86\r\n', '11 4\r\n12 4\r\n\r\n10 5\r\n11 9 ', '154 91\r\n164 96', 'Accept an any two matrix from user. Write a program to find the multiplication of two matrix.  ', 'CODING CONTEST', 'A143', 'PNJCSE', 'C'),
(48, '156', '12', 'A number n', '111', '3', '181', '10', 'Accept an any number from the user. Write a program to find the sum of the digit. ', 'CODING CONTEST', 'A144', 'PNJCSE', 'C'),
(49, '2 3 \r\n5 6\r\n', '2 5 \r\n3 6 \r\n', 'A matrix X ', '13 4 \r\n14 4 ', '13 14\r\n4   4\r\n', '15 4 2 \r\n16 4 1 ', '15 16\r\n4  4\r\n2  1', 'Accept an any one matrix from user. Write a program to find the reverse of the matrix. ', 'CODING CONTEST', 'A145', 'PNJCSE', 'C'),
(50, '4 8	', '4', 'A number n', '2 1', '1', '3 9 ', '3', 'Accept an any two number from the user. Write a program to find the GCD of the given numbers. ', 'CODING CONTEST', 'A146', 'PNJCSE', 'C'),
(51, '4 8	', '8', 'A number n1 and n2', '2 1 ', '2', '3 9 ', '9', 'Accept an any two number from the user. Write a program to find the LCM of the given numbers. ', 'CODING CONTEST', 'A147', 'PNJCSE', 'C'),
(52, 'Programming \r\nlanguage\r\n', 'Programming language		', 'The two strings S1 and S2', 'C \r\nProgram\r\n', 'C Program', 'C++ \r\nProgram', 'C++ Program', 'Accept an any two strings from the user. Write a program to find the concatenation of two strings', 'CODING CONTEST', 'A148', 'PNJCSE', 'C'),
(53, 'program', 'o a ', 'A strings S1 ', 'content', 'o e ', 'high', 'i', 'Accept an any string from the user. Write a program to find the vowels in the given string', 'CODING CONTEST', 'A149', 'PNJCSE', 'C'),
(54, '6', '1 2 3 ', 'A number n', '8', '1 2 4 ', '5', '1 ', 'Accept an any number from the user. Write a program to find the factors of the given number.', 'CODING CONTEST', 'A150', 'PNJCSE', 'C'),
(56, '25 2', '50', 'int float', '2.5 2.5', '6.25', '-10 -2', '20', 'Write a Java program to multiply two numbers and print on the screen', 'Online Coding Competition', 'B201', 'gercse', 'Java'),
(57, 'welcome', '3\r\n4', 'Enter the string to check', 'programming', '3\r\n8\r\n', 'game', '2\r\n2', 'Create a program in C to count number of vowels and consonants in a given string', 'Coding Contest', 'A232', 'kmscse', 'C'),
(58, '1+2+3+4', '10', '1+2+3+4', '1+2+6+7', '16', '1+8+6+3', '18', 'Find the summation of series', 'CODING CONTEST', 'A159', 'vidya', 'C'),
(60, 'Input: arr[] = { 13, 15, 66, 66, 37, 8, 8, 11, 52 };', 'Output: 2', 'array', 'Input: arr[] = {1, 2, 1, 4, 3, 2}\r\n', 'Output: 0', 'Input: arr[] = { 13, 15, 66, 66, 37, 8, 9, 11, 52 };\r\n', 'Output: 1', 'Count the number of clumps in the given Array', 'Code Competition', 'B102', 'asvcse', 'Java'),
(61, 'Input: arr[] = {14, 735, 3333, 223222}', 'Output: Number of even length elements = 3\r\nNumber of odd length elements = 1', 'array\r\n', 'Input: arr[] = {1121, 322, 32, 14783, 44}\r\n', 'Output: Number of even length elements = 3\r\nNumber of odd length elements = 2', 'Input: arr[] = {1121, 322, 32, 14783, 44}\r\n', 'Output: Number of even length elements = 3\r\nNumber of odd length elements = 2', 'Count number of even and odd length elements in an Array', 'Code Competition', 'B103', 'asvcse', 'Java'),
(62, 'Input: arr[] = {1, 1, 1, 2}\r\n\r\n\r\n\r\n', 'Output: 1 1 2 1', 'array', 'Input: arr[] = {4, 2, 1, 3}', 'Output: 1 1 1 1', 'Input: arr[] = {4, 2, 1, 3}', 'Output: 1 1 1 1', 'Replace every element with the smallest of all other array elements', 'Code Competition', 'B106', 'asvcse', 'Java'),
(63, 'Input: N = 5, arr[] = {1, 1, 2, 3, 5, 4}\r\n\r\n', 'Output: 1\r\nExplanation:\r\n1 is the only number repeated in the array.', 'array', 'Input: N = 10, arr[] = {10, 1, 2, 3, 5, 4, 9, 8, 5, 6, 4}\r\n', 'Output: 5\r\nExplanation:\r\n5 is the one of the number repeated in the array.', 'Input: N = 10, arr[] = {10, 1, 2, 3, 5, 4, 9, 8, 5, 6, 4}', 'Output: 5\r\nExplanation:\r\n5 is the one of the number repeated in the array.', 'Find any one of the multiple repeating elements in read only array', 'Code Competition', 'B107', 'asvcse', 'Java'),
(65, '3\r\n1 2 3', '3 2 1\r\n', 'Enter size of array\r\nEnter array values', '4 \r\n1 2 3 4', '4 3 2 1', '2\r\n20 10', '10 20', 'Write a program to reverse the elements of array.', 'Coding Contest', 'A251', 'kmscse', 'C'),
(66, '\r\n6\r\n\r\n-5 5 6 9 -5 0', '1000 5 6 9 1000 1000', 'Test', '4\r\n\r\n5 -2 3 4', '5 1000 3 4', '\r\n5\r\n\r\n7 8 -1 0 -1', '\r\n7 8 1000 1000 1000', 'Create a C program to get the elements of array A of size N. Print the elements of array A by replacing the negative values and zero values with 1000.', 'Contest', 'A248', 'manoj', 'C'),
(69, '125 24\r\n', '125 + 24 = 149\r\n125 - 24 = 101\r\n125 x 24 = 3000\r\n125 / 24 = 5\r\n125 mod 24 = 5', 'int float', '10 2', '10+2=12\r\n10-2=8\r\n10x2 =20\r\n10/2 = 5\r\n10 mod 2 = 0', '20 3', '20+3 = 23\r\n20-3 = 17\r\n20x3=60\r\n20/3=6.67\r\n20mod3=2\r\n', 'Write a Java program to print the sum (addition), multiply, subtract, divide and remainder of two numbers', 'online coding competition', 'B202', 'gercse', 'Java'),
(70, '2', '2*1=2\r\n2*2=4\r\n2*3=6\r\n2*4=8\r\n2*5=10\r\n\r\n', 'int', '10', '10*1=10\r\n10*2=20\r\n10*3=30\r\n10*4=40\r\n10*5=50', '5', '5*1=5\r\n5*2=10\r\n5*3=15\r\n5*4=20\r\n5*5=25', 'Write a Java program that takes a number as input and prints its multiplication table upto 5', 'online coding competition', 'B203', 'gercse', 'Java'),
(71, '1 2 3 4 5 6', '6 5 4 3 2 1', 'Enter 6 integers', '10 20 30 40 50 60', '60 50 40 30 20 10', '9 8 7 6 5 4', '4 5 6 7 8 9', 'Create a C program to read six elements in array. Print the final array like swap the first element with sixth element, second element with fifth element, third element with fourth element.', 'Coding Contest', 'A247', 'kmscse', 'C'),
(72, 'R=7', 'Perimeter is = 47.12388980384689\r\nArea is = 176.71458676442586', 'int float', 'R=2.5', 'Perimeter is=15.7\r\nArea is =19.625', 'R=10', 'Perimeter is=62.8\r\nArea is=314', 'Write a Java program to print the area and perimeter of a circle', 'online coding competition', 'B204', 'gercse', 'Java'),
(73, '5', '*\r\n   *** \r\n  *****\r\n *******\r\n********* \r\n *******\r\n  *****\r\n   ***\r\n    * \r\n', 'enter an interger', '2', ' *\r\n***\r\n *', '3', ' *\r\n* *\r\n***\r\n* *\r\n *', 'Write a program in C to display the pattern like a diamond. ', 'coding contest', 'A1', 'JJRCSE', 'C'),
(74, '29', 'prime number', 'An interger', '2', 'prime number', '4', 'not a prime number', 'Write a C program to determine whether a given number is prime or not. ', 'coding contest', 'A2', 'JJRCSE', 'C'),
(75, 'Input starting number of range: 1 \r\nInput ending number of range : 50 \r\n', 'The prime number between 1 and 50 are : \r\n2 3 5 7 11 13 17 19 23 29 31 37 41 43 47\r\n', 'Enter two integer to represent start and end', '1 \r\n10', '2 3 5 7', '1\r\n20', '2 3 5 7 11 13 17 19', 'Write a program in C to find the prime numbers within a range of numbers. ', 'coding contest', 'A4', 'JJRCSE', 'C'),
(76, '10', '0 1 1 2 3 5 8 13 21 34 ', 'Enter the limit as interger value', '5', '0 1 1 2 3 ', '2', '0 1', 'Write a program in C to display the first n terms of Fibonacci series. ', 'coding contest', 'A5', 'JJRCSE', 'C'),
(77, '12345', '54321', 'enter a number greater than 9', '123', '321', '567', '765', 'Write a program in C to display the number in reverse order.', 'coding contest', 'A6', 'JJRCSE', 'C'),
(78, '121', 'palindrome', 'Enter a number greater than 99', '234', 'not a palindrome', '343', 'palindrome', 'Write a program in C to check whether a number is a palindrome or not. ', 'coding contest', 'A7', 'JJRCSE', 'C'),
(79, 'null', '108 117 126 135 144 153 162 171 180 189 198 \r\nThe sum : 1683 \r\n', 'no input required', 'null', '108 117 126 135 144 153 162 171 180 189 198 \r\nThe sum : 1683 \r\n', 'null', '108 117 126 135 144 153 162 171 180 189 198 \r\nThe sum : 1683 \r\n', 'Write a program in C to find the number and sum of all integer between 100 and 200 which are divisible by 9. ', 'coding contest', 'A8', 'JJRCSE', 'C'),
(80, 'Enter the decimal number: 25', 'The Binary of 25 is 11001.', 'enter an integer value', '2', '10', '5', '101', 'Write a program in C to convert a decimal number into binary without using an array. ', 'coding contest', 'A9', 'JJRCSE', 'C'),
(81, 'Input a binary number :1010101 ', 'The equivalent Decimal Number : 85 \r\n', 'Enter a binary number', '4', '100', '110', '6', 'Write a program in C to convert a binary number into a decimal number without using array, function and while loop. ', 'coding contest', 'A10', 'JJRCSE', 'C'),
(82, 'Input 1st number for HCF: 24 \r\nInput 2nd number for HCF: 28 \r\n', 'HCF of 24 and 28 is : 4 ', 'Enter two integer value.', '81\r\n153', '9', '98 \r\n56', '14', 'Write a C program to find HCF (Highest Common Factor) of two numbers. ', 'coding contest', 'A11', 'JJRCSE', 'C'),
(83, '20 10', '10 20', 'int', '100 200', '200 100', '50 70', '70 50', 'Write a Java program to swap two variables', 'Online Coding Competition', 'B205', 'gercse', 'Java'),
(84, '10 11', '101', 'int', '11 11', '110', '01 00', '01', 'Write a Java program to add two binary numbers', 'online coding competition', 'B206', 'gercse', 'Java'),
(85, '1101', 'D', 'int', '0010', '3', '0101', '5', 'Write a Java program to convert a binary number to hexadecimal number. ', 'Online Coding Competition', 'B207', 'gercse', 'Java'),
(86, 'Input 1st number for LCM: 15 \r\nInput 2nd number for LCM: 20\r\n', 'The LCM is : 60 ', 'Enter two integer value', 'Input 1st number for LCM: 72\r\nInput 2nd number for LCM: 120', 'The LCM is : 360', 'Input 1st number for LCM: 72\r\nInput 2nd number for LCM: 120', 'The LCM is : 360', 'Write a program in C to find LCM of any two numbers using HCF. ', 'coding contest', 'A12', 'JJRCSE', 'C'),
(87, 'Input the binary number :1010100', 'The equivalent Decimal Number is : 84', 'Enter a binary number', '1010101', '85', '1010101010', '682', 'Write a program in C to convert a binary number into a decimal number using math function. ', 'coding contest', 'A13', 'JJRCSE', 'C'),
(88, 'Input ending range of number: 200 \r\n', 'The Strong numbers are :  1 2 145 ', 'Enter an integer as upper limt ', '1000', '1 2 145', '100000', '1 2 145 40585', 'Write a C program to find Strong Numbers within a range of numbers', 'coding contest', 'A14', 'JJRCSE', 'C'),
(89, 'Enter a number to convert : 79  ', 'The Octal of 79 is 117.', 'Enter an integer value', '23', '19', '167', '119', 'Write a program in C to convert a decimal number into octal without using an array.', 'coding contest', 'A16', 'JJRCSE', 'C'),
(90, 'Input an octal number (using digit 0 - 7) :745 ', 'The equivalent Decimal Number : 485', 'Enter a decimal value', '167', '119', '16', '14', 'Write a program in C to convert an octal number into decimal without using an array.', 'coding contest', 'A17', 'JJRCSE', 'C'),
(91, 'Input a positive integer: 16 \r\n', 'Expected Output :\r\n16 = 3 + 13 \r\n16 = 5 + 11 ', 'enter a positive integer', '5', '5 = 2+3', '7', '7 = 2+5', 'Write a program in C to Check Whether a Number can be Express as Sum of Two Prime Numbers. ', 'coding contest', 'A19', 'JJRCSE', 'C'),
(92, 'Welcome', 'emoclew', 'Enter a string', 'hello', 'olleh', 'hai', 'iah', 'Write a program in C to print a string in reverse order. ', 'coding contest', 'A20', 'JJRCSE', 'C'),
(93, 'Welcome', 'emoclew', 'Enter a string', 'kalasalingam', 'magnilasalak', 'hai', 'iah', 'Write a C program to find the length of a string without using the library function. ', 'coding contest', 'A21', 'JJRCSE', 'C'),
(94, 'Input an integer : 1634 \r\n\r\n\r\n', '1634 is an Armstrong number', 'Enter an interger value', '1634', '1634 is an amstrong number', '12', '12 is not an amstrong number', 'Write a program in C to check Armstrong number of n digits. ', 'coding contest', 'A22', 'JJRCSE', 'C'),
(95, 'abcd', 'dcba', 'Enter any string value', 'xyz', 'zyx', 'lmno', 'onml', 'Given a string, the task is to reverse this String using Command Line Arguments.', 'coding contest', 'A23', 'JJRCSE', 'C'),
(96, 'arr[] = {0, 23, 14, 12, 9}', '{0, 9, 12, 14, 23}', 'The array can be sorted in ascending order by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.\r\n1.	The subarray which is already sorted.\r\n2.	Remaining subarray which is unsorted.\r\n', 'arr[] = {7, 0, 2}', '{0, 2, 7}', 'arr[] = {0, 23, 14, 12, 9}', '{0, 9, 12, 14, 23}', 'Given an array arr[] of size N, the task is to sort this array in ascending order in C.', 'coding contest', 'A24', 'JJRCSE', 'C'),
(97, 'madam', 'It is palindrome', 'Enter the string value', 'malayalam', 'It is a palindrome', 'abcd', 'it is not a palindrome', '63.	Check whether the given string is Palindrome using Stack', 'coding contest', 'A25', 'JJRCSE', 'C'),
(98, 'madam', 'It is palindrome', 'Enter the string value', 'malayalam', 'It is a palindrome', 'abcd', 'it is not a palindrome', '63.	Check whether the given string is Palindrome using Stack', 'coding contest', 'A25', '', ''),
(99, '{1,3,5,7,9,11}', '{3,1,7,5,11,9}', 'Input: {1,2,3,4,5,6}\r\n\r\nOutput: {4,2,6,5,1,3}', '{2,4,6,8,10}', '{4,8,2,6,10}', '{3,6,9,12,15,18}', '{12,18,15,9,3,6}', 'Write a Java program to shuffle a given array of integers', 'Coding Competition', 'B1', 'BPMCSE', 'Java'),
(100, '{2,3,5,7,-7,5,8,-5}', '56', '{2,3,5,7,-7,5,8,-5}\r\n\r\n\r\noutput: Pair is (7, 8), Maximum Product: 56', '{4,5,6,-1,9,8}', '72', '{1,2,3,4,5,6,-1}', '30', 'Write a Java program to find maximum product of two integers in a given array of integers. ', 'Coding Competition', 'B2', 'BPMCSE', 'Java'),
(101, '{10,20,30,40,50}', '{20,40,10,30,50}', 'Input: {2,3,5,6,7,8,9,10}\r\n\r\n\r\nOutput: {2,6,8,10,3,5,7,9}', '{7,8,9,10,40,0,80}', '{0,8,10,40,80,7,9}', '{3,5,6,7,8,9,10}', '{6,8,10,3,5,7,9}', 'Write a Java program to separate even and odd numbers of a given array of integers. Put all even numbers first, and then odd numbers', 'Coding Competition', 'B3', 'BPMCSE', 'Java'),
(102, '{10,0,40,50,60,20}', '{0,10}', 'Input={2,3,4,5,6,9,10}\r\n\r\nOutput ={2,3}', '{-1,10,40,60,80,90,100}', '{-1,10}', '{20,40,60,80,100}', '{20,40}', 'Write a Java program to find smallest and second smallest elements of a given array', 'Coding Competition', 'B4', 'BPMCSE', 'Java'),
(103, '{10,30,50,60,1}', 'True', '{10,30,40,50,20}\r\n\r\n\r\nOutput: True\r\n', '{20,50,60,80}', 'True', '{4,5,8,10,2}', 'True', 'Write a Java program to check if an array of integers without 0 and -1.', 'Coding Competition', 'B5', 'BPMCSE', 'Java'),
(104, '{77,65,77,65,77}', 'True', '{77,65,77,65,77}\r\n\r\nTrue', '{65,65,77,77,65}', 'True', '{77,65,77}', 'True', 'Write a Java program to check if an array of integers contains two specified elements 65 and 77', 'Coding Competition', 'B6', 'BPMCSE', 'Java'),
(105, '10  20 30\r\n20 30 40\r\n40 50 60 ', '[\r\n[10],\r\n[20,20],\r\n[30, 30, 40],\r\n[40, 50],\r\n[60]\r\n]', 'Input: 1    2\r\n           3    4\r\n\r\n\r\nOutput : \r\n[\r\n[1],\r\n[2 , 3],\r\n[4]\r\n]\r\n', '1 2 \r\n3 4', '[\r\n[1],\r\n[2,3],\r\n[4]\r\n]', '4 5\r\n6  7', '[\r\n[4],\r\n[5, 6],\r\n[7]\r\n]', 'Write a Java program to create an array of its anti-diagonals from a given square matrix', 'Coding Competition', 'B7', 'BPMCSE', 'Java'),
(106, '{10,5,15,20.25}', '{25,20,15,10,5}', 'Input{10,5,15,20,25}\r\n\r\noutput = {25,20,15,10,5}', '{3,5,7,9,12,15}', '{15,12,9,7,5,3}', '{10,30,50,70,90}', '{90,70,50,30,10}', 'Write a java program to sort the n numbers in descending order', 'Coding Competition', 'B8', 'BPMCSE', 'Java'),
(107, '10 20 30 40 50 ', '150', 'Input: [10,20,30,40,50]\r\noutput : 150', '2 3 0 -1 1', '5', '2 5 7  10', '24', 'Write a java program to sum values of an array', 'Coding Competition', 'B9', 'BPMCSE', 'Java'),
(108, '10,20,30', '20', 'Input: {10,20,30}\r\n\r\noutput 20', '20,40,40,20', '30', '10 10 10 20 10', '12', 'Write a java program to find the average value of an array element', 'Coding Competition', 'B10', 'BPMCSE', 'Java'),
(109, '10 20 30 40 \r\n\r\n40', 'true', 'Input = {10,20,30,40}\r\n\r\nnumber to be searched : 40\r\n\r\nTrue', '5 10 15 20 \r\n\r\n25', 'False', '10 20 30 \r\n\r\n30', 'True', 'Write a java program to search the particular element in an array', 'Coding Competition', 'B11', 'BPMCSE', 'Java'),
(110, '5 10 15 20', '5  \r\n\r\n20', '10 20 30 40 \r\n\r\nmin =10\r\n\r\nmax =40', '20 40 60 80', '20 \r\n80', '1 2 3 4 5 -1\r\n\r\n', '-1\r\n5', 'Write a java program to find the maximum and minimum number of given array.', 'Coding Competition', 'B12', 'BPMCSE', 'Java'),
(111, '2\r\n2\r\n1  2\r\n2  3\r\n\r\n1  2\r\n2  3\r\n\r\n\r\n\r\n\r\n', '2  4\r\n4   6', 'row =2   col =2\r\n\r\nA= 1  2\r\n      2 3\r\n\r\nB= 1   2\r\n      2  3 \r\n\r\nADD =  2  4\r\n              4   6\r\n', '2\r\n2\r\n\r\n1   1\r\n1   1\r\n\r\n1   1\r\n1    1\r\n\r\n', '2    2\r\n2    2', '2 \r\n2\r\n\r\n2   2 \r\n2    2\r\n\r\n2   2 \r\n2   2', '4   4\r\n4   4', 'Write a java program to perform the matrix addition', 'Coding Competition', 'B13', 'BPMCSE', 'Java'),
(112, '10 20 30 40 50 \r\n\r\nindex of(20)', '1', '10 20 30 40 50\r\n\r\nindex of (10) = 0', '20 40 60 \r\n\r\n\r\nindex of (20)\r\n', '0', '3 5 7 9\r\n\r\nindex of (5) ', '1', 'Write a java program to find the index of an array element', 'Coding Competition', 'B14', 'BPMCSE', 'Java'),
(113, '10 20 30 40 50 \r\n\r\nto be removed: 30', '10 20 40 50 ', 'Input = { 10,20,30,40}\r\n\r\nremove the specific element : 20\r\n\r\n\r\noutput = { 10,30,40,50}', '20  40 60 80 \r\n\r\nto be removed : 60', '20 40 80', '10 40 70 90 \r\n\r\nto be removed: 40', '10 70 90', 'Write a java program to remove a specific element form an array', 'Coding Competition', 'B15', 'BPMCSE', 'Java'),
(114, '10 20 30 40 ', '10 20 30 40 ', 'Input = 10 20 30 40 \r\n\r\n\r\noutput = 10 20 30 40 ', '2 3 4 5', '2 3 4 5', '11 22 33 44 ', '11 22 33 44 ', 'Write a java program to copy the array by iterating an array', 'Coding Competition', 'B16', 'BPMCSE', 'Java'),
(115, '10 20 40 ', '40 20 10 ', 'input  10 20 40 \r\n\r\nout put 40 20 10', '1 3 5 ', '5 3 1', '2 4 6 8', '8 6 4 2 ', 'Write a java program to reverse an array of integer values', 'Coding Competition', 'B17', 'BPMCSE', 'Java'),
(116, '10 20 30 40 50 10 20 ', '10 20', 'Input = { 10 20 30 10 20}\r\n\r\n\r\nOutput = { 10 20}', '2 3 4 5 2 3 ', '2  3', '10 30 40 50 10 30 ', '10 30 ', 'Write a Java program to find the duplicate values of an array of string values', 'Coding Competition', 'B18', 'BPMCSE', 'Java'),
(117, 'a1 = 10 20 30 40 \r\nb1= 20 30 50 60 \r\n\r\n', '20 30 ', 'input      a1 = 10 20 30 40     b1 = 10  20 50 60 \r\n\r\n\r\noutput  10  20 ', 'a1 = 2 3 4 5\r\nb1  = 3 8 9 0\r\n\r\n', '3', 'a1 = 10  20 30 40 \r\nb1 = 2  2  4  10 ', '10', '. Write a java program to find the common elements between two arrays of integers', 'Coding Competition', 'B19', 'BPMCSE', 'Java'),
(118, '1 2 3 4 5 7', '6', 'Input     1    2   3 4 5 7\r\n\r\nmissing element: 6', '10 11 12 13  14 16', '15', '20 21 22 23  24  26', '25', 'Write a java program to find the missing number in an array', 'Coding Competition', 'B20', 'BPMCSE', 'Java'),
(119, '{ 1 2 3 4 5}', '3', 'Input = { 5 , 7, 4, 1,9}\r\n\r\nOutput= (5+7+4)/3 = 5.33', '10 20 30 40 50', '30', '2 4 6 8 10 ', '6', 'Write a Java program to compute the average value of an array of integers except the largest and smallest values', 'Coding Competition', 'B21', 'BPMCSE', 'Java'),
(120, '10 20 30 40 50', '40', 'input 10 20 30 40 50 \r\n\r\n\r\noutput 50 - 10 =40', '2 4 6 8 10 ', '8', '1 3 5 7 ', '6', 'Write a Java program to get the difference between the largest and smallest values in an array of integers.', 'Coding Competition', 'B22', 'BPMCSE', 'Java'),
(121, '\r\n1 2 3 4 0 \r\n\r\ntarget 6', '2 \r\n4', 'Input  1 2 3 4 0 \r\n\r\ntarget =6\r\n\r\noutput 2+4 =6', '10 20 30 40 10\r\n\r\ntarget 40 ', '30 \r\n10', '2 3 4 5\r\n\r\ntarget =9', '4\r\n5', 'Write a Java program to find the sum of the two elements of a given array which is equal to a given integer', 'Coding Competition', 'B23', 'BPMCSE', 'Java'),
(122, '10 20 30 40 \r\n\r\ninsert(25,2)', '10 20 25 30 40 ', 'Input = 10 20 30 40 \r\ninsert(25,2)\r\n\r\n10 20 25 30 40 ', '2 4 6 9\r\ninsert(7,3)', '2 4 6 7 9', '2 3 5\r\n\r\ninsert (7,3)', '2 3 5 7 ', 'Write a Java program to insert an element (specific position) into an array.', 'Coding Competition', 'B24', 'BPMCSE', 'Java'),
(123, 'abc    bcd   cde   bcd', 'bcd', 'input  abc  bcd   cde  bcd\r\n\r\nDuplicate element = bcd', 'ab  bc bc d', 'bc', 'ab bc de de', 'de', 'Write a Java program to find the duplicate values of an array of string values', 'Coding Competition', 'B25', 'BPMCSE', 'Java'),
(124, 'ab  ab bc cd', 'ab', 'Input = ab ab bc cd\r\n\r\noutput= ab', 'ab bc bc e', 'bc', 'ac de  de r ', 'de', 'Write a Java program to find the common elements between two arrays (string values)', 'Coding Competition', 'B26', 'BPMCSE', 'Java'),
(125, '10 20 30 40 50', '40', 'input = 10 20 30 40 50 \r\noutput = 40', '1 2 3 4 5', '4', '2 3 4 5', '4', 'Write a Java program to find the second  largest element in an array', 'Coding Competition', 'B27', 'BPMCSE', 'Java'),
(126, 'a1 =1 2 3 4\r\nb1 = 1 2 3 4', 'Two arrays are equal', 'input \r\na1=1 2 3 4\r\n\r\nb1=1 2 3 4\r\n\r\noutput \r\nTwo arrays are equal', 'a1= 10 20 30 \r\nb1= 10 20 30 ', 'Two arrays are equal', 'a1=10 20 30 \r\nb1= 2 3 4', 'Two arrays are not equal', 'Write a Java program to test the equality of two arrays', 'Coding Competition', 'B28', 'BPMCSE', 'Java'),
(127, '10 20 30 40 50', 'even = 2\r\nodd = 3', 'Input = 10 20 30 40 50\r\n\r\neven number = 2\r\nodd number = 3', '2  4 6 8  1 ', 'odd =1\r\neven = 4', '0 1 2 3', 'odd =2 \r\neven = 2', 'Write a Java program to find the number of even and odd integers in a given array of integers', 'Coding Competition', 'B29', 'BPMCSE', 'Java'),
(128, 'Input: N = 5, arr[] = {1, 1, 2, 3, 5, 4}\r\n\r\n\r\n\r\n', 'Output: 1\r\nExplanation:\r\n1 is the only number repeated in the array.', 'array', 'Input: N = 10, arr[] = {10, 1, 2, 3, 5, 4, 9, 8, 5, 6, 4}', 'Output: 5\r\nExplanation:\r\n5 is the one of the number repeated in the array', 'Input: N = 10, arr[] = {10, 1, 2, 3, 5, 4, 9, 8, 5, 6, 4}', 'Output: 5\r\nExplanation:\r\n5 is the one of the number repeated in the array', 'Find any one of the multiple repeating elements in read only array ', 'Code Competition', 'B107', 'asvcse', 'Java'),
(129, 'Input : list = {1, 2, 3, 4, 5, 6}\r\n\r\n\r\n', 'Output : first = {1, 2, 3}, second = {4, 5, 6}\r\n', 'array', 'Input : list = {1, 2, 3, 4, 5}', 'Output : first = {1, 2}, second = {3, 4, 5}', 'Input : list = {1, 2, 3, 4, 5}', 'Output : first = {1, 2}, second = {3, 4, 5}', 'Split a list into two halves in Java', 'Code Competition', 'B108', '', ''),
(130, 'Input : list = {1, 2, 3, 4, 5, 6}', 'Output : first = {1, 2, 3}, second = {4, 5, 6}', 'array', 'Input : list = {1, 2, 3, 4, 5, 6}\r\n\r\n\r\n', 'Output : first = {1, 2, 3}, second = {4, 5, 6}\r\n', 'Input : list = {1, 2, 3, 4, 5}', 'Output : first = {1, 2}, second = {3, 4, 5}', 'Split a list into two halves in Java', 'Code Competition', 'B108', 'asvcse', 'Java'),
(131, 'Input String: 016-78967\r\n\r\n', 'Regular Expression: - \r\nOutput : {\"016\", \"78967\"}', 'Regular expression', 'Input String: 016-78967', 'Regular Expression: - \r\nOutput : {\"016\", \"78967\"}', 'Input String: 016-78967', 'Regular Expression: - \r\nOutput : {\"016\", \"78967\"}', 'Write a java program using Split() String method.', 'Code Competition', 'B109', 'asvcse', 'Java'),
(132, 'Input: s = \"This is a java language\"\r\n', 'Output: This\r\n        is\r\n        java\r\n        language \r\n\r\n\r\n', 'String', 'Input: s = \"i am GFG\"', 'Output: am', 'Input: s = \"This is a java language\"', 'Output: This\r\n        is\r\n        java\r\n        language \r\n', 'Java program to print Even length words in a String', 'Code Competition', 'B109', 'asvcse', 'Java'),
(133, '5 \r\n6', '11', 'Enter the  two numbers', '7\r\n9', '16', '5 \r\n11', '16', 'Write a C Program to find sum of two numbers', 'Coding Contest', 'A51', 'dbkcse', 'C'),
(134, '5', 'area of circle=79\r\n circumference=31.4\r\n\r\n', 'Enter radius of a circle', '6', 'area of circle=113\r\n circumference=38', '7', 'area of circle=153\r\n circumference=44', 'Write a C  Program to find area and circumference of circle.  ', 'Coding Contest', 'A52', 'dbkcse', 'C'),
(135, '500 \r\n5\r\n2', 'Simple Interest=50', 'Enter principle, rate of interest & time to find simple interest\r\n \r\n', '100\r\n5\r\n2', 'Simple interest= 10', '1200\r\n2\r\n5.4', 'Simple interest=130', 'Write  a  C   Program to find the simple interest', 'Coding Contest', 'A53', 'dbkcse', 'C'),
(136, '32', 'temp in Fahrenheit=89.59998', 'Enter temp in centigrade', '30', 'temp in Fahrenheit=86', '35', 'temp in Fahrenheit=95', 'Write  a  C   Program  to convert temperature from degree centigrade to Fahrenheit.', 'Coding Contest', 'A54', 'dbkcse', 'C'),
(137, '2 5', '7', 'int float', '0.6 0.2', '0.8', '12 11', '23', 'Write a Java program and compute the sum of the digits of an integer.', 'online coding competition', 'B208', 'gercse', 'Java'),
(138, 'hello', 'olleh', 'char', 'mam', 'mam', 'babu', 'ubab', 'Write a Java program to reverse a string.', 'online coding competition', 'B209', 'gercse', 'Java'),
(139, '{1,2,3,4,5,6,7,8,9}\r\n', '14', 'Input {1,2,3,4,5,6,9}\r\n\r\n\r\noutput = {1+4+9} = 14', '{1,2,3,4,5,6}', '5', '{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}', '30', 'Write a java program to find the sum of perfect square elements in an array.', 'Coding Competition', 'B31', 'BPMCSE', 'Java'),
(140, '{10,20,30}\r\n{40,50,60}\r\n\r\n', '{10,20,30,40,50,60}', 'Input\r\na1= {10,20,30}\r\n\r\nb1= {40,50,60}\r\n\r\noutput= {10, 20,30,40,50,60}', '{2,3,4}\r\n{5,6,7}', '{2,3,4,5,6,7}', '{10,20,40}\r\n\r\n{50,60}', '{10,20,40,50,60}', 'Write a java program to merge the two sorted arrays. ', 'Coding Competition', 'B30', 'BPMCSE', 'Java'),
(141, '{1,12,15,26,38}\r\n{2,13,17,30,45}', '16', 'input\r\nArray1 = {1,12,15,26,38}\r\n\r\nArray2 = {2,13,17,30,45}\r\n\r\nmedian =16\r\n\r\nMedian = 9', '{1,10,12,14,16}\r\n{2,3,4,5,6}', '8', '{2,3,4,5,6}\r\n{3,4,6,7,8}', '5', 'Write a java program  to find the median of two sorted arrays', 'Coding Competition', 'B32', 'BPMCSE', 'Java'),
(142, '3\r\n{5,131,54545}', '{54545}', 'Input = 3\r\n{ 5,131,54545}\r\n\r\noutput \r\n{54545}', '3\r\n{545,131,13131}', '{13131}', '2\r\n{12,545}\r\n', '{545}', 'Write a java program to find the largest palindrome in an array.', 'Coding Competition', 'B33', 'BPMCSE', 'Java'),
(144, '2\r\n2\r\n1  2\r\n2  3\r\n\r\n\r\n', '1\r\n2\r\n', 'Input \r\nrow =2\r\ncol = 2\r\n\r\n1  2\r\n2  3\r\n\r\noutput =\r\n1\r\n2\r\n\r\n', '2\r\n2\r\n40  50\r\n50  60\r\n', '40\r\n50', '2\r\n2\r\n11  22\r\n33   44\r\n', '11\r\n33', 'Write a java program to find minimum element in each row', 'Coding Competition', 'B34', 'BPMCSE', 'Java'),
(145, '2\r\n2\r\n\r\n1  4\r\n4  5', '4\r\n5\r\n', 'Input \r\nrow = 2\r\ncol =2\r\n\r\n1   4 \r\n4   5\r\n\r\noutput \r\n4\r\n5\r\n', '2\r\n2\r\n\r\n6   8\r\n9   10\r\n', '9\r\n10', '2\r\n2\r\n\r\n5    7\r\n8    9', '8\r\n9\r\n', 'Write a java program to find the maximum element in each column of a matrix', 'Coding Competition', 'B35', 'BPMCSE', 'Java'),
(146, 'Hai\r\n\r\nHai', 'both stringsa re equal', 'Input\r\nHai\r\n\r\nHai\r\n\r\nOutput\r\nBoth strings are equal', 'Hello\r\nHello', 'Both strings are equal', 'Hello world\r\nHello world', 'Bot strings are equal', 'Write a java program to compare two strings', 'Coding Competition', 'B36', 'BPMCSE', 'Java'),
(147, 'Hai\r\nhai', 'Both strings are equal', 'Input\r\nHai\r\nhai\r\n\r\noutput:\r\nBoth strings are equal', 'hello\r\nHello\r\n', 'Both strings are equal', 'Hello World\r\nhello world', 'Both strings are equal', 'Write a java program to compare two strings and ignoring case differences.', 'Coding Competition', 'B37', 'BPMCSE', 'Java'),
(148, 'hai\r\nhai\r\n\r\n\r\n', 'haihai', 'Input\r\n\r\nhai\r\nraj\r\n\r\noutput\r\nhai raj\r\n', 'hello\r\nram', 'helloram', 'hello\r\nworld', 'helloworld', 'Write a Java program to concatenate a given string', 'Coding Competition', 'B38', 'BPMCSE', 'Java'),
(149, 'i am 123 ?', 'Letters: 3\r\nnumbers: 3\r\nspace: 3\r\nother:1', 'int char', 'where 1?', 'Letters: 5\r\nnumbers: 1\r\nspace: 1\r\nother:1', 'going to chennai 1234 ???', 'Letters: 14\r\nnumbers: 4\r\nspace: 4\r\nother:3', 'Write a Java program to count the letters, spaces, numbers and other characters of an input string', 'Online coding competition', 'B210', 'gercse', 'Java'),
(150, '231\r\n431\r\n111\r\n123\r\n143', '5', 'int', '124\r\n121\r\n112\r\n113\r\n114\r\n115\r\n116', '7', '116\r\n117\r\n118\r\n119\r\n121\r\n122\r\n123\r\n143\r\n', '8', 'Write a Java program to create and display unique three-digit number using 1, 2, 3, 4. Also count how many three-digit numbers are there', 'online coding competition', 'B211', 'gercse', 'Java'),
(151, 'Hai', '3', 'input:\r\nHai\r\n\r\nlength:3', 'Hello', '5', 'Raja', '4', 'Write a java program to get the length of a given string', 'Coding Competition', 'B39', 'BPMCSE', 'Java'),
(153, '5', '5+55+555', 'int', '2', '2+22+222', '8', '8+88+888', 'Write a Java program that accepts an integer (n) and computes the value of n+nn+nnn.', 'online coding competition', 'B212', 'gercse', 'Java'),
(154, '20', '1', 'int', '17', '0', '12', '1', 'Write a Java program to accept a number and check the number is even or not. Prints 1 if the number is even or 0 if the number is odd.', 'online coding competition', 'B213', 'gercse', 'Java'),
(155, 'Hello', 'Heffo', 'Input\r\nHello\r\n\r\nOutput\r\nHeffo', 'lorry', 'forry', 'lord', 'ford', 'Write a Java program to replace all the d characters with f characters.', 'Coding Competition', 'B40', 'BPMCSE', 'Java'),
(156, 'Red is favorite color\r\n\r\nstarts with Red\r\n', 'True', 'Input\r\n\r\nRed is favorite color\r\nStarting string: Red\r\n\r\nOutput: true\r\nInput2:\r\nBlue is favorite color\r\nStarting string: Red\r\n\r\nOutput: false\r\n\r\n\r\n', 'Blue is favorite color\r\nStarting string: Red\r\n', 'False', 'Blue is favorite color\r\nStarting string: Blue\r\n', 'True', 'Write a Java program to check whether a given string starts with the contents of another string', 'Coding Competition', 'B41', 'BPMCSE', 'Java'),
(157, 'Hello', 'hello', 'Input:\r\nHello\r\n\r\n\r\nOutput:\r\nhello', 'Hai', 'hai', 'HelloWorld', 'helloworld', 'Write a Java program to convert all the characters in a string to lowercase', 'Coding Competition', 'B42', 'BPMCSE', 'Java'),
(159, '5 10 15', 'True', 'int ', '1 2 3', 'True', '4 2 5', 'False', 'Write a Java program to calculate the sum of two integers and return true if the sum is equal to a third integer.', 'online coding competition', 'B214', 'gercse', 'Java'),
(160, 'Red is favorite color', 'RED IS FAVORITE COLOR', 'Input:\r\nRed is  favorite color\r\n\r\nOutput:\r\nRED IS FAVORITE COLOR', 'Hello World', 'HELLO WORLD', 'Madam', 'MADAM', 'Write a Java program to convert all the characters in a string to uppercase', 'Coding Competition', 'B43', 'BPMCSE', 'Java'),
(161, '5 10 15', 'True', 'int', '7 10 17', 'True', '8 6 3', 'False', 'Write a Java program that accepts three integers from the user and return true if the second number is greater than first number and third number is greater than second number. If \"abc\" is true second number does not need to be greater than first number', 'online coding competition', 'B215', 'gercse', 'Java'),
(162, '86399 ', '23:59:59', 'int', '76587', '21:16:27', '65874', '18:17:54', 'Write a Java program to convert seconds to hour, minute and seconds', 'online coding competition', 'B216', 'gercse', 'Java'),
(163, 'Hello', 'l', 'Input:\r\n\r\nHello\r\noutput:\r\nl', 'hai', 'i', 'world', 'r', 'Write a Java program to find the second most frequent character in a given string', 'Coding Competition', 'B44', 'BPMCSE', 'Java'),
(164, 'the quick brown fox jumps over the lazy dog', 'The Quick Brown Fox Jumps Over The Lazy Dog', 'char', 'where are you', 'Where Are You', 'hai baby', 'Hai Baby', 'Write a Java program to capitalize the first letter of each word in a sentence', 'Online coding competition', 'B217', 'gercse', 'Java'),
(165, 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', 'the quick brown fox jumps over the lazy dog', 'char', 'HAI WHERE ARE YOU', 'hai where are you', 'CHENNAI', 'chennai', 'Write a Java program to convert a given string into lowercase', 'online coding competition', 'B218', 'gercse', 'Java'),
(166, 'The quick brown fox jumps over the lazy dog', 'lazy', 'char', 'Hello take care', 'take', 'I am in chennai', 'in', 'Write a Java program to find the penultimate (next to last) word of a sentence', 'online coding competition', 'B219', 'gercse', 'Java'),
(167, 'dsaf', 'fasd', 'char', 'test', 'tset', 'coffee', 'eeffoc', 'Write a Java program to reverse a word', 'online coding competition', 'B220', 'gercse', 'Java'),
(168, '15 20 25', 'false', 'int', '15 20 50', 'True', '16 20 51', 'True', 'Write a Java program that accepts three integer values and return true if one of them is 20 or more and less than the substractions of others', 'Online coding competition', 'B221', 'gercse', 'Java'),
(169, '35 45', 'True', 'int', '33 61', 'False', '45 65', 'True', 'Write a Java program that accepts two integer values between 25 to 75 and return true if there is a common digit in both numbers', 'online coding competition', 'B222', 'gercse', 'Java'),
(170, '19 7', '5', 'int', '5 3', '2', '15 2', '1', 'Write a Java program to calculate the modules of two numbers without using any inbuilt modulus operator', 'online coding competition', 'B223', 'gercse', 'Java'),
(171, 'resource', 'resouc', 'Input:\r\nresource\r\n\r\noutput:\r\nresouc', 'Hello', 'Helo', 'Helloworld', 'Helowrd', 'Write a Java program to print after removing duplicates from a given string', 'Coding Competition', 'B45', 'BPMCSE', 'Java'),
(172, 'Tutorial Python 3.0', 'Python Tutorial 3.0', 'char', 'Where Am in', 'Am Where in', 'competition online coding', 'online competition coding', 'Write a Java program to insert a word in the middle of the another string.', 'online coding competition', 'B223', 'gercse', 'Java'),
(173, 'abcdefghij', 'abcde\r\nfghij', 'Input =\r\nabcdefghij\r\n\r\noutput =\r\nabcde\r\nfghij', 'ababcdcdcd', 'ababc\r\ndcdcd', 'helloworld', 'hello\r\nworld', 'Write a Java program to divide a string in n equal parts', 'Coding Competition', 'B46', 'BPMCSE', 'Java'),
(174, 'madam', 'madam', 'input\r\nmadam\r\n\r\noutput\r\nmadam', 'hello', 'olleh', 'hai', 'iah', 'Write a Java program to reverse a string', 'Coding Competition', 'B47', 'BPMCSE', 'Java'),
(175, 'Hello world', 'l', 'Input =\r\nHello world\r\n\r\noutput\r\nl', 'Welcome ', 'e', 'Program', 'r', 'Write a Java program to find the maximum occurring character in a string', 'Coding Competition', 'B48', 'BPMCSE', 'Java'),
(176, 'Tutorial Python 3.0', 'Python Tutorial 3.0', 'char', 'Where Am in', 'Am Where in', 'competition online coding', 'online competition coding', 'Write a Java program to insert a word in the middle of the another string.', 'online coding competition', 'B223', 'gercse', 'Java'),
(178, '10 12', '22', 'int', '5 5', '10', '12 11', '23', 'Write a Java program to add two numbers without using any arithmetic operators.', 'online coding competition', 'B224', 'gercse', 'Java'),
(179, '25', '7', 'int', '21', '3', '15', '6', 'Write a Java program to add all the digits of a given positive integer until the result has a single digit.', 'Online Coding competition', 'B225', 'gercse', 'Java'),
(180, '64', 'True', 'int', '6', 'False', '16', 'True', 'Write a Java program to check whether an given integer is a power of 4 or not.', 'Online coding competition', 'B226', 'gercse', 'Java'),
(181, 'Hello', 'Hello', 'Input\r\n\r\nstring 1= Hello\r\n\r\noutput\r\nString 2 = Hello', 'Hai', 'Hai', 'Hello world', 'Hello world', 'Write a java program to copy the one string to another', 'Coding Competition', 'B49', 'BPMCSE', 'Java'),
(182, '7! 5040', '1', 'int', '10! 3628800', '2', '12! 479001600', '2', 'Write a Java program to compute the number of trailing zeros in a factorial.', 'Online Coding Competition', 'B227', 'gercse', 'Java'),
(183, '151', 'True', 'int', '121', 'True', '133', 'False', 'Write a Java program to check if a positive number is a palindrome or not', 'Online Coding Competition', 'B228', 'gercse', 'Java'),
(184, '25', '5', 'int', '36', '6', '49', '7', 'Write a Java program to compute the square root of an given integer', 'Online Coding Competition', 'B229', 'gercse', 'Java'),
(185, 'abababd', 'd', 'Input\r\nabababd\r\n\r\noutput\r\nd', 'cbcbcbe', 'e', 'bcbcbcf', 'f', 'Write a Java program to find first non repeating character in a string', 'Coding Competition', 'B50', 'BPMCSE', 'Java'),
(186, '\"cat\",\r\n\"flag\",\r\n\"green\",\r\n\"country\",\r\n\"w3resource\"', ' \"w3resource\"', 'char', '\"cat\",\r\n\"dog\",\r\n\"red\",\r\n\"is\",\r\n\"am\"', '\"cat\", \"dog\", \"red\"', '\"where\"\r\n\"who\"\r\n\"What\"\r\n\"How\"\r\n\"is\"', '\"where\"', 'Write a Java program to find all of the longest word in a given dictionary.', 'Online Coding Competition', 'B230', 'gercse', 'Java'),
(187, '25 22 26 28', 'Numbers are not equal', 'int', '22 22 22 22', 'Numbers are  equal', '12 14 16 18', 'Numbers are not equal', 'Write a Java program that accepts four integer from the user and prints equal if all four are equal, and not equal otherwise.', 'Online  Coding Competition ', 'B231', 'gercse', 'Java'),
(188, '25 11001', 'Number of zero bits: 2', 'int', '47 101111', 'Number of zero bits: 1', '12 0110', 'Number of zero bits: 2', 'Write a Java program that will accept an integer and convert it into a binary representation. Now count the number of bits which is equal to zero of the said binary representation.', 'Online coding Competition', 'B232', 'gercse', 'Java'),
(189, '625 25', '25', 'int', '64 8', '8', '36 6', '6', 'Write a Java program to divide the two given integers using subtraction operator. ', 'Online Coding Competition', 'B233', 'gercse', 'Java'),
(190, '-2 1 -3 4', '-3 -2 1 4', 'int', '-4 -5 2 -3 1 ', '-5 -4 -3 1 2', '1 3 6 -6 -4 -3', '-6 -4 -3 1 3 6', 'Write a Java program to move every positive number to the right and every negative number to the left of a given array of integers.', 'Online Coding Competition', 'B234', 'gercse', 'Java'),
(191, '5 25', '125', 'int', '7 7', '49', '10 5', '50', 'Write a Java program to multiply two given integers without using the multiply operator(*).', 'Online Coding Competition', 'B235', 'gercse', 'Java'),
(192, 'The quick brown fox jumps over the lazy dog', 'dog lazy the over jumps fox brown quick The', 'char', 'How are you', 'you are how', 'where are you', 'you are where', 'Write a Java program to reverse the content of a sentence (assume a single space between two words) without reverse every word.', 'Online Coding Competition', 'B236', 'gercse', 'Java'),
(193, ' 212.0', '100.0', 'float', '39.0', '3.88889', '165.0', '73.8889', 'Write a Java program to convert temperature from Fahrenheit to Celsius degree', 'Online Coding Competition', 'B237', 'gercse', 'Java'),
(194, '13', '0.381', 'float', '25', '0.635', '39', '0.9906', 'Write a Java program that reads a number in inches, converts it to meters.Note: One inch is 0.0254 meter.', 'Online Coding Competition', 'B238', 'gercse', 'Java'),
(195, '12545', '1 2 5 4 5', 'int', '23698', '2 3 6 9 8', '123654', '1 2 3 6 5 4', 'Write a Java program to break an integer into a sequence of individual digits', 'Online Coding Competition', 'B239', 'gercse', 'Java'),
(196, '35', 'positive', 'int', '-13', 'negative', '25', 'positive', 'Write a Java program to test a number is positive or negative', 'Online Coding Competition', 'B240', 'gercse', 'Java'),
(197, '3', 'Wednesday ', 'int', '1', 'Monday', '7', 'Sunday', 'Write a Java program that keeps a number from the user and generates an integer between 1 and 7 and displays the name of the weekday.', 'Online Coding Competition', 'B241', 'gercse', 'Java'),
(198, '3256 2546', 'Different', 'int', '1256 3254', 'Different', '2558 2559', 'Same', 'Write a Java program that reads in two floating-point numbers and tests whether they are the same up to three decimal places.  Test Data', 'Online Coding Competition', 'B242', 'gercse', 'Java'),
(199, '2 2016', 'February 2016 has 29 days', 'int', '6 2020', 'June 2020 has 30 days', '8 2020', 'August 2020 has 31 days', 'Write a Java program to find the number of days in a month.', 'Online Coding Competition', 'B243', 'gercse', 'Java'),
(200, 'P', 'Consonant ', 'char', 'A', 'Vowel', 'C', 'Consonant ', 'Write a Java program that takes the user to provide a single character from the alphabet. Print Vowel of Consonant, depending on the user input. If the user input is not a letter (between a and z or A and Z), or is a string of length > 1, print an error message.', 'Online Coding Competition', 'B244', 'gercse', 'Java'),
(201, '2016', '2016 is a leap year', 'int', '2018', '2018 is not a leap year', '2020', '2020 is a leap year', 'Write a Java program that takes a year from user and print whether that year is a leap year or not.', 'Online Coding Competition', 'B245', 'gercse', 'Java'),
(202, '1 2 3 4 5 6 7 ', '28', 'int', '1 2 3 4', '10', '1 2 3', '6', 'Write a program in Java to display n terms of natural numbers and their sum.', 'Online Coding Competition', 'B246', 'gercse', 'Java'),
(204, '1524 2546 3254', 'Increasing order', 'int', '3214 2361 1125', 'decreasing order', '1234 2568 5478', 'Increasing order', 'Write a program that accepts three numbers from the user and prints \"increasing\" if the numbers are in increasing order, \"decreasing\" if the numbers are in decreasing order, and \"Neither increasing or decreasing order\" otherwise.', 'Online Coding Competition', 'B 247', 'gercse', 'Java'),
(205, '2', '1\r\n8', 'int', '3', '1\r\n8\r\n27', '4', '1\r\n8\r\n27\r\n64', 'Write a program in Java to display the cube of the number up-to given an integer', 'Online Coding Competition', 'B248', 'gercse', 'Java'),
(206, '1 2 3 4 5', 'sum 15\r\navg 3.0', 'int', '10 11 12 13 14', 'sum 60\r\navg 12', '6 7 8 9 10 11', 'sum 51\r\navg 8.5', 'Write a program in Java to input 5 numbers from keyboard and find their sum and average', 'Online Coding Competition', 'B249', 'gercse', 'Java'),
(207, '2000 6 3', '360', 'int', '500 1 1', ' 500', '3000 3 2', '180', 'Write a Java Program to calculate simple interest', 'Online Coding Competition', 'B250', 'gercse', 'Java');
INSERT INTO `question` (`id`, `input`, `output`, `format`, `t1in`, `t1out`, `t2in`, `t2out`, `ques`, `title`, `Number`, `author`, `language`) VALUES
(208, '[1 5 \r\n3 9]\r\n', '2', 'Any integer with m rows and n columns ', '[-5 -7\r\n5   7 ] \r\n', '1', '[ 0 -1 5  \r\n2 4 -6\r\n1  1  5]\r\n', '3', 'Find the rank of the any dimensional matrix ', 'Numpy', 'C101', 'RSTCSE1', 'python32'),
(209, '[2  2 8\r\n5 5 6\r\n4 5 8]\r\n', '[2  2 +\r\n5 5 6\r\n4 5 * ]\r\n', 'Read  m rows and n columns ', '[1 1] ', '[1 0]', '[1 3 5 9 ]', '[1 + 5 9 ]', 'Read m x n matrix and replace 3 and 8,  replace 3 with * and 8 with +', 'numpy', 'C102', 'RSTCSE1', 'python32'),
(210, '1, 3 ,5', '1 , 3 , 25', 'Any positive integer ', '1 ,1', '1,0', '1,3,5,9', '1,3,25,81', 'Given n  positive numbers find the last digit in the given input and check if the last digit is less than 5 make the square root of last digit  if the last number is less than five means make them as zero ', 'array ', 'C103', 'RSTCSE1', 'python32'),
(211, '2, 3', '8. 27', 'Read Single dimensional array  ', '1, 2,,5 ', '1 ,8 ,125', '2 ,6 ,0 ', '8 ,216, #', 'Write a python program to find the cube of the  all number  in the series if zero is present change the zero with # sign ', 'Array ', 'C104', 'RSTCSE1', 'python32'),
(212, '5', '1', 'Any positive integer with single dimension ', '8', '1 ,2 ,4', '26', '1 ,2 ,13', 'Accept  any  positive integer  number from the user  and  find the factors of the given number.', 'array', 'C105', 'RSTCSE1', 'python32'),
(213, 'get ', 'My IP Address is:\r\n115.242.7.243', 'to get ip address', 'get', 'My IP Address is:\r\n115.242.7.002', 'get', 'My IP Address is:\r\n115.242.7.100', 'Write a Java program to get IP address', 'code competition', 'b51', '', ''),
(214, 'get ip ', 'My IP Address is:\r\n115.242.7.002', 'ip adderss', 'get ip', 'My IP Address is:\r\n115.242.7.100', 'get ip', 'My IP Address is:\r\n115.242.7.243', 'Write a Java program to get IP address', 'code competition', 'b51', 'TDRCSE', 'Java'),
(215, 'Enter a string: \r\nChaitanya\r\n', 'Input String is: Chaitanya', 'string,int,float', 'Enter an integer: \r\n27\r\n', 'Input Integer is: 27', 'Enter a float number: \r\n12.56\r\n', 'Input Float number is: 12.56', 'Write a Java Program to get Input From User', 'code competition', 'b52', 'TDRCSE', 'Java'),
(216, 'Enter the length of Rectangle:\r\n2\r\nEnter the width of Rectangle:\r\n8', 'Area of Rectangle is:16.0', 'double', 'Enter the length of Rectangle:\r\n4.5\r\nEnter the width of Rectangle:\r\n8', 'Area of Rectangle is:36.0', 'Enter the length of Rectangle:\r\n10\r\nEnter the width of Rectangle:\r\n8', 'Area of Rectangle is:80.0', 'Write a java Program to Calculate Area of Rectangle', 'code competition', 'b53', 'TDRCSE', 'Java'),
(217, 'Enter Side of Square:\r\n2.5', 'Area of Square is: 6.25', 'double/int', 'Enter Side of Square:2', 'Area of Square is:4', 'Enter Side of Square:4.5', 'Area of Square is: 20.25', 'Write a Java program to calculate area of Square', 'code competition', 'b54', 'TDRCSE', 'Java'),
(218, 'Enter the width of the Triangle:\r\n2\r\nEnter the height of the Triangle:\r\n2', 'Area of Triangle is: 2.0', 'int/ douoble', 'Enter the width of the Triangle:\r\n20.0\r\nEnter the height of the Triangle:\r\n110.5', 'Area of Triangle is: 1105.0', 'Enter the width of the Triangle:\r\n20\r\nEnter the height of the Triangle:\r\n10', 'Area of Triangle is: 100', 'Write a Java program to calculate area of Triangle', 'code competition', 'b55', 'TDRCSE', 'Java'),
(219, '60\r\n 65\r\n 50\r\n 60\r\n 60\r\n', 'sum=300 \r\npercentage=60', 'Enter the 5 Subject Marks', '55\r\n60\r\n70\r\n75\r\n80\r\n', 'sum=340\r\nPercentage=68\r\n', '50\r\n60\r\n65\r\n70\r\n75\r\n', 'sum=320\r\nPercentage=64\r\n', 'Write  a  C   Program to calculate sum of 5 subjects and find percentage', 'Coding Contest', 'A55', 'dbkcse', 'C'),
(220, '4\r\n5', 'after swapping the value:5\r\n4', 'Enter the Variables', '2\r\n1', 'after swapping the value:1\r\n2', '3\r\n2', 'after swapping the value:2\r\n3', 'Write  a  C   Program  to show swap of two noâ€™s without using third variable.', 'Coding Contest', 'A56', 'dbkcse', 'C'),
(221, '4\r\n5\r\n6', 'reverse=6\r\n5\r\n4', 'Enter the Values', '1\r\n2\r\n3', 'reverse=3\r\n2\r\n1', '7\r\n8\r\n9', 'reverse=9\r\n8\r\n7', 'Write  a  C   Program   to reverse a given number.', 'Coding Contest', 'A57', 'dbkcse', 'C'),
(222, '100', 'gross salary=122\r\n\r\n', 'Enter the basic salary', '200', 'gross salary=460', '300', 'gross salary=690', 'Write  a  C   Program   to find gross salary.', 'Coding Contest', 'A57', '', ''),
(223, '4\r\n1000\r\n1\r\n2\r\n2000', '[1000,2000]', 'Enter the inputs in this order\r\nSize of list (even number)\r\nList elements', '6\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6', '[2,4,6]', '4\r\n100\r\n101\r\n200\r\n201', '[101,201]', 'A list always has even number of integer elements. Parsing through the list, the maximum among every pair of elements to be printed. Initially the size of the list to be read from the user, then the elements of the list can be read.', 'List', 'C1', 'ARSCSE', 'python32'),
(224, '100', 'gross salary=122', 'Enter the basic salary', '200', 'gross salary=460', '300', 'gross salary=690', 'Write  a  C   Program   to find gross salary.', 'Coding Contest', 'A58', 'dbkcse', 'C'),
(225, '222', '4', 'Enter a decimal number', '7', '3', '101010', '2', 'Read a decimal number from user and display the maximum number of consecutive â€˜1sâ€™ in binary representation of the number.', 'Arithmetic operation', 'C2', 'ARSCSE', 'python32'),
(226, '9', '2', 'Enter a decimal number', '50', '2', '101010', '3', 'Read a decimal number from user and display the maximum number of consecutive â€˜0sâ€™ in binary representation of the number.', 'Arithmetic operation', 'C3', 'ARSCSE', 'python32'),
(227, '5', 'Qualified', 'Enter a decimal number', '51', 'Qualified', '7', 'Not qualified', 'Read a decimal number from user. Check whether the binary representation of the number has equal frequency of consecutive blocks of 0s and 1s. If the condition is found print â€œQualifiedâ€ else print â€œNot qualifiedâ€.', 'Arithmetic operation', 'C4', 'ARSCSE', 'python32'),
(228, '5\r\n7\r\n4', '   b is greatest', 'Enter the value of a,b,c', '6\r\n5\r\n4', 'a is greatest', '4\r\n5\r\n6', ' c is greatest', 'Write  a  C   Program  to  show the use of conditional operator.', 'Coding Contest', 'A59', 'dbkcse', 'C'),
(229, '5', '      The  Output  Number  is odd', 'Enter the value', '6', '      The  Output  Number  is even', '7', '      The  Output  Number  is odd', 'Write a C program to find whether given no. is even or odd.', 'Coding Contest', 'A60', 'dbkcse', 'C'),
(230, '5\r\n1\r\n2\r\n3\r\n4\r\n5\r\n3', '3 4 5 1 2', 'Read the input in following order:\r\nSize of array\r\nElements of array (one per line)\r\nPosition at which the array to be splitted\r\n', '6\r\n100\r\n200\r\n300\r\n400\r\n500\r\n600\r\n2', '200 300 400 500 600 100', '4\r\n4\r\n8\r\n12\r\n16\r\n3', '12 16 4 8', 'For array with a size defined by user, read the elements then read position to split the array into two parts. Append the first part of elements to the end of the array.', 'Array / List', 'C6', 'ARSCSE', 'python32'),
(231, '4\r\n1\r\n2\r\n3\r\n4\r\n2', '[3,4]', 'Read the inputs in following order\r\nSize of list (N)\r\nElements of the list (one per line)\r\nRead a number < N\r\n', '5\r\n100\r\n101\r\n105\r\n104\r\n106\r\n3', '[104,105,106]', '7\r\n10\r\n2\r\n9\r\n3\r\n8\r\n4\r\n7\r\n5', '[5,7,8,9,10]', 'Read the size of a list then elements of the list. Read a number N less than number of elements. Print N largest elements in the list.', 'List', 'C7', 'ARSCSE', 'python32'),
(232, '4\r\n1\r\n2\r\n3\r\n4', '30', 'Enter size of list\r\nEnter elements of list (one per line)', '5\r\n100\r\n101\r\n105\r\n104\r\n106', '53278', '7\r\n10\r\n2\r\n9\r\n3\r\n8\r\n4\r\n7', '323', 'Read the size of a list then elements of the list. Display the sum of square of the elements in the list.', 'List', 'C8', 'ARSCSE', 'python32'),
(233, '2\r\n10', '2 4 6 8 10 ', 'Enter first number (N1)\r\nEnter second number (N2) where N1<N2', '100\r\n200', '100 102 104 106 108 110 112 114 116 118 120 122 124 126 128 130 132 134 136 138 140 142 144 146 148 150 152 154 156 158 160 162 164 166 168 170 172 174 176 178 180 182 184 186 188 190 192 194 196 198 200', '5\r\n50\r\n', '6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50', 'Get two numbers N1 and N2 where N1<N2. Print all even numbers between N1 and N2 (including N1 and N2)', 'Sequence', 'C9', 'ARSCSE', 'python32'),
(234, 'Hello\r\nHai', '1', 'Enter first string\r\nEnter second string', 'KARE\r\nCARE\r\n', '3', 'COVID\r\nCORONA', '2', 'Read two strings print number of common characters in both the strings', 'String', 'C10', 'ARSCSE', 'python32'),
(235, '100,200.5,5', '100.200,5.5 ', 'Enter a string (should contain atleast one dot and one comma', '10,10,100.10', '10.10.100,10', '5.5.5,5.5,5', '5,5,5.5,5.5', 'Read a string with alphabets, numbers, dots and comma. Replace dots by comma and comma by dots.', 'String', 'C11', 'ARSCSE', 'python32'),
(236, '08:15:40 PM', '20:15:40 ', 'Enter time in the format of HH:MM:SS A.M/ P.M', '08:01:55 AM', '08:01:55', '11:59:59 PM', '23:59:59', 'Read value of time in the 12 hour format HH:MM:SS A.M/ P.M and convert it into 24 hour format', 'Arithmetic operation', 'C12', 'ARSCSE', 'python32'),
(237, 'Enter the radius: 1', 'The area of circle is: 3.141592653589793\r\nThe circumference of the circle is:6.283185307179586', 'int/double', 'Enter the radius: 2', 'The area of circle is: 6.283185307179586\r\nThe circumference of the circle is:12.562', 'Enter the radius: 3', 'The area of circle is: 28.274333882308138\r\nThe circumference of the circle is:18.84955592153876', 'Write a Java Program to calculate area and circumference of circle', 'code competition', 'b56', '', ''),
(238, 'Enter the radius: 1\r\n', 'The area of circle is: 3.141592653589793\r\nThe circumference of the circle is:6.283185307179586', 'int/double', 'Enter the radius: 3', 'The area of circle is: 28.274333882308138\r\nThe circumference of the circle is:18.84955592153876', 'Enter the radius: 2', 'The area of circle is: 6.283185307179586\r\nThe circumference of the circle is:12.5663706', 'Write a Java Program to calculate area and circumference of circle', 'code competition', 'b56', 'TDRCSE', 'Java'),
(239, '3\r\n1 2 3\r\n4 5 6\r\n7 8 9\r\n', '1 2 3\r\n0 5 6\r\n0 0 9\r\n', 'The first line of the input contains an integer number n which represents the number of rows and the number of columns.\r\nFrom the second line, take n lines input with each line containing n integer elements. Elements are separated by space.\r\n', '4\r\n\r\n12 2 5 6\r\n10 11 4 1\r\n32 1 4 10\r\n1 2 10 9\r\n', '12 2 5 6\r\n0 11 4 1\r\n0 0 4 10\r\n0 0 0 9\r\n', '4\r\n\r\n2 2 5 0\r\n4 1 4 0\r\n3 2 4 1\r\n1 2 1  9\r\n', '2 2 5 0\r\n0 1 4 0\r\n0 0 4 1\r\n0 0 0 9', 'array', 'Write a program to convert a square matrix into an upper triangular matrix.', 'C106', 'RSTCSE1', 'python32'),
(240, '08:15', 'quarter past eight', 'Time in HH:MM (12 hour) format', '09:00', 'Nine Oâ€™ clock', '10:49', 'eleven minutes to eleven', 'Read value of time in 12 hour format HH:MM and print it in words. If the minutes is <30, include the word â€œpastâ€ with the hour completed, â€œquarter pastâ€ for 15 minutes â€œ â€œhalf pastâ€ for 30 minutes, if the minutes is >30, include the word â€œtoâ€ with the next hour and â€œquarter toâ€ for 45 minutes.', 'Arithmetic operation', 'C13', 'ARSCSE', 'python32'),
(241, '00:45\r\n00:05\r\n00:10\r\n00:06\r\n01:10', '00:02:16', 'Enter five time details (one per line) with minutes and second (MM:SS)', '35:45\r\n22:31\r\n33:11\r\n12:27\r\n17:28', '02:01:22', '05:04\r\n02:48\r\n03:59\r\n01:07\r\n01:02', '00:14:00', 'Read values for five different time in the format of MM:SS (hour not necessary). Add all of them and display in the format HH:MM:SS.', 'String', 'C14', 'ARSCSE', 'python32'),
(242, '1947', 'year is not a leap year', 'Enter the year', '1955', 'year is not a leap year', '1965', 'year is not a leap year', 'Write a  C  Program to find that entered year is leap year or not.', 'Coding Contest', 'A61', 'dbkcse', 'C'),
(243, '4\r\n2\r\n3\r\n4', '1', 'Enter number of values\r\nEnter the numbers', '4\r\n10\r\n15\r\n200\r\n40', '5', '7\r\n88\r\n90\r\n22\r\n28\r\n90\r\n36\r\n48', '2', 'To find GCD of more than two numbers, read number of elements, then enter the numbers one by one. Then calculate the GCD of all the entered numbers and display it.', 'Arithmetic operation', 'c15', 'ARSCSE', 'python32'),
(244, 'welcome to hackathon', 'wttooonmlhheeccaa', 'Enter a string (include numbers too)', 'covid19', 'voidc91', 'lockdown', 'woonlkdc', 'Read a string and display the character in reversely sorted form (discard spaces)', 'String', 'C16', 'ARSCSE', 'python32'),
(245, '12\r\n24\r\n', '1\r\n2\r\n3\r\n4\r\n6\r\n12', 'Enter two numbers one by one', '40\r\n28\r\n', '1\r\n2\r\n4', '100\r\n80\r\n', '1\r\n2\r\n4\r\n5\r\n10\r\n20\r\n', 'Read two numbers and display all possible common divisors of the numbers', 'Arithmetic operation', 'c17', 'ARSCSE', 'python32'),
(246, '12', '3', 'Enter a number', '36', '3', '49', '8', 'Read a number. Find all the factors of the number and find sum of each pair of the factors and display the minimum sum (avoid self addition)', 'Arithmetic operation', 'C17', 'ARSCSE', 'python32'),
(247, 'm', 'm for Monday', 'Enter the Day', 't', ' t for Tuesday', 'w', 'w for Wednesday', 'Write a C  Program to use switch statement. Display Monday to Sunday.', 'Coding Contest', 'A62', '', ''),
(248, 'm', 'm for Monday', 'Enter the Day', 't', ' t for Tuesday', 'w', 'w for Wednesday', 'Write a C  Program to use switch statement. Display Monday to Sunday.', 'Coding Contest', 'A62', 'dbkcse', 'C'),
(249, 'TEMPLECITY\r\n4', 'CITYTEMPLE\r\nLECITYTEMP', 'Enter a string\r\nEnter a number', 'KARECHALLENGE\r\n4\r\n', 'ENGEKARECHALL\r\nCHALLENGEKARE', 'WAITANDWIN\r\n2', 'INWAITANDW\r\nITANDWINWA\r\n', 'Read a string and get an integer N. Display the string N times right rotated and N times left rotated', 'String', 'C18', 'ARSCSE', 'python32'),
(250, 'HACKHATHON CHALLENGE IS ON', 'HACKHATHON \r\nIS \r\nON', 'Enter a string with space between words', 'Kalasalingam Academy of Research and Education', 'Kalasalingam \r\nof \r\nResearch ', 'Protect yourself', 'yourself', 'Read a string with more than one words separated by a space. Print the words with even number of characters.', 'String', 'C19', 'ARSCSE', 'python32'),
(251, 'Enter 1\r\n8\r\n4', '\r\nsum= 12', 'Enter the value a,b', 'Enter 2\r\n8\r\n2', 'multiply=16', 'Enter 3\r\n8\r\n4\r\n\r\n', 'Subtraction=4', 'Write  a  C   Program to display arithmetic operator using switch case.', 'Coding Contest', 'A63', 'dbkcse', 'C'),
(252, 'HACKHATHON CHALLENGE IS ON\r\n3\r\n', 'HACKHATHON  \r\nCHALLENGE\r\n', 'Enter a string with more than one word\r\nEnter a number', 'Kalasalingam Academy of Research and Education\r\n7\r\n', 'Kalasalingam \r\nEducation \r\n', 'Protect yourself\r\n6\r\n', 'yourself', 'Read a string with more than one word separated by a space and get a number. Print the words with length greater than the given number. ', 'String', 'C20', 'ARSCSE', 'python32'),
(253, '7', 'Sum=1/28', 'Enter any no', '2', 'sum=3/2', '3', 'sum=11/6', 'Write a C Program to display sum of series 1+1/2+1/3+â€¦ +1/n.', 'Coding Contest', 'A64', 'dbkcse', 'C'),
(254, 'Hello world!', 'upper  1 : Lower : 8  Special :2  numeric : 0 ', 'The first line of the input contains a  5 lines of statements', 'Hai!12', 'upper  1 : Lower : 2  Special :1  numeric : 2', 'GoodGod ', 'upper  2: Lower : 5  Special :0  numeric : 0 ', 'Write a python program that accepts a 5 lines of inputs with characters, alpha numeric, special characters and numbers etc,  and count the number of upper case letters , lower case letter, special characters, numeric values  in each row and find the overall total number of special characters and numbers ', 'string ', 'C107', 'RSTCSE1', 'python32'),
(255, '7', 'Sum=16', 'Enter any no', '2', 'Sum=4', '3', 'Sum=9', 'Write a C Program  to display series and find sum of 1+3+5+â€¦â€¦â€¦â€¦..+n.', 'Coding Contest', 'A65', 'dbkcse', 'C'),
(257, '7', 'Sum=16', 'Enter any no', '2', 'Sum=4', '3', 'Sum=9', 'Write a C Program  to display series and find sum of 1+3+5+â€¦â€¦â€¦â€¦..+n.', 'Coding Contest', 'A65', 'dbkcse', 'C'),
(258, '10\r\n20', 'The Output sum is 30', 'Enter the two values', '20\r\n30', 'The Output sum is 50', '25\r\n25', 'The Output sum is 50', 'Write a C Program  to add two number using pointers.', 'Coding Contest', 'A66', 'dbkcse', 'C'),
(260, 'ABCDESAF', '4,  2,4,5,7', 'Read the  character as input and return the output in numeric values ', 'KHSORHSDR', '5,  0,1,2,3,5,6', 'WSALOP', '4, 0,1,3,4,5', 'Find the alphabets with no holes in the letter( â€˜Oâ€™, â€˜Kâ€™,â€™Sâ€™,Lâ€™,Iâ€™,Y,W ,Z and count the number of letter with position of all alphabets ( index starts from 0 ) ', 'string ', 'C108', 'RSTCSE1', 'python32'),
(261, '49', '8', 'Enter a number', '25', '6', '1000056', '166680', 'Read a number and find all the factors of the given number. Print the sum of all unique odd factors.', 'Arithmetic operation', 'C21', 'ARSCSE', 'python32'),
(262, '49', '7', 'Enter a number', '250', '10', '1000056', '250018', 'Read a number and find all unique factors. Find the product of all unique factors.', 'Arithmetic operation', 'C22', 'ARSCSE', 'python32'),
(263, '21 ,49, 32 ,43 ,72', '49,72', 'The first line contains the numbers of list A separated by a space and Print the numbers in a single line separated by a space which are multiples of 7.', '8 ,9 ,6, 5 ,3', 'No data ', '5 ,14 ,35, 42 ', '14,35', 'Given array A of numbers (integers), you have to print those numbers which are multiples of 7 ', 'array', 'C109', 'RSTCSE1', 'python32'),
(264, '5\r\n10\r\n-2\r\n3\r\n9\r\n-1111', '3\r\n2\r\n', 'Enter number of elements in a list\r\nEnter the elements one by one (including negative values)', '6\r\n10\r\n-110\r\n1110\r\n11110\r\n-111110\r\n1111110\r\n', '4\r\n2', '5\r\n2\r\n22\r\n-222\r\n2222\r\n-22222', '3\r\n2', 'Create a list, get number of elements in the list then enter the elements. Print number of positive elements and number of negative elements in the list', 'List', 'C23', 'ARSCSE', 'python32'),
(265, '4 \r\n5\r\n6\r\n 1\r\n2\r\n3\r\n5\r\n 5\r\n 4\r\n7\r\n', 'The output of sum is 42 \r\nThe output of  average is 4.22\r\n', 'Enter the values\r\n', '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', 'The output of sum is 55\r\nThe output of  average is 5.5', '2\r\n4\r\n6\r\n8\r\n10\r\n12\r\n14\r\n16\r\n18\r\n20', 'The output of sum is 110\r\nThe output of  average is 11', 'Write a C Program to show sum of 10 elements of array & show the average.', 'Coding Contest', 'A67', 'dbkcse', 'C'),
(266, '6\r\n1\r\n2\r\n3\r\n2\r\n1\r\n0', '2', 'Enter size of the list\r\nEnter the elements one by one', '13\r\n10\r\n20\r\n30\r\n20\r\n20 \r\n30\r\n40\r\n50\r\n-20\r\n60\r\n60\r\n-20\r\n-20', '5', '7\r\n11\r\n-11\r\n21\r\n9\r\n-9\r\n21\r\n21', '2', 'For a list, get the number of elements then the values of each element. Check for duplicate entries in the list. Find number of occurrences of each element and display the sum of such occurrences.', 'Array / List', 'C24', 'ARSCSE', 'python32'),
(267, '5\r\n1\r\n2\r\n3\r\n4\r\n5', '[1,3,5]', 'Enter size of the list\r\nEnter the elements in the list', '7\r\n10\r\n20\r\n30\r\n40\r\n50\r\n60\r\n71\r\n', '[71]', '10\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '[1,3,5,7,9]', 'For a list get size and all the elements, remove all the even elements and display the remaining list.', 'List', 'C25', 'ARSCSE', 'python32'),
(268, '5\r\n4\r\n7\r\n1\r\n 2\r\n', '       The output of maximum no: 7', 'Enter the Values', '2\r\n4\r\n6\r\n8\r\n10', '       The output of maximum no: 10', '1\r\n3\r\n5\r\n7\r\n9\r\n', '  The output of maximum no: 9', 'Write a C Program  to find the maximum number in an array.', 'Coding Contest', 'A68', 'dbkcse', 'C'),
(269, '5\r\n1\r\n2\r\n3\r\n4\r\n5', '[2,4]', 'Enter the size of list \r\nEnter the elements in the list', '7\r\n10\r\n20\r\n30\r\n40\r\n50\r\n60\r\n71\r\n', '[10,20,30,40,50,60]', '10\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n', '[2,4,6,8,10]', 'For a list get size and all the elements, remove all the odd elements and display the remaining list.', 'List', 'C26', 'ARSCSE', 'python32'),
(270, '8', '1\r\n3\r\n7\r\n', 'Enter a number\r\n', '10', '1\r\n5\r\n11\r\n', '12', '1\r\n2\r\n3\r\n4\r\n6\r\n8\r\n9\r\n12\r\n16\r\n18\r\n24\r\n36\r\n48\r\n72', 'Read a number N and find the Nth element in Fibonacci series and display the factors of that element', 'Arithmetic operation', 'C27', 'ARSCSE', 'python32'),
(271, ' 5\r\n4\r\n7\r\n1\r\n2\r\n', '       The output of maximum no: 7', 'Enter the values', '1\r\n2\r\n3\r\n4\r\n5\r\n', '       The output of maximum no: 5', '2\r\n4\r\n6\r\n8\r\n10', ' The output of maximum no: 10', 'Write a C Program to find the maximum number in array using pointer.', 'Coding Contest', 'A69', 'dbkcse', 'C'),
(272, '8 ,9, 6, 4, 9 ,5 ,3', '9,1,4', 'The first line contains the numbers of list A separated by a space and Print the duplicate numbers in a single line separated by a space', '7, 9, 6, 5', 'good, 0', '0 ,1, 1, 0 ,9, 8 ', '0,1,,0,1,2,3', '.Given an array A of numbers you have to print the duplicate number in the given array element along with its position . Suppose No duplicate element means to print         â€œ Goodâ€ ', 'string ', 'C110', 'RSTCSE1', 'python32'),
(273, '8\r\n', '1\r\n3\r\n7', 'Enter a number', '10', '1\r\n5\r\n11\r\n', '12', '1\r\n3\r\n9\r\n', 'Read a number N and find the Nth element in Fibonacci series and display the odd factors of that element', 'Arithmetic operation', 'C28', 'ARSCSE', 'python32'),
(274, 'hi everyone', 'hi everyone', 'Enter the string', 'welcome', 'welcome', 'Hello', 'Hello', 'Write a C Program  to show input and output of a string.', 'Coding Contest', 'A70', 'dbkcse', 'C'),
(275, 'MARS ', '3,0,2,3', 'The first line of the input contains a statement and Print the number of lower case letters in the given sentence', 'Welcome ', '2,0,2,3,4,5', 'Python ', '4,0,1,2,3,5', 'Write a program that accepts a sentence and calculate the number of non vowels letters in the given sentence and print its position', 'string ', 'C112', 'RSTCSE1', 'python32'),
(276, '6', '2\r\n4', 'Enter a number', '9', '2', '12', '2\r\n4\r\n6\r\n8\r\n12\r\n16\r\n18\r\n24\r\n36\r\n48\r\n72\r\n', 'Read a number N and find the Nth element in Fibonacci series and display the even factors of that element', 'Arithmetic operation', 'C29', 'ARSCSE', 'python32'),
(277, '5', 'The output of square is : 25', 'Enter the values', '4', 'The output of square is : 16', '3', 'The output of square is : 9', 'Write a C Program  to find square of a number using functions.', 'Coding Contest', 'A71', 'dbkcse', 'C'),
(278, '60\r\n60\r\n60', 'YES', 'Enter three angles (sum should be equal to 180)\r\n', '90\r\n90\r\n0\r\n', 'NO', '45\r\n45\r\n90\r\n', 'YES', 'To form a triangle, we need three angles x, y and z. The area of the triangle will be positive where x+y+z=180 and xâ‰ 0,yâ‰ 0,zâ‰ 0 and sum of any two angles is greater than or equal to the third one. Read the angle values print YES if the area will be positive, print NO if the area will be negative.', 'Arithmetic operation', 'C30', 'ARSCSE', 'python32'),
(279, '2\r\n3\r\n10\r\n', '4', 'Enter three numbers (positive only) one per line\r\n', '3\r\n4\r\n11\r\n', '3', '2\r\n8\r\n10\r\n', '2', 'Read three positive integers a, b and d. You are currently at origin (0, 0) on infinite 2D coordinate plane. You are allowed to jump on any point in the 2D plane at distance either equal to a or b from your current position. The task is to find the minimum number of jump required to reach (d, 0) from (0, 0). ', 'Arithmetic operation', 'C31', 'ARSCSE', 'python32'),
(280, '4\r\n5', 'After swapping the value for a & b : \r\n5 \r\n4', 'Enter the values a,b', '2\r\n3\r\n', 'After swapping the value for a & b : \r\n3\r\n2', '2\r\n1', 'After swapping the value for a & b : \r\n1\r\n2', 'Write a C Program to swap two numbers   using functions.', 'Coding Contest', 'A72', 'dbkcse', 'C'),
(281, 'hello how are you?', 'Hello How Are You?', 'Enter a string with more than one words separated by a space', 'welcome to the great event ', 'Welcome To The Great Event', 'your life is in your hand', 'Your Life Is In Your Hand', 'Read a string with more than one words separated by a space. Print the string with each words first letter capitalized.', 'String', 'C32', 'ARSCSE', 'python32'),
(282, 'hello how are you?', 'hll hw r y?', 'Enter a string with more than one words separated by a space', 'welcome to the great event ', 'wlcm t th grt vnt', 'your life is in your hand', 'yr lf s n yr hnd', 'Read a string with more than one words separated by a space. Print the string without the vowels. ', 'String', 'C33', 'ARSCSE', 'python32'),
(283, '5\r\n10', 'value of a=5 & value of b=10 before swap \r\n value of a=5 & b=10 after swap\r\n\r\n', 'Enter the value of a,b', '6\r\n5', 'value of a=6 & value of b=5 before swap \r\n value of a=6 & b=5 after swap\r\n', '1\r\n2', 'value of a=1 & value of b=2 before swap \r\n value of a=1 & b=2 after swap\r\n', 'Write a C Program   to show call by value. ', 'Coding Contest', 'A73', 'dbkcse', 'C'),
(284, 'hello how are you?', 'helo w ar yu?', 'Enter a string with more than one words separated by a space', 'welcome to the great event ', 'welcom t h gra vn ', 'your life is in your hand', 'your life s n hand', 'Read a string with more than one words separated by a space. Remove the duplicate occurance of the characters and print the remaining string.', 'String', 'C34', 'ARSCSE', 'python32'),
(285, '[ 4 2 6\r\n-1-45\r\n3  7 2 ]\r\n', '108', 'For any integers with m rows and n columns ', '[2 -3 5\r\n-3 6 2 \r\n1-2 5] \r\n', '17', '[ 3  4 1\r\n  2 5 -2  \r\n-1 6 -3]\r\n', '40', '.Find the determinant for the given m X n matrices ', 'array ', 'C113', 'RSTCSE1', 'python32'),
(286, '124', 'YES', 'Enter a number with more than one digit', '128', 'YES', '19', 'NO', 'Read a number. Check whether the all digits of the number can divide the number individually. If possible print YES else print NO', 'Arithmetic operation', 'C35', 'ARSCSE', 'python32'),
(287, '30\r\n3\r\n', '990', 'Enter first number\r\nEnter second number ', '40\r\n3\r\n', '960', '6543\r\n7\r\n', '9997704', 'Read the integers X and K. The task is to find highest K-digit number divisible by X and print it.', 'Arithmetic operation', 'C37', 'ARSCSE', 'python32'),
(288, '83\r\n5\r\n', '10043', 'Enter a number\r\nEnter another number', '40\r\n3\r\n', '120', '6543\r\n7\r\n', '1001079', 'Read the integers X and K. The task is to find smallest K-digit number divisible by X and print it.', 'Arithmetic operation', 'C36', 'ARSCSE', 'python32'),
(289, '5\r\n10', 'value of a=5 & value of b=10 before swap \r\n  value of a=5 & b=10 after swap\r\n', 'Enter the values a,b', '6\r\n5', 'value of a=6 & value of b=5 before swap \r\n value of a=6 & b=5 after swap\r\n', '1\r\n2', 'value of a=1 & value of b=2 before swap ', 'Write a C Program  to show call by reference.', 'Coding Contest', 'A74', 'dbkcse', 'C'),
(290, '5\r\n100\r\n', '8', 'Enter two numbers n, m where m>n', '8\r\n65\r\n', '6', '10\r\n23500\r\n', '150', 'Given a range [n,m], find the number of elements that have odd number of factors in the given range (n and m inclusive).', 'Arithmetic operation', 'C38', 'ARSCSE', 'python32'),
(291, '7', '3', 'Enter a number', '100', '13', '1000', '44', 'We have N coins which need to arrange in form of a triangle, i.e. first row will have 1 coin, second row will have 2 coins and so on, we need to tell maximum height which we can achieve by using these N coins.', 'Arithmetic operation', 'C39', 'ARSCSE', 'python32'),
(292, '4\r\n5\r\n6\r\n1\r\n', 'The output of  maximum no is 6', 'Enter the values', '2\r\n3\r\n4\r\n1', 'The output of  maximum no is 4', '2\r\n4\r\n6\r\n8', 'The output of  maximum no is 8', 'Write a C Program to find largest of two numbers using functions.', 'Coding Contest', 'A75', 'dbkcse', 'C'),
(293, '4\r\n8', 'YES', 'Enter two numbers one by one', '101\r\n110\r\n', 'NO', '170\r\n240\r\n', 'YES', 'Read two numbers. Convert them into binary print YES if the binary representation of both are anagram. Else, print NO. (Anagram- two numbers with same set of digits)', 'Arithmetic operation', 'C40', 'ARSCSE', 'python32'),
(294, '10', '2\r\n5\r\n', 'Enter a number', '55', '2\r\n3\r\n5\r\n11\r\n', '10', '2\r\n5', 'Read a number and find the prime factors of the number.', 'Arithmetic operation', 'C41', 'ARSCSE', 'python32'),
(295, 'abc', 'The output is not a palindrome string', 'Enter the string', 'appa', 'The output is a palindrome string', 'acd', 'The output is not a palindrome string', 'Write a C Program to find whether a string is palindrome or not.', 'Coding Contest', 'A76', 'dbkcse', 'C'),
(296, 'This is 20twenty :-1)', 'T\r\nh\r\ni\r\ns\r\ni\r\ns\r\nt\r\nw\r\ne\r\nn\r\nt\r\ny\r\n2\r\n0\r\n1\r\n:\r\n)\r\n', 'Read a string with alpha-numerical, symbols', 'He1lo 1,two.3', 'H\r\ne\r\nl\r\no\r\nt\r\nw\r\no\r\n1\r\n1\r\n3\r\n,\r\n.\r\n', '10thous@&', 't\r\nh\r\no\r\nu\r\ns\r\n1\r\n0\r\n@\r\n&\r\n', 'Read a string with alpha-numerical, symbols. Print the set of alphabets, set of numbers and set of symbols one by one', 'String', 'C42', 'ARSCSE', 'python32'),
(297, '200', 'Two Zero Zero ', 'Read any n value and  convert the number in character in title case ', '1', '11', 'one one ', '11', 'Accept any number from the user and convert the number with  characters in Title case ', 'string ', 'C114', 'RSTCSE1', 'python32'),
(298, '6\r\n5\r\n-1\r\n-1\r\n1\r\n2\r\n3\r\n7\r\n', '5 6 0 1 2 3', 'Enter the size of array\r\nEnter array elements\r\nEnter a number', '4\r\n2\r\n4\r\n-1\r\n6\r\n2\r\n', '2 4 1 6', '5\r\n1\r\n1\r\n-1\r\n1\r\n-1\r\n4\r\n', '1 1 2 1 2', 'Given an array of N elements and an integer M. Now, the array is modified by replacing some of the array elements with -1. First get N value then the elements and finally M. The task is to print the original array. The elements in the orginal array are related as, for every index i, a[i] = (a[i-1]+1)% M. It is guaranteed that there is one non zero value in the array', 'Array / List', 'C43', 'ARSCSE', 'python32'),
(299, '4\r\n1\r\n2\r\n3\r\n4\r\n', 'YES', 'Enter size of the array\r\nEnter the array elements', '3\r\n1\r\n5\r\n3\r\n', 'NO', '7\r\n100\r\n299\r\n345\r\n462\r\n562\r\n673\r\n788\r\n', 'YES', 'Get the size of an array and the elements of the array. Check whether it is monotonically increasing. If so print YES else print NO', 'Array / List', 'C44', 'ARSCSE', 'python32'),
(301, '4\r\n1\r\n2\r\n3\r\n4\r\n', 'NO', 'Enter the size of array\r\nEnter the array elements', '3\r\n5\r\n4\r\n3\r\n', 'YES', '7\r\n100\r\n299\r\n345\r\n462\r\n562\r\n673\r\n788\r\n', 'NO', 'Get the size of an array and the elements of the array. Check whether it is monotonically decreasing. If so print YES else print NO', 'Array / List', 'C46', 'ARSCSE', 'python32'),
(302, '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n', '34\r\n', 'Enter 9 numbers one by one\r\n', '1\r\n1\r\n1\r\n2\r\n2\r\n2\r\n3\r\n3\r\n3', '14\r\n', '5\r\n5\r\n5\r\n10\r\n10\r\n10\r\n5\r\n5\r\n5\r\n', '30', 'Read a 3 x 3 matrix and display the sum of elements in the left lower triangle matrix', 'Array / List', 'C45', 'ARSCSE', 'python32'),
(303, '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9', '22', 'Enter nine numbers one by one', '1\r\n1\r\n1\r\n2\r\n2\r\n2\r\n3\r\n3\r\n3\r\n', '10', '5\r\n5\r\n5\r\n10\r\n10\r\n10\r\n5\r\n5\r\n5\r\n', '40', 'Read a 3 x 3 matrix and display the sum of elements in the left upper triangle matrix', 'Array / List', 'C47', 'ARSCSE', 'python32'),
(304, '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n', '38', 'Enter 9 numbers one by one', '1\r\n1\r\n1\r\n2\r\n2\r\n2\r\n3\r\n3\r\n3\r\n', '14', '5\r\n5\r\n5\r\n10\r\n10\r\n10\r\n5\r\n5\r\n5\r\n', '40', 'Read a 3 x 3 matrix and display the sum of elements in the right lower triangle matrix', 'Array / List', 'C48', 'ARSCSE', 'python32'),
(305, '3\r\n7\r\n', 'YES', 'Enter two numbers one by one', '109\r\n113\r\n', 'YES', '51\r\n55\r\n', 'NO', 'Two prime numbers a, b are called as cousin prime numbers if b=a+4. Read two numbers check whether they are cousin primes. If so print YES else print NO', 'Arithmetic operation', 'C49', 'ARSCSE', 'python32'),
(306, '17\r\n19\r\n', 'YES', 'Enter two numbers one by one', '149\r\n151\r\n', 'YES', '31\r\n33\r\n', 'NO', 'Two prime numbers a, b are called as twin prime numbers if b=a+2. Read two numbers check whether they are cousin primes. If so print YES else print NO', 'Arithmetic operation', 'C50', 'ARSCSE', 'python32'),
(307, '43\r\n 23\r\n57\r\n 47\r\n\r\n', 'Elements of array in descending order \r\n57\r\n47\r\n43\r\n23', 'Enter the number of elements in the array', '35\r\n25\r\n76\r\n22\r\n', 'Elements of array in descending order are:\r\n76\r\n35\r\n25\r\n22\r\n', '12\r\n18\r\n36\r\n25\r\n', 'Elements of array in descending order are:\r\n36\r\n25\r\n18\r\n12\r\n', 'Write a program for sorting the elements of an array in descending order.', 'Coding Contest', 'A77', 'DBKCSE', 'C'),
(308, '32\r\n43\r\n23\r\n57\r\n47', 'The largest number in the array is : 57', 'Enter the number of elements in the array', '32\r\n45\r\n25\r\n48\r\n52\r\n', 'The largest number in the array is : 52', '45\r\n26\r\n23\r\n32\r\n40\r\n', 'The largest number in the array is:45\r\n\r\n', 'Write a program for finding the largest number in an array', 'Coding Contest', 'A78', 'DBKCSE', 'C'),
(309, 'Ananda\r\nmurugan \r\nrenuka devi \r\nshri \r\n', 'alphabetical list\r\nAnanda\r\ndevi \r\nmurugan\r\n renuka \r\nshri\r\n\r\n', 'Enter the names', 'Anand\r\numa\r\nsanthosh\r\nkopika\r\ndinesh', 'alphabetical list\r\nAnand\r\ndinesh\r\nkopika\r\nsanthosh\r\numa', 'selva\r\nraji\r\numa\r\nbala\r\nanand\r\n', 'alphabetical list\r\nanand\r\nbala\r\nraji\r\nselva\r\numa', 'Write a program that would sort a list of names in alphabetical order.', 'Coding Contest', 'A79', 'DBKCSE', 'C'),
(310, '5\r\n4', 'Addition: 9\r\nSubtraction:1\r\n', 'Enter the value of X,Y', '7\r\n3', 'Addition: 10\r\nSubtraction:4\r\n', '5\r\n3', 'Addition: 8\r\nSubtraction:2\r\n', 'Write a  C program to return more than one value from user defined function.', 'Coding Contest', 'A80', 'DBKCSE', 'C'),
(311, '2', 'Square: 4 \r\nCube:8', 'Enter the value', '3', 'Square: 9\r\n Cube:27', '4', 'Square: 16\r\n Cube:64', 'Write a program to calculate square and cube of an entered number. Use function as an argument.', 'Coding Contest', 'A81', 'DBKCSE', 'C'),
(312, '5', ' Number is odd', 'Enter the value', '6', ' Number is even', '7', ' Number is odd', 'Write a C program check  a number is odd or even to use mod(%) with function.', 'Coding Contest', 'A82', 'dbkcse', 'C'),
(313, '5\r\n3', 'Square of sum=64', 'Enter the value', '2\r\n2', 'Square of sum=16', '3\r\n2', 'Square of sum=25', ' Write a program to evaluate the equation s=sqr(a()+b()) using function.', 'Coding Contest', 'A83', 'dbkcse', 'C'),
(314, '5', 'The number is odd', 'Enter the value', '2', 'The number is even', '7', 'The number is odd', 'Write a C program to check whether odd or even call user-defined function through if statement.', 'Coding Contest', 'A84', 'dbkcse', 'C'),
(315, 'd\r\n5\r\n', 'Double=10', 'Enter your choice square(s), cube(c), double (d)\r\nEnter the values', 's\r\n2', 'Square=4', 'c\r\n3\r\n', 'cube=27', 'Write a program to call user-defined function through switch() statement.', 'Coding Contest', 'A85', 'dbkcse', 'C'),
(316, 'input number is : 123456', 'Output numbers are: 1\r\n2\r\n3\r\n4\r\n5\r\n6', 'Enter an integer value', '6789', '6\r\n7\r\n8\r\n9\r\n', '3692', '3\r\n6\r\n9\r\n4\r\n', 'Given a number N, the task is to write a C program to print all digits of the number N in their ', 'coding contest', 'A26', 'JJRCSE', 'C'),
(317, 'Input: arr[] = {2, -1, 5, 6, 0, -3}', 'Output: 2 -1 5 6 0 -3', 'Enter th array elements', 'arr[] = {4, 0, -2, -9, -7, 1}', '4 0 -2 -9 -7 1 ', 'arr[] = {5, 1, -2, -7, -9, 6}', '5, 1, -2, -7, -9, 6', 'Given an integer array of size N, the task is to traverse and print the elements in the array.', 'coding contest', 'A27', 'JJRCSE', 'C'),
(318, 'Input: arr[] = {0, 23, 14, 12, 9}', 'Output: {0, 9, 12, 14, 23}', 'Enter the size of the array and the elements of the array.', 'arr[] = {7, 0, 2}', '0,2,7', 'arr[] = {7, 0, 2, 1, 9, 4}', '0, 1, 2, 4, 7, 9', 'Given an array arr[] of size N, the task is to sort this array in ascending order in C.', 'coding contest', 'A27', 'JJRCSE', 'C'),
(319, '1', 'monday', '	enter a number between 1 and 7', '3', 'wednessday', '5', 'friday', 'write a C Program to Print Day Name of Week using Else If statement, and Switch Condition.', 'coding contest', 'A27', 'JJRCSE', 'C'),
(320, 'Input  : arr1[] = {1, 2, 5, 4, 0};\r\n         arr2[] = {2, 4, 5, 0, 1}; ', 'Output : Yes', 'enter the elements for two array', 'arr1[] = {1, 2, 5, 4, 0, 2, 1};\r\narr2[] = {2, 4, 5, 0, 1, 1, 2};', 'yes', 'arr1[] = {1, 7, 1};\r\narr2[] = {7, 7, 1};', 'no', 'write a c program to check whether the two array are same.', 'coding contest', 'A28', 'JJRCSE', 'C'),
(321, 'Input: arr[] = {5, 10, 12, 13, 15, 18}, K = 30', 'Output: {12, 18}, {5, 12, 13}, {5, 10, 15}', 'enter the elements of the array. \r\nenter the value of the of target.', 'arr[] = {1, 2, 3, 4}, K = 5', '{2, 3}, {1, 4}', 'arr[] = {5, 10, 12, 13, 15, 18}, K = 30', '{12, 18}, {5, 12, 13}, {5, 10, 15}', 'Given an array arr[] of integers and an integer K, the task is to print all subsets of the given array with the sum equal to the given target K.', 'coding contest', 'A29', 'JJRCSE', 'C'),
(322, 'enter the string = \"a_simple_divide_string_quest\"\r\nenter the no of parts = 4', 'a_simpl\r\ne_divid\r\ne_strin\r\ng_quest', '1) Get the size of the string using string function strlen() (present in string.h)\r\n2) Get size of a part. ', 'b_simplf_dividf_strinh_quest', 'b_simpl\r\nf_divid\r\nf_strin\r\nh_quest', 'a_simple_divide_string_quest', 'a_simpl\r\ne_divid\r\ne_strin\r\ng_quest', 'Write a program to print N equal parts of a given string.', 'coding contest', 'A30', 'JJRCSE', 'C'),
(323, '3', 'three', 'Enter a Number N less than 8', '2', 'two', '1', 'one', 'Write a program to print the spelling of number for the given input upto 8 and if the given input is higher than 8 it should print the sentence \"Value is Greater than 8\"', 'Coding Contest', 'A201', 'kmscse', 'C'),
(324, '4\r\n1 2 3 4', '10', 'Enter the size of array\r\nEnter the array values', '3\r\n5 4 6', '15', '2 \r\n10 20\r\n', '30', 'You have to create an array of size n dynamically by malloc function, input the elements of the array, sum them and print the sum of the elements in a new line and atlast free the array.', 'Coding Contest', 'A202', 'kmscse', 'C'),
(325, '4', '1\r\n22\r\n333\r\n4444\r\n', 'Enter n value', '2', '1\r\n22\r\n', '3', '1\r\n22\r\n333', 'Design a C program to make such a pattern like right angle triangle with a number which will repeat a number in a row.', 'Coding Contest', 'A203', 'kmscse', 'C'),
(326, '4\r\n', '1 4 9 16\r\n30', 'Enter the value of N', '3', '1 4 9\r\n14', '2', '1 4\r\n5', 'Design a program in C to collect N value from user. And find the n terms of square natural number. Finally print their sum.', 'Coding Contest', 'A209', 'kmscse', 'C'),
(327, '28', 'perfect', 'Enter N value to check', '6', 'perfect', '496', 'perfect', 'A perfect number is a positive number, for which the sum of its factors gives the number itself. Ex:  The factors of number 6 are 1,2,3. The sum of the factors 1+2+3=6 (the actual number). Hence 6 is a perfect number.  Design a C program to check the number is perfect or not.', 'Coding Contest', 'A210', 'kmscse', 'C'),
(328, '153', 'armstrong', 'Enter the number to check', '370', 'armstrong', '371', 'armstrong', 'An n-digit number which is equal to the sum of nth powers of its digits is called n-narcissistic number. The number is also called Armstrong number. There are only very few numbers that have this property. Ex: 153=1*1*1+5*5*5+3*3*3=153 Design a C program to check the number is Armstrong or not.', 'Coding Contest', 'A211', 'kmscse', 'C'),
(329, '12', 'adam', 'Enter the number to check', '102', 'adam', '103', 'adam', 'A number is said to be Adam, if the number when squared and reversed and followed by a square root and reverse, gives back the same number.  Example:  Square of 12 = 144 Reverse of 12 = 21 Square of 21 = 441 Now Square of 12 and square of reverse of 12 are reverse of each other. Therefore 12 is Adam number.', 'Coding Contest', 'A212', 'kmscse', 'C'),
(330, 'rat\r\ntar', 'anagram', 'Enter two strings', 'listen silent', 'anagram', 'raj jar', 'anagram', 'Two strings must be defined. Find out the length of each string. The strings are not anagrams if the length of one string is not equal to the length of other string. If the lengths of the two strings are equal, the characters in the string must be converted to lower case letters. The next step is to sort the characters in the strings. Finally, the content is checked for equality. This is called Anagram.', 'Coding Contest', 'A213', 'kmscse', 'C'),
(331, 'Pack my box with five dozen liquor jugs', 'pangram', 'Enter the string', 'The quick brown fox jumps over the lazy dog', 'pangram', 'The quick brown fox jumps over the lazy dog', 'pangram', 'A String is said to be panagram, if it contains all the alphabets from a-z. Create a C program to check whether the given string is panagram or not.  Example: The quick brown fox jumps over the lazy dog Input: The quick brown fox jumps over the lazy dog Output: Is Pangram', 'Coding Contest', 'A214', 'kmscse', 'C'),
(332, '3', '    1\r\n  121\r\n 12321\r\n', 'Enter n value', '2', '    1\r\n  121', '4', '     1\r\n   121\r\n  12321\r\n1234321\r\n', 'Create a program in C to display the such a pattern for n number of rows using a number which will start with the number 1 and the first and a last number of each row will be 1.', 'Coding Contest', 'A216', 'kmscse', 'C'),
(333, '8', '16 24 32 40 48\r\n160', 'Enter n value between 1 to 10', '7', '14 21 28 35 42 49\r\n189', '9', '18 27 36 45\r\n217', 'Create a program in C to satisfy the following constraints. (i) Choose a number N in the range 1 to 10. (ii) Identify all the numbers in the range 10 to 50, which are divisible by N (iii)Print the sum of final values. Ex:', 'Coding Contest', 'A217', 'kmscse', 'C'),
(334, '2 2\r\n1 2 3\r\n4 5 6', '6 5 4 3 2 1', 'Enter size of array A and B', '2 2\r\n7 8 \r\n9 10', '10 9 8 7', '1 1\r\n9 \r\n10', '10 9', 'Create a program in C to satisfy the following conditions. (i) Create two arrays of same size n such as A and B (ii) Merge the contents of two array(A and B) and store it in new array (C) (iii)Display the final elements of array C in descending order.', 'Coding Contest', 'A219', 'kmscse', 'C'),
(335, '3\r\n1 2 1\r\n1 2 3', '1 2 1 1 2 3\r\n1 3times\r\n2 2times\r\n3 1times', 'Enter the array size of A and B\r\nEnter the array values of A and B', '2\r\n1 2\r\n1 2\r\n', '1 2 1 2\r\n1 2times\r\n2 2times', '3\r\n1 2 3\r\n1 2 3', '1 2 3 1 2 3\r\n1 2times\r\n2 2times\r\n3 2times', 'Create a program in C to satisfy the following conditions. (i) Create two arrays of same size n such as A and B (ii) Merge the contents of two array(A and B) and store it in new array (C) (iii) Count the frequency of each element in C array.', 'Coding Contest', 'A220', 'kmscse', 'C'),
(336, '4\r\n1 2 3 4', '1 3\r\n2 4', 'Enter size of array n\r\nEnter array A values', '6\r\n1 2 3 4 5 6', '1 3 5\r\n2 4 6', '5\r\n10 11 12 13 14', '11 13\r\n10 12 14', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User (iii) Separate the odd integers and store it in Array B (iv) Separate the even integers and store it in Array C', 'Coding Contest', 'A221', 'kmscse', 'C'),
(337, '6', 'True', 'An integer n', '12', 'False', '28', 'True', '1.	A positive integer n is said to be perfect if the sum of the factors of n, other than n itself, add up to n. For instance 6 is perfect since the factors of 6 are {1,2,3,6} and 1+2+3=6. Likewise, 28 is perfect because the factors of 28 are {1,2,4,7,14,28} and 1+2+4+7+14=28.  Write a Python function perfect(n) that takes a positive integer argument and returns True if the integer is perfect, and False otherwise.', 'Functions', 'C51', 'RRSCSE', 'python32'),
(338, '[1,4,9]', '14', 'A list l', '[10,11,12,15]', '0', '[16,20,25,30,625]', '666', 'Write a function sumsquares(l) that takes as input a list of integers and retuns the sum of all the perfect squares in l.', 'Functions', 'C53', 'RRSCSE', 'python32'),
(339, 'G', 'ASCII value of G = 71', 'Enter a character', 'A', 'ASCII value of A=65', 'C', 'ASCII value of C=67', 'Write a C Program to Find ASCII Value of a Character', 'Coding Contest', 'A86', 'DBKCSE', 'C'),
(340, 'a', 'ASCII value of a = 97\r\n\r\n', 'Enter a character', 'z', 'ASCII value of z=122', 'c', 'ASCII value of c=99', 'Write a C Program to Find ASCII Value of a Character.', 'Coding Contest', 'A87', 'DBKCSE', 'C'),
(341, '2.4\r\n1.12\r\n', 'Product = 2.69', 'Enter two numbers', '1.2\r\n2.5', 'Product = 3.00', '2.6\r\n3.6', 'Product = 9.36', 'Write a C program  to Multiply Two Floating-Point Numbers', 'Coding Contest', 'A88', 'DBKCSE', 'C'),
(342, '25\r\n4', 'Quotient = 6\r\nRemainder = 1 \r\n', 'Enter dividend\r\nEnter divisor\r\n', '17\r\n4', 'Quotient = 4\r\nRemainder = 1 ', '9\r\n2', 'Quotient = 4\r\nRemainder = 1\r\n', 'Write a C Program to Compute Quotient and Remainder', 'Coding Contest', 'A89', 'DBKCSE', 'C'),
(343, '45.3\r\n 67.5\r\n-45.6\r\n20.34\r\n33 \r\n45.6\r\n', 'Average = 27.69', 'Enter the numbers of values', '1.0\r\n2.0\r\n3.0\r\n4.0\r\n5.0\r\n6.0', 'Average = 3.5', '1.5\r\n2.5\r\n3.5\r\n4.5\r\n5.5\r\n6.5\r\n', '\r\nAverage = 4.0', 'Write a C Program Store Numbers and Calculate Average Using Arrays', 'Coding Contest', 'A90', 'DBKCSE', 'C'),
(344, 'G', 'G is a consonant.', 'Enter an alphabet', 'A', 'A is a vowels', 'C', 'C is a consonant.', 'Write a C Program to Check Vowel or consonant', 'Coding Contest', 'A91', 'DBKCSE', 'C'),
(345, '12.3', '12.3 is positive Number', 'Enter the values', '-12.5', '-12.5  is Negative  Number', '13', '13 is positive number.', 'Write a C Program to Check Whether a Number is Positive or Negative', 'Coding Contest', 'A92', 'DBKCSE', 'C'),
(346, '*', '* is not an alphabet', 'Enter a character', 'A', 'A is  an alphabet', 'S', 'S is  an alphabet\r\n\r\n', 'Write a C Program to Check Whether a Character is an Alphabet or not', 'Coding Contest', 'A93', 'DBKCSE', 'C'),
(347, '3\r\n4', 'Answer = 81', 'Enter a base number\r\nEnter an exponent\r\n', '2\r\n3', 'Answer = 8', '3\r\n2', 'Answer = 9', 'write a C program  to Calculate the Power of a Number', 'Coding Contest', 'A94', 'DBKCSE', 'C'),
(348, '4\r\n1 2 3 5\r\n4', '1 2 3 4 5', 'Enter size of array\r\nEnter the array elements\r\nEnter the new element n ', '3 \r\n10 20 30\r\n15', '10 15 20 30', '3\r\n4 5 9\r\n8\r\n', '4 5 8 9', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User in sorted order. (iii) Input the new integer n from user and add it to array A (iv)Display the final array list New_A in sorted order', 'Coding Contest', 'A222', 'kmscse', 'C'),
(349, '3\r\n5 4 1\r\n6', '1 4 5 6', 'Enter size of array\r\nEnter array elements in unsorted order\r\nEnter new element to be added', '4\r\n2 1 3 5\r\n4', '1 2 3 4 5', '3 \r\n6 8 1\r\n7', '1 6 7 8', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User in unsorted order. (iii) Input the new integer n from user and add it to array A (iv)Display the final array list New_A in sorted order', 'Coding Contest', 'A223', 'kmscse', 'C'),
(350, '4\r\n5 1 2 3\r\n', '3', 'Enter size of array\r\nEnter the array elements in unsorted order', '5\r\n1 2 3 4 5', '4', '3\r\n4 5 6 ', '5', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User in unsorted order. (iii) Display the second largest (S_large) element in the array A', 'Coding Contest', 'A224', 'kmscse', 'C'),
(351, '4\r\n5 1 2 3', '2', 'Enter the size of array\r\nEnter the array values', '5\r\n10 20 40 50 30 ', '20', '4 \r\n5 7 6 1\r\n', '5', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User in unsorted order. (iii) Display the second smallest (S_small) element in the array A', 'Coding Contest', 'A225', 'kmscse', 'C'),
(352, 'l', 'a b c d e f g h i j k l m n o p q r s t u v w x y z\r\n\r\n', 'Enter u to display uppercase alphabets. \r\nEnter l to display lowercase alphabets. \r\n', 'u', 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z', 'e', 'Error! You entered an invalid character.', 'write a C Program to Display Characters from A to Z Using Loop', 'Coding Contest', 'A95', 'DBKCSE', 'C'),
(353, '4\r\n1 1 2 1\r\n', '1', 'Enter the size of array\r\nEnter the elements of array', '5\r\n2 1 2 2 2\r\n', '2', '6\r\n4 4 4 4 5 6\r\n', '4', 'Create a program in C to find the majority element of an array.  A majority element in an array A[] of size n is an element that appears more than n/2 times (and hence there is at most one such element).', 'Coding Contest', 'A226', 'kmscse', 'C'),
(354, '7\r\n1 1 2 3 3 4 4', '2', 'Enter size of array\r\nEnter array elements', '5\r\n1 1 2 2 3\r\n', '3', '3 \r\n1 1 2', '2', 'Create a program in C to find the number occurring odd number of times in an array.  Note: All numbers occur even number of times except one number which occurs odd number of times.', 'Coding Contest', 'A227', 'kmscse', 'C'),
(355, '4\r\n1 2 3 3', '3', 'Enter the size of array\r\nEnter the array elements', '6\r\n1 2 3 4 5 5', '5', '6\r\n1 1 2 3 4 5', '1', 'Create a program in C to find the number occurring even number of times in an array.  Note: All numbers occur odd number of times except one number which occurs even number of times.', 'Coding Contest', 'A228', 'kmscse', 'C');
INSERT INTO `question` (`id`, `input`, `output`, `format`, `t1in`, `t1out`, `t2in`, `t2out`, `ques`, `title`, `Number`, `author`, `language`) VALUES
(356, '6\r\n5 6 4 7 1 2\r\n4', '4 7 1 2 5 6', 'Enter the size of array A\r\nEnter the elements of array\r\nEnter the rotator value', '5\r\n7 5 1 3 6\r\n3', '3 6 7 5 1', '4\r\n1 4 2 6\r\n6\r\n', '6 1 4 2', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User in unsorted order. (iii)Choose any value from list as rotator_value (iv) Rotate the array A_new depends on rotator_value', 'Coding Contest', 'A229', 'kmscse', 'C'),
(357, '110110111', '110110111 in binary = 439', 'Enter a binary number', '1001', '1001 in binary = 9', '1111', '1111 in binary=15', 'Write a C Program  to Convert Binary Number to Decimal and vice-versa', 'Coding Contest', 'A96', 'DBKCSE', 'C'),
(358, '10\r\n38 44 63 -51 -35 19 84 -69 4 -46', '44 -46\r\n', 'Enter the size of array\r\nEnter the array values\r\n', '5\r\n3 4 8 9 -2', '3 -2', '6\r\n8 9 6 4 7 -3', '4 -3', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements from User (iii) Choose the pair of elements whose sum is closest to zero', 'Coding Contest', 'A230', 'kmscse', 'C'),
(359, '5\r\n10 20 -30 6 3 ', '3\r\n', 'Enter the size of array\r\nEnter the elements of array with both positive and negative', '4\r\n1 2 -5 -8\r\n', '1\r\n', '6\r\n10 20 5 6 -8 -3', '5', 'Create a program in C to satisfy the following conditions. (i) Create an array A of Size N (ii) Input the N elements (both positive and negative) from User (iii) Print the smallest positive number (Small_pos)in the list', 'Coding Contest', 'A231', 'kmscse', 'C'),
(360, 'welcome', 'e\r\n2', 'Enter the string', 'program', 'r\r\n2', 'sensor', 's\r\n2', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S) from user of length atleast 6 (ii) Print the maximum(MAX) occurring character in the given string (iii) Print number of times(t), that character repeated in given string', 'Coding Contest', 'A233', 'kmscse', 'C'),
(361, 'welcome', 'ceelmow', 'Enter the string', 'coding', 'cdgino', 'eeffdd', 'ddeeff', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S) from user of length atleast 6 (ii) Sort and print the string(S1) in ascending order', 'Coding Contest', 'A234', 'kmscse', 'C'),
(362, 'welcome', 'womleec', 'Enter the input string', 'aassdd', 'ssddaa', 'aacczz', 'zzccaa', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S) from user of length atleast 6 (ii) Sort and print the string(S1) in descending order', 'Coding Contest', 'A235', 'kmscse', 'C'),
(363, 'welcome', 'womleec', 'Enter the input string', 'aassdd', 'ssddaa', 'aacczz', 'zzccaa', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S) from user of length atleast 6 (ii) Sort and print the string(S1) in descending order', 'Coding Contest', 'A235', 'kmscse', 'C'),
(364, 'madam', 'equal', 'Enter the string to check', 'aabbaa', 'equal', 'wwssww', 'equal', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S1) from user of length at least 6 (ii) Reverse the value of S1 and store it in S2 (iii) Check for equality of S1 and S2', 'Coding Contest', 'A236', 'kmscse', 'C'),
(366, 'RaJa', 'rAjA', 'Enter the input string', 'AaaaaS', 'aAAAAs', 'asdfg', 'ASDFG', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S1) from user  (ii) Print the string S1 by replacing lowercase with uppercase and viceversa in variable name S2', 'Coding Contest', 'A237', 'kmscse', 'C'),
(367, 'welcome to programming contest', 'to\r\nprogramming', 'Enter the string', 'this is sample code', 'is\r\nthis', 'aa ssss ddd fffff', 'aa\r\nfffff', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S1) from user  (ii) Print the smallest (small) and largest (large) word in the given string.', 'Coding Contest', 'A238', 'kmscse', 'C'),
(368, 'welcome', 'wElcOmE', 'Enter the string', 'asdfio', 'AsdfIO', 'qwert', 'qwErt', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S1) from user  (ii) Identify the vowels in given string and convert into uppercase (Ucase)', 'Coding Contest', 'A239', 'kmscse', 'C'),
(369, 'welcome', 'WeLCoMe', 'Enter the input string', 'asdfg', 'aSDFG', 'qwerty', 'QWeRTY', 'Create a program in C to satisfy the following conditions. (i) Get the string value (S1) from user  (ii) Identify the consonants in given string and convert into uppercase (Ucase)', 'Coding Contest', 'A240', 'kmscse', 'C'),
(370, '120', 'better', 'Enter the value (alphabet or number or special character)', 'asd\r\n', 'good', 'qwert', 'good', 'Create a program in C to satisfy the following conditions. (i) Get the value (V) from user (ii) If it is alphabet, print â€œgoodâ€ (iii) If it is number, print â€œbetterâ€ (iv) If it is special character â€œbestâ€', 'Coding Contest', 'A241', 'kmscse', 'C'),
(371, '5', 'five', 'Enter the input date in integer (1-10)', '6', 'six', '8', 'eight', 'Create a program in C to satisfy the following conditions. (i) Get the input date (DATE) from user in the form of integer. (1 to 10) (ii) Display the date in the form of alphabets.(Alpha_date)', 'Coding Contest', 'A242', 'kmscse', 'C'),
(372, '6', 'june', 'Enter the month in integer', '7', 'july', '8', 'august', 'Create a program in C to satisfy the following conditions. (i) Get the input Month (MONTH) from user in the form of integer. (1 to 12) (ii) Display the month in the form of alphabets.(Alpha_month)', 'Coding Contest', 'A243', 'kmscse', 'C'),
(373, '1', 'sunday', 'Enter the day of week in number (1 to 7)', '2', 'monday', '3', 'tuesday', 'Create a program in C to satisfy the following conditions. (i) Get the input day (DAY) from user in the form of integer. (1 to 7 (ie) Sunday to Saturday) (ii) Display the day in the form of alphabets.(Alpha_day)', 'Coding Contest', 'A244', 'kmscse', 'C'),
(374, '11', '30', 'Enter the month to check', '1', '31', '12', '31', 'Create a program in C to satisfy the following conditions. (i) Get the input Month (MONTH) from user in the form of integer. (1 to 12) (ii) Display the number of days in the selected month.(DAYS)', 'Coding Contest', 'A245', 'kmscse', 'C'),
(375, '-5 5 6 9 -5 0', '1000 5 6 9 1000 1000', 'Enter the size of array\r\nEnter the elements of array', '5 -2 3 4', '5 1000 3 4', '7 8 -1 0 -1', '7 8 1000 1000 1000', 'Create a C program to get the elements of array A of size N. Print the elements of array A by replacing the negative values and zero values with 1000.', 'Coding Contest', 'A248', 'kmscse', 'C'),
(376, '4\r\n1 0 -8 -9', 'A A -8 -9', 'Enter the size of array\r\nEnter the array elements', '5\r\n1 5 -9 -7 -6', 'A A -9 -7 -6', '3\r\n1 2 3', 'A A A', 'Create a C program to get the elements of array A of size N. Print the elements of array A by replacing the positive values and zero values with \"A\"', 'Coding Contest', 'A250', 'kmscse', 'C'),
(377, 'Enter the number of integers to sort:\r\n6\r\nEnter 6 integers: \r\n12\r\n6\r\n78\r\n9\r\n45\r\n08', 'Sorted list of integers:\r\n6\r\n8\r\n9\r\n12\r\n45\r\n78', 'Enter n numbers integer', 'Enter the number of integers to sort:\r\n3\r\nEnter 6 integers: \r\n0\r\n-1\r\n1', '-1\r\n0\r\n1', 'Enter the number of integers to sort:\r\n3\r\nEnter 6 integers: \r\n-1\r\n-5\r\n10', '-5\r\n-1\r\n10', 'Write a Java Program for bubble Sort Ascending ', 'code competition', 'b57', 'TDRCSE', 'Java'),
(378, 'Enter the number of integers to sort:\r\n6\r\nEnter 6 integers: \r\n89\r\n12\r\n45\r\n9\r\n56\r\n102', 'Sorted list of integers:\r\n102\r\n89\r\n56\r\n45\r\n12\r\n9', 'enter the integer number', 'Enter the number of integers to sort:\r\n3\r\nEnter 3 integers: \r\n-1\r\n0\r\n1', 'Sorted list of integers:\r\n1\r\n0\r\n-1', 'Enter the number of integers to sort:\r\n3\r\nEnter 3 integers: \r\n-1\r\n-5\r\n0', '-5\r\n-1\r\n0', 'Write a Java Program for bubble Sort  Descending Order', 'code competition', 'b58', 'TDRCSE', 'Java'),
(379, 'Enter number of elements:\r\n7\r\nEnter 7 integers\r\n4\r\n5\r\n66\r\n77\r\n8\r\n99\r\n0\r\nEnter the search value:\r\n77', '77 found at location 4.', 'integer', 'Enter number of elements:\r\n5\r\nEnter 5 integers\r\n12\r\n3\r\n77\r\n890\r\n23\r\nEnter the search value:\r\n99', '99 is not found.', 'Enter number of elements:\r\n3\r\nEnter 3 integers\r\n12\r\n3\r\n23\r\nEnter the search value:\r\n23', '23 found at location 3.', 'Write a Java program to perform binary search', 'code competition', 'b60', 'TDRCSE', 'Java'),
(380, 'original array\r\n 20 \r\n5  \r\n10\r\n 9 \r\n21 ', '5\r\n9\r\n10\r\n20\r\n21\r\n', 'integer', 'original array\r\n-1\r\n20\r\n-30\r\n0', '-30\r\n-1\r\n0\r\n20', 'original array\r\n0\r\n1\r\n-3\r\n-4', '-4\r\n-3\r\n0\r\n1', 'Write a Java Program for Selection Sorting', 'code competition', 'b61', 'TDRCSE', 'Java'),
(381, 'Enter Octal value: 142', 'Decimal equivalent of value 142 is: 98', 'integer', 'Enter Octal value: 143\r\n', 'Decimal equivalent of value 143 is: 99', 'Enter Octal value: 157', 'Decimal equivalent of value 157 is: 111', 'Write a Java program to convert Octal to Decimal Conversion ', 'code competition', 'b62', 'TDRCSE', 'Java'),
(382, 'Enter a decimal number : 123', 'Decimal to octal: 173', 'integer value', 'Enter a decimal number : 98', 'Decimal to octal: 142', 'Enter a decimal number : 99', 'Decimal to octal: 143', 'Write a Java program to  Convert Decimal to Octal', 'code competition', 'b63', 'TDRCSE', 'Java'),
(383, 'enter hexadecimal value 7A', 'Decimal Equivalent is 122', 'string', 'enter hexadecimal value 122', 'Decimal Equivalent is 7A', 'enter hexadecimal value 6F', 'Decimal Equivalent is 111', 'Write a Java program to convert Hexadecimal to Decimal Conversion', 'code competition', 'b64', 'TDRCSE', 'Java'),
(384, 'Enter a decimal number : 123', ' Decimal to hexadecimal: 7b', 'integer ', 'Enter a decimal number : 122', ' Decimal to hexadecimal: 7a', 'Enter a decimal number : 124', ' Decimal to hexadecimal: 7c', 'Write a Java program to convert decimal to hexadecimal', 'code competition', 'b65', 'TDRCSE', 'Java'),
(385, 'enter the binary number 10101', 'octal value is 25', 'integer', 'enter the binary number 10', 'octal value is 2', 'enter the binary number 101', 'octal value is 3', 'Write a Java program to convert Binary to Octal Conversion', 'code competition', 'b66', 'TDRCSE', 'Java'),
(386, 'true\r\nFALSE\r\nSomething', 'true\r\nfalse\r\nfalse', 'string', 'true\r\nTRue\r\nSomething', 'true\r\ntrue\r\nfalse', 'True\r\ntrue\r\nfalse', 'true\r\ntrue\r\nfalse', 'Write a Java String to boolean Conversion', 'code competition', 'b67', 'TDRCSE', 'Java'),
(387, 'true', 'true', 'true or false', 'false', 'false', 'true\r\ntrue', 'false', 'Write a Java â€“ boolean to String conversion', 'code competition', 'b68', 'TDRCSE', 'Java'),
(388, 'integer value 70', 'character value is F', 'integer', 'integer value 69', 'character value is E', 'integer value 68', 'character value is D', 'Write a Java int to char conversion', 'code competition', 'b69', 'TDRCSE', 'Java'),
(389, 'Enter the character A', 'Inter value is 65', 'character value', 'Enter the character Z', 'Inter value is 90', 'Enter the character P', 'integer value is 25', 'Write a Java char to int conversion', 'code competition', 'b70', 'TDRCSE', 'Java'),
(390, '4', '   1\r\n   2 3\r\n   4 5 6\r\n   7 8 9 10\r\n', 'Read the positive integer as input ', '5', '1\r\n   2 3\r\n   4 5 6\r\n   7 8 9 10\r\n   11 12 13 14 15\r\n', '3', '  1\r\n   2 3\r\n   4 5 6\r\n', 'To make a  pattern like right angle triangle with number increased by 1.', 'Array with Looping ', 'C15', 'RSTCSE1', 'python32'),
(391, '3', '246', 'Read the N numbers and print the series ', '2', '24', '4', '2468', 'To display the sum of the series  like  [ 2+22+222+......}', 'Array with Looping ', 'C16', 'RSTCSE1', 'python32'),
(392, '4', '30', 'Read N positive number  ', '5', '55', '3', '14', 'find the n terms of square natural number and display its sum.', 'Array with Looping ', 'C117', 'RSTCSE1', 'python32'),
(393, '8', '3', 'Read N as positive integer values ', '20', '4', '6', '3', 'compute the  count of non-prime divisors of the given number N.', 'Array with Looping ', 'C118', 'RSTCSE1', 'python32'),
(394, '1,2,1,2,3,4,4', '3', 'Rad n positive numbers ', '10,20,20,10,30,40,30,30', '30', '10,13,11,12,13,16', '13', 'find the number occurring odd number of times in an array. ', 'Array with Looping ', 'C119', 'RSTCSE1', 'python32'),
(395, '2, 1', '2', 'To find the LCM of the given number N', '3,9', '3', '5,0', 'Error ', 'Write a program to find the LCM of the given numbers. ', 'array', 'C120', 'RSTCSE1', 'python32'),
(396, 'Enter the character A', 'Inter value is 65', 'character value', 'Enter the character Z', 'Inter value is 90', 'Enter the character P', 'integer value is 25', 'Write a Java char to int conversion', 'code competition', 'b70', '', ''),
(397, 'enter the character  P', 'String after conversion is P', 'character', 'enter the character  Z', 'String after conversion is Z', 'Enter the character H', 'String after conversion is H', 'Write a Java program to Convert char to String ', 'code competition', 'b71', 'TDRCSE', 'Java'),
(398, 'enter long value 1000', 'converted int value is 1000', 'long int value', 'enter long value 99L', 'converted int value is 99', 'enter long value 88L', 'converted int value is 88', 'Write a Java program to  Convert long to int', 'code competition', 'b72', 'TDRCSE', 'Java'),
(399, 'enter an integer value 20', 'converted long value is 20', 'enter an integer', 'enter an integer value 40', 'converted long value is 40', 'enter an integer value 1000', 'converted long value is 1000', 'Write a Java program to Convert int to long', 'code competition', 'b73', 'TDRCSE', 'Java'),
(400, 'enter the decimal number  124', 'The binary number is 1111100', 'enter the decimal number ', 'enter the decimal number 999', 'The binary number is 1111100111', 'enter the decimal number 45', 'The binary number is 101101', 'Write a Java program to convert decimal to binary', 'code competition', 'b74', 'TDRCSE', 'Java'),
(401, 'enter the binary number  1101', 'The decimal value is 13', 'enter the binary number ', 'enter the binary number 110', 'The decimal value is 6', 'enter the binary number  100', 'The decimal value is 4', 'Write a Java program for binary to decimal conversion', 'code competition', 'b75', 'TDRCSE', 'Java'),
(402, '[]', 'True', 'A list l', '[3,3,4]', 'True', '[7,18,17,19]', 'False', 'Define a Python function ascending(l) that returns True if each element in its input list is at least as big as the one before it.', 'Functions', 'C54', 'RRSCSE', 'python32'),
(403, '[3,2,1,2,3]', 'True', 'A list l', '[3,2,1]', 'False', '[3,3,2,1,2]', 'False', 'A list of integers is said to be a valley if it consists of a sequence of strictly decreasing values followed by a sequence of strictly increasing values. The decreasing and increasing sequences must be of length at least 2. The last value of the decreasing sequence is the first value of the increasing sequence.  Write a Python function valley(l) that takes a list of integers and returns True if l is a valley and False otherwise.', 'Functions', 'C55', 'RRSCSE', 'python32'),
(404, '[[1,4,9]]', '[[1], [4], [9]]', 'A list of lists M', '[[1,3,5],[2,4,6]]', '[[1,2], [3,4], [5,6]]', '[[1,1,1],[2,2,2],[3,3,3]]', '[[1,2,3], [1,2,3], [1,2,3]]', 'A two dimensional matrix can be represented in Python row-wise, as a list of lists: each inner list represents one row of the matrix. For instance, the matrix would be represented as [[1,2,3],[4,5,6]].  The transpose of a matrix makes each row into a column.  Write a Python function transpose(m) that takes as input a two dimensional matrix using this row-wise representation and returns the transpose of the matrix using the same representation.', 'Functions', 'C56', 'RRSCSE', 'python32'),
(405, '[13,12,11,13,14,13,7,11,13,14,12]', '[7], [13]', 'A list l', '[13,12,11,13,14,13,7,11,13,14,12,14,14]', '[7], [13, 14]', '([13,12,11,13,14,13,7,11,13,14,12,14,14,7]', '[7, 11, 12], [13, 14]', 'Write a Python function frequency(l) that takes as input a list of integers and returns a pair of the form (minfreqlist,maxfreqlist) where â€¢	minfreqlist is a list of numbers with minimum frequency in l, sorted in ascending order â€¢	maxfreqlist is a list of numbers with maximum frequency in l, sorted in ascending', 'Functions', 'C57', 'RRSCSE', 'python32'),
(406, 'enter a character P', 'the ASCII value is 80', 'enter a character', 'enter a character Q', 'the ASCII value is 81', 'enter a character R', 'the ASCII value is 82', 'Write a Java Program to find ASCII value of a Character', 'code competition', 'b76', '', ''),
(407, 'enter the character P', 'The ASCII value is 80', 'enter the c haracter', 'enter the character Q', 'The ASCII value is 81', 'enter the character R', 'The ASCII value is 82', 'Write a Java Program to find ASCII value of a Character', 'code competition', 'b76', 'TDRCSE', 'Java'),
(408, 'enter the string 123', 'the integer is 223', 'enter the string', 'enter the string -234', 'the integer is -124', 'enter the string 00000678', 'the integer is 00000780', 'Write a Java Convert String to int ', 'code competition', 'b77', 'TDRCSE', 'Java'),
(409, 'enter the integer 111', 'the string value is 111', 'enter the integer value', 'enter the integer 99', 'the string is 99', 'enter the integer 140', 'the string is 140', 'Write a Java program to convert  int to String', 'code competition', 'b78', 'TDRCSE', 'Java'),
(412, '[3,9,20,null,null,15,7]', '[\r\n  [3],\r\n  [20,9],\r\n  [15,7]\r\n]', '[3,9,20,null,null,15,7]', '[3,9,20,null,null,15,7]', '[\r\n  [3],\r\n  [20,9],\r\n  [15,7]\r\n]', '[3,9,20,null,null,15,7]', '[\r\n  [3],\r\n  [20,9],\r\n  [15,7]\r\n]', 'Given a binary tree, return the zigzag level order traversal of its nodesâ€™ values. (ie, from left to right, then right to left for the next level and alternate between).', 'binary tree  Zigzag Level Order Traversal', 'C58', 'RRSCSE', 'python32'),
(413, ' [100, 180, 260, 310, 40, 535, 695]', 'buy stock on day 1 100 \r\nsell stock on day 4 310 \r\nbuy stock on day 5 40 \r\nsell stock on day 7 695', 'list', ' [100, 180, 260, 310, 40, 535, 695]', 'buy stock on day 1 100 \r\nsell stock on day 4 310 \r\nbuy stock on day 5 40 \r\nsell stock on day 7 695', ' [100, 180, 260, 310, 40, 535, 695]', 'buy stock on day 1 100 \r\nsell stock on day 4 310 \r\nbuy stock on day 5 40 \r\nsell stock on day 7 695', 'Maximum Profit by buying and selling stocks', 'stocks', 'C59', 'RRSCSE', 'python32'),
(414, '4\r\n2\r\n10 \r\n3\r\n-3 \r\n10 \r\n5\r\n5', '10 3 -3 10 ', '4\r\n2\r\n10 \r\n3\r\n-3 \r\n10 \r\n5\r\n5', '4\r\n2\r\n10 \r\n3\r\n-3 \r\n10 \r\n5\r\n5', '10 3 -3 10 ', '10 \r\n3\r\n-5\r\n10 \r\n5\r\n5', '10 3 -5 10 ', 'finding sub array with given sum', 'Sub array', 'C61', 'RRSCSE', 'python32'),
(415, '\r\n1 0 0\r\n1 1 0\r\n0 1 1', '4', 'enter matrix elements (0/1)\r\n1 0 0\r\n1 1 0\r\n0 1 1', '1 0 0\r\n1 1 0\r\n0 1 1', '4', '1 0 1 0\r\n0 0 0 1\r\n1 1 1 1\r\n0 1 1 0', 'no path found', 'shortest source to destination path', 'shortest source to destination path', 'C60', 'RRSCSE', 'python32'),
(417, '1\r\nOpen\r\n123', 'Oppeeen', 'Operation (1 for Encryption and 2 for Decryption)\r\nInput message\r\nInput private key', '1\r\nOpen\r\n123', 'Oppeeen', '2\r\nOppeeen \r\n123', 'open', 'Secure My Conversation by Encryption and Decryption', 'Secure My Conversation by Encryption and Decryption', 'C63', 'RRSCSE', 'python32'),
(420, '*', '*\r\n**\r\n***\r\n****\r\n***\r\n**\r\n*', '*', '*', '*\r\n**\r\n***\r\n****\r\n***\r\n**\r\n*', '#', '#\r\n##\r\n###\r\n####\r\n###\r\n##\r\n#', 'triangle', 'Design patterns', 'C52', 'RRSCSE', 'python32'),
(421, '*', '****\r\n ****\r\n****\r\n ****\r\n****\r\n ****', '*', '*', '****\r\n ****\r\n****\r\n ****\r\n****\r\n ****', '#', '####\r\n ####\r\n####\r\n ####\r\n####\r\n ####', 'Chess', 'Design patterns', 'C62', 'RRSCSE', 'python32'),
(423, 'A= [ 1,2,3,5,6,7,8]       rotaator_value= 5\r\n', '[5,6,7,8,1,2,3]', 'Input the N elements from User in unsorted order. and Choose any value from list as rotator  value ', 'A =[11,13,14,15,16,19  rotaator_value= 15\r\n', '[15,16,19,11,13,14]', 'A= [1,4,5]   rotaator_value= 4', '[4,5,1]', ' Create an array A with size N and use and get one rotator value from the user and rotate the array A based on the rotator value ', 'array', 'C121', '', ''),
(424, 'A = [11,12,13,14,15]  rotator_value =12', '[12,13,14,15,11]', ' Read the N elements from User in unsorted order. and  choose any value from list as rotator_value\r\n', 'A = [1,5,7,6]  rotator_value =7', '[7,6,1,5]', 'A =[4,5,6,1,11]   rotator_value = 6', '[6,1,11,4,5]', 'Create an array A with size N and use and get one rotator value from the user and rotate the array A based on the rotator value ', 'array', 'C121', 'RSTCSE1', 'python32'),
(425, '3', '1,5,25', 'Read any positive integer value  N', '5', '[1,5,25,125,625]', '2', '[1,5]', 'Display the power of 5 using lambda function ', 'lambda', 'C121', '', ''),
(427, '2014 , 11', '[2,9,16,23,30]', 'Read  the  value of year  and month as input and print the dates of all sunday ', '2005 ,7 ', '[3,10,17,24,31]', '2001,1', '[7,14,21,28]', 'Display the dates of sunday for any given year and month ', 'array ', 'C122', 'RSTCSE1', 'python32'),
(428, '\"Hello!!!00 &2^.\"', 'Hello!!! 2', 'Read any sting as input ', 'one&&&11', 'one11', '00hi&hello2^2', 'hihello22', 'Read any sting and remove the following special character ^,&,$ from the given sting ', 'string ', 'C124', 'RSTCSE1', 'python32'),
(429, '5 ,3 ', '[1,5,25]', 'Any positive integers with m  input and n terms ', '2,3', '[1,2,4]', '5,4', '[1,5,25,125]', 'To Display Powers of  m inputs with n terms  Using lambda Function', 'lambda', 'C123', 'RSTCSE1', 'python32'),
(430, '3\r\n5\r\n4', 'yes', 'Three integers a, b, c', '1\r\n2\r\n3', 'no', '2\r\n2\r\n2', 'no', '11.	Three numbers form a Pythagorean triple if the sum of squares of two numbers is equal to the square of the third.   For example, 3, 5 and 4 form a Pythagorean triple, since 3*3 + 4*4 = 25 = 5*5  You are given three integers, a, b, and c. They need not be given in increasing order. If they form a Pythagorean triple, then print \"yes\", otherwise, print \"no\". Please note that the output message is in small letters.', 'Functions', 'C64', 'RRSCSE', 'python32'),
(431, '2', '17', 'An integer N', '3', '98', '4', '354', 'In this program, you are given an input N, which is a positive integer less than or equal to 40. Write a program to find the sums of fourth powers of the first N numbers.', 'Functions', 'C65', 'RRSCSE', 'python32'),
(432, '3 2', '0', 'Two integers, say M and N', '100 5', '20', '300 4', '75', 'You are given two integers, say M and N.  You must check whether M is an exact multiple of N, without using loops. You have to output 0 if M is not a multiple of N. You have to output M/N if M is a multiple of N.', 'Conditional statements', 'C66', 'RRSCSE', 'python32'),
(433, '3 5 4', '1', 'Three real numbers', '1 2 100', '0', '13 12 5', '1', 'A triple of numbers (a,b,c) is called a triangle triple if we can form a triangle of lengths a, b and c.  In this question, you will be given three numbers. You have to output 1 if the three numbers can form a triangle. Otherwise, you have to output 0.', 'Looping Statements', 'C67', 'RRSCSE', 'python32'),
(434, '24/06/2020', '23, Wednesday', 'Read the date in (dd/mm/yyyy) format and print the date with name of the day ', '27/06/2020', '26, friday ', '20/05/2020', '19, Tuesday ', 'To display the date of yesterday with its name ', 'Numpy', 'C125', 'RSTCSE1', 'python32'),
(435, '-2 -3 4 5 -2 1 -1', '4', 'Sequence of integers', '1 2 3 4 5 -1', '4', '2 -2 -3 -4 -5 1 -1', '1', 'You are given a sequence of integers as input, terminated by a -1. (That is, the input integers may be positive, negative or 0. A -1 in the input signals the end of the input.)   -1 is not considered as part of the input.    Find the second largest number in the input. You may not use arrays.', 'Arrays', 'C69', 'RRSCSE', 'python32'),
(436, '20/06/2020', 'Thursday ', 'To read the date (dd/mm/yyyy) from user and display the output in string ', ' 20/05/2020', 'Monday', '10/06/2020', 'Monday', 'To display the next 5th  day of current date ', 'Numpy', 'C126', 'RSTCSE1', 'python32'),
(437, '4 5 6 7 -1', '4', 'Sequence of integers', '5 4 4 3 -1', '3', '1 2 -1', '2', 'You are given a sorted (either in the increasing or in the decreasing order) sequence of numbers, ending with a -1. You can assume that are at least two numbers before the ending -1.   Let us call the sequence x0 x1 ... xn -1.  You have to output the number of distinct elements in the sorted sequence.  Kindly do not use arrays in the code. ', 'Arrays', 'C70', 'RRSCSE', 'python32'),
(438, '2\r\n1 1 3 2 3 4 -1', '4', 'You are given the input in two lines:\r\n\r\nThe first line contains a positive integer k. \r\nIn the second line, you will be given a sequence of numbers. \r\n\r\nYou have to find the kth occurrence of n in the sequence below. \r\n\r\nThe second line consists of a sequence of non-negative integers,\r\nterminated with a -1.  The -1 is not part of the sequence.', '3\r\n1 2 3 4 5 6 7 -1', '6', '3\r\n1 -1', '-1', 'Write a Python function to find the kth occurrence of an even integer in a sequence of non-negative integers, and then call your function from main.   Your function should be according to the following declaration:  int find_even(int k);', 'Functions', 'C71', 'RRSCSE', 'python32'),
(439, 'February, 2016', '29', 'Read the month and year from user and display the output in numerals ', 'June 2020', '30', 'may 2020', '31', 'To  count the number of days of specific month ', 'Numpy', 'C127', 'RSTCSE1', 'python32'),
(440, '4', '1 2', 'A positive integer, say n.', '5', '1 2', '30', '1 2 6 24', 'Write a Python program to list all the factorial numbers less than or equal to an input number n.  A number N is called a factorial number if it is the factorial of a positive integer. For example, the first few factorial numbers are     1, 2, 6, 24, 120, ...  *Note* - We do not list the factorial of 0.', 'Looping Statements', 'C72', 'RRSCSE', 'python32'),
(441, '3\r\n2 3 4\r\n4\r\n1 3 5 7', '2', 'The first line contains the size N1 of the first array.\r\nNext line give the contents of the first array.\r\nNext line contains the size N2 of the second array.\r\nNext line give the contents of the second array.', '1\r\n1\r\n2\r\n1 2', 'NO', '3\r\n2 3 4\r\n4\r\n1 3 5 7', '2', 'Given two arrays of integers output the smallest number in the first array not present in the second one.', 'Arrays', 'C73', 'RRSCSE', 'python32'),
(442, '4\r\n1 2 3 1', '3', 'The input consists of two lines.\r\nThe first line consists of a positive number N. N is at most 1000.\r\nThe second line consists of N numbers separated by spaces.', '4\r\n2 3 2 3', '2', '5\r\n1 2 3 4 5', '5', 'Find the number of distinct numbers in a given sequence. The sequence need not be sorted', 'Functions', 'C74', 'RRSCSE', 'python32'),
(443, 'abcxy\r\nb\r\nmf', 'amfcxy', 'The first line contains the primary string (PS)\r\nThe next line contains a character (c)\r\nThe next line contains a string (s)', 'Al@bal#20owL\r\nl\r\nLL', 'ALL@baLL#20owL', 'Hello\r\nW\r\nWorld', 'Hello', 'Write a program that replaces the occurence of a given character (say c) in a primary string (say PS) with another string (say s).', 'Strings', 'C75', 'RRSCSE', 'python32'),
(444, '[7, 12, 1, 14], [2, 13, 8, 11], [16, 3, 10, 5], [9, 6, 15, 4]', 'true ', 'To read 3  x 3 matrix and return true or false value ', '[2, 7, 8], [9, 5, 1], [4, 3, 6]', 'false ', '[2, 7, 6], [9, 5, 1], [4, 3, 7]', 'false ', 'To check the given matrix is a magic square or not ', 'numpy', 'C128', 'RSTCSE1', 'python32'),
(445, '6', '21', 'Read any positive integer ', '11', '66', '8', '36', 'find the n terms of any given series 1, 3, 6, 10, 15, 21,,,,,,,,,,,,,,', 'array', 'C128', 'RSTCSE1', 'python32'),
(446, 'Today is January 1, 2047 at 8:21:00AM', '2047-01-01 08:21:00', 'Read the string  with date  and time from the user and extract the date and time from the text ', 'today is june , 2020 at 7:51:00AM', '2020-06-25 07:51:00', 'dec 2017 at 3:51:00PM', '2017-12-25 15:51:00', 'Write a python program to extract date and time out of a text', 'string ', 'C129', 'RSTCSE1', 'python32'),
(447, '1, 1, 3, 4, 4, 5, 7, 8', '2', 'To read  one dimensional array as input ', '1, 3, 3, 5, 4, 6', '1', '1, 3, 8, 5, 4, 6', '0', ' To count of pairs from Array with sum equal to twice their bit wise OR', 'array', 'C131', 'RSTCSE1', 'python32'),
(448, 'enter the integer 111', 'the string value is 111', 'enter the integer value', 'enter the integer 99', 'the string is 99', 'enter the integer 140', 'the string is 140', 'Write a Java program to convert  int to String', 'code competition', 'b78', '', ''),
(449, '[1, 1, 1, 1, 2, 2, 3, 3, 4, 1, 2, 3, 2, 1, 2]', '[1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4]', 'Read N numbers from the user', '[10,5,6,3]', '[3, 5, 6, 10]', '[7,11,4,2,7,0,1,2]', '[0, 1, 2, 2, 4, 7, 7, 11]', 'use the lambda function to sort the numbers using bubble sort ', 'lambda', 'C132', 'RSTCSE1', 'python32'),
(450, '154, 124', '2, good', 'Read two input integers ', '575 ,600', '25 , bad', '5,10', '5, bad', 'write a python program to compute the HCF and display the message GOOD is the HCF output value is less than 5 means print \"good\" else print \"bad\"', 'array', 'C130', '', ''),
(451, '5,10', '5, bad', 'Read two integer values ', '540,640', '10,bad', '54,64', '2, good', 'find the HCF of two numbers and if the output is less than 5 print \"good\" else \"bad\"', 'array', 'C130', 'rstcse1', 'python32'),
(452, '2 2\r\n-1 2\r\n3 -1', '1', 'M is a matrix of integers. You would be given two numbers m and n specifying the number of rows and columns. This would be followed by m lines of n integers each specifying the data of the m*n matrix M.\r\n\r\nn and m will be greater than 1 and less than 12.', '3 3\r\n1 2 -1\r\n-1 1 2\r\n-9 2 3', '3', '2 3\r\n1 2 3\r\n-1 3 4', '3', 'Consider a matrix M of integers. Divide M into 4 sub-matrices. These sub-matrices are called as Quadrants. Report the Quadrant number which has the smallest minimum-element. If two or more quadrants have same smallest minimum, report the smallest quadrant index.  The matrix M is divided into four quadrants by halving the rows and columns. If row/column is an odd number, divide them in such a way that the first half of the row/column should be one smaller than the second half. ', 'Arrays', 'C77', 'RRSCSE', 'python32'),
(453, 'This is easy', 'ysae si sihT', 'A line L', 'TEST CASES', 'SESAC TSET', 'Problem Statement', 'tnemetatS melborP', 'Write a recursive program that inputs a line of characters from the user. The line may contain blanks. It outputs the line with the characters reversed. The input ends with EOF (end of file).  NOTE: You have to use recursion to solve this, and are NOT allowed to use array to store the input!!', 'Functions', 'C78', 'RRSCSE', 'python32'),
(454, '5', '0\r\n2', 'A positive number N', '10', '0\r\n2\r\n8\r\n34', '7', '0\r\n2\r\n8', 'Create a python function that prints all the even fibonacci numbers given the number N. Find first 10 fibonacci numbers and print even integers of those.', 'Functions', 'C79', 'RRSCSE', 'python32'),
(455, '1 4 4', 'Yes', 'Three integers a, b, c corresponding to the equation ax^2+bx+c=0', '1 14 10', 'No', '1 6 9', 'No', 'Create a python program that solves a quadratic equation and prints \"Yes\" if the roots are even and \"No\" if the roots are not even numbers', 'Functions', 'C81', 'RRSCSE', 'python32'),
(456, '5', '0, 1, 2, 3, 11', 'A positive integer N', '10', '0, 1, 2, 3, 11, 12, 13, 21, 22, 31', '3', '0, 1, 2', 'Create a python program to print first N adam numbers. Eg. 12 is adam. 12 on squaring gives 144, which on reversed and square root gives 21. Reverse of 21 again gives 12.', 'Functions', 'C82', 'RRSCSE', 'python32'),
(457, 'How are you? I am fine\r\nare\r\nis', 'How is you? I am fine', 'A line L\r\nA string T\r\nA String L', 'How are you? I am fine\r\nyou\r\nthey', 'How are they? I am fine', 'This is great\r\nis\r\nare', 'Thare are great', 'Create a python program that accepts a sentence S, text t, replace r. Upon successful execution, the sentence is framed by replacing each t with r.', 'Strings', 'C83', 'RRSCSE', 'python32'),
(458, '4 5 6 7 -1', '4', 'A sequence of integers ending with -1', '4 4 4 5 -1', '2', '1 1 1 -1', '1', 'You are given a sorted (either in the increasing or in the decreasing order) sequence of numbers, ending with a -1. You can assume that are at least two numbers before the ending -1.   Let us call the sequence x0 x1 ... xn -1.  You have to output the number of distinct elements in the sorted sequence.', 'Arrays', 'C85', 'RRSCSE', 'python32'),
(459, '3 5 4', '1', 'Three real numbers', '1 2 100', '0', '1 2 101', '0', 'A triple of numbers (a,b,c) is called a triangle triple if we can form a triangle of lengths a, b and c.  In this question, you will be given three numbers. You have to output 1 if the three numbers can form a triangle. Otherwise, you have to output 0.', 'Arrays', 'C86', 'RRSCSE', 'python32'),
(460, '3 2', '0', 'Two integers, say M and N', '100 5', '20', '4 2', '2', 'You are given two integers, say M and N.  You must check whether M is an exact multiple of N, without using loops. You have to output 0 if M is not a multiple of N. You have to output M/N if M is a multiple of N.', 'Conditional statements', 'C87', 'RRSCSE', 'python32'),
(461, '1 2 3', '1', 'Three integers', '1 1 1', '0', '1 2 2', '0', 'You will be given 3 integers as input. The inputs may or may not be  different from each other.  You have to output 1 if all three inputs  are different from each other, and 0 if any input is repeated more  than once.', 'Conditional statements', 'C84', 'RRSCSE', 'python32'),
(462, '4', '1 2', 'A positive integer, say n.', '5', '1 2', '30', '1 2 6 24', 'Write a Python program to list all the factorial numbers less than or equal to an input number n.  A number N is called a factorial number if it is the factorial of a positive integer.', 'Functions', 'C89', 'RRSCSE', 'python32'),
(463, '2\r\n1 1 3 2 3 4 -1', '4', 'You are given the input in two lines:\r\n\r\nThe first line contains a positive integer k. \r\nIn the second line, you will be given a sequence of numbers. \r\n', '3\r\n1 1 2 1 1 3 4 6 -1', '6', '3\r\n1 2 3 5 4 8 -1', '8', 'Write a python function to find the kth occurrence of an even integer in a sequence of non-negative integers, and then call your function from main. ', 'Functions', 'C90', 'RRSCSE', 'python32'),
(464, 'abbaaacccc', '4', 'A string, having length at most 100. The string is guaranteed to have at least one run.', 'cyclone', '1', 'aabcbacaabbbad', '3', 'In a string, a \"run\" is a substring with consisting of consecutive occurrences of the same character. For example, the string \"mississippi\" contains the following runs - \"ss\", \"ss\" and \"pp\".  In this question, given a string, you have to output the length of the longest run in the string.', 'Functions', 'C88', 'RRSCSE', 'python32'),
(465, '153', 'Yes', 'A number N', '370', 'Yes', '124', 'No', 'Create a python program to check whether the given number is amstrong number or not. Amstrong is the sum of its own digits each raised to the power of the number of digits.', 'Functions', 'C92', 'RRSCSE', 'python32'),
(466, 'Hello how are you?', '[e, o, o, a, e, o, u]', 'A Line l', 'Hello', '[e, o]', 'hai', '[a, i]', 'Create a python program to find all the vowels from a given line and form a list of those vowels.', 'Lists', 'C91', 'RRSCSE', 'python32'),
(467, 'Moon', 'noM', 'A String s', 'Computer', 'retupmoC', 'Mother', 'rehtoM', 'Create a python program to reverse a given string and print the unique characters in the reversed string.', 'Functions', 'C93', 'RRSCSE', 'python32'),
(468, '[1,2,3,4,5]', '[1,3,5]\r\n[2,4]', 'A list L', '[1,4,4,5,6,7]', '[1,5,7]\r\n[4,4,6]', '[1,3,5]', '[1,3,5]\r\n[]', 'Create a python program to split a given list of numbers into odd and even numbers separately.', 'Lists', 'C94', 'RRSCSE', 'python32'),
(469, '[2,4,6,9,15,22]', '[2,4,6,22] is multiple of 2\r\n[9] is multiple of 3', 'A list l', '[2,3,5]\r\n', '[2] is multiple of 2\r\n[3] is multiple of 3\r\n[5] is multiple of 5', '[2]', '[2] is multiple of 2', 'Create a python program that inputs a list and generate sub list each representing its multiples..', 'Functions', 'C95', 'RRSCSE', 'python32'),
(470, 'Hello', 'Helloo', 'A String S', 'Programmer', 'Prograammeeer', 'Test', 'Test', 'Given a string S, generate a string with the vowel characters repeated 1,2,3.. times for each subsequent characters', 'Lists', 'C96', 'RRSCSE', 'python32'),
(471, 'Python', 'Pythn', 'A String s', 'Kingmaker', 'Kngmkr', 'All is well', 'll  wll', 'Create a python program to delete all vowels in the given string', 'Functions', 'C97', 'RRSCSE', 'python32'),
(472, 'Magnet\r\n[a,g]', 'Mnet', 'A String s\r\nA list l', 'Hello\r\n[l]', 'Heo', 'Hai\r\n[H]', 'ai', 'Create a python program that inputs a string and a list of characters and outputs a string without any characters in the list', 'Functions', 'C99', 'RRSCSE', 'python32'),
(473, '3\r\n[1,1,1]\r\n[1,2,1]', '[0,0]', 'A integer N, representing number of elements in the list\r\nA list L1\r\nA list L2', '3\r\n[1,2,1]\r\n[1,2,1]', '[0,0,0]', '4\r\n[2,1,1,3]\r\n[1,2,1,2]', '[1,0,1]', 'Create a python program to print subtract two lists and print a new list without negative numbers.', 'Functions', 'C98', 'RRSCSE', 'python32'),
(474, '3\r\n[1,2,3]\r\n[1,3,4]', '[0,5,7]', 'An integer N, representing number of elements in the list\r\nA list l1\r\nA list l2', '3\r\n[1,1,1]\r\n[1,1,1]', '[0,0,0]', '2\r\n[1,4]\r\n[1,3]', '[0,1]', 'Create a python program that inputs two list and add them element wise if the element in list 1 is less than the corresponding element in list 2. Otherwise the elements need to be added.', 'Functions', 'C100', 'RRSCSE', 'python32'),
(475, '5\r\n[2,3,-6,5,-2]', '30\r\n12', 'An integer N, representing number of elements of list\r\nA list L', '4\r\n[1,2,3,-1]', '6\r\n-1', '5\r\n[2,2,2,-2,-2]', '8\r\n4', 'Create a python function that accepts a list l of n integers and provides the product of positive and negative numbers in the list', 'Functions', 'C80', 'RRSCSE', 'python32'),
(476, '5\r\n[11,12,99,98,97]', '2', 'An integer N, representing number of elements in the list\r\nA list L', '3\r\n[11,12,13]', '3', '2\r\n[15,16]', '0', 'Create a python program that inputs a list of N integers and finds the number of adam numbers in the given list', 'Lists', 'C68', 'RRSCSE', 'python32'),
(477, '6', 'Yes', 'A positive integer N', '5', 'No', '28', 'Yes', 'Create a python program that finds whether the given number is a semi prime. The number is semi prime, if the factors of the number, upon addition gives the same number', 'Functions', 'C76', 'RRSCSE', 'python32'),
(478, 'enter the string \"122.022\"', 'the double value is 122.022', 'string', 'enter the string \"999.333\";', 'the double value is 999.333', 'enter the string 123', 'the double value is 123.00', 'Write a Java program to Convert String to Double', 'code competition', 'b78', 'TDRCSE', 'Java'),
(479, 'enter the double value 99.90', 'the string value is 99.90', 'enter the double value', 'enter the double value -123.50', 'the string value is -123.50', 'enter the double value -1.04', 'the string value is -1.04', 'Write a Java program to Convert double to string', 'code competition', 'b79', 'TDRCSE', 'Java'),
(480, 'enter the string\"2111111\"', 'the long value is 211111', 'enter the string', 'enter the string 111111', 'the long value is 111111', 'enter the string 101010', 'the long value is 101010', 'Write a Java program to convert String to long Conversion', 'code competition', 'b80', 'TDRCSE', 'Java'),
(481, 'enter the long value 123', 'the srting is 123', 'enter the long value', 'enter the long value -12345', 'the string is -12345', 'enter the long value 200', 'the string value is 200', 'Write a Java program to convert  long to String ', 'code competition', 'b81', 'TDRCSE', 'Java'),
(482, '24,3 ', '9', 'Read the value of  n and x from the user ', '18,2', '9', '181,3', '3', 'Find the  Sum of digits of any given number formed by repeating a number of times until sum become single digit', 'recursion ', 'C136', 'RSTCSE1', 'python32'),
(483, 'x = (5, 6, 7)  y = (8, 9, 9)', '4.69', 'Read  x and y values with positive integers  ', 'x = (2, 1, 1)  y = (3, 1, 2)', '1.41', 'x = (0, 1, 6)  y = (5, 0, 3)', '5.91', 'To measure the  euclidean distance for given any two points ', 'recursion', 'C137 ', 'RSTCSE1', 'python32'),
(484, '9 8', '17', 'int', '7 3', '10', '4 4', '8', 'JAVA GUI application to find sum of two numbers', 'online coding competition ', 'B151', 'PVSINT', 'Java'),
(485, '49 11', '60', 'int', '4 7', '11', '4 8', '12', 'Java GUI Program to Add Two Numbers Using AWT', 'online coding competition ', 'B152', 'PVSINT', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `uans`
--

CREATE TABLE `uans` (
  `sno` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ans` text NOT NULL,
  `topic` varchar(30) NOT NULL,
  `testno` int(5) NOT NULL,
  `marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uans`
--

INSERT INTO `uans` (`sno`, `username`, `ans`, `topic`, `testno`, `marks`) VALUES
(1, '9915004207', 'C', 'java', 1, 1),
(2, '9915004207', 'AB', 'java', 5, 1),
(3, '9918004109', 'A', 'java', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Assign_date`
--
ALTER TABLE `Assign_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `C`
--
ALTER TABLE `C`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `CC`
--
ALTER TABLE `CC`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `Java`
--
ALTER TABLE `Java`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c`
--
ALTER TABLE `c`
  MODIFY `Qid` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `C`
--
ALTER TABLE `C`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cc`
--
ALTER TABLE `cc`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CC`
--
ALTER TABLE `CC`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `facultylogin`
--
ALTER TABLE `facultylogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Java`
--
ALTER TABLE `Java`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;
--
-- AUTO_INCREMENT for table `uans`
--
ALTER TABLE `uans`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
