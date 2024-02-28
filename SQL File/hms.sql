SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+05:00";


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Kashan', '2106601', '2023-12-20 13:19:41');

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 1500, '2023-12-20 ', '1:45 PM', '2023-12-20 13:19:41', 1, 0, '2023-12-20 13:19:41'),
(2, 'Physio', 1, 2, 1200, '2023-12-20 ', '5:00 PM', '2023-12-20 13:19:41', 1, 1, '2023-12-20 13:19:41');

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Syed Hamid Ali', 'Westridge 3 st14 Rawalpindi', '1500', 03200908621, '210660@students.au.edu.pk', '2106602', '2023-12-20 13:19:41', '2023-12-20 13:19:41'),
(2, 'Endocrinologists', 'Ahmad Ali Siddeque', 'Sattelite Town D-Block Rawalpindi ', '1200', 03185283456, 'kashiboss63@gmail.com', '2106603', '2023-12-20 13:19:41', '2023-12-20 13:19:41');

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, '2106@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41',  '2023-12-20 13:19:41', 0),
(21, 2, '21660@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41', '2023-12-20 13:19:41', 1),
(22, 2, '20660@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41', '2023-12-20 13:19:41',1),
(23, 2, '21060@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41', '2023-12-20 13:19:41', 1),
(24, 1, '21660@students.au.edu.pk',0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41', '2023-12-20 13:19:41', 1),
(25, 2, '2102660@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '2023-12-20 13:19:41', 1),
(26, 1, '21960@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 13:19:41', '2023-12-20 13:19:41', 1);

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2023-12-20 13:19:41', NULL),
(2, 'Internal Medicine', '2023-12-20 13:19:41', NULL),
(3, 'Obstetrics and Gynecology', '2023-12-20 13:19:41', NULL),
(4, 'Dermatology', '2023-12-20 13:19:41', NULL),
(5, 'Pediatrics', '2023-12-20 13:19:41', NULL),
(6, 'Radiology', '2023-12-20 13:19:41', NULL),
(7, 'General Surgery', '2023-12-20 13:19:41', NULL),
(8, 'Ophthalmology', '2023-12-20 13:19:41', NULL),
(9, 'Anesthesia', '2023-12-20 13:19:41', NULL),
(10, 'Pathology', '2023-12-20 13:19:41', NULL),
(11, 'ENT', '2023-12-20 13:19:41', NULL),
(12, 'Dental Care', '2023-12-20 13:19:41', NULL),
(13, 'Dermatologists', '2023-12-20 13:19:41', NULL),
(14, 'Endocrinologists', '2023-12-20 13:19:41', NULL),
(15, 'Neurologists', '2023-12-20 13:19:41', NULL);

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Syed Kashan Ali', '210660@students.au.edu.pk', 03200908621, 'Hello My Name is Kashan. Student of BSIT-V', '2023-12-20 13:19:41', 'Healthy', '2023-12-20 13:19:41', 1),
(2, 'Arfi', 'kashiboss63@gmail.com', 03185283456, 'Assalam-o-Alaikum, Mera naam hai Irfan almaroof Arfi', '2023-12-20 13:19:41', 'Patient ki kidney mein Heart Attack hai', '2023-12-20 13:19:41', 1);

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(210660, 210660, '80/120', '100', '63', '97', 'Kashan', '2023-12-20 13:19:41');

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style="padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;" times="" new="" roman"" font-size="" 14px;="" text-align="" center;="" background-color="" rgb(255,="" 246,="" 246);"=""><li style="text-align: left;"><font color="#000000">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper-based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost-effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style="text-align: left;"><font color="#000000">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost-wise fashion so that an institution\"s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error-free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>',  '210663@students.au.edu.pk', 3200908621, '2023-12-20 07:24:07', '8 am To 8 Pm'),
(2, 'contactus', 'Contact Details', 'E-304, Sattelite Town, Rawalpindi, Pakistan', '210663@students.au.edu.pk', 3200908621, '2023-12-20 07:24:07', '8 am To 8 Pm');

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Syed Kashan Ali', 03200908621 , '210664@students.au.edu.pk', 'male', 'Pindi', 35, 'NA', '2022-11-06 13:18:31', NULL);


CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, '210669@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 12:13:56', '06-11-2022 05:53:00 PM', 1),
(2, 1, '210668@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 12:13:56', '06-11-2022 05:53:00 PM', 1),
(3, 2, '210665@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 12:13:56', '06-11-2022 05:53:00 PM', 0),
(4, 2, '210619@students.au.edu.pk', 0x3a3a3100000000000000000000000000, '2023-12-20 12:13:56', '06-11-2022 06:50:46 PM', 1);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Syed Kashan Ali', 'Westridge 3', 'Rawalpindi', 'male', '210670@students.au.edu.pk', '2106608', '2023-12-20 12:13:56', NULL),
(2, 'Arfi', 'Sattelite Town', 'Rawalpindi', 'male', '210671@students.au.edu.pk', '2106609', '2023-12-20 13:15:32', NULL);



ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
