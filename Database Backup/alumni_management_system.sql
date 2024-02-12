-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 04:26 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(10) NOT NULL,
  `student_id1` int(10) NOT NULL,
  `student_id2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `student_id1`, `student_id2`) VALUES
(1, 1, 11),
(2, 1, 14),
(3, 1, 12),
(4, 1, 10),
(5, 16, 14),
(6, 16, 12),
(7, 18, 19);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(10) NOT NULL,
  `chat_id` int(10) NOT NULL,
  `group_chat_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text NOT NULL,
  `message_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `chat_id`, `group_chat_id`, `student_id`, `date`, `time`, `message`, `message_status`) VALUES
(1, 1, 0, 1, '2017-03-31', '11:13:34', 'hi...', 'Active'),
(2, 2, 0, 1, '2017-03-31', '11:16:17', 'sdg', 'Active'),
(3, 3, 0, 1, '2017-03-31', '11:19:15', 'dxghfhjhk', 'Active'),
(4, 4, 0, 1, '2017-03-31', '11:19:22', 'b ugjgk hluilio', 'Active'),
(5, 5, 0, 16, '2020-07-04', '10:31:28', 'Hello', 'Active'),
(6, 6, 0, 16, '2020-07-04', '10:33:28', 'Hello', 'Active'),
(7, 6, 0, 16, '2020-07-04', '10:34:55', 'dfs', 'Active'),
(8, 5, 0, 16, '2020-07-04', '10:35:47', 'ji', 'Active'),
(9, 7, 0, 18, '2020-07-24', '07:28:36', 'hai', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `profile_imge` varchar(300) NOT NULL,
  `dob` date NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `courseid` int(11) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `name`, `gender`, `profile_imge`, `dob`, `emailid`, `password`, `address`, `phone`, `courseid`, `semester`, `status`) VALUES
(1, 'Santhosh marcel', '', '', '1997-01-19', 'msanthu78@gmail.com', '', '', '9535137787', 1, '', 'Active'),
(2, 'Prashanth', '', '', '1997-02-10', 'prashanth@yahoo.com', '', '', '9658475521', 1, '', 'Active'),
(3, 'Ranjith', '', '', '1996-11-12', 'ranjithacharya102@gmail.com', '', '', '8970262256', 1, '', 'Disapproved'),
(4, 'Kishore', '', '', '1996-05-06', 'kishore@rediffmail.com', '', '', '9632145665', 2, '', 'Inactive'),
(5, 'Akash', '', '', '1999-04-02', 'akash@yahoo.com', '', '', '9625844756', 2, '', 'Inactive'),
(6, 'kajal', '', '', '1996-03-27', 'kajal@gmail.com', '', '', '9035788611', 1, '', 'Disapproved'),
(8, 'Pearel', '', '', '1996-03-02', 'peareal@gmail.com', '', '', '145', 3, '', 'Active'),
(9, 'Francis', '', '', '1995-06-05', 'francis@yahoo.com', '', '', '965478124', 3, '', 'Inactive'),
(10, 'pra123@', '', '', '2017-03-24', 'kap@gmail.com', '', '', '7894561230', 1, '', 'Active'),
(11, 'suresh raina', '', '', '1996-03-01', 'raina@gmail.com', '', '', '9568745523', 6, '', 'Active'),
(12, 'raksha', '', '', '1997-11-05', 'raksha@gmail.com', '', '', '9900599005', 1, '', 'Active'),
(13, 'aaaa', '', '', '2017-03-31', 'aaa@gmail.com', '', '', '3652568975', 6, '', 'Inactive'),
(14, 'SAGAR NAIR', '', '', '1990-03-31', 'nairsagar777@gmail.com', '', '', '7022468953', 1, '', 'Active'),
(16, 'preethika', '', '', '1986-07-24', 'preethika@gmail.com', '', '', '9876543211', 8, '', 'Active'),
(17, 'krishnan', '', '', '1990-12-05', 'krishnanwac@gamil.com', '', '', '9994730613', 10, '', 'Active'),
(18, 'krish', '', '', '1990-04-03', 'krishnanarise@gmail.com', '', '', '9994730613', 10, '', 'Active'),
(19, 'Jaakanthan M', '', '', '1982-06-06', 'jai.dbt@gmail.com', '', '', '9843696114', 13, '', 'Active'),
(20, 'Pavan bolar', '', '', '1989-10-29', 'pavanbolar@gmail.com', '', '', '7894561230', 12, '', 'Active'),
(21, 'Andra kumar', 'Male', '2000457636bPulse.jpg', '1988-05-04', 'andra@gmail.com', '123456789', '3rd floor', '7894561230', 12, '', 'Inactive'),
(22, 'Andra kumar', 'Male', '214535104bPulse.jpg', '1988-05-04', 'andra@gmail.com', '123456789', '3rd floor', '7894561230', 12, '', 'Inactive'),
(23, 'Veeksha', 'Male', '1794203116bPulse.jpg', '2010-05-04', 'veeksha@gmail.com', '123456789', '3rd floor, city light building', '7894561230', 12, 'First Semester', 'Inactive'),
(24, 'Likith', 'Male', '722377025spectrum.jpg', '1998-05-04', 'likith@gmail.com', '456789123', '3rd floor,\r\nCity light,\r\nMangalore', '8974563210', 13, 'Fourth Semester', 'Disapproved'),
(25, 'Vedanth kumar', 'Male', '1761678284tea.jpg', '1998-05-04', 'vedanth@gmail.com', 'q1w2e3r4', '3rd floor,\r\nCity light building', '7894561230', 12, 'First Semester', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminid` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `apassword` varchar(20) NOT NULL,
  `contactno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminid`, `fullname`, `emailid`, `apassword`, `contactno`) VALUES
(1, 'Ankith', 'admin@alumni.com', 'admin', '7894561230'),
(2, 'Angad', 'angad@gmail.com', 'q1w2e3r4', '9983728449'),
(3, 'Ram', 'ram@gmail.com', 'q1w2e3r4', '9876543211');

-- --------------------------------------------------------

--
-- Table structure for table `tblalumnimeet`
--

CREATE TABLE `tblalumnimeet` (
  `eventid` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `description` text NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalumnimeet`
--

INSERT INTO `tblalumnimeet` (`eventid`, `event_name`, `loc`, `event_date`, `event_time`, `description`, `status`) VALUES
(1, 'Guruvandana', 'Shirva', '2015-10-03', '10:00:00', 'Guruvandana Programme', 'Active'),
(2, 'Alumni Meeting', 'Shirva', '2017-04-13', '15:30:00', 'Annual General Body Meeting', 'Active'),
(3, 'Talents Day', 'Bangalore', '2020-03-30', '00:00:00', 'Talents day of seniors', 'Active'),
(4, 'Celebration day', 'Bangalore', '2020-07-24', '01:00:00', 'Celebration day for today', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tblalumniphoto`
--

CREATE TABLE `tblalumniphoto` (
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `profilepic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalumniphoto`
--

INSERT INTO `tblalumniphoto` (`photoid`, `userid`, `profilepic`) VALUES
(1, 9, 'noimage.png'),
(2, 10, 'noimage.png'),
(3, 11, '25638ad.jpg'),
(4, 12, '15001ad.jpg'),
(5, 13, '32299ev.jpg'),
(6, 14, '6295no-user-image.png'),
(7, 15, '10884no-user-image.png'),
(8, 16, '1370831967images.jpg'),
(9, 17, '441534923krishnan.jpg'),
(10, 18, '1754959464krishnan.jpg'),
(11, 19, '175987038Screenshot from 2020-07-10 10-03-35.png'),
(12, 20, '2072298881Voice based Home Automation.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `cid` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `cno` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`cid`, `cname`, `email`, `subject`, `cno`, `message`, `date`) VALUES
(9, 'krishnan', 'krishnanarise@gmail.com', 'hai', '9994730613', 'add', '2020-07-20'),
(11, 'fgg', 'Email', 'subject', 'Contact Number', 'Message...', '2022-07-20'),
(12, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2023-07-20'),
(13, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2023-07-20'),
(14, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(15, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(16, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(17, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(18, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(19, 'Name', 'Email', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(20, 'Name', 'raj@gmail.com', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(21, 'Name', 'raj@gmail.com', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(22, 'Name', 'raj@gmail.com', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(23, 'Name', 'fdsad@dsf', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(24, 'Name', 'fdsad@dsf', 'subject', 'Contact Number', 'Message...', '2031-07-20'),
(25, 'Raj', 'Rajkiran@gmail.com', 'Hello', '7894561230', 'This is my syste', '2031-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`courseid`, `coursename`) VALUES
(12, 'M.Sc Bioinformatics'),
(13, 'B.Tech Bioinformatics');

-- --------------------------------------------------------

--
-- Table structure for table `tblfund`
--

CREATE TABLE `tblfund` (
  `fundid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paiddate` date NOT NULL,
  `remarks` text NOT NULL,
  `userid` int(11) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `cardno` varchar(16) NOT NULL,
  `cvv` int(4) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfund`
--

INSERT INTO `tblfund` (`fundid`, `amount`, `paiddate`, `remarks`, `userid`, `paytype`, `bankname`, `cardno`, `cvv`, `exp_month`, `exp_year`) VALUES
(1, '500000.00', '2017-03-01', 'Donation', 2, 'Debit Card', 'Canara', '7847589625135478', 658, 5, 2020),
(2, '2014.00', '2001-03-17', 'Donation', 1, 'Creditcard', 'sbi', '9874589654789214', 123, 1, 2018),
(3, '200000.00', '2002-03-17', 'g', 1, 'Creditcard', 'canara', '7894578412587595', 654, 8, 2017),
(4, '50000.00', '2023-03-17', 'Scholarship', 1, 'Creditcard', 'SBI', '1234567891234567', 123, 9, 2021),
(5, '12000.00', '2024-03-17', 'sdas', 12, 'Creditcard', 'SBI', '8520562417896321', 852, 2, 2017),
(6, '10000.00', '2024-03-17', 'dcdc', 12, 'Debitcard', 'sas', '3698521478963214', 852, 1, 2017),
(7, '10000.00', '2024-03-17', 'ithjgijji', 12, 'Creditcard', 'dr333', '1236547412365896', 789, 2, 2017),
(8, '10000.00', '2024-03-17', 'hdjhjd111', 12, 'Debitcard', 'hjk', '7412589632587412', 963, 2, 2017),
(9, '100000.00', '2004-07-20', 'For mid day meals donation for poor people', 16, 'Debitcard', 'ICIIC', '1234567890213456', 839, 1, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `tblfundinterest`
--

CREATE TABLE `tblfundinterest` (
  `fundinvestid` int(11) NOT NULL,
  `investedfor` varchar(250) NOT NULL,
  `note` text NOT NULL,
  `investeddate` date NOT NULL,
  `iamount` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfundinterest`
--

INSERT INTO `tblfundinterest` (`fundinvestid`, `investedfor`, `note`, `investeddate`, `iamount`) VALUES
(1, 'Scholarship', 'To  academic toppers ', '2017-03-10', 20000.00),
(4, 'bsjhcasc', 'scaschjbhj', '2017-03-15', 20000.00),
(5, 'Honoring toppers ', 'all bca students', '2017-03-17', 20000.00),
(6, 'Donation', 'Poor students', '2017-03-04', 3000.00),
(7, 'Refreshment', 'Sports meet', '2017-03-25', 5000.00),
(8, 'Donation', 'hghghgh', '2017-03-30', 5500.00),
(9, 'Parking', 'hh', '2017-03-30', 25000.00),
(10, 'nn', 'jjj', '2017-03-23', 252000.00),
(11, 'food', 'ggxgxg', '2017-03-13', 20014.00),
(12, 'Parking', 'b hvhgh', '2017-03-16', 2000.00),
(13, 'blind donation', 'dddd', '1888-03-23', 302014.00),
(14, 'yftft', 'tf6fr6f', '2017-03-15', 20000.00),
(15, 'for generator', 'For college new generator', '2020-07-04', 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `gid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`gid`, `eventid`, `photo`) VALUES
(19, 2, 'gallery/18593238261.jpg'),
(20, 2, 'gallery/13558239652.jpg'),
(21, 2, 'gallery/5511474653.jpg'),
(22, 2, 'gallery/990964864.jpg'),
(23, 2, 'gallery/12574156645.jpg'),
(24, 2, 'gallery/12399622456.jpg'),
(25, 2, 'gallery/21278389727.jpg'),
(26, 2, 'gallery/3589591498.jpg'),
(27, 2, 'gallery/21298967489.jpg'),
(28, 2, 'gallery/63862852410.jpg'),
(29, 2, 'gallery/174965464611.jpg'),
(30, 2, 'gallery/114248607112.jpg'),
(31, 2, 'gallery/205452639334.jpg'),
(32, 2, 'gallery/33318816036.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `jobid` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `jobdescription` text NOT NULL,
  `salary` varchar(50) NOT NULL,
  `exp_required` varchar(50) NOT NULL,
  `noofvacancy` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `lastdate` date NOT NULL,
  `alumnid` int(11) NOT NULL,
  `keyskils` varchar(350) NOT NULL,
  `job_location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`jobid`, `company`, `jobtitle`, `qualification`, `jobdescription`, `salary`, `exp_required`, `noofvacancy`, `emailid`, `status`, `lastdate`, `alumnid`, `keyskils`, `job_location`) VALUES
(1, 'Infosis', 'Looking for a Software Developer - .NET', '', 'Design and development of software applications on .Net platform and maintaining and supporting multiple projects and deadlines.', ' 1,50,000 - 2,50,000', '6.00', 26, 'dddd@gmail.com', 'Active', '2017-02-04', 1, 'Asp.Net, C#, LINK, MVC Framework', 'Bangalore, Mumbai'),
(2, 'Cognizant', 'Clerk', '', 'Clerk works', ' 1,50,000 - 2,50,000', '6.00', 26, 'dddd@gmail.com', 'Active', '2017-02-04', 5, 'Best communication skill', 'Dubai'),
(3, 'Vintech', 'Developer', 'BCA', 'Looking for job', '5000', '5', 25, 'vintexh@gmail.com', 'Active', '2021-01-04', 20, 'BCA', 'Mangalore');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobappln`
--

CREATE TABLE `tbljobappln` (
  `jobapplid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `candidatename` varchar(50) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailid` varchar(15) NOT NULL,
  `applndate` date NOT NULL,
  `resumecopy` varchar(100) NOT NULL,
  `coverletter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobappln`
--

INSERT INTO `tbljobappln` (`jobapplid`, `jobid`, `candidatename`, `contactno`, `emailid`, `applndate`, `resumecopy`, `coverletter`) VALUES
(1, 1, 'suma', '545668', 'shivaniykotian@', '2017-02-07', '16042', 'dfgt'),
(2, 5, 'Sameera', '8976789754', 'swetlan@gmail.c', '2017-02-07', '19985', 'vcxb'),
(3, 3, 'Vedanth', '7894561230', 'vedanth@gmail.c', '2020-11-10', '804985971', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficer`
--

CREATE TABLE `tblofficer` (
  `id` int(11) NOT NULL,
  `locid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblofficer`
--

INSERT INTO `tblofficer` (`id`, `locid`, `postid`, `userid`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(12, 1, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tblpost`
--

CREATE TABLE `tblpost` (
  `postid` int(11) NOT NULL,
  `postname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpost`
--

INSERT INTO `tblpost` (`postid`, `postname`) VALUES
(1, 'Director'),
(2, 'Professor & Head'),
(3, 'Secreatary'),
(4, 'Joint Secreatary'),
(5, 'Treasurer');

-- --------------------------------------------------------

--
-- Table structure for table `tblregion`
--

CREATE TABLE `tblregion` (
  `locid` int(11) NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregion`
--

INSERT INTO `tblregion` (`locid`, `location`) VALUES
(1, 'UAE'),
(9, 'Bangalore'),
(10, 'Delhi'),
(11, 'South East Asia'),
(12, 'Saudi Arabia'),
(14, 'Malasya');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `staffname` varchar(150) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `dateof_join` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `staff_pass` varchar(20) NOT NULL,
  `staffphoto` varchar(200) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `staffname`, `qualification`, `designation`, `dob`, `dateof_join`, `address`, `contactno`, `emailid`, `staff_pass`, `staffphoto`, `status`) VALUES
(1, 'Prakash Acharya', 'MSc,MCA', 'Asst. Proffessor', '0000-00-00', '2012-06-06', 'Brahmavar', '9874561230', 'prakash@gmail.com', 'aaa', '8117bitnami.ico', 'Active'),
(2, 'Praveen', 'MSc', 'HOD', '0000-00-00', '2010-03-03', 'Kaup', '7894561230', 'praveen@gmail.com', 'bbb', '220909_1.jpg', 'Disapproved'),
(3, 'Akhil', 'MSc,Phd', 'Dean', '0000-00-00', '2015-05-02', 'Bangalore', '8796541230', 'akhil@yahoo.com', 'ccc', '31163tea2.jpg', 'Active'),
(4, 'Divyashree', 'MSc Mathematics', 'Lecturer', '0000-00-00', '2013-05-05', 'Bangalore', '9638527410', 'divya@technopulse.com', '654', '32472te.jpg', 'Active'),
(5, 'Sushma', 'Msc', 'Asst.Professor', '0000-00-00', '2014-01-12', 'Kaup', '8541287456', 'sushma@gmail.com', 'aaa', '20606ab.jpg', 'Active'),
(6, 'DivYashree', 'BE', 'Software Developer', '1987-11-07', '2015-01-01', 'milagress,Bangalore', '8745963210', 'divyashree@gmail.com', 'aa', '821no-user-image.png', 'Disapproved'),
(7, 'Thara', 'bcom', 'Develoepr', '1991-11-28', '2020-06-29', '#404 vilalt,\r\nkarnapur', '9876543212', 'kala@gmail.com', 'q1w2e3r4', '1091789326teacher.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbltraining`
--

CREATE TABLE `tbltraining` (
  `trainingid` int(11) NOT NULL,
  `topicname` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `courseid` int(11) NOT NULL,
  `trainingdate` date NOT NULL,
  `duration` int(11) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `participationdate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `refcontactname` varchar(100) NOT NULL,
  `refcontactno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltraining`
--

INSERT INTO `tbltraining` (`trainingid`, `topicname`, `description`, `courseid`, `trainingdate`, `duration`, `venue`, `participationdate`, `status`, `refcontactname`, `refcontactno`) VALUES
(1, 'Digita India', 'Seminar competition', 1, '2017-01-04', 2, 'Shirva ', '2017-01-02', 'Active', 'Praveen', '9658963325'),
(2, 'Smart City', 'General session', 2, '2017-02-22', 2, 'Banagalore', '2017-02-20', 'Active', 'Akhil', '9856147785'),
(3, 'IT', 'Information Technology', 1, '2017-02-15', 2, 'shirva', '2017-02-10', 'Active', 'santhosh', '9536587945'),
(4, 'Bridge course', 'A real world course', 1, '2017-03-28', 2, 'Shirva', '2017-03-25', 'Active', 'Santhosh', '9658963325'),
(5, 'computer ', 'all cs students', 1, '2017-03-25', 2, 'shirva', '2017-03-20', 'Active', 'ranjith', '9658471125'),
(6, 'Bridge course', 'For BCA students', 1, '2017-03-02', 2, 'Shirva', '2017-03-01', 'Active', '965874112', '98564512569245'),
(7, 'Make in India', 'Make in India', 3, '2017-03-02', 2, 'Mumbai', '2017-03-01', 'Active', 'sassas', 'sxasa'),
(8, 'Alumni Training - Fight For Peacefightforpeace.net › alumni-training ALUMNI TRAINING. Taking it global and generating impact further afield.  Alumni access - Alumni', 'Online platform for multilateral diplomacy course alumni ... Realizing the Future We Want - QCPR Training Series Module', 7, '2020-07-05', 0, 'Malleshwaram', '2020-12-31', 'Active', 'Raja', '9876543211');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrainingappln`
--

CREATE TABLE `tbltrainingappln` (
  `tpid` int(11) NOT NULL,
  `trainid` int(11) NOT NULL,
  `alimniid` int(11) NOT NULL,
  `confirmdate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltrainingappln`
--

INSERT INTO `tbltrainingappln` (`tpid`, `trainid`, `alimniid`, `confirmdate`, `status`) VALUES
(1, 4, 1, '2017-03-02', 'Selected'),
(2, 5, 1, '2017-03-02', 'Denied'),
(3, 5, 7, '2017-03-09', 'Selected'),
(4, 8, 16, '2020-07-04', 'Selected');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` int(11) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pyear` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `message` text NOT NULL,
  `upass` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `location` int(11) NOT NULL,
  `membershiptype` varchar(15) NOT NULL,
  `mfee` float(10,2) NOT NULL,
  `paytype` varchar(15) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `cardno` varchar(16) NOT NULL,
  `cvv` int(4) NOT NULL,
  `expmonth` int(11) NOT NULL,
  `expyear` int(11) NOT NULL,
  `reg_date` date NOT NULL,
  `designation` varchar(25) NOT NULL,
  `organization` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userid`, `gender`, `name`, `dob`, `emailid`, `phone`, `pyear`, `courseid`, `occupation`, `address`, `message`, `upass`, `status`, `location`, `membershiptype`, `mfee`, `paytype`, `bank`, `cardno`, `cvv`, `expmonth`, `expyear`, `reg_date`, `designation`, `organization`) VALUES
(1, 'Male', 'Santhosh marcel', '1997-01-19', 'msanthu78@gmail.com', '9535137787', 2017, 1, 'Manager', 'Belthangady', 'Good', '321', 'Active', 1, 'Standard', 1000.00, 'Debitcard', 'canara', '4452211123451234', 111, 1, 2019, '2017-03-27', '', ''),
(2, 'Male', 'Prashanth', '1997-02-10', 'prashanth@yahoo.com', '9658475521', 2017, 1, 'CEO apple', 'Kallatthoor', 'Good', '987', 'Active', 1, 'Premium', 10.00, 'Debitcard', 'Canara', '2568479856142568', 654, 9, 2019, '2017-01-03', '', ''),
(3, 'Male', 'Ranjith', '1996-11-12', 'ranjithacharya102@gmail.com', '8970262256', 2017, 1, 'Proffesor', 'Bantakallu', 'Nice\r\n', '963', 'Disapproved', 2, 'Standard', 1000.00, 'Debitcard', 'Vijaya', '6547821459654781', 658, 5, 2020, '2017-01-03', '', ''),
(4, 'Male', 'Kishore', '1996-05-06', 'kishore@rediffmail.com', '9632145665', 2016, 2, 'Technician', 'Bola', 'welcome', '852', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'SBI', '4569321589647520', 654, 4, 2017, '2017-01-03', '', ''),
(5, 'Male', 'Akash', '1999-04-02', 'akash@yahoo.com', '9625844756', 2019, 2, 'Clerk', 'MoodBidre', 'Nice One', '654', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'Canara', '4785961258749658', 214, 8, 2020, '2017-01-03', '', ''),
(6, 'Female', 'kajal', '1996-03-27', 'kajal@gmail.com', '9035788611', 2017, 1, 'analyst', 'hubli', 'hello', '123', 'Disapproved', 1, 'Standard', 1000.00, 'Debitcard', 'canara', '3456789098765434', 123, 9, 2020, '2017-01-03', '', ''),
(8, 'Male', 'Pearel', '1996-03-02', 'peareal@gmail.com', '145', 2014, 3, 'Engineer', 'Belman', 'Good', '321', 'Active', 2, 'Premium', 10.00, 'Debitcard', 'sbi', '9658421457865231', 547, 10, 2018, '2017-01-03', '', ''),
(9, 'Male', 'Francis', '1995-06-05', 'francis@yahoo.com', '965478124', 2013, 3, 'Cleark', 'Mangalore', 'Nice', '963', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'sbi', '7895684751254789', 654, 12, 2017, '2017-01-03', '', ''),
(10, 'Male', 'pra123@', '2017-03-24', 'kap@gmail.com', '7894561230', 2017, 1, 'searching job', 'fdff', 'aaaa', 'qqq', 'Active', 13, 'Standard', 1000.00, 'Debitcard', 'ssss', '1122334455667788', 111, 1, 2018, '2017-01-03', '', ''),
(11, 'Male', 'suresh raina', '1996-03-01', 'raina@gmail.com', '9568745523', 2012, 6, 'manager', 'jhggc', 'vf', 'aaaa', 'Active', 9, 'Standard', 1000.00, 'Debitcard', 'ss', '1122336655441144', 123, 3, 2018, '2017-01-03', '', ''),
(12, 'Female', 'raksha', '1997-11-05', 'raksha@gmail.com', '9900599005', 2014, 1, 'Cleark', 'udupi', 'asdfghjkl', '111', 'Active', 13, 'Standard', 1000.00, 'Debitcard', 'sbi', '1234561234561234', 123, 7, 2017, '2017-01-03', '', ''),
(13, 'Male', 'aaaa', '2017-03-31', 'aaa@gmail.com', '3652568975', 2014, 6, 'aaa', 'aaa', '', '123', 'Inactive', 10, 'Standard', 1000.00, 'Debitcard', 'aa', '4556632569652314', 123, 4, 2017, '2017-01-03', '', ''),
(14, 'Male', 'SAGAR NAIR', '1990-03-31', 'nairsagar777@gmail.com', '7022468953', 2017, 1, 'analyst', 'JANAKI NILAYA,KK SHETTY COMPOUND ATTAVAR', '', 'aaa', 'Active', 11, 'Standard', 1000.00, 'Debitcard', 'canara', '9874563210254569', 111, 1, 2019, '2017-03-31', '', ''),
(16, 'Female', 'preethika', '1986-07-24', 'preethika@gmail.com', '9876543211', 2016, 8, 'developer', '3rd floor', 'Make for ', 'q1w2e3r4', 'Active', 1, 'Standard', 1000.00, 'Debitcard', 'icici', '1234567890123456', 483, 1, 2024, '2020-07-05', '', ''),
(17, 'Male', 'krishnan', '1990-12-05', 'krishnanwac@gamil.com', '9994730613', 2011, 10, 'software anlast', 'f.12.tnau.com', 'I am passout in 2011 batch', 'krishnan', 'Active', 10, '', 0.00, '', '', '', 0, 0, 0, '2020-07-21', '', ''),
(18, 'Male', 'krish', '1990-04-03', 'krishnanarise@gmail.com', '9994730613', 2011, 10, 'software admin', 'adff', 'adff', 'krishnan', 'Active', 13, '', 0.00, '', '', '', 0, 0, 0, '2020-07-22', '', ''),
(19, 'Male', 'Jaakanthan M', '1982-06-06', 'jai.dbt@gmail.com', '9843696114', 2015, 13, 'AP', 'TNAU', 'Test', 'test', 'Active', 10, '', 0.00, '', '', '', 0, 0, 0, '2020-07-23', '', ''),
(20, 'Male', 'Pavan bolar', '1989-10-29', 'pavanbolar@gmail.com', '7894561230', 2015, 12, 'Agri', '5th floor,\r\nCity light,\r\nMilagris road,\r\nMangalore', 'This is new technology', 'q1w2e3r4/', 'Active', 9, '', 0.00, '', '', '', 0, 0, 0, '2020-11-10', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tblalumnimeet`
--
ALTER TABLE `tblalumnimeet`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblalumniphoto`
--
ALTER TABLE `tblalumniphoto`
  ADD PRIMARY KEY (`photoid`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `tblfund`
--
ALTER TABLE `tblfund`
  ADD PRIMARY KEY (`fundid`);

--
-- Indexes for table `tblfundinterest`
--
ALTER TABLE `tblfundinterest`
  ADD PRIMARY KEY (`fundinvestid`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `tbljobappln`
--
ALTER TABLE `tbljobappln`
  ADD PRIMARY KEY (`jobapplid`);

--
-- Indexes for table `tblofficer`
--
ALTER TABLE `tblofficer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpost`
--
ALTER TABLE `tblpost`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblregion`
--
ALTER TABLE `tblregion`
  ADD PRIMARY KEY (`locid`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `tbltraining`
--
ALTER TABLE `tbltraining`
  ADD PRIMARY KEY (`trainingid`);

--
-- Indexes for table `tbltrainingappln`
--
ALTER TABLE `tbltrainingappln`
  ADD PRIMARY KEY (`tpid`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblalumnimeet`
--
ALTER TABLE `tblalumnimeet`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblalumniphoto`
--
ALTER TABLE `tblalumniphoto`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblfund`
--
ALTER TABLE `tblfund`
  MODIFY `fundid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblfundinterest`
--
ALTER TABLE `tblfundinterest`
  MODIFY `fundinvestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbljobappln`
--
ALTER TABLE `tbljobappln`
  MODIFY `jobapplid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblofficer`
--
ALTER TABLE `tblofficer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpost`
--
ALTER TABLE `tblpost`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblregion`
--
ALTER TABLE `tblregion`
  MODIFY `locid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltraining`
--
ALTER TABLE `tbltraining`
  MODIFY `trainingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltrainingappln`
--
ALTER TABLE `tbltrainingappln`
  MODIFY `tpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
