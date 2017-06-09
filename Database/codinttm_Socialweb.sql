-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2017 at 02:16 PM
-- Server version: 5.6.31-77.0-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codinttm_Socialweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `datemade` datetime NOT NULL,
  `accepted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user1_id` (`user1_id`),
  KEY `user2_id` (`user2_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user1_id`, `user2_id`, `datemade`, `accepted`) VALUES
(1, 15, 16, '2017-05-13 00:59:46', '1'),
(2, 15, 17, '2017-05-13 00:59:59', '1'),
(3, 15, 18, '2017-05-13 04:40:21', '1'),
(4, 15, 19, '2017-05-13 04:47:13', '1'),
(5, 15, 21, '2017-05-13 05:09:14', '1'),
(6, 15, 23, '2017-05-13 06:17:19', '1'),
(7, 15, 28, '2017-05-13 13:22:20', '1'),
(8, 29, 15, '2017-05-13 13:53:41', '1'),
(9, 33, 15, '2017-05-14 07:21:31', '1'),
(10, 15, 27, '2017-05-14 08:51:10', '0'),
(11, 34, 15, '2017-05-15 03:08:18', '1'),
(12, 35, 15, '2017-05-15 05:20:05', '1'),
(13, 36, 15, '2017-05-15 09:47:54', '1'),
(14, 37, 15, '2017-05-15 13:50:39', '1'),
(15, 39, 15, '2017-05-16 13:15:16', '1'),
(16, 40, 15, '2017-05-16 16:06:58', '1'),
(17, 42, 15, '2017-05-17 11:03:09', '1'),
(18, 43, 15, '2017-05-17 15:37:17', '1'),
(19, 44, 15, '2017-05-17 21:46:24', '1'),
(20, 45, 15, '2017-05-18 02:49:38', '1'),
(21, 46, 15, '2017-05-18 14:55:11', '1'),
(22, 47, 15, '2017-05-19 01:36:50', '1'),
(23, 48, 15, '2017-05-20 17:07:22', '1'),
(24, 49, 15, '2017-05-21 23:54:02', '1'),
(25, 50, 15, '2017-05-22 03:04:32', '1'),
(26, 51, 15, '2017-05-22 22:02:30', '1'),
(27, 54, 15, '2017-05-23 06:00:11', '1'),
(28, 56, 15, '2017-05-24 07:20:50', '1'),
(29, 57, 15, '2017-05-24 15:36:48', '1'),
(30, 58, 15, '2017-05-25 06:53:32', '1'),
(31, 60, 15, '2017-05-26 02:21:47', '1'),
(32, 61, 15, '2017-05-27 05:36:30', '1'),
(33, 62, 15, '2017-05-30 01:45:55', '1'),
(34, 63, 15, '2017-05-31 16:52:10', '1'),
(35, 64, 15, '2017-06-05 06:24:01', '1'),
(36, 65, 15, '2017-06-07 17:50:04', '1'),
(37, 66, 15, '2017-06-08 00:08:51', '1'),
(38, 67, 15, '2017-06-09 07:49:08', '1');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `liker_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `liker_id` (`liker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `liker_id`, `status_id`) VALUES
(3, 15, 1),
(31, 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `initiator_id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `did_read` enum('0','1') NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `initiator_id` (`initiator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `initiator_id`, `app`, `note`, `did_read`, `date_time`, `status_id`) VALUES
(1, 15, 19, 'Accepted Request', 'juanjose accepted your friend request:<br /><a href="user.php?u=juanjose">Say something to juanjose</a>', '1', '2017-05-13 04:50:41', NULL),
(2, 15, 28, 'Accepted Request', 'alok accepted your friend request:<br /><a href="user.php?u=alok">Say something to alok</a>', '1', '2017-05-13 13:24:24', NULL),
(4, 29, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(5, 16, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(6, 18, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(7, 19, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(8, 21, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(9, 23, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(10, 28, 15, 'Status Post', 'RHNyOWRr', '0', '2017-05-13 13:56:30', 9),
(11, 29, 15, 'Status Post', 'RHNyMTBkaw', '1', '2017-05-13 13:57:37', 10),
(12, 16, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(13, 18, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(14, 19, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(15, 21, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(16, 23, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(17, 28, 15, 'Status Post', 'RHNyMTBkaw', '0', '2017-05-13 13:57:37', 10),
(19, 15, 42, 'Status Reply', 'RHNyM2Rr', '1', '2017-05-17 11:07:14', NULL),
(20, 42, 15, 'Status Reply', 'RHNyM2Rr', '0', '2017-05-17 14:17:13', NULL),
(21, 15, 47, 'Status Post', 'RHNyMTRkaw', '1', '2017-05-19 02:12:16', 14),
(22, 47, 15, 'Status Reply', 'RHNyMTRkaw', '0', '2017-05-19 07:14:01', NULL),
(48, 15, 62, 'Status Reply', 'RHNyM2Rr', '1', '2017-05-30 01:47:19', NULL),
(49, 42, 62, 'Status Reply', 'RHNyM2Rr', '0', '2017-05-30 01:47:19', NULL),
(50, 15, 62, 'Status Reply', 'RHNyM2Rr', '1', '2017-05-30 01:47:37', NULL),
(51, 42, 62, 'Status Reply', 'RHNyM2Rr', '0', '2017-05-30 01:47:37', NULL),
(52, 15, 17, 'Accepted Request', 'giofrak accepted your friend request:<br /><a href="user.php?u=giofrak">Say something to giofrak</a>', '1', '2017-05-30 18:21:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reporter_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reporter_id` (`reporter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `reporter_id`, `status_id`) VALUES
(1, 15, 14);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osid` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` enum('a','b','c','d') NOT NULL,
  `data` longtext NOT NULL,
  `postdate` datetime NOT NULL,
  `postimage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `osid`, `account_id`, `author_id`, `type`, `data`, `postdate`, `postimage`) VALUES
(3, 3, 15, 15, 'a', 'Simple CSS Loader #css \nhttp://codepen.io/dsr/pen/XRrwxP', '2017-05-12 15:50:23', NULL),
(4, 4, 15, 15, 'a', '<img class="img-responsive" src="permUploads/darshan1494605617.jpg" />', '2017-05-12 16:13:42', 'darshan1494605617.jpg'),
(6, 6, 15, 15, 'a', 'Funky Sidebar [ HTML   CSS ]\nhttps://codepen.io/dsr/pen/mmLqLr\nCodepen Link - https://codepen.io/dsr/pen/mmLqLr', '2017-05-13 04:28:49', NULL),
(9, 9, 15, 15, 'a', 'Paint Webapp [ p5.js ]\nhttp://codepen.io/dsr/pen/peXzyK\nCodepen link - http://codepen.io/dsr/pen/peXzyK', '2017-05-13 13:56:30', NULL),
(10, 10, 15, 15, 'a', 'Toggle Button [ CSS ]\nhttp://codepen.io/dsr/pen/ryENWx\nCodepen link - http://codepen.io/dsr/pen/ryENWx', '2017-05-13 13:57:37', NULL),
(12, 3, 42, 42, 'b', 'Very nice!!', '2017-05-17 11:07:14', NULL),
(13, 3, 15, 15, 'b', 'thanks mate', '2017-05-17 14:17:13', NULL),
(14, 14, 47, 47, 'a', 'no entiendo ahora este sitio web :S', '2017-05-19 02:12:16', NULL),
(15, 14, 15, 15, 'b', 'En este sitio web puedes publicar enlaces de c&oacute;digos, preguntar dudas, publicar trucos, etc. S&oacute;lo para codificadores', '2017-05-19 07:14:01', NULL),
(18, 3, 62, 62, 'b', 'Thats cool!', '2017-05-30 01:47:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `useroptions`
--

CREATE TABLE IF NOT EXISTS `useroptions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `background` varchar(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `userlevel` enum('a','b','c','d') NOT NULL DEFAULT 'a',
  `avatar` varchar(255) DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `signup` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `notescheck` datetime NOT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  `bio_data` mediumtext,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `gender`, `website`, `country`, `userlevel`, `avatar`, `ip`, `signup`, `lastlogin`, `notescheck`, `activated`, `bio_data`, `city`) VALUES
(15, 'darshan', 'darshan3217@gmail.com', '5c0ec6e2d6a7da137ed29cc65d9818956a60bc71', 'm', 'http://codingflag.in', NULL, 'a', '623138125892.jpg', '103.87.55.110', '2017-05-12 15:21:21', '2017-06-09 07:58:12', '2017-05-12 15:21:21', '1', 'I am not qualified for any of this.', 'Mumbai'),
(16, 'shahzad', 'shahzadwaris81@gmail.com', '6b1992eb8cf675641ccba473874f6fdae4892c71', NULL, NULL, NULL, 'a', NULL, '39.60.167.254', '2017-05-12 16:51:41', '2017-05-12 16:58:37', '2017-05-12 16:51:41', '1', NULL, NULL),
(17, 'giofrak', 'casgio.c@gmail.com', '9d4445a9a534e5a7ab90a7bb6925f008776f26ca', NULL, NULL, NULL, 'a', NULL, '190.236.73.249', '2017-05-12 20:09:10', '2017-05-30 18:20:50', '2017-05-12 20:09:10', '1', NULL, NULL),
(18, 'steven17', 'myweb017@gmail.com', 'a143e8cf75e2d37b9332ba958dace613e7c73cb1', NULL, NULL, NULL, 'a', NULL, '60.50.160.112', '2017-05-13 03:52:43', '2017-05-13 04:37:43', '2017-05-13 03:52:43', '1', NULL, NULL),
(19, 'juanjose', 'jhanjhuse@gmail.com', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', NULL, NULL, NULL, 'a', NULL, '167.0.3.235', '2017-05-13 04:40:48', '2017-05-13 04:49:14', '2017-05-13 04:40:48', '1', NULL, NULL),
(20, 'Vinit', 'dev.vinit@outlook.com', '9986e7486d616d0340a425cb89f86ddee3cd68bc', NULL, NULL, NULL, 'a', NULL, '47.29.66.211', '2017-05-13 04:51:24', '2017-05-13 04:51:24', '2017-05-13 04:51:24', '0', NULL, NULL),
(21, 'JustinG', 'justingeluzofficial@yahoo.com', '4ae41d11e2b7787dd9d17ddb842feb1844a5878b', NULL, NULL, NULL, 'a', NULL, '49.149.100.109', '2017-05-13 05:07:50', '2017-05-13 05:07:50', '2017-05-13 05:07:50', '1', NULL, NULL),
(22, 'user', 'user221user@gmail.com', '540fff0e45e46290fb994ff79a4b5692e8f89342', NULL, NULL, NULL, 'a', NULL, '47.9.189.76', '2017-05-13 05:09:27', '2017-05-13 05:09:27', '2017-05-13 05:09:27', '0', NULL, NULL),
(23, 'wellget6', 'wellget6@gmail.com', 'cc4624b1fbe6c20e5fa951ca9d3b8b42d31da19f', NULL, NULL, NULL, 'a', NULL, '123.136.151.207', '2017-05-13 06:05:25', '2017-05-13 06:05:25', '2017-05-13 06:05:25', '1', NULL, NULL),
(24, 'Raj', 'raju.panchal710@gmail.com', '977ddd13b1074450e021f2efe93f39e7e03ce006', NULL, NULL, NULL, 'a', NULL, '203.88.134.109', '2017-05-13 06:38:12', '2017-05-13 06:38:12', '2017-05-13 06:38:12', '0', NULL, NULL),
(25, 'awalimam', 'awaluzzal42@gmail.com', '9b660bf29f174712914545e615fd5e2ddf51a208', NULL, NULL, NULL, 'a', NULL, '103.198.137.253', '2017-05-13 09:04:09', '2017-05-13 09:04:09', '2017-05-13 09:04:09', '0', NULL, NULL),
(26, 'kajan', 'nagakajan@gmail.com', '9082f04afa99c86773939b006342694448029b98', NULL, NULL, NULL, 'a', NULL, '112.134.112.125', '2017-05-13 09:33:26', '2017-05-13 09:38:11', '2017-05-13 09:33:26', '1', NULL, NULL),
(27, 'ZakaCoding', 'zakanoor@outlook.co.id', 'e69363529f5f37e4b4d1c906cd2ea29ac876858b', NULL, NULL, NULL, 'a', NULL, '114.125.164.175', '2017-05-13 10:21:28', '2017-05-13 10:21:28', '2017-05-13 10:21:28', '1', NULL, NULL),
(28, 'alok', '13alokshukla@gmail.com', '0c4ffcb6ada38674d2ce31d4023a09ca9cb50433', NULL, NULL, NULL, 'a', NULL, '43.255.220.226', '2017-05-13 13:14:18', '2017-05-13 13:19:10', '2017-05-13 13:14:18', '1', NULL, NULL),
(29, 'dsr', 'darshanrajadhyaksha22@gmail.com', '5c0ec6e2d6a7da137ed29cc65d9818956a60bc71', NULL, NULL, NULL, 'a', '342845261702.png', '43.255.223.109', '2017-05-13 13:45:45', '2017-05-19 00:18:47', '2017-05-13 13:45:45', '1', NULL, NULL),
(30, 'inehosa1', 'chanix1998@gmail.com', 'dcd1b376be6ec2c03af58d14aa4ef9a9f6b8d02f', NULL, NULL, NULL, 'a', NULL, '181.49.188.5', '2017-05-13 18:45:08', '2017-05-13 18:45:08', '2017-05-13 18:45:08', '0', NULL, NULL),
(31, 'josbert', 'hernandezjosbert@gmail.com', '57505ccca939ed87adfa9432ec9ba513dd643c19', NULL, NULL, NULL, 'a', NULL, '190.78.155.234', '2017-05-13 21:02:39', '2017-05-13 21:02:39', '2017-05-13 21:02:39', '0', NULL, NULL),
(32, 'qwe', 'qwe@mail.com', '141f87be1330a105a87923f4ee6383bd7de46541', NULL, NULL, NULL, 'a', NULL, '109.172.209.63', '2017-05-14 00:27:04', '2017-05-14 00:27:04', '2017-05-14 00:27:04', '0', NULL, NULL),
(33, 'qweqweqwe', 'wh7q0@wimsg.com', '141f87be1330a105a87923f4ee6383bd7de46541', NULL, NULL, NULL, 'a', NULL, '109.172.209.63', '2017-05-14 07:21:16', '2017-05-14 07:21:39', '2017-05-14 07:21:16', '1', NULL, NULL),
(34, 'efren123', 'esbe.efre@hotmail.com', '40d43ee449c64ab3faa48add80a61016c30a4a79', NULL, NULL, NULL, 'a', NULL, '190.233.151.178', '2017-05-15 03:07:53', '2017-05-15 03:08:28', '2017-05-15 03:07:53', '1', NULL, NULL),
(35, 'maherbilal', 'maherbilal70@gmail.com', '5c774974bfbe5bd2f0a7fcba7dbb4f9c8d383b86', NULL, NULL, NULL, 'a', NULL, '39.45.55.242', '2017-05-15 05:14:30', '2017-05-29 04:31:59', '2017-05-15 05:14:30', '1', NULL, NULL),
(36, 'ZaouiAymen', 'zaoui.aymen03@gmail.com', 'd5495f929afc4ca7eab72faea0650f61eb71de52', NULL, NULL, NULL, 'a', NULL, '41.228.14.134', '2017-05-15 09:40:55', '2017-05-15 09:48:02', '2017-05-15 09:40:55', '1', NULL, NULL),
(37, 'asadujjaman', 'asadujjamanrajib@yahoo.com', 'abf0a50346e923e0cc8a8d3c5a39a24736c89547', NULL, NULL, NULL, 'a', NULL, '103.63.159.90', '2017-05-15 13:47:58', '2017-05-15 13:50:45', '2017-05-15 13:47:58', '1', NULL, NULL),
(38, 'rizwan', 'rizwanrana727@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, 'a', NULL, '111.68.104.129', '2017-05-16 04:18:34', '2017-05-16 04:38:40', '2017-05-16 04:18:34', '0', NULL, NULL),
(39, 'aj160', 'ahsan-jamal@hotmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', NULL, NULL, NULL, 'a', NULL, '42.201.248.146', '2017-05-16 13:14:55', '2017-05-16 13:15:24', '2017-05-16 13:14:55', '1', NULL, NULL),
(40, 'rolas91', 'rsanchezbaltodano@gmail.com', 'e801bacc977257a802949583bdcd5de76a6620c7', NULL, NULL, NULL, 'a', NULL, '64.71.171.84', '2017-05-16 15:55:55', '2017-05-16 16:07:23', '2017-05-16 15:55:55', '1', NULL, NULL),
(41, 'edias', 'edu16rodriguesdias@hotmail.com', 'a5e25e2a03824068b60d1f8b69411565af8f0464', NULL, NULL, NULL, 'a', NULL, '187.108.33.246', '2017-05-17 10:37:30', '2017-05-17 10:37:30', '2017-05-17 10:37:30', '0', NULL, NULL),
(42, 'ediaS1812', 'edu16rodrigues@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, 'a', NULL, '187.108.33.246', '2017-05-17 10:48:02', '2017-05-17 11:05:52', '2017-05-17 10:48:02', '1', NULL, NULL),
(43, 'RamonAdriano', 'ramonomar151878@gmail.com', '88bce84a0e5d220c8787712bb7cd818319c3eaab', NULL, NULL, NULL, 'a', NULL, '189.204.113.115', '2017-05-17 15:33:00', '2017-05-17 15:36:32', '2017-05-17 15:33:00', '1', NULL, NULL),
(44, 'EkZa', 'ekza97@gmail.com', '74471feaafbbe479927a3744c6062917bb199f89', NULL, NULL, NULL, 'a', NULL, '125.162.245.192', '2017-05-17 21:41:44', '2017-05-17 21:46:46', '2017-05-17 21:41:44', '1', NULL, NULL),
(45, 'theoneaboveall', 'jaysoncleofas22@gmail.com', 'b1bbae47d368b0858840f502687095550d3cdb60', NULL, NULL, NULL, 'a', NULL, '112.198.72.163', '2017-05-18 02:33:05', '2017-05-18 02:49:57', '2017-05-18 02:33:05', '1', NULL, NULL),
(46, 'mangao05', 'mangao_jeric@yahoo.com', 'b2df5845a5e8376f4a6e87b396440224915fc838', NULL, NULL, NULL, 'a', NULL, '121.54.32.173', '2017-05-18 14:44:21', '2017-05-18 14:57:26', '2017-05-18 14:44:21', '1', NULL, NULL),
(47, 'avancini1', 'vanciniap@gmail.com', '9828cc454d436a1c36e122f64500d3c9da982345', NULL, NULL, NULL, 'a', NULL, '190.206.176.47', '2017-05-18 22:58:42', '2017-05-19 02:06:33', '2017-05-18 22:58:42', '1', NULL, NULL),
(48, 'gveriello', 'qdg99098@tipsb.com', '1dbfdcc77df30e10a4acfb6629260bbb1b0b6f03', NULL, NULL, NULL, 'a', NULL, '87.7.58.99', '2017-05-20 17:06:58', '2017-05-20 17:09:13', '2017-05-20 17:06:58', '1', NULL, NULL),
(49, 'fgelsano', 'fgelsano.virus@gmail.com', '8473dd1dfb6e3187c82760baccab53be9d6c4f99', NULL, NULL, NULL, 'a', NULL, '180.190.204.83', '2017-05-21 13:50:49', '2017-05-22 04:13:37', '2017-05-21 13:50:49', '1', NULL, NULL),
(50, 'abbycbcngn', 'marianabigail.cabacungan@benilde.edu.ph', '9ff8b6652a81d324a55cde1b940c9f92ede1d0ec', NULL, NULL, NULL, 'a', NULL, '124.83.99.142', '2017-05-22 03:03:41', '2017-05-22 03:04:52', '2017-05-22 03:03:41', '1', NULL, NULL),
(51, 'alexlhc906', 'luisstation@hotmail.com', '02a5c465ff8050104c39ca692f824182c9143a00', NULL, NULL, NULL, 'a', NULL, '200.66.94.162', '2017-05-22 22:02:09', '2017-05-22 22:03:07', '2017-05-22 22:02:09', '1', NULL, NULL),
(52, 'darshana', 'darshanr562@gmail.com', '9c0e69c50937bcb57978a4c8fe64bda4905269d2', NULL, NULL, NULL, 'a', NULL, '43.255.223.109', '2017-05-23 03:31:15', '2017-05-23 03:31:15', '2017-05-23 03:31:15', '0', NULL, NULL),
(53, 'daa', 'dsrdkkdsrdkkk32123423@gmaila.cc', '20eabe5d64b0e216796e834f52d61fd0b70332fc', NULL, NULL, NULL, 'a', NULL, '43.255.223.109', '2017-05-23 03:32:57', '2017-05-23 03:32:57', '2017-05-23 03:32:57', '0', NULL, NULL),
(54, 'djrcsanvictores', 'rcsnvctrs@gmail.com', 'd0a3fe7df70929e0922b3ef23b22eed2b6cfbe0d', NULL, NULL, NULL, 'a', NULL, '180.191.151.242', '2017-05-23 05:54:46', '2017-05-23 06:01:02', '2017-05-23 05:54:46', '1', NULL, NULL),
(55, 'Akshay', 'Sawantakshay08@gmail.Com', 'a79b30a5ff81460be50db86109358126ac6a597f', NULL, NULL, NULL, 'a', NULL, '49.128.160.54', '2017-05-24 06:27:04', '2017-05-24 16:29:42', '2017-05-24 06:27:04', '0', NULL, NULL),
(56, 'Imdk', 'darshanraja32@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, 'a', NULL, '43.255.223.48', '2017-05-24 06:53:14', '2017-05-24 07:21:19', '2017-05-24 06:53:14', '1', NULL, NULL),
(57, 'johnaustingeluz', 'justingeluzofficial@gmail.com', '4ae41d11e2b7787dd9d17ddb842feb1844a5878b', NULL, NULL, NULL, 'a', NULL, '49.146.146.221', '2017-05-24 15:31:13', '2017-05-24 15:31:13', '2017-05-24 15:31:13', '1', NULL, NULL),
(58, 'waqas4978', 'm.waqas4978@gmail.com', '7b6ee52ad59e2f5351b67857afe34b3c52c0e3ce', NULL, NULL, NULL, 'a', NULL, '39.46.231.200', '2017-05-25 06:48:30', '2017-05-25 06:54:12', '2017-05-25 06:48:30', '1', NULL, NULL),
(59, 'kapilthakur1496', 'kapil.thakur1496@gmail.com', '5139d91bde5a89373c53175c91a1cc5e906eae18', NULL, NULL, NULL, 'a', NULL, '49.207.53.59', '2017-05-25 18:08:27', '2017-05-25 18:13:40', '2017-05-25 18:08:27', '0', NULL, NULL),
(60, 'john', 'johnwick12@outlook.es', '26671fe93677348b4c36cb220b7ce1123d5ed336', NULL, NULL, NULL, 'a', NULL, '190.212.159.51', '2017-05-26 02:21:13', '2017-05-26 02:22:08', '2017-05-26 02:21:13', '1', NULL, NULL),
(61, 'Nitishnce', 'nitisharyan93@gmail.com', 'f16684fe75e12b7b09318014b3d28c180ba744b7', NULL, NULL, NULL, 'a', NULL, '101.63.19.147', '2017-05-27 05:29:51', '2017-05-29 17:04:48', '2017-05-27 05:29:51', '1', NULL, NULL),
(62, 'jonjie0317', 'jonjie17@outlook.com', '371d128addebe293d35ed12f6b3dcf7cfc7614fc', NULL, NULL, NULL, 'a', NULL, '122.54.119.169', '2017-05-30 01:44:14', '2017-05-30 01:46:12', '2017-05-30 01:44:14', '1', NULL, NULL),
(63, 'rats5200', 'tiwiinzo.07@gmail.com', 'c519356fef37e55897de4228f5b1407d2e9ed053', NULL, NULL, NULL, 'a', NULL, '179.7.94.65', '2017-05-31 16:45:20', '2017-05-31 16:50:24', '2017-05-31 16:45:20', '1', NULL, NULL),
(64, 'ibrahim69', 'nuzulianuzul@gmail.com', 'a765fd044fa7fd99a7b2d7c809e2363b778d4b56', NULL, NULL, NULL, 'a', NULL, '125.166.231.223', '2017-06-05 06:22:54', '2017-06-05 06:24:18', '2017-06-05 06:22:54', '1', NULL, NULL),
(65, 'giiacommo', 'edwin15_94@hotmail.com', 'd59db0f483ff44ce188f8d19830fd4e9b1413d24', NULL, NULL, NULL, 'a', NULL, '177.238.251.25', '2017-06-07 17:49:20', '2017-06-07 18:07:09', '2017-06-07 17:49:20', '1', NULL, NULL),
(66, 'deadsans', 'yuossef96@gmail.com', '1f418775d4147d23457d5cbc2c232cf01f3e7306', NULL, NULL, NULL, 'a', NULL, '187.146.112.201', '2017-06-08 00:03:37', '2017-06-08 00:09:03', '2017-06-08 00:03:37', '1', NULL, NULL),
(67, 'masterboy', 'sanketbaviskar01@gmail.com', 'd2a9fefea7f21ecf6fb6364f5ef9cf12d706cb59', NULL, NULL, NULL, 'a', NULL, '103.76.57.123', '2017-06-09 07:44:37', '2017-06-09 07:46:47', '2017-06-09 07:44:37', '1', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`liker_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`initiator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `useroptions`
--
ALTER TABLE `useroptions`
  ADD CONSTRAINT `useroptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
