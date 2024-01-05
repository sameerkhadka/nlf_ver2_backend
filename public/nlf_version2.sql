-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 08:44 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nlf_version2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 2),
(24, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(25, 4, 'banner_video', 'file', 'Banner Video [To change the Video, first remove the old video, then upload new one]', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'introduction', 'rich_text_box', 'Introduction', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":800,\"min_height\":200}}', 5),
(27, 4, 'hashtags', 'text', 'Hashtags', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'highlight_title', 'text', 'Highlight Title', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(29, 4, 'highlight_subtitle', 'text', 'Highlight Subtitle', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(30, 4, 'timeline_title', 'text', 'Timeline Title', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'timeline_description', 'text_area', 'Timeline Description', 0, 1, 1, 1, 1, 1, '{}', 10),
(32, 4, 'about', 'rich_text_box', 'About', 0, 1, 1, 1, 1, 1, '{}', 11),
(33, 4, 'testimonial_title', 'text', 'Testimonial Title', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":100,\"min_height\":100}}', 14),
(34, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 5, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(36, 5, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(37, 5, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 4),
(38, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(39, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(40, 4, 'about_img1', 'image', 'About First Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 12),
(41, 4, 'about_img2', 'image', 'About Second Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(42, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(44, 6, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(45, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(46, 6, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(47, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(48, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(50, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(51, 7, 'designation', 'text', 'Designation', 0, 0, 1, 1, 1, 1, '{}', 3),
(52, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(53, 7, 'message', 'text_area', 'Message', 0, 0, 1, 1, 1, 1, '{}', 5),
(54, 7, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 6),
(55, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(57, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(59, 8, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(60, 8, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(4, 'homepages', 'homepages', 'Homepage', 'Homepage', 'voyager-home', 'App\\Models\\Homepage', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-05 00:44:02', '2024-01-05 01:54:52'),
(5, 'highlights', 'highlights', 'Highlight', 'Highlights', 'voyager-folder', 'App\\Models\\Highlight', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(6, 'timelines', 'timelines', 'Timeline', 'Timelines', 'voyager-browser', 'App\\Models\\Timeline', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(7, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-group', 'App\\Models\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(8, 'links', 'links', 'Quick Link', 'Quick Links', 'voyager-browser', 'App\\Models\\Link', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-01-05 01:20:07', '2024-01-05 01:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`id`, `title`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Day 1, 18th February', '<p><strong>07:00 am to 08:30am</strong></p>\r\n<h5>UAE Drama studio</h5>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci tempore incidunt officia dolor nesciunt est quos quis porro, temporibus numquam explicabo alias?</p>\r\n<p><em> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor dolorum explicabo eligendi? Aliquam, suscipit sed! </em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>08:30 am to 11:00am</strong></p>\r\n<h5>Oxford Poets with Alastair Lack</h5>\r\n<h6>Nick Acheson talks to Lucy Lapwing</h6>\r\n<p>Naturalist and conservationist Nick Acheson explains how he found a sense of peace and purpose in the pursuit of wild geese during the pandemic and tells the stories he uncovered</p>\r\n<h6>Nick Acheson talks to Lucy Lapwing</h6>\r\n<p>Naturalist and conservationist Nick Acheson explains how he found a sense of peace and purpose in the pursuit of wild geese during the pandemic and tells the stories he uncovered</p>\r\n<p><em> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor dolorum explicabo eligendi? Aliquam, suscipit sed! </em></p>', 1, '2024-01-05 01:01:12', '2024-01-05 01:44:00'),
(2, 'Day 2, 19th February', '<p><strong>10:00 am to 12:30am</strong></p>\r\n<h5>Afternoon reads strange land</h5>\r\n<p>World-leading physicist and international bestselling writer Carlo Rovelli talks about his favourite scientist, the little-known Greek philosopher Anaximander, who was the first to understand that the Earth was a rock suspended in space.</p>\r\n<p><em> Jonathan Stroud talks to Ben O&rsquo;Donnell </em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>12:30 am to 01:00pm</strong></p>\r\n<h5>Oxford Poets with Alastair Lack</h5>\r\n<h6>Leah Garc&eacute;s</h6>\r\n<p>US animal rights campaigner Leah Garc&eacute;s talks about how she fought for better conditions in the American chicken industry by getting to know and understand the farme</p>\r\n<p><em> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor dolorum explicabo eligendi? Aliquam, suscipit sed! </em></p>\r\n<h6>Leah Garc&eacute;s</h6>\r\n<p>US animal rights campaigner Leah Garc&eacute;s talks about how she fought for better conditions in the American chicken industry by getting to know and understand the farme</p>\r\n<p><em> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor dolorum explicabo eligendi? Aliquam, suscipit sed! </em></p>', 2, '2024-01-05 01:01:44', '2024-01-05 01:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `created_at`, `updated_at`, `banner_video`, `introduction`, `hashtags`, `highlight_title`, `highlight_subtitle`, `timeline_title`, `timeline_description`, `about`, `testimonial_title`, `about_img1`, `about_img2`) VALUES
(1, '2024-01-05 00:45:44', '2024-01-05 01:56:09', '[{\"download_link\":\"homepages\\\\January2024\\\\J4DRYCjHHDdvPqiSnkZo.mp4\",\"original_name\":\"WEB VIDEO.mp4\"}]', '<h3>Nepal Literature Festival, over the past decade, has blossomed into a grand celebration.</h3>\r\n<p>From its humble origins as a modest four-day gathering held at a single venue featuring 50 author. Today, the Festival stands as a monumental occasion, boasting a lineup of 150 speakers hailing from around the world.</p>\r\n<p>Spanning multiple venues and drawing a crowd of over 20,000 enthusiasts across four dynamic days, the Festival encompasses a diverse and vibrant audience.</p>\r\n<p><a href=\"#\">BOOK NOW ⟶</a></p>', 'nepallitfest @ visitpokhara @ literaturefestival @ pokhara  @ litfest2024', 'Nepal Literature Festival 2024', 'Highlights', 'The Festival Timeline', 'Nepal Literature Festival, over the past decade, has blossomed into a grand celebration. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde, accusantium nobis repellat explicabo, ratione rem perferendis ipsam, praesentium atque iste numquam cum!', '<h3><em>Key things to know</em> when you are at <br>Nepal Literature Festival</h3>', 'Testimonials', 'homepages\\January2024\\kkP2ZM1ApJMwnUldVuxy.jpg', 'homepages\\January2024\\KoJ2loXDOLautvKkXTyb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `link`, `order`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '#', 1, '2024-01-05 01:21:10', '2024-01-05 01:35:15'),
(2, 'Our History', '#', 2, '2024-01-05 01:21:19', '2024-01-05 01:35:15'),
(3, 'Our Team', '#', 3, '2024-01-05 01:21:27', '2024-01-05 01:21:27'),
(4, 'Media Coverage', '#', 4, '2024-01-05 01:21:37', '2024-01-05 01:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-01-05 00:25:47', '2024-01-05 00:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-01-05 00:25:47', '2024-01-05 00:25:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-01-05 00:25:47', '2024-01-05 00:25:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-01-05 00:25:47', '2024-01-05 00:25:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2024-01-05 00:25:47', '2024-01-05 01:16:22', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2024-01-05 00:25:47', '2024-01-05 01:16:22', 'voyager.settings.index', NULL),
(11, 1, 'Homepage', '', '_self', 'voyager-home', NULL, NULL, 6, '2024-01-05 00:44:03', '2024-01-05 01:16:22', 'voyager.homepages.index', NULL),
(12, 1, 'Highlights', '', '_self', 'voyager-folder', NULL, NULL, 7, '2024-01-05 01:00:22', '2024-01-05 01:16:22', 'voyager.highlights.index', NULL),
(13, 1, 'Timelines', '', '_self', 'voyager-browser', NULL, NULL, 8, '2024-01-05 01:08:20', '2024-01-05 01:16:22', 'voyager.timelines.index', NULL),
(14, 1, 'Testimonials', '', '_self', 'voyager-group', NULL, NULL, 9, '2024-01-05 01:12:27', '2024-01-05 01:16:22', 'voyager.testimonials.index', NULL),
(15, 1, 'Quick Links', '', '_self', 'voyager-browser', NULL, NULL, 11, '2024-01-05 01:20:07', '2024-01-05 01:20:07', 'voyager.links.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(2, 'browse_bread', NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(3, 'browse_database', NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(4, 'browse_media', NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(5, 'browse_compass', NULL, '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(6, 'browse_menus', 'menus', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(7, 'read_menus', 'menus', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(8, 'edit_menus', 'menus', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(9, 'add_menus', 'menus', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(10, 'delete_menus', 'menus', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(11, 'browse_roles', 'roles', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(12, 'read_roles', 'roles', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(13, 'edit_roles', 'roles', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(14, 'add_roles', 'roles', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(15, 'delete_roles', 'roles', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(16, 'browse_users', 'users', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(17, 'read_users', 'users', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(18, 'edit_users', 'users', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(19, 'add_users', 'users', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(20, 'delete_users', 'users', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(21, 'browse_settings', 'settings', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(22, 'read_settings', 'settings', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(23, 'edit_settings', 'settings', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(24, 'add_settings', 'settings', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(25, 'delete_settings', 'settings', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(26, 'browse_homepages', 'homepages', '2024-01-05 00:44:03', '2024-01-05 00:44:03'),
(27, 'read_homepages', 'homepages', '2024-01-05 00:44:03', '2024-01-05 00:44:03'),
(28, 'edit_homepages', 'homepages', '2024-01-05 00:44:03', '2024-01-05 00:44:03'),
(29, 'add_homepages', 'homepages', '2024-01-05 00:44:03', '2024-01-05 00:44:03'),
(30, 'delete_homepages', 'homepages', '2024-01-05 00:44:03', '2024-01-05 00:44:03'),
(31, 'browse_highlights', 'highlights', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(32, 'read_highlights', 'highlights', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(33, 'edit_highlights', 'highlights', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(34, 'add_highlights', 'highlights', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(35, 'delete_highlights', 'highlights', '2024-01-05 01:00:22', '2024-01-05 01:00:22'),
(36, 'browse_timelines', 'timelines', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(37, 'read_timelines', 'timelines', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(38, 'edit_timelines', 'timelines', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(39, 'add_timelines', 'timelines', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(40, 'delete_timelines', 'timelines', '2024-01-05 01:08:20', '2024-01-05 01:08:20'),
(41, 'browse_testimonials', 'testimonials', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(42, 'read_testimonials', 'testimonials', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(43, 'edit_testimonials', 'testimonials', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(44, 'add_testimonials', 'testimonials', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(45, 'delete_testimonials', 'testimonials', '2024-01-05 01:12:27', '2024-01-05 01:12:27'),
(46, 'browse_links', 'links', '2024-01-05 01:20:07', '2024-01-05 01:20:07'),
(47, 'read_links', 'links', '2024-01-05 01:20:07', '2024-01-05 01:20:07'),
(48, 'edit_links', 'links', '2024-01-05 01:20:07', '2024-01-05 01:20:07'),
(49, 'add_links', 'links', '2024-01-05 01:20:07', '2024-01-05 01:20:07'),
(50, 'delete_links', 'links', '2024-01-05 01:20:07', '2024-01-05 01:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-01-05 00:25:47', '2024-01-05 00:25:47'),
(2, 'user', 'Normal User', '2024-01-05 00:25:47', '2024-01-05 00:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Nepal Literature Festival', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Nepal Literature Festival', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\January2024\\WUcey2uYhc1Urdxx8j0w.jpg', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\January2024\\QX8lQYFyrqWNFRgkbwJI.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'NLF', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to CMS of Nepal Literature Festival', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\January2024\\44aD1K8TcZSUPQKTuayG.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\January2024\\FKYYy0VdmTJqkMRJm5a7.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '123', '', 'text', 1, 'Admin'),
(11, 'site.footer_logo', 'Footer Logo', 'settings\\January2024\\acXBzrQA351Btplj0qjK.png', NULL, 'image', 7, 'Site'),
(12, 'site.login', 'Login/Register Link', '#', NULL, 'text', 6, 'Site'),
(13, 'contact-us.address', 'Address', 'Komagane Park, Lakeside, Pokhara', NULL, 'text', 8, 'Contact Us'),
(14, 'contact-us.phone', 'Phone', '+977 01-123456', NULL, 'text', 9, 'Contact Us'),
(15, 'contact-us.email', 'Email', 'info@nepalliteraturefestival.com', NULL, 'text', 10, 'Contact Us'),
(16, 'contact-us.facebook', 'Facebook', '#', NULL, 'text', 11, 'Contact Us'),
(17, 'contact-us.instagram', 'Instagram', '#', NULL, 'text', 12, 'Contact Us'),
(18, 'contact-us.twitter', 'Twitter', '#', NULL, 'text', 13, 'Contact Us'),
(19, 'contact-us.youtube', 'Youtube', '#', NULL, 'text', 14, 'Contact Us'),
(20, 'site.og', 'OG Image', 'settings\\January2024\\SfVjcJ7Hwx7X8BQnKWDA.jpg', NULL, 'image', 15, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `message`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Samrat Upadhyay', 'Nepalese-American writer', 'testimonials\\January2024\\IICwZZoc8bM5ucF2MY9Z.jpg', 'I feel privileged and delighted that KCL has been a part of the Serendipity Arts Festival right from its inception, which has allowed me to attend all its editions so far. The festival offers a remarkable range of genres and activities that never fail to pleasantly surprise me with something new every time. This is particularly noteworthy given my extensive experience in the art world spanning over three decades, during which I have traveled widely and attended numerous festivals. Despite the challenges faced after two years, the festival was at par with the previous editions, with great crowds and visitors from all over India. I want to thank the SAF team for making it possible, and a special mention to the enthusiastic volunteers who made a huge contribution to the visitor experience. I hope to witness this grand celebration of arts for years to come.\" I highly recommend everyone to experience the festival at least once.', 1, '2024-01-05 01:13:35', '2024-01-05 01:35:27'),
(2, 'Wicher Slagter', 'First Secretary for Political Affairs, Press and Public Diplomacy | Netherlands Embassy in India', 'testimonials\\January2024\\HFahc5kOEqDJnQ3vYDjw.jpg', 'I feel privileged and delighted that KCL has been a part of the Serendipity Arts Festival right from its inception, which has allowed me to attend all its editions so far. The festival offers a remarkable range of genres and activities that never fail to pleasantly surprise me with something new every time. This is particularly noteworthy given my extensive experience in the art world spanning over three decades, during which I have traveled widely and attended numerous festivals. Despite the challenges faced after two years, the festival was at par with the previous editions, with great crowds and visitors from all over India. I want to thank the SAF team for making it possible, and a special mention to the enthusiastic volunteers who made a huge contribution to the visitor experience. I hope to witness this grand celebration of arts for years to come.\" I highly recommend everyone to experience the festival at least once.', 2, '2024-01-05 01:14:32', '2024-01-05 01:35:27'),
(3, 'Samrat Upadhyay', 'Nepalese-American writer', NULL, 'I feel privileged and delighted that KCL has been a part of the Serendipity Arts Festival right from its inception, which has allowed me to attend all its editions so far. The festival offers a remarkable range of genres and activities that never fail to pleasantly surprise me with something new every time. This is particularly noteworthy given my extensive experience in the art world spanning over three decades, during which I have traveled widely and attended numerous festivals. Despite the challenges faced after two years, the festival was at par with the previous editions, with great crowds and visitors from all over India. I want to thank the SAF team for making it possible, and a special mention to the enthusiastic volunteers who made a huge contribution to the visitor', 3, '2024-01-05 01:15:19', '2024-01-05 01:36:22'),
(4, 'Samrat Upadhyay', 'Nepalese-American writer', 'testimonials\\January2024\\lfey9BNG4M04IERtHSc9.jpg', 'I feel privileged and delighted that KCL has been a part of\r\n                the Serendipity Arts Festival right from its inception, which\r\n                has allowed me to attend all its editions so far. The festival\r\n                offers a remarkable range of genres and activities that never\r\n                fail to pleasantly surprise me with something new every time.', 4, '2024-01-05 01:16:06', '2024-01-05 01:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `title`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, '2011', 'Nepal saw its first ever international literature festival', 'timelines\\January2024\\8OE1gAtBTkRnPfNhA8lA.jpg', 1, '2024-01-05 01:09:00', '2024-01-05 01:09:00'),
(2, '2012', 'Moved to a bigger venue and hosted the celebrated editor Vinod\r\n                Mehta and bestselling author Amish Tripath', 'timelines\\January2024\\xZXJcSFpdRSSDosHquiI.jpg', 2, '2024-01-05 01:09:14', '2024-01-05 01:09:14'),
(3, '2013', 'Inaugurated by national poet Madhav Prasad Ghimire, with more\r\n                international writers like Shobhaa De, Ravinder Singh, etc', 'timelines\\January2024\\kNmaQ0ZuUAem2KAu5s9O.jpg', 3, '2024-01-05 01:09:27', '2024-01-05 01:09:27'),
(4, '2014', 'Bestselling celebrity author and politician Shashi Tharoor was\r\n                in attendence', 'timelines\\January2024\\tLIORIFcNUzspDTuTluI.jpg', 4, '2024-01-05 01:09:39', '2024-01-05 01:09:39'),
(5, '2016', 'Moved to the scenic city of Pokhara and hosted renowned\r\n                journalist Barkha Dutt and writers Thomas Bell and Ira\r\n                Trivedi. No wonder the organisers decided to hold subsequent\r\n                editions in Pokhara', 'timelines\\January2024\\8qqq7NIjfWE00xw1g3G9.jpg', 5, '2024-01-05 01:09:56', '2024-01-05 01:09:56'),
(6, '2017', 'Noted Indian historian Ramachandra Guha and prominent Indian\r\n                literary figures Uday Prakash and Durjoy Dutt attended the\r\n                Festival.', 'timelines\\January2024\\XX8Vnmw2zLgryeO70wYX.jpg', 6, '2024-01-05 01:10:10', '2024-01-05 01:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@nlf.com', 'users/default.png', NULL, '$2y$10$IiSXnb5lf2y2px596P6P1.gxB3MFB2XA55AqBSNGrVaFZ4Zg/Y1tC', NULL, NULL, '2024-01-05 00:26:17', '2024-01-05 00:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
