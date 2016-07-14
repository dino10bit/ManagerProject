
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `homestead`
--

CREATE DATABASE `homestead`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `i_user_create` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone_1` varchar(20) DEFAULT NULL,
  `phone_2` varchar(20) DEFAULT NULL,
  `phone_3` varchar(20) DEFAULT NULL,
  `fax_1` varchar(20) DEFAULT NULL,
  `fax_2` varchar(20) DEFAULT NULL,
  `website` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `category` text NOT NULL,
  `group` varchar(10) DEFAULT NULL,
  `Longitude` float(10,6) DEFAULT NULL,
  `Latitude` float(10,6) DEFAULT NULL,
  `Pict1` varchar(100) DEFAULT NULL,
  `Pict2` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `created_at`, `i_user_create`, `name`, `address_1`, `address_2`, `city`, `zip`, `phone_1`, `phone_2`, `phone_3`, `fax_1`, `fax_2`, `website`, `email`, `category`, `group`, `Longitude`, `Latitude`, `Pict1`, `Pict2`, `updated_at`) VALUES
(1, '2015-02-23 07:15:17', 6, 'Company 1', 'stuff maker', NULL, 'Amsterdam', '111', '33', NULL, NULL, '33', NULL, 'company1.com', 'admin@company1.com', '', NULL, 0.000000, 0.000000, NULL, NULL, '2015-02-23 07:15:17'),
(2, '2015-02-23 07:15:17', 6, 'Company 2', 'stuf maker', NULL, 'Amsterdam', '111', '33', NULL, NULL, '33', NULL, 'company2.com', 'admin@company2.com', '', NULL, 0.000000, 0.000000, NULL, NULL, '2015-02-23 07:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `comp_category`
--

CREATE TABLE IF NOT EXISTS `comp_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `i_user_create` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_category`
--

INSERT INTO `comp_category` (`id`, `category`, `i_user_create`, `created_at`, `updated_at`) VALUES
(0, 'Customer', 6, '2015-02-23 07:13:23', '2015-02-23 07:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
`id` int(11) NOT NULL,
  `v_people_name` varchar(30) NOT NULL,
  `v_code` varchar(30) NOT NULL,
  `v_identification_no` varchar(50) NOT NULL,
  `v_passport_no` varchar(50) NOT NULL,
  `i_people_type_id` int(11) NOT NULL,
  `i_ibutton_id` varchar(30) NOT NULL,
  `v_mobile_no` varchar(25) NOT NULL,
  `v_telephone_no` varchar(25) NOT NULL,
  `v_address` varchar(100) NOT NULL,
  `v_dept_name` varchar(50) NOT NULL,
  `v_division` varchar(50) NOT NULL,
  `v_superior` int(11) NOT NULL,
  `v_email_add` varchar(50) NOT NULL,
  `v_description` varchar(50) NOT NULL,
  `i_status` int(11) NOT NULL,
  `i_created_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_update_user` int(11) NOT NULL,
  `i_company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `spec_1` varchar(100) DEFAULT NULL,
  `spec_2` varchar(100) DEFAULT NULL,
  `spec_3` varchar(100) DEFAULT NULL,
  `wide` varchar(10) DEFAULT NULL,
  `depth` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `pict1` varchar(1000) DEFAULT NULL,
  `pict2` varchar(100) DEFAULT NULL,
  `pict3` varchar(100) DEFAULT NULL,
  `is_package` varchar(100) DEFAULT NULL,
  `product_list` varchar(100) DEFAULT NULL,
  `is_sn` varchar(100) DEFAULT NULL,
  `is_imei` varchar(100) DEFAULT NULL,
  `is_iccid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `date`, `posted_by`, `code`, `name`, `brand`, `category`, `spec_1`, `spec_2`, `spec_3`, `wide`, `depth`, `height`, `weight`, `pict1`, `pict2`, `pict3`, `is_package`, `product_list`, `is_sn`, `is_imei`, `is_iccid`) VALUES
(24, '2013-06-04 10:35:26', 'national', 'BAT', 'BAT A500', 'Company Access Terminal', 1, '', 'Spec 2', 'Spec 3', '', '', '', '', 'images/A500.jpg', '', '', NULL, NULL, '1', '0', '0'),
(37, '2013-03-25 14:09:16', 'test1', 'iButton RH', 'iButton Reader Housing', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050475.JPG', '', '', NULL, NULL, '0', '0', '0'),
(39, '2013-03-25 13:38:32', 'test1', 'ACR1222L', 'RFID Reader', 'Advanced Card System', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050485.JPG', '', '', NULL, NULL, '1', '0', '0'),
(40, '2013-03-25 13:37:31', 'test1', 'iButton', 'iButton', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050488.JPG', '', '', NULL, NULL, '0', '0', '0'),
(41, '2013-03-25 13:36:40', 'test1', 'iButton Reader', 'iButton Reader', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/iButton Probe.jpg', '', '', NULL, NULL, '0', '0', '0'),
(42, '2013-03-25 13:43:05', 'test1', 'Buzzer', 'Buzzer', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050503.JPG', '', '', NULL, NULL, '0', '0', '0'),
(43, '2013-03-25 13:33:29', 'test1', 'Cable-A500', 'A500 IO Kit', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/IO Kit.jpg', '', '', NULL, NULL, '0', '0', '0'),
(44, '2013-03-25 13:28:46', 'test1', 'Relay-12', 'Relay NONC 12VDC', 'Tianbo', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050504.JPG', 'images/P1050507.JPG', '', NULL, NULL, '0', '0', '0'),
(45, '2013-03-25 14:08:45', 'test1', 'Relay-24', 'Relay NONC 24VDC', 'Tianbo', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(46, '2013-03-25 13:26:53', 'test1', 'GPS-A01', 'GPS Antenna', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050510.JPG', '', '', NULL, NULL, '0', '0', '0'),
(47, '2013-03-25 08:52:12', 'national', 'GSM-A01', 'GSM Antenna', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050490.JPG', '', '', NULL, NULL, '0', '0', '0'),
(48, '2013-03-26 07:22:04', 'national', 'Button-P01', 'Panic Button Probe', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050508.JPG', 'images/P1050509.JPG', '', NULL, NULL, '0', '0', '0'),
(49, '2013-05-03 08:32:52', 'national', 'Accesories', 'Battery A500', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'http://192.168.1.10/admin/webcam/upload/20130503083354.jpg', '', '', NULL, NULL, '0', '0', '0'),
(51, '2013-06-04 10:39:36', 'national', 'PACK', 'A500 bTNT', NULL, 1, 'Spec 1', 'Spec 2', 'Spec 3', NULL, NULL, NULL, NULL, '', '', '', '1', '24,43,46,47', NULL, NULL, NULL),
(52, '2013-06-04 10:43:36', 'adi', '001', 'Service After Warranty', 'Company', 2, '', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(53, '2013-06-14 10:44:01', 'sss', '', 'b''AT M500', '', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(54, '2013-06-19 17:53:08', 'aa', 'mmm', 'Discount BAT A500', 'mmm', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(55, '2013-07-02 18:17:16', 'erwi', 'jj', 'Service and GPRS charges (1 month)', 'kmjjm', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(56, '2013-07-18 08:25:30', 'lid', 'SG', 'Services and GPRS charges ( 1 Year )', 'GPRS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(57, '2013-07-18 08:29:15', 'lid', 'DS', 'Bonus Panic Button', 'bonus', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(58, '2013-07-30 07:44:27', 'national', 'TUB-01', 'Top Up Box', 'DHS', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(59, '2013-07-31 09:29:58', 'national', 'Wiring', 'Wiring', 'Wiring', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(60, '2013-07-31 09:30:17', 'national', 'PS', 'Power Supply', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(61, '2013-07-31 09:30:40', 'national', 'S&C', 'Setup & Configuration', 'Company', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(62, '2013-07-31 09:31:19', 'national', 'T&C', 'Testing & Commissioning', 'Company', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(63, '2013-08-01 11:50:05', 'lid', 'PA', 'Alat', 'Alat', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(64, '2013-08-01 11:51:19', 'lid', 'PG', 'GPS', 'GPS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(65, '2013-09-06 09:16:08', 'lid', 'SG4', 'Service and GPRS Charges (4 Year)', 'GPRS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(66, '2013-09-06 09:42:43', 'lid', 'IG', 'Biaya Instalasi GPS', 'INSTALASI', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(67, '2013-09-06 09:44:13', 'lid', 'MA', 'Maintenance', 'Maintenance', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(68, '2013-10-08 08:35:17', 'lid', 'PU', 'Mobil storing', 'service', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(69, '2013-10-08 08:37:02', 'lid', 'I/O', 'I/O Kit Cable A500', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(70, '2013-10-23 09:50:49', 'lid', 'SR', 'DISCOUNT PRICE', 'DISCOUNT PRICE', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(71, '2013-11-21 17:19:21', 'lid', 'D800', 'Company Driver terminal (D800)+passenger panic button', 'D800', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(72, '2013-11-21 17:21:35', 'lid', 'TM', 'Taxi Meter', 'Taxi Meter', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(73, '2013-11-21 17:22:35', 'lid', 'WB', 'Customized Web-Based Company Taxi Service', 'Web-Based', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(74, '2013-11-21 17:27:47', 'lid', 'SUBSCRIPTION', 'Company Service Subscription D800 1 Month', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(75, '2013-12-04 11:02:02', 'lid', 'SUBSCRIPTION', 'Service And GprsMonthly Charges (2 Month)', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(76, '2013-12-05 09:03:47', 'lid', 'DVR', 'Mobile DVR', 'Mobile DVR', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(77, '2013-12-09 13:37:43', 'lid', 'E-LOCK', 'E-LOCK', 'E-LOCK', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(78, '2013-12-16 17:45:12', 'lid', 'TUB', 'Top Up Box', 'DHS', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(79, '2014-03-11 10:42:53', 'lid', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(80, '2014-03-11 10:44:52', 'lid', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(81, '2014-03-11 10:45:20', 'lid', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(82, '2014-03-11 10:45:55', 'lid', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(83, '2014-03-11 10:46:39', 'lid', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(84, '2014-03-11 10:47:11', 'lid', 'WARRANTY', 'Test', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(85, '2014-03-11 10:47:51', 'lid', 'WARRANTY', 'Test', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(86, '2014-03-11 10:48:21', 'lid', 'WARRANTY', 'TEst', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(87, '2014-03-11 10:48:45', 'lid', 'WARRANTY', 'TEst', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(88, '2014-04-04 16:45:02', 'lid', 'PAKET M500', 'M500 + Door Sensor', 'PAKET M500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(89, '2014-04-11 14:14:40', 'lid', 'simcard', 'simcard', 'simcard', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(90, '2014-06-12 15:31:22', 'lid', 'BAT A500', 'BAT A500 +IMMOBILIZER+I-BUTTON', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(91, '2014-06-12 15:29:49', 'lid', 'SUBSCRIPTION', 'service And Subscription GPRS GPS 6 (Six) Months', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(92, '2014-06-13 09:20:19', 'lid', 'SERVICE', 'Test', 'SERVICE', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(93, '2014-07-04 10:58:36', 'lid', 'BAT A500', 'BAT A500+DOOR SENSOR+PANIC DISTRESS', 'BAT A500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(94, '2014-07-22 15:32:53', 'lid', 'BATERAI', 'Baterai Internal GPS A500V1', 'BATERAI', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(95, '2014-09-23 17:29:35', 'lid', 'BAT A500', 'BAT A500 +IMMOBILIZER+KPI DRIVER', 'BAT A500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(96, '2015-02-11 15:59:17', 'lid', 'Vehicle Ranking Report', 'Vehicle Ranking Report', 'Vehicle Ranking Report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(97, '2015-02-11 16:02:51', 'lid', 'subsciption service for 1 month ,DTR,Activity Timeline report', 'subsciption service for 1 month ,DTR,Activity Timeline report', 'subsciption service for 1 month ,DTR,Activity Timeline report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(98, '2015-02-11 16:04:17', 'lid', 'Exceesive Idleing Report', 'Exceesive Idleing Report', 'Exceesive Idleing Report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(99, '2015-02-11 16:05:04', 'lid', 'Zone management', 'Zone management', 'Zone management', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `prod_category`
--

CREATE TABLE IF NOT EXISTS `prod_category` (
`id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `prod_category`
--

INSERT INTO `prod_category` (`id`, `category`) VALUES
(1, 'Goods'),
(2, 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `tblbmc_vehicle_manufacturer`
--

CREATE TABLE IF NOT EXISTS `tblbmc_vehicle_manufacturer` (
`id` int(11) NOT NULL,
  `v_manufacture_name` varchar(50) NOT NULL,
  `v_description` varchar(100) NOT NULL,
  `i_created_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_last_update_user` int(11) NOT NULL,
  `i_status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblbmc_vehicle_manufacturer`
--

INSERT INTO `tblbmc_vehicle_manufacturer` (`id`, `v_manufacture_name`, `v_description`, `i_created_user`, `created_at`, `updated_at`, `i_last_update_user`, `i_status`) VALUES
(1, 'Toyota', '', 4, '2015-02-16 00:00:00', '0000-00-00 00:00:00', 0, 1),
(2, 'Honda', '', 4, '2015-02-09 00:00:00', '0000-00-00 00:00:00', 0, 1),
(3, 'Hino', '', 4, '2015-02-16 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbmc_vehicle_model`
--

CREATE TABLE IF NOT EXISTS `tblbmc_vehicle_model` (
`id` int(11) NOT NULL,
  `i_vehicle_manufacture_id` int(11) NOT NULL,
  `v_model_name` varchar(50) NOT NULL,
  `v_description` varchar(100) NOT NULL,
  `i_created_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_last_update_user` int(11) NOT NULL,
  `i_status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblbmc_vehicle_model`
--

INSERT INTO `tblbmc_vehicle_model` (`id`, `i_vehicle_manufacture_id`, `v_model_name`, `v_description`, `i_created_user`, `created_at`, `updated_at`, `i_last_update_user`, `i_status`) VALUES
(1, 1, 'Mazda', '', 4, '2015-02-18 00:00:00', '0000-00-00 00:00:00', 0, 1),
(2, 2, 'Civic', '', 4, '2015-02-18 00:00:00', '0000-00-00 00:00:00', 0, 1),
(3, 3, 'Lohan', '', 4, '2015-02-19 00:00:00', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clm_mstr`
--

CREATE TABLE IF NOT EXISTS `tbl_clm_mstr` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clm_mstr`
--

INSERT INTO `tbl_clm_mstr` (`id`, `employee_name`, `updated_at`, `created_at`) VALUES
(1, 'Bob', '2014-11-21 07:04:00', '2014-11-21 07:04:00'),
(2, 'Tot', '2014-11-21 07:05:28', '2014-11-21 07:05:28'),
(3, 'Gim', '2014-11-25 07:18:45', '2014-11-25 07:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clm_te`
--

CREATE TABLE IF NOT EXISTS `tbl_clm_te` (
  `id` int(11) NOT NULL,
  `id_mstr_clm` int(11) NOT NULL,
  `no_claim` varchar(100) DEFAULT NULL,
  `date_claim` date NOT NULL,
  `destination` varchar(200) NOT NULL,
  `km` int(11) DEFAULT NULL,
  `toll_rm` int(11) DEFAULT NULL,
  `amount_idr` int(11) NOT NULL,
  `type_of_vehicle` varchar(15) DEFAULT NULL,
  `created_at` text,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) DEFAULT NULL,
  `flag_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table_claim_travelling_expenses';

--
-- Dumping data for table `tbl_clm_te`
--

INSERT INTO `tbl_clm_te` (`id`, `id_mstr_clm`, `no_claim`, `date_claim`, `destination`, `km`, `toll_rm`, `amount_idr`, `type_of_vehicle`, `created_at`, `updated_at`, `i_user_create`, `flag_1`) VALUES
(1, 1, NULL, '2014-11-17', 'Fuel', NULL, NULL, 100000, NULL, '2014-11-21 07:04:33', '2014-11-21 07:04:33', NULL, NULL),
(2, 1, NULL, '2014-11-18', 'Toll', NULL, NULL, 75000, NULL, '2014-11-21 07:04:33', '2014-11-21 07:04:33', NULL, NULL),
(3, 2, NULL, '2014-11-19', 'Taxi', NULL, NULL, 157000, NULL, '2014-11-21 07:05:28', '2014-11-21 07:05:28', NULL, NULL),
(4, 2, NULL, '2014-11-20', 'Taxibike', NULL, NULL, 15000, NULL, '2014-11-21 07:05:28', '2014-11-21 07:05:28', NULL, NULL),
(5, 2, NULL, '2014-11-21', 'Lunch', NULL, NULL, 20000, NULL, '2014-11-21 07:05:28', '2014-11-21 07:05:28', NULL, NULL),
(6, 3, NULL, '2014-11-21', 'Dinner', NULL, NULL, 55000, NULL, '2014-11-25 07:18:45', '2014-11-25 07:18:45', NULL, NULL),
(7, 3, NULL, '2014-11-24', 'Wain', NULL, NULL, 45000, NULL, '2014-11-25 07:18:45', '2014-11-25 07:18:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dds`
--

CREATE TABLE IF NOT EXISTS `tbl_dds` (
`i_dds_id` int(11) NOT NULL,
  `v_dds_name` varchar(200) DEFAULT NULL,
  `v_dds_type` varchar(50) DEFAULT NULL,
  `v_dds_sn` varchar(100) NOT NULL,
  `v_dds_text1` varchar(20) DEFAULT NULL,
  `v_dds_text2` varchar(200) DEFAULT NULL,
  `v_dds_text3` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) DEFAULT NULL,
  `i_user_modify` int(11) DEFAULT NULL,
  `v_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=277 ;

--
-- Dumping data for table `tbl_dds`
--

INSERT INTO `tbl_dds` (`i_dds_id`, `v_dds_name`, `v_dds_type`, `v_dds_sn`, `v_dds_text1`, `v_dds_text2`, `v_dds_text3`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, NULL, NULL, '14070041', NULL, NULL, NULL, '2014-11-10 07:35:34', '2014-11-10 07:35:34', NULL, NULL, 'Attached'),
(2, NULL, NULL, '14070042', NULL, NULL, NULL, '2014-11-10 07:35:37', '2014-11-10 07:35:37', NULL, NULL, 'Attached'),
(3, NULL, NULL, '14070043', NULL, NULL, NULL, '2014-11-10 07:35:40', '2014-11-10 07:35:40', NULL, NULL, 'Attached'),
(4, NULL, NULL, '14070044', NULL, NULL, NULL, '2014-11-10 07:35:43', '2014-11-10 07:35:43', NULL, NULL, 'Attached'),
(5, NULL, NULL, '14070045', NULL, NULL, NULL, '2014-11-10 07:35:46', '2014-11-10 07:35:46', NULL, NULL, 'Attached'),
(6, NULL, NULL, '14070048', NULL, NULL, NULL, '2014-11-10 07:35:50', '2014-11-10 07:35:50', NULL, NULL, 'Attached'),
(7, NULL, NULL, '14070051', NULL, NULL, NULL, '2014-11-10 07:35:53', '2014-11-10 07:35:53', NULL, NULL, 'Attached'),
(8, NULL, NULL, '14070052', NULL, NULL, NULL, '2014-11-10 07:35:56', '2014-11-10 07:35:56', NULL, NULL, 'Attached'),
(9, NULL, NULL, '14070053', NULL, NULL, NULL, '2014-11-10 07:35:59', '2014-11-10 07:35:59', NULL, NULL, 'Attached'),
(10, NULL, NULL, '14070054', NULL, NULL, NULL, '2014-11-10 07:36:02', '2014-11-10 07:36:02', NULL, NULL, 'Attached'),
(11, NULL, NULL, '14070057', NULL, NULL, NULL, '2014-11-10 07:36:06', '2014-11-10 07:36:06', NULL, NULL, 'Attached'),
(12, NULL, NULL, '14070058', NULL, NULL, NULL, '2014-11-10 07:36:09', '2014-11-10 07:36:09', NULL, NULL, 'Attached'),
(13, NULL, NULL, '14070062', NULL, NULL, NULL, '2014-11-10 07:36:12', '2014-11-10 07:36:12', NULL, NULL, 'Attached'),
(14, NULL, NULL, '14070063', NULL, NULL, NULL, '2014-11-10 07:36:15', '2014-11-10 07:36:15', NULL, NULL, 'Attached'),
(15, NULL, NULL, '14070064', NULL, NULL, NULL, '2014-11-10 07:36:18', '2014-11-10 07:36:18', NULL, NULL, 'Attached'),
(16, NULL, NULL, '14070065', NULL, NULL, NULL, '2014-11-10 07:36:22', '2014-11-10 07:36:22', NULL, NULL, 'Attached'),
(17, NULL, NULL, '14070066', NULL, NULL, NULL, '2014-11-10 07:36:25', '2014-11-10 07:36:25', NULL, NULL, 'Attached'),
(18, NULL, NULL, '14070067', NULL, NULL, NULL, '2014-11-10 07:36:28', '2014-11-10 07:36:28', NULL, NULL, 'Attached'),
(19, NULL, NULL, '14070068', NULL, NULL, NULL, '2014-11-10 07:36:31', '2014-11-10 07:36:31', NULL, NULL, 'Attached'),
(20, NULL, NULL, '14070071', NULL, NULL, NULL, '2014-11-10 07:36:34', '2014-11-10 07:36:34', NULL, NULL, 'Attached'),
(21, NULL, NULL, '14070073', NULL, NULL, NULL, '2014-11-10 07:36:37', '2014-11-10 07:36:37', NULL, NULL, 'Attached'),
(22, NULL, NULL, '14070075', NULL, NULL, NULL, '2014-11-10 07:36:40', '2014-11-10 07:36:40', NULL, NULL, 'Attached'),
(23, NULL, NULL, '14070076', NULL, NULL, NULL, '2014-11-10 07:36:44', '2014-11-10 07:36:44', NULL, NULL, 'Attached'),
(24, NULL, NULL, '14070077', NULL, NULL, NULL, '2014-11-10 07:36:47', '2014-11-10 07:36:47', NULL, NULL, 'Attached'),
(25, NULL, NULL, '14070078', NULL, NULL, NULL, '2014-11-10 07:36:50', '2014-11-10 07:36:50', NULL, NULL, 'Attached'),
(26, NULL, NULL, '14070080', NULL, NULL, NULL, '2014-11-10 07:36:53', '2014-11-10 07:36:53', NULL, NULL, 'Attached'),
(27, NULL, NULL, '14070081', NULL, NULL, NULL, '2014-11-10 07:36:56', '2014-11-10 07:36:56', NULL, NULL, 'Attached'),
(28, NULL, NULL, '14070083', NULL, NULL, NULL, '2014-11-10 07:36:59', '2014-11-10 07:36:59', NULL, NULL, 'Attached'),
(29, NULL, NULL, '14070085', NULL, NULL, NULL, '2014-11-10 07:37:03', '2014-11-10 07:37:03', NULL, NULL, 'Attached'),
(30, NULL, NULL, '14070086', NULL, NULL, NULL, '2014-11-10 07:37:06', '2014-11-10 07:37:06', NULL, NULL, 'Attached'),
(31, NULL, NULL, '14070909', NULL, NULL, NULL, '2014-11-13 09:10:46', '2014-11-13 09:10:46', NULL, NULL, 'Active'),
(32, NULL, NULL, '14070908', NULL, NULL, NULL, '2014-11-13 09:10:49', '2014-11-13 09:10:49', NULL, NULL, 'Attached'),
(33, NULL, NULL, '14070483', NULL, NULL, NULL, '2014-11-13 09:10:52', '2014-11-13 09:10:52', NULL, NULL, 'Attached'),
(34, NULL, NULL, '14070476', NULL, NULL, NULL, '2014-11-13 09:10:56', '2014-11-13 09:10:56', NULL, NULL, 'Attached'),
(35, NULL, NULL, '14070895', NULL, NULL, NULL, '2014-11-13 09:10:59', '2014-11-13 09:10:59', NULL, NULL, 'Attached'),
(36, NULL, NULL, '14070897', NULL, NULL, NULL, '2014-11-13 09:11:02', '2014-11-13 09:11:02', NULL, NULL, 'Attached'),
(37, NULL, NULL, '14070900', NULL, NULL, NULL, '2014-11-13 09:11:05', '2014-11-13 09:11:05', NULL, NULL, 'Attached'),
(38, NULL, NULL, '14070914', NULL, NULL, NULL, '2014-11-13 09:11:08', '2014-11-13 09:11:08', NULL, NULL, 'Attached'),
(39, NULL, NULL, '14070891', NULL, NULL, NULL, '2014-11-13 09:11:11', '2014-11-13 09:11:11', NULL, NULL, 'Attached'),
(40, NULL, NULL, '14070899', NULL, NULL, NULL, '2014-11-13 09:11:14', '2014-11-13 09:11:14', NULL, NULL, 'Attached'),
(41, NULL, NULL, '14070460', NULL, NULL, NULL, '2014-11-13 09:11:18', '2014-11-13 09:11:18', NULL, NULL, 'Attached'),
(42, NULL, NULL, '14070884', NULL, NULL, NULL, '2014-11-13 09:11:21', '2014-11-13 09:11:21', NULL, NULL, 'Attached'),
(43, NULL, NULL, '14070881', NULL, NULL, NULL, '2014-11-13 09:11:24', '2014-11-13 09:11:24', NULL, NULL, 'Attached'),
(44, NULL, NULL, '14070888', NULL, NULL, NULL, '2014-11-13 09:11:27', '2014-11-13 09:11:27', NULL, NULL, 'Attached'),
(45, NULL, NULL, '14070886', NULL, NULL, NULL, '2014-11-13 09:11:30', '2014-11-13 09:11:30', NULL, NULL, 'Attached'),
(46, NULL, NULL, '14070911', NULL, NULL, NULL, '2014-11-13 09:11:33', '2014-11-13 09:11:33', NULL, NULL, 'Attached'),
(47, NULL, NULL, '14070890', NULL, NULL, NULL, '2014-11-13 09:11:37', '2014-11-13 09:11:37', NULL, NULL, 'Attached'),
(48, NULL, NULL, '14070919', NULL, NULL, NULL, '2014-11-13 09:11:40', '2014-11-13 09:11:40', NULL, NULL, 'Attached'),
(49, NULL, NULL, '14070912', NULL, NULL, NULL, '2014-11-13 09:11:43', '2014-11-13 09:11:43', NULL, NULL, 'Attached'),
(50, NULL, NULL, '14070913', NULL, NULL, NULL, '2014-11-13 09:11:46', '2014-11-13 09:11:46', NULL, NULL, 'Attached'),
(51, NULL, NULL, '14070887', NULL, NULL, NULL, '2014-11-13 09:11:49', '2014-11-13 09:11:49', NULL, NULL, 'Attached'),
(52, NULL, NULL, '14070889', NULL, NULL, NULL, '2014-11-13 09:11:53', '2014-11-13 09:11:53', NULL, NULL, 'Attached'),
(53, NULL, NULL, '14070918', NULL, NULL, NULL, '2014-11-13 09:11:56', '2014-11-13 09:11:56', NULL, NULL, 'Attached'),
(54, NULL, NULL, '14070902', NULL, NULL, NULL, '2014-11-13 09:11:59', '2014-11-13 09:11:59', NULL, NULL, 'Attached'),
(55, NULL, NULL, '14070917', NULL, NULL, NULL, '2014-11-13 09:12:02', '2014-11-13 09:12:02', NULL, NULL, 'Attached'),
(56, NULL, NULL, '14070885', NULL, NULL, NULL, '2014-11-13 09:12:06', '2014-11-13 09:12:06', NULL, NULL, 'Attached'),
(57, NULL, NULL, '14070915', NULL, NULL, NULL, '2014-11-13 09:12:09', '2014-11-13 09:12:09', NULL, NULL, 'Attached'),
(58, NULL, NULL, '14070916', NULL, NULL, NULL, '2014-11-13 09:12:12', '2014-11-13 09:12:12', NULL, NULL, 'Attached'),
(59, NULL, NULL, '14070905', NULL, NULL, NULL, '2014-11-13 09:12:15', '2014-11-13 09:12:15', NULL, NULL, 'Attached'),
(60, NULL, NULL, '14070906', NULL, NULL, NULL, '2014-11-13 09:12:18', '2014-11-13 09:12:18', NULL, NULL, 'Attached'),
(61, NULL, NULL, '14070904', NULL, NULL, NULL, '2014-11-13 09:12:22', '2014-11-13 09:12:22', NULL, NULL, 'Attached'),
(62, NULL, NULL, '14070883', NULL, NULL, NULL, '2014-11-13 09:12:25', '2014-11-13 09:12:25', NULL, NULL, 'Attached'),
(63, NULL, NULL, '14070898', NULL, NULL, NULL, '2014-11-13 09:12:28', '2014-11-13 09:12:28', NULL, NULL, 'Attached'),
(64, NULL, NULL, '14070903', NULL, NULL, NULL, '2014-11-13 09:12:31', '2014-11-13 09:12:31', NULL, NULL, 'Attached'),
(65, NULL, NULL, '14070920', NULL, NULL, NULL, '2014-11-13 09:12:34', '2014-11-13 09:12:34', NULL, NULL, 'Attached'),
(66, NULL, NULL, '14070901', NULL, NULL, NULL, '2014-11-13 09:12:37', '2014-11-13 09:12:37', NULL, NULL, 'Attached'),
(67, NULL, NULL, '14070477', NULL, NULL, NULL, '2014-11-13 09:12:41', '2014-11-13 09:12:41', NULL, NULL, 'Attached'),
(68, NULL, NULL, '14070893', NULL, NULL, NULL, '2014-11-13 09:12:44', '2014-11-13 09:12:44', NULL, NULL, 'Attached'),
(69, NULL, NULL, '14070907', NULL, NULL, NULL, '2014-11-13 09:12:47', '2014-11-13 09:12:47', NULL, NULL, 'Attached'),
(70, NULL, NULL, '14070074', NULL, NULL, NULL, '2014-11-13 09:12:50', '2014-11-13 09:12:50', NULL, NULL, 'Active'),
(71, NULL, NULL, '14070959', NULL, NULL, NULL, '2014-11-13 09:12:53', '2014-11-13 09:12:53', NULL, NULL, 'Attached'),
(72, NULL, NULL, '14070942', NULL, NULL, NULL, '2014-11-13 09:12:56', '2014-11-13 09:12:56', NULL, NULL, 'Attached'),
(73, NULL, NULL, '14070945', NULL, NULL, NULL, '2014-11-13 09:12:59', '2014-11-13 09:12:59', NULL, NULL, 'Attached'),
(74, NULL, NULL, '14070948', NULL, NULL, NULL, '2014-11-13 09:13:03', '2014-11-13 09:13:03', NULL, NULL, 'Attached'),
(75, NULL, NULL, '14070946', NULL, NULL, NULL, '2014-11-13 09:13:06', '2014-11-13 09:13:06', NULL, NULL, 'Attached'),
(76, NULL, NULL, '14070944', NULL, NULL, NULL, '2014-11-13 09:13:09', '2014-11-13 09:13:09', NULL, NULL, 'Attached'),
(77, NULL, NULL, '14070932', NULL, NULL, NULL, '2014-11-13 09:13:12', '2014-11-13 09:13:12', NULL, NULL, 'Attached'),
(78, NULL, NULL, '14070618', NULL, NULL, NULL, '2014-11-13 09:13:15', '2014-11-13 09:13:15', NULL, NULL, 'Attached'),
(79, NULL, NULL, '14070617', NULL, NULL, NULL, '2014-11-13 09:13:18', '2014-11-13 09:13:18', NULL, NULL, 'Attached'),
(80, NULL, NULL, '14070931', NULL, NULL, NULL, '2014-11-13 09:13:22', '2014-11-13 09:13:22', NULL, NULL, 'Attached'),
(81, NULL, NULL, '14070933', NULL, NULL, NULL, '2014-11-13 09:13:25', '2014-11-13 09:13:25', NULL, NULL, 'Attached'),
(82, NULL, NULL, '14070941', NULL, NULL, NULL, '2014-11-13 09:13:28', '2014-11-13 09:13:28', NULL, NULL, 'Attached'),
(83, NULL, NULL, '14070988', NULL, NULL, NULL, '2014-11-13 09:13:31', '2014-11-13 09:13:31', NULL, NULL, 'Attached'),
(84, NULL, NULL, '14070987', NULL, NULL, NULL, '2014-11-13 09:13:34', '2014-11-13 09:13:34', NULL, NULL, 'Attached'),
(85, NULL, NULL, '14070958', NULL, NULL, NULL, '2014-11-13 09:13:37', '2014-11-13 09:13:37', NULL, NULL, 'Attached'),
(86, NULL, NULL, '14070940', NULL, NULL, NULL, '2014-11-13 09:13:40', '2014-11-13 09:13:40', NULL, NULL, 'Attached'),
(87, NULL, NULL, '14070938', NULL, NULL, NULL, '2014-11-13 09:13:44', '2014-11-13 09:13:44', NULL, NULL, 'Attached'),
(88, NULL, NULL, '14070957', NULL, NULL, NULL, '2014-11-13 09:13:47', '2014-11-13 09:13:47', NULL, NULL, 'Attached'),
(89, NULL, NULL, '14070965', NULL, NULL, NULL, '2014-11-13 09:13:50', '2014-11-13 09:13:50', NULL, NULL, 'Attached'),
(90, NULL, NULL, '14070975', NULL, NULL, NULL, '2014-11-13 09:13:53', '2014-11-13 09:13:53', NULL, NULL, 'Attached'),
(91, NULL, NULL, '14070961', NULL, NULL, NULL, '2014-11-13 09:13:56', '2014-11-13 09:13:56', NULL, NULL, 'Active'),
(92, NULL, NULL, '14070980', NULL, NULL, NULL, '2014-11-13 09:13:59', '2014-11-13 09:13:59', NULL, NULL, 'Attached'),
(93, NULL, NULL, '14070962', NULL, NULL, NULL, '2014-11-13 09:14:02', '2014-11-13 09:14:02', NULL, NULL, 'Attached'),
(94, NULL, NULL, '14070950', NULL, NULL, NULL, '2014-11-13 09:14:06', '2014-11-13 09:14:06', NULL, NULL, 'Attached'),
(95, NULL, NULL, '14070990', NULL, NULL, NULL, '2014-11-13 09:14:09', '2014-11-13 09:14:09', NULL, NULL, 'Attached'),
(96, NULL, NULL, '14070977', NULL, NULL, NULL, '2014-11-13 09:14:12', '2014-11-13 09:14:12', NULL, NULL, 'Attached'),
(97, NULL, NULL, '14070991', NULL, NULL, NULL, '2014-11-13 09:14:15', '2014-11-13 09:14:15', NULL, NULL, 'Attached'),
(98, NULL, NULL, '14070969', NULL, NULL, NULL, '2014-11-13 09:14:18', '2014-11-13 09:14:18', NULL, NULL, 'Attached'),
(99, NULL, NULL, '14070970', NULL, NULL, NULL, '2014-11-13 09:14:22', '2014-11-13 09:14:22', NULL, NULL, 'Attached'),
(100, NULL, NULL, '14070994', NULL, NULL, NULL, '2014-11-13 09:14:25', '2014-11-13 09:14:25', NULL, NULL, 'Attached'),
(101, NULL, NULL, '14070973', NULL, NULL, NULL, '2014-11-13 09:14:28', '2014-11-13 09:14:28', NULL, NULL, 'Attached'),
(102, NULL, NULL, '14070989', NULL, NULL, NULL, '2014-11-13 09:14:31', '2014-11-13 09:14:31', NULL, NULL, 'Attached'),
(103, NULL, NULL, '14070488', NULL, NULL, NULL, '2014-11-13 09:14:34', '2014-11-13 09:14:34', NULL, NULL, 'Attached'),
(104, NULL, NULL, '14070996', NULL, NULL, NULL, '2014-11-13 09:14:37', '2014-11-13 09:14:37', NULL, NULL, 'Attached'),
(105, NULL, NULL, '14070481', NULL, NULL, NULL, '2014-11-13 09:14:40', '2014-11-13 09:14:40', NULL, NULL, 'Attached'),
(106, NULL, NULL, '14070495', NULL, NULL, NULL, '2014-11-13 09:14:44', '2014-11-13 09:14:44', NULL, NULL, 'Attached'),
(107, NULL, NULL, '14070496', NULL, NULL, NULL, '2014-11-13 09:14:47', '2014-11-13 09:14:47', NULL, NULL, 'Attached'),
(108, NULL, NULL, '14070507', NULL, NULL, NULL, '2014-11-13 09:14:50', '2014-11-13 09:14:50', NULL, NULL, 'Attached'),
(109, NULL, NULL, '14070485', NULL, NULL, NULL, '2014-11-13 09:14:53', '2014-11-13 09:14:53', NULL, NULL, 'Attached'),
(110, NULL, NULL, '14070512', NULL, NULL, NULL, '2014-11-13 09:14:56', '2014-11-13 09:14:56', NULL, NULL, 'Attached'),
(111, NULL, NULL, '14070508', NULL, NULL, NULL, '2014-11-13 09:14:59', '2014-11-13 09:14:59', NULL, NULL, 'Attached'),
(112, NULL, NULL, '14070612', NULL, NULL, NULL, '2014-11-13 09:15:03', '2014-11-13 09:15:03', NULL, NULL, 'Attached'),
(113, NULL, NULL, '14070489', NULL, NULL, NULL, '2014-11-13 09:15:06', '2014-11-13 09:15:06', NULL, NULL, 'Attached'),
(114, NULL, NULL, '14070491', NULL, NULL, NULL, '2014-11-13 09:15:09', '2014-11-13 09:15:09', NULL, NULL, 'Attached'),
(115, NULL, NULL, '14070490', NULL, NULL, NULL, '2014-11-13 09:15:12', '2014-11-13 09:15:12', NULL, NULL, 'Attached'),
(116, NULL, NULL, '14070486', NULL, NULL, NULL, '2014-11-13 09:15:15', '2014-11-13 09:15:15', NULL, NULL, 'Attached'),
(117, NULL, NULL, '14070482', NULL, NULL, NULL, '2014-11-13 09:15:18', '2014-11-13 09:15:18', NULL, NULL, 'Attached'),
(118, NULL, NULL, '14070622', NULL, NULL, NULL, '2014-11-13 09:15:22', '2014-11-13 09:15:22', NULL, NULL, 'Attached'),
(119, NULL, NULL, '14070967', NULL, NULL, NULL, '2014-11-13 09:15:25', '2014-11-13 09:15:25', NULL, NULL, 'Attached'),
(120, NULL, NULL, '14070493', NULL, NULL, NULL, '2014-11-13 09:15:28', '2014-11-13 09:15:28', NULL, NULL, 'Attached'),
(121, NULL, NULL, '14070997', NULL, NULL, NULL, '2014-11-13 09:15:31', '2014-11-13 09:15:31', NULL, NULL, 'Attached'),
(122, NULL, NULL, '14071000', NULL, NULL, NULL, '2014-11-13 09:15:34', '2014-11-13 09:15:34', NULL, NULL, 'Attached'),
(123, NULL, NULL, '14070998', NULL, NULL, NULL, '2014-11-13 09:15:37', '2014-11-13 09:15:37', NULL, NULL, 'Attached'),
(124, NULL, NULL, '14070984', NULL, NULL, NULL, '2014-11-13 09:15:41', '2014-11-13 09:15:41', NULL, NULL, 'Attached'),
(125, NULL, NULL, '14070509', NULL, NULL, NULL, '2014-11-13 09:15:44', '2014-11-13 09:15:44', NULL, NULL, 'Active'),
(126, NULL, NULL, '14070999', NULL, NULL, NULL, '2014-11-13 09:15:47', '2014-11-13 09:15:47', NULL, NULL, 'Attached'),
(127, NULL, NULL, '14070981', NULL, NULL, NULL, '2014-11-13 09:15:50', '2014-11-13 09:15:50', NULL, NULL, 'Attached'),
(128, NULL, NULL, '14070982', NULL, NULL, NULL, '2014-11-13 09:15:53', '2014-11-13 09:15:53', NULL, NULL, 'Attached'),
(129, NULL, NULL, '14070627', NULL, NULL, NULL, '2014-11-13 09:15:56', '2014-11-13 09:15:56', NULL, NULL, 'Attached'),
(130, NULL, NULL, '14070606', NULL, NULL, NULL, '2014-11-13 09:16:00', '2014-11-13 09:16:00', NULL, NULL, 'Attached'),
(131, NULL, NULL, '14070633', NULL, NULL, NULL, '2014-11-13 09:16:03', '2014-11-13 09:16:03', NULL, NULL, 'Attached'),
(132, NULL, NULL, '14070634', NULL, NULL, NULL, '2014-11-13 09:16:06', '2014-11-13 09:16:06', NULL, NULL, 'Attached'),
(133, NULL, NULL, '14070631', NULL, NULL, NULL, '2014-11-13 09:16:09', '2014-11-13 09:16:09', NULL, NULL, 'Attached'),
(134, NULL, NULL, '14070484', NULL, NULL, NULL, '2014-11-13 09:16:12', '2014-11-13 09:16:12', NULL, NULL, 'Attached'),
(135, NULL, NULL, '14070480', NULL, NULL, NULL, '2014-11-13 09:16:15', '2014-11-13 09:16:15', NULL, NULL, 'Attached'),
(136, NULL, NULL, '14070478', NULL, NULL, NULL, '2014-11-13 09:16:18', '2014-11-13 09:16:18', NULL, NULL, 'Attached'),
(137, NULL, NULL, '14070499', NULL, NULL, NULL, '2014-11-13 09:16:22', '2014-11-13 09:16:22', NULL, NULL, 'Attached'),
(138, NULL, NULL, '14070626', NULL, NULL, NULL, '2014-11-13 09:16:25', '2014-11-13 09:16:25', NULL, NULL, 'Attached'),
(139, NULL, NULL, '14070625', NULL, NULL, NULL, '2014-11-13 09:16:28', '2014-11-13 09:16:28', NULL, NULL, 'Attached'),
(140, NULL, NULL, '14070623', NULL, NULL, NULL, '2014-11-13 09:16:31', '2014-11-13 09:16:31', NULL, NULL, 'Attached'),
(141, NULL, NULL, '14070502', NULL, NULL, NULL, '2014-11-13 09:16:34', '2014-11-13 09:16:34', NULL, NULL, 'Attached'),
(142, NULL, NULL, '14070614', NULL, NULL, NULL, '2014-11-13 09:16:37', '2014-11-13 09:16:37', NULL, NULL, 'Active'),
(143, NULL, NULL, '14070923', NULL, NULL, NULL, '2014-11-13 09:16:41', '2014-11-13 09:16:41', NULL, NULL, 'Attached'),
(144, NULL, NULL, '14070972', NULL, NULL, NULL, '2014-11-13 09:16:44', '2014-11-13 09:16:44', NULL, NULL, 'Active'),
(145, NULL, NULL, '14070971', NULL, NULL, NULL, '2014-11-13 09:16:47', '2014-11-13 09:16:47', NULL, NULL, 'Attached'),
(146, NULL, NULL, '14070955', NULL, NULL, NULL, '2014-11-13 09:16:50', '2014-11-13 09:16:50', NULL, NULL, 'Active'),
(147, NULL, NULL, '14070949', NULL, NULL, NULL, '2014-11-13 09:16:53', '2014-11-13 09:16:53', NULL, NULL, 'Active'),
(148, NULL, NULL, '14070956', NULL, NULL, NULL, '2014-11-13 09:16:56', '2014-11-13 09:16:56', NULL, NULL, 'Attached'),
(149, NULL, NULL, '14070928', NULL, NULL, NULL, '2014-11-13 09:16:59', '2014-11-13 09:16:59', NULL, NULL, 'Active'),
(150, NULL, NULL, '14070927', NULL, NULL, NULL, '2014-11-13 09:17:02', '2014-11-13 09:17:02', NULL, NULL, 'Attached'),
(151, NULL, NULL, '14070953', NULL, NULL, NULL, '2014-11-13 09:17:05', '2014-11-13 09:17:05', NULL, NULL, 'Attached'),
(152, NULL, NULL, '14070954', NULL, NULL, NULL, '2014-11-13 09:17:08', '2014-11-13 09:17:08', NULL, NULL, 'Attached'),
(153, NULL, NULL, '14070930', NULL, NULL, NULL, '2014-11-13 09:17:12', '2014-11-13 09:17:12', NULL, NULL, 'Attached'),
(154, NULL, NULL, '14070952', NULL, NULL, NULL, '2014-11-13 09:17:15', '2014-11-13 09:17:15', NULL, NULL, 'Attached'),
(155, NULL, NULL, '14070924', NULL, NULL, NULL, '2014-11-13 09:17:18', '2014-11-13 09:17:18', NULL, NULL, 'Active'),
(156, NULL, NULL, '14070929', NULL, NULL, NULL, '2014-11-13 09:17:21', '2014-11-13 09:17:21', NULL, NULL, 'Active'),
(157, NULL, NULL, '14070629', NULL, NULL, NULL, '2014-11-13 09:17:24', '2014-11-13 09:17:24', NULL, NULL, 'Attached'),
(158, NULL, NULL, '14070615', NULL, NULL, NULL, '2014-11-13 09:17:27', '2014-11-13 09:17:27', NULL, NULL, 'Attached'),
(159, NULL, NULL, '14070602', NULL, NULL, NULL, '2014-11-13 09:17:30', '2014-11-13 09:17:30', NULL, NULL, 'Attached'),
(160, NULL, NULL, '14070639', NULL, NULL, NULL, '2014-11-13 09:17:33', '2014-11-13 09:17:33', NULL, NULL, 'Attached'),
(161, NULL, NULL, '14070638', NULL, NULL, NULL, '2014-11-13 09:17:37', '2014-11-13 09:17:37', NULL, NULL, 'Active'),
(162, NULL, NULL, '14070516', NULL, NULL, NULL, '2014-11-13 09:17:40', '2014-11-13 09:17:40', NULL, NULL, 'Attached'),
(163, NULL, NULL, '14070501', NULL, NULL, NULL, '2014-11-13 09:17:43', '2014-11-13 09:17:43', NULL, NULL, 'Attached'),
(164, NULL, NULL, '14070630', NULL, NULL, NULL, '2014-11-13 09:17:46', '2014-11-13 09:17:46', NULL, NULL, 'Active'),
(165, NULL, NULL, '14070608', NULL, NULL, NULL, '2014-11-13 09:17:49', '2014-11-13 09:17:49', NULL, NULL, 'Attached'),
(166, NULL, NULL, '14070506', NULL, NULL, NULL, '2014-11-13 09:17:52', '2014-11-13 09:17:52', NULL, NULL, 'Attached'),
(167, NULL, NULL, '14070620', NULL, NULL, NULL, '2014-11-13 09:17:55', '2014-11-13 09:17:55', NULL, NULL, 'Attached'),
(168, NULL, NULL, '14070518', NULL, NULL, NULL, '2014-11-13 09:17:59', '2014-11-13 09:17:59', NULL, NULL, 'Attached'),
(169, NULL, NULL, '14070503', NULL, NULL, NULL, '2014-11-13 09:18:02', '2014-11-13 09:18:02', NULL, NULL, 'Active'),
(170, NULL, NULL, '14070601', NULL, NULL, NULL, '2014-11-13 09:18:05', '2014-11-13 09:18:05', NULL, NULL, 'Active'),
(171, NULL, NULL, '14070505', NULL, NULL, NULL, '2014-11-13 09:18:08', '2014-11-13 09:18:08', NULL, NULL, 'Active'),
(172, NULL, NULL, '14070517', NULL, NULL, NULL, '2014-11-13 09:18:11', '2014-11-13 09:18:11', NULL, NULL, 'Attached'),
(173, NULL, NULL, '14070613', NULL, NULL, NULL, '2014-11-13 09:18:14', '2014-11-13 09:18:14', NULL, NULL, 'Attached'),
(174, NULL, NULL, '14070504', NULL, NULL, NULL, '2014-11-13 09:18:17', '2014-11-13 09:18:17', NULL, NULL, 'Attached'),
(175, NULL, NULL, '14070607', NULL, NULL, NULL, '2014-11-13 09:18:20', '2014-11-13 09:18:20', NULL, NULL, 'Attached'),
(176, NULL, NULL, '14070520', NULL, NULL, NULL, '2014-11-13 09:18:23', '2014-11-13 09:18:23', NULL, NULL, 'Attached'),
(177, NULL, NULL, '14070514', NULL, NULL, NULL, '2014-11-13 09:18:27', '2014-11-13 09:18:27', NULL, NULL, 'Active'),
(178, NULL, NULL, '14070604', NULL, NULL, NULL, '2014-11-13 09:18:30', '2014-11-13 09:18:30', NULL, NULL, 'Attached'),
(179, NULL, NULL, '14070519', NULL, NULL, NULL, '2014-11-13 09:18:33', '2014-11-13 09:18:33', NULL, NULL, 'Active'),
(180, NULL, NULL, '14070995', NULL, NULL, NULL, '2014-11-13 09:18:36', '2014-11-13 09:18:36', NULL, NULL, 'Attached'),
(181, NULL, NULL, '14070609', NULL, NULL, NULL, '2014-11-13 09:18:39', '2014-11-13 09:18:39', NULL, NULL, 'Attached'),
(182, NULL, NULL, '14070498', NULL, NULL, NULL, '2014-11-13 09:18:42', '2014-11-13 09:18:42', NULL, NULL, 'Attached'),
(183, NULL, NULL, '14070259', NULL, NULL, NULL, '2014-11-13 09:18:45', '2014-11-13 09:18:45', NULL, NULL, 'Attached'),
(184, NULL, NULL, '14070241', NULL, NULL, NULL, '2014-11-13 09:18:48', '2014-11-13 09:18:48', NULL, NULL, 'Attached'),
(185, NULL, NULL, '14070243', NULL, NULL, NULL, '2014-11-13 09:18:52', '2014-11-13 09:18:52', NULL, NULL, 'Attached'),
(186, NULL, NULL, '14070278', NULL, NULL, NULL, '2014-11-13 09:18:55', '2014-11-13 09:18:55', NULL, NULL, 'Attached'),
(187, NULL, NULL, '14070277', NULL, NULL, NULL, '2014-11-13 09:18:58', '2014-11-13 09:18:58', NULL, NULL, 'Attached'),
(188, NULL, NULL, '14070276', NULL, NULL, NULL, '2014-11-13 09:19:01', '2014-11-13 09:19:01', NULL, NULL, 'Attached'),
(189, NULL, NULL, '14070249', NULL, NULL, NULL, '2014-11-13 09:19:04', '2014-11-13 09:19:04', NULL, NULL, 'Attached'),
(190, NULL, NULL, '14070275', NULL, NULL, NULL, '2014-11-13 09:19:07', '2014-11-13 09:19:07', NULL, NULL, 'Attached'),
(191, NULL, NULL, '14070515', NULL, NULL, NULL, '2014-11-13 09:19:10', '2014-11-13 09:19:10', NULL, NULL, 'Attached'),
(192, NULL, NULL, '14070269', NULL, NULL, NULL, '2014-11-13 09:19:14', '2014-11-13 09:19:14', NULL, NULL, 'Attached'),
(193, NULL, NULL, '14070272', NULL, NULL, NULL, '2014-11-13 09:19:17', '2014-11-13 09:19:17', NULL, NULL, 'Active'),
(194, NULL, NULL, '14070268', NULL, NULL, NULL, '2014-11-13 09:19:20', '2014-11-13 09:19:20', NULL, NULL, 'Attached'),
(195, NULL, NULL, '14070267', NULL, NULL, NULL, '2014-11-13 09:19:23', '2014-11-13 09:19:23', NULL, NULL, 'Attached'),
(196, NULL, NULL, '14070273', NULL, NULL, NULL, '2014-11-13 09:19:26', '2014-11-13 09:19:26', NULL, NULL, 'Attached'),
(197, NULL, NULL, '14070251', NULL, NULL, NULL, '2014-11-13 09:19:29', '2014-11-13 09:19:29', NULL, NULL, 'Active'),
(198, NULL, NULL, '14070257', NULL, NULL, NULL, '2014-11-13 09:19:32', '2014-11-13 09:19:32', NULL, NULL, 'Attached'),
(199, NULL, NULL, '14070252', NULL, NULL, NULL, '2014-11-13 09:19:36', '2014-11-13 09:19:36', NULL, NULL, 'Attached'),
(200, NULL, NULL, '14070261', NULL, NULL, NULL, '2014-11-13 09:19:39', '2014-11-13 09:19:39', NULL, NULL, 'Attached'),
(201, NULL, NULL, '14070280', NULL, NULL, NULL, '2014-11-13 09:19:42', '2014-11-13 09:19:42', NULL, NULL, 'Attached'),
(202, NULL, NULL, '14070253', NULL, NULL, NULL, '2014-11-13 09:19:45', '2014-11-13 09:19:45', NULL, NULL, 'Attached'),
(203, NULL, NULL, '14070320', NULL, NULL, NULL, '2014-11-13 09:19:48', '2014-11-13 09:19:48', NULL, NULL, 'Attached'),
(204, NULL, NULL, '14070300', NULL, NULL, NULL, '2014-11-13 09:19:51', '2014-11-13 09:19:51', NULL, NULL, 'Attached'),
(205, NULL, NULL, '14070294', NULL, NULL, NULL, '2014-11-13 09:19:54', '2014-11-13 09:19:54', NULL, NULL, 'Attached'),
(206, NULL, NULL, '14070293', NULL, NULL, NULL, '2014-11-13 09:19:58', '2014-11-13 09:19:58', NULL, NULL, 'Attached'),
(207, NULL, NULL, '14070314', NULL, NULL, NULL, '2014-11-13 09:20:01', '2014-11-13 09:20:01', NULL, NULL, 'Attached'),
(208, NULL, NULL, '14070316', NULL, NULL, NULL, '2014-11-13 09:20:04', '2014-11-13 09:20:04', NULL, NULL, 'Attached'),
(209, NULL, NULL, '14070247', NULL, NULL, NULL, '2014-11-13 09:20:07', '2014-11-13 09:20:07', NULL, NULL, 'Attached'),
(210, NULL, NULL, '14070306', NULL, NULL, NULL, '2014-11-13 09:20:10', '2014-11-13 09:20:10', NULL, NULL, 'Attached'),
(211, NULL, NULL, '14070246', NULL, NULL, NULL, '2014-11-13 09:20:13', '2014-11-13 09:20:13', NULL, NULL, 'Attached'),
(212, NULL, NULL, '14070255', NULL, NULL, NULL, '2014-11-13 09:20:17', '2014-11-13 09:20:17', NULL, NULL, 'Attached'),
(213, NULL, NULL, '14070295', NULL, NULL, NULL, '2014-11-13 09:20:20', '2014-11-13 09:20:20', NULL, NULL, 'Attached'),
(214, NULL, NULL, '14070291', NULL, NULL, NULL, '2014-11-13 09:20:23', '2014-11-13 09:20:23', NULL, NULL, 'Attached'),
(215, NULL, NULL, '14070260', NULL, NULL, NULL, '2014-11-13 09:20:26', '2014-11-13 09:20:26', NULL, NULL, 'Attached'),
(216, NULL, NULL, '14070254', NULL, NULL, NULL, '2014-11-13 09:20:29', '2014-11-13 09:20:29', NULL, NULL, 'Attached'),
(217, NULL, NULL, '14070256', NULL, NULL, NULL, '2014-11-13 09:20:32', '2014-11-13 09:20:32', NULL, NULL, 'Attached'),
(218, NULL, NULL, '14070248', NULL, NULL, NULL, '2014-11-13 09:20:35', '2014-11-13 09:20:35', NULL, NULL, 'Attached'),
(219, NULL, NULL, '14070636', NULL, NULL, NULL, '2014-11-13 09:20:38', '2014-11-13 09:20:38', NULL, NULL, 'Attached'),
(220, NULL, NULL, '14070279', NULL, NULL, NULL, '2014-11-13 09:20:42', '2014-11-13 09:20:42', NULL, NULL, 'Attached'),
(221, NULL, NULL, '14070245', NULL, NULL, NULL, '2014-11-13 09:20:45', '2014-11-13 09:20:45', NULL, NULL, 'Attached'),
(222, NULL, NULL, '14070298', NULL, NULL, NULL, '2014-11-13 09:20:48', '2014-11-13 09:20:48', NULL, NULL, 'Attached'),
(223, NULL, NULL, '14070307', NULL, NULL, NULL, '2014-11-13 09:20:51', '2014-11-13 09:20:51', NULL, NULL, 'Attached'),
(224, NULL, NULL, '14070305', NULL, NULL, NULL, '2014-11-13 09:20:54', '2014-11-13 09:20:54', NULL, NULL, 'Attached'),
(225, NULL, NULL, '14070264', NULL, NULL, NULL, '2014-11-13 09:20:57', '2014-11-13 09:20:57', NULL, NULL, 'Attached'),
(226, NULL, NULL, '14070265', NULL, NULL, NULL, '2014-11-13 09:21:00', '2014-11-13 09:21:00', NULL, NULL, 'Attached'),
(227, NULL, NULL, '14070266', NULL, NULL, NULL, '2014-11-13 09:21:03', '2014-11-13 09:21:03', NULL, NULL, 'Attached'),
(228, NULL, NULL, '14070263', NULL, NULL, NULL, '2014-11-13 09:21:07', '2014-11-13 09:21:07', NULL, NULL, 'Attached'),
(229, NULL, NULL, '14070292', NULL, NULL, NULL, '2014-11-13 09:21:10', '2014-11-13 09:21:10', NULL, NULL, 'Active'),
(230, NULL, NULL, '14070308', NULL, NULL, NULL, '2014-11-13 09:21:13', '2014-11-13 09:21:13', NULL, NULL, 'Active'),
(231, NULL, NULL, '14070258', NULL, NULL, NULL, '2014-11-13 09:21:16', '2014-11-13 09:21:16', NULL, NULL, 'Active'),
(232, NULL, NULL, '14070297', NULL, NULL, NULL, '2014-11-13 09:21:19', '2014-11-13 09:21:19', NULL, NULL, 'Attached'),
(233, NULL, NULL, '14070262', NULL, NULL, NULL, '2014-11-13 09:21:22', '2014-11-13 09:21:22', NULL, NULL, 'Active'),
(234, NULL, NULL, '14070090', NULL, NULL, NULL, '2014-11-13 09:21:25', '2014-11-13 09:21:25', NULL, NULL, 'Attached'),
(235, NULL, NULL, '14070089', NULL, NULL, NULL, '2014-11-13 09:21:28', '2014-11-13 09:21:28', NULL, NULL, 'Attached'),
(236, NULL, NULL, '14070102', NULL, NULL, NULL, '2014-11-13 09:21:31', '2014-11-13 09:21:31', NULL, NULL, 'Attached'),
(237, NULL, NULL, '14070103', NULL, NULL, NULL, '2014-11-13 09:21:34', '2014-11-13 09:21:34', NULL, NULL, 'Attached'),
(238, NULL, NULL, '14070117', NULL, NULL, NULL, '2014-11-13 09:21:38', '2014-11-13 09:21:38', NULL, NULL, 'Attached'),
(239, NULL, NULL, '14070115', NULL, NULL, NULL, '2014-11-13 09:21:41', '2014-11-13 09:21:41', NULL, NULL, 'Attached'),
(240, NULL, NULL, '14070094', NULL, NULL, NULL, '2014-11-13 09:21:44', '2014-11-13 09:21:44', NULL, NULL, 'Attached'),
(241, NULL, NULL, '14070093', NULL, NULL, NULL, '2014-11-13 09:21:47', '2014-11-13 09:21:47', NULL, NULL, 'Attached'),
(242, NULL, NULL, '14070120', NULL, NULL, NULL, '2014-11-13 09:21:50', '2014-11-13 09:21:50', NULL, NULL, 'Attached'),
(243, NULL, NULL, '14070119', NULL, NULL, NULL, '2014-11-13 09:21:53', '2014-11-13 09:21:53', NULL, NULL, 'Attached'),
(244, NULL, NULL, '14070118', NULL, NULL, NULL, '2014-11-13 09:21:56', '2014-11-13 09:21:56', NULL, NULL, 'Attached'),
(245, NULL, NULL, '14070116', NULL, NULL, NULL, '2014-11-13 09:22:00', '2014-11-13 09:22:00', NULL, NULL, 'Attached'),
(246, NULL, NULL, '14070637', NULL, NULL, NULL, '2014-11-13 09:22:03', '2014-11-13 09:22:03', NULL, NULL, 'Active'),
(247, NULL, NULL, '14070318', NULL, NULL, NULL, '2014-11-13 09:22:06', '2014-11-13 09:22:06', NULL, NULL, 'Attached'),
(248, NULL, NULL, '14070310', NULL, NULL, NULL, '2014-11-13 09:22:09', '2014-11-13 09:22:09', NULL, NULL, 'Attached'),
(249, NULL, NULL, '14070283', NULL, NULL, NULL, '2014-11-13 09:22:12', '2014-11-13 09:22:12', NULL, NULL, 'Attached'),
(250, NULL, NULL, '14070302', NULL, NULL, NULL, '2014-11-13 09:22:15', '2014-11-13 09:22:15', NULL, NULL, 'Attached'),
(251, NULL, NULL, '14070286', NULL, NULL, NULL, '2014-11-13 09:22:18', '2014-11-13 09:22:18', NULL, NULL, 'Attached'),
(252, NULL, NULL, '14070289', NULL, NULL, NULL, '2014-11-13 09:22:21', '2014-11-13 09:22:21', NULL, NULL, 'Active'),
(253, NULL, NULL, '14070311', NULL, NULL, NULL, '2014-11-13 09:22:24', '2014-11-13 09:22:24', NULL, NULL, 'Attached'),
(254, NULL, NULL, '14070301', NULL, NULL, NULL, '2014-11-13 09:22:27', '2014-11-13 09:22:27', NULL, NULL, 'Attached'),
(255, NULL, NULL, '14070304', NULL, NULL, NULL, '2014-11-13 09:22:31', '2014-11-13 09:22:31', NULL, NULL, 'Attached'),
(256, NULL, NULL, '14070288', NULL, NULL, NULL, '2014-11-13 09:22:34', '2014-11-13 09:22:34', NULL, NULL, 'Attached'),
(257, NULL, NULL, '14070303', NULL, NULL, NULL, '2014-11-13 09:22:37', '2014-11-13 09:22:37', NULL, NULL, 'Attached'),
(258, NULL, NULL, '14070284', NULL, NULL, NULL, '2014-11-13 09:22:40', '2014-11-13 09:22:40', NULL, NULL, 'Active'),
(259, NULL, NULL, '14070107', NULL, NULL, NULL, '2014-11-13 09:22:43', '2014-11-13 09:22:43', NULL, NULL, 'Attached'),
(260, NULL, NULL, '14070312', NULL, NULL, NULL, '2014-11-13 09:22:46', '2014-11-13 09:22:46', NULL, NULL, 'Attached'),
(261, NULL, NULL, '14070110', NULL, NULL, NULL, '2014-11-13 09:22:49', '2014-11-13 09:22:49', NULL, NULL, 'Attached'),
(262, NULL, NULL, '14070096', NULL, NULL, NULL, '2014-11-13 09:22:52', '2014-11-13 09:22:52', NULL, NULL, 'Attached'),
(263, NULL, NULL, '14070112', NULL, NULL, NULL, '2014-11-13 09:22:56', '2014-11-13 09:22:56', NULL, NULL, 'Attached'),
(264, NULL, NULL, '14070109', NULL, NULL, NULL, '2014-11-13 09:22:59', '2014-11-13 09:22:59', NULL, NULL, 'Attached'),
(265, NULL, NULL, '14070111', NULL, NULL, NULL, '2014-11-13 09:23:02', '2014-11-13 09:23:02', NULL, NULL, 'Attached'),
(266, NULL, NULL, '14070101', NULL, NULL, NULL, '2014-11-13 09:23:05', '2014-11-13 09:23:05', NULL, NULL, 'Active'),
(267, NULL, NULL, '14070108', NULL, NULL, NULL, '2014-11-13 09:23:08', '2014-11-13 09:23:08', NULL, NULL, 'Attached'),
(268, NULL, NULL, '14070114', NULL, NULL, NULL, '2014-11-13 09:23:11', '2014-11-13 09:23:11', NULL, NULL, 'Active'),
(269, NULL, NULL, '14070104', NULL, NULL, NULL, '2014-11-13 09:23:14', '2014-11-13 09:23:14', NULL, NULL, 'Active'),
(270, NULL, NULL, '14070106', NULL, NULL, NULL, '2014-11-13 09:23:17', '2014-11-13 09:23:17', NULL, NULL, 'Active'),
(271, NULL, NULL, '14070105', NULL, NULL, NULL, '2014-11-13 09:23:20', '2014-11-13 09:23:20', NULL, NULL, 'Attached'),
(272, NULL, NULL, '14070097', NULL, NULL, NULL, '2014-11-13 09:23:23', '2014-11-13 09:23:23', NULL, NULL, 'Active'),
(273, NULL, NULL, '14070098', NULL, NULL, NULL, '2014-11-13 09:23:26', '2014-11-13 09:23:26', NULL, NULL, 'Attached'),
(274, NULL, NULL, '14070100', NULL, NULL, NULL, '2014-11-13 09:23:29', '2014-11-13 09:23:29', NULL, NULL, 'Attached'),
(275, NULL, NULL, '14070605', NULL, NULL, NULL, '2014-11-13 09:23:33', '2014-11-13 09:23:33', NULL, NULL, 'Attached'),
(276, NULL, NULL, ' ', NULL, NULL, NULL, '2014-11-13 09:23:36', '2014-11-13 09:23:36', NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_do`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_do` (
`i_det_do_id` int(11) NOT NULL,
  `i_do_id` int(11) NOT NULL,
  `v_product_id` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` varchar(100) NOT NULL,
  `v_remark` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_detail_do`
--

INSERT INTO `tbl_detail_do` (`i_det_do_id`, `i_do_id`, `v_product_id`, `created_at`, `updated_at`, `v_status`, `v_remark`) VALUES
(1, 3, 'D01-00008', '2014-11-21 09:17:22', '2014-11-21 09:17:22', '', ''),
(2, 4, 'D01-00008', '2014-11-21 09:21:28', '2014-11-21 09:21:28', '', ''),
(3, 5, 'D01-00014', '2014-11-21 09:22:26', '2014-11-21 09:22:26', '', ''),
(4, 6, 'D01-00011', '2014-11-21 09:23:52', '2014-11-21 09:23:53', '', ''),
(5, 7, 'D01-00008', '2014-11-21 09:28:29', '2014-11-21 09:28:29', '', ''),
(6, 7, 'D01-00010', '2014-11-21 09:28:29', '2014-11-21 09:28:29', '', ''),
(7, 7, 'D01-00012', '2014-11-21 09:28:29', '2014-11-21 09:28:29', '', ''),
(8, 8, 'D01-00002', '2014-11-25 03:25:28', '2014-11-25 03:25:28', '', ''),
(9, 8, 'D01-00008', '2014-11-25 03:25:28', '2014-11-25 03:25:28', '', ''),
(10, 8, 'D01-00010', '2014-11-25 03:25:28', '2014-11-25 03:25:28', '', ''),
(11, 9, 'D01-00001', '2014-12-04 03:22:04', '2014-12-04 03:22:04', '', ''),
(12, 10, 'D01-00008', '2014-12-04 03:24:29', '2014-12-04 03:24:29', '', ''),
(13, 12, 'D01-00002', '2014-12-04 03:25:46', '2014-12-04 03:25:46', '', ''),
(14, 13, 'D01-00002', '2014-12-04 03:30:08', '2014-12-04 03:30:08', '', ''),
(15, 14, 'D01-00001', '2014-12-04 04:14:10', '2014-12-04 04:14:10', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_product`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_product` (
`id` int(11) NOT NULL,
  `i_mas_product_id` int(11) NOT NULL,
  `v_product_sn` varchar(100) NOT NULL,
  `v_text1` varchar(50) NOT NULL,
  `v_text2` varchar(50) NOT NULL,
  `v_text3` varchar(50) NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `i_status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_detail_product`
--

INSERT INTO `tbl_detail_product` (`id`, `i_mas_product_id`, `v_product_sn`, `v_text1`, `v_text2`, `v_text3`, `i_user_create`, `created_at`, `updated_at`, `i_user_update`, `i_status`) VALUES
(1, 24, '13000010488', '', '', '', 4, '2015-02-02 00:00:00', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_transaksi` (
`id` int(11) NOT NULL,
  `i_master_id` int(11) NOT NULL,
  `i_technician_id` int(11) NOT NULL,
  `v_remarks` varchar(50) NOT NULL,
  `i_status` int(11) NOT NULL,
  `d_date_planning` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_detail_transaksi`
--

INSERT INTO `tbl_detail_transaksi` (`id`, `i_master_id`, `i_technician_id`, `v_remarks`, `i_status`, `d_date_planning`, `created_at`, `updated_at`, `i_user_create`, `i_user_update`) VALUES
(1, 2, 4, 'remark', 1, '2015-02-25 10:24:47', '2015-02-25 10:24:47', '2015-02-25 10:24:47', 6, 0),
(2, 1, 4, 'remark', 1, '2015-02-26 15:24:47', '2015-02-26 10:24:47', '2015-02-26 10:24:47', 6, 0),
(3, 4, 4, 'remart ', 3, '2015-02-26 14:39:00', '2015-02-26 10:49:45', '2015-02-26 10:49:45', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE IF NOT EXISTS `tbl_log` (
`i_log_id` int(11) NOT NULL,
  `v_table_name` varchar(50) NOT NULL,
  `i_table_id` int(11) NOT NULL,
  `i_before_id` int(11) DEFAULT '0',
  `i_after_id` int(11) DEFAULT '0',
  `i_user_create` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`i_log_id`, `v_table_name`, `i_table_id`, `i_before_id`, `i_after_id`, `i_user_create`, `created_at`, `updated_at`) VALUES
(1, 'MODEM', 265, 0, 0, 5, '2014-11-13 10:43:04', '2014-11-13 10:43:04'),
(2, 'MODEM', 244, 0, 0, 5, '2014-11-13 10:43:05', '2014-11-13 10:43:05'),
(3, 'MODEM', 220, 0, 0, 6, '2014-11-14 02:46:00', '2014-11-14 02:46:00'),
(4, 'MODEM', 245, 0, 0, 6, '2014-11-14 02:46:00', '2014-11-14 02:46:00'),
(5, 'MODEM', 257, 0, 0, 6, '2014-11-14 02:46:23', '2014-11-14 02:46:23'),
(6, 'MODEM', 200, 0, 0, 6, '2014-11-14 02:46:23', '2014-11-14 02:46:23'),
(7, 'SIMCARD', 31, 0, 0, 6, '2014-11-19 08:00:17', '2014-11-19 08:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_do`
--

CREATE TABLE IF NOT EXISTS `tbl_master_do` (
`i_do_id` int(11) NOT NULL,
  `i_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` int(11) NOT NULL COMMENT '1=PO, 2=DO'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_master_do`
--

INSERT INTO `tbl_master_do` (`i_do_id`, `i_user_id`, `created_at`, `updated_at`, `v_status`) VALUES
(2, 6, '2014-11-21 09:16:36', '2014-11-21 09:16:36', 2),
(3, 6, '2014-11-21 09:17:22', '2014-11-21 09:17:22', 2),
(4, 6, '2014-11-21 09:21:28', '2014-11-21 09:21:28', 2),
(5, 6, '2014-11-21 09:22:26', '2014-11-21 09:22:26', 2),
(6, 6, '2014-11-21 09:23:52', '2014-11-21 09:23:52', 2),
(7, 6, '2014-11-21 09:28:29', '2014-11-21 09:28:29', 2),
(8, 6, '2014-11-25 03:25:27', '2014-11-25 03:25:27', 2),
(9, 6, '2014-12-04 03:22:03', '2014-12-04 03:22:03', 1),
(10, 6, '2014-12-04 03:24:29', '2014-12-04 03:24:29', 1),
(11, 6, '2014-12-04 03:25:35', '2014-12-04 03:25:35', 1),
(12, 6, '2014-12-04 03:25:46', '2014-12-04 03:25:46', 1),
(13, 6, '2014-12-04 03:30:08', '2014-12-04 03:30:08', 1),
(14, 6, '2014-12-04 04:14:09', '2014-12-04 04:14:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_product`
--

CREATE TABLE IF NOT EXISTS `tbl_master_product` (
`id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `spec_1` varchar(100) DEFAULT NULL,
  `spec_2` varchar(100) DEFAULT NULL,
  `spec_3` varchar(100) DEFAULT NULL,
  `wide` varchar(10) DEFAULT NULL,
  `depth` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `pict1` varchar(1000) DEFAULT NULL,
  `pict2` varchar(100) DEFAULT NULL,
  `pict3` varchar(100) DEFAULT NULL,
  `is_package` varchar(100) DEFAULT NULL,
  `product_list` varchar(100) DEFAULT NULL,
  `is_sn` varchar(100) DEFAULT NULL,
  `is_imei` varchar(100) DEFAULT NULL,
  `is_iccid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `tbl_master_product`
--

INSERT INTO `tbl_master_product` (`id`, `created_at`, `i_user_create`, `i_user_update`, `updated_at`, `code`, `name`, `brand`, `category`, `spec_1`, `spec_2`, `spec_3`, `wide`, `depth`, `height`, `weight`, `pict1`, `pict2`, `pict3`, `is_package`, `product_list`, `is_sn`, `is_imei`, `is_iccid`) VALUES
(24, '2013-06-04 10:35:26', 4, 0, '0000-00-00 00:00:00', 'BAT', 'BAT A5r00', 'Company Access Terminal', 1, '', 'Spec 2', 'Spec 3', '', '', '', '', 'images/A500.jpg', '', '', NULL, NULL, '1', '0', '0'),
(37, '2013-03-25 14:09:16', 4, 0, '0000-00-00 00:00:00', 'iButton RH', 'iButton Reader Housing', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050475.JPG', '', '', NULL, NULL, '0', '0', '0'),
(39, '2013-03-25 13:38:32', 4, 0, '0000-00-00 00:00:00', 'AC42222L', 'RFID Reader', 'Advanced Card System', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050485.JPG', '', '', NULL, NULL, '1', '0', '0'),
(40, '2013-03-25 13:37:31', 4, 0, '0000-00-00 00:00:00', 'iButton', 'iButton', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050488.JPG', '', '', NULL, NULL, '0', '0', '0'),
(41, '2013-03-25 13:36:40', 4, 0, '0000-00-00 00:00:00', 'iButton Reader', 'iButton Reader', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/iButton Probe.jpg', '', '', NULL, NULL, '0', '0', '0'),
(42, '2013-03-25 13:43:05', 4, 0, '0000-00-00 00:00:00', 'Buzzer', 'Buzzer', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050503.JPG', '', '', NULL, NULL, '0', '0', '0'),
(43, '2013-03-25 13:33:29', 4, 0, '0000-00-00 00:00:00', 'Cable-A5r00', 'A500 IO Kit', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/IO Kit.jpg', '', '', NULL, NULL, '0', '0', '0'),
(44, '2013-03-25 13:28:46', 4, 0, '0000-00-00 00:00:00', 'Relay-1e2', 'Relay NONC 12VDC', 'test', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050504.JPG', 'images/P1050507.JPG', '', NULL, NULL, '0', '0', '0'),
(45, '2013-03-25 14:08:45', 4, 0, '0000-00-00 00:00:00', 'Relay-2r4', 'Relay NONC 24VDC', 'test', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(46, '2013-03-25 13:26:53', 4, 0, '0000-00-00 00:00:00', 'GPS-A0r1', 'GPS Antenna', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050510.JPG', '', '', NULL, NULL, '0', '0', '0'),
(47, '2013-03-25 08:52:12', 4, 0, '0000-00-00 00:00:00', 'GSM-A0r1', 'GSM Antenna', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050490.JPG', '', '', NULL, NULL, '0', '0', '0'),
(48, '2013-03-26 07:22:04', 4, 0, '0000-00-00 00:00:00', 'Button-Pr01', 'Panic Button Probe', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'images/P1050508.JPG', 'images/P1050509.JPG', '', NULL, NULL, '0', '0', '0'),
(49, '2013-05-03 08:32:52', 4, 0, '0000-00-00 00:00:00', 'Accesories', 'Battery A500', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', 'http://192.168.1.10/admin/webcam/upload/20130503083354.jpg', '', '', NULL, NULL, '0', '0', '0'),
(51, '2013-06-04 10:39:36', 4, 0, '0000-00-00 00:00:00', 'PACK', 'A500 bTNT', NULL, 1, 'Spec 1', 'Spec 2', 'Spec 3', NULL, NULL, NULL, NULL, '', '', '', '1', '24,43,46,47', NULL, NULL, NULL),
(52, '2013-06-04 10:43:36', 4, 0, '0000-00-00 00:00:00', '001', 'Service After Warranty', 'Company', 2, '', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(53, '2013-06-14 10:44:01', 4, 0, '0000-00-00 00:00:00', '', 'b''AT M500', '', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(54, '2013-06-19 17:53:08', 4, 0, '0000-00-00 00:00:00', 'mmm', 'Discount BAT A500', 'mmm', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(55, '2013-07-02 18:17:16', 4, 0, '0000-00-00 00:00:00', 'jj', 'Service and GPRS charges (1 month)', 'kmjjm', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(56, '2013-07-18 08:25:30', 4, 0, '0000-00-00 00:00:00', 'SG', 'Services and GPRS charges ( 1 Year )', 'GPRS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(57, '2013-07-18 08:29:15', 4, 0, '0000-00-00 00:00:00', 'DS', 'Bonus Panic Button', 'bonus', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(58, '2013-07-30 07:44:27', 4, 0, '0000-00-00 00:00:00', 'TUB-01', 'Top Up Box', 'DHS', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(59, '2013-07-31 09:29:58', 4, 0, '0000-00-00 00:00:00', 'Wiring', 'Wiring', 'Wiring', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(60, '2013-07-31 09:30:17', 4, 0, '0000-00-00 00:00:00', 'PS', 'Power Supply', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(61, '2013-07-31 09:30:40', 4, 0, '0000-00-00 00:00:00', 'S&C', 'Setup & Configuration', 'Company', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(62, '2013-07-31 09:31:19', 4, 0, '0000-00-00 00:00:00', 'T&C', 'Testing & Commissioning', 'Company', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(63, '2013-08-01 11:50:05', 4, 0, '0000-00-00 00:00:00', 'PA', 'Alat', 'Alat', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(64, '2013-08-01 11:51:19', 4, 0, '0000-00-00 00:00:00', 'PG', 'GPS', 'GPS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(65, '2013-09-06 09:16:08', 4, 0, '0000-00-00 00:00:00', 'SG4', 'Service and GPRS Charges (4 Year)', 'GPRS', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(66, '2013-09-06 09:42:43', 4, 0, '0000-00-00 00:00:00', 'IG', 'Biaya Instalasi GPS', 'INSTALASI', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(67, '2013-09-06 09:44:13', 4, 0, '0000-00-00 00:00:00', 'MA', 'Maintenance', 'Maintenance', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(68, '2013-10-08 08:35:17', 4, 0, '0000-00-00 00:00:00', 'PU', 'Pemsangan Ulang Untuk Mobil storing', 'service', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(69, '2013-10-08 08:37:02', 4, 0, '0000-00-00 00:00:00', 'I/O', 'I/O Kit Cable A500', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(70, '2013-10-23 09:50:49', 4, 0, '0000-00-00 00:00:00', 'SR', 'DISCOUNT PRICE', 'DISCOUNT PRICE', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(71, '2013-11-21 17:19:21', 4, 0, '0000-00-00 00:00:00', 'D800', 'Company Driver terminal (D800)+passenger panic button', 'D800', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(72, '2013-11-21 17:21:35', 4, 0, '0000-00-00 00:00:00', 'TM', 'Taxi Meter', 'Taxi Meter', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(73, '2013-11-21 17:22:35', 4, 0, '0000-00-00 00:00:00', 'WB', 'Customized Web-Based Company Taxi Service', 'Web-Based', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(74, '2013-11-21 17:27:47', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Company Service Subscription D8rr00 1 Month', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(75, '2013-12-04 11:02:02', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Service And Gprs Monthly Charges (2 Month)', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(76, '2013-12-05 09:03:47', 4, 0, '0000-00-00 00:00:00', 'DVR', 'Mobile DVR', 'Mobile DVR', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(77, '2013-12-09 13:37:43', 4, 0, '0000-00-00 00:00:00', 'E-LOCK', 'E-LOCK', 'E-LOCK', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(78, '2013-12-16 17:45:12', 4, 0, '0000-00-00 00:00:00', 'TUB', 'Top Up Box', 'DHS', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(79, '2014-03-11 10:42:53', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(80, '2014-03-11 10:44:52', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(81, '2014-03-11 10:45:20', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(82, '2014-03-11 10:45:55', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(83, '2014-03-11 10:46:39', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'Yearly GPS & GPRS Subscription', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(84, '2014-03-11 10:47:11', 4, 0, '0000-00-00 00:00:00', 'WARRANTY', 'WARRANTY', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(85, '2014-03-11 10:47:51', 4, 0, '0000-00-00 00:00:00', 'WARRANTY', 'WARRANTY', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(86, '2014-03-11 10:48:21', 4, 0, '0000-00-00 00:00:00', 'WARRANTY', 'WARRANTY', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(87, '2014-03-11 10:48:45', 4, 0, '0000-00-00 00:00:00', 'WARRANTY', 'WARRANTY', 'WARRANTY', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(88, '2014-04-04 16:45:02', 4, 0, '0000-00-00 00:00:00', 'PAKET M5040', 'M5040 + Door Sensor', 'PAKET M500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(89, '2014-04-11 14:14:40', 4, 0, '0000-00-00 00:00:00', 'simcard', 'simcard', 'simcard', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(90, '2014-06-12 15:31:22', 4, 0, '0000-00-00 00:00:00', 'BAT A500', 'BAT A500 +IMMOBILIZER+I-BUTTON', 'Company', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(91, '2014-06-12 15:29:49', 4, 0, '0000-00-00 00:00:00', 'SUBSCRIPTION', 'service And Subscription GPRS GPS 6 (Six) Months', 'SUBSCRIPTION', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(92, '2014-06-13 09:20:19', 4, 0, '0000-00-00 00:00:00', 'SERVICE', 'test', 'SERVICE', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(93, '2014-07-04 10:58:36', 4, 0, '0000-00-00 00:00:00', 'BAT A500', 'BAT Add500+DOOR SENSOR', 'BAT A500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(94, '2014-07-22 15:32:53', 4, 0, '0000-00-00 00:00:00', 'BATERAI', 'Baterai Internal GPS A500V431', 'test', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(95, '2014-09-23 17:29:35', 4, 0, '0000-00-00 00:00:00', 'BAT A500', 'BAT A500 +IMMOBILIZER+KPI DRIVER', 'BAT A500', 1, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(96, '2015-02-11 15:59:17', 4, 0, '0000-00-00 00:00:00', 'Vehicle Ranking Report', 'Vehicle Ranking Report', 'Vehicle Ranking Report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(97, '2015-02-11 16:02:51', 4, 0, '0000-00-00 00:00:00', 'subsciption service for 1 month ,DTR,Activity Timeline report', 'subsciption service for 1 month ,DTR,Activity Timeline report', 'subsciption service for 1 month ,DTR,Activity Timeline report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(98, '2015-02-11 16:04:17', 4, 0, '0000-00-00 00:00:00', 'Exceesive Idleing Report', 'Exceesive Idleing Report', 'Exceesive Idleing Report', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0'),
(99, '2015-02-11 16:05:04', 4, 0, '0000-00-00 00:00:00', 'Zone management', 'Zone management', 'Zone management', 2, 'Spec 1', 'Spec 2', 'Spec 3', '', '', '', '', '', '', '', NULL, NULL, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_master_transaksi` (
`id` int(11) NOT NULL,
  `i_owner_id` int(11) NOT NULL,
  `i_vehicle_id` int(11) NOT NULL,
  `i_po_id` int(11) NOT NULL,
  `i_rrn_id` int(11) NOT NULL,
  `i_do_id` int(11) NOT NULL,
  `i_wo_id` int(11) NOT NULL,
  `i_trans_category_id` int(11) NOT NULL,
  `i_mas_product_id` int(11) NOT NULL,
  `i_det_product_id` int(11) NOT NULL,
  `i_simcard_id` int(11) NOT NULL,
  `v_problem` varchar(100) NOT NULL,
  `v_remark` varchar(100) NOT NULL,
  `d_date_action` datetime NOT NULL,
  `i_status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_master_transaksi`
--

INSERT INTO `tbl_master_transaksi` (`id`, `i_owner_id`, `i_vehicle_id`, `i_po_id`, `i_rrn_id`, `i_do_id`, `i_wo_id`, `i_trans_category_id`, `i_mas_product_id`, `i_det_product_id`, `i_simcard_id`, `v_problem`, `v_remark`, `d_date_action`, `i_status`, `created_at`, `updated_at`, `i_user_create`, `i_user_update`) VALUES
(1, 2, 2, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 1, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0),
(2, 1, 1, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 2, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0),
(3, 1, 1, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 3, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0),
(4, 1, 1, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 4, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0),
(5, 1, 1, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 5, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0),
(6, 1, 1, 0, 0, 0, 0, 2, 24, 1, 1, 'problem', 'remark', '0000-00-00 00:00:00', 6, '2015-02-23 09:16:04', '2015-02-23 09:16:04', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modem`
--

CREATE TABLE IF NOT EXISTS `tbl_modem` (
`i_modem_id` int(11) NOT NULL,
  `v_modem_name` varchar(100) DEFAULT NULL,
  `v_modem_sn` varchar(100) NOT NULL,
  `v_modem_type` varchar(50) DEFAULT NULL,
  `v_modem_text1` varchar(100) DEFAULT NULL,
  `v_modem_text2` varchar(100) DEFAULT NULL,
  `v_modem_text3` varchar(100) DEFAULT NULL,
  `v_modem_text4` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) DEFAULT NULL,
  `i_user_modify` int(11) DEFAULT NULL,
  `v_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `tbl_modem`
--

INSERT INTO `tbl_modem` (`i_modem_id`, `v_modem_name`, `v_modem_sn`, `v_modem_type`, `v_modem_text1`, `v_modem_text2`, `v_modem_text3`, `v_modem_text4`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, NULL, 'E79', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:34', '2014-11-10 07:35:34', NULL, NULL, 'Attached'),
(2, NULL, '82F', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:37', '2014-11-10 07:35:37', NULL, NULL, 'Attached'),
(3, NULL, '453', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:40', '2014-11-10 07:35:40', NULL, NULL, 'Attached'),
(4, NULL, '814', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:43', '2014-11-10 07:35:43', NULL, NULL, 'Attached'),
(5, NULL, '821', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:46', '2014-11-10 07:35:46', NULL, NULL, 'Attached'),
(6, NULL, 'OC9', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:50', '2014-11-10 07:35:50', NULL, NULL, 'Attached'),
(7, NULL, '8O8', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:53', '2014-11-10 07:35:53', NULL, NULL, 'Attached'),
(8, NULL, '0CF', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:56', '2014-11-10 07:35:56', NULL, NULL, 'Attached'),
(9, NULL, '76E', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:59', '2014-11-10 07:35:59', NULL, NULL, 'Attached'),
(10, NULL, '453a', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:02', '2014-11-10 07:36:02', NULL, NULL, 'Attached'),
(11, NULL, 'F84', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:06', '2014-11-10 07:36:06', NULL, NULL, 'Attached'),
(12, NULL, '9BO', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:09', '2014-11-10 07:36:09', NULL, NULL, 'Attached'),
(13, NULL, 'B26', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:12', '2014-11-10 07:36:12', NULL, NULL, 'Attached'),
(14, NULL, '694', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:15', '2014-11-10 07:36:15', NULL, NULL, 'Attached'),
(15, NULL, 'B20', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:18', '2014-11-10 07:36:18', NULL, NULL, 'Attached'),
(16, NULL, 'D20', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:22', '2014-11-10 07:36:22', NULL, NULL, 'Attached'),
(17, NULL, 'A24', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:25', '2014-11-10 07:36:25', NULL, NULL, 'Attached'),
(18, NULL, '40F', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:28', '2014-11-10 07:36:28', NULL, NULL, 'Attached'),
(19, NULL, '510', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:31', '2014-11-10 07:36:31', NULL, NULL, 'Attached'),
(20, NULL, '87C', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:34', '2014-11-10 07:36:34', NULL, NULL, 'Attached'),
(21, NULL, '46B', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:37', '2014-11-10 07:36:37', NULL, NULL, 'Attached'),
(22, NULL, 'C12', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:40', '2014-11-10 07:36:40', NULL, NULL, 'Attached'),
(23, NULL, '31E', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:44', '2014-11-10 07:36:44', NULL, NULL, 'Attached'),
(24, NULL, 'D1F', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:47', '2014-11-10 07:36:47', NULL, NULL, 'Attached'),
(25, NULL, '98C', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:50', '2014-11-10 07:36:50', NULL, NULL, 'Attached'),
(26, NULL, 'DB1', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:53', '2014-11-10 07:36:53', NULL, NULL, 'Attached'),
(27, NULL, 'D72', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:56', '2014-11-10 07:36:56', NULL, NULL, 'Attached'),
(28, NULL, 'A3Ba', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:59', '2014-11-10 07:36:59', NULL, NULL, 'Attached'),
(29, NULL, '62E', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:37:03', '2014-11-10 07:37:03', NULL, NULL, 'Attached'),
(30, NULL, '627', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:37:06', '2014-11-10 07:37:06', NULL, NULL, 'Attached'),
(31, NULL, 'A28', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:49', '2014-11-13 09:10:49', NULL, NULL, 'Attached'),
(32, NULL, '21C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:52', '2014-11-13 09:10:52', NULL, NULL, 'Attached'),
(33, NULL, '1B0', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:56', '2014-11-13 09:10:56', NULL, NULL, 'Attached'),
(34, NULL, '4CC', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:59', '2014-11-13 09:10:59', NULL, NULL, 'Attached'),
(35, NULL, '608', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:02', '2014-11-13 09:11:02', NULL, NULL, 'Attached'),
(36, NULL, '934', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:05', '2014-11-13 09:11:05', NULL, NULL, 'Attached'),
(37, NULL, '33E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:08', '2014-11-13 09:11:08', NULL, NULL, 'Attached'),
(38, NULL, '232', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:11', '2014-11-13 09:11:11', NULL, NULL, 'Attached'),
(39, NULL, '71A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:14', '2014-11-13 09:11:14', NULL, NULL, 'Attached'),
(40, NULL, '755', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:18', '2014-11-13 09:11:18', NULL, NULL, 'Attached'),
(41, NULL, 'O6F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:21', '2014-11-13 09:11:21', NULL, NULL, 'Attached'),
(42, NULL, 'A25', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:24', '2014-11-13 09:11:24', NULL, NULL, 'Attached'),
(43, NULL, 'BA8', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:27', '2014-11-13 09:11:27', NULL, NULL, 'Attached'),
(44, NULL, '5AC', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:30', '2014-11-13 09:11:30', NULL, NULL, 'Attached'),
(45, NULL, '20D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:33', '2014-11-13 09:11:33', NULL, NULL, 'Attached'),
(46, NULL, '455', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:37', '2014-11-13 09:11:37', NULL, NULL, 'Attached'),
(47, NULL, '32F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:40', '2014-11-13 09:11:40', NULL, NULL, 'Attached'),
(48, NULL, '28B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:43', '2014-11-13 09:11:43', NULL, NULL, 'Attached'),
(49, NULL, '38C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:46', '2014-11-13 09:11:46', NULL, NULL, 'Attached'),
(50, NULL, 'AA9', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:49', '2014-11-13 09:11:49', NULL, NULL, 'Attached'),
(51, NULL, '9AD', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:53', '2014-11-13 09:11:53', NULL, NULL, 'Attached'),
(52, NULL, 'B0F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:56', '2014-11-13 09:11:56', NULL, NULL, 'Attached'),
(53, NULL, 'C43', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:59', '2014-11-13 09:11:59', NULL, NULL, 'Attached'),
(54, NULL, 'C68', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:02', '2014-11-13 09:12:02', NULL, NULL, 'Attached'),
(55, NULL, '73D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:06', '2014-11-13 09:12:06', NULL, NULL, 'Attached'),
(56, NULL, 'F9a', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:09', '2014-11-13 09:12:09', NULL, NULL, 'Attached'),
(57, NULL, '2A1', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:12', '2014-11-13 09:12:12', NULL, NULL, 'Attached'),
(58, NULL, 'D3D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:15', '2014-11-13 09:12:15', NULL, NULL, 'Attached'),
(59, NULL, '330', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:18', '2014-11-13 09:12:18', NULL, NULL, 'Attached'),
(60, NULL, '42D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:22', '2014-11-13 09:12:22', NULL, NULL, 'Attached'),
(61, NULL, '9OB', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:25', '2014-11-13 09:12:25', NULL, NULL, 'Attached'),
(62, NULL, '337', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:28', '2014-11-13 09:12:28', NULL, NULL, 'Attached'),
(63, NULL, 'A0F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:31', '2014-11-13 09:12:31', NULL, NULL, 'Attached'),
(64, NULL, '77E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:34', '2014-11-13 09:12:34', NULL, NULL, 'Attached'),
(65, NULL, 'B16', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:37', '2014-11-13 09:12:37', NULL, NULL, 'Attached'),
(66, NULL, '4CE', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:41', '2014-11-13 09:12:41', NULL, NULL, 'Attached'),
(67, NULL, 'C67', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:44', '2014-11-13 09:12:44', NULL, NULL, 'Attached'),
(68, NULL, '22D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:47', '2014-11-13 09:12:47', NULL, NULL, 'Attached'),
(69, NULL, 'A0C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:53', '2014-11-13 09:12:53', NULL, NULL, 'Attached'),
(70, NULL, '790', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:56', '2014-11-13 09:12:56', NULL, NULL, 'Attached'),
(71, NULL, 'O7A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:59', '2014-11-13 09:12:59', NULL, NULL, 'Attached'),
(72, NULL, '180', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:03', '2014-11-13 09:13:03', NULL, NULL, 'Attached'),
(73, NULL, 'F7B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:06', '2014-11-13 09:13:06', NULL, NULL, 'Attached'),
(74, NULL, '721', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:09', '2014-11-13 09:13:09', NULL, NULL, 'Attached'),
(75, NULL, '82A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:12', '2014-11-13 09:13:12', NULL, NULL, 'Attached'),
(76, NULL, '230', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:15', '2014-11-13 09:13:15', NULL, NULL, 'Attached'),
(77, NULL, 'B23', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:18', '2014-11-13 09:13:18', NULL, NULL, 'Attached'),
(78, NULL, '82D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:22', '2014-11-13 09:13:22', NULL, NULL, 'Attached'),
(79, NULL, '44C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:25', '2014-11-13 09:13:25', NULL, NULL, 'Attached'),
(80, NULL, '108', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:28', '2014-11-13 09:13:28', NULL, NULL, 'Attached'),
(81, NULL, '80', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:31', '2014-11-13 09:13:31', NULL, NULL, 'Attached'),
(82, NULL, 'A17', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:34', '2014-11-13 09:13:34', NULL, NULL, 'Attached'),
(83, NULL, '63E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:37', '2014-11-13 09:13:37', NULL, NULL, 'Attached'),
(84, NULL, 'F7Ba', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:40', '2014-11-13 09:13:40', NULL, NULL, 'Attached'),
(85, NULL, '74F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:44', '2014-11-13 09:13:44', NULL, NULL, 'Attached'),
(86, NULL, '265', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:47', '2014-11-13 09:13:47', NULL, NULL, 'Attached'),
(87, NULL, '91B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:50', '2014-11-13 09:13:50', NULL, NULL, 'Attached'),
(88, NULL, 'B4B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:53', '2014-11-13 09:13:53', NULL, NULL, 'Attached'),
(89, NULL, 'F62', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:59', '2014-11-13 09:13:59', NULL, NULL, 'Attached'),
(90, NULL, 'D57', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:02', '2014-11-13 09:14:02', NULL, NULL, 'Attached'),
(91, NULL, '7A8', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:06', '2014-11-13 09:14:06', NULL, NULL, 'Attached'),
(92, NULL, '467', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:09', '2014-11-13 09:14:09', NULL, NULL, 'Attached'),
(93, NULL, '29C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:12', '2014-11-13 09:14:12', NULL, NULL, 'Attached'),
(94, NULL, '532', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:15', '2014-11-13 09:14:15', NULL, NULL, 'Attached'),
(95, NULL, '68F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:18', '2014-11-13 09:14:18', NULL, NULL, 'Attached'),
(96, NULL, '335', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:22', '2014-11-13 09:14:22', NULL, NULL, 'Attached'),
(97, NULL, '226', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:25', '2014-11-13 09:14:25', NULL, NULL, 'Attached'),
(98, NULL, '226a', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:28', '2014-11-13 09:14:28', NULL, NULL, 'Attached'),
(99, NULL, '117', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:31', '2014-11-13 09:14:31', NULL, NULL, 'Attached'),
(100, NULL, '5B3', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:34', '2014-11-13 09:14:34', NULL, NULL, 'Attached'),
(101, NULL, 'D7E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:37', '2014-11-13 09:14:37', NULL, NULL, 'Attached'),
(102, NULL, '66E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:40', '2014-11-13 09:14:40', NULL, NULL, 'Attached'),
(103, NULL, '215', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:44', '2014-11-13 09:14:44', NULL, NULL, 'Attached'),
(104, NULL, '664', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:47', '2014-11-13 09:14:47', NULL, NULL, 'Attached'),
(105, NULL, '0A9', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:50', '2014-11-13 09:14:50', NULL, NULL, 'Attached'),
(106, NULL, 'A97', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:53', '2014-11-13 09:14:53', NULL, NULL, 'Attached'),
(107, NULL, '06C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:56', '2014-11-13 09:14:56', NULL, NULL, 'Attached'),
(108, NULL, '86B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:59', '2014-11-13 09:14:59', NULL, NULL, 'Attached'),
(109, NULL, '661', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:03', '2014-11-13 09:15:03', NULL, NULL, 'Attached'),
(110, NULL, 'C3E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:06', '2014-11-13 09:15:06', NULL, NULL, 'Attached'),
(111, NULL, '719', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:09', '2014-11-13 09:15:09', NULL, NULL, 'Attached'),
(112, NULL, '5C0', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:12', '2014-11-13 09:15:12', NULL, NULL, 'Attached'),
(113, NULL, 'CA1', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:15', '2014-11-13 09:15:15', NULL, NULL, 'Attached'),
(114, NULL, 'F67', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:18', '2014-11-13 09:15:18', NULL, NULL, 'Attached'),
(115, NULL, '5B6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:22', '2014-11-13 09:15:22', NULL, NULL, 'Attached'),
(116, NULL, 'E6A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:25', '2014-11-13 09:15:25', NULL, NULL, 'Attached'),
(117, NULL, '46A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:28', '2014-11-13 09:15:28', NULL, NULL, 'Attached'),
(118, NULL, 'F2A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:31', '2014-11-13 09:15:31', NULL, NULL, 'Attached'),
(119, NULL, 'O14', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:34', '2014-11-13 09:15:34', NULL, NULL, 'Attached'),
(120, NULL, '2C2', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:37', '2014-11-13 09:15:37', NULL, NULL, 'Attached'),
(121, NULL, '8BD', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:41', '2014-11-13 09:15:41', NULL, NULL, 'Attached'),
(122, NULL, 'C5D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:47', '2014-11-13 09:15:47', NULL, NULL, 'Attached'),
(123, NULL, '28D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:50', '2014-11-13 09:15:50', NULL, NULL, 'Attached'),
(124, NULL, 'C39', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:53', '2014-11-13 09:15:53', NULL, NULL, 'Attached'),
(125, NULL, 'C18', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:56', '2014-11-13 09:15:56', NULL, NULL, 'Attached'),
(126, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:00', '2014-11-13 09:16:00', NULL, NULL, 'Attached'),
(127, NULL, 'E2C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:03', '2014-11-13 09:16:03', NULL, NULL, 'Attached'),
(128, NULL, '867', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:06', '2014-11-13 09:16:06', NULL, NULL, 'Attached'),
(129, NULL, '99A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:09', '2014-11-13 09:16:09', NULL, NULL, 'Attached'),
(130, NULL, '398', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:12', '2014-11-13 09:16:12', NULL, NULL, 'Attached'),
(131, NULL, 'EOB', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:15', '2014-11-13 09:16:15', NULL, NULL, 'Attached'),
(132, NULL, 'EOBa', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:18', '2014-11-13 09:16:18', NULL, NULL, 'Attached'),
(133, NULL, '3B6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:22', '2014-11-13 09:16:22', NULL, NULL, 'Attached'),
(134, NULL, 'C21', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:25', '2014-11-13 09:16:25', NULL, NULL, 'Attached'),
(135, NULL, '42F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:28', '2014-11-13 09:16:28', NULL, NULL, 'Attached'),
(136, NULL, 'BA0', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:31', '2014-11-13 09:16:31', NULL, NULL, 'Attached'),
(137, NULL, '6CC', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:34', '2014-11-13 09:16:34', NULL, NULL, 'Attached'),
(138, NULL, '0B5', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:41', '2014-11-13 09:16:41', NULL, NULL, 'Attached'),
(139, NULL, '94C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:47', '2014-11-13 09:16:47', NULL, NULL, 'Attached'),
(140, NULL, 'B36', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:56', '2014-11-13 09:16:56', NULL, NULL, 'Attached'),
(141, NULL, 'F85', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:02', '2014-11-13 09:17:02', NULL, NULL, 'Attached'),
(142, NULL, 'D14', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:05', '2014-11-13 09:17:05', NULL, NULL, 'Attached'),
(143, NULL, '31C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:08', '2014-11-13 09:17:08', NULL, NULL, 'Attached'),
(144, NULL, 'F42', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:12', '2014-11-13 09:17:12', NULL, NULL, 'Attached'),
(145, NULL, '6A7', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:15', '2014-11-13 09:17:15', NULL, NULL, 'Attached'),
(146, NULL, '15C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:24', '2014-11-13 09:17:24', NULL, NULL, 'Attached'),
(147, NULL, '6AA', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:27', '2014-11-13 09:17:27', NULL, NULL, 'Attached'),
(148, NULL, '27F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:30', '2014-11-13 09:17:30', NULL, NULL, 'Attached'),
(149, NULL, '65A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:33', '2014-11-13 09:17:33', NULL, NULL, 'Attached'),
(150, NULL, '128', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:40', '2014-11-13 09:17:40', NULL, NULL, 'Attached'),
(151, NULL, '67E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:43', '2014-11-13 09:17:43', NULL, NULL, 'Attached'),
(152, NULL, '9AA', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:49', '2014-11-13 09:17:49', NULL, NULL, 'Attached'),
(153, NULL, 'B43', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:52', '2014-11-13 09:17:52', NULL, NULL, 'Attached'),
(154, NULL, '492', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:55', '2014-11-13 09:17:55', NULL, NULL, 'Attached'),
(155, NULL, 'A61', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:59', '2014-11-13 09:17:59', NULL, NULL, 'Attached'),
(156, NULL, '32E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:11', '2014-11-13 09:18:11', NULL, NULL, 'Attached'),
(157, NULL, '18A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:14', '2014-11-13 09:18:14', NULL, NULL, 'Attached'),
(158, NULL, 'B28', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:17', '2014-11-13 09:18:17', NULL, NULL, 'Attached'),
(159, NULL, 'F65', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:20', '2014-11-13 09:18:20', NULL, NULL, 'Attached'),
(160, NULL, 'EB4', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:23', '2014-11-13 09:18:23', NULL, NULL, 'Attached'),
(161, NULL, '924', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:30', '2014-11-13 09:18:30', NULL, NULL, 'Attached'),
(162, NULL, 'F7A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:36', '2014-11-13 09:18:36', NULL, NULL, 'Attached'),
(163, NULL, '56D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:39', '2014-11-13 09:18:39', NULL, NULL, 'Attached'),
(164, NULL, 'C80', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:42', '2014-11-13 09:18:42', NULL, NULL, 'Attached'),
(165, NULL, 'A09', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:45', '2014-11-13 09:18:45', NULL, NULL, 'Attached'),
(166, NULL, '88A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:48', '2014-11-13 09:18:48', NULL, NULL, 'Attached'),
(167, NULL, 'A11', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:52', '2014-11-13 09:18:52', NULL, NULL, 'Attached'),
(168, NULL, '840', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:55', '2014-11-13 09:18:55', NULL, NULL, 'Attached'),
(169, NULL, '260', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:58', '2014-11-13 09:18:58', NULL, NULL, 'Attached'),
(170, NULL, 'F39', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:01', '2014-11-13 09:19:01', NULL, NULL, 'Attached'),
(171, NULL, '7C7', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:04', '2014-11-13 09:19:04', NULL, NULL, 'Attached'),
(172, NULL, 'D30', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:07', '2014-11-13 09:19:07', NULL, NULL, 'Attached'),
(173, NULL, '443', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:10', '2014-11-13 09:19:10', NULL, NULL, 'Attached'),
(174, NULL, 'B3A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:14', '2014-11-13 09:19:14', NULL, NULL, 'Attached'),
(175, NULL, '97C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:20', '2014-11-13 09:19:20', NULL, NULL, 'Attached'),
(176, NULL, '43F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:23', '2014-11-13 09:19:23', NULL, NULL, 'Attached'),
(177, NULL, 'A0A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:26', '2014-11-13 09:19:26', NULL, NULL, 'Attached'),
(178, NULL, 'E3B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:32', '2014-11-13 09:19:32', NULL, NULL, 'Attached'),
(179, NULL, '852', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:36', '2014-11-13 09:19:36', NULL, NULL, 'Attached'),
(180, NULL, '738', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:39', '2014-11-13 09:19:39', NULL, NULL, 'Attached'),
(181, NULL, 'B2D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:42', '2014-11-13 09:19:42', NULL, NULL, 'Attached'),
(182, NULL, '54A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:45', '2014-11-13 09:19:45', NULL, NULL, 'Attached'),
(183, NULL, '2C6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:48', '2014-11-13 09:19:48', NULL, NULL, 'Attached'),
(184, NULL, '5A9', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:51', '2014-11-13 09:19:51', NULL, NULL, 'Attached'),
(185, NULL, '684', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:54', '2014-11-13 09:19:54', NULL, NULL, 'Attached'),
(186, NULL, 'D7D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:58', '2014-11-13 09:19:58', NULL, NULL, 'Attached'),
(187, NULL, '73A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:01', '2014-11-13 09:20:01', NULL, NULL, 'Attached'),
(188, NULL, '16C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:04', '2014-11-13 09:20:04', NULL, NULL, 'Attached'),
(189, NULL, 'E87', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:07', '2014-11-13 09:20:07', NULL, NULL, 'Attached'),
(190, NULL, '83A', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:10', '2014-11-13 09:20:10', NULL, NULL, 'Attached'),
(191, NULL, '43D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:13', '2014-11-13 09:20:13', NULL, NULL, 'Attached'),
(192, NULL, '55C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:17', '2014-11-13 09:20:17', NULL, NULL, 'Attached'),
(193, NULL, 'F9B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:20', '2014-11-13 09:20:20', NULL, NULL, 'Attached'),
(194, NULL, '548', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:23', '2014-11-13 09:20:23', NULL, NULL, 'Attached'),
(195, NULL, 'F51', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:26', '2014-11-13 09:20:26', NULL, NULL, 'Attached'),
(196, NULL, '034', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:29', '2014-11-13 09:20:29', NULL, NULL, 'Attached'),
(197, NULL, 'F4F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:32', '2014-11-13 09:20:32', NULL, NULL, 'Attached'),
(198, NULL, 'B73', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:35', '2014-11-13 09:20:35', NULL, NULL, 'Attached'),
(199, NULL, 'EA4', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:38', '2014-11-13 09:20:38', NULL, NULL, 'Attached'),
(200, NULL, '413', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:42', '2014-11-13 09:20:42', NULL, NULL, 'Attached'),
(201, NULL, '650', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:45', '2014-11-13 09:20:45', NULL, NULL, 'Attached'),
(202, NULL, '8C4', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:48', '2014-11-13 09:20:48', NULL, NULL, 'Attached'),
(203, NULL, 'F3B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:51', '2014-11-13 09:20:51', NULL, NULL, 'Attached'),
(204, NULL, '8B1', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:54', '2014-11-13 09:20:54', NULL, NULL, 'Attached'),
(205, NULL, '24C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:57', '2014-11-13 09:20:57', NULL, NULL, 'Attached'),
(206, NULL, '813', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:00', '2014-11-13 09:21:00', NULL, NULL, 'Attached'),
(207, NULL, 'A44', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:03', '2014-11-13 09:21:03', NULL, NULL, 'Attached'),
(208, NULL, '0C1', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:07', '2014-11-13 09:21:07', NULL, NULL, 'Attached'),
(209, NULL, '4B1', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:19', '2014-11-13 09:21:19', NULL, NULL, 'Attached'),
(210, NULL, '448', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:25', '2014-11-13 09:21:25', NULL, NULL, 'Attached'),
(211, NULL, 'C7F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:28', '2014-11-13 09:21:28', NULL, NULL, 'Attached'),
(212, NULL, '70E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:31', '2014-11-13 09:21:31', NULL, NULL, 'Attached'),
(213, NULL, '6AD', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:34', '2014-11-13 09:21:34', NULL, NULL, 'Attached'),
(214, NULL, '00F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:38', '2014-11-13 09:21:38', NULL, NULL, 'Attached'),
(215, NULL, 'F8E', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:41', '2014-11-13 09:21:41', NULL, NULL, 'Attached'),
(216, NULL, '616', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:44', '2014-11-13 09:21:44', NULL, NULL, 'Attached'),
(217, NULL, '816', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:47', '2014-11-13 09:21:47', NULL, NULL, 'Attached'),
(218, NULL, '682', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:50', '2014-11-13 09:21:50', NULL, NULL, 'Attached'),
(219, NULL, 'EC6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:53', '2014-11-13 09:21:53', NULL, NULL, 'Attached'),
(220, NULL, '2B0', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:56', '2014-11-13 09:21:56', NULL, NULL, 'Attached'),
(221, NULL, '741', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:00', '2014-11-13 09:22:00', NULL, NULL, 'Attached'),
(222, NULL, '70D', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:06', '2014-11-13 09:22:06', NULL, NULL, 'Attached'),
(223, NULL, '047', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:09', '2014-11-13 09:22:09', NULL, NULL, 'Attached'),
(224, NULL, '773', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:12', '2014-11-13 09:22:12', NULL, NULL, 'Attached'),
(225, NULL, '0C6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:15', '2014-11-13 09:22:15', NULL, NULL, 'Attached'),
(226, NULL, 'A34', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:18', '2014-11-13 09:22:18', NULL, NULL, 'Attached'),
(227, NULL, 'B0C', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:24', '2014-11-13 09:22:24', NULL, NULL, 'Attached'),
(228, NULL, '3A7', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:27', '2014-11-13 09:22:27', NULL, NULL, 'Attached'),
(229, NULL, 'DBA', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:31', '2014-11-13 09:22:31', NULL, NULL, 'Attached'),
(230, NULL, 'A3B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:34', '2014-11-13 09:22:34', NULL, NULL, 'Attached'),
(232, NULL, '8AB', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:43', '2014-11-13 09:22:43', NULL, NULL, 'Attached'),
(233, NULL, 'C29', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:46', '2014-11-13 09:22:46', NULL, NULL, 'Attached'),
(234, NULL, 'D80', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:49', '2014-11-13 09:22:49', NULL, NULL, 'Attached'),
(235, NULL, '9A3', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:52', '2014-11-13 09:22:52', NULL, NULL, 'Attached'),
(236, NULL, '668', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:56', '2014-11-13 09:22:56', NULL, NULL, 'Attached'),
(237, NULL, '96B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:59', '2014-11-13 09:22:59', NULL, NULL, 'Attached'),
(239, NULL, 'F49', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:08', '2014-11-13 09:23:08', NULL, NULL, 'Attached'),
(240, NULL, '63F', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:20', '2014-11-13 09:23:20', NULL, NULL, 'Attached'),
(241, NULL, '6B6', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:26', '2014-11-13 09:23:26', NULL, NULL, 'Attached'),
(242, NULL, 'D1B', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:29', '2014-11-13 09:23:29', NULL, NULL, 'Attached'),
(243, NULL, '87Ca', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:33', '2014-11-13 09:23:33', NULL, NULL, 'Attached'),
(244, '', '67EA', '', '', '', '', '', '2014-11-13 10:33:38', '2014-11-13 10:33:38', 5, NULL, 'Attached'),
(245, '', '413A', '', '', '', '', '', '2014-11-14 02:45:32', '2014-11-14 02:45:32', 6, NULL, 'Attached');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_do`
--

CREATE TABLE IF NOT EXISTS `tbl_new_do` (
`id` int(11) NOT NULL,
  `v_do_code` varchar(20) NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` int(11) NOT NULL COMMENT '1=PO, 2=DO'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_new_do`
--

INSERT INTO `tbl_new_do` (`id`, `v_do_code`, `i_user_create`, `i_user_update`, `created_at`, `updated_at`, `v_status`) VALUES
(3, 'DO/2015/02/001', 4, 0, '2015-02-18 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'DO/2015/02/002', 4, 0, '2015-02-22 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_po`
--

CREATE TABLE IF NOT EXISTS `tbl_new_po` (
`id` int(11) NOT NULL,
  `v_po_code` varchar(20) NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` int(11) NOT NULL COMMENT '1=PO, 2=DO'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_new_po`
--

INSERT INTO `tbl_new_po` (`id`, `v_po_code`, `i_user_create`, `i_user_update`, `created_at`, `updated_at`, `v_status`) VALUES
(1, 'PO/2015/02/001', 4, 0, '2015-02-18 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'PO/2015/02/002', 4, 0, '2015-02-22 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_rrn`
--

CREATE TABLE IF NOT EXISTS `tbl_new_rrn` (
`id` int(11) NOT NULL,
  `v_rrn_code` varchar(20) NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` int(11) NOT NULL COMMENT '1=PO, 2=DO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_simcard`
--

CREATE TABLE IF NOT EXISTS `tbl_new_simcard` (
`i_simcard_id` int(11) NOT NULL,
  `v_simcard_name` varchar(100) NOT NULL,
  `v_simcard_serial` varchar(100) NOT NULL,
  `v_simcard_type` varchar(50) NOT NULL,
  `v_simcard_msisdn` varchar(100) NOT NULL,
  `v_simcard_text1` varchar(100) NOT NULL,
  `v_simcard_text2` varchar(100) NOT NULL,
  `v_simcard_text3` varchar(100) NOT NULL,
  `v_simcard_text4` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_modify` int(11) NOT NULL,
  `v_status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_new_simcard`
--

INSERT INTO `tbl_new_simcard` (`i_simcard_id`, `v_simcard_name`, `v_simcard_serial`, `v_simcard_type`, `v_simcard_msisdn`, `v_simcard_text1`, `v_simcard_text2`, `v_simcard_text3`, `v_simcard_text4`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, 'HALLO', '', '', '628444712210', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_wo`
--

CREATE TABLE IF NOT EXISTS `tbl_new_wo` (
`id` int(11) NOT NULL,
  `v_wo_code` varchar(20) NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_update` int(11) NOT NULL,
  `i_do_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` int(11) NOT NULL COMMENT '1=PO, 2=DO'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_new_wo`
--

INSERT INTO `tbl_new_wo` (`id`, `v_wo_code`, `i_user_create`, `i_user_update`, `i_do_id`, `created_at`, `updated_at`, `v_status`) VALUES
(1, 'WO/2015/02/001', 4, 0, 3, '2015-02-19 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'WO/2015/02/002', 4, 0, 3, '2015-02-19 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obu`
--

CREATE TABLE IF NOT EXISTS `tbl_obu` (
`i_obu_id` int(11) NOT NULL,
  `v_obu_name` varchar(100) DEFAULT NULL,
  `v_sn` varchar(100) NOT NULL,
  `v_type` varchar(50) DEFAULT NULL,
  `v_text1` varchar(100) DEFAULT NULL,
  `v_text2` varchar(100) DEFAULT NULL,
  `v_text3` varchar(100) DEFAULT NULL,
  `v_text4` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) DEFAULT NULL,
  `i_user_modify` int(11) DEFAULT NULL,
  `v_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=275 ;

--
-- Dumping data for table `tbl_obu`
--

INSERT INTO `tbl_obu` (`i_obu_id`, `v_obu_name`, `v_sn`, `v_type`, `v_text1`, `v_text2`, `v_text3`, `v_text4`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, NULL, '11101400108', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:34', '2014-11-10 07:35:34', NULL, NULL, 'Attached'),
(2, NULL, '11101400107', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:37', '2014-11-10 07:35:37', NULL, NULL, 'Attached'),
(3, NULL, '11101400103', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:40', '2014-11-10 07:35:40', NULL, NULL, 'Attached'),
(4, NULL, '11101400104', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:43', '2014-11-10 07:35:43', NULL, NULL, 'Attached'),
(5, NULL, '11101400102', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:46', '2014-11-10 07:35:46', NULL, NULL, 'Attached'),
(6, NULL, '11101400096', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:50', '2014-11-10 07:35:50', NULL, NULL, 'Attached'),
(7, NULL, '10101400088', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:53', '2014-11-10 07:35:53', NULL, NULL, 'Attached'),
(8, NULL, '9101400081', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:56', '2014-11-10 07:35:56', NULL, NULL, 'Attached'),
(9, NULL, '9101400085', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:35:59', '2014-11-10 07:35:59', NULL, NULL, 'Attached'),
(10, NULL, '9101400084', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:02', '2014-11-10 07:36:02', NULL, NULL, 'Attached'),
(11, NULL, '8101400053', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:06', '2014-11-10 07:36:06', NULL, NULL, 'Attached'),
(12, NULL, '9101400063', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:09', '2014-11-10 07:36:09', NULL, NULL, 'Attached'),
(13, NULL, '11101400098', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:12', '2014-11-10 07:36:12', NULL, NULL, 'Attached'),
(14, NULL, '9101400076', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:15', '2014-11-10 07:36:15', NULL, NULL, 'Attached'),
(15, NULL, '9101400075', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:18', '2014-11-10 07:36:18', NULL, NULL, 'Attached'),
(16, NULL, '9101400055', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:22', '2014-11-10 07:36:22', NULL, NULL, 'Attached'),
(17, NULL, '9101400087', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:25', '2014-11-10 07:36:25', NULL, NULL, 'Attached'),
(18, NULL, '9101400065', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:28', '2014-11-10 07:36:28', NULL, NULL, 'Attached'),
(19, NULL, '9101400079', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:31', '2014-11-10 07:36:31', NULL, NULL, 'Attached'),
(20, NULL, '10101400089', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:34', '2014-11-10 07:36:34', NULL, NULL, 'Attached'),
(21, NULL, '9101400064', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:37', '2014-11-10 07:36:37', NULL, NULL, 'Attached'),
(22, NULL, '9101400066', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:40', '2014-11-10 07:36:40', NULL, NULL, 'Attached'),
(23, NULL, '16101400265', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:44', '2014-11-10 07:36:44', NULL, NULL, 'Attached'),
(24, NULL, '9101400070', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:47', '2014-11-10 07:36:47', NULL, NULL, 'Attached'),
(25, NULL, '11101400095', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:50', '2014-11-10 07:36:50', NULL, NULL, 'Attached'),
(26, NULL, '15101400231', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:53', '2014-11-10 07:36:53', NULL, NULL, 'Attached'),
(27, NULL, '21101400354', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:56', '2014-11-10 07:36:56', NULL, NULL, 'Attached'),
(28, NULL, '21101400348', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:36:59', '2014-11-10 07:36:59', NULL, NULL, 'Attached'),
(29, NULL, '21101400337', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:37:03', '2014-11-10 07:37:03', NULL, NULL, 'Attached'),
(30, NULL, '20101400343', NULL, NULL, NULL, NULL, NULL, '2014-11-10 07:37:06', '2014-11-10 07:37:06', NULL, NULL, 'Attached'),
(31, NULL, '6101400006', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:49', '2014-11-13 09:10:49', NULL, NULL, 'Attached'),
(32, NULL, '6101400003', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:52', '2014-11-13 09:10:52', NULL, NULL, 'Attached'),
(33, NULL, '6101400007', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:56', '2014-11-13 09:10:56', NULL, NULL, 'Attached'),
(34, NULL, '6101400008', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:10:59', '2014-11-13 09:10:59', NULL, NULL, 'Attached'),
(35, NULL, '7101400013', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:02', '2014-11-13 09:11:02', NULL, NULL, 'Attached'),
(36, NULL, '7101400014', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:05', '2014-11-13 09:11:05', NULL, NULL, 'Attached'),
(37, NULL, '6101400009', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:08', '2014-11-13 09:11:08', NULL, NULL, 'Attached'),
(38, NULL, '9101400068', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:11', '2014-11-13 09:11:11', NULL, NULL, 'Attached'),
(39, NULL, '7101400012', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:14', '2014-11-13 09:11:14', NULL, NULL, 'Attached'),
(40, NULL, '7101400015', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:18', '2014-11-13 09:11:18', NULL, NULL, 'Attached'),
(41, NULL, '7101400017', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:21', '2014-11-13 09:11:21', NULL, NULL, 'Attached'),
(42, NULL, '7101400016', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:24', '2014-11-13 09:11:24', NULL, NULL, 'Attached'),
(43, NULL, '8101400020', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:27', '2014-11-13 09:11:27', NULL, NULL, 'Attached'),
(44, NULL, '8101400018', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:30', '2014-11-13 09:11:30', NULL, NULL, 'Attached'),
(45, NULL, '8101400023', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:33', '2014-11-13 09:11:33', NULL, NULL, 'Attached'),
(46, NULL, '8101400022', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:37', '2014-11-13 09:11:37', NULL, NULL, 'Attached'),
(47, NULL, '8101400030', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:40', '2014-11-13 09:11:40', NULL, NULL, 'Attached'),
(48, NULL, '8101400024', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:43', '2014-11-13 09:11:43', NULL, NULL, 'Attached'),
(49, NULL, '8101400029', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:46', '2014-11-13 09:11:46', NULL, NULL, 'Attached'),
(50, NULL, '8101400019', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:49', '2014-11-13 09:11:49', NULL, NULL, 'Attached'),
(51, NULL, '8101400021', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:53', '2014-11-13 09:11:53', NULL, NULL, 'Attached'),
(52, NULL, '8101400034', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:56', '2014-11-13 09:11:56', NULL, NULL, 'Attached'),
(53, NULL, '6101400010', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:11:59', '2014-11-13 09:11:59', NULL, NULL, 'Attached'),
(54, NULL, '8101400035', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:02', '2014-11-13 09:12:02', NULL, NULL, 'Attached'),
(55, NULL, '8101400032', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:06', '2014-11-13 09:12:06', NULL, NULL, 'Attached'),
(56, NULL, '10101400090', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:09', '2014-11-13 09:12:09', NULL, NULL, 'Attached'),
(57, NULL, '8101400039', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:12', '2014-11-13 09:12:12', NULL, NULL, 'Attached'),
(58, NULL, '8101400040', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:15', '2014-11-13 09:12:15', NULL, NULL, 'Attached'),
(59, NULL, '8101400036', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:18', '2014-11-13 09:12:18', NULL, NULL, 'Attached'),
(60, NULL, '8101400043', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:22', '2014-11-13 09:12:22', NULL, NULL, 'Attached'),
(61, NULL, '8101400042', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:25', '2014-11-13 09:12:25', NULL, NULL, 'Attached'),
(62, NULL, '8101400044', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:28', '2014-11-13 09:12:28', NULL, NULL, 'Attached'),
(63, NULL, '8101400049', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:31', '2014-11-13 09:12:31', NULL, NULL, 'Attached'),
(64, NULL, '8101400052', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:34', '2014-11-13 09:12:34', NULL, NULL, 'Attached'),
(65, NULL, '8101400050', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:37', '2014-11-13 09:12:37', NULL, NULL, 'Attached'),
(66, NULL, '9101400057', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:41', '2014-11-13 09:12:41', NULL, NULL, 'Attached'),
(67, NULL, '8101400033', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:44', '2014-11-13 09:12:44', NULL, NULL, 'Attached'),
(68, NULL, '9101400086', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:47', '2014-11-13 09:12:47', NULL, NULL, 'Attached'),
(69, NULL, '13101400120', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:53', '2014-11-13 09:12:53', NULL, NULL, 'Attached'),
(70, NULL, '13101400119', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:56', '2014-11-13 09:12:56', NULL, NULL, 'Attached'),
(71, NULL, '13101400126', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:12:59', '2014-11-13 09:12:59', NULL, NULL, 'Attached'),
(72, NULL, '13101400115', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:03', '2014-11-13 09:13:03', NULL, NULL, 'Attached'),
(73, NULL, '13101400140', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:06', '2014-11-13 09:13:06', NULL, NULL, 'Attached'),
(74, NULL, '11101400112', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:09', '2014-11-13 09:13:09', NULL, NULL, 'Attached'),
(75, NULL, '11101400110', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:12', '2014-11-13 09:13:12', NULL, NULL, 'Attached'),
(76, NULL, '13101400134', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:15', '2014-11-13 09:13:15', NULL, NULL, 'Attached'),
(77, NULL, '10101400093', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:18', '2014-11-13 09:13:18', NULL, NULL, 'Attached'),
(78, NULL, '11101400111', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:22', '2014-11-13 09:13:22', NULL, NULL, 'Attached'),
(79, NULL, '13101400135', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:25', '2014-11-13 09:13:25', NULL, NULL, 'Attached'),
(80, NULL, '13101400121', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:28', '2014-11-13 09:13:28', NULL, NULL, 'Attached'),
(81, NULL, '13101400144', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:31', '2014-11-13 09:13:31', NULL, NULL, 'Attached'),
(82, NULL, '8101400047', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:34', '2014-11-13 09:13:34', NULL, NULL, 'Attached'),
(83, NULL, '11101400099', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:37', '2014-11-13 09:13:37', NULL, NULL, 'Attached'),
(84, NULL, '11101400106', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:40', '2014-11-13 09:13:40', NULL, NULL, 'Attached'),
(85, NULL, '13101400136', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:44', '2014-11-13 09:13:44', NULL, NULL, 'Attached'),
(86, NULL, '13101400155', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:47', '2014-11-13 09:13:47', NULL, NULL, 'Attached'),
(87, NULL, '13101400153', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:50', '2014-11-13 09:13:50', NULL, NULL, 'Attached'),
(88, NULL, '13101400157', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:53', '2014-11-13 09:13:53', NULL, NULL, 'Attached'),
(89, NULL, '13101400150', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:56', '2014-11-13 09:13:56', NULL, NULL, 'Active'),
(90, NULL, '9101400073', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:13:59', '2014-11-13 09:13:59', NULL, NULL, 'Attached'),
(91, NULL, '13101400147', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:02', '2014-11-13 09:14:02', NULL, NULL, 'Attached'),
(92, NULL, '13101400146', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:06', '2014-11-13 09:14:06', NULL, NULL, 'Attached'),
(93, NULL, '13101400152', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:09', '2014-11-13 09:14:09', NULL, NULL, 'Attached'),
(94, NULL, '13101400148', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:12', '2014-11-13 09:14:12', NULL, NULL, 'Attached'),
(95, NULL, '13101400158', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:15', '2014-11-13 09:14:15', NULL, NULL, 'Attached'),
(96, NULL, '13101400151', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:18', '2014-11-13 09:14:18', NULL, NULL, 'Attached'),
(97, NULL, '13101400154', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:22', '2014-11-13 09:14:22', NULL, NULL, 'Attached'),
(98, NULL, '13101400174', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:25', '2014-11-13 09:14:25', NULL, NULL, 'Attached'),
(99, NULL, '13101400127', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:28', '2014-11-13 09:14:28', NULL, NULL, 'Attached'),
(100, NULL, '13101400149', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:31', '2014-11-13 09:14:31', NULL, NULL, 'Attached'),
(101, NULL, '14101400175', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:34', '2014-11-13 09:14:34', NULL, NULL, 'Attached'),
(102, NULL, '13101400161', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:37', '2014-11-13 09:14:37', NULL, NULL, 'Attached'),
(103, NULL, '14101400199', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:40', '2014-11-13 09:14:40', NULL, NULL, 'Attached'),
(104, NULL, '14101400201', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:44', '2014-11-13 09:14:44', NULL, NULL, 'Attached'),
(105, NULL, '14101400193', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:47', '2014-11-13 09:14:47', NULL, NULL, 'Attached'),
(106, NULL, '13101400170', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:50', '2014-11-13 09:14:50', NULL, NULL, 'Attached'),
(107, NULL, '14101400202', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:53', '2014-11-13 09:14:53', NULL, NULL, 'Attached'),
(108, NULL, '14101400180', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:56', '2014-11-13 09:14:56', NULL, NULL, 'Attached'),
(109, NULL, '13101400171', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:14:59', '2014-11-13 09:14:59', NULL, NULL, 'Attached'),
(110, NULL, '13101400166', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:03', '2014-11-13 09:15:03', NULL, NULL, 'Attached'),
(111, NULL, '14101400177', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:06', '2014-11-13 09:15:06', NULL, NULL, 'Attached'),
(112, NULL, '14101400191', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:09', '2014-11-13 09:15:09', NULL, NULL, 'Attached'),
(113, NULL, '14101400176', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:12', '2014-11-13 09:15:12', NULL, NULL, 'Attached'),
(114, NULL, '13101400168', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:15', '2014-11-13 09:15:15', NULL, NULL, 'Attached'),
(115, NULL, '14101400196', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:18', '2014-11-13 09:15:18', NULL, NULL, 'Attached'),
(116, NULL, '9101400071', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:22', '2014-11-13 09:15:22', NULL, NULL, 'Attached'),
(117, NULL, '13101400165', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:25', '2014-11-13 09:15:25', NULL, NULL, 'Attached'),
(118, NULL, '13101400162', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:28', '2014-11-13 09:15:28', NULL, NULL, 'Attached'),
(119, NULL, '13101400167', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:31', '2014-11-13 09:15:31', NULL, NULL, 'Attached'),
(120, NULL, '14101400181', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:34', '2014-11-13 09:15:34', NULL, NULL, 'Attached'),
(121, NULL, '13101400172', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:37', '2014-11-13 09:15:37', NULL, NULL, 'Attached'),
(122, NULL, '13101400145', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:41', '2014-11-13 09:15:41', NULL, NULL, 'Attached'),
(123, NULL, '14101400178', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:44', '2014-11-13 09:15:44', NULL, NULL, 'Active'),
(124, NULL, '13101400160', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:47', '2014-11-13 09:15:47', NULL, NULL, 'Attached'),
(125, NULL, '13101400164', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:50', '2014-11-13 09:15:50', NULL, NULL, 'Attached'),
(126, NULL, '13101400163', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:53', '2014-11-13 09:15:53', NULL, NULL, 'Attached'),
(127, NULL, '15101400232', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:15:56', '2014-11-13 09:15:56', NULL, NULL, 'Attached'),
(128, NULL, '15101400230', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:00', '2014-11-13 09:16:00', NULL, NULL, 'Attached'),
(129, NULL, '13101400113', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:03', '2014-11-13 09:16:03', NULL, NULL, 'Attached'),
(130, NULL, '13101400138', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:06', '2014-11-13 09:16:06', NULL, NULL, 'Attached'),
(131, NULL, '11101400094', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:09', '2014-11-13 09:16:09', NULL, NULL, 'Attached'),
(132, NULL, '13101400159', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:12', '2014-11-13 09:16:12', NULL, NULL, 'Attached'),
(133, NULL, '11101400101', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:15', '2014-11-13 09:16:15', NULL, NULL, 'Attached'),
(134, NULL, '11101400097', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:18', '2014-11-13 09:16:18', NULL, NULL, 'Attached'),
(135, NULL, '14101400187', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:22', '2014-11-13 09:16:22', NULL, NULL, 'Attached'),
(136, NULL, '15101400229', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:25', '2014-11-13 09:16:25', NULL, NULL, 'Attached'),
(137, NULL, '15101400228', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:28', '2014-11-13 09:16:28', NULL, NULL, 'Attached'),
(138, NULL, '15101400241', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:31', '2014-11-13 09:16:31', NULL, NULL, 'Attached'),
(139, NULL, '14101400203', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:34', '2014-11-13 09:16:34', NULL, NULL, 'Attached'),
(140, NULL, '15101400235', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:37', '2014-11-13 09:16:37', NULL, NULL, 'Active'),
(141, NULL, '13101400124', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:41', '2014-11-13 09:16:41', NULL, NULL, 'Attached'),
(142, NULL, '11101400109', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:44', '2014-11-13 09:16:44', NULL, NULL, 'Active'),
(143, NULL, '13101400132', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:47', '2014-11-13 09:16:47', NULL, NULL, 'Attached'),
(144, NULL, '13101400129', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:50', '2014-11-13 09:16:50', NULL, NULL, 'Active'),
(145, NULL, '13101400142', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:53', '2014-11-13 09:16:53', NULL, NULL, 'Active'),
(146, NULL, '13101400131', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:56', '2014-11-13 09:16:56', NULL, NULL, 'Attached'),
(147, NULL, '13101400123', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:16:59', '2014-11-13 09:16:59', NULL, NULL, 'Active'),
(148, NULL, '13101400118', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:02', '2014-11-13 09:17:02', NULL, NULL, 'Attached'),
(149, NULL, '13101400133', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:05', '2014-11-13 09:17:05', NULL, NULL, 'Attached'),
(150, NULL, '13101400122', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:08', '2014-11-13 09:17:08', NULL, NULL, 'Attached'),
(151, NULL, '13101400128', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:12', '2014-11-13 09:17:12', NULL, NULL, 'Attached'),
(152, NULL, '13101400125', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:15', '2014-11-13 09:17:15', NULL, NULL, 'Attached'),
(153, NULL, '13101400130', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:18', '2014-11-13 09:17:18', NULL, NULL, 'Active'),
(154, NULL, '13101400141', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:21', '2014-11-13 09:17:21', NULL, NULL, 'Active'),
(155, NULL, '15101400242', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:24', '2014-11-13 09:17:24', NULL, NULL, 'Attached'),
(156, NULL, '15101400239', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:27', '2014-11-13 09:17:27', NULL, NULL, 'Attached'),
(157, NULL, '15101400238', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:30', '2014-11-13 09:17:30', NULL, NULL, 'Attached'),
(158, NULL, '15101400243', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:33', '2014-11-13 09:17:33', NULL, NULL, 'Attached'),
(159, NULL, '15101400244', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:37', '2014-11-13 09:17:37', NULL, NULL, 'Active'),
(160, NULL, '14101400192', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:40', '2014-11-13 09:17:40', NULL, NULL, 'Attached'),
(161, NULL, '14101400190', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:43', '2014-11-13 09:17:43', NULL, NULL, 'Attached'),
(162, NULL, '15101400237', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:46', '2014-11-13 09:17:46', NULL, NULL, 'Active'),
(163, NULL, '8101400051', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:49', '2014-11-13 09:17:49', NULL, NULL, 'Attached'),
(164, NULL, '14101400198', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:52', '2014-11-13 09:17:52', NULL, NULL, 'Attached'),
(165, NULL, '15101400240', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:55', '2014-11-13 09:17:55', NULL, NULL, 'Attached'),
(166, NULL, '14101400184', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:17:59', '2014-11-13 09:17:59', NULL, NULL, 'Attached'),
(167, NULL, '14101400195', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:02', '2014-11-13 09:18:02', NULL, NULL, 'Active'),
(168, NULL, '15101400236', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:05', '2014-11-13 09:18:05', NULL, NULL, 'Active'),
(169, NULL, '14101400197', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:08', '2014-11-13 09:18:08', NULL, NULL, 'Active'),
(170, NULL, '14101400179', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:11', '2014-11-13 09:18:11', NULL, NULL, 'Attached'),
(171, NULL, '15101400234', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:14', '2014-11-13 09:18:14', NULL, NULL, 'Attached'),
(172, NULL, '14101400194', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:17', '2014-11-13 09:18:17', NULL, NULL, 'Attached'),
(173, NULL, '14101400185', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:20', '2014-11-13 09:18:20', NULL, NULL, 'Attached'),
(174, NULL, '14101400186', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:23', '2014-11-13 09:18:23', NULL, NULL, 'Attached'),
(175, NULL, '14101400200', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:27', '2014-11-13 09:18:27', NULL, NULL, 'Active'),
(176, NULL, '9101400074', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:30', '2014-11-13 09:18:30', NULL, NULL, 'Attached'),
(177, NULL, '14101400183', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:33', '2014-11-13 09:18:33', NULL, NULL, 'Active'),
(178, NULL, '13101400173', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:36', '2014-11-13 09:18:36', NULL, NULL, 'Attached'),
(179, NULL, '9101400062', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:39', '2014-11-13 09:18:39', NULL, NULL, 'Attached'),
(180, NULL, '14101400204', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:42', '2014-11-13 09:18:42', NULL, NULL, 'Attached'),
(181, NULL, '17101400285', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:45', '2014-11-13 09:18:45', NULL, NULL, 'Attached'),
(182, NULL, '15101400226', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:48', '2014-11-13 09:18:48', NULL, NULL, 'Attached'),
(183, NULL, '16101400256', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:52', '2014-11-13 09:18:52', NULL, NULL, 'Attached'),
(184, NULL, '15101400216', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:55', '2014-11-13 09:18:55', NULL, NULL, 'Attached'),
(185, NULL, '15101400218', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:18:58', '2014-11-13 09:18:58', NULL, NULL, 'Attached'),
(186, NULL, '13101400156', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:01', '2014-11-13 09:19:01', NULL, NULL, 'Attached'),
(187, NULL, '16101400262', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:04', '2014-11-13 09:19:04', NULL, NULL, 'Attached'),
(188, NULL, '15101400224', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:07', '2014-11-13 09:19:07', NULL, NULL, 'Attached'),
(189, NULL, '15101400207', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:10', '2014-11-13 09:19:10', NULL, NULL, 'Attached'),
(190, NULL, '15101400212', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:14', '2014-11-13 09:19:14', NULL, NULL, 'Attached'),
(191, NULL, '15101400211', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:17', '2014-11-13 09:19:17', NULL, NULL, 'Active'),
(192, NULL, '15101400220', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:20', '2014-11-13 09:19:20', NULL, NULL, 'Attached'),
(193, NULL, '15101400206', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:23', '2014-11-13 09:19:23', NULL, NULL, 'Attached'),
(194, NULL, '15101400225', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:26', '2014-11-13 09:19:26', NULL, NULL, 'Attached'),
(195, NULL, '16101400252', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:29', '2014-11-13 09:19:29', NULL, NULL, 'Active'),
(196, NULL, '15101400222', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:32', '2014-11-13 09:19:32', NULL, NULL, 'Attached'),
(197, NULL, '15101400217', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:36', '2014-11-13 09:19:36', NULL, NULL, 'Attached'),
(198, NULL, '20101400295', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:39', '2014-11-13 09:19:39', NULL, NULL, 'Attached'),
(199, NULL, '20101400296', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:42', '2014-11-13 09:19:42', NULL, NULL, 'Attached'),
(200, NULL, '17101400281', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:45', '2014-11-13 09:19:45', NULL, NULL, 'Attached'),
(201, NULL, '16101400267', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:48', '2014-11-13 09:19:48', NULL, NULL, 'Attached'),
(202, NULL, '15101400208', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:51', '2014-11-13 09:19:51', NULL, NULL, 'Attached'),
(203, NULL, '16101400261', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:54', '2014-11-13 09:19:54', NULL, NULL, 'Attached'),
(204, NULL, '15101400213', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:19:58', '2014-11-13 09:19:58', NULL, NULL, 'Attached'),
(205, NULL, '15101400215', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:01', '2014-11-13 09:20:01', NULL, NULL, 'Attached'),
(206, NULL, '15101400233', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:04', '2014-11-13 09:20:04', NULL, NULL, 'Attached'),
(207, NULL, '16101400271', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:07', '2014-11-13 09:20:07', NULL, NULL, 'Attached'),
(208, NULL, '16101400266', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:10', '2014-11-13 09:20:10', NULL, NULL, 'Attached'),
(209, NULL, '16101400250', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:13', '2014-11-13 09:20:13', NULL, NULL, 'Attached'),
(210, NULL, '21101400355', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:17', '2014-11-13 09:20:17', NULL, NULL, 'Attached'),
(211, NULL, '16101400251', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:20', '2014-11-13 09:20:20', NULL, NULL, 'Attached'),
(212, NULL, '15101400223', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:23', '2014-11-13 09:20:23', NULL, NULL, 'Attached'),
(213, NULL, '16101400257', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:26', '2014-11-13 09:20:26', NULL, NULL, 'Attached'),
(214, NULL, '17101400280', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:29', '2014-11-13 09:20:29', NULL, NULL, 'Attached'),
(215, NULL, '17101400282', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:32', '2014-11-13 09:20:32', NULL, NULL, 'Attached'),
(216, NULL, '16101400272', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:35', '2014-11-13 09:20:35', NULL, NULL, 'Attached'),
(217, NULL, '15101400245', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:38', '2014-11-13 09:20:38', NULL, NULL, 'Attached'),
(218, NULL, '20101400297', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:42', '2014-11-13 09:20:42', NULL, NULL, 'Attached'),
(219, NULL, '16101400269', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:45', '2014-11-13 09:20:45', NULL, NULL, 'Attached'),
(220, NULL, '16101400246', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:48', '2014-11-13 09:20:48', NULL, NULL, 'Attached'),
(221, NULL, '16101400259', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:51', '2014-11-13 09:20:51', NULL, NULL, 'Attached'),
(222, NULL, '16101400263', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:54', '2014-11-13 09:20:54', NULL, NULL, 'Attached'),
(223, NULL, '20101400301', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:20:57', '2014-11-13 09:20:57', NULL, NULL, 'Attached'),
(224, NULL, '17101400284', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:00', '2014-11-13 09:21:00', NULL, NULL, 'Attached'),
(225, NULL, '20101400300', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:03', '2014-11-13 09:21:03', NULL, NULL, 'Attached'),
(226, NULL, '20101400302', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:07', '2014-11-13 09:21:07', NULL, NULL, 'Attached'),
(227, NULL, '15101400221', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:10', '2014-11-13 09:21:10', NULL, NULL, 'Active'),
(228, NULL, '16101400268', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:13', '2014-11-13 09:21:13', NULL, NULL, 'Active'),
(229, NULL, '16101400253', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:16', '2014-11-13 09:21:16', NULL, NULL, 'Active'),
(230, NULL, '15101400214', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:19', '2014-11-13 09:21:19', NULL, NULL, 'Attached'),
(231, NULL, '20101400313', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:22', '2014-11-13 09:21:22', NULL, NULL, 'Active'),
(232, NULL, '20101400327', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:25', '2014-11-13 09:21:25', NULL, NULL, 'Attached'),
(233, NULL, '20101400328', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:28', '2014-11-13 09:21:28', NULL, NULL, 'Attached'),
(234, NULL, '21101400336', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:31', '2014-11-13 09:21:31', NULL, NULL, 'Attached'),
(235, NULL, '21101400347', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:34', '2014-11-13 09:21:34', NULL, NULL, 'Attached'),
(236, NULL, '20101400331', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:38', '2014-11-13 09:21:38', NULL, NULL, 'Attached'),
(237, NULL, '20101400332', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:41', '2014-11-13 09:21:41', NULL, NULL, 'Attached'),
(238, NULL, '20101400329', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:44', '2014-11-13 09:21:44', NULL, NULL, 'Attached'),
(239, NULL, '20101400326', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:47', '2014-11-13 09:21:47', NULL, NULL, 'Attached'),
(241, NULL, '21101400346', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:53', '2014-11-13 09:21:53', NULL, NULL, 'Attached'),
(242, NULL, '22101400357', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:21:56', '2014-11-13 09:21:56', NULL, NULL, 'Attached'),
(243, NULL, '21101400356', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:00', '2014-11-13 09:22:00', NULL, NULL, 'Attached'),
(244, NULL, '14101400189', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:03', '2014-11-13 09:22:03', NULL, NULL, 'Active'),
(245, NULL, '16101400273', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:06', '2014-11-13 09:22:06', NULL, NULL, 'Attached'),
(246, NULL, '16101400264', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:09', '2014-11-13 09:22:09', NULL, NULL, 'Attached'),
(247, NULL, '15101400209', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:12', '2014-11-13 09:22:12', NULL, NULL, 'Attached'),
(248, NULL, '15101400210', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:15', '2014-11-13 09:22:15', NULL, NULL, 'Attached'),
(249, NULL, '16101400249', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:18', '2014-11-13 09:22:18', NULL, NULL, 'Attached'),
(250, NULL, '16101400247', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:21', '2014-11-13 09:22:21', NULL, NULL, 'Active'),
(251, NULL, '16101400275', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:24', '2014-11-13 09:22:24', NULL, NULL, 'Attached'),
(252, NULL, '16101400255', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:27', '2014-11-13 09:22:27', NULL, NULL, 'Attached'),
(253, NULL, '16101400258', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:31', '2014-11-13 09:22:31', NULL, NULL, 'Attached'),
(254, NULL, '16101400254', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:34', '2014-11-13 09:22:34', NULL, NULL, 'Attached'),
(255, NULL, '16101400260', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:37', '2014-11-13 09:22:37', NULL, NULL, 'Attached'),
(256, NULL, '16101400248', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:40', '2014-11-13 09:22:40', NULL, NULL, 'Active'),
(257, NULL, '21101400353', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:43', '2014-11-13 09:22:43', NULL, NULL, 'Attached'),
(258, NULL, '16101400274', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:46', '2014-11-13 09:22:46', NULL, NULL, 'Attached'),
(259, NULL, '21101400341', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:49', '2014-11-13 09:22:49', NULL, NULL, 'Attached'),
(260, NULL, '21101400340', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:52', '2014-11-13 09:22:52', NULL, NULL, 'Attached'),
(261, NULL, '21101400352', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:56', '2014-11-13 09:22:56', NULL, NULL, 'Attached'),
(262, NULL, '21101400342', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:22:59', '2014-11-13 09:22:59', NULL, NULL, 'Attached'),
(263, NULL, '20101400298', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:02', '2014-11-13 09:23:02', NULL, NULL, 'Attached'),
(264, NULL, '20101400324', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:05', '2014-11-13 09:23:05', NULL, NULL, 'Active'),
(265, NULL, '21101400339', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:08', '2014-11-13 09:23:08', NULL, NULL, 'Attached'),
(266, NULL, '17101400279', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:11', '2014-11-13 09:23:11', NULL, NULL, 'Active'),
(267, NULL, '21101400345', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:14', '2014-11-13 09:23:14', NULL, NULL, 'Active'),
(268, NULL, '21101400333', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:17', '2014-11-13 09:23:17', NULL, NULL, 'Active'),
(269, NULL, '21101400349', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:20', '2014-11-13 09:23:20', NULL, NULL, 'Attached'),
(270, NULL, '21101400351', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:23', '2014-11-13 09:23:23', NULL, NULL, 'Active'),
(271, NULL, '21101400335', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:26', '2014-11-13 09:23:26', NULL, NULL, 'Attached'),
(272, NULL, '21101400334', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:29', '2014-11-13 09:23:29', NULL, NULL, 'Attached'),
(273, NULL, '15101400227', NULL, NULL, NULL, NULL, NULL, '2014-11-13 09:23:33', '2014-11-13 09:23:33', NULL, NULL, 'Attached'),
(274, '', '13111400394', '', '', '', '', '', '2014-11-13 10:26:37', '2014-11-13 10:26:37', 5, NULL, 'Attached');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_part`
--

CREATE TABLE IF NOT EXISTS `tbl_part` (
`i_part_id` int(11) NOT NULL,
  `v_part_name` varchar(200) DEFAULT NULL,
  `v_part_type` varchar(50) DEFAULT NULL,
  `v_part_sn` varchar(100) NOT NULL,
  `v_part_text1` varchar(20) DEFAULT NULL,
  `v_part_text2` varchar(200) DEFAULT NULL,
  `v_part_text3` varchar(200) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) DEFAULT NULL,
  `i_user_modify` int(11) DEFAULT NULL,
  `v_status` varchar(50) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=287 ;

--
-- Dumping data for table `tbl_part`
--

INSERT INTO `tbl_part` (`i_part_id`, `v_part_name`, `v_part_type`, `v_part_sn`, `v_part_text1`, `v_part_text2`, `v_part_text3`, `stok`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(277, 'Eco', 'type', 'sn', '', '', '', 8, '2014-12-04 07:51:01', '2014-12-16 04:01:49', 6, NULL, 'Active'),
(278, 'Service', 'Only Service', '99999', '', '', '', 99997, '2014-12-15 07:51:12', '2014-12-16 04:01:49', 5, NULL, 'Active'),
(279, 'Slot USB', '', '', '', '', '', 10, '2014-12-15 07:53:42', '2014-12-15 07:53:42', 5, NULL, 'Active'),
(281, 'Slot SD Card', '', '', '', '', '', 10, '2014-12-15 07:55:40', '2014-12-15 07:55:40', 5, NULL, 'Active'),
(282, 'Power ', '', '', '', '', '', 10, '2014-12-15 07:55:58', '2014-12-15 07:55:58', 5, NULL, 'Active'),
(283, 'Push Button', '', '', '', '', '', 9, '2014-12-15 07:56:19', '2014-12-16 04:00:42', 5, NULL, 'Active'),
(284, 'Push Botton Restart', 'Push Botton Restart', '', '', '', '', 9, '2014-12-15 07:56:38', '2014-12-16 04:00:42', 5, NULL, 'Active'),
(285, 'Switch Touch Screen', '', '', '', '', '', 10, '2014-12-15 07:56:50', '2014-12-15 07:56:50', 5, NULL, 'Active'),
(286, 'Battery 3.5V', '', '', '', '', '', 10, '2014-12-15 07:57:21', '2014-12-15 07:57:21', 5, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `i_product_id` varchar(15) NOT NULL,
  `i_modem_id` int(11) NOT NULL,
  `i_simcard_id` int(11) NOT NULL,
  `i_obu_id` int(11) NOT NULL,
  `i_dds_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_modify` int(11) NOT NULL,
  `v_status` varchar(50) NOT NULL,
  `v_remarks` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`i_product_id`, `i_modem_id`, `i_simcard_id`, `i_obu_id`, `i_dds_id`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`, `v_remarks`) VALUES
('D01-00001', 1, 1, 1, 1, '2014-11-10 07:35:34', '2014-12-04 03:22:05', 0, 0, 'Service', ''),
('D01-00002', 2, 2, 2, 2, '2014-11-10 07:35:37', '2014-12-04 03:25:46', 0, 0, 'Service', ''),
('D01-00003', 3, 3, 3, 3, '2014-11-10 07:35:40', '2014-11-10 07:35:40', 0, 0, 'Active', ''),
('D01-00004', 4, 4, 4, 4, '2014-11-10 07:35:43', '2014-11-10 07:35:43', 0, 0, 'Active', ''),
('D01-00005', 5, 5, 5, 5, '2014-11-10 07:35:46', '2014-11-10 07:35:46', 0, 0, 'Active', ''),
('D01-00006', 6, 6, 6, 6, '2014-11-10 07:35:50', '2014-11-10 07:35:50', 0, 0, 'Active', ''),
('D01-00007', 7, 7, 7, 7, '2014-11-10 07:35:53', '2014-11-10 07:35:53', 0, 0, 'Active', ''),
('D01-00008', 8, 8, 8, 8, '2014-11-10 07:35:56', '2014-12-04 03:24:29', 0, 0, 'Service', ''),
('D01-00009', 9, 9, 9, 9, '2014-11-10 07:35:59', '2014-11-10 07:35:59', 0, 0, 'Active', ''),
('D01-00010', 10, 10, 10, 10, '2014-11-10 07:36:02', '2014-11-25 03:25:28', 0, 0, 'Express', ''),
('D01-00011', 11, 11, 11, 11, '2014-11-10 07:36:06', '2014-11-10 07:36:06', 0, 0, 'Active', ''),
('D01-00012', 12, 12, 12, 12, '2014-11-10 07:36:09', '2014-11-10 07:36:09', 0, 0, 'Active', ''),
('D01-00013', 13, 13, 13, 13, '2014-11-10 07:36:12', '2014-11-10 07:36:12', 0, 0, 'Active', ''),
('D01-00014', 14, 14, 14, 14, '2014-11-10 07:36:15', '2014-11-10 07:36:15', 0, 0, 'Active', ''),
('D01-00015', 15, 15, 15, 15, '2014-11-10 07:36:18', '2014-11-10 07:36:18', 0, 0, 'Active', ''),
('D01-00016', 16, 16, 16, 16, '2014-11-10 07:36:22', '2014-11-10 07:36:22', 0, 0, 'Active', ''),
('D01-00017', 17, 17, 17, 17, '2014-11-10 07:36:25', '2014-11-10 07:36:25', 0, 0, 'Active', ''),
('D01-00018', 18, 18, 18, 18, '2014-11-10 07:36:28', '2014-11-10 07:36:28', 0, 0, 'Active', ''),
('D01-00019', 19, 19, 19, 19, '2014-11-10 07:36:31', '2014-11-10 07:36:31', 0, 0, 'Active', ''),
('D01-00020', 20, 20, 20, 20, '2014-11-10 07:36:34', '2014-11-10 07:36:34', 0, 0, 'Active', ''),
('D01-00021', 21, 21, 21, 21, '2014-11-10 07:36:37', '2014-11-10 07:36:37', 0, 0, 'Active', ''),
('D01-00022', 22, 22, 22, 22, '2014-11-10 07:36:40', '2014-11-10 07:36:40', 0, 0, 'Active', ''),
('D01-00023', 23, 23, 23, 23, '2014-11-10 07:36:44', '2014-11-10 07:36:44', 0, 0, 'Active', ''),
('D01-00024', 24, 24, 24, 24, '2014-11-10 07:36:47', '2014-11-10 07:36:47', 0, 0, 'Active', ''),
('D01-00025', 25, 25, 25, 25, '2014-11-10 07:36:50', '2014-11-10 07:36:50', 0, 0, 'Active', ''),
('D01-00026', 26, 26, 26, 26, '2014-11-10 07:36:53', '2014-11-10 07:36:53', 0, 0, 'Active', ''),
('D01-00027', 27, 27, 27, 27, '2014-11-10 07:36:56', '2014-11-10 07:36:56', 0, 0, 'Active', ''),
('D01-00028', 28, 28, 28, 28, '2014-11-10 07:36:59', '2014-11-10 07:36:59', 0, 0, 'Active', ''),
('D01-00029', 29, 29, 29, 29, '2014-11-10 07:37:03', '2014-11-10 07:37:03', 0, 0, 'Active', ''),
('D01-00030', 30, 30, 30, 30, '2014-11-10 07:37:06', '2014-11-10 07:37:06', 0, 0, 'Active', ''),
('D01-00031', 31, 0, 31, 32, '2014-11-13 09:10:49', '2014-11-13 09:10:49', 0, 0, 'Active', ''),
('D01-00032', 32, 0, 32, 33, '2014-11-13 09:10:52', '2014-11-13 09:10:52', 0, 0, 'Active', ''),
('D01-00033', 33, 0, 33, 34, '2014-11-13 09:10:56', '2014-11-13 09:10:56', 0, 0, 'Active', ''),
('D01-00034', 34, 0, 34, 35, '2014-11-13 09:10:59', '2014-11-13 09:10:59', 0, 0, 'Active', ''),
('D01-00035', 35, 0, 35, 36, '2014-11-13 09:11:02', '2014-11-13 09:11:02', 0, 0, 'Active', ''),
('D01-00036', 36, 0, 36, 37, '2014-11-13 09:11:05', '2014-11-13 09:11:05', 0, 0, 'Active', ''),
('D01-00037', 37, 0, 37, 38, '2014-11-13 09:11:08', '2014-11-13 09:11:08', 0, 0, 'Active', ''),
('D01-00038', 38, 0, 38, 39, '2014-11-13 09:11:11', '2014-11-13 09:11:11', 0, 0, 'Active', ''),
('D01-00039', 39, 0, 39, 40, '2014-11-13 09:11:14', '2014-11-13 09:11:14', 0, 0, 'Active', ''),
('D01-00040', 40, 0, 40, 41, '2014-11-13 09:11:18', '2014-11-13 09:11:18', 0, 0, 'Active', ''),
('D01-00041', 41, 0, 41, 42, '2014-11-13 09:11:21', '2014-11-13 09:11:21', 0, 0, 'Active', ''),
('D01-00042', 42, 0, 42, 43, '2014-11-13 09:11:24', '2014-11-13 09:11:24', 0, 0, 'Active', ''),
('D01-00043', 43, 0, 43, 44, '2014-11-13 09:11:27', '2014-11-13 09:11:27', 0, 0, 'Active', ''),
('D01-00044', 44, 0, 44, 45, '2014-11-13 09:11:30', '2014-11-13 09:11:30', 0, 0, 'Active', ''),
('D01-00045', 45, 0, 45, 46, '2014-11-13 09:11:33', '2014-11-13 09:11:33', 0, 0, 'Active', ''),
('D01-00046', 46, 0, 46, 47, '2014-11-13 09:11:37', '2014-11-13 09:11:37', 0, 0, 'Active', ''),
('D01-00047', 47, 0, 47, 48, '2014-11-13 09:11:40', '2014-11-13 09:11:40', 0, 0, 'Active', ''),
('D01-00048', 48, 0, 48, 49, '2014-11-13 09:11:43', '2014-11-13 09:11:43', 0, 0, 'Active', ''),
('D01-00049', 49, 0, 49, 50, '2014-11-13 09:11:46', '2014-11-13 09:11:46', 0, 0, 'Active', ''),
('D01-00050', 50, 0, 50, 51, '2014-11-13 09:11:49', '2014-11-13 09:11:49', 0, 0, 'Active', ''),
('D01-00051', 51, 0, 51, 52, '2014-11-13 09:11:53', '2014-11-13 09:11:53', 0, 0, 'Active', ''),
('D01-00052', 52, 0, 52, 53, '2014-11-13 09:11:56', '2014-11-13 09:11:56', 0, 0, 'Active', ''),
('D01-00053', 53, 0, 53, 54, '2014-11-13 09:11:59', '2014-11-13 09:11:59', 0, 0, 'Active', ''),
('D01-00054', 54, 0, 54, 55, '2014-11-13 09:12:02', '2014-11-13 09:12:02', 0, 0, 'Active', ''),
('D01-00055', 55, 0, 55, 56, '2014-11-13 09:12:06', '2014-11-13 09:12:06', 0, 0, 'Active', ''),
('D01-00056', 56, 0, 56, 57, '2014-11-13 09:12:09', '2014-11-13 09:12:09', 0, 0, 'Active', ''),
('D01-00057', 57, 0, 57, 58, '2014-11-13 09:12:12', '2014-11-13 09:12:12', 0, 0, 'Active', ''),
('D01-00058', 58, 0, 58, 59, '2014-11-13 09:12:15', '2014-11-13 09:12:15', 0, 0, 'Active', ''),
('D01-00059', 59, 0, 59, 60, '2014-11-13 09:12:18', '2014-11-13 09:12:18', 0, 0, 'Active', ''),
('D01-00060', 60, 0, 60, 61, '2014-11-13 09:12:22', '2014-11-13 09:12:22', 0, 0, 'Active', ''),
('D01-00061', 61, 0, 61, 62, '2014-11-13 09:12:25', '2014-11-13 09:12:25', 0, 0, 'Active', ''),
('D01-00062', 62, 0, 62, 63, '2014-11-13 09:12:28', '2014-11-13 09:12:28', 0, 0, 'Active', ''),
('D01-00063', 63, 0, 63, 64, '2014-11-13 09:12:31', '2014-11-13 09:12:31', 0, 0, 'Active', ''),
('D01-00064', 64, 0, 64, 65, '2014-11-13 09:12:34', '2014-11-13 09:12:34', 0, 0, 'Active', ''),
('D01-00065', 65, 0, 65, 66, '2014-11-13 09:12:37', '2014-11-13 09:12:37', 0, 0, 'Active', ''),
('D01-00066', 66, 0, 66, 67, '2014-11-13 09:12:41', '2014-11-13 09:12:41', 0, 0, 'Active', ''),
('D01-00067', 67, 0, 67, 68, '2014-11-13 09:12:44', '2014-11-13 09:12:44', 0, 0, 'Active', ''),
('D01-00068', 68, 0, 68, 69, '2014-11-13 09:12:47', '2014-11-13 09:12:47', 0, 0, 'Active', ''),
('D01-00069', 69, 0, 69, 71, '2014-11-13 09:12:53', '2014-11-13 09:12:53', 0, 0, 'Active', ''),
('D01-00070', 70, 0, 70, 72, '2014-11-13 09:12:56', '2014-11-13 09:12:56', 0, 0, 'Active', ''),
('D01-00071', 71, 0, 71, 73, '2014-11-13 09:12:59', '2014-11-13 09:12:59', 0, 0, 'Active', ''),
('D01-00072', 72, 0, 72, 74, '2014-11-13 09:13:03', '2014-11-13 09:13:03', 0, 0, 'Active', ''),
('D01-00073', 73, 0, 73, 75, '2014-11-13 09:13:06', '2014-11-13 09:13:06', 0, 0, 'Active', ''),
('D01-00074', 74, 0, 74, 76, '2014-11-13 09:13:09', '2014-11-13 09:13:09', 0, 0, 'Active', ''),
('D01-00075', 75, 0, 75, 77, '2014-11-13 09:13:12', '2014-11-13 09:13:12', 0, 0, 'Active', ''),
('D01-00076', 76, 0, 76, 78, '2014-11-13 09:13:15', '2014-11-13 09:13:15', 0, 0, 'Active', ''),
('D01-00077', 77, 0, 77, 79, '2014-11-13 09:13:18', '2014-11-13 09:13:18', 0, 0, 'Active', ''),
('D01-00078', 78, 0, 78, 80, '2014-11-13 09:13:22', '2014-11-13 09:13:22', 0, 0, 'Active', ''),
('D01-00079', 79, 0, 79, 81, '2014-11-13 09:13:25', '2014-11-13 09:13:25', 0, 0, 'Active', ''),
('D01-00080', 80, 0, 80, 82, '2014-11-13 09:13:28', '2014-11-13 09:13:28', 0, 0, 'Active', ''),
('D01-00081', 81, 0, 81, 83, '2014-11-13 09:13:31', '2014-11-13 09:13:31', 0, 0, 'Active', ''),
('D01-00082', 82, 0, 82, 84, '2014-11-13 09:13:34', '2014-11-13 09:13:34', 0, 0, 'Active', ''),
('D01-00083', 83, 0, 83, 85, '2014-11-13 09:13:37', '2014-11-13 09:13:37', 0, 0, 'Active', ''),
('D01-00084', 84, 0, 84, 86, '2014-11-13 09:13:40', '2014-11-13 09:13:40', 0, 0, 'Active', ''),
('D01-00085', 85, 0, 85, 87, '2014-11-13 09:13:44', '2014-11-13 09:13:44', 0, 0, 'Active', ''),
('D01-00086', 86, 0, 86, 88, '2014-11-13 09:13:47', '2014-11-13 09:13:47', 0, 0, 'Active', ''),
('D01-00087', 87, 0, 87, 89, '2014-11-13 09:13:50', '2014-11-13 09:13:50', 0, 0, 'Active', ''),
('D01-00088', 88, 0, 88, 90, '2014-11-13 09:13:53', '2014-11-13 09:13:53', 0, 0, 'Active', ''),
('D01-00089', 89, 0, 90, 92, '2014-11-13 09:13:59', '2014-11-13 09:13:59', 0, 0, 'Active', ''),
('D01-00090', 90, 0, 91, 93, '2014-11-13 09:14:02', '2014-11-13 09:14:02', 0, 0, 'Active', ''),
('D01-00091', 91, 0, 92, 94, '2014-11-13 09:14:06', '2014-11-13 09:14:06', 0, 0, 'Active', ''),
('D01-00092', 92, 0, 93, 95, '2014-11-13 09:14:09', '2014-11-13 09:14:09', 0, 0, 'Active', ''),
('D01-00093', 93, 0, 94, 96, '2014-11-13 09:14:12', '2014-11-13 09:14:12', 0, 0, 'Active', ''),
('D01-00094', 94, 0, 95, 97, '2014-11-13 09:14:15', '2014-11-13 09:14:15', 0, 0, 'Active', ''),
('D01-00095', 95, 0, 96, 98, '2014-11-13 09:14:18', '2014-11-13 09:14:18', 0, 0, 'Active', ''),
('D01-00096', 96, 0, 97, 99, '2014-11-13 09:14:22', '2014-11-13 09:14:22', 0, 0, 'Active', ''),
('D01-00097', 97, 0, 98, 100, '2014-11-13 09:14:25', '2014-11-13 09:14:25', 0, 0, 'Active', ''),
('D01-00098', 98, 0, 99, 101, '2014-11-13 09:14:28', '2014-11-13 09:14:28', 0, 0, 'Active', ''),
('D01-00099', 99, 0, 100, 102, '2014-11-13 09:14:31', '2014-11-13 09:14:31', 0, 0, 'Active', ''),
('D01-00100', 100, 0, 101, 103, '2014-11-13 09:14:34', '2014-11-13 09:14:34', 0, 0, 'Active', ''),
('D01-00101', 101, 0, 102, 104, '2014-11-13 09:14:37', '2014-11-13 09:14:37', 0, 0, 'Active', ''),
('D01-00102', 102, 0, 103, 105, '2014-11-13 09:14:40', '2014-11-13 09:14:40', 0, 0, 'Active', ''),
('D01-00103', 103, 0, 104, 106, '2014-11-13 09:14:44', '2014-11-13 09:14:44', 0, 0, 'Active', ''),
('D01-00104', 104, 0, 105, 107, '2014-11-13 09:14:47', '2014-11-13 09:14:47', 0, 0, 'Active', ''),
('D01-00105', 105, 0, 106, 108, '2014-11-13 09:14:50', '2014-11-13 09:14:50', 0, 0, 'Active', ''),
('D01-00106', 106, 0, 107, 109, '2014-11-13 09:14:53', '2014-11-13 09:14:53', 0, 0, 'Active', ''),
('D01-00107', 107, 0, 108, 110, '2014-11-13 09:14:56', '2014-11-13 09:14:56', 0, 0, 'Active', ''),
('D01-00108', 108, 0, 109, 111, '2014-11-13 09:14:59', '2014-11-13 09:14:59', 0, 0, 'Active', ''),
('D01-00109', 109, 0, 110, 112, '2014-11-13 09:15:03', '2014-11-13 09:15:03', 0, 0, 'Active', ''),
('D01-00110', 110, 0, 111, 113, '2014-11-13 09:15:06', '2014-11-13 09:15:06', 0, 0, 'Active', ''),
('D01-00111', 111, 0, 112, 114, '2014-11-13 09:15:09', '2014-11-13 09:15:09', 0, 0, 'Active', ''),
('D01-00112', 112, 0, 113, 115, '2014-11-13 09:15:12', '2014-11-13 09:15:12', 0, 0, 'Active', ''),
('D01-00113', 113, 0, 114, 116, '2014-11-13 09:15:15', '2014-11-13 09:15:15', 0, 0, 'Active', ''),
('D01-00114', 114, 0, 115, 117, '2014-11-13 09:15:18', '2014-11-13 09:15:18', 0, 0, 'Active', ''),
('D01-00115', 115, 0, 116, 118, '2014-11-13 09:15:22', '2014-11-13 09:15:22', 0, 0, 'Active', ''),
('D01-00116', 116, 0, 117, 119, '2014-11-13 09:15:25', '2014-11-13 09:15:25', 0, 0, 'Active', ''),
('D01-00117', 117, 0, 118, 120, '2014-11-13 09:15:28', '2014-11-13 09:15:28', 0, 0, 'Active', ''),
('D01-00118', 118, 0, 119, 121, '2014-11-13 09:15:31', '2014-11-13 09:15:31', 0, 0, 'Active', ''),
('D01-00119', 119, 0, 120, 122, '2014-11-13 09:15:34', '2014-11-13 09:15:34', 0, 0, 'Active', ''),
('D01-00120', 120, 0, 121, 123, '2014-11-13 09:15:37', '2014-11-13 09:15:37', 0, 0, 'Active', ''),
('D01-00121', 121, 0, 122, 124, '2014-11-13 09:15:41', '2014-11-13 09:15:41', 0, 0, 'Active', ''),
('D01-00122', 122, 0, 124, 126, '2014-11-13 09:15:47', '2014-11-13 09:15:47', 0, 0, 'Active', ''),
('D01-00123', 123, 0, 125, 127, '2014-11-13 09:15:50', '2014-11-13 09:15:50', 0, 0, 'Active', ''),
('D01-00124', 124, 0, 126, 128, '2014-11-13 09:15:53', '2014-11-13 09:15:53', 0, 0, 'Active', ''),
('D01-00125', 125, 0, 127, 129, '2014-11-13 09:15:56', '2014-11-13 09:15:56', 0, 0, 'Active', ''),
('D01-00126', 126, 0, 128, 130, '2014-11-13 09:16:00', '2014-11-13 09:16:00', 0, 0, 'Active', ''),
('D01-00127', 127, 0, 129, 131, '2014-11-13 09:16:03', '2014-11-13 09:16:03', 0, 0, 'Active', ''),
('D01-00128', 128, 0, 130, 132, '2014-11-13 09:16:06', '2014-11-13 09:16:06', 0, 0, 'Active', ''),
('D01-00129', 129, 0, 131, 133, '2014-11-13 09:16:09', '2014-11-13 09:16:09', 0, 0, 'Active', ''),
('D01-00130', 130, 0, 132, 134, '2014-11-13 09:16:12', '2014-11-13 09:16:12', 0, 0, 'Active', ''),
('D01-00131', 131, 0, 133, 135, '2014-11-13 09:16:15', '2014-11-13 09:16:15', 0, 0, 'Active', ''),
('D01-00132', 132, 0, 134, 136, '2014-11-13 09:16:18', '2014-11-13 09:16:18', 0, 0, 'Active', ''),
('D01-00133', 133, 0, 135, 137, '2014-11-13 09:16:22', '2014-11-13 09:16:22', 0, 0, 'Active', ''),
('D01-00134', 134, 0, 136, 138, '2014-11-13 09:16:25', '2014-11-13 09:16:25', 0, 0, 'Active', ''),
('D01-00135', 135, 0, 137, 139, '2014-11-13 09:16:28', '2014-11-13 09:16:28', 0, 0, 'Active', ''),
('D01-00136', 136, 0, 138, 140, '2014-11-13 09:16:31', '2014-11-13 09:16:31', 0, 0, 'Active', ''),
('D01-00137', 137, 0, 139, 141, '2014-11-13 09:16:34', '2014-11-13 09:16:34', 0, 0, 'Active', ''),
('D01-00138', 138, 0, 141, 143, '2014-11-13 09:16:41', '2014-11-13 09:16:41', 0, 0, 'Active', ''),
('D01-00139', 139, 0, 143, 145, '2014-11-13 09:16:47', '2014-11-13 09:16:47', 0, 0, 'Active', ''),
('D01-00140', 140, 0, 146, 148, '2014-11-13 09:16:56', '2014-11-13 09:16:56', 0, 0, 'Active', ''),
('D01-00141', 141, 0, 148, 150, '2014-11-13 09:17:02', '2014-11-13 09:17:02', 0, 0, 'Active', ''),
('D01-00142', 142, 0, 149, 151, '2014-11-13 09:17:05', '2014-11-13 09:17:05', 0, 0, 'Active', ''),
('D01-00143', 143, 0, 150, 152, '2014-11-13 09:17:08', '2014-11-13 09:17:08', 0, 0, 'Active', ''),
('D01-00144', 144, 0, 151, 153, '2014-11-13 09:17:12', '2014-11-13 09:17:12', 0, 0, 'Active', ''),
('D01-00145', 145, 0, 152, 154, '2014-11-13 09:17:15', '2014-11-13 09:17:15', 0, 0, 'Active', ''),
('D01-00146', 146, 0, 155, 157, '2014-11-13 09:17:24', '2014-11-13 09:17:24', 0, 0, 'Active', ''),
('D01-00147', 147, 0, 156, 158, '2014-11-13 09:17:27', '2014-11-13 09:17:27', 0, 0, 'Active', ''),
('D01-00148', 148, 0, 157, 159, '2014-11-13 09:17:30', '2014-11-13 09:17:30', 0, 0, 'Active', ''),
('D01-00149', 149, 0, 158, 160, '2014-11-13 09:17:33', '2014-11-13 09:17:33', 0, 0, 'Active', ''),
('D01-00150', 150, 0, 160, 162, '2014-11-13 09:17:40', '2014-11-13 09:17:40', 0, 0, 'Active', ''),
('D01-00151', 151, 0, 161, 163, '2014-11-13 09:17:43', '2014-11-13 09:17:43', 0, 0, 'Active', ''),
('D01-00152', 152, 0, 163, 165, '2014-11-13 09:17:49', '2014-11-13 09:17:49', 0, 0, 'Active', ''),
('D01-00153', 153, 0, 164, 166, '2014-11-13 09:17:52', '2014-11-13 09:17:52', 0, 0, 'Active', ''),
('D01-00154', 154, 0, 165, 167, '2014-11-13 09:17:55', '2014-11-13 09:17:55', 0, 0, 'Active', ''),
('D01-00155', 155, 0, 166, 168, '2014-11-13 09:17:59', '2014-11-13 09:17:59', 0, 0, 'Active', ''),
('D01-00156', 156, 0, 170, 172, '2014-11-13 09:18:11', '2014-11-13 09:18:11', 0, 0, 'Active', ''),
('D01-00157', 157, 0, 171, 173, '2014-11-13 09:18:14', '2014-11-13 09:18:14', 0, 0, 'Active', ''),
('D01-00158', 158, 0, 172, 174, '2014-11-13 09:18:17', '2014-11-13 09:18:17', 0, 0, 'Active', ''),
('D01-00159', 159, 0, 173, 175, '2014-11-13 09:18:20', '2014-11-13 09:18:20', 0, 0, 'Active', ''),
('D01-00160', 160, 0, 174, 176, '2014-11-13 09:18:23', '2014-11-13 09:18:23', 0, 0, 'Active', ''),
('D01-00161', 161, 0, 176, 178, '2014-11-13 09:18:30', '2014-11-13 09:18:30', 0, 0, 'Active', ''),
('D01-00162', 162, 0, 178, 180, '2014-11-13 09:18:36', '2014-11-13 09:18:36', 0, 0, 'Active', ''),
('D01-00163', 163, 0, 179, 181, '2014-11-13 09:18:39', '2014-11-13 09:18:39', 0, 0, 'Active', ''),
('D01-00164', 164, 0, 180, 182, '2014-11-13 09:18:42', '2014-11-13 09:18:42', 0, 0, 'Active', ''),
('D01-00165', 165, 0, 181, 183, '2014-11-13 09:18:45', '2014-11-13 09:18:45', 0, 0, 'Active', ''),
('D01-00166', 166, 0, 182, 184, '2014-11-13 09:18:48', '2014-11-13 09:18:48', 0, 0, 'Active', ''),
('D01-00167', 167, 0, 183, 185, '2014-11-13 09:18:52', '2014-11-13 09:18:52', 0, 0, 'Active', ''),
('D01-00168', 168, 0, 184, 186, '2014-11-13 09:18:55', '2014-11-13 09:18:55', 0, 0, 'Active', ''),
('D01-00169', 169, 0, 185, 187, '2014-11-13 09:18:58', '2014-11-13 09:18:58', 0, 0, 'Active', ''),
('D01-00170', 170, 0, 186, 188, '2014-11-13 09:19:01', '2014-11-13 09:19:01', 0, 0, 'Active', ''),
('D01-00171', 171, 0, 187, 189, '2014-11-13 09:19:04', '2014-11-13 09:19:04', 0, 0, 'Active', ''),
('D01-00172', 172, 0, 188, 190, '2014-11-13 09:19:07', '2014-11-13 09:19:07', 0, 0, 'Active', ''),
('D01-00173', 173, 0, 189, 191, '2014-11-13 09:19:10', '2014-11-13 09:19:10', 0, 0, 'Active', ''),
('D01-00174', 174, 0, 190, 192, '2014-11-13 09:19:14', '2014-11-13 09:19:14', 0, 0, 'Active', ''),
('D01-00175', 175, 0, 192, 194, '2014-11-13 09:19:20', '2014-11-13 09:19:20', 0, 0, 'Active', ''),
('D01-00176', 176, 0, 193, 195, '2014-11-13 09:19:23', '2014-11-13 09:19:23', 0, 0, 'Active', ''),
('D01-00177', 177, 0, 194, 196, '2014-11-13 09:19:26', '2014-11-13 09:19:26', 0, 0, 'Active', ''),
('D01-00178', 178, 0, 196, 198, '2014-11-13 09:19:32', '2014-11-13 09:19:32', 0, 0, 'Active', ''),
('D01-00179', 179, 0, 197, 199, '2014-11-13 09:19:36', '2014-11-13 09:19:36', 0, 0, 'Active', ''),
('D01-00180', 180, 0, 198, 200, '2014-11-13 09:19:39', '2014-11-13 09:19:39', 0, 0, 'Active', ''),
('D01-00181', 181, 0, 199, 201, '2014-11-13 09:19:42', '2014-11-13 09:19:42', 0, 0, 'Active', ''),
('D01-00182', 182, 0, 200, 202, '2014-11-13 09:19:45', '2014-11-13 09:19:45', 0, 0, 'Active', ''),
('D01-00183', 183, 0, 201, 203, '2014-11-13 09:19:48', '2014-11-13 09:19:48', 0, 0, 'Active', ''),
('D01-00184', 184, 0, 202, 204, '2014-11-13 09:19:51', '2014-11-13 09:19:51', 0, 0, 'Active', ''),
('D01-00185', 185, 0, 203, 205, '2014-11-13 09:19:54', '2014-11-13 09:19:54', 0, 0, 'Active', ''),
('D01-00186', 186, 0, 204, 206, '2014-11-13 09:19:58', '2014-11-13 09:19:58', 0, 0, 'Active', ''),
('D01-00187', 187, 0, 205, 207, '2014-11-13 09:20:01', '2014-11-13 09:20:01', 0, 0, 'Active', ''),
('D01-00188', 188, 0, 206, 208, '2014-11-13 09:20:04', '2014-11-13 09:20:04', 0, 0, 'Active', ''),
('D01-00189', 189, 0, 207, 209, '2014-11-13 09:20:07', '2014-11-13 09:20:07', 0, 0, 'Active', ''),
('D01-00190', 190, 0, 208, 210, '2014-11-13 09:20:10', '2014-11-13 09:20:10', 0, 0, 'Active', ''),
('D01-00191', 191, 0, 209, 211, '2014-11-13 09:20:13', '2014-11-13 09:20:13', 0, 0, 'Active', ''),
('D01-00192', 192, 0, 210, 212, '2014-11-13 09:20:17', '2014-11-13 09:20:17', 0, 0, 'Active', ''),
('D01-00193', 193, 0, 211, 213, '2014-11-13 09:20:20', '2014-11-13 09:20:20', 0, 0, 'Active', ''),
('D01-00194', 194, 0, 212, 214, '2014-11-13 09:20:23', '2014-11-13 09:20:23', 0, 0, 'Active', ''),
('D01-00195', 195, 0, 213, 215, '2014-11-13 09:20:26', '2014-11-13 09:20:26', 0, 0, 'Active', ''),
('D01-00196', 196, 0, 214, 216, '2014-11-13 09:20:29', '2014-11-13 09:20:29', 0, 0, 'Active', ''),
('D01-00197', 197, 0, 215, 217, '2014-11-13 09:20:32', '2014-11-13 09:20:32', 0, 0, 'Active', ''),
('D01-00198', 198, 0, 216, 218, '2014-11-13 09:20:35', '2014-11-13 09:20:35', 0, 0, 'Active', ''),
('D01-00199', 199, 0, 217, 219, '2014-11-13 09:20:38', '2014-11-13 09:20:38', 0, 0, 'Active', ''),
('D01-00200', 245, 0, 218, 220, '2014-11-13 09:20:42', '2014-11-14 02:46:01', 0, 6, 'Active', ''),
('D01-00201', 201, 0, 219, 221, '2014-11-13 09:20:45', '2014-11-13 09:20:45', 0, 0, 'Active', ''),
('D01-00202', 202, 0, 220, 222, '2014-11-13 09:20:48', '2014-11-13 09:20:48', 0, 0, 'Active', ''),
('D01-00203', 203, 0, 221, 223, '2014-11-13 09:20:51', '2014-11-13 09:20:51', 0, 0, 'Active', ''),
('D01-00204', 204, 0, 222, 224, '2014-11-13 09:20:54', '2014-11-13 09:20:54', 0, 0, 'Active', ''),
('D01-00205', 205, 0, 223, 225, '2014-11-13 09:20:57', '2014-11-13 09:20:57', 0, 0, 'Active', ''),
('D01-00206', 206, 0, 224, 226, '2014-11-13 09:21:00', '2014-11-13 09:21:00', 0, 0, 'Active', ''),
('D01-00207', 207, 0, 225, 227, '2014-11-13 09:21:03', '2014-11-13 09:21:03', 0, 0, 'Active', ''),
('D01-00208', 208, 0, 226, 228, '2014-11-13 09:21:07', '2014-11-13 09:21:07', 0, 0, 'Active', '  '),
('D01-00209', 209, 0, 230, 232, '2014-11-13 09:21:19', '2014-11-13 09:21:19', 0, 0, 'Active', ''),
('D01-00210', 210, 0, 232, 234, '2014-11-13 09:21:25', '2014-11-13 09:21:25', 0, 0, 'Active', ''),
('D01-00211', 211, 31, 233, 235, '2014-11-13 09:21:28', '2014-11-19 08:00:17', 0, 6, 'Active', ''),
('D01-00212', 212, 0, 234, 236, '2014-11-13 09:21:31', '2014-11-13 09:21:31', 0, 0, 'Active', ''),
('D01-00213', 213, 0, 235, 237, '2014-11-13 09:21:34', '2014-11-13 09:21:34', 0, 0, 'Active', ''),
('D01-00214', 214, 0, 236, 238, '2014-11-13 09:21:38', '2014-11-13 09:21:38', 0, 0, 'Active', ''),
('D01-00215', 215, 0, 237, 239, '2014-11-13 09:21:41', '2014-11-13 09:21:41', 0, 0, 'Active', ''),
('D01-00216', 216, 0, 238, 240, '2014-11-13 09:21:44', '2014-11-13 09:21:44', 0, 0, 'Active', ''),
('D01-00217', 217, 0, 239, 241, '2014-11-13 09:21:47', '2014-11-13 09:21:47', 0, 0, 'Active', ''),
('D01-00218', 218, 0, 274, 242, '2014-11-13 09:21:50', '2014-11-13 09:21:50', 0, 0, 'Active', ''),
('D01-00219', 219, 0, 241, 243, '2014-11-13 09:21:53', '2014-11-13 09:21:53', 0, 0, 'Active', ''),
('D01-00220', 220, 0, 242, 244, '2014-11-13 09:21:56', '2014-11-13 09:21:56', 0, 0, 'Active', ''),
('D01-00221', 221, 0, 243, 245, '2014-11-13 09:22:00', '2014-11-13 09:22:00', 0, 0, 'Active', ''),
('D01-00222', 222, 0, 245, 247, '2014-11-13 09:22:06', '2014-11-13 09:22:06', 0, 0, 'Active', ''),
('D01-00223', 223, 0, 246, 248, '2014-11-13 09:22:09', '2014-11-13 09:22:09', 0, 0, 'Active', ''),
('D01-00224', 224, 0, 247, 249, '2014-11-13 09:22:12', '2014-11-13 09:22:12', 0, 0, 'Active', ''),
('D01-00225', 225, 0, 248, 250, '2014-11-13 09:22:15', '2014-11-13 09:22:15', 0, 0, 'Active', ''),
('D01-00226', 226, 0, 249, 251, '2014-11-13 09:22:18', '2014-11-13 09:22:18', 0, 0, 'Active', ''),
('D01-00227', 227, 0, 251, 253, '2014-11-13 09:22:24', '2014-11-13 09:22:24', 0, 0, 'Active', ''),
('D01-00228', 228, 0, 252, 254, '2014-11-13 09:22:27', '2014-11-13 09:22:27', 0, 0, 'Active', ''),
('D01-00229', 229, 0, 253, 255, '2014-11-13 09:22:31', '2014-11-13 09:22:31', 0, 0, 'Active', ''),
('D01-00230', 230, 0, 254, 256, '2014-11-13 09:22:34', '2014-11-13 09:22:34', 0, 0, 'Active', ''),
('D01-00231', 200, 0, 255, 257, '2014-11-13 09:22:37', '2014-11-14 02:46:23', 0, 6, 'Active', ''),
('D01-00232', 232, 0, 257, 259, '2014-11-13 09:22:43', '2014-11-13 09:22:43', 0, 0, 'Active', ''),
('D01-00233', 233, 0, 258, 260, '2014-11-13 09:22:46', '2014-11-13 09:22:46', 0, 0, 'Active', ''),
('D01-00234', 234, 0, 259, 261, '2014-11-13 09:22:49', '2014-11-13 09:22:49', 0, 0, 'Active', ''),
('D01-00235', 235, 0, 260, 262, '2014-11-13 09:22:52', '2014-11-13 09:22:52', 0, 0, 'Active', ''),
('D01-00236', 236, 0, 261, 263, '2014-11-13 09:22:56', '2014-11-13 09:22:56', 0, 0, 'Active', ''),
('D01-00237', 237, 0, 262, 264, '2014-11-13 09:22:59', '2014-11-13 09:22:59', 0, 0, 'Active', ''),
('D01-00238', 244, 0, 263, 265, '2014-11-13 09:23:02', '2014-11-13 10:43:05', 0, 5, 'Active', ''),
('D01-00239', 239, 0, 265, 267, '2014-11-13 09:23:08', '2014-11-13 09:23:08', 0, 0, 'Active', ''),
('D01-00240', 240, 0, 269, 271, '2014-11-13 09:23:20', '2014-11-13 09:23:20', 0, 0, 'Active', ''),
('D01-00241', 241, 0, 271, 273, '2014-11-13 09:23:26', '2014-11-13 09:23:26', 0, 0, 'Active', ''),
('D01-00242', 242, 0, 272, 274, '2014-11-13 09:23:29', '2014-11-13 09:23:29', 0, 0, 'Active', ''),
('D01-00243', 243, 0, 273, 275, '2014-11-13 09:23:33', '2014-11-13 09:23:33', 0, 0, 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE IF NOT EXISTS `tbl_service` (
`i_service_id` int(11) NOT NULL,
  `i_product_id` int(11) NOT NULL,
  `i_person_id` int(11) NOT NULL,
  `v_diagnosis` varchar(200) NOT NULL,
  `v_action` varchar(200) NOT NULL,
  `d_date_service` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_modify` int(11) NOT NULL,
  `v_status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`i_service_id`, `i_product_id`, `i_person_id`, `v_diagnosis`, `v_action`, `d_date_service`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, 345534543, 4, 'Total', 'fff', '2014-12-16', '2014-12-16 03:48:00', '2014-12-16 03:48:00', 5, 5, 'Done'),
(2, 2321, 4, 'Monitor', 'aaa', '2014-12-16', '2014-12-16 04:00:42', '2014-12-16 04:00:42', 5, 5, 'Done'),
(3, 23423, 6, 'Service', 'test', '2014-12-16', '2014-12-16 04:01:49', '2014-12-16 04:01:49', 5, 5, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_part`
--

CREATE TABLE IF NOT EXISTS `tbl_service_part` (
`i_service_part_id` int(11) NOT NULL,
  `i_service_id` int(11) NOT NULL,
  `i_part_id` int(11) NOT NULL,
  `i_qty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_modify` int(11) NOT NULL,
  `v_status` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_service_part`
--

INSERT INTO `tbl_service_part` (`i_service_part_id`, `i_service_id`, `i_part_id`, `i_qty`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, 2, 284, 1, '2014-12-16 04:00:42', '2014-12-16 04:00:42', 5, 5, 'Done'),
(2, 2, 283, 2, '2014-12-16 04:00:42', '2014-12-16 04:00:42', 5, 5, 'Done'),
(3, 3, 277, 2, '2014-12-16 04:01:49', '2014-12-16 04:01:49', 5, 5, 'Done'),
(4, 3, 278, 3, '2014-12-16 04:01:49', '2014-12-16 04:01:49', 5, 5, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_simcard`
--

CREATE TABLE IF NOT EXISTS `tbl_simcard` (
`i_simcard_id` int(11) NOT NULL,
  `v_simcard_name` varchar(100) NOT NULL,
  `v_simcard_serial` varchar(100) NOT NULL,
  `v_simcard_type` varchar(50) NOT NULL,
  `v_simcard_msisdn` varchar(100) NOT NULL,
  `v_simcard_text1` varchar(100) NOT NULL,
  `v_simcard_text2` varchar(100) NOT NULL,
  `v_simcard_text3` varchar(100) NOT NULL,
  `v_simcard_text4` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_user_create` int(11) NOT NULL,
  `i_user_modify` int(11) NOT NULL,
  `v_status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tbl_simcard`
--

INSERT INTO `tbl_simcard` (`i_simcard_id`, `v_simcard_name`, `v_simcard_serial`, `v_simcard_type`, `v_simcard_msisdn`, `v_simcard_text1`, `v_simcard_text2`, `v_simcard_text3`, `v_simcard_text4`, `created_at`, `updated_at`, `i_user_create`, `i_user_modify`, `v_status`) VALUES
(1, '', '', '', '0119336643', '', '', '', '', '2014-11-10 07:35:34', '2014-11-10 07:35:34', 0, 0, 'Active'),
(2, '', '', '', '0119336693', '', '', '', '', '2014-11-10 07:35:37', '2014-11-10 07:35:37', 0, 0, 'Active'),
(3, '', '', '', '0119336642', '', '', '', '', '2014-11-10 07:35:40', '2014-11-10 07:35:40', 0, 0, 'Active'),
(4, '', '', '', '0119336667', '', '', '', '', '2014-11-10 07:35:43', '2014-11-10 07:35:43', 0, 0, 'Active'),
(5, '', '', '', '0119336687', '', '', '', '', '2014-11-10 07:35:46', '2014-11-10 07:35:46', 0, 0, 'Active'),
(6, '', '', '', '0119336683', '', '', '', '', '2014-11-10 07:35:50', '2014-11-10 07:35:50', 0, 0, 'Active'),
(7, '', '', '', '0119336684', '', '', '', '', '2014-11-10 07:35:53', '2014-11-10 07:35:53', 0, 0, 'Active'),
(8, '', '', '', '0119336639', '', '', '', '', '2014-11-10 07:35:56', '2014-11-10 07:35:56', 0, 0, 'Active'),
(9, '', '', '', '0119336692', '', '', '', '', '2014-11-10 07:35:59', '2014-11-10 07:35:59', 0, 0, 'Active'),
(10, '', '', '', '0119336617', '', '', '', '', '2014-11-10 07:36:02', '2014-11-10 07:36:02', 0, 0, 'Active'),
(11, '', '', '', '0119336632', '', '', '', '', '2014-11-10 07:36:06', '2014-11-10 07:36:06', 0, 0, 'Active'),
(12, '', '', '', '0119336630', '', '', '', '', '2014-11-10 07:36:09', '2014-11-10 07:36:09', 0, 0, 'Active'),
(13, '', '', '', '0119336629', '', '', '', '', '2014-11-10 07:36:12', '2014-11-10 07:36:12', 0, 0, 'Active'),
(14, '', '', '', '0119336628', '', '', '', '', '2014-11-10 07:36:15', '2014-11-10 07:36:15', 0, 0, 'Active'),
(15, '', '', '', '0119336627', '', '', '', '', '2014-11-10 07:36:18', '2014-11-10 07:36:18', 0, 0, 'Active'),
(16, '', '', '', '0119336626', '', '', '', '', '2014-11-10 07:36:22', '2014-11-10 07:36:22', 0, 0, 'Active'),
(17, '', '', '', '0119336646', '', '', '', '', '2014-11-10 07:36:25', '2014-11-10 07:36:25', 0, 0, 'Active'),
(18, '', '', '', '0119336670', '', '', '', '', '2014-11-10 07:36:28', '2014-11-10 07:36:28', 0, 0, 'Active'),
(19, '', '', '', '0119336662', '', '', '', '', '2014-11-10 07:36:31', '2014-11-10 07:36:31', 0, 0, 'Active'),
(20, '', '', '', '0119336661', '', '', '', '', '2014-11-10 07:36:34', '2014-11-10 07:36:34', 0, 0, 'Active'),
(21, '', '', '', '0119336668', '', '', '', '', '2014-11-10 07:36:37', '2014-11-10 07:36:37', 0, 0, 'Active'),
(22, '', '', '', '0119336631', '', '', '', '', '2014-11-10 07:36:40', '2014-11-10 07:36:40', 0, 0, 'Active'),
(23, '', '', '', '0119336679', '', '', '', '', '2014-11-10 07:36:44', '2014-11-10 07:36:44', 0, 0, 'Active'),
(24, '', '', '', '0119336664', '', '', '', '', '2014-11-10 07:36:47', '2014-11-10 07:36:47', 0, 0, 'Active'),
(25, '', '', '', '0119336674', '', '', '', '', '2014-11-10 07:36:50', '2014-11-10 07:36:50', 0, 0, 'Active'),
(26, '', '', '', '0119336641', '', '', '', '', '2014-11-10 07:36:53', '2014-11-10 07:36:53', 0, 0, 'Active'),
(27, '', '', '', '0119336638', '', '', '', '', '2014-11-10 07:36:56', '2014-11-10 07:36:56', 0, 0, 'Active'),
(28, '', '', '', '0119336640', '', '', '', '', '2014-11-10 07:36:59', '2014-11-10 07:36:59', 0, 0, 'Active'),
(29, '', '', '', '0119336669', '', '', '', '', '2014-11-10 07:37:03', '2014-11-10 07:37:03', 0, 0, 'Active'),
(30, '', '', '', '0119336663', '', '', '', '', '2014-11-10 07:37:06', '2014-11-10 07:37:06', 0, 0, 'Active'),
(31, '', '', '', '0119336880', '', '', '', '', '2014-11-19 08:00:09', '2014-11-19 08:00:09', 6, 0, 'Attached');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle` (
`id` int(11) NOT NULL,
  `v_vehicle_name` varchar(50) NOT NULL,
  `v_code` varchar(50) NOT NULL,
  `i_company` int(11) NOT NULL,
  `i_type` int(11) NOT NULL,
  `v_engine_no` varchar(50) NOT NULL,
  `v_chasis_no` varchar(50) NOT NULL,
  `i_manufacturer` int(11) NOT NULL,
  `i_model` int(11) NOT NULL,
  `i_status` int(11) NOT NULL,
  `i_created_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `i_updated_user` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_vehicle`
--

INSERT INTO `tbl_vehicle` (`id`, `v_vehicle_name`, `v_code`, `i_company`, `i_type`, `v_engine_no`, `v_chasis_no`, `i_manufacturer`, `i_model`, `i_status`, `i_created_user`, `created_at`, `updated_at`, `i_updated_user`) VALUES
(1, 'B9167YU', 'B9165UO', 1, 1, 'df8986bi3', 'df8986bi3', 3, 3, 1, 4, '2015-02-20 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'B1337HY', 'B1353FG', 1, 1, 'jg89834pg', 'jg89834pg', 3, 3, 1, 4, '2015-02-20 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`i_user_id` int(11) NOT NULL,
  `i_type` int(11) NOT NULL,
  `v_login` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `v_status` varchar(30) NOT NULL,
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`i_user_id`, `i_type`, `v_login`, `password`, `email`, `created_at`, `updated_at`, `v_status`, `remember_token`) VALUES
(1, 1, 'admin', '$2y$10$Qw1y4BEk/1dOk2D1CV5sYO81a5h8.vS37a2V4Mvdeb22UwlF48ioi', 'admin@Company.com', '2014-10-27 04:20:20', '2014-11-05 07:48:29', 'Active', 'TLLcQA5XhfoFxHIVHtvCd0n6vjan7We6U29zTq5M74mVW89tWb8gvOBWAnLp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_category`
--
ALTER TABLE `prod_category`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tblbmc_vehicle_manufacturer`
--
ALTER TABLE `tblbmc_vehicle_manufacturer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbmc_vehicle_model`
--
ALTER TABLE `tblbmc_vehicle_model`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dds`
--
ALTER TABLE `tbl_dds`
 ADD PRIMARY KEY (`i_dds_id`), ADD UNIQUE KEY `v_dds_sn` (`v_dds_sn`);

--
-- Indexes for table `tbl_detail_do`
--
ALTER TABLE `tbl_detail_do`
 ADD PRIMARY KEY (`i_det_do_id`), ADD KEY `i_det_do_id` (`i_det_do_id`);

--
-- Indexes for table `tbl_detail_product`
--
ALTER TABLE `tbl_detail_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_detail_transaksi`
--
ALTER TABLE `tbl_detail_transaksi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
 ADD PRIMARY KEY (`i_log_id`);

--
-- Indexes for table `tbl_master_do`
--
ALTER TABLE `tbl_master_do`
 ADD PRIMARY KEY (`i_do_id`), ADD KEY `i_do_id` (`i_do_id`);

--
-- Indexes for table `tbl_master_product`
--
ALTER TABLE `tbl_master_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_master_transaksi`
--
ALTER TABLE `tbl_master_transaksi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modem`
--
ALTER TABLE `tbl_modem`
 ADD PRIMARY KEY (`i_modem_id`), ADD UNIQUE KEY `v_modem_sn` (`v_modem_sn`), ADD KEY `i_obu_id` (`i_modem_id`);

--
-- Indexes for table `tbl_new_do`
--
ALTER TABLE `tbl_new_do`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `v_do_code` (`v_do_code`), ADD KEY `i_do_id` (`id`);

--
-- Indexes for table `tbl_new_po`
--
ALTER TABLE `tbl_new_po`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `v_do_code` (`v_po_code`), ADD KEY `i_do_id` (`id`);

--
-- Indexes for table `tbl_new_rrn`
--
ALTER TABLE `tbl_new_rrn`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `v_do_code` (`v_rrn_code`), ADD KEY `i_do_id` (`id`);

--
-- Indexes for table `tbl_new_simcard`
--
ALTER TABLE `tbl_new_simcard`
 ADD PRIMARY KEY (`i_simcard_id`), ADD UNIQUE KEY `v_simcard_msisdn` (`v_simcard_msisdn`);

--
-- Indexes for table `tbl_new_wo`
--
ALTER TABLE `tbl_new_wo`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `v_do_code` (`v_wo_code`), ADD KEY `i_do_id` (`id`);

--
-- Indexes for table `tbl_obu`
--
ALTER TABLE `tbl_obu`
 ADD PRIMARY KEY (`i_obu_id`), ADD UNIQUE KEY `v_sn` (`v_sn`);

--
-- Indexes for table `tbl_part`
--
ALTER TABLE `tbl_part`
 ADD PRIMARY KEY (`i_part_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
 ADD PRIMARY KEY (`i_product_id`), ADD UNIQUE KEY `i_modem_id` (`i_modem_id`,`i_simcard_id`,`i_obu_id`,`i_dds_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
 ADD PRIMARY KEY (`i_service_id`);

--
-- Indexes for table `tbl_service_part`
--
ALTER TABLE `tbl_service_part`
 ADD PRIMARY KEY (`i_service_part_id`);

--
-- Indexes for table `tbl_simcard`
--
ALTER TABLE `tbl_simcard`
 ADD PRIMARY KEY (`i_simcard_id`), ADD UNIQUE KEY `v_simcard_msisdn` (`v_simcard_msisdn`);

--
-- Indexes for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `v_vehicle_name` (`v_vehicle_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`i_user_id`), ADD UNIQUE KEY `v_login` (`v_login`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `prod_category`
--
ALTER TABLE `prod_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblbmc_vehicle_manufacturer`
--
ALTER TABLE `tblbmc_vehicle_manufacturer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblbmc_vehicle_model`
--
ALTER TABLE `tblbmc_vehicle_model`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_dds`
--
ALTER TABLE `tbl_dds`
MODIFY `i_dds_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `tbl_detail_do`
--
ALTER TABLE `tbl_detail_do`
MODIFY `i_det_do_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_detail_product`
--
ALTER TABLE `tbl_detail_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_detail_transaksi`
--
ALTER TABLE `tbl_detail_transaksi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
MODIFY `i_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_master_do`
--
ALTER TABLE `tbl_master_do`
MODIFY `i_do_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_master_product`
--
ALTER TABLE `tbl_master_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `tbl_master_transaksi`
--
ALTER TABLE `tbl_master_transaksi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_modem`
--
ALTER TABLE `tbl_modem`
MODIFY `i_modem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `tbl_new_do`
--
ALTER TABLE `tbl_new_do`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_new_po`
--
ALTER TABLE `tbl_new_po`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_new_rrn`
--
ALTER TABLE `tbl_new_rrn`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_new_simcard`
--
ALTER TABLE `tbl_new_simcard`
MODIFY `i_simcard_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_new_wo`
--
ALTER TABLE `tbl_new_wo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_obu`
--
ALTER TABLE `tbl_obu`
MODIFY `i_obu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT for table `tbl_part`
--
ALTER TABLE `tbl_part`
MODIFY `i_part_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=287;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
MODIFY `i_service_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_service_part`
--
ALTER TABLE `tbl_service_part`
MODIFY `i_service_part_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_simcard`
--
ALTER TABLE `tbl_simcard`
MODIFY `i_simcard_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `i_user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
