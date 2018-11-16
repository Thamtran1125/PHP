-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2015 at 03:15 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant3`
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
  `publish` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `publish`) VALUES
(4, NULL, NULL, NULL, 'áº¨m thá»±c ÄÃ  Náºµng', 0),
(5, NULL, NULL, NULL, 'áº¨m thá»±c miá»n báº¯c', 0),
(6, NULL, NULL, NULL, 'Háº£i sáº£n ná»•i tiáº¿ng', 0),
(7, NULL, NULL, NULL, 'áº¨m thá»±c miá»n trung', 0),
(8, NULL, NULL, NULL, 'CÆ¡m vÄƒn phÃ²ng', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `fullname`, `email`, `phone`, `address`, `content`, `created`, `readed`) VALUES
(1, '', 'Ãªt', 'cuongcoi749@gmail.com', 'táº»t', 'Ãªtrt', '<p>tráº»t</p>', '2015-12-08 10:10:13', NULL),
(2, '', 'Äinh Viáº¿t CÆ°Æ¡ng', 'cuongcoi749@gmail.com', '01663501123', '', '<p>N&oacute; ráº¥t ngon Ä‘áº¥y</p>', '2015-12-08 12:19:49', NULL),
(3, '', 'Äinh Viáº¿t CÆ°Æ¡ng', 'cuongcoi749@gmail.com', '01663501123', '', '<p>Ngon ngon</p>', '2015-12-08 12:55:32', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `description`, `image`, `slide`, `advertisement`, `parner`, `publish`) VALUES
(32, 'HÃ¬nh 1', 'ÄÃ¢y lÃ  má»™t trong nhá»¯ng mÃ³n Äƒn ngon má»›i xuáº¥t hiá»‡n', 'qc1.jpg', 0, 1, 0, 0),
(33, 'HÃ¬nh 2', 'Há»— trá»£ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch', 'qc2.jpg', 0, 1, 0, 0),
(34, 'HÃ¬nh 3', 'KhÃ´ng nÃªn bá» lá»¡ khi ghÃ© nhÃ  hÃ ng chÃºng tÃ´i', 'qc3.jpg', 0, 1, 0, 0),
(39, 'sl2', 'Ä‘áº¹p', 'l.jpg', 1, 0, 0, 0),
(40, 'sl3', 'Äáº¹p', 'z.jpg', 1, 0, 0, 0),
(41, 'sl4', 'Äáº¹p', 'c.jpg', 1, 0, 0, 0),
(42, 'sl5', 'Äáº¹p', 'j.jpg', 1, 0, 0, 0),
(54, '4', 'mon ngay mai', 'images.jpg', 0, 1, 0, 0),
(55, '5', 'mon ngay mai', 'ngon-mat-voi-mon-an-duoc-trinh-bay-dep-nhu-truyen-co-b3585168eb.jpg', 0, 1, 0, 0),
(56, '6', 'mon ngay mai', 'vy_1407987744_cach-luoc-ga-ngon-jpg.jpg', 0, 1, 0, 0),
(57, 'sl5', 'tiec', 'o.jpg', 1, 0, 0, 0),
(58, '7', 'fsrf', 'cua-ba bau.jpg', 0, 1, 0, 0),
(59, '8', 'gfg', 'images.jpg', 0, 1, 0, 0),
(60, '9', 'fgdg', 'oc-5-mon-quan-oc-ca-mau (2).jpg', 0, 1, 0, 0),
(62, 'cuong', 'ffdf', '11401480_1657044731191213_3792114569662822299_n.jpg', 0, 0, 1, 0),
(63, 'nhan', '', '12191018_199155707086734_2916771950679639386_n.jpg', 0, 0, 1, 0),
(64, 'chi', 'df', '10849804_1509290819338231_1997784313794269941_n.jpg', 0, 0, 1, 0),
(65, 'trang', 'edrwe', '11949354_408159486055427_8233738468209459019_n.jpg', 0, 0, 1, 0),
(66, 'cu dien', 'dsfs', '12249741_1708575199371499_6937179991594966389_n.jpg', 0, 0, 1, 0),
(67, 'nhan max', 'dfd', '12196333_199155580420080_3053948638739850041_n.jpg', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `description`, `image`, `created`, `type_id`) VALUES
(0, '8 mÃ³n Äƒn ÄÃ´ng Nam Ã tuyá»‡t ngon khÃ´ng thá»ƒ bá» qua', '0', 'Nhá»¯ng mÃ³n Äƒn má»›i', 'tin1.jpg', '2015-11-28 08:14:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `buyername` varchar(255) NOT NULL,
  `buyeremail` varchar(255) NOT NULL,
  `buyerphone` varchar(255) NOT NULL,
  `buyeraddress` varchar(255) DEFAULT NULL,
  `receivername` varchar(255) NOT NULL,
  `receiveraddress` varchar(255) NOT NULL,
  `receiverphone` varchar(255) NOT NULL,
  `receiverdate` datetime NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `cartinfomation` text NOT NULL,
  `createorder` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `bottom1` tinyint(1) DEFAULT NULL,
  `bottom2` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `publish` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `description` text,
  `vip` tinyint(1) DEFAULT NULL,
  `promotion` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `image`, `price`, `description`, `vip`, `promotion`, `category_id`) VALUES
(69, '2', 'BÃ² khÃ´', '12.jpg', '55.000', '<h3 class="r _U6c" style="font-size: medium; font-weight: normal; margin: 0px; padding: 0px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; color: #444444; font-family: arial, sans-serif;"><a class="l _HId" style="text-decoration: none; color: #660099; font-size: 15px; cursor: pointer;" href="http://giadinh.net.vn/an/ngay-lanh-an-canh-dua-chua-nau-suon-heo-20151208083101073.htm">Ng&agrave;y láº¡nh Äƒn canh dÆ°a chua náº¥u&nbsp;<span style="font-weight: bold;">sÆ°á»n</span>&nbsp;heo</a></h3>\r\n<div class="slp" style="margin-bottom: 1px; color: #444444; font-family: arial, sans-serif; font-size: 13px; line-height: 15.6px;"><span class="_tQb _IId" style="color: #006621;">B&aacute;o Gia Ä‘&igrave;nh &amp; X&atilde; há»™i</span><span class="_v5" style="color: #666666; padding: 0px 4px;">-</span><span class="f nsa _uQb" style="color: #666666; display: inline-block;">8 giÆ¡Ì€ trÆ°Æ¡Ìc</span></div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;">Y&ecirc;u cáº§u m&oacute;n canh n&agrave;y c&oacute; vá»‹ ngá»t cá»§a&nbsp;<span style="font-weight: bold;">sÆ°á»n</span>, vá»‹ chua thanh cá»§a dÆ°a. M&oacute;n canh n&agrave;y c&oacute; thá»ƒ d&ugrave;ng c&ugrave;ng&nbsp;<span style="font-weight: bold;">cÆ¡m</span>&nbsp;tráº¯ng hoáº·c b&uacute;n Ä‘á»u ráº¥t ngon!</div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;"><span style="line-height: 16.12px;">Há»‡ thá»‘ng c&aacute;c qu&aacute;n nÆ°á»›ng Cao Bá»“i,&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">SÆ°á»n</span><span style="line-height: 16.12px;">&nbsp;C&acirc;y, BBQ Garden, qu&aacute;n nÆ°á»›ng ... kim chi, b&aacute;nh b&iacute;, b&aacute;nh khoai t&acirc;y, c&aacute;&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">cÆ¡m</span><span style="line-height: 16.12px;">, salad trá»™n, Ä‘áº­u hÅ© chi&ecirc;n.</span></div>', 0, NULL, 4),
(70, '3', 'BÃºn máº¯m', '25.jpg', '30.000', '<h3 class="r _U6c" style="font-size: medium; font-weight: normal; margin: 0px; padding: 0px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; color: #444444; font-family: arial, sans-serif;"><a class="l _HId" style="text-decoration: none; color: #660099; font-size: 15px; cursor: pointer;" href="http://infonet.vn/canh-dua-chua-nau-suon-heo-mon-ngon-cho-ngay-lanh-post184877.info">Canh dÆ°a chua náº¥u&nbsp;<span style="font-weight: bold;">sÆ°á»n</span>&nbsp;heo - m&oacute;n ngon cho ng&agrave;y láº¡nh</a></h3>\r\n<div class="slp" style="margin-bottom: 1px; color: #444444; font-family: arial, sans-serif; font-size: 13px; line-height: 15.6px;"><span class="_tQb _IId" style="color: #006621;">Infonet (lá»i tuy&ecirc;n bá»‘ ph&aacute;t cho c&aacute;c b&aacute;o)</span><span class="_v5" style="color: #666666; padding: 0px 4px;">-</span><span class="f nsa _uQb" style="color: #666666; display: inline-block;">21 giÆ¡Ì€ trÆ°Æ¡Ìc</span></div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;">Infonet xin giá»›i thiá»‡u tá»›i báº¡n Ä‘á»c má»™t m&oacute;n canh chua ráº¥t Ä‘Æ°a&nbsp;<span style="font-weight: bold;">cÆ¡m</span>cho bá»¯a Äƒn gia Ä‘&igrave;nh trong ng&agrave;y láº¡nh: m&oacute;n canh dÆ°a chua náº¥u&nbsp;<span style="font-weight: bold;">sÆ°á»n</span>heo!</div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;"><span style="line-height: 16.12px;">Náº¿u l&agrave; t&iacute;n Ä‘á»“ cá»§a m&oacute;n&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">sÆ°á»n</span><span style="line-height: 16.12px;">&nbsp;x&agrave;o chua ngá»t th&igrave; báº¡n pháº£i thá»­ ngay kiá»ƒu ... ráº¯c h&agrave;nh tá»i chi&ecirc;n v&agrave;ng l&ecirc;n tr&ecirc;n Äƒn n&oacute;ng v&agrave; Äƒn c&ugrave;ng&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">cÆ¡m</span><span style="line-height: 16.12px;">&nbsp;th&igrave; tuyá»‡t lu&ocirc;n.</span></div>', 0, NULL, 4),
(72, '5', 'Ram cuá»‘n cáº£i', '10.jpg', '50.000', '<p>M&oacute;n ngon kh&ocirc;ng n&ecirc;n bá» &nbsp;qua khi tá»›i &nbsp;Ä&agrave; Náºµng,</p>\r\n<h3 class="r _U6c" style="font-size: medium; font-weight: normal; margin: 0px; padding: 0px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; color: #444444; font-family: arial, sans-serif;"><a class="l _HId" style="text-decoration: none; color: #660099; font-size: 15px; cursor: pointer;" href="https://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=newssearch&amp;cd=10&amp;ved=0ahUKEwjcpJSGiszJAhXFpJQKHSCkBAQQqQIIOigAMAk&amp;url=http%3A%2F%2Fdanviet.vn%2Fgia-dinh%2F5-mon-ngon-voi-thit-bo-646122.html&amp;usg=AFQjCNEnNr159hFayHCUbfO8zWkacUqbMA" data-href="http://danviet.vn/gia-dinh/5-mon-ngon-voi-thit-bo-646122.html">5 m&oacute;n ngon vá»›i thá»‹t b&ograve;</a></h3>\r\n<div class="slp" style="margin-bottom: 1px; color: #444444; font-family: arial, sans-serif; font-size: 13px; line-height: 15.6px;"><span class="_tQb _IId" style="color: #006621;">B&aacute;o D&acirc;n Viá»‡t</span><span class="_v5" style="color: #666666; padding: 0px 4px;">-</span><span class="f nsa _uQb" style="color: #666666; display: inline-block;">6 thg 12, 2015</span></div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;">CÅ©ng c&oacute; thá»ƒ d&ugrave;ng thá»‹t náº¡m, thá»‹t ba chá»‰ hoáº·c thá»‹t&nbsp;<span style="font-weight: bold;">sÆ°á»n</span>&nbsp;(c&oacute; thá»ƒ c&ograve;n hoáº·c ... náº¥u canh, b&ograve; cuá»™n l&aacute; lá»‘t, thá»‹t vi&ecirc;n xá»‘t c&agrave;, rang&nbsp;<span style="font-weight: bold;">cÆ¡m</span>, m&igrave; &Yacute;, nui x&agrave;o&hellip;</div>\r\n<div class="st" style="line-height: 1.24; word-wrap: break-word; color: #444444; font-family: arial, sans-serif; font-size: 13px;"><span style="line-height: 16.12px;">Infonet xin giá»›i thiá»‡u tá»›i báº¡n Ä‘á»c má»™t m&oacute;n canh chua ráº¥t Ä‘Æ°a&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">cÆ¡m</span><span style="line-height: 16.12px;">cho bá»¯a Äƒn gia Ä‘&igrave;nh trong ng&agrave;y láº¡nh: m&oacute;n canh dÆ°a chua náº¥u&nbsp;</span><span style="font-weight: bold; line-height: 16.12px;">sÆ°á»n</span><span style="line-height: 16.12px;">heo!</span></div>', 0, NULL, 4),
(75, '8', 'Thá»‹t heo rá»«ng', '15.jpg', '100.000', '<p style="margin: 0px auto 15px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: #333333; line-height: 18px; text-rendering: geometricPrecision; font-family: Arial; background: transparent;">Gi&aacute; á»Ÿ c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n nÆ°á»›ng táº¡i S&agrave;i G&ograve;n cá»±c ká»³ phong ph&uacute;, Ä‘a dáº¡ng v&agrave; &ldquo;thÆ°á»£ng v&agrave;ng háº¡ c&aacute;m&rdquo;. á»ž c&aacute;c nh&agrave; h&agrave;ng nÆ°á»›ng cao cáº¥p, má»™t m&oacute;n nÆ°á»›ng c&aacute;c kiá»ƒu c&oacute; gi&aacute; 300.000 - 500.000 Ä‘á»“ng l&agrave; b&igrave;nh thÆ°á»ng.</p>\r\n<p style="margin: 0px auto 15px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: #333333; line-height: 18px; text-rendering: geometricPrecision; font-family: Arial; background: transparent;">NhÆ°ng táº¡i c&aacute;c l&agrave;ng nÆ°á»›ng b&igrave;nh d&acirc;n nhÆ° nÆ¡i anh Th&agrave;nh Lu&acirc;n Ä‘&atilde;i sinh nháº­t, gi&aacute; má»—i Ä‘Ä©a cao nháº¥t l&agrave; 70.000 Ä‘á»“ng cho c&aacute;c m&oacute;n v&uacute; heo, b&ograve;, t&ocirc;m nÆ°á»›ng. C&ograve;n láº¡i chá»‰ 40.000 - 50.000 Ä‘á»“ng l&agrave; chá»§ yáº¿u. Äá»“ Äƒn á»Ÿ nhá»¯ng qu&aacute;n h&uacute;t kh&oacute;i táº¡i b&agrave;n th&igrave; khoáº£ng 175.000 Ä‘á»“ng/Ä‘Ä©a sÆ°á»n heo báº£n lá»›n, 258.000 Ä‘á»“ng/Ä‘Ä©a khoáº£ng 200g sÆ°á»n b&ograve; Má»¹ xá»‘t tr&aacute;i c&acirc;y.</p>', 0, NULL, 4),
(76, '9', 'GÃ  quay', '16.jpg', '100.000', '<p style="margin: 0px auto 15px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: #333333; line-height: 18px; text-rendering: geometricPrecision; font-family: Arial; background: transparent;">D&ugrave; Ä‘Æ°á»£c cháº¿ biáº¿n theo c&aacute;ch n&agrave;o th&igrave; m&oacute;n nÆ°á»›ng lu&ocirc;n l&agrave; m&oacute;n Äƒn Ä‘áº­m hÆ°Æ¡ng vá»‹ v&agrave; dáº­y m&ugrave;i háº¥p dáº«n, thÆ¡m ngon v&agrave; giá»¯ nguy&ecirc;n cháº¥t cá»§a m&oacute;n Äƒn vá»›i báº¥t ká»³ loáº¡i thá»±c pháº©m n&agrave;o. Táº¡i Nam bá»™, m&oacute;n nÆ°á»›ng xuáº¥t hiá»‡n gáº¯n liá»n vá»›i lá»‹ch sá»­ kháº©n hoang.</p>\r\n<p style="margin: 0px auto 15px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: #333333; line-height: 18px; text-rendering: geometricPrecision; font-family: Arial; background: transparent;">Khi Ä‘&oacute; c&aacute; l&oacute;c th&igrave; Ä‘áº§y Ä‘á»“ng láº¡i c&oacute; sáºµn rÆ¡m, n&ecirc;n m&oacute;n c&aacute; l&oacute;c nÆ°á»›ng trui ráº¥t phá»• biáº¿n v&agrave; tiá»‡n dá»¥ng l&uacute;c báº¥y giá». G&agrave; th&igrave; nh&agrave; ai cÅ©ng c&oacute;, Ä‘áº¥t s&eacute;t c&oacute; sáºµn, táº¥t cáº£ nguy&ecirc;n liá»‡u Ä‘á»u phá»¥c vá»¥ nhu cáº§u sá»‘ng cá»§a con ngÆ°á»i m&agrave; kh&ocirc;ng qu&aacute; cáº§u ká»³.</p>', 0, NULL, 5),
(77, '10', 'Cháº£', '21.jpg', '60.000', '<p><span style="color: #333333; font-family: Arial; font-size: 14px; line-height: 18px;">Tá»« nhá»¯ng nh&agrave; h&agrave;ng cao cáº¥p chuy&ecirc;n c&aacute;c m&oacute;n nÆ°á»›ng cá»§a nÆ°á»›c ngo&agrave;i nhÆ° Nháº­t Báº£n, H&agrave;n Quá»‘c... Ä‘áº¿n trung t&acirc;m thÆ°Æ¡ng máº¡i, si&ecirc;u thá»‹ c&oacute; c&aacute;c cá»­a h&agrave;ng áº©m thá»±c nÆ°á»›ng cao cáº¥p, l&agrave;ng nÆ°á»›ng, c&aacute;c xe Ä‘áº©y nÆ°á»›ng b&igrave;nh d&acirc;n má»c l&ecirc;n ng&agrave;y má»™t nhiá»u Ä‘&aacute;p á»©ng nhu cáº§u cá»§a Ä‘á»§ ngÆ°á»i, Ä‘á»§ giá»›i.</span></p>', 0, NULL, 5),
(78, '11', 'TÃ´m chiÃªn', '1.jpg', '55.000', '<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">M&oacute;n canh dÆ°a chua náº¥u vá»›i sÆ°á»n heo c&oacute; m&agrave;u v&agrave;ng cá»§a dÆ°a, m&agrave;u há»“ng cá»§a sÆ°á»n, m&agrave;u Ä‘á» cá»§a c&agrave; chua, m&agrave;u xanh cá»§a h&agrave;nh ráº¥t báº¯t máº¯t. Y&ecirc;u cáº§u m&oacute;n canh n&agrave;y c&oacute; vá»‹ ngá»t cá»§a sÆ°á»n, vá»‹ chua thanh cá»§a dÆ°a. M&oacute;n canh n&agrave;y c&oacute; thá»ƒ d&ugrave;ng c&ugrave;ng cÆ¡m tráº¯ng hoáº·c b&uacute;n Ä‘á»u ráº¥t ngon!</p>\r\n<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">Ch&uacute;c báº¡n th&agrave;nh c&ocirc;ng vá»›i m&oacute;n canh dÆ°a chua náº¥u sÆ°á»n heo!</p>', 0, NULL, 5),
(79, '12', 'TÃ©p chiÃªn', '17.jpg', '75.000', '<p><span style="font-family: Arial, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px;">Nh&igrave;n nhá»¯ng con t&eacute;p b&eacute; x&iacute;u, táº§m thÆ°á»ng nháº£y tanh t&aacute;ch trong th&ugrave;ng, t&ocirc;i nghÄ© chá»‰ c&oacute; c&aacute;ch l&agrave; cho v&agrave;o cháº£o rang vá»›i muá»‘i rá»“i náº¥u ná»“i ch&aacute;o n&oacute;ng nhá»«, Äƒn c&ugrave;ng vá»›i t&eacute;p l&agrave; xong! NhÆ°ng, m&aacute; t&ocirc;i láº¡i n&oacute;i, "Äƒn nhÆ° tháº¿ l&agrave; má»™t sá»± ph&iacute; pháº¡m nhá»¯ng sáº£n váº­t cá»§a thi&ecirc;n nhi&ecirc;n, Ä‘á»ƒ h&ocirc;m nay, m&aacute; cháº¿ biáº¿n cho c&aacute;c con má»™t m&oacute;n ngon d&acirc;n d&atilde;, Äƒn rá»“i c&aacute;c váº«n nhá»› m&atilde;i. Ä&oacute; l&agrave; m&oacute;n: T&eacute;p m&ograve;ng lÄƒn bá»™t chi&ecirc;n gi&ograve;n".</span></p>\r\n<p><span style="font-family: Arial, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px;"><span style="text-align: justify;">Bá»¯a Äƒn sáºµn s&agrave;ng. Gáº¯p má»™t miáº¿ng t&eacute;p m&ograve;ng chi&ecirc;n bá»™t c&ugrave;ng vá»›i b&uacute;n, &iacute;t rau sá»‘ng cho v&agrave;o ch&eacute;n. Chan má»™t miáº¿ng nÆ°á»›c máº¯m chanh, tá»i á»›t Ä‘Æ°a l&ecirc;n miá»‡ng nhai cháº§m cháº­m. Vá»‹ ngá»t, b&eacute;o, gi&ograve;n cá»§a t&eacute;p, cá»§a bá»™t h&ograve;a láº«n vá»‹ thÆ¡m, cay cá»§a rau sá»‘ng, á»›t&hellip;tháº­t Ä‘áº­m Ä‘&agrave; kh&oacute; qu&ecirc;n.</span></span></p>', 0, NULL, 5),
(80, '13', 'Canh gÃ ', '5.jpg', '80.000', '<p><span style="color: #444444; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px; text-align: justify;">Cho nÆ°á»›c ngáº­p tr&ecirc;n máº·t há»—n há»£p sÆ°á»n dÆ°a c&agrave; chua, Ä‘un lá»­a lá»›n Ä‘áº¿n khi s&ocirc;i b&ugrave;ng th&igrave; cho lá»­a nhá» láº¡i, vá»›t bá»t, n&ecirc;m náº¿m gia vá»‹ cho vá»«a miá»‡ng, cho th&ecirc;m má»™t ch&uacute;t dáº¥m gáº¡o Ä‘á»ƒ ná»“i nÆ°á»›c d&ugrave;ng Ä‘Æ°á»£c trong. Sau Ä‘&oacute; háº§m Ä‘áº¿n khi sÆ°á»n v&agrave; dÆ°a má»m l&agrave; Ä‘Æ°á»£c, Ä‘Æ¡m ra b&aacute;t, ráº¯c h&agrave;nh l&aacute; v&agrave;o.</span></p>\r\n<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">Cho sÆ°á»n v&agrave;o Ä‘áº£o sÄƒn láº¡i, tiáº¿p tá»¥c cho c&agrave; chua v&agrave;o Ä‘áº£o Ä‘á»u rá»“i cho dÆ°a v&agrave;o x&agrave;o c&ugrave;ng.</p>\r\n<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">- N&ecirc;m ch&uacute;t máº¯m, muá»‘i Ä‘Æ°á»ng cho há»—n há»£p x&agrave;o (n&ecirc;m nháº¡t v&igrave; dÆ°a c&oacute; thá»ƒ máº·n).</p>', 0, NULL, 7),
(81, '14', 'SÆ°á»n xÃ o', '28.jpg', '90.000', '<p><span style="font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;">Th&ocirc;ng thÆ°á»ng thá»‹t b&ograve; thÆ°á»ng Ä‘Æ°á»£c chia l&agrave;m hai pháº§n, c&aacute;c pháº§n thá»‹t á»Ÿ th&acirc;n trÆ°á»›c thÆ°á»ng dai hÆ¡n n&ecirc;n th&iacute;ch há»£p cho c&aacute;c m&oacute;n náº¥u l&acirc;u hoáº·c háº§m, trong khi c&aacute;c pháº§n thá»‹t á»Ÿ th&acirc;n sau má»m hÆ¡n n&ecirc;n d&ugrave;ng Ä‘á»ƒ cháº¿ biáº¿n c&aacute;c m&oacute;n náº¥u nhanh nhÆ° x&agrave;o, nÆ°á»›ng hay nh&uacute;ng. Khi mua báº¡n n&ecirc;n lá»±a thá»‹t b&ograve; c&oacute; m&agrave;u Ä‘á» tÆ°Æ¡i, kh&ocirc;ng sáº«m m&agrave;u hoáº·c t&aacute;i xanh, sá»› thá»‹t nhá» má»m, má»¡ m&agrave;u v&agrave;ng nháº¡t, sá» d&iacute;nh tay v&agrave; cháº¯c má»‹n.</span></p>', 0, NULL, 7),
(82, '15', 'Khá»• qua xÃ o bÃ²', '14.jpg', '95.000', '<p style="font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;">Äá»ƒ cháº¿ biáº¿n c&aacute;c m&oacute;n náº¥u nhanh nhÆ° x&agrave;o, l&uacute;c láº¯c, b&iacute;t táº¿t, báº¡n n&ecirc;n sá»­ dá»¥ng thá»‹t thÄƒn v&agrave; Ä‘&ugrave;i. Thá»‹t thÄƒn gá»“m hai loáº¡i thÄƒn ngoáº¡i v&agrave; thÄƒn ná»™i, pháº§n thÄƒn ná»™i (c&ograve;n gá»i l&agrave; phi l&ecirc;) c&oacute; Ä‘á»™ má»m hÆ¡n v&agrave; sá»‘ lÆ°á»£ng ráº¥t &iacute;t, má»—i con b&ograve; chá»‰ c&oacute; khoáº£ng 2-3kg thÄƒn ná»™i.Thá»‹t thÄƒn ná»™i c&ograve;n th&iacute;ch há»£p l&agrave;m thá»‹t t&aacute;i trong phá»Ÿ b&ograve;, nh&uacute;ng láº©u hoáº·c nh&uacute;ng giáº¥m. Tuy nhi&ecirc;n náº¿u mua b&ograve; &Uacute;c hoáº·c b&ograve; Má»¹ th&igrave; kh&ocirc;ng n&ecirc;n d&ugrave;ng thÄƒn ná»™i v&igrave; thá»‹t qu&aacute; má»m, kh&ocirc;ng c&ograve;n th&uacute; vá»‹ khi nhai.</p>', 0, NULL, 7),
(83, '16', 'BÃ¡nh xÃ¨o', '8.jpg', '60.000', '<p style="font-family: ''Open Sans'', Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;">Vá»›i nhá»¯ng m&oacute;n nÆ°á»›ng hoáº·c Ä‘&uacute;t l&ograve; n&ecirc;n d&ugrave;ng loáº¡i thá»‹t má»m nhÆ° thá»‹t thÄƒn ná»™i hoáº·c ngoáº¡i náº¿u l&agrave; b&ograve; nháº­p kháº©u. Tuy nhi&ecirc;n cáº§n canh nhiá»‡t Ä‘á»™ v&agrave; thá»i gian Ä‘á»ƒ thá»‹t vá»«a ch&iacute;n tá»›i, má»m v&agrave; kh&ocirc;ng l&agrave;m máº¥t cháº¥t ngá»t b&ecirc;n trong thá»‹t. Náº¿u nÆ°á»›ng qu&aacute; lá»­a, thá»‹t sáº½ bá»‹ kh&ocirc; v&agrave; dai.&nbsp;CÅ©ng c&oacute; thá»ƒ d&ugrave;ng thá»‹t náº¡m, thá»‹t ba chá»‰ hoáº·c thá»‹t sÆ°á»n (c&oacute; thá»ƒ c&ograve;n hoáº·c kh&ocirc;ng c&ograve;n xÆ°Æ¡ng sÆ°á»n) Ä‘á»ƒ l&agrave;m c&aacute;c m&oacute;n nÆ°á»›ng, do c&oacute; má»¡ n&ecirc;n khi nÆ°á»›ng thá»‹t thÆ¡m hÆ¡n. Nhá»¯ng loáº¡i thá»‹t n&agrave;y hÆ¡i dai, n&ecirc;n Æ°á»›p vá»›i c&aacute;c gia vá»‹ l&agrave;m má»m v&agrave;i giá» trÆ°á»›c khi nÆ°á»›ng.</p>', 0, NULL, 7),
(84, '17', 'SÃºp tÃ´m', '18.jpg', '60.000', '<p>Háº£i sáº£n biá»ƒn</p>', 0, NULL, 6),
(85, '18', 'CÃ  há»“i', '28.jpg', '100.000', '<p>Háº£i sáº£n biá»ƒn</p>', 0, NULL, 6),
(86, '19', 'á»c hoÃ ng sa', '19.jpg', '80.000', '<p>Háº£i sáº£n biá»ƒn</p>', 0, NULL, 6),
(87, '20', 'BÃ o ngÆ° xÃ o tá»i', '25.jpg', '110.000', '<p>Háº£i sáº£n biá»ƒn</p>', 0, NULL, 6),
(88, '30', 'CÆ¡m trÃ¢n chÃ¢u', 'com-rang.jpg', '70.000', '<p style="margin: 12px 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;Cháº¿ biáº¿n cÆ¡m chi&ecirc;n c&aacute; máº·n gi&ograve;n ngon, theo c&ocirc;ng thá»©c cá»§a m&igrave;nh th&igrave; báº¡n sáº½ c&oacute; Ä‘Æ°á»£c má»™t bá»¯a s&aacute;ng tuyá»‡t vá»i vá»›i hÆ°Æ¡ng vá»‹ miá»n T&acirc;y quyáº¿n rÅ©, háº¥p dáº«n. M&oacute;n Äƒn n&agrave;y ráº¥t dá»… l&agrave;m v&agrave; cÅ©ng ráº¥t dá»… Äƒn, há»©a háº¹n Ä‘em Ä‘áº¿n cho báº¡n sá»± th&iacute;ch th&uacute; v&agrave; má»™t ng&agrave;y má»›i tr&agrave;n Ä‘áº§y nÄƒng lÆ°á»£ng Ä‘&oacute;.Sau m&igrave;nh sáº» hÆ°á»›ng dáº«n c&aacute;ch náº¥u m&oacute;n cÆ¡m chi&ecirc;n c&aacute; máº·n thÆ¡m ngon.</p>\r\n<p style="margin: 12px 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;</p>', 1, NULL, 8),
(89, '31', 'CÆ¡m gÃ ', '_com-ga.jpg', '75.000', '<p style="margin: 12px 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px;">C&aacute;c báº¡n c&oacute; bao giá» tháº¯c máº¯t chá»n nguy&ecirc;n liá»‡u m&oacute;n cÆ¡m chien c&aacute; máº·n nhÆ° tháº¿ n&agrave;o cho ngon v&agrave; tá»‘t nháº¥t. Sau Ä‘ay m&igrave;nh sinh hÆ°á»›ng dáº«n c&aacute;ch chon mua nguy&ecirc;n liá»‡u cho m&oacute;n cÆ¡m chi&ecirc;n c&aacute; máº·n</p>\r\n<p style="margin: 12px 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px;">Ch&uacute;ng ta lá»±a chá»n nguy&ecirc;n liá»‡u tháº­t ká»¹ c&agrave;ng chá»n nguá»“n g&oacute;c xuáº¥t sá»© v&agrave; gi&aacute; th&agrave;nh Ä‘áº·c biá»‡t l&agrave; Ä‘á»™ tÆ°Æ¡i ngon cá»§a nguy&ecirc;n liá»‡u.&nbsp;Chá»n mua c&aacute;c nguy&ecirc;n liá»‡u:</p>\r\n<p style="margin: 12px 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px;">Kh&ocirc; c&aacute; m&uacute; n&ecirc;n chá»n loáº¡i c&aacute; tá»‘t m&agrave;u kh&ocirc; c&ograve;n trong hÆ¡i ng&atilde; v&agrave;ng kh&ocirc;ng qu&aacute; v&agrave;ng v&igrave; niáº¿u n&oacute; ng&atilde; v&agrave;ng l&agrave; kh&ocirc; Ä‘á»ƒ l&acirc;u c&oacute; vá»‹ ráº¥t máº·n c&ograve;n kh&ocirc; c&oacute; m&agrave;u trong l&agrave; kh&ocirc; vá»«a má»›i Æ°á»›p c&ograve;n kh&ocirc; c&oacute; m&agrave;u trong tráº¯ng hÆ¡i ng&atilde; v&agrave;ng l&agrave; kho Æ°á»›p vá»«a Ä‘á»§ vá»‹ n&oacute; ngon hÆ¡n</p>', 0, NULL, 8),
(90, '33', 'CÆ¡m chay', 'download (5).jpg', '80.000', '<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; text-align: justify;">Canh chua n&ograve;ng ná»c Ä‘Æ°á»£c ngÆ°á»i d&acirc;n xá»© MÆ°á»ng huyá»‡n Tháº¡ch Th&agrave;nh, tá»‰nh Thanh H&oacute;a gá»i l&agrave; canh &ldquo;bubu chacha&rdquo; hay &ldquo;b&acirc;u b&acirc;u&rdquo; l&agrave; má»™t m&oacute;n Äƒn Ä‘á»™c Ä‘&aacute;o cá»§a áº©m thá»±c Viá»‡t Nam. VÆ°á»£t rá»«ng t&igrave;m báº¯t bubu chacha L&agrave; má»™t trong nhá»¯ng huyá»‡n thuá»™c ph&iacute;a T&acirc;y Báº¯c, tá»‰nh Thanh H&oacute;a, ngÆ°á»i d&acirc;n xá»© MÆ°á»ng huyá»‡n Tháº¡ch Th&agrave;nh Ä‘Æ°á»£c nhiá»u du kh&aacute;ch biáº¿t Ä‘áº¿n bá»Ÿi nhá»¯ng n&eacute;t vÄƒn h&oacute;a Ä‘áº·c sáº¯c, v&agrave; cÅ©ng ch&iacute;nh nÆ¡i Ä‘&acirc;y l&agrave; nÆ¡i thá»•i há»“n cho áº©m thá»±c Viá»‡t vá»›i nhá»¯ng m&oacute;n Äƒn ná»•i tiáº¿ng Ä‘áº¿n láº¡ ká»³ nhÆ°&nbsp;</span><a class="more-link" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; color: #2b8a08; text-decoration: none; font-family: Arial, Helvetica, sans-serif; line-height: 20px; text-align: justify;" href="http://unuquan.com/tuyen-dung/cach-lam-canh-chua-nong/">.</a></p>', 0, NULL, 8),
(91, '34', 'CÆ¡m sÆ°á»n', 'images (5).jpg', '90.000', '<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">&nbsp;Cho nÆ°á»›c ngáº­p tr&ecirc;n máº·t há»—n há»£p sÆ°á»n dÆ°a c&agrave; chua, Ä‘un lá»­a lá»›n Ä‘áº¿n khi s&ocirc;i b&ugrave;ng th&igrave; cho lá»­a nhá» láº¡i, vá»›t bá»t, n&ecirc;m náº¿m gia vá»‹ cho vá»«a miá»‡ng, cho th&ecirc;m má»™t ch&uacute;t dáº¥m gáº¡o Ä‘á»ƒ ná»“i nÆ°á»›c d&ugrave;ng Ä‘Æ°á»£c trong. Sau Ä‘&oacute; háº§m Ä‘áº¿n khi sÆ°á»n v&agrave; dÆ°a má»m l&agrave; Ä‘Æ°á»£c, Ä‘Æ¡m ra b&aacute;t, ráº¯c h&agrave;nh l&aacute; v&agrave;o.</p>\r\n<p style="margin: 9.29688px 0px; color: #444444; text-align: justify; font-family: ''Times New Roman''; font-size: 16px; line-height: 22px;">* M&oacute;n canh dÆ°a chua náº¥u vá»›i sÆ°á»n heo c&oacute; m&agrave;u v&agrave;ng cá»§a dÆ°a, m&agrave;u há»“ng cá»§a sÆ°á»n, m&agrave;u Ä‘á» cá»§a c&agrave; chua, m&agrave;u xanh cá»§a h&agrave;nh ráº¥t báº¯t máº¯t. Y&ecirc;u cáº§u m&oacute;n canh n&agrave;y c&oacute; vá»‹ ngá»t cá»§a sÆ°á»n, vá»‹ chua thanh cá»§a dÆ°a. M&oacute;n canh n&agrave;y c&oacute; thá»ƒ d&ugrave;ng c&ugrave;ng cÆ¡m tráº¯ng hoáº·c b&uacute;n Ä‘á»u ráº¥t ngon!</p>', 0, NULL, 8),
(92, '35', 'CÆ¡m lam', 'download (4).jpg', '80.000', '<p style="margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: arial; line-height: 24px; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: medium; vertical-align: baseline; font-family: ''times new roman'', times; background: transparent;">Kh&ocirc;ng giá»‘ng nhÆ° dÆ°á»›i xu&ocirc;i, ngÆ°á»i ta náº¥u cÆ¡m báº±ng ná»“i, ni&ecirc;u th&igrave; m&oacute;n cÆ¡m tr&ecirc;n n&agrave;y Ä‘Æ°á»£c náº¥u trong nhá»¯ng á»‘ng ná»©a v&agrave; Ä‘Æ°á»£c ngÆ°á»i d&acirc;n nÆ¡i Ä‘&acirc;y gá»i l&agrave; m&oacute;n cÆ¡m lam.<span id="more-325" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; font-family: arial; background: transparent;"></span></span></p>\r\n<p style="margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: arial; line-height: 24px; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: medium; vertical-align: baseline; font-family: ''times new roman'', times; background: transparent;">&nbsp; &nbsp; Nghe c&oacute; váº» láº¡ láº«m nhÆ°ng cÆ¡m lam cÅ©ng Ä‘Æ¡n giáº£n chá»‰ l&agrave; gáº¡o náº¥u ch&iacute;n th&agrave;nh cÆ¡m. Tuy nhi&ecirc;n sá»± kh&aacute;c biá»‡t trong c&aacute;ch náº¥u n&agrave;y Ä‘&atilde; táº¡o ra m&oacute;n cÆ¡m c&ugrave;ng c&aacute;i t&ecirc;n láº¡ láº«m gáº¯n liá»n vá»›i ngÆ°á»i con v&ugrave;ng n&uacute;i Ä‘&atilde; tá»« ráº¥t l&acirc;u Ä‘á»i rá»“i.</span></p>\r\n<p style="margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; line-height: 24px; text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><span style="font-family: ''times new roman'', times; font-size: medium; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">&nbsp; &nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><span style="font-family: arial;"><span style="font-size: 16px;"><strong>CÆ¡m lam&nbsp;</strong></span></span><span style="font-family: ''times new roman'', times; font-size: medium;">Ä‘Æ¡n giáº£n chá»‰ l&agrave; c&aacute;ch gá»i quen thuá»™c cá»§a ngÆ°á»i d&acirc;n miá»n n&uacute;i vá»›i c&aacute;ch náº¥u cÆ¡m báº±ng á»‘ng ná»©a. C&oacute; thá»ƒ hiá»ƒu ráº±ng &ldquo;lam&rdquo; l&agrave; c&aacute;ch d&ugrave;ng á»‘ng ná»©a thay ná»“i Ä‘á»ƒ náº¥u nhÆ°ng láº¡i táº¡o ra nhá»¯ng miáº¿ng Äƒn miáº¿ng uá»‘ng hÆ¡n háº³n náº¥u trong ná»“i v&agrave; Ä‘áº·c biá»‡t, Ä‘&oacute; c&ograve;n l&agrave; c&aacute;ch Ä‘un náº¥u ráº¥t &ldquo;nghá»‡ sÄ©&rdquo;, d&acirc;n d&atilde; kh&aacute;c thÆ°á»ng m&agrave; cÅ©ng phong lÆ°u kh&aacute;c thÆ°á»ng cá»§a ngÆ°á»i d&acirc;n miá»n n&uacute;i.&nbsp;</span></span></p>', 0, NULL, 8),
(93, '36', 'CÆ¡m táº¥m', 'download (2).jpg', '70.000', '<p><span style="font-family: ''Times New Roman''; font-size: 16px; line-height: 22px; background-color: #fafafa;">Tá»«ng Ä‘áº¿n H&agrave; Ná»™i c&ocirc;ng t&aacute;c, t&ocirc;i Ä‘Æ°á»£c báº¡n b&egrave; chá»‰ cho ráº¥t nhiá»u m&oacute;n Ä‘áº·c sáº£n, n&agrave;o l&agrave; b&uacute;n Ä‘áº­u, b&uacute;n ngan, ch&aacute;o sÆ°á»n hay cháº£ c&aacute;,... Äáº¿n Ä&agrave; Náºµng, há»™i c&aacute;c chá»‹ cÅ©ng táº­n t&igrave;nh Ä‘Æ°a t&ocirc;i Ä‘áº¿n c&aacute;c h&agrave;ng m&igrave; Quáº£ng, b&aacute;nh tr&aacute;ng cuá»™n thá»‹t heo, gá»i c&aacute;,... trong suá»‘t v&agrave;i ng&agrave;y Ä‘á»ƒ Äƒn cho báº±ng háº¿t nhá»¯ng m&oacute;n gá»i l&agrave; Ä‘áº·c sáº£n cá»§a v&ugrave;ng. Tháº¿ m&agrave; ká»³ láº¡ thay, Ä‘áº¿n khi c&aacute;c chá»‹ v&agrave;o Ä‘áº¿n S&agrave;i G&ograve;n, há»i t&ocirc;i "tháº¿ m&oacute;n n&agrave;o l&agrave; Ä‘áº·c sáº£n cá»§a v&ugrave;ng m&agrave;y, Ä‘&aacute;ng Ä‘á»ƒ cho c&aacute;c chá»‹ thá»­ trÆ°á»›c ti&ecirc;n" th&igrave; t&ocirc;i liá»n trá»Ÿ n&ecirc;n bá»‘i rá»‘i v&agrave; ngáº©n háº¿t cáº£ ngÆ°á»i. Tháº­t t&igrave;nh, t&ocirc;i cháº³ng biáº¿t pháº£i n&oacute;i g&igrave; trong sá»‘ h&agrave;ng trÄƒm, h&agrave;ng ngh&igrave;n m&oacute;n m&agrave; thÆ°á»ng ng&agrave;y t&ocirc;i váº«n thÆ°á»ng láº¥y n&oacute; Ä‘á»ƒ tá»± h&agrave;o v&agrave; khoe vá»›i há» ráº±ng "áº©m thá»±c S&agrave;i G&ograve;n tháº­t tuyá»‡t".</span></p>', 0, NULL, 8),
(94, '37', 'CÆ¡m náº¯m', 'comnam.jpg', '80.000', '<p style="margin: 10px 0px; padding: 0px; color: #333333; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.1px;">Chia cÆ¡m th&agrave;nh nhá»¯ng pháº§n báº±ng nhau, vi&ecirc;n tr&ograve;n rá»“i áº¥n dáº¹t má»ng, x&uacute;c má»™t muá»—ng nh&acirc;n kim chi dÄƒm b&ocirc;ng cho v&agrave;o giá»¯a rá»“i bao k&iacute;n láº¡i. D&ugrave;ng tay b&oacute;p Ä‘á»u cho náº¯m cÆ¡m Ä‘Æ°á»£c cháº·t. Hoáº·c báº¡n c&oacute; thá»ƒ táº¡o h&igrave;nh cho náº¯m cÆ¡m Ä‘áº¹p hÆ¡n báº±ng c&aacute;ch sá»­ dá»¥ng khu&ocirc;n táº¡o h&igrave;nh, khu&ocirc;n b&aacute;nh&hellip; sáºµn c&oacute; trong nh&agrave;. Vá»›i khu&ocirc;n n&agrave;y, báº¡n cho Ä‘áº§y cÆ¡m v&agrave;o b&ecirc;n trong, sau Ä‘&oacute; Ä‘á»¥c má»™t lá»— khuyáº¿t á»Ÿ giá»¯a, m&uacute;c nh&acirc;n cho v&agrave;o pháº§n rá»—ng n&agrave;y rá»“i láº¡i phá»§ k&iacute;n báº±ng má»™t lá»›p cÆ¡m ph&iacute;a tr&ecirc;n, n&eacute;n cháº·t. Báº¡n c&oacute; thá»ƒ phá»§ th&ecirc;m má»™t lá»›p cÆ¡m ná»¯a cho d&agrave;y náº¿u cáº§n.</p>\r\n<p style="margin: 10px 0px; padding: 0px; color: #333333; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.1px;">L&agrave;m tÆ°Æ¡ng tá»± vá»›i nhá»¯ng pháº§n cÆ¡m c&ograve;n láº¡i.</p>', 0, NULL, 8),
(95, '38', 'CÆ¡m cuá»™n', 'comcuon.jpg', '60.000', '<p style="margin: 10px 0px; padding: 0px; color: #333333; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.1px;">Náº¥m hÆ°Æ¡ng, c&agrave; rá»‘t, mÄƒng sau khi sÆ¡ cháº¿ sáº¡ch Ä‘em cáº¯t háº¡t lá»±u. Náº¿u d&ugrave;ng náº¥m kh&ocirc;, báº¡n ng&acirc;m v&agrave;o nÆ°á»›c áº¥m khoáº£ng 30 ph&uacute;t trÆ°á»›c khi l&agrave;m cho náº¥m má»m.</p>\r\n<p style="margin: 10px 0px; padding: 0px; color: #333333; font-family: ''Times New Roman''; font-size: 16px; line-height: 20px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.1px;">L&agrave;m n&oacute;ng cháº£o vá»›i ch&uacute;t dáº§u l&aacute;ng máº·t, chá» dáº§u n&oacute;ng th&igrave; tr&uacute;t náº¥m, c&agrave; rá»‘t, mÄƒng v&agrave;o x&agrave;o sÆ¡, n&ecirc;m 1 x&iacute;u muá»‘i, Ä‘áº£o láº¡i trong gi&acirc;y l&aacute;t rá»“i táº¯t lá»­a.</p>', 0, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `order`) VALUES
(1, 'MÃ³n Äƒn má»›i', 1),
(2, 'Sá»± kiá»‡n sáº¯p diá»…n ra', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'cuong', 'abc@1234');

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
