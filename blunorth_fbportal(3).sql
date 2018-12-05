-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2018 at 09:25 AM
-- Server version: 5.6.41-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blunorth_fbportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_09_194326_create_verify_users_table', 1),
(4, '2018_09_16_020836_create_sessions_table', 1),
(6, '2018_10_20_053620_create_reports_table', 2),
(7, '2018_10_23_140200_create_profiles_table', 3),
(8, '2018_11_16_144807_add_to_reports_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kinLastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kinFirstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kinEmail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kinPhone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bvn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `dob`, `street`, `city`, `state`, `profile_picture`, `certificate`, `kinLastName`, `kinFirstName`, `kinEmail`, `kinPhone`, `relationship`, `accountname`, `accountno`, `bank`, `bvn`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '1987-11-18', 'Plot 161 umuimo Estate/ Umueze Abayi, Aba', 'Aba', 'Abia', '20180531_070302_1540730250.jpg', 'Facebook Blueprint 30/60/90\r\nGoogle Digital Skills Certificate', 'Agu', 'Bethel', 'stanleyagu31@yahoo.com', '08062845709', 'Brother', 'Agu Stanley C', '0041190253', 'GTB', '22185060691', 32, '2018-10-28 16:37:31', '2018-10-28 16:37:31'),
(4, '1990-04-15', '3 Azuka ext ogbor hill Aba', 'Aba', 'Abia', 'CASPERJOE PRODUCTION_1540860747.jpg', 'google digital skill', 'Chineya', 'okpara', 'chineyaokpara283@gmail.com', '07085662379', 'sister', 'casper okpara josiah', '3041030612', 'First Bank of Nigeria', '22216287909', 38, '2018-10-30 04:52:28', '2018-10-30 04:52:28'),
(5, '1996-05-19', '36 Immaculate Avenue', 'Aba', 'Abia', 'id card salesbay_1540984086.jpg', 'Google Digital Skills for Africa', 'Onu', 'Onyinye', 'onyinyeblossom@gmail.com', '07061217185', 'Sister', 'Emeka Daniel Onu', '2077313212', 'UBA BANK', '22212707883', 24, '2018-10-31 15:08:06', '2018-10-31 15:08:06'),
(6, '1981-03-22', '38 BRASS STREET', 'ABA', 'Abia', 'Headshot_1541111553.jpg', 'GOOGLE DIGITAL SKILLS FOR AFRICA', 'DURU', 'STANLEY', 'majesticstan@gmail.com', '08052219038', 'SPOUSE', 'AMARACHI STANLEY-DURU', '0126665201', 'GTB', '22151122297', 19, '2018-11-02 02:32:33', '2018-11-02 02:32:33'),
(7, '1988-05-03', '164 Faulks Road', 'Aba', 'Abia', 'jnm_1541372054.jpg', 'Google Digital Skills Certification', 'Ogumka', 'Ezinne', 'ezinnejoy@gmail.com', '08148199050', 'Sister', 'Godson Ogumka', '0044321117', 'Guaranty Trust Bank (GTB)', '22363689076', 14, '2018-11-05 03:54:14', '2018-11-05 03:54:14'),
(8, '2018-11-09', 'fhghuj', 'ghj', 'Abia', 'banner4_1541379301.jpg', 'hijhoijop;', 'femi', 'emmanuel', 'segun@ighub.com.ng', '09087655', 'self', 'femi Temoo', '3456789', 'ghecfefgh', '234567890', 1, '2018-11-05 05:55:01', '2018-11-05 05:55:01'),
(9, '2018-11-22', '65 euhcvegycegce', 'ghjk', 'Abia', 'banner4_1541383712.jpg', 'hjk', 'femi', 'Abdokf', 'segun@ighub.com.ng', '-08987876', 'Father', 'femi Temoo', '2345678', 'ghecfefgh', '345678', 1, '2018-11-05 07:08:32', '2018-11-05 07:08:32'),
(10, '1995-05-01', 'Mbutu Isiahia Umuojima', 'Aba', 'Abia', 'rsz_img_20181015_080403_1541427145.jpg', 'GOOGLE DIGITAL SKILLS FOR AFRICA', 'Uzoma', 'Praisejah', 'praisejah.uzoma@gmail.com', '08168988303', 'Sister', 'Osumgba Chiamaka', '0070874498', 'Union Bank', NULL, 17, '2018-11-05 19:12:25', '2018-11-05 19:12:25'),
(11, '1995-05-27', '2, World Bank Housing Estate, Upstair Line, Umuahia, Abia State.', 'Umuahia', 'Abia', '17158857_1903681429866900_5711029074036908240_o_1541447845.jpg', '- Google Digital Skills In Africa Certification', 'NWACHUKWU', 'DONALD', 'reginaldnwachukwu6@gmail.com', '07037272793', 'brother', 'NWACHUKWU FRANKLIN EKENE', '3057481859', 'FIRST BANK', NULL, 33, '2018-11-06 00:57:25', '2018-11-06 00:57:25'),
(12, '1995-05-27', '2, World Bank Housing Estate, Upstair Line, Umuahia, Abia State.', 'UMUAHIA', 'Abia', '36729138_2156358647932509_848334265199362048_o_1541447986.jpg', '- Google Digital Skills In Africa Certification', 'NWACHUKWU', 'DONALD', 'reginaldnwachukwu6@gmail.com', '07037272793', 'BROTHER', 'NWACHUKWU FRANKLIN EKENE', '3057481859', 'FIRST BANK', NULL, 33, '2018-11-06 00:59:46', '2018-11-06 00:59:46'),
(13, '1985-05-14', '57d Osusu road', 'Aba', 'Abia', 'IMG-20180710-WA0000_1541488715.jpg', 'GOOGLE DIGITAL CERTIFICATION', 'Biliyoung', 'Vestal', 'vestabili@gmail.com', '08030597171', 'Mother', 'Uma Moreino Okorie', '0162652265', 'GUARANTY TRUST BANK', NULL, 35, '2018-11-06 12:18:35', '2018-11-06 12:18:35'),
(14, '1991-07-15', '3 Chukwuwoke Street Iboloji Estate, Rumuigbo', 'Port Harcourt', 'Abia', 'sammy potrait_1541497945.jpg', 'Google Digital Skills for Africa Certification', 'Ukah', 'Paul', 'paul.okoro.ukah@gmail.com', '08142933352', 'Brother', 'Ukah Samuel', '22239271695', 'Zenith', NULL, 15, '2018-11-06 14:52:25', '2018-11-06 14:52:25'),
(15, '1976-08-24', '17B Ngwa road', 'Aba', 'Abia', 'OBA[1]_1541516126.jpg', 'Facebook blueprint', 'NWOBILOR', 'UZOAMAKA', 'degirl007@yahoo.com', '08033279439', 'WIFE', 'NWOBILOR IHUEZE GIDEON', '3003982047', 'FIRSTBANK NIGERIA PLC', NULL, 20, '2018-11-06 19:55:26', '2018-11-06 19:55:26'),
(16, '2000-07-04', '21 wbhe', 'umuahia', 'Abia', '2017-02-21 11.37.35_1541524923.jpg', '1. Hubspot Cert - Content Marketing\r\n2. Hubspot Cert - Social Media Marketing\r\n3. Google Online Marketing Fundamentals', 'Uzoije', 'Ebuka', 'slyk4u@gmail.com', '07037851605', 'brother', 'UZOIJE EZINNE C', '0122880480', 'GTBank', NULL, 28, '2018-11-06 22:22:03', '2018-11-06 22:22:03'),
(17, '1988-03-07', '14 Omenazu Street', 'Aba', 'Abia', 'IMG_20181106_194534_1541545818.jpg', 'None', 'Ogbudimkpa', 'Chioma', 'chiomaogbu@hotmail.com', '08036237887', 'Sister', 'Ogbudimkpa Ikenna', '0002606585', 'Access Bank', NULL, 36, '2018-11-07 04:10:18', '2018-11-07 04:10:18'),
(18, '1995-05-24', 'New Heaven lodge off Government College, Umuahia.', 'Umuahia', 'Abia', 'WhatsApp Image 2018-11-07 at 12.46.15 PM_1541599725.jpeg', 'Google digital certificate', 'Oleh', 'Ogechukwu', 'corporateoge@gmail.com', '08030613012', 'sister', 'Oleh, Ugonna Queen', '0159883175', 'GTBank', NULL, 23, '2018-11-07 19:08:45', '2018-11-07 19:08:45'),
(19, '1994-12-20', '15 Ukonu Street, Egbeluowo, Osisioma L.G.A', 'Aba', 'Abia', 'PhotoGrid_1539535955160_1541607606.jpg', 'Google Digital Skills for Africa\r\nFacebook Blueprint', 'Azubuike', 'Samuel', 'emmanuellar805@gmail.com', '08068254901', 'Father', 'Amarachi Emmanuela Azubuike', '5081151187', 'EcoBank', NULL, 40, '2018-11-07 21:20:06', '2018-11-07 21:20:06'),
(20, '1994-02-21', 'No. 1 aguiyi ironsi layout by Finbarrs road', 'Umuahia', 'Abia', 'IMG_20180927_180020_1541712024.jpg', 'Fundamentals of digital marketing\r\nGoogle Ads (7) \r\nGoogle Analytics (2) \r\nGrow your business with Facebook 30,60, 90 days', 'Ikpeama', 'Odochi', 'g.knowsikpams@gmail.com', '08033922061', 'Mother', 'Ikpeama Godknows Chima', '5483753013', 'FCMB', NULL, 18, '2018-11-09 02:20:24', '2018-11-09 02:20:24'),
(21, '1993-10-15', 'umuamacha,Aba', 'aba', 'Abia', 'mary_1541768659.jpg', 'facebook 30/60', 'Thomas', 'jane', 'tmary794@gmail.com', '9076764713', 'sister', 'thomas Mary', '0021566528', 'diamond bank', NULL, 22, '2018-11-09 18:04:19', '2018-11-09 18:04:19'),
(22, '1988-10-15', '12 Imenkoma street', 'Aba', 'Abia', 'IMG_20180416_140502[1]_1541772985.jpg', 'Fundamental digital  marketing certification by Google\r\nGoogle Search certification\r\nGoogle ads fundamental\r\ngoogle analytics certification\r\nFacebook 30 days, 60 days and 90 days', 'Ibekwe', 'Chukwuemeka', 'kelibekwe@gmail.com', '08039548620', 'brother', 'Ibekwe Prince Nwozor', '3064317374', 'First Bank Of Nigeria', NULL, 26, '2018-11-09 19:16:25', '2018-11-09 19:16:25'),
(23, '1993-08-18', '47 st Eugene', 'Aba', 'Abia', '+234 706 214 3898‬ 20180607_141746_1542049660.jpg', 'Not completed yet', 'Ukachukwu', 'David', 'davidukachukw20@gmail.com', '2347034338456', 'Brother', 'Nneka ukachukwu', '0246892125', 'Gtbank', NULL, 21, '2018-11-13 00:07:41', '2018-11-13 00:07:41'),
(24, '1993-08-18', '47 st Eugene', 'Aba', 'Abia', 'Nneka V. Ukachukwu_1542049844.jpg', 'Not completed yet', 'Ukachukwu', 'David', 'davidukachukw20@gmail.com', '2347034338456', 'Brother', 'Nneka ukachukwu', '0246892125', 'Gtbank', NULL, 21, '2018-11-13 00:10:44', '2018-11-13 00:10:44'),
(25, '1993-12-08', '47 St Eugene Street', 'Aba', 'Abia', 'WhatsApp Image 2018-11-12 at 7.17.38 PM_1542055042.jpeg', 'nill', 'David', 'Ukachukwu', 'nnekaukachukwu93@gmail.com', '07034338456', 'Sibling', 'Nneka Ukachukwu', '0246892125', 'GTBank', NULL, 21, '2018-11-13 01:37:22', '2018-11-13 01:37:22'),
(26, '1988-08-24', '17B Ngwa Road Aba', 'Aba', 'Abia', 'rsz_passport___odinakachi_nwafor_1542115802.jpg', 'Google Digital Skill for Africa.', 'Nwafor', 'Chimaroke', 'nwaforchimaroke@gmail.com', '07062750265', 'Brother', 'Odinakachi Nwafor Augustine', '3123377790', 'First Bank Nigeria', NULL, 30, '2018-11-13 18:30:02', '2018-11-13 18:30:02'),
(27, '1991-07-30', '3 Ojiaku Close', 'Aba', 'Abia', 'IMG_1442_1542442264.JPG', 'None', 'Ojiaku', 'Evelyn', 'ojiakuevelyn1@gmail.com', '08037298751', 'Mother', 'Ojiaku Onyinyechi Juliet', '3038784182', 'First Bank', NULL, 37, '2018-11-17 13:11:04', '2018-11-17 13:11:04'),
(28, '1975-02-17', 'plot 1 samuel nwaguru close off umuchichi aba', 'ABA', 'Abia', 'passport_1542483176.jpg', 'google digital skills for africa\r\nfacebook grow your business 30/60/90', 'IWEKANMEZI', 'OBINNA', 'iwekannmezi@yahoo.ca', '08062138150', 'son', 'IWEKA NMEZI', '2103842004', 'UBA', NULL, 41, '2018-11-18 00:32:56', '2018-11-18 00:32:56'),
(29, '1975-02-17', 'plot 1 samuel nwaguru close off umuchichi aba', 'ABA', 'Abia', 'passport_1542483202.jpg', 'google digital skills for africa\r\nfacebook grow your business 30/60/90', 'IWEKANMEZI', 'OBINNA', 'iwekannmezi@yahoo.ca', '08062138150', 'son', 'IWEKA NMEZI', '2103842004', 'UBA', NULL, 41, '2018-11-18 00:33:22', '2018-11-18 00:33:22'),
(30, '1989-02-01', '62 Asa road aba', 'Aba', 'Abia', 'WhatsApp Image 2018-09-04 at 1.47.46 PM_1542809350.jpeg', 'nill', 'Esther', 'Nwaka', 'esther@gmail.com', '07036414709', 'Anty', 'Ufere Samuel Imo', '3001770650', 'Keysone Bank', NULL, 42, '2018-11-21 19:09:11', '2018-11-21 19:09:11'),
(31, '1990-02-07', 'No 4  Chief Ogbusam street Amara jane Umuahia', 'Umuahia', 'Abia', 'fb pp_1542873158.png', '•	Certificate Program in Contract Management, Washington DC.\r\n•	Certificate Program in Public Procurement, Washington DC.\r\n•	Micro Masters on Supply Chain Management Massachusetts Institute of Technology, USA\r\n•	Project Management Professional training (PMP). \r\n•	Google digital skills certification in AdWords and Mobile Advertising 2017', 'Oke', 'Adewumi', 'adewumitoba84@gmail.com', '8162059019', 'brother', 'Oke Adedamola Temitayo', '0034171535', 'Guarantee Trust Bank', NULL, 31, '2018-11-22 12:52:38', '2018-11-22 12:52:38'),
(32, '1990-02-07', 'No 4  Chief Ogbusam street Amara jane Umuahia', 'Umuahia', 'Abia', 'fb pp_1542873908.png', '•	Certificate Program in Contract Management, Washington DC.\r\n•	Certificate Program in Public Procurement, Washington DC.\r\n•	Micro Masters on Supply Chain Management Massachusetts Institute of Technology, USA\r\n•	Project Management Professional training (PMP). \r\n•	Google digital skills certification in AdWords and Mobile Advertising 2017', 'OKE', 'ADEWUMI', 'adewumitoba84@gmail.com', '08162059021', 'brother', 'Oke Adedamola Temitayo', '0034171535', 'GT Bank', NULL, 31, '2018-11-22 13:05:08', '2018-11-22 13:05:08'),
(33, '1992-04-08', 'Okories lodge', 'Umuahia', 'Abia', 'rsz_img_-i6u6js_1542894967.jpg', 'Google digital skills certificate', 'Uzoh', 'Emmanuel', 'chezo55@gmail.com', '08128481892', 'Brother', 'Uzoh Daberechi I.', '0690033357', 'Access bank', NULL, 27, '2018-11-22 18:56:07', '2018-11-22 18:56:07'),
(34, '1992-02-12', 'Love of God close Okigwe road, Aba Abia State', 'Aba', 'Abia', 'LOIS PETERS_1543229483.jpg', 'Non', 'Peters', 'Uzor', 'uzor_peters@gmail.com', '08141517724', 'Brother', 'Lois Peters Oluebube', '2006679457', 'Zenith Bank', NULL, 39, '2018-11-26 15:51:25', '2018-11-26 15:51:25'),
(35, '1994-10-15', '12 chief otitestreet, Umuamacha,Umueze,Aba', 'ABA', 'Abia', 'mt_1543278254.jpg', 'GOOGLE DIGITAL SKILLS', 'Thomas', 'Lilian', 'Lilianthomasogechi@gmail.com', '07030757895', 'single', 'Thomas Mary', '0021566528', 'Diamond', NULL, 22, '2018-11-27 05:24:14', '2018-11-27 05:24:14'),
(36, '1988-01-23', '1c chilaka avenue, ab', 'aba', 'Abia', 'Laiza King _2_1543295672.jpg', 'https://drive.google.com/open?id=190LPKj7mdg_ebkmKgG7i4YkpNEJ1gK8O', 'elizabeth', 'kalu', 'elizabeth@ighub.com.ng', '07052990051', 'sister', 'Elizabeth Kalu.', '0118020489', 'GTBank', NULL, 12, '2018-11-27 10:14:33', '2018-11-27 10:14:33'),
(37, '1993-08-18', '47 st Eugene', 'Aba', 'Abia', '+234 706 214 3898‬ 20180607_141746_1543347973.jpg', 'None yet', 'Ukachukwu', 'David', 'davidukachukw20@gmail.com', '07034338456', 'Brother', 'Nneka ukachukwu', '0246892125', 'Gtbank', NULL, 21, '2018-11-28 00:46:13', '2018-11-28 00:46:13'),
(38, '1992-08-28', 'Ohokobe Ndume Ibeku Umuahia', 'Umuahia', 'Abia', '20181102_174805~2_1543518493.jpg', 'Fundamental of GDS', 'Opara', 'Ugonna', 'ugonna.aguiyi@gmail.com', '08065575509', 'Sister', 'Aguiyi Iheanyichukwu C', '3031885176', 'First Bank', NULL, 29, '2018-11-30 00:08:13', '2018-11-30 00:08:13'),
(39, '1985-05-14', '57d Osusu road', 'Aba', 'Abia', 'IMG-20181102-WA0000_1543556621.jpg', 'Google digital skills certification', 'Biliyoung', 'Vestal', 'vestabili@gmail.com', '08030597171', 'Mother', 'Uma Moreino Okorie', '0040618552', 'Union Bank of Nigeria', NULL, 35, '2018-11-30 10:43:41', '2018-11-30 10:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `partner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainning_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `press` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `females` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `male` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newfacebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newinstagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `allquestion` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `trainer_feedback` longtext COLLATE utf8mb4_unicode_ci,
  `assistance` longtext COLLATE utf8mb4_unicode_ci,
  `googledrivelink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pictureslink` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `session_id`, `partner`, `trainning_date`, `venue`, `level`, `press`, `females`, `male`, `facebook`, `newfacebook`, `instagram`, `newinstagram`, `whatsapp`, `question`, `allquestion`, `answer`, `trainer_feedback`, `assistance`, `googledrivelink`, `pictureslink`, `status`, `reply`, `created_at`, `updated_at`, `paid`, `total`) VALUES
(4, 7, 'yes', '2018-11-03', '17b Ngwa Road', 'Level 1', 'Yes', '16', '31', '17', '6', '5', '0', '0', 'No', NULL, NULL, 'i will say that the session was engaging as business who already have FB pages acknowledge that they have learnt better ways to make use of their pages', 'Provision of a stable source of internet connection will help  with creation of new pages without excessive delay of the training session', 'https://docs.google.com/spreadsheets/d/1_7-dm0g1ozxkqCssQ58IJW_rAWuV_TIZkv8mKmCp6q0/edit?ts=5bde42ec#gid=0', 'https://drive.google.com/file/d/1DV4GjFFi8aSno1hoSDXZbdCfb4YMaR1O/view?ts=5bde4797', '1', 'Kindly detach pictures from the zip folder and upload directly. Thank you', '2018-11-04 10:23:06', '2018-11-05 19:49:29', 0, 47),
(6, 15, 'no', '2018-11-03', 'Innovation Growth Hub', 'Level 1', 'No', '2', '9', '3', '8', '2', '0', '0', 'No', NULL, NULL, 'The training session was generally awesome; the enthusiasm of the trainees marveled me the most. They participated actively throughout the training session, asking questions were they are confused. Everybody was carried along.', 'No comment', 'bit.ly/2SHUKla', 'bit.ly/2AKdDNq', '1', 'Good. Why weren\'t some instagram pages opened?', '2018-11-04 11:23:40', '2018-11-05 18:53:04', 0, 11),
(7, 11, 'yes', '2018-11-03', 'Greater Heights Institute', 'Level 1', 'Yes', '1', '6', '4', '3', '2', '5', '2', 'No', NULL, NULL, 'It was a insightful experience getting to know the different businesses and helping them build their brands through facebook business. The session started at 11am with trainees and trainers introduction. The training moved swiftly and smoothly. We also presented branded souvenirs to some deserving and punctual attendees. Furthermore, we served lunch and had a networking session. The session  ended at 3pm and we took some group photographs after which trainees departed for their different destinations.', 'Trainers should be allowed to distribute coordinated flyers to business owners so as to invite more business owners to the training session.', 'bit.ly/bybexc', 'bit.ly/bybpictures', '1', 'Good. Kindly work on actively getting people for your training sessions ahead of time. Thank you', '2018-11-04 21:30:48', '2018-11-05 19:55:25', 0, 7),
(9, 6, 'yes', '2018-11-02', 'Pan-African Spark Hub, 2nd Floor,  164 Faulks Road,  Aba', 'Level 1', 'Yes', '2', '4', '4', '2', '3', '3', '1', 'No', NULL, NULL, 'Amazing session. \r\n\r\nHowever, Most of the expected attendees didn\'t show up as the schedule did conflict with prime business hours.', 'Structuring this training to take them through the basics of running a small business will be a plus.', 'https://drive.google.com/folderview?id=1kmUF8bxid1ZQwDwdOLuSTzDK4-eYJgVD', 'https://drive.google.com/folderview?id=1kmUF8bxid1ZQwDwdOLuSTzDK4-eYJgVD', '1', 'Pictures are not clear', '2018-11-05 03:50:30', '2018-11-25 04:00:07', 0, 6),
(10, 14, 'no', '2018-11-10', 'Neijoy and Co Nigeria Limited', 'Level 1', 'No', '7', '14', '4', '9', '3', '1', '0', 'No', NULL, NULL, 'Interesting session, very very interactive as we had some business professionals and consultants who came for the Facebook Boost Your Business training.', 'None', 'https://drive.google.com/open?id=110AvNp1cpHGze7qN71b3W6aYfie8IYMj', 'https://drive.google.com/open?id=1nTk9nLpxBW92Nbw-3cSSxaAT6g0YWOUa', '1', 'Good', '2018-11-11 21:13:51', '2018-11-25 03:58:59', 0, 21),
(11, 20, 'yes', '2018-11-10', '132 omuma road', 'Level 1', 'No', '7', '15', '18', '2', '4', '0', '3', 'No', 'None', 'None', 'The participants loved the training and asked for a redo to b able to invite friends and family', 'Face can help through more online awareness for the trainings', 'https://drive.google.com/open?id=1sUXBLwLNA_iib_Wd29dyyrLE1Quz0hq3', 'https://drive.google.com/open?id=1Laec85WZwAv1_HliN45A1zGj1TedSbeo', '1', 'Good', '2018-11-13 18:17:17', '2018-11-25 03:57:48', 0, 22),
(15, 36, 'yes', '2018-11-17', '62 Asa Road, Aba,  3rd Floor (igHub)', 'Level 1', 'Yes', '8', '24', '5', '15', '3', '8', '0', 'No', 'How to broadcast your facebook business page to your whatsapp contacts for them to follow', 'Go to Chrome, login to facebook, open your page, copy the URL, open whatsapp, click on the three dots on the top right of your screen, select broadcast mesage, select the contacts your want to broadcast to, paste the URL on the message box and send.', 'It was a fun, insightful, and educative session where i gave people opportunities to talk about their businesses, share the story of their business as well as their objectives.', 'The food was junk', 'https://drive.google.com/open?id=1m6FfQSFeiiAkRYHYMgiqpkR0F0JlO0Gr', 'https://drive.google.com/open?id=1uhWKgnywtptDT7t0KBwzCvinzdQJTTLq', '1', 'Good', '2018-11-18 03:46:20', '2018-11-25 03:54:20', 0, 32),
(16, 39, 'yes', '2018-11-17', 'CKC Cathedral Hall', 'Level 1', 'Yes', '9', '18', '11', '10', '0', '0', '0', 'No', NULL, NULL, 'No minding low participant turn out the teain8ng went well', 'Provision of internet connection', 'https://drive.google.com/folderview?id=10IeiUOz53CG_0PrUawxrZ-6urbS6l2d7', 'https://drive.google.com/folderview?id=18-D-kO7vH8Y8LmlwkgwFJDPhaIExumL0', '1', 'Good', '2018-11-18 07:43:55', '2018-11-25 03:52:40', 0, 27),
(20, 43, 'yes', '2018-11-17', 'Neijoy Consults 7 Factory Road by Eziukwu, Aba', 'Level 1', 'Yes', '12', '11', '2', '4', '1', '0', '0', 'No', NULL, NULL, 'It went well', 'nil', 'https://drive.google.com/drive/folders/1s25JM7wZVKXr1kx1v40l4_tx9R8-e7eI', 'https://drive.google.com/drive/folders/1L7Ayp6c9eLk8seLTNvBkAybkeVaNh7dI', '1', 'Good', '2018-11-19 18:36:46', '2018-11-25 03:56:42', 0, 23),
(21, 44, 'no', '2018-11-15', 'Lekota Hotels Aba', 'Level 1', 'Yes', '18', '13', '2', '5', '1', '0', '0', 'No', NULL, NULL, 'It was insightful for the participants', 'Nil', 'https://drive.google.com/drive/folders/1s25JM7wZVKXr1kx1v40l4_tx9R8-e7eI', 'https://drive.google.com/drive/folders/1xCnhk4mYKP45__NtKMMFFC3aMohySzci', '1', 'Good', '2018-11-20 02:32:25', '2018-11-25 03:45:42', 0, 31),
(22, 53, 'yes', '2018-11-19', 'School Hall', 'Level 1', 'Yes', '149', '1', '30', '45', '5', '25', '6', 'No', NULL, NULL, 'The session was great. Most of the participants were new to the advancements of Facebook and Instagram and they were glad.\r\nMost of them who couldn\'t create pages due to device, time and network issues assured us they\'ll do so at home.', 'Food deliveries should be timely.', 'https://drive.google.com/open?id=1DPqL1PSvc_7wwrWjk3DFLfCq-yfoKM8s', 'https://drive.google.com/drive/folders/1sumz-4gHKmB9-pM1ZSHaBG1dB8HQDXsj?fbclid=IwAR3Y_cNePPpKreXTWpdQRKM7o5dxw29y1bNvRam4g-tuRGwrn3U3N5XtVws', '1', 'You need to post HD pictures', '2018-11-21 20:33:31', '2018-11-25 03:44:19', 0, 150),
(23, 54, 'yes', '2018-11-19', 'Shekina School of Catering', 'Level 1', 'Yes', '110', '0', '30', '42', '14', '10', '5', 'Yes', '1) How do you tackle the problem of Hacking?', NULL, 'Training was educating and exciting and the trainees were grateful for the exposure to use these platforms in boosting their businesses.', 'Food delivery should be timely.', 'https://drive.google.com/drive/folders/1ZoYGDHBBKHy4704q7rPFVLUGhlieMkUR?fbclid=IwAR1dG2sC-9Ct_toOo2hcm7SMB6eHup_OpLhDQa8S239mxF97AuLq43IT4PE', 'https://drive.google.com/drive/folders/1rJlhUgsFJNChFUlKJ2E5xsOE6ZE4RwrU?fbclid=IwAR1dG2sC-9Ct_toOo2hcm7SMB6eHup_OpLhDQa8S239mxF97AuLq43IT4PE', '1', 'Good', '2018-11-21 21:01:12', '2018-11-25 03:42:44', 0, 110),
(24, 41, 'no', '2018-11-17', '62 ASA road', 'Level 1', 'Yes', '33', '7', '5', '2', '2', '0', '0', 'No', 'None', NULL, 'It was good', 'Internet connection provision', 'https://docs.google.com/spreadsheets/d/1d0Mbnwuh8RWGnN2kMrfH_3GSa8tmufpHzmmGlsFpjwU/edit?usp=drivesdk', 'https://drive.google.com/open?id=1m2PEEiECzTLbiQha16pjYlY2DVBEI0f_', '1', 'Good', '2018-11-21 23:02:25', '2018-11-25 03:40:58', 0, 40),
(25, 25, 'yes', '2018-11-21', 'ASSEMBLIES OF GOD CHURCH ENWEREJI', 'Level 1', 'No', '17', '13', '0', '5', '0', '0', '0', 'No', NULL, NULL, 'We had local market men and women mostly in attendance who were so eager to put their business on the internet.', 'Internet', 'https://drive.google.com/open?id=1sjATpYPDfUn9BlOShsNObZMBmdt4AcZV', 'https://drive.google.com/open?id=1IN4zrOqllLNPiPrwakJhTBItT5hiVJKl', '1', 'Good', '2018-11-22 19:26:26', '2018-11-25 03:46:58', 0, 30),
(26, 57, 'yes', '2018-11-21', '199 Aba Owerri road', 'Level 1', 'No', '24', '25', '10', '1', '3', '0', '0', 'No', 'None', NULL, 'The participants were all happy', 'Internet connection provision', 'https://drive.google.com/open?id=0B4-41WKa7RziSE8xM1lpYWRERVplSjByZ0RjZC1aYm44Q0pZ', 'https://drive.google.com/open?id=1EIVdDrSyrsN6qYvmp7DoV8k_-5l0o3Mz', '1', 'Good', '2018-11-22 19:39:16', '2018-11-25 03:38:49', 0, 49),
(27, 59, 'yes', '2018-11-22', 'Assemblies of God Church, 5/7 Item Street, Umuahia', 'Level 1', 'Yes', '15', '17', '6', '10', '0', '0', '0', 'No', '1. Can you target people only within a particular place?\r\n\r\n2. How does Facebook know people living within a particular area?\r\n\r\n3.  How can someone come up with a business idea that survives on the internet?', '1. Yes you can. This is available during the \"boost\" stage after you have published a post on your page. It will be possible for you to select a particular region where you want your content seen.', 'The session was great. \r\n\r\nThere was no need to push anyone to participate in any group discussion. The spirit in the class was high and all paid rapt attention to the trainings.\r\n\r\nWe had a little challenge with internet networks. All 3 networks we were using disappointed. So, we couldn\'t open as many new Facebook pages as should have. \r\n\r\nThe attendants expressed great interest to receive more training. Due to the attendance was not as planned (32 people), the church requested that we come again as they will mobilize more members to attend having witnessed firsthand, how rich the class was.\r\n\r\nin summary, all feedbacks were positive.  All expressed interest to receive more information from Facebook.', 'Please provide an alternative internet service different from the commonly used ones. Networks like Smile and Spetranet will be better.', 'https://drive.google.com/open?id=12RJTndL6jFqAvIwpIzVh3vf-vexGWaIa', 'https://drive.google.com/open?id=1pSmATMNsQNprJwb06Ap9Q2x4uRCcc27q', '1', 'Good', '2018-11-23 20:27:50', '2018-11-25 03:37:15', 0, 32),
(28, 63, 'yes', '2018-11-22', 'ACCIMA office. 3 Umuimo Road, Abayi, Aba', 'Level 1', 'No', '14', '17', '25', '6', '3', '20', '12', 'No', NULL, NULL, 'Session was great. Participants were a bit conversant with Facebook so it was a like an advanced class. They found it very interesting and made a commitment to organize more of their members for a subsequent training.', 'None', 'https://drive.google.com/drive/folders/1kcN10HNvIOT5UmjwuuINGnSB3fmmW7BS?fbclid=IwAR0HcJ_i4Y0Ggt83LBlfPRmABuq_WStKfWfx2Td7DDKIL5pjkCeAoayn1H8', 'https://drive.google.com/drive/folders/1wIYmJvPzqtcJW3SJbNLcERQqACK_a8Ol?fbclid=IwAR0HcJ_i4Y0Ggt83LBlfPRmABuq_WStKfWfx2Td7DDKIL5pjkCeAoayn1H8', '1', 'Good', '2018-11-24 03:58:09', '2018-11-25 03:34:53', 0, 31),
(29, 49, 'yes', '2018-11-23', 'Anyim Pius Auditorium, MOUAU', 'Level 1', 'No', '6', '8', '3', '11', '2', '2', '0', 'No', NULL, NULL, 'The training started by 11:10, later than expected because we didn\'t get access to the hall till 10:20 and the props (rollup banner and projector) arrived by 10:40am. We ended by 3:30pm and had to wait till 4:05pm before the food arrived. The food was in excess of 9 packs although we had sent across that we were 15 persons at the training as at about 1pm. Two swags were given out, a branded T-shirt and a notebook. \r\nThe attendees were very enthusiastic about undergoing Level 2 of the training.', 'I suggest that the food can be made available at the middle of the training, so that trainees don\'t have wait after the training.', 'https://drive.google.com/file/d/11-YTCS3hDypCyBthiEhXWQLlTwZZl2qg/view?usp=drivesdk', 'https://drive.google.com/folderview?id=1lYM75aUbPQn3magfsZoSfzaYT_JeZRE-', '2', 'Duplicate', '2018-11-24 15:34:19', '2018-11-26 21:30:11', 0, 14),
(34, 49, 'yes', '2018-11-23', 'Anyim Pius Auditorium, MOUAU', 'Level 1', 'No', '6', '8', '3', '11', '2', '2', '0', 'No', NULL, NULL, 'We started the training by 11:10am because we got access to the hall by 10:20 am and the props (rollup banner and projector) arrived by 10:40am. We had 14 attendees in all. We concluded the training by 3:30pm and the food arrived by 4:05pm. The food was in excess of 9 packs although we had sent across that we were 15 as at about 1pm. Two swags were given out, a branded T-shirt and a notebook. \r\n\r\nThe support trainer was Abiodun Bukunmi Julius', 'I would suggest that food arrives in the middle of training so that trainees don\'t have to wait for it.', 'https://drive.google.com/file/d/11-YTCS3hDypCyBthiEhXWQLlTwZZl2qg/view?usp=drivesdk', 'https://drive.google.com/folderview?id=1lYM75aUbPQn3magfsZoSfzaYT_JeZRE-', '1', 'Good', '2018-11-24 15:43:19', '2018-11-25 03:30:13', 0, 14),
(35, 42, 'yes', '2018-11-24', 'Winners Chapel Youth Auditorium', 'Level 1', 'Yes', '0', '7', '0', '5', '0', '5', '1', 'No', NULL, NULL, '“A very rewarding day, particularly with regards to structuring a presentation and presenting to a mature business owners. A very useful and creative way of improving delivery and interaction. The interactive nature encouraged honest and open communication amongst everyone which really helped clarify suggestions. A useful chance to review current techniques and focus on improvements”.', 'Publicity avenues should be more flexible.', 'https://drive.google.com/file/d/1_fSeGsn7FA6Pb1GHRDJmYkw9gFeBzFqD/view?usp=drivesdk', 'https://drive.google.com/folderview?id=1OtXzMU8ZayfoZI8nBC0GhgKAgvQE9_Kc', '1', 'Good', '2018-11-26 03:48:49', '2018-11-28 03:36:32', 0, 7),
(36, 73, 'no', '2018-11-24', 'ST. JOHN\'S ANGLICAN CHURCH,  OSUSU, ABA.', 'Level 1', 'No', '194', '9', '3', '25', '0', '0', '0', 'No', NULL, NULL, 'Our training was one of a kind, as we had mostly women in attendance. They were more interested in the WhatsApp for business App because as they said majority of them are on WhatsApp.', 'Provision of Internet', 'https://drive.google.com/open?id=11BL7ch3CkMnuYAaW_B-NioRRATdFYtX3', 'https://drive.google.com/open?id=1FH_qS02QibAuEq5qZnmA9V8Q-3XbkEFW', '1', 'Good', '2018-11-26 12:32:03', '2018-11-28 03:37:38', 0, 203),
(38, 68, 'yes', '2018-11-24', 'Dominoin city, Oborhill Aba', 'Level 1', 'No', '0', '30', '2', '25', '2', '20', '0', 'No', NULL, NULL, 'It was a interactive sessin, alot of questions was asked by the particiapnts and accurate answers were given, about 25 of the participants opened new business pages.', 'internet was a challenge but it was resolved by myself and my team', 'https://drive.google.com/open?id=1of8GZCeat01FQAnTl2nWXIB94EKbpNw_', 'https://drive.google.com/open?id=1EY30T124BLMf3J5IkPZyjGuB2O75vm8R', '1', 'Good', '2018-11-26 17:38:55', '2018-11-27 06:58:36', 0, 30),
(40, 55, 'yes', '2018-11-25', 'Assemblies of God Church, Umuariaga, Umudike', 'Level 1', 'No', '24', '33', '7', '24', '2', '0', '0', 'No', '1. How to make money using Facebook\r\n2. If you are not chanced to post at the time when your audience is not online, how can you go about it?', '1 This will involve you opening a Facebook page and promoting your business on the platform. Then you can boost your products/service to reach more people using Facebook\'s improved targeting tools. This will help you sell to more people.. \r\n2. Use scheduling. schedule the post to appear at that time when your audience is online. This helps eliminate time issues in managing your page.', 'The session got more than 24 people opening Facebook pages. They got to clearly understand the reasons why they needed to do online marketing. Many said \"Online Marketing\" and \'Getting Started with Facebook\" were the best topics for them.\r\n\r\nThey signified interest to receive more teachings on what was discussed.\r\n\r\nOverall, the class was rated 9.5.  Lunch was served to all present.', 'There\'s none for now.', 'https://drive.google.com/open?id=1pOvUElRCxGzE0VkJKpDuRcZ_1FfatxS1', 'https://drive.google.com/open?id=1Nlhjcnb-Zv8S3Wd3j8M5V_Mpg5LPhoFT', '2', 'Duplicate', '2018-11-26 20:44:11', '2018-11-28 03:42:42', 0, 57),
(41, 55, 'yes', '2018-11-25', 'Assemblies of God Church, Umuariaga, Umudike', 'Level 1', 'No', '24', '33', '7', '24', '2', '0', '0', 'No', '1. How to make money using Facebook\r\n2. If you are not chanced to post at the time when your audience is not online, how can you go about it?', '1 This will involve you opening a Facebook page and promoting your business on the platform. Then you can boost your products/service to reach more people using Facebook\'s improved targeting tools. This will help you sell to more people.. \r\n2. Use scheduling. schedule the post to appear at that time when your audience is online. This helps eliminate time issues in managing your page.', 'The session got more than 24 people opening Facebook pages. They got to clearly understand the reasons why they needed to do online marketing. Many said \"Online Marketing\" and \'Getting Started with Facebook\" were the best topics for them.\r\n\r\nThey signified interest to receive more teachings on what was discussed.\r\n\r\nOverall, the class was rated 9.5.  Lunch was served to all present.', 'There\'s none for now.', 'https://drive.google.com/open?id=1pOvUElRCxGzE0VkJKpDuRcZ_1FfatxS1', 'https://drive.google.com/open?id=1Nlhjcnb-Zv8S3Wd3j8M5V_Mpg5LPhoFT', '1', 'Good', '2018-11-26 20:44:43', '2018-11-26 21:28:48', 0, 57),
(42, 85, 'yes', '2018-11-25', 'Ogbor Hill', 'Level 1', 'No', '51', '50', '20', '73', '3', '50', '5', 'No', NULL, NULL, 'It was a insightful experience getting to know the different businesses and helping them build their brands through facebook business. The session started at 11am with trainees and trainers introduction. The training moved swiftly and smoothly. We also presented branded souvenirs to some deserving and punctual attendees. Furthermore, we served lunch and had a networking session. The session  ended at 3pm and we took some group photographs after which trainees departed for their different destinations.', 'Trainers should be allowed to distribute coordinated flyers to business owners so as to invite more business owners to the training session.', 'https://drive.google.com/open?id=1yR5usjRfQfB1_Pjmc0G0mhnGSY6QPJBF', 'https://drive.google.com/open?id=1URC3J7lMzQOWP1DmR_XoHs_licBp2WqU', '1', 'Please use better pictures next time.', '2018-11-26 21:33:49', '2018-11-28 03:50:03', 0, 101),
(43, 76, 'no', '2018-11-25', '26 river lay out aba', 'Level 1', 'No', '18', '9', '2', '4', '0', '0', '0', 'No', NULL, NULL, 'Very good', 'Internet service', 'https://drive.google.com/open?id=1mh5qGoMEBoS07KtSDE_V0vcue_6sONPU', 'https://drive.google.com/open?id=1yvFbfI8_RInD2AoMg4Lu_yP3fWkr580L', '1', 'Good', '2018-11-27 00:38:30', '2018-11-27 07:05:54', 0, 27),
(44, 61, 'yes', '2018-11-23', 'Abia state polytechnic alumni hall', 'Level 1', 'Yes', '83', '21', '6', '20', '3', '20', '10', 'No', NULL, NULL, 'MY MAJOR CHALLENGE WAS INTERNET DATA TIME FOR THEM TO ACCESS THEIR PHONES... ONLY MY PHONE CAN\'T CONNECT TO THEM', 'PROVISION OF INTERNET SERVICES TO MAXIMIZE RESULTS', 'https://drive.google.com/open?id=1qf-Kcr9KGLkkSASJus5DDZJUGQR6OA5_', 'https://drive.google.com/open?id=1cBZI56Irgm7Z6tvOMP_TGD8d38EAuHFt', '1', 'Good', '2018-11-27 03:53:23', '2018-11-28 03:58:51', 0, 104),
(45, 66, 'yes', '2018-11-24', '68/69 Immaculate Heart Avenue, Aba.', 'Level 1', 'No', '17', '17', '12', '9', '2', '8', '10', 'Yes', NULL, NULL, 'Successful Session. Had a a mixture of the young and the elderly and the blend was apt.', 'None.', 'https://drive.google.com/drive/folders/1kcN10HNvIOT5UmjwuuINGnSB3fmmW7BS?fbclid=IwAR0HcJ_i4Y0Ggt83LBlfPRmABuq_WStKfWfx2Td7DDKIL5pjkCeAoayn1H8', 'https://drive.google.com/drive/folders/1KWIDE4G-OCeUP9_sja76JBkRTlMrlpPT?fbclid=IwAR0HcJ_i4Y0Ggt83LBlfPRmABuq_WStKfWfx2Td7DDKIL5pjkCeAoayn1H8', '1', 'nice one', '2018-11-27 04:27:47', '2018-11-27 11:27:03', 0, 34),
(46, 37, 'yes', '2018-11-24', 'Michael okpara university multipurpose halll,umudike,umuahia', 'Level 1', 'Yes', '43', '57', '10', '28', '8', '20', '12', 'No', NULL, NULL, 'LOVELY AND AWESOME !\r\nTHEY ALL GOT TO UNDERSTAND BETTER ABOUT OPENING A PAGE AND HOW TO BOOST THEIR BUSINESSES', 'POOR INTERNET PROVISION FOR THEM TO PARTICIPATE ONLINE', 'https://drive.google.com/open?id=1MTx6rtcJBvWDKfZKp8Ir969kBD7m94EM', 'https://drive.google.com/open?id=1tKmuMd2nq5Toa9Ogs6f3radUbAcpmEnr', '1', 'Good', '2018-11-27 04:28:53', '2018-11-27 07:04:35', 0, 100),
(47, 69, 'yes', '2018-11-24', 'Streams Of Joy international Umuahia world headquarters', 'Level 1', 'Yes', '48', '35', '8', '4', '6', '5', '18', 'No', NULL, NULL, 'the session was impactful, all attendees who will be needing follow up were given access to the trainers', 'it is obvious that video contents is more catchy; it is advised that a step by step process of opening a Facebook business page be created and incorporated into the contents', 'https://drive.google.com/drive/folders/1btg0_Tzypx2j-FUfpQ0jR_oRt8jqj4Uz?usp=sharing', 'https://drive.google.com/drive/folders/1bsrkrbdfsj09eo5t5BY2XnVPay2tw24k?usp=sharing', '1', 'Good', '2018-11-27 12:57:22', '2018-11-28 04:00:06', 0, 83),
(48, 58, 'yes', '2018-11-26', '7 Factory Road', 'Level 1', 'Yes', '7', '18', '10', '5', '0', '0', '0', 'Yes', NULL, NULL, 'Fine and decent', 'Internet services provision', 'https://drive.google.com/open?id=1BwOjREupqtnTVq1-BJ_vXpLekyOXPqns', 'https://drive.google.com/open?id=1Z36Uy6q4Rpu-8kw7UQbVXh3mlk5HmJtn', '1', 'Good', '2018-11-28 00:27:47', '2018-11-28 15:21:54', 0, 25),
(49, 60, 'yes', '2018-11-27', 'Assemblies of God Church, 3A Aba road,, Umuahia', 'Level 1', 'No', '21', '15', '2', '3', '1', '1', '0', 'No', '1. Can I use one phone number for my personal Whatsapp account and Whatsapp for business account?\r\n2. Where can I download Boomerang app?', '1, Yes you can. But you must understand that your old Whatsapp will be upgraded to a Whatsapp for business account. You can not use the same number differently. Rather, use another phone number for your WhatsApp for business app.\r\n\r\n2. You can download it from Google playstore in your android device.', 'The participants expressed great love and appreciation for the topics discussed today.  A few asked that I help them fine tune their own personal stories. \r\n\r\nThe class was highly rated and participants expressed interest to be contacted by Facebook for more information.', 'Gift items could be increased to ensure that everyone who answers a question correctly gets one.', 'https://drive.google.com/file/d/112mUyy4msTburj8KFSXOMCqpBvCIj_QB/view?usp=sharing', 'https://drive.google.com/drive/folders/105IQNO8DRFqTOaozHXRdx6RHxBrSBcBi?usp=sharing', '1', 'Good', '2018-11-29 03:42:22', '2018-11-29 18:35:44', 0, 36),
(50, 83, 'yes', '2018-11-28', '4b Obohia road', 'Level 1', 'No', '23', '3', '15', '10', '5', '10', '8', 'No', NULL, NULL, 'it was an interesting yet challenging experience as majority of the participants did not have a smart phone.', 'if the training slides can be transliterated to our unique language it will make assimilation better', 'https://drive.google.com/open?id=1aPsV2_9JK8Tl2xGl4-t2fV-yIYsHAX8O', 'https://drive.google.com/open?id=10mg0rzv6IDFZU67Dbdva-duVjf-VvOZp', '1', 'Good', '2018-11-29 19:36:08', '2018-11-30 07:26:43', 0, 26),
(51, 70, 'yes', '2018-11-27', '7-9 CFG Avenue, Uratta', 'Level 1', 'Yes', '75', '38', '2', '35', '0', '0', '0', 'Yes', NULL, NULL, 'The training was awesome', 'Internet connection needed badly', 'https://drive.google.com/open?id=1dtQCt8gnojfQaTrfdsgneNFvPO4boQTg', 'https://drive.google.com/open?id=1UXvQUt6dNi0wZRDzzDnoaXwE3HirvOQh', '1', 'reported to FB', '2018-11-30 16:36:29', '2018-12-01 18:58:10', 0, 113),
(52, 93, 'yes', '2018-11-17', 'Streams of Joy International, KM 4 Ikot Ekpene Road', 'Level 1', 'Yes', '69', '31', '0', '80', '4', '67', '6', 'No', NULL, NULL, 'Overall feedback: The training was a success. The attendees were grateful for the knowledged they gained and expressed some ideas they had and questions too on the use of certain tools.', 'Please provide comments on areas the Partner or Facebook can help to improve future sessions? : Room for more gift items, to encourage class participation.', 'https://drive.google.com/drive/folders/1jYaqueNYoavdNYkMOnqPWW-FDYnLrtP-?usp=sharing', 'https://drive.google.com/drive/folders/1DJywv9B5vTuq2CoMLRZ-JMgvTLQcgij9?usp=sharing', '1', 'reported to FB', '2018-11-30 18:24:28', '2018-12-01 19:06:49', 0, 100),
(53, 33, 'no', '2018-11-24', 'Plot 2 Eziukwu road Aba', 'Level 1', 'No', '7', '6', '1', '4', '0', '2', '0', 'No', NULL, NULL, 'It was a very interesting session and it was very interactive. The attendees were fully involved during the training session', 'To enable more people open pages on ground, a reliable internet service provider should be used and systems available on ground', 'https://drive.google.com/open?id=1RiuCRK_8T9LwmsS5jhJddKu85MHxgvLi', 'https://drive.google.com/open?id=1vUw4gTSvvedVQixxacHhtgLc5OEqx0nH', '1', 'reported to fb', '2018-11-30 19:44:13', '2018-12-01 19:14:58', 0, 13),
(54, 34, 'no', '2018-11-20', 'IGHUB 62 ASA ROAD', 'Level 1', 'No', '2', '5', '1', '4', '0', '0', '0', 'No', NULL, NULL, 'The training was good but the practical session was hampered by poor internet connection so we could not open all the facebook pages and due to the poor connection we couldn\'t open any instagram pages.', 'A reliable source for internet connection should always be made available for trainings.', 'https://drive.google.com/open?id=1RPjgPYgMORBVFCw4KM9O3hXo2LVNoDO_', 'https://drive.google.com/open?id=1mj4I6nlBYHlcTkE50BkkSaPvEcJkRCRN', '1', 'reported to fb', '2018-11-30 19:50:14', '2018-12-01 19:19:09', 0, 7),
(55, 74, 'no', '2018-11-27', 'Chairman\'s Office Shoe Plaza', 'Level 1', 'No', '0', '29', '1', '12', '1', '0', '0', 'No', NULL, NULL, 'The training was awesome.', 'None', 'https://drive.google.com/open?id=1YhT1aqL1Sgbzqhdc5aMdIlDBE40qFtaB', 'https://drive.google.com/open?id=1fXxD6xUgYVbSnSi1xrNpszz78luXyclj', '1', 'submited', '2018-12-01 18:36:14', '2018-12-01 19:23:38', 0, 29),
(56, 82, 'no', '2018-11-28', 'ASSEMBLIES OF GOD CHURCH ENWEREJI', 'Level 1', 'No', '17', '23', '6', '17', '0', '0', '0', 'No', NULL, NULL, 'The training was good, interesting and interactive.', 'None', 'https://drive.google.com/open?id=1u7a1D7YyN7ltMVOtIpd_mbG2ZvWAxaXO', 'https://drive.google.com/open?id=1YTpx-zLWgy-emNuL7M6R2KDpnoeDfCBZ', '0', NULL, '2018-12-01 18:42:39', '2018-12-01 18:42:39', 0, 40);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_organisation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainnig` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name_organisation`, `expected`, `venue`, `location`, `trainnig`, `time`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Public Comnunity', '100', 'Pan-African Spark Hub, 2nd Floor,  164 Faulks Road,  Aba', 'Aba North', '2018-11-02', '10.00am', 1, 14, '2018-10-26 18:47:48', '2018-10-29 23:15:03'),
(7, 'Paradigm Initiative AbaLLIFE training Alumni', '80', '17b Ngwa Road', 'Aba South', '2018-11-03', '10 am to 2pm', 1, 20, '2018-10-26 19:10:35', '2018-10-29 23:24:39'),
(8, 'It is a sourced training', '50', 'Roots Cafe and Restaurant', 'Aba South', '2018-11-03', '10am', 2, 33, '2018-10-29 02:52:32', '2018-10-30 01:11:35'),
(9, 'National Youth Movement', '150', '28 factory road Afaraukwu, umuobasi civic hall.', 'Umuahia South', '2018-11-10', '10am', 1, 32, '2018-10-29 12:38:07', '2018-10-29 23:18:25'),
(10, 'BlueBOUQ Organisation', '100', 'Lekota Spring Hotel, 26 Ikot Ekpene road, ogbor hill  Aba', 'Aba North', '2018-11-08', '9:30 Am', 1, 32, '2018-10-29 14:48:58', '2018-10-29 23:18:35'),
(11, 'It is a sourced training', '50', 'Roots Cafe and Restaurant', 'Umuahia North', '2018-11-03', '10am', 1, 33, '2018-10-29 23:25:40', '2018-10-30 01:11:21'),
(12, 'Evangelical Church winning All', '120', 'ECWA ABA headquaters, Opposite Abia poly, Aba', 'Aba South', '2018-11-10', '10 am', 1, 15, '2018-11-01 15:58:23', '2018-11-03 21:03:10'),
(13, 'XPAT FUNDS', '30', 'IG HUB, 62 ASA ROAD ABA', 'Aba South', '2018-11-09', '10am', 1, 19, '2018-11-02 02:19:06', '2018-11-03 21:02:39'),
(14, 'Shoe plaza Association', '100', 'Innovation Growth Hub', 'Aba South', '2018-11-10', '10 am', 1, 17, '2018-11-03 20:22:21', '2018-11-03 21:02:06'),
(15, 'Innovation Growth Hub open community', '15', 'Innovation Growth Hub', 'Aba South', '2018-11-03', '10:00 am', 1, 17, '2018-11-03 20:47:58', '2018-11-03 21:02:26'),
(20, 'Legacy movement', '150', '132 omuma road', 'Aba South', '2018-11-10', '12pm', 1, 21, '2018-11-03 21:33:56', '2018-11-04 21:29:56'),
(21, 'Legacy movement', '150', '132 omuma road', 'Aba South', '2018-11-10', '12pm', 2, 21, '2018-11-03 21:38:05', '2018-11-08 14:24:10'),
(25, 'ASSEMBLIES OF GOD CHURCH ENWEREJI', '80', 'ASSEMBLIES OF GOD CHURCH ENWEREJI', 'Aba South', '2018-11-13', '1:00pm', 1, 17, '2018-11-05 20:01:37', '2018-11-07 01:42:43'),
(26, 'MEIJOY COMPANY LIMITED', '70', '1 FACTORY ROAD, ABA', 'Aba South', '2018-11-10', '9AM', 1, 19, '2018-11-06 17:55:57', '2018-11-07 01:42:51'),
(27, 'Shoe Plaza Association', '80', 'Innovation Growth Hub', 'Aba South', '2018-11-12', '10:00am', 1, 17, '2018-11-06 19:17:51', '2018-11-07 01:43:07'),
(28, 'Abia Sons and Daughters Entrepreneurs', '100', 'Grand Lotte World Hotel, 231 Ehi Rd. Aba.', 'Aba South', '2018-11-13', '11 am', 1, 36, '2018-11-07 04:13:27', '2018-11-07 05:06:11'),
(29, 'Hosanna School of Catering', '50', 'No.3 Nwankpa Street By 55/62 Aba-Owerri Road,', 'Osisioma Ngwa', '2018-11-12', '8:30 am', 1, 36, '2018-11-07 17:28:58', '2018-11-08 14:24:37'),
(30, 'Hosanna School of Catering', '50', 'No.3 Nwankpa Street By 55/62 Aba-Owerri Road,', 'Osisioma Ngwa', '2018-11-12', '8:30 am', 2, 36, '2018-11-07 17:29:42', '2018-11-08 14:25:33'),
(31, 'Royalty Assembly International', '50', '62 Asa Road Aba, 3rd Floor', 'Aba South', '2018-11-17', '11 am', 1, 38, '2018-11-07 18:54:36', '2018-11-17 03:12:17'),
(33, 'Inspired Church Int\'l', '70', 'Plot 2 Eziukwu road Aba', 'Aba South', '2018-11-24', '11am', 1, 35, '2018-11-07 22:00:33', '2018-11-08 14:12:02'),
(34, 'N/A', '100', 'IGHUB 62 ASA ROAD', 'Aba South', '2018-11-20', '11am', 1, 35, '2018-11-07 22:06:05', '2018-11-08 14:12:01'),
(35, 'Independent Business Owners', '100', 'IGHUB', 'Aba South', '2018-11-14', '10am', 1, 28, '2018-11-08 19:24:24', '2018-11-10 06:38:10'),
(36, 'Organization Royalty Assembly International', '50', '62 Asa Road, Aba,  3rd Floor (igHub)', 'Aba South', '2018-11-17', '11am', 1, 18, '2018-11-09 02:21:12', '2018-11-10 06:38:28'),
(37, 'IGHUB', '100', 'Michael okpara university multipurpose halll,umudike,umuahia', 'Ikwuano', '2018-11-24', '11 am', 1, 22, '2018-11-09 18:05:48', '2018-11-10 06:38:51'),
(38, 'Dominion City Aba', '100', 'Domimion City Church Auditorium', 'Aba North', '2018-11-24', '8am', 1, 26, '2018-11-09 19:19:04', '2018-11-10 06:38:42'),
(39, 'Aba Diocesean Catholic Youth Organisation of Nigeria', '100', 'CKC Cathedral Hall', 'Aba South', '2018-11-17', '12noon to 3 pm', 1, 20, '2018-11-10 02:22:06', '2018-11-10 06:39:12'),
(40, 'Organization Royalty Assembly International', '50', '62 Asa Road, Aba,  3rd Floor (igHub)', 'Aba South', '2018-11-17', '11am', 1, 18, '2018-11-10 09:59:40', '2018-11-11 04:14:44'),
(41, 'FECA', '100', '62 ASA road', 'Aba South', '2018-11-17', '2pm', 1, 21, '2018-11-13 01:52:19', '2018-11-13 02:17:52'),
(42, 'Ihie Ndume Business Owners', '150', 'Winners Chapel Youth Auditorium', 'Umuahia North', '2018-11-24', '10am', 1, 33, '2018-11-13 16:21:05', '2018-11-13 17:22:50'),
(43, 'Neijoy Consults 7 Factory Road by Eziukwu, Aba', '100', 'Neijoy Consults 7 Factory Road by Eziukwu, Aba', 'Aba South', '2018-11-17', '9 am', 1, 28, '2018-11-13 19:25:38', '2018-11-15 15:33:29'),
(44, 'New Face of Abia', '50', 'Lekota Hotels Aba', 'Aba South', '2018-11-15', '12pm', 1, 28, '2018-11-14 14:26:24', '2018-11-17 09:32:24'),
(45, 'Winners Chapel Ihe Ndume, Umuahia', '60', 'Winners Chapel Ihe Ndume Umuahia', 'Umuahia North', '2018-11-24', '10am', 1, 15, '2018-11-15 00:28:15', '2018-11-15 15:33:41'),
(49, 'SUG michael Okpara University of agriculture, umudike', '150', 'Anyim Pius Auditorium, MOUAU', 'Ikwuano', '2018-11-23', '10:00am', 1, 23, '2018-11-17 08:50:54', '2018-11-17 15:51:30'),
(50, 'Surf Data Africa', '50', 'Lekota Spring Hotel, 26 Ikot Ekpene road, ogbor hill  Aba', 'Aba South', '2018-11-24', '10am', 1, 32, '2018-11-17 09:47:03', '2018-11-17 15:53:20'),
(51, 'Glorious life Gospel Centre', '150', '2 Alex Onyeador close by Ikot Ekpene, ogbor hill, Aba', 'Aba South', '2018-11-25', '3pm', 1, 32, '2018-11-17 10:01:55', '2018-11-17 15:54:23'),
(52, 'Shekinah School of Catering and Fashion Designing', '150', 'Onyenweaku Street, Aba', 'Osisioma Ngwa', '2018-11-12', '10 am', 2, 36, '2018-11-17 11:10:23', '2018-11-17 15:56:39'),
(53, 'Shekinnah School of Catering', '150', 'School Hall', 'Osisioma Ngwa', '2018-11-19', '10 am', 1, 36, '2018-11-17 13:13:29', '2018-11-17 15:57:49'),
(54, 'Shekina School of Catering and Fashion designing', '150', 'Shekina School of Catering', 'Osisioma Ngwa', '2018-11-19', '10am', 1, 37, '2018-11-17 13:13:49', '2018-11-17 16:00:15'),
(55, 'Assemblies of God Church, Umuariaga, Umudike', '100', 'Assemblies of God Church, Umuariaga, Umudike', 'Ikwuano', '2018-11-25', '10:30am', 1, 15, '2018-11-17 13:23:20', '2018-11-17 16:12:38'),
(56, 'neijoy nig ltd', '60', 'no 1 factory road aba abia state', 'Aba South', '2018-11-24', '9am', 1, 41, '2018-11-18 00:34:50', '2018-11-18 18:50:56'),
(57, 'The Living El-Shaddai church (Champions House)', '80', '199 Aba Owerri road', 'Aba North', '2018-11-21', '9am', 1, 21, '2018-11-18 18:00:05', '2018-11-18 18:29:38'),
(58, 'SkillUpAbia/Clintonel innovation center', '90', '7 Factory Road', 'Aba North', '2018-11-26', '10am', 1, 21, '2018-11-18 18:06:04', '2018-11-18 18:24:48'),
(59, 'Assemblies of God Church, 5/7 Item Street, Umuahia', '150', 'Assemblies of God Church, 5/7 Item Street, Umuahia', 'Umuahia North', '2018-11-22', '10am', 1, 15, '2018-11-18 19:09:45', '2018-11-19 22:06:33'),
(60, 'Assemblies of God Church, 3A Aba road,, Umuahia', '100', 'Assemblies of God Church, 3A Aba road,, Umuahia', 'Umuahia North', '2018-11-27', '3pm', 1, 15, '2018-11-19 04:06:17', '2018-11-19 22:06:52'),
(61, 'Brainwave information technology,Aba', '100', 'Abia state polytechnic alumni hall', 'Aba South', '2018-11-23', '11a.m', 1, 22, '2018-11-19 18:42:13', '2018-11-19 22:04:12'),
(62, 'Brainwave information technology,Aba', '100', 'Abia state polytechnic alumni hall', 'Aba South', '2018-11-23', '11a.m', 2, 22, '2018-11-19 18:42:14', '2018-11-19 22:03:06'),
(63, 'National Association of Chamber of Commerce, Mines and Agriculture (NACCIMA YOUTH ENTREPRENEURS)', '150', 'ACCIMA office. 3 Umuimo Road, Abayi, Aba', 'Osisioma Ngwa', '2018-11-22', '10 am', 1, 36, '2018-11-19 22:45:05', '2018-11-20 03:38:24'),
(65, 'Aba Entrepreneurs', '50', 'Innovation Growth Hub, 62 Asa Road Aba.', 'Aba South', '2018-12-15', '11 am', 1, 38, '2018-11-20 18:09:04', '2018-11-21 16:12:38'),
(66, 'Redeemed Christian Church of God Glory Tabernacle Parish, Aba.', '50 - 70', '68/69 Immaculate Heart Avenue, Aba.', 'Osisioma Ngwa', '2018-11-24', '8 am', 1, 36, '2018-11-21 18:23:09', '2018-11-22 16:05:51'),
(67, 'Glorious life Gospel Centre', '150', '2 Alex Onyeador close by Ikot Ekpene, ogbor hill, Aba', 'Aba South', '2018-11-28', '4pm', 1, 32, '2018-11-21 19:06:09', '2018-11-22 16:07:15'),
(68, 'Dominoin City, Oborhill youths fellowship', '150', 'Oborhill Aba', 'Aba South', '2018-11-24', '8am', 1, 42, '2018-11-21 19:15:20', '2018-11-22 16:07:42'),
(69, 'Streams Of Joy international Umuahia', '150', 'Streams Of Joy international Umuahia world headquarters', 'Aba South', '2018-11-24', '2pm', 1, 31, '2018-11-22 13:07:06', '2018-11-22 16:08:47'),
(70, 'Christian Fellowship Group', '150', '7-9 CFG Avenue, Uratta', 'Aba South', '2018-11-27', '10am', 1, 21, '2018-11-22 14:37:57', '2018-11-22 16:09:42'),
(71, 'Living Faith Church ( Winners Chapel)', '50', 'Living Faith Church (Winners Chapel)  146 Portharcourt Road, Aba.', 'Aba South', '2018-12-02', '4pm', 1, 24, '2018-11-22 15:23:29', '2018-11-22 16:12:44'),
(72, 'St Paul Catholic Church', '50', 'St Paul Catholic Church, Abaukwu, Aba.', 'Aba South', '2018-11-30', '5pm', 1, 24, '2018-11-22 15:25:37', '2018-11-22 16:15:54'),
(73, 'DECENT & FABULOUS ASSOCIATION OF NIGERIA', '80', 'ST. JOHN\'S ANGLICAN CHURCH,  OSUSU, ABA.', 'Aba South', '2018-11-24', '11;00AM', 1, 17, '2018-11-22 16:18:29', '2018-11-22 21:17:21'),
(74, 'Shoe Plaza Association', '50', 'Chairman\'s Office Shoe Plaza', 'Osisioma Ngwa', '2018-11-27', '10:00am', 1, 17, '2018-11-22 16:56:48', '2018-11-22 21:11:39'),
(75, 'GOLDEN OPPORTUNITY CENTER', '50', ' 157 FAULKS ROAD, 3RD FLOOR', 'Aba South', '2018-12-02', '1:00pm', 1, 17, '2018-11-22 19:28:31', '2018-11-22 21:15:48'),
(76, 'Light house', '100', '26 river lay out aba', 'Aba North', '2018-11-25', '11:30', 1, 21, '2018-11-23 00:43:51', '2018-11-25 03:23:28'),
(77, 'Light house', '100', '26 river lay out aba', 'Aba North', '2018-11-25', '11:30', 2, 21, '2018-11-23 00:46:05', '2018-11-25 03:24:51'),
(78, 'Winners Chapel Lagos street,  Umuahia', '150', 'Winners Chapel Lagos street,  Umuahia', 'Umuahia North', '2018-12-01', '10am', 1, 15, '2018-11-23 02:12:30', '2018-11-23 13:07:52'),
(79, 'Assemblies of God Church Aba-Owerri Road Abayi', '30', 'Church Hall', 'Aba South', '2018-11-27', '3pm', 1, 28, '2018-11-24 03:50:56', '2018-11-25 03:26:03'),
(80, 'Assemblies of God church', '100', '222 Clifford road', 'Aba South', '2018-11-29', '3:30pm', 1, 21, '2018-11-26 11:15:20', '2018-11-26 21:07:42'),
(81, 'David company', '70', '80 obohia road', 'Aba South', '2018-12-01', '2pm', 1, 21, '2018-11-26 11:16:53', '2018-11-26 21:11:33'),
(82, 'ASSEMBLIES OF GOD CHURCH ENWEREJI', '50', 'ASSEMBLIES OF GOD CHURCH ENWEREJI', 'Aba South', '2018-11-28', '2:30pm', 1, 17, '2018-11-26 15:41:49', '2018-11-26 21:13:02'),
(83, 'Daughters of Mary, Mother of Mercy', '40', '4b Obohia road', 'Aba South', '2018-11-28', '10 am', 1, 39, '2018-11-26 15:52:26', '2018-11-26 21:15:09'),
(84, 'GLOPAC INSTITUTE', '60', '2 factory Road', 'Aba South', '2018-11-29', '10am', 1, 32, '2018-11-26 17:52:44', '2018-11-26 21:16:55'),
(85, 'Dominion city Aba', '100', 'Ogbor Hill', 'Aba South', '2018-11-25', '9:30am', 1, 42, '2018-11-26 20:50:50', '2018-11-26 20:58:47'),
(86, 'Neijoy', '50', 'Neijoy\'s Consults,', 'Aba South', '2018-12-01', '10 am', 1, 28, '2018-11-28 00:53:03', '2018-11-28 03:33:37'),
(89, 'neijoy nig ltd', '60', 'no 1 factory road aba abia state', 'Aba South', '2018-12-01', '9am', 1, 41, '2018-11-29 12:53:10', '2018-11-29 18:21:14'),
(90, 'Umuahia', '150', 'Umuahia', 'Umuahia North', '2018-12-03', '12pm', 1, 39, '2018-11-29 15:59:49', '2018-11-29 18:19:37'),
(91, 'Oriflame Nigeria', '50', 'IG Hub Office', 'Aba South', '2018-12-01', '12 pm', 1, 36, '2018-11-29 21:17:52', '2018-11-30 05:55:03'),
(92, 'Hotel Nigeria Association in Abia State (Umuahia branch)', '100', 'Shelton Hotel, mission hill Umuahia.', 'Umuahia North', '2018-12-11', '1:00 pm', 1, 29, '2018-11-30 00:09:25', '2018-11-30 05:55:54'),
(93, 'Streams of Joy International', '100', 'Streams of Joy International, KM 4 Ikot Ekpene Road', 'Umuahia North', '2018-11-17', '2pm', 1, 12, '2018-11-17 10:06:00', '2018-11-17 10:07:00'),
(94, 'Full gospel business men\'s fellowship', '100', 'City global Annex 32/47 ekenna street off okigwe road', 'Aba South', '2018-12-08', '8:am', 1, 21, '2018-11-30 01:22:07', '2018-11-30 05:56:57'),
(95, 'Emerald intl church', '80', 'Crystal park hotel portharcourt road', 'Aba South', '2018-12-03', '3:pm', 1, 21, '2018-11-30 01:24:27', '2018-11-30 05:58:19'),
(96, 'Heles Cakes and events', '15', 'Heles cakes and events, 204 Tenant Road, Aba', 'Aba South', '2018-12-04', '10:00am', 1, 23, '2018-11-30 04:52:19', '2018-11-30 05:58:59'),
(99, 'Global Professional Entrepreneurship Development Institute', '100', '13 Factory Road, by Bata Aba', 'Aba South', '2018-12-04', '12pm', 0, 32, '2018-11-30 18:46:09', '2018-11-30 18:46:09'),
(100, 'Assemblies Of God Church.', '50', '131 Omuma Road Aba', 'Aba South', '2018-12-08', '10 am', 0, 38, '2018-11-30 19:10:10', '2018-11-30 19:10:10'),
(101, 'Dominion City Aba', '250', 'Dominion City Aba Church  Auditorium', 'Aba North', '2018-12-15', '8am', 0, 26, '2018-11-30 19:24:14', '2018-11-30 19:24:14'),
(102, 'Assemblies of God church', '50', '48 Ibadan street', 'Aba South', '2018-12-04', '4pm', 0, 21, '2018-12-01 01:19:57', '2018-12-01 01:19:57'),
(103, 'Recovery House Intl', '100', 'Recovery House church Auditorium opp Abayi girls secondary school', 'Osisioma Ngwa', '2018-12-06', '4pm', 0, 32, '2018-12-01 14:10:04', '2018-12-01 14:10:04'),
(104, 'Osisioma Business Corpers', '50', 'Osisioma Corpers Hall', 'Aba South', '2018-12-06', '11:00am', 0, 23, '2018-12-01 14:28:38', '2018-12-01 14:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `verified`, `isAdmin`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bamidele', 'Emmanuel', 'segunemma2003@gmail.com', '09036444724', '$2y$10$Ha/jsrs785jmtFG6/NXsV.xqSfYhM2I53ku2q9qAZhsa.4nvw4OyK', 1, 0, NULL, '9IXzX2WZYNzrhShLQMYQ361QwA7syp1QYYynfJGUyzUlAZFUS0XKv2xbpT1B', '2018-10-19 08:40:22', '2018-10-19 08:41:31'),
(2, 'Josh', 'Goat', 'kreativejosh@gmail.com', '08708005885', '$2y$10$G7y.E/oT4okB215Fp39JKefmy53noz2Boql5//srzvoRYEBKxsEe.', 1, 1, NULL, 'N4s5mgok3DbBicEwigYQTprgCMhSq5mHIS1w7STLatHo10VNQihWR8SasOoN', '2018-10-19 09:44:58', '2018-10-24 20:12:51'),
(12, 'Elizabeth', 'Kalu', 'elizabeth@ighub.com.ng', '07052990051', '$2y$10$gcWwjLWC5VmAn19NsddB2ORu3aK0VBvazXLRHJwrK3pba8qK6JwsC', 1, 1, NULL, 'hffCkuILybk6y4BEHLxoS4yQxHhG4ITc3sONQO8N3MRs5vzK0Vjh2lwrXx2b', '2018-10-26 16:47:32', '2018-10-26 16:53:30'),
(13, 'Elizabeth', 'Kalu', 'kalu.elizabeth@gmail.com', '08162723729', '$2y$10$2AEIRwbL62kL1gFW2DgtyuwdD5Wafxb9ojH34BfAvng1bVZjIF08i', 1, 0, NULL, 'DNW3Oc3OqfJNcXwoxdlcISVP7rhVp8dVVXhuIfsPGjsrxeejsYTZliaxU2UV', '2018-10-26 17:24:14', '2018-10-26 17:27:26'),
(14, 'Godson', 'Ogumka', 'godson.ogumka@gmail.com', '08160430542', '$2y$10$b.fw1bk3cUr43VZ.RRJ0QOAn.6qnnbkS6CShTjgXSS19YQSc1baUO', 1, 0, NULL, '2uywEkB5JBzyPRz9uda5vhC4PB3HdKxfQbvO2OfhYQokMgkaFsIZrKF0tJrh', '2018-10-26 17:31:04', '2018-10-26 18:35:55'),
(15, 'SAMUEL', 'UKAH', 'samuelukah@gmail.com', '08030700885', '$2y$10$DShFjcIAi3BwRbq63em.KuT/Q6QyAFgYpOx8SbhExSLq3qNG1URg.', 1, 0, NULL, NULL, '2018-10-26 17:32:23', '2018-10-26 23:30:18'),
(16, 'IHUEZE', 'NWOBILO', 'ezelado@gmail.com', '08037400339', '$2y$10$fConczswIaxyzB07IPpNveXasJMOwt1T1FLJUj3/oflG46rpzrDE.', 0, 0, NULL, NULL, '2018-10-26 17:36:34', '2018-10-26 17:36:34'),
(17, 'CHIAMAKA', 'OSUMGBA', 'kindness@ighub.com.ng', '08168988303', '$2y$10$EH1zU1TNic.n5cPblaYDveRLjxQz5YyBr2wZdNnZA3UdPvD63dOLK', 1, 0, NULL, 'mOX82sC4sQYgFgyHNs3wTq6pyTf9i0Ag4iWRpQxYefx928dbccKmVunfSQ3s', '2018-10-26 18:16:27', '2018-11-07 16:44:24'),
(18, 'GODKNOWS', 'IKPEAMA', 'g.knowsikpams@gmail.com', '08062878396', '$2y$10$q909unSRUrxetFgkKH1jX.zo6gswTX2MLryc9wxr5BxndSJQbDNT6', 1, 0, NULL, NULL, '2018-10-26 18:25:38', '2018-10-26 18:33:08'),
(19, 'AMARACHI', 'DURU', 'amlovelystan@gmail.com', '08039312042', '$2y$10$Opf4s0qFMC5kk1vWBl2w8.euAuiWVSl0Lcuh498XMUqZqi1hzQWKu', 1, 0, NULL, '7hNCvPGsBloDBmYGbJhU6kFqu47BKf55RDWheNXixfHHQehCF43mJQaeFbrb', '2018-10-26 18:30:15', '2018-10-26 20:56:44'),
(20, 'IHUEZE', 'NWOBILO', 'ezelado@yahoo.com', '8037400339', '$2y$10$OFQmX/SI/Fd3S.fWNiekV.ntBFPZhqbgXTQP.hsrVoo02UvhAxbZm', 1, 0, NULL, 'Ri8ykNgFWzQd6vChS44f5Mgs43CKQ0HjiQljO7R8NakpG0lapGbtN5mGtE1v', '2018-10-26 18:45:03', '2018-11-04 02:17:53'),
(21, 'NNEKA', 'UKACHUKWU', 'nnekaukachukwu93@gmail.com', '07062143898', '$2y$10$xkEaiVKUV/jCHvSYpPS/NuIjozORBm/OAMVu2dKqUj8NbkjPEiyF6', 1, 0, NULL, 'fF6C0UglFvxihdvzfkRR1SNGZbmFcfLisbpkJ2QGEhekfpAUL7re5ZFXbpzR', '2018-10-26 19:07:53', '2018-10-30 23:11:32'),
(22, 'MARY', 'THOMAS', 'tmary794@gmail.com', '8130467299', '$2y$10$AFaSMawlPyKOIQ711liutuVOKszdRScjDQUD8qDFwS89RubOxyQ5C', 1, 0, NULL, 'FksA6e3y8vz4JRysc93h87MYHkgnLzskC6cuhqQCTRNkalhqa6aS6LSrjQ9W', '2018-10-26 19:40:57', '2018-10-26 19:50:22'),
(23, 'UGONNA', 'OLEH', 'queendalinoleh@gmail.com', '08133420000', '$2y$10$9zVWU4ljgvVjDQKd.WjR9upNM/jgxXNNcj2UWAlqHB7Y/FUOQUvAO', 1, 0, NULL, 'qo8CcT9LPJPXbJ2pS9zcQJ6CaiDEQHv2WDa67aftHeMKzsl9GBib0zgtl57M', '2018-10-26 19:49:56', '2018-11-07 11:47:01'),
(24, 'EMEKA', 'ONU', 'fenzymaven@gmail.com', '08132765508', '$2y$10$0H6ZHr7shY5.2rxwkYzwMe6bPVaZFKpBFPpiG1Zgfi70ldbQvCMLa', 1, 0, NULL, NULL, '2018-10-26 19:57:34', '2018-10-26 20:04:07'),
(25, 'ASUQUO', 'Odudu-Abasi', 'asuquooduduabasi@GMAIL.COM', '08061177412', '$2y$10$pPcd78.EZOgNMiTaRFCRSOHZCDTcxTdeHtmHdLLGugHWEK7GXtOZC', 1, 0, NULL, NULL, '2018-10-28 13:05:51', '2018-10-28 14:42:04'),
(26, 'PRINCE', 'IBEKWE', 'ibekweprince1@gmail.com', '08061102685', '$2y$10$H3EPpdyQgbwTtIyn8c3uauPXxVFkC592xNYYeKXWMjwPhjQamTSJq', 1, 0, NULL, 'OCtPb98riQT5LnGeCAG1JrqlvEf1ZyYkBNT6MMiv9NW432NNGN0cNvqPCybx', '2018-10-28 13:07:47', '2018-10-29 23:37:58'),
(27, 'DABERECHI', 'UZOH', 'omobadhabs@gmail.com', '08062147560', '$2y$10$7M/UTXqIZoMaYryrKUVDvOwbpR9g/l3.LE9fGwjjdRigX.kInYQ8C', 1, 0, NULL, 'hFtF0vV3i9G8pfNKDoMPQEWG51bRE30ndIjt3J3kF9i7w3WD2mA1tF1RxlMc', '2018-10-28 13:12:21', '2018-11-22 02:20:36'),
(28, 'EZINNE', 'UZOIJE', 'ezinneuzoije@gmail.com', '08068100719', '$2y$10$tR/./XmCceujlXYu.o5ItOceLitYfToDIOTz/UlI36ZTgTclKmVRi', 1, 0, NULL, '4FBiMun9aCl9GsPHgNHNJzHka2A3iUgOg2ZHQw6evRvuW3Ma3GwxIbTO5MfT', '2018-10-28 13:16:12', '2018-11-06 21:19:36'),
(29, 'IHEANYICHUKWU', 'AGUIYI', 'engrceajai@gmail.com', '08037313597', '$2y$10$IcAfombSBsMi1SsGEr3DquUqeUHV1RjiRgqMf7Qa9Wmpl6n03ZE1G', 1, 0, NULL, NULL, '2018-10-28 13:18:34', '2018-10-28 23:39:44'),
(30, 'ODINAKACHI', 'NWAFOR', 'odinakachinwafor@gmail.com', '07032207998', '$2y$10$K1B/pkrXv31fcSj61WAPoOm.OsWXv68lPLsM5jmrKCA3N5R.9csEC', 1, 0, NULL, NULL, '2018-10-28 13:20:56', '2018-10-28 16:37:33'),
(31, 'ADEDAMOLA', 'OKE', 'OKEADEDAMOLA09@GMAIL.COM', '07037994782', '$2y$10$bEsbmwKFQGBSZDlHFcLpiOdSEoa7jsaZSREC1PO0ZEG2ak8QyNOpu', 1, 0, NULL, 'ism0CI0NmnIppeTh4o3yfIS54UeOqTMzXoZmRDBezQ3SjKX3Tc0GMsApwpxN', '2018-10-28 13:28:28', '2018-11-22 19:59:52'),
(32, 'STANLEY', 'AGU', 'mrstanleyagu@gmail.com', '08068772315', '$2y$10$vhKVRhxslpyq/ffyvC7ZD.Gtdg85Km83u9ark5iFEXOXpXRuAgEO.', 1, 0, NULL, 'q8zhlnGSixJfiI1ZQS1Ds2eZPDkOH6JSABj7zHmn58LJwE4vCmIoSOnBi5lr', '2018-10-28 13:29:32', '2018-10-28 16:14:21'),
(33, 'FRANKLIN', 'NWACHUKWU', 'franklinekene.nwachukwu@gmail.com', '08167456825', '$2y$10$fz5qnOafKiMAdazVq8iijOftc2hMKLNcyyuJx.85aUYfqp3Mn1V9i', 1, 0, NULL, NULL, '2018-10-28 13:33:10', '2018-10-28 18:49:55'),
(34, 'CASPER', 'JOSIAH', 'casperjoe061@gmail.com', '07035323038', '$2y$10$6..HqKCD.aKlPyDe09rxD.IGyCrpbg6FsJRq/u4p4KE8mJdHMQ81.', 0, 0, NULL, NULL, '2018-10-28 14:32:49', '2018-10-28 14:32:49'),
(35, 'MOREINO', 'UMA', 'moreinob@gmail.com', '07059764939', '$2y$10$BH9h.2VFLQlrFhmjDQ1zFOjnN87kvazWN8vya6LlcHP4rSMxTqF3.', 1, 0, NULL, NULL, '2018-10-28 16:26:51', '2018-10-28 18:41:04'),
(36, 'IKENNA', 'OGBUDIMKPA', 'ogbudimkpaikenna@gmail.com', '08039383893', '$2y$10$rgsFDsOQBFUy3CVQ6Qa5jO.nC.xM1jRxpoi8J3IgsuDY6T6CN1kSy', 1, 0, NULL, 'rUEwdJVzj6rP8GH1tqB5ketofs0qZzpuwm4dHc6i3wQwGXeRHCJTKWo5ql3V', '2018-10-29 13:40:14', '2018-11-06 23:37:36'),
(37, 'ONYINYE', 'OJIAKU', 'onyinyechiojiaku@gmail.com', '08130324352', '$2y$10$gjLFSlBdOJinA.mi1MdUEeRlBLoQz8481/ELq3uxenFk7bOGbsGZ6', 1, 0, NULL, 'KWlWOV28zp4CyiloFD2TvBPEfEhL5XXAybR8Tby5j1QTYEMEUM1Rbfdzjnrx', '2018-10-29 22:43:27', '2018-11-05 14:04:21'),
(38, 'CASPER', 'JOSIAH', 'casperjoeproduction@gmail.com', '0703532308', '$2y$10$CTQtsiMCZKSw6C4lPavl.OJZUf9i1XaWhMt7fpT2DT2Fr1rm/uw/2', 1, 0, NULL, NULL, '2018-10-30 01:10:15', '2018-10-30 04:40:52'),
(39, 'LOIS', 'PETERS', 'Loispetersleads@gmail.com', '07063280459', '$2y$10$2LuZ.FIR68PtOoyJ5jZi6.QR1s/iwMMPFcDOAiYjmlu9ids5bAvIi', 1, 0, NULL, NULL, '2018-11-05 18:26:47', '2018-11-06 00:16:15'),
(40, 'AMARACHI', 'AZUBUIKE', 'emmanuellar805@gmail.com', '07035906191', '$2y$10$3FAV4aeKankesYhNkviu7e1KPjDshM3fvMOv3vTKOIXGqCe6vgnp2', 1, 0, NULL, NULL, '2018-11-07 15:17:43', '2018-11-07 21:02:44'),
(41, 'IWEKA EJIKE', 'NMEZI', 'iwekanmezi@gmail.com', '08037097154', '$2y$10$ee1r1kEEBT9uGY3sFF1FZuGuxapDGZKcHxEuuNoVcMyzuRvz2Ia76', 1, 0, NULL, NULL, '2018-11-13 02:43:10', '2018-11-18 00:36:03'),
(42, 'UFERE', 'SAMUEL', 'uferesamuel@gmail.com', '07036414710', '$2y$10$D/6osWHDR9AO7gYCFy2RiuJ1t0T4Ua8VGTVoPM3OwvdiGlpbegWbK', 1, 0, NULL, 'vWM6QOLbt2Y3cwctI1PN7ViNKpO2LsxtrW8M6HHpSej35SiGkxbbm50JVmkX', '2018-11-21 18:58:42', '2018-11-21 19:09:32'),
(43, 'Chinagozi', 'Daniel', 'danielchinagozi@gmail.com', '08030907949', '$2y$10$sh1e8T.YpKSPpghs0f5cnOGBDQSdZPnXfD/yVWNJl3abbFkD1eDaa', 0, 0, NULL, NULL, '2018-12-01 18:49:20', '2018-12-01 18:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, '099a6cff4b7dc117aaaaea75f8b27c16091c0dcc', '2018-10-19 08:40:22', '2018-10-19 08:40:22'),
(2, 2, '494eabb19fef37d820f317ae2cbe5c0797cabcbc', '2018-10-19 09:44:58', '2018-10-19 09:44:58'),
(3, 3, 'b939da768676e937b9d39d2162c06d2c85e7346f', '2018-10-25 17:13:19', '2018-10-25 17:13:19'),
(4, 4, '757ca82193b914b32be7841e8027f74f1ce20ba0', '2018-10-25 17:17:13', '2018-10-25 17:17:13'),
(5, 5, 'fad20bce0c5ab51d736170c210dfef3e02cc6171', '2018-10-25 17:22:50', '2018-10-25 17:22:50'),
(6, 6, '515300a4722cf83f46fc5569b31c2efc1249276e', '2018-10-25 18:26:56', '2018-10-25 18:26:56'),
(7, 7, 'f4330ee1826be08b311645263b406f5e5983fd5c', '2018-10-25 18:41:11', '2018-10-25 18:41:11'),
(8, 8, '0479c84e5405477263247c9bdae62b2f5416a85d', '2018-10-25 18:46:08', '2018-10-25 18:46:08'),
(9, 9, 'b2de55b1d4f0035fe797c05145885f91f350becb', '2018-10-25 18:52:48', '2018-10-25 18:52:48'),
(10, 10, '3c5c47f2380b0188566052ae3916f6ec8181c828', '2018-10-25 18:54:49', '2018-10-25 18:54:49'),
(11, 11, 'f959ea2812e8e0cf99e07ed920911cab1b961fa7', '2018-10-25 19:03:48', '2018-10-25 19:03:48'),
(12, 12, 'ddd2f08e25d8278b682453ada54d2bfa9d27ff22', '2018-10-26 16:47:32', '2018-10-26 16:47:32'),
(13, 13, 'e204dadcde33634f5def8fa5bc8a096f3ef8ecd0', '2018-10-26 17:24:14', '2018-10-26 17:24:14'),
(14, 14, 'a31eec92d88a0492891ce06170af35a3f0d84a09', '2018-10-26 17:31:04', '2018-10-26 17:31:04'),
(15, 15, 'a6bfc956d66d981d8e4854ac1037b185db540541', '2018-10-26 17:32:23', '2018-10-26 17:32:23'),
(16, 16, 'daa65c301a752f2974d217b34203098a3cf6562b', '2018-10-26 17:36:34', '2018-10-26 17:36:34'),
(17, 17, '91a9384facb8f96c8422d20a6780b24bac79e26c', '2018-10-26 18:16:27', '2018-10-26 18:16:27'),
(18, 18, '10fefb0b374f3afc6c8ef1cca65d5b75d08b0293', '2018-10-26 18:25:38', '2018-10-26 18:25:38'),
(19, 19, '66f130ee3ebfd9a369d030b86e8da4f7eafc7328', '2018-10-26 18:30:15', '2018-10-26 18:30:15'),
(20, 20, '63dfeea606303e089ef8de52a73233acc59ac477', '2018-10-26 18:45:03', '2018-10-26 18:45:03'),
(21, 21, '22c35adfa4fe86f508c77641299835cdca53fff7', '2018-10-26 19:07:53', '2018-10-26 19:07:53'),
(22, 22, '4fcc5d7e25e9e8f9a8180a719f3f7d4440abc600', '2018-10-26 19:40:57', '2018-10-26 19:40:57'),
(23, 23, '83c33a28cdd722d7e5e724965756cdcb5e2f3f65', '2018-10-26 19:49:56', '2018-10-26 19:49:56'),
(24, 24, '4393269bfc188491d1ca6a15340b830d60ed0e66', '2018-10-26 19:57:34', '2018-10-26 19:57:34'),
(25, 25, 'ce68d2e25e7aa69c189a338d3a1e22817dd64ef5', '2018-10-28 13:05:51', '2018-10-28 13:05:51'),
(26, 26, '8fb7307aa4c05107dc3032fcf779bb1ea91e7638', '2018-10-28 13:07:47', '2018-10-28 13:07:47'),
(27, 27, '836de9685596a3e65198e4b24fcb15885f27ce96', '2018-10-28 13:12:21', '2018-10-28 13:12:21'),
(28, 28, '9bb668e07f80a56bbdb1bd1e5b2ec730f0f1f16f', '2018-10-28 13:16:12', '2018-10-28 13:16:12'),
(29, 29, 'e4f4531f85c78380d98f7eea24345706c05eb638', '2018-10-28 13:18:34', '2018-10-28 13:18:34'),
(30, 30, '5eb57741f3068882b0c6db7756a9a74e7bbddff7', '2018-10-28 13:20:56', '2018-10-28 13:20:56'),
(31, 31, '7374f4e852da867e9cc221e50760baaeb2fce53d', '2018-10-28 13:28:28', '2018-10-28 13:28:28'),
(32, 32, '52a69c628a78426358f021d9ff7de78a35f9097d', '2018-10-28 13:29:32', '2018-10-28 13:29:32'),
(33, 33, '3bbe50df32988379a8d018b8b037b5f0a969ae8d', '2018-10-28 13:33:10', '2018-10-28 13:33:10'),
(34, 34, '83f407be07a3817733b94c2c4a4dbc3fddaf0d05', '2018-10-28 14:32:49', '2018-10-28 14:32:49'),
(35, 35, '0310d4076bc56f5c373e32fe0672be8540ec9242', '2018-10-28 16:26:51', '2018-10-28 16:26:51'),
(36, 36, 'e9da945b7f04bb46d5090755ba89651fb5432f17', '2018-10-29 13:40:14', '2018-10-29 13:40:14'),
(37, 37, 'd445fa28f0ff36c527ca4f992dc778d2d9e4bb81', '2018-10-29 22:43:27', '2018-10-29 22:43:27'),
(38, 38, '3c79edca899113d2fc7e29210e1293ad960aa75a', '2018-10-30 01:10:15', '2018-10-30 01:10:15'),
(39, 39, '50f2bbbb4a9776a74acd87390427511c459c2477', '2018-11-05 18:26:47', '2018-11-05 18:26:47'),
(40, 40, '841f9a32d01b24bb4b40ee8148ec4beac37246ce', '2018-11-07 15:17:43', '2018-11-07 15:17:43'),
(41, 41, 'bc05a5a2f646b5032dbd2df651ffc2295fab5f7b', '2018-11-13 02:43:10', '2018-11-13 02:43:10'),
(42, 42, '7bca80f37614f7ab9d393f15a43f0c26b36e9847', '2018-11-21 18:58:42', '2018-11-21 18:58:42'),
(43, 43, 'ad14f199aa6fa7db6ed3594f6a2a6e79f4642954', '2018-11-26 20:56:41', '2018-11-26 20:56:41'),
(44, 44, '2050a6d58578256a2e935d18ec17cf3f1143fb98', '2018-11-26 21:11:29', '2018-11-26 21:11:29'),
(45, 45, 'e3d0ef3f312ecbbc167883164d2ac1dde47def91', '2018-11-26 21:18:31', '2018-11-26 21:18:31'),
(46, 46, '66ababcb52a7ba92d42a11ad0c7d6792bd74fcf6', '2018-11-26 21:23:08', '2018-11-26 21:23:08'),
(47, 47, '30a1cbff4929c38cc658e06767bb1fc9d232af3a', '2018-11-26 21:24:46', '2018-11-26 21:24:46'),
(48, 48, 'bf2f5b7db87b36f831a1d3cf67d63dcb1a4f6658', '2018-11-26 21:33:15', '2018-11-26 21:33:15'),
(49, 49, '1a33b17a506b34b443bea32210bf1af52745fcc4', '2018-11-26 21:36:16', '2018-11-26 21:36:16'),
(50, 50, 'cb0b77e8ecc5e5291f9a6383609cf4b3dfdbfd04', '2018-11-26 21:39:02', '2018-11-26 21:39:02'),
(51, 51, '2ceaa6b195761423bac2fe1cad5ec4ba151a9d70', '2018-11-26 21:42:28', '2018-11-26 21:42:28'),
(52, 52, '359442cd91a7f50f6f5c9c4e31a7cb77e7e7a08c', '2018-11-26 22:00:58', '2018-11-26 22:00:58'),
(53, 53, '39773c916fcec1655e5e13f9c71d3d985656e005', '2018-11-26 22:17:29', '2018-11-26 22:17:29'),
(54, 54, '4a3f543b00da90c7fa83efaec95f49eef166cbea', '2018-11-26 22:25:21', '2018-11-26 22:25:21'),
(55, 55, '0e577b9c4df8c84c9a9782f426e0d431ffd6ccb7', '2018-11-26 22:38:50', '2018-11-26 22:38:50'),
(56, 43, '99c57b4081a4beed09f7e9316d1493261e359aa9', '2018-12-01 18:49:21', '2018-12-01 18:49:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_session_id_foreign` (`session_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
