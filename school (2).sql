-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-03-29 07:48:14
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `school`
--

-- --------------------------------------------------------

--
-- 資料表結構 `courses`
--

CREATE TABLE `courses` (
  `c_id` varchar(10) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_credit` int(10) NOT NULL,
  `c_required` tinyint(1) NOT NULL,
  `c_teacherId` varchar(10) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `courses`
--

INSERT INTO `courses` (`c_id`, `c_name`, `c_credit`, `c_required`, `c_teacherId`, `created_time`, `updated_time`) VALUES
('C001', 'JS', 4, 1, 'T001', '2023-03-29 13:27:08', '2023-03-29 13:27:08'),
('C002', 'HTML', 3, 1, 'T002', '2023-03-29 13:29:38', '2023-03-29 13:29:38'),
('C003', 'CSS', 3, 0, 'T003', '2023-03-29 13:29:38', '2023-03-29 13:29:38'),
('C004', 'Bootstrap', 2, 0, 'T005', '2023-03-29 13:29:38', '2023-03-29 13:29:38');

-- --------------------------------------------------------

--
-- 資料表結構 `scores`
--

CREATE TABLE `scores` (
  `s_id` int(10) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `scores`
--

INSERT INTO `scores` (`s_id`, `c_id`, `score`, `created_time`, `updated_time`) VALUES
(1, 'C001', 80, '2023-03-29 13:34:36', '2023-03-29 13:34:36'),
(1, 'C002', 72, '2023-03-29 13:34:36', '2023-03-29 13:34:36'),
(2, 'C002', 90, '2023-03-29 13:34:36', '2023-03-29 13:34:36'),
(2, 'C003', 82, '2023-03-29 13:34:36', '2023-03-29 13:34:36'),
(2, 'C004', 86, '2023-03-29 13:34:36', '2023-03-29 13:34:36');

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_gender` varchar(10) NOT NULL,
  `s_nickname` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`s_id`, `s_name`, `s_gender`, `s_nickname`, `created_time`, `updated_time`) VALUES
(1, '阿湯哥', '男', '小帥', '2023-03-29 11:51:09', '2023-03-29 13:14:53'),
(2, '阿妮亞', '女', '小美', '2023-03-29 11:51:09', '2023-03-29 13:15:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`s_id`,`c_id`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
