-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 03:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoursesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add lesson', 9, 'add_lesson'),
(34, 'Can change lesson', 9, 'change_lesson'),
(35, 'Can delete lesson', 9, 'delete_lesson'),
(36, 'Can view lesson', 9, 'view_lesson'),
(37, 'Can add tag', 10, 'add_tag'),
(38, 'Can change tag', 10, 'change_tag'),
(39, 'Can delete tag', 10, 'delete_tag'),
(40, 'Can view tag', 10, 'view_tag'),
(41, 'add tag to lesson', 9, 'add_tag_lesson'),
(42, 'Can add application', 11, 'add_application'),
(43, 'Can change application', 11, 'change_application'),
(44, 'Can delete application', 11, 'delete_application'),
(45, 'Can view application', 11, 'view_application'),
(46, 'Can add access token', 12, 'add_accesstoken'),
(47, 'Can change access token', 12, 'change_accesstoken'),
(48, 'Can delete access token', 12, 'delete_accesstoken'),
(49, 'Can view access token', 12, 'view_accesstoken'),
(50, 'Can add grant', 13, 'add_grant'),
(51, 'Can change grant', 13, 'change_grant'),
(52, 'Can delete grant', 13, 'delete_grant'),
(53, 'Can view grant', 13, 'view_grant'),
(54, 'Can add refresh token', 14, 'add_refreshtoken'),
(55, 'Can change refresh token', 14, 'change_refreshtoken'),
(56, 'Can delete refresh token', 14, 'delete_refreshtoken'),
(57, 'Can view refresh token', 14, 'view_refreshtoken'),
(58, 'Can add id token', 15, 'add_idtoken'),
(59, 'Can change id token', 15, 'change_idtoken'),
(60, 'Can delete id token', 15, 'delete_idtoken'),
(61, 'Can view id token', 15, 'view_idtoken');

-- --------------------------------------------------------

--
-- Table structure for table `courses_category`
--

CREATE TABLE `courses_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_category`
--

INSERT INTO `courses_category` (`id`, `name`) VALUES
(1, 'Lap trinh backend'),
(4, 'Lập trình blockchain'),
(2, 'Lap trinh frontend'),
(3, 'Lập trình fullstack');

-- --------------------------------------------------------

--
-- Table structure for table `courses_course`
--

CREATE TABLE `courses_course` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_course`
--

INSERT INTO `courses_course` (`id`, `subject`, `image`, `created_date`, `updated_date`, `active`, `description`, `category_id`) VALUES
(1, 'Lập trình Python', '', '2022-09-03 09:50:01.377381', '2022-09-04 16:41:39.532157', 1, 'Python cho nguoi moi bat dau', 1),
(2, 'Phan tich du lieu voi Python', 'courses/2022/09/03/image_39.jpg', '2022-09-03 10:09:52.641398', '2022-09-03 16:32:59.260200', 1, 'Lap trinh python data analytics', 1),
(3, 'Lap trinh AI voi Python', '', '2022-09-03 10:10:05.952667', '2022-09-03 10:10:05.952667', 1, 'Lap trinh AI voi python cho nguoi moi bat dau', 1),
(4, 'Lap trinh frontend ket hop API Python Django', '', '2022-09-03 10:10:22.576193', '2022-09-03 10:10:22.576193', 1, 'Reactjs voi API python', 1),
(5, 'Lap trinh reactjs', '', '2022-09-03 10:10:46.776182', '2022-09-03 10:10:46.776182', 1, 'Lap trinh reactjs tu co co ban den advanced', 2),
(6, 'Lập trình mobile app với React native', '', '2022-09-04 16:16:08.958697', '2022-09-04 16:19:18.600211', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses_lesson`
--

CREATE TABLE `courses_lesson` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext DEFAULT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_lesson`
--

INSERT INTO `courses_lesson` (`id`, `subject`, `image`, `created_date`, `updated_date`, `active`, `content`, `course_id`) VALUES
(1, 'Bai 1 Kieu du lieu trong python test ok', 'courses/2022/09/04/designV-2.png', '2022-09-03 10:41:15.371760', '2022-09-04 17:42:55.473596', 1, '<p>Noi dung bai hoc variabe trong python test ok</p>', 1),
(3, 'Bai 2: Cau truc du lieu va giai thuat - phan 1', 'courses/2022/09/03/comparisonV-1.png', '2022-09-03 11:00:20.069141', '2022-09-04 17:43:02.597482', 1, '<p>Mot so thuat toan nhu sap xep tron, sap xep noi bot, hashmap</p>', 1),
(4, 'Bai 3: Cau truc du lieu va giai thuat - phan 2', 'courses/2022/09/03/image_39.jpg', '2022-09-03 11:00:32.389000', '2022-09-03 15:34:00.008514', 1, 'Mot so thuat toan nhu sap xep tron, sap xep noi bot, hashmap', 1),
(5, 'Bai 1: Ly thuyet ve du lieu', 'courses/2022/09/03/image_38_5TypzOi.jpg', '2022-09-03 11:00:53.636852', '2022-09-03 16:34:22.223425', 1, 'Lich su phan tich du lieu la gi ...', 2),
(6, 'Life Cycle trong Reactjs', 'courses/2022/09/03/image_38.jpg', '2022-09-03 15:26:32.263631', '2022-09-04 04:09:23.896795', 1, '<h1><strong>Giới thiệu về reactjs</strong></h1>\r\n\r\n<p>React js ra đời từ 2012 được ph&aacute;t triển bởi anh Mark xoăn</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>fsf</td>\r\n			<td>fsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>fs</td>\r\n			<td>fsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>fsf</td>\r\n			<td>fsf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"laugh\" src=\"http://localhost:8888/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/media/lesson/2022/09/04/designv-2.png\" style=\"height:4521px; width:1400px\" /></p>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `courses_lesson_tags`
--

CREATE TABLE `courses_lesson_tags` (
  `id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_lesson_tags`
--

INSERT INTO `courses_lesson_tags` (`id`, `lesson_id`, `tag_id`) VALUES
(2, 1, 1),
(5, 1, 3),
(7, 1, 4),
(8, 1, 5),
(1, 3, 5),
(6, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_tag`
--

CREATE TABLE `courses_tag` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_tag`
--

INSERT INTO `courses_tag` (`id`, `created_date`, `updated_date`, `name`) VALUES
(1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'python'),
(3, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'reactjs'),
(4, '2022-09-03 11:33:51.842548', '2022-09-03 11:33:51.842548', 'frontend'),
(5, '2022-09-03 11:34:59.750497', '2022-09-03 11:34:59.750497', 'giai thuat');

-- --------------------------------------------------------

--
-- Table structure for table `courses_user`
--

CREATE TABLE `courses_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_user`
--

INSERT INTO `courses_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `avatar`) VALUES
(1, 'pbkdf2_sha256$260000$EmgtaWXtlEBavM2mpG8qgr$RyeeQF+WbQEXnM7HqcYVhaLVp9/e9ANVgBtujUpeSbk=', '2022-09-06 17:19:48.299694', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-09-03 08:28:41.371841', ''),
(2, 'pbkdf2_sha256$260000$fdjSk7v1iqo4R1FUxa8Epz$+VlKeMh1EYrws9zkFvbtoJvk+eCC19ESAX6arxcBffA=', '2022-09-06 14:17:42.515542', 1, 'ngocanh', '', '', 'ngocanh@gmail.com', 1, 1, '2022-09-06 14:17:12.989805', ''),
(12, '123456789', NULL, 0, 'ngocanh1', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:30:40.724221', 'uploads/2022/09/designV-2_TfVyVr5.png'),
(13, '123456789', NULL, 0, 'ngocanh2', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:34:18.778487', 'uploads/2022/09/designV-2.png'),
(14, '123456789', NULL, 0, 'ngocanh3', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:35:57.770938', 'uploads/2022/09/designV-2_TvgTryC.png'),
(15, '123456789', NULL, 0, 'ngocanh4', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:37:32.968426', 'uploads/2022/09/designV-2_5PAeKjE.png'),
(16, '123456789', NULL, 0, 'ngocanh5', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:39:31.576877', 'uploads/2022/09/designV-2_DKVWkyb.png'),
(17, '123456789', NULL, 0, 'ngocanh6', 'developer firstname', 'developer lastname', 'test2@gmail.com', 0, 1, '2022-09-07 00:40:06.205299', 'uploads/2022/09/designV-2_ZcPSVAB.png'),
(18, '12345678', NULL, 0, 'ngocanh7', 'developer firstname', 'developer lastname', 'test3@gmail.com', 0, 1, '2022-09-07 00:49:02.263781', 'uploads/2022/09/comparisonV-1.png'),
(19, 'Admin$123', NULL, 0, 'ngocanh1999', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 01:08:05.683472', 'uploads/2022/09/comparisonV-1_INYYyir.png'),
(20, '123456', NULL, 0, 'develop22', 'Ngoc Anh', 'le', 'lengocanh@gmail.com', 0, 1, '2022-09-07 15:09:43.110728', 'uploads/2022/09/designV-2.png'),
(21, 'Admin$123', NULL, 0, 'ngocanh19', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:21:34.986331', 'uploads/2022/09/designV-2_HGYhchA.png'),
(22, 'Admin$123', NULL, 0, 'ngocanh11', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:23:08.103529', 'uploads/2022/09/designV-2_MBFWYjE.png'),
(23, 'Admin$123', NULL, 0, 'ngocanh12', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:25:05.024920', 'uploads/2022/09/designV-2_okzmIHD.png'),
(24, 'Admin$123', NULL, 0, 'ngocanh21', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:34:08.377495', 'uploads/2022/09/designV-2_q6iG1ko.png'),
(25, 'Admin$123', NULL, 0, 'ngocanh13', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:35:07.554922', 'uploads/2022/09/designV-2_OCc21aG.png'),
(26, 'Admin$123', NULL, 0, 'ngocanh14', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:38:38.815177', 'uploads/2022/09/designV-2_Od3wAnW.png'),
(27, 'Admin$123', NULL, 0, 'ngocanh15', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:39:20.780564', 'uploads/2022/09/designV-2_p9cQD0I.png'),
(28, 'Admin$123', NULL, 0, 'ngocanh16', 'developer firstname', 'developer lastname', 'ngocanh@gmail.com', 0, 1, '2022-09-07 15:43:35.098131', 'uploads/2022/09/designV-2_39dwRRV.png');

-- --------------------------------------------------------

--
-- Table structure for table `courses_user_groups`
--

CREATE TABLE `courses_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses_user_user_permissions`
--

CREATE TABLE `courses_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-03 15:26:32.284631', '6', 'Life Cycle trong Reactjs', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-09-03 15:26:41.799479', '6', 'Life Cycle trong Reactjs', 2, '[]', 9, 1),
(3, '2022-09-03 15:28:10.720607', '3', 'Bai 2: Cau truc du lieu va giai thuat - phan 1', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(4, '2022-09-03 15:32:41.977580', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(5, '2022-09-03 15:34:00.014520', '4', 'Bai 3: Cau truc du lieu va giai thuat - phan 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(6, '2022-09-03 15:35:59.826853', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(7, '2022-09-03 16:19:25.329948', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(8, '2022-09-03 16:19:43.562611', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(9, '2022-09-03 16:32:59.262228', '2', 'Phan tich du lieu voi Python', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(10, '2022-09-03 16:34:22.227418', '5', 'Bai 1: Ly thuyet ve du lieu', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(11, '2022-09-04 04:07:00.591149', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(12, '2022-09-04 04:09:23.899796', '6', 'Life Cycle trong Reactjs', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(13, '2022-09-04 04:48:30.174549', '1', 'Bai 1 Kieu du lieu trong python test', 2, '[{\"changed\": {\"fields\": [\"Subject\", \"Image\", \"content\"]}}]', 9, 1),
(14, '2022-09-04 05:08:19.832045', '4', 'Lập trình blockchain', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 6, 1),
(15, '2022-09-04 05:08:34.625245', '3', 'Lập trình fullstack', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 6, 1),
(16, '2022-09-04 05:19:06.179731', '1', 'Bai 1 Kieu du lieu trong python test ok', 2, '[]', 9, 1),
(17, '2022-09-04 15:12:25.322061', '41', 'courses | lesson | add tag to lesson', 1, '[{\"added\": {}}]', 2, 1),
(18, '2022-09-04 17:06:38.473880', '1', 'Bai 1 Kieu du lieu trong python test ok', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 9, 1),
(19, '2022-09-04 17:35:51.788903', '3', 'Bai 2: Cau truc du lieu va giai thuat - phan 1', 2, '[{\"changed\": {\"fields\": [\"Active\", \"content\"]}}]', 9, 1),
(20, '2022-09-04 17:40:15.700201', '3', 'Bai 2: Cau truc du lieu va giai thuat - phan 1', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 9, 1),
(21, '2022-09-04 17:42:55.477597', '1', 'Bai 1 Kieu du lieu trong python test ok', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 9, 1),
(22, '2022-09-04 17:43:02.601483', '3', 'Bai 2: Cau truc du lieu va giai thuat - phan 1', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 9, 1),
(23, '2022-09-07 00:20:19.712688', '3', 'testuser', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'courses', 'category'),
(7, 'courses', 'course'),
(9, 'courses', 'lesson'),
(10, 'courses', 'tag'),
(8, 'courses', 'user'),
(12, 'oauth2_provider', 'accesstoken'),
(11, 'oauth2_provider', 'application'),
(13, 'oauth2_provider', 'grant'),
(15, 'oauth2_provider', 'idtoken'),
(14, 'oauth2_provider', 'refreshtoken'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-03 08:25:55.627020'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-09-03 08:25:55.681017'),
(3, 'auth', '0001_initial', '2022-09-03 08:25:55.921019'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-09-03 08:25:55.972020'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-09-03 08:25:55.983018'),
(6, 'auth', '0004_alter_user_username_opts', '2022-09-03 08:25:55.991021'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-09-03 08:25:55.999017'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-09-03 08:25:56.002022'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-09-03 08:25:56.011020'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-09-03 08:25:56.019021'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-09-03 08:25:56.027018'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-09-03 08:25:56.084024'),
(13, 'auth', '0011_update_proxy_permissions', '2022-09-03 08:25:56.092019'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-09-03 08:25:56.100020'),
(15, 'courses', '0001_initial', '2022-09-03 08:25:56.684878'),
(16, 'admin', '0001_initial', '2022-09-03 08:25:56.818879'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-09-03 08:25:56.829877'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-03 08:25:56.841880'),
(19, 'sessions', '0001_initial', '2022-09-03 08:25:56.886876'),
(20, 'courses', '0002_auto_20220903_1600', '2022-09-03 09:01:08.866353'),
(21, 'courses', '0003_auto_20220904_0928', '2022-09-04 02:29:01.915167'),
(22, 'courses', '0004_alter_lesson_content', '2022-09-04 03:35:21.616450'),
(23, 'oauth2_provider', '0001_initial', '2022-09-06 14:03:39.621870'),
(24, 'oauth2_provider', '0002_auto_20190406_1805', '2022-09-06 14:03:39.717884'),
(25, 'oauth2_provider', '0003_auto_20201211_1314', '2022-09-06 14:03:39.798877'),
(26, 'oauth2_provider', '0004_auto_20200902_2022', '2022-09-06 14:03:40.196872'),
(27, 'oauth2_provider', '0005_auto_20211222_2352', '2022-09-06 14:03:40.309870'),
(28, 'oauth2_provider', '0006_alter_application_client_secret', '2022-09-06 14:03:40.400877');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5tjkme982dvggxi9wfhwjc6ldlj568dp', '.eJxVjDsOwyAQBe9CHSHAfEzK9D4DYnchOIlAMnYV5e6xJRdJ-2bmvVmI21rC1tMSZmJXJtnld4OIz1QPQI9Y741jq-syAz8UftLOp0bpdTvdv4MSe9lrIePghVYAkI2WKjsAMwpJaJBM0g6V9RKzFtIROesVejvsDJK2YlTs8wXa4TeW:1oUOWJ:A0mKxJ7wBdmXaviqGxbIDYCwE0nwICtZlKrnHtRvl1g', '2022-09-17 08:28:51.402742'),
('9olqw73sr2j4q8xcw7aoxeej0qhibukb', '.eJxVjDsOwyAQBe9CHSHAfEzK9D4DYnchOIlAMnYV5e6xJRdJ-2bmvVmI21rC1tMSZmJXJtnld4OIz1QPQI9Y741jq-syAz8UftLOp0bpdTvdv4MSe9lrIePghVYAkI2WKjsAMwpJaJBM0g6V9RKzFtIROesVejvsDJK2YlTs8wXa4TeW:1oVcEm:hornf7K8L4uHYOKP8KmjJVs3W-WafumGCmgmVDRVDiQ', '2022-09-20 17:19:48.306349');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_accesstoken`
--

CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  `id_token_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

INSERT INTO `oauth2_provider_accesstoken` (`id`, `token`, `expires`, `scope`, `application_id`, `user_id`, `created`, `updated`, `source_refresh_token_id`, `id_token_id`) VALUES
(1, 'bhgUYCpFJIbzQxpMCR4PySlyV78eG6', '2022-09-07 00:46:55.854955', 'read write', 2, 2, '2022-09-06 14:46:55.856974', '2022-09-06 14:46:55.856974', NULL, NULL),
(2, 'PTFfURLbfv09hyO5R0JqoLFJmGh97l', '2022-09-07 00:48:25.567257', 'read write', 2, 2, '2022-09-06 14:48:25.567257', '2022-09-06 14:48:25.567257', NULL, NULL),
(3, 'H943KAYOkxan266Ji9pj32MjO5lMlR', '2022-09-07 11:01:22.768276', 'read write', 2, 2, '2022-09-07 01:01:22.769278', '2022-09-07 01:01:22.769278', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_application`
--

CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth2_provider_application`
--

INSERT INTO `oauth2_provider_application` (`id`, `client_id`, `redirect_uris`, `client_type`, `authorization_grant_type`, `client_secret`, `name`, `user_id`, `skip_authorization`, `created`, `updated`, `algorithm`) VALUES
(1, 'kzIAO4w3VZ0b6y3VRyCVeF0IAQpd6yXOBwBQEtCv', '', 'confidential', 'password', 'pbkdf2_sha256$260000$pgcpf3nsgMNDBxHYgs20Bq$grqCPDXNCF4i8JxXDCXENHbSYnnwfef6RLRbciA1SZk=', 'ecourse app', 2, 0, '2022-09-06 14:19:16.842565', '2022-09-06 14:19:16.842565', ''),
(2, 'pL7pzAzyOGwKhcTBy20eT9dT2txXLUHqpvgQCxBN', '', 'confidential', 'password', 'pbkdf2_sha256$260000$NKhUx9XiF3NJFwtLP4zvGM$qC70PfHtqEFWFwvK/cMIKKFiPu+ElLwBr6a+PjQneyU=', 'ECOURSE', 2, 0, '2022-09-06 14:35:49.220114', '2022-09-06 14:35:49.220114', '');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_grant`
--

CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_idtoken`
--

CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint(20) NOT NULL,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

INSERT INTO `oauth2_provider_refreshtoken` (`id`, `token`, `access_token_id`, `application_id`, `user_id`, `created`, `updated`, `revoked`) VALUES
(1, '8wstGXiJ8JcGDBWyHVjA27HMSs7iO7', 1, 2, 2, '2022-09-06 14:46:55.865960', '2022-09-06 14:46:55.865960', NULL),
(2, 'N43vhiqFzHxtEO5GrAlM9daGU6lngU', 2, 2, 2, '2022-09-06 14:48:25.569260', '2022-09-06 14:48:25.569260', NULL),
(3, 'c4qbUGVjt0nRxMPY3f8KcxTf4C3DnW', 3, 2, 2, '2022-09-07 01:01:22.773528', '2022-09-07 01:01:22.773528', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `courses_category`
--
ALTER TABLE `courses_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `courses_course`
--
ALTER TABLE `courses_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_course_subject_category_id_5351bae9_uniq` (`subject`,`category_id`),
  ADD KEY `courses_course_category_id_d64b93bf_fk_courses_category_id` (`category_id`);

--
-- Indexes for table `courses_lesson`
--
ALTER TABLE `courses_lesson`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_lesson_subject_course_id_f2a8d9de_uniq` (`subject`,`course_id`),
  ADD KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`);

--
-- Indexes for table `courses_lesson_tags`
--
ALTER TABLE `courses_lesson_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_lesson_tags_lesson_id_tag_id_bae65f7d_uniq` (`lesson_id`,`tag_id`),
  ADD KEY `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` (`tag_id`);

--
-- Indexes for table `courses_tag`
--
ALTER TABLE `courses_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `courses_user`
--
ALTER TABLE `courses_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `courses_user_groups`
--
ALTER TABLE `courses_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_user_groups_user_id_group_id_b5cd82da_uniq` (`user_id`,`group_id`),
  ADD KEY `courses_user_groups_group_id_f1b5c084_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `courses_user_user_permissions`
--
ALTER TABLE `courses_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_user_user_permis_user_id_permission_id_e0e9296d_uniq` (`user_id`,`permission_id`),
  ADD KEY `courses_user_user_pe_permission_id_5803efd0_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_courses_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  ADD UNIQUE KEY `id_token_id` (`id_token_id`),
  ADD KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_courses_user_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD KEY `oauth2_provider_application_user_id_79829054_fk_courses_user_id` (`user_id`),
  ADD KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`);

--
-- Indexes for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_grant_user_id_e8f62af8_fk_courses_user_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jti` (`jti`),
  ADD KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_courses_user_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token_id` (`access_token_id`),
  ADD UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  ADD KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_courses_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `courses_category`
--
ALTER TABLE `courses_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses_course`
--
ALTER TABLE `courses_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_lesson`
--
ALTER TABLE `courses_lesson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_lesson_tags`
--
ALTER TABLE `courses_lesson_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses_tag`
--
ALTER TABLE `courses_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses_user`
--
ALTER TABLE `courses_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `courses_user_groups`
--
ALTER TABLE `courses_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses_user_user_permissions`
--
ALTER TABLE `courses_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `courses_course`
--
ALTER TABLE `courses_course`
  ADD CONSTRAINT `courses_course_category_id_d64b93bf_fk_courses_category_id` FOREIGN KEY (`category_id`) REFERENCES `courses_category` (`id`);

--
-- Constraints for table `courses_lesson`
--
ALTER TABLE `courses_lesson`
  ADD CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`);

--
-- Constraints for table `courses_lesson_tags`
--
ALTER TABLE `courses_lesson_tags`
  ADD CONSTRAINT `courses_lesson_tags_lesson_id_0f6df217_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  ADD CONSTRAINT `courses_lesson_tags_tag_id_5f430326_fk_courses_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `courses_tag` (`id`);

--
-- Constraints for table `courses_user_groups`
--
ALTER TABLE `courses_user_groups`
  ADD CONSTRAINT `courses_user_groups_group_id_f1b5c084_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `courses_user_groups_user_id_c63786e3_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `courses_user_user_permissions`
--
ALTER TABLE `courses_user_user_permissions`
  ADD CONSTRAINT `courses_user_user_pe_permission_id_5803efd0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `courses_user_user_pe_user_id_699dc51a_fk_courses_u` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);

--
-- Constraints for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_courses_user_id` FOREIGN KEY (`user_id`) REFERENCES `courses_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
