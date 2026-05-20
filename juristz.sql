-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2026 at 08:49 AM
-- Server version: 5.6.21
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `juristz`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE IF NOT EXISTS `bank_account` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `details` text NOT NULL,
  `note` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`pk`, `id`, `lawyer_id`, `status`, `mode`, `details`, `note`, `date`) VALUES
(1, '', 1, 0, 0, 'NO:0002344,SBi ,IFC code :100056', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE IF NOT EXISTS `calls` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ip1` varchar(50) NOT NULL,
  `ip2` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `schedule_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`pk`, `id`, `name`, `parent`, `status`) VALUES
(1, '', 'Civil', 0, 0),
(2, '', 'Crime', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `state_id` int(100) NOT NULL,
  `fees` varchar(10) NOT NULL,
  `commission` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=604 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `fees`, `commission`) VALUES
(1, 'North and Middle Andaman', 32, '', '0.00'),
(2, 'South Andaman', 32, '', '0.00'),
(3, 'Nicobar', 32, '', '0.00'),
(4, 'Adilabad', 1, '', '0.00'),
(5, 'Anantapur', 1, '', '0.00'),
(6, 'Chittoor', 1, '', '0.00'),
(7, 'East Godavari', 1, '', '0.00'),
(8, 'Guntur', 1, '', '0.00'),
(9, 'Hyderabad', 1, '', '0.00'),
(10, 'Kadapa', 1, '', '0.00'),
(11, 'Karimnagar', 1, '', '0.00'),
(12, 'Khammam', 1, '', '0.00'),
(13, 'Krishna', 1, '', '0.00'),
(14, 'Kurnool', 1, '', '0.00'),
(15, 'Mahbubnagar', 1, '', '0.00'),
(16, 'Medak', 1, '', '0.00'),
(17, 'Nalgonda', 1, '', '0.00'),
(18, 'Nellore', 1, '', '0.00'),
(19, 'Nizamabad', 1, '', '0.00'),
(20, 'Prakasam', 1, '', '0.00'),
(21, 'Rangareddi', 1, '', '0.00'),
(22, 'Srikakulam', 1, '', '0.00'),
(23, 'Vishakhapatnam', 1, '', '0.00'),
(24, 'Vizianagaram', 1, '', '0.00'),
(25, 'Warangal', 1, '', '0.00'),
(26, 'West Godavari', 1, '', '0.00'),
(27, 'Anjaw', 3, '', '0.00'),
(28, 'Changlang', 3, '', '0.00'),
(29, 'East Kameng', 3, '', '0.00'),
(30, 'Lohit', 3, '', '0.00'),
(31, 'Lower Subansiri', 3, '', '0.00'),
(32, 'Papum Pare', 3, '', '0.00'),
(33, 'Tirap', 3, '', '0.00'),
(34, 'Dibang Valley', 3, '', '0.00'),
(35, 'Upper Subansiri', 3, '', '0.00'),
(36, 'West Kameng', 3, '', '0.00'),
(37, 'Barpeta', 2, '', '0.00'),
(38, 'Bongaigaon', 2, '', '0.00'),
(39, 'Cachar', 2, '', '0.00'),
(40, 'Darrang', 2, '', '0.00'),
(41, 'Dhemaji', 2, '', '0.00'),
(42, 'Dhubri', 2, '', '0.00'),
(43, 'Dibrugarh', 2, '', '0.00'),
(44, 'Goalpara', 2, '', '0.00'),
(45, 'Golaghat', 2, '', '0.00'),
(46, 'Hailakandi', 2, '', '0.00'),
(47, 'Jorhat', 2, '', '0.00'),
(48, 'Karbi Anglong', 2, '', '0.00'),
(49, 'Karimganj', 2, '', '0.00'),
(50, 'Kokrajhar', 2, '', '0.00'),
(51, 'Lakhimpur', 2, '', '0.00'),
(52, 'Marigaon', 2, '', '0.00'),
(53, 'Nagaon', 2, '', '0.00'),
(54, 'Nalbari', 2, '', '0.00'),
(55, 'North Cachar Hills', 2, '', '0.00'),
(56, 'Sibsagar', 2, '', '0.00'),
(57, 'Sonitpur', 2, '', '0.00'),
(58, 'Tinsukia', 2, '', '0.00'),
(59, 'Araria', 4, '', '0.00'),
(60, 'Aurangabad', 4, '', '0.00'),
(61, 'Banka', 4, '', '0.00'),
(62, 'Begusarai', 4, '', '0.00'),
(63, 'Bhagalpur', 4, '', '0.00'),
(64, 'Bhojpur', 4, '', '0.00'),
(65, 'Buxar', 4, '', '0.00'),
(66, 'Darbhanga', 4, '', '0.00'),
(67, 'Purba Champaran', 4, '', '0.00'),
(68, 'Gaya', 4, '', '0.00'),
(69, 'Gopalganj', 4, '', '0.00'),
(70, 'Jamui', 4, '', '0.00'),
(71, 'Jehanabad', 4, '', '0.00'),
(72, 'Khagaria', 4, '', '0.00'),
(73, 'Kishanganj', 4, '', '0.00'),
(74, 'Kaimur', 4, '', '0.00'),
(75, 'Katihar', 4, '', '0.00'),
(76, 'Lakhisarai', 4, '', '0.00'),
(77, 'Madhubani', 4, '', '0.00'),
(78, 'Munger', 4, '', '0.00'),
(79, 'Madhepura', 4, '', '0.00'),
(80, 'Muzaffarpur', 4, '', '0.00'),
(81, 'Nalanda', 4, '', '0.00'),
(82, 'Nawada', 4, '', '0.00'),
(83, 'Patna', 4, '', '0.00'),
(84, 'Purnia', 4, '', '0.00'),
(85, 'Rohtas', 4, '', '0.00'),
(86, 'Saharsa', 4, '', '0.00'),
(87, 'Samastipur', 4, '', '0.00'),
(88, 'Sheohar', 4, '', '0.00'),
(89, 'Sheikhpura', 4, '', '0.00'),
(90, 'Saran', 4, '', '0.00'),
(91, 'Sitamarhi', 4, '', '0.00'),
(92, 'Supaul', 4, '', '0.00'),
(93, 'Siwan', 4, '', '0.00'),
(94, 'Vaishali', 4, '', '0.00'),
(95, 'Pashchim Champaran', 4, '', '0.00'),
(96, 'Bastar', 36, '', '0.00'),
(97, 'Bilaspur', 36, '', '0.00'),
(98, 'Dantewada', 36, '', '0.00'),
(99, 'Dhamtari', 36, '', '0.00'),
(100, 'Durg', 36, '', '0.00'),
(101, 'Jashpur', 36, '', '0.00'),
(102, 'Janjgir-Champa', 36, '', '0.00'),
(103, 'Korba', 36, '', '0.00'),
(104, 'Koriya', 36, '', '0.00'),
(105, 'Kanker', 36, '', '0.00'),
(106, 'Kawardha', 36, '', '0.00'),
(107, 'Mahasamund', 36, '', '0.00'),
(108, 'Raigarh', 36, '', '0.00'),
(109, 'Rajnandgaon', 36, '', '0.00'),
(110, 'Raipur', 36, '', '0.00'),
(111, 'Surguja', 36, '', '0.00'),
(112, 'Diu', 29, '', '0.00'),
(113, 'Daman', 29, '', '0.00'),
(114, 'Central Delhi', 25, '', '0.00'),
(115, 'East Delhi', 25, '', '0.00'),
(116, 'New Delhi', 25, '', '0.00'),
(117, 'North Delhi', 25, '', '0.00'),
(118, 'North East Delhi', 25, '', '0.00'),
(119, 'North West Delhi', 25, '', '0.00'),
(120, 'South Delhi', 25, '', '0.00'),
(121, 'South West Delhi', 25, '', '0.00'),
(122, 'West Delhi', 25, '', '0.00'),
(123, 'North Goa', 26, '', '0.00'),
(124, 'South Goa', 26, '', '0.00'),
(125, 'Ahmedabad', 5, '', '0.00'),
(126, 'Amreli District', 5, '', '0.00'),
(127, 'Anand', 5, '', '0.00'),
(128, 'Banaskantha', 5, '', '0.00'),
(129, 'Bharuch', 5, '', '0.00'),
(130, 'Bhavnagar', 5, '', '0.00'),
(131, 'Dahod', 5, '', '0.00'),
(132, 'The Dangs', 5, '', '0.00'),
(133, 'Gandhinagar', 5, '', '0.00'),
(134, 'Jamnagar', 5, '', '0.00'),
(135, 'Junagadh', 5, '', '0.00'),
(136, 'Kutch', 5, '', '0.00'),
(137, 'Kheda', 5, '', '0.00'),
(138, 'Mehsana', 5, '', '0.00'),
(139, 'Narmada', 5, '', '0.00'),
(140, 'Navsari', 5, '', '0.00'),
(141, 'Patan', 5, '', '0.00'),
(142, 'Panchmahal', 5, '', '0.00'),
(143, 'Porbandar', 5, '', '0.00'),
(144, 'Rajkot', 5, '', '0.00'),
(145, 'Sabarkantha', 5, '', '0.00'),
(146, 'Surendranagar', 5, '', '0.00'),
(147, 'Surat', 5, '', '0.00'),
(148, 'Vadodara', 5, '', '0.00'),
(149, 'Valsad', 5, '', '0.00'),
(150, 'Ambala', 6, '', '0.00'),
(151, 'Bhiwani', 6, '', '0.00'),
(152, 'Faridabad', 6, '', '0.00'),
(153, 'Fatehabad', 6, '', '0.00'),
(154, 'Gurgaon', 6, '', '0.00'),
(155, 'Hissar', 6, '', '0.00'),
(156, 'Jhajjar', 6, '', '0.00'),
(157, 'Jind', 6, '', '0.00'),
(158, 'Karnal', 6, '', '0.00'),
(159, 'Kaithal', 6, '', '0.00'),
(160, 'Kurukshetra', 6, '', '0.00'),
(161, 'Mahendragarh', 6, '', '0.00'),
(162, 'Mewat', 6, '', '0.00'),
(163, 'Panchkula', 6, '', '0.00'),
(164, 'Panipat', 6, '', '0.00'),
(165, 'Rewari', 6, '', '0.00'),
(166, 'Rohtak', 6, '', '0.00'),
(167, 'Sirsa', 6, '', '0.00'),
(168, 'Sonepat', 6, '', '0.00'),
(169, 'Yamuna Nagar', 6, '', '0.00'),
(170, 'Palwal', 6, '', '0.00'),
(171, 'Bilaspur', 7, '', '0.00'),
(172, 'Chamba', 7, '', '0.00'),
(173, 'Hamirpur', 7, '', '0.00'),
(174, 'Kangra', 7, '', '0.00'),
(175, 'Kinnaur', 7, '', '0.00'),
(176, 'Kulu', 7, '', '0.00'),
(177, 'Lahaul and Spiti', 7, '', '0.00'),
(178, 'Mandi', 7, '', '0.00'),
(179, 'Shimla', 7, '', '0.00'),
(180, 'Sirmaur', 7, '', '0.00'),
(181, 'Solan', 7, '', '0.00'),
(182, 'Una', 7, '', '0.00'),
(183, 'Anantnag', 8, '', '0.00'),
(184, 'Badgam', 8, '', '0.00'),
(185, 'Bandipore', 8, '', '0.00'),
(186, 'Baramula', 8, '', '0.00'),
(187, 'Doda', 8, '', '0.00'),
(188, 'Jammu', 8, '', '0.00'),
(189, 'Kargil', 8, '', '0.00'),
(190, 'Kathua', 8, '', '0.00'),
(191, 'Kupwara', 8, '', '0.00'),
(192, 'Leh', 8, '', '0.00'),
(193, 'Poonch', 8, '', '0.00'),
(194, 'Pulwama', 8, '', '0.00'),
(195, 'Rajauri', 8, '', '0.00'),
(196, 'Srinagar', 8, '', '0.00'),
(197, 'Samba', 8, '', '0.00'),
(198, 'Udhampur', 8, '', '0.00'),
(199, 'Bokaro', 34, '', '0.00'),
(200, 'Chatra', 34, '', '0.00'),
(201, 'Deoghar', 34, '', '0.00'),
(202, 'Dhanbad', 34, '', '0.00'),
(203, 'Dumka', 34, '', '0.00'),
(204, 'Purba Singhbhum', 34, '', '0.00'),
(205, 'Garhwa', 34, '', '0.00'),
(206, 'Giridih', 34, '', '0.00'),
(207, 'Godda', 34, '', '0.00'),
(208, 'Gumla', 34, '', '0.00'),
(209, 'Hazaribagh', 34, '', '0.00'),
(210, 'Koderma', 34, '', '0.00'),
(211, 'Lohardaga', 34, '', '0.00'),
(212, 'Pakur', 34, '', '0.00'),
(213, 'Palamu', 34, '', '0.00'),
(214, 'Ranchi', 34, '', '0.00'),
(215, 'Sahibganj', 34, '', '0.00'),
(216, 'Seraikela and Kharsawan', 34, '', '0.00'),
(217, 'Pashchim Singhbhum', 34, '', '0.00'),
(218, 'Ramgarh', 34, '', '0.00'),
(219, 'Bidar', 9, '', '0.00'),
(220, 'Belgaum', 9, '', '0.00'),
(221, 'Bijapur', 9, '', '0.00'),
(222, 'Bagalkot', 9, '', '0.00'),
(223, 'Bellary', 9, '', '0.00'),
(224, 'Bangalore Rural District', 9, '', '0.00'),
(225, 'Bangalore Urban District', 9, '', '0.00'),
(226, 'Chamarajnagar', 9, '', '0.00'),
(227, 'Chikmagalur', 9, '', '0.00'),
(228, 'Chitradurga', 9, '', '0.00'),
(229, 'Davanagere', 9, '', '0.00'),
(230, 'Dharwad', 9, '', '0.00'),
(231, 'Dakshina Kannada', 9, '', '0.00'),
(232, 'Gadag', 9, '', '0.00'),
(233, 'Gulbarga', 9, '', '0.00'),
(234, 'Hassan', 9, '', '0.00'),
(235, 'Haveri District', 9, '', '0.00'),
(236, 'Kodagu', 9, '', '0.00'),
(237, 'Kolar', 9, '', '0.00'),
(238, 'Koppal', 9, '', '0.00'),
(239, 'Mandya', 9, '', '0.00'),
(240, 'Mysore', 9, '', '0.00'),
(241, 'Raichur', 9, '', '0.00'),
(242, 'Shimoga', 9, '', '0.00'),
(243, 'Tumkur', 9, '', '0.00'),
(244, 'Udupi', 9, '', '0.00'),
(245, 'Uttara Kannada', 9, '', '0.00'),
(246, 'Ramanagara', 9, '', '0.00'),
(247, 'Chikballapur', 9, '', '0.00'),
(248, 'Yadagiri', 9, '', '0.00'),
(249, 'Alappuzha', 10, '', '0.00'),
(250, 'Ernakulam', 10, '', '0.00'),
(251, 'Idukki', 10, '', '0.00'),
(252, 'Kollam', 10, '', '0.00'),
(253, 'Kannur', 10, '', '0.00'),
(254, 'Kasaragod', 10, '', '0.00'),
(255, 'Kottayam', 10, '', '0.00'),
(256, 'Kozhikode', 10, '', '0.00'),
(257, 'Malappuram', 10, '', '0.00'),
(258, 'Palakkad', 10, '', '0.00'),
(259, 'Pathanamthitta', 10, '', '0.00'),
(260, 'Thrissur', 10, '', '0.00'),
(261, 'Thiruvananthapuram', 10, '', '0.00'),
(262, 'Wayanad', 10, '', '0.00'),
(263, 'Alirajpur', 11, '', '0.00'),
(264, 'Anuppur', 11, '', '0.00'),
(265, 'Ashok Nagar', 11, '', '0.00'),
(266, 'Balaghat', 11, '', '0.00'),
(267, 'Barwani', 11, '', '0.00'),
(268, 'Betul', 11, '', '0.00'),
(269, 'Bhind', 11, '', '0.00'),
(270, 'Bhopal', 11, '', '0.00'),
(271, 'Burhanpur', 11, '', '0.00'),
(272, 'Chhatarpur', 11, '', '0.00'),
(273, 'Chhindwara', 11, '', '0.00'),
(274, 'Damoh', 11, '', '0.00'),
(275, 'Datia', 11, '', '0.00'),
(276, 'Dewas', 11, '', '0.00'),
(277, 'Dhar', 11, '', '0.00'),
(278, 'Dindori', 11, '', '0.00'),
(279, 'Guna', 11, '', '0.00'),
(280, 'Gwalior', 11, '', '0.00'),
(281, 'Harda', 11, '', '0.00'),
(282, 'Hoshangabad', 11, '', '0.00'),
(283, 'Indore', 11, '', '0.00'),
(284, 'Jabalpur', 11, '', '0.00'),
(285, 'Jhabua', 11, '', '0.00'),
(286, 'Katni', 11, '', '0.00'),
(287, 'Khandwa', 11, '', '0.00'),
(288, 'Khargone', 11, '', '0.00'),
(289, 'Mandla', 11, '', '0.00'),
(290, 'Mandsaur', 11, '', '0.00'),
(291, 'Morena', 11, '', '0.00'),
(292, 'Narsinghpur', 11, '', '0.00'),
(293, 'Neemuch', 11, '', '0.00'),
(294, 'Panna', 11, '', '0.00'),
(295, 'Rewa', 11, '', '0.00'),
(296, 'Rajgarh', 11, '', '0.00'),
(297, 'Ratlam', 11, '', '0.00'),
(298, 'Raisen', 11, '', '0.00'),
(299, 'Sagar', 11, '', '0.00'),
(300, 'Satna', 11, '', '0.00'),
(301, 'Sehore', 11, '', '0.00'),
(302, 'Seoni', 11, '', '0.00'),
(303, 'Shahdol', 11, '', '0.00'),
(304, 'Shajapur', 11, '', '0.00'),
(305, 'Sheopur', 11, '', '0.00'),
(306, 'Shivpuri', 11, '', '0.00'),
(307, 'Sidhi', 11, '', '0.00'),
(308, 'Singrauli', 11, '', '0.00'),
(309, 'Tikamgarh', 11, '', '0.00'),
(310, 'Ujjain', 11, '', '0.00'),
(311, 'Umaria', 11, '', '0.00'),
(312, 'Vidisha', 11, '', '0.00'),
(313, 'Ahmednagar', 12, '', '0.00'),
(314, 'Akola', 12, '', '0.00'),
(315, 'Amrawati', 12, '', '0.00'),
(316, 'Aurangabad', 12, '', '0.00'),
(317, 'Bhandara', 12, '', '0.00'),
(318, 'Beed', 12, '', '0.00'),
(319, 'Buldhana', 12, '', '0.00'),
(320, 'Chandrapur', 12, '', '0.00'),
(321, 'Dhule', 12, '', '0.00'),
(322, 'Gadchiroli', 12, '', '0.00'),
(323, 'Gondiya', 12, '', '0.00'),
(324, 'Hingoli', 12, '', '0.00'),
(325, 'Jalgaon', 12, '', '0.00'),
(326, 'Jalna', 12, '', '0.00'),
(327, 'Kolhapur', 12, '', '0.00'),
(328, 'Latur', 12, '', '0.00'),
(329, 'Mumbai City', 12, '', '0.00'),
(330, 'Mumbai suburban', 12, '', '0.00'),
(331, 'Nandurbar', 12, '', '0.00'),
(332, 'Nanded', 12, '', '0.00'),
(333, 'Nagpur', 12, '', '0.00'),
(334, 'Nashik', 12, '', '0.00'),
(335, 'Osmanabad', 12, '', '0.00'),
(336, 'Parbhani', 12, '', '0.00'),
(337, 'Pune', 12, '', '0.00'),
(338, 'Raigad', 12, '', '0.00'),
(339, 'Ratnagiri', 12, '', '0.00'),
(340, 'Sindhudurg', 12, '', '0.00'),
(341, 'Sangli', 12, '', '0.00'),
(342, 'Solapur', 12, '', '0.00'),
(343, 'Satara', 12, '', '0.00'),
(344, 'Thane', 12, '', '0.00'),
(345, 'Wardha', 12, '', '0.00'),
(346, 'Washim', 12, '', '0.00'),
(347, 'Yavatmal', 12, '', '0.00'),
(348, 'Bishnupur', 13, '', '0.00'),
(349, 'Churachandpur', 13, '', '0.00'),
(350, 'Chandel', 13, '', '0.00'),
(351, 'Imphal East', 13, '', '0.00'),
(352, 'Senapati', 13, '', '0.00'),
(353, 'Tamenglong', 13, '', '0.00'),
(354, 'Thoubal', 13, '', '0.00'),
(355, 'Ukhrul', 13, '', '0.00'),
(356, 'Imphal West', 13, '', '0.00'),
(357, 'East Garo Hills', 14, '', '0.00'),
(358, 'East Khasi Hills', 14, '', '0.00'),
(359, 'Jaintia Hills', 14, '', '0.00'),
(360, 'Ri-Bhoi', 14, '', '0.00'),
(361, 'South Garo Hills', 14, '', '0.00'),
(362, 'West Garo Hills', 14, '', '0.00'),
(363, 'West Khasi Hills', 14, '', '0.00'),
(364, 'Aizawl', 15, '', '0.00'),
(365, 'Champhai', 15, '', '0.00'),
(366, 'Kolasib', 15, '', '0.00'),
(367, 'Lawngtlai', 15, '', '0.00'),
(368, 'Lunglei', 15, '', '0.00'),
(369, 'Mamit', 15, '', '0.00'),
(370, 'Saiha', 15, '', '0.00'),
(371, 'Serchhip', 15, '', '0.00'),
(372, 'Dimapur', 16, '', '0.00'),
(373, 'Kohima', 16, '', '0.00'),
(374, 'Mokokchung', 16, '', '0.00'),
(375, 'Mon', 16, '', '0.00'),
(376, 'Phek', 16, '', '0.00'),
(377, 'Tuensang', 16, '', '0.00'),
(378, 'Wokha', 16, '', '0.00'),
(379, 'Zunheboto', 16, '', '0.00'),
(380, 'Angul', 17, '', '0.00'),
(381, 'Boudh', 17, '', '0.00'),
(382, 'Bhadrak', 17, '', '0.00'),
(383, 'Bolangir', 17, '', '0.00'),
(384, 'Bargarh', 17, '', '0.00'),
(385, 'Baleswar', 17, '', '0.00'),
(386, 'Cuttack', 17, '', '0.00'),
(387, 'Debagarh', 17, '', '0.00'),
(388, 'Dhenkanal', 17, '', '0.00'),
(389, 'Ganjam', 17, '', '0.00'),
(390, 'Gajapati', 17, '', '0.00'),
(391, 'Jharsuguda', 17, '', '0.00'),
(392, 'Jajapur', 17, '', '0.00'),
(393, 'Jagatsinghpur', 17, '', '0.00'),
(394, 'Khordha', 17, '', '0.00'),
(395, 'Kendujhar', 17, '', '0.00'),
(396, 'Kalahandi', 17, '', '0.00'),
(397, 'Kandhamal', 17, '', '0.00'),
(398, 'Koraput', 17, '', '0.00'),
(399, 'Kendrapara', 17, '', '0.00'),
(400, 'Malkangiri', 17, '', '0.00'),
(401, 'Mayurbhanj', 17, '', '0.00'),
(402, 'Nabarangpur', 17, '', '0.00'),
(403, 'Nuapada', 17, '', '0.00'),
(404, 'Nayagarh', 17, '', '0.00'),
(405, 'Puri', 17, '', '0.00'),
(406, 'Rayagada', 17, '', '0.00'),
(407, 'Sambalpur', 17, '', '0.00'),
(408, 'Subarnapur', 17, '', '0.00'),
(409, 'Sundargarh', 17, '', '0.00'),
(410, 'Karaikal', 27, '', '0.00'),
(411, 'Mahe', 27, '', '0.00'),
(412, 'Puducherry', 27, '', '0.00'),
(413, 'Yanam', 27, '', '0.00'),
(414, 'Amritsar', 18, '', '0.00'),
(415, 'Bathinda', 18, '', '0.00'),
(416, 'Firozpur', 18, '', '0.00'),
(417, 'Faridkot', 18, '', '0.00'),
(418, 'Fatehgarh Sahib', 18, '', '0.00'),
(419, 'Gurdaspur', 18, '', '0.00'),
(420, 'Hoshiarpur', 18, '', '0.00'),
(421, 'Jalandhar', 18, '', '0.00'),
(422, 'Kapurthala', 18, '', '0.00'),
(423, 'Ludhiana', 18, '', '0.00'),
(424, 'Mansa', 18, '', '0.00'),
(425, 'Moga', 18, '', '0.00'),
(426, 'Mukatsar', 18, '', '0.00'),
(427, 'Nawan Shehar', 18, '', '0.00'),
(428, 'Patiala', 18, '', '0.00'),
(429, 'Rupnagar', 18, '', '0.00'),
(430, 'Sangrur', 18, '', '0.00'),
(431, 'Ajmer', 19, '', '0.00'),
(432, 'Alwar', 19, '', '0.00'),
(433, 'Bikaner', 19, '', '0.00'),
(434, 'Barmer', 19, '', '0.00'),
(435, 'Banswara', 19, '', '0.00'),
(436, 'Bharatpur', 19, '', '0.00'),
(437, 'Baran', 19, '', '0.00'),
(438, 'Bundi', 19, '', '0.00'),
(439, 'Bhilwara', 19, '', '0.00'),
(440, 'Churu', 19, '', '0.00'),
(441, 'Chittorgarh', 19, '', '0.00'),
(442, 'Dausa', 19, '', '0.00'),
(443, 'Dholpur', 19, '', '0.00'),
(444, 'Dungapur', 19, '', '0.00'),
(445, 'Ganganagar', 19, '', '0.00'),
(446, 'Hanumangarh', 19, '', '0.00'),
(447, 'Juhnjhunun', 19, '', '0.00'),
(448, 'Jalore', 19, '', '0.00'),
(449, 'Jodhpur', 19, '', '0.00'),
(450, 'Jaipur', 19, '', '0.00'),
(451, 'Jaisalmer', 19, '', '0.00'),
(452, 'Jhalawar', 19, '', '0.00'),
(453, 'Karauli', 19, '', '0.00'),
(454, 'Kota', 19, '', '0.00'),
(455, 'Nagaur', 19, '', '0.00'),
(456, 'Pali', 19, '', '0.00'),
(457, 'Pratapgarh', 19, '', '0.00'),
(458, 'Rajsamand', 19, '', '0.00'),
(459, 'Sikar', 19, '', '0.00'),
(460, 'Sawai Madhopur', 19, '', '0.00'),
(461, 'Sirohi', 19, '', '0.00'),
(462, 'Tonk', 19, '', '0.00'),
(463, 'Udaipur', 19, '', '0.00'),
(464, 'East Sikkim', 20, '', '0.00'),
(465, 'North Sikkim', 20, '', '0.00'),
(466, 'South Sikkim', 20, '', '0.00'),
(467, 'West Sikkim', 20, '', '0.00'),
(468, 'Ariyalur', 21, '', '0.00'),
(469, 'Chennai', 21, '', '0.00'),
(470, 'Coimbatore', 21, '', '0.00'),
(471, 'Cuddalore', 21, '', '0.00'),
(472, 'Dharmapuri', 21, '', '0.00'),
(473, 'Dindigul', 21, '', '0.00'),
(474, 'Erode', 21, '', '0.00'),
(475, 'Kanchipuram', 21, '', '0.00'),
(476, 'Kanyakumari', 21, '', '0.00'),
(477, 'Karur', 21, '', '0.00'),
(478, 'Madurai', 21, '10', '10%'),
(479, 'Nagapattinam', 21, '', '0.00'),
(480, 'The Nilgiris', 21, '', '0.00'),
(481, 'Namakkal', 21, '', '0.00'),
(482, 'Perambalur', 21, '', '0.00'),
(483, 'Pudukkottai', 21, '', '0.00'),
(484, 'Ramanathapuram', 21, '', '0.00'),
(485, 'Salem', 21, '', '0.00'),
(486, 'Sivagangai', 21, '', '0.00'),
(487, 'Tiruppur', 21, '', '0.00'),
(488, 'Tiruchirappalli', 21, '', '0.00'),
(489, 'Theni', 21, '', '0.00'),
(490, 'Tirunelveli', 21, '', '0.00'),
(491, 'Thanjavur', 21, '', '0.00'),
(492, 'Thoothukudi', 21, '', '0.00'),
(493, 'Thiruvallur', 21, '', '0.00'),
(494, 'Thiruvarur', 21, '', '0.00'),
(495, 'Tiruvannamalai', 21, '', '0.00'),
(496, 'Vellore', 21, '', '0.00'),
(497, 'Villupuram', 21, '', '0.00'),
(498, 'Dhalai', 22, '', '0.00'),
(499, 'North Tripura', 22, '', '0.00'),
(500, 'South Tripura', 22, '', '0.00'),
(501, 'West Tripura', 22, '', '0.00'),
(502, 'Almora', 33, '', '0.00'),
(503, 'Bageshwar', 33, '', '0.00'),
(504, 'Chamoli', 33, '', '0.00'),
(505, 'Champawat', 33, '', '0.00'),
(506, 'Dehradun', 33, '', '0.00'),
(507, 'Haridwar', 33, '', '0.00'),
(508, 'Nainital', 33, '', '0.00'),
(509, 'Pauri Garhwal', 33, '', '0.00'),
(510, 'Pithoragharh', 33, '', '0.00'),
(511, 'Rudraprayag', 33, '', '0.00'),
(512, 'Tehri Garhwal', 33, '', '0.00'),
(513, 'Udham Singh Nagar', 33, '', '0.00'),
(514, 'Uttarkashi', 33, '', '0.00'),
(515, 'Agra', 23, '', '0.00'),
(516, 'Allahabad', 23, '', '0.00'),
(517, 'Aligarh', 23, '', '0.00'),
(518, 'Ambedkar Nagar', 23, '', '0.00'),
(519, 'Auraiya', 23, '', '0.00'),
(520, 'Azamgarh', 23, '', '0.00'),
(521, 'Barabanki', 23, '', '0.00'),
(522, 'Badaun', 23, '', '0.00'),
(523, 'Bagpat', 23, '', '0.00'),
(524, 'Bahraich', 23, '', '0.00'),
(525, 'Bijnor', 23, '', '0.00'),
(526, 'Ballia', 23, '', '0.00'),
(527, 'Banda', 23, '', '0.00'),
(528, 'Balrampur', 23, '', '0.00'),
(529, 'Bareilly', 23, '', '0.00'),
(530, 'Basti', 23, '', '0.00'),
(531, 'Bulandshahr', 23, '', '0.00'),
(532, 'Chandauli', 23, '', '0.00'),
(533, 'Chitrakoot', 23, '', '0.00'),
(534, 'Deoria', 23, '', '0.00'),
(535, 'Etah', 23, '', '0.00'),
(536, 'Kanshiram Nagar', 23, '', '0.00'),
(537, 'Etawah', 23, '', '0.00'),
(538, 'Firozabad', 23, '', '0.00'),
(539, 'Farrukhabad', 23, '', '0.00'),
(540, 'Fatehpur', 23, '', '0.00'),
(541, 'Faizabad', 23, '', '0.00'),
(542, 'Gautam Buddha Nagar', 23, '', '0.00'),
(543, 'Gonda', 23, '', '0.00'),
(544, 'Ghazipur', 23, '', '0.00'),
(545, 'Gorkakhpur', 23, '', '0.00'),
(546, 'Ghaziabad', 23, '', '0.00'),
(547, 'Hamirpur', 23, '', '0.00'),
(548, 'Hardoi', 23, '', '0.00'),
(549, 'Mahamaya Nagar', 23, '', '0.00'),
(550, 'Jhansi', 23, '', '0.00'),
(551, 'Jalaun', 23, '', '0.00'),
(552, 'Jyotiba Phule Nagar', 23, '', '0.00'),
(553, 'Jaunpur District', 23, '', '0.00'),
(554, 'Kanpur Dehat', 23, '', '0.00'),
(555, 'Kannauj', 23, '', '0.00'),
(556, 'Kanpur Nagar', 23, '', '0.00'),
(557, 'Kaushambi', 23, '', '0.00'),
(558, 'Kushinagar', 23, '', '0.00'),
(559, 'Lalitpur', 23, '', '0.00'),
(560, 'Lakhimpur Kheri', 23, '', '0.00'),
(561, 'Lucknow', 23, '', '0.00'),
(562, 'Mau', 23, '', '0.00'),
(563, 'Meerut', 23, '', '0.00'),
(564, 'Maharajganj', 23, '', '0.00'),
(565, 'Mahoba', 23, '', '0.00'),
(566, 'Mirzapur', 23, '', '0.00'),
(567, 'Moradabad', 23, '', '0.00'),
(568, 'Mainpuri', 23, '', '0.00'),
(569, 'Mathura', 23, '', '0.00'),
(570, 'Muzaffarnagar', 23, '', '0.00'),
(571, 'Pilibhit', 23, '', '0.00'),
(572, 'Pratapgarh', 23, '', '0.00'),
(573, 'Rampur', 23, '', '0.00'),
(574, 'Rae Bareli', 23, '', '0.00'),
(575, 'Saharanpur', 23, '', '0.00'),
(576, 'Sitapur', 23, '', '0.00'),
(577, 'Shahjahanpur', 23, '', '0.00'),
(578, 'Sant Kabir Nagar', 23, '', '0.00'),
(579, 'Siddharthnagar', 23, '', '0.00'),
(580, 'Sonbhadra', 23, '', '0.00'),
(581, 'Sant Ravidas Nagar', 23, '', '0.00'),
(582, 'Sultanpur', 23, '', '0.00'),
(583, 'Shravasti', 23, '', '0.00'),
(584, 'Unnao', 23, '', '0.00'),
(585, 'Varanasi', 23, '', '0.00'),
(586, 'Birbhum', 24, '', '0.00'),
(587, 'Bankura', 24, '', '0.00'),
(588, 'Bardhaman', 24, '', '0.00'),
(589, 'Darjeeling', 24, '', '0.00'),
(590, 'Dakshin Dinajpur', 24, '', '0.00'),
(591, 'Hooghly', 24, '', '0.00'),
(592, 'Howrah', 24, '', '0.00'),
(593, 'Jalpaiguri', 24, '', '0.00'),
(594, 'Cooch Behar', 24, '', '0.00'),
(595, 'Kolkata', 24, '', '0.00'),
(596, 'Malda', 24, '', '0.00'),
(597, 'Midnapore', 24, '', '0.00'),
(598, 'Murshidabad', 24, '', '0.00'),
(599, 'Nadia', 24, '', '0.00'),
(600, 'North 24 Parganas', 24, '', '0.00'),
(601, 'South 24 Parganas', 24, '', '0.00'),
(602, 'Purulia', 24, '', '0.00'),
(603, 'Uttar Dinajpur', 24, '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `commission_earning`
--

CREATE TABLE IF NOT EXISTS `commission_earning` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `crm_errormsg`
--

CREATE TABLE IF NOT EXISTS `crm_errormsg` (
  `er_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `discription` text NOT NULL,
  `code` int(11) NOT NULL,
  `help` text NOT NULL,
  `style` text NOT NULL,
  PRIMARY KEY (`er_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `crm_errormsg`
--

INSERT INTO `crm_errormsg` (`er_id`, `title`, `discription`, `code`, `help`, `style`) VALUES
(1, 'access denied', 'You don''t have permission to access ,Please contact Administrator ', 110, 'You may have limited access account,just provide access permission to your group.', 'style="display: block;text-align:left;\r\nwidth: 99%;\r\n-webkit-border-radius: 5px;\r\n-moz-border-radius: 5px;\r\nborder-radius: 5px;\r\n\r\nborder: 1px solid #7B040F;\r\ncolor: #7B040F; margin:2px;\r\npadding: 5px 0;\r\ntext-indent: 40px;\r\nfont-size: 14px;"');

-- --------------------------------------------------------

--
-- Table structure for table `crm_eventhistrory`
--

CREATE TABLE IF NOT EXISTS `crm_eventhistrory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `event` varchar(50) NOT NULL,
  `xml` varchar(25) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `crm_eventhistrory`
--

INSERT INTO `crm_eventhistrory` (`id`, `title`, `pid`, `date`, `event`, `xml`, `userid`, `type`, `name`) VALUES
(1, 'users', 'user_id=14', '2021-01-28 22:39:02', 'Updated', 'users', 1, 'update', 'administrator'),
(2, 'cities', 'id=478', '2021-01-28 22:55:28', 'Updated', 'cities', 1, 'update', 'administrator'),
(3, 'categories', 'pk=1', '2021-02-04 17:47:11', 'Inserted', 'categories', 1, 'input', 'administrator'),
(4, 'categories', 'pk=2', '2021-02-04 17:47:36', 'Inserted', 'categories', 1, 'input', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `crm_moduleaccess`
--

CREATE TABLE IF NOT EXISTS `crm_moduleaccess` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `add` enum('yes','no') NOT NULL DEFAULT 'no',
  `edit` enum('yes','no') NOT NULL DEFAULT 'no',
  `view` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete` enum('yes','no') NOT NULL DEFAULT 'no',
  `group_id` int(11) NOT NULL,
  `list` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

--
-- Dumping data for table `crm_moduleaccess`
--

INSERT INTO `crm_moduleaccess` (`m_id`, `module_name`, `add`, `edit`, `view`, `delete`, `group_id`, `list`) VALUES
(1, 'users', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(2, 'documents', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(4, 'payment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(5, 'wallet', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(6, 'withdrawal', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(7, 'laywer_appointments', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(8, 'cities', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(9, 'categories', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(10, 'fees', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(11, 'crm_invoiceorder', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(12, 'crm_ticket', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(13, 'crm_service_contract', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(14, 'crm_asset', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(15, 'crm_categories', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(16, 'crm_comment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(17, 'crm_eventhistrory', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(18, 'crm_faq', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(19, 'crm_lead', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(20, 'crm_organization', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(21, 'crm_eventhistrory', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(22, 'CST_administration_tools', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(23, 'CST_application_logs', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(24, 'CST_attached_files', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(25, 'CST_comments', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(26, 'CST_companies', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(27, 'CST_config_categories', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(28, 'CST_config_options', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(29, 'CST_file_repo', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(30, 'CST_file_repo_attributes', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(31, 'CST_file_types', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(32, 'CST_im_types', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(33, 'CST_message_subscriptions', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(34, 'CST_project_companies', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(35, 'CST_project_file_revisions', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(36, 'CST_project_files', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(37, 'CST_project_folders', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(38, 'CST_project_forms', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(39, 'CST_project_messages', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(40, 'CST_project_milestones', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(41, 'CST_project_task_lists', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(42, 'CST_project_tasks', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(43, 'CST_project_users', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(44, 'CST_projects', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(45, 'CST_searchable_objects', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(46, 'CST_tags', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(47, 'CST_user_im_values', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(48, 'CST_users', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(49, 'Rubric_Subtopics', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(50, 'Rubric_Topics', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(51, 'Rubrics_Question', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(52, 'Rubrics_Registration', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(53, 'add_product', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(54, 'admin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(55, 'admin_calculations', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(56, 'ambulance', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(57, 'application', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(58, 'appointment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(59, 'asset', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(60, 'assigntabsettings', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(61, 'bankeyword', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(62, 'bill', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(63, 'chat_friends', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(64, 'chatdetails', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(65, 'chatmsg', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(66, 'clickmap', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(67, 'complaints', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(68, 'crm_a', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(69, 'crm_announcements', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(70, 'crm_asd', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(71, 'crm_banner', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(72, 'crm_contact_type', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(73, 'crm_country', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(74, 'crm_currency', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(75, 'crm_dashboard', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(76, 'crm_email_templates', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(77, 'crm_emailnotification', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(78, 'crm_errormsg', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(79, 'crm_group', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(80, 'crm_invoice_order', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(81, 'crm_item_details', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(82, 'crm_mailconfig', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(83, 'crm_manufacturer', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(84, 'crm_menu', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(85, 'crm_menu_types', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(86, 'crm_milestone_type', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(87, 'crm_moduleaccess', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(88, 'crm_modules', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(89, 'crm_permissions', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(90, 'crm_pricebook', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(91, 'crm_priority', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(92, 'crm_product_category', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(93, 'crm_project', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(94, 'crm_project_milestone', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(95, 'crm_project_status', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(96, 'crm_project_task', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(97, 'crm_purchase_order', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(98, 'crm_role', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(99, 'crm_sales_order', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(100, 'crm_sharing', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(101, 'crm_sites', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(102, 'crm_status', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(103, 'crm_tax', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(104, 'crm_templates', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(105, 'crm_tracking_unit', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(106, 'crm_users', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(107, 'crm_vendor', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(108, 'demo', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(109, 'demo_user', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(110, 'departuserscrnsetting', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(111, 'depttabsettings', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(112, 'design', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(113, 'doctor_register', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(114, 'donors', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(115, 'eb_admin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(116, 'eb_group', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(117, 'eb_members', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(118, 'eb_modules', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(119, 'eb_test', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(120, 'eb_tx', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(121, 'events', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(122, 'exact_addtocart', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(123, 'exact_businesscardsdesigner', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(124, 'exact_card_category', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(125, 'exact_card_product', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(126, 'exact_card_style', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(127, 'exact_card_subcat', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(128, 'exact_cate', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(129, 'exact_category', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(130, 'exact_catetype', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(131, 'exact_checkout', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(132, 'exact_design', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(133, 'exact_imag', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(134, 'exact_newproduct', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(135, 'exact_product', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(136, 'exact_registration', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(137, 'exact_shipaddress', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(138, 'exact_shipping', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(139, 'exact_subcate', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(140, 'exact_subproduct', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(141, 'expenses', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(142, 'feedback', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(143, 'feedbacktable', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(144, 'filetransfer', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(145, 'guestbook', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(146, 'holiday', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(147, 'jenChat_Messages', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(148, 'jenChat_Users', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(149, 'lab', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(150, 'lead_customer', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(151, 'live_banner', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(152, 'live_opretor', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(153, 'live_user', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(154, 'livedepartment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(155, 'livemessage', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(156, 'liveoperators', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(157, 'livesupportlogin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(158, 'login', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(159, 'logintrack', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(160, 'mailconfig', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(161, 'ml', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(162, 'modules', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(163, 'patient_histroy', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(164, 'pec_mssgs', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(165, 'priceing', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(166, 'print_addtocart', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(167, 'print_admin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(168, 'print_category', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(169, 'print_checkout', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(170, 'print_designproduct', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(171, 'print_product', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(172, 'print_subproduct', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(173, 'purchase', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(174, 'register', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(175, 'reports', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(176, 'rubrics_answer', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(177, 'senioradmin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(178, 'sess_data', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(179, 'single_reports', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(180, 'sm_course', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(181, 'sm_degree', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(182, 'sm_offering', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(183, 'sm_programme', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(184, 'sm_specialization', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(185, 'sm_staff', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(186, 'sm_test', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(187, 'staff_quarters', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(188, 'supplier', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(189, 'tbl_admin', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(190, 'tbl_comment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(191, 'tbl_friends', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(192, 'tbl_messages', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(193, 'tbl_photo', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(194, 'tbl_phots', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(195, 'tbl_register', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(196, 'tbl_scrap', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(197, 'tbl_testimonial', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(198, 'tbl_video', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(199, 'training_student', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(200, 'transfertable', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(201, 'tshirt_registartion', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(202, 'tshirt_shipping', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(203, 'unsubscribe', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(204, 'user_message', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(205, 'userdepartment', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(206, 'usertabdatas', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(207, 'usertable', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(208, 'visitors', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(209, 'warehouse', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(210, 'webtrack', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(211, 'crm_document', 'yes', 'yes', 'yes', 'yes', 2, 'yes'),
(212, 'crm_users', 'no', 'yes', 'yes', 'no', 2, 'no'),
(214, 'crm_document', 'yes', 'yes', 'yes', 'yes', 4, 'yes'),
(215, 'crm_users', 'no', 'yes', 'yes', 'no', 4, 'no'),
(216, 'exam', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(217, 'crm_contact', 'no', 'no', 'yes', 'no', 2, 'yes'),
(218, 'exam', 'no', 'no', 'yes', 'no', 2, 'yes'),
(219, 'exam', 'no', 'no', 'yes', 'no', 4, 'yes'),
(220, 'exam_limit', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(221, 'exam_limit', 'no', 'no', 'yes', 'no', 2, 'yes'),
(222, 'exam', 'no', 'no', 'yes', 'no', 5, 'yes'),
(223, 'crm_document', 'yes', 'yes', 'yes', 'yes', 5, 'yes'),
(224, 'crm_users', 'no', 'yes', 'yes', 'no', 5, 'no'),
(225, 'question_category', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(226, 'questions', 'yes', 'yes', 'yes', 'yes', 3, 'yes'),
(228, 'question_category', 'yes', 'yes', 'yes', 'yes', 2, 'yes'),
(229, 'exam', 'yes', 'yes', 'yes', 'yes', 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `crm_modules`
--

CREATE TABLE IF NOT EXISTS `crm_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  `path` varchar(250) NOT NULL,
  `moduleID` varchar(100) NOT NULL,
  `template` varchar(50) NOT NULL,
  `template_fol` varchar(50) NOT NULL,
  `language` varchar(10) NOT NULL,
  `plugin` varchar(250) NOT NULL,
  `accessID` varchar(100) NOT NULL,
  `buffer` varchar(10) NOT NULL DEFAULT 'catch',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `crm_modules`
--

INSERT INTO `crm_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`, `path`, `moduleID`, `template`, `template_fol`, `language`, `plugin`, `accessID`, `buffer`, `status`) VALUES
(1, 'userlogin', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '131497906647', 'dec1', 'templates', '', 'user/login/userlogin/', '1XSPb00mztwoqv', 'dynamic', 0),
(2, 'userlogin1', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '131497906647', 'dec1', 'templates', '', 'user/login/userlogin/', '2XSPyzxjwqtlns6', 'catch', 0),
(3, 'adminlogin', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1340820482905', 'dec1', 'templates', '', 'user/login/userlogin/', '3XSPzdgplqorjlq', 'catch', 0),
(4, 'forgetpassword', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1377350857932', 'dec1', 'templates', '', 'user/login/userlogin/', '4XSPdluxmkzvgyy0uxj', 'catch', 0),
(5, 'studentlogin', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1406981089586', 'dec1', 'templates', '', 'user/login/userlogin/', '5XSPaz00klu0svnpu', 'catch', 0),
(6, 'parentlogin', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1406981089586', 'dec1', 'templates', '', 'user/login/userlogin/', '6XSPdvgxktzrumot', 'catch', 0),
(7, 'patientlogin', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1412796786230', 'dec1', 'templates', '', 'user/login/userlogin/', '7XSPbxi0qmv0twoqv', 'catch', 0),
(8, 'resetpassword', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, NULL, 0, 0, 1, '', 0, 0, '', 'plugins/user/login/userlogin/', '1414871921837', 'dec1', 'templates', '', 'user/login/userlogin/', '8XSPywjxjyufxx0twi', 'catch', 0);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_code`, `currency_name`, `status`, `delete`) VALUES
(1, '$', 'USD', 0, 0),
(2, '€', 'EUR', 0, 0),
(3, '£', 'GBP', 0, 0),
(4, '₹', 'INR', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE IF NOT EXISTS `days` (
  `days_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(25) NOT NULL,
  PRIMARY KEY (`days_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`days_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday '),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `direct_earnings`
--

CREATE TABLE IF NOT EXISTS `direct_earnings` (
  `pk` int(11) NOT NULL,
  `id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `number` varchar(25) NOT NULL,
  `file` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`pk`, `id`, `user_id`, `title`, `number`, `file`, `status`) VALUES
(1, '1', 1, 'test', 'xxxxx12345', 'test.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eb_group`
--

CREATE TABLE IF NOT EXISTS `eb_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Entity` varchar(25) NOT NULL,
  `Members_of_Entity` text NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `eb_group`
--

INSERT INTO `eb_group` (`group_id`, `Group_Name`, `Description`, `Entity`, `Members_of_Entity`, `pid`) VALUES
(1, 'Support group', 'Support', '', '', 0),
(2, 'Laywers', 'employer', '', '', 0),
(3, 'Administrater', 'he can control everything', '', '', 0),
(4, 'Clients', 'member of this site', '', '', 0),
(5, 'Private', 'member of this site', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `subject` text NOT NULL,
  `from` text NOT NULL,
  `reply` text NOT NULL,
  `cc` text NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `name`, `message`, `subject`, `from`, `reply`, `cc`) VALUES
(1, 'create account', 'Hi,{first_name}\r\n\r\nyour Account successfully create.\r\n\r\nYour Account Information\r\n\r\n{body} \r\n\r\n      By \r\nAdmin Support Team\r\n<a href=''{siteurl}''>{site_name}</a>', 'Successfully Created Account ', '', '', ''),
(2, 'created appointment', 'Hi {first_name},\r\n\r\n{reception_message} \r\n\r\nAppointment Information\r\n\r\nReception Name     : {reception_name}\r\nStaff Name         : {staff_name}\r\nService Name       : {service_name}\r\nAppointment Date   : {date}\r\nAppointment Time   : {time}\r\nEstimate Time      : {estimate_name}\r\nAppointment Price  : {price}\r\nAppointment Day    : {day}\r\n\r\nClient Information\r\n\r\nFirst Name     : {first_name}\r\nLast Name      : {last_name}\r\nMobile Number  : {mobile}\r\n\r\n<a href=''{siteurl}/{reception_link}.html''>Check your Appointment</a>\r\n\r\n      By \r\nAdmin Support Team\r\n<a href=''{siteurl}''>{site_name}</a>', 'Appointment Successfully Created', 'Reyone <mmuniyaraj@gmail.com>', '', ''),
(3, 'forget password reset', 'Hi,{first_name}\r\n\r\nyour password reset here.\r\n\r\n{link}\r\n\r\n      By \r\nAdmin Support Team\r\n<a href=''{siteurl}''>{site_name}</a>', 'Forget password reset', '', '', ''),
(4, 'billing Invoice', 'Hi,{first_name}\nthanks for using our website and payment\nInvoice Information\n\n{body} \n\n      By \nAdmin Support Team\n<a href=''{siteurl}''>{site_name}</a>', 'Billing Invoice for Appointment', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `name` varchar(25) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `commission` varchar(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE IF NOT EXISTS `gps` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `longitude` decimal(10,2) NOT NULL,
  `latitude` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Entity` varchar(25) NOT NULL,
  `Members_of_Entity` text NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `Group_Name`, `Description`, `Entity`, `Members_of_Entity`, `pid`) VALUES
(1, 'Support group', 'Support', '', '', 0),
(2, 'Lawyer Group', 'employer', '', '', 0),
(3, 'Administrater', 'he can control everything', '', '', 0),
(4, 'Client Group', 'member of this site', '', '', 0),
(5, 'Direct Employe Group', 'member of this site', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tiny_image` varchar(200) NOT NULL,
  `small_image` varchar(200) NOT NULL,
  `big_image` varchar(200) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(300) NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  `lang` varchar(25) NOT NULL,
  `page` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_earning`
--

CREATE TABLE IF NOT EXISTS `lawyer_earning` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_withdrawals`
--

CREATE TABLE IF NOT EXISTS `lawyer_withdrawals` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `laywer_appointments`
--

CREATE TABLE IF NOT EXISTS `laywer_appointments` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `lawyer_id` int(10) unsigned DEFAULT NULL,
  `day_of_week` tinyint(3) unsigned DEFAULT '1',
  `slot_date` date DEFAULT NULL,
  `slot_time` time DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `address` text NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `latitude` decimal(10,0) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `main_wallet`
--

CREATE TABLE IF NOT EXISTS `main_wallet` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `title` varchar(25) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main_wallet`
--

INSERT INTO `main_wallet` (`pk`, `id`, `title`, `amount`) VALUES
(1, '', 'Total', 0),
(2, '', 'Commission Amount', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `desc` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mc_currency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `mode` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `payer_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `paymet_for` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `numproduct` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `title`, `mc_currency`, `user_id`, `amount`, `mode`, `date`, `status`, `payer_id`, `payment_status`, `payer_email`, `txn_id`, `payment_type`, `paymet_for`, `checkout_id`, `numproduct`) VALUES
(1, '', '1', 89, 250.00, '1', '2021-01-21 00:00:00', 0, '', '', '', 'TX100067', '', '', 0, 0),
(2, '', '', 8, 300.00, '1', '2021-01-21 00:00:00', 1, '', '', '', 'TX100068', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verified` int(11) NOT NULL,
  `barid` varchar(50) NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` varchar(100) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `c_date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` int(10) NOT NULL AUTO_INCREMENT,
  `docinfoid` int(10) NOT NULL,
  `day_name` varchar(25) NOT NULL,
  `time` time DEFAULT NULL,
  `end_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `todate` date NOT NULL,
  `patient_id` int(1) DEFAULT NULL,
  `service_id` int(1) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `searchkeywords`
--

CREATE TABLE IF NOT EXISTS `searchkeywords` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `key` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_title` varchar(100) NOT NULL,
  `docinfoid` int(11) NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task_title`, `docinfoid`, `from`, `to`, `location_id`) VALUES
(1, 'break time', 2, '2014-10-01 15:30:00', '2014-10-01 16:35:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `userfilters`
--

CREATE TABLE IF NOT EXISTS `userfilters` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `display_name` varchar(25) NOT NULL,
  `Email_Address` varchar(100) NOT NULL,
  `Home_Phone` int(11) NOT NULL,
  `Work_Phone` int(11) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Fax` int(11) NOT NULL,
  `address` text NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postal_Code` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Country` varchar(25) NOT NULL,
  `login` datetime NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `verified` int(11) NOT NULL,
  `recent_login` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete` int(11) NOT NULL,
  `password_reset` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `display_name`, `Email_Address`, `Home_Phone`, `Work_Phone`, `Mobile`, `Fax`, `address`, `City`, `Postal_Code`, `State`, `Country`, `login`, `date_of_birth`, `status`, `verified`, `recent_login`, `image`, `role`, `pid`, `owner`, `organization_id`, `location_id`, `first_name`, `last_name`, `date`, `delete`, `password_reset`) VALUES
(1, 'administrator', 'admin', 'admin', 'administrator', 0, 0, 2147483647, 0, '', 'ewwe', '', 'zx', 'india', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 3, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(2, 'ilayaraja', 'demo', 'ilayaraja', 'demo@gmail.com', 2147483647, 222222222, 2147483647, 2147483647, '5a/1,kotal perumal temple ,south maata street', 'madurai', '625001', 'tamil nadu', 'india', '2014-09-24 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2.jpg', 1, 0, 1, 0, 2, 'ilaya', 'rajawe', '0000-00-00 00:00:00', 0, '5ldn7b3pb2nv44la3p6v03osm0'),
(3, 'test', '1234', 'ewrwer', 'wewe', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 1, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(4, 'raju', 'aaaaaa', 'Raja', 'mmuniyaraj@gmail.com', 2147483647, 2147483647, 2147483647, 2147483647, '<p>testing</p>', 'Eden Prairie', '55344', 'Minnesota', 'United States', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 1, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(7, 'admin', '123456', '', 'admin@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2', 2, 0, 1, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(8, 'admin@gmail.com', 'admin', 'admin12', 'admin', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 3, 0, 1, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(9, 'admin', '123456', 'ilaya', 'sds@gg.com', 12, 32, 32, 23, '<p>232323</p>', 'ewwe', 'wewewe', 'wewe', 'wewe', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(10, 'user123', '123456', 'zxxzxz', 'sds@gg.com', 12, 1221, 12121, 0, '<p>zx</p>', 'zx', 'zx', 'zx', 'zx', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 1, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(11, 'ilayanew', '123456', 'ilayanew', 'employer', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2', 2, 0, 1, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(12, 'ilayaempl', '123456', 'wwwwww', 'sds@gg.com', 2147483647, 32, 2147483647, 2147483647, '<p>sss</p>', 'wwwwwwww', 'wewewe', 'wwwwww', 'india', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 0, 0, 11, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(13, 'sdsdvsd', 'sdvsdvsvd', 'sdvsd', 'sds@gg.com', 2147483647, 222222222, 2147483647, 2147483647, '<p>asas</p>', 'zx', 'wewewe', 'wwwwww', 'india', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 0, 0, 11, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(14, 'newid', '123456', 'test', 'sds@gg.com', 2147483647, 222222222, 2147483647, 2147483647, '<p>acsscas</p>', '478', 'wewewe', 'wewe', 'india', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 11, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(19, 'testnew', '123456', 'admin org', 'ilayarajaq.php@gmail.com', 0, 0, 123345678, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 5, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(20, 'new ownerx', '22439', 'admin org', 'newowner@gmail.com', 0, 0, 123345678, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 6, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(21, 'aja1', '81128', 'admin org', 'raja@gmail.com', 0, 0, 2147483647, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 7, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(23, 'adminnew', '123456', 'adminnew', 'sds12345@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(24, 'adminnew', '123456', 'adminnew', 'szds12345@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(25, 'adminnew', '123456', 'adminnew', 'szdsw12345@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(26, 'testing new org122', '85688', 'testing new org122', 'szdsw12345@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(27, 'test', '123456', 'test', 'sds1111@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(28, 'self', '30026', 'self', 'sds1111@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(29, 'testing55', 'test', 'testing55', 'test', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(30, 'dtest', '123456', 'dtest', 'dtest@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 5, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(31, 'test100', '123456', 'test100', 'test100@gg.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 5, 1, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(32, 'Muniyaraj', 'aaaaaa', 'Muniyaraj', 'mmuniyaraj@hotmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(33, 'reyone', '36300', 'reyone', 'mmuniyaraj@hotmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(34, 'RajuM', 'aaaaaa', 'reyone', 'muniyaraj@hotmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 11, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(35, 'reyone', 'aaaaaa', 'reyone', 'info@reyone.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 5, 1, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(36, 'tha', '67945', 'tha', 'ngibson.tha@cwjamaica.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(37, 'RochelleCodner', '14739', 'tha', 'rcodner.tha@gmail.com', 0, 0, 9855, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 13, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(38, '', '58444', 'reyone', 'mmuniyaraj@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 14, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(39, 'zoorey', '95419', 'zoorey', 'mmuniyaraj@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(40, 'zooreyy', '19139', 'zooreyy', 'mmuniyaraj@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(41, 'Direct Employe', '91964', 'Direct Employe', 'zooreyweb@gmail,com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(42, 'raju', 'aaaaaa', 'Direct Employe', 'watchraju@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 15, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(43, 'THA', '90469', 'THA', 'ngibson.tha@cwjamaica.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(44, 'RochelleCodner', '65238', 'THA', 'rcodner.tha@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 16, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(45, 'RajaM', '46088', 'Direct Employe', 'zooreyweb@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 17, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(47, 'NailaGibson', '36039', 'THA', 'nailapeter@yahoo.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 19, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(48, 'RajM', '26682', 'Direct Employe', 'info@zoorey.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 20, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(51, 'admin5', '123456', 'testing admin', 'admin5@gg.com', 123456, 222222222, 2147483647, 0, '<p>weweweew</p>', 'Tamil Nadu', '', 'wewe', 'india', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 3, 0, 1, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(52, 'new ownersss', '31952', 'Direct Employe', 'sasiya.devsssseloper@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(53, 'qwqwqwq', '68311', 'Direct Employe', 'qwqwqw.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 23, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(54, 'srwerwwerwe', '8523', 'Direct Employe', 'ilayaweweraja.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 24, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(55, 'sfsdfsdssdds', '34958', 'Direct Employe', 'sasiya.devesddssddsloper@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 25, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(56, 'saasasas', '87146', 'Direct Employe', 'sasiya.devewwwwwwweloper@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 26, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(57, 'asas', '65180', 'Direct Employe', 'ilayaaaaaaraja.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 27, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(58, 'aswdaasdas', '67838', 'Direct Employe', 'sasiya.deaaaaaaaaaaaaaveloper@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 28, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(59, 'testwqwqwqwq', '36056', 'Direct Employe', 'ilayarajwqa02x0.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 29, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(60, 'qqaa', '44397', 'Direct Employe', 'sasiyaa.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 30, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(61, 'sefsf', '95694', 'Direct Employe', 'sasiy2a.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 31, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(62, 'AAA', '45358', 'Direct Employe', '3.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 32, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(63, 'afasdasdds', '85505', 'Direct Employe', 'sasiysssssdfda.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 33, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(64, 'afasdasdds', '50500', 'Direct Employe', 'qqq.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 34, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(65, 'neworg', '86789', 'neworg', 'sasiya.developer@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(66, 'newilaya', '25033', 'newilaya', 'sasiya.devxxxeloper@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(67, 'ilaya raja', '13571', 'reyone', 'ilayaraja1.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 0, 35, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(68, 'ilaya', '123456', 'ilaya', 'www@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(70, 'test2', '1111111111', 'test2', 'wwwc@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(72, 'test3', '2222222222', 'test3', 'wwws@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(74, 'test3', '2222222222', 'test3', 'wwws@gmailw.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(76, 'test3qqq', '2222222222', 'test3qqq', 'wwws@gmaislw.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(78, 'ilayatest', '123456', 'ilayatest', 'ilayatest@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 22, 22, 0, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(82, 'TNPSC TEAM', '92014', 'TNPSC TEAM', 'ilayatnpsc@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 25, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(83, 'tnpscraja', '123456', 'tnpscraja', 'tnpsc@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 25, 25, 25, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(85, 'TNPSC SUCCESS TEAM', '123456', 'TNPSC SUCCESS TEAM', 'ilayaraja.php@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 2, 0, 0, 26, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(88, 'ilayaraja', '123456', 'ilayaraja', 'ilaya_sasi2k6@yahoo.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0', 4, 26, 26, 26, 0, '', '', '0000-00-00 00:00:00', 0, ''),
(89, 'demo clients', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1xc', '0000-00-00 00:00:00', 0, ''),
(98, 'user B', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:41:06', 0, ''),
(99, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:46:48', 0, ''),
(100, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:48:45', 0, ''),
(101, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:50:16', 0, ''),
(102, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:51:53', 0, ''),
(103, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:52:33', 0, ''),
(104, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:57:33', 0, ''),
(105, '', '12345', '', 'demo1@gmail.com', 0, 0, 0, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 2, 'ilaya1', 'raja1', '2014-10-19 19:59:00', 0, ''),
(107, 'ilayaraja', '123456', '', 'test@gmail.com', 0, 0, 123456, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 107, 'ilayaewe', 'rajaweew', '2014-10-27 17:23:50', 0, ''),
(109, 'ilaya clinic', '123456', '', 'ilaya@gmail.com', 0, 0, 2147483647, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 109, 'te', 'raja', '2014-10-29 19:43:11', 0, ''),
(110, '', '123456', '', 'mn@gmail.com', 0, 0, 2147483647, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 110, 'we', 'wee', '2014-10-29 19:45:22', 0, ''),
(111, 'ilayanewclinic', '123456', '', 'mn@gmail.com', 0, 0, 2147483647, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 111, 'we', 'wee', '2014-10-29 19:45:45', 0, ''),
(113, 'democompany', '123456', '', 'ilaya@gmail.com', 0, 0, 98765432, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 113, 'raja', 'ram', '2014-12-19 18:00:04', 0, ''),
(114, 'democom', '123456', '', 'ilaya.@gamil.com', 0, 0, 987654321, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 114, 'raja', 'ram', '2014-12-19 18:00:57', 0, ''),
(115, 'zzczxcz', '123456', '', 'il@gmail.com', 0, 0, 987654321, 0, '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 1, 0, 0, 0, 115, 'raj', 'ram', '2014-12-19 18:07:34', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `barid` varchar(25) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE IF NOT EXISTS `withdrawal` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(16) NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `note` text NOT NULL,
  `mode` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`pk`, `id`, `lawyer_id`, `amount`, `created_at`, `updated_at`, `status`, `note`, `mode`, `account`, `ac`) VALUES
(1, '', 98, 250.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `working_time`
--

CREATE TABLE IF NOT EXISTS `working_time` (
  `working_time_id` int(11) NOT NULL AUTO_INCREMENT,
  `days_id` int(11) NOT NULL,
  `from` time NOT NULL,
  `to` time NOT NULL,
  `docinfo_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`working_time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
