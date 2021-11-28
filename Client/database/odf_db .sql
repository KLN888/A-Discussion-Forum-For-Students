-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 02:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odf_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `invitation_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `admin_pic` varchar(255) NOT NULL,
  `ad_pic_src` varchar(255) NOT NULL,
  `employment` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `admin_date_time` datetime NOT NULL,
  `validation_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `approve` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `first_name`, `last_name`, `education`, `password`, `invitation_code`, `admin_pic`, `ad_pic_src`, `employment`, `address`, `admin_date_time`, `validation_code`, `active`, `approve`) VALUES
(1, 'abc@gmail.com', 'Lakesh', 'Kumar', 'B.Tech', '827ccb0eea8a706c4c34a16891f84e7b', '12376', '', '', 'B.Tech', 'Malibu', '2021-11-25 19:40:23', '43251', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_request`
--

CREATE TABLE `admin_request` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `invitation_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `employment` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `admin_date_time` datetime NOT NULL,
  `validation_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `approve` tinyint(4) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `a_no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `pdf_src` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `video_src` varchar(255) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `a_date_time` datetime NOT NULL,
  `a_user_id` int(11) NOT NULL,
  `q_no` int(11) NOT NULL,
  `a_subject_id` int(11) NOT NULL,
  `a_a` tinyint(4) NOT NULL DEFAULT 0,
  `a_s` tinyint(4) NOT NULL DEFAULT 0,
  `a_q` tinyint(4) NOT NULL DEFAULT 0,
  `user_approve` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`a_no`, `image`, `img_src`, `pdf`, `pdf_src`, `video`, `video_src`, `answer`, `a_date_time`, `a_user_id`, `q_no`, `a_subject_id`, `a_a`, `a_s`, `a_q`, `user_approve`, `status`) VALUES
(14, '', 'images/', '', 'pdf/', '', 'videos/', '                     TCP-Transfer Control Protocol\r\nTCP uses a congestion window and a congestion policy that avoid congestion. Previously, we assumed that only the receiver can dictate the sender&rsquo;s window size. We ignored another entity here, the network. If the network cannot deliver the data as fast as it is created by the sender, it must tell the sender to slow down. In other words, in addition to the receiver, the network is a second entity that determines the size of the sender&rsquo;s window.\r\n                 ', '2021-11-26 18:57:34', 3, 30, 17, 1, 1, 1, 1, 'read'),
(18, '', 'images/', '', 'pdf/', '', 'videos/', '                     \r\n                 Congestion causes choking of the communication medium. When too many packets are displayed in a method of the subnet, the subnet\'s performance degrades. Hence, a network\'s communication channel is called congested if packets are traversing the path and experience delays mainly over the path\'s propagation delay.\r\n\r\nLeaky Bucket\r\nThe leaky bucket algorithm discovers its use in the context of network traffic shaping or rate-limiting. The algorithm allows controlling the rate at which a record is injected into a network and managing burstiness in the data rate.\r\n\r\nA leaky bucket execution and a token bucket execution are predominantly used for traffic shaping algorithms. This algorithm is used to control the rate at which traffic is sent to the network and shape the burst traffic to a steady traffic stream.\r\n\r\nThe figure shows the leaky bucket algorithm', '2021-11-26 20:22:06', 1, 30, 17, 1, 1, 1, 1, 'read'),
(19, '', 'images/', '', 'pdf/', '', 'videos/', '                     \r\n                 Queues are a type of container adaptors which operate in a first in first out (FIFO) type of arrangement. Elements are inserted at the back (end) and are deleted from the front. Queues use an encapsulated object of deque or list (sequential container class) as its underlying container, providing a specific set of member functions to access its elements.\r\n\r\nempty() &ndash; Returns whether the queue is empty.\r\nsize() &ndash; Returns the size of the queue.\r\nqueue::swap() in C++ STL: Exchange the contents of two queues but the queues must be of same type, although sizes may differ.\r\nqueue::emplace() in C++ STL: Insert a new element into the queue container, the new element is added to the end of the queue.\r\nqueue::front() and queue::back() in C++ STL&ndash; front() function returns a reference to the first element of the queue. back() function returns a reference to the last element of the queue.\r\npush(g) and pop() &ndash; push() function adds the el', '2021-11-26 20:23:20', 1, 32, 14, 1, 1, 1, 1, 'unread'),
(20, '', 'images/', '', 'pdf/', '', 'videos/', '                     \r\n                 In Operating System, process data is loaded in fixed-sized chunks and each chunk is referred to as a page. The processor loads these pages in the fixed-sized chunks of memory called frames. Typically the size of each page is always equal to the frame size. \r\n\r\nA page fault occurs when a page is not found in the memory and needs to be loaded from the disk. If a page fault occurs and all memory frames have been already allocated, then replacement of a page in memory is required on the request of a new page. This is referred to as demand-paging. The choice of which page to replace is specified by page replacement algorithms. The commonly used page replacement algorithms are FIFO, LRU, optimal page replacement algorithms, etc. ', '2021-11-26 20:23:56', 1, 31, 15, 1, 1, 1, 1, 'unread'),
(21, '', 'images/', '', 'pdf/', '', 'videos/', '                     \r\n                 Both Router and Switch are the connecting devices in networking. A router is employed to settle on the littlest path for a packet to achieve its destination. \r\n\r\nThe main objective of router is to connect various networks simultaneously and it works in network layer, whereas the main objective of switch is to connect various devices simultaneously and it works in data link layer. ', '2021-11-26 20:26:18', 8, 34, 17, 1, 1, 1, 1, 'read'),
(22, '', 'images/', '', 'pdf/', '', 'videos/', '                     \r\n                 Semaphores are integer variables that are used to solve the critical section problem by using two atomic operations, wait and signal that are used for process synchronization.\r\n\r\nThere are two main types of semaphores i.e. counting semaphores and binary semaphores. Details about these are given as follows &minus;\r\n\r\nCounting Semaphores\r\nThese are integer value semaphores and have an unrestricted value domain. These semaphores are used to coordinate the resource access, where the semaphore count is the number of available resources. If the resources are added, semaphore count automatically incremented and if the resources are removed, the count is decremented.\r\n\r\nBinary Semaphores\r\nThe binary semaphores are like counting semaphores but their value is restricted to 0 and 1. The wait operation only works when the semaphore is 1 and the signal operation succeeds when semaphore is 0. It is sometimes easier to implement binary semaphores than counting ', '2021-11-26 20:27:18', 8, 33, 15, 0, 1, 1, 1, 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `answer_view_count`
--

CREATE TABLE `answer_view_count` (
  `count_ID` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `answer_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_view_count`
--

INSERT INTO `answer_view_count` (`count_ID`, `view`, `answer_ID`, `user_ID`) VALUES
(55, 1, 14, 8),
(56, 1, 19, 8),
(57, 1, 18, 8),
(58, 1, 14, 3),
(59, 1, 21, 8);

-- --------------------------------------------------------

--
-- Table structure for table `answer_vote`
--

CREATE TABLE `answer_vote` (
  `ans_vote_ID` int(11) NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `answer_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_vote`
--

INSERT INTO `answer_vote` (`ans_vote_ID`, `upvotes`, `downvotes`, `reports`, `answer_ID`, `user_ID`, `date_time`) VALUES
(50, 1, 0, 0, 14, 8, '2021-11-26 20:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `discussion_id` int(11) NOT NULL,
  `communication` varchar(1000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `pdf_src` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `video_src` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `d_user_id` int(11) NOT NULL,
  `q_no` int(11) NOT NULL,
  `a_no` int(11) NOT NULL,
  `d_date_time` datetime NOT NULL,
  `approve` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discussion_vote`
--

CREATE TABLE `discussion_vote` (
  `dis_vote_id` int(11) NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_query`
--

CREATE TABLE `post_query` (
  `query_id` int(11) NOT NULL,
  `user_subject` varchar(255) NOT NULL,
  `user_description` varchar(1000) NOT NULL,
  `user_des_time` datetime NOT NULL,
  `user_des_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `response` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_query`
--

INSERT INTO `post_query` (`query_id`, `user_subject`, `user_description`, `user_des_time`, `user_des_id`, `status`, `response`) VALUES
(8, 'What is C ++?', 'efewf', '2021-11-25 23:49:37', 2, 'read', 0),
(9, 'New Subject', 'Please add the subject A.I to this forum.', '2021-11-27 15:06:58', 3, 'read', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_solution`
--

CREATE TABLE `post_solution` (
  `solution_id` int(11) NOT NULL,
  `admin_subject` varchar(255) NOT NULL,
  `admin_description` varchar(1000) NOT NULL,
  `admin_des_time` datetime NOT NULL,
  `admin_des_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `query_user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_solution`
--

INSERT INTO `post_solution` (`solution_id`, `admin_subject`, `admin_description`, `admin_des_time`, `admin_des_id`, `query_id`, `query_user_id`, `status`) VALUES
(10, 'Welcome', 'Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF.  Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.', '2018-09-15 02:30:31', 0, 0, 5, 'read'),
(11, 'Welcome', 'Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF.  Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.', '2018-09-15 02:30:31', 0, 0, 5, 'unread'),
(12, 'Welcome', 'Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF.  Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.', '2018-09-15 02:30:31', 0, 0, 5, 'unread'),
(13, 'Welcome', 'Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF.  Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.', '2018-09-15 02:30:31', 0, 0, 5, 'unread'),
(14, 'Welcome', 'Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF.  Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.', '2018-09-15 02:30:31', 0, 0, 1, 'read'),
(17, 'Warning', '&lt;p&gt;&lt;span style=&quot;color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #f5f5f5;&quot;&gt;Welcome to O.D.F ! As Manager of ODF, I would like to personally welcome you as a new advertiser. You are another fortunate taking part in the ODF. Our associates are licensed contractors with lifetime of experience in real estate maintenance. We have assigned John Doe to take care of your account. Please feel free to contact our office at +91 9932259291 at any time and we will immediately take care of any problems. Again, thank you for choosing ODF.&lt;/span&gt;&lt;/p&gt;', '2018-11-15 20:39:18', 0, 0, 1, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_no` int(11) NOT NULL,
  `q_subject_id` int(11) NOT NULL,
  `question` varchar(600) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `q_date_time` datetime NOT NULL,
  `q_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `q_user_id` int(11) NOT NULL,
  `a_q` tinyint(4) NOT NULL DEFAULT 0,
  `a_s` tinyint(11) NOT NULL DEFAULT 0,
  `user_approve` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_no`, `q_subject_id`, `question`, `q_date_time`, `q_email`, `q_user_id`, `a_q`, `a_s`, `user_approve`) VALUES
(30, 17, 'What is Congestion Control Protocol?', '2021-11-26 17:53:12', 'xyz@gmail.com', 3, 1, 1, 1),
(31, 15, 'What is belady\'s Anomaly?', '2021-11-26 20:12:38', 'rahuldas@gmail.com', 8, 1, 1, 1),
(32, 14, 'What are Queues?', '2021-11-26 20:13:01', 'rahuldas@gmail.com', 8, 1, 1, 1),
(33, 15, 'What are Semaphores?', '2021-11-26 20:16:36', 'amiyamaity@gmail.com', 1, 1, 1, 1),
(34, 17, 'What is the difference between switching and routing?', '2021-11-26 20:17:41', 'amiyamaity@gmail.com', 1, 1, 1, 1),
(35, 15, 'What are  semaphores in os?', '2021-11-28 17:21:16', 'rahuldas@gmail.com', 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `sub_date_time` datetime NOT NULL,
  `sub_uploaded_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `s_admin_id` int(11) NOT NULL,
  `a_s` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `sub_code`, `sub_name`, `sub_date_time`, `sub_uploaded_by`, `s_admin_id`, `a_s`) VALUES
(14, 'Datastructures-01', 'DS Using C++', '2021-11-26 00:19:33', 'abc@gmail.com', 1, 1),
(15, 'Os-1', 'Operating System', '2021-11-26 00:21:43', 'abc@gmail.com', 1, 1),
(16, 'DB-1', 'DBMS', '2021-11-26 00:22:10', 'abc@gmail.com', 1, 1),
(17, 'CN', 'Comp.Networks', '2021-11-26 00:22:49', 'abc@gmail.com', 1, 1),
(18, 'CA', 'Com.Architechture', '2021-11-26 00:23:17', 'abc@gmail.com', 1, 1),
(19, 'SD', 'System Design', '2021-11-26 00:23:47', 'abc@gmail.com', 1, 1),
(20, 'EC', 'Economics', '2021-11-26 00:25:00', 'abc@gmail.com', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `u_date_time` datetime NOT NULL,
  `validation_code` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `education` varchar(255) NOT NULL,
  `employment` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `pic_src` varchar(255) NOT NULL,
  `approve` tinyint(4) NOT NULL DEFAULT 0,
  `online` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `u_date_time`, `validation_code`, `active`, `education`, `employment`, `address`, `profile_pic`, `pic_src`, `approve`, `online`) VALUES
(1, 'Jack', 'dorsey', 'jackzz', 'amiyamaity@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-16 23:09:45', '1', 1, 'B.tech', 'Student', 'Malibu', 'pop.png', 'Profile_picture/pop.png', 1, 0),
(2, 'arun', 'panda', 'aruanda', 'xyza@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-16 23:10:23', '1', 1, 'B.tech', 'Student', 'ASDudhndu', 'araa.png', 'Profile_picture/araa.png', 1, 0),
(3, 'ramanath', 'viswas', 'ramanathmondal', 'xyz@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-17 23:11:03', '1', 1, 'B.tech', 'Student', 'ASDudhndu', 'ppo.png', 'Profile_picture/ppo.png', 1, 0),
(5, 'subhashis', 'neogi', 'subhashisneogi', 'subhashisneogi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-18 23:12:35', '1', 1, 'M.C.A', 'Software Engineer', 'Siliguri', 'subha.png', 'Profile_picture/subha.png', 1, 1),
(6, 'Devesh', 'Dasa', 'Hiklam', 'sunildas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-17 02:03:23', '1', 1, 'B.tech', 'Student', 'Egra', 'debabrata.png', 'Profile_picture/debabrata.png', 1, 0),
(7, 'Akash', 'Roy', 'akash', 'akashroy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-17 02:30:31', '1', 1, '', '', '', '', '', 0, 0),
(8, 'Rahul', 'Das', 'rahuldas', 'rahuldas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-18 01:55:17', '0', 1, 'B.tech', 'Student', 'Malibu', 'pp.png', 'Profile_picture/pp.png', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_request`
--
ALTER TABLE `admin_request`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`a_no`),
  ADD KEY `answers_ibfk_2` (`q_no`),
  ADD KEY `answers_ibfk_3` (`a_user_id`),
  ADD KEY `answers_ibfk_4` (`a_subject_id`);

--
-- Indexes for table `answer_view_count`
--
ALTER TABLE `answer_view_count`
  ADD PRIMARY KEY (`count_ID`),
  ADD KEY `answer_ID` (`answer_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `answer_vote`
--
ALTER TABLE `answer_vote`
  ADD PRIMARY KEY (`ans_vote_ID`),
  ADD KEY `answer_vote_ibfk_1` (`answer_ID`),
  ADD KEY `answer_vote_ibfk_2` (`user_ID`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`discussion_id`),
  ADD KEY `discussion_ibfk_1` (`d_user_id`),
  ADD KEY `q_no` (`q_no`),
  ADD KEY `a_no` (`a_no`);

--
-- Indexes for table `discussion_vote`
--
ALTER TABLE `discussion_vote`
  ADD PRIMARY KEY (`dis_vote_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `post_query`
--
ALTER TABLE `post_query`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `user_des_id` (`user_des_id`);

--
-- Indexes for table `post_solution`
--
ALTER TABLE `post_solution`
  ADD PRIMARY KEY (`solution_id`),
  ADD KEY `query_id` (`query_id`),
  ADD KEY `user_query_id` (`query_user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_no`),
  ADD KEY `questions_ibfk_1` (`q_user_id`),
  ADD KEY `questions_ibfk_2` (`q_subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `admin_id` (`s_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_request`
--
ALTER TABLE `admin_request`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `a_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `answer_view_count`
--
ALTER TABLE `answer_view_count`
  MODIFY `count_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `answer_vote`
--
ALTER TABLE `answer_vote`
  MODIFY `ans_vote_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `discussion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `discussion_vote`
--
ALTER TABLE `discussion_vote`
  MODIFY `dis_vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_query`
--
ALTER TABLE `post_query`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_solution`
--
ALTER TABLE `post_solution`
  MODIFY `solution_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`q_no`) REFERENCES `questions` (`q_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_ibfk_3` FOREIGN KEY (`a_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_ibfk_4` FOREIGN KEY (`a_subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `answer_view_count`
--
ALTER TABLE `answer_view_count`
  ADD CONSTRAINT `answer_view_count_ibfk_1` FOREIGN KEY (`answer_ID`) REFERENCES `answers` (`a_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_view_count_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`d_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_ibfk_2` FOREIGN KEY (`q_no`) REFERENCES `questions` (`q_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_ibfk_3` FOREIGN KEY (`a_no`) REFERENCES `answers` (`a_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_query`
--
ALTER TABLE `post_query`
  ADD CONSTRAINT `post_query_ibfk_2` FOREIGN KEY (`user_des_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_solution`
--
ALTER TABLE `post_solution`
  ADD CONSTRAINT `post_solution_ibfk_2` FOREIGN KEY (`query_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`q_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`q_subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`s_admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
