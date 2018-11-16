-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 10:04 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cate_blog` int(11) NOT NULL,
  `blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT '0',
  `order` int(3) DEFAULT '0',
  `image` varchar(50) DEFAULT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `order`, `image`, `ids`, `slug`) VALUES
(1, 'Bá»™ kem dÆ°á»¡ng da', 0, 0, 'telescope.jpg', '1', 'Bá»™ kem dÆ°á»¡ng da'),
(2, 'Sá»¯a rá»¯a máº·t', 0, 1, 'binos.jpg', '2', 'Sá»¯a rá»¯a máº·t'),
(3, 'Sá»¯a táº¯m', 0, 2, 'access.jpg', '3', 'Sá»¯a táº¯m'),
(4, 'NÆ°á»›c hoa', 1, 2, 'access.jpg', '1/4', 'NÆ°á»›c hoa');

-- --------------------------------------------------------

--
-- Table structure for table `cate_blogs`
--

CREATE TABLE IF NOT EXISTS `cate_blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created`) VALUES
(1, 1, 1, 'Rat hay', '2015-11-04 09:21:42'),
(2, 1, 1, 'Toi rat thich quyen sach nay', '2015-11-04 09:22:37'),
(3, 1, 1, 'Toi rat thich quyen sach nay', '2015-11-21 01:56:36'),
(4, 1, 5, 'Quyen sach nay de lai cho toi rat nhieu an tuong', '2015-11-21 01:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` float NOT NULL,
  `description` text,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percent`, `description`, `time_start`, `time_end`, `created`, `modified`) VALUES
(1, 'COUPON-23031996', 10, 'giam gia', '2015-12-01 00:00:00', '2015-12-31 00:00:00', '2015-12-16 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`) VALUES
(3, 'next61.jpg', 6),
(4, 'next62.jpg', 6),
(9, 'power.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_info` text NOT NULL,
  `order_info` text NOT NULL,
  `payment_info` text NOT NULL,
  `status` int(11) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `nodified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_info`, `order_info`, `payment_info`, `status`, `created`, `nodified`) VALUES
(1, NULL, '{"name":"dfsdfg","address":"sdgsdg","phone":"sdgsdgfsdg","email":"sgdgsedg"}', '{"8":{"id":"8","name":"san pham 6","saleprice":"179000","image":"tam-trang-doleme-han-quoc-cao-cap-0537-doleme 3.png","quantity":2},"6":{"id":"6","name":"san pham 5","saleprice":"179000","image":"sua-tam-on-the-body-han-quoc-cac-loai-0452-index.jpg","quantity":2}}', '{"total":716000,"coupon":"COUPON-23031996","discount":"20","pay":572800}', 0, '2015-12-05 03:42:29', NULL),
(2, 2, '{"name":"tdfhdfh","address":"dfhbfd","phone":"hdfhbdfh","email":"dfhbfdh"}', '{"7":{"id":"7","name":"san pham 7","saleprice":"179000","image":"sua-tam-lam-trang-da-the-face-shop-0444-index.jpg","quantity":1},"8":{"id":"8","name":"san pham 6","saleprice":"179000","image":"tam-trang-doleme-han-quoc-cao-cap-0537-doleme 3.png","quantity":2},"6":{"id":"6","name":"san pham 5","saleprice":"179000","image":"sua-tam-on-the-body-han-quoc-cac-loai-0452-index.jpg","quantity":1},"4":{"id":"4","name":"san pham 3","saleprice":"179000","image":"sua-tam-cao-cap-happy-bath-han-quoc-0438-1377053919_qc_3.jpg","quantity":1}}', '{"total":895000}', 1, '2015-12-05 03:43:44', '2015-12-07 07:28:00'),
(3, 2, '{"name":"T\\u1eeb Ph\\u01b0\\u01a1ng Danh","address":"63 Mai L\\u00e3o B\\u1ea1ng - TP \\u0110\\u00e0 N\\u1eb5ng","phone":"01649194952","email":"danhchutich@gmail.com"}', '{"4":{"id":"4","name":" \\u1ed1c s\\u00ean","saleprice":"50000","image":"5.jpg","quantity":3},"44":{"id":"44","name":"Flower Bomb","saleprice":"400000","image":"flowerbomb.jpg","quantity":1},"38":{"id":"38","name":" lavender Yves Rocher","saleprice":"230000","image":"Sua-Tam-Huong-hoa-oai-huong-lavender-Yves-Rocher.png","quantity":1}}', '{"total":780000}', 1, '2015-12-06 10:44:53', '2015-12-06 10:53:00'),
(4, 2, '{"name":"L\\u00ea Thanh Kh\\u1ecfe","address":"Tp \\u0110\\u00e0 N\\u1eb5ng","phone":"01264565456","email":"Khoe@gmail.com"}', '{"50":{"id":"50","name":"Jennin Sparkling","saleprice":"235000","image":"jennin-sparkling.jpg","quantity":1},"49":{"id":"49","name":"J''adora","saleprice":"465000","image":"j''adora.jpg","quantity":2}}', '{"total":1165000,"coupon":"COUPON-23031996","discount":"10","pay":1048500}', 1, '2015-12-06 12:33:06', '2015-12-06 12:33:00'),
(5, 2, '{"name":"T\\u1eeb Ph\\u01b0\\u01a1ng Danh","address":"Tp \\u0110\\u00e0 N\\u1eb5ng","phone":"01649194952","email":"tuphuongdanh1996@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":3},"7":{"id":"7","name":"Green Tea Pure","saleprice":"40000","image":"Green Tea Pure Clean.jpg","quantity":"2"}}', '{"total":275000,"coupon":"COUPON-23031996","discount":"10","pay":247500}', 1, '2015-12-07 07:17:13', '2015-12-07 07:18:00'),
(6, 2, '{"name":"T\\u1eeb Ph\\u01b0\\u01a1ng Danh","address":"Tp \\u0110\\u00e0 N\\u1eb5ng","phone":"01649194952","email":"tuphuongdanh1996@gmail.com"}', '{"3":{"id":"3","name":"natures-care","saleprice":"400000","image":"4.jpg","quantity":"3"},"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":1}}', '{"total":1265000,"coupon":"COUPON-23031996","discount":"10","pay":1138500}', 1, '2015-12-07 07:31:48', '2015-12-07 07:32:00'),
(7, NULL, '{"name":"Dung","address":"Da Nang","phone":"012645654456563","email":"dungnguyen@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":3}}', '{"total":195000,"coupon":"COUPON-23031996","discount":"10","pay":175500}', 0, '2015-12-07 09:49:08', NULL),
(8, NULL, '{"name":"fsdf","address":"dsf","phone":"0454","email":"danhchutich@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":2}}', '{"total":130000,"coupon":"COUPON-23031996","discount":"10","pay":117000}', 0, '2015-12-10 05:29:32', NULL),
(9, NULL, '{"name":"Dung","address":"dung","phone":"011264858878","email":"nguyenthingocdung1606@gmail.com"}', '{"48":{"id":"48","name":"ISeFRyoe","saleprice":"368000","image":"ISeFRyoe.jpg","quantity":1},"51":{"id":"51","name":"Lovely","saleprice":"700000","image":"lovely.jpg","quantity":1},"52":{"id":"52","name":"Senite Perfumed cologne","saleprice":"50000","image":"senite-perfumed-cologne.jpg","quantity":1}}', '{"total":1118000}', 0, '2015-12-10 05:39:52', NULL),
(10, NULL, '{"name":"dfhfh","address":"fhfdgfh","phone":"dhhgfg","email":"sdf@gmail.com"}', '{"51":{"id":"51","name":"Lovely","saleprice":"700000","image":"lovely.jpg","quantity":1},"52":{"id":"52","name":"Senite Perfumed cologne","saleprice":"50000","image":"senite-perfumed-cologne.jpg","quantity":1},"49":{"id":"49","name":"J''adora","saleprice":"465000","image":"j''adora.jpg","quantity":1},"50":{"id":"50","name":"Jennin Sparkling","saleprice":"235000","image":"jennin-sparkling.jpg","quantity":1}}', '{"total":1450000}', 0, '2015-12-10 05:43:04', NULL),
(11, NULL, '{"name":"fdgd","address":"fdsg4154162","phone":"01126444","email":"danhcuti@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":1}}', '{"total":65000}', 0, '2015-12-10 05:45:47', NULL),
(12, NULL, '{"name":"dfgd","address":"gdfgbdf","phone":"0165464","email":"danhchutich@gmail.com"}', '{"51":{"id":"51","name":"Lovely","saleprice":"700000","image":"lovely.jpg","quantity":1},"52":{"id":"52","name":"Senite Perfumed cologne","saleprice":"50000","image":"senite-perfumed-cologne.jpg","quantity":1}}', '{"total":750000}', 0, '2015-12-10 05:52:36', NULL),
(13, NULL, '{"name":"sdfds","address":"sdfdsf","phone":"5254325","email":"danhchutich@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":1},"51":{"id":"51","name":"Lovely","saleprice":"700000","image":"lovely.jpg","quantity":1},"52":{"id":"52","name":"Senite Perfumed cologne","saleprice":"50000","image":"senite-perfumed-cologne.jpg","quantity":1}}', '{"total":815000}', 0, '2015-12-10 06:02:38', NULL),
(15, NULL, '{"name":"vgfhghghgjhg","address":"bjhguhjhkhk","phone":"0146565656545","email":"tuphuongdanh1996@gmail.com"}', '{"53":{"id":"53","name":"Xmen","saleprice":"65000","image":"images.jpg","quantity":1},"43":{"id":"43","name":"Euphoria","saleprice":"210000","image":"euphoria.jpg","quantity":1},"39":{"id":"39","name":"Ainn T\\u00edm","saleprice":"300000","image":"Ainn-tim.jpg","quantity":1},"40":{"id":"40","name":"Chanel","saleprice":"450000","image":"chanel.jpg","quantity":1}}', '{"total":1025000}', 0, '2015-12-10 06:06:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(225) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `image` tinytext,
  `description` text,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `saleprice` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `quantity` int(20) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `image`, `description`, `price`, `saleprice`, `created`, `quantity`, `slug`) VALUES
(1, 'IOPE MOISTGEN', 1, 'avartar.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '149.99', '300000', '2008-08-06 20:05:49', 4, 'san-pham-1'),
(2, ' loreal-familydeal2', 1, '3.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '399.99', '500000', '2008-08-06 20:05:49', 4, 'san-pham-2'),
(3, 'natures-care', 1, '4.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '349.00', '400000', '2008-08-06 20:05:49', 6, 'san-pham-7'),
(4, ' á»‘c sÃªn', 1, '5.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '439.00', '50000', '2008-08-21 13:58:52', 0, 'san-pham-6'),
(6, 'cleansing foam', 2, 'cleansing-foam.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '439.00', '60000', '2008-08-28 12:53:26', 13, 'san-pham-5'),
(7, 'Green Tea Pure', 2, 'Green Tea Pure Clean.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '208.95', '40000', '2008-08-28 13:00:03', 10, 'san-pham-4'),
(8, ' Kose softmo', 2, '1.jpeg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '208.95', '40000', '2008-08-28 13:00:03', 14, 'san-pham-13'),
(9, 'Sakura', 1, 'bo_kem_duong_da_nhay_cam_sakura_sensitive.png', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '150000', '160000', '2015-12-03 04:18:15', 21, 'dovesdf'),
(10, ' Mini skii', 1, 'bo-mini-skii.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '150000', '160000', '2015-12-03 09:18:28', 21, 'san-pham-9'),
(11, ' acne', 2, '2.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '208.95', '40000', '2008-08-28 13:00:03', 0, 'san-pham-4'),
(12, 'Kem chá»‘ng náº¯ng', 1, '6.jpg', '<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c.</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;"><span style="font-family: Arial, Tahoma, Helvetica, sans-serif;"><span style="font-size: 13px; line-height: 16px;">&nbsp;Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ° &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i</span></span></li>\r\n</ul>', '439.00', '500000', '2008-08-21 13:58:52', 8, 'san-pham-11'),
(13, ' A Solve', 2, 'A Solve.JPG', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '439.00', '60000', '2008-08-21 13:58:52', 12, 'san-pham-12'),
(14, 'carave ', 2, 'sua-rua-mat-carave.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '439.00', '70000', '2008-08-21 13:58:52', 4, 'san-pham-14'),
(16, ' hada labo', 2, '3.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '439.00', '80000', '2008-08-28 12:53:26', 4, 'san-pham-16'),
(18, ' trá»‹ má»¥n Ä‘áº§u Ä‘en', 2, '4.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '149.99', '30000', '2008-08-06 20:05:49', 6, 'san-pham-18'),
(19, ' WHOO HWA ', 1, '1.jpg', '<p class="MsoNormal" style="margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><strong><span style="font-size: 9.0pt; font-family: ''Arial'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; color: #333333;">M&atilde; sáº£n pháº©m:&nbsp;</span></strong><span style="font-size: 9.0pt; font-family: ''Arial'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; color: #6f6b65;">DTKOH05</span></p>\r\n<p><strong><span style="font-size: 9.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; color: #333333; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Nh&agrave; sáº£n xuáº¥t:&nbsp;</span></strong><span style="font-size: 11.0pt; line-height: 115%; font-family: ''Calibri'',''sans-serif''; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"><a href="http://datrangkhoe.com/thefaceshop/v25194.html"><span style="font-size: 9.0pt; line-height: 115%; font-family: ''Arial'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; color: #363636; text-decoration: none; text-underline: none;">THEFACESHOP</span></a></span></p>\r\n<p>&nbsp;</p>', '150000', '180000', '2015-12-03 09:18:28', 21, 'san-pham-19'),
(20, ' chá»‘ng lÃ£o hÃ³a', 1, 'images.jpg', '<p>&nbsp;</p>\r\n<ul style="margin: 0px; padding: 0px; font-size: 13px; color: #333333; font-family: arial;">\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng da ban ng&agrave;y c&oacute; &iacute;t nháº¥t hai t&aacute;c dá»¥ng: nu&ocirc;i dÆ°á»¡ng v&agrave; báº£o vá»‡ da. Da báº¡n cáº§n Ä‘Æ°á»£c báº£o vá»‡ khá»i c&aacute;c t&aacute;c Ä‘á»™ng cá»§a m&ocirc;i trÆ°á»ng nhÆ°: &ocirc; nhiá»…m, &aacute;nh náº¯ng máº·t trá»i&hellip;Kem dÆ°á»¡ng da ban ng&agrave;y l&agrave;&nbsp;Â“l&aacute; cháº¯nÂ” tá»‘t nháº¥t cho da cá»§a báº¡n khá»i t&aacute;c Ä‘á»™ng cá»§a tia cá»±c t&iacute;m</li>\r\n<li style="margin: 0px; padding: 0px; list-style: disc; color: #000000; line-height: 16px; font-family: Arial, Tahoma, Helvetica, sans-serif;">Kem dÆ°á»¡ng v&ugrave;ng máº¯t cá»§a L&oacute;r&eacute;al c&oacute; t&aacute;c dá»¥ng gi&uacute;p cho da quanh máº¯t kh&ocirc;ng bá»‹ cháº£y xá»‡, giáº£m bá»›t quáº§ng th&acirc;m v&agrave; Ä‘Æ°Æ¡ng nhi&ecirc;n Ä‘Æ°á»£c cháº¿ biáº¿n vá»›i c&ocirc;ng thá»©c kh&aacute;c háº³n nhá»¯ng loáº¡i kem dÆ°á»¡ng cho nhá»¯ng v&ugrave;ng da kh&aacute;c</li>\r\n</ul>', '150000', '180000', '2015-12-03 09:18:28', 21, 'san-pham-20'),
(21, 'acne control daily scrub', 2, 'all-in-1-acne-control-daily-scrub.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '399.99', '500000', '2008-08-06 20:05:49', 4, 'san-pham-21'),
(22, 'táº©y táº¿ bÃ o cháº¿t', 2, '5.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '30000', '55000', '2015-12-04 09:34:00', 3, 'qua-da'),
(23, 'Perfect Whip Foem', 2, '6.jpg', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Gi&uacute;p loáº¡i bá» nháº¹ nh&agrave;ng lá»›p trang Ä‘iá»ƒm m&agrave; c&ograve;n cáº£ c&aacute;c táº¡p cháº¥t á»Ÿ lá»— ch&acirc;n l&ocirc;ng, cho l&agrave;n da má»‹n m&agrave;ng, s&aacute;ng khá»e.</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: ''Segoe Ui'', arial; font-size: 13px; line-height: 18.5714px;">Green Tea Pure Cleansing Foam Innisfree l&agrave; sá»¯a rá»­a máº·t d&agrave;nh cho háº§u háº¿t c&aacute;c loáº¡i da, ká»ƒ cáº£ da nháº¡y cáº£m, l&agrave;m sáº¡ch b&atilde; nhá»n, bá»¥i báº©n táº­n s&acirc;u trong lá»— ch&acirc;n l&ocirc;ng, gi&uacute;p ngÄƒn ngá»«a v&agrave; Ä‘iá»u trá»‹ má»¥n hiá»‡u quáº£.</div>', '48000', '88000', '2015-12-04 09:35:00', 2, 'cong-chua-nho'),
(24, ' Dermalogica', 3, '8.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '120000', '150000', '2015-12-04 09:36:00', 3, 'nu-hoang-sac-dep'),
(25, 'Sá»¯a táº¯m Palmoive', 3, 'palmoive.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '145000', '180000', '2015-12-04 09:47:00', 3, 'phu-thuy-my-pham'),
(26, 'Sá»¯a táº¯m Cottage', 3, 'cottage.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '250000', '300000', '2015-12-04 09:48:00', 2, 'thien-than-rau-mat'),
(27, 'Sá»¯a táº¯m Charming', 3, 'Charming.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '125000', '1560000', '2015-12-04 09:48:00', 6, 'quan-chat-luong-cao'),
(30, 'Sá»¯a táº¯m olay', 3, 'olay.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '140000', '168000', '2015-12-04 09:49:00', 12, 'qua-dien'),
(31, 'Sá»¯a táº¯m Pr Cherry', 3, 'PrCherry.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '168000', '193000', '2015-12-04 09:50:00', 14, ''),
(32, ' Laneige Perfumed', 1, '10.jpeg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '123000', '150000', '2015-12-04 09:51:00', 1, ''),
(33, 'Sá»¯a táº¯m Baby', 3, 'l.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '90000', '110000', '2015-12-04 09:52:00', 4, ''),
(34, ' happy bath HÃ n Quá»‘c', 3, '3.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '240000', '280000', '2015-12-04 09:54:00', 1, ''),
(35, 'on the body', 3, 'on-the-body2.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '123000', '158000', '2015-12-04 09:55:00', 3, ''),
(36, 'Sá»¯a táº¯m hoa há»“ng', 3, 'h.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '156000', '176000', '2015-12-04 09:57:00', 3, ''),
(37, 'Sinkolor Benice', 3, 'sinkolor-benice.jpg', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '176000', '200000', '2015-12-04 09:58:00', 6, ''),
(38, ' lavender Yves Rocher', 3, 'Sua-Tam-Huong-hoa-oai-huong-lavender-Yves-Rocher.png', '<p><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Tinh cháº¥t long di&ecirc;n hÆ°Æ¡ng c&oacute; trong sá»¯a táº¯m mang láº¡i hÆ°Æ¡ng thÆ¡m cá»±c ká»³ tá»± nhi&ecirc;n, thanh khiáº¿t v&agrave; tÆ°Æ¡i m&aacute;t. L&agrave;n hÆ°Æ¡ng thoang thoáº£ng, sang trá»ng n&agrave;y sáº½ lÆ°u láº¡i tr&ecirc;n cÆ¡ thá»ƒ tháº­t l&acirc;u m&agrave; kh&ocirc;ng cáº§n th&ecirc;m báº¥t ká»³ má»™t loáº¡i nÆ°á»›c hoa n&agrave;o kh&aacute;c, gi&uacute;p báº¡n lu&ocirc;n cáº£m tháº¥y thÆ° th&aacute;i, dá»… chá»‹u.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">Chá»©a c&aacute;c th&agrave;nh pháº§n chiáº¿t xuáº¥t tá»« thi&ecirc;n nhi&ecirc;n gi&uacute;p cung cáº¥p Ä‘á»™ áº©m cho da, mang láº¡i l&agrave;n da sáº¡ch má»‹n, mÆ°á»£t m&agrave;.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;" /><span style="color: #666666; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px;">&nbsp;Chá»‰ cáº§n h&ograve;a má»™t lÆ°á»£ng nhá» gel táº¯m vá»›i nÆ°á»›c, báº¡n sáº½ láº­p tá»©c cáº£m nháº­n c&aacute;c háº¡t bá»t má»‹n gi&agrave;u Ä‘á»™ áº©m Ä‘ang má»m máº¡i chÄƒm s&oacute;c l&agrave;n da cá»§a báº¡n má»™t c&aacute;ch tháº­t thÆ° gi&atilde;n v&agrave; sáº£ng kho&aacute;i &ndash; giá»¯a l&agrave;n hÆ°Æ¡ng thi&ecirc;n nhi&ecirc;n quyáº¿n rÅ©.</span></p>', '200000', '230000', '2015-12-04 09:59:00', 11, ''),
(39, 'Ainn TÃ­m', 4, 'Ainn-tim.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '250000', '300000', '2015-12-05 02:03:00', 4, ''),
(40, 'Chanel', 4, 'chanel.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '405000', '450000', '2015-12-05 02:05:00', 14, ''),
(41, 'Daisy ', 4, 'Daisy.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '280000', '310000', '2015-12-05 02:06:00', 4, ''),
(42, 'Diesel Lovedose', 4, 'Diesel-Loverdose.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '300000', '320000', '2015-12-05 02:06:00', 8, ''),
(43, 'Euphoria', 4, 'euphoria.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '180000', '210000', '2015-12-05 02:07:00', 6, '');
INSERT INTO `products` (`id`, `name`, `category_id`, `image`, `description`, `price`, `saleprice`, `created`, `quantity`, `slug`) VALUES
(44, 'Flower Bomb', 4, 'flowerbomb.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '375000', '400000', '2015-12-05 02:08:00', 5, ''),
(45, 'Guess Girl ', 4, 'Guess-girl.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '423000', '450000', '2015-12-05 02:09:00', 6, ''),
(46, 'Heart Felt', 4, 'heartfelt.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '243000', '260000', '2015-12-05 02:09:00', 5, ''),
(47, 'Hypnose', 4, 'hypnose.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '265000', '280000', '2015-12-05 02:10:00', 5, ''),
(48, 'ISeFRyoe', 4, 'ISeFRyoe.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '345000', '368000', '2015-12-05 02:10:00', 2, ''),
(49, 'J''adora', 4, 'j''adora.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '432000', '465000', '2015-12-05 02:12:00', 7, ''),
(50, 'Jennin Sparkling', 4, 'jennin-sparkling.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '215000', '235000', '2015-12-05 02:12:00', 9, ''),
(51, 'Lovely', 4, 'lovely.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '640000', '700000', '2015-12-05 02:13:00', 5, ''),
(52, 'Senite Perfumed cologne', 4, 'senite-perfumed-cologne.jpg', '<p><span style="color: #222222; font-family: Arial, sans-serif, Tahoma; font-size: 14.3px; line-height: 21px; text-align: justify;">HÆ°Æ¡ng thÆ¡m Eclat Ä‘Æ°á»£c v&iacute; nhÆ° &ldquo;má»™t sá»£i d&acirc;y ná»‘i káº¿t&rdquo; Ä‘á»ƒ Ä‘Æ°a báº¡n Ä‘i tá»« thá»±c táº¡i Ä‘áº¿n nÆ¡i m&agrave; nhá»¯ng cáº£m x&uacute;c thÄƒng hoa v&ocirc; háº¡n. Má»™t sá»± má»Ÿ Ä‘áº§u tuyá»‡t vá»i vá»›i hÆ°Æ¡ng l&aacute; chanh Sicili v&agrave; hoa tá»­ Ä‘inh hÆ°Æ¡ng xanh k&igrave; th&uacute;; Eclat tiáº¿p ná»‘i vá»›i chuá»—i hÆ°Æ¡ng sá»‘ng Ä‘á»™ng tá»« hoa Ä‘áº­u t&iacute;a, l&aacute; tr&agrave; xanh, hoa Ä‘&agrave;o v&agrave; hoa máº«u Ä‘Æ¡n Ä‘á». Cuá»‘i c&ugrave;ng l&agrave; táº§ng hÆ°Æ¡ng &ecirc;m &aacute;i cá»§a tuyáº¿t t&ugrave;ng tráº¯ng, xáº¡ hÆ°Æ¡ng v&agrave; há»• ph&aacute;ch qu&iacute;.</span></p>', '450000', '50000', '2015-12-05 02:13:00', 2, ''),
(53, 'Xmen', 2, 'images.jpg', '<p>Sáº£n pháº©m c&oacute; cháº¥t táº©y rá»­a cá»±c máº¡nh, ph&ugrave; há»£p cho nam giá»›i</p>', '50000', '65000', '2015-12-07 02:14:00', 7, 'Xmen-dan-ong-dich-thuc');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(11) unsigned NOT NULL,
  `state` varchar(4) NOT NULL,
  `percent` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `state`, `percent`) VALUES
(1, 'NY', '8.38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first` varchar(50) NOT NULL,
  `last` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `admin` int(11) DEFAULT '1',
  `company` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first`, `last`, `email`, `phone`, `created`, `admin`, `company`) VALUES
(2, 'admin', 'admin', 'Sam', 'Anzaroot', 'samanzaroot@gmail.com', '718-207-2887', '2008-08-28 15:54:50', 0, 'Cosmetic'),
(3, 'PhÆ°Æ¡ng Danh', 'danhcutich23', 'PhÆ°Æ¡ng Danh', 'Tá»«', 'Tuphuongdanh1996@gmail.com', '01649194952', '2008-08-28 19:56:10', 0, 'PNV'),
(5, 'Loc Nguyen', 'lolnguyen', 'Nguyen', 'Ba Loc', 'nguyenbaloc@gmail.com', NULL, '2015-12-07 01:14:40', 1, '012334565467'),
(6, 'HanhNguyen', 'hanhnguyen', 'Nguyá»…n', 'Thá»‹ Háº¡nh', 'Nguyenhanh@gmail.com', '013264894645', '2015-12-07 01:18:43', 0, 'Cosmetic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_blogs`
--
ALTER TABLE `cate_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cate_blogs`
--
ALTER TABLE `cate_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
