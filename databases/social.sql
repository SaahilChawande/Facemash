-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2017 at 03:07 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Wake up!!!', 'saahil_chawande_1', 'captain_america', '2017-09-18 22:20:08', 'no', 14),
(2, 'Okay I am up!!', 'saahil_chawande_1', 'captain_america', '2017-09-18 22:40:28', 'no', 14),
(3, 'Okay dude!!', 'saahil_chawande_1', 'captain_america', '2017-09-25 23:24:05', 'no', 14);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'saahil_chawande_1', 'rupali_sarode'),
(3, 'saahil_chawande_1', 'captain_america'),
(4, 'rupali_sarode', 'captain_america');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(3, 'saahil_chawande_1', 14),
(4, 'saahil_chawande_1', 13),
(6, 'saahil_chawande_1', 12),
(7, 'saahil_chawande_1', 11),
(9, 'saahil_chawande_1', 10),
(10, 'saahil_chawande_1', 7),
(11, 'captain_america', 12),
(12, 'captain_america', 15),
(13, 'saahil_chawande_1', 15),
(14, 'captain_america', 14),
(15, 'captain_america', 36);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'saahil_chawande_1', 'captain_america', 'Hello Mate!', '2017-09-20 13:57:17', 'yes', 'yes', 'no'),
(2, 'saahil_chawande_1', 'captain_america', 'I am good', '2017-09-20 14:11:31', 'yes', 'yes', 'no'),
(3, 'captain_america', 'saahil_chawande_1', 'Awesome Man!!', '2017-09-20 14:17:52', 'yes', 'yes', 'no'),
(4, 'captain_america', 'saahil_chawande_1', 'Awesome', '2017-09-20 15:23:33', 'yes', 'yes', 'no'),
(5, 'captain_america', 'saahil_chawande_1', 'Yoo bro', '2017-09-20 15:23:41', 'yes', 'yes', 'no'),
(6, 'captain_america', 'saahil_chawande_1', 'Hello bro !!', '2017-09-20 15:29:28', 'yes', 'yes', 'no'),
(7, 'captain_america', 'saahil_chawande_1', 'sczscz', '2017-09-20 15:29:30', 'yes', 'yes', 'no'),
(8, 'captain_america', 'saahil_chawande_1', 'sczdcascaz', '2017-09-20 15:29:33', 'yes', 'yes', 'no'),
(9, 'captain_america', 'saahil_chawande_1', 'zdvzdzdscz', '2017-09-20 15:29:35', 'yes', 'yes', 'no'),
(10, 'captain_america', 'saahil_chawande_1', 'zdvzdvzdv', '2017-09-20 15:29:36', 'yes', 'yes', 'no'),
(11, 'captain_america', 'saahil_chawande_1', 'vzdvzdvzdvzvzvzd', '2017-09-20 15:29:39', 'yes', 'yes', 'no'),
(12, 'captain_america', 'saahil_chawande_1', 'zdvzdvzvzvdvzd', '2017-09-20 15:30:09', 'yes', 'yes', 'no'),
(13, 'saahil_chawande_1', 'captain_america', 'dzczdzd', '2017-09-20 15:30:27', 'yes', 'yes', 'no'),
(14, 'saahil_chawande_1', 'captain_america', 'dvzvzv', '2017-09-20 15:36:59', 'yes', 'yes', 'no'),
(15, 'saahil_chawande_1', 'captain_america', 'dfzdzvz', '2017-09-20 15:37:04', 'yes', 'yes', 'no'),
(16, 'saahil_chawande_1', 'captain_america', 'fbggnvnh', '2017-09-20 15:37:09', 'yes', 'yes', 'no'),
(17, 'saahil_chawande_1', 'captain_america', 'Hey', '2017-09-20 15:52:20', 'yes', 'yes', 'no'),
(18, 'saahil_chawande_1', 'captain_america', 'Dude you there ?', '2017-09-20 15:52:31', 'yes', 'yes', 'no'),
(19, 'rupali_sarode', 'captain_america', 'Hey', '2017-09-20 16:34:30', 'yes', 'no', 'no'),
(20, 'saahil_chawande_1', 'captain_america', 'ffbc', '2017-09-20 16:35:49', 'yes', 'yes', 'no'),
(21, 'saahil_chawande_1', 'captain_america', 'ffbc', '2017-09-20 16:48:32', 'yes', 'yes', 'no'),
(22, 'saahil_chawande_1', 'captain_america', 'ffbc', '2017-09-20 16:48:40', 'yes', 'yes', 'no'),
(23, '', 'rupali_sarode', 'Hey', '2017-09-21 23:03:26', 'no', 'no', 'no'),
(24, 'rupali_sarode', 'saahil_chawande_1', 'Hey', '2017-09-21 23:26:54', 'yes', 'no', 'no'),
(25, 'captain_america', 'saahil_chawande_1', 'Hey man', '2017-09-23 13:22:37', 'yes', 'yes', 'no'),
(26, 'captain_america', 'saahil_chawande_1', 'Hey dude !', '2017-09-24 21:53:53', 'yes', 'yes', 'no'),
(27, 'saahil_chawande_1', 'captain_america', 'Hey Man', '2017-09-24 23:14:09', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, '', 'saahil_chawande_1', 'Saahil Chawande liked your post', 'post.php?id=7', '2017-09-25 21:49:21', 'no', 'no'),
(2, 'saahil_chawande_1', 'captain_america', 'Captain America posted on your profile', 'post.php?id=18', '2017-09-25 21:54:31', 'yes', 'yes'),
(3, 'saahil_chawande_1', 'captain_america', 'Captain America liked your post', 'post.php?id=12', '2017-09-25 21:54:49', 'yes', 'yes'),
(4, 'saahil_chawande_1', 'captain_america', 'Captain America liked your post', 'post.php?id=15', '2017-09-25 22:37:23', 'yes', 'yes'),
(5, 'captain_america', 'saahil_chawande_1', 'Saahil Chawande commented on your post', 'post.php?id=14', '2017-09-25 23:24:05', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'This is my first post', 'saahil_chawande_1', 'none', '2017-09-18 12:59:43', 'no', 'no', 0, ''),
(2, 'Hey everyone!', 'captain_america', 'none', '2017-09-18 15:26:22', 'no', 'no', 0, ''),
(3, 'This website is awesome!', 'saahil_chawande_1', 'none', '2017-09-18 16:00:34', 'no', 'no', 0, ''),
(4, 'â€œDon\'t cry because it\'s over, smile because it happened.â€ \r\nâ€• Dr. Seuss', 'saahil_chawande_1', 'none', '2017-09-18 16:01:38', 'no', 'no', 0, ''),
(5, 'â€œI\'m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.â€ \r\nâ€• Marilyn Monroe', 'captain_america', 'none', '2017-09-18 16:02:00', 'no', 'no', 0, ''),
(6, 'â€œBe yourself; everyone else is already taken.â€ \r\nâ€• Oscar Wilde', 'saahil_chawande_1', 'none', '2017-09-18 16:02:11', 'no', 'no', 0, ''),
(7, 'â€œTwo things are infinite: the universe and human stupidity; and I\'m not sure about the universe.â€ \r\nâ€• Albert Einstein', 'captain_america', 'none', '2017-09-18 16:02:20', 'no', 'no', 1, ''),
(8, 'â€œSo many books, so little time.â€ \r\nâ€• Frank Zappa', 'saahil_chawande_1', 'none', '2017-09-18 16:02:40', 'no', 'no', 0, ''),
(9, 'â€œBe who you are and say what you feel, because those who mind don\'t matter, and those who matter don\'t mind.â€ \r\nâ€• Bernard M. Baruch', 'saahil_chawande_1', 'none', '2017-09-18 16:02:47', 'no', 'no', 0, ''),
(10, 'â€œYou\'ve gotta dance like there\'s nobody watching,\r\nLove like you\'ll never be hurt,\r\nSing like there\'s nobody listening,\r\nAnd live like it\'s heaven on earth.â€ \r\nâ€• William W. Purkey', 'captain_america', 'none', '2017-09-18 16:02:53', 'no', 'no', 1, ''),
(11, 'â€œA room without books is like a body without a soul.â€ \r\nâ€• Marcus Tullius Cicero', 'saahil_chawande_1', 'none', '2017-09-18 16:03:01', 'no', 'no', 1, ''),
(12, 'â€œYou only live once, but if you do it right, once is enough.â€ \r\nâ€• Mae West', 'saahil_chawande_1', 'none', '2017-09-18 16:03:08', 'no', 'no', 2, ''),
(13, 'Good night!', 'captain_america', 'none', '2017-09-18 16:03:21', 'no', 'no', 1, ''),
(14, 'Hello Man!', 'captain_america', 'none', '2017-09-18 17:06:25', 'no', 'no', 2, ''),
(15, 'Hey Man', 'saahil_chawande_1', 'captain_america', '2017-09-20 00:24:22', 'no', 'no', 2, ''),
(16, 'This is to myself.', 'saahil_chawande_1', 'none', '2017-09-20 00:25:21', 'no', 'yes', 0, ''),
(17, 'Hey awesome man!', 'captain_america', 'saahil_chawande_1', '2017-09-25 21:50:20', 'no', 'yes', 0, ''),
(18, 'Hey Saahil!!', 'captain_america', 'saahil_chawande_1', '2017-09-25 21:54:31', 'no', 'no', 0, ''),
(19, '<br><iframe width=\'420\' height=\'315\' src=\'\'></iframe><br>', 'captain_america', 'none', '2017-09-26 16:53:54', 'no', 'yes', 0, ''),
(20, '<br><iframe width=\'420\' height=\'315\' src=\'\'></iframe><br>', 'captain_america', 'none', '2017-09-26 16:54:36', 'no', 'yes', 0, ''),
(23, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/bwCqWUmu6pk\'></iframe><br>', 'captain_america', 'none', '2017-09-26 16:57:32', 'no', 'no', 0, ''),
(24, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/bwCqWUmu6pk\'></iframe><br>', 'captain_america', 'none', '2017-09-26 16:59:56', 'no', 'yes', 0, ''),
(25, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/bwCqWUmu6pk\'></iframe><br>', 'captain_america', 'none', '2017-09-26 17:00:54', 'no', 'yes', 0, ''),
(26, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/HiOjHksM_zY\'></iframe><br>', 'captain_america', 'none', '2017-09-26 17:05:12', 'no', 'yes', 0, ''),
(27, 'Hello guys !! I am looking forward for the hackathon!!', 'captain_america', 'none', '2017-09-26 17:27:07', 'no', 'no', 0, ''),
(28, 'abc', 'captain_america', 'none', '2017-09-26 19:32:41', 'no', 'yes', 0, ''),
(29, 'abc', 'captain_america', 'none', '2017-09-26 19:32:47', 'no', 'yes', 0, ''),
(30, 'abc', 'captain_america', 'none', '2017-09-26 19:32:53', 'no', 'yes', 0, ''),
(31, 'abc', 'captain_america', 'none', '2017-09-26 15:05:39', 'no', 'no', 0, 'assets/images/posts/59ca5eb3adf21Screenshot (6).png'),
(32, 'abc', 'captain_america', 'none', '2017-09-26 19:36:50', 'no', 'yes', 0, ''),
(33, 'abc', 'captain_america', 'none', '2017-09-26 19:36:57', 'no', 'yes', 0, ''),
(34, 'abc', 'captain_america', 'none', '2017-09-26 19:37:08', 'no', 'yes', 0, ''),
(35, 'abc', 'captain_america', 'none', '2017-09-26 19:37:16', 'no', 'no', 0, ''),
(36, 'Doctor', 'captain_america', 'none', '2017-09-26 21:04:27', 'no', 'no', 1, 'assets/images/posts/59ca7383f0926doctor_strange_benedict_cumberbatch_stephen_strange_109602_5359x3473.jpg'),
(42, 'Doctor2', 'captain_america', 'none', '2017-09-26 21:17:02', 'no', 'yes', 0, 'assets/images/posts/59ca7676f0406doctor_strange_benedict_cumberbatch_stephen_strange_109602_5359x3473.jpg'),
(43, 'Doctor2', 'captain_america', 'none', '2017-09-26 21:17:10', 'no', 'yes', 0, 'assets/images/posts/59ca767eebac8doctor_strange_benedict_cumberbatch_stephen_strange_109602_5359x3473.jpg'),
(44, 'Doctor2', 'captain_america', 'none', '2017-09-26 21:24:50', 'no', 'yes', 0, 'assets/images/posts/59ca784a8dcbadoctor_strange_benedict_cumberbatch_stephen_strange_109602_5359x3473.jpg'),
(45, 'Doctor2', 'captain_america', 'none', '2017-09-26 21:25:04', 'no', 'yes', 0, 'assets/images/posts/59ca785898ed6doctor_strange_benedict_cumberbatch_stephen_strange_109602_5359x3473.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Guys', 1),
('Looking', 1),
('Forward', 1),
('Hackathon', 1),
('Abc', 8),
('Doctor', 6),
('Doctor2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Saahil', 'Chawande', 'saahil_chawande_1', 'Chawandesaahil600@gmail.com', 'dc647eb65e6711e155375218212b3964', '2017-09-14', 'assets/images/profile_pics/saahil_chawande_15493cd13b7c5f0048376403e591b3db9n.jpeg', 10, 5, 'no', ',ronak_manglani,'),
(3, 'Rupali', 'Sarode', 'rupali_sarode', 'Rupa.patil148@gmail.com', 'dc647eb65e6711e155375218212b3964', '2017-09-16', 'assets/images/profile_pics/defaults/head_alizarin.png', 0, 0, 'no', ','),
(4, 'Ronak', 'Manglani', 'ronak_manglani', 'Ronak.manglani@gmailc.om', 'af8f9dffa5d420fbc249141645b962ee', '2017-09-16', 'assets/images/profile_pics/defaults/head_amethyst.png', 0, 0, 'no', ','),
(5, 'Captain', 'America', 'captain_america', 'Captainamerica@gmail.com', 'dc647eb65e6711e155375218212b3964', '2017-09-18', 'assets/images/profile_pics/captain_americaf4bd83aa0cd59f393e7ca7fb892fa6fen.jpeg', 34, 8, 'no', ',ronak_manglani,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
