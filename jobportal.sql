-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 07:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 3466287149, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-02-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Applydate`, `Status`, `ResponseDate`) VALUES
(1, 1, 6, '2023-02-25 16:28:17', 'Hired', '2023-02-25 16:28:17'),
(2, 2, 3, '2024-04-19 19:17:08', NULL, NULL),
(3, 6, 6, '2024-04-23 00:16:09', NULL, NULL),
(4, 3, 5, '2024-04-23 00:17:55', NULL, NULL),
(5, 7, 6, '2024-04-23 01:23:40', 'Hired', '2024-04-23 01:23:40'),
(6, 10, 6, '2024-04-23 13:11:03', 'Rejected', '2024-04-23 13:11:03'),
(7, 9, 6, '2024-04-23 13:45:00', 'Sort Listed', '2024-04-23 13:45:00'),
(8, 11, 6, '2024-04-23 14:29:13', 'Hired', '2024-04-23 14:29:13'),
(9, 12, 6, '2024-04-23 15:09:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'HR', 'Human Resource', '2023-02-25 10:54:19', NULL, 0),
(2, 'Product Manager', 'Product Manager', '2023-02-25 10:54:42', NULL, 0),
(3, 'IT', 'Information Technology', '2023-02-25 10:55:08', NULL, 0),
(4, 'Operations', 'Operations', '2023-02-25 10:55:31', NULL, 0),
(5, 'Digital Marketing', 'Digital Marketing', '2023-02-25 10:55:47', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `ClgorschName` varchar(200) DEFAULT NULL,
  `PassingYear` varchar(200) DEFAULT NULL,
  `Stream` varchar(200) DEFAULT NULL,
  `CGPA` decimal(2,0) DEFAULT NULL,
  `Percentage` decimal(4,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `Qualification`, `ClgorschName`, `PassingYear`, `Stream`, `CGPA`, `Percentage`, `CreationDate`) VALUES
(1, 1, '10th std', 'Delhi Public School', '2012', '', 8, 0, '2023-02-25 13:47:15'),
(2, 1, '12th std', 'Delhi Public Scho0l', '2014', 'PCM', 8, 80, '2023-02-25 13:47:46'),
(3, 1, 'Graduation', 'Lovely Profession university', '2017', 'BCA', 7, 75, '2023-02-25 13:48:35'),
(4, 2, '12th std', 'ABC', '2017', '', 9, 90, '2024-04-19 19:16:06'),
(5, 7, 'Graduation', 'University of Houston', '2025', 'Data Science', 4, 100, '2024-04-23 01:16:11'),
(6, 10, 'Post graduate', 'University of Houston', '2025', 'Data Science', 4, 100, '2024-04-23 13:03:57'),
(7, 11, 'Post graduate', 'University of Houston', '2025', 'Data Science', 4, 100, '2024-04-23 14:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `ConcernPerson`, `EmpEmail`, `EmpPassword`, `CompnayName`, `CompanyTagline`, `CompnayDescription`, `CompanyUrl`, `CompnayLogo`, `noOfEmployee`, `industry`, `typeBusinessEntity`, `lcation`, `establishedIn`, `RegDtae`, `LastUpdationDate`, `Is_Active`) VALUES
(1, 'Ram', 'ram@tcs.com', '$2y$12$3bz8aAs.BOMuE4GwAKEDgOXUzw4pI0HMvqVcKieLlMI1I77i/LCeO', 'Tata Consultancy Services', 'TCS is here to make a difference through technology', 'Tata Consultancy Services is an Indian multinational information technology services and consulting company with its headquarters in Mumbai. It is a part of the Tata Group and operates in 150 locations across 46 countries. In July 2022, it was reported that TCS had over 600,000 employees worldwide.', 'https://www.tcs.com/', 'b64810fde7027715e614449aff1d595f.png', '66000', 'Information Technology', 'Listed Company', 'Mumbai', '1968', '2024-03-31 11:25:21', '2024-04-23 14:38:23', 1),
(2, 'Rahul Yadav', 'rahul.swiggy@test.com', '$2y$12$xCzQ4O7tpMhCNhsSfEvDeOHoFViiM6PwfHrx5SSCmWX.aDneml33e', 'Swiggy', 'Delivering happiness at your doorstep! - StartupTalky', 'Swiggy is an Indian online food ordering and delivery platform. Founded in July 2014, Swiggy is based in Bangalore and operates in 500 Indian cities as of September 2021. Besides food delivery, Swiggy also provides on-demand grocery deliveries under the name Instamart, and a same-day package delivery service called Swiggy Genie.', 'https://www.swiggy.com/', '13ba0973744cc42120b7574aa3edd430.png', NULL, NULL, NULL, NULL, NULL, '2024-03-31 11:56:57', '2024-03-31 11:56:57', 1),
(3, 'Lucy Nwosu', 'lucy@amazon.com', '$2y$12$YJzbcrYb8dq8Gg5G8cxuM.KlboZoVxgmmWpc3xtJONkRJHRwqNLIq', 'Amazon.com Inc', 'Work hard, Have fun, Make history. ', 'Amazon.com, Inc is an American multinational technology company focusing on e-commerce, cloud computing, online advertising, digital streaming, and artificial intelligence. It has been referred to as \"one of the most influential economic and cultural forces in the world\" and is one of the world\'s most valuable brands. It is one of the Big Five American information technology companies, alongside Alphabet (Google), Apple, Meta (Facebook), and Microsoft.', 'https://www.amazon.com', '37e2b52f19da778fba43ab3c1897f840.png', '', 'E-Commerce', '', 'California US', '1994', '2024-03-31 12:08:28', '2024-04-23 14:40:16', 1),
(4, 'Vikas', 'hr@tigeranalytics.com', '$2y$12$wm6GmyMnewvYn6gIRYcncejdUTiFVGz5vJ.xFS92dL72q6L7DOoQ.', 'Tiger Analytics', 'IT consulting and services', 'Company that deals with Data Science and AI based applications.', '', '7939cd8961e309888ab7605a069b8ea5.jpg', NULL, NULL, NULL, NULL, NULL, '2024-04-24 04:56:02', '2024-04-24 04:56:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Ctc` decimal(10,0) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblexperience`
--

INSERT INTO `tblexperience` (`ID`, `UserID`, `EmployerName`, `EmployementType`, `Designation`, `Ctc`, `FromDate`, `ToDate`, `Skills`, `CreationDate`) VALUES
(1, 1, 'TCS', 'Full Time', 'Software Developer', 100000, '2017-08-01', '2022-12-31', '', '2023-02-25 13:51:46'),
(2, 2, 'TCS', 'Full time', 'System Analyst', 50000, '2021-07-01', '2023-08-01', '', '2024-04-19 19:16:52'),
(3, 7, 'DXC Technologies', 'Full time', 'System Administrator', 800000, '2022-06-22', '2023-07-18', '', '2024-04-23 01:18:05'),
(4, 10, 'UH', 'Full Time', 'Teaching assistant', 1200, '2023-07-23', '2024-04-23', '', '2024-04-23 13:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `jobTitle`, `jobType`, `salaryPackage`, `skillsRequired`, `experience`, `jobLocation`, `jobDescription`, `JobExpdate`, `postinDate`, `updationDate`, `isActive`) VALUES
(1, 1, 'IT', 'Full Stack Developer', 'Full Time', '100000-150000', 'Linux, .net, JAVA, SQL, ORACLE', '2-5', 'California', 'We are looking for a Full Stack Developer to produce scalable software solutions. You’ll be part of a cross-functional team that’s responsible for the full software development life cycle, from conception to deployment.\r\n\r\nAs a Full Stack Developer, you should be comfortable around both front-end and back-end coding languages, development frameworks and third-party libraries. You should also be a team player with a knack for visual design and utility.', '2024-07-31', '2024-02-25 12:31:17', '2024-04-22 22:20:11', 1),
(2, 1, 'HR', 'Junior HR', 'Full Time', '70000-80000', 'Communication skills,   Administrative expert,HR strategy creation & execution ', '1-2', 'Dallas, TX', 'We are looking for a skilled HR Officer who will recruit, support and develop talent through developing policies and managing procedures. You will be responsible for administrative tasks and you’ll contribute to making the company a better place to work.\r\n\r\nIf you are passionate about HR and highly efficient, give us a chance to meet you. We expect you to have knowledge of various HR functions. We want to see a committed and approachable individual and be impressed with your character and skills.\r\n\r\nThe goal will be to provide excellent assistance and support to employees and managers.', '2024-09-02', '2024-03-25 11:36:34', NULL, 1),
(3, 1, 'Digital Marketing', 'SEO Executive', 'Internship', '4000-6000', 'Keyword research and clusterization, Managing SEO content', '1', 'Austin', 'Evaluation and analysis of client sites that need improvisation and optimization\r\nIdentifying strong keywords to get the most valuable traffic\r\nPreparing comprehensive strategy reports\r\nOperating PPC campaigns\r\nMaintaining powerful SEO content websites, blogs, and social media accounts\r\nEnriching websites and online content with effective keywords\r\nConverting visitors through strong calls-to-action\r\nKeeping a tab on SEO techniques and keywords employed by competitors', '2024-02-29', '2024-03-25 11:43:36', NULL, 1),
(4, 2, 'Operations', 'Catalogue Executive', 'Part Time', '20000-30000', 'product descriptions, marketing,  online sales,  sourcing,  pricing1-3', '1-3', 'Chicago', '. Listing products on e-commerce portals like Amazon, Flipkart, Myntra etc within timelines\r\n 2. Write engaging and descriptive product descriptions to improve conversions\r\n 3. Ensure that the catalog contains accurate, comprehensive and high-quality product information\r\n 4. Co-ordinate with external photography studios for catalog shoots\r\n 5. Develop relationships with e-commerce portal POCs\r\n 6. Coordinate with various internal teams like Sourcing, eCommerce, Marketing, Warehouse teams\r\n 7. Ensure that ongoing offers / promotions etc are accurately reflected on online marketplaces\r\n 8. Track KPIs of products to ensure visibility and sales\r\n 9. Identify opportunities and trends in market and highlight them internally ', '2024-07-31', '2024-03-25 11:59:13', NULL, 1),
(5, 2, 'Product Manager', 'Asst Product Manager', 'Full Time', '100000-200000', 'Product Development, PowerPoint,  Market Research,Product Management', '2-5', 'Atlanta', 'The role of an assistant product manager is to support the product manager in improving an existing product’s marketing campaigns or developing new products fit for the company. They work under the supervision of a product manager, creating marketing strategies for a specific product in the market. Assistant product managers are responsible for establishing the marketing policies of a company.\r\nSome of the basic duties of an assistant product manager include monitoring tasks involved in marketing, sales and production; supporting the product manager in decision making, and ensuring that the quality and strengths of the product are not compromised. Assistant product managers are the ones who develop strategies to promote a product; help in identifying the target audience of a product; and check the efficiency of the implemented product development and marketing strategies. They also supervise the production, distribution and inventory of a product and analyze all aspects of marketing and production such as analyzing competitors and statistical reports.', '2024-09-30', '2024-03-25 12:01:49', NULL, 1),
(6, 3, 'IT', 'Data Scientist', 'Full Time', '200000-300000', 'Artificial Intelligence (AI), Data Analysis, Data Visualization, Natural Language Processing (NLP), Data Engineering.', '3-6', 'Houston', 'We are searching for a Full Stack Developer who can carry out web development and design tasks. You need to work with a website\'s or application\'s front, and back ends. Problem-solving and coordination with the project\'s core technology teams are among the tasks. You ought to be able to create complete platforms, including clients, servers, and databases. A PHP full stack developer job description provides details about the skills needed by a PHP full stack developer, along with proficiency in PHP. \r\n\r\nA full-stack developer specializes in back-end and front-end coding when creating applications, websites, and software. This is one of the main reasons to become a Full Stack Developer and why full-stack developers are highly sought-after today. Their skillset is incredibly diverse, versatile, and rich, making them significantly valuable to clients.  ', '2024-11-15', '2024-03-25 12:11:43', NULL, 1),
(7, 3, 'HR', 'HR', 'Temporary', '100000-200000', 'HR knowledge and expertise, Good presentation skills, Multitasking, Leadership ability', '2-4', 'New York', 'We are looking for Aggressive Female HR Recruiter and Manager, with full cycle recruiting experience, to advertise, screen, select and hire qualified and suitable personnel to fill our job openings.\r\nThe goal is to attract top talent from Industry, gain competitive advantage and Fuel Company’s growth.\r\nResponsibilities\r\nDevelop and update job descriptions and job specifications\r\nDesign and implement overall recruiting strategy\r\nPrepare and post jobs to appropriate job boards.\r\nSource and attract candidates by using databases, social media etc\r\nScreen candidate’s resumes and job applications\r\nConduct interviews using various reliable personnel selection tools/methods to filter candidates within schedule\r\nAssess applicants’ relevant knowledge, skills, soft skills, experience and aptitudes\r\nOnboard new employees in order to become fully integrated\r\nMonitor and apply HR recruiting best practices\r\nProvide analytical and well documented reports to the rest of the team\r\nAct as a point of contact and build influential candidate relationships during the selection process\r\n\r\nRequirements\r\nRecruiting experience for 2+ years.\r\nSolid ability to conduct different types of interviews (structured, competency based, stress etc)\r\nHands on experience with various selection processes ( phone interviewing, reference check etc)\r\nAbility to organize assessment centers\r\nExcellent communication and interpersonal skills\r\nStrong decision making skills', '2024-10-31', '2024-03-25 12:14:56', '2024-03-25 15:44:54', 1),
(8, 3, 'IT', 'Machine Learning Engineer', 'Full Time', '$150000-250000', 'Machine Learning', '1-2', 'Arizona', 'Design machine learning systems\r\nResearch and implement appropriate ML algorithms and tools\r\nDevelop machine learning applications according to requirements\r\nSelect appropriate datasets and data representation methods\r\nRun machine learning tests and experiments\r\nPerform statistical analysis and fine-tuning using test results\r\nTrain and retrain systems when necessary\r\nExtend existing ML libraries and frameworks', '2024-05-11', '2024-04-24 04:35:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `Resume`, `AboutMe`, `ProfilePic`, `Skills`, `RegDate`, `LastUpdationDate`, `IsActive`, `DateOfBirth`) VALUES
(2, 'karthikeyan Ravichandran ', 'karthiknmsd37@gmail.com', 3466287149, '$2y$12$a3JUb.ZB.TVM7B1aXt377.hbtJ8UrQhVPXAa/Cwb98KOCo2eYT.rW', '2e1d0d500782e6ee62df61b356d53dc81713554048.pdf', 'Master\'s Student', NULL, 'Python, powerBI', '2024-04-19 19:14:08', '2024-04-21 15:06:02', 1, '2000-06-03'),
(3, 'Amaan Syed', 'amaan@gmail.com', 8325203216, '$2y$12$F2JAchkRSmc/Wpo.jJnrPe9/8xKq/FDd46tl9GMAXHNc0LTWptwAi', '1723809e4630ffe037ab8e4e684570311713709962.pdf', NULL, NULL, NULL, '2024-04-21 14:32:42', NULL, 1, NULL),
(5, 'Moiz Syed', 'moiz@gmail.com', 3476478462, '$2y$12$ZJpHThdt4dxR5b50uZWBD.ojcqBbgkbeE6o1nwVzG2keROo70tD36', '12df79c087db8b5501862b352481c2791713713592.pdf', NULL, NULL, NULL, '2024-04-21 15:33:12', NULL, 1, '1998-03-13'),
(6, 'Pavani Daggula', 'pavani@uh.edu', 8607127146, '$2y$12$oscBcsWXzaF/q4dUexQbP.F/KJRMoo8JYF5MUhwYzGhaIXr394vUq', 'ce834ce2d22d3cab5e5952e3ef68839d1713831288.pdf', NULL, NULL, NULL, '2024-04-23 00:14:48', NULL, 1, '1998-10-18'),
(7, 'Suvarchala Ananthula', 'suvvu@gmail.com', 8328704251, '$2y$12$mP9JtBr9Mrhpx2TjafptCuktH/7xsrmebIRed4K4bD12f65Ex6gni', '1723809e4630ffe037ab8e4e684570311713834856.pdf', 'Data Science Master\'s Graduate', NULL, '', '2024-04-23 01:14:16', '2024-04-23 01:15:17', 1, '2000-02-14'),
(9, 'Sai Supraja', 'sai@gmail.com', 3466382828, '$2y$12$6lPe.zEEl3hBxISKJiNrneqUs0YgsnCKSl9XNh3eqgXugeXLBC/0e', 'ce834ce2d22d3cab5e5952e3ef68839d1713875799.pdf', NULL, NULL, NULL, '2024-04-23 12:36:39', NULL, 1, '2024-09-12'),
(10, 'Sai Krishna', 'krish@uh.edu', 3536462891, '$2y$12$gjU38AODvYASbKfOIyZmb.2H8fLfmDaYTq1vrN7Wtx2Knlo.q12BC', '1db4109368a9d5d6ca589c1ba9e412721713876945.pdf', 'Data Science Graduate', NULL, 'Machine Learning, Deep Learning', '2024-04-23 12:55:45', '2024-04-23 13:18:12', 1, '2015-07-15'),
(11, 'Vishnu', 'vishnu@gmail.com', 3466382929, '$2y$12$6ikmBnoWV9q/QZPjhO4lw.KwdnK1BQ8PLv2i12P2uZI1jmhGUX336', '1db4109368a9d5d6ca589c1ba9e412721713882090.pdf', 'Data Science graduate', NULL, 'NLP, Computer Vision', '2024-04-23 14:21:30', '2024-04-23 14:23:16', 1, '2004-02-23'),
(12, 'Azhar', 'azhar@uh.edu', 4545457890, '$2y$12$bf2ljVz.oim3dPRmkiwFpOuFP7qDN4lyMcU9smBuTunoTVIsFIrqq', '1db4109368a9d5d6ca589c1ba9e412721713884911.pdf', NULL, NULL, NULL, '2024-04-23 15:08:31', NULL, 1, '2000-11-22'),
(13, 'Aishwarya', 'aishwarya@gmail.com', 3466286735, '$2y$12$NlJpqNQ2hfntyR1sWjHRE.Gm3.RXTWIhDkkPyRwv3JFirIdg/M6mK', 'd7e2c4abc25d79d45a2b8e185c8202591713886789.pdf', NULL, NULL, NULL, '2024-04-23 15:39:49', NULL, 1, '2000-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `JobID`, `UserID`, `Message`, `Status`, `ResponseDate`) VALUES
(1, 6, 1, 'You are sort listing for the next round.', 'Sort Listed', '2023-02-25 14:12:07'),
(2, 6, 1, 'Congratulations,\r\nYou are hired\r\n', 'Hired', '2023-02-25 16:28:17'),
(3, 6, 7, 'Candidate satisfies the job requirements.', 'Hired', '2024-04-23 01:23:40'),
(4, 6, 10, 'Thanks for your interest in joining Amazon, we regret to inform that we are moving with other candidates at this time.', 'Rejected', '2024-04-23 13:11:03'),
(5, 6, 9, 'Waiting', 'Sort Listed', '2024-04-23 13:45:00'),
(6, 6, 11, 'Hired', 'Hired', '2024-04-23 14:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div class=\"iw-heading  style1 vc_custom_1511523196571 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 35px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px; font-weight: 600;\">Our job portal creates an opportunity for both job seekers and organizations to embrace an easy employment process. Users can register for free on this job portal and they can receive different job posting and updates that is related to their career search or their specific field.</div></div><div class=\"iw-heading  style1 vc_custom_1511523484678 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 30px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px;\">As an organization, you can make use of our job portal to post different job openings as well as use them for searching for the most deserving candidates for vacancies. This helps to save time and help streamline the right candidate for a particular job.<br style=\"outline: none; box-sizing: border-box;\">Who can use our online job portal?<br style=\"outline: none; box-sizing: border-box;\">Our job portal can be used by both organization to post job openings and job seekers to find the job of their choice. Our job portal creates a platform for people seeking for job opportunities as well as corporations seeking best candidates for job openings, to come together.<br style=\"outline: none; box-sizing: border-box;\">At www.job-here.com, we are one of the best job sites and we also have provisions that make it possible for them to collect the required knowledge and background of each company or candidate. All the jobs are categorically organized in groups related to each field and industry. Job portals, also known as Career portals have aided numerous job seekers get suitable work and given a boost to their career growth.<br style=\"outline: none; box-sizing: border-box;\">So do not hesitate to explore your career opportunities with our job portal and give your career the elevation that you have always been waiting for.</div></div>', '2020-06-05 12:18:06', 0, '2020-06-05 11:00:55'),
(2, 'contactus', 'Contact Us', '8450 Cambridge Street, Houston, Texas 77204', 'info@gmail.com', 3466287149, '2024-04-21 14:30:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
