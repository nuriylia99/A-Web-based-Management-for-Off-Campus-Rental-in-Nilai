-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 08:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `HouseId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `HouseId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 697315330, 'iylia@gmail.com', 9, NULL, NULL, 'urkyu', 0, '2021-12-20 13:37:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Universiti Sains Islam Malaysia', 'irent@gmail.com', '045737980');

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse`
--

CREATE TABLE `tblhouse` (
  `id` int(11) NOT NULL,
  `owneremail` varchar(200) NOT NULL,
  `HouseTitle` varchar(150) DEFAULT NULL,
  `HouseLocation` varchar(100) DEFAULT NULL,
  `HouseOverview` longtext DEFAULT NULL,
  `PricePerMonth` int(11) DEFAULT NULL,
  `PriceRange` varchar(200) DEFAULT NULL,
  `FurnishingType` varchar(100) DEFAULT NULL,
  `ContractYear` varchar(100) DEFAULT NULL,
  `HouseCapacity` int(11) DEFAULT NULL,
  `ContactNo` varchar(200) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `WashingMachine` int(11) DEFAULT NULL,
  `Refrigerator` int(11) DEFAULT NULL,
  `WaterHeater` int(11) DEFAULT NULL,
  `KitchenCabinet` int(11) DEFAULT NULL,
  `Parking` int(11) DEFAULT NULL,
  `Balcony` int(11) DEFAULT NULL,
  `Television` int(11) DEFAULT NULL,
  `CookerHobHooder` int(11) DEFAULT NULL,
  `WiFi` int(11) DEFAULT NULL,
  `WaterPurifier` int(11) DEFAULT NULL,
  `DryerMachine` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhouse`
--

INSERT INTO `tblhouse` (`id`, `owneremail`, `HouseTitle`, `HouseLocation`, `HouseOverview`, `PricePerMonth`, `PriceRange`, `FurnishingType`, `ContractYear`, `HouseCapacity`, `ContactNo`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `AirConditioner`, `WashingMachine`, `Refrigerator`, `WaterHeater`, `KitchenCabinet`, `Parking`, `Balcony`, `Television`, `CookerHobHooder`, `WiFi`, `WaterPurifier`, `DryerMachine`, `RegDate`, `UpdationDate`) VALUES
(1, 'subki@gmail.com', 'House Semi-D 2 Storey near USIM', '8', 'Best Location\r\nNear Univesity (5KM)\r\n10 KM to the KFC, MESAMALL\r\n10 KM to the Nilai Mosque', 1800, 'RM1500-RM2000', 'FullyFurnished', '2', 7, '+6013456836', 'acacia 3.jpg', 'acacia2.jpg', 'acacia2.jpg', 'acacia5.jpg', 1, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2021-03-18 03:02:50', '2022-01-24 16:02:14'),
(2, 'iylia99@gmail.com', '2 Storey house with corner lot', '9', 'Good Neighbourhood, a lot of USIM students rentals in this area. Near USIM and easy to access any shop or supermart. easy', 1300, 'RM1000-RM1500', 'SemiFurnished', '1', 8, '+60134567356', 'anggerik 1.jpg', 'anggerik 2.jpg', 'anggerik 3.jpg', 'anggerik4.jpg', NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-08 07:44:16', '2022-01-25 17:20:57'),
(11, 'iylia99@gmail.com', 'Double Storey Terrace', '9', '* Intermediate, Double Storey Terrace\r\n* No. of Bedrooms: 4\r\n* No. of Bathrooms: 3\r\n* Land Size: 22 x 75\r\n* Built-Up: 1,800 sq ft\r\n* Newly paint\r\n\r\n• Walking distance to Universiti Sains Islam Malaysia (USIM)\r\n• 15 mins to KLIA and KLIA2\r\n• 5 mins to Tesco and Giant Nilai\r\n• 20 mins to Cyberjaya\r\n• 25 mins to Putrajaya\r\n• 10 mins to KTM Nilai and ERL Salak Tinggi\r\n• 8 mins to Tol Nilai PLUS Highway\r\n• Near to Nilai Medical Hospital, Nilai University, INTI University, Manipal University.', 1300, 'RM1000-RM1500', 'SemiFurnished', '2', 6, '+60146783454', 'desa anggerik.jpg', 'desa anggerik3.jpg', 'desa anggerik1.jpg', 'desa anggerik3.jpeg', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-01-12 15:30:23', '2022-01-25 17:22:06'),
(12, 'subki@gmail.com', 'Apartment Near USIM', '12', 'usim', 1300, 'RM1000-RM1500', 'FullyFurnished', '1', 5, '+60134568987', 'Desa palma 3.jpg', 'Desa palma 5.jpg', 'desa palma 6.jpg', 'Desa palma.jpg', NULL, 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-01-15 08:05:11', '2022-01-25 16:58:36'),
(17, 'subki@gmail.com', 'Family House with big living room', '8', '24 hours security guard\r\n5 KM to USIM\r\n10 KM to Aeon Mall, Tesco Mall\r\nPlayground available\r\nGood Neighbourhood', 1400, 'RM1000-RM1500', 'FullyFurnished', '2', 6, '+60138992838', 'acacia 3.jpg', 'acacia1.jpg', 'acacia2.jpg', 'acacia4.jpg', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-01-23 14:45:22', '2022-01-25 16:59:39'),
(18, 'subki@gmail.com', 'Double Storey House', '14', '3 mins to SJKC Putra Nilai\r\n3 mins to Manipal University, Nilai\r\n5 mins to AEON Nilai, Lotus Nilai and Giant Nilai\r\n5 mins to INTI International University, Nilai\r\n7 mins to USIM\r\n20 mins to KLIA and MITSUI Outlet Park\r\n30 mins to Putrajaya', 1500, 'RM1000-RM1500', 'FullyFurnished', '2', 6, '0135672354', 'Desa Kolej3.jpg', 'Desa kolej1.jpg', 'Desa kolej2.jpeg', 'Desa kolej5.jpg', NULL, 1, NULL, NULL, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2022-01-24 06:55:57', '2022-01-25 17:10:37'),
(20, 'subki@gmail.com', 'Semi D with big balcony', '8', 'Near USIM', 1300, 'RM1000-RM1500', 'FullyFurnished', '2', 5, '0134563824', 'acacia1.jpg', 'acacia 3.jpg', 'acacia4.jpg', 'acacia2.jpg', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-27 06:17:50', '2022-04-11 06:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE `tbllocation` (
  `id` int(11) NOT NULL,
  `LocationName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`id`, `LocationName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Acacia Park', '2021-03-18 02:53:43', NULL),
(9, 'Desa Anggerik', '2021-03-18 02:53:49', NULL),
(10, 'Desa Universiti', '2021-03-18 02:54:30', '2022-01-17 07:21:19'),
(12, 'Desa Palma', '2021-12-08 15:45:49', NULL),
(14, 'Desa Kolej', '2022-01-17 18:25:47', '2022-01-17 18:31:03'),
(18, 'Lily Park A', '2022-01-27 06:19:03', '2022-01-27 06:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(200) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(12, 'Subki bin Hasan', 'subki@gmail.com', 'f49cfe6da85d911981ed790b7f9fedbd', '0134638284', '26/05/1962', '834 TAMAN JAYA', 'TASEK GELUGOR', 'Malaysia', '2022-01-24 19:01:46', '2022-04-11 06:30:32'),
(14, 'Nur Iylia Fathin', 'iylia99@gmail.com', '59df262a47525d8eddddbd114e259f13', '0134567245', NULL, NULL, NULL, NULL, '2022-01-25 17:13:35', NULL),
(15, 'Adlina', 'adlin@gmail.com', '54f524f695350a841c7fd93e6e077182', '0193846578', NULL, NULL, NULL, NULL, '2022-01-26 14:32:32', NULL),
(17, 'Danial Daud', 'danialdaud@gmail.com', 'badabf4cb28f28ca95846c83e280c71d', '0134567245', NULL, NULL, NULL, NULL, '2022-01-27 06:15:41', NULL),
(19, 'Irfan', 'irfan@gmail.com', '2d267e160045d7158a6da4d1e9498ee4', '0134567245', NULL, NULL, NULL, NULL, '2022-03-10 01:07:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '																														<div style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">Welcome to Off-Campus Portal</span></div><div style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><br></span></div><div style=\"text-align: center; \"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">This portal will help students off-campus to easily access the off-campus information and find the best house for them to rent. We will make sure all students off-campus will be treated equally and had great memories when using this portal.</span></div><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><br></span></div><div><br></div>\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '										<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\">1. May we have the owner\'s contact number?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\"><span style=\"font-weight: bold; font-style: italic;\">Yes,</span> you can get the owner\'s contact number after login into the website. You also can message directly to the owner using the message box provided but need to log in first.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\">2. I want to advertise my house but how?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\">You can register as owner and advertise your rental house for students to find a rental house.&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\">3. Do I need to log in to see the house details?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: georgia; font-size: large;\"><span style=\"font-weight: bold; font-style: italic;\">No,</span> you can see the house details as a website guest, and no need to log in. Unfortunately, you need to log in to get the owner\'s contact number and to message the owner.</span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(9, 'fauziah63@gmail.com', 'Desa Anggerik and Acacia Park have a best neighbourhood ', '2022-01-19 07:25:39', 0),
(10, 'fauziah63@gmail.com', 'Desa Anggerik is the best location for off-campus students to stay', '2022-01-19 07:26:10', 1),
(11, 'akmal@gmail.com', 'I love this website as it is very trusted and now I stay at Desa Kolej. It has a nice area and a good neighborhood. ', '2022-01-26 14:38:11', 1),
(12, 'aqilah@gmail.com', 'I love this website', '2022-01-26 14:52:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(200) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(13, 'Fauziah Bahrum', 'fauziah63@gmail.com', 'cd107700ece0c411ca72670652b5ea625a74dfd9', '0143567564', '30/6/1999', '367 TAMAN KAJANG', 'KAJANG', 'Malaysia', '2022-01-17 13:36:42', '2022-04-11 06:31:20'),
(14, 'Izyan Hanani', 'izyan@gmail.com', 'a528fc03e37261faada32c357b7e5f19f9c89b1f', '0195728408', NULL, NULL, NULL, NULL, '2022-01-17 14:01:51', NULL),
(15, 'Akmal Afif', 'akmal@gmail.com', 'f32eac21078584b524f6418ec17b64019b8c287b', '0135043838', NULL, NULL, NULL, NULL, '2022-01-26 14:30:05', NULL),
(16, 'Aqilah Abd Hamid', 'aqilah@gmail.com', 'c43802b122b43d75ff95e209abd7bb794cfb8b42', '0134789567', NULL, NULL, NULL, NULL, '2022-01-26 14:51:20', NULL),
(17, 'Irfan Afif', 'irfan@gmail.com', '78ba909c9b820d58e610ca44d770afffe2758097', '0134567245', NULL, NULL, NULL, NULL, '2022-01-27 06:14:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhouse`
--
ALTER TABLE `tblhouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllocation`
--
ALTER TABLE `tbllocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblhouse`
--
ALTER TABLE `tblhouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbllocation`
--
ALTER TABLE `tbllocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
