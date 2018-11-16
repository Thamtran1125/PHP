-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2015 at 09:24 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_last`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publish_date` date NOT NULL,
  `comment_count` int(11) DEFAULT '0',
  `link_dowload` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `slug`, `image`, `info`, `price`, `sale_price`, `pages`, `publisher`, `publish_date`, `comment_count`, `link_dowload`, `published`, `created`, `modified`) VALUES
(20, 7, '100 Truyá»‡n tiáº¿u lÃ¢m Viá»‡t Nam', '100-truyen-tieu-lam-viet-nam', '100-truyen-tieu-lam-viet-nam.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c.</p>', 120000, 120000, 198, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2010-12-04', 0, 'http://truyentieulam.vn/', 0, '2015-12-06 10:17:35', '2015-12-06 10:23:09'),
(21, 7, '301 Tuyá»‡n cÆ°á»i tiáº¿u lÃ¢m', '301-truyen-cuoi-tieu-lam', '301-truyen-cuoi-tieu-lam.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #f5f5f5;">&nbsp;</p>', 150000, 150000, 121, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2014-12-06', 0, 'https://www.ebooks-it.net/ebook/learning-to-love-data-science', 1, '2015-12-06 10:28:02', '2015-12-06 10:31:00'),
(22, 7, '101 truyá»‡n cÆ°á»i há»c sinh sinh viÃªn', '101-truyen-cuoi-hoc-sinh-sinh-vien', '101-truyen-cuoi-hoc-sinh-sinh-vien.jpg', '<p>Nhá»¯ng máº«u truyá»‡n vui vá» thá»i há»c sinh sinh vi&ecirc;n&nbsp;gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c.</p>', 160000, 160000, 130, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2006-05-17', 0, 'http://trasua.mobi/article/1373-cham-tay-vao-dieu-uoc.html', 1, '2015-12-06 10:32:23', '2015-12-06 10:32:23'),
(23, 7, 'Kho tÃ ng truyá»‡n tiáº¿u lÃ¢m Viá»‡t Nam', 'kho-tang-truyen-tieu-lam-viet-nam', 'kho-tang-truyen-tieu-lam-viet-nam.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 141000, 140000, 145, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2000-02-11', 0, 'http://truyentieulam.vn/', 1, '2015-12-06 10:34:26', '2015-12-06 10:34:26'),
(24, 7, 'Tiáº¿u LÃ¢m', 'tieu-lam', 'tieu-lam.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 135000, 135000, 135, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '1997-04-16', 0, 'http://truyentieulam.vn/', 1, '2015-12-06 10:35:35', '2015-12-06 10:35:35'),
(25, 7, 'Tiáº¿u lÃ¢m truyá»‡n cÆ°á»i', 'tieu-lam-truyen-cuoi', 'tieu-lam-truyen-cuoi.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 160000, 160000, 168, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2010-10-02', 0, 'http://truyentieulam.vn/', 0, '2015-12-06 10:37:09', '2015-12-06 10:37:09'),
(26, 7, 'Tiá»ƒu sá»­ má»›i cá»§a TÃ¢m MÃ£o', 'tieu-su-moi-cua-tam-mao', 'tieu-su-moi-cua-tam-mao.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 162000, 162000, 162, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2008-01-01', 0, 'http://trasua.mobi/article/1373-cham-tay-vao-dieu-uoc.html', 0, '2015-12-06 10:40:50', '2015-12-06 10:40:50'),
(27, 7, 'Tráº¡ng Quá»³nh', 'trang-quynh', 'trang-quynh.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 150000, 150000, 150, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2010-06-16', 0, 'http://truyentieulam.vn/', 1, '2015-12-06 10:42:50', '2015-12-06 10:42:50'),
(28, 7, 'Truyá»‡n cÆ°á»i dÃ¢n gian táº­p 2', 'truyen-cuoi-dan-gian-Viet-Nam-tap-2', 'truyen-cuoi-dan-gian-Viet-Nam-tap-2.jpg', '<p>Nhá»¯ng máº«u truyá»‡n tiáº¿u l&acirc;m gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 180000, 180000, 180, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2007-02-02', 0, 'http://truyentieulam.vn/co-nho-them-ti-nua/', 0, '2015-12-06 10:44:33', '2015-12-06 10:44:33'),
(29, 7, 'Truyá»‡n cÆ°á»i tÃ¬nh yÃªu', 'truyen-cuoi-tinh-yeu', 'truyen-cuoi-tinh-yeu.jpg', '<p>Nhá»¯ng máº«u truyá»‡n cÆ°á»i t&igrave;nh y&ecirc;u&nbsp;gi&uacute;p báº¡n xáº£ stress sau nhá»¯ng ng&agrave;y l&agrave;m viá»‡c má»‡t nhá»c</p>', 20000, 200000, 200, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2012-08-01', 1, 'http://truyentieulam.vn/co-nho-them-ti-nua/', 1, '2015-12-06 10:46:02', '2015-12-06 10:46:02'),
(30, 8, '2015 Learning To Love Data Science', '2015-learning-to-love-data-science', '2015-learning-to-love-data-science.jpg', '<p>S&aacute;ch n&agrave;y l&agrave; to&agrave;n tiáº¿ng anh, gi&uacute;p báº¡n há»c ná» táº£ng dÅ© liá»‡u.</p>', 250000, 250000, 200, 'NhÃ  xuáº¥t báº£n tráº»', '2012-06-03', 0, 'http://sach-it.blogspot.com/', 1, '2015-12-06 10:49:38', '2015-12-06 10:49:38'),
(31, 8, '2015 The offical scratchjr book', '2015-the-official-scratchjr-book', '2015-the-official-scratchjr-book.jpg', '<p>S&aacute;ch hÆ°á»›ng dáº«n báº¡n há»c Scratchjr, t&agrave;i liá»‡u to&agrave;n tiáº¿ng anh nh&eacute;</p>', 265000, 265000, 250, 'NhÃ  xuáº¥t báº£n thanh niÃªn', '2007-02-17', 0, 'http://sach-it.blogspot.com/2015/01/learn-python-hard-way-3rd-edition.html', 1, '2015-12-06 10:52:31', '2015-12-06 11:01:22'),
(32, 8, 'Algorithms 4th edition', 'algorithms-4th-edition', 'algorithms-4th-edition.jpg', '<p>S&aacute;ch d&ugrave;ng cho nhá»¯ng ngÆ°á»i má»›i há»c m&ocirc;n C cÆ¡ báº£n, t&agrave;i liá»‡u to&agrave;n tiáº¿ng Anh nh&eacute;.</p>', 259000, 259000, 287, 'NhÃ  xuáº¥t báº£n thanh niÃªn', '2013-04-15', 0, 'http://sach-it.blogspot.com/2015/01/learning-nodejs.html', 1, '2015-12-06 10:54:39', '2015-12-06 11:01:49'),
(33, 8, 'Beautiful Javascript', 'beautiful-javascript', 'beautiful-javascript.jpg', '<p>S&aacute;ch há»c Javascript, dáº¡y c&aacute;ch l&agrave;m tháº¿ n&agrave;o táº¡o Ä‘Æ°á»£c má»™t trang web Ä‘áº¹p</p>', 205000, 205000, 245, 'NhÃ  xuáº¥t báº£n Äáº¡i há»c CÃ´ng Nghá»‡', '2013-09-16', 0, 'http://sach-it.blogspot.com/2015/01/a-tour-of-c.html', 1, '2015-12-06 10:57:32', '2015-12-06 11:02:05'),
(34, 9, 'Ãnh hoÃ ng hÃ´n má»ng manh', 'anh-hoang-hon-mong-manh', 'anh-hoang-hon-mong-manh.jpg', '<p><span style="color: #3c3c3c; font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Tr&ecirc;n tháº¿ giá»›i n&agrave;y, c&oacute; má»™t sá»‘ thá»© kh&ocirc;ng pháº£i l&agrave; ch&acirc;n l&yacute; nhÆ°ng ch&uacute;ng ta váº«n cá»© tin m&agrave; kh&ocirc;ng ch&uacute;t ho&agrave;i nghi.</span></p>\r\n<p style="margin: 0px; padding: 0px; font-size: 12px; line-height: 1.5em; text-align: justify; color: #3c3c3c; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; font-size: 12px; line-height: 1.5em; text-align: justify; color: #3c3c3c; font-family: Arial, Helvetica, sans-serif;">&nbsp;</p>\r\n<p><span style="color: #3c3c3c; font-family: Arial, Helvetica, sans-serif; font-size: 12px;">V&iacute; nhÆ° ngÆ°á»i ta hay n&oacute;i: "t&igrave;nh y&ecirc;u kh&ocirc;ng Ä‘Æ°á»£c dá»‘i tr&aacute;"...</span></p>', 80000, 80000, 150, 'NhÃ  xuáº¥t báº£n tráº»', '2014-02-28', 0, 'http://sstruyen.com/doc-truyen/ngon-tinh/anh-hoang-hon-mong-manh/t1239.html', 1, '2015-12-06 11:04:28', '2015-12-06 11:04:28'),
(35, 10, 'Äáº¯c nhÃ¢n tÃ¢m', 'dac-nhan-tam', 'dac-nhan-tam.jpg', '<p>Ng&agrave;y 7 th&aacute;ng 5 nÄƒm 1931, mÆ°á»i ng&agrave;n ngÆ°á»i á»Ÿ ch&acirc;n th&agrave;nh Ná»¯u Æ¯á»›c (New York) Ä‘Æ°á»£c má»¥c k&iacute;ch má»™t cuá»™c sÄƒn ngÆ°á»i s&ocirc;i ná»•i chÆ°a tá»«ng tháº¥y...</p>', 69000, 69000, 295, 'NhÃ  xuáº¥t báº£n tráº»', '2013-07-31', 0, 'http://maxreading.com/sach-hay/dac-nhan-tam/phan-i-chuong-1-569.html', 1, '2015-12-06 11:08:43', '2015-12-06 11:08:43'),
(36, 11, 'Ba cÃ´ tiÃªn', 'ba-co-tien', 'ba-co-tien.jpg', '<p>Truyá»‡n cá»• t&iacute;ch ba c&ocirc; ti&ecirc;n - truyá»‡n c&oacute; h&igrave;nh áº£nh minh há»a.</p>', 20000, 20000, 95, 'NhÃ  xuáº¥t báº£n thiáº¿u nhi', '2014-03-02', 0, 'https://www.ebooks-it.net/ebook/learning-to-love-data-science', 1, '2015-12-06 11:11:10', '2015-12-06 11:11:10'),
(37, 12, 'BÃ­ máº­t ngÆ°á»i yÃªu cÅ©', 'bi-mat-nguoi-yeu-cu', 'bi-mat-nguoi-yeu-cu.jpg', '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">NgÆ°á»i y&ecirc;u cÅ© l&agrave; ai? Ä&oacute; l&agrave; má»™t hoáº·c má»™t sá»‘ ngÆ°á»i, m&agrave; háº³n l&agrave; trong cuá»™c Ä‘á»i cá»§a má»—i ch&uacute;ng ta, ai cÅ©ng Ä‘&atilde; tá»«ng vui, buá»“n v&agrave; rÆ¡i nÆ°á»›c máº¯t v&igrave; há»...</span></p>', 185000, 185000, 203, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2013-07-25', 0, 'http://trasua.mobi/article/1654-bi-mat-nguoi-yeu-cu-kawi.html', 1, '2015-12-06 11:13:22', '2015-12-06 11:13:22'),
(38, 13, 'ChÃ­ phÃ¨o vÃ  Facebook', 'chi-pheo-va-facebook', 'chi-pheo-va-facebook.jpg', '<p><span style="color: #141823; font-family: helvetica, arial, sans-serif; font-size: 14px; line-height: 19.32px;">C&oacute; láº½ háº§u háº¿t nhá»¯ng ngÆ°á»i d&ugrave;ng Internet Ä‘á»u c&oacute; &iacute;t nháº¥t má»™t t&agrave;i khoáº£n Facebook. N&oacute;i &iacute;t nháº¥t l&agrave; bá»Ÿi nhiá»u ngÆ°á»i sá»Ÿ há»¯u tá»›i v&agrave;i ba c&aacute;i t&agrave;i khoáº£n kh&aacute;c nhau...</span></p>', 199000, 199000, 305, 'NhÃ  xuáº¥t báº£n thanh niÃªn', '2013-01-24', 0, 'https://vi-vn.facebook.com/truyencuoibua/posts/637646159681984', 1, '2015-12-06 11:15:28', '2015-12-06 11:15:28'),
(39, 8, 'C# in a nutshell 6th edition', 'C#in-a-nutshell-6th-edition', 'clean-code.jpg', '<p>Quyá»ƒn s&aacute;ch chá»‰ báº¡n c&aacute;ch há»c cÆ¡ báº£n nháº¥t cá»§a C# d&agrave;nh cho nhá»¯ng ngÆ°á»i má»›i há»c C#.</p>', 205000, 205000, 205, 'NhÃ  xuáº¥t báº£n Äáº¡i há»c CÃ´ng Nghá»‡', '2014-08-04', 0, 'https://www.ebooks-it.net/ebook/learning-to-love-data-science', 1, '2015-12-06 11:18:04', '2015-12-06 11:21:53'),
(40, 8, 'Clean code', 'clean-code', 'clean-code.jpg', '<p>S&aacute;ch dáº¡y báº¡n c&aacute;ch l&agrave;m sáº¡ch nhá»¯ng Ä‘oáº¡n code, dá»… nh&igrave;n hÆ¡n v&agrave; cháº¯c cháº¯n l&agrave; báº¡n sáº½ l&agrave;m tá»‘t khi Ä‘á»c nhuáº§n nhuyá»…n quyá»ƒn s&aacute;ch n&agrave;y</p>', 203000, 203000, 203, 'NhÃ  xuáº¥t báº£n Äáº¡i há»c CÃ´ng Nghá»‡', '2013-03-16', 0, 'http://sach-it.blogspot.com/2015/01/a-tour-of-c.html', 0, '2015-12-06 11:20:30', '2015-12-06 11:20:30'),
(41, 9, 'Ãnh trÄƒng Ä‘Ã£ lÃ£ng quÃªn', 'anh-trang-noi-da-lang-quen', 'anh-trang-noi-da-lang-quen.jpg', '<p>&Aacute;nh trÄƒng n&oacute;i Ä‘&atilde; l&atilde;ng qu&ecirc;n cá»§a t&aacute;c giáº£ Äá»™c Má»™c Ch&acirc;u l&agrave; c&acirc;u chuyá»‡n vá» t&igrave;nh y&ecirc;u, cuá»™c sá»‘ng cá»§a nhá»¯ng con ngÆ°á»i tráº» tuá»•i.&nbsp;</p>', 209000, 209000, 210, 'NhÃ  xuáº¥t báº£n tráº»', '2013-11-10', 0, 'http://diendanlequydon.com/viewtopic.php?f=158&t=294564', 1, '2015-12-06 11:24:21', '2015-12-06 11:24:21'),
(42, 9, 'BÄƒng chá»§ Ä‘oáº¡t yÃªu', 'bang-chu-doat-yeu', 'bang-chu-doat-yeu.jpg', '<p><span style="color: #211922; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 20.8px;">C&ocirc; Ä‘&atilde; g&acirc;y ra tá»™i lá»—i g&igrave; chá»©, &ocirc;ng trá»i muá»‘n trá»«ng pháº¡t c&ocirc; tháº¿ n&agrave;o Ä‘&acirc;y? C&oacute; má»™t Ä‘á»©a em y&ecirc;u qu&yacute; chuy&ecirc;n g&acirc;y chuyá»‡n thá»‹ phi xung quanh Ä‘&atilde; Ä‘á»§ Ä‘au Ä‘áº§u nhá»©c &oacute;c rá»“i...</span></p>', 305000, 305000, 369, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2016-12-09', 0, 'http://www.truyenngan.com.vn/tieu-thuyet/truyen-ngon-tinh-hien-dai/706-bang-chu-doat-yeu.html', 1, '2015-12-06 11:27:15', '2015-12-06 11:49:52'),
(43, 11, 'Ba Ä‘iá»u Æ°á»›c', 'ba-dieu-uoc', 'ba-dieu-uoc.jpg', '<p><span style="color: #211922; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 20.8px;">V&igrave; sá»›m Ä‘áº¿n ng&agrave;y Ä‘Æ°á»£c tháº£ tá»± do, c&ocirc; váº¯t háº¿t &oacute;c Ä‘á»ƒ l&agrave;m anh ta ch&aacute;n c&ocirc;, náº¿u anh ta d&ugrave;ng tiá»n tá»›i dá»¥ c&ocirc;, c&ocirc; sáº½ kh&aacute;ch s&aacute;o cá»‘ gáº¯ng d&ugrave;ng quáº§n &aacute;o trang Ä‘iá»ƒm xinh Ä‘áº¹p giá»‘ng nhÆ° nhá»¯ng c&ocirc; n&agrave;ng láº³ng lÆ¡...</span></p>', 53000, 53000, 85, 'NhÃ  xuáº¥t báº£n thiáº¿u nhi', '2014-11-05', 0, 'https://www.ebooks-it.net/ebook/learning-to-love-data-science', 1, '2015-12-06 11:29:35', '2015-12-06 11:50:34'),
(44, 12, 'ThiÃªn tháº§n bÃ³ng tá»‘i', 'thien-than-bong-toi', 'thien-than-bong-toi.jpg', '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Kh&ocirc;ng tinh nghik, Kh&ocirc;ng l&atilde;ng máº¡n Kh&ocirc;ng c&oacute; nhá»¯ng xung Ä‘á»™t dá»… thÆ°Æ¡ng kiá»ƒu H&agrave;n Kh&ocirc;ng c&oacute; nhá»¯ng va cháº¡m mo-tip trÆ°á»ng hok quen thuá»™c! Má»™t tháº¿ giá»›i m&agrave;u Ä‘en u &aacute;m, cháº¿t ch&oacute;c Ä‘áº§y quyá»n lá»±c...</span></p>', 205000, 205000, 298, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2014-10-04', 0, 'http://webtruyen.com/black-angel-thien-than-bong-toi/', 1, '2015-12-06 11:32:05', '2015-12-06 11:32:05'),
(45, 12, 'Em sáº½ Ä‘áº¿n cÃ¹ng cÆ¡n mÆ°a', 'em-se-den-cung-con-mua', 'em-se-den-cung-con-mua.jpg', '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: justify;">Má»™t tháº¿ giá»›i m&agrave;u Ä‘en u &aacute;m, cháº¿t ch&oacute;c Ä‘áº§y quyá»n lá»±c! Tháº¿ giá»›i thá»±c cá»§a mafia! Má»™t "n&agrave;ng c&ocirc;ng ch&uacute;a thuáº§n khiáº¿t" Ba ch&agrave;ng thiáº¿u gia Ä‘áº¹p trai of 1 &ocirc;ng tr&ugrave;m...</span></p>', 350000, 350000, 322, 'NhÃ  xuáº¥t báº£n tráº»', '2010-12-06', 1, 'http://trasua.mobi/article/1373-cham-tay-vao-dieu-uoc.html', 1, '2015-12-06 11:34:08', '2015-12-06 11:51:15'),
(46, 12, 'HÃ ng Ä‘Ã£ nháº­n miá»…n tráº£ láº¡i', 'hang-da-nhan-mien-tra-lai', 'hang-da-nhan-mien-tra-lai.jpg', '<p>M&egrave;oLÆ°á»i Ngá»§ Ng&agrave;y lu&ocirc;n cho tháº¥y sá»©c s&aacute;ng táº¡o kh&ocirc;ng ngá»«ng cá»§a m&igrave;nh, nháº¥t l&agrave; khi káº¿t há»£p c&aacute;c yáº¿u tá»‘ hiá»‡n Ä‘áº¡i, tháº§n ti&ecirc;n, k&igrave; áº£o trong cuá»‘n truyá»‡n má»›i nháº¥t cá»§a m&igrave;nh &ldquo;H&agrave;ng Ä‘&atilde; nháº­n, miá»…n tráº£ láº¡i&rdquo;...</p>', 255000, 255000, 255, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2013-09-03', 2, 'http://luv-ebook.com/forums/thread-2960.html', 1, '2015-12-06 11:36:11', '2015-12-06 11:53:06'),
(47, 12, 'HÃ³a ra anh váº«n á»Ÿ Ä‘áº¥y', 'hoa-ra-anh-van-o-day', 'hoa-ra-anh-van-o-day.jpg', '<p style="margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: Tahoma, Geneva, sans-serif; vertical-align: baseline; max-width: 100%; color: #211922;">&nbsp;Má»™t ngÆ°á»i Ä‘&atilde; c&oacute; thá»i gáº§n gÅ©i nhÆ° da thá»‹t tr&ecirc;n ngÆ°á»i, ho&aacute; ra cÅ©ng báº·t v&ocirc; &acirc;m t&iacute;n giá»¯a biá»ƒn ngÆ°á»i m&ecirc;nh m&ocirc;ng...</p>', 350000, 35000, 350, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2011-03-17', 0, 'http://www.truyenngan.com.vn/tieu-thuyet/truyen-ngon-tinh-hien-dai/484-hoa-ra-anh-van-o-day.html', 1, '2015-12-06 11:38:26', '2015-12-06 11:51:50'),
(48, 13, 'ChÃºng ta á»Ÿ Ä‘Ã³ cÃ²n tÃ¬nh yÃªu khÃ´ng', 'chung-ta-o-do-con-tinh-yeu-khong', 'chung-ta-o-do-con-tinh-yeu-khong.jpg', '<p>Lá»‘i viáº¿t h&agrave;i hÆ°á»›c lu&ocirc;n l&agrave; tháº¿ máº¡nh cá»§a c&ocirc;, v&agrave; láº§n n&agrave;y cÅ©ng kh&ocirc;ng ngoáº¡i lá»‡ khi ngay tá»« Ä‘áº§u truyá»‡n, Ä‘á»™c giáº£ Ä‘&atilde; Ä‘Æ°á»£c tráº£i nghiá»‡m má»™t t&igrave;nh huá»‘ng qu&aacute; Ä‘á»—i báº¥tngá»...</p>', 321000, 321000, 321, 'NhÃ  xuáº¥t báº£n thanh niÃªn', '2014-11-05', 0, 'http://www.truyenngan.com.vn/tieu-thuyet/truyen-ngon-tinh-hien-dai/956-em-se-den-cung-con-mua.html', 1, '2015-12-06 11:40:00', '2015-12-06 11:40:00'),
(49, 13, 'Chuyá»‡n con chuyá»‡n cha', 'chuyen-con-chuyen-cha', 'chuyen-con-chuyen-cha.jpg', '<p><span style="color: #211922; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 20.8px;">&Ocirc;ng trá»i c&oacute; thá»ƒ xui khiáº¿n hai káº» c&oacute; t&igrave;nh tr&ugrave;ng ph&ugrave;ng nÆ¡i ch&acirc;n trá»i g&oacute;c bá»ƒ, tháº¿ m&agrave; bá»‘n nÄƒm d&agrave;i Ä‘áº±ng Ä‘áºµng cháº³ng Ä‘Æ°a Ä‘áº©y cho bá»n há» há»™i ngá»™ láº¥y má»™t láº§n, áº¯t háº³n l&agrave; trá»«ng pháº¡t bá»n h&ocirc; y&ecirc;u nhau c&ograve;n chÆ°a Ä‘á»§ s&acirc;u náº·ng...</span></p>', 123000, 123000, 123, 'NhÃ  xuáº¥t báº£n tráº»', '2014-03-14', 0, 'http://www.truyenngan.com.vn/tieu-thuyet/truyen-ngon-tinh-hien-dai/956-em-se-den-cung-con-mua.html', 1, '2015-12-06 11:41:30', '2015-12-06 11:41:30'),
(50, 13, 'Chuyá»‡n Iphone vÃ  gÃ£ cháº£nh mang máº­t danh', 'chuyen-iphone-va-ga-chanh-mang-mat-danh', 'chuyen-iphone-va-ga-chanh-mang-mat-danh.jpg', '<p style="margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: Tahoma, Geneva, sans-serif; vertical-align: baseline; max-width: 100%; color: #211922;">CÅ©ng pháº£i, ngÆ°á»i ta pháº£i lu&ocirc;n náº¿m tráº£i c&aacute;i kh&ocirc;ng háº¡nh ph&uacute;c, th&igrave; má»›i hiá»u tháº¿ n&agrave;o l&agrave; háº¡nh ph&uacute;c ...</p>\r\n<p style="margin: 10px 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: Tahoma, Geneva, sans-serif; vertical-align: baseline; max-width: 100%; color: #211922;">... Khi c&ograve;n son tráº», ch&uacute;ng m&igrave;nh cÅ©ng Ä‘&atilde; tá»«ng láº¡c bÆ°á»›c, nhÆ°ng váº«n á»•n, ngÆ°á»£c xu&ocirc;i ngang dá»c,,</p>', 125000, 125000, 125, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2013-10-04', 0, 'http://trasua.mobi/article/1373-cham-tay-vao-dieu-uoc.html', 1, '2015-12-06 11:43:04', '2015-12-06 11:43:04'),
(51, 13, 'Äá»«ng thÃ¡o xuá»‘ng ná»¥ cÆ°á»i', 'dung-thao-xuong-nu-cuoi', 'dung-thao-xuong-nu-cuoi.jpg', '<p>Truyá»‡n Ä‘Æ°á»£c Ä‘Æ°a l&ecirc;n vá»›i má»¥c Ä‘&iacute;ch chia sáº» phi lá»£i nhuáº­n trong cá»™ng Ä‘á»“ng y&ecirc;u th&iacute;ch tiá»ƒu thuyáº¿t, Ä‘á»“ng thá»i gi&uacute;p Ä‘á»¡ c&aacute;c báº¡n kh&ocirc;ng c&oacute; Ä‘iá»u kiá»‡n Ä‘á»c truyá»‡n do giá»›i háº¡n vá» ng&ocirc;n ngá»¯, Ä‘á»‹a phÆ°Æ¡ng, hay Ä‘iá»u kiá»‡n t&igrave;m mua s&aacute;ch....</p>', 142000, 142000, 142, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2013-08-28', 0, 'http://truyentieulam.vn/co-nho-them-ti-nua/', 1, '2015-12-06 11:44:34', '2015-12-06 11:44:34'),
(52, 11, 'Báº§y chim thiÃªn nga', 'bay-chim-thien-nga', 'bay-chim-thien-nga.jpg', '<p>Truyá»‡n Ä‘Æ°á»£c Ä‘Æ°a l&ecirc;n vá»›i má»¥c Ä‘&iacute;ch chia sáº» phi lá»£i nhuáº­n trong cá»™ng Ä‘á»“ng y&ecirc;u th&iacute;ch tiá»ƒu thuyáº¿t, Ä‘á»“ng thá»i gi&uacute;p Ä‘á»¡ c&aacute;c báº¡n kh&ocirc;ng c&oacute; Ä‘iá»u kiá»‡n Ä‘á»c truyá»‡n do giá»›i háº¡n vá» ng&ocirc;n ngá»¯, Ä‘á»‹a phÆ°Æ¡ng, hay Ä‘iá»u kiá»‡n t&igrave;m mua s&aacute;ch.... c&oacute; thá»ƒ tiáº¿p cáº­n t&aacute;c pháº©m.</p>', 45000, 45000, 87, 'NhÃ  xuáº¥t báº£n thiáº¿u nhi', '2012-04-05', 0, 'https://www.ebooks-it.net/ebook/learning-to-love-data-science', 1, '2015-12-06 11:46:00', '2015-12-06 11:46:00'),
(53, 11, 'Bá»‘n anh tÃ i', 'bon-anh-tai', 'bon-anh-tai.jpg', '<p>Báº¡nc&oacute; thá»ƒ n&agrave;o tÆ°á»Ÿng tÆ°á»£ng Ä‘Æ°á»£c, chá» Ä‘&oacute;n m&igrave;nh trong ng&agrave;y sinh nháº­t l&agrave; má»™t m&oacute;n qu&agrave; to Ä‘&ugrave;ng, b&ecirc;n trong l&agrave; má»™t ch&agrave;ng trai Ä‘&aacute;ng y&ecirc;u Ä‘ang náº±m ngá»§...</p>', 56000, 56000, 98, 'NhÃ  xuáº¥t báº£n vÄƒn há»c', '2012-09-03', 0, 'http://trasua.mobi/article/1373-cham-tay-vao-dieu-uoc.html', 1, '2015-12-06 11:47:29', '2015-12-06 11:52:31'),
(54, 10, '10 nghá»‹ch lÃ½ cá»§a cuá»™c sá»‘ng', '10-nghich-ly-cuoc-song', '10-nghich-ly-cuoc-song.jpg', '<p>Báº¡nc&oacute; thá»ƒ n&agrave;o tÆ°á»Ÿng tÆ°á»£ng Ä‘Æ°á»£c, chá» Ä‘&oacute;n m&igrave;nh trong ng&agrave;y sinh nháº­t l&agrave; má»™t m&oacute;n qu&agrave; to Ä‘&ugrave;ng, b&ecirc;n trong l&agrave; má»™t ch&agrave;ng trai Ä‘&aacute;ng y&ecirc;u Ä‘ang náº±m ngá»§? C&oacute; thá»ƒ báº¡n chÆ°a Ä‘Æ°á»£c thá»­ qua nhÆ°ng Ä‘&oacute; ch&iacute;nh x&aacute;c l&agrave; nhá»¯ng g&igrave; ná»¯ ch&iacute;nh trong truyá»‡n gáº·p pháº£i.</p>', 245000, 245000, 245, 'NhÃ  xuáº¥t báº£n thanh niÃªn', '2014-03-17', 1, 'http://truyentieulam.vn/', 1, '2015-12-06 11:49:01', '2015-12-06 11:49:01'),
(55, 10, 'Cho Ä‘i lÃ  cÃ²n mÃ£i mÃ£i', 'cho-di-la-con-mai-mai', 'cho-di-la-con-mai-mai.jpg', '<p>Lá»¥cVi, má»™t c&ocirc; g&aacute;i tráº» - lo&agrave;i - ngÆ°á»i bá»—ng nhi&ecirc;n gáº·p pháº£i v&ocirc; sá»‘ t&igrave;nh huá»‘ng dá»Ÿ kh&oacute;c dá»Ÿ cÆ°á»i, tháº­m ch&iacute; l&agrave; qu&aacute;i láº¡ trong cuá»™c sá»‘ng vá»‘n b&igrave;nh y&ecirc;n cá»§a m&igrave;nh. Nam Huyá»n ng&acirc;y thÆ¡...</p>', 98000, 98000, 210, 'NhÃ  xuáº¥t báº£n Viá»‡t Nam', '2009-06-06', 0, 'http://sach-it.blogspot.com/2015/01/a-tour-of-c.html', 1, '2015-12-06 11:54:39', '2015-12-06 11:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `books_writers`
--

CREATE TABLE IF NOT EXISTS `books_writers` (
  `book_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_writers`
--

INSERT INTO `books_writers` (`book_id`, `writer_id`) VALUES
(20, 6),
(21, 7),
(22, 5),
(23, 3),
(24, 6),
(25, 18),
(26, 9),
(27, 18),
(28, 18),
(29, 18),
(30, 9),
(31, 9),
(32, 6),
(33, 9),
(34, 6),
(35, 5),
(36, 3),
(37, 3),
(38, 7),
(39, 3),
(40, 9),
(41, 7),
(42, 5),
(43, 5),
(44, 3),
(45, 5),
(46, 3),
(47, 3),
(48, 7),
(49, 6),
(50, 5),
(51, 5),
(52, 5),
(53, 7),
(54, 7),
(55, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `parent_id`, `created`) VALUES
(7, 'Truyá»‡n cÆ°á»i', 'truyen-cuoi ', 'Truyá»‡n cÆ°á»i (cÃ²n gá»i lÃ  truyá»‡n tiáº¿u lÃ¢m) lÃ  má»™t lÄ©nh vá»±c truyá»‡n ká»ƒ dÃ¢n gian rá»™ng lá»›n, Ä‘a dáº¡ng, phá»©c táº¡p bao gá»“m nhá»¯ng hÃ¬nh thá»©c Ä‘Æ°á»£c gá»i báº±ng nhá»¯ng danh tá»« khÃ¡c nhau nhÆ° truyá»‡n tiáº¿u lÃ¢m, truyá»‡n khÃ´i hÃ i, truyá»‡n trÃ o phÃºng, truyá»‡n tráº¡ng, giai thoáº¡i hÃ i hÆ°á»›c... ', 0, '2015-12-06 09:52:54'),
(8, 'SÃ¡ch cÃ´ng nghá»‡ thÃ´ng tin', 'sach-it ', 'Nhá»¯ng quyá»ƒn sÃ¡ch vá» cÃ´ng nghá»‡ thÃ´ng tin, bao gá»“m tiáº¿ng Anh vÃ  tiáº¿ng Viá»‡t.', 0, '2015-12-06 09:52:58'),
(9, 'Truyá»‡n ngÃ´n tÃ¬nh ', 'truyen-ngon-tinh', 'Nhá»¯ng cÃ¢u chuyá»‡n lÃ£ng máº¡ng cáº£ trong nÆ°á»›c vÃ  ngoÃ i nÆ°á»›c(Ä‘Æ°á»£c dá»‹ch sang tiáº¿ng Viá»‡t).', 0, '2015-12-06 09:53:00'),
(10, 'SÃ¡ch tÃ¢m lÃ½', 'sach-tam-ly', 'Nhá»¯ng quyá»ƒn sÃ¡ch nÃ y sáº½ giÃºp báº¡n sá»‘ng vui hÆ¡n, hoÃ n thiá»‡n hÆ¡n...', 0, '2015-12-06 09:53:02'),
(11, 'Truyá»‡n cá»• tÃ­ch', 'truyen-co-tich', 'NhÅ©ng cÃ¢u chuyá»‡n cá»• tÃ­ch cá»§a Viá»‡t Nam cÅ©ng nhÆ° nÆ°á»›c ngoÃ i.', 0, '2015-12-06 09:55:06'),
(12, 'Truyá»‡n dÃ i', 'truyen-dai', 'Nhá»¯ng máº«u truyá»‡n dÃ i, dÃ nh cho nhá»¯ng báº¡n thÃ­ch Ä‘á»c truyá»‡n dÃ i, thiÃªn vá» tÃ¬nh cáº£m lÃ£ng máº¡n.', 0, '2015-12-06 09:56:30'),
(13, 'Truyá»‡n ngáº¯n', 'truyen-ngan', 'Nhá»¯ng máº«u truyá»‡n ngáº¯n sá»… thÆ°Æ¡ng cá»§a nhá»¯ng tÃ¡c giáº£ tuá»•i teen, bÃªn cáº¡nh váº«n cÃ³ nhá»¯ng máº«u truyá»‡n cho ngÆ°á»i Ä‘á»©ng tá»•i.', 0, '2015-12-06 09:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `content`, `created`) VALUES
(1, 1, 3, 'TÃ´i thÃ­ch nÃ³ nhiá»u', '2015-11-28 08:37:11'),
(2, 1, 3, 'I love you but you don''t love me', '2015-11-28 09:42:30'),
(4, 1, 46, '<p>Hay láº¯m c&aacute;c báº¡n Æ¡i................</p>', '2015-12-06 12:18:47'),
(5, 1, 45, '<p>S&aacute;ch hay láº¯m Ä‘&oacute;</p>', '2015-12-08 03:38:54'),
(6, 1, 29, '<p>Toi rat thich quyen sach nay</p>\r\n<p>&nbsp;</p>', '2015-12-08 10:51:02'),
(7, 1, 46, '<p>ggggg</p>', '2015-12-08 11:18:50'),
(8, 1, 54, '<p>S&aacute;ch hay láº¯m...........</p>', '2015-12-09 02:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `readed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `fullname`, `email`, `phone`, `address`, `content`, `created`, `readed`) VALUES
(1, '', 'lala', 'nguyenla@gmail.com', '01698879312', 'Quang TRi', 'fhsgfhsdgf', '2015-12-09 08:55:44', NULL),
(2, '', 'Nguyá»…n Thá»‹ LÃ ', 'la@gmail.com', '01698879312', 'lala', 'gdfhfgh', '2015-12-09 08:57:59', NULL),
(3, '', 'Nguyen Thi La', 'la@gmail.com', '01698879312', 'Hai Lang', 'Hsjhdsaf', '2015-12-09 09:12:09', NULL),
(4, '', 'lala Nguyen', 'lala@gmail.com', '01698879312', 'Da Nang', 'gdfhfgh', '2015-12-09 09:22:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` float NOT NULL,
  `description` text NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percent`, `description`, `time_start`, `time_end`, `created`, `modified`) VALUES
(1, '1', 20, 'hi', '2015-02-14 13:28:00', '2015-04-27 13:28:00', '2015-11-27 13:28:33', '2015-11-27 13:28:33'),
(2, '123', 20, 'Vá»›i mÃ£ giáº£m giÃ¡ nÃ y báº¡n cÃ³ thá»ƒ mua Ä‘Æ°á»£c ráº¥t nhiá»u quyá»ƒn sÃ¡ch hay.', '2015-12-07 08:07:00', '2016-12-07 08:07:00', '2015-12-07 08:08:40', '2015-12-07 08:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created`) VALUES
(1, 'NgÆ°á»i dÃ¹ng', 'LÃ  ngÆ°á»i cÃ³ kinh nghiá»‡m trong viá»‡c Ä‘á»c truyá»‡n', '2015-11-28 08:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `slide` tinyint(4) NOT NULL,
  `advertisement` tinyint(4) NOT NULL,
  `partner` tinyint(4) NOT NULL,
  `publish` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `description`, `image`, `slide`, `advertisement`, `partner`, `publish`) VALUES
(17, 'slide 2', '<p>slide 2</p>', 'slide-2.png', 1, 1, 0, 1),
(18, 'slide 3', '<p>slide 3</p>', 'slide-3.png', 1, 1, 0, 1),
(19, 'slide 4', '<p>slide 4</p>', 'slide-4.png', 1, 1, 0, 1),
(20, 'slide 5', '<p>slide 5</p>', 'slide-5.png', 1, 1, 0, 1),
(21, 'slide 1', '<p>slide 1</p>', 'slide-1.png', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_info` text NOT NULL,
  `order_info` text NOT NULL,
  `payment_info` text NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_info`, `order_info`, `payment_info`, `status`, `created`, `modified`) VALUES
(1, 1, '{"name":"T\\u1eeb Ph\\u01b0\\u01a1ng Danh","email":"tuphuongdanh@gmail.com","address":"TP. \\u0110\\u00e0 N\\u1eb5ng","phone":"01649194952"}', '{"44":{"id":"44","title":"Thi\\u00ean th\\u1ea7n b\\u00f3ng t\\u1ed1i","slug":"thien-than-bong-toi","sale_price":"205000","quantity":1},"54":{"id":"54","title":"10 ngh\\u1ecbch l\\u00fd c\\u1ee7a cu\\u1ed9c s\\u1ed1ng","slug":"10-nghich-ly-cuoc-song","sale_price":"245000","quantity":2}}', '{"total":695000}', 0, '2015-12-07 02:28:19', '2015-12-07 02:28:19'),
(2, 1, '{"name":"Nguyen Thi La","email":"la@gmail.com","address":"Da Nang","phone":"01698879312"}', '{"52":{"id":"52","title":"B\\u1ea7y chim thi\\u00ean nga","slug":"bay-chim-thien-nga","sale_price":"45000","quantity":1},"53":{"id":"53","title":"B\\u1ed1n anh t\\u00e0i","slug":"bon-anh-tai","sale_price":"56000","quantity":1}}', '{"total":101000,"coupon":"123","discount":"20","pay":80800}', 0, '2015-12-07 08:09:37', '2015-12-07 08:09:37'),
(3, 1, 'Nguyen Thi La', 'Ngay 30/11', '2423', 2, '2015-12-09 08:46:09', '2015-12-09 08:46:09'),
(4, 1, '{"name":"Nguyen Thi La","email":"la@gmail.com","address":"Da Nang","phone":"01698879312"} ', 'fsdg', 'gfh', 3, '2015-12-09 08:47:04', '2015-12-09 08:47:04'),
(5, 1, '{"name":"Nguyen Thi La","email":"la@gmail.com","address":"abd","phone":"01649194952"}', '{"54":{"id":"54","title":"10 ngh\\u1ecbch l\\u00fd c\\u1ee7a cu\\u1ed9c s\\u1ed1ng","slug":"10-nghich-ly-cuoc-song","sale_price":"245000","quantity":1}}', '{"total":245000}', 0, '2015-12-09 08:49:09', '2015-12-09 08:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` char(13) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `username`, `password`, `email`, `firstname`, `lastname`, `address`, `phone_number`, `created`, `modified`) VALUES
(1, 1, 'nguyen thi la', '1234', 'la@gmail.com', 'Lala', 'Nguyen', 'Da Nang', '01698879312', '2015-11-28 08:35:57', '2015-11-28 08:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE IF NOT EXISTS `writers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `slug`, `biography`, `created`) VALUES
(3, 'Chi Chan', 'chi-chan', 'TÃªn tháº­t: LÃª Báº£o Thoa\r\nNgÃ y sinh: 22 â€“ 01\r\nSá»Ÿ thÃ­ch: Viáº¿t truyá»‡n, nghiá»n Manga, mÄƒm kem Marino, lÃ  má»™t cass chÃ­nh hiá»‡u.\r\nPhÆ°Æ¡ng chÃ¢m sá»‘ng: Khi bÃ³ng tá»‘i vÃ¢y quanh báº¡n, Ä‘á»«ng sá»£ hÃ£i! Chá»‰ khi xung quanh tá»‘i Ä‘en, báº¡n má»›i nhÃ¬n rÃµ Ä‘Æ°á»£c nhá»¯ng ngÃ´i sao sÃ¡ng.', '2015-12-06 10:00:19'),
(5, 'Chu Ngá»c', 'chu-ngoc', 'TÃªn tháº­t: LÃª Báº£o Thoa\r\nNgÃ y sinh: 22 â€“ 01\r\nSá»Ÿ thÃ­ch: Viáº¿t truyá»‡n, nghiá»n Manga, mÄƒm kem Marino, lÃ  má»™t cass chÃ­nh hiá»‡u.\r\nPhÆ°Æ¡ng chÃ¢m sá»‘ng: Khi bÃ³ng tá»‘i vÃ¢y quanh báº¡n, Ä‘á»«ng sá»£ hÃ£i! Chá»‰ khi xung quanh tá»‘i Ä‘en, báº¡n má»›i nhÃ¬n rÃµ Ä‘Æ°á»£c nhá»¯ng ngÃ´i sao sÃ¡ng.', '2015-12-06 10:02:05'),
(6, 'TÃ¬nh KhÃ´ng Lam Há»', 'tinh-khong-lam-he', 'TÃªn tháº­t: LÃª HoÃ ng ThiÃªn\r\nNgÃ y sinh: 22 â€“ 02\r\nSá»Ÿ thÃ­ch: Viáº¿t truyá»‡n, nghiá»n Manga, mÄƒm kem Marino, lÃ  má»™t cass chÃ­nh hiá»‡u.\r\nPhÆ°Æ¡ng chÃ¢m sá»‘ng: Khi bÃ³ng tá»‘i vÃ¢y quanh báº¡n, Ä‘á»«ng sá»£ hÃ£i! Chá»‰ khi xung quanh tá»‘i Ä‘en, báº¡n má»›i nhÃ¬n rÃµ Ä‘Æ°á»£c nhá»¯ng ngÃ´i sao sÃ¡ng.', '2015-12-06 10:05:38'),
(7, 'Máº·c Báº£o Phi Báº£o', 'mac-bao-phi-bao', 'TÃªn tháº­t: Nguyá»…n HoÃ ng HÃ \r\nNgÃ y sinh: 10 - 10\r\nSá»Ÿ thÃ­ch: Viáº¿t truyá»‡n, nghiá»n Manga, mÄƒm kem Marino, lÃ  má»™t cass chÃ­nh hiá»‡u.\r\nPhÆ°Æ¡ng chÃ¢m sá»‘ng: Khi bÃ³ng tá»‘i vÃ¢y quanh báº¡n, Ä‘á»«ng sá»£ hÃ£i! Chá»‰ khi xung quanh tá»‘i Ä‘en, báº¡n má»›i nhÃ¬n rÃµ Ä‘Æ°á»£c nhá»¯ng ngÃ´i sao sÃ¡ng.', '2015-12-06 10:07:26'),
(9, 'Ichikawa Takuji', 'ichikawa-takuji', 'TÃ¡c giáº£ Takuji Ichikawa tÃªn tháº­t lÃ  Takuji Ichikawa. Sinh ngÃ y 7/10/1962 táº¡i Nháº­t Báº£n.', '2015-12-06 10:10:19'),
(18, 'DÃ¢n gian Viá»‡t Nam', 'dan-gian-viet-nam', 'Nhá»¯ng cÃ¢u chuyá»‡n Ä‘Æ°á»£c truyá»n miá»‡ng tá»« nhá»¯ng ngÆ°á»i Ä‘an thÆ°á»ng tá»« xa xÆ°a Ä‘áº¿n giá» vÃ  Ä‘Æ°á»£c in ra sÃ¡ch.', '2015-12-06 10:38:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_writers`
--
ALTER TABLE `books_writers`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `books_writers`
--
ALTER TABLE `books_writers`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
