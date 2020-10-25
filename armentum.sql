-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 06:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `armentum`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Nidhi', 'admin@gmail.com', '32250170a0dca92d53ec9624f336ca24');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`Id`, `title`, `description`, `path`) VALUES
(1, '', '', '9_gym.jpg'),
(2, '', '', 'audi1.jpg'),
(3, '', '', 'audi2.jpg'),
(4, '', '', 'clubhall1.jpg'),
(5, '', '', 'clubhall2.jpg'),
(6, '', '', 'court1.jpg'),
(7, '', '', 'gym1.jpg'),
(8, '', '', 'main.jpg'),
(9, '', '', 'parking1.jpg'),
(10, '', '', 'parking2.jpg'),
(11, '', '', 'playground.jpg'),
(12, '', '', 'secu.cabin.jpg'),
(13, '', '', 'secu.cabin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `celebration`
--

CREATE TABLE `celebration` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `celebration`
--

INSERT INTO `celebration` (`Id`, `title`, `description`, `path`) VALUES
(1, '', '', 'christmas.jpg'),
(2, '', '', 'christmas2.jpg'),
(3, '', '', 'diwali.jpg'),
(4, '', '', 'diwali2.jpg'),
(5, '', '', 'holi1.jpg'),
(6, '', '', 'holi2.jpg'),
(7, '', '', 'independence.jpg'),
(8, '', '', 'lori.jpg'),
(9, '', '', 'main.jpg'),
(10, '', '', 'nagpanchmi.jpg'),
(11, '', '', 'navratri1.jpg'),
(12, '', '', 'navratri2.jpg'),
(13, '', '', 'republic day.jpg'),
(14, '', '', 'utta1.jpg'),
(15, '', '', 'utta2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`Id`, `title`, `description`, `path`) VALUES
(1, '', '', '1.jpg'),
(2, '', '', '2.jpg'),
(3, '', '', '3.jpg'),
(4, '', '', '4.jpg'),
(5, '', '', '5.jpg'),
(6, '', '', '6.jpg'),
(7, '', '', '7.jpg'),
(8, '', '', 'main.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender`, `reciver`, `title`, `feedbackdata`, `attachment`) VALUES
(19, 'user123@gmail.com', 'Admin', 'feedback title', 'this is description', ' '),
(20, 'Admin', 'user123@gmail.com', '', 'test...\r\nthis msg is from admin ', ''),
(21, 'user123@gmail.com', 'Admin', 'feedback title', 'this is description', ' '),
(22, 'admin', 'Admin', 'TEST', 'mjjk', ' '),
(23, 'Admin', 'user123@gmail.com', '', 'test of test', ''),
(24, 'admin', 'Admin', 'test feedback', 'complaint', ' '),
(25, 'Admin', 'admin', '', 'complaint solved', ''),
(26, 'admin', 'Admin', 'test feedback', 'complaint', ' '),
(27, 'admin', 'Admin', 'complaint 1', 'not proper internet', ' '),
(28, 'admin', 'Admin', 'yoyoy', 'Sgfdfgad', ' '),
(29, 'Admin', 'admin', '', 'oyoyoyo', ''),
(30, 'admin', 'Admin', 'yoyoy', 'Sgfdfgad', ' '),
(31, 'user123@gmail.com', 'Admin', 'final', 'eeeee', ' '),
(32, 'Admin', 'user123@gmail.com', '', 'final reply', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(18, 'user123@gmail.com', 'Admin', 'Send Feedback', '2020-02-20 19:12:51'),
(19, 'Admin', 'user123@gmail.com', 'Send Message', '2020-02-20 19:13:45'),
(20, 'user123@gmail.com', 'Admin', 'Send Feedback', '2020-02-20 19:13:50'),
(21, 'admin', 'Admin', 'Send Feedback', '2020-02-25 09:11:58'),
(22, 'Admin', 'user123@gmail.com', 'Send Message', '2020-02-25 09:17:00'),
(23, 'admin', 'Admin', 'Send Feedback', '2020-02-25 09:17:41'),
(24, 'Admin', 'admin', 'Send Message', '2020-02-25 09:17:57'),
(25, 'admin', 'Admin', 'Send Feedback', '2020-02-25 09:18:01'),
(26, 'admin', 'Admin', 'Send Feedback', '2020-02-26 11:41:32'),
(27, 'user1@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:32:52'),
(28, 'user2@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:37:28'),
(29, 'user3@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:42:11'),
(30, 'user3@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:42:54'),
(31, 'user4@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:46:40'),
(32, 'user5@gmail.com', 'Admin', 'Create Account', '2020-02-27 14:48:48'),
(33, 'admin', 'Admin', 'Send Feedback', '2020-02-28 02:44:48'),
(34, 'Admin', 'admin', 'Send Message', '2020-02-28 02:45:24'),
(35, 'admin', 'Admin', 'Send Feedback', '2020-02-28 02:45:31'),
(36, 'user123@gmail.com', 'Admin', 'Send Feedback', '2020-02-28 02:46:39'),
(37, 'Admin', 'user123@gmail.com', 'Send Message', '2020-02-28 02:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `social_work`
--

CREATE TABLE `social_work` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_work`
--

INSERT INTO `social_work` (`Id`, `title`, `description`, `path`) VALUES
(1, '', '', 'clean.jpg'),
(2, '', '', 'clean2.jpg'),
(3, '', '', 'food.jpg'),
(4, '', '', 'IMG_20200111_203030_000.jpg'),
(5, '', '', 'IMG_20200202_123239_872.jpg'),
(6, '', '', 'IMG_20200202_123244_880.jpg'),
(7, '', '', 'main.jpg'),
(8, '', '', 'plant.jpg'),
(9, '', '', 'plant2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`Id`, `title`, `description`, `path`) VALUES
(1, '', '', 'a.jpg'),
(3, '', '', 'b.jpg'),
(6, '', '', 'a.jpg'),
(7, '', '', 'b.jpg'),
(8, '', '', 'c.jpg'),
(9, '', '', 'd.jpg'),
(10, '', '', 'e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `status`) VALUES
(1, 'user', 'user123@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', 'Female', '9988877665', 'Student', 'img.jpg', 1),
(20, 'user4', 'user4@gmail.com', '93b1ad3cfaeb254ea3c68ee7ea23c582', 'Male', '9922334455', 'asfdsf', '', 1),
(21, 'user5', 'user5@gmail.com', '0bbf349b0c07a1777892a8d13937571e', 'Male', '1122334455', 'adadfads', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `celebration`
--
ALTER TABLE `celebration`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deleteduser`
--
ALTER TABLE `deleteduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_work`
--
ALTER TABLE `social_work`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `celebration`
--
ALTER TABLE `celebration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deleteduser`
--
ALTER TABLE `deleteduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `social_work`
--
ALTER TABLE `social_work`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `society`
--
ALTER TABLE `society`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
