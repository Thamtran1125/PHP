-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2015 at 09:00 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `publish` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `publish`) VALUES
(8, NULL, NULL, NULL, 'BÃ n Äƒn', 0),
(9, NULL, NULL, NULL, 'BÃ n gáº¥p', 0),
(10, NULL, NULL, NULL, 'BÃ n gháº¿ phÃ²ng khÃ¡ch', 0),
(11, NULL, NULL, NULL, 'BÃ n há»c sinh', 0),
(12, NULL, NULL, NULL, 'BÃ n trang Ä‘iá»ƒm', 0),
(13, NULL, NULL, NULL, 'Cáº§u thang ', 0),
(14, NULL, NULL, NULL, 'Cá»­a gá»—', 0),
(15, NULL, NULL, NULL, 'GiÆ°á»ng ngá»§', 0),
(16, NULL, NULL, NULL, 'Ká»‡ sÃ¡ch - GiÃ¡ sÃ¡ch', 0),
(17, NULL, NULL, NULL, 'Ká»‡ tivi', 0),
(18, NULL, NULL, NULL, 'Tá»§ báº¿p', 0),
(19, NULL, NULL, NULL, 'Tá»§ giÃ y dÃ©p', 0),
(20, NULL, NULL, NULL, 'Tá»§ quáº§n Ã¡o', 0),
(21, NULL, NULL, NULL, 'Tá»§ thá» - BÃ n thá»', 0),
(22, NULL, NULL, NULL, 'Tá»§ Ä‘áº§u giÆ°á»ng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `readed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `fullname`, `email`, `phone`, `address`, `content`, `created`, `readed`) VALUES
(1, 'mua Ä‘á»“', 'Tráº§n Thá»‹ Má»¹ Háº¡nh', 'Hanh@gmail.com', '01684556451', '152/21 LÃ½ tá»± trá»ng', '<p>Muá»‘n Ä‘áº·t b&agrave;n Äƒn cá»¡ lá»›n</p>', '2015-12-06 03:52:40', 0),
(5, '', 'TÃ½', 'Ty@gmail.com', '01689564551', 'Mai LÃ£o Báº¡ng', '<p>Äáº·t giÆ°á»ng ngá»§ lá»›n</p>', '2015-12-06 04:20:14', NULL),
(6, '', 'hanh', 'Hanh@gmail.com', '01656656509', 'Ly Tu Trong', '<p>Ä‘áº·t h&agrave;ng</p>', '2015-12-08 10:38:34', NULL),
(7, '', 'hoai', 'hoai@gmail.com', '0989654587', 'Ã”ng Ã­ch KhiÃªm', '<p>sfsdfsdf</p>', '2015-12-08 12:12:15', NULL),
(8, '', 'qqeqe', '1@gmail.com', '1111111111', '14414', '<p>1414141414</p>', '2015-12-08 12:15:23', NULL),
(9, '', '1414', '1@gmail.com', '11111111111', '112', '<p>124141</p>', '2015-12-08 12:17:10', NULL),
(10, '', '1414', '1@gmail.com', '11111111111', '112', '<p>124141</p>', '2015-12-08 12:17:28', NULL),
(11, '', '1414', '1@gmail.com', '11111111111', '112', '<p>124141</p>', '2015-12-08 12:20:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `slide` tinyint(1) DEFAULT NULL,
  `advertisement` tinyint(1) DEFAULT NULL,
  `parner` tinyint(1) DEFAULT NULL,
  `publish` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `description`, `image`, `slide`, `advertisement`, `parner`, `publish`) VALUES
(2, 'show', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(3, 'show1', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(4, 'show2', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(5, 'show3', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(6, 'show4', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(7, 'show5', '<p>Äáº¹p</p>', '', 1, 0, 0, 0),
(8, 'show6', '<p>Äáº¹p</p>', '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `vip` tinyint(1) DEFAULT NULL,
  `promotion` varchar(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `image`, `price`, `description`, `vip`, `promotion`, `category_id`) VALUES
(4, 'KE11', 'Ká»‡ giÃ y BHC2', 'KE12.jpg', '2000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 19),
(9, 'TV123', 'Ká»‡ tivi HCD1', 'KTV56.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'KhÃ´ng', 17),
(10, 'TD123', 'BÃ n trang Ä‘iá»ƒm HCD1', 'btrangdiem.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 12),
(11, 'BHS123', 'BÃ n há»c sinh HCD1', 'bhs1.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'KhÃ´ng', 11),
(12, 'BT123', 'Tá»§ bÃ n thá» HCD1', 'tbantho.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'KhÃ´ng', 21),
(13, 'TB321', 'Tá»§ báº¿p BSB1', 'tbep.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'KhÃ´ng', 18),
(14, 'BG321', 'BÃ n gáº¥p BSB1', 'BG78.JPG', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 9),
(15, 'BA321', 'BÃ n Äƒn BSB1', '4.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 8),
(16, 'TDG321', 'Tá»§ Ä‘áº§u giÆ°á»ng BSB1', 'TDG54.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'KhÃ´ng', 22),
(17, 'TGD321', 'Tá»§ giÃ y dÃ©p BSB1', 'KGD43.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 19),
(18, 'BA', 'BÃ n Äƒn BA2', '5.jpg', '1500000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, 'CÃ³', 8),
(19, 'CDBN', 'BÃ n gháº¿ phÃ²ng khÃ¡ch', 'banghe1.jpg', '1000000', '<p>Sang trá»ng v&agrave; th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, 'KhÃ´ng', 10),
(20, 'GI2', 'GiÆ°á»ng GN2', 'd.jpg', '2500000', '<p>Sang trá»ng, th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, '', 15),
(21, 'TUA1', 'Tá»§ Ã¡o quáº§n', 'tu.jpg', '3500000', '<p>Sang trá»ng, th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 0, '', 20),
(22, 'TUA2', 'Tá»§ Ã¡o quáº§n TUA2', 'tu1.jpg', '400000', '<p>Sang trá»ng, th&acirc;n thiá»‡n vá»›i m&ocirc;i trÆ°á»ng</p>', 1, '', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'hoangty1403', 'khongcodau'),
(2, '136514231', '123451451');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
