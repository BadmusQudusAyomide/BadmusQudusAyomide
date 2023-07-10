-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 12:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'QUESTATLANTIC', '12345QUEST');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(66, 'QCODE JNR', '2023-03-10 22:52:44'),
(67, 'QAED', '2023-03-05 17:43:01'),
(68, 'HOPE', '2023-03-05 17:43:15'),
(69, 'GET IT RIGHT', '2023-03-05 17:44:37'),
(70, 'KRONECKER', '2023-03-05 17:43:44'),
(71, 'SCHOLARS BEYOND BORDER', '2023-03-05 17:45:11'),
(73, 'HIDDEN GEMS', '2023-03-05 21:37:43'),
(76, 'QCODE SNR', '2023-03-10 22:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_School` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_School`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(1, 'OYEWUSI ENOCH', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oyewusienoch@gmail.com', 'OYEWUSI', 'active'),
(2, 'OLUJIDE HERITAGE', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olujideheritage@gmail.com', 'OLUJIDE', 'active'),
(3, 'OGUNLEYE MUHAMMED', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'ogunleyemuhammed@gmail.com', 'OGUNLEYE', 'active'),
(4, 'ABUBAKAR IBRAHIM', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'abubakaribrahim@gmail.com', 'ABUBAKAR', 'active'),
(5, 'MORUF FATHIA', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'moruffathia@gmail.com', 'MORUF', 'active'),
(6, 'OLAJIDE TOLANI', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olajidetolani@gmail.com', 'OLAJIDE', 'active'),
(7, 'RUFUS DORCAS', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'rufusdorcas@gmail.com', 'RUFUS', 'active'),
(8, 'AKINADE CHRISTIANA', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'akinadechristiana@gmail.com', 'AKINADE', 'active'),
(9, 'AWOLOLA TEMIDAYO', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'awololatemidayo@gmail.com', 'AWOLOLA', 'active'),
(10, 'SAMUEL VICTORIA', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'samuelvictoria@gmail.com', 'SAMUEL', 'active'),
(11, 'AHMED AMINA', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'ahmedamina@gmail.com', 'AHMED', 'active'),
(12, 'AKINADE AMOS', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'akinadeamos@gmail.com', 'AKINADE', 'active'),
(13, 'AKPAN GODWIN', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'akpangodwin@gmail.com', 'AKPAN', 'active'),
(14, 'ADEYEMI QUYUM', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'adeyemiquyum@gmail.com', 'ADEYEMI', 'active'),
(15, 'AKINTUNDE PELUMI', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'akintundepelumi@gmail.com', 'AKINTUNDE', 'active'),
(16, 'ADEWOYIN PETER', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'adewoyinpeter@gmail.com', 'ADEWOYIN', 'active'),
(17, 'OMOTAYO STEPHEN', '66', 'MALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omotayostephen@gmail.com', 'OMOTAYO', 'active'),
(18, 'YOKO OLUWADAMILOLA', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'yokooluwadamilola@gmail.com', 'YOKO', 'active'),
(19, 'RAFIU BARAKAT', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'rafiubarakat@gmail.com', 'RAFIU', 'active'),
(20, 'YARAMOLA BOSE', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'yaramolabose@gmail.com', 'YARAMOLA', 'active'),
(21, 'SANNI TAOFEEKOH', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'sannitaofeekoh@gmail.com', 'SANNI', 'active'),
(22, 'SAMUEL FAVOUR', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'samuelfavour@gmail.com', 'SAMUEL', 'active'),
(23, 'OKELEYE PERPETUAL', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'okeleyeperpetual@gmail.com', 'OKELEYE', 'active'),
(24, 'KABIR WASILAT', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'kabirwasilat@gmail.com', 'KABIR', 'active'),
(25, 'OJABOLAMO ESTHER', '66', 'FEMALE', '', 'SSS 1', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'ojabolamoesther@gmail.com', 'OJABOLAMO', 'active'),
(26, 'ADETUASE JOSHUA', '76', 'MALE', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'adetuasejoshua@gmail.com', 'ADETUASE', 'active'),
(27, 'OMOSEEBI PELATIAH AYOMIKUN', '76', 'MALE', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omoseebipelatiah@gmail.com', 'OMOSEEBI', 'active'),
(28, 'OMOLE OLAADURA ADURAGBEMI', '76', 'MALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omoleolaadura@gmail.com', 'OMOLE', 'active'),
(29, 'OLANIYI OLUWADAMILARE JOSHUA', '76', 'MALE', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olaniyioluwadamilare@gmail.com', 'OLANIYI', 'active'),
(30, 'BALOGUN SOLOMON OLUWATUNMISE', '76', 'MALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'balogunsolomon@gmail.com', 'BALOGUN', 'active'),
(31, 'OBAFEMI OLUWAYODE SAMUEL', '76', 'MALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'obafemioluwayode@gmail.com', 'OBAFEMI', 'active'),
(32, 'OLUSINA EMMANUEL', '76', 'MALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olusinaemmanuel@gmail.com', 'OLUSINA', 'active'),
(33, 'OLAJIDE OYINKANSOLA PRECIOUS', '76', 'FEMALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olajideoyinkansola@gmail.com', 'OLAJIDE', 'active'),
(34, 'OMOTOSHO OLUWANIFEMI JUSTINA', '76', 'FEMALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omotoshooluwanifemi@gmail.com', 'OMOTOSHO', 'active'),
(35, 'OMOTUYI ENIOLA DEBORAH', '76', 'FEMALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omotuyieniola@gmail.com', 'OMOTUYI', 'active'),
(36, 'OLUWATIMILEHIN INIOLUWA COMFORT', '76', 'FEMALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oluwatimilehininioluwa@gmail.com', 'OLUWATIMILEHIN', 'active'),
(37, 'BUSAYO TITILAYO', '76', 'FEMALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'busayotitilayo@gmail.com', 'BUSAYO', 'active'),
(38, 'OYEWUSI IYANU MARY', '76', 'FEMALE', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oyewusiiyanu@gmail.com', 'OYEWUSI', 'active'),
(39, 'OLUSHINA DAVID', '76', 'MALE', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olushinadavid@gmail.com', 'OLUSHINA', 'active'),
(40, 'OBAFEMI OLUWAYODE SAMUEL', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'obafemioluwayode@gmail.com', 'OBAFEMI', 'active'),
(41, 'OMOTOSHO OLUWANIFEMI', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omotoshooluwanifemi@gmail.com', 'OMOTOSHO', 'active'),
(42, 'OLAJIDE OYINKANSOLA PRECIOUS', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olajideoyinkansola@gmail.com', 'OLAJIDE', 'active'),
(43, 'AYINUOLA FAVOUR OLUWANIFEMI', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'ayinuolafavour@gmail.com', 'AYINUOLA', 'active'),
(44, 'OYEBAYO SEMILORE DANIEL', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oyebayosemilore@gmail.com', 'OYEBAYO', 'active'),
(45, 'OLANIYI OLUWADAMILARE JOSHUA', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olaniyioluwadamilare@gmail.com', 'OLANIYI', 'active'),
(46, 'BALOGUN SOLOMON OLUWATUMISE', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'balogunsolomon@gmail.com', 'BALOGUN', 'active'),
(47, 'ORIOWO DEBORAH ODUNAYO', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oriowodeborah@gmail.com', 'ORIOWO', 'active'),
(48, 'ADU RACHEAL FIYINFOLUWA', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'aduracheal@gmail.com', 'ADU', 'active'),
(49, 'OLUWATIMILEHIN INIOLUWA', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'oluwatimilehininioluwa@gmail.com', 'OLUWATIMILEHIN', 'active'),
(50, 'BUSAYO TITILAYO AYOMIDE', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'busayotitilayo@gmail.com', 'BUSAYO', 'active'),
(51, 'OLUSINA EMMANUEL', '76', '', '', 'SSS 2', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'olusinaemmanuel@gmail.com', 'OLUSINA', 'active'),
(52, 'ADETUASE JOSHUA', '76', '', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'adetuasejoshua@gmail.com', 'ADETUASE', 'active'),
(53, 'OMOSEBI PELATIAH AYOMIKUN', '76', '', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'omosebipelatiah@gmail.com', 'OMOSEBI', 'active'),
(54, 'AKINRINDIBO PRECIOUS', '76', '', '', 'SSS 3', 'ADEGBAI COMMUNITY HIGH SCHOOL', 'akinrindiboprecious@gmail.com', 'AKINRINDIBO', 'active'),
(55, 'OMOTUNDE KEHINDE', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'omotundekehinde@gmail.com', 'OMOTUNDE', 'active'),
(56, 'OMOTUNDE VICTOR', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'omotundevictor@gmail.com', 'OMOTUNDE', 'active'),
(57, 'OMILOWA BLESSINGS', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'omilowablessings@gmail.com', 'OMILOWA', 'active'),
(58, 'ADEPOJU FIKAYO', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'adepojufikayo@gmail.com', 'ADEPOJU', 'active'),
(59, 'ADENIYI MARY', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'adeniyimary@gmail.com', 'ADENIYI', 'active'),
(60, 'ADEKANMBI EMMANUEL', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'adekanmbiemmanuel@gmail.com', 'ADEKANMBI', 'active'),
(61, 'YEKEEN ABDUL WARITH', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'yekeenabdulwarith@gmail.com', 'YEKEEN', 'active'),
(62, 'ADEMOLA PROMISE', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'ademolapromise@gmail.com', 'ADEMOLA', 'active'),
(63, '0GINI DAVID', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', '0ginidavid@gmail.com', '0GINI', 'active'),
(64, 'AKINTUNDE ZAINAB', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'akintundezainab@gmail.com', 'AKINTUNDE', 'active'),
(65, 'MUIBI ROQEEBAH', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'muibiroqeebah@gmail.com', 'MUIBI', 'active'),
(66, 'OGUNLEYE DARASIMI', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'ogunleyedarasimi@gmail.com', 'OGUNLEYE', 'active'),
(67, 'RASHEED AMINAT', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'rasheedaminat@gmail.com', 'RASHEED', 'active'),
(68, 'NDOMA CHOICE E.', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'ndomachoice@gmail.com', 'NDOMA', 'active'),
(69, 'ISAMOT SOLIAT', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'isamotsoliat@gmail.com', 'ISAMOT', 'active'),
(70, 'AYOADE RODIYAH', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'ayoaderodiyah@gmail.com', 'AYOADE', 'active'),
(71, 'HAMZAT SUKURAT', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'hamzatsukurat@gmail.com', 'HAMZAT', 'active'),
(72, 'MUSTAPHA DEBORAH', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'mustaphadeborah@gmail.com', 'MUSTAPHA', 'active'),
(73, 'BASHIRU FATHIA', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'bashirufathia@gmail.com', 'BASHIRU', 'active'),
(74, 'BABALOLA AINA', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'babalolaaina@gmail.com', 'BABALOLA', 'active'),
(75, 'SAKARIUS FAWAZ', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'sakariusfawaz@gmail.com', 'SAKARIUS', 'active'),
(76, 'SUNDAY IKECHUKWU', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'sundayikechukwu@gmail.com', 'SUNDAY', 'active'),
(77, 'SHOYOMI DANIEL', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'shoyomidaniel@gmail.com', 'SHOYOMI', 'active'),
(78, 'OLATUNDE GABRIEL', '66', '', '', 'JSS 3', 'URBAN DAY GRAMMAR SCHOOL JUNIOR', 'olatundegabriel@gmail.com', 'OLATUNDE', 'active'),
(79, 'QOZEEM FIRDAOUS', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'qozeemfirdaous@gmail.com', 'QOZEEM', 'active'),
(80, 'IBRAHEEM MUQEEMAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'ibraheemmuqeemat@gmail.com', 'IBRAHEEM', 'active'),
(81, 'MUILI IKIMOT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'muiliikimot@gmail.com', 'MUILI', 'active'),
(82, 'ADELEYE HEPHZIBAH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adeleyehephzibah@gmail.com', 'ADELEYE', 'active'),
(83, 'OYEWOLE IBRAHIM', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'oyewoleibrahim@gmail.com', 'OYEWOLE', 'active'),
(84, 'AKINJOBI ABD', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akinjobiabd@gmail.com', 'AKINJOBI', 'active'),
(85, 'ADEWUYI TOMIWA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adewuyitomiwa@gmail.com', 'ADEWUYI', 'active'),
(86, 'TAOFEEQ SUMAYAH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'taofeeqsumayah@gmail.com', 'TAOFEEQ', 'active'),
(87, 'NURENI ABDULBASHIT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'nureniabdulbashit@gmail.com', 'NURENI', 'active'),
(88, 'IDACHABA SIMON', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'idachabasimon@gmail.com', 'IDACHABA', 'active'),
(89, 'ADETUNJI FARUQ', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adetunjifaruq@gmail.com', 'ADETUNJI', 'active'),
(90, 'OLADELE MARYAM', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'oladelemaryam@gmail.com', 'OLADELE', 'active'),
(91, 'AKINWADE FATHIA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akinwadefathia@gmail.com', 'AKINWADE', 'active'),
(92, 'AMADEEN DEBORAH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'amadeendeborah@gmail.com', 'AMADEEN', 'active'),
(93, 'ABDULSALAM KAMAL', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'abdulsalamkamal@gmail.com', 'ABDULSALAM', 'active'),
(94, 'AKINWALE HASSAN', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akinwalehassan@gmail.com', 'AKINWALE', 'active'),
(95, 'ADEWUYI PRESCIOUS', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adewuyiprescious@gmail.com', 'ADEWUYI', 'active'),
(96, 'AJETUNMOBI PELUMI', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'ajetunmobipelumi@gmail.com', 'AJETUNMOBI', 'active'),
(97, 'ABIOLA TOHEEBAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'abiolatoheebat@gmail.com', 'ABIOLA', 'active'),
(98, 'AGBOOLA FLOURISH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'agboolaflourish@gmail.com', 'AGBOOLA', 'active'),
(99, 'OYANIYI FERANMI', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'oyaniyiferanmi@gmail.com', 'OYANIYI', 'active'),
(100, 'KAREEM MUIZ', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'kareemmuiz@gmail.com', 'KAREEM', 'active'),
(101, 'GAFAR ABEEB OLAMILEKAN', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'gafarabeeb@gmail.com', 'GAFAR', 'active'),
(102, 'AYOWI LATIFAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'ayowilatifat@gmail.com', 'AYOWI', 'active'),
(103, 'ADETUNJI MOYOSOREOLUWA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adetunjimoyosoreoluwa@gmail.com', 'ADETUNJI', 'active'),
(104, 'ADEYEMI QUYUM', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adeyemiquyum@gmail.com', 'ADEYEMI', 'active'),
(105, 'SANNI FAOFEEQOH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'sannifaofeeqoh@gmail.com', 'SANNI', 'active'),
(106, 'ADESOYE DORSCAS', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adesoyedorscas@gmail.com', 'ADESOYE', 'active'),
(107, 'KOLAPO FAITH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'kolapofaith@gmail.com', 'KOLAPO', 'active'),
(108, 'AGBOLUAJE MUBARAK', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'agboluajemubarak@gmail.com', 'AGBOLUAJE', 'active'),
(109, 'ADEWALE OLUWASHINA AYOMI', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adewaleoluwashina@gmail.com', 'ADEWALE', 'active'),
(110, 'KASALI WARIZ', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'kasaliwariz@gmail.com', 'KASALI', 'active'),
(111, 'TIJANI BASHIRAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'tijanibashirat@gmail.com', 'TIJANI', 'active'),
(112, 'TIJANI KUDIRAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'tijanikudirat@gmail.com', 'TIJANI', 'active'),
(113, 'OLUWATUNJI ANUOLUWAPO', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'oluwatunjianuoluwapo@gmail.com', 'OLUWATUNJI', 'active'),
(114, 'HAUWA IBRAHIM', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'hauwaibrahim@gmail.com', 'HAUWA', 'active'),
(115, 'AKINADE AMOS OLUWATUNMISE', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akinadeamos@gmail.com', 'AKINADE', 'active'),
(116, 'ADENIYI ADEMOLA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adeniyiademola@gmail.com', 'ADENIYI', 'active'),
(117, 'RAFIU BARAKAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'rafiubarakat@gmail.com', 'RAFIU', 'active'),
(118, 'EVANS FAVOUR AYOMIDE', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'evansfavour@gmail.com', 'EVANS', 'active'),
(119, 'AJETUNMOBI ODUNAYO', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'ajetunmobiodunayo@gmail.com', 'AJETUNMOBI', 'active'),
(120, 'ADEBAYO AISHAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adebayoaishat@gmail.com', 'ADEBAYO', 'active'),
(121, 'AKPAN GODWIN', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akpangodwin@gmail.com', 'AKPAN', 'active'),
(122, 'CHIMEZIE DANIEL', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'chimeziedaniel@gmail.com', 'CHIMEZIE', 'active'),
(123, 'ADEWOYIN PETER', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adewoyinpeter@gmail.com', 'ADEWOYIN', 'active'),
(124, 'SAMUEL FAVOUR DAMILOLA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'samuelfavour@gmail.com', 'SAMUEL', 'active'),
(125, 'AWOLOLA TEMIDAYO', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'awololatemidayo@gmail.com', 'AWOLOLA', 'active'),
(126, 'AKINADE CHRISTIANA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'akinadechristiana@gmail.com', 'AKINADE', 'active'),
(127, 'DARAMOLA BOSE', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'daramolabose@gmail.com', 'DARAMOLA', 'active'),
(128, 'SAMUEL VICTORIA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'samuelvictoria@gmail.com', 'SAMUEL', 'active'),
(129, 'MORUF FATHIA', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'moruffathia@gmail.com', 'MORUF', 'active'),
(130, 'YUSUFF HAREEMOH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'yusuffhareemoh@gmail.com', 'YUSUFF', 'active'),
(131, 'UGBUDU GOD`SMERCY', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'ugbudugod`smercy@gmail.com', 'UGBUDU', 'active'),
(132, 'HUSSEIN BASIT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'husseinbasit@gmail.com', 'HUSSEIN', 'active'),
(133, 'OYEWUSI ENOCH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'oyewusienoch@gmail.com', 'OYEWUSI', 'active'),
(134, 'ADENIYI BALIKIS', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'adeniyibalikis@gmail.com', 'ADENIYI', 'active'),
(135, 'ABDULBAKAR IBRAHIM', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'abdulbakaribrahim@gmail.com', 'ABDULBAKAR', 'active'),
(136, 'OLUJIDE HERITAGE', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'olujideheritage@gmail.com', 'OLUJIDE', 'active'),
(137, 'KABIR WASILAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'kabirwasilat@gmail.com', 'KABIR', 'active'),
(138, 'ABDULWAHEED ROHEEMOH', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'abdulwaheedroheemoh@gmail.com', 'ABDULWAHEED', 'active'),
(139, 'NAFIU ABEBEEEBAT', '76', '', '', '', 'COMMUNITY HIGH SCHOOL ALARERE', 'nafiuabebeeebat@gmail.com', 'NAFIU', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2019-12-07 02:52:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2019-12-07 02:52:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2019-12-05 12:59:47'),
(298, 6, 12, 9, '1850s', 'old', '2019-12-05 12:59:47'),
(299, 6, 12, 24, '1976', 'old', '2019-12-05 12:59:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2019-12-05 12:59:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 12:59:47'),
(302, 6, 11, 28, 'fds', 'old', '2023-03-05 22:56:05'),
(303, 6, 11, 29, 'sd', 'old', '2023-03-05 22:56:05'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 12:59:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 12:59:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 12:59:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 12:59:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 12:59:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 13:30:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 13:30:21'),
(311, 4, 12, 16, 'Data Block', 'old', '2023-03-13 23:15:48'),
(312, 4, 12, 20, 'Plancks radiation', 'old', '2023-03-13 23:15:48'),
(313, 4, 12, 10, 'Report', 'old', '2023-03-13 23:15:48'),
(314, 4, 12, 24, '1976', 'old', '2023-03-13 23:15:48'),
(315, 4, 12, 9, '1930s', 'old', '2023-03-13 23:15:48'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-05 03:18:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-05 03:18:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-05 03:18:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-05 03:18:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-05 03:18:35'),
(321, 13, 12, 8, 'Blackbody radiation', 'new', '2023-03-05 22:49:39'),
(322, 13, 12, 11, '1972', 'new', '2023-03-05 22:49:39'),
(323, 13, 12, 9, 'Compressed Archive file', 'new', '2023-03-05 22:49:39'),
(324, 13, 12, 12, 'Diode, inverted, pointer', 'new', '2023-03-05 22:49:39'),
(325, 13, 12, 3, 'David Filo & Jerry Yang', 'new', '2023-03-05 22:49:39'),
(326, 13, 12, 2, 'Operating System', 'new', '2023-03-05 22:49:39'),
(327, 13, 12, 5, 'System file', 'new', '2023-03-05 22:49:39'),
(328, 13, 12, 4, 'Database', 'new', '2023-03-05 22:49:39'),
(329, 13, 12, 1, 'Report', 'new', '2023-03-05 22:49:39'),
(330, 13, 12, 7, 'LAN (Local Area Network)', 'new', '2023-03-05 22:49:39'),
(331, 13, 12, 10, 'Interanet', 'new', '2023-03-05 22:49:39'),
(332, 13, 12, 6, 'Piezo Lamp Connector', 'new', '2023-03-05 22:49:39'),
(333, 13, 12, 17, '1880s', 'new', '2023-03-05 22:49:39'),
(334, 6, 11, 15, 'asd', 'new', '2023-03-05 22:56:05'),
(335, 6, 11, 16, 'sd', 'new', '2023-03-05 22:56:05'),
(336, 6, 11, 14, 'q1', 'new', '2023-03-05 22:56:05'),
(337, 8, 11, 14, 'ytu', 'new', '2023-03-06 12:19:59'),
(338, 8, 11, 15, 'dfg', 'new', '2023-03-06 12:19:59'),
(339, 8, 11, 16, 'fgh', 'new', '2023-03-06 12:19:59'),
(340, 7, 12, 21, 'Is a type of Laptop', 'new', '2023-03-09 14:53:51'),
(341, 7, 12, 28, 'Temporary,Permanent', 'new', '2023-03-09 14:53:51'),
(342, 7, 12, 1, 'The Tower', 'new', '2023-03-09 14:53:51'),
(343, 7, 12, 2, 'Mac OS', 'new', '2023-03-09 14:53:51'),
(344, 7, 12, 15, 'ALU', 'new', '2023-03-09 14:53:51'),
(345, 7, 12, 13, 'Command Processed Unit', 'new', '2023-03-09 14:53:51'),
(346, 7, 12, 3, 'Python', 'new', '2023-03-09 14:53:51'),
(347, 7, 12, 23, 'Spoken word', 'new', '2023-03-09 14:53:51'),
(348, 7, 12, 22, 'Laptop', 'new', '2023-03-09 14:53:51'),
(349, 7, 12, 24, 'Word processor', 'new', '2023-03-09 14:53:51'),
(350, 7, 12, 30, 'External memory chip', 'new', '2023-03-09 14:53:51'),
(351, 7, 12, 20, 'Laptop', 'new', '2023-03-09 14:53:51'),
(352, 7, 12, 12, 'spoken words', 'new', '2023-03-09 14:53:51'),
(353, 7, 12, 29, 'Primary and Secondary', 'new', '2023-03-09 14:53:51'),
(354, 7, 12, 14, 'True', 'new', '2023-03-09 14:53:51'),
(355, 7, 12, 6, 'monitor', 'new', '2023-03-09 14:53:51'),
(356, 7, 12, 9, 'Internet service providers', 'new', '2023-03-09 14:53:51'),
(357, 7, 12, 17, 'CPU', 'new', '2023-03-09 14:53:51'),
(358, 7, 12, 11, 'Cordless Mouse', 'new', '2023-03-09 14:53:51'),
(359, 7, 12, 8, 'A type of wireless network', 'new', '2023-03-09 14:53:51'),
(360, 7, 12, 4, 'Sets of instructions that tell the hardware what to do and how to do it', 'new', '2023-03-09 14:53:51'),
(361, 7, 12, 25, 'Laptop', 'new', '2023-03-09 14:53:51'),
(362, 7, 12, 19, 'RAM', 'new', '2023-03-09 14:53:51'),
(363, 7, 12, 26, 'Laptop', 'new', '2023-03-09 14:53:51'),
(364, 7, 12, 10, 'Gateway using intel', 'new', '2023-03-09 14:53:51'),
(365, 7, 12, 7, 'Providing power to the computer', 'new', '2023-03-09 14:53:51'),
(366, 7, 12, 18, 'Power botton', 'new', '2023-03-09 14:53:51'),
(367, 7, 12, 27, 'Laptop', 'new', '2023-03-09 14:53:51'),
(368, 7, 12, 5, 'Common Style Sheet', 'new', '2023-03-09 14:53:51'),
(369, 7, 12, 16, 'Keyboard', 'new', '2023-03-09 14:53:51'),
(370, 14, 12, 10, 'Graphical User Interface', 'new', '2023-03-10 10:35:39'),
(371, 14, 12, 25, 'Touch pad', 'new', '2023-03-10 10:35:39'),
(372, 14, 12, 29, 'ROM and RAM', 'new', '2023-03-10 10:35:39'),
(373, 14, 12, 24, 'Andriod', 'new', '2023-03-10 10:35:39'),
(374, 14, 12, 1, 'The Software of the Computer', 'new', '2023-03-10 10:35:39'),
(375, 14, 12, 26, 'Laptop', 'new', '2023-03-10 10:35:39'),
(376, 14, 12, 22, 'Word processor', 'new', '2023-03-10 10:35:39'),
(377, 14, 12, 7, 'Connecting to the Internet', 'new', '2023-03-10 10:35:39'),
(378, 14, 12, 20, 'E-reader', 'new', '2023-03-10 10:35:39'),
(379, 14, 12, 16, 'Mouse', 'new', '2023-03-10 10:35:39'),
(380, 14, 12, 18, 'VGA port', 'new', '2023-03-10 10:35:39'),
(381, 14, 12, 5, 'Keyboard', 'new', '2023-03-10 10:35:39'),
(382, 14, 12, 17, 'Pendrive', 'new', '2023-03-10 10:35:39'),
(383, 14, 12, 23, 'Tablet', 'new', '2023-03-10 10:35:39'),
(384, 14, 12, 28, 'Permanent,Temporary', 'new', '2023-03-10 10:35:39'),
(385, 14, 12, 11, 'Intensive Mouse', 'new', '2023-03-10 10:35:39'),
(386, 14, 12, 27, 'Hardware', 'new', '2023-03-10 10:35:39'),
(387, 14, 12, 3, 'Mac OS', 'new', '2023-03-10 10:35:39'),
(388, 14, 12, 14, 'True', 'new', '2023-03-10 10:35:39'),
(389, 14, 12, 6, 'motherboard', 'new', '2023-03-10 10:35:39'),
(390, 16, 12, 19, 'RAM', 'new', '2023-03-10 22:04:16'),
(391, 16, 12, 11, 'Intensive Mouse', 'new', '2023-03-10 22:04:16'),
(392, 16, 12, 26, 'Laptop', 'new', '2023-03-10 22:04:16'),
(393, 16, 12, 21, 'It is a type of software that allows you to perform specific tasks', 'new', '2023-03-10 22:04:16'),
(394, 16, 12, 15, 'RAM', 'new', '2023-03-10 22:04:16'),
(395, 16, 12, 4, 'Sets of instructions that tell the hardware what to do and how to do it', 'new', '2023-03-10 22:04:16'),
(396, 16, 12, 9, 'operating systems', 'new', '2023-03-10 22:04:16'),
(397, 16, 12, 5, 'Operating system', 'new', '2023-03-10 22:04:16'),
(398, 16, 12, 30, 'Both b and c', 'new', '2023-03-10 22:04:16'),
(399, 16, 12, 24, 'Andriod', 'new', '2023-03-10 22:04:16'),
(400, 16, 12, 8, 'A type of wireless network', 'new', '2023-03-10 22:04:16'),
(401, 16, 12, 22, 'Word processor', 'new', '2023-03-10 22:04:16'),
(402, 16, 12, 20, 'E-reader', 'new', '2023-03-10 22:04:16'),
(403, 16, 12, 13, 'Central Processing Unit', 'new', '2023-03-10 22:04:16'),
(404, 16, 12, 12, 'Violence', 'new', '2023-03-10 22:04:16'),
(405, 16, 12, 18, 'VGA port', 'new', '2023-03-10 22:04:16'),
(406, 16, 12, 27, 'Output devices', 'new', '2023-03-10 22:04:16'),
(407, 16, 12, 7, 'Connecting smartphones and other peripherals', 'new', '2023-03-10 22:04:16'),
(408, 16, 12, 25, 'Touch pad', 'new', '2023-03-10 22:04:16'),
(409, 16, 12, 29, 'ROM and RAM', 'new', '2023-03-10 22:04:16'),
(410, 2, 12, 18, 'Power botton', 'new', '2023-03-12 15:01:11'),
(411, 2, 12, 17, 'Pendrive', 'new', '2023-03-12 15:01:11'),
(412, 2, 12, 16, 'Mouse', 'new', '2023-03-12 15:01:11'),
(413, 2, 12, 14, 'True', 'new', '2023-03-12 15:01:11'),
(414, 2, 12, 2, 'Mac OS', 'new', '2023-03-12 15:01:11'),
(415, 2, 12, 9, 'Internet service providers', 'new', '2023-03-12 15:01:11'),
(416, 2, 12, 20, 'Laptop', 'new', '2023-03-12 15:01:11'),
(417, 2, 12, 25, 'Laptop', 'new', '2023-03-12 15:01:11'),
(418, 2, 12, 26, 'Laptop', 'new', '2023-03-12 15:01:11'),
(419, 2, 12, 30, 'External memory chip', 'new', '2023-03-12 15:01:11'),
(420, 2, 12, 1, 'The Tower', 'new', '2023-03-12 15:01:11'),
(421, 2, 12, 21, 'Is a type of Laptop', 'new', '2023-03-12 15:01:11'),
(422, 2, 12, 29, 'Primary and Secondary', 'new', '2023-03-12 15:01:11'),
(423, 2, 12, 22, 'Laptop', 'new', '2023-03-12 15:01:11'),
(424, 2, 12, 8, 'A type of wireless network', 'new', '2023-03-12 15:01:11'),
(425, 2, 12, 10, 'Graphical User Interface', 'new', '2023-03-12 15:01:11'),
(426, 2, 12, 15, 'ALU', 'new', '2023-03-12 15:01:11'),
(427, 2, 12, 24, 'Word processor', 'new', '2023-03-12 15:01:11'),
(428, 2, 12, 5, 'Microsoft windows', 'new', '2023-03-12 15:01:11'),
(429, 2, 12, 7, 'Connecting smartphones and other peripherals', 'new', '2023-03-12 15:01:11'),
(430, 2, 12, 6, 'Bluetooth card', 'new', '2023-03-12 15:01:11'),
(431, 2, 12, 13, 'Central Processing Unit', 'new', '2023-03-12 15:01:11'),
(432, 2, 12, 27, 'Hardware', 'new', '2023-03-12 15:01:11'),
(433, 2, 12, 19, 'Mouse', 'new', '2023-03-12 15:01:11'),
(434, 2, 12, 4, 'Clothing designed to be worn by computer users', 'new', '2023-03-12 15:01:11'),
(435, 2, 12, 11, 'Scroll Mouse', 'new', '2023-03-12 15:01:11'),
(436, 2, 12, 12, 'Hardwork', 'new', '2023-03-12 15:01:11'),
(437, 2, 12, 3, 'Mac OS', 'new', '2023-03-12 15:01:11'),
(438, 2, 12, 28, 'Temporary,Permanent', 'new', '2023-03-12 15:01:11'),
(439, 2, 12, 23, 'Tablet', 'new', '2023-03-12 15:01:11'),
(440, 5, 12, 5, 'Common Style Sheet', 'new', '2023-03-12 15:06:43'),
(441, 5, 12, 21, 'It is a type of software that allows you to perform specific tasks', 'new', '2023-03-12 15:06:43'),
(442, 5, 12, 12, 'spoken words', 'new', '2023-03-12 15:06:43'),
(443, 5, 12, 6, 'monitor', 'new', '2023-03-12 15:06:43'),
(444, 5, 12, 1, 'The Tower', 'new', '2023-03-12 15:06:43'),
(445, 5, 12, 19, 'RAM', 'new', '2023-03-12 15:06:43'),
(446, 5, 12, 15, 'ALU', 'new', '2023-03-12 15:06:44'),
(447, 5, 12, 26, 'Laptop', 'new', '2023-03-12 15:06:44'),
(448, 5, 12, 28, 'Temporary,Permanent', 'new', '2023-03-12 15:06:44'),
(449, 5, 12, 18, 'Power botton', 'new', '2023-03-12 15:06:44'),
(450, 5, 12, 25, 'Laptop', 'new', '2023-03-12 15:06:44'),
(451, 5, 12, 17, 'CPU', 'new', '2023-03-12 15:06:44'),
(452, 5, 12, 7, 'Providing power to the computer', 'new', '2023-03-12 15:06:44'),
(453, 5, 12, 2, 'Mac OS', 'new', '2023-03-12 15:06:44'),
(454, 5, 12, 16, 'Keyboard', 'new', '2023-03-12 15:06:44'),
(455, 5, 12, 11, 'Cordless Mouse', 'new', '2023-03-12 15:06:44'),
(456, 5, 12, 22, 'Laptop', 'new', '2023-03-12 15:06:44'),
(457, 5, 12, 9, 'Internet service providers', 'new', '2023-03-12 15:06:44'),
(458, 5, 12, 4, 'Sets of instructions that tell the hardware what to do and how to do it', 'new', '2023-03-12 15:06:44'),
(459, 5, 12, 14, 'True', 'new', '2023-03-12 15:06:44'),
(460, 5, 12, 23, 'Spoken word', 'new', '2023-03-12 15:06:44'),
(461, 5, 12, 27, 'Laptop', 'new', '2023-03-12 15:06:44'),
(462, 5, 12, 8, 'A type of wireless network', 'new', '2023-03-12 15:06:44'),
(463, 5, 12, 13, 'Command Processed Unit', 'new', '2023-03-12 15:06:44'),
(464, 5, 12, 3, 'Python', 'new', '2023-03-12 15:06:44'),
(465, 5, 12, 20, 'Laptop', 'new', '2023-03-12 15:06:44'),
(466, 5, 12, 30, 'External memory chip', 'new', '2023-03-12 15:06:44'),
(467, 5, 12, 10, 'Gateway using intel', 'new', '2023-03-12 15:06:44'),
(468, 5, 12, 24, 'Word processor', 'new', '2023-03-12 15:06:44'),
(469, 5, 12, 29, 'Primary and Secondary', 'new', '2023-03-12 15:06:44'),
(470, 1, 12, 2, 'Mac OS', 'new', '2023-03-13 15:04:33'),
(471, 1, 12, 15, 'CPU', 'new', '2023-03-13 15:04:33'),
(472, 1, 12, 5, 'Keyboard', 'new', '2023-03-13 15:04:33'),
(473, 1, 12, 16, 'Joystick', 'new', '2023-03-13 15:04:33'),
(474, 1, 12, 27, 'Laptop', 'new', '2023-03-13 15:04:33'),
(475, 1, 12, 20, 'E-reader', 'new', '2023-03-13 15:04:33'),
(476, 1, 12, 18, 'USB ports', 'new', '2023-03-13 15:04:33'),
(477, 1, 12, 17, 'CPU', 'new', '2023-03-13 15:04:33'),
(478, 1, 12, 25, 'Touch pad', 'new', '2023-03-13 15:04:33'),
(479, 1, 12, 3, 'Command prompt OS', 'new', '2023-03-13 15:04:33'),
(480, 1, 12, 19, 'RAM', 'new', '2023-03-13 15:04:33'),
(481, 1, 12, 7, 'Connecting to the Internet', 'new', '2023-03-13 15:04:33'),
(482, 1, 12, 13, 'Control Processed Unit', 'new', '2023-03-13 15:04:33'),
(483, 1, 12, 6, 'monitor', 'new', '2023-03-13 15:04:33'),
(484, 1, 12, 26, 'Headphones', 'new', '2023-03-13 15:04:33'),
(485, 1, 12, 8, 'An extra-wide computer case used by servers', 'new', '2023-03-13 15:04:33'),
(486, 1, 12, 4, 'Any part of the computer that has a physical structure', 'new', '2023-03-13 15:04:33'),
(487, 1, 12, 11, 'Scroll Mouse', 'new', '2023-03-13 15:04:33'),
(488, 1, 12, 28, 'Slow,Fast', 'new', '2023-03-13 15:04:33'),
(489, 1, 12, 21, 'is an E-reader device', 'new', '2023-03-13 15:04:33'),
(490, 1, 12, 14, 'Maybe', 'new', '2023-03-13 15:04:33'),
(491, 1, 12, 9, 'Internet service providers', 'new', '2023-03-13 15:04:33'),
(492, 1, 12, 30, 'Both b and c', 'new', '2023-03-13 15:04:33'),
(493, 1, 12, 10, 'Global user index', 'new', '2023-03-13 15:04:33'),
(494, 1, 12, 22, 'Tablet', 'new', '2023-03-13 15:04:33'),
(495, 1, 12, 23, 'Spoken word', 'new', '2023-03-13 15:04:33'),
(496, 1, 12, 12, 'Good will', 'new', '2023-03-13 15:04:33'),
(497, 1, 12, 1, 'Hyper Text Multiple Language', 'new', '2023-03-13 15:04:33'),
(498, 1, 12, 29, 'Primary and Secondary', 'new', '2023-03-13 15:04:33'),
(499, 1, 12, 24, 'Andriod', 'new', '2023-03-13 15:04:33'),
(500, 4, 12, 4, 'Sets of instructions that tell the hardware what to do and how to do it', 'new', '2023-03-13 23:15:48'),
(501, 4, 12, 26, 'Printer', 'new', '2023-03-13 23:15:48'),
(502, 4, 12, 23, 'Spoken word', 'new', '2023-03-13 23:15:48'),
(503, 4, 12, 21, 'Is a type of Laptop', 'new', '2023-03-13 23:15:48'),
(504, 4, 12, 28, 'Permanent,Temporary', 'new', '2023-03-13 23:15:48'),
(505, 4, 12, 9, 'Internet service providers', 'new', '2023-03-13 23:15:48'),
(506, 4, 12, 8, 'A type of wireless network', 'new', '2023-03-13 23:15:48'),
(507, 4, 12, 11, 'Cordless Mouse', 'new', '2023-03-13 23:15:48'),
(508, 4, 12, 1, 'The Tower', 'new', '2023-03-13 23:15:48'),
(509, 4, 12, 24, 'Word processor', 'new', '2023-03-13 23:15:48'),
(510, 4, 12, 7, 'Providing power to the computer', 'new', '2023-03-13 23:15:48'),
(511, 4, 12, 12, 'spoken words', 'new', '2023-03-13 23:15:48'),
(512, 4, 12, 2, 'Mac OS', 'new', '2023-03-13 23:15:48'),
(513, 4, 12, 20, 'Laptop', 'new', '2023-03-13 23:15:48'),
(514, 4, 12, 27, 'Laptop', 'new', '2023-03-13 23:15:48'),
(515, 4, 12, 29, 'Primary and Secondary', 'new', '2023-03-13 23:15:48'),
(516, 4, 12, 6, 'monitor', 'new', '2023-03-13 23:15:48'),
(517, 4, 12, 16, 'Keyboard', 'new', '2023-03-13 23:15:48'),
(518, 4, 12, 13, 'Command Processed Unit', 'new', '2023-03-13 23:15:48'),
(519, 4, 12, 19, 'RAM', 'new', '2023-03-13 23:15:48'),
(520, 4, 12, 22, 'Laptop', 'new', '2023-03-13 23:15:48'),
(521, 4, 12, 10, 'Gateway using intel', 'new', '2023-03-13 23:15:48'),
(522, 4, 12, 3, 'Python', 'new', '2023-03-13 23:15:48'),
(523, 4, 12, 14, 'True', 'new', '2023-03-13 23:15:48'),
(524, 4, 12, 15, 'CPU', 'new', '2023-03-13 23:15:48'),
(525, 4, 12, 25, 'Laptop', 'new', '2023-03-13 23:15:48'),
(526, 4, 12, 30, 'Primary memory chip', 'new', '2023-03-13 23:15:48'),
(527, 4, 12, 18, 'Power botton', 'new', '2023-03-13 23:15:48'),
(528, 4, 12, 5, 'Common Style Sheet', 'new', '2023-03-13 23:15:48'),
(529, 4, 12, 17, 'CPU', 'new', '2023-03-13 23:15:48'),
(530, 34, 11, 150, 'TRUE', 'new', '2023-03-20 15:05:15'),
(531, 34, 11, 65, 'Color Value', 'new', '2023-03-20 15:05:15'),
(532, 34, 11, 146, 'TRUE', 'new', '2023-03-20 15:05:15'),
(533, 34, 11, 128, 'Processor', 'new', '2023-03-20 15:05:15'),
(534, 34, 11, 127, 'server', 'new', '2023-03-20 15:05:15'),
(535, 34, 11, 142, 'software', 'new', '2023-03-20 15:05:15'),
(536, 34, 11, 57, 'input type=', 'new', '2023-03-20 15:05:15'),
(537, 34, 11, 66, 'video', 'new', '2023-03-20 15:05:15'),
(538, 34, 11, 129, 'hole', 'new', '2023-03-20 15:05:15'),
(539, 34, 11, 38, '!DOCTYPE', 'new', '2023-03-20 15:05:15'),
(540, 34, 11, 126, 'tablet', 'new', '2023-03-20 15:05:15'),
(541, 34, 11, 37, 'img', 'new', '2023-03-20 15:05:15'),
(542, 34, 11, 52, 'ul', 'new', '2023-03-20 15:05:15'),
(543, 34, 11, 160, 'electronic', 'new', '2023-03-20 15:05:15'),
(544, 34, 11, 61, 'FALSE', 'new', '2023-03-20 15:05:15'),
(545, 34, 11, 63, 'src', 'new', '2023-03-20 15:05:15'),
(546, 34, 11, 41, 'Hyper Text Markup Language', 'new', '2023-03-20 15:05:15'),
(547, 34, 11, 54, 'input type=', 'new', '2023-03-20 15:05:15'),
(548, 34, 11, 153, 'hard drive', 'new', '2023-03-20 15:05:15'),
(549, 34, 11, 39, 'datalist', 'new', '2023-03-20 15:05:15'),
(550, 34, 11, 151, 'Fast', 'new', '2023-03-20 15:05:15'),
(551, 34, 11, 123, 'monitor', 'new', '2023-03-20 15:05:16'),
(552, 34, 11, 135, 'move', 'new', '2023-03-20 15:05:16'),
(553, 34, 11, 33, 'strong', 'new', '2023-03-20 15:05:16'),
(554, 34, 11, 34, 'li', 'new', '2023-03-20 15:05:16'),
(555, 34, 11, 130, 'engineer', 'new', '2023-03-20 15:05:16'),
(556, 34, 11, 47, 'a name=', 'new', '2023-03-20 15:05:16'),
(557, 34, 11, 138, 'hardware.', 'new', '2023-03-20 15:05:16'),
(558, 34, 11, 60, 'TRUE', 'new', '2023-03-20 15:05:16'),
(559, 34, 11, 46, 'itallic', 'new', '2023-03-20 15:05:16'),
(560, 34, 11, 152, 'MB/GB', 'new', '2023-03-20 15:05:16'),
(561, 34, 11, 144, 'TRUE', 'new', '2023-03-20 15:05:16'),
(562, 34, 11, 67, 'audio', 'new', '2023-03-20 15:05:16'),
(563, 34, 11, 139, 'video card', 'new', '2023-03-20 15:05:16'),
(564, 34, 11, 58, 'image src=', 'new', '2023-03-20 15:05:16'),
(565, 34, 11, 44, 'body style=', 'new', '2023-03-20 15:05:16'),
(566, 34, 11, 157, 'colour', 'new', '2023-03-20 15:05:16'),
(567, 34, 11, 55, 'input type=', 'new', '2023-03-20 15:05:16'),
(568, 34, 11, 133, 'space', 'new', '2023-03-20 15:05:16'),
(569, 34, 11, 134, 'connections', 'new', '2023-03-20 15:05:16'),
(570, 34, 11, 45, 'strong', 'new', '2023-03-20 15:05:16'),
(571, 34, 11, 131, 'mouse', 'new', '2023-03-20 15:05:16'),
(572, 34, 11, 53, 'dl', 'new', '2023-03-20 15:05:16'),
(573, 34, 11, 122, 'Hardware', 'new', '2023-03-20 15:05:16'),
(574, 34, 11, 141, 'TRUE', 'new', '2023-03-20 15:05:16'),
(575, 34, 11, 132, 'physical', 'new', '2023-03-20 15:05:16'),
(576, 34, 11, 49, 'a herf=', 'new', '2023-03-20 15:05:16'),
(577, 34, 11, 69, 'slider', 'new', '2023-03-20 15:05:16'),
(578, 34, 11, 56, 'input type=', 'new', '2023-03-20 15:05:16'),
(579, 34, 11, 42, 'h1', 'new', '2023-03-20 15:05:16'),
(580, 34, 11, 64, 'footer', 'new', '2023-03-20 15:05:16'),
(581, 34, 11, 159, 'move', 'new', '2023-03-20 15:05:16'),
(582, 34, 11, 143, 'Wi-fi', 'new', '2023-03-20 15:05:16'),
(583, 34, 11, 62, 'head', 'new', '2023-03-20 15:05:16'),
(584, 34, 11, 124, 'desktop', 'new', '2023-03-20 15:05:16'),
(585, 34, 11, 48, '<', 'new', '2023-03-20 15:05:16'),
(586, 34, 11, 32, 'img', 'new', '2023-03-20 15:05:16'),
(587, 34, 11, 161, 'modern', 'new', '2023-03-20 15:05:16'),
(588, 34, 11, 68, 'input', 'new', '2023-03-20 15:05:16'),
(589, 34, 11, 40, 'Appearance', 'new', '2023-03-20 15:05:16'),
(590, 34, 11, 35, 'strong', 'new', '2023-03-20 15:05:16'),
(591, 34, 11, 51, 'FALSE', 'new', '2023-03-20 15:05:16'),
(592, 34, 11, 147, 'TRUE', 'new', '2023-03-20 15:05:16'),
(593, 34, 11, 158, 'touch pad', 'new', '2023-03-20 15:05:16'),
(594, 34, 11, 31, 'td', 'new', '2023-03-20 15:05:16'),
(595, 34, 11, 156, 'copy', 'new', '2023-03-20 15:05:16'),
(596, 34, 11, 137, 'TRUE', 'new', '2023-03-20 15:05:16'),
(597, 34, 11, 145, 'FALSE', 'new', '2023-03-20 15:05:16'),
(598, 34, 11, 148, 'hearing', 'new', '2023-03-20 15:05:16'),
(599, 34, 11, 125, 'laptops', 'new', '2023-03-20 15:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(63, 1, 12, 'used'),
(64, 4, 12, 'used'),
(65, 34, 11, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(1, 12, 'Information Travels Between Components On The Mother-Board Through?', 'The Tower', 'The Software of the Computer', 'Hyper Text Multiple Language', 'Hyper Tool Multi Language', 'The Software of the Computer', 'active'),
(2, 12, 'Which of these are mobile Operating system?', 'Mac OS', 'Linux', 'Microsoft Window', 'iOS', 'iOS', 'active'),
(3, 12, 'Which of this is a type of operating system?', 'Python', 'Mac OS', 'CMD OS', 'Command prompt OS', 'Mac OS', 'active'),
(4, 12, 'What is software?', 'Sets of instructions that tell the hardware what to do and how to do it', 'Clothing designed to be worn by computer users', 'Flexible parts of a computer case', 'Any part of the computer that has a physical structure', 'Sets of instructions that tell the hardware what to do and how to do it', 'active'),
(5, 12, 'which of the following is a type of computer hardware?', 'Common Style Sheet', 'Microsoft windows', 'Operating system', 'Keyboard', 'Keyboard', 'active'),
(6, 12, 'The computer’s main circuit board is called a ________.', 'monitor', 'Bluetooth card', 'hard drive', 'motherboard', 'motherboard', 'active'),
(7, 12, 'What is an Ethernet port used for?', 'Providing power to the computer', 'Connecting smartphones and other peripherals', 'Creating new user accounts', 'Connecting to the Internet', 'Connecting to the Internet', 'active'),
(8, 12, 'What is Wi-Fi?', 'A type of wireless network', 'An extra-wide computer case used by servers', 'A type of sound card', 'A type of software that scans for viruses', 'A type of wireless network', 'active'),
(9, 12, 'Windows, macOS, and Linux are examples of _______', 'Internet service providers', 'operating systems', 'web browsers', 'mobile devices', 'operating systems', 'active'),
(10, 12, 'What does GUI stand for?', 'Gateway using intel', 'Graphical User Interface', 'Global user index', 'Good used iphone', 'Graphical User Interface', 'active'),
(11, 12, 'This is all types of Mouse except', 'Cordless Mouse', 'Scroll Mouse', 'Intensive Mouse', 'Optical Mouse', 'Intensive Mouse', 'active'),
(12, 12, 'Theses are all values of omoluabi except', 'spoken words', 'Hardwork', 'Violence', 'Good will', 'Violence', 'active'),
(13, 12, 'CPU stand for........', 'Command Processed Unit', 'Central Processing Unit', 'Control Processing Unit', 'Control Processed Unit', 'Central Processing Unit', 'active'),
(14, 12, 'You cannot get a computer virus if you install antivirus software.', 'True', 'False', 'Maybe', 'Non of the above', 'False', 'active'),
(15, 12, 'The brain of the computer system is called.....', 'ALU', 'CPU', 'RAM', 'Hard disk', 'CPU', 'active'),
(16, 12, 'Which device is used as the standard pointing device in a Graphical user environment?', 'Keyboard', 'Mouse', 'Joystick', 'Trackball', 'Mouse', 'active'),
(17, 12, 'Which of the following is a valid storage type?', 'CPU', 'Pendrive', 'Keyboard', 'Trackball', 'Pendrive', 'active'),
(18, 12, 'which of these port cannot be found on the front of a computer case?', 'Power botton', 'CD drive', 'USB ports', 'VGA port', 'VGA port', 'active'),
(19, 12, 'Which of these are found inside the computer?', 'RAM', 'Mouse', 'Keyboard', 'Speaker', 'RAM', 'active'),
(20, 12, 'What of the following is the odd one out?', 'Laptop', 'Tablet', 'E-reader', 'Smartphones', 'Laptop', 'active'),
(21, 12, 'What is an application?', 'Is a type of Laptop', 'It is a type of software that allows you to perform specific tasks', 'is an E-reader device', 'Is used in Smartphones for specific task', 'It is a type of software that allows you to perform specific tasks', 'active'),
(22, 12, 'Which of this is an example of desktop application?', 'Laptop', 'Tablet', 'Word processor', 'Smartphones', 'Word processor', 'active'),
(23, 12, 'What of the following is the odd one out?', 'Spoken word', 'Tablet', 'Goodwill', 'Honesty', 'Tablet', 'active'),
(24, 12, 'The following are desktop application except?', 'Word processor', 'Google Chrome', 'Microsoft office', 'Andriod', 'Andriod', 'active'),
(25, 12, 'A ----- is a touch-sensitive ad that lets you control the pointer', 'Laptop', 'Touch pad', 'E-reader', 'document', 'Touch pad', 'active'),
(26, 12, 'Which of these are not peripherals?', 'Laptop', 'Printer', 'Headphones', 'Speakers', 'Laptop', 'active'),
(27, 12, 'Printers, Headphones, Speakers are considered as -----', 'Laptop', 'Hardware', 'Input devices', 'Output devices', 'Output devices', 'active'),
(28, 12, 'The difference between memory and storage is that memory is _____ and storage is __', 'Temporary,Permanent', 'Permanent,Temporary', 'Slow,Fast', 'All of the above', 'Temporary,Permanent', 'active'),
(29, 12, 'The two kinds of main memory are:', 'Primary and Secondary', 'Random and Sequential', 'ROM and RAM', 'All of the above', 'ROM and RAM', 'active'),
(30, 12, 'The two major types of computer chips are', 'External memory chip', 'Primary memory chip', 'Microprocessor chip', 'Both b and c', 'Both b and c', 'active'),
(31, 11, 'What tag is used to define a standard cell inside a table?', 'button', 'footer', 'td', 'h1 to h6', 'td', 'active'),
(32, 11, 'What tag is used to define an image – or add an image – to an HTML page?', 'img', 'meta', 'table', 'div', 'img', 'active'),
(33, 11, 'What tag is used to specify a section of text that has been quoted from another source?', 'blockquote', 'em', 'strong', 'a', 'blockquote', 'active'),
(34, 11, 'What tag is used to underline a word or line of text?', 'li', 'u', 'ul', 's', 'u', 'active'),
(35, 11, 'What tag is used to define a hyperlink, or link to another page?', 'em', 'blockquote', 'a', 'strong', 'a', 'active'),
(36, 11, 'What tag is used to specify a line of text that is no longer correct (it used to be the strike tag, but that no longer works in HTML5)?', 'ul', 'li', 'u', 's', 's', 'active'),
(37, 11, 'What tag defines a division or the beginning/end of an individual section in an HTML document?', 'div', 'meta', 'img', 'table', 'div', 'active'),
(38, 11, 'What tag is used to define a container for an external app or plug-in?', 'embed', 'code', 'caption', '!DOCTYPE', 'embed', 'active'),
(39, 11, 'What tag is used to define an interactive field where users can enter data?', 'datalist', 'input', 'enterpoint', 'dialog', 'input', 'active'),
(40, 11, 'Css can be used to greatly improve the ____ of an HTML form.', 'Appearance', 'Colors', 'Layout', 'Performance', 'Appearance', 'active'),
(41, 11, 'What does HTML stand for?', 'Hyper Text Markup Language', 'Hyperlinks and Test Markup Language', 'Home Tool Markup Language', 'Houses Tool Makeup Language', 'Hyper Text Markup Language', 'active'),
(42, 11, 'Choose the correct HTML element for the largest heading:', 'head', 'heading', 'h1', 'h6', 'h1', 'active'),
(43, 11, 'What is the correct HTML element for inserting a line break?', 'br', 'break', 'b', 'lb', 'br', 'active'),
(44, 11, 'What is the correct HTML for adding a background color?', 'body bg=\"yellow\"', 'background>yellow</background', 'body style=\"background-color:yellow;\"', 'background; yellow', 'body style=\"background-color:yellow;\"', 'active'),
(45, 11, 'Choose the correct HTML element to define important text', 'important', 'b', 'i', 'strong', 'strong', 'active'),
(46, 11, 'Choose the correct HTML element to define emphasized text', 'i', 'em', 'itallic', 'e', 'em', 'active'),
(47, 11, 'What is the correct HTML for creating a hyperlink?', 'a>http://www.w3school.com</a', 'a href=\"http://www.w3schools.com\">W3Schools</a', 'a url=\"http://www.w3schools.com\">W3Schools</a', 'a name=\"http://www.w3schools.com\">W3Schools</a', 'a name=\"http://www.w3schools.com\">W3Schools</a', 'active'),
(48, 11, 'Which character is used to indicate an end tag?', '<', '^', '/', '*', '/', 'active'),
(49, 11, 'How can you open a link in a new tab/browser window?', 'a herf=\"url\" target=\"new\"', 'a herf=\"url\" target=\"_blank\"', 'a herf=\"url\" new', 'a herf=new', 'a herf=\"url\" target=\"_blank\"', 'active'),
(50, 11, 'Which of these elements are all \"table\" elements?', 'table tr td', 'table head foot', 'table tr tt', 'thead body tr', 'table tr td', 'active'),
(51, 11, 'Inline elements are normally displayed without starting a new line.', 'FALSE', 'TRUE', 'NO IDEA', 'NON OF THE ABOVE', 'TRUE', 'active'),
(52, 11, 'How can you make a numbered list?', 'dl', 'ul', 'li', 'ol', 'ol', 'active'),
(53, 11, 'How can you make a bulleted list?', 'ol', 'ul', 'dl', 'list', 'ul', 'active'),
(54, 11, 'What is the correct HTML for making a checkbox?', 'input type=\"checkbox\"', 'checkbox', 'input type=\"check\"', 'check', 'input type=\"checkbox\"', 'active'),
(55, 11, 'What is the correct HTML for making a text input field?', 'input type=\"text\"', 'input type=\"textfield\"', 'textinput type=\"text\"', 'textfield', 'input type=\"text\"', 'active'),
(56, 11, 'What is the correct HTML for making a drop-down list?', 'input type=\"dropdown\"', 'select', 'list', 'input type=\"list\"', 'select', 'active'),
(57, 11, 'What is the correct HTML for making a text area?', 'textarea', 'input type=\"textbox\"', 'input type=\"textarea\"', 'textbox', 'textarea', 'active'),
(58, 11, 'What is the correct HTML for inserting an image?', 'img alt=\"MyImage\">image.gif</img', 'image src=\"image.gif\" alt=\"MyImage\"', 'img href=\"image.gif\" alt=\"MyImage\"', 'img src=\"image.gif\" alt=\"MyImage\"', 'img src=\"image.gif\" alt=\"MyImage\"', 'active'),
(59, 11, 'What is the correct HTML for inserting a background image?', 'body bg=\"background.gif\"', 'body style=\"background-image:url(background.gif)\"', 'background img=\"background.gif\"', 'body img=background', 'body style=\"background-image:url(background.gif)\"', 'active'),
(60, 11, 'HTML comments start with <!-- and end with -->', 'NONE OF THE ABOVE', 'FALSE', 'TRUE', 'NO IDEA', 'TRUE', 'active'),
(61, 11, 'Block elements are normally displayed without starting a new line.', 'TRUE', 'NO IDEA', 'FALSE', 'NONE OF THE ABOVE', 'TRUE', 'active'),
(62, 11, 'Which HTML element defines the title of a document?', 'meta', 'head', 'title', 'body', 'title', 'active'),
(63, 11, 'Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?', 'title', 'src', 'longdesc', 'alt', 'alt', 'active'),
(64, 11, 'Which HTML element is used to specify a footer for a document or section?', 'footer', 'section', 'bottom', 'down', 'footer', 'active'),
(65, 11, 'What is the value called that defines colors such as the following: #FFFF00?', 'Decimal Value', 'Hex Value', 'RGB Value', 'Color Value', 'Hex Value', 'active'),
(66, 11, 'What is the correct HTML element for playing video files?', 'movie', 'media', 'video', 'film', 'video', 'active'),
(67, 11, 'What is the correct HTML element for playing audio files?', 'sound', 'mp3', 'audio', 'music', 'audio', 'active'),
(68, 11, 'In HTML, which attribute is used to specify that an input field must be field', 'required', 'input', 'placeholder', 'textarea', 'required', 'active'),
(69, 11, 'Which input type defines a slider control?', 'range', 'search', 'controls', 'slider', 'range', 'active'),
(70, 11, 'Which HTML element defines the navigation links?', 'nav', 'navigation', 'navigate', 'control', 'nav', 'active'),
(71, 12, 'The basic parts of a desktop computer are the____', 'monitor, keyboard', 'silicon,heat', 'computer,laser', 'components,chip', 'monitor, keyboard', 'active'),
(72, 12, 'The computer case is made of___', 'iron and rod', 'metal and wires', 'metal and plastic', 'wood and cables', 'metal and plastic', 'active'),
(73, 12, 'The monitor is said to work with a____', 'text card', 'video card', 'LCD card', 'display card', 'video card', 'active'),
(74, 12, '_____monitors use CRT(Cathode Ray Tube)displays', 'modern', 'newer', 'older', 'none of the above', 'older', 'active'),
(75, 12, 'The keyboard is one of the main ways to___with a computer', 'discuss', 'operates', 'debates', 'communicate', 'communicate', 'active'),
(76, 12, '____is said to be a pointing device', 'keyboard', 'mouse', 'monitor', 'devices', 'mouse', 'active'),
(77, 12, 'A touch pad is also called a track pad?', 'True', 'False', 'No Idea', 'None of The Above', 'True', 'active'),
(78, 12, 'Touch pads are common on____computer', 'laptop', 'telephone', 'desktop', 'tall tower', 'laptop', 'active'),
(79, 12, 'A computer has the ability to perform one of the following', 'ability to store', 'ability to know', 'ability to operate', 'ability to disobey', 'ability to store', 'active'),
(80, 12, 'You can send an e-mail, edit or create presentation and even videos on a computer?', 'True', 'False', 'No Idea', 'None of The Above', 'True', 'active'),
(81, 12, '_____is any part of your computer that has a physical structure?', 'Malware', 'Software', 'Hardware', 'none of the Above', 'Hardware', 'active'),
(82, 12, '____is any set of instructions that tells the hardware what to do and how to do it?', 'computer', 'monitor', 'software', 'keyboard', 'software', 'active'),
(83, 12, '____computers are designed to be placed on a desk', 'stool', 'desk', 'desktop', 'normal', 'desktop', 'active'),
(84, 12, '___are battery-powered computers that are more portable', 'desktop', 'laptops', 'tab', 'android', 'laptops', 'active'),
(85, 12, '_____computers are hand held computers that are even more portable than laptops', 'tablet', 'laptop', 'desktop', 'hardware', 'tablet', 'active'),
(86, 12, '____computer serves up information to other computers on a network', 'server', 'internet', 'web', 'network', 'server', 'active'),
(87, 12, 'What is the full meaning of Pc?__________', 'Private computer', 'Personal computer', 'Public computer', 'Processor', 'Personal computer', 'active'),
(88, 12, 'firewire is an example of a_____', 'button', 'ports', 'hole', 'thunderbolt', 'ports', 'active'),
(89, 12, 'If your computer has ports you don\'t recognize, you can consult your', 'book', 'handout', 'manual', 'engineer', 'manual', 'active'),
(90, 12, 'The most basic computer setup usually includes the computer case, monitor, keyboard and_____', 'screen', 'mouse', 'expansion card', 'memory card', 'mouse', 'active'),
(91, 12, 'A scanner allows you to copy_____image or documents and save it to your computer as a digital computer readable image', 'structured', 'physical', 'blur', 'motion', 'physical', 'active'),
(92, 12, 'You can plug many different types of devices into extra______on your computer', 'hole', 'space', 'buttons', 'ports', 'ports', 'active'),
(93, 12, 'The back of the computer has_____ports that are made to fit specific devices', 'connect', 'operates', 'connections', 'electric', 'connections', 'active'),
(94, 12, 'Many people find mouse alternatives easier to ______', 'use', 'move', 'touch', 'track', 'use', 'active'),
(95, 12, 'Are there many types of keyboard?', 'Yes', 'No', 'I don’t Know', 'Non Of the Above', 'Yes', 'active'),
(96, 12, 'Computers come in different shapes,sides and designs', 'TRUE', 'FALSE', 'I don’t know', 'FALSE', 'TRUE', 'active'),
(97, 12, '_____also includes all of the computer\'s internal parts', 'software', 'game ware', 'motion ware', 'hardware', 'hardware', 'active'),
(98, 12, 'If you like playing graphics-intensive games, you can add a faster_____to one of the expansion slots', 'video card', 'game card', 'audio card', 'film', 'video card', 'active'),
(99, 12, 'Before touching the inside of the computer, you should touch a______metal object', 'smooth', 'nice', 'Hot', 'Grounded', 'Grounded', 'active'),
(100, 12, 'Web browsers is the tool you use to access the internet', 'TRUE', 'FALSE', 'I don’t Know', 'None Of the Above', 'TRUE', 'active'),
(101, 12, 'App is a common term for an____(a)software (b) hardware', 'software', 'hardware', 'application', 'processor', 'application', 'active'),
(102, 12, 'Smart phones can connect to the internet over____ or cellular network', 'Ki-fi', 'Wi-fi', 'Internet', 'Sim', 'Wi-fi', 'active'),
(103, 12, 'A mobile device is a general term for any handheld computer', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(104, 12, 'You can basically turns your laptop into a desktop computer', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(105, 12, 'A laptop can be placed on your lap', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(106, 12, 'A laptop has an all-in-one design, with a buit-in monitor, keyboard,touchpad which replaces the mouse, and speakers', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(107, 12, '.Sound card can also be called an____card.', 'hearing', 'Music', 'listening', 'audio', 'audio', 'active'),
(108, 12, 'The full meaning of GPU is (Graphics Processing Unity).', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(109, 12, 'The full meaning of PCI is (Peripheral Component interconnect)cards', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(110, 12, 'If you don\'t have any RAM, your computer maybe ___', 'Fast', 'outstanding', 'Slow', 'Run', 'Slow', 'active'),
(111, 12, 'RAM is measured in____or____', 'ZB/YB', 'MB/GB', 'MB/TB', 'ZB/GB', 'MB/GB', 'active'),
(112, 12, 'When you save a file,the data is written to the____ which acts as long term', 'optical', 'motor drive', 'Soft drive', 'hard drive', 'hard drive', 'active'),
(113, 12, 'The short-term memory disappears when the computer is turned____', 'on', 'off', 'on/off', 'in', 'off', 'active'),
(114, 12, 'Apart from joysticks, what can you also use to control your games?', 'Keyboard', 'Monitor', 'pendrive', 'system unit', 'Keyboard', 'active'),
(115, 12, 'All in-one printers,can also scan and_____ documents', 'Read', 'snap', 'copy', 'write', 'copy', 'active'),
(116, 12, 'Some ports maybe_____coded to help you determine which port is used with a particular device', 'pink', 'red', 'yellow', 'colour', 'colour', 'active'),
(117, 12, '____let you control the pointer by making a drawing motion with your finger', 'move', 'buttons', 'ports', 'touch pad', 'touch pad', 'active'),
(118, 12, 'A trackball has a ball that can____freely', 'move', 'rotate', 'speed', 'run', 'rotate', 'active'),
(119, 12, 'The optical mouses ueses an_____eye to detect movement', 'circuit', 'iron', 'electricity', 'electronic', 'electronic', 'active'),
(120, 12, '____ monitors have LED(light emmitting diode)displays', 'older', 'modern', 'developed', 'newer', 'newer', 'active'),
(121, 12, '_____uses a rolling ball to dectect movement', 'optical', 'mechanical', 'cord', 'fireewire', 'mechanical', 'active'),
(122, 11, '_____is any part of your computer that has a physical structure?', 'Malware', 'Software', 'Hardware', 'none of the Above', 'Hardware', 'active'),
(123, 11, '____is any set of instructions that tells the hardware what to do and how to do it?', 'computer', 'monitor', 'software', 'keyboard', 'software', 'active'),
(124, 11, '____computers are designed to be placed on a desk', 'stool', 'desk', 'desktop', 'normal', 'desktop', 'active'),
(125, 11, '___are battery-powered computers that are more portable', 'desktop', 'laptops', 'tab', 'android', 'laptops', 'active'),
(126, 11, '_____computers are hand held computers that are even more portable than laptops', 'tablet', 'laptop', 'desktop', 'hardware', 'tablet', 'active'),
(127, 11, '____computer serves up information to other computers on a network', 'server', 'internet', 'web', 'network', 'server', 'active'),
(128, 11, 'What is the full meaning of Pc?__________', 'Private computer', 'Personal computer', 'Public computer', 'Processor', 'Personal computer', 'active'),
(129, 11, 'firewire is an example of a_____', 'button', 'ports', 'hole', 'thunderbolt', 'ports', 'active'),
(130, 11, 'If your computer has ports you don\'t recognize, you can consult your', 'book', 'handout', 'manual', 'engineer', 'manual', 'active'),
(131, 11, 'The most basic computer setup usually includes the computer case, monitor, keyboard and_____', 'screen', 'mouse', 'expansion card', 'memory card', 'mouse', 'active'),
(132, 11, 'A scanner allows you to copy_____image or documents and save it to your computer as a digital computer readable image', 'structured', 'physical', 'blur', 'motion', 'physical', 'active'),
(133, 11, 'You can plug many different types of devices into extra______on your computer', 'hole', 'space', 'buttons', 'ports', 'ports', 'active'),
(134, 11, 'The back of the computer has_____ports that are made to fit specific devices', 'connect', 'operates', 'connections', 'electric', 'connections', 'active'),
(135, 11, 'Many people find mouse alternatives easier to ______', 'use', 'move', 'touch', 'track', 'use', 'active'),
(136, 11, 'Are there many types of keyboard?', 'Yes', 'No', 'I don’t Know', 'Non Of the Above', 'Yes', 'active'),
(137, 11, 'Computers come in different shapes,sides and designs', 'TRUE', 'FALSE', 'I don’t know', 'FALSE', 'TRUE', 'active'),
(138, 11, '_____also includes all of the computer\'s internal parts', 'software', 'game ware', 'motion ware', 'hardware', 'hardware', 'active'),
(139, 11, 'If you like playing graphics-intensive games, you can add a faster_____to one of the expansion slots', 'video card', 'game card', 'audio card', 'film', 'video card', 'active'),
(140, 11, 'Before touching the inside of the computer, you should touch a______metal object', 'smooth', 'nice', 'Hot', 'Grounded', 'Grounded', 'active'),
(141, 11, 'Web browsers is the tool you use to access the internet', 'TRUE', 'FALSE', 'I don’t Know', 'None Of the Above', 'TRUE', 'active'),
(142, 11, 'App is a common term for an____(a)software (b) hardware', 'software', 'hardware', 'application', 'processor', 'application', 'active'),
(143, 11, 'Smart phones can connect to the internet over____ or cellular network', 'Ki-fi', 'Wi-fi', 'Internet', 'Sim', 'Wi-fi', 'active'),
(144, 11, 'A mobile device is a general term for any handheld computer', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(145, 11, 'You can basically turns your laptop into a desktop computer', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(146, 11, 'A laptop can be placed on your lap', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(147, 11, 'A laptop has an all-in-one design, with a buit-in monitor, keyboard,touchpad which replaces the mouse, and speakers', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(148, 11, '.Sound card can also be called an____card.', 'hearing', 'Music', 'listening', 'audio', 'audio', 'active'),
(149, 11, 'The full meaning of GPU is (Graphics Processing Unity).', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(150, 11, 'The full meaning of PCI is (Peripheral Component interconnect)cards', 'TRUE', 'FALSE', 'MAYBE', 'NON OF THE ABOVE', 'TRUE', 'active'),
(151, 11, 'If you don\'t have any RAM, your computer maybe ___', 'Fast', 'outstanding', 'Slow', 'Run', 'Slow', 'active'),
(152, 11, 'RAM is measured in____or____', 'ZB/YB', 'MB/GB', 'MB/TB', 'ZB/GB', 'MB/GB', 'active'),
(153, 11, 'When you save a file,the data is written to the____ which acts as long term', 'optical', 'motor drive', 'Soft drive', 'hard drive', 'hard drive', 'active'),
(154, 11, 'The short-term memory disappears when the computer is turned____', 'on', 'off', 'on/off', 'in', 'off', 'active'),
(155, 11, 'Apart joysticks,what can you also use to control your games?', 'Keyboard', 'Monitor', 'pendrive', 'system unit', 'Keyboard', 'active'),
(156, 11, 'All in-one printers,can also scan and_____ documents', 'Read', 'snap', 'copy', 'write', 'copy', 'active'),
(157, 11, 'Some ports maybe_____coded to help you determine which port is used with a particular device', 'pink', 'red', 'yellow', 'colour', 'colour', 'active'),
(158, 11, '____let you control the pointer by making a drawing motion with your finger', 'move', 'buttons', 'ports', 'touch pad', 'touch pad', 'active'),
(159, 11, 'A trackball has a ball that can____freely', 'move', 'rotate', 'speed', 'run', 'rotate', 'active'),
(160, 11, 'The optical mouses ueses an_____eye to detect movement', 'circuit', 'iron', 'electricity', 'electronic', 'electronic', 'active'),
(161, 11, '____ monitors have LED(light emmitting diode)displays', 'older', 'modern', 'developed', 'newer', 'newer', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(11, 76, 'COMPUTER BASIC TEST [WEBSITE]', '30', 70, 'This TEST is a basic Knowledge of computer. Best of luck.     A TOTAL OF 20 QUESTIONS WITHIN 10 MINUTES', '2023-03-20 14:00:36'),
(12, 66, 'COMPUTER BASIC TEST', '30', 70, 'This Exam is on a basic Knowledge of computer, and what you have been taught. Read the questions carefully before answering. BEST OF LUCK', '2023-03-20 21:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_tbl`
--

CREATE TABLE `school_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_tbl`
--

INSERT INTO `school_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(1, 'URBAN DAY GRAMMAR SCHOOL SENIOR', '2023-03-10 11:15:52'),
(2, 'URBAN DAY GRAMMAR SCHOOL JUNIOR', '2023-03-10 11:25:58'),
(3, 'COMMUNITY HIGH SCHOOL ALARERE ', '2023-03-10 11:22:33'),
(4, 'ADEGBAI COMMUNITY HIGH SCHOOL', '2023-03-10 11:22:23'),
(5, 'CHRIST ANGLICAN SECONDARY SCHOOL', '2023-03-10 11:22:14'),
(6, 'QUEST ACADEMY', '2023-03-10 11:18:42'),
(7, 'QUEST COLLEGE', '2023-03-10 11:18:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `school_tbl`
--
ALTER TABLE `school_tbl`
  ADD PRIMARY KEY (`cou_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
