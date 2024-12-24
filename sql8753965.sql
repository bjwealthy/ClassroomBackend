-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2024 at 11:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30
USE sql8753965;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `class_id` varchar(150) NOT NULL,
  `classname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`class_id`, `classname`) VALUES
('sal_js1d', 'Salolo JS 1D'),
('sal_js1k', 'Salolo JS 1K'),
('sal_js1w', 'Salolo JS 1W'),
('sal_js2d', 'Salolo JS 2D'),
('sal_js2k', 'Salolo JS 2K'),
('sal_js2w', 'Salolo JS 2W'),
('sal_js3d', 'Salolo JS 3D'),
('sal_js3k', 'Salolo JS 3K'),
('sal_js3w', 'Salolo JS 3W'),
('sal_ss1_bh', 'Salolo SS 1 Business & Humanities'),
('sal_ss1_sci', 'Salolo SS 1 Science'),
('sal_ss1_tech', 'Salolo SS 1 Tech'),
('sal_ss2_bh', 'Salolo SS2 Business & Humanities'),
('sal_ss2_sci', 'Salolo SS2 Science'),
('sal_ss2_tech', 'Salolo SS2 Tech'),
('sal_ss3_bh', 'Salolo SS3 Business & Humanities'),
('sal_ss3_sci', 'Salolo SS3 Science'),
('sal_ss3_tech', 'Salolo SS3 Tech');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `debt` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `classname` varchar(150) NOT NULL,
  `class_id` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `password`, `address`, `debt`, `image`, `category_id`, `classname`, `class_id`) VALUES
(76, 'Amos Ogooluwa  ', 'asdfgh@gm.com', '$2b$10$vfqKywM5wfgCqJOPMVuX2Ou2xvpoWOTxBRarh65cQHtAn06evDQx2', ' 4 salolo street ', 100, 'image_1732182130168.jpg', 2, 'Salolo SS2 Tech', '15'),
(77, 'edited wcid', 'edited@email.com', '$2b$10$uIQ0kHzkVM.UMsu99mmFw.3RzcWAANmT1MCeYconiyY4io1LnIjtC', '34, ertyu', 300, 'image_1732192518119.jpg', 2, 'Salolo JS 3D', '16'),
(82, 'new student', 'newstudent@gmail.com', '$2b$10$lCGXw2KSyaE8eii7yirJ8uECtvGAsJs5y8.rjM.6ZPL1oTmdZMg1.', '345, new student', 300, 'image_1732707803205.jpg', 2, 'Salolo JS 1K', 'sal_js1k'),
(83, 'ss1 sci sampl', 'ss1sci@tester.com', '$2b$10$3LMqSUPYSZ7T6LCaAYqnCulByrJ1VOu/glbjm7sN7MuJJ6ZnE76nG', '1, tester', 561, 'image_1733082375183.jpg', 2, 'Salolo SS 1 Science', 'sal_ss1_sci');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `classroom` varchar(100) NOT NULL,
  `class_id` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `classroom`, `class_id`, `email`, `password`) VALUES
(1, 'Salolo Js1k', 'sal_js1k', 'sal_js1k@bfs.com', 'babalola@2024'),
(2, 'Salolo Js1w', 'sal_js1w', 'sal_js1w@bfs.com', 'sokoto1960'),
(3, 'Salolo Js1d', 'sal_js1d', 'sal_js1d@bfs.com', 'happy_2019'),
(4, 'Salolo Js2k', 'sal_js2k', 'sal_js2k@bfs.com', 'sokoto1960'),
(5, 'Salolo Js2w', 'sal_js2w', 'sal_js2w@bfs.com', 'mysoul'),
(6, 'Salolo Js2d', 'sal_js2d', 'sal_js2d@bfs.com', 'omabo2480'),
(7, 'Salolo Js3k', 'sal_js3k', 'sal_js3k@bfs.com', 'citizen1972'),
(8, 'Salolo Js3d', 'sal_js3d', 'sal_js3d@bfs.com', 'ak@lag28'),
(9, 'Salolo SS1 Science', 'sal_ss1_sci', 'sal_ss1_sci@bfs.com', 'sokoto1960'),
(10, 'Salolo SS1 Tech', 'sal_ss1_tech', 'sal_ss1_tech@bfs.com', '1234567abc'),
(11, 'Salolo SS1 BH', 'sal_ss1_bh', 'sal_ss1_bh@bfs.com', 'demeche@7'),
(12, 'Salolo SS2 Sci', 'sal_ss2_sci', 'sal_ss2_sci@bfs.com', 'fumechi'),
(13, 'Salolo SS2 Tech', 'sal_ss2_tech', 'sal_ss2_tech@bfs.com', 'tech2bfs2024'),
(14, 'Salolo SS2 BH', 'sal_ss2_bh', 'sal_ss2_bh@bfs.com', 'zombie'),
(15, 'Salolo SS3 Sci', 'sal_ss3_sci', 'sal_ss3_sci@bfs.com', 'brainfieldagric'),
(16, 'Salolo SS3 Tech', 'sal_ss3_tech', 'sal_ss3_tech@bfs.com', 'gide4on1'),
(17, 'Salolo SS3 BH', 'sal_ss3_bh', 'sal_ss3_bh@bfs.com', 'sokoto1960');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
