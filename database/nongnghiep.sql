-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 15 Décembre 2015 à 10:47
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `nongnghiep`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `publish` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `publish`) VALUES
(3, NULL, NULL, NULL, 'Cá»§', 1),
(4, NULL, NULL, NULL, 'Rau', 1),
(5, NULL, NULL, NULL, 'Quáº£', 1),
(6, NULL, NULL, NULL, 'Thá»‹t-Trá»©ng', 1),
(7, NULL, NULL, NULL, 'Sá»¯a', 1),
(8, NULL, NULL, NULL, 'KhÃ¡c', 1),
(9, NULL, NULL, NULL, 'Maat ong', 1);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
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
  `readed` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `fullname`, `email`, `phone`, `address`, `content`, `created`, `readed`) VALUES
(3, '', '13123', 'hoccakephp@gmail.com', '14124', '124124', '<p>Ä‘&aacute;</p>', '2015-12-09 10:47:00', 0),
(4, '', 'v', 'hoccakephp@gmail.com', '231313', '313123', '<p>131313</p>', '2015-12-09 11:29:05', 0),
(5, '', 'ushgf', 'cake@gmail.com', '013248735654', 'sfdgmjsfg', '<p>Helloggggggjkgkkggjgj</p>', '2015-12-10 05:28:24', 0);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `slide` tinyint(1) NOT NULL,
  `advertisement` tinyint(1) NOT NULL,
  `parner` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`id`, `name`, `description`, `image`, `slide`, `advertisement`, `parner`, `publish`, `created`) VALUES
(1, 'tÃ¬m mÃ£i khÃ´ng ra quáº£ng cÃ¡o', '<p>kh&ocirc;ng tháº¥y</p>', 'sale1.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00'),
(2, 'Quáº£ng cÃ¡o', '<p>Chá»‰ l&agrave; quáº£ng c&aacute;o th&ocirc;i</p>', 'cho han.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00'),
(4, 'cÃ¡i gÃ¬ Ä‘Ã¢y', '<p>kh&ocirc;ng tháº¥y háº£</p>', 'slide3.jpg', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(5, 'fix tÃ´i nha', '<p>fix</p>', '030912_07080703082012h414.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00'),
(10, 'hehehhihi', '<p>kiki</p>', 'download.png', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(11, 'hate', '<p>hate</p>', 'images.jpg', 0, 0, 0, 1, '0000-00-00 00:00:00'),
(12, 'huhuhuhu', '<p>kuuku</p>', 'images (1).jpg', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(13, 'slides', '<p>kh&ocirc;ng biáº¿t tháº¿ n&agrave;o Ä‘&acirc;y ná»¯a</p>', 'slide1.jpg', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(14, 'fafaf', '<p>sfsfsf</p>', 'slide2.jpg', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(16, 'Ä‘áº·t báº­y Ä‘Ã£', 'khÃ´ng', 'images.png', 0, 0, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `description`, `image`, `created`, `type_id`) VALUES
(18, 'Xuáº¥t kháº©u gáº¡o khÃ³ khÄƒn', '<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Má»¥c ti&ecirc;u cá»§a Hiá»‡p há»™i LÆ°Æ¡ng thá»±c Viá»‡t Nam (VFA) l&agrave; xuáº¥t kháº©u 6,2 triá»‡u táº¥n gáº¡o trong cáº£ nÄƒm 2014, giáº£m nháº¹ so vá»›i má»¥c ti&ecirc;u 6,5 triá»‡u táº¥n dá»± b&aacute;o há»“i Ä‘áº§u nÄƒm.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">NÄƒm 2014: cáº¡nh tranh khá»‘c liá»‡t</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Trong sá»‘ gáº¡o xuáº¥t kháº©u tr&ecirc;n, thá»‹ trÆ°á»ng ch&acirc;u &Aacute;, ch&acirc;u Phi chiáº¿m 83% lÆ°á»£ng gáº¡o xuáº¥t kháº©u, c&ograve;n láº¡i l&agrave; xuáº¥t sang thá»‹ trÆ°á»ng ch&acirc;u Má»¹, ch&acirc;u &Acirc;u, ch&acirc;u Äáº¡i DÆ°Æ¡ng.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Gi&aacute; gáº¡o xuáº¥t kháº©u cá»§a Viá»‡t Nam nÄƒm 2014 biáº¿n Ä‘á»™ng kh&aacute; máº¡nh trong bá»‘i cáº£nh bá»‹ cáº¡nh tranh khá»‘c liá»‡t. Gáº§n nhÆ° trong suá»‘t cáº£ nÄƒm 2014, gi&aacute; gáº¡o Th&aacute;i Lan ráº» hÆ¡n gáº¡o Viá»‡t Nam &ndash; Ä‘iá»u hiáº¿m tháº¥y trong lá»‹ch sá»­ do Th&aacute;i Lan c&oacute; nguá»“n cung dá»“i d&agrave;o, v&agrave; Ä‘á»“ng baht Th&aacute;i nhiá»u giai Ä‘oáº¡n máº¥t gi&aacute; máº¡nh khiáº¿n gi&aacute; gáº¡o Th&aacute;i quy ra Ä‘&ocirc; la Má»¹ trá»Ÿ n&ecirc;n ráº» hÆ¡n.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Tuy nhi&ecirc;n, theo Bá»™ C&ocirc;ng thÆ°Æ¡ng, nÄƒm 2014 cÅ©ng ghi nháº­n viá»‡c xuáº¥t kháº©u Ä‘Æ°á»£c khá»‘i lÆ°á»£ng gáº¡o lá»›n sang Philippines, Malaysia v&agrave; Indonesia, Ä‘á»“ng thá»i váº«n duy tr&igrave; tá»‘c Ä‘á»™ xuáº¥t kháº©u sang Trung Quá»‘c ká»ƒ cáº£ trong giai Ä‘oáº¡n cÄƒng tháº³ng á»Ÿ Biá»ƒn Ä&ocirc;ng.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Sau khi giáº£m gi&aacute; trong qu&iacute; 1 (372 Ä‘&ocirc; la Má»¹/táº¥n vá»›i loáº¡i 5% táº¥m v&agrave;o trung tuáº§n th&aacute;ng 3), gi&aacute; gáº¡o xuáº¥t kháº©u cá»§a Viá»‡t Nam khá»Ÿi sáº¯c trá»Ÿ láº¡i tá»« khi k&yacute; Ä‘Æ°á»£c há»£p Ä‘á»“ng lá»›n 800.000 táº¥n vá»›i Philippines.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Xuáº¥t kháº©u gáº¡o qua Ä‘Æ°á»ng máº­u bi&ecirc;n sang Trung Quá»‘c bá»‹ gi&aacute;n Ä‘oáº¡n trong khoáº£ng thá»i gian ngáº¯n khoáº£ng 5-6 tuáº§n (tá»« cuá»‘i th&aacute;ng 5 Ä‘áº¿n Ä‘áº§u th&aacute;ng 7) do ch&iacute;nh s&aacute;ch kiá»ƒm so&aacute;t cháº·t cháº½ gáº¡o nháº­p kháº©u tr&ecirc;n to&agrave;n bi&ecirc;n giá»›i cá»§a nÆ°á»›c n&agrave;y. Nh&igrave;n chung xuáº¥t kháº©u sang Trung Quá»‘c nÄƒm 2014 váº«n tiáº¿n triá»ƒn tá»‘t, song tiáº¿n Ä‘á»™ xuáº¥t kháº©u sang thá»‹ trÆ°á»ng n&agrave;y nÄƒm 2014 kh&ocirc;ng c&ograve;n Ä‘á»u Ä‘áº·n nhÆ° nhá»¯ng nÄƒm trÆ°á»›c.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">T&iacute;nh chung trong cáº£ nÄƒm 2014, gi&aacute; gáº¡o xuáº¥t kháº©u trung b&igrave;nh cá»§a Viá»‡t Nam á»Ÿ má»©c 439 Ä‘&ocirc; la Má»¹/táº¥n (gi&aacute; FOB) tÄƒng 2% so vá»›i nÄƒm ngo&aacute;i.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">NÄƒm 2015 váº«n nhiá»u kh&oacute; khÄƒn</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">BÆ°á»›c sang nÄƒm 2015, sau khi c&acirc;n Ä‘á»‘i khá»‘i lÆ°á»£ng gáº¡o Ä‘&atilde; Ä‘Æ°á»£c giao cho Ä‘á»‘i t&aacute;c vá»›i há»£p Ä‘á»“ng Ä‘&atilde; k&yacute; Ä‘áº¿n cuá»‘i nÄƒm 2014, doanh nghiá»‡p há»™i vi&ecirc;n VFA váº«n c&ograve;n gáº§n 1 triá»‡u táº¥n gáº¡o Ä‘ang chá» giao cho Ä‘á»‘i t&aacute;c trong nÄƒm 2015.</p>\r\n<p style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px;">Theo má»™t nguá»“n tin ri&ecirc;ng cá»§a TBKTSG Online tá»« Sá»Ÿ N&ocirc;ng nghiá»‡p v&agrave; Ph&aacute;t triá»ƒn n&ocirc;ng th&ocirc;n Cáº§n ThÆ¡, Ä‘áº¿n cuá»‘i nÄƒm 2014, Ä‘&atilde; c&oacute; tá»•ng cá»™ng khoáº£ng tr&ecirc;n 7 triá»‡u táº¥n gáº¡o Ä‘Æ°á»£c doanh nghiá»‡p há»™i vi&ecirc;n cá»§a VFA k&yacute; há»£p Ä‘á»“ng vá»›i Ä‘á»‘i t&aacute;c.</p>', 'NÄƒm 2014: cáº¡nh tranh khá»‘c liá»‡t  Trong sá»‘ gáº¡o xuáº¥t kháº©u trÃªn, thá»‹ trÆ°á»ng chÃ¢u Ã, chÃ¢u Phi chiáº¿m 83% lÆ°á»£ng gáº¡o xuáº¥t kháº©u, cÃ²n láº¡i lÃ  xuáº¥t sang thá»‹ trÆ°á»ng chÃ¢u Má»¹, chÃ¢u Ã‚u, chÃ¢u Äáº¡i DÆ°Æ¡ng.', 'luagaio2.jpg', '2015-12-03 17:08:48', 1),
(19, 'Báº£n tin tÃ i chÃ­nh kinh doanh 3/12: DN Ä‘áº§u tÆ° nÃ´ng nghiá»‡p cÃ´ng nghá»‡ cao', '<p>Hai nÄƒm trá»Ÿi láº¡i Ä‘&acirc;y, c&ocirc;ng ty cá»• pháº§n mia Ä‘Æ°á»ng Lam SÆ¡n thay v&igrave; dá»“n to&agrave;n bá»™ nguá»“n lá»±c vá»›i c&acirc;y m&iacute;a phÆ°Æ¡ng thá»©c truyá»n thá»‘ng th&igrave; doanh nghiá»‡p n&agrave;y Ä‘ang Ä‘áº§u tÆ° trá»“ng dÆ°a, hoa lan v&agrave; cáº£ m&iacute;a theo m&ocirc; h&igrave;nh sáº£n xuáº¥t n&ocirc;ng nghiá»‡p hiá»‡n Ä‘áº¡i cá»§a c&aacute;c nÆ°á»›c ti&ecirc;n tiáº¿n.</p>\r\n<p>&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/Pz9mdqzsYNE" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n<p>&nbsp;</p>', 'Hai nÄƒm trá»Ÿi láº¡i Ä‘Ã¢y, cÃ´ng ty cá»• pháº§n mia Ä‘Æ°á»ng Lam SÆ¡n thay vÃ¬ dá»“n toÃ n bá»™ nguá»“n lá»±c vá»›i cÃ¢y mÃ­a phÆ°Æ¡ng thá»©c truyá»n thá»‘ng thÃ¬ doanh nghiá»‡p nÃ y Ä‘ang Ä‘áº§u tÆ° trá»“ng dÆ°a,...', 'images.jpg', '2015-12-03 17:16:30', 3),
(20, 'BÃ¡o Ä‘á»™ng tÃ¬nh tráº¡ng nÃ´ng sáº£n nháº­p kháº©u á»“ áº¡t vÃ o Viá»‡t Nam', '<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Thiáº¿u rau v&igrave; háº¡n h&aacute;n</p>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Thá»i gian gáº§n Ä‘&acirc;y, t&igrave;nh h&igrave;nh nháº­p kháº©u rau, cá»§, quáº£ tÆ°Æ¡i qua c&aacute;c cá»­a kháº©u L&agrave;o Cai, T&acirc;n Thanh, M&oacute;ng C&aacute;i rá»“i Ä‘Æ°a v&agrave;o ti&ecirc;u thá»¥ s&acirc;u trong thá»‹ trÆ°á»ng ná»™i Ä‘á»‹a Ä‘ang c&oacute; xu hÆ°á»›ng tÄƒng Ä‘á»™t biáº¿n. Táº¡i cá»­a kháº©u L&agrave;o Cai, trung b&igrave;nh má»—i ng&agrave;y c&oacute; tá»›i 400 táº¥n, táº¡i cá»­a kháº©u T&acirc;n Thanh (Láº¡ng SÆ¡n) cÅ©ng c&oacute; sá»‘ lÆ°á»£ng l&ecirc;n tá»›i 100-150 táº¥n má»—i ng&agrave;y, chÆ°a ká»ƒ h&agrave;ng trÄƒm táº¥n Ä‘Æ°á»£c nháº­p v&agrave;o nÆ°á»›c ta theo h&igrave;nh thá»©c bi&ecirc;n máº­u. Háº§u háº¿t sá»‘ rau, cá»§, quáº£ tÆ°Æ¡i nháº­p kháº©u v&agrave;o nÆ°á»›c ta l&agrave; c&agrave; chua, khoai sá», khoai t&acirc;y, tá»i, cáº£i báº¯p, cáº£i bao, cá»§ cáº£i...Trong sá»‘ n&agrave;y, bÆ°á»›c Ä‘áº§u lá»±c lÆ°á»£ng chá»©c nÄƒng Ä‘&atilde; ph&aacute;t hiá»‡n ra má»™t sá»‘ máº«u c&agrave; chua c&oacute; chá»©a cháº¥t alatoxin, l&agrave; má»™t cháº¥t ráº¥t Ä‘á»™c háº¡i.</p>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Viá»‡c nháº­p kháº©u c&agrave;ng Ä‘Æ°á»£c Ä‘áº©y nhanh trong thá»i gian gáº§n Ä‘&acirc;y, nháº¥t l&agrave; trong bá»‘i cáº£nh c&aacute;c tá»‰nh miá»n Báº¯c Ä‘ang chá»‹u háº¡n h&aacute;n, kh&ocirc;ng c&oacute; Ä‘á»§ nÆ°á»›c Ä‘á»ƒ sáº£n xuáº¥t, n&ecirc;n diá»‡n t&iacute;ch c&acirc;y m&agrave;u vá»¥ Ä‘&ocirc;ng Ä‘&atilde; bá»‹ giáº£m Ä‘&aacute;ng ká»ƒ. C&ograve;n táº¡i miá»n Nam do m&ugrave;a mÆ°a báº¯t Ä‘áº§u sá»›m, n&ecirc;n c&oacute; nhiá»u nÆ¡i diá»‡n t&iacute;ch rau xanh Ä‘&atilde; bá»‹ dáº­p n&aacute;t 40-50% kh&ocirc;ng c&oacute; kháº£ nÄƒng cho thu hoáº¡ch. Theo Hiá»‡p há»™i Rau quáº£ Viá»‡t Nam, sáº£n lÆ°á»£ng rau quáº£ trong nÆ°á»›c vá»¥ Ä‘&ocirc;ng n&agrave;y Ä‘&atilde; giáº£m Ä‘&aacute;ng ká»ƒ, ngay cáº£ Ä‘á»‘i vá»›i c&aacute;c Ä‘Æ¡n h&agrave;ng xuáº¥t kháº©u, ch&uacute;ng ta cÅ©ng chá»‰ má»›i Ä‘&aacute;p á»©ng Ä‘Æ°á»£c 50%. Dá»± b&aacute;o, sáº£n lÆ°á»£ng rau trong vá»¥ Ä‘&ocirc;ng nÄƒm nay sáº½ giáº£m nhiá»u so vá»›i c&aacute;c nÄƒm trÆ°á»›c Ä‘&acirc;y. TrÆ°á»›c t&igrave;nh tráº¡ng n&agrave;y, Tá»•ng cá»¥c Háº£i quan Ä‘&atilde; c&oacute; c&ocirc;ng vÄƒn y&ecirc;u cáº§u c&aacute;c cá»­a kháº©u tá»• chá»©c kiá»ƒm tra, l&agrave;m thá»§ tá»¥c nháº­p kháº©u cháº·t cháº½ vá»›i nhá»¯ng Ä‘á»‘i tÆ°á»£ng h&agrave;ng h&oacute;a pháº£i kiá»ƒm dá»‹ch, Ä‘áº·c biá»‡t l&agrave; vá»›i máº·t h&agrave;ng rau, cá»§, quáº£ tÆ°Æ¡i nháº­p kháº©u; Ä‘á»“ng thá»i y&ecirc;u cáº§u chá»§ h&agrave;ng h&oacute;a pháº£i Ä‘Äƒng k&yacute; kiá»ƒm dá»‹ch vá»›i cÆ¡ quan chá»©c nÄƒng theo Ä‘&uacute;ng quy Ä‘á»‹nh.</p>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Máº¥t kiá»ƒm so&aacute;t v&igrave; chá»“ng ch&eacute;o</p>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Táº¡i cuá»™c há»p b&agrave;n biá»‡n ph&aacute;p kiá»ƒm so&aacute;t vá»‡ sinh an to&agrave;n thá»±c pháº©m n&ocirc;ng sáº£n, thá»§y sáº£n nháº­p kháº©u h&ocirc;m 7/12 vá»«a qua, nhiá»u &yacute; kiáº¿n cho ráº±ng, viá»‡c chá»“ng ch&eacute;o trong quáº£n l&yacute; Nh&agrave; nÆ°á»›c vá» lÄ©nh vá»±c vá»‡ sinh an to&agrave;n thá»±c pháº©m l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh dáº«n Ä‘áº¿n t&igrave;nh tráº¡ng máº¥t kiá»ƒm so&aacute;t Ä‘á»‘i vá»›i máº·t h&agrave;ng rau, cá»§, quáº£ tÆ°Æ¡i v&agrave; thá»©c Äƒn chÄƒn nu&ocirc;i nhÆ° hiá»‡n nay. &Ocirc;ng Ho&agrave;ng Kim Giao, Cá»¥c trÆ°á»Ÿng Cá»¥c ChÄƒn nu&ocirc;i (Bá»™ NN&amp;PTNT) cho biáº¿t: &ldquo;Äá»‘i vá»›i má»™t sá»‘ loáº¡i cháº¥t trong thá»©c Äƒn chÄƒn nu&ocirc;i náº±m trong danh má»¥c cáº¥m lÆ°u h&agrave;nh cá»§a Bá»™ NN&amp;PTNT, th&igrave; Bá»™ Y táº¿ láº¡i cho nháº­p giá»›i háº¡n. Ngay cáº£ viá»‡c nháº­p rau, cá»§, quáº£ hoáº·c thá»±c pháº©m Ä‘&oacute;ng há»™p cÅ©ng váº­y, máº·c d&ugrave; Bá»™ NN&amp;PTNT kh&ocirc;ng Ä‘á»“ng &yacute; nháº­p, nhÆ°ng Bá»™ C&ocirc;ng ThÆ°Æ¡ng láº¡i cáº¥p háº¡n ngáº¡ch nháº­p kháº©u. Do Ä‘&oacute;, ch&uacute;ng t&ocirc;i kh&ocirc;ng biáº¿t Ä‘áº±ng n&agrave;o m&agrave; quáº£n l&yacute;&rdquo;.</p>', 'Thiáº¿u rau vÃ¬ háº¡n hÃ¡n Thá»i gian gáº§n Ä‘Ã¢y, tÃ¬nh hÃ¬nh nháº­p kháº©u rau, cá»§, quáº£ tÆ°Æ¡i qua cÃ¡c cá»­a kháº©u LÃ o Cai, TÃ¢n Thanh, MÃ³ng CÃ¡i rá»“i Ä‘Æ°a vÃ o tiÃªu thá»¥ sÃ¢u trong thá»‹ trÆ°á»ng ná»™i Ä‘á»‹a', 'download.jpg', '2015-12-03 17:21:07', 2),
(21, 'Nghá»‹ch lÃ½ trong nháº­p kháº©u nÃ´ng sáº£n', '<p>Nháº­p kháº©u n&ocirc;ng sáº£n Ä‘ang váº¥p pháº£i má»™t nghá»‹ch l&yacute; l&agrave; c&oacute; nhiá»u máº·t h&agrave;ng thá»±c pháº©m Ä‘Æ°á»£c nháº­p vá» Ä‘á»ƒ ti&ecirc;u d&ugrave;ng nhÆ° thá»‹t, rau quáº£, trong khi Ä‘&acirc;y Ä‘á»u l&agrave; nhá»¯ng sáº£n pháº©m á»Ÿ trong nÆ°á»›c Ä‘&atilde; dÆ° thá»«a. Máº·t kh&aacute;c, Ä‘&oacute; c&ograve;n l&agrave; nhá»¯ng máº·t h&agrave;ng m&agrave; Ch&iacute;nh phá»§ kh&ocirc;ng khuyáº¿n kh&iacute;ch nháº­p kháº©u.</p>\r\n<p>Vá»›i t&igrave;nh h&igrave;nh thá»‹ trÆ°á»ng n&ocirc;ng sáº£n cá»§a Viá»‡t Nam hiá»‡n nay th&igrave; kh&ocirc;ng khuyáº¿n kh&iacute;ch nháº­p kháº©u nhá»¯ng máº·t h&agrave;ng n&agrave;y. NhÆ°ng Ä‘&uacute;ng l&agrave; ch&uacute;ng ta chÆ°a &aacute;p dá»¥ng nhiá»u biá»‡n ph&aacute;p h&agrave;nh ch&iacute;nh Ä‘á»ƒ háº¡n ch&ecirc; h&agrave;ng n&ocirc;ng sáº£n nháº­p kháº©u. Má»™t pháº§n v&igrave; ch&uacute;ng ta&nbsp;má»›i gia nháº­p Tá»• chá»©c ThÆ°Æ¡ng máº¡i Tháº¿ giá»›i, chÆ°a c&oacute; nhiá»u kinh nghiá»‡m trong kiá»ƒm so&aacute;t nhá»¯ng máº·t h&agrave;ng tÆ°Æ¡ng tá»±&hellip;Tuy nhi&ecirc;n, cÅ©ng c&ograve;n pháº£i n&oacute;i l&agrave; Ä‘á»ƒ &aacute;p dá»¥ng c&aacute;c biá»‡n ph&aacute;p h&agrave;nh ch&iacute;nh táº¡o Ä‘Æ°á»£c hiá»‡u quáº£ cho viá»‡c háº¡n cháº¿ nháº­p kháº©u nhá»¯ng máº·t h&agrave;ng nhÆ° n&ocirc;ng sáº£n th&igrave; cÅ©ng cáº§n c&oacute; sá»± Ä‘á»“ng bá»™, thá»‘ng nháº¥t giá»¯a c&aacute;c cÆ¡ quan Ä‘á»ƒ táº¡o sá»± thuáº­n lá»£i chung.</p>\r\n<p>Vá» ph&iacute;a Bá»™ C&ocirc;ng ThÆ°Æ¡ng Ä‘&atilde; v&agrave; Ä‘ang x&acirc;y dá»±ng nhá»¯ng h&agrave;ng r&agrave;o ká»¹ thuáº­t háº¡n cháº¿ nháº­p kháº©u nhá»¯ng máº·t h&agrave;ng kh&ocirc;ng thiáº¿t yáº¿u nháº±m n&acirc;ng cao kháº£ nÄƒng cáº¡nh tranh cá»§a h&agrave;ng h&oacute;a trong nÆ°á»›c.</p>\r\n<p>N&ocirc;ng sáº£n nháº­p kháº©u hiá»‡n nay chá»§ yáº¿u th&ocirc;ng qua Ä‘Æ°á»ng tiá»ƒu ngáº¡ch. Ä&acirc;y l&agrave; k&ecirc;nh nháº­p kháº©u thiáº¿u kiá»ƒm so&aacute;t n&ecirc;n n&oacute; cÅ©ng c&oacute; thá»ƒ áº£nh hÆ°á»Ÿng Ä‘áº¿n sá»©c khá»e cá»§a ngÆ°á»i ti&ecirc;u d&ugrave;ng, v&igrave; tháº¿ n&ecirc;n ch&uacute;ng ta pháº£i tÄƒng cÆ°á»ng c&ocirc;ng t&aacute;c kiá»ƒm tra táº¡i c&aacute;c cá»­a kháº©.u. NhÆ° Ä‘á»‘i vá»›i máº·t h&agrave;ng thá»‹t, theo cam káº¿t khi gia nháº­p Tá»• chá»©c ThÆ°Æ¡ng máº¡i Tháº¿ giá»›i th&igrave; máº·t h&agrave;ng thá»‹t kh&ocirc;ng pháº£i l&agrave; máº·t h&agrave;ng cáº§n c&oacute; giáº¥y ph&eacute;p nháº­p kháº©u v&agrave; háº¡n ngáº¡ch nháº­p kháº©u, m&agrave; ch&uacute;ng ta quáº£n l&yacute; viá»‡c nháº­p kháº©u thá»‹t th&ocirc;ng qua há»‡ thá»‘ng cÆ¡ quan kiá»ƒm dá»‹ch, cÆ¡ quan háº£i quan khi th&ocirc;ng quan qua cá»­a kháº©u.</p>', 'Nháº­p kháº©u nÃ´ng sáº£n Ä‘ang váº¥p pháº£i má»™t nghá»‹ch lÃ½ lÃ  cÃ³ nhiá»u máº·t hÃ ng thá»±c pháº©m Ä‘Æ°á»£c nháº­p vá» Ä‘á»ƒ tiÃªu dÃ¹ng nhÆ° thá»‹t, rau quáº£, trong khi Ä‘Ã¢y Ä‘á»u lÃ  nhá»¯ng sáº£n pháº©m á»Ÿ trong nÆ°á»›c Ä‘Ã£ dÆ° thá»«a. Máº·t khÃ¡c, Ä‘Ã³ cÃ²n lÃ  nhá»¯ng máº·t hÃ ng mÃ  ChÃ­nh phá»§ khÃ´ng khuyáº¿n khÃ­ch nháº­p kháº©u.', 'xk ns_56800.jpg', '2015-12-03 17:22:49', 2),
(22, 'Chi hÃ ng tá»· USD nháº­p kháº©u nÃ´ng sáº£n, thá»±c pháº©m', '<p class="Lead" style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Theo sá»‘ liá»‡u thá»‘ng k&ecirc; th&aacute;ng 4/2010, t&igrave;nh h&igrave;nh nháº­p kháº©u nhiá»u loáº¡i n&ocirc;ng sáº£n,&nbsp;<span id="link0" class="VietAdTextLink" style="text-decoration: underline; border-bottom-style: solid; border-bottom-width: 1px; white-space: nowrap;">thá»±c pháº©m</span>&nbsp;cá»§a nÆ°á»›c ta váº«n tiáº¿p tá»¥c gia tÄƒng.</p>\r\n<p>&nbsp;</p>\r\n<center style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; background-color: #f7f7f7;"><img class="floatLeft spaceright10px" style="border: none; margin-right: 10px; float: left;" src="http://www.xaluan.com/images/news/Image/2010/05/06/1273127913.img.jpg" alt="Theo Bá»™ C&ocirc;ng thÆ°Æ¡ng, rÆ°á»£u l&agrave; máº·t h&agrave;ng kh&ocirc;ng thiáº¿t yáº¿u, kh&ocirc;ng khuyáº¿n kh&iacute;ch nháº­p kháº©u." /><br /><em>Theo Bá»™ C&ocirc;ng thÆ°Æ¡ng, rÆ°á»£u l&agrave; máº·t h&agrave;ng kh&ocirc;ng thiáº¿t yáº¿u, kh&ocirc;ng khuyáº¿n kh&iacute;ch nháº­p kháº©u.</em></center>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">TrÆ°á»›c Ä‘&oacute;, má»™t b&aacute;o c&aacute;o chi tiáº¿t hÆ¡n cá»§a Bá»™ C&ocirc;ng thÆ°Æ¡ng cho biáº¿t, hai th&aacute;ng Ä‘áº§u nÄƒm nay, kim ngáº¡ch nháº­p kháº©u nh&oacute;m h&agrave;ng n&ocirc;ng sáº£n v&agrave; thá»±c pháº©m chá»§ yáº¿u Ä‘áº¡t khoáº£ng 280 triá»‡u USD, tÄƒng 56% so vá»›i c&ugrave;ng ká»³ nÄƒm ngo&aacute;i.<br /><br />Trong Ä‘&oacute; máº·t h&agrave;ng tÄƒng nhiá»u nháº¥t l&agrave; gáº¡o tÄƒng 152%; rau, cá»§ tÄƒng 127%; dáº§u má»¡ Ä‘á»™ng thá»±c váº­t Ä‘&atilde; tinh cháº¿ tÄƒng 96%; cháº¿ pháº©m tá»« ngÅ© cá»‘c, tinh bá»™t, sá»¯a (b&aacute;nh káº¹o, sá»¯a Ä‘&oacute;ng há»™p&hellip;) tÄƒng 99%; sáº£n pháº©m thá»‹t c&aacute;, Ä‘á»™ng váº­t tÄƒng 79% v&agrave; cháº¿ pháº©m Äƒn Ä‘Æ°á»£c kh&aacute;c tÄƒng 84%. NÄƒm 2009, tá»•ng kim ngáº¡ch nháº­p kháº©u c&aacute;c nh&oacute;m h&agrave;ng l&agrave; 1,5 tá»‰ USD.</p>\r\n<p style="padding: 5px 0px; margin: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 18px; text-align: justify; background-color: #f7f7f7;">Theo ph&acirc;n t&iacute;ch cá»§a bá»™ C&ocirc;ng thÆ°Æ¡ng, c&oacute; nhiá»u máº·t h&agrave;ng thá»±c pháº©m nháº­p kháº©u Ä‘á»ƒ ti&ecirc;u d&ugrave;ng l&agrave; nhá»¯ng máº·t h&agrave;ng kh&ocirc;ng thiáº¿t yáº¿u, kh&ocirc;ng khuyáº¿n kh&iacute;ch nháº­p kháº©u. Äáº·c biá»‡t l&agrave; máº·t h&agrave;ng thá»‹t v&agrave; sáº£n pháº©m thá»‹t, Ä‘á»“ uá»‘ng (rÆ°á»£u, bia, nÆ°á»›c ngá»t&hellip;), rau, quáº£, b&aacute;nh káº¹o v&agrave; c&aacute;c cháº¿ pháº©m Äƒn Ä‘Æ°á»£c kh&aacute;c.<br /><br />Bá»™ C&ocirc;ng thÆ°Æ¡ng l&yacute; giáº£i lÆ°á»£ng n&ocirc;ng sáº£n v&agrave; thá»±c pháº©m nháº­p tÄƒng máº¡nh l&agrave; do Ä‘á»i sá»‘ng nh&acirc;n d&acirc;n ng&agrave;y c&agrave;ng Ä‘Æ°á»£c cáº£i thiá»‡n. Th&ecirc;m v&agrave;o Ä‘&oacute;, kh&ocirc;ng &iacute;t máº·t h&agrave;ng Ä‘&atilde; Ä‘Æ°á»£c giáº£m thuáº¿ xuá»‘ng 0 &ndash; 5%, theo cam káº¿t FTA ASEAN &ndash; Trung Quá»‘c v&agrave; CEPT giá»¯a c&aacute;c nÆ°á»›c ASEAN.</p>', 'Theo sá»‘ liá»‡u thá»‘ng kÃª thÃ¡ng 4/2010, tÃ¬nh hÃ¬nh nháº­p kháº©u nhiá»u loáº¡i nÃ´ng sáº£n, thá»±c pháº©m cá»§a nÆ°á»›c ta váº«n tiáº¿p tá»¥c gia tÄƒng.', 'luagaio2.jpg', '2015-12-03 17:24:04', 2),
(23, 'Ra Báº¯c há»c nghá»â€¦', '<p>L&agrave; má»™t n&ocirc;ng d&acirc;n nÄƒng Ä‘á»™ng nhÆ°ng v&igrave; do thiáº¿u kinh nghiá»‡m trong qu&aacute; tr&igrave;nh lao Ä‘á»™ng khiáº¿n viá»‡c nu&ocirc;i c&aacute; l&oacute;c, ba ba&hellip; cá»§a anh Tuáº¥n váº¥p pháº£i tháº¥t báº¡i. Tuy nhi&ecirc;n, kh&ocirc;ng v&igrave; tháº¿ m&agrave; anh ch&ugrave;n bÆ°á»›c. Vá»›i quyáº¿t t&acirc;m Ä‘á»•i Ä‘á»i, ngÆ°á»i n&ocirc;ng d&acirc;n n&agrave;y miá»‡t m&agrave;i t&igrave;m hiá»ƒu v&agrave; nghi&ecirc;n cá»©u Ä‘á»ƒ chá»n ra má»™t lo&agrave;i váº­t nu&ocirc;i ph&ugrave; há»£p vá»›i Ä‘iá»u kiá»‡n sáºµn c&oacute;.<br /><br />Trong qu&aacute; tr&igrave;nh t&igrave;m t&ograve;i nghi&ecirc;n cá»©u, anh Tuáº¥n bá»‹ cuá»‘n h&uacute;t bá»Ÿi m&ocirc; h&igrave;nh chÄƒn nu&ocirc;i&nbsp;<a href="http://nhanonglamgiau.com/forum/tags/v%E1%BB%8Bt+tr%E1%BB%9Di/">vá»‹t trá»i</a>&nbsp;th&ocirc;ng qua má»™t diá»…n Ä‘&agrave;n Internet cá»§a Trung t&acirc;m Khuyáº¿n n&ocirc;ng Khuyáº¿n ngÆ° tá»‰nh Báº¯c Giang. Nháº­n tháº¥y m&ocirc; h&igrave;nh n&agrave;y c&oacute; thá»ƒ táº¡o sá»± Ä‘á»™t ph&aacute; m&agrave; kh&ocirc;ng rÆ¡i v&agrave;o cáº£nh &ldquo;thá»«a h&agrave;ng dá»™i chá»£&rdquo; n&ecirc;n anh Tuáº¥n Ä‘&atilde; khÄƒn g&oacute;i tá»« An Giang ra Báº¯c Giang há»c nghá».<br /><br />Sau khi náº¯m Ä‘Æ°á»£c má»™t sá»‘ kiáº¿n thá»©c tá»« lo&agrave;i váº­t hoang d&atilde; n&agrave;y, anh Tuáº¥n tá»©c tá»‘c trá»Ÿ láº¡i qu&ecirc; Ä‘á»ƒ g&acirc;y dá»±ng sá»± nghiá»‡p. Nhá»› láº¡i ng&agrave;y Ä‘áº§u láº­p nghiá»‡p cá»§a m&igrave;nh, anh Tuáº¥n cho biáº¿t: &ldquo;Cuá»‘i nÄƒm 2013, sau khi há»c há»i kinh nghiá»‡m chÄƒn nu&ocirc;i vá»‹t á»Ÿ ngo&agrave;i Ä‘&oacute; vá» t&ocirc;i gom g&oacute;p sá»‘ tiá»n gáº§n 50 triá»‡u Ä‘á»“ng Ä‘á»ƒ mua 120 con vá»‹t giá»‘ng (3,5 th&aacute;ng tuá»•i) vá»›i gi&aacute; 300.000 Ä‘á»“ng/con. Sau 7 th&aacute;ng nu&ocirc;i Ä‘&agrave;n vá»‹t báº¯t Ä‘áº§u Ä‘áº» trá»©ng&hellip;&rdquo;.</p>', 'LÃ  má»™t nÃ´ng dÃ¢n nÄƒng Ä‘á»™ng nhÆ°ng vÃ¬ do thiáº¿u kinh nghiá»‡m trong quÃ¡ trÃ¬nh lao Ä‘á»™ng khiáº¿n viá»‡c nuÃ´i cÃ¡ lÃ³c, ba baâ€¦ cá»§a anh Tuáº¥n váº¥p pháº£i tháº¥t báº¡i. Tuy nhiÃªn, khÃ´ng vÃ¬ tháº¿ mÃ  anh chÃ¹n bÆ°á»›c. Vá»›i quyáº¿t tÃ¢m Ä‘á»•i Ä‘á»i,', '1446874555-nuoi-vit-troi-hinh-anh-1.jpg', '2015-12-03 17:41:27', 4),
(24, 'NuÃ´i bÃ² sá»¯a kiá»ƒu Nháº­t táº¡i TP HCM', '<h2 data-field="sapo">Theo &ocirc;ng Tá»« Minh Thiá»‡n, Ph&oacute; trÆ°á»Ÿng Ban Quáº£n l&yacute; Khu N&ocirc;ng nghiá»‡p C&ocirc;ng nghá»‡ cao TP HCM, tiá»m nÄƒng há»£p t&aacute;c vá» n&ocirc;ng nghiá»‡p vá»›i Viá»‡t Nam cá»§a Nháº­t Báº£n ráº¥t lá»›n.</h2>\r\n<div id="divNewsContent" data-field="body">\r\n<div id="TinLienQuanDetail">&nbsp;</div>\r\n<p>Trong tuáº§n qua, má»™t c&ocirc;ng ty cá»§a Nháº­t Ä‘&atilde; Ä‘áº¿n huyá»‡n Cá»§ Chi Ä‘á»ƒ kháº£o s&aacute;t Ä‘á»‹a Ä‘iá»ƒm láº­p tráº¡i nu&ocirc;i b&ograve; sá»¯a theo c&ocirc;ng nghá»‡ Nháº­t vá»›i quy m&ocirc; khoáº£ng 100 con Ä‘á»ƒ thá»­ nghiá»‡m, sau Ä‘&oacute; má»Ÿ rá»™ng.</p>\r\n<p>&nbsp;</p>\r\n<div>\r\n<div><img id="img_180328" title="Doanh nh&acirc;n Nháº­t t&igrave;m hiá»ƒu sáº£n pháº©m n&ocirc;ng nghiá»‡p Viá»‡t" src="http://nld.vcmedia.vn/2015/12-tin-1428591406563.jpg" alt="Doanh nh&acirc;n Nháº­t t&igrave;m hiá»ƒu sáº£n pháº©m n&ocirc;ng nghiá»‡p Viá»‡t" /></div>\r\n<div>Doanh nh&acirc;n Nháº­t t&igrave;m hiá»ƒu sáº£n pháº©m n&ocirc;ng nghiá»‡p Viá»‡t</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Má»™t lÄ©nh vá»±c kh&aacute;c cÅ©ng c&oacute; tiá»m nÄƒng l&agrave; á»©ng dá»¥ng c&ocirc;ng nghá»‡ th&ocirc;ng tin trong n&ocirc;ng nghiá»‡p theo hÆ°á»›ng cáº£ chuá»—i cung á»©ng tá»« Ä‘áº§u v&agrave;o Ä‘áº¿n sáº£n pháº©m Ä‘áº¿n b&agrave;n Äƒn. Táº­p Ä‘o&agrave;n NEC cá»§a Nháº­t Báº£n vá»«a kháº£o s&aacute;t nhu cáº§u TP HCM v&agrave; c&aacute;c tá»‰nh l&acirc;n cáº­n Ä‘á»ƒ c&oacute; thá»ƒ Ä‘Æ°a ra c&ocirc;ng nghá»‡ ph&ugrave; há»£p. Khi dá»± &aacute;n n&agrave;y Ä‘Æ°á»£c triá»ƒn khai, sáº£n pháº©m n&ocirc;ng nghiá»‡p Viá»‡t Nam sáº½ c&oacute; cÆ¡ há»™i c&oacute; máº·t táº¡i c&aacute;c há»‡ thá»‘ng ph&acirc;n phá»‘i lá»›n tr&ecirc;n to&agrave;n cáº§u.</p>\r\n</div>', 'Trong tuáº§n qua, má»™t cÃ´ng ty cá»§a Nháº­t Ä‘Ã£ Ä‘áº¿n huyá»‡n Cá»§ Chi Ä‘á»ƒ kháº£o sÃ¡t Ä‘á»‹a Ä‘iá»ƒm láº­p tráº¡i nuÃ´i bÃ² sá»¯a theo cÃ´ng nghá»‡ Nháº­t vá»›i quy mÃ´ khoáº£ng 100 con Ä‘á»ƒ thá»­ nghiá»‡m, sau Ä‘Ã³ má»Ÿ rá»™ng.', '12-tin-1428591406563.jpg', '2015-12-09 10:39:38', 4),
(25, 'NgÆ°á»i phá»¥ ná»¯ Viá»‡t mÃª lÃºa Nháº­t... ', '<p>T&igrave;nh cá» nhÆ° má»™t cÆ¡ duy&ecirc;n ChÆ°a nÄƒm n&agrave;o t&igrave;nh h&igrave;nh l&uacute;a gáº¡o á»Ÿ miá»n Báº¯c láº¡i ráº» máº¡t nhÆ° hiá»‡n nay. Gi&aacute; l&uacute;a lai, l&uacute;a thuáº§n cháº¥t lÆ°á»£ng tháº¥p nhÆ° Khang d&acirc;n 18, Q5 ch&igrave;m Ä‘áº¯m Ä‘&atilde; Ä‘&agrave;nh c&ograve;n Ä‘áº·c sáº£n Báº¯c thÆ¡m sá»‘ 7 ná»•i tiáº¿ng gi&aacute; cÅ©ng chá»‰ khoáº£ng 7.000 Ä‘/kg, tá»©c chÆ°a tá»›i 11.000 - 12.000 Ä‘/kg gáº¡o. Tháº¿ m&agrave; h&agrave;ng ng&agrave;n ha l&uacute;a Nháº­t J02 cho th&oacute;c láº¡i kh&ocirc;ng c&oacute; Ä‘á»§ h&agrave;ng Ä‘á»ƒ b&aacute;n. Tháº¿ m&agrave; c&oacute; nhá»¯ng n&ocirc;ng d&acirc;n á»Ÿ Ph&uacute; Thá» má»™t vá»¥ b&aacute;n hÆ¡n chá»¥c táº¥n th&oacute;c J02 thu Ä‘Æ°á»£c h&agrave;ng trÄƒm triá»‡u Ä‘á»“ng, Ä‘iá»u trÆ°á»›c Ä‘&acirc;y d&ugrave; c&oacute; l&agrave; náº±m mÆ¡ há» cÅ©ng kh&ocirc;ng tÆ°á»Ÿng tÆ°á»£ng ná»•i. Gáº¡o Nháº­t &ldquo;ngoáº¡i giao&rdquo; Ä‘áº¿n Ä‘&acirc;u b&aacute;m cháº·t trong t&acirc;m thá»©c cá»§a ngÆ°á»i nháº­n Ä‘áº¿n Ä‘&oacute;. Gáº¡o Nháº­t b&aacute;n Ä‘áº¿n Ä‘&acirc;u l&agrave; &ldquo;Ä‘áº»&rdquo; th&ecirc;m h&agrave;ng loáº¡t Ä‘Æ¡n Ä‘áº·t h&agrave;ng Ä‘&ocirc;ng gáº¥p bá»™i. C&oacute; nhiá»u ngÆ°á»i c&ograve;n nghiá»‡n gáº¡o Nháº­t tá»›i má»©c thu&ecirc; cáº£ xe táº£i vá» táº­n v&ugrave;ng sáº£n xuáº¥t, l&ugrave;ng sá»¥c mua gom th&oacute;c tá»«ng nh&agrave; má»™t Ä‘á»ƒ mang vá» x&aacute;t Äƒn dáº§n ph&ograve;ng khi háº¿t h&agrave;ng. Quáº£ tháº­t chá»‰ trong má»™t thá»i gian ngáº¯n sau vá»¥ thu hoáº¡ch l&agrave; gáº§n nhÆ° kh&ocirc;ng thá»ƒ t&igrave;m ná»•i má»™t yáº¿n gáº¡o Nháº­t trá»« nhá»¯ng loáº¡i d&acirc;n tá»± Ä‘á»ƒ phÆ¡i ngo&agrave;i náº¯ng qu&aacute; n&oacute;ng n&ecirc;n háº¡t g&atilde;y, kh&ocirc;ng thá»ƒ Ä‘Æ°a v&agrave;o l&agrave;m h&agrave;ng h&oacute;a Ä‘Æ°á»£c. C&aacute;i sá»± phá»• biáº¿n vá» gáº¡o Nháº­t á»Ÿ má»™t sá»‘ tá»‰nh miá»n Báº¯c hiá»‡n nay gáº¯n liá»n vá»›i t&ecirc;n tuá»•i má»™t ngÆ°á»i phá»¥ ná»¯:&nbsp;B&agrave; Nguyá»…n Thá»‹ T&acirc;m, Tá»•ng Gi&aacute;m Ä‘á»‘c Cty CP Giá»‘ng - váº­t tÆ° n&ocirc;ng nghiá»‡p c&ocirc;ng nghá»‡ cao Viá»‡t Nam. Sá»‘ l&agrave; c&aacute;ch Ä‘&acirc;y khoáº£ng dÄƒm nÄƒm, trong má»™t dá»‹p Ä‘i lá»… c&ugrave;ng vá»›i phu nh&acirc;n cá»§a má»™t cá»±u l&atilde;nh Ä‘áº¡o tá»‰nh, bÆ°á»›c l&ecirc;n &ocirc; t&ocirc; rá»“i m&agrave; b&agrave; c&ograve;n quáº§y quáº£ cháº¡y ngÆ°á»£c vá» nh&agrave;. L&uacute;c ra b&agrave; cáº§m theo má»™t c&aacute;i bá»c, miá»‡ng cÆ°á»i roi r&oacute;i. T&ograve; m&ograve;,&nbsp;b&agrave; T&acirc;m liá»n há»i: &ldquo;Chá»‹ qu&ecirc;n bá»c g&igrave; tháº¿?&rdquo;. &ldquo;&Agrave; bá»c cÆ¡m nguá»™i Äƒn thá»«a áº¥y m&agrave;!&rdquo;. Cá»‘ k&igrave;m n&eacute;n tráº­n cÆ°á»i trá»±c tr&agrave;o ra,&nbsp;b&agrave; T&acirc;m há»i tiáº¿p: &ldquo;CÆ¡m g&igrave; tháº¿ chá»‹?&rdquo;. B&agrave; kia nghe Ä‘áº¿n Ä‘&acirc;y, máº·t kh&ocirc;ng khá»i giáº¥u sá»± tá»± h&agrave;o: &ldquo;Gáº¡o Nháº­t Ä‘áº¥y! Mua trong si&ecirc;u thá»‹ á»Ÿ H&agrave; Ná»™i Ä‘áº¥y, Ä‘áº¯t láº¯m, em Äƒn thá»­ Ä‘i!&rdquo;. Ná»ƒ nang qu&aacute; n&ecirc;n&nbsp;b&agrave; T&acirc;m Ä‘&agrave;nh pháº£i náº¿m thá»­ d&ugrave; ráº±ng Ä‘&atilde; Äƒn s&aacute;ng lÆ°ng lá»­ng bá»¥ng rá»“i. Cháº³ng ngá», g&oacute;i cÆ¡m thá»«a áº¥y Ä‘&atilde; bá»‹&nbsp;b&agrave; &ldquo;Ä‘&aacute;nh&rdquo; bay tá»± l&uacute;c n&agrave;o. áº¤n tÆ°á»£ng vá» gáº¡o Nháº­t Ä‘&oacute;ng Ä‘inh trong t&acirc;m kháº£m cá»§a&nbsp;b&agrave; ká»ƒ tá»« dáº¡o Ä‘&oacute;, Ä‘&uacute;ng nhÆ° c&aacute;c cá»¥ ta tá»«ng tá»•ng káº¿t: &ldquo;Miáº¿ng ngon nhá»› l&acirc;u, Ä‘&ograve;n Ä‘au nhá»› Ä‘á»i&rdquo;. Tháº¿ rá»“i nhÆ° má»™t cÆ¡ duy&ecirc;n, tháº¿ n&agrave;o m&agrave; J02, giá»‘ng l&uacute;a c&oacute; nguá»“n gá»‘c Nháº­t Báº£n láº¡i vá» &ldquo;l&agrave;m d&acirc;u&rdquo; tr&ecirc;n Ä‘áº¥t Ph&uacute; Thá», do ch&iacute;nh Cty CP Giá»‘ng - Váº­t tÆ° n&ocirc;ng nghiá»‡p&nbsp;c&ocirc;ng nghá»‡ cao Viá»‡t Nam Ä‘á»™c quyá»n sáº£n xuáº¥t v&agrave; ph&acirc;n phá»‘i. Giá»‘ng do Viá»‡n Di truyá»n N&ocirc;ng nghiá»‡p tuyá»ƒn chá»n. Ä&oacute; l&agrave; nhá»¯ng qu&atilde;ng ng&agrave;y thá»­ nghiá»‡m sáº£n xuáº¥t diá»‡n háº¹p rá»“i láº¡i diá»‡n rá»™ng. Ä&oacute; l&agrave; nhá»¯ng qu&atilde;ng ng&agrave;y Ä‘em giá»‘ng Ä‘i tr&igrave;nh diá»…n kháº¯p c&aacute;c v&ugrave;ng sinh th&aacute;i tráº£i d&agrave;i tá»« n&uacute;i cao Ä‘áº¿n Ä‘á»“ng báº±ng hay miá»n duy&ecirc;n háº£i. Kh&oacute; khÄƒn l&agrave;m sao ká»ƒ xiáº¿t, nháº¥t l&agrave; á»Ÿ nÆ¡i Ä‘áº¥t cháº­t, ngÆ°á»i Ä‘&ocirc;ng, n&ocirc;ng d&acirc;n kh&aacute; báº£o thá»§ nhÆ° miá»n Báº¯c. NgÆ°á»i ta vá»‘n quen vá»›i d&ograve;ng Indica háº¡t d&agrave;i rá»“i n&ecirc;n Ä‘á»ƒ thuyáº¿t phá»¥c trá»“ng má»™t giá»‘ng má»›i háº¡t cá»© ung á»§ng tr&ograve;n nhÆ° gáº¡o náº¿p láº¯m khi kh&oacute; c&ograve;n hÆ¡n cáº£ vÆ°á»£t qua cáº£ Ä‘á»‰nh Phan Xi PÄƒng. Thá»§a ban Ä‘áº§u Ä‘&oacute;,&nbsp;b&agrave; T&acirc;m Ä‘&atilde; pháº£i k&yacute; cam káº¿t máº¡nh báº¡o l&agrave; náº¿u nÄƒng suáº¥t v&agrave; nháº¥t l&agrave; hiá»‡u quáº£ kinh táº¿ cá»§a giá»‘ng l&uacute;a má»›i kh&ocirc;ng cao hÆ¡n Khang d&acirc;n 18 c&ocirc;ng ty sáº½ xá»‰a tiá»n ra m&agrave; Ä‘á»n. Váº­y l&agrave; n&ocirc;ng d&acirc;n cháº¥p nháº­n trá»“ng. Kh&ocirc;ng ngá» l&agrave; giá»‘ng c&oacute; nguá»“n gá»‘c &ocirc;n Ä‘á»›i chá»‹u r&eacute;t giá»i Ä‘&atilde; Ä‘&agrave;nh láº¡i c&ograve;n chá»‹u c&aacute;c Ä‘iá»u kiá»‡n náº¯ng n&oacute;ng, thá»i tiáº¿t kháº¯c nghiá»‡t cÅ©ng kh&ocirc;ng há» thua k&eacute;m. Tr&agrave; sá»›m, tr&agrave; trung Ä‘á»u tá»‘t. Ch&acirc;n v&agrave;n, ch&acirc;n trÅ©ng, ch&acirc;n má»™t l&uacute;a má»™t c&aacute; Ä‘á»u th&iacute;ch nghi. NÄƒng suáº¥t kh&aacute; cao (65 - 70 taÌ£/ha), tá»©c thá»«a sá»©c tÆ°Æ¡ng Ä‘Æ°Æ¡ng vá»›i giá»‘ng l&uacute;a thuáº§n Ä‘ang phá»• biáº¿n l&agrave; Khang d&acirc;n 18. Tuy nhi&ecirc;n, n&oacute;i chuyá»‡n vá» l&uacute;a Nháº­t m&agrave; láº¡i chá»‰ b&agrave;n vá» nÄƒng suáº¥t th&igrave; c&oacute; váº» hÆ¡i bá»‹ chá»‡ch hÆ°á»›ng. Vá»¥ Ä‘áº§u ti&ecirc;n l&uacute;a gáº·t vá» xay x&aacute;t ra, ngÆ°á»i l&agrave;ng t&ograve; m&ograve; Äƒn thá»­ rá»“i nháº¥t quyáº¿t giá»¯ láº¡i kh&ocirc;ng b&aacute;n cho c&ocirc;ng ty v&igrave;&hellip; ngon qu&aacute;. Ai Ä‘á»i c&aacute;n bá»™ thu mua cháº·n á»Ÿ Ä‘áº§u bá» n&agrave;y, ngÆ°á»i n&ocirc;ng d&acirc;n láº¡i g&aacute;nh l&uacute;a v&ograve;ng qua Ä‘áº§u bá» kia Ä‘á»ƒ tuá»“n háº¿t vá» nh&agrave;, kh&ocirc;ng chá»‹u b&aacute;n theo cam káº¿t. B&agrave;&nbsp;Nguyá»…n Thá»‹ T&acirc;m chÆ°ng há»­ng v&igrave; káº¿ hoáº¡ch b&aacute;n giá»‘ng bá»—ng nhi&ecirc;n tháº¥t báº¡i. Nhá»¯ng vá»¥ tiáº¿p theo, khi diá»‡n t&iacute;ch sáº£n xuáº¥t J02 kh&ocirc;ng chá»‰ v&agrave;i hec ta m&agrave; h&agrave;ng chá»¥c, h&agrave;ng trÄƒm, tháº­m ch&iacute; h&agrave;ng ng&agrave;n hec ta nhÆ°ng chÆ°a bao giá» l&uacute;a Nháº­t háº¿t sá»‘t. Tá»• chá»©c há»™i tháº£o á»Ÿ Ä‘&acirc;u tiáº¿ng thÆ¡m Ä‘á»u lan tá»a rá»™ng kháº¯p. Tá»• chá»©c Ä‘áº§u bá» á»Ÿ Ä‘&acirc;u Ä‘á»u &ldquo;ch&aacute;y&rdquo; cáº£ gáº¡o láº«n cÆ¡m. ÄÆ°á»ng má»›i, rá»™ng má»Ÿ Theo thá»i gian, nhá»¯ng giá»‘ng l&uacute;a Nháº­t kh&aacute;c dáº§n du nháº­p v&agrave;o Viá»‡t Nam. T&ocirc;i Äƒn thá»­ Ä‘&atilde; nhiá»u nhÆ°ng chÆ°a giá»‘ng n&agrave;o c&oacute; vá»‹ Ä‘áº­m Ä‘&agrave; láº¡i b&eacute;o ngáº­y nhÆ° J02 cáº£. C&ocirc;ng báº±ng m&agrave; n&oacute;i, gáº¡o Nháº­t sáº£n xuáº¥t á»Ÿ Viá»‡t Nam váº«n chÆ°a thá»ƒ báº±ng gáº¡o Nháº­t sáº£n xuáº¥t á»Ÿ ch&iacute;nh quá»‘c, nháº¥t l&agrave; á»Ÿ m&ugrave;i vá»‹. Trong chuyáº¿n c&ocirc;ng t&aacute;c Nháº­t Báº£n gáº§n Ä‘&acirc;y, t&ocirc;i Ä‘&atilde; cá»‘ c&ocirc;ng t&igrave;m hiá»ƒu b&iacute; quyáº¿t n&agrave;o Ä‘&atilde; l&agrave;m n&ecirc;n danh tiáº¿ng cá»§a gáº¡o xá»© Ph&ugrave; Tang. Ruá»™ng Ä‘á»“ng cá»§a Nháº­t c&ograve;n l&acirc;u má»›i s&aacute;nh Ä‘Æ°á»£c vá» Ä‘á»™ ph&igrave; nhi&ecirc;u cÅ©ng nhÆ° rá»™ng r&atilde;i nhÆ° cá»§a ta. Ä&oacute; chá»‰ l&agrave; nhá»¯ng thá»­a Ä‘áº¥t nho nhá», báº­c thang, nhiá»u chá»— trÆ¡ sá»i Ä‘&aacute;. Giá»‘ng l&uacute;a cá»§a Nháº­t Báº£n th&igrave; nhiá»u thá»© ta Ä‘&atilde; nháº­p, cÅ©ng kh&ocirc;ng c&oacute; g&igrave; Ä‘áº·c biá»‡t láº¯m. NhÆ°ng &ocirc;ng trá»i Ä‘&atilde; cho n&ocirc;ng d&acirc;n Nháº­t má»™t Ä‘áº·c &acirc;n Ä‘&oacute; l&agrave; m&ugrave;a Ä‘&ocirc;ng bÄƒng gi&aacute;. Suá»‘t máº¥y th&aacute;ng cá»§a m&ugrave;a Ä‘&ocirc;ng d&agrave;i dáº±ng dáº·c, tuyáº¿t phá»§ cao 3 - 5 m&eacute;t m&agrave; náº¿u kh&ocirc;ng li&ecirc;n tá»¥c c&agrave;o m&aacute;i nh&agrave; c&oacute; thá»ƒ bá»‹ sáº­p xuá»‘ng. Qua m&ugrave;a Ä‘&ocirc;ng, pháº§n lá»›n s&acirc;u bá» Ä‘á»u bá»‹ diá»‡t háº¿t. Tuyáº¿t tan cÅ©ng l&agrave; l&uacute;c n&ocirc;ng d&acirc;n Nháº­t trá»“ng l&uacute;a v&agrave; trong suá»‘t m&ugrave;a h&egrave; v&ocirc; c&ugrave;ng m&aacute;t máº» Ä‘&oacute;, l&uacute;a sinh trÆ°á»Ÿng k&eacute;o d&agrave;i tá»›i khoáº£ng 6 th&aacute;ng th&igrave; cho thu hoáº¡ch. Má»™t nÄƒm n&ocirc;ng d&acirc;n Nháº­t thÆ°á»ng chá»‰ trá»“ng má»™t vá»¥ l&uacute;a. Thá»i gian sinh trÆ°á»Ÿng k&eacute;o d&agrave;i, tá»•ng t&iacute;ch lÅ©y cao n&ecirc;n cháº¥t lÆ°á»£ng gáº¡o ngon l&agrave; pháº£i. Tuy tháº¿ gáº¡o Nháº­t láº¡i Ä‘áº¯t Ä‘á» má»™t c&aacute;ch khá»§ng khiáº¿p. Gi&aacute; loáº¡i trung b&igrave;nh quy ra tiá»n Viá»‡t Ä‘&atilde; khoáº£ng 100.000 Ä‘/kg, gáº¡o thÆ°á»£ng háº¡ng c&oacute; khi l&ecirc;n tá»›i 200.000 Ä‘/kg. LÆ°á»£ng gáº¡o Nháº­t háº§u nhÆ° chá»‰ phá»¥c vá»¥ cho thá»‹ trÆ°á»ng ná»™i Ä‘á»‹a c&ograve;n chÆ°a Ä‘á»§ chá»© kh&ocirc;ng n&oacute;i Ä‘áº¿n chuyá»‡n xuáº¥t kháº©u. Gi&aacute; cáº£ há»£p l&yacute; ch&iacute;nh l&agrave; lá»£i tháº¿ ráº¥t lá»›n cá»§a giá»‘ng l&uacute;a Nháº­t trá»“ng á»Ÿ ta. Náº¿u l&yacute; giáº£i tá»« Ä‘áº·c Ä‘iá»ƒm kh&iacute; háº­u, thá»• nhÆ°á»¡ng cho tháº¥y giá»‘ng J02 trá»“ng á»Ÿ nhá»¯ng v&ugrave;ng n&uacute;i cao kh&iacute; háº­u láº¡nh hay nhá»¯ng v&ugrave;ng c&oacute; bi&ecirc;n Ä‘á»™ nhiá»‡t Ä‘á»™ dao Ä‘á»™ng ng&agrave;y Ä‘&ecirc;m lá»›n th&igrave; háº¡t gáº¡o ráº¥t trong, &iacute;t c&oacute; t&igrave;nh tráº¡ng báº¡c bá»¥ng, n&ecirc;n cÆ¡m ngon cÅ©ng má»™t t&aacute;m, má»™t mÆ°á»i so vá»›i gáº¡o Nháº­t ch&iacute;nh quá»‘c. Má»™t con Ä‘Æ°á»ng má»›i, rá»™ng má»Ÿ cho háº¡t gáº¡o Viá»‡t Nam báº¯t Ä‘áº§u&hellip;... Äá»c th&ecirc;m táº¡i:&nbsp;<a href="http://nongnghiep.vn/nguoi-phu-nu-viet-me-lua-nhat-post150784.html">http://nongnghiep.vn/nguoi-phu-nu-viet-me-lua-nhat-post150784.html</a>&nbsp;| NongNghiep.vn</p>', 'CÃ³ má»™t ngÆ°á»i phá»¥ ná»¯ Ä‘Ã¡nh Ä‘á»• Ä‘á»‹nh kiáº¿n Ä‘Ã£ Äƒn sÃ¢u, bÃ¡m rá»… bao Ä‘á»i ráº±ng lÃºa cháº¥t lÆ°á»£ng pháº£i lÃ  dáº¡ng háº¡t dÃ i, thon nhá»n khi â€œcáº£ ganâ€ mang vá» tá»‰nh mÃ¬nh giá»‘ng lÃºa má»›i, Ä‘á»ƒ tá»« Ä‘Ã³ lÃºa Nháº­t lan rá»™ng mÃ£i ra kháº¯p miá»n Báº¯câ€¦... Äá»c thÃªm táº¡i: http://nongnghiep.vn/nguoi-phu-nu-viet-me-lua-nhat-post150784.html | NongNghiep.vn', 'dsc-7386085647576.JPG', '2015-12-09 10:41:34', 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyername` varchar(255) NOT NULL,
  `buyeremail` varchar(255) NOT NULL,
  `buyerphone` varchar(255) NOT NULL,
  `buyeraddress` varchar(255) NOT NULL,
  `receivername` varchar(255) NOT NULL,
  `receiveraddress` varchar(255) NOT NULL,
  `receiverphone` varchar(255) NOT NULL,
  `receiverdate` datetime NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `cartinfomation` text NOT NULL,
  `createorder` datetime NOT NULL,
  `status` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `buyername`, `buyeremail`, `buyerphone`, `buyeraddress`, `receivername`, `receiveraddress`, `receiverphone`, `receiverdate`, `paymentmethod`, `cartinfomation`, `createorder`, `status`) VALUES
(24, 0, '123', 'hoccakephp@gmail.com', '1313', '131', '312313', '13131', '31231', '0000-00-00 00:00:00', 'v', '{}', '0000-00-00 00:00:00', '<p>vvvv</p>'),
(25, 0, 'nguyen ba long', 'hoccakephp@gmail.com', '01234567891', 'abc', 'Long', 'hsf', '012347586', '0000-00-00 00:00:00', 'Tien mat', '{"SCI-1":{"quantity":2,"id":"SCI-1","price":190000,"name":"HÃ nh tÃ¢y","thumb":"files/product/image/30/download (6).jpg"}}', '0000-00-00 00:00:00', '<p>ok</p>');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `top` tinyint(1) NOT NULL,
  `bottom1` tinyint(1) NOT NULL,
  `bottom2` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `vip` tinyint(1) NOT NULL,
  `promotion` varchar(1000) DEFAULT NULL,
  `created` datetime NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `image`, `quantity`, `price`, `description`, `vip`, `promotion`, `created`, `category_id`) VALUES
(24, 'ABC', 'NhÃ£n', 'anh.jpg', 5000, '10000 vnd/kg', '<p>Ä&agrave; Náºµng</p>', 1, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 5),
(25, 'ACB', 'DÃ¢u tÃ¢y', 'download (1).jpg', 900, '15000 vnd/kg', '<p>Xuáº¥t xá»© tá»« Califonia, Má»¹</p>', 1, 'Táº·ng má»™t dao gá»t trÃ¡i cÃ¢y', '0000-00-00 00:00:00', 5),
(26, 'ASD', 'Cáº£i Ä‘áº¯ng', 'download (2).jpg', NULL, '5000 vnd/bÃ³', '<p>Rau sáº¡ch</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 4),
(27, 'HIMS', 'NgÃ²', 'download (3).jpg', NULL, '1000 vnd/bÃ³', '<p>Ä&agrave; Láº¡t</p>', 0, 'Táº·ng má»™t dao tá»‰a rau', '0000-00-00 00:00:00', 4),
(28, 'ERT', 'Rau muá»‘ng', 'download (4).jpg', NULL, '9000 vnd/bÃ³', '<p>kh&ocirc;ng</p>', 0, 'Táº·ng má»™t dao tá»‰a rau', '0000-00-00 00:00:00', 4),
(29, 'GHF', 'Cáº£i báº¯p', 'download (5).jpg', NULL, '20000 vnd/báº¯p', '<p>Quy NhÆ¡n</p>', 1, 'Táº·ng má»™t dao tá»‰a rau', '0000-00-00 00:00:00', 4),
(30, 'WNB', 'HÃ nh tÃ¢y', 'download (6).jpg', NULL, '190000 vnd/kg', '<p>C&ocirc;n Äáº£o</p>', 1, 'Táº·ng má»™t dao tá»‰a rau, má»™t dao gá»t vá»', '0000-00-00 00:00:00', 3),
(31, 'BHJH', 'Gá»«ng', 'download (7).jpg', NULL, '200000 vnd/kg', '<p>Th&aacute;i Lan</p>', 1, 'Táº·ng má»™t dao tá»‰a rau, má»™t dao gá»t vá»', '0000-00-00 00:00:00', 3),
(32, 'HGJK', 'BÆ¡', 'download.jpg', NULL, '20000 vnd/kg', '<p>B&igrave;nh PhÆ°á»›c</p>', 0, 'Táº·ng má»™t dao gá»t trÃ¡i cÃ¢y', '0000-00-00 00:00:00', 5),
(33, 'KKKK', 'Chuá»‘i', 'images (4).jpg', NULL, '10000 vnd/kg', '<p>Quáº£ng Trá»‹</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 5),
(34, 'HHIHI', 'TÃ¡o', 'images (2).jpg', NULL, '30000 vnd/kg', '<p>L&acirc;m Äá»“ng</p>', 0, 'Táº·ng má»™t dao gá»t trÃ¡i cÃ¢y', '0000-00-00 00:00:00', 5),
(35, 'HYHY', 'Cam', 'images (3).jpg', NULL, '20000 vnd/kg', '<p>L&agrave;o</p>', 0, 'Táº·ng má»™t dao gá»t trÃ¡i cÃ¢y', '0000-00-00 00:00:00', 5),
(36, 'GTGTG', 'VÃº sá»¯a', 'images (6).jpg', NULL, '10000 vnd/kg', '<p>Quáº£ng Nam</p>', 0, 'Táº·ng má»™t dao gá»t trÃ¡i cÃ¢y', '0000-00-00 00:00:00', 5),
(37, 'DEEDE', 'Sáº§u riÃªng', 'images (7).jpg', NULL, '120000 vnd/kg', '<p>Cáº§n ThÆ¡</p>', 0, 'Táº·ng má»™t dao tÃ¡ch vá»', '0000-00-00 00:00:00', 5),
(38, 'BGBG', 'Cá»§ cáº£i Ä‘Æ°á»ng', 'images (15).jpg', NULL, '10000 vnd/kg', '<p>Nha Trang</p>', 0, 'Táº·ng má»™t dao cáº¡o vá»', '0000-00-00 00:00:00', 3),
(39, 'BHBH', 'Nghá»‡', 'images (12).jpg', NULL, '100000 vnd/kg', '<p>Báº¯c Ninh</p>', 0, 'Táº·ng má»™t dao cáº¡o vá»', '0000-00-00 00:00:00', 3),
(40, 'FRFR', 'Khoai lang tÃ­m', 'images (13).jpg', NULL, '120000 vnd/kg', '<p>Quáº£ng B&igrave;nh</p>', 1, 'Táº·ng má»™t dao tá»‰a rau, má»™t dao gá»t vá»', '0000-00-00 00:00:00', 3),
(41, 'FRB12', 'Trá»©ng gÃ ', 'images (2).jpg', 132213, '4000 vnd/quáº£', '<p>To&agrave;n quá»‘c</p>', 1, 'táº·ng má»™t mÃ¡y Ä‘Ã¡nh trá»©ng/ 1000 quáº£', '0000-00-00 00:00:00', 6),
(42, 'GHGY465', 'Trá»©ng vá»‹t', 'images (1).jpg', 1313, '3000 vnd/quáº£', '<p>Táº·ng má»™t b&aacute;t thá»§y tinh / 50 quáº£</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 6),
(43, '3123', 'Náº¥m lÃ¹n Huáº¿', 'download.jpg', 424241, '12000', '<p>Sáº£n xuáº¥t tá»« Huáº¿</p>\r\n<p>ThÆ¡m ngon v&agrave; Ä‘áº§y dinh dÆ°á»¡ng</p>\r\n<p>ph&ugrave; há»£p vá»›i ngÆ°á»i Äƒn ki&ecirc;ng</p>', 1, 'Táº·ng má»™t sao tá»‰a rau', '0000-00-00 00:00:00', 4),
(44, 'GHIT', 'Náº¥m dÃ i', '04-55.jpg', 342424, '13000', '<p>sáº£n xuáº¥t tá»« Ä&agrave; Náºµng</p>\r\n<p>Sáº¡ch</p>\r\n<p>thÆ¡m ngon</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 4),
(45, 'FGMJ', 'Thá»‹t heo', 'download (2).jpg', 52525, '129999', '<p>L&ograve; má»• Ph&uacute; Xu&acirc;n</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 6),
(46, 'HIHIH', 'Thá»‹t bÃ²', 'images.jpg', 141244, '150000', '<p>L&ograve; má»• Kim Lan</p>\r\n<p>Ä&agrave; Náºµng</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 6),
(47, 'AAAA', 'Thá»‹t heo Má»¹', 'download (5).jpg', 4124124, '1221121', '<p>Xuáº¥t xá»© tá»« Má»¹</p>\r\n<p>Sá»‘ lÆ°á»£ng c&oacute; háº¡n</p>', 0, 'KhÃ´ng cÃ³ khuyáº¿n mÃ£i', '0000-00-00 00:00:00', 6),
(48, 'gfgfgf', 'Thá»‹t trÃ¢u', 'download (4).jpg', 435345, '120000', '<p>Nháº­p kháº©u tá»« Th&aacute;i Lan</p>\r\n<p>Báº£o quáº£n báº±ng ch&acirc;n kh&ocirc;ng</p>', 1, 'Táº·ng má»™t dao cáº¯t thá»‹t', '0000-00-00 00:00:00', 6),
(49, 'VIP1231', 'Thá»‹t BÃª', 'download (6).jpg', 41424, '200000 vnd/kg', '<p>Xuáº¥t xá»© tá»« L&agrave;o</p>\r\n<p>TÆ°Æ¡i ngon</p>', 1, 'Táº·ng má»™t dao cáº¯t thá»‹t', '0000-00-00 00:00:00', 6),
(50, 'gfhgsgs', 'Thá»‹t chÃ³ sÃ³i', 'images.jpg', 24234, '300000 vnd/kg', '<p>Tá»« Nga</p>\r\n<p>Báº£o quáº£n trong tuyáº¿t</p>', 1, 'Táº·ng má»™t dao cáº¯t thá»‹t', '2015-12-06 10:15:16', 6);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`id`, `name`, `order`) VALUES
(1, 'Xuáº¥t kháº©u', 1),
(2, 'Nháº­p kháº©u', 2),
(3, 'Báº£n tin tÃ i chÃ­nh', 3),
(4, 'NhÃ  nÃ´ng lÃ m giÃ u', 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
