-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2021 at 06:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MediBookings`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `admin_id` varchar(13) NOT NULL,
  `adminFirstName` varchar(25) NOT NULL,
  `adminLastName` varchar(25) NOT NULL,
  `adminPhoneNumber` varchar(12) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  `adminPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`admin_id`, `adminFirstName`, `adminLastName`, `adminPhoneNumber`, `adminEmail`, `adminPassword`) VALUES
('0001157634089', 'Mthokozisi', 'Mabunda', '0785453799', 'mabunda@gmail.com', 'mabunda22'),
('9404042345089', 'Mable', 'Freeman', '0606873542', 'mablefreeman@gmail.com', 'mableFree@1'),
('9509081254082', 'Mncedisi', 'Sithole', '0723880963', 'mncedisi11@gmail.com', 'mncedisi1212'),
('9608275688084', 'Simphiwe', 'Machiye', '0793651446', 'Simphiw31@gmail.com', 'Simphiw321'),
('9911125829081', 'Phindile', ' Masemula', '0891934998', 'phindile@gmail.com', 'phindileM11');

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE `Appointment` (
  `appointment_ID` int(10) NOT NULL,
  `appointment_symptoms` varchar(150) NOT NULL,
  `appointment_status` varchar(20) NOT NULL,
  `appointment_diagnoses` varchar(500) NOT NULL,
  `appointment_clinicalNotes` varchar(500) NOT NULL,
  `appointment_type` varchar(50) NOT NULL,
  `patient_id` varchar(13) NOT NULL,
  `doctor_id` varchar(13) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Appointment`
--

INSERT INTO `Appointment` (`appointment_ID`, `appointment_symptoms`, `appointment_status`, `appointment_diagnoses`, `appointment_clinicalNotes`, `appointment_type`, `patient_id`, `doctor_id`, `schedule_id`) VALUES
(1, 'Cough', 'missed', '', '', 'Consultation', '0102305688084', '7104305688085', 8),
(2, 'Headache,fever,vomiting ', 'Cancelled ', '', '', 'Consultation', '9009135282086', '7104305688085', 1),
(3, 'Headache,fever,vomiting ', 'Attended', 'Lack of rest and imbalance sleeping routine is affecting your health.\r\nFlue ,Mini stroke', 'Drink 2 Panado\'s a day one in the morning one at night ,provided sleeping pills to adjust the sleeping routine ,Rest and have enought water ', 'Consultation', '9009135282086', '7104305688085', 2),
(4, 'None', 'Pending', '', '', 'Eye check up', '9608275688084', '7806265678084', 49),
(5, 'constipation', 'Cancelled', '', '', 'Consultation', '8908225677089', '7104305688085', 30),
(6, 'Fever', 'pending', '', '', 'Consultation', '9608275688084', '7806265678084', 55),
(7, 'require a pap test', 'pending', '', '', 'Pap test', '0112305687083', '9709031225088', 4),
(8, 'Headache ,dizziness', 'pending', '', '', 'Consultation', '8908225677089', '9809084356', 25),
(9, 'Cold and Flue', 'pending', '', '', 'Consultation ', '8908225677089', '7806265678084', 8),
(10, 'Toothache', 'pending', '', '', 'Dental care', '9102145688089', '7808305688085', 13);

-- --------------------------------------------------------

--
-- Table structure for table `City`
--

CREATE TABLE `City` (
  `cityZipCode` varchar(4) NOT NULL,
  `cityName` varchar(25) NOT NULL,
  `provinceZipCode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `City`
--

INSERT INTO `City` (`cityZipCode`, `cityName`, `provinceZipCode`) VALUES
('0002', 'Tshwane', '0001'),
('0012', 'Mamelodi', '0001'),
('0302', 'Northern Park', '0300'),
('0458', 'Kwagga', '1030'),
('0501', 'Leboa kgomo', '0699'),
('1022', 'KwaMhlanga', '1030'),
('1034', 'eMalahleni', '1030'),
('3202', 'Pietermaritzburg', '4500'),
('4734', 'Former Transkei', '4731'),
('8302', 'Gordonia Region', '8100'),
('9303', 'Bloefontein', '9300');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `doctor_id` varchar(13) NOT NULL,
  `doctorFirstName` varchar(25) NOT NULL,
  `doctorLastName` varchar(25) NOT NULL,
  `doctorSpecialty` varchar(30) NOT NULL,
  `doctorEmail` varchar(50) NOT NULL,
  `doctorPassord` varchar(50) NOT NULL,
  `admin_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`doctor_id`, `doctorFirstName`, `doctorLastName`, `doctorSpecialty`, `doctorEmail`, `doctorPassord`, `admin_id`) VALUES
(' 910412324308', 'Mavis', 'Mabuza', 'General Practiyioner', 'Mavis@gmail.com', 'Mave123', '9608275688084'),
('7104305688085', 'Given ', 'Mnguni', 'General Practitioner', 'Given29@gmail.com', 'Given123', '9608275688084'),
('7806265678084', 'Sipho', 'Ngobeni', 'Demetologist', 'Sipho@gmail.com', 'SiphoNgobz123', '9608275688084'),
('7808305688085', 'Mncedisi', 'Sithole', 'Opthometrist', 'Mncedis@medibookings.co.za', 'Mncedisi78', '9608275688084'),
('7902025688085', 'Xolani ', 'Mahlangu', 'General Practitioner', 'MahlanguXol@gmail.com', 'XolaniMahlangu', '9608275688084'),
('7909075464088', 'Wandile', 'Mpholoni', 'Dentist', 'wandile@gmail.com', 'wandileMo11', '9608275688084'),
('8908095478089', 'Sbusiso', 'Mkhephuli', 'Dietician', 'mkhephuli@gmail.com', '18Makk', '9608275688084'),
('9203021871082', 'Emmanuel', 'Mahlangu', 'General Practitioner ', 'emmanuel@gmail.com', 'Mahlangu99', '9608275688084'),
('9404046783089', 'Simphiwe ', 'Machiye', 'optometrist', 'simphiwe@gmail.com', 'simphiw321', '9608275688084'),
('9609087675089', 'Phindile', 'Masimula', 'Neurologist', 'phindile@gmail.com', 'PhindileM', '9608275688084'),
('9709031225088', 'Neliswa', 'Sithole', 'Gynacologist', 'neliswa@gmail.com', 'maronyo11', '9608275688084'),
('9809082321088', 'Maxwell', 'Smith', 'Dentist', 'max123@gmail.com', 'max123', '9608275688084'),
('9809084356', 'Pertunia ', 'Senamela', ' Dietician', 'senamela@gmail.com ', 'senamela66', '9608275688084');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `patient_id` varchar(13) NOT NULL,
  `patientFirstName` varchar(25) NOT NULL,
  `patientLastName` varchar(25) NOT NULL,
  `patientGender` varchar(6) NOT NULL,
  `patientStreetAddress` varchar(100) NOT NULL,
  `patientPhone` varchar(12) NOT NULL,
  `patientEmail` varchar(50) NOT NULL,
  `patientPassword` varchar(50) NOT NULL,
  `cityZipCode` varchar(4) NOT NULL,
  `provinceZipCode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`patient_id`, `patientFirstName`, `patientLastName`, `patientGender`, `patientStreetAddress`, `patientPhone`, `patientEmail`, `patientPassword`, `cityZipCode`, `provinceZipCode`) VALUES
('0102305688084', 'Kamo', 'Chilwane', 'Male', 'Refiloe East', '0661805432', 'KamoChilwane@gmail.com', 'Kamo123', '0012', '0001'),
('0112305687083', 'Julia', 'Erasmas', 'Female', '15 langa cres\r\nzeekoewater', '0661805432', 'Julia@gmail.com', 'Vusi1012', '0501', '0699'),
('8212125884083', 'Ellias', 'Masango', 'Male', 'Bailey', '0860010111', 'Ellias@gmail.com', 'Ellias123', '9303', '9300'),
('8908225677089', 'Vusimuzi', 'Mthombeni', 'Male', '18 Bailey Street\r\n102 bleskok', '0768762233', 'Vusi@gmail.com', 'Vusi1012', '0012', '0001'),
('9007085678085', 'Gracious', ' Mahlangu', 'Female', 'Eastern Park 1123', '0783115899', 'Simph@gmail.com', 'Emmanuel@078', '4734', '4731'),
('9009135282086', 'Thobile ', 'Machiye', 'Female', 'HO5 Chris-Hani\r\nVezani Strees', '0783115899', 'Thobza@gmail.com', 'ThobileGracious', '1022', '1030'),
('9102145688089', 'Thoko ', 'Mnguni', 'Female', 'highveld view', '0879982301', 'thoko@high.ac.za', 'Thoko123', '8302', '8100'),
('9406165688084', 'Emmanuel', 'Ngobeni', 'Male', 'Nhlazatje', '0780055566', 'Emmanuel@gmail.com', 'Emmanuel@078', '3202', '4500'),
('9608275688084', 'Simphiwe', 'Machiye', 'Male', 'HO5 chris-hani\r\nVezani street', '0662627450', 'Simp@gmail.com', 'Simphiw321', '1022', '1030'),
('9705145677082', 'Nkosinathi', 'Masilela', 'Male', 'Thembalethu', '0798321234', 'Nkosinathi@gmail.com', 'Nkosinathi182', '4734', '4731');

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE `Province` (
  `provinceZipCode` varchar(4) NOT NULL,
  `provinceName` varchar(30) NOT NULL,
  `provinceCountry` varchar(30) NOT NULL DEFAULT 'South Africa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Province`
--

INSERT INTO `Province` (`provinceZipCode`, `provinceName`, `provinceCountry`) VALUES
('0001', 'Gauteng', 'South Africa'),
('0300', 'North West', 'South Africa'),
('0699', 'Limpopo', 'South Africa'),
('1030', 'Mpumalanga', 'South Africa'),
('4500', 'KwaZulu Natal', 'South Africa'),
('4731', 'Eastern Cape', 'South Africa'),
('6700', 'Western Cape', 'South Africa'),
('8100', 'Northern Cape', 'South Africa'),
('9300', 'Free State', 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `Receptionist`
--

CREATE TABLE `Receptionist` (
  `receptionist_id` varchar(13) NOT NULL,
  `receptionistFirstName` varchar(25) NOT NULL,
  `receptionistLastName` varchar(25) NOT NULL,
  `receptionistPhone` varchar(12) NOT NULL,
  `receptionistEmail` varchar(50) NOT NULL,
  `receptionistPassword` varchar(50) NOT NULL,
  `admin_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Receptionist`
--

INSERT INTO `Receptionist` (`receptionist_id`, `receptionistFirstName`, `receptionistLastName`, `receptionistPhone`, `receptionistEmail`, `receptionistPassword`, `admin_id`) VALUES
('0012015482086', 'Phindile', 'Masimula', '0783205460', 'Phindile00@gmail.com', 'Phindile078', '9608275688084'),
('0012235682086', 'Pertunia', 'Senamela', '0799605460', 'Pertunia00@tut.ac.za', 'Pertunia079', '9608275688084'),
('9008235788084', 'Pretty', 'Mahlangu', '0662427459', 'pretty99@gmail.com', 'pretty90', '9608275688084'),
('9207125688084', 'Sbusiso', 'Mvundla', '0798865746', 'Sbu978@gmail.com', 'Sbusiso99', '9608275688084'),
('9709083456081', 'Innocent ', 'Makua', '076044178', 'mahkua@gmail.com', 'makuaI9', '9608275688084'),
('9821057898089', 'William ', 'Stains', '08234235799', 'William@gmail.com', 'Will@11', '9608275688084'),
('9908025252088', 'Duduzile', 'Msiza', '0823434599', 'duduzile12@gmail.com', 'dudu12', '9608275688084'),
('9908053556082', 'Mduduzi', 'Hlatshwayo', '08234356799', 'mduhlatshwayo@gmail.com', 'mduduzi11', '9608275688084'),
('9908125812082', 'Tracy', 'Seloma', '0783669858', 'tracy11@gmail.com', 'traceMe', '9608275688084'),
('9908235788084', 'Martha', 'Mahlangu', '0662427459', 'martha99@gmail.com', 'Martha99', '9608275688084');

-- --------------------------------------------------------

--
-- Table structure for table `Schedule`
--

CREATE TABLE `Schedule` (
  `schedule_id` int(10) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_startTime` time NOT NULL,
  `schedule_endTime` time NOT NULL,
  `schedule_status` varchar(20) NOT NULL,
  `receptionist_id` varchar(13) NOT NULL,
  `doctor_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Schedule`
--

INSERT INTO `Schedule` (`schedule_id`, `schedule_date`, `schedule_startTime`, `schedule_endTime`, `schedule_status`, `receptionist_id`, `doctor_id`) VALUES
(1, '2021-10-25', '09:00:00', '09:30:00', 'Available', '0012015482086', '7104305688085'),
(2, '2021-10-25', '09:30:00', '10:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(3, '2021-10-25', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(4, '2021-10-25', '10:30:00', '11:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(5, '2021-10-25', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(6, '2021-10-25', '11:30:00', '12:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(7, '2021-10-25', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(8, '2021-10-25', '13:30:00', '14:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(9, '2021-10-25', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(10, '2021-10-25', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(11, '2021-10-25', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(12, '2021-10-25', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(13, '2021-10-26', '09:00:00', '09:30:00', 'notAvailable', '0012015482086', '7104305688085'),
(14, '2021-10-26', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(15, '2021-10-26', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(16, '2021-10-26', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(17, '2021-10-26', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(18, '2021-10-26', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(19, '2021-10-26', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(20, '2021-10-26', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(21, '2021-10-26', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(22, '2021-10-26', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(23, '2021-10-26', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(24, '2021-10-26', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(25, '2021-10-27', '09:00:00', '09:30:00', 'notAvailable', '0012015482086', '7104305688085'),
(26, '2021-10-27', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(27, '2021-10-27', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(28, '2021-10-27', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(29, '2021-10-27', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(30, '2021-10-27', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(31, '2021-10-27', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(32, '2021-10-27', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(33, '2021-10-27', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(34, '2021-10-27', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(35, '2021-10-27', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(36, '2021-10-27', '15:30:00', '16:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(37, '2021-10-28', '09:00:00', '09:30:00', 'Available', '0012015482086', '7104305688085'),
(38, '2021-10-28', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(39, '2021-10-28', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(40, '2021-10-28', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(41, '2021-10-28', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(42, '2021-10-28', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(43, '2021-10-28', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(44, '2021-10-28', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(45, '2021-10-28', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(46, '2021-10-28', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(47, '2021-10-28', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(48, '2021-10-28', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(49, '2021-10-25', '09:00:00', '09:30:00', 'Available', '9008235788084', '7806265678084'),
(50, '2021-10-25', '09:30:00', '10:00:00', 'Available', '9008235788084', '7806265678084'),
(51, '2021-10-25', '10:00:00', '10:30:00', 'Available', '9008235788084', '7806265678084'),
(52, '2021-10-25', '10:30:00', '11:00:00', 'Available', '9008235788084', '7806265678084'),
(53, '2021-10-25', '11:30:00', '12:00:00', 'Available', '9008235788084', '7806265678084'),
(54, '2021-10-25', '12:00:00', '12:30:00', 'Available', '9008235788084', '7806265678084'),
(55, '2021-10-25', '12:30:00', '13:00:00', 'Available', '9008235788084', '7806265678084'),
(56, '2021-10-25', '14:00:00', '14:30:00', 'Available', '9008235788084', '7806265678084'),
(57, '2021-10-25', '14:30:00', '15:00:00', 'Available', '9008235788084', '7806265678084');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `adminEmail` (`adminEmail`);

--
-- Indexes for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`appointment_ID`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`cityZipCode`,`provinceZipCode`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `doctorEmail` (`doctorEmail`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `patientEmail` (`patientEmail`),
  ADD KEY `cityZipCode` (`cityZipCode`,`provinceZipCode`);

--
-- Indexes for table `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`provinceZipCode`);

--
-- Indexes for table `Receptionist`
--
ALTER TABLE `Receptionist`
  ADD PRIMARY KEY (`receptionist_id`),
  ADD UNIQUE KEY `receptionistEmail` (`receptionistEmail`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `receptionist_id` (`receptionist_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Appointment`
--
ALTER TABLE `Appointment`
  MODIFY `appointment_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Schedule`
--
ALTER TABLE `Schedule`
  MODIFY `schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`),
  ADD CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`),
  ADD CONSTRAINT `Appointment_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `Schedule` (`schedule_id`);

--
-- Constraints for table `City`
--
ALTER TABLE `City`
  ADD CONSTRAINT `City_ibfk_1` FOREIGN KEY (`provinceZipCode`) REFERENCES `Province` (`provinceZipCode`);

--
-- Constraints for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Admin` (`admin_id`);

--
-- Constraints for table `Patient`
--
ALTER TABLE `Patient`
  ADD CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`cityZipCode`,`provinceZipCode`) REFERENCES `City` (`cityZipCode`, `provinceZipCode`);

--
-- Constraints for table `Receptionist`
--
ALTER TABLE `Receptionist`
  ADD CONSTRAINT `Receptionist_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Admin` (`admin_id`);

--
-- Constraints for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD CONSTRAINT `Schedule_ibfk_1` FOREIGN KEY (`receptionist_id`) REFERENCES `Receptionist` (`receptionist_id`),
  ADD CONSTRAINT `Schedule_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
