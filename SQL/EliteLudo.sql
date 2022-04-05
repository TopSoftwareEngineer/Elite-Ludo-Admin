-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2021 at 12:55 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ludoclash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `role`, `password`, `bio`, `birthdate`, `website`, `phone`, `country`, `company`, `profile_img`, `work`, `publish_year`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'Webplustech Solutions', 'Webplustech', 'admin@gmail.com', 'Admin', '$2y$10$ZHIe9VD/tS5p4kYHqXb.uuyMGXLIXDQ/.L17rDNT5nwdz9ZQBDnKa', 'retete', '2021-07-01', 'webplustech.com', '9304538240', 'India', 'Webplustech Solutions', 'webplustechLatest-Logo-2.jpg', NULL, NULL, '#', '#', '#', '#', '#', '#', NULL, '2021-09-19 05:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
CREATE TABLE IF NOT EXISTS `bids` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `bid_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `bid_value`, `updated_at`, `created_at`) VALUES
(15, '300', '2021-10-21 01:27:13', '2021-10-21 01:27:13'),
(5, '40', '2021-08-22 12:50:48', '2021-08-22 12:50:48'),
(6, '50', '2021-08-22 12:50:51', '2021-08-22 12:50:51'),
(7, '60', '2021-08-22 12:50:54', '2021-08-22 12:50:54'),
(10, '80', '2021-08-22 12:51:09', '2021-08-22 12:51:09'),
(9, '70', '2021-08-22 12:50:59', '2021-08-22 12:50:59'),
(11, '90', '2021-08-22 12:51:15', '2021-08-22 12:51:15'),
(12, '100', '2021-10-21 01:27:03', '2021-10-21 01:27:03'),
(13, '200', '2021-10-21 01:27:09', '2021-10-21 01:27:09'),
(16, '500', '2021-12-14 15:58:25', '2021-12-14 15:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(6, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor'),
(7, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor'),
(8, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'kundaKumar', 'gdfg2@gmail.com', NULL, 'wevr we wer we rwer wer twer we ', 'Customize Headwe werwrq weer & footer in elementor'),
(9, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor'),
(10, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor'),
(11, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor'),
(12, '2021-11-15 06:33:23', '2021-11-15 06:33:23', 'Chandan Kumar', 'gadgetpreview2@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int NOT NULL,
  `shortname` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos insert into countries (id, shortname, name, phonecode) values (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire insert into countries (id, shortname, name, phonecode) values (Ivory Coast)', 225),
(54, 'HR', 'Croatia insert into countries (id, shortname, name, phonecode) values (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man insert into countries (id, shortname, name, phonecode) values (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State insert into countries (id, shortname, name, phonecode) values (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands insert into countries (id, shortname, name, phonecode) values (British)', 1284),
(240, 'VI', 'Virgin Islands insert into countries (id, shortname, name, phonecode) values (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faq_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `playerid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friendsid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homedetails`
--

DROP TABLE IF EXISTS `homedetails`;
CREATE TABLE IF NOT EXISTS `homedetails` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heading` longtext COLLATE utf8mb4_unicode_ci,
  `subheading` longtext COLLATE utf8mb4_unicode_ci,
  `bannerimg` longtext COLLATE utf8mb4_unicode_ci,
  `about_title` longtext COLLATE utf8mb4_unicode_ci,
  `about_desc` longtext COLLATE utf8mb4_unicode_ci,
  `about_setp1` longtext COLLATE utf8mb4_unicode_ci,
  `about_step2` longtext COLLATE utf8mb4_unicode_ci,
  `about_step3` longtext COLLATE utf8mb4_unicode_ci,
  `about_img` longtext COLLATE utf8mb4_unicode_ci,
  `fe_title` longtext COLLATE utf8mb4_unicode_ci,
  `fe_desc` longtext COLLATE utf8mb4_unicode_ci,
  `easy_title` longtext COLLATE utf8mb4_unicode_ci,
  `easy_desc` longtext COLLATE utf8mb4_unicode_ci,
  `easy_icon` longtext COLLATE utf8mb4_unicode_ci,
  `de_title` longtext COLLATE utf8mb4_unicode_ci,
  `de_desc` longtext COLLATE utf8mb4_unicode_ci,
  `de_icon` longtext COLLATE utf8mb4_unicode_ci,
  `op_title` longtext COLLATE utf8mb4_unicode_ci,
  `op_desc` longtext COLLATE utf8mb4_unicode_ci,
  `op_icon` longtext COLLATE utf8mb4_unicode_ci,
  `download_title` longtext COLLATE utf8mb4_unicode_ci,
  `download_desc` longtext COLLATE utf8mb4_unicode_ci,
  `download_image` longtext COLLATE utf8mb4_unicode_ci,
  `download_link` longtext COLLATE utf8mb4_unicode_ci,
  `screenshot_title` longtext COLLATE utf8mb4_unicode_ci,
  `screenshot_desc` longtext COLLATE utf8mb4_unicode_ci,
  `contact_image` longtext COLLATE utf8mb4_unicode_ci,
  `contact_video` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homedetails`
--

INSERT INTO `homedetails` (`id`, `created_at`, `updated_at`, `heading`, `subheading`, `bannerimg`, `about_title`, `about_desc`, `about_setp1`, `about_step2`, `about_step3`, `about_img`, `fe_title`, `fe_desc`, `easy_title`, `easy_desc`, `easy_icon`, `de_title`, `de_desc`, `de_icon`, `op_title`, `op_desc`, `op_icon`, `download_title`, `download_desc`, `download_image`, `download_link`, `screenshot_title`, `screenshot_desc`, `contact_image`, `contact_video`) VALUES
(1, NULL, '2021-11-16 06:30:11', 'Online Real Money Ludo Game for Multiplayer', 'Elite Ludo is strategic Board Game where you can challenge your opponent with real money. Elite Ludo is a best Ludo online game tournament app, In Elite Ludo you can earn real paytm cash by playing Ludo. In Elite Ludo you can earn money by playing 24*7 Ludo games, Elite Ludo is the most trusted platform for ludo players.', 'banner--image.png', 'About This App', 'Elite Ludo is strategic Board Game where you can challenge your opponent with real money. Elite Ludo is a best Ludo online game tournament app, In Elite Ludo you can earn real paytm cash by playing Ludo. In Elite Ludo you can earn money by playing 24*7 Ludo games, Elite Ludo is the most trusted platform for ludo players.', 'Easy Installation', 'Real Money', '100% Free', 'd-img1-3.png', 'Fantastic Features', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', 'Play Random', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', '001-happy.png', 'Play with Friends', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', '002-wallet.png', '100% fair. 100% safe', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', '003-salary.png', 'Download The Latest Version Of The App', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', 'phone-frame-2.png', 'base.apk', 'App Screenshot', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Accumsan Lacus Vel Facilisis.', 'contact-us.jpg', 'https://www.youtube.com/watch?v=80y2FxcAUhY');

-- --------------------------------------------------------

--
-- Table structure for table `jackpots`
--

DROP TABLE IF EXISTS `jackpots`;
CREATE TABLE IF NOT EXISTS `jackpots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jackpot_entry` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_game` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycdetails`
--

DROP TABLE IF EXISTS `kycdetails`;
CREATE TABLE IF NOT EXISTS `kycdetails` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kycdetails_document_number_unique` (`document_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_074813_create_admins_table', 1),
(5, '2021_06_09_035535_create_faqs_table', 1),
(6, '2021_06_14_040322_create_specials_table', 1),
(7, '2021_06_14_051935_create_kycdetails_table', 1),
(21, '2021_06_14_070353_create_shopcoins_table', 5),
(9, '2021_06_14_100930_create_bids_table', 1),
(10, '2021_06_14_105032_create_transactions_table', 1),
(11, '2021_06_14_125839_create_withdraws_table', 1),
(12, '2021_06_16_021015_create_websettings_table', 1),
(13, '2021_07_21_120338_create_tournaments_table', 1),
(14, '2021_07_23_143916_create_jackpots_table', 1),
(18, '2021_07_25_153224_create_roomdatas_table', 2),
(31, '2021_07_25_145706_create_userdatas_table', 11),
(20, '2021_08_31_104232_create_friends_table', 4),
(29, '2021_11_12_155952_create_homedetails_table', 9),
(24, '2021_11_12_160643_create_screenshots_table', 8),
(30, '2021_11_14_172611_create_contacts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roomdatas`
--

DROP TABLE IF EXISTS `roomdatas`;
CREATE TABLE IF NOT EXISTS `roomdatas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roomID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_limit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stake_money` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win_money` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `screenshots`
--

DROP TABLE IF EXISTS `screenshots`;
CREATE TABLE IF NOT EXISTS `screenshots` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screenshot` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screenshots`
--

INSERT INTO `screenshots` (`id`, `created_at`, `updated_at`, `screenshot`) VALUES
(3, '2021-11-14 04:04:56', '2021-11-14 04:04:56', 'phone-frame.png'),
(4, '2021-11-14 04:05:00', '2021-11-14 04:05:00', 'phone-frame-2.png'),
(5, '2021-11-14 04:05:04', '2021-11-14 04:05:04', 'phone-frame-3.png'),
(6, '2021-11-14 04:05:12', '2021-11-14 04:05:12', 'phone-frame-4.png'),
(7, '2021-11-14 04:05:17', '2021-11-14 04:05:17', 'phone-frame5.png'),
(8, '2021-11-14 04:05:21', '2021-11-14 04:05:21', 'phone-frame6.png'),
(9, '2021-11-14 04:05:26', '2021-11-14 04:05:26', 'phone-frame-7.png'),
(10, '2021-11-14 04:05:36', '2021-11-14 04:05:36', 'phone-frame-8.png'),
(11, '2021-11-14 04:05:41', '2021-11-14 04:05:41', 'phone-frame-9.png');

-- --------------------------------------------------------

--
-- Table structure for table `shopcoins`
--

DROP TABLE IF EXISTS `shopcoins`;
CREATE TABLE IF NOT EXISTS `shopcoins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_coin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopcoins`
--

INSERT INTO `shopcoins` (`id`, `created_at`, `updated_at`, `shop_coin`) VALUES
(13, '2021-10-21 01:26:09', '2021-10-21 01:26:09', '300'),
(11, '2021-10-21 01:26:00', '2021-10-21 01:26:00', '500'),
(12, '2021-10-21 01:26:05', '2021-10-21 01:26:05', '400'),
(14, '2021-10-21 01:26:12', '2021-10-21 01:26:12', '250'),
(15, '2021-10-21 01:26:18', '2021-10-21 01:26:18', '200'),
(16, '2021-10-21 01:26:24', '2021-10-21 01:26:24', '150'),
(17, '2021-10-21 01:26:24', '2021-10-21 01:26:24', '150'),
(18, '2021-10-21 01:26:29', '2021-10-21 01:26:29', '100'),
(19, '2021-10-21 01:26:34', '2021-10-21 01:26:34', '80'),
(20, '2021-10-21 01:26:38', '2021-10-21 01:26:38', '50'),
(21, '2021-10-21 01:26:44', '2021-10-21 01:26:44', '20'),
(22, '2021-10-21 01:26:48', '2021-10-21 01:26:48', '10');

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE IF NOT EXISTS `specials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `offer_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_offer_coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_received_coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerimage` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `specials_offer_title_unique` (`offer_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
CREATE TABLE IF NOT EXISTS `tournaments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bit_amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_player` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_player_winning` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_winner` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tournament_interval` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdatas`
--

DROP TABLE IF EXISTS `userdatas`;
CREATE TABLE IF NOT EXISTS `userdatas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playerid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userphone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OTPCode` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useremail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `refer_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_refer_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalgem` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalcoin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playcoin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wincoin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerDate` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refrelCoin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GamePlayed` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `twoPlayWin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FourPlayWin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `twoPlayloss` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FourPlayloss` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountHolder` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountNumber` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websettings`
--

DROP TABLE IF EXISTS `websettings`;
CREATE TABLE IF NOT EXISTS `websettings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_tagline` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sideskin_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pnum` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secnum` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secemail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `classic_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrow_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_bonus` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_bonus` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_withdraw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_mail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_apikey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websettings`
--

INSERT INTO `websettings` (`id`, `created_at`, `updated_at`, `website_name`, `website_url`, `website_tagline`, `website_keyword`, `website_desc`, `copyright`, `skin_mode`, `sideskin_mode`, `head_logo`, `footer_logo`, `favicon`, `facebook`, `youtube`, `twitter`, `whatsapp`, `linkedin`, `pinterest`, `instagram`, `github`, `pnum`, `secnum`, `pemail`, `secemail`, `address`, `about_title`, `about_slug`, `about_desc`, `classic_rule`, `quick_rule`, `arrow_rule`, `commission`, `signup_bonus`, `bot_status`, `server_key`, `refer_bonus`, `min_withdraw`, `support_mail`, `payment_apikey`, `payment_secret`, `terms_title`, `terms_slug`, `terms_desc`, `privacy_title`, `privacy_slug`, `privacy_desc`, `whatsapp_link`, `youtube_link`, `purchase_link`, `app_version`, `telegram_link`, `notification`) VALUES
(1, '2021-07-25 09:44:32', '2021-12-14 15:41:04', 'Elite Ludo', 'https://webplustech.com/', 'Elite Ludo Real Money Online Game', 'Ludo,realmoney,earning app,elite ludo', 'Elite Ludo Is Strategic Board Game Where You Can Challenge Your Opponent With Real Money. Elite Ludo Is A Best Ludo Online Game Tournament App', 'Copyright @ 2021 Webplustech Solutions', 'dark-layout', 'menu-dark', 'images-removebg-preview.png', 'images-removebg-preview.png', 'icon.jpg', '#', '#', '#', '#', '#', '#', '#', '#', '9304538240', '9128403769', 'webplustech01@gmail.com', 'webplustech01@gmail.com', 'Kashipur Samastipur', 'About US', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et sagittis elit. Aliquam commodo nisl quam, ac pellentesque justo dictum ac. Etiam ut purus turpis. Curabitur tristique massa ut urna pretium molestie. Phasellus ut massa nulla. Praesent commodo nulla leo, in consequat arcu tincidunt sit amet. Cras at purus felis. Phasellus aliquet ac erat ac pharetra.</p>\r\n<p>Nunc posuere massa ac mollis molestie. Praesent placerat vitae risus imperdiet pellentesque. Morbi mattis at orci at tempor. Aenean sit amet condimentum arcu, sed interdum nunc. Curabitur mattis enim at purus venenatis maximus. Aenean magna elit, gravida sed mi in, cursus varius lectus. Nulla tristique lorem eu tincidunt pharetra. Nullam pretium sem sed ex dignissim, eu vestibulum ex laoreet. Maecenas felis nulla, semper at dolor et, auctor condimentum sem. Nulla dolor nunc, sollicitudin at leo vestibulum, aliquet tempus ex. Donec fringilla consectetur neque non vehicula.</p>\r\n<p>Aenean nec consequat urna, ut molestie enim. Curabitur eu volutpat risus. Donec ultricies massa sit amet hendrerit cursus. Aenean eget molestie metus. Ut diam lectus, cursus quis diam sed, posuere hendrerit dolor. Quisque orci augue, dictum a commodo at, tincidunt eget tortor. Aenean sapien augue, molestie quis est a, vestibulum hendrerit dolor. Maecenas sit amet sodales purus, vel convallis magna. Phasellus aliquam at ex sit amet laoreet. Pellentesque et augue feugiat, accumsan nisl sed, hendrerit tellus. Aliquam ut congue velit.</p>\r\n<p>Integer ut tortor ante. Sed id magna quis felis egestas ullamcorper eget quis dolor. In hendrerit magna ac lacus luctus, quis facilisis diam consectetur. Maecenas sodales placerat nisi, id lacinia purus malesuada eget. Phasellus venenatis laoreet faucibus. Donec et est at ipsum porta feugiat non ut lacus. Mauris sit amet vulputate ligula, a convallis sem. Nullam eget dolor tellus. Suspendisse potenti. Integer tellus magna, feugiat sit amet posuere quis, finibus a tortor. Aenean a volutpat libero. Fusce vehicula ultrices augue non suscipit. Mauris in nunc rhoncus justo scelerisque auctor. Aliquam varius pulvinar nisl eu porta. Duis mollis id nisl id tempus.</p>\r\n<p>Phasellus id ligula eu lacus molestie porta eu in arcu. Phasellus ut scelerisque quam. Integer eu nulla metus. Donec ultricies nisi in gravida ultrices. Donec tincidunt lorem in iaculis hendrerit. Nulla et lectus in erat porta pellentesque in a dui. Fusce posuere sem quis turpis suscipit mollis. Praesent eu turpis leo.</p>', NULL, NULL, NULL, '20', '500', '0', 'trryr', '50', '50', 'test@gmasil.com', 'rzp_test_C2S7HG8Y9CJc2F', 'VChKuX0Oghnya7ObPdlR9QrM', 'Terms & Condition', 'terms-&-condition', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et sagittis elit. Aliquam commodo nisl quam, ac pellentesque justo dictum ac. Etiam ut purus turpis. Curabitur tristique massa ut urna pretium molestie. Phasellus ut massa nulla. Praesent commodo nulla leo, in consequat arcu tincidunt sit amet. Cras at purus felis. Phasellus aliquet ac erat ac pharetra.\r\n\r\nNunc posuere massa ac mollis molestie. Praesent placerat vitae risus imperdiet pellentesque. Morbi mattis at orci at tempor. Aenean sit amet condimentum arcu, sed interdum nunc. Curabitur mattis enim at purus venenatis maximus. Aenean magna elit, gravida sed mi in, cursus varius lectus. Nulla tristique lorem eu tincidunt pharetra. Nullam pretium sem sed ex dignissim, eu vestibulum ex laoreet. Maecenas felis nulla, semper at dolor et, auctor condimentum sem. Nulla dolor nunc, sollicitudin at leo vestibulum, aliquet tempus ex. Donec fringilla consectetur neque non vehicula.\r\n\r\nAenean nec consequat urna, ut molestie enim. Curabitur eu volutpat risus. Donec ultricies massa sit amet hendrerit cursus. Aenean eget molestie metus. Ut diam lectus, cursus quis diam sed, posuere hendrerit dolor. Quisque orci augue, dictum a commodo at, tincidunt eget tortor. Aenean sapien augue, molestie quis est a, vestibulum hendrerit dolor. Maecenas sit amet sodales purus, vel convallis magna. Phasellus aliquam at ex sit amet laoreet. Pellentesque et augue feugiat, accumsan nisl sed, hendrerit tellus. Aliquam ut congue velit.\r\n\r\nInteger ut tortor ante. Sed id magna quis felis egestas ullamcorper eget quis dolor. In hendrerit magna ac lacus luctus, quis facilisis diam consectetur. Maecenas sodales placerat nisi, id lacinia purus malesuada eget. Phasellus venenatis laoreet faucibus. Donec et est at ipsum porta feugiat non ut lacus. Mauris sit amet vulputate ligula, a convallis sem. Nullam eget dolor tellus. Suspendisse potenti. Integer tellus magna, feugiat sit amet posuere quis, finibus a tortor. Aenean a volutpat libero. Fusce vehicula ultrices augue non suscipit. Mauris in nunc rhoncus justo scelerisque auctor. Aliquam varius pulvinar nisl eu porta. Duis mollis id nisl id tempus.\r\n\r\nPhasellus id ligula eu lacus molestie porta eu in arcu. Phasellus ut scelerisque quam. Integer eu nulla metus. Donec ultricies nisi in gravida ultrices. Donec tincidunt lorem in iaculis hendrerit. Nulla et lectus in erat porta pellentesque in a dui. Fusce posuere sem quis turpis suscipit mollis. Praesent eu turpis leo.', 'Privacy Policy', 'privacy-policy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et sagittis elit. Aliquam commodo nisl quam, ac pellentesque justo dictum ac. Etiam ut purus turpis. Curabitur tristique massa ut urna pretium molestie. Phasellus ut massa nulla. Praesent commodo nulla leo, in consequat arcu tincidunt sit amet. Cras at purus felis. Phasellus aliquet ac erat ac pharetra.\r\n\r\nNunc posuere massa ac mollis molestie. Praesent placerat vitae risus imperdiet pellentesque. Morbi mattis at orci at tempor. Aenean sit amet condimentum arcu, sed interdum nunc. Curabitur mattis enim at purus venenatis maximus. Aenean magna elit, gravida sed mi in, cursus varius lectus. Nulla tristique lorem eu tincidunt pharetra. Nullam pretium sem sed ex dignissim, eu vestibulum ex laoreet. Maecenas felis nulla, semper at dolor et, auctor condimentum sem. Nulla dolor nunc, sollicitudin at leo vestibulum, aliquet tempus ex. Donec fringilla consectetur neque non vehicula.\r\n\r\nAenean nec consequat urna, ut molestie enim. Curabitur eu volutpat risus. Donec ultricies massa sit amet hendrerit cursus. Aenean eget molestie metus. Ut diam lectus, cursus quis diam sed, posuere hendrerit dolor. Quisque orci augue, dictum a commodo at, tincidunt eget tortor. Aenean sapien augue, molestie quis est a, vestibulum hendrerit dolor. Maecenas sit amet sodales purus, vel convallis magna. Phasellus aliquam at ex sit amet laoreet. Pellentesque et augue feugiat, accumsan nisl sed, hendrerit tellus. Aliquam ut congue velit.\r\n\r\nInteger ut tortor ante. Sed id magna quis felis egestas ullamcorper eget quis dolor. In hendrerit magna ac lacus luctus, quis facilisis diam consectetur. Maecenas sodales placerat nisi, id lacinia purus malesuada eget. Phasellus venenatis laoreet faucibus. Donec et est at ipsum porta feugiat non ut lacus. Mauris sit amet vulputate ligula, a convallis sem. Nullam eget dolor tellus. Suspendisse potenti. Integer tellus magna, feugiat sit amet posuere quis, finibus a tortor. Aenean a volutpat libero. Fusce vehicula ultrices augue non suscipit. Mauris in nunc rhoncus justo scelerisque auctor. Aliquam varius pulvinar nisl eu porta. Duis mollis id nisl id tempus.\r\n\r\nPhasellus id ligula eu lacus molestie porta eu in arcu. Phasellus ut scelerisque quam. Integer eu nulla metus. Donec ultricies nisi in gravida ultrices. Donec tincidunt lorem in iaculis hendrerit. Nulla et lectus in erat porta pellentesque in a dui. Fusce posuere sem quis turpis suscipit mollis. Praesent eu turpis leo.', '9304538240', 'https://youtube.com', 'http://127.0.0.1:8000/razorpay/payment', '1.0', 'https://telegram.com', 'this is notice');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `transaction_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
