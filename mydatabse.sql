-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 09:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabse`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`title`, `category`, `path`) VALUES
('1', 'Cars', './img/pexels-adrian-dorobantu-2127733.jpg'),
('2', 'Cars', './img/pexels-albin-berlin-919073.jpg'),
('3', 'Cars', './img/pexels-avinash-patel-544542.jpg'),
('4', 'Cars', './img/pexels-charles-kettor-1077785.jpg'),
('1', 'Coding', './img/pexels-christina-morillo-1181288.jpg'),
('2', 'Coding', './img/pexels-christina-morillo-1181467.jpg'),
('3', 'Coding', './img/pexels-christina-morillo-1181675.jpg'),
('4', 'Coding', './img/pexels-danny-meneses-943096.jpg'),
('5', 'Coding', './img/pexels-hitesh-choudhary-879109.jpg'),
('1', 'Books', './img/pexels-jess-bailey-designs-762686.jpg'),
('1', 'Nature', './img/pexels-joerg-hartmann-19558569.jpg'),
('2', 'Books', './img/pexels-john-ray-ebora-4581325.jpg'),
('6', 'Coding', './img/pexels-lukas-574073.jpg'),
('2', 'Nature', './img/pexels-maria-isabella-bernotti-2570524.jpg'),
('3', 'Nature', './img/pexels-mihman-duğanlı-19549708.jpg'),
('5', 'Cars', './img/pexels-mike-bird-116675.jpg'),
('6', 'Cars', './img/pexels-mike-bird-244206.jpg'),
('4', 'Nature', './img/pexels-no-name-66997.jpg'),
('2', 'Coding', './img/pexels-parth-shah-824197.jpg'),
('3', 'Books', './img/pexels-pixabay-159711.jpg'),
('4', 'Books', './img/pexels-pixabay-159866.jpg'),
('5', 'Books', './img/pexels-pixabay-301920.jpg'),
('3', 'Animal', './img/pexels-pixabay-302304.jpg'),
('1', 'Animal', './img/pexels-pixabay-50988.jpg'),
('5', 'Nature', './img/pexels-pixabay-53581.jpg'),
('2', 'Animal', './img/pexels-pixabay-64219.jpg'),
('6', 'Nature', './img/pexels-sohail-nachiti-807598.jpg'),
('6', 'Books', './img/pexels-ylanite-koppens-1809340.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `sid` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_class` varchar(30) NOT NULL,
  `s_gender` varchar(30) NOT NULL,
  `s_age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`sid`, `s_name`, `s_class`, `s_gender`, `s_age`) VALUES
(2, 'Aditya Bangar', 'BCA TY', '', 20),
(3, 'Aoudumber Bade', 'BCA TY', 'Male', 20),
(4, 'Aditya Bangar', 'BCA TY', 'Male', 21),
(5, 'Ashish Gawali', 'BCA TY', 'Male', 22),
(6, 'Ritesh Gwai', 'BCA TY', 'Male', 20),
(7, 'Pavan Gavande', 'BCA TY', 'Male', 21),
(10, '', '', '', 0),
(11, 'raj bankar', 'BCA TY', 'Female', 21),
(13, 'Ritesh', 'BCA Ty', 'Male', 34),
(14, '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
