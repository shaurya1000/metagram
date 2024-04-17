
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




-- Database: `metagram`
--




--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block_list`
--

INSERT INTO `block_list` (`id`, `user_id`, `blocked_user_id`) VALUES
(3, 5, 7);


--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(3, 1, 2, 'this is awesome', '2024-02-018 17:44:26'),
(4, 1, 3, 'cool', '2024-02-18 17:46:43'),
(5, 1, 5, 'nice', '2024-02-18 17:51:50'),
(6, 1, 8, 'nice', '2024-02-18 17:52:00'),
(7, 1, 9, 'nice', '2024-02-18 17:52:26'),
(8, 2, 1, 'cool', '2024-02-18 17:52:27'),
(9, 2, 8, 'cool', '2024-02-18 17:52:28'),
(10, 2, 5, 'nice', '2024-02-18 17:52:29'),
(11, 2, 3, 'cool', '2024-02-18 17:52:31'),
(12, 3, 8, 'nice', '2024-02-18 17:52:32'),
(13, 5, 8, 'awesome', '2024-02-18 18:04:36'),
(14, 5, 7, 'awesome', '2024-02-18 18:05:49'),
(15, 5, 1, 'wow', '2024-02-18 18:07:31'),
(16, 2, 7, 'nice', '2024-02-18 18:09:17'),
(17, 3, 1, 'awesome', '2024-02-18 18:12:01'); 





--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(13, 9, 3),
(15, 9, 6),
(38, 10, 3),
(42, 10, 7),
(43, 10, 9),
(57, 8, 4),
(58, 8, 5),
(66, 10, 1),
(68, 11, 2),
(69, 11, 7),
(70, 11, 9),
(71, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(17, 3, 8),
(30, 7, 9),
(31, 5, 9),
(45, 7, 8),
(49, 3, 1),
(56, 9, 1),
(57, 5, 4),
(67, 1, 8),
(69, 6, 5),
(74, 10, 8),
(79, 9, 1),
(88, 2, 1),
(89, 5, 8),
(90, 2, 8);


--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(27, 1, 5, 'hii guransh', 1, '2024-02-19 10:47:18'),
(28, 8, 1, 'hii roy', 1, '2024-02-19 10:47:44'),
(29, 1, 2, 'Hii karan,how are you?', 1, '2024-02-19 10:48:03'),
(30, 2, 1, 'I am good, how are you?', 1, '2024-02-19 10:48:15'),
(31, 5, 2, 'hii karan', 1, '2024-02-19 11:05:27'),
(32, 3, 8, 'hii bhavi, how you doing man?', 1, '2024-02-19 11:05:52'),
(33, 1, 2, 'I am good, just wanted to ask you about the midterm date for python course that wea re taking together', 1, '2024-02-19 11:10:12'),
(34, 2, 1, 'well its on 24', 1, '2024-02-19 11:10:26'),
(35, 1, 2, ' okay thank you', 1, '2024-02-19 11:10:39'),
(36, 2, 1, 'no problem', 1, '2024-02-19 11:11:00'),
(37, 6, 7, ' hii mehnaz, how are you?', 1, '2024-02-19 11:11:08'),
(38, 7, 6, 'I am good , how are you?', 1, '2024-02-19 11:11:30'),
(39, 3, 1, 'hey roy, at what time are you going to gym today?', 1, '2024-02-19 11:11:37'),
(40, 1, 3, 'Sorry I am not going to gym today as I am not well.', 1, '2024-02-19 11:11:53');


--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(82, 1, 'started following you !', '2024-02-18 08:16:11', 8, 1, '0'),
(83, 8, 'started following you !', '2024-02-18 08:16:59', 1, 1, '0'),
(84, 1, 'started following you !', '2024-02-18 08:17:33', 2, 1, '12'),
(85, 1, 'started following you !', '2024-02-18 08:17:41', 2, 1, '12'),
(86, 6, 'started following you !', '2024-02-18  08:19:07', 1, 1, '5'),
(87, 1, 'started following you !', '2024-02-18 08:20:42', 6, 1, '0'),
(88, 1, 'Unblocked you !', '2024-02-18 08:21:09', 5, 1, '0'),
(89, 1, 'commented on your post !', '2024-02-18 08:21:34', 2, 1, '0'),
(90, 7, 'started following you !', '2024-02-18 08:22:17', 6, 1, '0'),
(91, 5, 'Unfollowed you !', '2024-02-18 08:26:01', 4, 0, '0'),
(92, 2, 'commented on your post', '2024-02-18 10:24:33', 3, 2, '6'),
(93, 7, 'blocked you', '2024-02-18 10:48:28', 4, 1, '0'),
(94, 2, 'Unblocked you !', '2021-12-07 11:04:05', 8, 1, '0'),
(95, 8, 'blocked you', '2021-12-07 11:08:54', 7, 1, '0'),
(96, 4, 'Unblocked you !', '2021-12-07 11:09:03', 9, 1, '0'),
(97, 9, 'blocked you', '2021-12-07 11:12:50', 1, 1, '0'),
(98, 8, 'Unblocked you !', '2021-12-07 11:13:04', 4, 1, '0');


--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(1, 1, 'sherwood.png', 'this is my first post', '2024-02-20 18:54:22'),
(2, 2, 'cultus lake.png', ' vsting water park with my family!!', '2024-02-20 19:07:49'),
(3, 3, 'stanleypark.png', ' Beautiful British Columbia', '2024-02-20 19:15:08'),
(5, 4, 'cn.png', 'this is my first post', '2024-02-20 19:19:34'),
(7, 5, 'niagra.png', ' Beautiful fall', '2024-02-20 03:44:23'),
(9, 6, 'whistler.png', 'enjoying vacation with my friends', '2024-02-20 18:19:59');


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(1, 'Raghav', 'Sharma', 1, 'rsharma123@gmail.com', 'roy_123', 'fc5e038d38a57032085441e7fe7010b0', 'ironman.png', '2024-02-19 08:54:47', '2024-02-19 08:21:35', 0),
(2, 'Karan', 'Sarao', 1, 'Ksarao123@gmail.com', 'sarao_123', '45ed6f3a8e5a687e8843cce72e116c36', 'kratos.png', '2024-02-19 02:34:06', '2024-02-19 08:21:40', 0),
(3, 'Dhruv', 'Chauhan', 1, 'dhruv123@gmail.com', 'dhruv_123', '45ed6f3a8e5a687e8843cce72e116c36', 'popeye.png', '2024-02-19 12:00:13', '2024-02-19 08:21:43', 1),
(4, 'Sahil', 'Mishra', 1, 'sahil123@gmail.com', 'sahil_123', 'fc5e038d38a57032085441e7fe7010b0', 'thor.png', '2024-02-19 13:24:40', '2024-02-19 19:12:06', 1),
(5, 'Guransh', 'Gill', 1, 'ggill123@gmail.com', 'guransh_123', 'fc5e038d38a57032085441e7fe7010b0', 'franklin.png', '2024-02-19 08:45:24', '2024-02-19 08:49:44', 1),
(6, 'Aakansha', 'Kumar', 2, 'akumar123@gmail.com', 'aakansha_123', '45ed6f3a8e5a687e8843cce72e116c36', 'blossom.png', '2024-02-19 16:53:17', '2024-02-19 17:51:30', 1),
(7, 'Mehnaz', 'Dhanoa', 2, 'mehnaz123@gmail.com', 'mehnaz_123', 'fc5e038d38a57032085441e7fe7010b0', 'buttercup.png', '2024-02-19 03:45:35', '2024-02-19 03:50:33', 1),
(8, 'Bhavitavya', 'Sharma', 1, 'bsharma123@gmail.com', 'bhavi_123', '45ed6f3a8e5a687e8843cce72e116c36', 'pikachu.png', '2024-02-19 18:06:37', '2024-02-19 18:09:03', 1),
(9, 'Naonehal', 'Sohal', 1, 'sohal123@gmail.com', 'noanehal_123', 'fc5e038d38a57032085441e7fe7010b0', 'luffy.png', '2024-02-19 06:36:14', '2024-02-19 07:16:41', 1);

--
-- Dumping data for table `users`
--

 
--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
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
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;


