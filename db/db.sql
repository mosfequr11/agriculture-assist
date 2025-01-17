-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 04:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer_problems`
--

CREATE TABLE `farmer_problems` (
  `id` int(50) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `problem_picture` varchar(50) NOT NULL,
  `problem_details` varchar(500) NOT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_problems`
--

INSERT INTO `farmer_problems` (`id`, `farmer_id`, `problem_picture`, `problem_details`, `added`) VALUES
(10, 9, '1568524390_pic6.jpg', 'à¦§à¦¾à¦¨à§‡à¦° à¦°à§‹à¦— à¦à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à¦¾à¦° à¦•à¦¿?', '2019-09-15 11:13:10'),
(11, 9, '1568524753_pic7.jpg', 'à¦§à¦¾à¦¨à§‡à¦° à¦—à¦¾à¦›à§‡ à¦à¦‡ à¦°à¦•à¦® à¦ªà§‹à¦•à¦¾ à¦§à¦°à¦¾à¦° à¦•à¦¾à¦°à¦¨ à¦•à¦¿?', '2019-09-15 11:19:13'),
(12, 9, '1568525635_pic5.jpg', 'à¦•à¦¿ à¦§à¦°à¦¨à§‡à¦° à¦¸à¦®à¦¸à§à¦¯à¦¾?', '2019-09-15 11:33:55'),
(13, 9, '1568525740_pic4.jpg', 'à¦—à¦¾à¦›à§‡à¦° à¦ªà¦¾à¦¤à¦¾à¦° à¦à¦®à¦¨ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦° à¦•à¦¾à¦°à¦¨ à¦•à¦¿?', '2019-09-15 11:35:40'),
(14, 10, '1568525863_pic3.jpg', 'à¦ªà¦¾à¦¤à¦¾à¦° à¦®à¦§à§à¦¯à§‡ à¦ à¦¸à¦¬ à¦•à¦¿ à¦à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à¦¾à¦° à¦•à¦¿?', '2019-09-15 11:37:43'),
(16, 10, '1568526046_pic9.jpg', 'à¦à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à¦¾à¦° à¦•à¦¿?', '2019-09-15 11:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_problem_answer`
--

CREATE TABLE `farmer_problem_answer` (
  `id` int(11) NOT NULL,
  `farmer_problem_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_problem_answer`
--

INSERT INTO `farmer_problem_answer` (`id`, `farmer_problem_id`, `user_id`, `answer`, `added`) VALUES
(1, 4, 9, 'It is first answer.........', '2019-09-14 23:29:09'),
(2, 4, 9, 'It is another answer', '2019-09-14 23:38:24'),
(3, 4, 13, 'It is answer of pro 2', '2019-09-14 23:42:24'),
(4, 4, 12, 'It is answer by pro 1', '2019-09-14 23:52:30'),
(5, 6, 12, 'It is anssfasdf asdfasdf', '2019-09-14 23:52:49'),
(6, 4, 12, 'It is anoter asdfasdfasdf', '2019-09-14 23:53:09'),
(7, 10, 12, 'à¦°à§‹à¦—à§‡à¦° à¦¨à¦¾à¦®à¦ƒ à¦–à§‹à¦² à¦ªà¦à¦šà¦¾ à¦°à§‹à¦— (Sheath rot)\r\nà¦°à§‹à¦—à§‡à¦° à¦•à¦¾à¦°à¦¨à¦ƒ à¦¸à§à¦¯à¦¾à¦°à§‹à¦•à§à¦²à§‡à¦¡à¦¿à¦¯à¦¼à¦¾à¦® à¦“à¦°à¦¾à¦‡à¦œà¦¿ (Sarocladium oryzae) à¦¨à¦¾à¦®à¦• à¦›à¦¤à§à¦°à¦¾à¦• à¦¦à§à¦¬à¦¾à¦°à¦¾ à¦¹à¦¯à¦¼à§‡ à¦¥à¦¾à¦•à§‡à¥¤\r\n\r\nà¦°à§‹à¦—à§‡à¦° à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦ƒ\r\n\r\nà¦à¦Ÿà¦¾ à¦¬à§€à¦œà¦¬à¦¾à¦¹à¦¿à¦¤à¥¤ à¦°à§‹à¦—à¦¾à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¨à¦¾à¦¡à¦¼à¦¾ à¦“ à¦¬à¦¿à¦•à¦²à§à¦ª à¦ªà§‹à¦·à¦•à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦•à¦°à§‡à¥¤ à¦®à¦¾à¦œà¦°à¦¾ à¦ªà§‹à¦•à¦¾ à¦“ à¦Ÿà§à¦‚à¦°à§‹ à¦°à§‹à¦— à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦›à§‡ à¦à¦‡ à¦°à§‹à¦—à§‡à¦° à¦ªà§à¦°à¦¾à¦¦à§à¦°à§à¦­à¦¾à¦¬ à¦¬à§‡à¦¶à¦¿ à¦¹à¦¯à¦¼à¥¤à¦—à¦°à¦® à¦“ à¦¸à§à¦¯à¦¾à¦à¦¤à¦¸à§‹à¦à¦¤à§‡ à¦†à¦¬à¦¹à¦¾à¦“à¦¯à¦¼à¦¾à¦¯à¦¼ à¦ à¦°à§‹à¦— à¦¬à§ƒà¦¦à§à¦§à¦¿ à¦ªà¦¾à¦¯à¦¼à¥¤ à¦¬à§ƒà¦·à§à¦Ÿà¦¿à¦° à¦à¦¾à¦ªà¦Ÿà¦¾à¦¯à¦¼ à¦ à¦°à§‹à¦— à¦›à¦¡à¦¼à¦¾à¦¯à¦¼à¥¤à¦–à§‹à¦²à¦ªà¦à¦šà¦¾ à¦°à§‹à¦—à¦Ÿà¦¿ à¦¸à¦¬ à¦®à§Œà¦¸à§à¦®à§‡à¦‡ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à¦¯à¦¼à¥¤ à¦¸à¦¾à¦§à¦¾à¦°à¦¨à¦¤ à¦—à¦¾à¦›à§‡à¦° à¦¥à§‹à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾ à¦ à¦°à§‹à¦—à¦Ÿà¦¿à¦° à¦‰à¦ªà¦¯à§‹à¦—à§€ à¦¸à¦®à¦¯à¦¼à¥¤\r\n\r\nà¦°à§‹à¦—à§‡à¦° à¦²à¦•à§à¦·à¦£à¦ƒ\r\n\r\nà¦°à§‹à¦—à¦Ÿà¦¿ à¦•à§‹à¦¨ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¤à§‡à¦‡ à¦ªà¦¾à¦¤à¦¾à¦¯à¦¼ à¦¹à¦¯à¦¼ à¦¨à¦¾à¥¤\r\nà¦–à§‹à¦² à¦ªà¦à¦šà¦¾ à¦°à§‹à¦—à¦Ÿà¦¿ à¦¯à§‡ à¦•à§‹à¦¨ à¦–à§‹à¦²à§‡ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¤à¦¬à§‡ à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦¡à¦¿à¦— à¦ªà¦¾à¦¤à¦¾à¦° à¦–à§‹à¦² à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¹à¦²à§‡à¦‡ à¦•à§à¦·à¦¤à¦¿ à¦¹à¦¯à¦¼à§‡ à¦¥à¦¾à¦•à§‡à¥¤\r\nà¦§à¦¾à¦¨à§‡ à¦¥à§‹à¦¡à¦¼ à¦†à¦¸à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦à¦‡ à¦°à§‹à¦—à§‡à¦° à¦†à¦•à§à¦°à¦®à¦£ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à¦¯à¦¼à¥¤\r\nà¦ªà§à¦°à¦¥à¦®à§‡ à¦¶à§‡à¦· à¦ªà¦¾à¦¤à¦¾à¦° à¦–à§‹à¦²à§‡à¦° à¦‰à¦ªà¦° à¦—à§‹à¦²à¦¾à¦•à¦¾à¦° à¦¬à¦¾ à¦…à¦¨à¦¿à¦¯à¦¼à¦®à¦¿à¦¤ à¦²à¦®à§à¦¬à¦¾ à¦¦à¦¾à¦— à¦¹à¦¯à¦¼à¥¤\r\nà¦¦à¦¾à¦—à§‡à¦° à¦•à§‡à¦¨à§à¦¦à§à¦° à¦§à§‚à¦¸à¦° à¦“ à¦•à¦¿à¦¨à¦¾à¦°à¦¾ à¦¬à¦¾à¦¦à¦¾à¦®à§€ à¦°à¦‚ à¦¬à¦¾ à¦§à§‚à¦¸à¦° à¦¬à¦¾à¦¦à¦¾à¦®à§€ à¦¹à¦¯à¦¼à¥¤\r\nà¦¦à¦¾à¦—à¦—à§à¦²à§‹ à¦à¦•à¦¤à§à¦°à§‡ à¦¬à¦¡à¦¼ à¦¹à¦¯à¦¼à§‡ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦¨ à¦–à§‹à¦²à§‡à¦‡ à¦›à¦¡à¦¼à¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤\r\nà¦¥à§‹à¦¡à¦¼à§‡à¦° à¦®à§à¦– à¦¬à¦¾ à¦¶à§€à¦· à¦ªà¦à¦šà§‡ à¦¯à¦¾à¦¯à¦¼ à¦à¦¬à¦‚ à¦—à§à¦¡à¦¼à¦¾ à¦›à¦¤à§à¦°à¦¾à¦‚à¦¶ à¦–à§‹à¦²à§‡à¦° à¦­à¦¿à¦¤à¦° à¦ªà§à¦°à¦šà§à¦° à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à¦¯à¦¼à¥¤\r\nà¦°à§‹à¦—à§‡à¦° à¦†à¦•à§à¦°à¦®à¦£ à¦¬à§‡à¦¶à¦¿ à¦¹à¦²à§‡ à¦…à¦¨à§‡à¦• à¦¸à¦®à¦¯à¦¼ à¦¶à¦¿à¦· à¦†à¦‚à¦¶à¦¿à¦• à¦¬à§‡à¦° à¦¹à¦¯à¦¼ à¦¬à¦¾ à¦®à§‹à¦Ÿà§‡à¦‡ à¦¬à§‡à¦° à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¨à¦¾ à¦à¦¬à¦‚ à¦§à¦¾à¦¨ à¦•à¦¾à¦²à§‹ à¦“ à¦šà¦¿à¦Ÿà§‡ à¦¹à¦¯à¦¼à§‡ à¦¯à¦¾à¦¯à¦¼à¥¤\r\nà¦°à§‹à¦—à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à¦¾à¦°à¦ƒ\r\n\r\nà¦¸à§à¦¸à§à¦¥ à¦¬à§€à¦œ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦•à¦¾à¦°à§à¦¬à§‡à¦¨à§à¦¡à¦¾à¦œà¦¿à¦® (à¦…à¦Ÿà§‹à¦¸à§à¦Ÿà¦¿à¦¨) à¦…à¦¥à¦¬à¦¾ à¦•à¦¾à¦°à§à¦¬à§‹à¦•à§à¦¸à¦¿à¦¨ + à¦¥à¦¿à¦°à¦¾à¦® (à¦ªà§à¦°à§‹à¦­à§à¦¯à¦¾à¦•à§à¦¸ à§¨à§¦à§¦ à¦¡à¦¬à§à¦²à¦¿à¦‰à¦ªà¦¿)à¦ªà§à¦°à¦¤à¦¿ à¦•à§‡à¦œà¦¿ à¦¬à§€à¦œà§‡ à§¨.à§« à¦—à§à¦°à¦¾à¦® à¦¹à¦¾à¦°à§‡ à¦®à¦¿à¦¶à¦¿à¦¯à¦¼à§‡ à¦¶à§‹à¦§à¦¨ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦œà¦®à¦¿à¦° à¦†à¦¶à¦ªà¦¾à¦¶ à¦ªà¦°à¦¿à¦·à§à¦•à¦¾à¦° à¦°à¦¾à¦–à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦¸à§à¦·à¦® à¦¸à¦¾à¦° à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦“ à¦‡à¦‰à¦°à¦¿à¦¯à¦¼à¦¾ à¦¸à¦¾à¦° à¦•à¦® à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤à¥¤\r\nà¦ªà¦Ÿà¦¾à¦¶ à¦¸à¦¾à¦° à¦‰à¦ªà¦°à¦¿ à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦–à§‹à¦² à¦ªà¦šà¦¾ à¦¦à§‡à¦–à¦¾ à¦¦à¦¿à¦²à§‡ à¦œà¦®à¦¿à¦° à¦ªà¦¾à¦¨à¦¿ à¦¶à§à¦•à¦¿à¦¯à¦¼à§‡ à¦•à¦¿à¦›à§à¦¦à¦¿à¦¨ à¦ªà¦° à¦†à¦¬à¦¾à¦° à¦¸à§‡à¦šà§‡à¦° à¦ªà¦¾à¦¨à¦¿ à¦¦à¦¿à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦ªà§à¦°à§‹à¦ªà¦¿à¦•à§‹à¦¨à¦¾à¦œà§‹à¦² (à¦Ÿà¦¿à¦²à§à¦Ÿ à§¨à§«à§¦ à¦‡à¦¸à¦¿) à§§ à¦²à¦¿à¦Ÿà¦¾à¦° à¦ªà¦¾à¦¨à¦¿à¦¤à§‡ à§§à¦®à¦¿à¦²à¦¿ à¦¹à¦¾à¦°à§‡ à¦®à¦¿à¦¶à¦¿à¦¯à¦¼à§‡ à§§à§¦ à¦¦à¦¿à¦¨ à¦ªà¦° à¦ªà¦° à§¨-à§© à¦¬à¦¾à¦° à¦¸à§à¦ªà§à¦°à§‡ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡', '2019-09-15 11:15:42'),
(8, 11, 13, 'à¦°à§‹à¦—à§‡à¦° à¦¨à¦¾à¦®à¦ƒ à¦Ÿà§à¦‚à¦°à§‹ (Tungro)\r\nà¦…à¦¨à§‡à¦• à¦à¦²à¦¾à¦•à¦¾à§Ÿ à¦ à¦°à§‹à¦—à¦•à§‡ à¦²à§‹à¦¨à¦¾ à¦§à¦°à¦¾, à¦¬à¦¸à§‡ à¦¯à¦¾à¦“à§Ÿà¦¾, à¦²à¦¾à¦² à¦¹à§Ÿà§‡ à¦¯à¦¾à¦“à§Ÿà¦¾ à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦²à§‡ à¦‰à¦²à§à¦²à§‡à¦– à¦•à¦°à¦¾ à¦¹à§Ÿà§‡ à¦¥à¦¾à¦•à§‡à¥¤\r\n\r\nà¦°à§‹à¦—à§‡à¦° à¦•à¦¾à¦°à¦£à¦ƒ à¦°à¦¾à¦‡à¦¸ à¦Ÿà§à¦‚à¦°à§‹ à¦­à¦¾à¦‡à¦°à¦¾à¦¸ (Rice Tungro Virus) à¦¨à¦¾à¦®à¦• à¦à¦• à¦§à¦°à¦¨à§‡à¦° à¦…à¦¤à¦¿ à¦¸à§‚à¦•à§à¦·à§à¦® à¦œà§€à¦¬à¦¾à¦£à§ à¦¦à§à¦¬à¦¾à¦°à¦¾ à¦ à¦°à§‹à¦— à¦¹à§Ÿà§‡ à¦¥à¦¾à¦•à§‡à¥¤\r\n\r\nà¦°à§‹à¦—à§‡à¦° à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦ƒ\r\n\r\nà¦ à¦°à§‹à¦—à¦Ÿà¦¿ à¦†à¦‰à¦¸ à¦“ à¦†à¦®à¦¨ à¦®à§Œà¦¸à§à¦®à§‡ à¦¬à§‡à¦¶à¦¿ à¦¹à§Ÿà¥¤ à¦Ÿà§à¦‚à¦°à§‹ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦šà¦¾à¦°à¦¾ à¦°à§‹à¦ªà¦¨à§‡à¦°à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦°à§‹à¦— à¦›à§œà¦¾à§Ÿà¥¤à¦¸à¦¬à§à¦œ à¦ªà¦¾à¦¤à¦¾à¦«à§œà¦¿à¦‚ (à¦¨à§‡à¦«à§‹à¦Ÿà§‡à¦Ÿà¦¿à¦•à¦¸ à¦­à¦¾à¦‡à¦°à§‡à¦¸à§‡à¦¨à§à¦¸), à¦†à¦¶à§‡à¦ªà¦¾à¦¶à§‡ à¦¸à§à¦¬à§‡à¦šà§à¦›à¦¾à§Ÿ à¦—à¦œà¦¾à¦¨à§‹ à¦°à§‹à¦—à¦¾à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦›, à¦¬à¦¾à¦“à§Ÿà¦¾ à¦§à¦¾à¦¨ à¦¬à¦¾ à¦˜à¦¾à¦¸à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡à¦à¦‡ à¦­à¦¾à¦‡à¦°à¦¾à¦¸ à¦›à§œà¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à§‡à¥¤ à¦¬à¦¾à¦¹à¦• à¦ªà§‹à¦•à¦¾ à¦†à¦•à§à¦°à¦¨à§à¦¤ à¦—à¦¾à¦› à¦¥à§‡à¦•à§‡ à§¨-à§© à¦®à¦¿à¦¨à¦¿à¦Ÿ à¦•à¦¾à¦² à¦°à¦¸ à¦¶à§‹à¦·à¦£ à¦•à¦°à§‡à¦‡ à¦­à¦¾à¦‡à¦°à¦¾à¦¸ à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦à¦¬à¦‚ à¦¤à¦¾ à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à§¨-à§© à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦¸à§à¦¸à§à¦¥ à¦—à¦¾à¦›à§‡ à¦°à¦¸ à¦¶à§‹à¦·à¦£ à¦•à¦¾à¦²à§‡ à¦¸à¦‚à¦•à§à¦°à¦®à¦£ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤ à¦«à¦²à§‡ à¦¸à§à¦¸à§à¦¥ à¦—à¦¾à¦›à¦Ÿà¦¿à¦¤à§‡à¦“ à§¨-à§© à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦®à¦§à§à¦¯à§‡à¦‡ à¦°à§‹à¦—à§‡à¦° à¦²à¦•à§à¦·à¦£ à¦ªà§à¦°à¦•à¦¾à¦¶ à¦ªà¦¾à§Ÿà¥¤\r\n\r\n à¦°à§‹à¦—à§‡à¦° à¦²à¦•à§à¦·à¦£à¦ƒ\r\n\r\nà¦Ÿà§à¦‚à¦°à§‹ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦›à§‡à¦° à¦ªà¦¾à¦¤à¦¾à§Ÿ à¦ªà§à¦°à¦¾à¦¥à¦®à¦¿à¦• à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦²à¦®à§à¦¬à¦¾à¦²à¦®à§à¦¬à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à¦¿à¦°à¦¾ à¦¬à¦°à¦¾à¦¬à¦° à¦¹à¦¾à¦²à¦•à¦¾ à¦¸à¦¬à§à¦œ à¦“ à¦¹à¦¾à¦²à¦•à¦¾ à¦¹à¦²à¦¦à§‡ à¦°à§‡à¦–à¦¾ à¦¦à§‡à¦–à¦¾ à¦¦à§‡à§Ÿà¥¤\r\nà¦ªà¦°à§‡ à¦†à¦¸à§à¦¤à§‡ à¦†à¦¸à§à¦¤à§‡ à¦¸à¦®à¦¸à§à¦¤ à¦ªà¦¾à¦¤à¦¾à¦Ÿà¦¾à¦‡ à¦¹à¦²à¦¦à§‡ à¦¬à¦¾ à¦•à¦®à¦²à¦¾ à¦¹à¦²à¦¦à§‡ à¦°à¦‚ à¦§à¦¾à¦°à¦¨ à¦•à¦°à§‡à¥¤\r\nà¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦•à¦šà¦¿ à¦ªà¦¾à¦¤à¦¾ à¦¹à¦¾à¦²à¦•à¦¾ à¦°à¦‚à§Ÿà§‡à¦° à¦¹à§Ÿ à¦à¦¬à¦‚ à¦®à§à¦šà§œà§‡ à¦¯à¦¾à§Ÿà¥¤\r\nà¦šà¦¾à¦°à¦¾/à¦•à§à¦¶à¦¿ à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¹à¦²à§‡ à¦¸à§à¦¸à§à¦¥à§à¦¯ à¦—à¦¾à¦›à§‡à¦° à¦¤à§à¦²à¦¨à¦¾à§Ÿ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦› à¦¬à§‡à¦¶à§€ à¦–à¦¾à¦Ÿà§‹ à¦¹à§Ÿ à¦•à¦¿à¦¨à§à¦¤à§ à¦¬à§Ÿà¦¸à§à¦• à¦—à¦¾à¦›à§‡ à¦¹à¦²à§‡ à¦¤à¦¤à§‹à¦Ÿà¦¾ à¦–à¦¾à¦Ÿà§‹ à¦¹à§Ÿ à¦¨à¦¾à¥¤\r\nà¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦› à¦¦à§à¦°à§à¦¬à¦² à¦¹à§Ÿà§‡ à¦¯à¦¾à§Ÿ, à¦•à§à¦¶à¦¿ à¦•à¦® à¦¹à§Ÿ à¦à¦¬à¦‚ à¦¶à¦¿à¦•à§œ à¦¦à§à¦°à§à¦¬à¦² à¦¹à§Ÿà§‡ à¦ªà§œà§‡à¥¤\r\nà¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦ªà¦¾à¦¤à¦¾à¦—à§à¦²à§‹ à¦­à§‚à¦®à¦¿à¦° à¦¦à¦¿à¦•à§‡ à¦¨à§à§Ÿà§‡ à¦ªà§œà§‡à¥¤\r\nà¦°à§‹à¦—à¦¾à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦› à¦§à¦¾à¦¨ à¦ªà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦¬à¦¾à¦à¦šà¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¤à¦¬à§‡ à¦†à¦•à§à¦°à¦®à¦£à§‡à¦° à¦®à¦¾à¦¤à§à¦°à¦¾ à¦¤à§€à¦¬à§à¦° à¦¹à¦²à§‡ à¦—à¦¾à¦›à¦—à§à¦²à¦¿ à¦¶à§à¦•à¦¿à§Ÿà§‡ à¦®à¦°à¦¾à¦° à¦®à¦¤ à¦¹à§Ÿà§‡ à¦¯à¦¾à§Ÿà¥¤\r\nà¦¹à¦¾à¦²à¦•à¦¾à¦­à¦¾à¦¬à§‡ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦› à¦¬à§‡à¦à¦šà§‡ à¦¥à¦¾à¦•à§‡, à¦¤à¦¬à§‡ à¦¤à¦¾à¦¤à§‡  à¦•à¦¿à¦›à§à¦Ÿà¦¾ à¦¦à§‡à¦°à§€à¦¤à§‡ à¦«à§à¦² à¦†à¦¸à§‡ à¦à¦¬à¦‚ à¦«à¦²à¦¨ à¦…à¦¨à§‡à¦• à¦•à¦® à¦¹à§Ÿà¥¤\r\n\r\n\r\nà¦°à§‹à¦—à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦•à¦¾à¦°à¦ƒ\r\n\r\nà¦°à§‹à¦— à¦ªà§à¦°à¦¤à¦¿à¦°à§‹à¦§à§€ à¦œà¦¾à¦¤à§‡à¦° à¦šà¦¾à¦· à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦¹à¦¾à¦¤ à¦œà¦¾à¦² à¦¦à¦¿à§Ÿà§‡ à¦¸à¦¬à§à¦œ à¦ªà¦¾à¦¤à¦¾à¦«à§œà¦¿à¦‚ à¦§à¦°à§‡ à¦®à§‡à¦°à§‡ à¦«à§‡à¦²à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦Ÿà§à¦‚à¦°à§‹ à¦†à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦œà¦®à¦¿à¦° à¦†à¦¶à§‡ à¦ªà¦¾à¦¶à§‡ à¦¬à§€à¦œà¦¤à¦²à¦¾ à¦•à¦°à¦¾ à¦¥à§‡à¦•à§‡ à¦¬à¦¿à¦°à¦¤ à¦¥à¦¾à¦•à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦°à§‹à¦—à¦¾à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦—à¦¾à¦›,à¦¬à¦¾à¦“à§Ÿà¦¾ à¦§à¦¾à¦¨ à¦à¦¬à¦‚ à¦†à§œà¦¾à¦²à§€ à¦˜à¦¾à¦¸ à¦¦à¦®à¦¨ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦†à¦²à§‹à¦• à¦«à¦¾à¦à¦¦ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡ à¦¸à¦¬à§à¦œ à¦ªà¦¾à¦¤à¦¾à¦«à§œà¦¿à¦‚ à¦®à§‡à¦°à§‡ à¦«à§‡à¦²à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦œà¦®à¦¿à¦¤à§‡ à¦¬à¦¾à¦à¦¶à§‡à¦° à¦•à¦žà§à¦šà¦¿ à¦ªà§à¦¤à§‡ à¦ªà¦¾à¦°à§à¦šà¦¿à¦‚ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦¬à¦¾à¦¹à¦• à¦ªà§‹à¦•à¦¾ à¦¦à¦®à¦¨à§‡à¦° à¦œà¦¨à§à¦¯ à¦‡à¦®à¦¿à¦¡à¦¾à¦•à§à¦²à§‹à¦°à§‹à¦ªà¦¿à¦¡ (à¦…à§à¦¯à¦¾à¦¡à¦®à¦¾à§Ÿà¦¾à¦°/à¦‡à¦®à¦¿à¦Ÿà¦¾à¦«) à§¦.à§« à¦®à¦¿à¦²à¦¿/à¦²à¦¿à¦Ÿà¦¾à¦° à¦…à¦¥à¦¬à¦¾ à¦¡à¦¾à§Ÿà¦¾à¦œà¦¿à¦¨à¦¨ (à§¬à§¦ à¦¤à¦°à¦²) à§§.à§« à¦®à¦¿à¦²à¦¿/à¦²à¦¿à¦Ÿà¦¾à¦° à¦¹à¦¾à¦°à§‡ à¦ªà¦¾à¦¨à¦¿à¦¤à§‡ à¦®à¦¿à¦¶à¦¿à§Ÿà§‡ à¦¸à§à¦ªà§à¦°à§‡ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\n', '2019-09-15 11:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `contact`, `address`, `username`, `password`, `user_type`) VALUES
(8, 'rahim', 1318907710, 'rangpur', 'rah', '827ccb0eea8a706c4c34a16891f84e7b', 'farmer'),
(9, 'Test Farmer', 1318907710, 'kazipara', 'test_farmer', 'e10adc3949ba59abbe56e057f20f883e', 'farmer'),
(10, 'Test Farmer 2', 1712581191, 'dhaka', 'test_farmer2', 'e10adc3949ba59abbe56e057f20f883e', 'farmer'),
(11, 'soikat', 1712581191, 'kazipara', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'Admin'),
(12, 'shishir', 1318907710, 'rangpur', 'pro1', 'e10adc3949ba59abbe56e057f20f883e', 'Professor'),
(13, 'Test Professor 2', 1318907710, 'mirpur', 'pro2', 'e10adc3949ba59abbe56e057f20f883e', 'Professor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmer_problems`
--
ALTER TABLE `farmer_problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_problem_answer`
--
ALTER TABLE `farmer_problem_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmer_problems`
--
ALTER TABLE `farmer_problems`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `farmer_problem_answer`
--
ALTER TABLE `farmer_problem_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
