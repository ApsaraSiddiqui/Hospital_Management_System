-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: April 30, 2023 at 08:40 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-30 06:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2023-04-30 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2023-04-30 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2023-04-30 18:41:34', 1, 0, '2023-04-30 18:48:30'),
(6, 'Ayurveda', 5, 2, 8050, '123231', '12323', '2023-04-30 04:29:23', 0, 1, '2023-04-30 16:28:01'),
(7, 'Dermatologist', 9, 2, 500, '2022-06-15', '23:11', '22023-04-30 16:26:06', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `city`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `availability`, `date`, `from`, `to`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Doctor Apsara', 'Karachi',' DHA', '500', 8285703354, 'apsara@doctor.com', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-30',  '10:30:00am', '10:30:00pm', '2023-04-30 01:08:09', '2023-04-30 13:31:38'),
(2, 'Homeopath', 'Doctor Owais', 'Lahore','gulshan-e-iqbal', '600', 2147483647, 'Owais@test.com2', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-30', '01:00:00pm', '09:08:09pm', '2023-04-30 01:08:09', '2023-04-30 01:08:09'),
(3, 'General Physician', 'Doctor Bilal', 'Islamabad','nazimabad', '1200', 8523699999, ' Bilal@test.com3', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '04:00:00pm', '07:08:09pm', '2023-04-30 01:08:09', '2023-04-30 01:08:09'),
(4, 'Homeopath', 'Doctor Ahad', 'Karachi','fbarea', '700', 25668888, 'Ahad@test.com4', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '01:00:00pm', '05:08:09pm', '2023-04-30 01:08:09', '2023-04-30 13:30:07'),
(5, 'Ayurveda', 'Doctor Shaheer', 'Karachi','fbarea-10', '8050', 442166644646, 'Shaheer@test.com5', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '01:08:09pm', '10:00:00pm', '2023-04-30 01:08:09', '2023-04-30 13:30:13'),
(6, 'General Physician', 'Doctor Moiz', 'Hyderabad','gulshan', '2500', 45497964, 'Moiz@test.com6', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '12:00:00pm', '04:00:00pm', '22023-04-30 01:08:09', '2023-04-30 13:30:15'),
(7, 'Demo test', 'Doctor Uzair', 'Multan','n-nazimabad', '200', 852888888, 'Uzair@test.com7', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '01:08:09pm','05:00:00pm', '2023-04-30 01:08:09', '2023-04-30 13:30:17'),
(8, 'Ayurveda', 'Doctor Yahya', 'Lahore','nazimabad', '600', 1234567890, 'Yahya@test.com', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12', '11:00:00am','01:00:00pm', '2023-04-30 01:08:09', '2023-04-30 13:30:19'),
(9, 'Dermatologist', 'Doctor Ali', 'Larkana','dhoraji', '500', 1234567890, 'Ali@test.com8', '81dc9bdb52d04dc20036dbd8313ed055','yes', '2023-04-12','07:00:00am', '01:08:09pm', '2023-04-30 01:08:09', '2023-04-30 13:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'ali@demo.com', 0x3a3a3100000000000000000000000000, '2023-04-30 06:00:27', '2023-04-30 11:30:46 AM', 1),
(21, NULL, 'alinat@demo.com', 0x3a3a3100000000000000000000000000, '2023-04-30 02:03:44', NULL, 0),
(22, 7, 'hira@demo.com', 0x3a3a3100000000000000000000000000, '2023-04-30 02:04:13', NULL, 1),
(23, 7, 'maham@demo.com', 0x3a3a3100000000000000000000000000, '2023-04-30 02:14:21', '2023-04-30 08:35:44 AM', 1),
(24, 7, 'alaya@demo.com', 0x3a3a3100000000000000000000000000, '2023-04-30 03:06:06', '2023-04-30 09:31:42 AM', 1);
-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2023-04-30 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2023-04-30 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2023-04-30 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2023-04-30 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2023-04-30 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2023-04-30 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2023-04-30 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2023-04-30 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '22023-04-30 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2023-04-30 17:51:06', '2023-04-30 17:55:06'),
(12, 'Dermatologist', '2023-04-30 18:36:36', '2023-04-30 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Esha', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2023-04-30 01:08:09', 'Test Admin Remark', '2023-04-30 01:08:09', 1),
(2, 'Ahmed', 'test@testing.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2023-04-30 01:08:09', NULL, '2023-04-30 01:08:09', NULL),
(3, 'Sidra', 'test1@testing.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2022-06-13 01:08:09', 'vfdsfgfd', '2023-04-30 01:08:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2023-04-306 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2023-04-30 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2023-04-30 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2023-04-30 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2023-04-30 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2023-04-30 18:50:23');


-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Erum', 4558968789, 'test@gmail.com', 'Female', 'Karachi', 26, 'She is diabetic patient', '2023-04-30 01:08:09', '2023-04-30 13:30:51'),
(2, 5, 'Sajid Patient1', 9797977979, 'test1@gmail.com', 'Male', 'Islamabad', 39, 'No', '2023-04-30 01:08:09', '22023-04-30 13:30:54'),
(3, 7, 'Arooba', 9878978798, 'test2@gmail.com', 'Female', 'Lahore', 46, 'No', '2023-04-30 01:08:09', '2023-04-30 13:30:56'),
(4, 7, 'Bilal', 9888988989, 'test3@gmail.com', 'Male', 'Quetta', 45, 'He is long suffered by asthma', '2023-04-30 01:08:09', '2023-04-30 13:30:58'),
(5, 9, 'Furqan', 1234567890, 'test4@gmail.com', 'male', 'Multan ', 25, 'THis is sample text for testing.', '2023-04-30 01:08:09', '2023-04-30 13:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '22023-04-30 13:12:49', '2023-04-30 06:43:08 PM', 1),
(2, 2, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:13:15', NULL, 0),
(3, 8, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:13:27', NULL, 0),
(4, 5, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:13:36', NULL, 0),
(5, 5, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:14:54', '2023-04-30 06:54:23 PM', 1),
(6, 6, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:25:24', '2023-04-30 06:55:52 PM', 1),
(7, 7, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:26:02', '2023-04-30 06:56:06 PM', 1),
(8, 8, 'user@user.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:45:34', '2023-04-30 07:15:39 PM', 1),
(9, 9, 'user.com', 0x3a3a3100000000000000000000000000, '2023-04-30 13:47:57', '12023-04-30 07:18:02 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Apsara', 'gulshan-e-iqbal', 'Karachi', 'female', 'apsara@user.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-30 01:08:09', '2023-04-30 13:31:23'),
(3, 'Kamran', 'DHA', 'Lahore', 'male', 'kamran@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-30 01:08:09', '2023-04-30 13:29:31'),
(4, 'Hoorain', 'North Karachi', 'Karachi', 'female', 'hoor@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-30 01:08:09', '2023-04-30 13:29:32'),
(5, 'Uzair', 'Johaur', 'Karachi', 'male', 'uzi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-30 01:08:09', '2023-04-30 13:29:34'),
(6, 'Fatima', 'FB-Area', 'Karachi ', 'female', 'fatima@mailinator.com', 'b916810cd9a5e9689ce64de6223d3da3', '2023-04-30 13:47:50', NULL);

--
-- Indexes for dumped tables
--



CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `capital`, `regDate`, `updationDate`) VALUES
(2, 'Islamabad', 'Pakistan', '2023-04-30 01:08:09', '2023-04-30 13:31:23');


CREATE TABLE `detail`(
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `disease` longtext,
  `prevent` longtext,
  `cure` longtext
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
--
-- Dumping data for table `detail`
--
INSERT INTO `detail` (`id`,`name`,`disease`,`prevent`,`cure`) VALUES
(1,'Dengue fever','Dengue fever is a mosquito-borne tropical disease caused by the dengue virus. Symptoms typically begin three to fourteen days after infection. ','
Use insect repellent, wear long-sleeved shirts and long pants, and control mosquitoes inside and outside your home.','Dengue-specific treatments are needed to reduce the risk of progressing to a severe stage. Dengue is the most widely distributed mosquito-borne viral disease in the world. We share knowledge.	
 
'),
(2,'Chikungunya','Chikungunya is an infection caused by the Chikungunya virus. Symptoms include fever and joint pains. These typically occur two to twelve days after exposure.','The best way to prevent chikungunya is to protect yourself from mosquito bites. Use insect repellent, wear long-sleeved shirts and pants, treat clothing and gear, and take steps to control mosquitoes indoors and outdoors.',
'No specific antiviral treatment is available for chikungunya; however  a number of therapeutic options are being investigated. Treatment for symptoms can include rest, fluids, and use of analgesics and antipyretics.');
--
--

CREATE TABLE `appoint`(
  `id` int(13) NOT NULL,
  `pname` longtext,
  `dname` longtext,
  `ddetail` longtext
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `appoint`(`id`,`pname`,`dname`,`ddetail`) VALUES
(1,'Apsara','Dr Apsara','Dr Apsara___ Dentist___2023-04-30___10:30:00am-10:30:00pm');

-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);


ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

  
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

  --
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

  ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

  ALTER TABLE `appoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
