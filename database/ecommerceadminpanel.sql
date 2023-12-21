-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 10:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceadminpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `persian_name` varchar(255) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `original_name`, `persian_name`, `descriptions`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(39, 'Samsung', 'سامسونگ', 'محصولات سامسونگ ویرایش شد', 'images/brands/4KQhbHxhjcMhFM0EJYqJJnHjmHcI1ghsRuX07Hb6.png', NULL, '2022-10-25 08:25:07', '2023-10-21 03:39:08'),
(44, 'dell', 'دل', 'محصولات شرکت دل', 'images/brands/qYSBYsLhbZwmlDIS2duTOygQ3I3ObFJEmB0656rc.png', NULL, '2022-12-04 16:23:38', '2023-02-16 03:05:29'),
(45, 'Nike', 'نایکی', 'محصولات نایکی', 'images/brands/3gIC9kPjgeOiAoRfffWvnEDkuYyB6OhTXbmBmApP.png', NULL, '2022-12-10 15:19:19', '2023-02-16 03:06:47'),
(118, 'Sivash', 'سیاوش قمیشی', NULL, 'images/brands/AF4zz3LgRwr1rwJEKJbtqUXRgE3rttfSYYae9uF8.jpg', NULL, '2023-09-28 07:16:47', '2023-09-28 07:16:47'),
(188, 'qq', 'نام تست3', NULL, NULL, NULL, '2023-12-13 01:42:18', '2023-12-13 01:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_ordered` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `is_active`, `is_ordered`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 12, 1, 1, NULL, '2022-11-12 15:25:58', '2022-11-12 15:44:06'),
(15, 10, 1, 1, NULL, '2022-11-17 17:22:30', '2022-11-17 17:27:22'),
(17, 12, 1, 1, NULL, '2022-11-20 19:57:02', '2023-02-17 08:50:31'),
(18, 12, 1, 1, NULL, '2022-11-20 19:58:11', '2022-11-20 19:58:52'),
(25, 10, 1, 1, NULL, '2023-03-06 15:27:34', '2023-03-11 17:50:52'),
(48, 12, 1, 0, NULL, '2023-07-08 12:04:53', '2023-07-08 12:04:53'),
(49, 12, 1, 0, NULL, '2023-07-08 12:15:19', '2023-07-08 12:15:19'),
(50, 26, 1, 1, NULL, '2023-07-09 07:07:45', '2023-07-10 07:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `show_in_menu` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `descriptions`, `image`, `logo`, `is_active`, `show_in_menu`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(548, 'لوازم بهداشتی', 'لوازم بهداشتیلوازم بهداشتیلوازم بهداشتیلوازم بهداشتیلوازم بهداشتی', NULL, NULL, 0, 1, NULL, NULL, '2023-12-09 07:45:06', '2023-12-09 07:45:06'),
(550, 'بهداشتی2', 'بهداشتیبهداشتیبهداشتیبهداشتی', NULL, NULL, 0, 1, 548, NULL, '2023-12-09 07:45:39', '2023-12-09 07:45:39'),
(551, 'بهداشتی3', 'بهداشتیبهداشتی', NULL, NULL, 0, 1, 548, NULL, '2023-12-09 07:45:46', '2023-12-09 07:45:46'),
(552, 'بهداشتی4', NULL, NULL, NULL, 0, 1, 548, NULL, '2023-12-09 07:45:54', '2023-12-09 07:45:54'),
(555, 'لوازم برقی', 'لوازم برقیلوازم برقیلوازم برقی', NULL, NULL, 0, 1, NULL, NULL, '2023-12-09 08:23:04', '2023-12-09 08:23:04'),
(556, 'لوازم خانگی', NULL, NULL, NULL, 0, 1, NULL, NULL, '2023-12-09 08:26:38', '2023-12-09 08:26:38'),
(557, 'لوازم کامپیوتری', NULL, NULL, NULL, 0, 1, NULL, NULL, '2023-12-09 08:26:58', '2023-12-09 08:26:58'),
(558, 'pc1', NULL, NULL, NULL, 0, 1, 557, NULL, '2023-12-09 08:27:13', '2023-12-09 08:27:13'),
(559, 'pc2', NULL, NULL, NULL, 0, 1, 557, NULL, '2023-12-09 08:27:20', '2023-12-09 08:27:20'),
(560, 'pc3', NULL, NULL, NULL, 0, 1, 557, NULL, '2023-12-09 08:27:28', '2023-12-09 08:27:28'),
(561, 'pc4', NULL, NULL, NULL, 0, 1, 557, NULL, '2023-12-09 08:27:35', '2023-12-09 08:27:35'),
(562, 'برقی1', NULL, NULL, NULL, 0, 1, 555, NULL, '2023-12-09 08:27:57', '2023-12-09 08:27:57'),
(563, 'برقی2', NULL, NULL, NULL, 0, 1, 555, NULL, '2023-12-09 08:28:07', '2023-12-09 08:28:07'),
(565, 'لوازم خانه', NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-12-11 15:00:29', '2023-12-11 15:00:29'),
(567, 'test5555', NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-12-13 12:07:50', '2023-12-13 12:07:50'),
(568, 'tafasdsad', NULL, NULL, NULL, 1, 1, 556, NULL, '2023-12-14 04:24:33', '2023-12-14 04:24:33'),
(569, 'example title 24', NULL, NULL, NULL, 1, 1, 555, NULL, '2023-12-14 04:31:35', '2023-12-14 04:31:35'),
(570, 'نیست', NULL, NULL, NULL, 1, 1, 567, NULL, '2023-12-14 05:39:41', '2023-12-14 05:39:41'),
(571, 'sd', NULL, NULL, NULL, 1, 1, 548, NULL, '2023-12-14 06:53:24', '2023-12-14 06:53:24'),
(574, 'category test', 'description text ...', 'images/categories/XLbFWQV7uP0nj99u7RG04SiIQrYWvhRwZmluYGM8.jpg', NULL, 1, 1, 548, NULL, '2023-12-21 18:00:26', '2023-12-21 18:00:26'),
(575, 'category test1', 'description text ...1', 'images/categories/eyBmiqyfPsWr8f4COA5x1d27mPfUCcUqCtZKBBlm.jpg', NULL, 1, 1, 548, NULL, '2023-12-21 18:08:35', '2023-12-21 18:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`) VALUES
(371, 550, 297),
(372, 562, 298),
(381, 558, 303),
(383, 551, 304),
(384, 559, 304),
(386, 550, 306),
(387, 551, 306);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(131, 'قرمزhhhhnbv', '#a99393', NULL, '2023-10-25 01:30:57', '2023-12-08 01:33:34'),
(133, 'abi', '#1439f0', NULL, '2023-11-06 02:31:03', '2023-12-08 01:11:02'),
(135, 'red', '#726565', NULL, '2023-12-08 01:13:17', '2023-12-08 16:59:57'),
(136, 's', '#563d7c', NULL, '2023-12-08 17:00:05', '2023-12-08 17:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`) VALUES
(190, 133, 303),
(191, 133, 304),
(192, 131, 306),
(193, 133, 306);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_best` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `time_unit` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `title`, `amount`, `time`, `time_unit`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'پست پیشتاز', '350000', '1', 'روز', 1, NULL, '2022-11-02 15:02:35', '2023-08-07 08:10:45'),
(2, 'تیپاکس', '45000', '1', 'روز', 1, NULL, '2022-11-02 15:15:28', '2023-03-08 13:53:02'),
(11, 'اداره پست', '20000', '14', 'روز', 1, NULL, '2023-03-08 13:53:10', '2023-03-08 13:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) DEFAULT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `for_all` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `title`, `code`, `percent`, `expire_at`, `is_active`, `for_all`, `deleted_at`, `created_at`, `updated_at`) VALUES
(17, 'new2', 'new2', 30, '2023-06-26 20:30:00', 1, 1, NULL, '2022-11-03 08:55:44', '2023-12-15 17:40:29'),
(28, 'تخفیف عیدانه 1402', 'EidDiscount1402', 25, '2022-04-22 19:30:00', 1, 0, NULL, '2023-02-20 03:11:51', '2023-06-06 05:43:36'),
(52, 'تخفیف زمستانه', 'Winter', 2, '2023-10-07 20:30:00', 1, 1, NULL, '2023-06-06 02:56:15', '2023-12-15 17:32:15'),
(53, 'حراج آخر فصل', 'seasn', 0, '2023-06-05 20:30:00', 1, 1, NULL, '2023-06-06 02:57:21', '2023-06-06 02:57:21'),
(54, 'انبارگردانی', 'werhouse', 30, '2023-06-05 20:30:00', 1, 1, NULL, '2023-06-06 03:00:50', '2023-06-10 03:34:01'),
(57, 'codeTest', 'codetakhfif', 10, '2022-07-31 19:30:00', 1, 1, NULL, '2023-09-05 06:53:19', '2023-10-10 07:19:15'),
(61, 'ee', 'ee', 12, '2023-12-13 20:30:00', 1, 1, NULL, '2023-12-14 23:09:29', '2023-12-14 23:09:29'),
(62, '12', '12', 0, '2023-12-13 20:30:00', 1, 1, NULL, '2023-12-14 23:12:57', '2023-12-14 23:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `discount_product`
--

CREATE TABLE `discount_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorits`
--

CREATE TABLE `favorits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `alt_image` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guarantees`
--

CREATE TABLE `guarantees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `length_unit` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guarantees`
--

INSERT INTO `guarantees` (`id`, `title`, `descriptions`, `length`, `length_unit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(97, 'Mservice3', 'برای محصولات سامسونگ2', 5, 'ماه', NULL, '2023-06-21 09:25:36', '2023-10-24 08:37:09'),
(100, 'test guarantee2', 'some description about this record...', 5, 'ماه', NULL, '2023-10-18 08:09:20', '2023-10-24 08:38:29'),
(143, 'q2', 'pop', 12, 'ماه', NULL, '2023-10-24 07:27:45', '2023-10-24 08:37:57'),
(148, 're', 're', 2, 'ماه', NULL, '2023-10-24 08:37:02', '2023-10-24 08:37:02'),
(149, '11', '11', 10, 'ماه', NULL, '2023-11-28 08:22:31', '2023-11-28 08:22:31'),
(150, '12', '12', 12, 'ماه', NULL, '2023-11-28 08:22:38', '2023-11-28 08:22:38'),
(151, '20', '20', 2, 'سال', NULL, '2023-11-28 08:22:50', '2023-11-28 08:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `guarantee_product`
--

CREATE TABLE `guarantee_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guarantee_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guarantee_product`
--

INSERT INTO `guarantee_product` (`id`, `guarantee_id`, `product_id`) VALUES
(116, 143, 303),
(117, 148, 304),
(118, 143, 306);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guarantee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `count` double(8,2) NOT NULL,
  `unit_price` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_12_03_073429_create_categories_table', 1),
(9, '2021_12_03_073724_create_properties_table', 1),
(10, '2021_12_03_073927_create_brands_table', 1),
(11, '2021_12_03_074003_create_colors_table', 1),
(12, '2021_12_03_074054_create_guarantees_table', 1),
(13, '2021_12_03_074132_create_products_table', 1),
(14, '2021_12_03_074507_create_product_property_table', 1),
(15, '2021_12_03_074920_create_category_product_table', 1),
(16, '2021_12_03_075202_create_color_product_table', 1),
(17, '2021_12_03_075343_create_guarantee_product_table', 1),
(18, '2021_12_09_151419_create_carts_table', 1),
(19, '2021_12_09_152035_create_items_table', 1),
(20, '2021_12_09_153111_create_favorits_table', 1),
(21, '2021_12_09_153543_create_discounts_table', 1),
(22, '2021_12_09_154612_create_discount_product_table', 1),
(23, '2021_12_09_155334_create_deliveries_table', 1),
(24, '2021_12_09_155820_create_statuses_table', 1),
(25, '2021_12_09_155821_create_orders_table', 1),
(26, '2021_12_09_162637_create_comments_table', 1),
(27, '2021_12_09_163657_create_question_categories_table', 1),
(28, '2021_12_09_163816_create_questions_table', 1),
(29, '2021_12_09_164839_create_galleries_table', 1),
(30, '2021_12_09_165249_create_roles_table', 1),
(31, '2021_12_09_165543_create_permissions_table', 1),
(32, '2021_12_09_165658_create_role_user_table', 1),
(33, '2021_12_09_165938_create_permission_role_table', 1),
(34, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0006cfa6df6fd0f8792a707d43224d066ecc8c56359150821e392fa1c1c224290d543010f228a9e1', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:37:11', '2022-11-21 02:37:11', '2022-11-21 07:07:11'),
('000d30969bdba6e9cde32cbc25fc9097ec2b8a116887489e53e5f4badafdd2269b2bdff2a754158b', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:47:07', '2023-08-08 08:47:07', '2023-08-08 13:17:07'),
('0020a1ab9e8dbc8cde6a1106d3fcc7461b6b1032ccf94302859abe7e6a47bc7e2610f07d9ad0d9b2', 1, 1, 'personalToken', '[]', 0, '2023-06-08 11:22:17', '2023-06-08 11:22:17', '2028-06-08 14:52:17'),
('004724f2b1c5018d2865267afeef2625c5c19a5c22d32e3a5269e35210883239ec2b7cd4711e5e11', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:32:27', '2022-09-28 06:32:27', '2027-09-28 10:02:27'),
('0047b1a7d356115975507bab9f2ebc2a2bd796685bbdbcd8604e0d061e18a2a1eb669be199f55ca1', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:36:45', '2022-12-07 09:36:45', '2022-12-07 14:06:45'),
('004e40b581ab4d4cc4831d335ad4c8f2ff613844ccb1e6efd19d488ef8d0bcea34c49faea6e62db8', 1, 1, 'personalToken', '[]', 1, '2023-06-21 06:45:21', '2023-06-21 06:45:21', '2023-06-21 11:15:21'),
('005a35aa57a120b4008b6893699198c23a0c296614e93a11736ffc38bad66726181c995b99c8f1d8', 1, 1, 'personalToken', '[]', 0, '2023-02-11 02:17:48', '2023-02-11 02:17:48', '2023-02-11 06:47:48'),
('007240724b78dbd08e6faaf4cecf9d8f571a15c5278a5caa8d1051becbdf39438ead116c046243fa', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:38:05', '2023-08-08 08:38:05', '2023-08-08 13:08:05'),
('0079ba0b9ac6d0c9c88aa90fcd014d6086fb6bbf080eaf0f72fb6f40623ae37507c274976aea4517', 1, 1, 'personalToken', '[]', 1, '2022-12-26 10:09:31', '2022-12-26 10:09:31', '2022-12-26 14:39:31'),
('00a7f03df417073ef21ba407691acbc73c2024b04b6bc18540a9def006ac215d7f9b35a14f437bbf', 1, 1, 'personalToken', '[]', 0, '2023-03-27 08:01:42', '2023-03-27 08:01:42', '2023-03-27 12:31:42'),
('00aecda069aa3f47fd91db03c175c54174bdfefea62b5370d4e396c91e1d6fb8393973970ad5604a', 1, 1, 'personalToken', '[]', 0, '2022-07-13 15:03:43', '2022-07-13 15:03:43', '2027-07-13 19:33:43'),
('00b364cade10f038c2e11aac7354bef2c05d9f32e86cfafaf521a44dd5b7c5b995d1aacacd59a558', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:14:40', '2022-08-03 06:14:40', '2022-08-03 11:44:40'),
('00e0a0577bb5ad765d0184a91287b7a081d45f227f8fe5b994b44b8697c7c57f9524bd115ba2b848', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:51:14', '2023-11-17 14:51:14', '2023-11-17 19:21:14'),
('00f14a90501d53f074384593f4e7a059f978aea7bbd610d33264a198d3deff843eaf61735ea47a9a', 1, 1, 'personalToken', '[]', 0, '2023-04-14 14:18:48', '2023-04-14 14:18:48', '2028-04-14 17:48:48'),
('0102b0c730a843c880c3ff796d86e58ab5498c282655a0d266d851fb2a85e7ed905f8d88998b25a8', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:11:03', '2022-12-15 06:11:03', '2027-12-15 09:41:03'),
('0105d38cf91931cbb7a308cf5b53a00f80d4d7e4a0627fa324c347d1e1fc51e730d8c7ad7963d757', 1, 1, 'personalToken', '[]', 1, '2023-04-11 15:59:58', '2023-04-11 15:59:58', '2023-04-11 20:29:58'),
('010d75a408c9c1e92184acf63d8fb5576008144c6b1db99ae2ea4b953775b47a2b926874106a4642', 1, 1, 'personalToken', '[]', 1, '2023-09-18 02:39:47', '2023-09-18 02:39:47', '2028-09-18 06:09:47'),
('01330968265ac494a1dbe7c8dbdb25f4557f13a5919e8c3bab816c25291ab0b317ca25f04691eb95', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:44:43', '2023-04-11 08:44:43', '2023-04-11 13:14:43'),
('014d4dfc638a3ce39d15ba63b04d8eac105b887524cccc24ac5e6b28a751c382925754b21aea09c8', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:14:05', '2023-06-30 10:14:05', '2023-06-30 14:44:05'),
('014f6f89e80a77d4c8ea1af5f7668e4e1d9070ff7ad730628c52a7779d207ebd67d81dac01f4a185', 1, 1, 'personalToken', '[]', 0, '2022-12-16 05:19:27', '2022-12-16 05:19:27', '2027-12-16 08:49:27'),
('0150f987ac66606a3bf946ff37f4224553aa731c31de8d2a505aefba9bfd1526a9aff88d45c4ab7c', 1, 1, 'personalToken', '[]', 0, '2023-08-23 01:29:02', '2023-08-23 01:29:02', '2023-08-23 05:59:02'),
('017c76f819bec8d0f59349a0fe4141e4f6330334db7fa205fade0a38b7c8041d4fbfa1efdb30f96d', 1, 1, 'personalToken', '[]', 0, '2022-11-13 06:43:17', '2022-11-13 06:43:17', '2022-11-13 11:13:17'),
('01847be9d85b8fd8aff36395b898a926be0f61a63841a8db75ec5b95b0dcb4866a4d8e8c82ce8f90', 1, 1, 'personalToken', '[]', 1, '2023-05-16 18:37:02', '2023-05-16 18:37:02', '2023-05-16 23:07:02'),
('01db0cc6a889acded96b4d557f9cb8660c2233316159c7856833297c25eb96e7f3a3af249992deb2', 1, 1, 'personalToken', '[]', 0, '2022-11-27 17:26:43', '2022-11-27 17:26:43', '2027-11-27 20:56:43'),
('01e0e53535578f0b095503f192c3f440a3e931ead85b2708ed2ed8f1e59ca2b686c8fff4ab08ce9e', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:38:58', '2022-12-26 03:38:58', '2022-12-26 08:08:58'),
('01f5e3c2e28c2280ea641eca91f71c9eb963908d029ae934e5d5c2ffb046ee6619b962654711f49e', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:22:03', '2023-04-24 11:22:03', '2023-04-24 15:52:03'),
('020bb80d4ada7b04c4e04fc26ad0069a1af4006ed9085a0a97e3f64aabd8dba548be11139cd236e0', 1, 1, 'personalToken', '[]', 0, '2022-06-26 13:30:53', '2022-06-26 13:30:53', '2022-06-26 19:00:53'),
('0215ed5d2a100428ca1c95c30da4453249347af87d6403737a34d7b8c029fa07bdda0ccd7e0e6b43', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:07:08', '2023-04-11 08:07:08', '2023-04-11 12:37:08'),
('0232b8fb69d6052e14ce5124673c9469dd04b3e84280f8cbfae0e4c5ab2e99009f7c177c487d749d', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:05:08', '2022-08-03 06:05:08', '2022-08-03 11:35:08'),
('024fedbf201c05fdea515a31adfc27c523c387823ac2ecf9c07f79e7548db9fc4ec22b840e55f223', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:41:06', '2022-07-13 03:41:06', '2022-07-13 09:11:06'),
('0253c912e470337810a8ab03c65b71904084e730ad2d3293ec6e87d1277bff708c2b4ffdabc51f9e', 1, 1, 'personalToken', '[]', 0, '2023-05-23 06:17:01', '2023-05-23 06:17:01', '2023-05-23 10:47:01'),
('02aa7eab46d5d5e3e3b00a435a89d57260189e4f8012fe4371f6607c4babadd49b2b849672fb6db9', 1, 1, 'personalToken', '[]', 0, '2023-05-02 12:28:41', '2023-05-02 12:28:41', '2028-05-02 15:58:41'),
('02b50b6f66e80c40130763c9f1c6062bcfdbbe71fb22277a5a8f786138e72af770e978a47635d54e', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:00:45', '2023-04-12 16:00:45', '2023-04-12 20:30:45'),
('02c0fe3c442fd8359fa18967554f05be36c9fb4d4c5024e79f52a125178537676b6685fd219029dc', 1, 1, 'personalToken', '[]', 1, '2022-07-25 13:53:26', '2022-07-25 13:53:26', '2027-07-25 18:23:26'),
('02cf8956dbde9200e77514ceaab4a92c2cec70eae83af9b5aa1dc74c554bd836a982d9586d5c9050', 1, 1, 'personalToken', '[]', 0, '2023-01-19 11:24:43', '2023-01-19 11:24:43', '2028-01-19 14:54:43'),
('0303c535807bf229d0346f6d8a295945416e95f1ac23e29e5c20deb336b433364470ad6d4bb7a68f', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:54:17', '2023-06-30 09:54:17', '2023-06-30 14:24:18'),
('0303edb3a702a452bf723ee8255be7dbb5d2d0e8cf771c1d39914aad11d52384574b661412e30607', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:18:58', '2023-08-09 02:18:58', '2023-08-09 06:48:58'),
('03504fe6f589411183d4a9c1a15bc7848275d75e1e45e13210c6a5610c5acd81865af2347a123fa7', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:37:52', '2023-06-30 10:37:52', '2023-06-30 15:07:52'),
('037af0c1c1a83b4a08e529fd2a753d2ffe185a2d7eda7215a277a25f9d2b6e33d6d1e0dadcb38a24', 1, 1, 'personalToken', '[]', 1, '2022-08-01 19:35:05', '2022-08-01 19:35:05', '2027-08-02 00:05:05'),
('03844f7cc6937cc7f787537dc2af41b16bb8329fb221289fed46a40e9a393386d198697a4f1be73d', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:47:30', '2022-08-27 01:47:30', '2027-08-27 06:17:30'),
('039046e5ad3e91547f72fcd0760ecc20f65a89d0f96326c94c5558791ef5ca8dc36faa092e37cad8', 1, 1, 'personalToken', '[]', 0, '2023-12-08 17:45:09', '2023-12-08 17:45:09', '2028-12-08 21:15:09'),
('03ae113ef477245676249f359d7f561905fa691aee20763952b1f675c55f75df8488aff269bb64e1', 1, 1, 'personalToken', '[]', 0, '2023-08-21 02:36:55', '2023-08-21 02:36:55', '2023-08-21 07:06:55'),
('03c1612cc3ecccb7550b73735349657785c514320699b89f43caa239b672547d21848e868efbc859', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:47:20', '2022-10-22 14:47:20', '2027-10-22 18:17:20'),
('03c30de5bada09b1573dcf40f1ce35a773c3a6cadb1502cacaac685bd3245aef784f770ab5e2c99c', 1, 1, 'personalToken', '[]', 1, '2022-07-27 01:02:48', '2022-07-27 01:02:48', '2027-07-27 05:32:48'),
('03d3b29f340025b1ec11841e4f74df1f4b9377cfd1589e07ae85d7035ae5f72c1067781d7cf4eab4', 1, 1, 'personalToken', '[]', 1, '2022-12-26 08:28:04', '2022-12-26 08:28:04', '2022-12-26 12:58:04'),
('03e798bd9686dcd5507974fc354b8828341507ed1704a22f647f5cbec9de888cb273a6b7d60401cf', 1, 1, 'personalToken', '[]', 0, '2023-05-14 05:11:01', '2023-05-14 05:11:01', '2028-05-14 08:41:01'),
('0474b31b0c9ec2910dd2bf213441e49a7df1e8a4761f10667a1a2753ecfaabc52c4f13c8e89dc8fa', 1, 1, 'personalToken', '[]', 1, '2022-07-17 04:16:46', '2022-07-17 04:16:46', '2022-07-17 09:46:46'),
('049cc5d1a3f8c201abe51448b857b2c29ede78bfe5d657c17a2e60fcabb8692b7c3cae0d772eb358', 1, 1, 'personalToken', '[]', 1, '2022-10-23 03:43:31', '2022-10-23 03:43:31', '2027-10-23 07:13:31'),
('049d022b0fcb3f6224a7d93acd54133600e6d3e9e4ee93d64cbca138a2a7a5a20ea7c191e2d583fb', 1, 1, 'personalToken', '[]', 1, '2022-12-12 15:40:36', '2022-12-12 15:40:36', '2022-12-12 20:10:36'),
('054f93a13f955146ae7c7284614fdf30bd7ecccc4b3a85c9f5d35b71a95340891de1aa8c29cc8857', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:32:31', '2023-04-11 08:32:31', '2023-04-11 13:02:31'),
('0572d3c72562c88e0bc9e1d839b2999ca05ba7a491737c235cb8197da3c366cb20b8a5d481f03673', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:58:12', '2023-04-12 15:58:12', '2023-04-12 20:28:12'),
('0582fb46b3277c232b06ca8ebe0d33b48f450d455fa2411cadf9bfceb96358ee8f9edae5da100a00', 1, 1, 'personalToken', '[]', 1, '2022-08-02 15:21:04', '2022-08-02 15:21:04', '2022-08-02 20:51:04'),
('0588a81f4c166d225c7749b0165ae280426fbe5db739c82ee5c630d0e252a3cec42a4042decc66ee', 1, 1, 'personalToken', '[]', 0, '2023-11-22 05:41:28', '2023-11-22 05:41:28', '2023-11-22 10:11:28'),
('0588f763bd374eb1f7ef6e3602ad081ccd4bc2db68bec3ffc2ba746f8dbe67b265a186308e52464a', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:30:02', '2022-10-14 13:30:02', '2022-10-14 18:00:02'),
('05b1f3248d9893d58e1e6ba1ba182147bffa6a8425066e6e7153c0b6bd94ad09d0334306e0d9da96', 1, 1, 'personalToken', '[]', 1, '2023-09-16 23:58:02', '2023-09-16 23:58:02', '2028-09-17 03:28:02'),
('05b9ebd4ecb545bf3e3211c77c88a45c86d86d902c93320de6cba0121cceffe4587a29a9c8def4b0', 1, 1, 'personalToken', '[]', 0, '2022-09-19 03:54:49', '2022-09-19 03:54:49', '2027-09-19 08:24:49'),
('05c35f0f90d03ab0d44c861f3cf3fcc13db4d8ad62ea03d3485c97cb0ca4955661c693b77c567e27', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:51:09', '2023-08-08 08:51:09', '2023-08-08 13:21:09'),
('05cdf1d643fec1f5ed0dd3daa874bca9ca3e4ba7c7f50cafcb6ea43c57e5676a1e4acee97fb6e574', 1, 1, 'personalToken', '[]', 1, '2022-10-22 16:04:50', '2022-10-22 16:04:50', '2027-10-22 19:34:50'),
('05d08160cf0d41e877a39b082dc94e1632765b6c4bb32ebd0220d5719e017b70200db255539d90c6', 1, 1, 'personalToken', '[]', 1, '2023-05-14 18:15:15', '2023-05-14 18:15:15', '2023-05-14 22:45:15'),
('06253d979a1eed05e7cfc6397e1b244d6e54d3bb9c8ac38a8ba54db9c287e1906171d7df6a07137a', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:46:00', '2022-09-26 07:46:00', '2022-09-26 12:16:00'),
('063d955cf8864033070364fa71b329052064b62ed4dc2f7f4e4d3b829fb99569a7d72ce02ded83a4', 1, 1, 'personalToken', '[]', 1, '2022-07-25 03:35:39', '2022-07-25 03:35:39', '2022-07-25 09:05:39'),
('06512992dcd48835a9b1445e80043d7f7f08fbbae693fd706b9d2b52fe5a61908eec87206447b5e5', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:31:57', '2022-09-28 06:31:57', '2022-09-28 11:01:57'),
('06eb74050448bf7db07eae77329c3d32f3fa62b185790e1fa605f23bc30db2525f40961a8e3651d2', 1, 1, 'personalToken', '[]', 1, '2022-09-03 03:31:02', '2022-09-03 03:31:02', '2027-09-03 08:01:02'),
('06f0b170a9f8b0b7b408812358fd0bf061d079fb53285bba4bfb2f04724ee061fc416b657d116337', 1, 1, 'personalToken', '[]', 0, '2022-12-07 10:06:50', '2022-12-07 10:06:50', '2022-12-07 14:36:50'),
('071a3f4c5204d453c4f1a73c71d355792a537e2bfdad8bea7e0f4fdb8723b72eb94d266f7a60bfb8', 1, 1, 'personalToken', '[]', 0, '2023-09-26 02:49:49', '2023-09-26 02:49:49', '2023-09-26 07:19:49'),
('0753ded8eb442f74cba9a0b5769329a2d187d95df37261d7a22c52c1f6175f22a6a62a88855c13bc', 1, 1, 'personalToken', '[]', 0, '2023-05-03 10:30:10', '2023-05-03 10:30:10', '2023-05-03 15:00:10'),
('076d58979033cdb27fe2d6a49d9fc4d9ea32869766e4a35753a8f912d0941d471707f0f225c4f970', 1, 1, 'personalToken', '[]', 0, '2023-04-29 08:34:40', '2023-04-29 08:34:40', '2023-04-29 13:04:40'),
('077becb0e15f075a791ce661e7178ad78bab47c681a2d875594033764543f609e8c4a99caef1ac95', 1, 1, 'personalToken', '[]', 1, '2022-07-22 11:30:27', '2022-07-22 11:30:27', '2027-07-22 16:00:27'),
('0784174adddc685df0800e8ec3db303d0a8f3c30d9c94e3abf21ff075ef852ce3ab7fba730b9afdc', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:38:39', '2023-08-01 04:38:39', '2028-08-01 08:08:39'),
('0799a628c4dff39a080eb6d1f50de03270fee0fe1f89d50f2866e3b5a25a84121cff25b0a852f889', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:36:12', '2023-08-01 04:36:12', '2028-08-01 08:06:12'),
('079efe14ed5dfa0e95d65d9c8bc275762dfbfab68f2d3da1a0c621221883ea673575adcdf63c28ac', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:18:49', '2023-09-27 13:18:49', '2023-09-27 17:48:49'),
('07c358be6b5b422b4a35ef7b4b7580ebc9d455f02d3aafe61643bf7e4dfe6c117a88c61b670a9904', 1, 1, 'personalToken', '[]', 0, '2023-06-23 14:50:24', '2023-06-23 14:50:24', '2028-06-23 18:20:24'),
('07e76fb9aa4a0c8c9877814de4b43494cbba5185a88d9e94e9b8f4fb3024e721e8651d9d53fc4191', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:22:11', '2022-11-28 17:22:11', '2027-11-28 20:52:11'),
('0817d9d95614f8b5b83e174f1431bf4e3259a10962a1601dc634d3ec9db1be50f83b7a956fd1b4bf', 1, 1, 'personalToken', '[]', 0, '2023-05-15 22:35:21', '2023-05-15 22:35:21', '2023-05-16 03:05:21'),
('081a95039d9db5e0644e600ec8376e75bdd81e08f3e30798e3fbf402aff5478a56a4f782d03fc5c0', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:06:40', '2023-06-21 04:06:40', '2028-06-21 07:36:40'),
('081f7b73c64a738557287bdb79c63c5078299dbfa1c4d672489f5ba683416e9b7eef301f1573bcd1', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:20:20', '2022-07-12 05:20:20', '2022-07-12 10:50:20'),
('0825a85d352871ff60cab4edfdfa9909091ec8dec18191bd95822bc0ef6720edd289706d2b9d2016', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:03:42', '2022-11-15 05:03:42', '2022-11-15 09:33:42'),
('084388291a1a6ccfd52e36d1d37df8163c88c2b0dfd2293f8301c124f5a99806b67aa96ba3d7b02c', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:03:29', '2023-04-11 17:03:29', '2023-04-11 21:33:29'),
('084ac0bcc7c4f9c14ed5abcb8d90cd72c4d6237e480e3c285b728c9a01fdf385e739c7d53a82ca6c', 1, 1, 'personalToken', '[]', 1, '2023-09-12 03:53:13', '2023-09-12 03:53:13', '2023-09-12 08:23:13'),
('085b883565858668b853e5727406dd6a0df6540d1b6011049c6a6853b52b5bbf29c4bc652a2d1971', 1, 1, 'personalToken', '[]', 0, '2022-11-23 15:15:22', '2022-11-23 15:15:22', '2022-11-23 19:45:23'),
('08656ffa3bcb12fa7da8d9ba81ac9af81b46ce2e88087abb58b96b57d3f82bc5963d852ef3c1c690', 1, 1, 'personalToken', '[]', 0, '2022-12-15 17:01:15', '2022-12-15 17:01:15', '2022-12-15 21:31:15'),
('08686be1a64e55a1097cb946ad7966d3e951c266c62cb84cfda89a40f7213bec244c19c2eb0974fa', 1, 1, 'personalToken', '[]', 1, '2023-02-10 02:29:35', '2023-02-10 02:29:35', '2023-02-10 06:59:35'),
('087e7ae3ba66d2d5f50a5dc5b2b2a8b8c6f063490de03d6ba23b5d4fceae62bffadb82808607b16c', 1, 1, 'personalToken', '[]', 1, '2023-03-18 18:10:25', '2023-03-18 18:10:25', '2023-03-18 22:40:26'),
('0885d1824145e9112c89a1200f8a6f89fdc381cddab6e9c0abaea82bdcb89ed85cf4bc1e0e4a2dc4', 1, 1, 'personalToken', '[]', 0, '2023-06-08 11:11:30', '2023-06-08 11:11:30', '2028-06-08 14:41:30'),
('0887fe56b56eb25fe415e05e0449acfdfe811533ea0687f47a12b42746cdc09bb38522587b6c9e11', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:49:39', '2023-08-09 01:49:39', '2023-08-09 06:19:39'),
('0893269aed68ac1258be57af2f8e3d32fa0c8fe418e06252380f098a22984d01b4cf300c67a6c64f', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:40', '2022-10-14 13:23:40', '2027-10-14 16:53:40'),
('08954bd4e81c319dc811ef52a54bc9b64f6a120851a54f6ccfacd2a6e3cc04e30b18c53096758534', 1, 1, 'personalToken', '[]', 0, '2023-06-08 12:04:52', '2023-06-08 12:04:52', '2028-06-08 15:34:52'),
('08a93a67f7e30098c9f5088d078a17f3382d55078b757d7def8fd205bf3d3ba987ab9bd9de16fc40', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:14:55', '2023-04-11 15:14:55', '2023-04-11 19:44:55'),
('08bae33c1f81f21e542d1f33ca72116300e06f2b2abf6b8dcb4d7687d7e4a04f13e9db264cde729f', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:24:16', '2023-01-19 13:24:16', '2028-01-19 16:54:16'),
('08c0a1aab0bdecac3406d3f11e5aa6442683e6c9c100a48296f3ba8eff528e7e87ded95248c1709c', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:36:24', '2023-02-05 17:36:24', '2023-02-05 22:06:24'),
('08c3734068eb210bafb6683a06a5979201b9c902793cdf3770480225453c7a4e19dc32fdb4c9af78', 1, 1, 'personalToken', '[]', 1, '2022-07-13 04:25:19', '2022-07-13 04:25:19', '2022-07-13 09:55:19'),
('08c423789cc4d1af356c1ccc3c4a0f13b61b4a70a542b64259759711689c28011fc0f2ef04bcc5da', 1, 1, 'personalToken', '[]', 0, '2023-01-06 13:12:29', '2023-01-06 13:12:29', '2023-01-06 17:42:29'),
('08c5168173a7caffecfe4b43dd19ed49f09498a29e26a57c1cd4f4ffa30777ba9d63a5ca5d6b5775', 1, 1, 'personalToken', '[]', 1, '2023-04-24 12:03:56', '2023-04-24 12:03:56', '2023-04-24 16:33:56'),
('08c5fdd808b429df12687548c27e4088fdc127392716e274aaf1f6be7475f543cb8888d8b3fcb804', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:47:33', '2023-11-17 15:47:33', '2023-11-17 20:17:33'),
('08cea2a9c16586be5e82be566c5edc94704a1c898d9158512719a09b98e852b7d83a1667298349a0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:36:27', '2022-12-26 06:36:27', '2022-12-26 11:06:27'),
('08f53d2a97ea1a882d27269fe723f6825478fac7c2d044ef5d837def88db15248fee50ef787e3b50', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:55:27', '2023-06-30 09:55:27', '2023-06-30 14:25:27'),
('08fd973f5854b7850137557e1af69bda098e24130a1ae51e55794fa77f8e6d7eff3d027676bc3264', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:43:22', '2022-10-24 02:43:22', '2027-10-24 06:13:22'),
('091a245c8d0b85d0fb58761adc09da5a6fbf063a0cf352a93a547d78a05f55345fbacbb3724035c3', 1, 1, 'personalToken', '[]', 1, '2022-11-16 14:01:55', '2022-11-16 14:01:55', '2027-11-16 17:31:55'),
('091e6a479fb8f5b54b9831e5b038c5a2c19171fb157e43b3977ec34be9af3cdf6b4df0b32883a855', 1, 1, 'personalToken', '[]', 1, '2022-09-19 03:52:18', '2022-09-19 03:52:18', '2027-09-19 08:22:18'),
('0923d0bd4676566b1445be7942cd7899e5115aa46cec99712455cb41920c7ce917c9006a8240e468', 1, 1, 'personalToken', '[]', 0, '2023-05-08 10:56:44', '2023-05-08 10:56:44', '2023-05-08 15:26:44'),
('098870a7ffce9eceac8fc65b39d154d420f35b550cf5356e681b7336519655075c3a9a2548953eb2', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:56:10', '2022-08-01 16:56:10', '2027-08-01 21:26:10'),
('098acdc8effd3857ed3798c5b6838c147bbe64a837bd5760fbe5a51ee3cf4c1a2c1148d0208c034e', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:50:24', '2022-12-26 06:50:24', '2022-12-26 11:20:24'),
('0994f97627883bf496717b54921b7929281a46ba2309552e7036dfacd45034c97bcd2ea24e2fc424', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:47:07', '2023-05-16 01:47:07', '2023-05-16 06:17:07'),
('09cdb1c7564721f29293bd21e9cea3836e38443ed987f8e3a427a41573fdfc066f46b35be476ce87', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:27:11', '2023-09-27 12:27:11', '2028-09-27 15:57:11'),
('09d7dc05d9f5fcceed995c852ab0faa1e845e448d1cd3a02e329f9afe73eaa69ebd650c65cc4e7e9', 1, 1, 'personalToken', '[]', 0, '2023-07-18 10:37:02', '2023-07-18 10:37:02', '2023-07-18 15:07:02'),
('09ecd5a937ee1268edc432da5b4caa7007fe61339272062b277a1ac5dfa66df9a70363e1088dc9db', 1, 1, 'personalToken', '[]', 1, '2022-07-12 06:39:16', '2022-07-12 06:39:16', '2022-07-12 12:09:16'),
('09ee234cf3d2a1748ee1d74c57ef859d641559f338107860d63bc473e4be74605fbccd892bef9893', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:53:11', '2022-08-28 02:53:11', '2022-08-28 08:23:11'),
('0a184ce8e6c6b0f35c3669d1a58e3fdb91c320cde3456c649aeb4b9913befc33b5fdfdbcb61db167', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:57:52', '2023-06-30 09:57:52', '2023-06-30 14:27:52'),
('0a31800edee2c9ce16d9b882a3afa3e7bd847f99860db263336ecefe4008dad096c54e8867a31d20', 1, 1, 'personalToken', '[]', 1, '2023-03-07 04:14:26', '2023-03-07 04:14:26', '2023-03-07 08:44:26'),
('0a559837b35c6072f8c0f6d06a2ff7dfb76f04884d4b67ee5b1f43c0f19ea95ccd21ca9ba6c22bfb', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:00:41', '2023-07-10 11:00:41', '2023-07-10 15:30:41'),
('0a6b7678c41352d7e203d8ae8cb24f4eb22f8e7b78fb493dc2cad111bff184a386ef0cb371b92e32', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:28:06', '2023-09-27 13:28:06', '2023-09-27 17:58:06'),
('0a8a0025dee12ccd835010f878a9d508cc2bc3ece18f5b44376d5c99d093f5d3c62ff71060117331', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:51:49', '2022-07-25 07:51:49', '2027-07-25 12:21:49'),
('0a8aa037087b63dbb8f5800147b120d678fb130ff6234dc7e56f4da075e1a9c77f5bb08b53141b0c', 1, 1, 'personalToken', '[]', 0, '2022-11-15 06:35:15', '2022-11-15 06:35:15', '2022-11-15 11:05:15'),
('0a99e84ae00c4d55c69beded10d4409a08d5bae00f63e91e21866097282acb6f456593e8c4fdcffe', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:15:04', '2022-07-06 07:15:04', '2027-07-06 11:45:04'),
('0abdf22a3ade0ad03f7122b403d87073a802a2496dbe5b02db02df7f42f4f4bcddbd3dffeca3a55e', 1, 1, 'personalToken', '[]', 0, '2023-08-29 18:48:58', '2023-08-29 18:48:58', '2023-08-29 23:18:59'),
('0ac65c115d8c743f2e5e93c81ece1950d898391ed153704d5c97391c42b4fb5e574f3805e627ac6a', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:02:06', '2022-12-16 03:02:06', '2022-12-16 07:32:06'),
('0ad9e4bb88a1557534b7d816543a24c76d70e2929f8dc5e1b55feee22db5e44d4d85689359162d72', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:09', '2023-11-17 15:29:09', '2023-11-17 19:59:09'),
('0aefc73ac26f444dba134b2f1a484c7510b1c9bf6154ad97014302c144734800045de37abc4d00e1', 1, 1, 'personalToken', '[]', 0, '2022-07-06 06:31:22', '2022-07-06 06:31:22', '2022-07-06 12:01:22'),
('0b056cb8d97ee97f0ddb0b0eb03a7aef4217e52c6b06bd9f212f27f57f873b388eca64d8d94ad725', 1, 1, 'personalToken', '[]', 0, '2023-04-07 13:59:33', '2023-04-07 13:59:33', '2028-04-07 17:29:33'),
('0b080a2b1e37ad2a2ebbf1eb1a79fbd431e5778aec958ab659ae898216ba1414a745225368a0f9c0', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:38:07', '2023-06-15 03:38:07', '2023-06-15 08:08:07'),
('0b13db64cac36a14596e3dd5281c32f1d99a681a6d4664583a3586fdce799d451c11987f9fb00de7', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:01:20', '2023-08-08 08:01:20', '2023-08-08 12:31:20'),
('0b31669088c7241614565e19bd5f8e19bd3feed689f4c03377f9f665aa9c3257a23fa6bf8ceb6d90', 1, 1, 'personalToken', '[]', 1, '2023-07-22 08:15:24', '2023-07-22 08:15:24', '2023-07-22 12:45:24'),
('0b4754b5e26ba32f266738a369b48b2513b701b1865a81f31e649b27cddc5e23fadbf2a499cca2d6', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:57:09', '2023-05-16 01:57:09', '2023-05-16 06:27:09'),
('0b4ff841fae3b78ec9ca50f2df0b527421188ec9e1a067ed291858277bbfd4166a1af11a085f3f69', 1, 1, 'personalToken', '[]', 0, '2022-08-29 01:09:29', '2022-08-29 01:09:29', '2022-08-29 06:39:29'),
('0b5856c483d348ecb96a40d7685bf9284f04292ee64fb5e67466ca08fcc3b3c6133b263286d68acd', 1, 1, 'personalToken', '[]', 0, '2022-10-20 09:41:38', '2022-10-20 09:41:38', '2027-10-20 13:11:38'),
('0b67709505fef97739da9cb8c815e98c36ebb5ed3537f3ab982bbf72641b36ed44ff0661ff87407f', 1, 1, 'personalToken', '[]', 1, '2022-12-17 09:08:57', '2022-12-17 09:08:57', '2022-12-17 13:38:57'),
('0b74aced895fa513d114167c5cac5df1602839713c76d38be1b53254b21fee5c3a097e8aaf0bf266', 1, 1, 'personalToken', '[]', 1, '2023-04-15 17:44:37', '2023-04-15 17:44:37', '2028-04-15 21:14:37'),
('0b89673f3238ff2f9d14908c77fd5e60787d33738d9d7e3e8c9d368d30227edd251da9fc77f05c73', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:55:40', '2022-12-26 02:55:40', '2022-12-26 07:25:40'),
('0b91551375ec8c3befdac352c7d25a7abbcf92ab35add83ac5f9368e0a03da2cc2d592a796067432', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:34:57', '2022-10-22 14:34:57', '2022-10-22 19:04:57'),
('0bac8bda0f8a0ea1c6a6001206f343dbfaf57e66e5112fd28f03831434ccb45998b463f3d031222d', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:41:34', '2023-04-08 15:41:34', '2023-04-08 20:11:34'),
('0bb0296cb3bb1c20c35f7b716492e6966d79330c17356dda60bb016e5fd0bc33c22064b6c72247d7', 1, 1, 'personalToken', '[]', 0, '2023-07-18 05:40:14', '2023-07-18 05:40:14', '2028-07-18 09:10:14'),
('0bc30e3b5f29157aec8fe31e95a9ec9488afbc9263082ffd8001ca6bb3a8eb723754972b159c3fa8', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:09:28', '2022-08-28 03:09:28', '2022-08-28 08:39:28'),
('0bd7a1e34c0ee7d18943b386e6d125bb63bb30478ccf18536183fd438ee2f2806af52c8a5ba6ea6c', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:38:31', '2023-07-10 11:38:31', '2023-07-10 16:08:31'),
('0be27464152532bf2870a75d9b6e846c1ea51eb7737d5f0307b8ed2b21709133e0e096aaced834a7', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:42:25', '2022-07-06 03:42:25', '2022-07-06 09:12:25'),
('0c191693cb5a7de32c232923012e2598fbfe4d3c6a24a8c9f47bba25d247f54cd304cbf3658c6381', 1, 1, 'personalToken', '[]', 1, '2023-01-25 02:19:19', '2023-01-25 02:19:19', '2028-01-25 05:49:19'),
('0c1a295f1ac0ae59e72851965fae35dfd82c23d2501d93842b136c4b433ab495df56cc312d1f96bd', 1, 1, 'personalToken', '[]', 0, '2022-12-07 10:07:43', '2022-12-07 10:07:43', '2022-12-07 14:37:43'),
('0c242b6e54d936864ab881cc2adb99cec3640094203c6f5cdf118b8a31a649ffe4f1c8a3ee4abb05', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:35:20', '2023-11-17 15:35:20', '2023-11-17 20:05:20'),
('0c2a76b452646f23c795c78e2f3b48bedae300b4930451b6c48680fcb8226036f34fd018e166e03e', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:13:21', '2022-12-16 05:13:21', '2027-12-16 08:43:21'),
('0c2f75597e66405b995edc96ff013c2697d173e6a0fbf6e17d5a7206158df859604e470922f29da4', 1, 1, 'personalToken', '[]', 0, '2023-09-04 06:26:50', '2023-09-04 06:26:50', '2023-09-04 10:56:50'),
('0c479569cd502023693429641db7667bfb0e79f82bbf1b47d049d05f7cd31929df8d251b90c881a6', 1, 1, 'personalToken', '[]', 0, '2023-11-18 13:59:19', '2023-11-18 13:59:19', '2028-11-18 17:29:19'),
('0c49e74b8b96f77f5c2472fa39f89547ef267a11c4f66d0de5cd625d08422f330ed1a006dd744e50', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:20:51', '2022-12-02 09:20:51', '2022-12-02 13:50:51'),
('0c50feea155cc2ec6ef4435ac7700105ad245a1245e9863da2f0fc50bd1f0ac52d443a02b81138f9', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:26:31', '2023-09-27 13:26:31', '2023-09-27 17:56:31'),
('0c5a20ab87f826d11efaec4e57caba46cb849639e51f8e317df14d6c247ca745925db21796f5d04b', 1, 1, 'personalToken', '[]', 0, '2023-08-12 09:08:55', '2023-08-12 09:08:55', '2028-08-12 12:38:55'),
('0c63982bb0fd1193adfa03f0e174e3ab63777e5e750642c94ac941fc7ce8565351511cb1dcc8bb13', 1, 1, 'personalToken', '[]', 0, '2023-02-08 03:00:48', '2023-02-08 03:00:48', '2028-02-08 06:30:48'),
('0c7503f6b7593fa8111c9387aae4499d39fa9efd9f28a78c822c77d9ab17ba9be28ac892e4559dc5', 1, 1, 'personalToken', '[]', 0, '2023-02-03 09:05:50', '2023-02-03 09:05:50', '2023-02-03 13:35:50'),
('0cccb97c1553de8e9b0ddba18c28858502cfe0c882dd33b14d7d9c075a8cdd306af3a5e7e1c961ae', 1, 1, 'personalToken', '[]', 0, '2022-10-22 09:30:59', '2022-10-22 09:30:59', '2027-10-22 13:00:59'),
('0ce4d1ff33338aaa92e163b4fc2b10f002140a4357c87917749427bc396d8072fbbca9121ce3764a', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:02:02', '2023-08-09 03:02:02', '2023-08-09 07:32:02'),
('0ce9b5291b7d11c7acfe28336be3eac0499a528c8ceed285c786ca846b2902a7f12f1a876290922a', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:32:51', '2023-09-27 13:32:51', '2023-09-27 18:02:51'),
('0cfc4f9fc9a45ed8ab72498da0d2a4fccf4bcaf37c96535653924c5aab4bd152c4668dbbac347d7f', 1, 1, 'personalToken', '[]', 0, '2022-11-27 16:42:13', '2022-11-27 16:42:13', '2027-11-27 20:12:13'),
('0d0b21f7b08c22b2587c48e29e2b00b5392188aa588ddae83f38169bf8ec12154d48269cbc2210b3', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:40:20', '2023-11-17 15:40:20', '2023-11-17 20:10:20'),
('0d0b8f66be9d93d6afe23e7cf33c7304e03f400bda92fa2efe56e119e9d973d73b2a869b6c068319', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:52:32', '2023-03-04 11:52:32', '2023-03-04 16:22:32'),
('0d1d2eac68f0ad47a441ab1367ff2b5d6d9022e111001bb8a65c762f29941d42331b6ad44d1bc80d', 1, 1, 'personalToken', '[]', 0, '2023-07-02 08:56:34', '2023-07-02 08:56:34', '2023-07-02 13:26:34'),
('0d1fac5503cbe134fa79770297c060bcb23529c5cde55979b9f395ca76feb63d718d2aef526144e7', 1, 1, 'personalToken', '[]', 0, '2022-11-19 16:07:17', '2022-11-19 16:07:17', '2022-11-19 20:37:17'),
('0d4d6c8968af714783aa76c899caf4285e3a9c68cb5dfd81f05d3424fbf118f94fb4eb6c81d467d7', 1, 1, 'personalToken', '[]', 0, '2023-04-15 20:10:21', '2023-04-15 20:10:21', '2028-04-15 23:40:21'),
('0d638ec0d5c5b5abff29a629f60d3d1ba12adb1a9622163eef3e12de09d8538c8b1453493e65635f', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:30:21', '2023-04-11 08:30:21', '2023-04-11 13:00:21'),
('0da12628695ee3f8488f308a32bd020348bdea623aac6d5a267c652d7e096d5b5a1f850e75d3827a', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:43:31', '2023-02-03 15:43:31', '2023-02-03 20:13:31'),
('0db3c9ea461db4381ef9cd6b23fc71c79124b5fa0abcadbe306ccee86987f6a51ffcc53d3e6c4606', 1, 1, 'personalToken', '[]', 1, '2022-10-23 04:04:43', '2022-10-23 04:04:43', '2027-10-23 07:34:43'),
('0db420cb9f80309b5fe95052b23ddce15113771fffdc230dd58c9679c9abd8e7638f3ebf09b69058', 1, 1, 'personalToken', '[]', 0, '2022-12-06 05:34:45', '2022-12-06 05:34:45', '2022-12-06 10:04:45'),
('0dd601880d671ed069d2a3cb4beb28b8753e3ed541fd659fe2b4868c108188dc9fe9b7173174496f', 1, 1, 'personalToken', '[]', 0, '2023-06-08 10:51:39', '2023-06-08 10:51:39', '2028-06-08 14:21:39'),
('0e02f371c38e0f2ab35cc09f36a88eaf0a9c90edea7263828f9a20ace8f2c71a72f33f470184549a', 1, 1, 'personalToken', '[]', 0, '2022-07-06 08:26:30', '2022-07-06 08:26:30', '2022-07-06 13:56:30'),
('0e1ec01f96137b61bbd86101bef53504bbd297dc9514577357f0cc7676ce2b8ee9ea5cb8dd3ce7e0', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:00', '2022-08-03 04:40:00', '2027-08-03 09:10:00'),
('0e55ed1c621c0c720b690d4965cc9513896540cd512c265b3b2c4c780e5d1e39bc9e09438bb4b902', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:20:44', '2022-11-28 17:20:44', '2027-11-28 20:50:44'),
('0e6a3508664b794e92aff1e5ee1ea6a2fbaf2b91c101e79ff5ba8d2b639815a3981b101d98fb1d80', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:43:35', '2023-02-03 15:43:35', '2023-02-03 20:13:35'),
('0e8cf5206ee16db0892575b389c80f89add3f515adcae09b9d324b24735cde8b1b3fb2eb023e10e6', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:38:11', '2023-03-04 11:38:11', '2023-03-04 16:08:11'),
('0e9972d3a9bec562c82dc25970772b8fc070dadcd05537d6fb57e33afc8b23c35b9bffaf9fdc638f', 1, 1, 'personalToken', '[]', 0, '2023-08-07 06:45:21', '2023-08-07 06:45:21', '2028-08-07 10:15:21'),
('0eac63bcfc5ec93be0ff9f8645b3a0273efb5d284af7d3baa20ce4220ee3ff29f9c06eb71dd26345', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:01', '2022-08-03 04:40:01', '2027-08-03 09:10:01'),
('0ed0c122262127b9b2c489b8099c3e23cbcfd07df24d07a4c6258259d358a414d63df296cf6c52f1', 1, 1, 'personalToken', '[]', 0, '2023-01-09 11:49:01', '2023-01-09 11:49:01', '2028-01-09 15:19:01'),
('0f080459389a4dc3878bb530e1d8109283e18e0f865e2d831a6762093ee8fc95b81187dc7ea4da50', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:52:13', '2022-10-22 14:52:13', '2027-10-22 18:22:13'),
('0f17d6af2ff1e81639341d773a8e4a082fddb1761fa4c85c54b214c6cd80083fac1df8e944be0fb8', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:19:56', '2023-08-13 03:19:56', '2023-08-13 07:49:56'),
('0f20eadd956a7d215342c16bbfb24f015d9c2ab8b20b22795df8e28229e19fee5c58a98c674b47a2', 1, 1, 'personalToken', '[]', 1, '2023-04-07 14:51:58', '2023-04-07 14:51:58', '2028-04-07 18:21:58'),
('0f49dfe8d5ee0b9ba33a04d4b26621f3b2e183930475bb19e80697b009983008efc27aa4a3d440e8', 2, 1, 'personalToken', '[]', 0, '2022-09-07 16:41:46', '2022-09-07 16:41:46', '2027-09-07 21:11:46'),
('0f77e4fc9db513bf98c1a220406fa55bbb4d7fbe2823b243a04df6b1b431db9aa0dcc35c4acc5c1c', 1, 1, 'personalToken', '[]', 0, '2022-07-02 13:00:34', '2022-07-02 13:00:34', '2022-07-02 18:30:34'),
('0f7c44321b9dfc4f9193570a35b9f4b47fb0628d05de3aa3bef49e452a4dbb3866aec4d0e610e56d', 1, 1, 'personalToken', '[]', 0, '2022-07-16 12:51:47', '2022-07-16 12:51:47', '2022-07-16 18:21:47'),
('0fbf7215a177724c2cd5e57393dc0d81274bf090e773e770179325da2a6be03f6032859adbeb57a8', 1, 1, 'personalToken', '[]', 1, '2023-04-09 12:25:08', '2023-04-09 12:25:08', '2023-04-09 16:55:08'),
('0fdf589f0b4c489968231b74dcd87ba165d74ec8ab8fc2db5e6a457e61922f26c77cddb54235398a', 1, 1, 'personalToken', '[]', 0, '2023-01-07 15:43:05', '2023-01-07 15:43:05', '2023-01-07 20:13:05'),
('0ff5f04d661b6654da752d2d9110179cb9024796684eb05cfe28c58b7e2ffb4ce29fca298f7eeaba', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:41:23', '2022-12-26 03:41:23', '2022-12-26 08:11:23'),
('10045d540829c61ec7b455f433594555d647bd38e0bccd2409b2ea9d7f7a9249e57ccc3bbf081285', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:37:13', '2022-12-26 09:37:13', '2022-12-26 14:07:13'),
('100666f7d0bce0887e3bb8fa01225e9c5f44ffde694f96f453a6133a1214842f57363d330eaf52ec', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:43:11', '2023-08-14 07:43:11', '2023-08-14 12:13:11'),
('100e0e35a4d151a6e0aafb60770bd625dab3e1e2ff5c87af144bc74c24f7d7158667ea941774b60b', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:13:33', '2022-07-12 05:13:33', '2022-07-12 10:43:33'),
('101573ec7822d7d3aca73b8e4aca9ff7663d428ac6eb358a198b3db889da01297a59645ecc5d95fe', 1, 1, 'personalToken', '[]', 0, '2022-09-14 07:39:55', '2022-09-14 07:39:55', '2027-09-14 12:09:55'),
('101dae339cb34357847924654cd39e3a608b1204c8a74402bf4debd94f1a8498bc0c20f61709bbb5', 1, 1, 'personalToken', '[]', 0, '2023-04-11 14:56:46', '2023-04-11 14:56:46', '2023-04-11 19:26:46'),
('10225008ca0a044d70e367d06d12ac88d5204cb87607736ad88b2c565a2f255755b3e7189aa6f515', 1, 1, 'personalToken', '[]', 0, '2023-01-22 11:25:00', '2023-01-22 11:25:00', '2023-01-22 15:55:00'),
('102b01c8c41584a1e03c3484c28eaa77923777a38c3379cb5db750605ce0a584a4b0819ed4b60f00', 2, 1, 'personalToken', '[]', 0, '2022-10-19 06:46:16', '2022-10-19 06:46:16', '2022-10-19 11:16:16'),
('10316302fef912345afe28d9dd16bd7b40f13fd037d1ccc3f9d152b3c237f200ae0001416d68d414', 1, 1, 'personalToken', '[]', 0, '2022-08-23 14:10:56', '2022-08-23 14:10:56', '2022-08-23 19:40:56'),
('10396af1db082d2c624867ace82565fad910e03baa5df3a1ea0363f1e28848fd9a8c930091ed7f5a', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:53:01', '2023-05-15 21:53:01', '2023-05-16 02:23:01'),
('105c3c80f976c4f862598d2805fad0031542c30f5622b8598132ea78cfae9cc9b99d0d0d264a4e69', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:41:21', '2022-12-26 09:41:21', '2022-12-26 14:11:21'),
('1072b274743fc4bb990352bcdece7b81ccb57a34e1f1852e086781df40c8e8b6d580438d7914b349', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:42:17', '2023-03-04 11:42:17', '2028-03-04 15:12:17'),
('109e91d42122f84a19784407d455df1602c7f3b3f8692e61933d4d01f8a603ea4d9f08bcd178f2de', 1, 1, 'personalToken', '[]', 0, '2022-07-29 13:16:51', '2022-07-29 13:16:51', '2027-07-29 17:46:51'),
('10d8795d7fdc26e1b92609ed8f459869503d7e66b3f83a2a6d91bda2e863dc5116879c8d8a80185d', 1, 1, 'personalToken', '[]', 0, '2023-04-13 06:10:11', '2023-04-13 06:10:11', '2023-04-13 10:40:11'),
('10df9fb3a68bab192f3303b7e1d74b9f8e466d9b3d5a6b860eb4115ad478ab72e6c8c9ab87f1c15a', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:41:07', '2023-06-21 04:41:07', '2023-06-21 09:11:07'),
('111a2f795300f43ac7894fefad80dc8d40965e9b275b5e7eb59082ffcd2d756dcbff93f2a13e3b73', 1, 1, 'personalToken', '[]', 0, '2022-07-02 12:47:41', '2022-07-02 12:47:41', '2022-07-02 18:17:41'),
('114381dfd23efb05353bffb95e39745bd5fc21e281e78af0293b0dd269d5b40c41dbbb04f0e1372d', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:36:59', '2023-06-15 03:36:59', '2023-06-15 08:06:59'),
('118a4c5532fab1b19d10c003870511dd43e5697373481c5402e194fb3e6b4f4f7ecd0f80bbd5d508', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:28:42', '2022-12-06 14:28:42', '2022-12-06 18:58:42'),
('11cc535c3c48f91c935a347956024491d8fa70a017266d3039a1d9394296058660f9310d7a5f6153', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:08:54', '2022-07-12 05:08:54', '2022-07-12 10:38:54'),
('11dae36474f6324057b6c9858ed4becc16ca9cad42dfab3369120026e094da538f64bf2150dabd67', 1, 1, 'personalToken', '[]', 0, '2022-11-30 11:52:01', '2022-11-30 11:52:01', '2022-11-30 16:22:01'),
('120942667cb8948028c5e213d7bf0aefd68d2bb6ea88a34a760ca60de6a1281d01cc9e8e76ce7b45', 1, 1, 'personalToken', '[]', 1, '2023-09-05 14:04:02', '2023-09-05 14:04:02', '2028-09-05 17:34:02'),
('1219fbe3ae253aabade653f2486af858905dd6e635d4b59dcab134220898c51d1f1a271294661126', 1, 1, 'personalToken', '[]', 0, '2023-01-09 10:45:20', '2023-01-09 10:45:20', '2023-01-09 15:15:20'),
('121d375319dcfd4b0fa7f7ee5ca80cc6207fb030a7e4de05540b152be0b1e322b813183b83538a70', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:48:08', '2023-11-17 14:48:08', '2028-11-17 18:18:08'),
('1266fc01fb595a12dc125f270f577eb68af8c0da8105bab366a789d8f44832a1dc4239f77645c2e5', 1, 1, 'personalToken', '[]', 0, '2023-05-16 04:32:14', '2023-05-16 04:32:14', '2023-05-16 09:02:14'),
('127306df588ae844ff73330b25ae17753160ad8c18216e442fb9931895d4b3f35d1761505f1fa36f', 1, 1, 'personalToken', '[]', 0, '2022-08-15 13:30:30', '2022-08-15 13:30:30', '2022-08-15 19:00:30'),
('1285f84efe5a17abef4be72671f482c31462a28c478cbcb5a1b334497c9d7a0807d3f04ccf8955f7', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('1293fbf5ccd5992e8d6d14eb108ce1c13feda9b9a135b6d924d9e32612be0b5231704e4270c33c44', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:09:41', '2023-06-21 04:09:41', '2028-06-21 07:39:41'),
('12ac18b30ecbbc59e58793d193edd07db4063f12cb3ca278d6df36c5a908a8fec0c126f6b380fd23', 1, 1, 'personalToken', '[]', 0, '2023-07-22 08:17:40', '2023-07-22 08:17:40', '2023-07-22 12:47:40'),
('12d4ecf17a377abc194af5ed47354de388dc4dd8e1a11ab43d3f22785fe8461153bd41870a59f862', 1, 1, 'personalToken', '[]', 0, '2022-12-04 15:30:59', '2022-12-04 15:30:59', '2027-12-04 19:00:59'),
('12fc4595c23da8e6f8a62d36c9c647970c6faecb4957189fb9ed56346898bd872a6bca0a49f4399f', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:15:13', '2023-09-27 12:15:13', '2023-09-27 16:45:13'),
('1301726fa4d080048a6ab821e640a53349c87e373a7b4f6c6884c56edd9eab62b57abfc669dd578c', 1, 1, 'personalToken', '[]', 0, '2022-07-10 14:25:13', '2022-07-10 14:25:13', '2027-07-10 18:55:13'),
('131a0b2db57a3219d80dd6f1daed4a46690543ed5264c56548528ef6cda21966ef72c405cbfda905', 1, 1, 'personalToken', '[]', 0, '2022-11-01 02:58:12', '2022-11-01 02:58:12', '2027-11-01 06:28:12'),
('1322ecaae2190a3ab0d0dad9ef5badffdac4636f4bb5c2180ceada55e6855a03dd7e97433783032f', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:11:08', '2022-08-28 03:11:08', '2027-08-28 07:41:08'),
('132802c93b690f33824616660c3a1416715ec12f0f0c22229bfaaf2a769953f75ea573da4741ddd8', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:23:43', '2023-06-30 07:23:43', '2023-06-30 11:53:43'),
('132c0c43f2501323696864ec44dac5df0aca3fbfb05b83df193948d2648478402eca89ce4faea60b', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:23:17', '2023-08-09 02:23:17', '2023-08-09 06:53:17'),
('1343ec713151ca02eeebe00bcae14ea394b9c1a1cad335d715957cba77435818e6ae92c69f019c27', 1, 1, 'personalToken', '[]', 0, '2022-11-22 08:49:28', '2022-11-22 08:49:28', '2022-11-22 13:19:28'),
('13831adbcb67378f0067778bbfb4c9be3b86b992d805109e23c102a0c0c3dfbfaac834ca0a1b8045', 1, 1, 'personalToken', '[]', 0, '2022-08-05 15:49:32', '2022-08-05 15:49:32', '2027-08-05 20:19:32'),
('139cf1460e7e24e1730a0a288c179a892540916daea39ae99966e09379557e4afdb245e6a77c0bff', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:37:32', '2023-05-16 03:37:32', '2023-05-16 08:07:32'),
('13bf14218b8814993e65659784ea9b4ddf48084dd6a18c1cec7f7d36a26aea5c87d766ea35c56802', 1, 1, 'personalToken', '[]', 0, '2022-08-23 02:49:15', '2022-08-23 02:49:15', '2027-08-23 07:19:15'),
('13c06da9c59c36e395703f00db878a8f93aa82a7379d4048a000901a29289ba34f23cbc66ff8a3fc', 1, 1, 'personalToken', '[]', 0, '2022-10-30 15:21:08', '2022-10-30 15:21:08', '2022-10-30 19:51:08'),
('13c514cdfc789a9e957a4ac9144fd658d1efa2a9f43520f4ef85e2d90a2f75bf66e86bf642a0526d', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:19:06', '2022-08-01 16:19:06', '2022-08-01 21:49:07'),
('13dbb5f225d39e72613ceb8b011c8145d0c9173c1dcef23df006b76dae7f82f368a52b70f7dad37a', 1, 1, 'personalToken', '[]', 0, '2022-08-21 11:10:40', '2022-08-21 11:10:40', '2022-08-21 16:40:40'),
('13ec0419ace507080b7cfdced7bcf911a2d1a5faf70cfc1794b34f173a3dbdc0db2a1cd092a996a9', 26, 1, 'personalToken', '[]', 1, '2023-03-05 05:50:52', '2023-03-05 05:50:52', '2023-03-05 10:20:52'),
('140055036fe6f5afa3979442bd7f8b0c8e9d6fea528facc85703f0a873bd7c7712e0d2cd933a5e13', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:52:00', '2022-07-12 08:52:00', '2022-07-12 14:22:00'),
('147272c246747f7fe79331ba2d9d83345db98bb71d517b4babc3e6445ee4c3e1831d1f72bbb20ef6', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:40:18', '2022-07-13 03:40:18', '2022-07-13 09:10:18'),
('148805cfd5544efe2c8772cf7376c3cf527dbbb5f5f12fe8a897b0938ff35e8f15e7a15fce090f62', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:33:56', '2023-11-17 14:33:56', '2028-11-17 18:03:56'),
('14c1b4ae792f120ca443e1a4cba3cd0c9d5f9d0075f5750204e004c90c58f87406dcfb0094645c6d', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:11:11', '2023-05-16 11:11:11', '2023-05-16 15:41:11'),
('14cb5839c181bf6e3c7ccb1fd67f5e8eb11913226db6ad1d689427e93a9a934b7d95ca7cec6229d0', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:49:02', '2023-03-04 11:49:02', '2023-03-04 16:19:02'),
('14d71282aac476f84cbbc54529b81852e83ef97a5dc4cfb581bf1e132131ea78d639ccc08210fcff', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:38:39', '2023-05-16 03:38:39', '2023-05-16 08:08:39'),
('151b1c57e0434b5999e60dde75e991b6bbb47c18a8d19a66e543f9991714b9105e2c12f42e11f6d9', 1, 1, 'personalToken', '[]', 1, '2022-12-12 18:07:06', '2022-12-12 18:07:06', '2022-12-12 22:37:06'),
('155700868cb2a4fc6835264d6091f97b76e9ec03ea38e1b3ffdc99f979dc4d9ce08a417eacd8e947', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:40:49', '2022-07-06 03:40:49', '2022-07-06 09:10:49'),
('15581f14093fe2171f12aff5631ee6289ba52e7b6acb09f326e6cc71938898f7a2ef62b15c164f76', 1, 1, 'personalToken', '[]', 1, '2022-07-14 11:25:47', '2022-07-14 11:25:47', '2022-07-14 16:55:47'),
('156423ad56f65926255bef2be9e3e56d3f89df8a213e55023ffaba4a5c8944ed529119bfd3990c8a', 1, 1, 'personalToken', '[]', 0, '2022-07-20 12:22:09', '2022-07-20 12:22:09', '2027-07-20 16:52:09'),
('157c2be5ffb7e7a488757744490cffb60585e127ad2846fbfb594c1c16c355d90929b36b61645a31', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:40:31', '2022-12-26 03:40:31', '2022-12-26 08:10:31'),
('15904210442ff82a1ffd19352a86995f8e581318620e094b9379aeb275478475c5268679d72fc4a6', 1, 1, 'personalToken', '[]', 1, '2023-09-12 03:46:48', '2023-09-12 03:46:48', '2023-09-12 08:16:48'),
('15904eabf3a82f0431e6290b97901d9c0b75ac22fc668726197f4dfbc8a7380fbf3ffdc9e03188b7', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:37:55', '2022-12-07 06:37:55', '2022-12-07 11:07:55'),
('159ff06cdf80803a2308d4e4b31a185536c002f4336fe39459c77faa3f26b8373b9c10bbd56553bd', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:49:09', '2023-08-09 01:49:09', '2023-08-09 06:19:09'),
('15a32ec3b8ff8256e7585473b6242bedb13f93cd44684ad94f9bfc2ef93c9cd9169a48c70eb3a1aa', 1, 1, 'personalToken', '[]', 0, '2022-11-12 07:44:13', '2022-11-12 07:44:13', '2027-11-12 11:14:14'),
('15ee47ac9f9534dae23b76fb74978f6df12ee1bde2303a0e448edf3777c963a843fe550aa53dbdec', 2, 1, 'personalToken', '[]', 1, '2022-10-03 18:31:56', '2022-10-03 18:31:56', '2022-10-03 23:01:56'),
('160a1f5309c8c6ce68305a25c3f177084f99c491afcabe4e7e748e9466e4e86588263099455ff9f4', 1, 1, 'personalToken', '[]', 1, '2022-12-13 03:01:07', '2022-12-13 03:01:07', '2022-12-13 07:31:07'),
('167551212844e8119000552d9aea8504793f019ac6b9ca049f3ed948b6804e6afe98249d6240dbe3', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:05:33', '2023-06-30 10:05:33', '2023-06-30 14:35:33'),
('167b80b3e3260335bf59179001417ecee5435e8ba3f6d3e43196659d2b87db72ca10dfd33c58ab0b', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:34:58', '2023-07-10 11:34:58', '2023-07-10 16:04:58'),
('167deb7b3a14999c74dacf571cee2364ed9a1d62f9ed05849fec53279ffd0a5b7ffea2d6cf4884c0', 1, 1, 'personalToken', '[]', 0, '2023-05-17 19:47:33', '2023-05-17 19:47:33', '2023-05-18 00:17:33'),
('169a135078b804e9b9ff8e3829bbf077f4994067cee5c9602deb5e73a9db187855a4c9a0775221c9', 1, 1, 'personalToken', '[]', 1, '2022-12-26 16:34:35', '2022-12-26 16:34:35', '2027-12-26 20:04:35'),
('16a8ac4b15ce46036b11b5c70eab3a5ad9a07c2b455eaf4505675c95e80500ac52c554b042c7da26', 34, 1, 'personalToken', '[]', 0, '2023-06-26 02:51:21', '2023-06-26 02:51:21', '2023-06-26 07:21:22'),
('16ae35065ffeab5a9fc34a8b11640aff7cfd574b75b5d1dc84dee2dd0212a4d90cc086d63f0e9605', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:42:24', '2023-08-09 04:42:24', '2023-08-09 09:12:24'),
('16b0c8b880cb69e5e7980e7e23f7cc0de7b259ac0fec5749e627c3991a48521696315a9a6b718e9e', 1, 1, 'personalToken', '[]', 0, '2023-04-09 15:40:41', '2023-04-09 15:40:41', '2023-04-09 20:10:41'),
('16bad3cf9d5f36cdc5c8f0d6711ef71438ec3be90f635000158ca35b61b7391384fa415c7954d760', 1, 1, 'personalToken', '[]', 1, '2022-11-20 07:48:41', '2022-11-20 07:48:41', '2022-11-20 12:18:41'),
('16e861779981351b1fe1f274c13223fb8d6f4235936bb01c4ab89ed774b930524f912687b42b22a3', 1, 1, 'personalToken', '[]', 1, '2023-05-16 12:29:24', '2023-05-16 12:29:24', '2023-05-16 16:59:24'),
('17118d4438e99879eeeac6ad01d5c14acf140a789511f2b45df26e9b66f01b16a5a008f027c54cc0', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:42:25', '2023-08-08 08:42:25', '2023-08-08 13:12:25'),
('176705fa276c29685c1755586c23847e7865b37435f7a1376c7132481b705a9e2e10b1142502c81a', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:11:44', '2022-07-12 09:11:44', '2022-07-12 14:41:44'),
('176f3a0bc3ae7517816a563405cbc4e81b2e2830ec6be2385f16b09dd79b266114c54cc64a36f970', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:05:18', '2022-11-10 04:05:18', '2027-11-10 07:35:18'),
('176ff3f26d759dfb611f71d387c1697a529d71a399b4cfe61f2b54cbb61495bb1b77091937336e03', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:10:43', '2022-11-14 04:10:43', '2022-11-14 08:40:43'),
('1784cc21a5deaffc66ae2074553b09510ceb4e3a3cec79f8c43224e73556872182d13270e2e94a3b', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:10:41', '2022-12-16 05:10:41', '2022-12-16 09:40:41'),
('178f84f92ba6005f2d177f076bd8b0f983746ae1ec9353930f7a76f43dc1590ac112448088123722', 1, 1, 'personalToken', '[]', 0, '2023-09-08 10:57:18', '2023-09-08 10:57:18', '2028-09-08 14:27:18'),
('17ab03f50785bb9b7115a1c0723f32b188a4fed70f13a3193440c0d974f45510443d9ccc42d2bdf3', 1, 1, 'personalToken', '[]', 0, '2022-11-01 02:00:58', '2022-11-01 02:00:58', '2027-11-01 05:30:58'),
('17eee6c065bf7aa55b0fb1a1f79b4de4715dbef8a362701d066660699b2fdf55b69703b0b552887f', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:47:27', '2023-08-09 01:47:27', '2023-08-09 06:17:27'),
('187d35aa9a68d1c0dba4fc11291baa35c2c9b1356a2a44b33d739435a07c580765d5c9ef74df8c1d', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:54:41', '2023-06-21 05:54:41', '2023-06-21 10:24:41'),
('1890edde7a0f67528b33ea99ed1802735e90f1a29033f4f8ab76c4891906ade07643ec4ee4aae251', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:44:50', '2023-08-09 01:44:50', '2023-08-09 06:14:50'),
('189dac509d864cd0580210e7f0968e250301f5e0e7a455f775516a4aa05468acc2138e1d082baa66', 1, 1, 'personalToken', '[]', 0, '2023-07-18 05:57:47', '2023-07-18 05:57:47', '2023-07-18 10:27:47'),
('189ef5fa8be5244498be72f839bd045349b24b00bcb69c6469fa26fdb99c3c944226a17aa517f673', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:48:18', '2023-04-11 17:48:18', '2023-04-11 22:18:18'),
('18ac137dc936948c31d9227580c2c567ae3883fc5b6e02e2d42fbea2099f0c60cc94ebd83eb72a07', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:39:25', '2022-12-06 07:39:25', '2022-12-06 12:09:25'),
('18b89b82af439d75e212d50e630e369aee0824e51966ad0b01e8fe64075ee9d5c1550fef49aa1855', 1, 1, 'personalToken', '[]', 0, '2023-08-14 03:15:20', '2023-08-14 03:15:20', '2023-08-14 07:45:20'),
('18c3d6b90c8b7d6091f449d39b1ef45e7d615a283cb9477f8f77c595fef147dc09baae7620fedda3', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:13:14', '2022-12-15 06:13:14', '2027-12-15 09:43:14'),
('18ca1befc36c3d01e2f59c60022e7b8c33f15b8bab37437bb3db3ca6e390c99b86620bdf56999904', 1, 1, 'personalToken', '[]', 0, '2022-11-02 08:43:35', '2022-11-02 08:43:35', '2022-11-02 13:13:35'),
('18d263c5380827b743f2a7996b0a851720e3415301ce9a3e15bd81014e80e8d85d6f98902becb2ea', 1, 1, 'personalToken', '[]', 0, '2023-08-14 06:16:13', '2023-08-14 06:16:13', '2023-08-14 10:46:13'),
('18d8a4627901a0f25932a297981cb49489fac7421d621fcfd98d7f9abc981b868fa39a8a1928a588', 2, 1, 'personalToken', '[]', 1, '2022-10-17 16:43:39', '2022-10-17 16:43:39', '2022-10-17 21:13:39'),
('18de7ae7b7c5a9db05b11c3472a7a373f547ff766c223929a2c4904910e6dbd5ba3eb87c7f6af38f', 1, 1, 'personalToken', '[]', 0, '2022-07-02 13:09:08', '2022-07-02 13:09:08', '2022-07-02 18:39:08'),
('18f2c8e7ce6ed89cfca39d4d1f0b547d08de5409d332226a2ccfda8325af15955decfe28b7061023', 1, 1, 'personalToken', '[]', 0, '2023-08-07 05:39:53', '2023-08-07 05:39:53', '2028-08-07 09:09:53'),
('190da8bbc482af26fd0aae2ce04848c8b27581c325032d8b93d0b70ce5f6a7aca2f5013cdbd435b7', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:46', '2022-08-03 03:51:46', '2027-08-03 08:21:46'),
('190f3319c0ec375bdf12a053576efd092d0ce3bb5c5cd88c7632991b1e27177b7e2270b850981ff5', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:51:45', '2022-10-22 14:51:45', '2027-10-22 18:21:46'),
('192ad2781de2c84243bff0122415c96d2def372231102bc665bc8e4c7c3d1c55a55c04b60b75cfae', 1, 1, 'personalToken', '[]', 0, '2022-07-06 15:10:11', '2022-07-06 15:10:11', '2022-07-06 20:40:11'),
('194ffa50fe959162824a249e640a83b2f9941e9425f909ad14578620eb41f6ba6bfb9da50aac70dd', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:37:56', '2023-11-17 15:37:56', '2023-11-17 20:07:56'),
('1950a05f972bd4964999ef9644ff2171f93ef6e88d548933fac10a8feb447c0f229cbd026d008363', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:55:59', '2022-08-28 02:55:59', '2022-08-28 08:25:59');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('195f7d38ae62dc8ebab3f70d221d7a128110c438d287cd851fed8d36a251cfe71799881e5399da95', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:08:26', '2023-06-21 04:08:26', '2023-06-21 08:38:26'),
('197345e1be77dd6cf71903353090ddc25719c91acf4447f8126e0bf0d647d00edbfd9cb2fd992a38', 1, 1, 'personalToken', '[]', 0, '2023-09-22 03:40:58', '2023-09-22 03:40:58', '2028-09-22 07:10:58'),
('197dc4db408680ae879333df6d6467cbb96202ad6a15b961a727f18f2715bd8f36427ff3508bb87a', 1, 1, 'personalToken', '[]', 0, '2023-12-09 01:57:13', '2023-12-09 01:57:13', '2023-12-09 06:27:13'),
('19a146dd3c7378a3292683833422e41948ee5623bc1830c1f8e20f18765e06e50827cccabd0dc669', 1, 1, 'personalToken', '[]', 0, '2022-08-24 07:26:52', '2022-08-24 07:26:52', '2027-08-24 11:56:52'),
('19a1cfbb0d26de00d6eb497346bab7b68bd1d5ac644b024cc21fdb49230d4f63b1fab78d3b2361dd', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:08:51', '2023-04-11 08:08:51', '2023-04-11 12:38:51'),
('19a228c91dbd50ca8e45b50e9ee4ef8fb13965f3fc7b1626875588d5c210386cb2604d9d137b2448', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:02:52', '2023-09-27 13:02:52', '2023-09-27 17:32:52'),
('19b6bf295aedaa3e5f456f6942ab24dafbf1a2a135b4ede2f64b64c5ca1066497268b54337ee7805', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:01:36', '2023-07-10 11:01:36', '2023-07-10 15:31:36'),
('19c58e7d788a4e8e911b4c18ddca1f2bb38b6412d65b663da5dbc3038c1d2eb3ffc0fd8b3f56d57c', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:44', '2022-08-03 03:51:44', '2027-08-03 08:21:44'),
('19c8d7aabd20d0fc17d04c65d0eb8d606dafc7990b6126936d6a9ed246dea5767331d40438e95457', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:41:45', '2022-12-06 07:41:45', '2022-12-06 12:11:45'),
('19e8343a256e5c38934538e983efd32c284de88a2bee07cc1604e1dd0ad376352fecf0beeba0b048', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:22:05', '2023-08-14 07:22:05', '2023-08-14 11:52:05'),
('19fe3f9bd9aa4605692d131a2f4018acd950d17b53acbbfb093692711a441a9c6353912bbed239e8', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:10:41', '2022-07-12 05:10:41', '2022-07-12 10:40:41'),
('1a35750a6384d9f7965e9589a6fa8666a6ada4df8f0c5b819a29222388fc97f1c81f7fb2eb10865c', 1, 1, 'personalToken', '[]', 1, '2023-06-10 02:57:13', '2023-06-10 02:57:13', '2028-06-10 06:27:13'),
('1a3ef805b244aef9c3860818308ffd0b5551187b63b262ef8d9e4ef535699aba486c40f538598010', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:25:28', '2023-08-09 01:25:28', '2023-08-09 05:55:28'),
('1a5115e6c52533051527251d2cd2347f2df910631e5c2f50741f7cf52fb988056025f5a01c17602e', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:53:07', '2023-06-30 09:53:07', '2023-06-30 14:23:07'),
('1a59891c1d0495e1ac42163d7711764c61ffda2934a991263b6e5130c28f963b295980bbcd2e3408', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:12:49', '2022-08-28 03:12:49', '2022-08-28 08:42:49'),
('1a60292fb585e7228eaf8cca880020af103f9b4418928bfe50e4dfee7566449e6033d88fee83a75d', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:26:02', '2022-10-14 13:26:02', '2027-10-14 16:56:02'),
('1a791e50c424c7da32b85c1cc8a81efc0c19b9f7653298ac97d515386793d4f89dc64e7917a09120', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:27:31', '2023-11-17 15:27:31', '2023-11-17 19:57:31'),
('1a9a0e6d565e5483e64e62a2ce6e209e9c9014eb05d71b2618c24f3de22a25c8b329ee6fb1aeab6d', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:30:41', '2022-12-06 11:30:41', '2022-12-06 16:00:41'),
('1a9b248110144e8bd036da813babbd6f10b932563466b284f818f7ef998f56b901a57eed17502e50', 1, 1, 'personalToken', '[]', 0, '2022-11-23 14:52:28', '2022-11-23 14:52:28', '2027-11-23 18:22:28'),
('1aa7a85522397ba37abf7517a77f8acadb457e4a4854c8eb5214493cecda199d4cfd34dac2cea869', 1, 1, 'personalToken', '[]', 1, '2022-12-12 11:35:25', '2022-12-12 11:35:25', '2022-12-12 16:05:25'),
('1aaa2abcb166bc60cd56146e52a2788560c3494f0f7a18b37b196670a323217ba4eace6862629e2f', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:36', '2022-12-16 05:08:36', '2022-12-16 09:38:36'),
('1acb02cd1ecb1342946b28d8e1ea2eb0b3639cb1c4025616fbd772f0d2f2a22918a1f39019f85ffd', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:27:45', '2023-04-11 15:27:45', '2023-04-11 19:57:45'),
('1adb89651c10e3e7c528615d8aa2dba8c1b00bb62af9d9aabb3295462941567d8f237437e6efa534', 1, 1, 'personalToken', '[]', 0, '2022-08-06 17:55:57', '2022-08-06 17:55:57', '2022-08-06 23:25:58'),
('1af1f7f1bbd3b045796883c55ac5f1377a279d691ce8a7ebdf1641042a5e7c83dfe7f0cb66fbcaf3', 1, 1, 'personalToken', '[]', 0, '2022-07-27 01:20:26', '2022-07-27 01:20:26', '2027-07-27 05:50:26'),
('1afc4a00a9f2fa70410173620d67a80270bcbc65510806138a1b51321ca43703b94743a46fa7d618', 1, 1, 'personalToken', '[]', 1, '2022-12-25 17:07:16', '2022-12-25 17:07:16', '2027-12-25 20:37:16'),
('1b00d86faae498c4f7886cb6ce0876a1cdb04ad55bdd1241da676b7f6f1186edc0734f33b408e692', 1, 1, 'personalToken', '[]', 0, '2022-10-22 11:14:08', '2022-10-22 11:14:08', '2022-10-22 15:44:08'),
('1b12a4ebd244738fabfe41498f323b968a2ded43e702bc4a084fbd610d0fafdadec8dfa098fa2957', 1, 1, 'personalToken', '[]', 0, '2023-09-08 10:56:58', '2023-09-08 10:56:58', '2028-09-08 14:26:58'),
('1b2119dde681b18efecc0938012b68672b4432f9ae358c27d5eea13975c13b86bce8d52bdb32ab7b', 1, 1, 'personalToken', '[]', 0, '2023-12-01 16:13:11', '2023-12-01 16:13:11', '2023-12-01 20:43:11'),
('1b74ac9eb3dc7ef35615b2823a17f3b99868180f37c9270c1b5c251aff19192f840ea3e24b52e089', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:45:57', '2022-12-26 09:45:57', '2027-12-26 13:15:57'),
('1b87b531e753035078348b5921a158189ee957d50b1e5e550e5091a343b96ac859471d0484f62cd2', 1, 1, 'personalToken', '[]', 1, '2023-01-28 13:47:00', '2023-01-28 13:47:00', '2028-01-28 17:17:00'),
('1b8b92d8d79e65f6b76f84807236e20b30eecffdb78944670b0a79e4ce5c1a1ddebd57817cf0cfc5', 1, 1, 'personalToken', '[]', 0, '2023-09-12 06:04:24', '2023-09-12 06:04:24', '2023-09-12 10:34:24'),
('1b943613631cf4545636915e99546d088fc19230118c1e9af613fc97656517fd4d45d7748cfc0b1d', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:44:29', '2023-04-24 11:44:29', '2028-04-24 15:14:29'),
('1c1c9a4697e8f87b4ed616ac7380af3d3a33a62c5791791767ad4ef1d23ae03f527510f722c3684c', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:43:52', '2023-06-30 09:43:52', '2023-06-30 14:13:52'),
('1c26c821559eca385ab70cbdc5c7feb3d0775520d06006332e4df621fe13daffc3c989d212efdbe2', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:44:25', '2023-08-08 08:44:25', '2023-08-08 13:14:25'),
('1c2f2a9eec01ceb5f5f56d5fd70b3d7a2d6cdeee6d51db91c9d3d9b036e5cf86531fc3b25bc3a1a5', 1, 1, 'personalToken', '[]', 0, '2022-11-26 02:42:08', '2022-11-26 02:42:08', '2022-11-26 07:12:08'),
('1c42fd1b000150a489b5adcbee6d8bec9a8e25c5e68e1a0e1bf394b87994f330a45c046fa1cbf4b7', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:12:09', '2023-12-11 05:12:09', '2023-12-11 09:42:09'),
('1c5b3c0ba7c1a9ffc34bf1c326c761d214e760ad16a64693c9652463d4e2f75c4b56fbd9a79cbf63', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:06:26', '2022-12-16 05:06:26', '2027-12-16 08:36:26'),
('1c64d58f09bdc86c9b9b182c0dcfe000f4a267c8c9b300fe6109e94b0522ed8b727a90673a144305', 1, 1, 'personalToken', '[]', 0, '2023-08-20 02:29:34', '2023-08-20 02:29:34', '2028-08-20 05:59:35'),
('1c7b60d973d853d5e0be6de0f7ba9a9b3da766c23fc644113f6978d548f808ec1a74a314523d0400', 1, 1, 'personalToken', '[]', 1, '2022-12-11 12:19:54', '2022-12-11 12:19:54', '2027-12-11 15:49:54'),
('1c8aa4b3549a5336fe65eed5892e76b849e377a945ced52d95fd3a7b80dac82a36a358c2f3755743', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:54:27', '2022-08-27 01:54:27', '2022-08-27 07:24:27'),
('1c98490c9209c0f66ae671c7fbf13582eaba3ccd8abdd78936d5a1eec707a4eb10730f3d6868b617', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:02:17', '2022-12-16 03:02:17', '2022-12-16 07:32:17'),
('1cb1b1adfe99342e38389f9a5f6b36d2008d84e12a6896459e63e142ba1e32b6d309ade3ec80a69a', 1, 1, 'personalToken', '[]', 0, '2022-11-12 04:34:21', '2022-11-12 04:34:21', '2027-11-12 08:04:21'),
('1cb35026a4d285873d006fb451ea611e2fe2ac71f775462c18dd9293d30f2a7604b53673d0030f19', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:25:30', '2023-11-17 15:25:30', '2023-11-17 19:55:30'),
('1ce0737bf71069969033e63fd888b6b4b85c5aa0c7e4f3cd814fcdd3e7f5dedfe2ae9d52d08d0179', 1, 1, 'personalToken', '[]', 0, '2023-02-06 12:48:46', '2023-02-06 12:48:46', '2023-02-06 17:18:46'),
('1ce0b3750eab258f9c0741d560cf86419c28337a5f4deee8bfa2b3833a1b1e8e5f5863c4a4266662', 1, 1, 'personalToken', '[]', 1, '2023-01-07 15:33:26', '2023-01-07 15:33:26', '2023-01-07 20:03:26'),
('1ce9478abd56967a5a2509d710dd1615d796b13b81ecf3701f937011d870ee2cbe814854f8389513', 1, 1, 'personalToken', '[]', 0, '2023-08-13 07:37:20', '2023-08-13 07:37:20', '2023-08-13 12:07:20'),
('1cec5ea75fc9e1b48a63753c1a6d2d68e1f25beafb32f5744d518c37a954a90bbe4ad6a38ccc8419', 1, 1, 'personalToken', '[]', 0, '2023-01-06 13:06:53', '2023-01-06 13:06:53', '2023-01-06 17:36:53'),
('1cf19fd29d5d9e23f86a82db863483bfd1ba2336d4134fa68389df9cae063251bd01d262a4bcc796', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:47:52', '2023-03-04 11:47:52', '2023-03-04 16:17:52'),
('1d0be86609615f2d45750ca39367087289ecd23e5946e7fe7b1fc81bcc1cf52c6d38da19bc0f5a49', 1, 1, 'personalToken', '[]', 0, '2023-03-08 16:55:04', '2023-03-08 16:55:04', '2028-03-08 20:25:04'),
('1d178eab9ec31256cdee3941d574369b973b79d3098205d30d83345b3857e8f8332615e805f5b9b0', 1, 1, 'personalToken', '[]', 0, '2023-12-09 10:10:55', '2023-12-09 10:10:55', '2023-12-09 14:40:55'),
('1d30b37413131dff3e7011e0091bc5b406d4062d0d54df24f09802282b3d115f0eb2668922e8af13', 1, 1, 'personalToken', '[]', 1, '2023-08-29 04:27:36', '2023-08-29 04:27:36', '2028-08-29 07:57:36'),
('1d3c0723b82a2eaf952797e997600ce4948af888296b09e5c6172e3ef99a5fe42589423b730cc13e', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:34:12', '2022-12-07 09:34:12', '2022-12-07 14:04:12'),
('1d4f9268d9084051f8dac86d3757c06c3ce1a7280ec80b76b1d69024d0087b5b4bd980aeab2d2bb4', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:17:42', '2022-07-12 05:17:42', '2022-07-12 10:47:42'),
('1d63f246ee70b71bda53269223126d8a40429df8b5d8351c47f9f9e648784d9a144ac3f3c5766cad', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:44', '2022-08-03 03:51:44', '2027-08-03 08:21:44'),
('1d7f7a50315b6b80c51636e660aae357d0817ad4d327a3f7e57e938501722a16954b61275332f49e', 1, 1, 'personalToken', '[]', 0, '2023-08-12 05:15:16', '2023-08-12 05:15:16', '2023-08-12 09:45:16'),
('1d9a0bc3a5b03bcaed76a9b606fa46d08d5e9ceb3aa8ef84624986bfca809ea51f2db3dc97a7deef', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:43:12', '2022-11-21 02:43:12', '2022-11-21 07:13:12'),
('1da90b9802fc9e1bbfe4edb77b8b311dab17300af4df5cce4e17e0c340d355ae6541ee6945fbb798', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:05:12', '2022-08-28 03:05:12', '2022-08-28 08:35:12'),
('1dc11d94b47638b2d9069c98dd2ea15dc4c6b3ba63b4dda25dd454a12f0b4d28e93140aa74e08813', 1, 1, 'personalToken', '[]', 1, '2023-06-15 03:38:40', '2023-06-15 03:38:40', '2023-06-15 08:08:40'),
('1dcda1db3e1ee290b3515ff898bce8e4f6225428d24945adec051a3cc9272ef0807817f3f1879110', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:46:09', '2023-06-21 04:46:09', '2023-06-21 09:16:09'),
('1dd43515687664c772c2ead0fb7bfe0cb1b7e69a4d6e0b6611b9eace5d0c94198a8b6a63d29363fd', 1, 1, 'personalToken', '[]', 1, '2022-07-10 15:20:58', '2022-07-10 15:20:58', '2027-07-10 19:50:58'),
('1dd51efaa35550969ad66aa8a90c2e6d0e8ed099be5ec552b7023b2c6366a2429160fb47b7ea4063', 10, 1, 'personalToken', '[]', 1, '2023-02-13 17:59:59', '2023-02-13 17:59:59', '2023-02-13 22:29:59'),
('1dd9edec97b64795b38344138397557c25c3b8286b427fe5b484c5506fea363bd0893d9f4af5ad17', 1, 1, 'personalToken', '[]', 0, '2023-09-25 06:52:39', '2023-09-25 06:52:39', '2028-09-25 10:22:40'),
('1ddba93d3aa54647c5fd571e1a73aaa57a48c388a5d6e68862ab5a8ca1f2d854c8753a05e0e96301', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:30:33', '2023-09-27 13:30:33', '2023-09-27 18:00:33'),
('1ded22c7e91196b842205a447f51ff014a9620e425900138ef50e7e2dbc41e5c698337ba0e8c03fe', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:38:40', '2022-09-26 07:38:40', '2027-09-26 11:08:40'),
('1df68329c6ede7a36eebfc8bdab7e923f3fdffec5d0649fe35cb36bd646513dff23eae7f1233ef8d', 1, 1, 'personalToken', '[]', 1, '2022-09-27 06:48:01', '2022-09-27 06:48:01', '2027-09-27 10:18:02'),
('1e2a15cc1be0d5e8dbdf4c8ac7456cda531ca94f23a493185752fe2bd80d3bd8a343479ce2e7a85f', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:54:30', '2022-07-12 08:54:30', '2022-07-12 14:24:30'),
('1e42a14c485de42f948088eb0f8e2ed456d166c65b8918e57942969fbda04f40cb76968118e76614', 1, 1, 'personalToken', '[]', 0, '2023-02-07 17:37:06', '2023-02-07 17:37:06', '2023-02-07 22:07:06'),
('1e58b56872a476a60ec29e821dc5e402fe3af197b2e9460a853af859b580b64816f4a086e63e8366', 1, 1, 'personalToken', '[]', 0, '2022-09-26 08:04:35', '2022-09-26 08:04:35', '2022-09-26 12:34:35'),
('1e5aa66ef0347aad11a7b3373234b5262675de261138f90f87707a8ae927763cd4995611d766c348', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:31', '2023-11-17 15:29:31', '2023-11-17 19:59:31'),
('1e87e9da70308953f4633fbaa80b857bfcdb2d918e8e51ddfc13e7a20588c1d029812e891c615cb5', 1, 1, 'personalToken', '[]', 1, '2022-12-25 07:43:09', '2022-12-25 07:43:09', '2027-12-25 11:13:09'),
('1ebf12ed42d861b60a7f2b316baebb867fee41c5a73b68d1bf3e0e18c62d33b54e698ee147067a3b', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:27:56', '2023-08-09 01:27:56', '2023-08-09 05:57:56'),
('1edd27a8d8473aed50d39d967b41a113696b5610d28b4d65eb4af264c69fe0c59bb64ca7d492d267', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:40:14', '2023-05-16 03:40:14', '2023-05-16 08:10:14'),
('1ef8c28ebe3a31fad297ad3fa370fd0b26039c0e332daab0e8e677713a24e8289a536892b501fd03', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:12:32', '2022-12-06 14:12:32', '2022-12-06 18:42:32'),
('1efa39352ab684c229f22a89b2c5b5df5e2dfbf8d5b3006cd17d8a5d4dd92c66d4a714bc5f1551cf', 1, 1, 'personalToken', '[]', 1, '2022-06-30 11:26:02', '2022-06-30 11:26:02', '2022-06-30 16:56:02'),
('1f20f577f48bc45de4957dc9bea16c8d1a895fccdddbccc6bc2252cf316acf74f6c561f700c602cb', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:36:46', '2023-02-05 17:36:46', '2023-02-05 22:06:46'),
('1f7722bbbf64a5c0151a91f44032a813d4da1ca6e8d7fa7ed9b7c8d6c338c6a21b712748da943029', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:28:25', '2023-04-11 08:28:25', '2023-04-11 12:58:25'),
('1f7c7d0d0db5dbd8c3522c2a7aba9648cc60e5f3f9f5ba53387e599e31c965efa83a4a4d28a92be9', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:18:46', '2023-09-27 12:18:46', '2023-09-27 16:48:46'),
('1f8154bb82680880514881362c6332ded70e0457dd918a525dc2d1be5b038f486a5472f659cc8575', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:40:40', '2023-06-21 03:40:40', '2028-06-21 07:10:40'),
('1f8b4959cf4d13182fe0de1945243373f46d7eadbc638d15f7f2df3843362de760c9e2c9c3abc054', 1, 1, 'personalToken', '[]', 1, '2023-12-11 05:19:28', '2023-12-11 05:19:28', '2023-12-11 09:49:28'),
('1f8e21b33dab3e7aaa657780e6f92f99ba931a7583ea87d34d01d5436b44824cc747969f94d4a1c8', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:14:05', '2023-04-08 15:14:05', '2023-04-08 19:44:05'),
('1fa52017185e5e0860b5e6cfa9faf720ea79ab482ac3b4b72e7af98f739060f6ce11fa3bdd74ff72', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:30:22', '2022-11-28 17:30:22', '2027-11-28 21:00:22'),
('1fc6c4895c93fe10a8fe8607c1ac827e028b5541bd7cca022268c81e9ce5763eb29f5eee1d2ca96d', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:43:22', '2022-11-21 02:43:22', '2022-11-21 07:13:22'),
('1fe89dbe0a2a7716b8314d7d2e7f7ca61dd25df43f5571ebf10cf3ee6b389d058acf4a8aac8cd24e', 1, 1, 'personalToken', '[]', 0, '2023-04-11 16:04:36', '2023-04-11 16:04:36', '2023-04-11 20:34:36'),
('1feb733da9e8074cf80ab773d7a98636925bc9848be0c52364a61130a7084303a60e0f690fdd074e', 1, 1, 'personalToken', '[]', 1, '2023-04-11 15:58:34', '2023-04-11 15:58:34', '2023-04-11 20:28:34'),
('203a5be5e061ca7ee9d391c83d78f85ecb5fbc8ef8662247971fb588dafad59448641ca2760b5e6d', 1, 1, 'personalToken', '[]', 0, '2023-06-18 07:30:07', '2023-06-18 07:30:07', '2028-06-18 11:00:07'),
('205902da04f6da077baeb87b621864b6ec9bd6b6346e87e3dc450d539fd0515c7e75ddce0f2304ab', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:23:09', '2022-11-15 05:23:09', '2022-11-15 09:53:09'),
('205e7ccf47162c03482f47d513f0c77805b1bb38e2f9d89adedd10661fe31a181ba8291a4ae8b26c', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:23:56', '2023-01-20 11:23:56', '2028-01-20 14:53:56'),
('20653a1a5c1840c40dfababe50c6ad602bc77875fdb76cf2a600025595cd28bded74c4d80da3f123', 1, 1, 'personalToken', '[]', 0, '2022-11-02 09:25:40', '2022-11-02 09:25:40', '2027-11-02 12:55:40'),
('20671888814272a406b80ba5f812d69e298afcdc0fc51b0007561433af5adb7f89204d4b73c08930', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:24:58', '2023-04-11 08:24:58', '2023-04-11 12:54:58'),
('2067782c9da2d70f0439bcb731fdab49c97b1d01869b68f9f955e7c0ad7a52f74cc09f51eef0cea0', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:08:07', '2022-10-22 14:08:07', '2022-10-22 18:38:07'),
('20697f71dedb2104b724e1fa151029c2e50c1fa0bcafc97063a3ec76a1af70210d004283fe12c426', 1, 1, 'personalToken', '[]', 0, '2023-09-04 06:26:41', '2023-09-04 06:26:41', '2023-09-04 10:56:42'),
('20888d86c7ec04c6dfad3b4291b03952f4a9b4b8f268fe7a3240030670e8c95edc91b8a4f3a2ef6e', 1, 1, 'personalToken', '[]', 0, '2022-08-11 06:51:47', '2022-08-11 06:51:47', '2022-08-11 12:21:47'),
('2094a3e60b466879045ff1e71b1a0322486368dca4899ddf423080fe513103347e4eabbb2111496f', 1, 1, 'personalToken', '[]', 1, '2023-06-15 07:09:51', '2023-06-15 07:09:51', '2023-06-15 11:39:51'),
('209aa23feebe93e83aab08c0ec20c5cb01352abd4300f15c34e133598714ff4dd6d4c13dd495dc0b', 2, 1, 'personalToken', '[]', 0, '2022-10-05 05:16:04', '2022-10-05 05:16:04', '2022-10-05 09:46:04'),
('20acfa2808dc299128f9b343bd445a25d164910f0bbd752af867fcf9682d96968a5edc39f9e23667', 1, 1, 'personalToken', '[]', 1, '2022-08-29 18:47:59', '2022-08-29 18:47:59', '2027-08-29 23:17:59'),
('20c48da03429a983a68acc5a14ae997c3de34113b3f8346cf53e10b35c48bb91a5d1d75e61eac7e0', 1, 1, 'personalToken', '[]', 1, '2022-10-13 04:43:31', '2022-10-13 04:43:31', '2027-10-13 08:13:31'),
('20d2ba6432299a70bc3b7229ee1cd3870d8cc312d3436fb664395a00d441d13ab05ff37375eacad9', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:26:51', '2023-08-09 03:26:51', '2023-08-09 07:56:51'),
('2100d0b09433226d9eb273301558b7fab766718f83f907cc428d223da74b8b61f8f4a914bcb97107', 1, 1, 'personalToken', '[]', 0, '2022-08-12 09:51:56', '2022-08-12 09:51:56', '2027-08-12 14:21:56'),
('2109fc6d3edccea010db22de8144b1dc279fecd9bb4ddd824cc969ce2929388743aa0bdcad082215', 1, 1, 'personalToken', '[]', 1, '2022-08-03 04:55:34', '2022-08-03 04:55:34', '2022-08-03 10:25:34'),
('2117f2a12181306938d48eb90064f07f7cb23074bd3e98f3f9fc2d4ad64eb8ac1e9c6c77f091a470', 1, 1, 'personalToken', '[]', 0, '2022-11-16 14:02:21', '2022-11-16 14:02:21', '2027-11-16 17:32:21'),
('216069cf84033dd978453cefe5123a945dbb29af94a425ed5119b4dd0be2c50e0db33401a824b9b3', 1, 1, 'personalToken', '[]', 0, '2023-12-11 04:59:08', '2023-12-11 04:59:08', '2028-12-11 08:29:08'),
('217c58f051ba54e065dec8291971461ad709b1fe7624d3117df61d43931f28dac3f3f6e664da9b28', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:57:41', '2022-08-27 01:57:41', '2027-08-27 06:27:41'),
('219f6818fc60cc817d1f1b496d7f514984f893fed129647024ddb42a49930d9675d901b1304da166', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:11', '2023-11-17 15:29:11', '2023-11-17 19:59:11'),
('21a1f8692ec80dc43429d3216f11a414bf54bf81c2504799127eeaf2f96360c20f0151074b5f82ae', 1, 1, 'personalToken', '[]', 0, '2023-08-12 01:47:31', '2023-08-12 01:47:31', '2023-08-12 06:17:31'),
('21afc0ff7c105e6caeaebfed01622a84b76801acbd82639bd6f2187f3e48955b89b33a13fc4f2aad', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:58:36', '2022-07-12 08:58:36', '2022-07-12 14:28:36'),
('21bb7dc767594493cfb9ad1333c242592be0425fca1c8e1145fc8bd6da401c83f50e9b38d3d46e81', 1, 1, 'personalToken', '[]', 0, '2023-02-12 17:53:28', '2023-02-12 17:53:28', '2028-02-12 21:23:28'),
('21df89f742b36abfdcee6ad0266d82e5877bdf2d1e26d8083c66158bd79dc097fb96353016b3fc04', 1, 1, 'personalToken', '[]', 1, '2022-10-23 03:10:28', '2022-10-23 03:10:28', '2027-10-23 06:40:28'),
('2216598f89d6db871dd31534829fb899c3131f85fb87448b411c4b81e429b3c2eee8fd9cab8ca7d5', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:48:15', '2022-10-22 14:48:15', '2027-10-22 18:18:15'),
('221deebd330f18b17da3083dca7ac51ae54d85ade966afed607668c61161da4f4116b8129d4d2c5c', 1, 1, 'personalToken', '[]', 0, '2023-02-07 15:51:19', '2023-02-07 15:51:19', '2028-02-07 19:21:19'),
('2220a490a90f27767171c1a21e28adcb0b3595e7ba2b97b83b4162ab2c9ab136155ddd12b0a858bb', 19, 1, 'personalToken', '[]', 1, '2023-02-13 17:39:25', '2023-02-13 17:39:25', '2023-02-13 22:09:25'),
('223c13ec5144a17330af9abdaaa25479f678d5c25ba97f74c1d850325908ac7287b74445e6b3a31c', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:29:41', '2022-07-12 04:29:41', '2022-07-12 09:59:41'),
('2263097f73d2f8f2f41b0e804fe03ebcb3014241b37c5dda7dd76fc85843ebe2eede98ccd00fbfdd', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:49:24', '2023-03-04 11:49:24', '2028-03-04 15:19:24'),
('2283ba7092388ad8fdc303f02c181e070f0bb8175fc93490145d85c9001136f559a4c0e45c5ad170', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:06', '2022-12-16 05:08:06', '2022-12-16 09:38:06'),
('228ae9ab71d02f945a9f00b62a2f052f05fb69e81af82b2d70c26b7fcb45860f87e74342ce18030f', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:18:43', '2022-11-12 01:18:43', '2027-11-12 04:48:43'),
('22a9cce10c788ffaee70e32c98a6342e20d2fc4c14fb5c1ed07ec32320e62ca6a7e38460620699b1', 1, 1, 'personalToken', '[]', 0, '2023-12-12 04:16:57', '2023-12-12 04:16:57', '2023-12-12 08:46:57'),
('22f6f599fa2d01a0905fe0492156f43fb9fe4c7a647463538d431002250e41324b24261d10cb5b89', 1, 1, 'personalToken', '[]', 0, '2022-11-17 08:33:10', '2022-11-17 08:33:10', '2022-11-17 13:03:10'),
('22f8532a10bfefc3e4c0a8c1d022a4aa242a56d65a7a1606df8fe4f23cd17b9c0824562d1caee5a9', 1, 1, 'personalToken', '[]', 0, '2023-04-09 07:13:30', '2023-04-09 07:13:30', '2023-04-09 11:43:30'),
('22ff6a105908395c4cdbeb235b513eff947c0a3ccbdeb06e475c42aa3ba7d72b704cd28093542504', 1, 1, 'personalToken', '[]', 0, '2023-05-27 07:55:34', '2023-05-27 07:55:34', '2023-05-27 12:25:34'),
('2310d1fffdccacc46786ad5695b03be3804da207e1fa1cd17b0aea3b6a543a57009f90bcd540f02e', 1, 1, 'personalToken', '[]', 0, '2023-05-30 01:25:42', '2023-05-30 01:25:42', '2023-05-30 05:55:42'),
('2333f8a830abb886d3c69bf0af5f06e9646f5005956bbe9fa0584ec933ff6a4b97f4c7504bc44bb6', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:18:12', '2023-05-16 11:18:12', '2023-05-16 15:48:12'),
('2360973e1ce72c88d7a9f492ec43b80936d5d86f02e99fac6dc0f7ab53a6cbde57be27d01c60e945', 1, 1, 'personalToken', '[]', 1, '2023-07-15 04:54:58', '2023-07-15 04:54:58', '2028-07-15 08:24:58'),
('23925977c9d330133fe0c5f1e0e0e8fca1a908f9169e139d7bcf57b030b180cf9f758e844648637c', 1, 1, 'personalToken', '[]', 0, '2023-01-24 13:56:49', '2023-01-24 13:56:49', '2028-01-24 17:26:49'),
('23a72e4937cdb005af52c8c88ce142c0ebab1ff616251fd1c1f7132ea0a2f2c15919a98ec9696578', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:53:40', '2023-08-12 08:53:40', '2023-08-12 13:23:40'),
('23aefb5c737affe9017d224c5e634fe2250a46adafc41c5a94b01af031a442a702721f3fcac13c2f', 1, 1, 'personalToken', '[]', 1, '2023-05-15 13:28:10', '2023-05-15 13:28:10', '2023-05-15 17:58:10'),
('23f75687bb13c71b0e28671fe333feb53e92ada4af81b545813e54fb07190f3870468f4feedf3521', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:24:44', '2022-08-01 16:24:44', '2022-08-01 21:54:44'),
('23fbf9e7e7b694facafed2d2b837ab3f39a6f3e469efa4289d12f9cf5a2017394d4e04ca3d47b680', 1, 1, 'personalToken', '[]', 1, '2022-07-10 15:23:32', '2022-07-10 15:23:32', '2027-07-10 19:53:32'),
('2402ae37f4e89c1eadc7cccaa8877a3f7c6cc740e3ebca066836fee5ba10162b893157c76d5ee4a5', 1, 1, 'personalToken', '[]', 0, '2022-11-01 02:07:11', '2022-11-01 02:07:11', '2027-11-01 05:37:11'),
('24760555833cf318df8934d1fd7a26d428c96bd8a0706832adb73121ef5e60d5222a5b3181ca2eeb', 1, 1, 'personalToken', '[]', 0, '2022-08-22 12:55:40', '2022-08-22 12:55:40', '2022-08-22 18:25:40'),
('24915e34ac8da147d417f62408c8742992fdf2de002c2f3fecaa3c8318c4726ec17d08abaa85b90c', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:22:04', '2023-04-11 17:22:04', '2023-04-11 21:52:05'),
('24a1ac5bdcc5148eacc82c21bad37c088fce966af41fbb0c2e9f48ed1dc0b196d8892b532de2bea3', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:40:34', '2022-07-02 12:40:34', '2022-07-02 18:10:34'),
('24d2016a6a15805473ac7f9037ae2504773a87c164c9cac227736f9c4f0df038e7a83ab75da8c856', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:10:26', '2023-08-01 04:10:26', '2028-08-01 07:40:26'),
('24e34f910891ae12c7f8319f323f5fc74e0f5a1f7cbdfe1e83b27379fa9fc507e93c19fc1f37b040', 1, 1, 'personalToken', '[]', 1, '2022-07-17 06:41:08', '2022-07-17 06:41:08', '2022-07-17 12:11:08'),
('24e74ee8947728e54178215e5299a17480877d416587d5417849cda28fb21ac74c4546c3580ccad4', 1, 1, 'personalToken', '[]', 0, '2023-08-14 04:34:27', '2023-08-14 04:34:27', '2023-08-14 09:04:27'),
('24ea30b8ef18cbd4fa221e84c666179b118361b6d5d6ee44dd93bee0fa2ba4acf3abca459867f042', 1, 1, 'personalToken', '[]', 0, '2023-05-07 02:25:21', '2023-05-07 02:25:21', '2023-05-07 06:55:21'),
('250150c7ced0b06a386170ea43da9b1342e8c5050ba574a8b98021f1cae77f2541307ccc1d432749', 10, 1, 'personalToken', '[]', 1, '2023-02-13 12:04:35', '2023-02-13 12:04:35', '2028-02-13 15:34:35'),
('250610780ffacf19fd01170357b3d4ecf7b910a2ff62e169ce460dc74d80abbbd9243c31c0fbf904', 1, 1, 'personalToken', '[]', 0, '2022-08-02 14:16:16', '2022-08-02 14:16:16', '2022-08-02 19:46:17'),
('250810887adfa03f22836ad8a5d236cf5e784e4969da71cc0e0d13cd1b262fc447c9f48b66e105c9', 1, 1, 'personalToken', '[]', 0, '2023-01-31 05:08:38', '2023-01-31 05:08:38', '2023-01-31 09:38:38'),
('251488ff464b801fd383e4edcb105a94a36202eb29030bb16c434c445c436b0fb7824fdb9e3049aa', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:46:20', '2022-12-08 05:46:20', '2027-12-08 09:16:20'),
('253e23e859d1cffc5256a9cc455d36f1a597da80e7e8aa609ee60c333ea9b8223bb1bc82f559d473', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:46:02', '2023-05-16 01:46:02', '2023-05-16 06:16:02'),
('256105bea7bfc91bb085b4892ad1139e4115db5cb8b329ae4cb701499ff1d09528e9f01d3fba5218', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:27:41', '2022-10-14 13:27:41', '2022-10-14 17:57:41'),
('25754e84b7f5cbca307eca73023e1993726572df35ba7da4ee11b2c140ee76bf3b5824c473ccd92d', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:40:00', '2023-01-20 11:40:00', '2023-01-20 16:10:00'),
('2578833841d18ac5c987fc788aeb9ba0cd7735ae7cf38a7e4cca8dad8f6deddf7b7859842b6736d3', 1, 1, 'personalToken', '[]', 1, '2022-07-17 03:29:41', '2022-07-17 03:29:41', '2022-07-17 08:59:41'),
('2587afbb2d40c6c034ef001cd43ebf0e9d46587419922c8f969c75d17054ebe6d53c52a05e687c14', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:46:18', '2023-07-05 13:46:18', '2023-07-05 18:16:18'),
('25a163af9758962e33725e7382308e5273495251d58d6673cd040afadee5379df256ab00a2aa71fa', 1, 1, 'personalToken', '[]', 0, '2022-07-26 06:53:26', '2022-07-26 06:53:26', '2027-07-26 11:23:26'),
('25e62b0bbb754d5d3c820d61cae52ceb601db7057babf7bd046acfcf275c124f7d116ff773c3c016', 1, 1, 'personalToken', '[]', 0, '2023-01-02 02:12:54', '2023-01-02 02:12:54', '2023-01-02 06:42:55'),
('26066b7c26308175de22be3282853c1837fbfe2d08458f3aa3086ab420a2a5c46afd8e1df19a2d1e', 1, 1, 'personalToken', '[]', 1, '2023-03-04 03:29:03', '2023-03-04 03:29:03', '2028-03-04 06:59:03'),
('261fb4eeced37ac78139ccd5b9df862734a5bdb1f601fa5e0bd202de06723978381a3dc065e663cb', 1, 1, 'personalToken', '[]', 0, '2023-11-18 13:59:48', '2023-11-18 13:59:48', '2028-11-18 17:29:48'),
('262c13f349452ee63c37bbb7f34f165c5107023db76c7479e48cde5a8665f98940d00178cca0be50', 1, 1, 'personalToken', '[]', 1, '2023-04-11 15:58:01', '2023-04-11 15:58:01', '2023-04-11 20:28:01'),
('262c94dd2f7a93983f1f69501d27a1e8faa1700ed91371482fa7ce8c56aa2f8a29c5a596fb53e029', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:10:22', '2022-12-16 05:10:22', '2022-12-16 09:40:22'),
('2670fa8e07a7c03baebf0c575f3979e2e90434a45fa6aec04790ededde36a749d8706db7ced57920', 1, 1, 'personalToken', '[]', 0, '2023-12-18 03:19:59', '2023-12-18 03:19:59', '2023-12-18 07:49:59'),
('2675b090001e5ceee95e6de70a684a5affb62489d0f527aff17dedf05e06896201983f93b718b1a7', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:03:27', '2023-04-11 08:03:27', '2023-04-11 12:33:28'),
('267d803ac65446eafb79d3872425a1da0196b23e3f5a272c86879358c02a7e9839966f2a32c66042', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:02:05', '2022-07-12 09:02:05', '2022-07-12 14:32:05'),
('26e0f6401471f9608163f36ac3881a0255f53d8565702a2c78108f7a3848d2e6c834fed633119b01', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:40:18', '2023-11-17 15:40:18', '2028-11-17 19:10:18'),
('26eb87cc5a94fe96bbebbd2df56731640a2c1c8a19fa691c99bb169e1350f9a7dda30ef8b9d5e106', 1, 1, 'personalToken', '[]', 0, '2023-07-15 04:55:43', '2023-07-15 04:55:43', '2028-07-15 08:25:43'),
('27075beb29f7399e4381e511f33f99fbfd9783a9db84b26bea90d68da3403d86d29ed5d360f42785', 1, 1, 'personalToken', '[]', 0, '2023-07-18 05:42:48', '2023-07-18 05:42:48', '2023-07-18 10:12:48'),
('2715285b982dfcb82b2ad40f533d9aab34279260b5f1884258d0a3a67eab76e198a887e4d59dce2f', 1, 1, 'personalToken', '[]', 0, '2023-05-08 09:39:54', '2023-05-08 09:39:54', '2023-05-08 14:09:55'),
('272d726565478e6e08c7ec091ee0244de865dd5204e82f467529d3cb7c640abf449b9d98cc00dc1f', 1, 1, 'personalToken', '[]', 1, '2022-10-22 14:17:26', '2022-10-22 14:17:26', '2022-10-22 18:47:26'),
('274866f2e6b0a7d896634d31d203d4147635f3809f50dd6a574b22fa09910baf71ab76fe68b30314', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:00:00', '2022-11-10 04:00:00', '2027-11-10 07:30:00'),
('274da2a65c5f10e0962749c6815290a58f4f31133c5aaa74903dde95c09e9f54844b7d9ea5d124e2', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:10:44', '2022-11-12 01:10:44', '2027-11-12 04:40:44'),
('275e2f79987720941e0c3773e6a1107c9a691b71314cb08f0a4b13132b46d18d1fffc9d2cf52ec44', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:40:11', '2023-06-21 03:40:11', '2028-06-21 07:10:11'),
('277a086334f17b6490320e6da2a587585260a8ad163d26986e7615ce7aa35ce472cec8395d618fda', 1, 1, 'personalToken', '[]', 0, '2023-08-14 01:45:23', '2023-08-14 01:45:23', '2023-08-14 06:15:23'),
('279815821a322aa4c5e4ef17718f30d4aa81451cb3e3caec40429b33103e39e9dde94ecc344f3694', 1, 1, 'personalToken', '[]', 1, '2023-06-15 06:53:40', '2023-06-15 06:53:40', '2023-06-15 11:23:40'),
('279bdbca599ad0ffb78e35da529b080f22059901e25a6d1d82068224f691d77807ea9727d3bd4a40', 1, 1, 'personalToken', '[]', 0, '2023-03-04 11:48:10', '2023-03-04 11:48:10', '2023-03-04 16:18:10'),
('27ad78e30bd7bcdd1b8c28513df99ea6b013bc0522895cd958f38fb6d4ae09d1448512adc54b81d7', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:31:05', '2023-09-27 13:31:05', '2023-09-27 18:01:05'),
('27b01f28f736124f78e373348712db963bcb5b41fdcd99794722e506191362fe85379570fd171124', 1, 1, 'personalToken', '[]', 0, '2023-04-16 10:23:26', '2023-04-16 10:23:26', '2023-04-16 14:53:26'),
('27b03866b4c6e38c6dd172b846e0ecf8b50cf681aef2e3a951b4b7fe4af2a0a10ff6425b46d1736b', 1, 1, 'personalToken', '[]', 0, '2023-01-06 13:27:54', '2023-01-06 13:27:54', '2023-01-06 17:57:54'),
('27c47a5f42beee5d7b5cb606c7e2086a61f533db0e474e35e486bc5d6ac76d86a9d951aed702222a', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:08:42', '2022-10-22 14:08:42', '2027-10-22 17:38:42'),
('27c5fa6a9672c888d0b213990ba1054753baf96a6efca533b03a78554b90e5ef40f02aabf0c01463', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:59:48', '2023-04-12 15:59:48', '2023-04-12 20:29:48'),
('27d7c276ef3de17d7f61e3b508acd77ca40bf4c0c6541c1630d92dff0f1695e62db71993d02fef8f', 1, 1, 'personalToken', '[]', 0, '2022-12-12 14:20:13', '2022-12-12 14:20:13', '2022-12-12 18:50:13'),
('27e3063750b2fad5b70b5f2760163089fd066657a1da6cf61fb78023f224ac51fb4380c54b500d77', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:38:19', '2023-03-04 11:38:19', '2023-03-04 16:08:19'),
('27f036ee2768761ca81192a1be8b26080343eaff97f39a4723a90c85bf59ec35c15ef42bf9c0e908', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:13', '2022-12-16 05:08:13', '2022-12-16 09:38:13'),
('27fc9edfd4c808ebf24cf90e528094c67a4f37ae81521654804ca49cbd35ec60ca22898eb154c283', 1, 1, 'personalToken', '[]', 0, '2022-11-29 05:59:56', '2022-11-29 05:59:56', '2027-11-29 09:29:56'),
('2803757d4509da96ef240f88ede92c8b2e94838c718112463da76325a8007267617c1bf5967630ad', 1, 1, 'personalToken', '[]', 0, '2023-03-13 08:01:15', '2023-03-13 08:01:15', '2023-03-13 12:31:15'),
('2829f6647bbc82876b93087123085267f27ba5c2918a46dcf92158ea608ad6de36ca954dccccacad', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:00:42', '2022-07-12 09:00:42', '2022-07-12 14:30:42'),
('282a7c036d5faeead54bf89b2bf4bbad88437c0deec6184e079e82321883ecc0bf261d04d808d73a', 1, 1, 'personalToken', '[]', 1, '2022-07-15 03:54:28', '2022-07-15 03:54:28', '2022-07-15 09:24:28'),
('282d43ce91b8cee7fdc066681fc04f4d23d9c03e46e7c490edbb049b004b3c621d62738d8a0b0109', 1, 1, 'personalToken', '[]', 0, '2023-02-04 04:59:18', '2023-02-04 04:59:18', '2023-02-04 09:29:18'),
('2836316699a7e2ad9e1985d803a9033f7f8270f74a5bde4113d55a0be160dfbd815081c50d9d1a36', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:20:15', '2022-07-06 07:20:15', '2022-07-06 12:50:15'),
('28586522a2950a7b803ab6cdfd27cd5f63cfb5a465b04206a284faf4e1db85018cf5c293f9e94103', 1, 1, 'personalToken', '[]', 0, '2023-03-16 20:56:43', '2023-03-16 20:56:43', '2023-03-17 01:26:43'),
('2866ecb0c4655e969e515b48f2ed707b1cb013522eac20ef583b7c70522fb6b95117c6994d26041e', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:31:53', '2022-11-28 17:31:53', '2027-11-28 21:01:53'),
('288af5f2018220af720f0b09085cdfd30c76551f687fa32f4a4a6c4a543929735091563a44ced717', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:51:12', '2023-01-19 13:51:12', '2028-01-19 17:21:12'),
('288ed3c605e697d6d38258d633908a68fe9918f1e5f448cb9abb6e8590f7f01121e7c2f1063c74d6', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:42:55', '2023-07-05 13:42:55', '2023-07-05 18:12:55'),
('28c168568036cdadac1447dd208b05cef403df1e5ddc31ac1afe5dd72d0b4b393877c4b8472bfbd8', 1, 1, 'personalToken', '[]', 1, '2023-03-04 09:50:47', '2023-03-04 09:50:47', '2028-03-04 13:20:47'),
('291815f02d79d0887478bf1c1617f4caa7ff31cbabf7ef439ea0ada49ad07afcc8ff65f6c37c0324', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:16:42', '2022-07-06 07:16:42', '2022-07-06 12:46:43'),
('293a92f077c6ea567ad5ce3d3087e49e607caad3944d931932fed002c3d90fc43af65b5f914fc8c4', 2, 1, 'personalToken', '[]', 1, '2022-10-03 17:13:12', '2022-10-03 17:13:12', '2022-10-03 21:43:12'),
('293f81a1873415a5f2b84bfa2f046ae67bd75c8f00f8cfb54113a699288b2971a625b5bc645b4df0', 1, 1, 'personalToken', '[]', 0, '2022-11-25 11:58:39', '2022-11-25 11:58:39', '2022-11-25 16:28:39'),
('296d2f232a10040967b8829839906df67a4631bdc24980fafaa972e429b834a5e1cdd962501efb81', 1, 1, 'personalToken', '[]', 1, '2022-07-19 02:35:13', '2022-07-19 02:35:13', '2022-07-19 08:05:14'),
('297c2cb86714ea5e9e106825f109f2c1f64408fe421ccbe0f0a5645cc83e2a20d31d5c9d3967772d', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:15:54', '2022-12-06 09:15:54', '2022-12-06 13:45:54'),
('29b560dd6dd8d9c3f50d40062c40906b2ba0fab4db4b02b469e45d6a3d6e28cde3a565239c18bac4', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:20:49', '2023-04-24 11:20:49', '2023-04-24 15:50:49'),
('29b89447aaa5ebf58eec56d2173954551dd68e43057898e1f8c628f39bd704eeb3305f1f5eb8d94a', 1, 1, 'personalToken', '[]', 0, '2023-12-08 18:21:23', '2023-12-08 18:21:23', '2028-12-08 21:51:23'),
('29cff48f212bc16cf65020d46798fe4c3f9eb478010803e9568e753df2219fd6bc34358e59218d6a', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:54:09', '2023-05-15 21:54:09', '2023-05-16 02:24:09'),
('2a1e40879b701ab2247b8ea56970bbc8a936b69a2756f7ab0cca23b70e6c3bf8e749b1e7b6356489', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:31:21', '2022-09-28 06:31:21', '2022-09-28 11:01:21'),
('2a1fb2d6484fb86d3dd2e5e794454f9a0b65364cbbb02a194da0f6271d9b543d8e16d87372c957e6', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:23:52', '2023-08-08 08:23:52', '2023-08-08 12:53:52'),
('2a57fccabd5418b7a18465c3602bdc401e34b4ef81c8622012920376ece7393934242fb70301640f', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:48:16', '2022-07-06 04:48:16', '2022-07-06 10:18:16'),
('2a5aefd875f5df694f27238bd3c53d46d812744ad07b4a9d8c198027f3c9476a71465be13c78549a', 1, 1, 'personalToken', '[]', 0, '2022-09-10 15:17:06', '2022-09-10 15:17:06', '2022-09-10 20:47:06'),
('2a922f21b25db8681edba6d604b875aee1e5a4afd9d42059e675c0671a163130ccd6a8163f5d3e01', 1, 1, 'personalToken', '[]', 1, '2022-10-27 20:52:00', '2022-10-27 20:52:00', '2022-10-28 01:22:00'),
('2a96e603ae665e2f05980154530bc49e39b1704dcf24f08dc173911d4e35cdd257fcf9bf75e12476', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:12:39', '2022-08-03 06:12:39', '2022-08-03 11:42:39'),
('2a98a9fe34209ae71d8bf28f5ea7c9924ce96f93a3dd46cbb6f394ae39774d08e9f34df2df5f01a3', 1, 1, 'personalToken', '[]', 0, '2022-12-05 11:15:07', '2022-12-05 11:15:07', '2022-12-05 15:45:07'),
('2ab4cd39e6bfe74936c62825f534ae7a02b2a7893cd09e25591ca519e4f50761b4473c0cbda1906e', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:50:11', '2023-01-06 15:50:11', '2023-01-06 20:20:11'),
('2ab7317ae41123cb8b5dcadd0d893c13a575cbcd46467adbbe4f98713dd5988779acb8baa7b466d5', 1, 1, 'personalToken', '[]', 0, '2022-11-16 16:42:04', '2022-11-16 16:42:04', '2027-11-16 20:12:04'),
('2abc10c5837c00e4ac642d2c04ea7eae39324e4d700a7fa93de10e05e82d7128c3a7ebe8f55a83f4', 1, 1, 'personalToken', '[]', 0, '2023-09-04 04:23:54', '2023-09-04 04:23:54', '2023-09-04 08:53:54'),
('2ad15b78f7fdee0429476cb88d7fc0fa768a1f089ffcd0b44a885764fef664f6e49340de20d542ed', 1, 1, 'personalToken', '[]', 0, '2023-08-12 01:49:28', '2023-08-12 01:49:28', '2023-08-12 06:19:28'),
('2ae308934accc98fc701f7ea652741988d58dd47a431d645becdf64054f907d19d4e8a873065944e', 1, 1, 'personalToken', '[]', 0, '2022-10-22 11:14:10', '2022-10-22 11:14:10', '2022-10-22 15:44:10'),
('2af7274e3f0e70a840603131026f82f3bc6bf06d11bb919463743d35432e87eae26be96b941d391c', 1, 1, 'personalToken', '[]', 1, '2022-10-15 11:52:32', '2022-10-15 11:52:32', '2022-10-15 16:22:32'),
('2b2eb60cdec2f90ea9fe5b4fd769d8e4b1207e4d7dd80041d80424724f22d03baa4d92d1b787570f', 1, 1, 'personalToken', '[]', 1, '2022-07-27 00:56:15', '2022-07-27 00:56:15', '2027-07-27 05:26:15'),
('2b4905596cd617f8518e52cd1cc0cdfffd3684e26566fcd0ca3cfd486b165864e2df8ec51fb5256f', 1, 1, 'personalToken', '[]', 0, '2022-11-29 05:47:57', '2022-11-29 05:47:57', '2022-11-29 10:17:57'),
('2b4960be4735e28cb3b1218093e0eccfb678b917edaaf58696f6474f6eb06f4140b44e6730d8b66f', 1, 1, 'personalToken', '[]', 0, '2023-03-10 08:14:51', '2023-03-10 08:14:51', '2028-03-10 11:44:51'),
('2b56440da1c8536e13258d0436d835489b5ff12158eb72988c2593b52b9b6ed42c3df85e111c43a5', 1, 1, 'personalToken', '[]', 1, '2022-10-14 02:58:16', '2022-10-14 02:58:16', '2022-10-14 07:28:16'),
('2b62838baa98e042047ef11b1696b2fc67c42795e9211165a250637f6f593c42c1bf2f6f3b5ff837', 1, 1, 'personalToken', '[]', 0, '2023-01-15 14:21:09', '2023-01-15 14:21:09', '2023-01-15 18:51:09'),
('2b8480b1beb77728d7b461b24801e979b1bd5f58bbac489ff0d34ee9cab344618634bb857806e928', 1, 1, 'personalToken', '[]', 1, '2023-02-11 16:01:08', '2023-02-11 16:01:08', '2028-02-11 19:31:08'),
('2b9203ecfbbdb598754a2585f50b91ad5b9de01f4bdfce3863d8e6109c8333f0744a2f233843311a', 1, 1, 'personalToken', '[]', 0, '2023-06-05 09:17:42', '2023-06-05 09:17:42', '2023-06-05 13:47:42'),
('2bfce596f84c3175b90a7714dae287d4fb418ee923bd774e49eb7fb81da29af363a0f9702d1feed7', 1, 1, 'personalToken', '[]', 1, '2022-07-13 15:03:28', '2022-07-13 15:03:28', '2027-07-13 19:33:28'),
('2c18de6d7f92eabfd1d6d90c50d27be9e0c526a45bc87df57f44c50c411960d1f2cc4ed64c7a9662', 1, 1, 'personalToken', '[]', 0, '2023-06-10 16:16:09', '2023-06-10 16:16:09', '2023-06-10 20:46:09'),
('2c298847de270ccc13e6a12a9fba7f2879350acbef0259eeed035920281c1deced67164a4b957f27', 1, 1, 'personalToken', '[]', 1, '2022-11-02 10:01:09', '2022-11-02 10:01:09', '2027-11-02 13:31:09'),
('2c3abf31d7ebde1bb7e5dcdc1ebaa673aa4d03a5489a49120de1c8c0214fd5f946b3e615fdb52711', 1, 1, 'personalToken', '[]', 0, '2022-11-27 16:44:06', '2022-11-27 16:44:06', '2027-11-27 20:14:06'),
('2c45bcb575d30de56052fb1324c98890287e584b6d3edc7c455b651c4b71c64a723e05a1720f4586', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:11:35', '2022-11-15 05:11:35', '2022-11-15 09:41:35'),
('2c5bef1d09c6a000460a155f69be723badba96943ab48439654ad040f492ade621ba40317d1c7975', 1, 1, 'personalToken', '[]', 0, '2023-08-09 17:24:41', '2023-08-09 17:24:41', '2028-08-09 20:54:41'),
('2c8fa7e8a0a0fac7d9c9ed2ea80e88716533c79ac8a397244c740b12f2a3d17eb1b3ded2a43dd0d2', 1, 1, 'personalToken', '[]', 0, '2023-06-04 04:52:29', '2023-06-04 04:52:29', '2023-06-04 09:22:29'),
('2c9a6820a3a1a265060e1886702fef0b5659a87b782ff0f0abea95f174c034caf838ceea4cfbf59b', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:25:54', '2023-08-09 03:25:54', '2023-08-09 07:55:54'),
('2ccfcc5f36729a3034779989dfeffa6a2b6de5206e90239ef446f4c57823720455f2b89d8e6e7bcf', 1, 1, 'personalToken', '[]', 0, '2023-07-10 13:09:41', '2023-07-10 13:09:41', '2023-07-10 17:39:42'),
('2cd153aa0dbf86715fb01babcd5d6e946b8263c243f194381b6b7c4545e4d4a2e69b5892d466e865', 1, 1, 'personalToken', '[]', 0, '2022-12-28 04:05:14', '2022-12-28 04:05:14', '2022-12-28 08:35:14'),
('2ce20d2688492b1aa4b2b723c4c21449ba7a88b90e1dd16a695109a86c8610559cf126d147f346ba', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:09:45', '2022-08-28 03:09:45', '2027-08-28 07:39:45'),
('2cec2a0e09e78deab0d87cedf2d13f755473a0859d9068fa64cdfdf8c16e2d0f8288930a43ea7218', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:21:37', '2023-04-11 15:21:37', '2023-04-11 19:51:37'),
('2cf6d1a0eb28da0dab3a879621dc8c76fc68139b7f0dcfb438911a6c1d2ef9934771ac9b6d6ef6f6', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:24:40', '2022-08-01 16:24:40', '2022-08-01 21:54:40'),
('2cfcd1be96ad545d4b50eae349eeca8ad7ffc8e57bd3631befad42e88ca5ac23b4727ef28711fdd2', 1, 1, 'personalToken', '[]', 0, '2023-01-14 17:09:09', '2023-01-14 17:09:09', '2028-01-14 20:39:09'),
('2d051459221c31a87eac3550711f1c3f77ae8ef4472d2f017588b71db83b22fa9611ec9c3baeb8fc', 1, 1, 'personalToken', '[]', 0, '2023-10-14 02:46:51', '2023-10-14 02:46:51', '2023-10-14 07:16:51'),
('2d07b070b605c34126e8973f95cdd354ac5e43c2c74048390fb750ae9ef9bb21c5dba660c1bda55a', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:58:45', '2022-07-12 08:58:45', '2022-07-12 14:28:45'),
('2d0e4b4a24a30e0d97f30100814596363a78672b38012dd3c9273963284873c1bd970492eb51aeef', 34, 1, 'personalToken', '[]', 1, '2023-06-21 09:01:58', '2023-06-21 09:01:58', '2023-06-21 13:31:59'),
('2d3b2edc0cf923c5aeaac2482bde5d5c3ed2db01287e5f5022cc331e91612a94b820380a3c658e39', 1, 1, 'personalToken', '[]', 0, '2022-07-06 07:32:17', '2022-07-06 07:32:17', '2022-07-06 13:02:17'),
('2d88cb4070004a58bc624900c945955f0ca983ad4fcb13d7f7e9d350929f1d5204af1b81f5808d27', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:35:43', '2023-06-30 10:35:43', '2028-06-30 14:05:43'),
('2d8f44f9cb7ca762f3456eea436d8df3ea64e93719c61f2bd9e741cb28e8b4be999f52baa07ff9d1', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:35:19', '2022-12-07 06:35:19', '2022-12-07 11:05:19'),
('2d901c41389cb525c80c1910743bef0d5ff8f372af6ce76885453bc01e5d7214d536928a31af9338', 1, 1, 'personalToken', '[]', 0, '2023-05-15 19:55:34', '2023-05-15 19:55:34', '2023-05-16 00:25:34'),
('2dbdbe9ac5c5c37c27f6710b0e3935845af9e5980d2c8b114b7fb43fde12e5fac962b27f259125df', 1, 1, 'personalToken', '[]', 0, '2023-01-15 04:23:19', '2023-01-15 04:23:19', '2023-01-15 08:53:19'),
('2dbf0986ed4b3d79705c34043365106eea1992d119397ba85ce5a93c74cdd880d05eaa091095d516', 1, 1, 'personalToken', '[]', 1, '2022-10-19 06:10:26', '2022-10-19 06:10:26', '2022-10-19 10:40:26'),
('2dc6d7fd56ad036429cb3d820ad5e34710c279fdfe6f072868f35af5a62778bb06b128072894e6ab', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:31:27', '2022-10-14 13:31:27', '2022-10-14 18:01:27'),
('2e210999750bf1f3e67cb886d7d8b4fe4ed974714aa93d474cb9d50055fdf5a328e4790ebfa39c7e', 1, 1, 'personalToken', '[]', 1, '2022-10-09 13:59:14', '2022-10-09 13:59:14', '2027-10-09 17:29:14'),
('2e260c7b467193ad44dd45a96ada4a9ad5ba1adbdf77334a6547c6d19029091cffdc1a461d9fe478', 1, 1, 'personalToken', '[]', 0, '2023-06-16 04:46:02', '2023-06-16 04:46:02', '2023-06-16 09:16:02'),
('2e3e52325847928940b347e3db50cce766183c830b75b549fdb14de279f871a4d0e2283c91ac99d9', 1, 1, 'personalToken', '[]', 0, '2022-12-11 07:12:54', '2022-12-11 07:12:54', '2027-12-11 10:42:54'),
('2e4f05035cc607ccd6878a97864e96ca6b59a124eae47e2b8847ddc8649b7f84b9953a0d1401a538', 1, 1, 'personalToken', '[]', 0, '2022-12-11 12:15:24', '2022-12-11 12:15:24', '2022-12-11 16:45:24'),
('2e590fec1f94315ede725388821a8872d2bdcce31e71b44ea208d643ba30a123ea4630294e5516b2', 2, 1, 'personalToken', '[]', 1, '2022-10-13 16:12:20', '2022-10-13 16:12:20', '2022-10-13 20:42:20'),
('2e77a916b5cab59f6c9adbfca119870beca1d47007e55cc58433b6012e01edd124b65da362871d75', 1, 1, 'personalToken', '[]', 0, '2022-08-29 00:27:46', '2022-08-29 00:27:46', '2027-08-29 04:57:46'),
('2e919bfa3a74e1dbb1467fd696743c6da5b5fab01f7fa7e4c8b63d487ccf1d94fce484b56a42fb09', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:28:00', '2022-12-06 09:28:00', '2022-12-06 13:58:00'),
('2e9c9a73576216eccba22c36a0295b045603f822183d2078c308857d0151c17587f455335d509511', 1, 1, 'personalToken', '[]', 0, '2023-04-12 08:33:18', '2023-04-12 08:33:18', '2028-04-12 12:03:18'),
('2ec7ecec8102be75a6539b079246dbe91daf411b7ab695322e4ff4dda654d5d23e09a3bcc103093b', 1, 1, 'personalToken', '[]', 0, '2023-10-21 01:54:24', '2023-10-21 01:54:24', '2023-10-21 06:24:24'),
('2edc0a80516aae870b7b0daa1b0f7e311af77aa33ac38209502c1a31a34d387dbd78f007e7fd6b64', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:18:29', '2022-10-22 14:18:29', '2027-10-22 17:48:29'),
('2ef781a470b8088f2b7e46b9a7974ca5cf22c50c1816c56d3e62f74ee5c5891e83462c4290da8a16', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:18:49', '2023-09-27 12:18:49', '2023-09-27 16:48:49'),
('2f3cadae98b5d48100d55eda2016a6575dc4be747c87b1b2edbab3dabce5f6e48cda8c878d73da70', 1, 1, 'personalToken', '[]', 0, '2023-04-11 07:52:38', '2023-04-11 07:52:38', '2023-04-11 12:22:38'),
('2f43f4813c7ab3f60f34a16459b5786be6b39548a4d8411a92c0d6667060ec19bf17509144c3b616', 1, 1, 'personalToken', '[]', 1, '2023-06-13 03:36:05', '2023-06-13 03:36:05', '2023-06-13 08:06:05'),
('2f7daf5a6fe4b3ed5be1869f38ee608d3ae636bdf823fa60da297ae8cec0b953f7d1e0195763cc13', 1, 1, 'personalToken', '[]', 0, '2023-01-13 17:22:56', '2023-01-13 17:22:56', '2023-01-13 21:52:56'),
('2fb07799628e4e5ac3e3024637f49392808c23d761e9da7e09a9067d64ed4026e39ca0d2fbe540e4', 1, 1, 'personalToken', '[]', 1, '2022-11-23 06:58:54', '2022-11-23 06:58:54', '2022-11-23 11:28:54'),
('2fc44fb1a67f44601fa76478f7e4ff865fcef21aca8d0feee807ebaee71b37bf3e0e08675a0da6d4', 1, 1, 'personalToken', '[]', 0, '2023-02-02 13:00:04', '2023-02-02 13:00:04', '2023-02-02 17:30:05'),
('2fd0e2f95a56532d10be847c16f8d0e39c9fe51120a35c9ae22849e5636b76ad6af04fecef4d89cd', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:12:57', '2023-08-07 08:12:57', '2023-08-07 12:42:57'),
('2fd5a45cc102f202f2ec7e2834ca7db9c7221db371d72d60cd8eec5c084b370872c6aa4dc2093af6', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:31:35', '2023-07-10 11:31:35', '2023-07-10 16:01:35'),
('2fe39ca1c3655d5e110923d679e8172a2f1238c03e9708bfbb3af305fda4c166ba0d1bc49bdfdcb9', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:01', '2022-08-03 04:40:01', '2027-08-03 09:10:02'),
('2ff0e52c7618a05fd87bd81e20ff833cbfbf9a939f1e5b7f6f6b604265af9af46998860565f5893a', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:24:48', '2022-12-08 05:24:48', '2022-12-08 09:54:48'),
('3007637deb549ec643ecb17f6916b948666c1a1eb9d268f95692e960871685bcb06725baf82dfea6', 1, 1, 'personalToken', '[]', 1, '2022-10-28 12:08:31', '2022-10-28 12:08:31', '2022-10-28 16:38:31'),
('3027d65b23d802346148e5172ebd7bab9e8589ab7bc290ea20ceed0a7490c78daeb57cdc69528d43', 1, 1, 'personalToken', '[]', 0, '2023-03-08 16:54:24', '2023-03-08 16:54:24', '2023-03-08 21:24:24'),
('304679809fb4107a4e7a7f62717bd4c1cbb53ed848a3a64c30b7ac645c8496beceb0146d78919191', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:40', '2022-10-14 13:23:40', '2027-10-14 16:53:40'),
('3070f930d5aff9c88db4c8bc11d80e3bba939899c971defdb3bb3f21283b954a74efc31f89b10125', 1, 1, 'personalToken', '[]', 1, '2023-04-09 12:24:10', '2023-04-09 12:24:10', '2028-04-09 15:54:10'),
('30adfe856b4a4ab1d93cf9ad874c3ac3c6c4dead0c888248b5161eef3ce612997b4f5a067b10b32b', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:51:28', '2023-06-15 03:51:28', '2023-06-15 08:21:28'),
('30b24be5fd218f7b063a9d3de0c027682cbac39c265bff4e42490028fe7602483cebd61b6bd5b38c', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:07:27', '2023-06-21 05:07:27', '2023-06-21 09:37:27'),
('30cb68807e6bb118887a7b9231bf656807abd8574629d270871fad40fef13b9468cc76e4bd21d49f', 1, 1, 'personalToken', '[]', 0, '2022-12-01 03:41:41', '2022-12-01 03:41:41', '2027-12-01 07:11:42'),
('30d1d8f70ad4e789358e0a2faea9d3f90e73f7ce64ad203e8595d23ab1dfb02053a92f5f165c81a3', 1, 1, 'personalToken', '[]', 0, '2022-11-10 00:21:18', '2022-11-10 00:21:18', '2027-11-10 03:51:18'),
('30d3207d7539ab0e11640cb56e5b28cd72437e580271bfa44d46c43ffb0baf6dd24c07100d9d1228', 1, 1, 'personalToken', '[]', 0, '2022-10-23 05:01:34', '2022-10-23 05:01:34', '2027-10-23 08:31:34'),
('30d840a0d90f6ea0dfc3a9ddc7f3905cb744c1d7c54c6f1ae79852c0bc216c260ff6cbf39a558571', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:35:43', '2023-08-13 03:35:43', '2023-08-13 08:05:43'),
('30f89ad487a7ba77fa26cc5dbc0a5ea0da7549f69098d85b9ac11ff681b5f0fcd5266bdd17c82d8a', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:46:21', '2022-07-06 03:46:21', '2022-07-06 09:16:21'),
('30ff496e8efd351ac8517abe546375b4f6eb7b0b264451f2b6785932d16caae6994be2e4cc94769d', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:50:37', '2023-11-17 15:50:37', '2028-11-17 19:20:37'),
('310526e15be33dfe17e518f5b6a7fee1c556a66a2b8302e302ebdca57298b91fc5ff8e811b60906e', 1, 1, 'personalToken', '[]', 1, '2023-03-06 04:16:35', '2023-03-06 04:16:35', '2028-03-06 07:46:35'),
('31053e1f61ab039596ccb9879cfdb32d1f95c8cee100e77c92f40722d0bf93a298ce0236f7893d02', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:03', '2022-08-03 04:40:03', '2027-08-03 09:10:03'),
('3110773da40edfd1bae3e0c74fb7cf3441028af1f8e00bbf00d71a2f42fb84e5d69934bd5d1a1493', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:05:18', '2022-10-24 03:05:18', '2022-10-24 07:35:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3127153418b3a3335972d3511a3fb87a293eb32a1f96f51264a4c4b99d266f019a9ac9aae5707b05', 1, 1, 'personalToken', '[]', 1, '2022-10-22 16:06:29', '2022-10-22 16:06:29', '2027-10-22 19:36:29'),
('3133ff8b4595a98153353e747ac94c86502ccd60bf31b3df636b0bc131fd8ef3fe42ae6417447069', 1, 1, 'personalToken', '[]', 1, '2023-04-23 10:11:52', '2023-04-23 10:11:52', '2023-04-23 14:41:52'),
('314b503ebc4cd5814bb0ab0728cb3b498235d1419e7f76123888dbe8d74dcf6b0d8fb7c5b40d4fee', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:09:33', '2022-12-08 05:09:33', '2022-12-08 09:39:33'),
('315bfb18fd83310478ac6e0d74421efc1ac9dcce1fd4de63ac7ae56009e282c4dcda2bdd010c63a4', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:34:18', '2023-08-08 08:34:18', '2023-08-08 13:04:18'),
('319f594be73ca39e6181882731ffa81f6059681fde522977b64628d68b78f6303542a259fd04b30c', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:41:09', '2022-11-20 08:41:09', '2022-11-20 13:11:09'),
('31cf20d3cd91a0136f5049fd0f73e92667776c019eb9cf18b912e689a9e4185398273dfaa814da90', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:09:34', '2022-11-12 01:09:34', '2027-11-12 04:39:34'),
('31cfc02f8b7831a744ed2ac867b0196f0dee64694352b716182d9c7c396823a43ac9615f2bd5944f', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:09:03', '2022-08-28 03:09:03', '2022-08-28 08:39:03'),
('31dbd8ad60f1833de3163f58b2dead195f84151d51cc15a72b678d376c3682befc8dd8c6b2fa676c', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:10:34', '2022-07-12 05:10:34', '2022-07-12 10:40:34'),
('31e381b8b1a7e0025cfb675a96b7a79f568140c0ddaa6c6c31f2debe6bfdc3197436df1688025c88', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:46:53', '2023-06-21 05:46:53', '2023-06-21 10:16:53'),
('32088467f5809ff7e334cb550f2f81d356e4cfd31dbb9f17cfcd6a6927d744454ac4d839bec6315c', 1, 1, 'personalToken', '[]', 0, '2023-01-15 14:16:40', '2023-01-15 14:16:40', '2023-01-15 18:46:40'),
('320f1666beebde2d319473e1793b384a63da4a80c77b74342a8da99f535cd35ebc22c35f7795ca92', 1, 1, 'personalToken', '[]', 0, '2023-08-22 04:46:37', '2023-08-22 04:46:37', '2023-08-22 09:16:37'),
('3215711f58f6fe7b9a579be526d24545f24843c5943e0c63354db8109df9fe395aaa0880201d640f', 1, 1, 'personalToken', '[]', 0, '2022-07-12 02:36:28', '2022-07-12 02:36:28', '2027-07-12 07:06:28'),
('322ffb0d8423d7630d4a49a091a88ec60040b69a70499cf830ae16522fa50602833ef64623c03361', 1, 1, 'personalToken', '[]', 0, '2022-11-30 11:52:18', '2022-11-30 11:52:18', '2022-11-30 16:22:19'),
('324de802392753e95f1b731de7b76cc760e4574ec62a881371872bccb6cf2632510f81682397a362', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:16:00', '2023-09-27 13:16:00', '2023-09-27 17:46:00'),
('3255390e49b6c3e0bfb88b10b92158b6349777af51ad84ced70f83b8fc0960f832c534d981595f23', 2, 1, 'personalToken', '[]', 1, '2022-10-18 11:36:16', '2022-10-18 11:36:16', '2022-10-18 16:06:16'),
('32582af4e8086ea67bb8d0a953ab65646b52d6a130e79aba8ff150bb01d04b9e4c9ef35e7fcfe49f', 1, 1, 'personalToken', '[]', 0, '2023-02-03 17:46:08', '2023-02-03 17:46:08', '2023-02-03 22:16:08'),
('325951e02b8cef2e37104b870cd600fa95847bf6a362a501408f870b4748793837514f856d87e0fd', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:16:38', '2022-07-25 07:16:38', '2027-07-25 11:46:38'),
('325d8f39919fd14657ac6b828d2bad1134d036253cbf6d8de0af76152ac9f6ba897394c4798811a4', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:36:18', '2023-05-16 03:36:18', '2023-05-16 08:06:18'),
('325eedf34d8191ec9f71433ea7fc2bbea60fb0a91a928d41531e2d6a38cd49ae62e109aefae34bd8', 1, 1, 'personalToken', '[]', 0, '2022-11-22 12:27:21', '2022-11-22 12:27:21', '2027-11-22 15:57:21'),
('32886c0cdcea284b0996d06f93cccc7f760acd0b0cc6509ce7363245d714c750f8b0bd05acd879e1', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:17:22', '2022-12-06 14:17:22', '2022-12-06 18:47:22'),
('329264995360ccd0874f988aa11e8561d331bf5e9cd7e0c1d87d0a8d84e55be256e886a62ff8ba1f', 1, 1, 'personalToken', '[]', 0, '2023-09-03 04:45:56', '2023-09-03 04:45:56', '2023-09-03 09:15:57'),
('32cb415914b7de0688740557943e92ab83b9840e07e4e6f2ee0e215b1eb8683659776c57fb18d7c2', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:19:53', '2022-07-25 07:19:53', '2027-07-25 11:49:53'),
('32dbcc6109d1e3c2951ccbaf60e758661a79b4d6dfee6c7aa3aac998adec76e8fc10470a2e908786', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:51:21', '2023-08-08 08:51:21', '2023-08-08 13:21:21'),
('32ddfcbb65e25fddb588bb88b70b7f52fac05b0c7beb159e4f04983b0a04c0585a62968cc0f3c63e', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:54:46', '2023-02-05 17:54:46', '2023-02-05 22:24:46'),
('3302982a9c941116c569306ffbfeb71963a499b864e3e3dc5f0d5c43daeeeb7c7e64cb4d85b53e95', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:13:20', '2022-07-12 05:13:20', '2022-07-12 10:43:20'),
('3304098a320e9e2625c483e35360f7b02719642a3e0222196a57ff9ae5f4822f2a47d4640d9b4c74', 1, 1, 'personalToken', '[]', 1, '2023-09-18 02:40:47', '2023-09-18 02:40:47', '2023-09-18 07:10:47'),
('33055a1d179a2c869f36ac966f17163938785f3fdd650f0ded7387eefb7b6dbdc17699ed9e6e4c83', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:26:51', '2022-11-15 05:26:51', '2022-11-15 09:56:52'),
('331acf5b290d58a426378a2e3ccc660b20d9b90b056c402a940d674376feb37e08e13d54052b55c1', 1, 1, 'personalToken', '[]', 0, '2022-09-27 06:25:00', '2022-09-27 06:25:00', '2022-09-27 10:55:00'),
('3337c7ba2787c3b2c706bc383375bdbb950f34057db66f7395fd8e936d44482b9aee022421bc04e9', 1, 1, 'personalToken', '[]', 0, '2023-08-19 03:46:47', '2023-08-19 03:46:47', '2028-08-19 07:16:47'),
('335a8a2865756999a12d064a0e112e5c8bf450de2feafce12f73b812e109faf4511e943247f6c77e', 1, 1, 'personalToken', '[]', 0, '2022-06-30 04:15:55', '2022-06-30 04:15:55', '2022-06-30 09:45:55'),
('33605d3b58aabaa66759baa28043706159b475c15cc65e0fcfcb33b76382180549b98389dda2563a', 1, 1, 'personalToken', '[]', 1, '2022-08-02 16:26:53', '2022-08-02 16:26:53', '2022-08-02 21:56:53'),
('33680f32c47dc86c16da0f664af352840e7f226c2ab987821d00fe9965970efdcd318c5f4c3e9a4d', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:31:40', '2023-06-30 07:31:40', '2023-06-30 12:01:40'),
('33758b54ab808ed805df66008614cc93ba96b61ea759fee16edf6bdb8fdb0cfd4f7e6f5903783053', 1, 1, 'personalToken', '[]', 1, '2023-04-23 14:04:03', '2023-04-23 14:04:03', '2023-04-23 18:34:03'),
('337fecfe1e1f0cdeb18827456e17edeb36ec0e9f07f007b28dcb002efb966a3b9ae391426eb38b28', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:56:52', '2023-08-12 07:56:52', '2023-08-12 12:26:52'),
('33db927ef17e37523f92f85e9a191ded9559f64e3e977292691ec7a8f2873b61d9ca6a0e7c4369ca', 1, 1, 'personalToken', '[]', 0, '2023-08-12 09:12:23', '2023-08-12 09:12:23', '2028-08-12 12:42:23'),
('33e7e8d747be4400fef06e7f84b1c52802068a9a2072b97bdceb8db432d6c217babe38d5f204b654', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:36:56', '2023-03-04 11:36:56', '2023-03-04 16:06:56'),
('33eb299fc41ee276fac774031af37db45d9de909fb5a8200d4e5ceebdc36da5b480b2951fb8ff155', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:19:37', '2023-04-11 08:19:37', '2023-04-11 12:49:37'),
('33f0a126c716948a1a8468423c64e50b4349d50de79594af3e222ab86d66981a829f674746c2b476', 1, 1, 'personalToken', '[]', 0, '2022-12-03 13:14:51', '2022-12-03 13:14:51', '2022-12-03 17:44:51'),
('34140071bea646f7e002a23e5bf1f8d1654a805898ea9a1c8a2ee662b42d352a0c3bd70afe2c159a', 1, 1, 'personalToken', '[]', 0, '2022-11-27 16:45:12', '2022-11-27 16:45:12', '2027-11-27 20:15:13'),
('341a83259caa91506f948de6527d330b8ecda57b5a6468301599d475e9a5e11939546b517d72fd66', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:45', '2022-08-03 03:51:45', '2027-08-03 08:21:45'),
('342173a646481e4f4f0824999f181f5c642b6d26c1de806e366b07d487a7e3ecbce3574622c299b2', 1, 1, 'personalToken', '[]', 1, '2022-08-27 00:08:29', '2022-08-27 00:08:29', '2022-08-27 05:38:29'),
('3426c0f3c1dd8ac1ceec74386eef5bf16fd29b722b66f5119b103987fceea6950dc48d279fb20872', 1, 1, 'personalToken', '[]', 0, '2022-08-01 11:49:21', '2022-08-01 11:49:21', '2027-08-01 16:19:21'),
('343a753b0d3c12df815fff3ac916b83cd87a0269c141b9f2f52ebc2099ba56eafe946f6912cbddce', 1, 1, 'personalToken', '[]', 0, '2023-01-02 02:18:54', '2023-01-02 02:18:54', '2028-01-02 05:48:54'),
('3443d543fd0288f3083ec60503bda55312055be70dd3ab246758016f83fa0209241d2ee22fae7a4e', 1, 1, 'personalToken', '[]', 1, '2022-11-20 05:01:17', '2022-11-20 05:01:17', '2022-11-20 09:31:17'),
('34709f236358f361168b94e132207a21afbca25fea54851efb864e37a9d5e47c8bedf0216825b211', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:51:20', '2022-07-25 07:51:20', '2027-07-25 12:21:20'),
('347cdf5e4ece8cf5b65a198051caecef1c0db49844c36a42c74291f45996b7cd2ec24b345ba55c4f', 1, 1, 'personalToken', '[]', 0, '2022-12-16 05:23:29', '2022-12-16 05:23:29', '2027-12-16 08:53:29'),
('3495ef9f08e080a4d2e73687764480f303f61a3a9ba301bcacb40298f0b19475145afa333a545750', 1, 1, 'personalToken', '[]', 1, '2022-12-26 10:15:29', '2022-12-26 10:15:29', '2022-12-26 14:45:29'),
('34b8222d49dcaa9571af129e0c345c6e875424a8a076607058fad5b987009299e7a4fa0604a32f29', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:08:35', '2023-01-19 13:08:35', '2028-01-19 16:38:35'),
('34d221e45fa692c8a4b6934e441c881b1e23534d58947c913d0db73ba2e9026b48e0012f74e04f13', 1, 1, 'personalToken', '[]', 1, '2022-06-26 13:30:36', '2022-06-26 13:30:36', '2027-06-26 18:00:36'),
('34d3241b1f73643da1e69465057f8b178275e4739f0381ad9a3ae2e364855b8ad6788b78d5032a00', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:53:04', '2022-12-08 05:53:04', '2027-12-08 09:23:04'),
('34e5ebe6eb844a646af7ad3cd3cc4db5102ece553992606538fe9d3dc4e8a974c6ccc53103515733', 1, 1, 'personalToken', '[]', 0, '2023-01-02 14:39:55', '2023-01-02 14:39:55', '2023-01-02 19:09:55'),
('34f71aa78159f1e4e7c62ec8c52f8d5ca4652b433221682d49aa2aa03e4f8327d93c6fbcd5f5e566', 1, 1, 'personalToken', '[]', 1, '2023-02-12 05:56:49', '2023-02-12 05:56:49', '2023-02-12 10:26:49'),
('34fdef9c1a9436c8b202b61aca97fc14148ff6f276ac8aef83564fa7acb2c858bd74f6695af01b09', 1, 1, 'personalToken', '[]', 0, '2023-04-29 10:11:16', '2023-04-29 10:11:16', '2023-04-29 14:41:16'),
('3501daddc38bf206035144f13c571c26c62d5134b462e8e5c9cd32895f67dce4cba50fd75986ad14', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:05:31', '2023-04-12 16:05:31', '2023-04-12 20:35:31'),
('35092e8f74dbb008c91fd534543901dbe372262649c13101b0089bac50700a10029b6ca4ef5b89f3', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:44:03', '2022-12-26 09:44:03', '2027-12-26 13:14:03'),
('3528969f8125de980ef03309cff86b2715a4792abe54316e4c9eff946df2e7046526bb0587111b63', 1, 1, 'personalToken', '[]', 1, '2022-07-03 05:47:19', '2022-07-03 05:47:19', '2027-07-03 10:17:19'),
('353e1536cab211aa1cd4b39498dd55231e60829bb0a09052ff9373a093e5623e50e4a56f264b6ff9', 1, 1, 'personalToken', '[]', 0, '2022-12-06 10:12:08', '2022-12-06 10:12:08', '2022-12-06 14:42:08'),
('3542cc09c71a6a5373d0f097f85de58d8cbed383d693481329985c04f789706eb97bbc73e8375772', 1, 1, 'personalToken', '[]', 0, '2023-02-10 04:23:28', '2023-02-10 04:23:28', '2023-02-10 08:53:28'),
('3579943265503f5799d9a8b54a9ad7a6a35dc34785b9b9f1fe1043d72a2e38e1509ce554892fe8e7', 1, 1, 'personalToken', '[]', 1, '2023-05-16 16:21:21', '2023-05-16 16:21:21', '2023-05-16 20:51:21'),
('35903a5b809d5571c28a6ec9f5e2bc7fea816f54b832e11af71afb0ef1dbd3d6d734244243ff741b', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:20:43', '2023-06-30 07:20:43', '2023-06-30 11:50:43'),
('35946c49e259c58eaf30f2708c2b35810be28157d50ddcad393522d313c27a698124dfb2ae0ed2c6', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:57:21', '2022-10-24 02:57:21', '2022-10-24 07:27:22'),
('35bdf0cfde3d89dbfc013433d1312c9d86d95c1faae3f1578fbc099fdea1fcd6b401797132d73d0a', 1, 1, 'personalToken', '[]', 0, '2022-07-22 12:57:37', '2022-07-22 12:57:37', '2027-07-22 17:27:37'),
('35e856563c2ffbae9a7849b82af74ba59d80b1c8cd00f8ad861a2a2a4228a690b37ddd9963cb0c62', 1, 1, 'personalToken', '[]', 1, '2023-01-07 15:33:36', '2023-01-07 15:33:36', '2023-01-07 20:03:37'),
('3635f1a7e8a0b0ebaf3a2782979f519314824c1e80e2ec65ef4effceb28b5d4a19db7b9fe6eb4e10', 1, 1, 'personalToken', '[]', 0, '2023-04-11 10:34:58', '2023-04-11 10:34:58', '2028-04-11 14:04:58'),
('36554b9ba26627ba0835428037ce4320dbc05623b126a6ebb864de33844e55baadd3e3fc406f006f', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:52:36', '2023-08-08 07:52:36', '2023-08-08 12:22:36'),
('36611e81cceb8da1c4ebf558189bcf14aa363122e491a9d3372803d087dd48978f0226e09b4d5a0f', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:40:24', '2023-05-16 11:40:24', '2023-05-16 16:10:24'),
('3670cb7713250964e701083a5a56b75cf3ff5efa2b369eb7d67b5584033a30ed4c526ddebc006cab', 1, 1, 'personalToken', '[]', 0, '2023-01-15 14:09:50', '2023-01-15 14:09:50', '2023-01-15 18:39:50'),
('367368c2d88856cd9df02fe1cfd4116feaaa3c5c9218ed761531b11657ee499d7d0b5bb60b58e59c', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:33:26', '2023-08-08 02:33:26', '2023-08-08 07:03:26'),
('3673e0ac2020a1c8ab7dc08442e138f079701b1c35c2d8e6b63c82129c93286c39075f877a31fcf6', 1, 1, 'personalToken', '[]', 1, '2022-10-13 04:45:15', '2022-10-13 04:45:15', '2027-10-13 08:15:15'),
('36a7229d5361e99c2df2c4da39ef3eccff22cf2aa9e30c588cdbeefdbf5db833e0b3436f4b816983', 1, 1, 'personalToken', '[]', 0, '2023-05-30 02:42:59', '2023-05-30 02:42:59', '2028-05-30 06:12:59'),
('36d7bd9ad576109143f87abae7e1c8239ca01d3098291f29fa0993ca112c162dc5a15370adb99ec0', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:26:25', '2022-12-07 09:26:25', '2022-12-07 13:56:25'),
('36dec6a5a99115130bd5f2b0e5fb78a779829a10bbad5e036a885df1d9d87e870a0775b6a0956bbd', 1, 1, 'personalToken', '[]', 0, '2022-12-06 12:00:02', '2022-12-06 12:00:02', '2022-12-06 16:30:02'),
('37197f16a584825938b756660035d60b95948203b2003a871e62219d6ac3997f53b43d6aaa327e9b', 1, 1, 'personalToken', '[]', 1, '2022-11-22 04:55:13', '2022-11-22 04:55:13', '2022-11-22 09:25:13'),
('371d993f69e019a2b73ebdf6161fc3c1b64ccd4d09b79ca863c23b051d7aebbb4cd3db450285b7d5', 1, 1, 'personalToken', '[]', 0, '2023-06-18 09:41:41', '2023-06-18 09:41:41', '2023-06-18 14:11:41'),
('371e360218156725d407ef5b62f8f0f7b94869089b9f34098bfcca2ec4b5f7f7efe7e64131b54670', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:28:32', '2022-10-14 13:28:32', '2022-10-14 17:58:32'),
('372c535a884ab00cf5a66605ecc503806fb7ea6559a9c844c2ef73aa1455a539b0a061f9aa64924d', 1, 1, 'personalToken', '[]', 0, '2023-05-16 19:08:48', '2023-05-16 19:08:48', '2023-05-16 23:38:48'),
('37345669b549ee1792fc2afb8b1c159903910ada0cefe6c87e309a43c322a6449f051bc4cacfd70e', 1, 1, 'personalToken', '[]', 0, '2023-01-27 01:33:46', '2023-01-27 01:33:46', '2028-01-27 05:03:46'),
('376749eadfaea6d9a857dc5545b2610acead76bd000334e2e52514203a2d20b745b993a1e94bb809', 1, 1, 'personalToken', '[]', 0, '2022-12-25 08:53:29', '2022-12-25 08:53:29', '2022-12-25 13:23:29'),
('377bee739d7d4ff10a416b20f9e9eedde2cca0a1f7f4f73e7639c68da28a035c490598aedb6592ad', 1, 1, 'personalToken', '[]', 0, '2022-09-26 05:14:11', '2022-09-26 05:14:11', '2027-09-26 08:44:11'),
('37862f8edc516e086aeafd2ad90fe3b150d4cad7fa597562e43b68e27e84345443e5e3c20da859b8', 1, 1, 'personalToken', '[]', 1, '2022-10-28 17:24:33', '2022-10-28 17:24:33', '2022-10-28 21:54:33'),
('379ad23e921476aee67a50b3e0d524bee3fb85f54eb6d358b27d521b70e863aba817d85e6bec4a70', 1, 1, 'personalToken', '[]', 1, '2022-08-03 05:30:56', '2022-08-03 05:30:56', '2022-08-03 11:00:56'),
('37b491f5bb259f6c36b1ed94cfdc13ffc3ba8303704c24ee112f608e65bc31a122bee54cfb7921b1', 1, 1, 'personalToken', '[]', 1, '2022-12-25 07:29:32', '2022-12-25 07:29:32', '2027-12-25 10:59:32'),
('37bbe7e266206f154340c421dcc7629443d862c509135b7511a07b7e791cbcf3f7d60a67a9d04c35', 1, 1, 'personalToken', '[]', 0, '2023-09-25 03:47:57', '2023-09-25 03:47:57', '2028-09-25 07:17:57'),
('37c3f88ea2b2d577572e7ac2c3baa5746227a3bc49653884ca8f147aa5bbb0559e268627206f9911', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:12:16', '2022-12-15 06:12:16', '2027-12-15 09:42:16'),
('37dae65ea794e5f94ae987b84d9a9210f8aa9810663c760910ac3a8215f0f6fc21296db6eb1debe9', 1, 1, 'personalToken', '[]', 0, '2022-12-26 06:30:27', '2022-12-26 06:30:27', '2022-12-26 11:00:27'),
('37f114bd61f91b6e42c06c90024bba1b950dfbaef7cb6a9e383b46a449e796c19053136e61c53c05', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:34:29', '2022-07-06 07:34:29', '2022-07-06 13:04:29'),
('37f56662e80d5cc5653a9a402f71f5a4edcd026f99eaec0c611d41ae52ec764418fafd8136b546e6', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:30:17', '2023-09-27 13:30:17', '2023-09-27 18:00:17'),
('3817d2f782ac297814f42bfa037300bd71205da6ac280e8a726627511be19fed94b8469ff454f245', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:35:49', '2022-12-26 06:35:49', '2022-12-26 11:05:49'),
('382ed8bf1d2ee9d9a3b31c75a15cdf8c3f318323f0ceb71ed72ef6665f25bd89317c5112ebdbf5c1', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:29:34', '2022-11-20 08:29:34', '2022-11-20 12:59:34'),
('3836922132a38d77b5f0a376cf37b13a8d269dd53d96f6a37e1f1dd5f4a1b9f5e936b032015ee5b1', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:12:00', '2023-12-11 05:12:00', '2023-12-11 09:42:00'),
('386065dcbfd5cbb4dacbc5fba78960f56cfd7b99b630a14c011fada868db66405288da0ae37ca8f3', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:39:13', '2023-08-08 08:39:13', '2023-08-08 13:09:13'),
('3861bab9016decb06bb247d80a2bced9ddc163a3d1ecc329a90099cc9414d98777955868970ccd1f', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:25:20', '2022-07-25 07:25:20', '2027-07-25 11:55:20'),
('386b50f0df9f94a7437556b1d6176119f1152ecf45b2fc6cfff3bce9e551a5aba613672936892e57', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:31:07', '2023-05-16 03:31:07', '2023-05-16 08:01:07'),
('387444088ed55b5390918cceeac4e3b29d031bf3a54674ee6d381ed52ac1d012b4d61a0cecfa4bc4', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:15:08', '2022-11-15 05:15:08', '2022-11-15 09:45:08'),
('387e7634702eef3572ad73a36282d435b4e9295c765cf2018bb5a40dd10b9374bbbb66adfefa9037', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:09:14', '2022-08-28 03:09:14', '2027-08-28 07:39:14'),
('387ea3806b408db01972da8d8c3e01dbd4374e1a35e3be4bbf0b8557e7521a3523f71967d239f165', 1, 1, 'personalToken', '[]', 0, '2022-12-01 15:11:14', '2022-12-01 15:11:14', '2027-12-01 18:41:14'),
('388cb54d04b715d8e2648fe0e4a79c1752965c239c8a647b78fc626124fd5ec0b1b7869cb1765166', 2, 1, 'personalToken', '[]', 1, '2022-10-17 16:47:06', '2022-10-17 16:47:06', '2022-10-17 21:17:06'),
('38bca0b88a05c9f5c09c66062d68eeb4116c94e4b8393d030f4302aa4d264e358b0e31161e27ac17', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:09:42', '2023-09-27 13:09:42', '2023-09-27 17:39:42'),
('38be1a6dbbf23575d21445854f06a2d8facf47cb2d62efc7c61d48f08d0f231d19cdd693c59990aa', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:41:24', '2022-10-22 15:41:24', '2022-10-22 20:11:24'),
('38d0b2693f9f889842455710f5cdd1f69f8e2ed7bc87340e5e441645f1d3f4abf84e5a064f3056dd', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:27:09', '2023-08-09 01:27:09', '2023-08-09 05:57:09'),
('38df281c640e2f07c19b208775c3eb80e7eadf9fa1ef7e06c5bdef92185b4a3220245383a805076c', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:48:48', '2023-11-17 14:48:48', '2028-11-17 18:18:48'),
('38f7443c0937f4479f82283c45f5898a9fb967846bb3669ed966de69021f4316dd588dc1ad47d058', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:35:11', '2022-12-07 09:35:11', '2022-12-07 14:05:11'),
('390a86a136c29698c1459269ce8e32fc84634307d46de2163b6a6883fdb70bc4a76ca865910c5e4d', 1, 1, 'personalToken', '[]', 0, '2023-06-16 04:46:01', '2023-06-16 04:46:01', '2023-06-16 09:16:02'),
('3957e827c08fd4cc1aed24447d0fb71286aa16867a264cb7d1a33f1f4be5d1031a0ce418e8e83e40', 1, 1, 'personalToken', '[]', 1, '2022-12-29 13:42:25', '2022-12-29 13:42:25', '2022-12-29 18:12:25'),
('396838f20abc44c6943669462694124271def207ee3560f848d8060c72cdf0c29fe7525a8887775c', 1, 1, 'personalToken', '[]', 1, '2023-03-17 01:52:06', '2023-03-17 01:52:06', '2023-03-17 06:22:06'),
('39af52e0e3f00064139234481c43e62e285a6b62d9821fc546cdecc22c4673178ec50db4be9b1cca', 1, 1, 'personalToken', '[]', 0, '2023-06-05 11:59:04', '2023-06-05 11:59:04', '2023-06-05 16:29:04'),
('39b9d86985de17d5a6c0baaa62b05623b12425fe5c5d059d77c49d8a24d7b32b30be817fa983b00b', 1, 1, 'personalToken', '[]', 0, '2023-02-10 10:26:50', '2023-02-10 10:26:50', '2028-02-10 13:56:50'),
('39bbe6c738a41bba84968a8e96ec0e5fedc4838a1362e1daaba7ea0c68cd40176bdab370331a49aa', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:30:13', '2023-04-11 15:30:13', '2023-04-11 20:00:13'),
('39be86d61b665fc9841948955cc84876f329192ba91d641f0f24c65703ee8466a92fdc5fa706fbc8', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:27:45', '2023-09-27 13:27:45', '2023-09-27 17:57:45'),
('39cc801f8444ba5deb8680004e4ff9a8b74d6ebc6c3a8e16ea4d755d47ea91a761b4f85bcb6a096b', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:16', '2023-11-17 15:29:16', '2023-11-17 19:59:16'),
('39ec43bf84a98fb01c9548e2be3206d357921b381438834271f6b8b8e650dc90a1138a20ffa77eb9', 1, 1, 'personalToken', '[]', 0, '2023-06-15 06:57:28', '2023-06-15 06:57:28', '2023-06-15 11:27:28'),
('3a171d9d767dfd6f80a8f575a1768029b7a999f71199ac1594ef1d4121b8b626d8bc2797cb0de1bf', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:28:01', '2022-07-06 07:28:01', '2022-07-06 12:58:01'),
('3a1e55a2fd4237323f0a3e528f165e234218839bddd7aa19e45f26fe3ab751cbd5be28c1bb790511', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:45:43', '2023-08-13 03:45:43', '2023-08-13 08:15:43'),
('3a379da49137e658360aa040e3c664b87b9819b0ff6213b33bddad32a8e43d3d4d5bf011c0bdad06', 1, 1, 'personalToken', '[]', 0, '2022-12-12 14:19:50', '2022-12-12 14:19:50', '2022-12-12 18:49:50'),
('3a3c288cfde2e4d2ad88fc0c56adcbae7efe0b83f0b8328c01916386d5983eb88c773e3d20e4e970', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:40:26', '2023-06-21 03:40:26', '2028-06-21 07:10:26'),
('3a3c2dc9d52ff16031aeacd0bad9c3f7c544f0cee04636857e31d1cad33720d60deb9c2a1e4ad0b5', 1, 1, 'personalToken', '[]', 0, '2023-06-19 00:24:17', '2023-06-19 00:24:17', '2028-06-19 03:54:17'),
('3a3c847e28988397e4e94aa7cc682ed723cc7f13f7775dda071b138e90064d6281a38adf3397af22', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:43:08', '2022-12-26 09:43:08', '2022-12-26 14:13:08'),
('3aab8f8ed0943707fb5179abfe5ea9c41af8f93977ca21a4e485f12e0b750e4915e2bf4275fb01ca', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:48:12', '2022-11-12 01:48:12', '2027-11-12 05:18:12'),
('3ac804c0dd0a8077c27bfec1affe235c7c8de38fa80bd8b85bf24a23528a1945c582bce7a84fc713', 1, 1, 'personalToken', '[]', 0, '2022-12-11 12:12:55', '2022-12-11 12:12:55', '2022-12-11 16:42:55'),
('3af5d400167ff98623725fbb29d95e1220d98a2d2fa7774df8cb8e34aa3860bb056a5421187c3ef5', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:48:09', '2023-08-08 07:48:09', '2023-08-08 12:18:09'),
('3b3c1f5d84e579df17ba70f081398348b893825edd86146ab5936fadd429d45aadf2df0fa930c530', 1, 1, 'personalToken', '[]', 0, '2023-09-25 01:39:59', '2023-09-25 01:39:59', '2023-09-25 06:09:59'),
('3b3fac476e1982951955566646e3f1325550a6d2c640f4b67d2cd151c828313fd9656f7ca5067ca9', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:18:36', '2023-09-27 13:18:36', '2023-09-27 17:48:36'),
('3b6dfb5ea843a580c248015555149e60f98911d32e8b8f076761970e0bc18eb806991f34c1407ffe', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:34:50', '2022-11-14 04:34:50', '2022-11-14 09:04:50'),
('3bcef2c4b8f32f033b3b746b3887b68b4f60ddc3a5eb802efce17971e0ab5d52b54185374ed50264', 1, 1, 'personalToken', '[]', 0, '2023-12-16 05:33:21', '2023-12-16 05:33:21', '2028-12-16 09:03:21'),
('3bec172207e22350385760374546aa2fc9fd9ca2f1887e0e4efc3e56e51a72850f4306c705149d8b', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:21:40', '2022-07-06 04:21:40', '2022-07-06 09:51:40'),
('3bff9a834ffe1a49dd8524d6ebbdefb165289be23db8400d2d3a991915908e54cd952547e0aaf5b7', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:12:21', '2022-08-28 03:12:21', '2027-08-28 07:42:21'),
('3c0bbb1bff398d12be548860ef1bc5f744cfa1dda49c098908e55bba575db318dd9742bc5213b201', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:18:47', '2022-08-01 16:18:47', '2022-08-01 21:48:47'),
('3c3854b75231c975662e1f5d098239508bab1cd2dbafcc8981f88d02743d413f4362fc9e4c975374', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:06:02', '2022-12-06 14:06:02', '2022-12-06 18:36:02'),
('3c43133a87232c16987e27a77e56ab73b6d9ec15bf25382d48a85ee13a5cc881f4c63fa89e9fe3f0', 1, 1, 'personalToken', '[]', 1, '2022-12-16 09:55:40', '2022-12-16 09:55:40', '2022-12-16 14:25:40'),
('3c53f8183b4915f0651745fe4ecf2647fb9d17c9bc4d552865e08e5a937ef5f1c938750b96fb8184', 1, 1, 'personalToken', '[]', 0, '2023-03-13 08:04:06', '2023-03-13 08:04:06', '2023-03-13 12:34:06'),
('3c6112c303bf1207c76ae20ac6851bcba4431e4ad3d42ce69aefb2c61f730a7dad36a21d1531c965', 1, 1, 'personalToken', '[]', 0, '2023-05-21 08:32:34', '2023-05-21 08:32:34', '2023-05-21 13:02:34'),
('3c694092ae45fd44efccb16eeb9fe063e72cb42edefb9b3b08cf4a2212a9a62e14a434dfb036a796', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:06:22', '2022-11-12 01:06:22', '2027-11-12 04:36:22'),
('3c6c8e0630f3fe55878c5904ca9049d4610873dccd96de9b3ac783c96afebaf28657b40aad563be5', 1, 1, 'personalToken', '[]', 0, '2022-12-06 13:18:22', '2022-12-06 13:18:22', '2022-12-06 17:48:22'),
('3cb76fe98201cdbec270ff863099ea6969855c7cfa0b8da9cbe2fac43e3706a6df12e0c5f51e5148', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:20:47', '2023-08-14 07:20:47', '2023-08-14 11:50:47'),
('3cc0c11248dfdffd170bdbec18d02a3e9a20a460f5f0ff47d8b0208915d9e81c8873fdaff329d36f', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:50:22', '2023-07-10 11:50:22', '2023-07-10 16:20:22'),
('3cd74d87317f60a57532e46eff328b2c254f445753fcb8024a3812428ef5308711464d2ecc7073e5', 1, 1, 'personalToken', '[]', 0, '2023-05-23 13:47:42', '2023-05-23 13:47:42', '2028-05-23 17:17:42'),
('3ce09724ab68f4f0b12a7964f900b513fdf9c58c31f149fac0a24618b5bc1ba6f0e765090de6c381', 1, 1, 'personalToken', '[]', 0, '2023-05-07 01:34:13', '2023-05-07 01:34:13', '2023-05-07 06:04:13'),
('3cf817a27ace456e926ef6017f80ec8a15d960a3213c3c3cf02b3a5d5ac1aa9040ff375b8c607f82', 1, 1, 'personalToken', '[]', 1, '2023-02-25 13:12:23', '2023-02-25 13:12:23', '2028-02-25 16:42:23'),
('3d018615fd325135a4d11151839f5333033dc0c231fb549992f79d44b2118bfe22b621de5463e5d2', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:52:20', '2022-08-27 01:52:20', '2022-08-27 07:22:20'),
('3d0351b03122c6ebcd02dbc19955545c144827dad266edd8740d3809ed945315f18547338ce7555e', 1, 1, 'personalToken', '[]', 0, '2023-02-03 10:02:26', '2023-02-03 10:02:26', '2023-02-03 14:32:26'),
('3d238bd960692fbeb41d191be32315db3f2e2e0f136f9bad22f676701183117c026f59cbecec6a33', 1, 1, 'personalToken', '[]', 0, '2023-01-19 17:35:30', '2023-01-19 17:35:30', '2028-01-19 21:05:30'),
('3d52c27c7576f025e255f86c37b938c56a87e1f49777f00fa998f81b754c2f6d2b6a18ff906ef933', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:39:04', '2022-09-26 07:39:04', '2022-09-26 12:09:04'),
('3d5805e9144c3383fe325e880302b5aa8061cfd376ab365888a8a24180a33f0ac4c692716bde4434', 1, 1, 'personalToken', '[]', 0, '2023-12-09 04:36:45', '2023-12-09 04:36:45', '2028-12-09 08:06:45'),
('3d5b320d0bb3eba420a416ed0ba3a6144ba9cbd58b6ab1df2f7bbcd794001ce35d5f451cd4960140', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:11:03', '2022-12-15 06:11:03', '2027-12-15 09:41:03'),
('3d724b81f86382af00321f20e8f5225ad7ab3b802884120f5a615fe8b8e88f02203affa45dff29a4', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:28:35', '2023-08-09 04:28:35', '2023-08-09 08:58:35'),
('3db997d10d0c38b3e08ef1f7c6684f6b53620a9a3f7ded27ec2b211a823ac08ea9197989efad2670', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:34:45', '2023-01-20 11:34:45', '2028-01-20 15:04:45'),
('3de42e910db06e04374aea175a6869794e14e590f338d9d84bc40e2b0378a86af18c42e8b8fd2d86', 1, 1, 'personalToken', '[]', 0, '2023-07-15 16:42:40', '2023-07-15 16:42:40', '2023-07-15 21:12:40'),
('3e01fd7ad17720c6924dfab53654d4d539219520e0fcb1214a98c4808ecdb23df623d9953b6b1608', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:31:10', '2022-07-13 03:31:10', '2022-07-13 09:01:10'),
('3e3752dd67dc2e1090d98498d8fa6ca36332baded5c8a2cb150d3036ce4c6358587ecd8972e9c968', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:16:20', '2023-04-11 15:16:20', '2023-04-11 19:46:20'),
('3e58506d2f98cc948f02c1a802ca9591f62c723fcb5b7b9b9757b8576bd6f88e3630fde05ccc9b88', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:35:12', '2023-08-13 03:35:12', '2023-08-13 08:05:12'),
('3e81a062dd896c0a22231405be7404ee3f2f700385c551dd04f3f707ddaf3fdfd58d4bee4945d4a9', 1, 1, 'personalToken', '[]', 1, '2023-06-16 04:51:26', '2023-06-16 04:51:26', '2023-06-16 09:21:26'),
('3e98d37077462ea327e1b8990443d71e45c2d8452741725e35158ff1c30acdee3744a92613677041', 1, 1, 'personalToken', '[]', 0, '2023-03-07 08:13:10', '2023-03-07 08:13:10', '2023-03-07 12:43:10'),
('3e9a47bb5b59714ce4c731e412cb8cca70255c7e656b27702421668b58ddb5651c923196fcb87ff9', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:28:08', '2023-05-16 03:28:08', '2023-05-16 07:58:09'),
('3ec1791421d93a5b883dd0e37a38136a654e3bd0380edafc4c5c9fbcff2ddb23b74c203fedd219f4', 1, 1, 'personalToken', '[]', 0, '2023-08-07 05:47:51', '2023-08-07 05:47:51', '2023-08-07 10:17:51'),
('3ed9fadb98648a4338ec6a7464d979250d4a4734e81d6fc109a321b4c5892df94dacf2c4c3b89bb9', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:47:01', '2022-12-26 09:47:01', '2027-12-26 13:17:01'),
('3ee92fb63164267443b524abf5f0cef409e4ea3aa1aca558017f3796ed97941d6e7b5f9605f7bce4', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:31:30', '2023-08-08 02:31:30', '2023-08-08 07:01:30'),
('3ef72d716094121611b7b2ad164c7e7fc283ca0eb7e0c581c6ce149bc20cc3b7d8932d2a2680ef99', 1, 1, 'personalToken', '[]', 1, '2022-10-10 15:07:33', '2022-10-10 15:07:33', '2022-10-10 19:37:33'),
('3f1e3616e3c8c20701febdf01cac1ae2a04086b1ab19afbf8ce2b4f9ea2cbf0be745bc2c8097d099', 1, 1, 'personalToken', '[]', 0, '2022-12-15 07:10:58', '2022-12-15 07:10:58', '2027-12-15 10:40:58'),
('3f32dbd9e615adc6389dc7c8ff8db0e1d69f9ee655004f1757c7176e1623f5f69b18553ee3851858', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:39:00', '2023-07-10 11:39:00', '2023-07-10 16:09:00'),
('3f88f8df11841c4f0dd788e60e6f9c7425d01b7107db8db9f080fe86b0eae8a902b2a786e1ffca51', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:29:53', '2023-08-08 02:29:53', '2023-08-08 06:59:53'),
('3f89126108f0435eba91a34ab7e95ffb522580ca5dd4a727457c6100e89341964d94f4f55e9c3876', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:37:44', '2022-12-06 11:37:44', '2022-12-06 16:07:44'),
('3f9d108d0d432bd329279150bbc0b6fb7f9a2635b86bb3bdb5bb13dc6250d72b32764f4bfb82bbbb', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:44:21', '2022-12-06 07:44:21', '2022-12-06 12:14:21'),
('3fb7a3b1725618e810d52c9315c16fb1891a78486dd9aed7b7a9499425ebd6b8e4a6df97587fe052', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:04', '2023-11-17 15:29:04', '2023-11-17 19:59:04'),
('3fc2f4c9a81d605a33ae1ee996d67eca23da9e4bde163e3c538131ff0ce081d784481d18a8a910c6', 1, 1, 'personalToken', '[]', 1, '2022-10-26 17:53:49', '2022-10-26 17:53:49', '2022-10-26 22:23:50'),
('3ff917dd0048d06dfb43800bdf9a9da587072a0bfd182409d70992b63a60ae8dc8cd5b431c8d4cbf', 1, 1, 'personalToken', '[]', 0, '2023-08-10 03:28:51', '2023-08-10 03:28:51', '2023-08-10 07:58:51'),
('40095eda92a71cf76802c71f551ab4fecfc123eddf97100d2e2c209fe115ae86d312cfe368723d49', 1, 1, 'personalToken', '[]', 0, '2023-04-22 15:04:29', '2023-04-22 15:04:29', '2028-04-22 18:34:29'),
('400a89fc561029b30b376ece5b9f0b88adafb563884733a75fe248f337b9b9bedc1bcd11378a54aa', 1, 1, 'personalToken', '[]', 0, '2022-08-28 15:10:41', '2022-08-28 15:10:41', '2022-08-28 20:40:41'),
('4016a27b2bafba2a94989462cfb1daf9dcc7ff636ba7f68dcbaa8df4375850826c476560addd8027', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:16:40', '2022-08-01 16:16:40', '2027-08-01 20:46:40'),
('4019f2b38b17a595b0c909639026b2081a74a599bbfa627991e7bd11fef257626657db6d0d334976', 1, 1, 'personalToken', '[]', 0, '2022-11-22 02:45:55', '2022-11-22 02:45:55', '2027-11-22 06:15:55'),
('402711aa8b0600a88ce70cbf4ae6e59cf1f33cc6f4a5fbd618c98ef35e651cc3a146e99b7f0568b9', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:37:01', '2023-05-16 03:37:01', '2023-05-16 08:07:01'),
('406fb2afcf24bc7f0f1429c5d1e0d3c3b0963c5927e7af747e7a2cff986fd98e603f3690e9efda9e', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:45:43', '2023-01-06 12:45:43', '2023-01-06 17:15:43'),
('40b7d42745c2b68f71a9a319cbfefe63508f4ee9e682a21bf163071c2b505c37d4713b0d7001d944', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:40:21', '2023-06-21 04:40:21', '2023-06-21 09:10:21'),
('40c0cf333df22a3187239de4ff72f3c2fc4fd7a73263ef5d100a22660eb75cf760fc68ec67922328', 1, 1, 'personalToken', '[]', 1, '2022-11-20 07:31:54', '2022-11-20 07:31:54', '2022-11-20 12:01:54'),
('40f97221525ddb7a433f10c163408eea140f3db41c5c686f0fdcda7d21154dfcea20b9185e232cab', 1, 1, 'personalToken', '[]', 0, '2023-06-15 07:05:16', '2023-06-15 07:05:16', '2023-06-15 11:35:16'),
('4121baa0876ffbcb662574110b543a4276ecc48cba2f0095b6190a6d95319d7fc9d80ab6b5f53566', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:12:50', '2022-07-12 09:12:50', '2022-07-12 14:42:50'),
('41368075d08f6a6801ecd3b79478b1a277e587bbe98c1f99e2a751920d2c2a607eab5514af05488d', 1, 1, 'personalToken', '[]', 0, '2022-07-06 02:58:16', '2022-07-06 02:58:16', '2027-07-06 07:28:16'),
('413bcdd6a9779a47a3c203b8906d7521311aa70ca7f7f85b51d4ac0706bec3395afe181ae5b6d959', 1, 1, 'personalToken', '[]', 0, '2023-02-09 04:32:24', '2023-02-09 04:32:24', '2023-02-09 09:02:24'),
('41755af521b29160542eac48c6159b2c8f5c6ba24133837261431b8648f4719a70aa9f5e80361675', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:55:53', '2022-12-26 02:55:53', '2022-12-26 07:25:53'),
('418748ee41a6c77f351a570ea7a1c08d391d7851a12ca2441b8788d60920f955dffb675d78754a0c', 10, 1, 'personalToken', '[]', 1, '2022-10-28 17:25:41', '2022-10-28 17:25:41', '2022-10-28 21:55:41'),
('419804c6dc67cdd152386a781780ad85fefffc9287ce22e6659db2422eb597e761b6c44aa3286ae8', 1, 1, 'personalToken', '[]', 0, '2023-10-31 02:47:09', '2023-10-31 02:47:09', '2023-10-31 07:17:09'),
('419eba9dcee3c71ad2e5f55e601aa814ba7001893942ab8346f9aa862ec1f2f605945e51fe30a0c0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:30:27', '2022-12-26 06:30:27', '2022-12-26 11:00:27'),
('41cfe2ef18e7934e2b5a3176a9eff4f4f38dea14c16dad604e6725fe6067ce6efbeddab0f9bf5737', 1, 1, 'personalToken', '[]', 1, '2023-06-21 06:43:26', '2023-06-21 06:43:26', '2023-06-21 11:13:26'),
('41f45b98804fd1f1bed70acdfcfef24f049e7d627e1ca56ac8ddcaf5c5b051b62058584b72027d96', 1, 1, 'personalToken', '[]', 1, '2022-12-05 16:53:50', '2022-12-05 16:53:50', '2022-12-05 21:23:50'),
('42086143566738dd75ba5e59a4d8607e408162f5cd82216dd78d6de6bd686a8ebd86fb84084bff13', 1, 1, 'personalToken', '[]', 1, '2022-07-09 09:55:25', '2022-07-09 09:55:25', '2022-07-09 15:25:25'),
('420e663d771f1a8693f7a5da4197edc3aeb094a816b3b1f2bd8c92a7e85d51ce4e1567ec1aa78fe5', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:15:46', '2022-07-06 07:15:46', '2022-07-06 12:45:46'),
('423a134a00335b8ab49d361cc1777b38a207aab3d531b73ec765002bc84508ebadd2e4f119969828', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:50:53', '2022-12-26 02:50:53', '2022-12-26 07:20:53'),
('4240d2a2defef60db76b1c82930072d9d3f576a3493739b02bf58aca7f231b8617c38b072fc25f74', 1, 1, 'personalToken', '[]', 0, '2023-08-12 02:01:29', '2023-08-12 02:01:29', '2023-08-12 06:31:29'),
('425a1b20ad829677f5b5d7d8d5da368f701e9b533f20166fe9aa3ca0e66ab7afe35840979a6ae2f5', 1, 1, 'personalToken', '[]', 0, '2022-12-14 11:07:21', '2022-12-14 11:07:21', '2022-12-14 15:37:21'),
('429ff89b7390b120f9aa89e3dcfa467e970fdc3c0f197bc8faba5c963c8f1428d29ebf347212121c', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:53:21', '2023-04-12 15:53:21', '2023-04-12 20:23:21'),
('42dcc534fc91a0054d36f5289d3ffe6e65972062d64ec537dbef6af7154a895ee9357e06340fcd7d', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:35:47', '2022-07-06 03:35:47', '2022-07-06 09:05:48'),
('42de67ff9b9a32325bf85899818fd6655adda540a88815f121a7e5d207695df252926945a212c3ee', 1, 1, 'personalToken', '[]', 0, '2023-06-11 14:46:19', '2023-06-11 14:46:19', '2023-06-11 19:16:19'),
('43117f71f125f914b95af8fcabb4b158322e6754ae6e3160b49e03b7ba16833ebc2201bf5038b8b3', 1, 1, 'personalToken', '[]', 0, '2023-09-07 14:34:18', '2023-09-07 14:34:18', '2028-09-07 18:04:18'),
('432f0151c16be937867e8af35fb1b1eaf8276624cab40a5c0c35c02ad447392642314bc30ff8161b', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:09:42', '2023-05-16 11:09:42', '2023-05-16 15:39:42'),
('434b0dc32e134a360898e9bb9af7fd5e8c83752784eaf929a89396af9715d39ee36dbe2caafed655', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:57:02', '2023-04-08 15:57:02', '2023-04-08 20:27:02'),
('434e0367c68528a78892cdffdfac70da43adc8827964e9f18ed61af48dc1626cb568dbcdf84302ea', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:29:51', '2023-09-27 13:29:51', '2023-09-27 17:59:51'),
('434e8e003d8a5f7cb54731e667ee3419e503082f921d5173fdaf88b1f33b7b5c8032973c0af73b38', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:18:15', '2023-08-09 02:18:15', '2023-08-09 06:48:15'),
('434fc16a6b908af54e0f58de5c74246c32b19263db4e80177228aa4737bde0d4be1b720f5cc94d2f', 1, 1, 'personalToken', '[]', 0, '2023-05-17 03:26:41', '2023-05-17 03:26:41', '2028-05-17 06:56:41'),
('435cc4fb5088a60021f27cee839805bb9591fcad17068d514ca787a783221c78c10511c778c48c4d', 1, 1, 'personalToken', '[]', 0, '2022-11-05 16:40:55', '2022-11-05 16:40:55', '2022-11-05 21:10:55'),
('4371f34c267837ffdf20754f2791e5a83e4a4b8e1245c7222d3471f9d6fb32b3b306df3a4e34a3df', 1, 1, 'personalToken', '[]', 0, '2022-11-26 02:37:16', '2022-11-26 02:37:16', '2022-11-26 07:07:16'),
('4390599ff99eb7293effa2899af1c8c9c99e7079b166a128cd413a20b532493e043ffa026f264db0', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:56:05', '2023-09-27 12:56:05', '2023-09-27 17:26:05'),
('43a1e436827413d3dcf10af11ff52f7ae3c3340679214f3ed106b9a7aea21dae1d66d52041373321', 1, 1, 'personalToken', '[]', 0, '2023-03-27 13:20:19', '2023-03-27 13:20:19', '2023-03-27 17:50:20'),
('43a66a28d738d91713a9bda034651e6b46ff8286f7d400670ad28cb7a2b42771804002f2a87590be', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:44', '2022-08-03 03:51:44', '2027-08-03 08:21:44'),
('4420997bb7c64751e9949692d7c73ce9f911d08bbc494f5234c607f2ddada15ee5f2db5469f5c016', 1, 1, 'personalToken', '[]', 0, '2023-10-14 02:09:27', '2023-10-14 02:09:27', '2023-10-14 06:39:27'),
('44719506ea66b6ff1b2b31037484a8403ae950f556ec16ec656aeec6652db6839d9b7479aa6b4b19', 1, 1, 'personalToken', '[]', 0, '2023-11-30 16:48:36', '2023-11-30 16:48:36', '2023-11-30 21:18:36'),
('448383a71d7f5e537da727c9960cafa9aa954e2ec60b1ea2df419420d6c1e1b48cd08d1fb6763481', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:07:29', '2022-08-02 06:07:29', '2027-08-02 10:37:29'),
('449db0e678a3772c9e9f9965b4882ab2eec49b300d904ac6b672f63efe9a301e19fc81bc74105e30', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:51:15', '2023-11-17 14:51:15', '2023-11-17 19:21:15'),
('44ae7719ecd6276eaaf57663757ba1c44fd0f9e97dcd08da52ad66215e83ec185aa182889c0de680', 1, 1, 'personalToken', '[]', 1, '2022-07-09 09:40:29', '2022-07-09 09:40:29', '2022-07-09 15:10:29'),
('44dd3d4f28132bfc6048d606b2d34c918b31efd7356ec5bf9e967fc58c13a8ccc3fe104e503620db', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:44:52', '2022-11-20 08:44:52', '2022-11-20 13:14:52'),
('44ed4bce1e3f6f99781d154bfb5b2068cef4b7d745c917f00557f2a0e05de153993fde6f58119c93', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:05:28', '2022-08-03 06:05:28', '2022-08-03 11:35:28'),
('4507ae9ab900b2a7f6c943c504720cb8a21d5f23e7afe0f67518d66682895130fe03b0ee7b78088c', 1, 1, 'personalToken', '[]', 0, '2023-05-07 10:07:02', '2023-05-07 10:07:02', '2028-05-07 13:37:02'),
('451ba0ac461206e8a0fabad440c81b4d27d2fba5bd05764fbc029ae36ca28163342045b6e34434f3', 1, 1, 'personalToken', '[]', 1, '2022-10-13 04:44:00', '2022-10-13 04:44:00', '2022-10-13 09:14:00'),
('457b72d8f56160bc0ba7aa64eddebbc5c8a2c2c04a8fe0bfebe818fc22635fa333d6236e3f09a493', 1, 1, 'personalToken', '[]', 0, '2023-05-29 11:29:59', '2023-05-29 11:29:59', '2028-05-29 14:59:59'),
('457d45bf0dee1b7da95dc8007d4257adf82d97fb99e264fc3adaa56eff4419b6408c7aa431a7571b', 1, 1, 'personalToken', '[]', 0, '2023-01-27 01:32:25', '2023-01-27 01:32:25', '2028-01-27 05:02:25'),
('458aee85976f87863bfc5ccd7d4fb60e0f1035cae42364286911632e6613c72b6fdeb4082753691d', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:44:55', '2022-10-22 15:44:55', '2022-10-22 20:14:55'),
('4595b16b1561989ebde6f020ff28f4eada81aff93e5cee069f80d9607eeee3a23089223304ec0389', 1, 1, 'personalToken', '[]', 1, '2023-05-14 18:16:23', '2023-05-14 18:16:23', '2023-05-14 22:46:23'),
('45bd9742357bbcf51ae1f7fc352a8cd19955610c1f8bea34b67f146e90a0aff37affedf5dfae0754', 1, 1, 'personalToken', '[]', 0, '2022-12-15 16:58:32', '2022-12-15 16:58:32', '2022-12-15 21:28:32'),
('45cc8419a20a55ebe7dc9c9aee6215bffc62f201401d23ced9acd5433bbe8354a4eba8e94215d68d', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:47:27', '2022-08-27 01:47:27', '2022-08-27 07:17:27'),
('45db3b4404b425c9be82c2caffc629a049e38fb521da8e7363800c7b2bf26d190508d5dd6f50c888', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:46:29', '2023-08-09 01:46:29', '2023-08-09 06:16:29'),
('46000c41e6cf92fd01a38e486af48267183393f14eca7a1f84d33dd847f32e9c550c2b8163094171', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:52:45', '2022-12-06 07:52:45', '2022-12-06 12:22:45'),
('46096a2038544ea7cbb82b2b343caecd8a79f52d87443115a25c6ce42850d094157423f7ffc80dd0', 1, 1, 'personalToken', '[]', 1, '2022-07-25 13:32:35', '2022-07-25 13:32:35', '2027-07-25 18:02:35'),
('46316b95c6049427ac0eb20984f8e404a7578f9df396efb6ee1653dfcbfecdf5b0f622439158c773', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:23:57', '2023-08-08 02:23:57', '2023-08-08 06:53:57'),
('463cbb30c4ecff226a5bb6c1f1c3eda123d296048dda8efa9d8f3be2efbbc05094c34eec734a9fe1', 1, 1, 'personalToken', '[]', 0, '2023-07-18 10:43:45', '2023-07-18 10:43:45', '2023-07-18 15:13:45'),
('466f38019b623a2c9763732d18874aac25eceeb24b1640a1fe7b475ded38f0418976316488c8396b', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:21:10', '2022-07-12 09:21:10', '2022-07-12 14:51:10'),
('467697f6dced7e5212c25730fdaa34e0b5e24b7562f88b106c391cdec21f72b574c8f01260ee27d8', 1, 1, 'personalToken', '[]', 1, '2022-11-25 11:17:35', '2022-11-25 11:17:35', '2022-11-25 15:47:35'),
('469b3f92f6a26c0986e49d5a62b8c7bc6d1ef679adff7832862d493dc90c635dbb8cd3a1aa8eb351', 1, 1, 'personalToken', '[]', 0, '2023-02-03 09:27:09', '2023-02-03 09:27:09', '2023-02-03 13:57:09'),
('469fd6709f714eb91f33ba2accbe77cd6532c449f2cf829083d39fbd2e4c08fb327db028c3685d6d', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:52:48', '2022-12-07 09:52:48', '2022-12-07 14:22:49'),
('46a27182aa924a3e0cb0aa8a5f6afe051a9b4bd61bc2f8785eac3ceefb16139781b2274ab2e3f122', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:57:15', '2023-06-30 09:57:15', '2023-06-30 14:27:15'),
('46b8c910861a67bfbaa2a91442e34977f0e24b409d70b9a2444727ce7018cbeb06f94eff5966d4fa', 1, 1, 'personalToken', '[]', 0, '2023-07-16 16:26:36', '2023-07-16 16:26:36', '2023-07-16 20:56:36'),
('46e1a52bfae1dcf605be111b8f0787d9e54eae70a72d52cdda667efc04e124b5e0d6705e13c8bc3b', 1, 1, 'personalToken', '[]', 0, '2023-04-13 11:01:45', '2023-04-13 11:01:45', '2023-04-13 15:31:45'),
('46ff33a27b38dbf6ddb0008d38bcd480a84ff3676be40d9918bf53fae8abfd63f401ee934d296da9', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:20:56', '2023-06-15 03:20:56', '2023-06-15 07:50:56'),
('47008861215e022be47c771ae7e3eedd2a0afdbf66f3fb3b082f7da19f46adb9e2b6da0d7eab78c0', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:47:12', '2022-09-26 07:47:12', '2022-09-26 12:17:12'),
('470f4abe188a2b480fcc7f6feb42da64a0196e15f46b3ed5a2acd46f7191f12d6e593413e79e8e5e', 1, 1, 'personalToken', '[]', 1, '2022-07-25 03:47:26', '2022-07-25 03:47:26', '2022-07-25 09:17:26'),
('475f218e993448c02ff9b01ffc1effe18904c16a3001245bc8bc17922e337a1144bc069d17adfcd6', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:52:53', '2022-12-26 09:52:53', '2022-12-26 14:22:53'),
('476d86b7def9bcc0b3b9a5c2dbf63bbe33ea7d8e3ec276f27c3e2cfe6349c08e4775e1106b697aeb', 1, 1, 'personalToken', '[]', 0, '2023-12-09 01:57:13', '2023-12-09 01:57:13', '2023-12-09 06:27:13'),
('477cdc54a506516f3af83c6787e2075e121996e88a8d137d9a5c2a981781b33a3336b6a069e00c14', 1, 1, 'personalToken', '[]', 0, '2023-03-15 13:12:53', '2023-03-15 13:12:53', '2028-03-15 16:42:53'),
('478031871c0d443b7ad126f0760960d5ce281e0fc6252a1ff5cbbe68a82c614f3fa49e50499eae1e', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:52:04', '2023-04-08 15:52:04', '2023-04-08 20:22:04'),
('4782472abc6efd8e0a482f32649ea0381249b4eae7fbab104ddf885013f94445ec45c0fd1551640b', 1, 1, 'personalToken', '[]', 0, '2023-05-14 08:38:00', '2023-05-14 08:38:00', '2023-05-14 13:08:00'),
('4790b160b1dffeccc97cd8cecfb1466168fdd9b57195c13f8399bb458668c7423554de7071cf8e49', 1, 1, 'personalToken', '[]', 0, '2022-12-05 11:18:59', '2022-12-05 11:18:59', '2022-12-05 15:48:59'),
('483e900c3fa03ec66e856eedf1531abe6510630de4bb46b642eac7ab897dca2a6b1f393451a4e9d2', 1, 1, 'personalToken', '[]', 1, '2022-10-15 13:56:35', '2022-10-15 13:56:35', '2022-10-15 18:26:35'),
('484652efc0f274b03ec8b0be14de7f994616ad7c2fa574b0c87b4e207190d39146eef2bf9a0d1fec', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:56:46', '2022-08-27 01:56:46', '2022-08-27 07:26:46'),
('4872755f20d4e71f84940d15b54156219cd5e77ed875bb74617f01591143431bee00c2c6bebfb4c3', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:29:07', '2022-12-07 09:29:07', '2022-12-07 13:59:07'),
('487b78075a6c5518a9f7472dd01c24749cc81609607614b497311fe4bbb50df56a3850a0c84146d8', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:41:56', '2022-09-26 07:41:56', '2022-09-26 12:11:56'),
('4881a4237dde515e725505299267fbeb8d51bc81dde196d324b6c31561d8678c193e0a780ac4b143', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:35:49', '2022-07-06 07:35:49', '2022-07-06 13:05:49'),
('4883f63066df2bc943f3b8e0c508e8e32a2df71553fde763e3fe102b2d29b5079dc13a2625c7265a', 1, 1, 'personalToken', '[]', 0, '2023-05-16 12:06:58', '2023-05-16 12:06:58', '2023-05-16 16:36:58'),
('48959058ac0ac5778ed37972420a51441f5f3fa92f0e8a3f54fe032d748de71a8762b899901477bd', 1, 1, 'personalToken', '[]', 0, '2023-07-18 10:45:07', '2023-07-18 10:45:07', '2023-07-18 15:15:07'),
('489ac5f15fe58524853e84257e0d0601c122f608c8b7804dbe457b1591c8a416f27983fae07bcee3', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:17:27', '2023-09-27 12:17:27', '2023-09-27 16:47:27'),
('48a3eb6f33c01eef64eb69612fbf16d161a3e3e8e11334637812851189e0979dea43e5db22ebcbb6', 1, 1, 'personalToken', '[]', 1, '2022-08-02 15:51:00', '2022-08-02 15:51:00', '2027-08-02 20:21:00'),
('48ada7b32d532ee9fe8e3bdc27b10e54c34f8f0ea77806077c1c26f08a566a16ba1c4422e8c88cf0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:29:14', '2022-12-26 06:29:14', '2022-12-26 10:59:14'),
('48cb9e999cbe971f0c695cfb908b610b9ad1e1e0a2ae9d8740a8ed67fdac5355d25dd3934d2aa52a', 1, 1, 'personalToken', '[]', 0, '2022-09-26 06:16:18', '2022-09-26 06:16:18', '2022-09-26 10:46:18'),
('48dce790e30336c8452ebfd8432634153b10bcf75aeac8fad2b20928ffa88ce5aa241bfd0412e733', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:49:05', '2023-03-04 11:49:05', '2023-03-04 16:19:06'),
('48ef76bcbad7d686899f4a5ba0e1655ef3140373484429282ab7c14626b93fd0be6615c37c5e9dc8', 1, 1, 'personalToken', '[]', 0, '2023-07-11 06:04:51', '2023-07-11 06:04:51', '2023-07-11 10:34:51'),
('48fbb968f915636e65a96815b0fb1c28950d90ba3284d39c457ee1d32aa9f201f0c517b6c6d0c9b0', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:58:44', '2023-01-06 12:58:44', '2023-01-06 17:28:44'),
('493a0ae1e3409777018e44035b056f735a56356c612a4a40b318f59327ca481cd20bbf6e63de42e3', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:51:18', '2022-11-21 02:51:18', '2022-11-21 07:21:18'),
('495b504164bdadb2cca0f7b446ace616671198ac1165f7102a28414ad96fae8db2922dc718d2142d', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:52:50', '2023-07-10 11:52:50', '2023-07-10 16:22:50'),
('49ac2cbc71cd39924bdb3b3077254138dda6259b9e5953597249de0d797fef91099362a5ad01654a', 26, 1, 'personalToken', '[]', 1, '2023-03-04 09:45:24', '2023-03-04 09:45:24', '2028-03-04 13:15:24'),
('49b00f1909bfec94b66b00dfc2f0f1dca028cc9564cd964bf7b9f2c9e460fa65f60d30808689cfc7', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:40:05', '2023-01-19 13:40:05', '2028-01-19 17:10:05'),
('49b0286c7b32d18516d5d36e44664739b54b91d355425317a9bcf0df24ab5dee7bcf5fc0203c073c', 1, 1, 'personalToken', '[]', 1, '2023-02-02 03:50:31', '2023-02-02 03:50:31', '2023-02-02 08:20:31'),
('4a14a7c3e8b282926d4761da46a93c38da61f3c3442745cc77b5566e91ffd66a493684dc5c90f8f5', 1, 1, 'personalToken', '[]', 0, '2023-06-19 01:01:36', '2023-06-19 01:01:36', '2028-06-19 04:31:36'),
('4a229962d1a0ae47a355d0ae417bc1b0c9e49a0216a91b94c9c41443159523ea6410f120a3a599c4', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:29:33', '2023-06-21 04:29:33', '2023-06-21 08:59:33'),
('4a27feabafddd4cee28627d310eae55904487473f858e78000a00b3a04b0f7cc1f5762f757dca14a', 1, 1, 'personalToken', '[]', 0, '2022-08-02 14:50:49', '2022-08-02 14:50:49', '2022-08-02 20:20:49'),
('4a317badb9c43bfdf5e8548e66d3ed58cd7ab706f44d00bfd28b0790c6c9b2a1aba2b53294ed0600', 1, 1, 'personalToken', '[]', 0, '2022-12-06 05:52:35', '2022-12-06 05:52:35', '2022-12-06 10:22:35'),
('4a3c641067162b9658a62075947ec7a049d36c3f637810105104a5df5be92d87e25e17dc95a250ab', 1, 1, 'personalToken', '[]', 0, '2023-04-13 10:11:09', '2023-04-13 10:11:09', '2023-04-13 14:41:09'),
('4a40779f0faa1e445a4606a980ee9f10b8e3dfd74b913a414ab1a13425925d63b4afdd7987cc23d0', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:18:53', '2022-07-12 05:18:53', '2022-07-12 10:48:53'),
('4a480d085ac85805f6bc941553b03a2a595e082f3cfd50e864bc03f22f859591e437440a343173ea', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:23:10', '2022-07-25 07:23:10', '2027-07-25 11:53:10'),
('4a7bcebbe45d7e4a789a10930e675bd8b466d2d211907cc9bd0d47ae47c2ff79e5c03b665df78b69', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:22:18', '2022-11-14 04:22:18', '2022-11-14 08:52:19'),
('4a914568ad402f0ea09e8a3b5d5c7e0e9e2ffdfe3b7c0b6019e3df2bb907087092927a87df07cd59', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:05:32', '2022-10-24 03:05:32', '2027-10-24 06:35:32'),
('4af32a94aef5150653687dcd5fdfe1efd2b9841744176a31ae16dd89b25988721f0755a94fd1e2c2', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:54:23', '2023-08-12 08:54:23', '2023-08-12 13:24:23'),
('4b4356c3d103fa034a5505123c06cd2d0e3ee69a0dbf30c23cf50d66af87914f6e23ff59cd613713', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:45:09', '2023-08-08 08:45:09', '2023-08-08 13:15:09'),
('4b47d307aef3a03d5ef23bd09fd2718c887895256e3b9b89983c223458df916d22b3aa1932f91b71', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:33:50', '2022-07-12 04:33:50', '2022-07-12 10:03:50');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4b61596101af0e1bc30e063f1e5f77746196b752c17f500a2bd42a31c8d1fda45eddb91fdf71b384', 1, 1, 'personalToken', '[]', 0, '2022-07-17 14:47:18', '2022-07-17 14:47:18', '2027-07-17 19:17:18'),
('4b8681fe7aa36adc08c6e6e1a66c7d72e42153d8ad618e02db6560e84ce19d0d3c9564506ade4df5', 1, 1, 'personalToken', '[]', 0, '2022-11-19 16:07:47', '2022-11-19 16:07:47', '2022-11-19 20:37:47'),
('4b8fc3c40fdee1b3597898639bd168374c9342ec7fda2545a666bd948fed4c4e7b9cfe9518b286dd', 1, 1, 'personalToken', '[]', 0, '2022-12-12 13:51:42', '2022-12-12 13:51:42', '2022-12-12 18:21:42'),
('4bd087d630d9347ababb3c05eaea8c4ad5628debbf1d3c7772a57783be8f3ea1970d3601ce8ecccb', 1, 1, 'personalToken', '[]', 0, '2023-08-29 01:59:32', '2023-08-29 01:59:32', '2023-08-29 06:29:32'),
('4bd914e4f61826ca3c6aaf186c511e1b73f05156b6430c5351140a0f60c3d579316588362d827af4', 1, 1, 'personalToken', '[]', 0, '2023-10-15 08:25:18', '2023-10-15 08:25:18', '2023-10-15 12:55:18'),
('4c0e69eba5250bfa022ac7fb48d60068d52a68d1d3f19f8e59a2f6c42fb896b1d3801f4d163842ba', 1, 1, 'personalToken', '[]', 0, '2023-01-02 10:10:07', '2023-01-02 10:10:07', '2023-01-02 14:40:07'),
('4c1323fb343c6ba7bb17377852d06b7ed574773c7d8b7786b9d3ae3806b9e8b927ad3ee5974f1c2e', 1, 1, 'personalToken', '[]', 1, '2023-08-07 05:20:18', '2023-08-07 05:20:18', '2028-08-07 08:50:18'),
('4c23d6f20767b45215733bca4556985239ff870faabbbdc80f8a10478555d4ab0e76e883ca6f6060', 1, 1, 'personalToken', '[]', 1, '2022-12-29 17:55:24', '2022-12-29 17:55:24', '2027-12-29 21:25:24'),
('4c3f6e7d6c4b3aa46e0ae66015deeff697969a9c12ce1752354efe9f63ad4f03c84c695ed511623d', 1, 1, 'personalToken', '[]', 0, '2023-04-24 11:48:12', '2023-04-24 11:48:12', '2028-04-24 15:18:12'),
('4c6bd2a630360ffe8a68f66dd312f496aae64d46e6511e39625cf8af5e4fd01633f36c2a32892ddb', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:49:12', '2023-03-04 11:49:12', '2028-03-04 15:19:12'),
('4c6ca482a73a7b15cb830d8ef3dc53bd6dd96b471c7346e66fe5002dbd0fe2644d475b56903d897a', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:42:35', '2022-11-21 02:42:35', '2022-11-21 07:12:35'),
('4c6f02f6fc4380e565c290718d11c522228b33b85ead7beceb6599960c35183bc1a017a6d89f7627', 1, 1, 'personalToken', '[]', 0, '2023-12-08 18:23:47', '2023-12-08 18:23:47', '2028-12-08 21:53:47'),
('4c88b25d27501fa2898b566f67ae5f0c95b6ce676d8b94b0d4d145915d894d329e2395f532656159', 1, 1, 'personalToken', '[]', 1, '2023-05-01 05:11:47', '2023-05-01 05:11:47', '2028-05-01 08:41:47'),
('4c8c3a6c8f0b113fafffef05a1ec40ee3f0ca170a44633348fafa9a6a43a00fafac78e18ef592238', 1, 1, 'personalToken', '[]', 0, '2022-11-19 05:13:44', '2022-11-19 05:13:44', '2022-11-19 09:43:44'),
('4c8d5a8958b1a5abc409468505ff4436e826532c808501f954b6bffd9884e74602b8002a8b010f2c', 1, 1, 'personalToken', '[]', 1, '2022-08-27 02:17:29', '2022-08-27 02:17:29', '2022-08-27 07:47:29'),
('4c9202aa580851ba4956d699723b46b63f17bffa3d798f86def6a1fcaa0d946f1c7446e764aec7a7', 1, 1, 'personalToken', '[]', 0, '2023-06-02 04:38:04', '2023-06-02 04:38:04', '2028-06-02 08:08:04'),
('4c933d278b9abfacfc528606c7e4742c4865ff53a79a97104306efa23913a205f91650ac9319724d', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:17:37', '2022-12-02 09:17:37', '2022-12-02 13:47:37'),
('4cd00146338cb8036407edefee16a007caae1ca0348e2db7a4d73408c58f157d22f7de1174c56c3a', 1, 1, 'personalToken', '[]', 0, '2023-04-08 12:19:37', '2023-04-08 12:19:37', '2023-04-08 16:49:37'),
('4cef748875555768fd26d52f3824b4ee65b9ef35090366c1385c4010b81b5b41c47cdda156772f37', 1, 1, 'personalToken', '[]', 0, '2023-07-30 11:12:26', '2023-07-30 11:12:26', '2023-07-30 15:42:26'),
('4cf063d428a92e782ba04b200f2097a5aa99c02ca870b594156c7b229d4bcb3f7bcbc0dd6f04d86f', 1, 1, 'personalToken', '[]', 1, '2022-12-17 08:55:20', '2022-12-17 08:55:20', '2027-12-17 12:25:20'),
('4cf6dea2f708e872f3f995608dbd155d92ac1637da7d35113eeebd2ef5b9f9a2da78242b4b7417e0', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:07:48', '2023-06-30 10:07:48', '2023-06-30 14:37:48'),
('4cf8d80366f5e696f601343b629947c53f7f0d14d274191747aebcba950824040e05e2a81aa508c7', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:02:54', '2023-06-21 05:02:54', '2028-06-21 08:32:54'),
('4d371ae4f6ebd9107dc2ab7eb440d6f357f39c11ee7bbab85f26160f7aa6fa49187ab4e1db3dc5f3', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:11:14', '2023-09-27 13:11:14', '2023-09-27 17:41:14'),
('4d3b4b42a534a04e3a559e8c21931b0a6b2744e5ef3d04ce56d191d654559774cbfae50a065ca732', 1, 1, 'personalToken', '[]', 0, '2023-06-23 14:29:45', '2023-06-23 14:29:45', '2028-06-23 17:59:45'),
('4d51865ee53ef620c18a2f18fa886ef08c8cce96a4586ebfaacef4e710b45ca0371bf801f5fb2801', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:25:10', '2023-11-17 15:25:10', '2023-11-17 19:55:10'),
('4d679b0325d0186a2f204e5bad84e7302c5c6db7f3d74b65a96cbc244564b20c7f839efae082ad3c', 1, 1, 'personalToken', '[]', 0, '2022-12-04 12:38:36', '2022-12-04 12:38:36', '2027-12-04 16:08:36'),
('4d7e17ab80fd1c8e2760207fa3af1ce652d8c827f69d4a9eab4574471f761248dbb8e43e199cb2d0', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:36:36', '2022-11-21 02:36:36', '2022-11-21 07:06:36'),
('4d9ff4834cffe91274db22b789f42bcff6b9e2b8b3145b8ce05064d620d36fd9918ac1a9fdb40ec2', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:40:35', '2022-12-26 09:40:35', '2022-12-26 14:10:35'),
('4dd1a4d04d7db608b58922328560786be20dfdfaebfe90f5b06e78b2a8ebc2f4c23b957a1e45f777', 1, 1, 'personalToken', '[]', 1, '2022-09-19 04:01:08', '2022-09-19 04:01:08', '2027-09-19 08:31:08'),
('4dd1c7811d87ab3bd8f97ee8a003961cb323738f5aeceba237d4c22f9689df405fd693337c78b991', 1, 1, 'personalToken', '[]', 0, '2023-10-29 01:48:56', '2023-10-29 01:48:56', '2023-10-29 06:18:56'),
('4ddce48942731e98b6183efb34f81aebf956074b78352dd4141a30263aefeddb75866b880050b6b8', 1, 1, 'personalToken', '[]', 0, '2022-11-03 11:01:51', '2022-11-03 11:01:51', '2022-11-03 15:31:51'),
('4dfd88a993670aee5a0b3c60e6036543a2696f4c2c59f1e9ebf1534a5dd3076ea287a2f6e8722682', 1, 1, 'personalToken', '[]', 0, '2023-09-22 03:39:45', '2023-09-22 03:39:45', '2028-09-22 07:09:45'),
('4e1ff1bf7c02fb50bed7248fa6408a0b2cfe4284e734214d3d82c3213c9ae74568b8e0ba44f5b250', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:51:42', '2023-06-15 03:51:42', '2023-06-15 08:21:42'),
('4e28440069956ee76b657eba604a2978820f2fa1344dad730d96ee242bbf0a828f869bd0ccc85e0a', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:25:38', '2022-12-06 11:25:38', '2022-12-06 15:55:38'),
('4e71e1f90ee2f3f208599f0d68d844a8c8e46b2639e6edd97b0dbfc9cdf2a0f46e42ff844aab1d0b', 1, 1, 'personalToken', '[]', 1, '2023-02-10 03:29:30', '2023-02-10 03:29:30', '2023-02-10 07:59:30'),
('4e8b779859c98c2e88645c49f12bce4d4665a20bd641dd61d254890f3348d26c125d213b0ed49f18', 1, 1, 'personalToken', '[]', 0, '2022-10-14 14:04:23', '2022-10-14 14:04:23', '2022-10-14 18:34:23'),
('4ea49f2f9c1d62c5a283cbc24cd954c13ff174f50fe431a2d38ba6119d222647dd7d3ec12e953f5b', 1, 1, 'personalToken', '[]', 0, '2023-05-16 02:03:23', '2023-05-16 02:03:23', '2023-05-16 06:33:24'),
('4ea501cc1e4fd4ef7c5438d95be50f14aaec9a68861c1c38ddae9e8b3f5376d914a81ff7618ab308', 1, 1, 'personalToken', '[]', 0, '2022-11-09 13:54:49', '2022-11-09 13:54:49', '2027-11-09 17:24:49'),
('4ee3d7a4f4ac509bfc487dc117769673f712370d52d99d0a300a4d846c2146cc6ac8287ace8fff98', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:30:18', '2022-09-28 06:30:18', '2022-09-28 11:00:18'),
('4f0f25cd7fe63e84f96d297d1de634446f9a4482333c0d38ae39eff157c12823b15e57b1a03b0eca', 1, 1, 'personalToken', '[]', 0, '2022-08-03 07:26:21', '2022-08-03 07:26:21', '2022-08-03 12:56:22'),
('4f1305c8b088eb70eb8b8ec0398da6525737dcc2d9dad48f5145e22fdb5b16ca3938e0365a6d106a', 1, 1, 'personalToken', '[]', 0, '2022-11-23 08:33:50', '2022-11-23 08:33:50', '2027-11-23 12:03:50'),
('4f182cdb9745a9993f1dcc41debdbe6c26ba31c3635a1f1333630ff682a3b154023bbea5239904d1', 1, 1, 'personalToken', '[]', 1, '2022-07-08 10:58:47', '2022-07-08 10:58:47', '2022-07-08 16:28:47'),
('4f21dfa0f5a67e67b909e3f0af70966c20ebec7409f987666a9812908275914648142923577c7190', 1, 1, 'personalToken', '[]', 0, '2023-05-16 02:02:02', '2023-05-16 02:02:02', '2023-05-16 06:32:02'),
('4f378eee6ff727d3a04b6c8306820c72460391aa8b1e86ae9841649f85cd29c6704dc6cef10e5ed9', 1, 1, 'personalToken', '[]', 1, '2022-09-07 17:56:58', '2022-09-07 17:56:58', '2022-09-07 23:26:59'),
('4f9bfb0a517743734072facc2b92e52e253cb1d0d838b87fad8752bb772336ebd8b04c5e6de8cbd6', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:46:22', '2022-10-24 02:46:22', '2027-10-24 06:16:22'),
('4fada67f3b75c0c42fcae23a0af93c471882de0d6354748f955624a16c0b5598842f830b7c35f9cb', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:00:12', '2023-08-12 08:00:12', '2023-08-12 12:30:12'),
('4fe2e303836fdacfbcc80443f1b0591ce2bb30575ac3b771a3f9a00777a650cc2758ac8c26b826ce', 1, 1, 'personalToken', '[]', 0, '2022-11-16 15:24:25', '2022-11-16 15:24:25', '2027-11-16 18:54:25'),
('4fe86eea496414735a9106b1f24a4f4ef25001132ac6d294dcb7a21a64d989da362fa1c26e01717e', 2, 1, 'personalToken', '[]', 1, '2022-10-17 16:17:23', '2022-10-17 16:17:23', '2022-10-17 20:47:23'),
('501070fbf2b7124d0bf7ee9425078143633c470b5d791d7eaec2c2466ccde5e9fc41a7f3b16da2f2', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:58:18', '2022-10-22 14:58:18', '2027-10-22 18:28:18'),
('50425403403d15fed00c3d40fb7988f17cba71f04e37297d56d36eea801444880697bfb8ba182739', 1, 1, 'personalToken', '[]', 1, '2022-08-07 09:14:40', '2022-08-07 09:14:40', '2027-08-07 13:44:40'),
('5047a5f34626dc5e5302e57164fac83584a124017867e15aa965b943875402e178555cdab216ff70', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:00:25', '2023-04-11 15:00:25', '2023-04-11 19:30:25'),
('50485f44291e7354fbec377011aaca42193f1fb5acb5dfea288e279d424324f205409957bd6a01e7', 1, 1, 'personalToken', '[]', 0, '2023-12-02 02:12:40', '2023-12-02 02:12:40', '2028-12-02 05:42:40'),
('5053857e7fe66a38cd7796b36d6b89f4a6c90438b5a5dbe215fff0c6a4c1863d7648d83e80187845', 1, 1, 'personalToken', '[]', 1, '2023-03-07 05:36:54', '2023-03-07 05:36:54', '2023-03-07 10:06:54'),
('509c668d423ca71e4da83693714dbcf58aa05e906ad7c152f0bd8ce5021cbefca9483a246793c29e', 1, 1, 'personalToken', '[]', 0, '2023-05-28 06:15:36', '2023-05-28 06:15:36', '2028-05-28 09:45:36'),
('50b2fea6400731434c69f5cad380ff1cd203cc1659ee9afb7233eeab368b99b688fc4e29f8df404a', 1, 1, 'personalToken', '[]', 0, '2023-01-13 16:38:37', '2023-01-13 16:38:37', '2028-01-13 20:08:37'),
('50b86b2e6d0ab9617c7c764e918c31a918d6a09ac2f47a87eb97045f0488c7b28b3de3372d357620', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:11:06', '2022-08-28 03:11:06', '2022-08-28 08:41:06'),
('50bcd74dde4c46aaeebc41d46840e1399369a71a19ab7d7cb6004f0d69d279c9a644454517fca6af', 1, 1, 'personalToken', '[]', 0, '2023-01-19 15:55:35', '2023-01-19 15:55:35', '2023-01-19 20:25:35'),
('50d2400128f11b9cfb16523bb02ee24d76f78c2ab91377bb12fc44378afa05469fb3944e744c4006', 1, 1, 'personalToken', '[]', 1, '2023-12-07 06:07:08', '2023-12-07 06:07:08', '2023-12-07 10:37:08'),
('50d6a932c5e06b57a30f03cc5053a76fabbff32fdb5d7d55ea65820d8e4c825769c6cd38e06c3d8f', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:31:46', '2022-11-15 05:31:46', '2022-11-15 10:01:46'),
('512d57401b51495cb4ad86b41737ed247934d106247c2e0573ed8be0d6cf9b4edc7c491312bf92ef', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:37:10', '2023-02-05 17:37:10', '2023-02-05 22:07:10'),
('51391981450342e66a27c4e17e0e807699690bc1a022bf600152bd1e66634dc85d676938533778bc', 1, 1, 'personalToken', '[]', 1, '2023-01-02 10:06:50', '2023-01-02 10:06:50', '2023-01-02 14:36:50'),
('51894f282f96bb80cbf72067e1975c6f927a4cb12221a6a5b7a58d56dc35581e861594ece7dd7036', 1, 1, 'personalToken', '[]', 0, '2022-07-08 11:01:08', '2022-07-08 11:01:08', '2022-07-08 16:31:08'),
('519bb8106e94fd2f579f88d8d81529349c2a4507a6dcd568a186676771a53a4d9e8c59e7f799c61b', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:28:41', '2023-04-11 17:28:41', '2023-04-11 21:58:41'),
('519dfa017005d735ec0787e9fc44164f2a5998b16ab5b4a6c77e183615ea3d8f13e302ebf4eac71f', 1, 1, 'personalToken', '[]', 0, '2023-07-10 10:18:01', '2023-07-10 10:18:01', '2023-07-10 14:48:01'),
('51b3dfe06017efb5a0c43c6bb93aeb1b6625fced6f88984676c95f0372550525e57fc31f4f966765', 1, 1, 'personalToken', '[]', 1, '2023-06-04 04:56:22', '2023-06-04 04:56:22', '2023-06-04 09:26:22'),
('51c828bb0a227deabb99642ce9cab4aed1b0067fb8b400bf73ee8e469bcff6597a2ad37e2cb6c3ec', 1, 1, 'personalToken', '[]', 0, '2023-09-28 06:15:15', '2023-09-28 06:15:15', '2023-09-28 10:45:15'),
('51e3bdd1675be8432be723e762bd996f50a2c216dc7b41a4f9256efc49363e548d068586e4bb9510', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:58:13', '2022-10-22 15:58:13', '2027-10-22 19:28:13'),
('51e88b54639a3c6ee18f1b0c638fd2d21385ce602502d1992da8a6f75b2e79c28f8b86647e285a80', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:50:45', '2023-07-10 11:50:45', '2023-07-10 16:20:45'),
('5207865eefd673febec41b46a7e6f9b2d779d3170adee59238cfe0e9a9f679f56c40669ef69e64b0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 07:02:25', '2022-12-26 07:02:25', '2022-12-26 11:32:25'),
('521b504494782361a462afdfa51078bab092e634eefef44ca92232af543104d3a2e8b64266814c30', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:04:46', '2022-12-16 05:04:46', '2022-12-16 09:34:46'),
('5225bfdafb138f31d7dc26e0cadef01df30f4df5f1f3f70cceeb8233ae5807484039382241cee92e', 1, 1, 'personalToken', '[]', 0, '2023-02-03 10:02:07', '2023-02-03 10:02:07', '2028-02-03 13:32:07'),
('523c94552ba8b759441e31405052209ba082e8ab2ca19588a77ea650dfcd1b638a090cbecffba61f', 1, 1, 'personalToken', '[]', 0, '2023-09-04 05:54:06', '2023-09-04 05:54:06', '2023-09-04 10:24:06'),
('523f63e0012ec2c87fbdd22546d078499f7af2b7331ca1b2b8c906085dde7025ea9e79ee4a9c2459', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:51:31', '2022-07-12 08:51:31', '2022-07-12 14:21:31'),
('5243ccd117dcf4ff41c171fc48df584bc0bfd5c3bc5ce5c880628adbb4911eff96854e411219426d', 1, 1, 'personalToken', '[]', 0, '2023-12-08 18:20:26', '2023-12-08 18:20:26', '2028-12-08 21:50:26'),
('5249c4a80767cdf67a6795a807597541697c82085c9b05c6158c18ae1712b621c4214090a75b7b18', 1, 1, 'personalToken', '[]', 0, '2023-10-30 04:12:17', '2023-10-30 04:12:17', '2028-10-30 07:42:17'),
('5265f2ad397c1582e0954dff9edad8195745ea673d30435adadc04ead496d33936205d903d05ed92', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:17:11', '2023-04-11 08:17:11', '2023-04-11 12:47:11'),
('52a46c38d7d4644aefa0c6f171d9f875b1230db4c9e84c2c210f8d8df18e5dad7b93defea4e26041', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:07:42', '2023-09-09 11:07:42', '2028-09-09 14:37:42'),
('52ae15efe5435d6d30928dee1bbd8dd549522a663e469c2f3df6ce6bb759c91c1635219059589f4c', 1, 1, 'personalToken', '[]', 1, '2022-08-03 07:32:00', '2022-08-03 07:32:00', '2022-08-03 13:02:00'),
('52b2f64db352820896950ee724dae82e6c48156af7999be66d485cbad54af943067d0f658d5b8db9', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:34:07', '2023-11-17 15:34:07', '2023-11-17 20:04:07'),
('52b3465dc46d5220e3089c31355046ea7366afdbc9c318dc7d4e99d6566235a96ca517f46edf7bd7', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:57:25', '2022-10-24 02:57:25', '2027-10-24 06:27:25'),
('52c5755ecad84db0eb74b9e836ba179f0fcae919ee2ba7bcdacef3dd5bc0a8dc91b1fbbfdfe841de', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:09:37', '2023-04-12 16:09:37', '2023-04-12 20:39:37'),
('52f8a4190f48d6829190ce55ed9b0cd6d16b0cb90eee6ed4c704c3728aa76e51724d4d8fe82cff47', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:16:36', '2022-07-25 07:16:36', '2027-07-25 11:46:36'),
('531987aba50c32794c66e94eff3f577b324c760f7553c213de676638a91a102e578a009a50b12974', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:55:27', '2022-08-27 01:55:27', '2022-08-27 07:25:27'),
('5340f9e8beebd49398f350a6491e69f4a1439a9cff014e5b3c9673fb0c1ff39e0cbeee749f8c6ea8', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:23:26', '2022-12-06 11:23:26', '2022-12-06 15:53:27'),
('5366a1860a500e61a0248e2dcda3f29448f5fa16581aadff92f60674c2b4a332dcfac72ec0ee58b5', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:50:49', '2023-06-30 09:50:49', '2023-06-30 14:20:49'),
('544548db584440621b42fe0e40556b3113ac892f1f69a8d7ab0dfdb1aa799d2644701fafe26b74aa', 1, 1, 'personalToken', '[]', 0, '2022-12-15 17:00:23', '2022-12-15 17:00:23', '2027-12-15 20:30:23'),
('544c20f47011dc6c8b586f3ed2362acd98044a76e059c7047970b2e8787db60ce2d4477ea7341f40', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:11:50', '2023-07-10 11:11:50', '2023-07-10 15:41:50'),
('54556aa08199dd1f848c5379b866316f9c4eaf53e6bf30eee3089ae8fde5b8cd1fb4d5a5ceaabcd5', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:24:19', '2023-01-06 15:24:19', '2023-01-06 19:54:19'),
('54643a4bf13b0d21988dffc60614976638434b952c0b9ace8c624bfc0491653a43c78ce413d7ec8a', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:11:00', '2023-08-01 04:11:00', '2028-08-01 07:41:00'),
('5479ea18e613d11f7b04f20a31d64f2a461921f0724d110e969bbe55894f85f5ecf73b0cbc5d0743', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:54:33', '2023-08-09 02:54:33', '2023-08-09 07:24:33'),
('549120767e7880999f08d93d74e998b85eea06754a835172de7bb51f8f0b7b3c8592bfa4c53305a6', 1, 1, 'personalToken', '[]', 0, '2023-01-19 11:24:43', '2023-01-19 11:24:43', '2028-01-19 14:54:43'),
('550f44ff8733f4bec6cce4abbd77516c7c29830072e591936afb86ae02624169ce58a5a856d4cd5e', 1, 1, 'personalToken', '[]', 0, '2023-05-08 10:45:19', '2023-05-08 10:45:19', '2023-05-08 15:15:19'),
('553986d2b05bcb9a7bcde3e7b4ac26e99bdda0d39ecfda5fa441ba91fff7a26b4938e7b3a0288a1e', 1, 1, 'personalToken', '[]', 0, '2022-08-06 04:37:07', '2022-08-06 04:37:07', '2027-08-06 09:07:07'),
('556a48e6cb10b7723370187b30df715fe301ec5fb767a81dee40e368ac97a6f4047137472bded314', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:10:17', '2022-10-24 03:10:17', '2027-10-24 06:40:17'),
('5589ba158fb396c7a0a5af93b18e2d5733a94b775ca2260bf6b648e1ccac62d3a7390fa0d5d75fb1', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:53:06', '2022-12-26 09:53:06', '2022-12-26 14:23:06'),
('55a14bb8c0fdebc389e29fc2638560fb746773e80949a72c6d3838ea29aec53d76a5f1c66aefc020', 1, 1, 'personalToken', '[]', 1, '2022-07-13 09:16:50', '2022-07-13 09:16:50', '2022-07-13 14:46:50'),
('55a4a1fd5f25a899db64794d8cd92d8c72222eb56c9e0832f07afb95eb3596152c077af7dd0aa702', 1, 1, 'personalToken', '[]', 0, '2022-11-23 08:39:07', '2022-11-23 08:39:07', '2027-11-23 12:09:07'),
('55c4d935dbafbf92fd1a7a2bde8ab88d48caaadadd52cf60565782cf04e0402ee18f658739dcb02f', 1, 1, 'personalToken', '[]', 0, '2022-11-02 14:22:02', '2022-11-02 14:22:02', '2022-11-02 18:52:02'),
('55e1d6b8eb79889f7095d2e9e144791d7ea709336e08740950970f56d118cd56d4a7b225c879f6d5', 1, 1, 'personalToken', '[]', 1, '2022-11-30 16:07:08', '2022-11-30 16:07:08', '2027-11-30 19:37:09'),
('55fb62d5f0089e96d807b33bb822a9a62991e1d7610b9908e975c65715e8999f158f248d02fd8a44', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:24:18', '2023-01-20 11:24:18', '2028-01-20 14:54:18'),
('561bfdf97548fa57a6ad21f7603f54a8f0e4bf097bc1a4a72f75c1b9831f038a8c6fea7c577ef38f', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:54:35', '2023-11-17 15:54:35', '2028-11-17 19:24:35'),
('563544736c8e19e4e0810c5743fa07a1de3251a806f93ee1e2d7799a5af968b26bcb6b7ca9f518d8', 1, 1, 'personalToken', '[]', 1, '2022-12-12 16:21:18', '2022-12-12 16:21:18', '2022-12-12 20:51:18'),
('56359ac8bd1dbe5a15852105e90beccf56983ab47e8ec5f2b9f1f1b942dcc34efe34db960d504406', 1, 1, 'personalToken', '[]', 1, '2022-12-12 11:48:43', '2022-12-12 11:48:43', '2022-12-12 16:18:43'),
('563b76ef91b0ab745dc27ba12f444e010fe941f48596aa97b67d679a2dbb24e48d49b0af88986219', 1, 1, 'personalToken', '[]', 1, '2023-09-09 12:24:58', '2023-09-09 12:24:58', '2028-09-09 15:54:58'),
('5650847c33cddbb05135ce3010edb9da10dc60f5a99cb0d07b534701ece99822a3ddca0683f2e693', 1, 1, 'personalToken', '[]', 0, '2023-09-28 10:01:44', '2023-09-28 10:01:44', '2023-09-28 14:31:44'),
('569d510f0df47a435626d27ac7a10c842910e14bd24321fd764de608a7a5e6844b374ce4ac3c5eef', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:46:24', '2022-09-26 07:46:24', '2022-09-26 12:16:24'),
('56c0e6517aafffc28bea22488e6f4cf1034a59b356c41222190c23fdd2d1fdb7dbd64437ab4c94d8', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:49:40', '2023-04-11 17:49:40', '2023-04-11 22:19:40'),
('56ffb951e7faaaf40ed6cd9cac86338e1b006899205d26b351e7d400b8d053d448daa4c2cbbb4f12', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:51:52', '2022-12-26 03:51:52', '2022-12-26 08:21:52'),
('5717a067691eaa252f7657f3778d7b20c0302aeb1b7d3d57205b93ad4071a25230ccc3a7f23ab267', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:21:22', '2022-07-06 04:21:22', '2022-07-06 09:51:22'),
('574fedea7b7b99925470646fc96662625ffb48b9d875d9f7b8fe667bb6c245c5bd90d071e9f49f29', 1, 1, 'personalToken', '[]', 0, '2023-04-08 17:46:17', '2023-04-08 17:46:17', '2023-04-08 22:16:17'),
('5752e809f155f2fc673759b84afbc3c57345b6cc9dd68e736a91b8dc89935af738e779b6d4aae720', 1, 1, 'personalToken', '[]', 1, '2023-02-11 13:15:11', '2023-02-11 13:15:11', '2023-02-11 17:45:11'),
('5774c8a2ccf69b383e9222f278d37aed1caadf342a5467892e606c0e41b7669b43a9b33ea875e427', 1, 1, 'personalToken', '[]', 0, '2022-10-13 04:46:52', '2022-10-13 04:46:52', '2027-10-13 08:16:52'),
('57965fbf7999703212a19d84cc65997ce6f84f2e1263a86d8b4f1edb45895645888171a8824ab4ed', 1, 1, 'personalToken', '[]', 1, '2023-06-13 03:36:18', '2023-06-13 03:36:18', '2023-06-13 08:06:18'),
('57a84841b1d49521736626f8d9ec782ee430be8aef113be1ff117180f026550a89a962d12711679f', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:55:08', '2023-11-17 15:55:08', '2023-11-17 20:25:08'),
('57a9e8a1746c54d63246471f82a26136892237b5910798b2d58606ea752e42312f72b5fa991b84b6', 1, 1, 'personalToken', '[]', 0, '2023-04-13 12:48:48', '2023-04-13 12:48:48', '2028-04-13 16:18:48'),
('57adbb139d746b6e4e02dc4c129f915de1e49d4ef34c075d7246188374f3cfe1f2e1a46234399238', 1, 1, 'personalToken', '[]', 1, '2022-10-03 17:25:33', '2022-10-03 17:25:33', '2022-10-03 21:55:33'),
('57d65030616fa1afa3f2a7b29269e3968cf78b0fa783d0d2d4e56c27fcd6617da3072f5ea1f25f88', 1, 1, 'personalToken', '[]', 0, '2023-04-08 06:44:02', '2023-04-08 06:44:02', '2028-04-08 10:14:02'),
('57e39c107a0784e5bfb70a74e0d7927fc58db0578332d624f588b87fce79f28fa28bc0356390e79e', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:59:30', '2022-08-28 02:59:30', '2027-08-28 07:29:30'),
('57e7d0c684e3b41e8886f031b2e1c959b82eb6d826ad692af3475302ea704d71dca99415e69118a2', 1, 1, 'personalToken', '[]', 0, '2023-10-10 06:42:46', '2023-10-10 06:42:46', '2028-10-10 10:12:46'),
('581ab0fba734e2f654c55361866514be9726988d81edf91e122625884c51cf282d10194c65726aee', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:29:01', '2023-05-16 03:29:01', '2023-05-16 07:59:01'),
('58258e7708e3fc3e419aaa2bb34c94c8be1caee8448a14afd9008e409d075077fb6053f2c2aa1bb6', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:40:26', '2023-11-17 15:40:26', '2023-11-17 20:10:26'),
('5890ac873554f839878d8d778f917f31466bf6ef628bdabcf8de7e7598909b76f24eb237cba5aefd', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:11:05', '2022-10-22 15:11:05', '2027-10-22 18:41:05'),
('58a52e340b2d97c28acdb9af51f1d9209c9d531e9a7fb1a790b5f6091d5d958a3f35a1fc37285098', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:21:20', '2023-08-14 07:21:20', '2023-08-14 11:51:20'),
('58db6182a98559cfd98978180f38de7e6da40b260b0876f4d8af0cdca87a3ea15f909d0377cecc6b', 1, 1, 'personalToken', '[]', 1, '2023-03-07 04:02:33', '2023-03-07 04:02:33', '2023-03-07 08:32:34'),
('590d4ffd68a49c7cbd1cbf7d552f85d4193fd208076c365b84127c9eb70c6f7117ba0a480bc9247f', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:40:30', '2022-12-26 09:40:30', '2022-12-26 14:10:30'),
('5925fb740af221d2e4caf3ab657a589e89cd31197c2c3ffd0886d2da59b9e6b1319f9fc9a597edc2', 1, 1, 'personalToken', '[]', 1, '2022-09-30 05:22:44', '2022-09-30 05:22:44', '2027-09-30 08:52:44'),
('593083059bae8c775919113f5b87fcde182611e7c783c688f5e97acdea52e65773aed6d16f99a300', 1, 1, 'personalToken', '[]', 0, '2022-10-22 10:17:05', '2022-10-22 10:17:05', '2022-10-22 14:47:06'),
('5952a314745bca65d178f5c11a05d9c438fbc36937d561e3eb41ea38b0974eb82fe60e3cc39e704c', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:52:55', '2023-08-12 08:52:55', '2023-08-12 13:22:55'),
('5953429e415d4794a9fef97091ddebd6c2fd3c228382d1b585ddcd478a603704963323fbf1a6b85f', 1, 1, 'personalToken', '[]', 0, '2022-08-25 04:00:52', '2022-08-25 04:00:52', '2022-08-25 09:30:52'),
('59832cfff60c971acdcec19503742a6a23864a08e5160eb335f6278c591cd297f9002299fd94c4d4', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:27:28', '2023-11-17 15:27:28', '2028-11-17 18:57:28'),
('5983e7db4e3a47448aec1042ad19b1329a91d63bf24be05bf4b043e51cff63d2de5828d3a1318450', 1, 1, 'personalToken', '[]', 1, '2022-12-29 16:14:31', '2022-12-29 16:14:31', '2027-12-29 19:44:31'),
('599dfe4bc4ceb8bbc3833ee4ef39c5a95dfa4115ce28b46624db7771274bad2db1d4cf202534f8d3', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:16:56', '2022-08-01 16:16:56', '2027-08-01 20:46:56'),
('59a2d6320d0638b14fe0f5164fb2e26b9fbe62c7988090d33314eaf1bda6f6715c45eeaab977ed13', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:49:40', '2023-02-05 17:49:40', '2023-02-05 22:19:40'),
('59bbce681afd4459ca28aae4bb7457c80b20144a67b7ab1e8c40952bb5a4bb6fc590dd37b96fceb1', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:41:14', '2022-07-02 12:41:14', '2022-07-02 18:11:14'),
('59dcf534e8429d4c17b16dc95a5d586ebf6edbd8ccc8f5615eb2047ded801a165e15f84483a83a3c', 1, 1, 'personalToken', '[]', 0, '2022-11-08 02:35:27', '2022-11-08 02:35:27', '2027-11-08 06:05:27'),
('59e50390a1cdc4e14e687c4c953019629a2d71543e68a1df0b8bfc4cba5995abdcdd3803667ba498', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:24:09', '2023-01-06 12:24:09', '2028-01-06 15:54:09'),
('59ea45d6a5acade287786e527f4cba117c3c7ad9d765cd6b05a36d9888c2a9ad321f2618c2bccff2', 1, 1, 'personalToken', '[]', 0, '2023-05-08 13:23:23', '2023-05-08 13:23:23', '2028-05-08 16:53:23'),
('59eb125e8e5943398d0e7dc0407e288be834aad31edd12ad49c3f862f565ad774061314270d4e610', 1, 1, 'personalToken', '[]', 1, '2022-12-11 12:10:26', '2022-12-11 12:10:26', '2022-12-11 16:40:26'),
('5a06a1353aca3e6651b91d3edf9906ee56906bdda93f125bcd2eb72fda075c07c31d51e09554acf5', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:47:30', '2022-12-26 09:47:30', '2027-12-26 13:17:30'),
('5a126359730acdf31eecf1180906d6c821032375b4ac8be982cee478a4e46fc8521e5175d614cb96', 1, 1, 'personalToken', '[]', 1, '2022-12-06 10:22:27', '2022-12-06 10:22:27', '2022-12-06 14:52:27'),
('5a25d824d74b93d78e2a80c65ae50574e30e7d4af0657629242b3a552b7ece7fb1cd65aea2577c20', 1, 1, 'personalToken', '[]', 1, '2022-12-29 17:55:43', '2022-12-29 17:55:43', '2027-12-29 21:25:43'),
('5a3f5c4791145768bd076e0704984f562192869ab3fbdab102b206e02b7b65dcda28aeaaf46f1537', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:39:52', '2023-06-30 09:39:52', '2023-06-30 14:09:52'),
('5a43fe7c17abbf35d1a23c534ff9ba1c86e089041545cff4ab9a9e7f6a27b7ae5d01edaa9092fcbb', 1, 1, 'personalToken', '[]', 0, '2023-05-28 06:13:57', '2023-05-28 06:13:57', '2023-05-28 10:43:57'),
('5a6db7020fdf6334c9f1a3e5f7745e77d3c783cd94201808544ce3d1bd43ee53d1dacfb49f0f1a93', 1, 1, 'personalToken', '[]', 1, '2023-01-07 15:42:46', '2023-01-07 15:42:46', '2023-01-07 20:12:46'),
('5a742f41759176ac7885b2477b266465077d0b6e0eb3a8b453fc26e9166a117263835e6a0dcd5502', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:27:50', '2023-05-16 03:27:50', '2023-05-16 07:57:50'),
('5a92f970996d02bb1fc76bacd2c3ac2117a82298f18cc4ade0b7ba8eb15d8324d54c34d0e9b40487', 1, 1, 'personalToken', '[]', 0, '2023-08-14 06:46:51', '2023-08-14 06:46:51', '2023-08-14 11:16:51'),
('5ab6d0cc7ca703ecf8148bcdd09acb2413011e1b0f98e7dbd79728784bdf12c408767b8a77290872', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:47:37', '2023-11-17 15:47:37', '2028-11-17 19:17:37'),
('5ac3eeb31fcf0b446c4dc5f2c9afbb0fcf74670ed4a3d2ab1e4f8d24c12aae1e7b26daf08598e54c', 1, 1, 'personalToken', '[]', 1, '2023-09-09 12:24:24', '2023-09-09 12:24:24', '2028-09-09 15:54:24'),
('5ae91bfe5ce4852b202ba56ccd241303933bcc9cb536dfd6aac0897a5636ae19f50e197d60eae0fd', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:09:04', '2023-01-19 13:09:04', '2028-01-19 16:39:04'),
('5af2350b873869cffadeaa5a7884d1d632da0517d43fb9d6910dd99614551e397767daf604d6361e', 1, 1, 'personalToken', '[]', 1, '2022-11-12 02:39:59', '2022-11-12 02:39:59', '2027-11-12 06:09:59'),
('5b05eb208f98724d3d0269a5ea565bd01f56ab438a6766dccf643e5d2d1fa337cad421e02119ea61', 1, 1, 'personalToken', '[]', 0, '2023-08-14 03:07:47', '2023-08-14 03:07:47', '2023-08-14 07:37:47'),
('5b33bbb11b8f4bb69bdd9fe1390c230adc1d0b97d3c88901dd3e99a4a0d09de3ab46ddd61303fce3', 1, 1, 'personalToken', '[]', 0, '2023-03-25 11:24:21', '2023-03-25 11:24:21', '2028-03-25 14:54:21'),
('5b6ba2719c7fc2e30e73481d179343e3c6351b1ad67cb635617f3912a70f63555ba5f2dfa0e49dc5', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:26:06', '2022-10-14 13:26:06', '2022-10-14 17:56:06'),
('5b6d63e9bd3027bb63e5d2ec31f28c5f1ecd5c3ec117c2a14feb935f068afbdc7bfb5589dcc2e38a', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:27:18', '2023-01-20 11:27:18', '2023-01-20 15:57:18'),
('5b7b8b816ce412b8805b79f33f50c6ba91cc690b40829ea5b231f5b259610d6bd608e4b2ce82f88a', 1, 1, 'personalToken', '[]', 1, '2022-07-13 09:30:54', '2022-07-13 09:30:54', '2022-07-13 15:00:54'),
('5baf845e46c3d98ba9184012c105d9531375720a07c9d6b3fb0b19f69384ecb25e325edf53f79555', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:30:49', '2022-11-21 02:30:49', '2022-11-21 07:00:49'),
('5bbb78a1f0d7bd22f063d5fcd04b11049e6e255c478f23b83997b9a23410149fc2db0a59b3169275', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:25:00', '2022-12-07 09:25:00', '2022-12-07 13:55:00'),
('5bdafdb91d43239f2447fd1f44828d627336b3b2bbd7f1c99dd623d12b1175175ffb5ffa1367b77b', 1, 1, 'personalToken', '[]', 0, '2022-08-24 02:51:08', '2022-08-24 02:51:08', '2027-08-24 07:21:08'),
('5be047550786c5622888510cd4e92ed59cb7ecd679baba08d9d89fd061719692f3738d287ff3054e', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:11:34', '2023-08-07 08:11:34', '2023-08-07 12:41:34'),
('5bec057d69a5e6e4f492639a450934cd0636a58912f2d5c379e02c0a29ffffe25da684c920884566', 1, 1, 'personalToken', '[]', 0, '2023-02-03 13:33:52', '2023-02-03 13:33:52', '2023-02-03 18:03:52'),
('5bf2b1f380fc508436e1c78ecedb63f31145fd177c555fdfc20377454848f7b6f8b337ead7f29560', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:32:16', '2022-07-12 05:32:16', '2022-07-12 11:02:16'),
('5bf85ca2bd60452a6e837a4a8fb060768bcf06ecb0661d0a94c26d0b7a694970f1e01c209a23d430', 1, 1, 'personalToken', '[]', 0, '2022-12-15 16:24:33', '2022-12-15 16:24:33', '2027-12-15 19:54:33'),
('5c3a647d7c275c25bca0f233038a5ed8dafb6e23dfa5026732d13f6dc8d4b49ccc60cbe9d1e3bb5e', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:39:14', '2022-10-22 14:39:14', '2022-10-22 19:09:14'),
('5c4eaa58d8843bd9a55bf44b442dedd13e99ca312a10a278ee956d838b02f3353c665e2d2185cc81', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:03:02', '2022-11-14 04:03:02', '2022-11-14 08:33:02'),
('5c786b599dd910f18a3023aed594a632cecbeba7a66ef25bdcfb987e4efc1d77447a57ce68c33069', 1, 1, 'personalToken', '[]', 1, '2022-12-12 18:59:38', '2022-12-12 18:59:38', '2027-12-12 22:29:38'),
('5c860c69476b0185f3ffa84d0bfd7768c806c2354bcf84c13140d750d07f6bc6346f065588013b15', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:20:15', '2023-09-27 13:20:15', '2023-09-27 17:50:15'),
('5c92a52efe6f6f00675cf292094bfcee8c8997f8cd36bf046a015fe58ddb1e41069c090b53bacfed', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:24:21', '2023-04-11 08:24:21', '2023-04-11 12:54:21'),
('5c93aa0dc716be070b42ad797e085c932bebf1ea3325b05eabf296a41fd433758aac4380ee3f0a6b', 1, 1, 'personalToken', '[]', 1, '2023-01-28 14:26:10', '2023-01-28 14:26:10', '2028-01-28 17:56:10'),
('5c97659dbf42caac5420f973646ab64a3611c9efe835e4701242f760bf7f4bb69d4537a887a77246', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:02:52', '2022-07-12 09:02:52', '2022-07-12 14:32:52'),
('5c97ffcdd5b8a6309d0cd1b52a33d2b26e7975b226b7741aa9d9d935dfd3971a353011910a3d2083', 1, 1, 'personalToken', '[]', 0, '2023-04-07 04:33:48', '2023-04-07 04:33:48', '2028-04-07 08:03:48'),
('5c9c30e8038b05a58d3976e5c594eb0ee6ef55a4ce14d4d57f2c59bf7e7e5de0b275498e85049c72', 1, 1, 'personalToken', '[]', 0, '2022-11-07 12:45:53', '2022-11-07 12:45:53', '2022-11-07 17:15:53'),
('5cae72699694556d45bb52eee333030edb01facb3dfc4bc8e3ccc0d265b00d942faa1c19b1a5586a', 1, 1, 'personalToken', '[]', 0, '2022-07-25 08:10:37', '2022-07-25 08:10:37', '2022-07-25 13:40:37'),
('5cbcc60a61986f0d843b999a6e22201a38520b87fc950d8e881802978bcb0cedf10fd5f5cc596672', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:04:44', '2022-08-28 03:04:44', '2022-08-28 08:34:44'),
('5cd2bdcda8bc6e7372a15bafa10c8d8c03af344837568f6ab123c422d0184104e23b592ad08d1a92', 1, 1, 'personalToken', '[]', 1, '2022-12-12 11:50:10', '2022-12-12 11:50:10', '2022-12-12 16:20:10'),
('5d00a2fbee3c34348baee91dbe1f5a0c7fe676232651b9e56b09b41d5ff9a0c36703051a54f06f27', 1, 1, 'personalToken', '[]', 0, '2023-01-15 13:48:46', '2023-01-15 13:48:46', '2023-01-15 18:18:46'),
('5d2d6340c780ea4fe764c71c7dee949f354e4e5340d079cd111a7f9996920ae8a3668f3f4c687d77', 1, 1, 'personalToken', '[]', 0, '2023-01-19 14:00:00', '2023-01-19 14:00:00', '2028-01-19 17:30:00'),
('5d2eecd2d42ad0da4cd9e609b64c94c32c50351fc86b0136093ee1b46d82197e7655165d6e242740', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:50:52', '2022-08-03 03:50:52', '2027-08-03 08:20:52'),
('5d3fa13e8ea53277754347fccdbd8ea04ce86b772ee05c3529687bcb802af14aaf932fcee2828e78', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:59:13', '2022-09-26 07:59:13', '2022-09-26 12:29:13'),
('5d40d7621eddbfc14b90b79422ffb06c376fdfb792e24629915e04136142f4c9fdf62e5efb229005', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:24:57', '2023-08-09 01:24:57', '2023-08-09 05:54:57'),
('5d5e46ba70f7d0bbd3f736c3d43d5668148fd02fbcabdcb4dbc2d11c44232bb24fb7a2b156f63d38', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:39', '2022-10-14 13:23:39', '2027-10-14 16:53:39'),
('5d8dbbede4e7dabe1544aa7a093d4d883d4044d3740967492ea0c5e77b5e6aac88e866b9c59fc7a5', 1, 1, 'personalToken', '[]', 0, '2023-05-23 06:17:01', '2023-05-23 06:17:01', '2028-05-23 09:47:01'),
('5da306bb8424c76c63243896b032ec59f99efd18c1dd554baeb02983126df0eaa05b1189986c924c', 1, 1, 'personalToken', '[]', 0, '2022-08-18 12:13:59', '2022-08-18 12:13:59', '2022-08-18 17:43:59'),
('5dc0b3cf3c2cca530cd333306f43bf08e27338a41e699ae9c5ff042d1c830b93306d5ca05af3b1c1', 1, 1, 'personalToken', '[]', 0, '2023-05-31 05:19:53', '2023-05-31 05:19:53', '2023-05-31 09:49:53'),
('5dc184b10b217745549b6d8b31f0a7aa6ee289074c2a7be84b0422ccb56b7c13b23ac7dfce1e9a61', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:59:55', '2023-06-30 09:59:55', '2023-06-30 14:29:55'),
('5dcdbe788ab7e67ee6d6818eb136a2c23b20fd49627637a246b048326f91458454d559837b5a9188', 1, 1, 'personalToken', '[]', 0, '2023-05-16 21:41:00', '2023-05-16 21:41:00', '2023-05-17 02:11:00'),
('5dda776fa6da28ed27a6e830458195ffd7da097c25b1e4dc4cc4c557989c1e6592daa6c3e1e79d5a', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:43:34', '2023-08-12 08:43:34', '2023-08-12 13:13:34'),
('5de1be671aa3b914dfde6d2e5fb436d980320c48da72d17da5fe8558fa00d13636703c9f85e3b67c', 10, 1, 'personalToken', '[]', 1, '2022-10-28 17:24:20', '2022-10-28 17:24:20', '2022-10-28 21:54:20'),
('5de5e03ad0f70b9be6c89a2a4446cbba91c3010018a8320f81f4ca179deb3d225b4f113c6b2f8934', 1, 1, 'personalToken', '[]', 1, '2022-10-18 11:32:18', '2022-10-18 11:32:18', '2022-10-18 16:02:18'),
('5df86c926262b272cca0e9defbc8776c871edff75693eb2222af84ff3de16ec9d3641c3fe0e8be0d', 1, 1, 'personalToken', '[]', 1, '2022-12-26 16:28:55', '2022-12-26 16:28:55', '2027-12-26 19:58:55'),
('5e0858eb1a0ec7d9df9510bb463ae7d3020993dad7a36a83bb8cf441672c09b4a28373688928e3ba', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:28:05', '2022-10-14 13:28:05', '2022-10-14 17:58:05'),
('5ea88506bef7aaae20be4998d89128dc4c8cd2c78e2fe8a09ce067231dea11ccb84f788c511019b7', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:13:53', '2023-06-21 05:13:53', '2023-06-21 09:43:53'),
('5eb9891a11b5b3b8d6cbe63e8162351d89991f1a862ef950343c61304ce673f2d58d231a862fcefe', 1, 1, 'personalToken', '[]', 0, '2023-08-07 05:42:28', '2023-08-07 05:42:28', '2023-08-07 10:12:28'),
('5ec74e68068cc7bc83092aef87ba46e0b6d893c29ca62570df8e005bbd0cf95442ee707ab184c572', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:54:16', '2022-08-28 02:54:16', '2022-08-28 08:24:16'),
('5ec87cd338a96d3a5ba9de705b532e56145f73d2b9fdc5489e2d713cd9d177a5885838593acd398e', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:33:50', '2023-08-14 07:33:50', '2023-08-14 12:03:50'),
('5eedd22abd726892b4008e5ddf13bc87c1924e9a6158bd639abd2cb3e7663dc214e343592de51409', 1, 1, 'personalToken', '[]', 1, '2023-08-22 04:44:27', '2023-08-22 04:44:27', '2023-08-22 09:14:27'),
('5f2b3cd4ce42a522b6d0fbdd330e0a7612b9cd17f800f755890d74ec689d50b8c5e9e99e4b6dc0e7', 1, 1, 'personalToken', '[]', 0, '2022-12-06 06:57:16', '2022-12-06 06:57:16', '2022-12-06 11:27:16'),
('5f2d9a0a5c41505d7cdd23c6bf62f1b85df095fd65a6f3c50fe89e48085bbfd51c13303c312c3287', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:41:31', '2022-12-26 09:41:31', '2022-12-26 14:11:31'),
('5f49377b97fa36273100e18bb21f1df3af6f0e6a869e970eae5f1b601e89eb059f0f201f5c042e49', 1, 1, 'personalToken', '[]', 0, '2023-07-06 09:18:10', '2023-07-06 09:18:10', '2028-07-06 12:48:10'),
('5f9dd0196fd77aa96a1ff88e1e8cb9a0b71d2597668ab2c498e8478069aa7356502cc07d22542667', 1, 1, 'personalToken', '[]', 0, '2022-10-19 11:33:08', '2022-10-19 11:33:08', '2027-10-19 15:03:08'),
('5fce265b185c4086e83ad4331ae8566a7bc4aaa02010a293055c75a6af38c5b34d67f501f359c9ac', 26, 1, 'personalToken', '[]', 1, '2023-03-05 14:16:56', '2023-03-05 14:16:56', '2023-03-05 18:46:56'),
('5fde00a8170c01db994611091b3a92f5154b15d314aead00e4e4285fd3d0ef15dca0c91f398b7613', 1, 1, 'personalToken', '[]', 0, '2023-09-28 10:04:16', '2023-09-28 10:04:16', '2023-09-28 14:34:16'),
('5fe72c1c3f3504a6cdd7c999cb6e89f86fd76d05a6178a8ace8e6d5a75a216ee05f80a1bf9cfc904', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:29:34', '2022-11-15 05:29:34', '2022-11-15 09:59:34'),
('5fe7356fe761ca1bc2804650e9108c04a1fafad10e310a3ecc0123faaebd11ab8ae755d5bb2ca794', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:28:49', '2022-07-12 05:28:49', '2022-07-12 10:58:49'),
('5fe73b63eeadcdcf9441c42d647b85f29977c2c196fa167b158bb5d44e8afe750bda27aa5c6c40c8', 1, 1, 'personalToken', '[]', 1, '2022-10-28 17:51:50', '2022-10-28 17:51:50', '2022-10-28 22:21:50'),
('5ff626d4195ea4d365e2590091070a23c4d9b6af30e2d992b924ba9cd6a46a12c7b34c01ad792258', 1, 1, 'personalToken', '[]', 0, '2023-03-13 10:09:16', '2023-03-13 10:09:16', '2023-03-13 14:39:16'),
('600469fac268f61bbfae4cf87fb23045b76c6ca75b92e9d435b9432547eb32419f145fe56746b3f5', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:31:55', '2023-07-10 11:31:55', '2023-07-10 16:01:56'),
('601f4862e67aeab207116b66c1cf9847fe2045d69bfcff90e9b645916660954bf9a6f57c97db3e74', 1, 1, 'personalToken', '[]', 1, '2022-07-10 15:21:47', '2022-07-10 15:21:47', '2027-07-10 19:51:47'),
('603b348a9805018ef25903b275c0b2bce83d4887aa769898b085dfe440b652b413b9fb46cb5bb6c5', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:01:22', '2022-12-06 07:01:22', '2022-12-06 11:31:23'),
('603d0e2e561911d559f96a35823c263510e30ba0d1231b0f026a5bf3941d230c03f6599a6947035f', 1, 1, 'personalToken', '[]', 0, '2023-03-04 11:48:11', '2023-03-04 11:48:11', '2023-03-04 16:18:11'),
('605b82228a98eff9da39a1583bd93b76b585714f3ea14f53532757b33e7f4414a9deb66a9fffcca7', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('6061cd494f67927d51460f407de17f6f52040a1678021894ed68fc754e80672aac3ad6a354182995', 1, 1, 'personalToken', '[]', 1, '2022-11-01 16:10:34', '2022-11-01 16:10:34', '2022-11-01 20:40:34'),
('60695377dd6fd6b8dbb5e2f87e36dcc46d384e000db2dd7502adb20dc16daf1d08d3bdec979d5b82', 1, 1, 'personalToken', '[]', 0, '2023-04-29 10:10:44', '2023-04-29 10:10:44', '2023-04-29 14:40:44'),
('606c33ed4d042814ebee4dc74c4e5b4e456c75fb5a567f2c685adb4cb8f76f3447244cbfc33ea9d2', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:56:27', '2022-07-12 08:56:27', '2022-07-12 14:26:27'),
('607e50674e3141e20db9d40d7b86edbb2ee9c49b6f03d68fe2ec866fbe1c6de2ab24fadb9b28db25', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:56:04', '2023-08-09 01:56:04', '2023-08-09 06:26:04'),
('609396294a696b6b84a3b29ea3af67ebbd7c30500f5a4978d398c7bd5cf6899d7570ed3d4d504fa5', 1, 1, 'personalToken', '[]', 0, '2023-07-11 09:41:48', '2023-07-11 09:41:48', '2028-07-11 13:11:48'),
('60a53b7ebd87f2625ad127cab11614a18a213ad0dfc6cb3916ed7655ac880c56a78220b23c817151', 1, 1, 'personalToken', '[]', 1, '2023-04-13 06:03:42', '2023-04-13 06:03:42', '2028-04-13 09:33:42'),
('60a5fd3a8400319139fc339dac6b4dc86f3de6d023cc92c3972796ec75db76db38ef25d6da418196', 1, 1, 'personalToken', '[]', 1, '2023-02-13 12:03:39', '2023-02-13 12:03:39', '2028-02-13 15:33:39'),
('6122c08b399c49270d80ec95aa5b5e9725a672d101e438700f218d898895b2ea6c7618b93ed06ab8', 1, 1, 'personalToken', '[]', 0, '2023-05-15 22:35:56', '2023-05-15 22:35:56', '2023-05-16 03:05:56'),
('61256c5d1ce05da8bb67b4bdc31c78b6193b9d712b0faff02242cb9ad1f42fcd5cf3460b4724d3a6', 1, 1, 'personalToken', '[]', 0, '2022-11-04 16:26:17', '2022-11-04 16:26:17', '2022-11-04 20:56:17'),
('618ab2073153843788eb15cca741669ea2df64885dde90ff60d96a1ddad06867718b7ccc68fc1c6a', 1, 1, 'personalToken', '[]', 0, '2023-08-21 02:18:59', '2023-08-21 02:18:59', '2028-08-21 05:48:59'),
('61a24e425713507a7ad19fc9156ab8ec50c898be0af836dc1639e85cf2cfb9acfede89d19aee77f0', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:08:47', '2023-08-12 08:08:47', '2023-08-12 12:38:47'),
('61a7bf768f9abea9ea2c00a234fc66a661c768139b17b2475f4068dbd7d90ba13ac6b0746d82fa65', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:38:43', '2022-07-06 03:38:43', '2022-07-06 09:08:43'),
('61ac1d3ce9c0c519908fba625abaf3ee847643ccc3297c9c2bfe238353de006aaf54159208858dfd', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:04:38', '2023-06-21 05:04:38', '2023-06-21 09:34:38'),
('61d7c10997a3097d85883951c57a0560075fb29a3decfc6fafd91e52bb3a8cbed95f9396a7e35a98', 1, 1, 'personalToken', '[]', 0, '2023-09-06 14:36:45', '2023-09-06 14:36:45', '2028-09-06 18:06:45'),
('61ef1af301f9f7285ff7136ffbaab69807e10c125545188dd7d816e01dd33987be766952e7c99ea2', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:49:11', '2023-02-05 17:49:11', '2028-02-05 21:19:11'),
('62136f56dac0cd38b70bcd0bde561492b1b483bb474864b8ec13dc766a4c4f82164b00ba92546b68', 1, 1, 'personalToken', '[]', 0, '2022-10-22 09:31:03', '2022-10-22 09:31:03', '2027-10-22 13:01:03'),
('62179fcc4a402cea017f218e49800034c9f6d40b0acc4e74569134eb6dd771c953c0c8aff5c2ef89', 1, 1, 'personalToken', '[]', 0, '2022-12-13 05:08:29', '2022-12-13 05:08:29', '2022-12-13 09:38:29'),
('62518502d4dea9361a4aad13790d9ffc0209b9eb06c30bbe6e50b4181d13da819ea882478e05f374', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:14:46', '2022-07-25 07:14:46', '2027-07-25 11:44:46'),
('62597eff92304b5ca36cdf12d1dc00c478493486003bc855bc81128b8436871e93444607cf1787df', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:36:41', '2022-12-06 11:36:41', '2022-12-06 16:06:41'),
('625c51f5d6d5f7cbe1e490671f4471d2133b1dee551e6d351c5e624b844223faa11103285f88eeb7', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:18:01', '2022-07-25 07:18:01', '2027-07-25 11:48:01'),
('627a9f563810d54f2648530d9b1867acd9d7729e9703448dd99d2694daadebab4c06bc2169c9babb', 1, 1, 'personalToken', '[]', 0, '2023-05-21 09:23:46', '2023-05-21 09:23:46', '2023-05-21 13:53:46'),
('628fe342ee7fecd0e934d3eaea9c186d76a2797181ecc436352fa9ace17d6bc4acf0f3dd74b56bc2', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:04:00', '2022-10-24 03:04:00', '2027-10-24 06:34:00'),
('62bf37917f4ee7ac35cb55fa4235731799e4dff9dcd6eafe27177d0d2ad0910194c82282568cc753', 1, 1, 'personalToken', '[]', 0, '2022-08-27 02:17:49', '2022-08-27 02:17:49', '2022-08-27 07:47:49'),
('62c552b13706ab05372022e8e210fd99e015ca5c33b9c5ef2295293791ed7141175d3f68e8038fec', 1, 1, 'personalToken', '[]', 0, '2022-11-28 17:35:28', '2022-11-28 17:35:28', '2027-11-28 21:05:28'),
('631dd4ba88c83c7425531c05968b5b9528e3fd8808ae8008afd9cdd2daa3bc04258e960e844c113f', 1, 1, 'personalToken', '[]', 0, '2023-09-28 06:15:59', '2023-09-28 06:15:59', '2023-09-28 10:45:59'),
('632046f4861cc0b9fdf0dafc21299c293d320da0440d78c01f65106cd5a3bb9bf57bff244fdc8c7a', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:00:23', '2022-12-26 03:00:23', '2022-12-26 07:30:23'),
('633b75daa1103382c816fd2713b433864885f99c050a5bf93edcb362da5041c484b544c38f49fce9', 1, 1, 'personalToken', '[]', 0, '2023-10-18 07:13:25', '2023-10-18 07:13:25', '2023-10-18 11:43:25'),
('633f62a2731a7d05cc85d320f84a4dccfe707dd6c296b1944ae043deed6896d4a699e66fdfbeb128', 1, 1, 'personalToken', '[]', 1, '2023-07-10 02:41:10', '2023-07-10 02:41:10', '2023-07-10 07:11:10'),
('6344d12dabe1038f1f739be210dcf9ed0cabdd751759050cfd933f69628659749674eaa94d01b39f', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:07:45', '2023-01-19 13:07:45', '2028-01-19 16:37:45'),
('63455f2654266aa640c18c7ff4242839368457faff1fa78da63a5e8d13fdef5729a7afe3f263d2be', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:23:41', '2022-12-06 14:23:41', '2022-12-06 18:53:41'),
('63507688d102fa34d490b3998869f6b8a0b3cd26843e1464747f0865f4a690e5e56a5bff690f22df', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:46:23', '2023-05-16 01:46:23', '2023-05-16 06:16:23'),
('635d0c2278e88f5c667669e44e71a3200342d512dcc65b36003d003926c344c4db8e16b99b667507', 1, 1, 'personalToken', '[]', 0, '2022-07-19 04:22:00', '2022-07-19 04:22:00', '2022-07-19 09:52:00'),
('639a87b28d276b32657a5a2cab44137dea9be8782167b026b0b192939957f81e24f887ad98fd79ec', 1, 1, 'personalToken', '[]', 1, '2023-02-13 17:39:51', '2023-02-13 17:39:51', '2023-02-13 22:09:51'),
('63b628e844a3ca7266288803cc9c4b1ebe8d35372aaed2b63f5ee4477140506aaa6ab0066071e9ee', 1, 1, 'personalToken', '[]', 0, '2023-10-18 15:24:40', '2023-10-18 15:24:40', '2023-10-18 19:54:41'),
('63bb95c7f2d9ee5b32c0f9fa98d9fe6bad6b31f397c5ba16ffdc3437426ec1d8fb182138fdc9f188', 1, 1, 'personalToken', '[]', 1, '2022-09-27 06:51:36', '2022-09-27 06:51:36', '2022-09-27 11:21:36'),
('63bcac92587e432a9d295a8d3dc24ef8c3ae8241e7e3ddbbac38109dc666c86762b2b800aaaf1b3d', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:13:51', '2022-07-12 09:13:51', '2022-07-12 14:43:51'),
('63be0d2177f5f55a17dbebf048e3781658b22b57380ee96a7a8acad135be2f6e8ab926325a49d68f', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:08:57', '2022-10-22 15:08:57', '2027-10-22 18:38:57'),
('63df6c450a3a86b726c56c47ac875671a905a4193a463af98fb5af197e5e83ac1e31d29ef3b9763e', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:03:48', '2022-12-06 07:03:48', '2022-12-06 11:33:48'),
('64762f130fdc5503a3210af5c34104f982e8b4bab8934600d41170a03fcf15d88f8d09d6e96d9969', 1, 1, 'personalToken', '[]', 1, '2023-01-21 06:05:15', '2023-01-21 06:05:15', '2023-01-21 10:35:15'),
('649cfd5f58f1e44388a1fa183ab5319b0c3f077248e16262ffb049141add15633772cfc194fea4eb', 1, 1, 'personalToken', '[]', 0, '2023-01-22 12:26:38', '2023-01-22 12:26:38', '2023-01-22 16:56:38'),
('64ad4ce9776208fa9a502df1522700807e4e05f781ca37b17c628bb8f65cba2ecd0d783badea90a4', 1, 1, 'personalToken', '[]', 0, '2022-12-14 05:21:18', '2022-12-14 05:21:18', '2022-12-14 09:51:18'),
('64c4407699f05dc3e3c6bf5dad4abd21e29575e7da3c6a7b00fb75dce4af2b5b223be4b2b886061a', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:45:58', '2023-04-11 17:45:58', '2023-04-11 22:15:58'),
('64d8f3f3fc10443ad7fc5b61438828774e03384d41f5a4b58fe95d95355d46d5130c395e4b9bc415', 1, 1, 'personalToken', '[]', 1, '2023-01-07 15:19:39', '2023-01-07 15:19:39', '2028-01-07 18:49:39'),
('64e6c34bebc6b50435105b30074404afbf63b93363882da59359d9dc01217997dc90bf3957faec29', 1, 1, 'personalToken', '[]', 0, '2022-08-24 03:28:25', '2022-08-24 03:28:25', '2027-08-24 07:58:25'),
('64eae9f57a7fb4502fd72c18661d83935d01cbee3828d2a5198cff63ca7b5a79e4e0e74800a1107b', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:58:05', '2023-08-12 07:58:05', '2023-08-12 12:28:05'),
('65268f8a272a87f0fe665c0cafbb1aab74f04b5d6439d53bc65d3633d8255004d8f79f0c318e67d1', 1, 1, 'personalToken', '[]', 0, '2023-05-28 06:03:20', '2023-05-28 06:03:20', '2028-05-28 09:33:20'),
('652bac30403c6bb8259d513da983bc295f3dfa6d4a498d0a8feecb9a910258d90a57f16c45ba1200', 1, 1, 'personalToken', '[]', 0, '2023-04-29 06:00:10', '2023-04-29 06:00:10', '2023-04-29 10:30:10'),
('65456e9f0a6b41d4c29472f1c993807bf6d4a4c2dc536f58e8919d97be7692829a1a2e12a3cf6a5a', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:36:52', '2022-12-26 03:36:52', '2022-12-26 08:06:52'),
('6568fe78f1fb430f14f5e86c9ee7c86b7be47f768a7801c84c006026214c56aec5d1d4fdcffba738', 1, 1, 'personalToken', '[]', 1, '2023-04-15 17:25:45', '2023-04-15 17:25:45', '2023-04-15 21:55:45'),
('658a9e855f6805a9827a4cba06337c5afd608b1b91fe04f9b56436f2e56c6bb1dbcdbbeec3a31ecc', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:00:58', '2022-07-12 09:00:58', '2022-07-12 14:30:58'),
('6597d700b5b23ec383ac9b9ffed0b793f45e053a5aba66765a5a4d832db23653c87191d70cb28be5', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:23:49', '2023-04-11 17:23:49', '2023-04-11 21:53:49'),
('65a255865c785bc775e36651d0390f0c2f5930a3c083cd2d27694f86eb19d99a77ca9bc394f347d9', 1, 1, 'personalToken', '[]', 0, '2023-07-12 00:28:34', '2023-07-12 00:28:34', '2023-07-12 04:58:34'),
('65adc04d18dfad3b1bbabe6a756cea4f9de2e88a0e828fbb19da038fb6a883764038027bcd1e4768', 1, 1, 'personalToken', '[]', 0, '2022-07-06 07:02:39', '2022-07-06 07:02:39', '2022-07-06 12:32:39'),
('65b4184320cc07edc84c287c56602edac3c47b19c07c4455bb8c4395e456737bd687a50c136ef7f1', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:14:27', '2022-08-01 16:14:27', '2022-08-01 21:44:27'),
('65b9c654ba6ce3c9cc352e0d7266ff517c35d7625bc60191a87b69f610e7a677c5ef766f02a12332', 1, 1, 'personalToken', '[]', 1, '2022-12-11 02:09:09', '2022-12-11 02:09:09', '2027-12-11 05:39:09'),
('65cd3f6ab2f95e6e78da8759dde486ef673a3cd75e040730c03a8d428e3cd1be98c4def4900eec60', 1, 1, 'personalToken', '[]', 0, '2023-04-03 07:11:52', '2023-04-03 07:11:52', '2023-04-03 11:41:52'),
('65e7bcdb9ecd03a012b20ea687f8fa42f01c1787cdd33354b704226156e4bd496cce39b572e738cb', 1, 1, 'personalToken', '[]', 0, '2022-11-15 07:08:32', '2022-11-15 07:08:32', '2022-11-15 11:38:32'),
('660a0ab151350ce31bbbab85c113b40ef62c05e9b723302b79fa67ec48949935346b2d30037a1627', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:00:50', '2023-08-08 08:00:50', '2023-08-08 12:30:50'),
('6628311e9ddbd1c57374af6913241edcdc132b8531e8abe41d258c32b02af5927a2640a298c5bcb2', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:55:54', '2022-08-27 01:55:54', '2022-08-27 07:25:54');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('66411e0abd4f190cc2bb2f925432332bc90d97555aa55a5c46f96ac08bc622e8f0f0070985908b3f', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:49:13', '2023-01-06 15:49:13', '2023-01-06 20:19:13'),
('665dc9b8b5473dd53bef352a00ff6969ef4e7c0cace0cff4fedffb1932223697a55561614c0146f2', 1, 1, 'personalToken', '[]', 0, '2022-07-17 15:15:17', '2022-07-17 15:15:17', '2027-07-17 19:45:17'),
('668ebe15b1f9954eef4624d2928ebe2c3d3de5aa97f6b582e54d33c33cc22fa3b9aa874dbc304a47', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:17:33', '2022-12-02 09:17:33', '2022-12-02 13:47:33'),
('66a3e7d4ae6ed1c41ca24f9282b5b34166090b62dfe3d8d2f1795616e388fe6a8da669c5a06768b5', 1, 1, 'personalToken', '[]', 1, '2023-05-16 16:04:27', '2023-05-16 16:04:27', '2023-05-16 20:34:27'),
('66a7845c3837de94a0822dac9effe95fbb76836cfa4183226e952a8d3b56312bfefda2d8ad4dd91d', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:08:08', '2023-06-30 10:08:08', '2023-06-30 14:38:08'),
('66cf14274b12306ea1d911209171c0de6a3da85368ddb38d69bbca410f130d0e81b40a1bc471146a', 1, 1, 'personalToken', '[]', 0, '2023-05-07 14:24:13', '2023-05-07 14:24:13', '2023-05-07 18:54:13'),
('670e40a1d36eb8e9832b5e01722f76592f614fb67895e812941c6d63a7c3376ac9cd05798a94269c', 1, 1, 'personalToken', '[]', 0, '2022-11-15 06:53:51', '2022-11-15 06:53:51', '2022-11-15 11:23:51'),
('673d2f3d4614c3ed7026431a7b3f6ddccb1613cbcfe8d76e6567c9156da3d6db0008328b1ab4c601', 1, 1, 'personalToken', '[]', 0, '2022-06-21 05:04:30', '2022-06-21 05:04:30', '2022-06-21 10:34:30'),
('6772be7c55add59880f9fbabb84f163351d0a5efb5c387c1d6a35cf8a3cf59313d002a8cc401b907', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:14:44', '2023-08-09 02:14:44', '2023-08-09 06:44:44'),
('67a3d3edbe6c5a9885d7fd0aaf2a0055aedd7414b57ec7d0000dcac3184642f333bdcdb72c2c903b', 1, 1, 'personalToken', '[]', 0, '2022-07-18 14:31:39', '2022-07-18 14:31:39', '2022-07-18 20:01:39'),
('67f3e36a12fe89b7be98cc892e328daa5107fb71c24e1e5359ab3848efc8758f99a60b24d361c77b', 1, 1, 'personalToken', '[]', 0, '2022-12-15 16:25:15', '2022-12-15 16:25:15', '2027-12-15 19:55:15'),
('6852837679fd0810da99bc4ed2d6125a30eb444b851a9d23437d92729f35a0c726b870d6ecf61af9', 1, 1, 'personalToken', '[]', 1, '2022-07-13 10:06:46', '2022-07-13 10:06:46', '2022-07-13 15:36:46'),
('688b675dd372f2b1ffe02ff882b35e526651c003797d88b74c3f7390b525b3ef8b45f89d4c279fc3', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:54:52', '2023-08-09 02:54:52', '2023-08-09 07:24:52'),
('6890b8540d010ca6fc5e7b2b702c523eddc12a98effb61fdc0d465b2cff512ce3fd65ad725413c5f', 1, 1, 'personalToken', '[]', 0, '2022-08-29 18:48:38', '2022-08-29 18:48:38', '2022-08-30 00:18:38'),
('6899c69cbeeb51a64bea133b1669f110cb2eedd7039de62681f95079d07830aa0b1cb0694f893e01', 1, 1, 'personalToken', '[]', 0, '2023-12-18 04:45:59', '2023-12-18 04:45:59', '2023-12-18 09:15:59'),
('68b053895117be0d74d54ac86cb519f4375aef0d7ee8a567e21fb940ac1a008d2124b3d0093de7e9', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:46:42', '2022-07-02 12:46:42', '2022-07-02 18:16:42'),
('6929f465dff4fbb62f9dd10c9fc4bf2de65094d8c2c412dd23f525278c3609ec83acc68980c45710', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:46:56', '2023-04-11 08:46:56', '2023-04-11 13:16:56'),
('69514d98769825b88c03d104eacdd431a814bff4c7dba06a0f332d4a6e127d637d97a2bc9be10891', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:53:34', '2023-05-16 03:53:34', '2023-05-16 08:23:34'),
('6957de5c40623a576592537222e40d01eea66b88365c083aa10e1e91906908cd98fc4afbcdd4280d', 1, 1, 'personalToken', '[]', 0, '2023-02-18 15:51:11', '2023-02-18 15:51:11', '2028-02-18 19:21:11'),
('6980786e57b3d5ef3ef4fbd66c297c47e1a7b2306ae4e415cdaa1428ad918bb00a46a98dc6972828', 1, 1, 'personalToken', '[]', 0, '2022-10-18 15:25:11', '2022-10-18 15:25:11', '2022-10-18 19:55:11'),
('69b5f29a290bf6cac856811e560aa88053be9482d25694e3d34f823ffae34a9089e2340928051a96', 1, 1, 'personalToken', '[]', 0, '2023-03-15 13:12:16', '2023-03-15 13:12:16', '2028-03-15 16:42:16'),
('69bbab89a82e91e559322f38998286977342591b1ebdcb62c9987946fc68468d79dc2c898720ccb2', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:47:28', '2022-12-26 09:47:28', '2027-12-26 13:17:28'),
('69c1ef5085a231d7b643c518f4d2c0d9fa62b5f002cc587520af3a7ef10a7ccff7fc1e4ae796862a', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:39:02', '2022-11-12 01:39:02', '2027-11-12 05:09:02'),
('69f07b32c6c3f4446ca5053cb0f8e3271fa971486418abd2aab1da8b3b5f7732389565136cd3d132', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:07:06', '2023-04-12 16:07:06', '2023-04-12 20:37:06'),
('69f0bcb44784dd0333b27619f4cbec0f2d7ba2b95b5be01fe6679e01f77ce77ee03b09cd6541d727', 1, 1, 'personalToken', '[]', 0, '2023-04-06 11:06:47', '2023-04-06 11:06:47', '2028-04-06 14:36:47'),
('6a3c1b6bfc33d3acd86dff188eea7ea1dc4383aeb6aaa850ae62fc416c3a73cdb4d8c4fa60321ea1', 1, 1, 'personalToken', '[]', 0, '2023-12-15 09:44:16', '2023-12-15 09:44:16', '2023-12-15 14:14:16'),
('6a6e4a959dbcc216e8f72f3c30a7a61719e6ef3903c6ae383f470c7261736b41fd5dad8dd4f6a5fc', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:36:56', '2023-02-05 17:36:56', '2028-02-05 21:06:56'),
('6a6e967b33372a35b39bc1cb6d67b0642982287cac87bce1f1a705e974e132a343037ad24285774d', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:18:07', '2023-04-11 08:18:07', '2023-04-11 12:48:07'),
('6a8b576e601720de11d0cc0c68169b1991457f992e331f8cc558b6c0c8e5ca2a094dfdabd27d84ee', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:33:13', '2023-05-15 21:33:13', '2023-05-16 02:03:13'),
('6a97cb8eb488b7a1f4e781173593a13d2e5660157628a633c25c4d07f9e0f851469d6235c203bcc7', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:28:13', '2023-08-09 01:28:13', '2023-08-09 05:58:13'),
('6ad2f561023f3a99f4e40626c70ef02ffa3713dce18168fe5fbfeb3ba10ad0aaca0515e6440bf289', 1, 1, 'personalToken', '[]', 1, '2023-04-13 10:18:39', '2023-04-13 10:18:39', '2028-04-13 13:48:39'),
('6add6b756e6b554c3ea0eb68ca2bea2879eb889b8ea647ef27848d8a6bc8c48ea1093ec0cf3d9bb6', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:02:46', '2022-08-03 06:02:46', '2027-08-03 10:32:46'),
('6af46bcb046acc24579dfc2404e2337cef3c177ab76235c3fbe3847963bec5270eab516c6b7c34dc', 1, 1, 'personalToken', '[]', 0, '2023-12-15 04:50:09', '2023-12-15 04:50:09', '2028-12-15 08:20:09'),
('6b0a997b9ac6a8fcf2f7dc75251d8b631e7f606ddaac705e50d8d5672f8127aeea263fc764c0d328', 1, 1, 'personalToken', '[]', 1, '2022-08-02 15:43:08', '2022-08-02 15:43:08', '2022-08-02 21:13:08'),
('6b2485a982748283c56d41b2409418f49c658de40cda59ddd6706b4e6d84dbddf19f3695860e7dce', 1, 1, 'personalToken', '[]', 0, '2022-10-14 14:25:41', '2022-10-14 14:25:41', '2022-10-14 18:55:41'),
('6b3de264d4a36eb1412e957407d01af2a75338e4900e8498da004d2ab660a6fd12fa0d17650a1abc', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:49:56', '2023-04-08 15:49:56', '2023-04-08 20:19:56'),
('6b3ea069d6512bec985dab114845de7d757699b80a5b61d1415b9f01a93da68fa6d4dc19e180a35e', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:01:51', '2023-04-12 16:01:51', '2023-04-12 20:31:51'),
('6b59539258d2b0dbf78819bcb2db4d681279ac58f5395259d6c7b6d375dd013d4127188e8ed762d6', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:04:11', '2022-12-06 14:04:11', '2022-12-06 18:34:11'),
('6b59f5e4239cb4304dd2f6268613997d3a5865528b6b8959e82136abca9bca583ca04a69151eb701', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:54:50', '2023-06-21 05:54:50', '2023-06-21 10:24:50'),
('6b6e4c8e93d885b0776da55a548b0834c3ccfaaebbdeb9147feb420e8b882f26ca5bc8622abed397', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:42:43', '2023-04-11 17:42:43', '2023-04-11 22:12:43'),
('6b77866b9bb2624f8ca82e5d5f177cdc44d4364aa6f78c88c2ba833dc516a2d1f3b36ca1baf11454', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:57:00', '2023-01-06 12:57:00', '2023-01-06 17:27:00'),
('6b8b51ca6e67a09e3f352530517e4692ba5cebef69da426953542693037bd4fd5496ce7175e933d2', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:43:21', '2023-05-16 03:43:21', '2023-05-16 08:13:21'),
('6bcabb5d706afd8e73d6bf1c149f886e800f57d1dd2cad095d89c853052c9edf835facf262ea0c70', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:23:23', '2023-09-27 13:23:23', '2023-09-27 17:53:23'),
('6bfc8cbc85c2dd498324f9a8a82c5a4f305c2c4e035d20de69da11ed4aec03e64ae7462301adfa4f', 1, 1, 'personalToken', '[]', 0, '2023-11-28 09:16:51', '2023-11-28 09:16:51', '2023-11-28 13:46:52'),
('6c0343af492baa3c8741b5f1c71c7a3a1ba877c1ad06e6339b3755f60c707c94a07e608bb3d62cb2', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:06:09', '2022-11-10 04:06:09', '2027-11-10 07:36:09'),
('6c0d6c1ec9f716472058fdab8af6fb3fe6a972c56030f01ffbf4372711f8c84d0e2d218ffd782f81', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:36:32', '2023-08-14 07:36:32', '2023-08-14 12:06:32'),
('6c656d2ed52ec1ad271602deff1098d4ca8adb3cfd610403cafab572fb5aa40af73331d98f725494', 1, 1, 'personalToken', '[]', 1, '2022-10-22 16:04:55', '2022-10-22 16:04:55', '2022-10-22 20:34:55'),
('6c89415ee636b0de6f3667b383cfddc11d38d81f13e8a93c21702a6f2a49d6746603bfdb682df557', 1, 1, 'personalToken', '[]', 0, '2022-12-06 06:58:18', '2022-12-06 06:58:18', '2022-12-06 11:28:18'),
('6ca0022d45858cbcf75a5e2bbd8ff5532bfd425d723f0b9e70c9f482eb7fc08251dd38e63f0c8a1c', 1, 1, 'personalToken', '[]', 0, '2023-01-20 10:19:10', '2023-01-20 10:19:10', '2028-01-20 13:49:10'),
('6ca044144214195e4310dd2dacabca518f6cb1ad11919ff2791958c6ebdb45753951d3d939c1c16c', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:16:44', '2022-12-02 09:16:44', '2022-12-02 13:46:44'),
('6cd57c94712939049fbd095e4d0bd0124d85cd98148059200f2e4bafcc7a9a0f65d3cb8295ec4603', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:35:45', '2023-08-14 07:35:45', '2023-08-14 12:05:45'),
('6cf55c4c17bc1cb2f5b9f426d4bdf8ba508e0f4832638ba529c52978eb186544c45b5df89fb36cc1', 1, 1, 'personalToken', '[]', 0, '2023-08-12 06:29:47', '2023-08-12 06:29:47', '2023-08-12 10:59:47'),
('6cf8501fab575f62164d4c9169597dae22d0023acc3df02d99d31d552513777749a7d1fc7295b354', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:28:12', '2023-08-09 03:28:12', '2023-08-09 07:58:12'),
('6d129898ed24b1892b5ae3e8d818707a368bdd175f6d6b667dba7c934a2f2a7fa9d77d1a2f022f2d', 1, 1, 'personalToken', '[]', 0, '2023-08-09 17:26:07', '2023-08-09 17:26:07', '2023-08-09 21:56:07'),
('6d7c39004bc448c813448937c6cdca8b89dfc120e86e1983a5ba66a17a3d44097a0f3aab89402b3a', 1, 1, 'personalToken', '[]', 0, '2023-06-16 04:46:22', '2023-06-16 04:46:22', '2023-06-16 09:16:22'),
('6da89d358ba34316f942e807b87557bb561b33ef00c10321d38b55e5ae4e8c91f52172858c5148fd', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:52:12', '2022-08-02 06:52:12', '2022-08-02 12:22:12'),
('6de4111e32cd87053d731c344816619b71e9fe23954efc0e2826c7cb3278b5b1042eec4790681469', 1, 1, 'personalToken', '[]', 0, '2023-05-23 14:20:47', '2023-05-23 14:20:47', '2028-05-23 17:50:47'),
('6e6c0ca8ede022eac3742a730ff7bd30111f2ac30c3e4019b47d481365e56e1384f7994785eb1fe4', 1, 1, 'personalToken', '[]', 0, '2022-12-04 14:35:02', '2022-12-04 14:35:02', '2022-12-04 19:05:02'),
('6e6f47d479c3dd543463d91c8c89029422afd6488552ecde7fb2433aa9cb65b8c6c22fe9d5d45a76', 1, 1, 'personalToken', '[]', 1, '2023-02-10 03:22:30', '2023-02-10 03:22:30', '2023-02-10 07:52:30'),
('6eade69571a03d7f0ab0fee573e33ab57b53375e745fe5be9e8d68c094c923018e6a2ddd3dc827ab', 1, 1, 'personalToken', '[]', 0, '2023-07-10 13:09:30', '2023-07-10 13:09:30', '2023-07-10 17:39:30'),
('6ee2b7f7051988fbc2177663b50dd1b4d927ddd50fced790810e1311770b9b55f804c00d19cf4d9d', 1, 1, 'personalToken', '[]', 0, '2023-01-26 12:22:06', '2023-01-26 12:22:06', '2023-01-26 16:52:06'),
('6ee49a2f7fa743b013113ced23661fe860a7b1ebd6a73a4b105ac7355a630b213788d24e38701a1e', 1, 1, 'personalToken', '[]', 1, '2023-06-25 07:26:07', '2023-06-25 07:26:07', '2023-06-25 11:56:07'),
('6ee6b5775d794a529245f1364e007f9d7edbfaaad4d385dd5217137e713f749fedd734ee9c5379b4', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:39:00', '2023-02-05 17:39:00', '2023-02-05 22:09:00'),
('6ef2ef06964e7a80c8a168aaef3905d217bb7e0992fee8fe3e0f68ee0a336359ab744c896064ae75', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:27:37', '2023-11-17 15:27:37', '2023-11-17 19:57:37'),
('6f42ab59f4763c894f3dfc71ce544fddcdb00fd219784ee80a061405ddb703884bc006a25b453a55', 1, 1, 'personalToken', '[]', 0, '2023-12-12 12:07:51', '2023-12-12 12:07:51', '2028-12-12 15:37:51'),
('6f5dcd0a32bde376710780c69b4d5e8231938a59741e4141988a70a2a8ecec6f97f62f7abccfe3ad', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:36:09', '2023-01-19 13:36:09', '2028-01-19 17:06:09'),
('6f7f37cc2702d17d171df58c3c7593bd7b80dc5f9bd4fbd6731494c5b57fb802a5f665b36ec3f819', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:54:14', '2022-12-26 09:54:14', '2022-12-26 14:24:14'),
('6f80ef302c604494ca961381917ed62abebb9cfaa082688e3ee76f43ac051bc63de9607e4ff3d148', 1, 1, 'personalToken', '[]', 0, '2022-08-24 02:50:10', '2022-08-24 02:50:10', '2027-08-24 07:20:10'),
('6fa61cd152458e927d8339a0058176a26bc7facb8d6a24cffcc7a551183556a411926ee557f2789c', 1, 1, 'personalToken', '[]', 0, '2022-08-27 00:45:54', '2022-08-27 00:45:54', '2022-08-27 06:15:54'),
('6fb3947ddc81703f552c02b566e33fee4edf8104ff3e03cfb8c279ebc90f72865085ff21aff06a6e', 1, 1, 'personalToken', '[]', 0, '2023-05-11 15:50:58', '2023-05-11 15:50:58', '2028-05-11 19:20:58'),
('6fbd4158b91ecc26fec3c810370419d98df35ede14c00d356a45f602536848bdd8cd2234a7d56ced', 1, 1, 'personalToken', '[]', 1, '2022-08-27 02:03:21', '2022-08-27 02:03:21', '2022-08-27 07:33:21'),
('6fef366a4206c00da0098e333d305dd8ae00530f96fda2b56bd267829d602738d6650be287af7bc2', 19, 1, 'personalToken', '[]', 1, '2023-02-13 12:48:11', '2023-02-13 12:48:11', '2023-02-13 17:18:11'),
('6ff3c2ea5548576e922e2ad20158f9282ebdea969ec1f6bae8a3aa1c24b0cbbc87cb3c0835e7ff99', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:41:32', '2022-07-13 03:41:32', '2022-07-13 09:11:32'),
('6ffd8a6fa296a2502d6d781ad3dd255718bc7eba06ccab67a682d04cc6234c12a725d1ed43837a43', 1, 1, 'personalToken', '[]', 0, '2022-10-02 15:59:56', '2022-10-02 15:59:56', '2027-10-02 19:29:56'),
('70185a107f8901b29de3ae2cc7f4f31bbe664edf16a0cf91cec68a4ceb123bc95094dcbb61814998', 1, 1, 'personalToken', '[]', 0, '2023-06-15 06:57:06', '2023-06-15 06:57:06', '2023-06-15 11:27:06'),
('7032ace885f2adc7f92bf9f21b3397ef6f248edcd2b9bad6d794bdac619ef4b9bde3027f147b1be6', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:55:29', '2022-09-26 07:55:29', '2022-09-26 12:25:29'),
('703ed07d565d1ebe6744ccdef47082b9d223a09680855f6ef77202266b791b0f1bb2964e881263a7', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:33:21', '2022-12-07 09:33:21', '2022-12-07 14:03:21'),
('70578e9ee5349aa4450c3ec3cf500d179bdc4012b828b579172dfc9e400f3a4933d20643252af1ee', 1, 1, 'personalToken', '[]', 0, '2022-07-09 09:41:07', '2022-07-09 09:41:07', '2022-07-09 15:11:08'),
('7060444fd8bc123e32618702b4b554f5dbad8d9972dec34163d11b42b0aee7ae43c3b3ca522f772f', 1, 1, 'personalToken', '[]', 0, '2023-02-02 11:51:31', '2023-02-02 11:51:31', '2023-02-02 16:21:31'),
('708c72005e722ca530efdeea629bdddf231e314fd423853a0ffd3c4d66d2969011fe7252578ec112', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:02:10', '2022-09-28 06:02:10', '2022-09-28 10:32:10'),
('70b8682615a3b68f6c86b1e495176aceaf8b2161a298ec4d5d57051e04f3c154ef41dead3ca9b088', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:38:43', '2022-07-06 03:38:43', '2022-07-06 09:08:43'),
('70d8ce6006ade05453144365c166530823340232c65995ac37a7d6cef5ec454557a95b3c26603a53', 1, 1, 'personalToken', '[]', 0, '2022-08-25 02:30:06', '2022-08-25 02:30:06', '2022-08-25 08:00:06'),
('710821a51c19f4842e77f4f38b8381e4b229b572f71c3f77108e6a5ccb236e128b0965505cd212fc', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:00:35', '2023-04-11 08:00:35', '2023-04-11 12:30:35'),
('7118ef18e1e01924d86d6b7b233344a885b3c4cb688e7accfc590e02d2cea29ed8710ddca0d1175c', 1, 1, 'personalToken', '[]', 1, '2022-07-04 11:29:24', '2022-07-04 11:29:24', '2022-07-04 16:59:24'),
('714350d37060689ee8e79bebaa1864e305508b52b35cfb46b0b0cf60fb6a48e3ae98a86ac8289f73', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:49:46', '2023-01-06 15:49:46', '2023-01-06 20:19:46'),
('7143be3791ca7324e0c19917dcdeb68b77aa3cdde6674217618759009e7b7b066eab705a8b1c51d9', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:11:39', '2023-09-27 13:11:39', '2023-09-27 17:41:39'),
('716ff0820e4c89e001fb9097b450129bdb9fdcd029789d4cb825f7a2f50a9e21d2ad86d9c12935bc', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:32:32', '2022-08-27 01:32:32', '2022-08-27 07:02:32'),
('7176d7793d359de99771c4b9c9c259e713549e3c7f6e84400b2919a5bb62456fbe4a5c9a6c74d7f5', 1, 1, 'personalToken', '[]', 0, '2023-12-18 04:38:16', '2023-12-18 04:38:16', '2028-12-18 08:08:16'),
('7199bdd18fda0e63de5c0dbcb99ceae7b3dc7fa82a84e728cf0bf37f3345a5a2622e73b65987fffe', 1, 1, 'personalToken', '[]', 0, '2023-05-09 05:15:47', '2023-05-09 05:15:47', '2028-05-09 08:45:47'),
('71b59370aa89bd4b58323b531aa2908d71c7a9a227541f9d2f5d84ec08facb69ea772b88e922d1bf', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:36:17', '2022-11-21 02:36:17', '2022-11-21 07:06:17'),
('71b932330766fa9aec48544d9fa2144e7d16081adb4da716dc02e5a664eb762d36ff39acb7f27c8f', 1, 1, 'personalToken', '[]', 1, '2022-11-20 08:54:54', '2022-11-20 08:54:54', '2022-11-20 13:24:55'),
('71c2a2f439bd569e973755fe057c8d29c74b2dfc5b9511477280f7d2cf9d6cc3f06f7e51c9c915d5', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:42:22', '2023-06-21 03:42:22', '2023-06-21 08:12:22'),
('71e31df32104e006fbe732fe4436507785ae70b0cdf9508f95a7731231cc4d09588f67c1dae6fd55', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:56:14', '2023-09-27 12:56:14', '2023-09-27 17:26:14'),
('7211b8cb5a194798e5816291020deaed1c588eb0f3c2ae61214ff9175dff57ea446a43b6f446bf48', 1, 1, 'personalToken', '[]', 0, '2023-05-14 03:18:06', '2023-05-14 03:18:06', '2028-05-14 06:48:06'),
('7212c2d456032f403724c53640e546204e129478f56b1d60fba6437702dfcde564f63dbb5225fed2', 1, 1, 'personalToken', '[]', 0, '2022-12-15 07:11:16', '2022-12-15 07:11:16', '2022-12-15 11:41:16'),
('7213613bd35fc3fad4e37a06a8015532359bcfd113068d1cc57707c7cb2d3636b35d615f45fa61d8', 1, 1, 'personalToken', '[]', 0, '2023-05-29 05:41:06', '2023-05-29 05:41:06', '2028-05-29 09:11:06'),
('7234859a3b7aa98b3e32f83b55e241ba3fbc5c56893996fbe97626274b2c7e231ffcbfb0e8484166', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:59:39', '2022-12-06 11:59:39', '2022-12-06 16:29:39'),
('7247c271378137419181596b42793142ca939e54c6cd16d5222c9bf08b09839e005689f2ed50ff1f', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:01:27', '2023-08-09 03:01:27', '2023-08-09 07:31:27'),
('7251e4238179a9d1330eeb5b3ca1068082df13caa91b191ad579085c2251ccf2c2e1d1a1b4087380', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:05:21', '2023-04-11 08:05:21', '2023-04-11 12:35:21'),
('72afc93d05e9d76484e9c3419e9be1a48dfe7fe8f6a0020b50544ab89acb93f550294e05d1e7a926', 1, 1, 'personalToken', '[]', 0, '2023-12-15 18:17:18', '2023-12-15 18:17:18', '2023-12-15 22:47:18'),
('72b37e09f1ab5e30b090fb794ec977fd7839a0c5b2c897b3abcc71569c21393d01f0e426a3a9d4c6', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:48:36', '2023-07-05 13:48:36', '2023-07-05 18:18:36'),
('72c6dba61b827125b5a58085ca592e18acaee0e1c5c1a70750ca053e9220ef4030205263156dc308', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:22:15', '2023-08-08 08:22:15', '2023-08-08 12:52:15'),
('72fad67c1546d8b36977ffd3739ca5c1bf589a5f6dd208ee0c42c5ebddd49dc16d3b1546a203d46f', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:19:53', '2023-11-17 15:19:53', '2023-11-17 19:49:53'),
('730748d02e7e70820ded6a958fe8e5573879960aa3f3bd38e3f0f7e2b87517442b5542ed4fe81a43', 1, 1, 'personalToken', '[]', 0, '2023-08-13 07:46:02', '2023-08-13 07:46:02', '2023-08-13 12:16:02'),
('73146809682537ff4178a30917be7d88743384ef6c328ae742e0172aec0a00da07714be189ca93b6', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:42:20', '2023-06-30 09:42:20', '2023-06-30 14:12:20'),
('73343a447d30712241afc5d4281cde1bab1cb9c2ff79842462128a22ae2d74b7c320df7e8e7af39b', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:49:07', '2023-04-11 08:49:07', '2023-04-11 13:19:07'),
('73453d5180f40d508d2ccaf137594be67971bb1864a66b71c4573c55e170a4f14c533ac64e0a2c29', 1, 1, 'personalToken', '[]', 0, '2022-08-05 10:36:44', '2022-08-05 10:36:44', '2027-08-05 15:06:44'),
('735e474c2e0ab0ee6896eab1804760c1f077f600b97ef0e6d40ebf37c45972b75ce0ac38aab5ab85', 1, 1, 'personalToken', '[]', 0, '2022-07-19 12:29:24', '2022-07-19 12:29:24', '2027-07-19 16:59:24'),
('7360b1bc57d61981570d1779350abfaacb22e7dd3657aba7693b688827da07a0d15d68507ad5f804', 1, 1, 'personalToken', '[]', 0, '2023-03-22 09:56:10', '2023-03-22 09:56:10', '2023-03-22 14:26:10'),
('736d7d193ab4cad6a81ad349414c57a739b360d5b875f575e5ad8a511c4bcc1f6b81ebe9513428bf', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:37:22', '2023-08-08 08:37:22', '2023-08-08 13:07:22'),
('738b3f6e20197d2aa1c45b651d9fcc561a92d2bb79060b87b3deefe1452f8962e70dae0235cd316c', 1, 1, 'personalToken', '[]', 0, '2022-12-31 10:36:39', '2022-12-31 10:36:39', '2022-12-31 15:06:39'),
('73bbe6ca3bc224545dd9e54bff4a4f573f56c3465e1840a8f6903fb37de5ecf405c6f325cabf47ed', 1, 1, 'personalToken', '[]', 1, '2022-10-03 18:31:43', '2022-10-03 18:31:43', '2022-10-03 23:01:43'),
('73c8d32c02ca2859b899fba53bbf7751fc605af2256d5685162f57dcb6aeb13959b1bca7acfcf7a4', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:46:33', '2022-10-24 02:46:33', '2022-10-24 07:16:33'),
('73cca09c84b0645502a83d6b0d4b25c443335a3225908d1a8f31a05bbd0527cca9f1767fbf066eaa', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:37:57', '2022-12-26 03:37:57', '2022-12-26 08:07:57'),
('7425f0be1f916467377501a6e35b407180b36b206dfff06a6c6f86a02dd2e914436d104eacc66bfd', 1, 1, 'personalToken', '[]', 0, '2022-11-27 16:44:06', '2022-11-27 16:44:06', '2027-11-27 20:14:06'),
('7437338e299357589cbf7dd3a4533898553c6f05d48e027e5d4abf1cac8742f9244bd939a304013d', 1, 1, 'personalToken', '[]', 0, '2022-12-26 04:48:11', '2022-12-26 04:48:11', '2022-12-26 09:18:11'),
('7442ad0b1a64193b0004b69a45132631e8658255ac108b8008ba75fe545f6dc12c39ad5f7564c2a5', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:42:01', '2022-12-26 06:42:01', '2027-12-26 10:12:01'),
('748100a37a96fa5313bd8370f87d77b8d23f03a6895d10cc649d61eb4417c4913a99df7d38da2ede', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:23:16', '2022-10-22 15:23:16', '2027-10-22 18:53:16'),
('7482ce8bfc73075b688fd31afd042a33c9ba314b98fc9fdd15b42e31cb555a1bbef7cf1c309742ba', 1, 1, 'personalToken', '[]', 0, '2022-12-06 05:54:56', '2022-12-06 05:54:56', '2022-12-06 10:24:56'),
('749d07db72657cef36a8ebad015879005f91e6450d53ac96cb983c64b54be4ec2857952018352ef1', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:51:22', '2022-11-21 02:51:22', '2022-11-21 07:21:22'),
('74a197311461a1b5677604d5f9ce379e208890c58df09014ba38caf97629a9c1f5ad21ec5c36da2d', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:38:43', '2022-07-06 03:38:43', '2022-07-06 09:08:43'),
('74cf0d7ac3d2a26978bd122861b5049876d7f5801c41a85a80eb447374aace946cf19de1dddbc1f6', 1, 1, 'personalToken', '[]', 0, '2022-12-02 10:27:36', '2022-12-02 10:27:36', '2022-12-02 14:57:36'),
('74dd6e56ff877c2fb66c1214ce6ff89050225447c258829588a4a6ed2112fdcf70f6300f00adf760', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:02:34', '2023-08-08 08:02:34', '2023-08-08 12:32:34'),
('74e183dc6586b18c9ed09a9cf33dd309316c614d576a7f7c56b036092f5966d91b5be32899813e08', 1, 1, 'personalToken', '[]', 0, '2023-08-30 04:55:55', '2023-08-30 04:55:55', '2023-08-30 09:25:55'),
('74f7cbc33908e0e3cfdcfcece1df0e16c42303fdb77b1a02c2c2d9c44b4429017c344477dd0bf567', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:21:41', '2022-07-12 05:21:41', '2022-07-12 10:51:41'),
('751d53fefe8ab6d33e08e68417f63619e2b6dcedcac51102f8befd301f7966ee11bc6dfe7a535918', 1, 1, 'personalToken', '[]', 0, '2023-05-08 10:11:28', '2023-05-08 10:11:28', '2028-05-08 13:41:28'),
('75368364b09f767e102f62f54d94da5301b917bc94d869b577b3df3b179b22ffa5cb73b869813e3b', 1, 1, 'personalToken', '[]', 0, '2023-05-15 22:37:26', '2023-05-15 22:37:26', '2023-05-16 03:07:26'),
('75444ed635c4e61355012247992e3bc5a122024649b019847ab54271bbc3544a7e2fd3fe006edc81', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:48:11', '2022-10-22 14:48:11', '2027-10-22 18:18:11'),
('758389dd5305f392e7c7b8a28d0d88b6e24071b1c5f361cf84d996395bad410c43690d41256c5f4d', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:13:21', '2022-08-28 03:13:21', '2027-08-28 07:43:21'),
('75b950cdf002cfbff0cb07860f83907d18e905f25a5cbc56406e49101a4e57bbb908fe1c04b63e6e', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:27:03', '2023-08-09 02:27:03', '2023-08-09 06:57:03'),
('75c363be4eb3ac91d06290b5ef9dd5291ba666c3ea538ed6129301660788e8e69b0ad018212640ae', 1, 1, 'personalToken', '[]', 0, '2022-12-06 05:59:13', '2022-12-06 05:59:13', '2022-12-06 10:29:13'),
('75fba336c86f5452d51c61428df4852fdaa76eb5f94a4c1914aed6524b440fb381fe2cb579816f26', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:55:08', '2023-08-12 07:55:08', '2023-08-12 12:25:08'),
('760a3f09877f083e1e336c2729f3a8636add52fb3cb9dd6a81ceed21d6197a4251c045e1024c99f5', 1, 1, 'personalToken', '[]', 0, '2022-09-26 06:15:50', '2022-09-26 06:15:50', '2022-09-26 10:45:50'),
('7613dbb6b754acda7322c1fcc3f23329074dc2c64d1f99dbcc271ec9f40318e809e5551d3be95f7a', 1, 1, 'personalToken', '[]', 1, '2022-12-16 02:59:54', '2022-12-16 02:59:54', '2027-12-16 06:29:54'),
('764dab7d4f1d0c569d007ae82a8cb2996adab1262f112cf2c90ca234ab921e624f0caf7c384c0370', 1, 1, 'personalToken', '[]', 0, '2023-04-27 23:39:24', '2023-04-27 23:39:24', '2028-04-28 03:09:24'),
('765b0cfcb51ca634e83bcc59dc6289055153b93844e0c53e25502e7c8850c8debf63b5846b35d3e5', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:46:58', '2022-12-26 09:46:58', '2027-12-26 13:16:58'),
('76963153c873826ba5768b38053f0a20977eda658802d94526a42d317fc7816c7d4c56ae8a9a4ad6', 1, 1, 'personalToken', '[]', 1, '2022-12-16 10:01:05', '2022-12-16 10:01:05', '2022-12-16 14:31:06'),
('76a732b8442288c52695e61156bfce5d1f143e33f68e14974b61ed2f620adaf5b9db969fb12d2e2a', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:23:12', '2023-04-24 11:23:12', '2023-04-24 15:53:12'),
('76b4303d60629dade0e33110749ef29df3c9e6accce4abbe2183051cca7bfc5460a9c2058aa3d66c', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:23:25', '2022-07-12 08:23:25', '2022-07-12 13:53:25'),
('7723ddccfcbcc193f73e2ce53e0842ff459d665d6dd2995d82a8cebee3b624329d3e088bb72c6a94', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:32:41', '2023-08-09 04:32:41', '2023-08-09 09:02:41'),
('778f115c40a543ad88a8b98fb5003014c3820d4d0a289eb1095d3dafe33c8c6c3eb75a35f184ea2c', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:36:12', '2022-11-21 02:36:12', '2022-11-21 07:06:12'),
('77a7d59dd2744badc9664f3510bfa332aa2173f94189f66846f3bc1c28e43acba818683001cdc473', 1, 1, 'personalToken', '[]', 0, '2023-09-26 13:16:36', '2023-09-26 13:16:36', '2028-09-26 16:46:36'),
('77ba9c2f048fd483f86ae979c7da80eb97a407e4cd17031437d4f89624048dfca1e01fd4a7a77e46', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:29:26', '2023-09-27 12:29:26', '2023-09-27 16:59:26'),
('77ff2b5c90b201b55cc1d58b7b306e6421eb9d8008e679bbadd7dcb99e3562ad92358422e84e33ba', 1, 1, 'personalToken', '[]', 1, '2022-07-09 05:49:06', '2022-07-09 05:49:06', '2022-07-09 11:19:06'),
('780696ea9e9a348af313ad71952201ba54ff6b5a73cdfb92df354cfffa50489e069a123c05a0bac8', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:23:31', '2023-08-08 02:23:31', '2023-08-08 06:53:31'),
('7826cc1bfa8c059172a09d0547764b9df098abecf843b4f3fc613f10a871d5f560c6baa6b369defb', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:57:27', '2023-08-08 07:57:27', '2023-08-08 12:27:27'),
('785378c57b3d41871ccc5d855f816036ab0c061109afebdc8457532e1c47df6e2601bb60af9dd556', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:37:36', '2022-12-26 06:37:36', '2022-12-26 11:07:36'),
('7856e768c8aac3b3f45d980727f08d0ecb0bae26c038bcea777aac0f3ea4567827907cd4bb8d69e4', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:40:31', '2022-12-26 03:40:31', '2022-12-26 08:10:31'),
('785a5d9804629305ab2c6eb9641ce582b28806a09406a65a5668201a95ee7a2f4f3473cd5354f604', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:24:51', '2022-08-27 01:24:51', '2022-08-27 06:54:51'),
('786618b4e8aa5df25dd162d05c281358c5d380b87433bd41cf5d653d97eb0003b91656867c181818', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:29:37', '2023-09-27 13:29:37', '2023-09-27 17:59:37'),
('78e5ab04f46099b7150a77de9c4a7c417ec84919dccf78ebb9147e348003ab1d9206b05aa62aa1ae', 1, 1, 'personalToken', '[]', 1, '2023-02-10 04:39:38', '2023-02-10 04:39:38', '2023-02-10 09:09:38'),
('79238933b8da6b30a6334710d90c9fcc245243e522ba0bfd9adfae650ebd479fe2939e91b5f33cb4', 1, 1, 'personalToken', '[]', 0, '2022-12-18 09:11:42', '2022-12-18 09:11:42', '2027-12-18 12:41:42'),
('79379fab3455b4e3031cbd04a6ef38dbfe2c2b43ada192e955dc1d79d4101ad5ede86da2a0b7c3b2', 1, 1, 'personalToken', '[]', 0, '2023-11-18 13:59:51', '2023-11-18 13:59:51', '2023-11-18 18:29:52'),
('7950eb478b9721ff979a65df2c5361e0f01b053a5c0defc2d84240200575b0164f2ef8e4a370f304', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:26:36', '2022-07-25 07:26:36', '2027-07-25 11:56:36'),
('7966078b6053ff2dbd8dd29c607f15a26f50b67693524ed1613766039ccaf76df639f1df992892fc', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:20:31', '2023-04-11 08:20:31', '2023-04-11 12:50:31'),
('7990d90a7a70e55a4dc8f4f5fd19f6a5585f215c9224fa695fdf6725e3480a55899d15482c967a46', 1, 1, 'personalToken', '[]', 1, '2023-11-30 16:49:46', '2023-11-30 16:49:46', '2028-11-30 20:19:47'),
('79a574f1038b29dc20264c007f8a9082dada84d6defa47e8d0e1feb6649565ce833915942863d730', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:53:42', '2022-12-26 03:53:42', '2022-12-26 08:23:42'),
('79ce656f9856b63b678058828ffcc5e2c6f2be38a2612410172352dcb6c79955e66294696de62d30', 1, 1, 'personalToken', '[]', 0, '2022-08-24 07:22:54', '2022-08-24 07:22:54', '2022-08-24 12:52:54'),
('79ed2c154d41c623bfcdcdf03eaa6e0ab93ad21497049c7c133a54729af33635b338dd812385f6c3', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:00', '2022-08-03 04:40:00', '2027-08-03 09:10:00'),
('7a2d6a859d8232d7a3efd5d16b526af0e7cc5a32ab77b21b8d8b2a7f64a3938728066036f6e896e6', 1, 1, 'personalToken', '[]', 0, '2023-01-19 11:24:43', '2023-01-19 11:24:43', '2028-01-19 14:54:43'),
('7a3b62c0000e5d92c744381c1e8e929ea4ea0636fd9ddb32b00cb433b8ef7eda8d63a01f8f7f894f', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:05:32', '2023-06-30 10:05:32', '2023-06-30 14:35:33'),
('7a54f268b208defe9918ac3f4a87c68715f026fc674224c34c8cb2ee6d00912249cdba3c4a1742ea', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:09:16', '2022-07-06 04:09:16', '2022-07-06 09:39:16'),
('7a5dfaad08020954d67d6485658d9031ea24eeff335c43b826764316915aac3db0557596937cb6e1', 1, 1, 'personalToken', '[]', 1, '2022-12-17 07:25:27', '2022-12-17 07:25:27', '2022-12-17 11:55:27'),
('7a67c5bac7755ea6f80564f8b0ddad751ce81a86760c356080d58dd3f500c7a65673e111c0ea318e', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:05:24', '2022-10-24 03:05:24', '2022-10-24 07:35:24'),
('7a85425be98ceb88b65670155bf6411ee1a219480652ae7b933e1a3b29175d699b131ff7482e6a21', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:13:03', '2023-06-21 04:13:03', '2023-06-21 08:43:03'),
('7a85f397ccc447618eeb3bab3675cafceb91aef4bc4a6a527cab9172e4cb09300cc956dab3721fd1', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:30:21', '2023-01-21 05:30:21', '2023-01-21 10:00:21'),
('7aadb8f0ed330c84872e608d5dd0a6da68e04c14c2f00dfaff573d695d75d94089ddeeee3f94733b', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:53:26', '2023-03-04 11:53:26', '2023-03-04 16:23:26'),
('7ac88366a9a0e5ac6b1592a59ce257e4d49683b189e47f9af29fb4d25f9394e65ef43da669615ce1', 1, 1, 'personalToken', '[]', 1, '2022-07-08 04:34:17', '2022-07-08 04:34:17', '2022-07-08 10:04:17'),
('7af68c876480c11796577e547688ae7246511e9bf3443df4fba6c30b74c9f29baaf8b51d26e5a986', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:58:59', '2022-12-26 06:58:59', '2022-12-26 11:28:59'),
('7b15d469f0a83d11890cf68df266950ad0f117c6be8023c544b059e8438ec5fcd197a91e87a94fd6', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:16:16', '2022-11-15 05:16:16', '2022-11-15 09:46:16'),
('7b15ea4d6c494075635f4af816ba40ed93cb1700b47d1242e9a316b0e5b0e20e74e48c60c7112b44', 1, 1, 'personalToken', '[]', 0, '2022-12-02 12:39:57', '2022-12-02 12:39:57', '2022-12-02 17:09:57'),
('7b21148ecad4627e6cbe37303d1dcf771bec7dc17d58c484deec3e22feef699dae0d3734d53084ac', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:08', '2022-10-14 13:23:08', '2027-10-14 16:53:08'),
('7b3049d8772bf4a82503932b79109ae39fb62db7dac652c66e6b95accc170d8beb642279afc332dd', 1, 1, 'personalToken', '[]', 0, '2022-12-06 12:02:16', '2022-12-06 12:02:16', '2022-12-06 16:32:16'),
('7b3656ebdfe5fcad069ab66abd485d0dcb4ccd14f46ad0a2e2f91fe7853ad7587fadb8f5425ad576', 1, 1, 'personalToken', '[]', 1, '2022-10-22 16:00:46', '2022-10-22 16:00:46', '2022-10-22 20:30:46'),
('7b5fa779005d620db603dcc8d08112eeb4166c5e0e85caa6636101f84c1d66faa98bda2494a32a7c', 1, 1, 'personalToken', '[]', 0, '2023-01-20 13:10:49', '2023-01-20 13:10:49', '2028-01-20 16:40:49'),
('7b642b480d68b24cc183dc72dfec4c6e848fe93d95f80bcbef4dacdc23c3a970a660c420c16e89ed', 1, 1, 'personalToken', '[]', 0, '2022-11-08 07:07:23', '2022-11-08 07:07:23', '2022-11-08 11:37:23'),
('7b76d87cf11dfb37a1d28cb2e27fa2ebebe863c9eb30e29c6626fd3a9f7bf699d761d013e8d4fb46', 1, 1, 'personalToken', '[]', 0, '2023-07-15 05:05:18', '2023-07-15 05:05:18', '2023-07-15 09:35:18'),
('7b779d63f9a17f292303931ee56d895cdee0338f35f7ecd0fc61525a65eb60349ef087278709621c', 1, 1, 'personalToken', '[]', 1, '2022-10-27 01:51:34', '2022-10-27 01:51:34', '2022-10-27 06:21:34'),
('7bb472726b059d59615aec245be6b9c66aa40e61f9f68130a7ae0773a79775b54f31965f25054705', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:35:59', '2022-07-06 03:35:59', '2022-07-06 09:05:59'),
('7bbfd509b0b1dda516a28bf42f6a723c1d34eb8051d59999021c0745d0acaadd946e81b87c5f9bd7', 1, 1, 'personalToken', '[]', 0, '2023-04-12 06:30:44', '2023-04-12 06:30:44', '2028-04-12 10:00:44'),
('7bc447d50a0f056da4b72fb1abea502b739f66804cc10ca55b3d77580e1015cad7c0af6c63d95a4a', 1, 1, 'personalToken', '[]', 1, '2022-10-13 16:43:21', '2022-10-13 16:43:21', '2022-10-13 21:13:22'),
('7c158a7ed81d4cea4825296c966f0d4fe22bb294cf4e25f871cc2838216f6f2cd8fc85d733897f39', 1, 1, 'personalToken', '[]', 0, '2023-08-22 04:45:25', '2023-08-22 04:45:25', '2028-08-22 08:15:25'),
('7c22d90d6f087a93144c0ae30a98c9e5ea745d4159c9e7d84fe0b2c6fc1abd8cbb92e5a35f88d376', 1, 1, 'personalToken', '[]', 0, '2023-02-03 12:51:55', '2023-02-03 12:51:55', '2028-02-03 16:21:55'),
('7c2723334658c55d0c237c9dde19c5fa83947542fdb29e4ee201978a2545fa8a1919cef70ab96795', 1, 1, 'personalToken', '[]', 0, '2022-11-07 05:42:25', '2022-11-07 05:42:25', '2022-11-07 10:12:25'),
('7c5d8535e77d43234c9abb29e981108075ff38ab12dda936ef74b395c2e970d0061637ae25c1a0ca', 1, 1, 'personalToken', '[]', 1, '2022-07-17 03:56:51', '2022-07-17 03:56:51', '2022-07-17 09:26:51'),
('7c5e695af58dd92bbc147602b6e6f6af0e13e91d3d980d33a31db6191b13afca1749f4e6182fd0fb', 1, 1, 'personalToken', '[]', 1, '2022-12-06 12:19:27', '2022-12-06 12:19:27', '2022-12-06 16:49:27'),
('7c6188b1f0dbb266aa00520e7d1a6f441ab0c307317b2eabbe69332e23726f003f46206ffafc9632', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:29:08', '2023-08-14 07:29:08', '2023-08-14 11:59:08'),
('7c6b5dbafbc8b9e6acbeb918d2ecc7b639256372277b96b8e86162403f2ec95b424f78ec93ce39b9', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:01:37', '2022-12-16 03:01:37', '2027-12-16 06:31:37'),
('7c6ec58d918f0446ed24bb0a03f8c52d44ef06feffb2fdfee7f535efdccb15acb3ac9a3656a2ff80', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:23:34', '2023-05-16 03:23:34', '2023-05-16 07:53:34'),
('7ca6139367fb8728d10a8923b8e7baeb4ca021307cf69e24a104e8fa76cce8e960016f0f48ce6b52', 1, 1, 'personalToken', '[]', 0, '2023-04-09 15:58:58', '2023-04-09 15:58:58', '2023-04-09 20:28:58'),
('7cbb207ac18585096e318db8ce6e88a152c4bb1a8556165b59b59b5033651e0d6dee9a2761a360eb', 1, 1, 'personalToken', '[]', 0, '2023-07-12 10:26:42', '2023-07-12 10:26:42', '2028-07-12 13:56:42'),
('7cd364616e182f63a8c8205730e22f9b2c07cb97a6052c61090a2e71f449b83486fd0160e17b238c', 1, 1, 'personalToken', '[]', 0, '2022-10-16 16:06:57', '2022-10-16 16:06:57', '2022-10-16 20:36:57'),
('7ced7d6d5fa265b21ee7c9ea381158eb549984698f731ea5fd89f6090d6af9f2a605b4c3d7655b72', 1, 1, 'personalToken', '[]', 1, '2023-02-14 15:38:25', '2023-02-14 15:38:25', '2023-02-14 20:08:25'),
('7d058fe3bec0a70c8e1c26f0f06dab4cff4d58d3555cf92a33091e05ac0970b6cc774f121602d43b', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:14:49', '2023-08-07 08:14:49', '2023-08-07 12:44:49'),
('7d1357bc61f5f91810867bb4399c124cc6a54d31b600fb345c314a6c330a3dac05d05ba9ec09d9be', 1, 1, 'personalToken', '[]', 1, '2023-09-18 02:37:30', '2023-09-18 02:37:30', '2028-09-18 06:07:30'),
('7d2659336bb4bd84925463316e18972de497174c46675f15a4af82c3f1ab4f37ff1c777ce0fd85cf', 1, 1, 'personalToken', '[]', 0, '2022-11-12 08:13:06', '2022-11-12 08:13:06', '2022-11-12 12:43:06'),
('7d2a1b522e7d94bee24a43f932bc8c0b6b0e57c5eacb54bdb1a2d462ee070e4971e5df98abda8863', 1, 1, 'personalToken', '[]', 0, '2022-07-25 06:36:26', '2022-07-25 06:36:26', '2027-07-25 11:06:26'),
('7d2e74f8800d91884dc00e46bd07051a15892a2da7a70cfb5ef9b8f9de73d0626475bae1085d58d9', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:42:30', '2022-10-24 02:42:30', '2027-10-24 06:12:30'),
('7d36314e1393f1507f77e1cf9acd44d0854d6d4966e1da35cf71c520198ef0d0126ec07e0e8c3059', 1, 1, 'personalToken', '[]', 0, '2023-03-01 10:10:38', '2023-03-01 10:10:38', '2023-03-01 14:40:38'),
('7d38954d1ef0d21ed5ce7e6f5e55a6abc5e30bbbc151a0e5283fbd382a7531101d9f593e31bbf71b', 1, 1, 'personalToken', '[]', 1, '2022-11-01 16:05:51', '2022-11-01 16:05:51', '2022-11-01 20:35:51'),
('7d55724693d2dbfbe07c96632b5e04de607d981c236f21937800639ad4bae8f46716347637b58e8d', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:34:57', '2022-12-26 06:34:57', '2022-12-26 11:04:57'),
('7d70dcba89e9f226f28c085134eaf86a77f8b70ae54bb0eddf1ded3e694dafe6604bb4a71b591bc3', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:21:46', '2023-08-14 07:21:46', '2023-08-14 11:51:47'),
('7d902bb965df60aed5ff0d3749d2106a4be8e79ff098ab8c1156c8cbc24eddb86b71436a8ad60a15', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:12:53', '2023-05-16 11:12:53', '2023-05-16 15:42:53'),
('7da202d2b8c3812f052609c63b5b1ec6bd3666600b2930c483bc9394c4fd04d3503b31ed462b37fe', 1, 1, 'personalToken', '[]', 0, '2023-09-05 14:02:17', '2023-09-05 14:02:17', '2028-09-05 17:32:17'),
('7da4040b511c8bbdd64fb3d1023bcce0db3e3b2c77d174447c5ceb8469b3cfaefe9b94c2805f18e7', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:33:33', '2023-08-08 07:33:33', '2028-08-08 11:03:33'),
('7daad2195c26ba9a7f842d7778bc9c1129f5f6a1bcc7307e79e3bf2d0c6f080b4f7e6d8ab801b4d2', 1, 1, 'personalToken', '[]', 0, '2023-05-16 02:04:22', '2023-05-16 02:04:22', '2023-05-16 06:34:23'),
('7dc55a8296438d0990091a898d9d6100b8fbfb76d3e411e5a8c8197c5d9c681d87dc6ecd7f0115aa', 1, 1, 'personalToken', '[]', 0, '2023-01-27 09:59:03', '2023-01-27 09:59:03', '2023-01-27 14:29:03'),
('7dcd5c3947601f9f56803ca483bd6dda2b202b04d06ff05ac9f71eaba883e7e49c487bf6eaa93e46', 1, 1, 'personalToken', '[]', 1, '2023-03-18 18:13:00', '2023-03-18 18:13:00', '2023-03-18 22:43:00'),
('7dcf3066c011e3a18d7725e682b8e3dd27d6c7d2e4ed1488b3f0573e1718fbd6104301d42d5d6a8b', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:43:50', '2023-08-08 08:43:50', '2023-08-08 13:13:50'),
('7dda13a91b87f623eabac2b52cdfdbfe87bd47e71e97e5731bdbb5f3758562118c19687c810f5ce0', 1, 1, 'personalToken', '[]', 1, '2022-06-21 04:52:56', '2022-06-21 04:52:56', '2022-06-21 10:22:56'),
('7ddf460b32beab39161c0ad280a3cdf655896a2c78f2445219d6ed027b4a3635b2aeba5616eb8ffe', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:25:38', '2023-08-08 08:25:38', '2023-08-08 12:55:38'),
('7df223c0bbd08392462137ea4c776772cd53cf0ddc88ee6e7230e683cd7710cb7228f41779f88e00', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:19:22', '2023-09-27 12:19:22', '2028-09-27 15:49:22'),
('7e060a9e48956b80ca65dd94f293b9836b61bdf4f4be08d517a8b3bcf0e9080f719342910bd15c25', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:59:24', '2022-08-28 02:59:24', '2027-08-28 07:29:24'),
('7e0fe1655d63d4b0d4b04f048ecc4bc62b06784feb62024b394376e02948b219beaf4a55a3aac1d6', 1, 1, 'personalToken', '[]', 0, '2023-03-18 05:13:36', '2023-03-18 05:13:36', '2023-03-18 09:43:36'),
('7e1846faf17b46f2a7f4ecb10df14a23cf5d34148676cc96f7622cdf6024c9265fd4afd38be71d8e', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:36:01', '2022-07-02 12:36:01', '2022-07-02 18:06:01'),
('7e2266998f6a890a0ab4648f36ba8614ce219e6ac1f4bcac99c1d9941f9e75ce4ccd91d328ad1494', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:17:14', '2022-08-28 03:17:14', '2022-08-28 08:47:14'),
('7e805360f0903b844282a7f837f531b6ad946b7eda6128e6193541e3302ea0b0bd684254992e1577', 1, 1, 'personalToken', '[]', 0, '2023-08-13 07:33:36', '2023-08-13 07:33:36', '2023-08-13 12:03:36'),
('7e8e347e38c7ef2d35eb8216e93fadd71d744ec39b5b783642278819725ef9afb39b76ddc91c7213', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:39:48', '2023-11-17 15:39:48', '2028-11-17 19:09:48'),
('7e9871fe6b6c7d7a969ade1d7616d3af933290674f3b15b9add2660591c6e778ca7b5919b19feafe', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:52:29', '2022-08-27 01:52:29', '2027-08-27 06:22:29'),
('7eaa086e40351dda8940f50c2929732484a515f2f7785d1b7468dbd097718380bfcf5e11b78291d6', 1, 1, 'personalToken', '[]', 0, '2023-09-28 10:02:26', '2023-09-28 10:02:26', '2023-09-28 14:32:26'),
('7ec40aedbbacab7ff84f3223d49289cfa0fe67f955548057d3267a3174d421a624921798f77b2692', 1, 1, 'personalToken', '[]', 0, '2023-12-14 11:55:13', '2023-12-14 11:55:13', '2023-12-14 16:25:13'),
('7ec9e95ecb1f4d33e4022ba5d189e69d51e3a6913c637ccdc145bd11331d58a66a2f34f33cb104ef', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:57:24', '2022-08-28 02:57:24', '2022-08-28 08:27:24'),
('7f092bf2480ee9fb1df4eb3657b1ada471727eac0d17865fb8c451eb9ef39889101c6497c99c224c', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:36:21', '2022-12-07 09:36:21', '2022-12-07 14:06:21'),
('7f0b51f2d1f513f287cd7272d987de52d720626a8c78ba51bb044299731c7ceda6e0752ab54fd0d6', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:53:05', '2022-12-08 05:53:05', '2027-12-08 09:23:05'),
('7f4da9b9ae596f07f94f2baf2909fbd71ffbf59ae713e27d08c32b82cdc0c49d1bf91e4186da987d', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:44:08', '2022-09-26 07:44:08', '2022-09-26 12:14:08'),
('7f6f7aaf2158ea26f1473763ff2b8b639120efb1463427597168c36f22621d22f984c58075868334', 1, 1, 'personalToken', '[]', 0, '2023-02-07 17:37:11', '2023-02-07 17:37:11', '2028-02-07 21:07:11'),
('7f7744734079a546034fbda14d34123e9ac659dfae54303dc55c7280e44d2a868296edbdf59ab85a', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:48:07', '2023-11-17 14:48:07', '2023-11-17 19:18:07'),
('7f7b1f11cf7794758b9f5947afe5edfb0fe63f4fecafc35cf6e55319a0569aff17ee7d92731631e0', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:00:23', '2022-12-16 03:00:23', '2022-12-16 07:30:23'),
('7fb933f168095eb6cdf49417454a21da99e7af07ceb4854ffae3af31e8257a1767ad7a6cdfbca7ba', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:09:20', '2022-11-14 04:09:20', '2022-11-14 08:39:20'),
('7fbb1d009f2fa77dbf39e05cf1e269b8c64a3d6d1ae12e169dca7dc6918667bfeea9d207413ca650', 1, 1, 'personalToken', '[]', 0, '2023-08-13 04:33:46', '2023-08-13 04:33:46', '2023-08-13 09:03:46'),
('7fbd04c240319931b397b829238c3b10da49c00d3b96629477036f4880b7639339adf2dfe88bb4c3', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:30:41', '2023-01-21 05:30:41', '2023-01-21 10:00:41'),
('7fc4f1a88b6c15f0704b710cbbcf2cdd7769cc80032b0e4324cde5eedc2857132ec07f39f4903394', 1, 1, 'personalToken', '[]', 0, '2023-05-23 07:09:32', '2023-05-23 07:09:32', '2028-05-23 10:39:32'),
('7fcb485db52fa62b23d86d4139c150f3976e4cccc8d6556f7f8637678550f22d1e6692bd1a035196', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:52:52', '2022-08-27 01:52:52', '2022-08-27 07:22:52'),
('7fd04d75a75d312cec09990f52a4c17be21604e306929b8f2c41a3de8c1a1b4389a1836cd9b0ee1c', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:45:55', '2023-06-21 05:45:55', '2023-06-21 10:15:55'),
('7fd3bebba8d6b350065da0d49c3e0ee24c80586223c6e46a4c9a68b413e5d0185875be29fce434e4', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:48:03', '2023-11-17 14:48:03', '2023-11-17 19:18:03'),
('7fd9db443cfde0829b89edd39a4f765ced3d4d2451cc22f5aa1f5dc9423f0ce5dcfece2ac79a9634', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:20:03', '2023-01-06 15:20:03', '2023-01-06 19:50:03'),
('7fefc0487e3d19f3b6964ef5c4660a0d0a2d4815b457c3602f4b59bd0dbd4eac845d24064c684056', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:14:20', '2022-08-28 03:14:20', '2027-08-28 07:44:20'),
('7ffaaab80d7c5ac351d0efe6623b3c0f02fbbb6dd3b0082154d5a87a87f7877d6239eec002d3d508', 1, 1, 'personalToken', '[]', 1, '2022-08-25 02:27:02', '2022-08-25 02:27:02', '2022-08-25 07:57:02'),
('8042a143b2d0946e21525b77e183c44470d85975c01b9e881008e1751ef5f2bee61375fb235afc1c', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:51:39', '2023-03-04 11:51:39', '2023-03-04 16:21:39'),
('80685db744a310277a5ff562f9c4e5a4c30891e5a7c0ddac372ce67077b29c506accac142e10430d', 1, 1, 'personalToken', '[]', 1, '2022-10-18 12:07:44', '2022-10-18 12:07:44', '2022-10-18 16:37:44'),
('806863a49c2f62f868fea7091cf47e18a074cc0d34801f7d54c455fc1f1f769b90c97294a0d08960', 1, 1, 'personalToken', '[]', 1, '2023-04-17 10:53:43', '2023-04-17 10:53:43', '2023-04-17 15:23:43'),
('80c6d573d24116dfc4ba3be8a00f74af64278204ae6c3d93e3cf4387b0ece6e414a3aac555038fb6', 1, 1, 'personalToken', '[]', 0, '2023-11-01 06:34:49', '2023-11-01 06:34:49', '2028-11-01 10:04:49'),
('80ded52d2b75ff5a387118b244d9333a52565f8a693bf9b07e4d050f14665185ddf0e6f5ebda719b', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:03:00', '2022-07-12 05:03:00', '2022-07-12 10:33:00'),
('8113d2eb526c88bc64d09845440dc408733e5578ac2dcad33aa882e4649b0971136a4b68d99b0fe1', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:48:18', '2023-04-11 08:48:18', '2023-04-11 13:18:18'),
('81179f4a5afb3e3843579845120edb5f5c12acdf08a37d2b14e2801cfde5b47aaceebe4276c66bff', 2, 1, 'personalToken', '[]', 1, '2022-09-08 07:17:34', '2022-09-08 07:17:34', '2022-09-08 12:47:34'),
('813e4b92ebc7dc4c614b128be432c900039a6cfd0c2a6eadf0ddab2fc00e6ed1c5b59197035e070f', 26, 1, 'personalToken', '[]', 1, '2023-03-06 04:08:36', '2023-03-06 04:08:36', '2028-03-06 07:38:36'),
('8146fbb5f468ce84be83fb35b6d0136c6efe4c60702d83f9a2a988a266a5527fa023472e025af637', 1, 1, 'personalToken', '[]', 1, '2022-10-27 20:54:27', '2022-10-27 20:54:27', '2022-10-28 01:24:27'),
('81810680861dc7eca3c309016f27b3bff6f9d6f01aac313573554edd45b5a1d34649e910cbe915ce', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:35:19', '2022-10-22 14:35:19', '2022-10-22 19:05:19'),
('8186bd1bae4b8b9539206f95a2e92380dbed510dced9501f83152eba9169f7864f22638b845424d1', 1, 1, 'personalToken', '[]', 0, '2022-11-30 15:36:24', '2022-11-30 15:36:24', '2027-11-30 19:06:24'),
('8188e6d33bcf7123f2c171ec5fc1a9b5a47e34576704120ac1c2c1a284bb4d653c75d3133794c6de', 1, 1, 'personalToken', '[]', 0, '2022-08-25 03:12:43', '2022-08-25 03:12:43', '2022-08-25 08:42:43'),
('81fb07ccfb6628714ee622127857b3d87c0eefda8d77fd5b151cc0cd26413c47dc91a06517b8dfcb', 2, 1, 'personalToken', '[]', 1, '2022-10-10 15:35:55', '2022-10-10 15:35:55', '2022-10-10 20:05:55'),
('820055c6a3b84016283b26a7a6c590c6042fbab7bfcfa6fee755556442277f9f960f525608e7df65', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:07:57', '2022-12-16 05:07:57', '2027-12-16 08:37:57'),
('8200ce4890686bc91beeaa41f4eb3e195e05158e9c9034c8af5d29482726d0c6498525f6afd91d6b', 1, 1, 'personalToken', '[]', 0, '2022-07-17 08:52:31', '2022-07-17 08:52:31', '2022-07-17 14:22:31'),
('82492c051e33e80920290328804b7d832a81292cdcfdbc6d6d6adc689b0a16e83f6c8fc04f634e18', 1, 1, 'personalToken', '[]', 1, '2022-07-09 05:49:30', '2022-07-09 05:49:30', '2022-07-09 11:19:30'),
('827a6ee519f98ec0479cb7f30c647e640a5b85a511b6c7bdb272f0ea90a2371ef051e5d684c948af', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:52:35', '2022-08-27 01:52:35', '2022-08-27 07:22:35'),
('8280fab44ae088171fcbe20b17bf2db164ed23f7dc11419bb207f99709a93ff5bd16dc548ee9fc6a', 2, 1, 'personalToken', '[]', 1, '2022-10-18 12:12:18', '2022-10-18 12:12:18', '2022-10-18 16:42:18'),
('82ac8c51473fd5a75b050709c8e554569022c9f2d0fe8ffd11e349084f3f2f463fe518c77fb5617e', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:00:08', '2023-12-11 05:00:08', '2023-12-11 09:30:09'),
('82afdf10ff216f68bd466cad8e79d4e9ace4216b8e590e52dd0d9d3550a5aca8aff1f24c27218c1e', 1, 1, 'personalToken', '[]', 0, '2023-04-23 12:00:50', '2023-04-23 12:00:50', '2028-04-23 15:30:50'),
('82e46da02462129d5bc56d5527fc8ba79b047d9de643ac8e62d19d275668b67a5f0daf61aa6c3844', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:53:21', '2023-03-04 11:53:21', '2023-03-04 16:23:21'),
('82effe7bd6bf2c1f942927650d5992633132c5a89f584f0b8f0f486821483f9ee48ec1e5f7307997', 1, 1, 'personalToken', '[]', 1, '2022-10-15 14:18:22', '2022-10-15 14:18:22', '2022-10-15 18:48:22'),
('830e52da707f2aaeaad040b35bb0c5e7a3f5b4b78ea3c58362244ccf089c243d5547bc383eb4d2bc', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:07', '2023-11-17 15:29:07', '2023-11-17 19:59:07'),
('8332ab4ac5a7d8df34687b524894612f4c5f406144645eb95c365e45bb4c594832bdb718de36d2ff', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:17:58', '2022-08-01 16:17:58', '2027-08-01 20:47:58'),
('8349873ca098aae31483a8ffe403254d7786ef20a9e2010fbb336ab51df2fb832746ab028013e511', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:47:12', '2023-05-16 03:47:12', '2023-05-16 08:17:12'),
('834eddeedef38fe826f91b13245ec6a1f5c889e6cf6d0eef61c6ec09952268a3e9fdb95271eae0a8', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:36:47', '2022-11-21 02:36:47', '2022-11-21 07:06:47'),
('83518a720b6ba964e3d4e9f256c01a628dc750802de0782b7b7d313a0564bc982fd4535e209adb38', 1, 1, 'personalToken', '[]', 0, '2023-04-20 10:59:20', '2023-04-20 10:59:20', '2023-04-20 15:29:20'),
('8388d282179a0882580ed5ce9be228ec419f4844a29ecf578df2ab5421cbb8ead70e0047ccdd5ea9', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:51:00', '2022-12-26 06:51:00', '2022-12-26 11:21:00'),
('8391aab206c7937e80f80c66c98bfabaf046ee98d9a9185096f9dd80827984786093cd56be860299', 1, 1, 'personalToken', '[]', 1, '2023-05-16 13:23:09', '2023-05-16 13:23:09', '2023-05-16 17:53:09'),
('83d7d87269032e1617e7cbdcefec6648a3c108afa2f1b4fc35f7034738c32e485fba2e11d597dd8d', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:57:18', '2023-04-24 11:57:18', '2023-04-24 16:27:18'),
('83ecd5542b117de965dd12211d88e7b3158758c4e72d2ed4edbc1b378b859cfdb9a121252a160091', 1, 1, 'personalToken', '[]', 1, '2023-01-21 06:04:58', '2023-01-21 06:04:58', '2023-01-21 10:34:58');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('83f51932330d6171eda2f8b7af4316986acbb748cdae112961d1b15cbc18a6a723561d3097da1387', 1, 1, 'personalToken', '[]', 0, '2023-05-27 08:29:04', '2023-05-27 08:29:04', '2028-05-27 11:59:04'),
('842bbbea439890e6a404f2befcddfa539e6c293237553a8157eef7fc2a5773e77a52f8932fb928c3', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:43:33', '2023-02-03 15:43:33', '2028-02-03 19:13:33'),
('843158d03f95ad2eaa3d20d7ac59ab3a553dd8ec264d0b8e8b824646e07ead227481ce71d787787d', 1, 1, 'personalToken', '[]', 0, '2022-07-13 12:58:20', '2022-07-13 12:58:20', '2027-07-13 17:28:20'),
('843ab59740ecdf6df6f7a50c0f93e94328860aa4519e2475acfd4ef3c5d1aeffd6ba37be87a3efd0', 14, 1, 'personalToken', '[]', 1, '2022-12-26 17:05:29', '2022-12-26 17:05:29', '2027-12-26 20:35:29'),
('845b65a4bee711a85c579cb56bc669dfca3928fb50de47d81960eef4af5dfc5a156ab1a1386a05cf', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:51:12', '2022-11-21 02:51:12', '2022-11-21 07:21:12'),
('846131f39f0fec463b7dcda19b4fefbbf8e5eb7a10417d8d57ab5fe41a2a0d4bcd754f8180a60a28', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:51:04', '2022-07-12 08:51:04', '2022-07-12 14:21:04'),
('84663fe448f5e132e8e1a40bec7b8cb06bd0772322ee1bec6b7f6939cdb5cac702394b52e8ff6cfc', 1, 1, 'personalToken', '[]', 0, '2022-10-13 01:25:17', '2022-10-13 01:25:17', '2027-10-13 04:55:17'),
('8467732301ff9af894176186520ccc2eef34ee552b6fce72339fb1fff1eb63d673621353b7733430', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:12:03', '2022-07-06 07:12:03', '2022-07-06 12:42:03'),
('847a31de596fc16b8412f704903ad4349a6355ddd90fd2b7c87e440b24511a4c93c8c0b9cc657786', 1, 1, 'personalToken', '[]', 0, '2022-11-01 13:52:12', '2022-11-01 13:52:12', '2027-11-01 17:22:12'),
('8498c384d11bb9fe37b536aa73d0a52f03f811417f2a8310922386ec96ea098c6cbf982e889f781a', 1, 1, 'personalToken', '[]', 0, '2022-12-14 11:08:25', '2022-12-14 11:08:25', '2027-12-14 14:38:25'),
('84a6ce41e959cd32dbe54324e372c7a67f21675e0bfc580f8d1903510c97a38ae822db4a9825f267', 1, 1, 'personalToken', '[]', 1, '2022-10-13 18:15:11', '2022-10-13 18:15:11', '2027-10-13 21:45:11'),
('84c103c85acbbb4a5fc05926f846a9e2aad7d9d62fb031834f990d25a149ae49d20b3ec6c24958e0', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:39:52', '2023-06-30 09:39:52', '2023-06-30 14:09:52'),
('84d88cae943a46bb2c5f14fb287724476a3686fa38e3f46c8588c870f67a79d24fc8e414a63d8565', 1, 1, 'personalToken', '[]', 0, '2022-12-14 11:08:03', '2022-12-14 11:08:03', '2022-12-14 15:38:03'),
('84ea499b82a025d693e6a29713d320e0fd8746cb54aed6b2ea55a9f9e215ed35e8a87aa812850b51', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:49:48', '2022-09-26 07:49:48', '2022-09-26 12:19:48'),
('84ed16f5b99f63748903ace5108595f98711b92a64352c3d13ad3893d05b02f4f3df595366ff8a9d', 1, 1, 'personalToken', '[]', 1, '2023-02-03 18:04:41', '2023-02-03 18:04:41', '2023-02-03 22:34:41'),
('852908567df1a2e5d8aad52bbc458e7a35ac8dea13bfa858eae058f8621eb288264ed2b006d624af', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:45', '2022-08-03 03:51:45', '2027-08-03 08:21:45'),
('853a8378610fc63176dbb26b6f11a7bedc262f678c1fc4f2a021c43ca5d85f45878646eacb2691ce', 1, 1, 'personalToken', '[]', 0, '2023-01-22 11:34:02', '2023-01-22 11:34:02', '2023-01-22 16:04:02'),
('85550eb5bb952e03b8272732af6e71d67bc2adb31564dabcdb1cad0582a4e76f955d9bc936134fa7', 1, 1, 'personalToken', '[]', 0, '2022-11-29 08:24:25', '2022-11-29 08:24:25', '2027-11-29 11:54:25'),
('85575a318e69062b1e5d91c8d711a9c1c547e04a73813185c87d5bcbdb3274dd833862fa7575ad47', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:53:05', '2022-12-08 05:53:05', '2027-12-08 09:23:05'),
('855efcbbb6007da56b3682fba57dabd40f954957cecaae4b7be98512a1413fabb48af1725fb5a397', 1, 1, 'personalToken', '[]', 0, '2023-04-14 15:19:06', '2023-04-14 15:19:06', '2028-04-14 18:49:06'),
('857f1cc1c72da00e996aa5cd78ae4f47e65c72810d6b3b9ec3bfd8163238afbac38103e59e2707d3', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:30:33', '2022-09-28 06:30:33', '2027-09-28 10:00:33'),
('85ad8def2a6d4b0c8d7c74e5d95de158716b8a5bd32053536797c877b1ee4cefcd971f1f77ed29f8', 1, 1, 'personalToken', '[]', 0, '2022-11-13 05:55:07', '2022-11-13 05:55:07', '2027-11-13 09:25:07'),
('85b2c3064d55264ce8d6c16a93ae17880ab165843e646953b3914b15eea08e8affe4cf5fd23145d9', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:11:25', '2023-08-07 08:11:25', '2028-08-07 11:41:25'),
('85d17dbd0a564c8074167d49c4744f7b1321e95b224f6be0e30ea2426d35667d6d65a9bade472e91', 1, 1, 'personalToken', '[]', 1, '2023-07-15 09:15:27', '2023-07-15 09:15:27', '2023-07-15 13:45:27'),
('85f5144063c5f0e2c77382819f898e486740f115ae2462fc8524e8a63e27afeddb64b42282ecff78', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:36:09', '2023-06-15 03:36:09', '2023-06-15 08:06:09'),
('862882c3dcd9b3ca631fc1261c57b17a3057640605c54a209f7e5c9f3f2e5832bd2f392b75ebd9dc', 1, 1, 'personalToken', '[]', 0, '2023-01-31 04:27:42', '2023-01-31 04:27:42', '2028-01-31 07:57:42'),
('8699bf3c8668638e008145eb4b5a97b448c966576daf7c7f0d423ffac823332d99eebcbacac399c3', 1, 1, 'personalToken', '[]', 0, '2023-01-27 15:38:02', '2023-01-27 15:38:02', '2028-01-27 19:08:02'),
('869bfeeb4b2f43839e802fe44e3523675ae34dfea56b9433e42a78b89c4d36671805a6f321f0d9a2', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:29:59', '2022-09-28 06:29:59', '2022-09-28 11:00:00'),
('869f48355e1fd20b4be723cff248e97302a4d7f6dd0fbd077be8b8a8e3c5f65b2aa8eed55caaf3ab', 1, 1, 'personalToken', '[]', 0, '2023-04-23 11:38:12', '2023-04-23 11:38:12', '2028-04-23 15:08:12'),
('869fc53c8fb795ea62de10806ff5496394abf07e4d32dfb106a46ac184e40d899150e755ecef7696', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:30:31', '2023-06-30 10:30:31', '2023-06-30 15:00:31'),
('86a9e893ac2287625b9decce66d0f3fa03d406a73a5d57d469a5f8e2e36fdf57c402ba5a326113c8', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:26:47', '2023-08-08 08:26:47', '2023-08-08 12:56:47'),
('86ab8b2d4e14593df7d04638339a693f79dd0c55171955b34fbd8663baacdb8497340d3945996455', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:42:43', '2022-11-21 02:42:43', '2022-11-21 07:12:43'),
('86b1b50cb32f4cc4ea0403346a5ae8053bd6098c860881c877b815e52138bb85265113b8a03e3d4a', 1, 1, 'personalToken', '[]', 1, '2023-12-14 05:22:17', '2023-12-14 05:22:17', '2023-12-14 09:52:17'),
('86c0407f6ad5e5b654975793fced55a6cd73731296840956567c9f8631fcfe959d4cf36c93b066be', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:50:29', '2022-07-12 08:50:29', '2022-07-12 14:20:29'),
('86f00a2c0be6de6c4a641e493c55d75c79db492ea557c4766a746e50cf5cd3b60136d2668042c82e', 1, 1, 'personalToken', '[]', 0, '2023-04-09 15:59:32', '2023-04-09 15:59:32', '2023-04-09 20:29:32'),
('871ede7106915683a3895ceca2b2c77571f1c1bee6968679104fad1bec0b9dd17f260c424ffe72ad', 1, 1, 'personalToken', '[]', 1, '2022-07-17 03:36:25', '2022-07-17 03:36:25', '2022-07-17 09:06:25'),
('87caf86e5454866ae9044e29b2766c280a636fdc92d74a55bf48a0ecb29085a4ef3a4b78848c6b40', 1, 1, 'personalToken', '[]', 0, '2022-12-04 14:59:36', '2022-12-04 14:59:36', '2027-12-04 18:29:36'),
('87e40055af9c6af8a5693bbfa51cefbd34721f4bacac93eff5e4fb334fd440cfad980d7ff51452f4', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:28:44', '2022-11-28 17:28:44', '2027-11-28 20:58:44'),
('87f934c7a79baee9bbc120ca17ee2c375f4243da1fa7bb54ae8c82ed3bf4f52d38ac2937dee151fc', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:15:45', '2022-11-12 01:15:45', '2027-11-12 04:45:46'),
('87fcd02a1a8c0253c480626c76ee5a212c90aa95d57eff140aabff0a15189b4b7d252e1a5fd380ed', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:46:20', '2022-12-26 09:46:20', '2027-12-26 13:16:21'),
('880c7d4ee15d78230162ed148ebdac6810027bb21453c15bb7b50cedbdee82f2c7afb6cf2dfbabea', 1, 1, 'personalToken', '[]', 1, '2022-07-18 11:38:20', '2022-07-18 11:38:20', '2022-07-18 17:08:20'),
('882509da9cc3de15200e7732813217d884e39a199f19ac69d8c33d07ac2ea46f1098b7f656eae791', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:42:37', '2023-04-11 08:42:37', '2023-04-11 13:12:37'),
('8846fa49837da7c567f44372646426a7b95f189ee03b37588b94469dd982364a5b6c50c294bfb5c7', 1, 1, 'personalToken', '[]', 0, '2022-10-22 10:52:40', '2022-10-22 10:52:40', '2022-10-22 15:22:40'),
('884e13059ab8a41460763afd153020ffe75f40e82e1911888cbc5821d4bf16df258c738b78f6f848', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:49:05', '2022-12-26 09:49:05', '2022-12-26 14:19:05'),
('887532fc6e5bbb047bd9e6138228530f9e19425ac66d679017e73e49fd57865b69186ab77194bd76', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:35:24', '2022-12-26 03:35:24', '2022-12-26 08:05:24'),
('8894420f2e8a4d1e4419d8a296f365e15606ca27a1ec017d9ab60ead80dedcd89fc96f761be47f4c', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:06:03', '2023-04-11 08:06:03', '2023-04-11 12:36:03'),
('8896b1ffe8d566597c469633f2c3c3aad51407dc9af722ee7c81d5978e2856d25ecf0ed5133c6c1f', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:02:26', '2022-08-28 03:02:26', '2027-08-28 07:32:26'),
('88e0e1342ff4b6885a526dc6722b20c6fc4c97541d1f2f41d5341f5b3197df45804a4c16c4c316da', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:27:03', '2022-12-26 06:27:03', '2022-12-26 10:57:03'),
('88f57766b34699e5706af7710002fccdf12829b716d0dc383f626d8a6ca59cda6ea7f8e803e542a3', 1, 1, 'personalToken', '[]', 1, '2023-01-21 06:05:24', '2023-01-21 06:05:24', '2028-01-21 09:35:25'),
('890235704f2a3be48326e87bcfeb2205490bda3d1b3d7486637949b5db6e0d94f6d310fd8cc9d8d5', 1, 1, 'personalToken', '[]', 0, '2023-05-08 11:05:52', '2023-05-08 11:05:52', '2023-05-08 15:35:52'),
('892369cbffa90789e3798d0132785ffdff012f5b5810fc6bbd423e054e2622f220b9905b63fd386b', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:03:50', '2023-05-16 11:03:50', '2023-05-16 15:33:50'),
('892b1a2aaed1ee2f1aeadcc3f349dfe10c7623b4214790d921c20d939d1f78971e1e6dc30d2f07ef', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:53:22', '2022-08-02 06:53:22', '2027-08-02 11:23:22'),
('893e7de7a0abb89da8c6a542fcedac8472042209d1fdb1c1948abfe7d13e6c4de9f37c8b937a3c10', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:49:44', '2023-02-05 17:49:44', '2023-02-05 22:19:45'),
('897362c863d59eb8c3c836706ed1581cf9547bffcf981ffe2236b129606373dec2268917d2980a07', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:25:02', '2023-09-27 13:25:02', '2023-09-27 17:55:02'),
('89a18cdd8a0a8ee773a95626a490029201b54527b78e37157da82cbd22ead46bc0b27b531c816933', 1, 1, 'personalToken', '[]', 0, '2022-12-14 05:26:45', '2022-12-14 05:26:45', '2022-12-14 09:56:45'),
('89e1a5b866f45164ad281f1d19762d44fd4329fb6b56a9b6ae2b68674f0272ffa70b6ec2ffe1a5cb', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:44:02', '2022-12-26 09:44:02', '2022-12-26 14:14:02'),
('89fb2e5f8473e658c596801f5ca8570906fc40ced062b41eb43aa8cad4b8b8cc7b79574b20e11137', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:31:29', '2022-12-26 09:31:29', '2022-12-26 14:01:29'),
('8a118b489e281af4acc5fabbddc87e89ade7c9c37f07385063f18b618a441571b667f72f62ade9c5', 1, 1, 'personalToken', '[]', 0, '2023-08-07 07:57:39', '2023-08-07 07:57:39', '2023-08-07 12:27:39'),
('8a1ab124c5f8d333b710982d78322a25a3dd0ac07d64de2ac1a35170a04db5e512da34d7e58fd96d', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:39:44', '2023-11-17 15:39:44', '2023-11-17 20:09:44'),
('8a1c7288c39b570067324adcf57d1f4233fa5e9c389e71a8af8439eed50c0875ef29c3afa30f4af4', 1, 1, 'personalToken', '[]', 0, '2022-08-25 01:21:29', '2022-08-25 01:21:29', '2027-08-25 05:51:29'),
('8a3b417d5115d67222ee6bf9432afa24262711969704b2d51afcc5c4b0d3f222168c66d31a4cd43c', 1, 1, 'personalToken', '[]', 0, '2023-05-16 10:48:56', '2023-05-16 10:48:56', '2023-05-16 15:18:56'),
('8a427d19734683c86b4c0874294c97677da11ada1de2f14f8c5bd98610a986bb9602135b99d66421', 1, 1, 'personalToken', '[]', 0, '2022-12-05 11:14:16', '2022-12-05 11:14:16', '2022-12-05 15:44:16'),
('8a4fbc61e0bd596a99ed0c3c77abb434a201a8c9fcb80eb7a82380f70eec59fd2b46b096ae04ee2d', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:36:30', '2022-09-26 07:36:30', '2022-09-26 12:06:30'),
('8a7277b492f7560bcfa175e727b4024bd43d4dcb853f2f49c0d6dd18a8c52065ad7e24851097422f', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:17:49', '2023-08-14 07:17:49', '2023-08-14 11:47:49'),
('8a75c3f2eb6e4afe2f0ce65ac6fd4365d47c54bffa50d84ba9518133940fc276a6328622d4444fe5', 1, 1, 'personalToken', '[]', 0, '2022-07-03 04:15:55', '2022-07-03 04:15:55', '2022-07-03 09:45:55'),
('8a85dcf39bc2b31e719cba6fe7adfb2f775cd6e32cb95260413a88f8c00048f19fcd32d1b651703a', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:18:02', '2022-07-12 05:18:02', '2022-07-12 10:48:02'),
('8ab04d0c1a190b4a6a380a0d4fa79409cc6d93b711baa1de8182ab3e2b8e30e77be0fc7832073fff', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:53:01', '2023-05-15 21:53:01', '2023-05-16 02:23:01'),
('8accf8bf98b1f8f5bca031efe0a1a21c8ba668de7b2bf9452d5fc6d2ce26808a83a3d5c90e7e2675', 1, 1, 'personalToken', '[]', 1, '2023-04-24 12:03:22', '2023-04-24 12:03:22', '2028-04-24 15:33:22'),
('8ad2c16f55ca628e8791d7d0d3c68585974286e8a2e3432d10bd75507408db131df1bd5c4e87bbb1', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:22:59', '2023-08-14 07:22:59', '2023-08-14 11:52:59'),
('8ad4823819358ccb15fc2666047210063380544c136de47df2312a664b505af0c0e3a2d38e0b4d61', 1, 1, 'personalToken', '[]', 1, '2022-12-26 04:56:57', '2022-12-26 04:56:57', '2027-12-26 08:26:57'),
('8b04ee6f87b83d73209942d0300dc77a0bcf124567004fb1af1357b6b94d6ae61f84e72b9f28c092', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:42', '2022-12-16 05:08:42', '2022-12-16 09:38:42'),
('8b14806c6ab2dd100041990de5bacef13151f6226e1ca3bcf61fd2562e6b1af108128fb691f8e94d', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:12:58', '2022-07-12 05:12:58', '2022-07-12 10:42:58'),
('8b23cb23701e5dd215d611dce8c0d7db7084888f46d91308bd573b5a8d74fe3850bb784a4e53a839', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:46:18', '2022-12-06 07:46:18', '2022-12-06 12:16:18'),
('8b284a25445e6d61563b5ed0f3a0219db7099273938460506581af91e04e0f57141ff348b5af3b9e', 1, 1, 'personalToken', '[]', 0, '2022-11-13 06:44:49', '2022-11-13 06:44:49', '2022-11-13 11:14:49'),
('8b2c00e841484c2ec9e5af37781eb6f107c6742ff1730e9f056db9cf04826db614098909e19d6e1b', 1, 1, 'personalToken', '[]', 0, '2022-12-28 03:31:48', '2022-12-28 03:31:48', '2022-12-28 08:01:48'),
('8b87b14364bc3e2d57d87a67e4cf67b176e9e1d38d621c037532cdec512b423ad70f87a60c255375', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:57:55', '2023-01-06 12:57:55', '2023-01-06 17:27:55'),
('8b89556452eff3eef084a7b0671f99290f0ecb24055478daaac125e36fcad1b03a9ecd44aa7b1f95', 1, 1, 'personalToken', '[]', 1, '2022-12-29 18:13:05', '2022-12-29 18:13:05', '2022-12-29 22:43:05'),
('8b969e564866b9f1cc48be95f83494498ed80bab1bfb490d2ee42ae8b244a82803f2e6b33e06f338', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:53:51', '2022-07-06 04:53:51', '2022-07-06 10:23:51'),
('8ba813e7a071341b0ebc9419df89ce700af0fddb2210fd21e027143bfe387009d0b6509b087062e4', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:46:26', '2022-12-08 05:46:26', '2027-12-08 09:16:26'),
('8bc9b5cda439743c0685639522cf79f51b53543f195f3939faa57b8d171df010f1d4d59609218036', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:58:25', '2022-07-06 04:58:25', '2022-07-06 10:28:25'),
('8bfa8ce5bddf5e90575391a89c64572ed5d53be01f65579c052c28bd63ca6ab594082733e3a6355c', 1, 1, 'personalToken', '[]', 1, '2022-10-23 03:38:43', '2022-10-23 03:38:43', '2027-10-23 07:08:43'),
('8c0ffca0cd6c60d1528e94f80d1334a44bd9eadf9b4c8f3566796c41bdecc61c9748734bcb97b255', 1, 1, 'personalToken', '[]', 1, '2023-02-20 18:26:29', '2023-02-20 18:26:29', '2023-02-20 22:56:29'),
('8c226e02cfbffca57e4de040f14e213bbae3d7bbca142a6154af123ad0b2991b79dc83ef9b25002f', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:13:21', '2022-08-01 16:13:21', '2027-08-01 20:43:21'),
('8c4c4ebebbac6090d1cabb10aa3755e16d930c84f87616a996708899b29816a753d09203b209ecfd', 1, 1, 'personalToken', '[]', 0, '2023-01-16 14:56:53', '2023-01-16 14:56:53', '2028-01-16 18:26:53'),
('8c572fb49ad5ea220f33442f7ccaf9862c5a2c6cb6427f0c6931157b7a2da18f6d575768aa1a2b01', 1, 1, 'personalToken', '[]', 1, '2022-07-02 13:07:33', '2022-07-02 13:07:33', '2022-07-02 18:37:33'),
('8c71af82ca000155c8a897a5ec3f9e185bc4a03d9bf86ad217335037e3899fcf910047a0a5eb3336', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:10:28', '2023-04-11 08:10:28', '2023-04-11 12:40:28'),
('8cab01de7556dc10450a37d0b42f9f10991f66f66ba3e42f2f0d08e98230cfe4fda43ddc3d2d37e0', 1, 1, 'personalToken', '[]', 0, '2022-06-28 14:58:58', '2022-06-28 14:58:58', '2027-06-28 19:28:58'),
('8cb76887e4bf114f11e0d602f4b2497359814db466b14662310e813fd9e46092a23dcdbda040cf7e', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:22:15', '2023-08-12 08:22:15', '2023-08-12 12:52:15'),
('8cbe0cd8072d8ab0036fca0f363530222cf514a944440912e2c7c925f4cfa543fbdd823f232aef20', 1, 1, 'personalToken', '[]', 1, '2022-07-25 13:56:05', '2022-07-25 13:56:05', '2027-07-25 18:26:05'),
('8cd0a79c7841a64120643f9b9b01231a32eae53f3182e4c4da05900e0a9cac0825cb06435c9fcb93', 1, 1, 'personalToken', '[]', 1, '2023-04-24 10:32:50', '2023-04-24 10:32:50', '2023-04-24 15:02:50'),
('8ceabb5d66a72f0b1fe947af12269b73d7082766eabfe2071d8637582a13b44e63f2be26343edf05', 1, 1, 'personalToken', '[]', 0, '2022-12-25 04:03:32', '2022-12-25 04:03:32', '2027-12-25 07:33:32'),
('8d070c89879db83440246faaa2c8203b3a5a5d3151c5e2b96ebfada46b787a21f60c932517ddbff1', 1, 1, 'personalToken', '[]', 1, '2022-12-12 18:28:02', '2022-12-12 18:28:02', '2022-12-12 22:58:02'),
('8d1650a6f347a12ac99875b2f482a00635b3c4932bcfe42827da264757d065fca47b1b7114fda163', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:19:37', '2023-04-11 17:19:37', '2023-04-11 21:49:37'),
('8d8aa6b3ad848db037f639e68b38e66dc3775bed62d10e8bd42d9f3946e4fd40532a8ef0bdc8467b', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:20:54', '2023-01-20 11:20:54', '2028-01-20 14:50:54'),
('8db0ef9294ec2b3760da872e50cb38d7516e275c4facbb77704b8eaccb764a474e7e88943cc32960', 1, 1, 'personalToken', '[]', 0, '2023-06-19 01:19:19', '2023-06-19 01:19:19', '2028-06-19 04:49:19'),
('8dbe727611d8508a89c57caaca82f93d7fe0e8e0174c6800807776f66c610a0cae09c8781d05333f', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:02:07', '2022-07-12 05:02:07', '2022-07-12 10:32:07'),
('8dc3059e9a51d6cc71c2c2bdf2147381b060a356adc5ebb772e46e20b51861bb47c8602fecf138e8', 10, 1, 'personalToken', '[]', 1, '2022-11-25 11:57:48', '2022-11-25 11:57:48', '2022-11-25 16:27:48'),
('8dc896328bf4fa3e68229e524fad4d9a9de021bb7259edb6797c8e0de119e5cea0b159ac998819d0', 1, 1, 'personalToken', '[]', 0, '2022-12-16 06:38:21', '2022-12-16 06:38:21', '2027-12-16 10:08:21'),
('8dfdad090bc98a3b4f073190b0d5eb0a1518ec6893c470ec762f25ef8ce058cb4e71226401659143', 1, 1, 'personalToken', '[]', 0, '2022-11-12 04:48:02', '2022-11-12 04:48:02', '2027-11-12 08:18:02'),
('8dfe3f4adb4bbe659822d8afffbf5735fdb33ca1af8686af34a4e956e88e19156c57bd76cb903e5f', 2, 1, 'personalToken', '[]', 1, '2022-10-10 15:11:43', '2022-10-10 15:11:43', '2022-10-10 19:41:43'),
('8e26f371cadff49fccf1b921666c5f02e99fb403f54e1355da81501651201b28f89bee8648a69bee', 1, 1, 'personalToken', '[]', 0, '2023-02-04 04:23:54', '2023-02-04 04:23:54', '2023-02-04 08:53:54'),
('8e61ce24e0c259bc88cbc14e4375ba5ef09e57b218caf01c82d4ad424b9b80bf7b783652ed85df6d', 1, 1, 'personalToken', '[]', 0, '2023-01-30 05:02:46', '2023-01-30 05:02:46', '2028-01-30 08:32:46'),
('8e6ec632849704aa3e9d48cd174295d19d29461783942d3bcb2069a3af2ef8e1f7185b6147b2f794', 1, 1, 'personalToken', '[]', 0, '2022-12-16 08:06:24', '2022-12-16 08:06:24', '2027-12-16 11:36:24'),
('8e701c1a120f56f48e39cd12728d5ea99c8b503fc0598a07255a924d79e6bce82fd702c72d4c533e', 1, 1, 'personalToken', '[]', 1, '2022-07-05 11:19:18', '2022-07-05 11:19:18', '2027-07-05 15:49:18'),
('8e71d59a2bba39e7ccd2c6848abcdbf014375fcd616682865aec68e7524dc0af73bdcb66b4307c08', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:44:19', '2023-08-09 01:44:19', '2023-08-09 06:14:19'),
('8e72f96ed17d5e9ac9cc605faf30ad8edae4fb17734a48c79906facb729c3373836d59cb6619776b', 1, 1, 'personalToken', '[]', 0, '2022-10-22 10:52:32', '2022-10-22 10:52:32', '2022-10-22 15:22:32'),
('8e89476b3a1d720622a13714c59d75a1db35bf51c8b2579d3d3f6cf63e21765cee85f291fd389d99', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:01:54', '2023-06-21 05:01:54', '2028-06-21 08:31:54'),
('8ea4a264cc206f81cd9f149c70adcb8f171370963d7c457776034d9a7a5eed32dd016b3df0e20de2', 1, 1, 'personalToken', '[]', 0, '2022-07-31 09:06:31', '2022-07-31 09:06:31', '2027-07-31 13:36:31'),
('8eb4c0c731da7a17cd75cb288490c67c8f5746647780f62e647e412f330a436fbda7142bd4120101', 1, 1, 'personalToken', '[]', 0, '2022-12-06 06:57:42', '2022-12-06 06:57:42', '2022-12-06 11:27:42'),
('8eb6494fa3f906d94c9e0faaf5baf18978f91614b8fc2215412728eb0f4a3b6d2b5fb56ce573a82b', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:44:45', '2023-11-17 15:44:45', '2028-11-17 19:14:45'),
('8ef9af4efe4b9d4fc71d8c6d1ea3fa67e9afad269e6858491f14e2366fbd1676478e91100e695a46', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:53:19', '2023-05-15 21:53:19', '2023-05-16 02:23:19'),
('8f05cd27c5694b9e76207c57bcfb0f8aebb87c2fb0fd44265c293c7b7dc8a83fc5408cdc7f161334', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:14:39', '2022-09-28 06:14:39', '2022-09-28 10:44:39'),
('8f22ff79f7df19df50501fb6f1cb8666d7d78e2532f9d135a0d960046eb71eba9ef8fe5fc3e59449', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:45:54', '2023-08-01 04:45:54', '2028-08-01 08:15:54'),
('8f45f2a4d55bee920983d3f36da75d0e4219b43b2dadc32a9af8041f3c52ca0a6b47de82158286b6', 1, 1, 'personalToken', '[]', 0, '2022-12-05 11:17:53', '2022-12-05 11:17:53', '2022-12-05 15:47:53'),
('8f63638d873d7ed04ae419831cda5c02e3c72ffaa14c3cff25db5c5f4f22eb6a3b5721d25f696725', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:40:47', '2023-06-21 03:40:47', '2028-06-21 07:10:47'),
('8f7b4a5a12ae85326ee8e1372188a3996700fd73f08f4d059605b346af1cdd2e06be32e235df77f3', 1, 1, 'personalToken', '[]', 1, '2022-09-29 17:30:21', '2022-09-29 17:30:21', '2022-09-29 22:00:21'),
('8f7ea0a1a407dce366eb400dff94b97ff64da9cae2599c69583415ecbfd241128633a47bdc79430c', 1, 1, 'personalToken', '[]', 1, '2023-04-30 10:27:48', '2023-04-30 10:27:48', '2028-04-30 13:57:48'),
('8f9a9007d23dbbf97aeefda0e73b5b4e840d80ac4c2148e0953326af0d76e2d29df3f18fd16503c2', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:40:15', '2023-06-21 03:40:15', '2028-06-21 07:10:15'),
('8fb142afe9ffa6d4bea7d9af2516f92a2727c98a5ee33ea931fb9ec51d7fd12c480df38d04d17540', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:16:55', '2022-10-22 14:16:55', '2027-10-22 17:46:55'),
('8fce0d020b8dc876278f7fd3d72013feb2a35c259a07b967c402aa06ef7e63dfad5effaef454e47e', 1, 1, 'personalToken', '[]', 1, '2022-12-24 05:43:58', '2022-12-24 05:43:58', '2022-12-24 10:13:58'),
('8fcf6b908e88d41ca512360055e6c54338f055082be8585c2c23d560da2c2d5d88ff1392938cf668', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:28:33', '2023-04-11 15:28:33', '2023-04-11 19:58:33'),
('8fe3ca8a9c70589d43d5152bd89538be0debf10b0a073c762f847f2fdbe53d11168751c5d4b12da3', 1, 1, 'personalToken', '[]', 0, '2023-08-14 06:48:05', '2023-08-14 06:48:05', '2023-08-14 11:18:05'),
('8fe5df5825c94a7c1ce23f0344f3a369ea8f3cfa7297be13c81b5b252deec3ba1f196b8efa1a134c', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:51:57', '2023-04-11 17:51:57', '2023-04-11 22:21:57'),
('8fe8d4620f83dd482545be4a8ecafbcb7c6cc92859ece91f5e8702e118d7019baf503e67173f7af1', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:25:13', '2022-10-22 15:25:13', '2027-10-22 18:55:13'),
('902721e94c97ab075d5df929b1d3bfde84e7c1800ce082f387267220c0d4622451506e6f0331f15b', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:40', '2022-10-14 13:23:40', '2027-10-14 16:53:40'),
('90363e7880745d5916fba74a5297dc97c5441b84e18dd185b6338fb56069df3adcdaa3c072410a88', 1, 1, 'personalToken', '[]', 0, '2023-10-14 01:55:14', '2023-10-14 01:55:14', '2023-10-14 06:25:14'),
('9048cd3f7a74b1ccfa9c85e86533477efb20b73754ef9a6bed882f8a1bf07be5f7c6244b4bce375a', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:50:48', '2022-08-03 03:50:48', '2027-08-03 08:20:48'),
('905651333ddbae6030a6f3c4a45437272ecc583d00cb6316d6146e4bb7aeab1b59d10460c4433ce9', 1, 1, 'personalToken', '[]', 1, '2022-10-13 04:45:48', '2022-10-13 04:45:48', '2022-10-13 09:15:48'),
('908b502fef4ddbdaaf93ef95383be13e7bb6b057c5566023169e07d85c1245f4b5b90ea34d03d2fc', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:50:00', '2023-07-10 11:50:00', '2023-07-10 16:20:00'),
('90a4408b886834f1a5082d2c47dc365d7f6c1693669cabfbfaae12f38cc8e77f34b1effb23a18c4f', 1, 1, 'personalToken', '[]', 1, '2022-12-26 17:06:47', '2022-12-26 17:06:47', '2027-12-26 20:36:47'),
('90d46ab99fab41c879a8542589f22db7eccb940181dd287d03aed7e6a247121968c4fd1253c7eaca', 1, 1, 'personalToken', '[]', 0, '2022-07-30 08:51:09', '2022-07-30 08:51:09', '2027-07-30 13:21:09'),
('912b56773248df7a61f54949542675430360a00bb80759df8a53cac95b1a1dce6f8ba2b780fc7c7b', 1, 1, 'personalToken', '[]', 1, '2023-03-30 10:32:03', '2023-03-30 10:32:03', '2028-03-30 14:02:03'),
('9142bfcb58fc33daf9c52e864e3d3b46df6ca701fa4a066d0a79723e43ec31e046dce09446c6fbca', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:16:35', '2022-12-02 09:16:35', '2022-12-02 13:46:35'),
('914710609c05ca9b91c88cd13825e0cdda5e56dcc81da6613c34c80acf399a7870835c44587ac7ee', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:58:50', '2022-08-28 02:58:50', '2022-08-28 08:28:50'),
('91583d8ded03639d82f35aaed266706f80efc16f3d0c55a7b1dd3de3127e8e12762c864df2b35170', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:14:24', '2022-08-27 01:14:24', '2022-08-27 06:44:24'),
('91672417eca52120131120fb86d288a7d90f2f3e32f63478f0fcba1c02edf2bc7921d20ee538e157', 1, 1, 'personalToken', '[]', 0, '2022-12-15 05:06:38', '2022-12-15 05:06:38', '2027-12-15 08:36:38'),
('917b414d205e0adc6e48064ff6f3a9ccdb24a551f6eb1288fe3f3466042dac9add49a4ef5dc1b59a', 1, 1, 'personalToken', '[]', 0, '2023-06-15 06:56:24', '2023-06-15 06:56:24', '2023-06-15 11:26:24'),
('91ba60e4574882b8b8783599621989e1b31d6ef5196a3b000e1f53077181b0c5f175e4ae9de80031', 1, 1, 'personalToken', '[]', 1, '2022-08-25 07:21:04', '2022-08-25 07:21:04', '2022-08-25 12:51:04'),
('91baad86d858392603e6238fc01b220447a4b73c9ec5b42309cd7b67fd36b47104325ba236f7f5f3', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:13:19', '2023-07-10 11:13:19', '2023-07-10 15:43:19'),
('91d1420d77d023fcefa3f6e29d77e62668fb8b89b6b4b4957cc8cda30b6c02433265d6b4f42ec820', 1, 1, 'personalToken', '[]', 0, '2023-05-02 11:47:39', '2023-05-02 11:47:39', '2028-05-02 15:17:39'),
('91ea62909112b93bff7bbec6c681f2a3787450ef3608f9bf36a2b0938e15ede7e71a92311109ba25', 1, 1, 'personalToken', '[]', 0, '2023-05-13 12:39:42', '2023-05-13 12:39:42', '2028-05-13 16:09:42'),
('9223c93c1de82002c04cc51c8517fcaa9917873df9241849b0341f38881c0a9f73ff887bb251befe', 1, 1, 'personalToken', '[]', 0, '2023-07-19 03:39:32', '2023-07-19 03:39:32', '2023-07-19 08:09:32'),
('924e349f36507cddd39ba11a1b53ba20c1a8ef71395d7f780fac7d72f81870107a7a6ff8fdd681d5', 1, 1, 'personalToken', '[]', 0, '2022-12-12 14:20:00', '2022-12-12 14:20:00', '2022-12-12 18:50:00'),
('926bf512d40bf6fa6393e3b9f5c7a2c15625c0f452b0a2dd7f6f159cf000b602594205b328962e6e', 1, 1, 'personalToken', '[]', 0, '2022-12-24 03:51:23', '2022-12-24 03:51:23', '2022-12-24 08:21:23'),
('928294e26863422c87a85b25163ad5974d6b823f883d92575997976ac6eb62d12169ab0a6b61a2fc', 1, 1, 'personalToken', '[]', 0, '2023-12-18 06:28:48', '2023-12-18 06:28:48', '2028-12-18 09:58:48'),
('92aef864ca6fb0328e4bc4e60e00b5c8b2472baef451beb07f64d841747ef88102205e0e8154f282', 1, 1, 'personalToken', '[]', 1, '2022-07-11 07:48:56', '2022-07-11 07:48:56', '2027-07-11 12:18:56'),
('92bd270dddb4202eb23758bf4f10725de44b8bf6221bb06610bbe04b1c222c19ce7b96462117e099', 1, 1, 'personalToken', '[]', 0, '2023-01-06 11:03:56', '2023-01-06 11:03:56', '2028-01-06 14:33:56'),
('92be9c9834dcc8ae1c73799f57a35884cdcebccb813143709a2fe67d77b17f66ac2823b59df183f9', 1, 1, 'personalToken', '[]', 0, '2023-05-23 06:12:58', '2023-05-23 06:12:58', '2028-05-23 09:42:58'),
('92c40ae6270d417b9fd2a26d8087c5094c0629a5374e6e9d49b1e67fffe58b50061892a28ccb45aa', 1, 1, 'personalToken', '[]', 1, '2023-03-04 09:54:22', '2023-03-04 09:54:22', '2028-03-04 13:24:22'),
('92e12c1a5c90949f478df3704099f64800bbb021936e042ae283e9ddd2cc237c7d15a26c842f1655', 1, 1, 'personalToken', '[]', 1, '2023-04-24 12:03:33', '2023-04-24 12:03:33', '2028-04-24 15:33:33'),
('934157f4ada0b47efc64cc0dda0eceacc754dcbc5792d87c4bade19a324ffcf460bf9bc6786e1e59', 10, 1, 'personalToken', '[]', 1, '2022-10-28 12:31:10', '2022-10-28 12:31:10', '2022-10-28 17:01:10'),
('9344bc2e1d52a47749099160c58eb77df8d55babb2da5a5cab7d6dbe471a34c2bc96cba87cce18d8', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:59:30', '2023-08-09 02:59:30', '2023-08-09 07:29:30'),
('938b38e8a4b6a12517fa3636b2228d6b4c1864ccbafd1dec4eda046f2396aca7d92a350da0a59927', 1, 1, 'personalToken', '[]', 0, '2022-07-06 06:53:46', '2022-07-06 06:53:46', '2022-07-06 12:23:46'),
('93a156b0a133213a59556bacee245cbc5aa1017fa321f05b240cecdf904eff2b9788efec5e2e8d09', 1, 1, 'personalToken', '[]', 0, '2023-01-26 00:45:43', '2023-01-26 00:45:43', '2028-01-26 04:15:43'),
('93a279c1d7faf5282da4d4c5446899153d3295b6907c60e32ee7188afbda79b45de921494b91bdcc', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:20:04', '2022-11-28 17:20:04', '2027-11-28 20:50:04'),
('93c7673d2174937ec36e26d7fa6dd4013d3c4edf0a1bb538ac830e3799fa57b28e86fdc16f335a82', 1, 1, 'personalToken', '[]', 0, '2023-09-28 10:03:11', '2023-09-28 10:03:11', '2023-09-28 14:33:11'),
('93c91cea0a056e69abf3901ac49671057953d803cbdafc65eb03e982c5136b70600a55bf597b2b34', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:02:58', '2022-08-01 16:02:58', '2027-08-01 20:32:58'),
('93cd494425ee6c7d4da5c649e0ba65d6467cf9a655c0ccad709c5ac20445c4e511d1e7adc0a4c5b4', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:30', '2023-11-17 15:29:30', '2023-11-17 19:59:30'),
('93ff13b4bfec654f38eb45ff455ac9351b2dd86f8ca0202fd96b5c7a3eea1b8cf5795cd8b5fd4134', 1, 1, 'personalToken', '[]', 1, '2022-12-17 07:26:15', '2022-12-17 07:26:15', '2022-12-17 11:56:15'),
('9458d015f0b5764cee5b66a22be63c5947875e093f671bfa7116928d764e1205e7696557e292cd48', 1, 1, 'personalToken', '[]', 0, '2022-07-20 16:21:53', '2022-07-20 16:21:53', '2027-07-20 20:51:53'),
('945d7b86a80904cc8c9a15811e057d23f2b7a540f980d8a2431731327001aad0dcaf55fe120ed5a7', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:35:34', '2023-08-08 08:35:34', '2023-08-08 13:05:34'),
('949aa739de8f9b703cd7fc7175e473a07328652e0adb4ce1956473e3cb71a8344dfacacd62c5d668', 1, 1, 'personalToken', '[]', 0, '2023-03-06 05:55:38', '2023-03-06 05:55:38', '2028-03-06 09:25:38'),
('94b53c21df1dbb95f869297d4e7e6b47b489034f0ec0bd0a40c9b3cf54f0cc9767ddea96232b46b5', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:25:26', '2022-08-01 16:25:26', '2027-08-01 20:55:26'),
('94f8aed9337cdf190b41e48c678909a50a1d0260ca49b408bddf2dfc3b71a18d251ed859aa9ae189', 1, 1, 'personalToken', '[]', 1, '2022-12-12 17:53:04', '2022-12-12 17:53:04', '2022-12-12 22:23:04'),
('95070e90a2e2c5c5db3cc1bcea21db101e8302d523bc289f8780dfda424c003cc9f098ebab448b3c', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:49:13', '2023-04-11 17:49:13', '2023-04-11 22:19:14'),
('952abcf7990f3ff42bfa953b43bc13067bd7a0e6df9e459a2d71d332fff617c77b3b5c421d2bfcf3', 1, 1, 'personalToken', '[]', 1, '2023-08-07 07:11:44', '2023-08-07 07:11:44', '2028-08-07 10:41:45'),
('9532b72c29494ec24c8986bd9ac438e44c00743ef97db0effc8b9fbec92a6a4d45b59a28d82ab92b', 1, 1, 'personalToken', '[]', 1, '2023-05-14 18:15:52', '2023-05-14 18:15:52', '2028-05-14 21:45:52'),
('95683f9dbb6e7fa1e709d4d9113520674f861d5e998fce71b2cb02e08c7037f1a138824a80b5b9c8', 1, 1, 'personalToken', '[]', 0, '2023-05-28 06:14:19', '2023-05-28 06:14:19', '2028-05-28 09:44:19'),
('95895e8ce3d4a8080da7c73d22115bb238d0593ec3fdce134ec2c1d03b5b59da06b49dd076eecc4a', 1, 1, 'personalToken', '[]', 0, '2023-01-27 13:27:26', '2023-01-27 13:27:26', '2028-01-27 16:57:26'),
('95a4e967cc4b448727de92db278e35742d3bc6abf1315c8379119f0cdabff9ce7545f49ec573a855', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:57:36', '2023-06-30 09:57:36', '2023-06-30 14:27:36'),
('95af51b146469e009d739472d403ef85f76703e48f6487bb7b87f73dc8e4b8c83c72acbea40de959', 1, 1, 'personalToken', '[]', 0, '2023-02-10 09:50:43', '2023-02-10 09:50:43', '2023-02-10 14:20:43'),
('95b0a2e0bf5b02282c4f26c592ca83d48f096549b7a6bdaae3688d56781d0c8dc7283be9437af4c1', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:06:36', '2022-11-14 04:06:36', '2022-11-14 08:36:36'),
('95c0cd1ae05597ee76532dcbd757a33756d59c73f9a6af14806dfaf212505edacca0e46af8543dc3', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:59:53', '2022-07-12 04:59:53', '2022-07-12 10:29:54'),
('95d96364861bef67c4c2055e4ece7964e36e28beb93dc596794dffb92e5cc211ed34f0919b2cbf95', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:20:16', '2023-11-17 15:20:16', '2028-11-17 18:50:16'),
('95f904c40bb3f10c80d4ea453831dd2e5b001e1acd740d75ba931876e798d10498983a7b7a4c9b5e', 1, 1, 'personalToken', '[]', 0, '2022-09-25 01:55:45', '2022-09-25 01:55:45', '2027-09-25 05:25:45'),
('95fa6e5da6818ab4a20ff2246c3e066ffb2cddd19e787bf84d5ad7f3b561de5cfac1cf83d517d03f', 1, 1, 'personalToken', '[]', 0, '2023-04-23 23:42:33', '2023-04-23 23:42:33', '2023-04-24 04:12:33'),
('95fc69680cf81d77dc19444176a38cda82397d72a419011df4e32f43d6a129eced9c2aaa6afef248', 1, 1, 'personalToken', '[]', 1, '2022-08-25 07:19:14', '2022-08-25 07:19:14', '2027-08-25 11:49:14'),
('96041b1e584ed76f1617b4b3344b470df75f8e5443b59124da8f85fe406d01cde6c0f8bb0ad31689', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:50:01', '2023-04-12 15:50:01', '2023-04-12 20:20:01'),
('960e977ee47fd1d3cad191e5da3ff49538d9e00c59b517d6cdfb43e0a8129f38d6e8c751e7722ce8', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:16:47', '2022-10-24 03:16:47', '2022-10-24 07:46:47'),
('964b5985cf2cb6ff1b7344b562fca248d60d1a98ee22e30ba9b0868f48a1bc04d6d0a3ba8f4f723b', 1, 1, 'personalToken', '[]', 0, '2022-07-23 04:25:37', '2022-07-23 04:25:37', '2027-07-23 08:55:37'),
('964bea8d7ab89b0582fe074f54eafcbbc8e834be64f128c68a3b291445df0909e177c5f44b48fc25', 1, 1, 'personalToken', '[]', 1, '2022-10-15 14:18:42', '2022-10-15 14:18:42', '2022-10-15 18:48:42'),
('9666b1293c044d113a999a0d98e16b5ce6648c770b7c39cf09b4411bcd173ec2826fb92b312beb6c', 34, 1, 'personalToken', '[]', 0, '2023-06-21 06:55:13', '2023-06-21 06:55:13', '2023-06-21 11:25:13'),
('967facb373ea3cc441cb77fc9a3cb72f175118e44da11fc0bacb87769a0d9c4328ffa82ca862313b', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:43:18', '2022-11-21 02:43:18', '2022-11-21 07:13:18'),
('96902dfdf5504e3c25e97ca134fb49f123dcf4d45f72d3820b630a84ee6cdc9df63dffc189046fb8', 1, 1, 'personalToken', '[]', 0, '2023-06-19 03:47:54', '2023-06-19 03:47:54', '2028-06-19 07:17:54'),
('96a4f5a8f031a42d15b1d3e8b8217bc61227acb13f8d0bbd24889e6e738dea66d79a246be293a048', 34, 1, 'personalToken', '[]', 1, '2023-06-21 06:18:27', '2023-06-21 06:18:27', '2023-06-21 10:48:27'),
('96a6a9c04626282329271e3cb822338855956e4c8996f02d07e47c711347c63d4699e00aa982f74c', 1, 1, 'personalToken', '[]', 0, '2022-12-11 12:13:20', '2022-12-11 12:13:20', '2022-12-11 16:43:20'),
('96bd7a5d8bf032085556b80410f8d89393a930fb99c275cebb516a3c76d929c958de452055e4cb68', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:28:10', '2022-07-12 05:28:10', '2022-07-12 10:58:10'),
('96c7219ca38a059f453138559c2da69b8eb4da412a24f1b11a4202963bf2b26ee1a3623649501bf5', 1, 1, 'personalToken', '[]', 0, '2023-05-21 12:18:37', '2023-05-21 12:18:37', '2028-05-21 15:48:37'),
('96ce3a79b98290593ab7f7468d7e00e393c206dcdb165c2eada16312aa5bdc3d5f3eeca3bf49df39', 1, 1, 'personalToken', '[]', 1, '2023-05-03 11:21:40', '2023-05-03 11:21:40', '2028-05-03 14:51:40'),
('96d6dd141b2f937c72b89e9cec1d5a08dea892f8d04e0988619464ea2adf13fcd3f3840ac6c55f31', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:19:33', '2023-09-27 13:19:33', '2023-09-27 17:49:33'),
('9703261605662c9165dac0bda9cf6026de36835d07dbdcfa4bce0c30f04eb702518b5c65c61c235a', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:27:36', '2023-09-27 12:27:36', '2028-09-27 15:57:36'),
('971296dd6d979f9129bd68abb239bc8d2bd57c51b84778b466bc08073870ee8fd378cadc0f5d199f', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:10:29', '2022-12-16 05:10:29', '2022-12-16 09:40:29'),
('976176da347aa4bc4691afccaa11e0887e9c806ef027cfc1510e68053e952beb18ab5079fa422a45', 1, 1, 'personalToken', '[]', 1, '2023-01-06 15:35:35', '2023-01-06 15:35:35', '2023-01-06 20:05:35'),
('978b5c4ed9afcf6a5ec9195ff7d0b804d61b85e400e19a45c7be7225392304cd9d6607a80a5bf603', 1, 1, 'personalToken', '[]', 0, '2023-04-09 15:22:14', '2023-04-09 15:22:14', '2023-04-09 19:52:14'),
('97914437cc770844f26b81487fe1824f1c39170c85afe1f0c2992af2adaaa6fb2f09dea52cd3fe89', 1, 1, 'personalToken', '[]', 0, '2023-12-13 11:48:45', '2023-12-13 11:48:45', '2023-12-13 16:18:45'),
('979f15904f111b29ec36de675c081c5f575303d223a19e4336fb9782069545bd500a590f35456d99', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:19:46', '2023-08-14 07:19:46', '2023-08-14 11:49:46'),
('97a7031302c41ae6f96620ee0d9b7ad39223e5e6b0cc02a8bb052ebecd407db8bbacfc184898cbde', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:48:22', '2022-10-22 14:48:22', '2022-10-22 19:18:22'),
('97ad4d99daf6f7856243d9dc123f2c17ac700e191baa406f044ba99acc55c90360b2a3e00d85a35a', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:59:21', '2022-12-26 02:59:21', '2022-12-26 07:29:21'),
('97b72ab2c4bfc7bc9950426a0b5d0e03380a22abc7999720da0773dc5ee52b8e05178052e1181109', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:05:43', '2022-10-24 03:05:43', '2027-10-24 06:35:43'),
('97bb6d7dc5126941adb1d59b32afd50a2c7ab2c924c5450cf7c18b8f1a61240106dc8c72743c209d', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:20:46', '2022-12-06 11:20:46', '2022-12-06 15:50:46'),
('97bc20a3705c936cd50f9dc0c65e74603456823c0b756023624448b2a4259ffc4a1c7819a06c4077', 10, 1, 'personalToken', '[]', 1, '2022-10-28 13:06:56', '2022-10-28 13:06:56', '2022-10-28 17:36:56'),
('97c93459e75b78265e4cc27cebd03baa85870d1fddc2b3c716af4e67e4828cec6fe62b409baa2912', 1, 1, 'personalToken', '[]', 0, '2022-10-14 12:47:17', '2022-10-14 12:47:17', '2027-10-14 16:17:17'),
('97d05fbe434496e8ff340ca385774aff2c4d71ced10607dc5c692e9b126ec1e0b5d59a17f2912370', 1, 1, 'personalToken', '[]', 0, '2022-09-27 07:01:06', '2022-09-27 07:01:06', '2022-09-27 11:31:06'),
('97dac98e2e5b96dd70515a3cc4d7716efaaee695e74713a5fb48486bb0ee7ec99e9649c0bc3c6819', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:10:47', '2022-12-16 03:10:47', '2022-12-16 07:40:47'),
('97f8463042c0a27335ceb36eb3c9cc9e246ab85ddf25167cf358a257054f9d0a6b97b076844ef292', 1, 1, 'personalToken', '[]', 0, '2023-03-13 08:37:40', '2023-03-13 08:37:40', '2028-03-13 12:07:40'),
('9809b98899773f2450ccaa84dea53a3e763c61285dac6ddcb61dee63fb41152771bf9869f450611c', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:29:24', '2022-12-06 11:29:24', '2022-12-06 15:59:24'),
('982ea0044996070b4d801ab031626c4f1ffe4f02f38419ff4dfadffb6ca1ee2d83b2768027dfaa3a', 1, 1, 'personalToken', '[]', 1, '2023-12-07 08:58:29', '2023-12-07 08:58:29', '2023-12-07 13:28:29'),
('98322ff9e7ba8d22d4e1f954aeaeaa5c6f662bde96a868562df87bfb528aa584201408fd515161f5', 1, 1, 'personalToken', '[]', 0, '2023-03-16 09:41:20', '2023-03-16 09:41:20', '2028-03-16 13:11:20'),
('98923f21c1881cd93412f4c9bc47c995912af1630d9a2b1e5e9e5f8567da474ada7321a8c5646594', 10, 1, 'personalToken', '[]', 1, '2023-02-13 17:49:49', '2023-02-13 17:49:49', '2023-02-13 22:19:49'),
('989e52e1b640b0c9c9aa86322e35d3e29f98a1c3df4d69d5c49e65e26873e7eb7128ac96043de0d1', 1, 1, 'personalToken', '[]', 0, '2023-11-06 09:26:13', '2023-11-06 09:26:13', '2028-11-06 12:56:13'),
('98b9d50ad850951871decead0c6018b375a5c4a8eec88dd7746688967bc063a906179b57fb3d75a0', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:09:57', '2022-12-06 09:09:57', '2022-12-06 13:39:57'),
('98c0e8ab65d0e0deb95522d0f0a3abf9d51beba2d7d1da8972a49969c0b27e9051765fac08eefeed', 1, 1, 'personalToken', '[]', 0, '2023-08-13 04:35:54', '2023-08-13 04:35:54', '2023-08-13 09:05:54'),
('98d64d50054909371ccb9a904eed08258198888bf9f2b4c1b237a317f5f6e435fb26034095cce834', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:05:21', '2022-08-28 03:05:21', '2027-08-28 07:35:21'),
('98e69d2869f25a0581b363d212b0bfefb6ef73ab0a5f1235196235d720bac64d0de56e6035f61654', 1, 1, 'personalToken', '[]', 1, '2022-10-03 15:12:18', '2022-10-03 15:12:18', '2022-10-03 19:42:18'),
('98f2386338518514a0f205165f5f78ed56297706f89d1070b12a2f484780136379eafb36d7f45846', 1, 1, 'personalToken', '[]', 0, '2023-05-08 01:42:04', '2023-05-08 01:42:04', '2028-05-08 05:12:04'),
('990e89b9807c13d0663e112aed645e8e478b96f94a813f894b1aa53caa104a0b043642b144ec2f75', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:12:28', '2023-12-11 05:12:28', '2023-12-11 09:42:28'),
('99187b6b52c8305f5be60179e1b5fe61fa75f2446f6cf073bb430c314b668d6f7e94c5366c0dc64e', 1, 1, 'personalToken', '[]', 0, '2023-12-16 07:27:41', '2023-12-16 07:27:41', '2028-12-16 10:57:41'),
('99206a5cda0520c134be25bc08e294022cd96da91771b78dc0db2bb7dfe3258246ab6fd45f9a9ec3', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:46:27', '2022-12-08 05:46:27', '2027-12-08 09:16:27'),
('993771656a3aec65cf4f519b6c766abf0202e0720aa3808126a46816cef0c7361f918b9fe9ec3222', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:14:28', '2022-07-12 05:14:28', '2022-07-12 10:44:28'),
('9943705fc589fe09884d09a9ccd4c7eda7621d3b835712fd18173a6552c4e41b02611d6af0baf34d', 1, 1, 'personalToken', '[]', 1, '2022-08-25 02:37:29', '2022-08-25 02:37:29', '2022-08-25 08:07:29'),
('996a7e9df0495ea3ced1abc014e93a4c671b2eac3f55cdc877d6beac8f064526322d2e88a1cd86d7', 1, 1, 'personalToken', '[]', 0, '2023-03-23 19:40:40', '2023-03-23 19:40:40', '2023-03-24 00:10:40'),
('998075c9011cdce7025e24f5991d8057c8580c2739fc94e95307a8d51a81a70283522f3e705d8e20', 1, 1, 'personalToken', '[]', 0, '2023-02-03 10:58:29', '2023-02-03 10:58:29', '2023-02-03 15:28:29'),
('9995fb502c34c42c61213d1637eaf50e5203a5430a04c23cb239d2309109a77066be2acc512a204c', 1, 1, 'personalToken', '[]', 1, '2023-06-25 07:27:31', '2023-06-25 07:27:31', '2023-06-25 11:57:31'),
('999b7946ec1995b6ac10e60e24a3609d8c566fb91c003d8fef6f9d6b19cd212793202306036ba8d3', 1, 1, 'personalToken', '[]', 0, '2022-09-02 02:05:33', '2022-09-02 02:05:33', '2022-09-02 07:35:34'),
('99b6a37ea9562ced049e8b187d4a92078c647ea94f4bf379dfc86b77e77a29b20cafb376b18931d7', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:16:20', '2022-08-02 06:16:20', '2027-08-02 10:46:20'),
('99e8f6ff429347e0edb48c6393f0f5b9c72479c4afc9d337ddfabdddb4d22a64de376f5a27a4d7e9', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:39:19', '2023-05-16 03:39:19', '2023-05-16 08:09:19'),
('9a15af8bf94411f9a3db2e08e2aaccfe2eec51d7c7bdc9da769fa3328aac49e786a41a5a64c2ca42', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:46:56', '2022-12-26 03:46:56', '2022-12-26 08:16:56'),
('9a1b4df46e11dfc1f6dbcc723109e9ae05681d615a4d3f9c3b5801d6b26f254182dc39589d6c322f', 1, 1, 'personalToken', '[]', 0, '2022-12-06 10:27:26', '2022-12-06 10:27:26', '2022-12-06 14:57:26'),
('9a1ce5fe596388e8ba4ea3d0bfb57832eeccb6ea77b55cb182f0da86f78c77c7403b6b60adbce059', 1, 1, 'personalToken', '[]', 1, '2022-09-26 05:09:31', '2022-09-26 05:09:31', '2027-09-26 08:39:31'),
('9a2103ec88a6a505fb8a6cf9d34b230e3b786cce86d1efc002231a1a2c7918d324d0f9a3ec449fc8', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:50:47', '2023-05-16 03:50:47', '2023-05-16 08:20:47'),
('9a255ad8fa521e27addfce6caa2982675972927853a0fdfc97a57b0edd0a5b77b09be9332f8eb4a1', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:50:44', '2023-08-09 02:50:44', '2023-08-09 07:20:44'),
('9a5550aa6fb45e1439f35a9cec8bbefa5099ad2eb90951fcc1bcbc4550c9e649cce368b1ba263d65', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:37:59', '2022-11-15 05:37:59', '2022-11-15 10:07:59'),
('9a60caa30645eb95b8770e049f9649fca22bd173fd75d1ddd40177149a7e532c2213f2d9f4e40587', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:36:27', '2023-02-05 17:36:27', '2023-02-05 22:06:27'),
('9a6868ace1b66efc9bb2f3f2f5826c34fed991c63f010e49afae2bad749829df5ba15bc33c4d6a27', 1, 1, 'personalToken', '[]', 1, '2022-10-23 03:45:59', '2022-10-23 03:45:59', '2027-10-23 07:15:59'),
('9a8b55b2098968a11b2be8acd643a2b011300e0f7817bf8f5a9eaf98fa01ea7cd4fa7f87b2a592eb', 1, 1, 'personalToken', '[]', 0, '2023-04-07 08:50:18', '2023-04-07 08:50:18', '2028-04-07 12:20:18'),
('9a8ed07b0dd4e96169b76f64d8c2853c0fbf0dd19383b16ca1807ba8e4aa06cd27ddcbed4d29c327', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:15:39', '2022-10-24 03:15:39', '2022-10-24 07:45:39'),
('9a8f9cfdf8d234e68aa8969e6f368e791c0fe9ca9f777becce8f7494477f11bc6b644b8e51a44599', 34, 1, 'personalToken', '[]', 0, '2023-06-25 08:04:58', '2023-06-25 08:04:58', '2023-06-25 12:34:58'),
('9ac58a3fc6b398e821550ac6dab841ee06358a540b61f1a1ff5e63935bc53bb5f4b460c6a8d17521', 1, 1, 'personalToken', '[]', 1, '2022-11-19 05:11:49', '2022-11-19 05:11:49', '2022-11-19 09:41:49'),
('9ac863b43c2363e97a0343904cab3feac4d1ff4d245bf66c1beb427e2dbb0721f1214348a6902cfc', 1, 1, 'personalToken', '[]', 0, '2023-04-25 06:53:24', '2023-04-25 06:53:24', '2028-04-25 10:23:24'),
('9af40cb51e601f96199de30a48e1ed17b77aabb07ea255b193ab2c0fb064fa0ade93da7fbeb43580', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:46:59', '2023-06-21 05:46:59', '2023-06-21 10:16:59'),
('9b15038e9b90c400b799b4526a0ae5a0d92d5587566d643d46e680763e50adef5045d12ad82a845e', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:08:40', '2023-07-05 13:08:40', '2023-07-05 17:38:40'),
('9b22f1293622c26f7bd4900df5e97b5f4b25fab663f32e5b2b06f84b4536732931724ad2b3b01a3e', 1, 1, 'personalToken', '[]', 0, '2022-12-07 10:09:31', '2022-12-07 10:09:31', '2022-12-07 14:39:31'),
('9b26af99a4daa84d8907fa8b2ba64563eaf2705af6773b1febc0d0e1e679706079dfe41467d84c0f', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:53:05', '2022-12-08 05:53:05', '2027-12-08 09:23:05'),
('9b9f64b5f59e0f1c118d831f2defb2d4df5f1e97e53baac8a94f1231080694c6930b543bb4c961b6', 1, 1, 'personalToken', '[]', 0, '2022-07-16 08:54:54', '2022-07-16 08:54:54', '2022-07-16 14:24:54'),
('9bc03155199c6e33e341f5b4f80f759b771c370bbda52d0f074efa18a1503b2beb38faec9278d3cc', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:18:52', '2022-11-28 17:18:52', '2027-11-28 20:48:53'),
('9bd9c92b970486ce5c10ba86bb6a8290a41ac9722f8df386eda0c4f75d6c0b3ac95bd2c2041dde3c', 1, 1, 'personalToken', '[]', 1, '2023-04-24 10:36:12', '2023-04-24 10:36:12', '2023-04-24 15:06:12'),
('9c1198389be35aaa9ca25bdd4bce4a291712a1970be7ed4dc4e85709d4b69d8606e750feabb5f4b7', 1, 1, 'personalToken', '[]', 0, '2023-08-08 02:26:45', '2023-08-08 02:26:45', '2023-08-08 06:56:45'),
('9c1a5e9960699e2cae49e1e6e5711799c3d8f177b2c7f4a775c88ec76cf72a3d1add2453c05a5037', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:33:40', '2023-08-09 04:33:40', '2023-08-09 09:03:40'),
('9c55b6be3afe5d5d632a34e7bb126e8bbc6088dc6c59fba796b0bd34cfd7a17739456fc7f5990c15', 1, 1, 'personalToken', '[]', 0, '2022-07-07 02:57:59', '2022-07-07 02:57:59', '2022-07-07 08:27:59'),
('9c791a707d96ef6027b76e39e5454c9bd754912e2cf1c704a3363039ff31dd99f25c3b78847c8bb2', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:18:23', '2023-08-08 08:18:23', '2023-08-08 12:48:23'),
('9c9664e51cdee9f9b75c8d4f0db22ccc2a726c3216ae3323f3d4f7ab8a150b33421bf488a3b435d2', 1, 1, 'personalToken', '[]', 1, '2022-07-09 05:53:05', '2022-07-09 05:53:05', '2022-07-09 11:23:05'),
('9cba22a075fe0970602c35fbdf1ceffe282ae0c9ac29d80e03cf802756c16f36cb51200e07922fa0', 1, 1, 'personalToken', '[]', 1, '2022-12-29 17:50:08', '2022-12-29 17:50:08', '2027-12-29 21:20:08'),
('9cc484bd1a38ed15992da77f46f37511cc56d6ca72145ec23ec6732353087ef55c40949f468e22ef', 1, 1, 'personalToken', '[]', 0, '2022-06-30 07:58:03', '2022-06-30 07:58:03', '2022-06-30 13:28:03'),
('9d1d2e5b13cdd4787793984ed7bcdd7f0912296454470663380dae0c4a06aa6e0fb91628d1c332ae', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:25:13', '2022-12-07 06:25:13', '2022-12-07 10:55:13'),
('9d395f78130ef31fcababd306b8594fcbb201212bb60acd0d512e57c4276a8380038b3c4534afcb8', 1, 1, 'personalToken', '[]', 1, '2022-08-21 12:31:54', '2022-08-21 12:31:54', '2022-08-21 18:01:54'),
('9d3b6907044c7d65b6c8dacd5ee9ab600a9b36957d267c822f75e6be0ac2fc4f7233c6208bf7eed3', 34, 1, 'personalToken', '[]', 0, '2023-06-25 07:28:40', '2023-06-25 07:28:40', '2023-06-25 11:58:40'),
('9d3c3374059f1d724c229ee410f141964a46c8af14985a2295e054d33e33cdeef0a73bf67456b40d', 1, 1, 'personalToken', '[]', 0, '2023-08-13 04:33:46', '2023-08-13 04:33:46', '2023-08-13 09:03:46'),
('9d474b5c670412e0ae99f8eb3b91d54733e18eb443341b570365e0d7dda1a168f53b52a283a7924d', 1, 1, 'personalToken', '[]', 0, '2023-08-07 04:53:02', '2023-08-07 04:53:02', '2023-08-07 09:23:02'),
('9d92b805d143bf6df6b6e9bb691ba1c14ae57b75629627a69ca9d11c150e810eedcfa5b65023a98c', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:05:57', '2022-08-28 03:05:57', '2022-08-28 08:35:57'),
('9db2089afabedf16be91dd1b02b7b99548613f174fb43c43483aa0d463a5eabe976da43744558ba2', 1, 1, 'personalToken', '[]', 0, '2023-02-10 04:24:55', '2023-02-10 04:24:55', '2028-02-10 07:54:55'),
('9db81cd0e16ea50fb2bb05cc5b930967a09567cb84ca882cdb587c6ec280691a2c6fae86d68d0378', 1, 1, 'personalToken', '[]', 1, '2023-02-07 09:06:48', '2023-02-07 09:06:48', '2028-02-07 12:36:48'),
('9dc4cf5fe2a0c689b601f44febf1f635ef536b0898de0776f100312f306df40a73f4364bf4c7a926', 1, 1, 'personalToken', '[]', 0, '2023-02-02 12:29:28', '2023-02-02 12:29:28', '2023-02-02 16:59:28'),
('9e07e8da9289feb82e009f553380b0c23c7507a77b6a7da56dc31d17154c8a98ef2ee8a1a72d8c8a', 1, 1, 'personalToken', '[]', 1, '2023-05-01 05:22:27', '2023-05-01 05:22:27', '2028-05-01 08:52:27'),
('9e5067ea104d3f99eb2fb624cd1527fa943e565185dc7b16f7ca0ac5c3987f88f500c50b0190d948', 1, 1, 'personalToken', '[]', 1, '2023-03-24 19:06:25', '2023-03-24 19:06:25', '2028-03-24 22:36:25'),
('9e54ffbcdedeccb5f37b0235c1b2d5f7ca3032479e9f5772777bcbeafad7bfa4881d11542b81c516', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:02:59', '2022-12-15 06:02:59', '2022-12-15 10:32:59'),
('9e7c82c9bda9980106fe7a6ce62f20f3b939f85c5e36f04214da88e093dcca36c29ad32488233d2b', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:40:31', '2022-12-26 03:40:31', '2022-12-26 08:10:31'),
('9e827a9c59c0f257f567f1f10fdcf073cf4d775f672de9f49864eb7950f172993b7e0f6627e330d3', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:26:39', '2023-08-14 07:26:39', '2023-08-14 11:56:39'),
('9e896f6146b2d83ff4544d6820a4ef19d69d8a064fbaa165860a60af4fba0543bfd6977ba4b6fdbc', 1, 1, 'personalToken', '[]', 0, '2023-01-06 12:45:45', '2023-01-06 12:45:45', '2023-01-06 17:15:45'),
('9e8dc1668be3aed6fba58905bec3c0ce417ea0d7a26be5a6634a3c8e98ed056a4262516a1aa21553', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:39:59', '2022-08-03 04:39:59', '2027-08-03 09:09:59');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9eb9780436c2db833f58855ee408b20a214cbb64016c35ab66ba95b22b64c055b0ad091526bb4b91', 1, 1, 'personalToken', '[]', 0, '2023-10-31 02:47:09', '2023-10-31 02:47:09', '2023-10-31 07:17:09'),
('9ee3e1dabc73117dd32ed694a4c0f7777276867dbf9f49b813b67c9dbedd7f0865381d228fbca6b0', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:47:47', '2022-07-25 07:47:47', '2027-07-25 12:17:47'),
('9eeccc86c0ac0c1ff3f588dd4ad09bc338a00dc48a800e1e1411faaa7756cf5c5752f3b6bfc7f3c9', 1, 1, 'personalToken', '[]', 0, '2023-04-29 10:11:29', '2023-04-29 10:11:29', '2023-04-29 14:41:29'),
('9f0181c5d360c81e13bd6dd76605b6542f36c00e18edd77acd5be0b585b50413fc3a829bccdad545', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:46:02', '2023-08-08 08:46:02', '2023-08-08 13:16:02'),
('9f20a53eb909b2d73f2c0a50aca5a48a577a4b62b7296dacbbc71574bcac8e4b8d9911562aff250e', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:38:34', '2023-01-19 13:38:34', '2028-01-19 17:08:34'),
('9f3ef724a0ddfa7963c0c1599dcf0da21d4b0914dd47c96b0b87e36274bb7abeedb6d48dd50df937', 1, 1, 'personalToken', '[]', 0, '2023-02-13 18:34:42', '2023-02-13 18:34:42', '2028-02-13 22:04:42'),
('9f42a494b7e0a85b88a02709066efcaf6a9a6131dcaf39279df80e50d0523bc7725bc950f4cb34ec', 1, 1, 'personalToken', '[]', 1, '2022-08-03 05:02:41', '2022-08-03 05:02:41', '2022-08-03 10:32:41'),
('9f51c95e3b89164836ffa101d64ac4087bcdde43de1d0c64dd1fcd7a8150a3d43962583f9d49a94d', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:33:36', '2023-08-08 08:33:36', '2023-08-08 13:03:36'),
('9f56f19cc33b9aec7b2d7eb9493f9c9717f5909331c0f027a42e390f2f30445f81ec7e8783b126fa', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:19:05', '2022-10-22 14:19:05', '2027-10-22 17:49:05'),
('9f605dcf45b39359da97fe25e4832322a1cb3aa636c2da16654161535776b8f4928cd6f4e5f29155', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:42:41', '2023-08-14 07:42:41', '2023-08-14 12:12:41'),
('9f6514af7ba07444bb829ac8711fec9d522bc043134efaf93d3249edf4d1609bf66ef61bd6a384d0', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:51:54', '2023-08-08 08:51:54', '2023-08-08 13:21:54'),
('9f798af69c749ac2d6f5b5c4dc050a3342fde820c4c2f6d3626a6b55cd0c9e713ce8c8b5ef4dbf96', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:41:30', '2022-12-26 06:41:30', '2022-12-26 11:11:30'),
('9f82d2205ffa84a0cc80a18b8b5d51f218b3f776895c0b6120b828711defcdb3a3300728a166df37', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:45:29', '2023-11-17 15:45:29', '2023-11-17 20:15:29'),
('9f8fdd70cb0eb82167c074dda9d1ceed76cc828e48a27a87bfebdac9d96f7fbbe8df5bb44deb1209', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:46:12', '2023-05-16 01:46:12', '2023-05-16 06:16:13'),
('9fa6ee39f855416b676f6e5dbdd871791f8939328bd10c48eccfe9c682b30598e7045fedcb501686', 1, 1, 'personalToken', '[]', 0, '2023-09-09 16:56:58', '2023-09-09 16:56:58', '2028-09-09 20:26:58'),
('9fc034eb3108d92ac9f42c030fd13d561a47087e201cd28f133d319f9507729a6fc552b26ba65a6c', 1, 1, 'personalToken', '[]', 0, '2023-01-02 10:10:37', '2023-01-02 10:10:37', '2028-01-02 13:40:37'),
('a000b2ff89370dca84f27a534993b46fe471ad42ea46aa7e882f562e98d5c31a0f989f0168e5c696', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:19:06', '2023-09-09 11:19:06', '2028-09-09 14:49:06'),
('a0197510cf4fd7b83845f3c1e451a931ce10dd9412e8e3aef6155e3cc23c525df8b4e19aae8ff30a', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:31:57', '2022-07-12 05:31:57', '2022-07-12 11:01:57'),
('a0453ebad17f3f788f02bbc56e20235acacb201155f518d144ba8728e2bd984594cf17a02f1b3a07', 1, 1, 'personalToken', '[]', 0, '2022-08-12 12:57:07', '2022-08-12 12:57:07', '2022-08-12 18:27:07'),
('a06a4354a2d3882cbf4df2b1c14e0683d94c5a965e9db45d615f5fcffc7796a8fce1c3280517873f', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:20:13', '2022-07-06 03:20:13', '2022-07-06 08:50:13'),
('a07c000cbb9e90d510207fb0f6c0b01a429da975a1a0c798a8e24453d8ce9ed429db49b379809c0a', 1, 1, 'personalToken', '[]', 0, '2022-09-21 16:30:28', '2022-09-21 16:30:28', '2027-09-21 21:00:29'),
('a07ce0a6b491e2b46e009b4dfab0751d3953e3fb7224d86c5b0550308bc2e12423bff373ef0e6d81', 1, 1, 'personalToken', '[]', 0, '2023-05-15 21:33:13', '2023-05-15 21:33:13', '2023-05-16 02:03:13'),
('a08c6aa24631b7452303e1a3196a20baea6222e630384f16e19e662fb2eb78ee13aa84b0d534289a', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:38:15', '2023-03-04 11:38:15', '2023-03-04 16:08:15'),
('a095dc0e2d823753bbf4a203ea8d11bf75e124fcc176eb9ac66f4ad0347c3903fa1ed8d5846150a0', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:27:24', '2022-11-12 01:27:24', '2027-11-12 04:57:24'),
('a0cfb7a9f8e92100ae5a7ab090997924913156415b7540f54e444baf9cb0ba6f26b24a07fb5126e2', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:40:55', '2022-10-24 02:40:55', '2027-10-24 06:10:56'),
('a0ebaca35d36eeb6019f17f689ee84bff808514f6809d79df1e7f4bbde067a9b587c7f5b569a3796', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:52:31', '2023-05-16 01:52:31', '2023-05-16 06:22:31'),
('a0f0d36511262146105636f29fd0149ee1e0471e878920171e68f2d1cdcb026b9688387cf220260c', 1, 1, 'personalToken', '[]', 0, '2023-11-18 14:17:09', '2023-11-18 14:17:09', '2028-11-18 17:47:09'),
('a0feb2ee34bfb2df5572b5be7fa8ce1afd2516d35e8f74d2721708abc20fd29cc7274058f52de3a4', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:34:53', '2022-07-12 04:34:53', '2022-07-12 10:04:53'),
('a1020c601e4679383aaa4e05b1275d25a0e2c2c566b1e840810fa54bb452c69cb4f541fd45010872', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:43:51', '2022-12-26 09:43:51', '2022-12-26 14:13:51'),
('a10c15a85ef6138091d118ec4f5ddb80f78b4a532a565a6317dd25fdbcfd33edcccc54c8e7d3286c', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:50:46', '2023-03-04 11:50:46', '2023-03-04 16:20:46'),
('a11490a5c01fa70ec8d10a6f929ff3b368314f515fb106f95ae8d4c2b85515c359995c1b46c79148', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:50:30', '2022-12-26 09:50:30', '2022-12-26 14:20:30'),
('a12785f478e23752406edf8a940bf20cb3d5f37769e2b3a99e31dbab69d442b934dde45ee447258e', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:35:01', '2023-11-17 15:35:01', '2023-11-17 20:05:01'),
('a16070fdf9a424bf67d6025c5f22ef3e11eacaab5f37249dc23eb760d7c95bf012f088e0b9717b49', 1, 1, 'personalToken', '[]', 0, '2023-05-09 09:06:26', '2023-05-09 09:06:26', '2023-05-09 13:36:26'),
('a1a07dadf0440ba8efeb0a6a4044743409c46f55369f82d0fd3262cfaf73be557112226c590d7723', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:33:36', '2022-08-03 04:33:36', '2027-08-03 09:03:36'),
('a1bd2c19d4cd6471c4855835a4272a003b00cfe53ca4cb31cc17f09fd1319d83e9177c574db7f0d5', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:02', '2022-08-03 04:40:02', '2027-08-03 09:10:03'),
('a1c103b1fa4c69b415ebb1d6834b39c4d6d1a946cb282de8a0e5151ffb8ba9f879d518d8fb93cb12', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:53:10', '2023-01-21 05:53:10', '2023-01-21 10:23:10'),
('a1d0dbd38528917ba392fa10f571905fc7bb8cd3c95f79f65258dc16bd07d004fbd213b02eca54e0', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:41:20', '2022-12-06 07:41:20', '2022-12-06 12:11:20'),
('a1ec433b51b9003aeecbdc4349f170665bf1cfe145bc332d6a0986b93a818fdab7212971c9bb996d', 1, 1, 'personalToken', '[]', 0, '2023-03-01 10:10:23', '2023-03-01 10:10:23', '2023-03-01 14:40:23'),
('a1f35644e1942751aab9c87f97acb195204615c0a29b8ebdc8266876f163a377f6dd0cfca46a5bb0', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:38:14', '2023-08-09 04:38:14', '2023-08-09 09:08:14'),
('a21fb2b8096e0cd21f8e828af0692e44c3bf0a3d4bfdab2c44607852838a4d7484e333c72650dad0', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:25:44', '2022-12-07 06:25:44', '2022-12-07 10:55:44'),
('a22da2a4d4d930095a09942e42a172bdb53cd2a384b573a93cdded414eb11448f5221ad28d1d19e3', 1, 1, 'personalToken', '[]', 0, '2023-08-14 03:03:12', '2023-08-14 03:03:12', '2023-08-14 07:33:12'),
('a22e1503e652216b7bc515ae1b1cbf56fe5380585ba49cff18d0e86d1c92c4c4fbedd4590e2f5ceb', 1, 1, 'personalToken', '[]', 0, '2023-01-09 11:48:43', '2023-01-09 11:48:43', '2028-01-09 15:18:43'),
('a22e5fee3c714abe89a00e5c77dead7f65a9083b7412c591016c6f26efe4b6898b520c2c9a29af33', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:21:23', '2023-09-09 11:21:23', '2028-09-09 14:51:23'),
('a241b5646e7ee99eb5d6b2a660f51905ebeba7b0c809363d8bc0b97f60f785961c25b282847c292c', 1, 2, 'personalToken', '[]', 0, '2023-12-21 17:49:44', '2023-12-21 17:49:44', '2028-12-21 21:19:44'),
('a245db53bc84f536166f649cbb61c53f1d012d28445a3285c09f780c236a679ae80a661c1f8b9068', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:24:27', '2022-07-25 07:24:27', '2027-07-25 11:54:27'),
('a26beef245b4a148a61406ae9642995fc4a7c621dc38d72a8b545329ead3c4641840f24cd5ae1f7d', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:00:22', '2023-08-08 07:00:22', '2023-08-08 11:30:22'),
('a27a0898523ffdc5985deea54b39e779af0afbc1e83b2e92e388ff3e15bb0db72c228a34fcbc2617', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:54:09', '2022-11-20 08:54:09', '2022-11-20 13:24:09'),
('a2897bc41777cf0e3bb13fa6eb14e0216869e5fd3d7bc79739e346858de223eb22a1b5f60719a319', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:51:48', '2023-11-17 14:51:48', '2023-11-17 19:21:48'),
('a2ab10bbbb6f399ffbe1c4e747b334e0f1e8668799a513a51cad2d335378d575f977a8fefcee4b56', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:40:45', '2022-07-02 12:40:45', '2022-07-02 18:10:45'),
('a2b4cfca12e33611ca354b3d0ba3e32e9e2897707d5b444b05af512cae6b537b977f1c02aba12810', 1, 1, 'personalToken', '[]', 1, '2022-07-15 15:00:02', '2022-07-15 15:00:02', '2027-07-15 19:30:03'),
('a2e1cf96d81f1198be61ef8c0908209886b0f5675830964ada40b9048dba7c9ebbb089fd218b3e12', 1, 1, 'personalToken', '[]', 0, '2023-04-25 06:18:34', '2023-04-25 06:18:34', '2028-04-25 09:48:34'),
('a2e5717e9147e657f9850ffac77b7825fa7430aa86922394b839a82a7eb5a153026447de57ac7f4c', 1, 1, 'personalToken', '[]', 0, '2023-02-13 12:32:09', '2023-02-13 12:32:09', '2028-02-13 16:02:09'),
('a2ff2caa22ec7ca5afa67e17aa50cfc79044e5c5447fd331824a761b3e3abc64e64c46d968109488', 1, 1, 'personalToken', '[]', 0, '2022-12-06 10:30:43', '2022-12-06 10:30:43', '2022-12-06 15:00:43'),
('a3057c29dc918c72dc184a882d477b65b7b1b37ea564a624788fbf1ca176ccea8134e5f08d141c57', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:18:42', '2023-04-11 08:18:42', '2023-04-11 12:48:42'),
('a32b7d3fffded9e21561f67b7f8a41ecedcf3f3804ed7bd12f5498a0923f57532b5df780d13f7d50', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:04:14', '2022-11-14 04:04:14', '2022-11-14 08:34:14'),
('a350e0896c32524ce8cb3294a976c6a40f08d3ba944f873152480eb97886eca9a45c347a4c91fabd', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:27:18', '2023-02-05 17:27:18', '2028-02-05 20:57:18'),
('a358d3c03edf53adc0056e0adfafa4e41382dc27bcd2253803706cf9bf9efaa8ac79d61a6c3d59b2', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:10:09', '2022-12-16 03:10:09', '2022-12-16 07:40:09'),
('a36a84a76d07e0e895d7fb9d67730c4ae575fd852140095f288c66612d33c93bc922423e305315cd', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:12:40', '2023-06-21 04:12:40', '2028-06-21 07:42:40'),
('a36be7f0d819b8de502290ba286a962d326c6c3cb668da6839dd052a023cdcfed09c4b2680c712e7', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:12:45', '2022-08-28 03:12:45', '2022-08-28 08:42:45'),
('a37c3516a2e28b37b1559481455c5ec7638b663570092bd78ab3f8f9809a44045c7760de49fd4620', 1, 1, 'personalToken', '[]', 0, '2022-07-24 09:58:30', '2022-07-24 09:58:30', '2027-07-24 14:28:30'),
('a391bb0c69263d3cf663318db2243d6b52946b4f05c14047b561b5a8453a256665a21d8e59685761', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:23:42', '2023-09-27 13:23:42', '2023-09-27 17:53:42'),
('a398a65a74c3811315a16ae486d00f94c7693511f8a8366233b52aaa4db44e609b42fc2a6ce49b26', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:57:14', '2023-08-12 07:57:14', '2023-08-12 12:27:14'),
('a39ea1b2252762670b9e1a1aeb31518d4765b0036dd4080da4b44a5b90e22ec4d822fe8bce0795ad', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:56:00', '2022-09-26 07:56:00', '2022-09-26 12:26:00'),
('a3a88b8a75d24eb38e7e8b17529e689b1d5d20fd0d9ccd8537a143ae75fc8d5e5477fc38d859f399', 1, 1, 'personalToken', '[]', 0, '2023-02-03 10:03:57', '2023-02-03 10:03:57', '2023-02-03 14:33:57'),
('a3e64fa81b9d1885bd3b3df653fe5d32537fec812e43b2657f65587b0887adce30dbb247f48ab898', 1, 1, 'personalToken', '[]', 0, '2022-10-30 07:13:21', '2022-10-30 07:13:21', '2022-10-30 11:43:21'),
('a3fefd29100f5befad9517e2a587425719d5aff4e9e4af1dc6eb93eea81da0c4c69f8e5d7f60cd25', 1, 1, 'personalToken', '[]', 0, '2023-07-11 04:30:08', '2023-07-11 04:30:08', '2023-07-11 09:00:08'),
('a406e8ec04473acf7d9f9740b47949ea076a44cb0c557997bdcd86905cb90fcd87e04a5ddc212550', 1, 1, 'personalToken', '[]', 0, '2022-08-10 08:39:20', '2022-08-10 08:39:20', '2022-08-10 14:09:20'),
('a427ea4a9e0d6a1f9dd1774a9d6e2e222d39209591254b66d71f4580ec715c82101acdf904e21b39', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:02:34', '2023-08-08 08:02:34', '2023-08-08 12:32:34'),
('a46095c70dd27a89a3aef6ff2a6a2ec2de2b8aa6c60f8e5bfed8f1db5bf3015d527ee66377fdf75b', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:47:07', '2022-11-21 02:47:07', '2022-11-21 07:17:07'),
('a463b2c76b3783a006cc16400930f016ba298f31acf9a640fb76a1ad82183b9e25db40ef9d59a260', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:55:26', '2022-12-26 02:55:26', '2022-12-26 07:25:26'),
('a473e2a211ebc9aecdb2bfbb607e4c7088d4a38c9b66fdad641121b2ea40464ba94ee242127ae489', 1, 1, 'personalToken', '[]', 1, '2022-12-18 09:11:26', '2022-12-18 09:11:26', '2027-12-18 12:41:26'),
('a48aba823721620ad5c11fccf3ceb126a0bc525238db431d6d8874c805382e94e5056017526e280c', 1, 1, 'personalToken', '[]', 1, '2022-08-03 05:02:25', '2022-08-03 05:02:25', '2022-08-03 10:32:25'),
('a49a92df72331dc9944b2b851bb834586d1e98fd2da011d61964626db0f5be1985b91f576c45de85', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:16:57', '2022-10-22 15:16:57', '2027-10-22 18:46:57'),
('a4c91ea419608d45324e0b964875666fb03e92ea0cafc65ae40ab4e98f7057058c88e18316476965', 1, 1, 'personalToken', '[]', 0, '2023-08-15 18:06:48', '2023-08-15 18:06:48', '2023-08-15 22:36:49'),
('a4d03191acbfe8de36f2897a05fdfa268af7304b77c7a0138564649a7ce5b2f2b25076d2a9bea26e', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:55:06', '2023-04-12 15:55:06', '2023-04-12 20:25:06'),
('a4eac368528352ebdf27d48b264ab22859e85c77bd3659628e10906cf9c94e478a97014d18bd9725', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:09:32', '2022-07-12 05:09:32', '2022-07-12 10:39:32'),
('a50030537fa1e756dad6322b1dd7526db3d4161ace6e8f69390678c88491814fc355c0022728405d', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:28:58', '2022-12-06 09:28:58', '2022-12-06 13:58:59'),
('a516ce46ce2c5eb2bdc3262637df0eda88b7b4fd686a54c2048ccd98a2e09f28f3b75c0a400711f3', 1, 1, 'personalToken', '[]', 1, '2023-05-21 14:00:36', '2023-05-21 14:00:36', '2023-05-21 18:30:36'),
('a5261498554faec77e83b42eb939abd6d67eb2096d474640708d9e404f9f38bdf64579fc029c2dd0', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:47:58', '2023-08-09 01:47:58', '2023-08-09 06:17:58'),
('a5354095766c7807e7bae2c60a5ade57d26d78cd1aec33b3452f4a063828b005ca36728ab54ec206', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:23:39', '2022-12-07 06:23:39', '2022-12-07 10:53:39'),
('a56156f050a79bac8fa0d7b0f1726cbf77bd96560c64153307d2562640ae2575667c56db4e2271f9', 1, 1, 'personalToken', '[]', 1, '2022-07-20 04:04:50', '2022-07-20 04:04:50', '2022-07-20 09:34:50'),
('a56a702c63363de7b18acb459859a2ecfbd1dd2c99b3ef9947c6b6001ff70c48d35bb4531ace3fbb', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:38:28', '2023-06-15 03:38:28', '2023-06-15 08:08:28'),
('a56b6e20058866470461c9030634433285e6f630048131596e3267d06e29a37fcea26facbfee05a4', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:37:43', '2023-07-10 11:37:43', '2023-07-10 16:07:43'),
('a5824a4444d9d3aab5b288cd2b22a9e8770204c5b8bbe6aaa8592a01e1583ff8d36147c71479a062', 1, 1, 'personalToken', '[]', 0, '2023-05-08 01:47:00', '2023-05-08 01:47:00', '2028-05-08 05:17:00'),
('a584d9d256ef8369cdb78736851cdad9b26d17d44301a0a6d4d5618a0aff198db0c96c13f726b2b0', 1, 1, 'personalToken', '[]', 0, '2023-09-08 08:50:40', '2023-09-08 08:50:40', '2028-09-08 12:20:40'),
('a5b18f2b5d04a3b41ba122a04198a752c89307a0a86f2cc6a29ddb119e682d7c58c0c93b0a1d732c', 1, 1, 'personalToken', '[]', 0, '2023-05-13 11:38:22', '2023-05-13 11:38:22', '2028-05-13 15:08:22'),
('a5c616b4cbe049a789433fc30c5797af0434e42070029aa85a2e952324b86349c5485920f997c334', 1, 1, 'personalToken', '[]', 1, '2022-07-09 06:25:42', '2022-07-09 06:25:42', '2022-07-09 11:55:42'),
('a5cca51bd2ebf2b278e1b87d096e13442c90a1cfcc2dacbbedbfd95c5ae6f3ebcaacdf56606392ee', 1, 1, 'personalToken', '[]', 0, '2023-04-24 11:43:00', '2023-04-24 11:43:00', '2028-04-24 15:13:00'),
('a5d6c25f258836487a0bca98d70005e0235bd0b56877cda6b369de0c744e342c5f5dc96fe7cbbe6e', 1, 1, 'personalToken', '[]', 0, '2023-06-16 04:47:00', '2023-06-16 04:47:00', '2023-06-16 09:17:00'),
('a60dd74593c826a3051fd0d28a7d1b562a162f5443ead2e4eae2d386d133c423c6baa4e9477008c7', 1, 1, 'personalToken', '[]', 1, '2022-10-13 03:58:14', '2022-10-13 03:58:14', '2022-10-13 08:28:14'),
('a6558b9f0baf7ebca87d323ff45b4a7704e55664eea3d1b08412c672aadf4149b342ded77ffac9c3', 1, 1, 'personalToken', '[]', 0, '2022-12-28 03:51:28', '2022-12-28 03:51:28', '2022-12-28 08:21:28'),
('a65c4eced87499d16c97f771799e3fb3faf3d358e419d25cf7150667c25bffb12e66d2093ca39cd2', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:17:18', '2022-11-20 08:17:18', '2022-11-20 12:47:18'),
('a67a85b1455533c6147a317ae8d741f279f7f3b0f80606dc5ae8304fb53625162b60af7d522278b4', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:25:54', '2023-08-09 02:25:54', '2023-08-09 06:55:54'),
('a689ea8f8b64b35dc4f283d79eb453c9d50a6ad4ed52fa3956ff55a93e8ab3556e9e5aa6d4de14d3', 1, 1, 'personalToken', '[]', 0, '2022-07-17 15:14:08', '2022-07-17 15:14:08', '2022-07-17 20:44:08'),
('a6c3b98e37431c69277251c3c4bfb8c2cb0f7f9da3fd210342e4bf0323f11130ca2e6587171d1c6e', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:14:07', '2023-04-11 08:14:07', '2023-04-11 12:44:07'),
('a6e90f211507424debcabb92490f7c4bc8a89b2529fb32b70223a92f00a86163bcfe6888b54b6751', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:59:22', '2022-08-28 02:59:22', '2022-08-28 08:29:22'),
('a6f2cb3f7355d4626cfd07d5ceb44a2f0801e4b25c5980159f2a0fe3a0608aebb9cc99e5e42c6cb4', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:47:34', '2023-05-16 01:47:34', '2023-05-16 06:17:34'),
('a72552ceafafcdf4a542c98f1e98d74e5f5c68c5b53f8d9e520695ab41dd9dde2eb4581807cfa4c3', 26, 1, 'personalToken', '[]', 1, '2023-03-04 09:19:12', '2023-03-04 09:19:12', '2028-03-04 12:49:12'),
('a7376a052593a749e2ce76d34509369746088626dfd9b92a20846b5d36afbfee2db0f8464050bebf', 1, 1, 'personalToken', '[]', 0, '2022-08-24 03:14:39', '2022-08-24 03:14:39', '2027-08-24 07:44:39'),
('a741ad115127a9f6103c7d8fc1c0f2c3f257a4244b75c3c8b67c3c89ccde914acb3449cb673de91f', 1, 1, 'personalToken', '[]', 0, '2023-05-15 01:58:36', '2023-05-15 01:58:36', '2028-05-15 05:28:36'),
('a74b613515b781ea1a44e310224b385453edcde7eab9a698680811004feb284f57ae8bec04735247', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:47:22', '2023-11-17 15:47:22', '2028-11-17 19:17:22'),
('a7563ae68cc15be48b8c32393b186269726b26897fbd1e377c60d6a70d1380cd87e1a06e1e4c44a6', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:44:56', '2023-11-17 15:44:56', '2023-11-17 20:14:56'),
('a766de3401e813166b38c8ba4453905ffa5dbc16875a7f11e1a0a7db4db21bb5b67c950f05cdd886', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:16:25', '2023-08-09 03:16:25', '2023-08-09 07:46:25'),
('a7b1a9c85440df6a5b063e3f17ee14f9ea0a4292e7359976c91672fa652e94cf60736c2c5bcd0f2e', 1, 1, 'personalToken', '[]', 0, '2023-08-12 09:03:00', '2023-08-12 09:03:00', '2028-08-12 12:33:01'),
('a7c6f5b8e31ec67cc38c9f8dd3961f30c763adf28b6156463549d9e8b34f7b3028a67ec3b3a0d075', 1, 1, 'personalToken', '[]', 0, '2022-07-10 14:24:46', '2022-07-10 14:24:46', '2027-07-10 18:54:46'),
('a7c8feeabd13d6587eb49de6d670911a5eafd7b1ea8712478bcdf2bd0223ac894fed93a2e9914a50', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:12:05', '2022-07-12 09:12:05', '2022-07-12 14:42:05'),
('a7f3dea637728609d9ab97c77a33f008d211951bea35841fa50921ae607aa5a515848b247c489738', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:41:45', '2022-12-26 06:41:45', '2022-12-26 11:11:45'),
('a7fd1373a71a9b4dd5ff370481f546fb62baf4a767a8a1c99b4cbae14c491c6bbf73fdba1644726a', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:20:26', '2023-11-17 15:20:26', '2023-11-17 19:50:26'),
('a805019c51b53b6d3b9f989919e312ad4bb40fe53b033adfda40e682bc7965d6e9d281daf86f1cde', 1, 1, 'personalToken', '[]', 0, '2023-07-08 05:08:04', '2023-07-08 05:08:04', '2028-07-08 08:38:04'),
('a8052bf3d1c41f8dc59f4484e874134bfac3cbf16e44e440d359c760b2681217ddd23d3dbd2f1327', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:25:15', '2023-01-20 11:25:15', '2028-01-20 14:55:15'),
('a8131b4c37bb7322aee289d211c31d6d105b4b891c08a1ab2b150f78cd3a35f4adce0569bd5160f4', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:09:26', '2022-10-22 14:09:26', '2027-10-22 17:39:26'),
('a8183cc7cdd46d6151dd0c1575b93f9e5674fc8ddeeaeb6a93f1b71bd2f2ee00c2de34cf67364fa5', 1, 1, 'personalToken', '[]', 0, '2023-04-16 12:29:17', '2023-04-16 12:29:17', '2028-04-16 15:59:18'),
('a8362eb59c6382e23b52823a7eff5beeb2266a80feabfd0cebd089b37ecd198a31c263e90659229f', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:36:14', '2022-11-10 04:36:14', '2027-11-10 08:06:14'),
('a840803dcef2760e2e691c3c81c40430af983df6b09b63b026e02d3d3e2eea2ad98688439cf30a8a', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:14:29', '2022-11-28 17:14:29', '2027-11-28 20:44:29'),
('a8516b0dff8a7cac53fa29d0e638300e8a88b3ff14305ddd55dcdf33ff6ce4ffbf321c07b8128488', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:57:39', '2022-08-27 01:57:39', '2022-08-27 07:27:39'),
('a86d91a4299279ca2ceee8948b9e0b5b16998019f82492d071d9b015b517f47bd2a481061e855f57', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:28:33', '2023-08-09 01:28:33', '2023-08-09 05:58:33'),
('a88a04fb8ebac8c16d0d83f039e3302d455ddcc29028b7c2cdc2674fe77dd73476e863c3127f9186', 2, 1, 'personalToken', '[]', 0, '2022-06-14 12:29:28', '2022-06-14 12:29:28', '2022-06-14 17:59:28'),
('a899866912aa16a78a09d8b406c5cd85d71e1783b46a00e6a41d44e2df3b0fee6d840024e2a54727', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:14:07', '2022-07-13 03:14:07', '2022-07-13 08:44:07'),
('a8a01d60749a0301eaf93774eaff9496e5b30f53d8b6444f706139a9dd0a807b63b196e925bb2801', 1, 1, 'personalToken', '[]', 0, '2023-12-08 18:21:52', '2023-12-08 18:21:52', '2028-12-08 21:51:52'),
('a8a28ac219002b782375810c0e635a6ac9a5012ea675d7ee519d1abc702ecd7615c096da6114ecdd', 1, 1, 'personalToken', '[]', 0, '2022-09-15 07:03:06', '2022-09-15 07:03:06', '2027-09-15 11:33:06'),
('a8e8f9db57a8287681797c62e2f6c1b4a746016e4e6979835c2c58f544b2a26b4281c017afa2c9b7', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:02:50', '2023-09-09 11:02:50', '2028-09-09 14:32:50'),
('a8f83ed270c9c9cacdab1b0e9cecdb3fb95ff68fe0703ae94fe83f9d50c9cfcaa8b55e9802946a4c', 1, 1, 'personalToken', '[]', 0, '2023-04-17 05:31:11', '2023-04-17 05:31:11', '2023-04-17 10:01:11'),
('a9296da67048f285651475e7572881f7c2ca14afc5284d64f01959d86bc07d2047b1e997de082a06', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:25:52', '2023-09-27 13:25:52', '2023-09-27 17:55:52'),
('a960100b43342e30fdfbc7c94caae896174a1085f986c4d383be10c301751aeb25ae3568936808c5', 1, 1, 'personalToken', '[]', 1, '2023-09-22 03:37:39', '2023-09-22 03:37:39', '2028-09-22 07:07:39'),
('a973d10c2e5ad5af45f525d1361fd97f9653a7740595fae977404a03a59b5bcb850710da32f4b731', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:19:17', '2023-09-27 12:19:17', '2023-09-27 16:49:17'),
('a97cef08b8693e2cd8b9829e1e4d65768a46a1091d053201a6d1b3762de5852efda1d442f0b0b1c7', 1, 1, 'personalToken', '[]', 1, '2023-09-09 12:23:51', '2023-09-09 12:23:51', '2028-09-09 15:53:51'),
('a994e53c36ffe796c545b0e147d4c897b45074936148956b1c585097ff1f8ee64b78374bccd85907', 1, 1, 'personalToken', '[]', 0, '2022-08-05 06:54:58', '2022-08-05 06:54:58', '2027-08-05 11:24:58'),
('a9a2688431715ee29088b8cae0ffbd851c427d690e9ddd9bf2aba2c0bc08af82ece531ea4d4b05ca', 1, 1, 'personalToken', '[]', 0, '2023-06-19 01:28:12', '2023-06-19 01:28:12', '2028-06-19 04:58:12'),
('a9ce755e47893d2b30e9b05ac0ba41065f5e29d6a3668299553f1f901ee5ccec6444dbb91019a747', 1, 1, 'personalToken', '[]', 1, '2022-11-01 14:54:24', '2022-11-01 14:54:24', '2027-11-01 18:24:24'),
('a9d27f815a5ba3c2f9e7872f0ebee4cf837c05569bcfd510198c308bbf288ff64e09d144f8ba1a52', 1, 1, 'personalToken', '[]', 0, '2023-07-15 13:49:22', '2023-07-15 13:49:22', '2023-07-15 18:19:22'),
('a9f5e51581a6e902136f8452052ed1b5ce673903e3cbe8d6f1f10a4efc7d75a2a01f4095b791ec4e', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:25:39', '2023-11-17 15:25:39', '2028-11-17 18:55:39'),
('a9fc13051e0d6f938a6e43ff47d44b9f740fcd5ec69fc4f2e9c633dd62363efae3a7a0e18bfc47fc', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:49:34', '2023-08-08 08:49:34', '2023-08-08 13:19:34'),
('aa02f2ea76bfe6e2265e628e6d8fdd6ffab30dbde0fa6711aed5ac9f9d65eec14f4c3c17a9079e05', 1, 1, 'personalToken', '[]', 0, '2023-04-11 07:59:45', '2023-04-11 07:59:45', '2023-04-11 12:29:45'),
('aa05b892f4fc470ba6098b352c88bb4089656b7e5d90cf75ea6a4c0d2e459150d86b0b61b391d791', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:01', '2022-08-03 04:40:01', '2027-08-03 09:10:01'),
('aa23880e39b9c477ea012618a3146f687c63a119fca4d89727038ee3363de7f0397a736020bdae00', 1, 1, 'personalToken', '[]', 0, '2023-03-24 19:06:00', '2023-03-24 19:06:00', '2028-03-24 22:36:00'),
('aa241929c57761c4c198dec22cc73da00185e11886d5f11116e7deddbc0a3a2f7177476bba4e4ab8', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:33:37', '2022-08-03 04:33:37', '2027-08-03 09:03:37'),
('aa4e521a89a1d6f012e6ad857e2414b5840dada4c5b2b5f278fc4a98ae16789693cbbc7fa7d5fb90', 1, 1, 'personalToken', '[]', 0, '2023-05-27 12:35:22', '2023-05-27 12:35:22', '2028-05-27 16:05:22'),
('aa52cdd575e74e2f699b7d62e8b0948a7cc3344a78f1714f55b5587d1c2f0b60e3ef88ae0e3ded2f', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:09:36', '2022-12-16 03:09:36', '2022-12-16 07:39:36'),
('aa73dc4e1a8a1f0bafd0d8622131660cb4427b02d5579ee73fccf857935e90fc6928bafa66f7fd1f', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:35:45', '2022-11-15 05:35:45', '2022-11-15 10:05:45'),
('aa80c4e732d023ae6e22344dcc3e3da0c055c435ae489ab9c9692abd454b7b509ce302bc0987feca', 1, 1, 'personalToken', '[]', 1, '2022-10-13 03:58:04', '2022-10-13 03:58:04', '2027-10-13 07:28:04'),
('aa8f35476f2fd5870ef7ba397011dc441bf152b46e3729a471ae54288c6d516a88461b93cdd954d1', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:02:42', '2022-08-28 03:02:42', '2022-08-28 08:32:42'),
('aa9475a1f7f41daf676be78e90230093d48f9dc39c93de6681e7a5a0fe9584b0e8e644f20a540388', 1, 1, 'personalToken', '[]', 0, '2022-12-16 05:28:31', '2022-12-16 05:28:31', '2027-12-16 08:58:31'),
('aa9d67a2fd73cb524dc18142e9a1910adacf241cb9e64791ffc138cad1ae24a5b18e1b29ccf6441a', 1, 1, 'personalToken', '[]', 0, '2023-02-22 14:45:03', '2023-02-22 14:45:03', '2023-02-22 19:15:03'),
('aab50bd25b08b3de3ff646a59959f3160d2f9e8d2403a08a60ce63cec54bc62aa02bded7950ca1e5', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:50:38', '2022-12-26 02:50:38', '2022-12-26 07:20:38'),
('aabe70a0dd2bbb5d762285f9ba39df9740c6e27f1591de377c09410c60ba51eaae260d530e17470d', 1, 1, 'personalToken', '[]', 1, '2023-06-02 10:11:07', '2023-06-02 10:11:07', '2023-06-02 14:41:07'),
('aadc14766cf00322c13203080a6e2de1487c73fed6a1f6918f764399128f679311fb2eb60b2c2709', 2, 1, 'personalToken', '[]', 0, '2022-10-03 17:31:01', '2022-10-03 17:31:01', '2022-10-03 22:01:01'),
('aae758db6e822697efe5685a5e356089ee3ad372dcfd032e937c04c257cb347e69aed10b5f3d21fe', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:46', '2022-08-03 03:51:46', '2027-08-03 08:21:46'),
('aae92dfe5abccda8f268980867dac26e1cb81d4dfffe1f36114c2079da070a48817f8f6ff69ad473', 1, 1, 'personalToken', '[]', 0, '2023-10-02 08:53:34', '2023-10-02 08:53:34', '2028-10-02 12:23:34'),
('ab0efdf6fa57a6f676f6211cdfcd4e121a6e62ac1d85f0da3e5753c9968bfc1e84cab5038a882f3d', 1, 1, 'personalToken', '[]', 1, '2022-07-20 02:34:39', '2022-07-20 02:34:39', '2022-07-20 08:04:39'),
('ab2262d8eea65493cdc207daf106a50a44efa547170393de9ca9610bdb452023190409bbab92ecbe', 1, 1, 'personalToken', '[]', 0, '2023-05-15 22:35:21', '2023-05-15 22:35:21', '2023-05-16 03:05:21'),
('ab2c9ab8640c18cf7a72f6372ff4b4546c7ec02816a5996c08027dd019d8a5e6a34a56322bc93eea', 19, 1, 'personalToken', '[]', 1, '2023-02-12 18:29:19', '2023-02-12 18:29:19', '2028-02-12 21:59:19'),
('ab6a11052ffcad318d50ec26dddd14f8323c2bc39655449badb912b1e018f60aa2dabc0b4d387b0b', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:31:03', '2022-12-07 09:31:03', '2022-12-07 14:01:03'),
('ab7369c7cdbe45006a472b97123ee1d3198e13f47c6d4abf4e78085e9b4a73db7e6f0adf73051932', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:10:11', '2022-12-16 05:10:11', '2022-12-16 09:40:11'),
('ab84989b75b4bd6d091094a8281511d50e9f3b7a376b6c8972b48e74a2b39a3390e0b47c91a41cf9', 1, 1, 'personalToken', '[]', 1, '2022-12-16 03:08:03', '2022-12-16 03:08:03', '2022-12-16 07:38:03'),
('ab9dc27fe13a55627381b26d6798d92105e22079efddb0b51e0030c929a8e1c073a9d63084fec5d2', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:28:10', '2022-11-20 08:28:10', '2022-11-20 12:58:10'),
('abfd0869ed801a5fe8438d90ee8ae1dfc900cd3a0d443d24425b0e4222e09eeb5080a1fa77cbee27', 1, 1, 'personalToken', '[]', 0, '2023-04-29 12:18:34', '2023-04-29 12:18:34', '2028-04-29 15:48:34'),
('ac4623078a06680f7cfbf0640dcc48b29ca3047f632a82b82ec0bfb3b971242a20bf2124b292a284', 1, 1, 'personalToken', '[]', 0, '2022-12-26 15:50:04', '2022-12-26 15:50:04', '2022-12-26 20:20:04'),
('ac46b5aee077f25d81c841f55741db15e8c397c8b3d60ce765e4af0e870cc4bc6e29969f7f0f3c1a', 1, 1, 'personalToken', '[]', 1, '2022-11-03 10:57:18', '2022-11-03 10:57:18', '2022-11-03 15:27:18'),
('ac71d42ec3b7d1d55c2bcd9cf4cca851ad301629ca5faef1754268a1fd9c6fa4427ebb520689784c', 1, 1, 'personalToken', '[]', 0, '2023-12-12 08:54:33', '2023-12-12 08:54:33', '2023-12-12 13:24:33'),
('ac82d08d139ef1a34b7661b98d4303590568720f95779d1d12e76685f08b76c7c3b07c6fe1a7eb90', 1, 1, 'personalToken', '[]', 0, '2022-08-24 07:06:02', '2022-08-24 07:06:02', '2022-08-24 12:36:02'),
('ac8ff4c3dce526aa366802772bbb017db26936a92cd4a4a7474b9df415bfa17a4a8fee990393ebc9', 1, 1, 'personalToken', '[]', 0, '2022-12-15 05:13:16', '2022-12-15 05:13:16', '2027-12-15 08:43:16'),
('acc764ad42be3fae2fc59e89a08106f888b49750ef617b01bebc804bcaccc0aae5702f91b54ea76c', 1, 1, 'personalToken', '[]', 0, '2023-01-06 11:42:15', '2023-01-06 11:42:15', '2028-01-06 15:12:15'),
('ace01a4cd9a748c11f04cd6bab933c3196e9ba9c4ab94ff1e6f9a63537d9b8d520bb5768c3669fb2', 1, 1, 'personalToken', '[]', 0, '2023-01-31 04:01:56', '2023-01-31 04:01:56', '2023-01-31 08:31:56'),
('acf082425e2573881acbefb07054009c13548252aebb7f2133294ef922eeca815266d3f1d42d9e08', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:28:44', '2023-09-27 13:28:44', '2023-09-27 17:58:44'),
('ad19f79437315652aa1219f505c252613958d6d13ac45092c5feea204550268cd63e3bc4aeaa9b8a', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:17:18', '2023-04-11 15:17:18', '2023-04-11 19:47:18'),
('ad29b72d0594b936ea46fe75bab18c2a62de51d41de1b8b7828968280ba3b3c174624b3ec152452c', 1, 1, 'personalToken', '[]', 0, '2022-12-15 06:03:14', '2022-12-15 06:03:14', '2027-12-15 09:33:14'),
('ad2a2f6d3ddf5a831c5a397820c88f455caee1e46e174033e23658407cd908bf45c8c267f3666b49', 1, 1, 'personalToken', '[]', 0, '2023-09-08 11:06:46', '2023-09-08 11:06:46', '2028-09-08 14:36:46'),
('ad2fe3db28dd7816abd811e0de6e08d626285ee0a580f5b96cb8e2718dc3a10b44854d6dc7a9a2aa', 1, 1, 'personalToken', '[]', 0, '2022-07-16 11:16:08', '2022-07-16 11:16:08', '2022-07-16 16:46:09'),
('ad35c13eade2b93b09205bb5bb922ab2235c89436467251401760955fec052f448b3a2ce53738da2', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:27:33', '2023-11-17 15:27:33', '2023-11-17 19:57:33'),
('ad6a1850de9836986885498dc04e3e049e5e47f6543407349fb556280c03b3574672749cc87b1dcf', 1, 1, 'personalToken', '[]', 0, '2022-12-26 11:04:04', '2022-12-26 11:04:04', '2027-12-26 14:34:04'),
('ade7d7d3cd268423132d8a7a9279c82993070223dc902b1239e808b15e8c2417a092ffba32d8afae', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:23:27', '2023-04-24 11:23:27', '2023-04-24 15:53:27'),
('adf3c9cd7466039763f0d3bc5a31cb503d8ad5a88d3ecb3f5cd0c27b18b6f5b53c6b61885b72b30f', 1, 1, 'personalToken', '[]', 0, '2023-08-07 04:58:49', '2023-08-07 04:58:49', '2023-08-07 09:28:49'),
('ae28f666286ad9545b6895fea4c977b067ae1cc3f66196a6a242176c050aa671f98bde38d7347735', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:25:28', '2023-09-27 13:25:28', '2023-09-27 17:55:28'),
('ae292275b665ed54e15a49a5318f6dc91c27d50d539347ecbf475ea0f2d812ab52f991eb4d2d65c5', 1, 1, 'personalToken', '[]', 0, '2023-04-13 11:04:56', '2023-04-13 11:04:56', '2028-04-13 14:34:56'),
('ae411edbacd41067c8eda51b808453b44e9b8de182377f7ae0394f01def4b3ff1b8a0b2ea9efcb5a', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:37:19', '2022-10-22 14:37:19', '2022-10-22 19:07:19'),
('ae5474cf7a2e4bc20ef371e63d5951076933b08bab269de4ec8d2d3dc7650eb502b547d03cec3495', 1, 1, 'personalToken', '[]', 1, '2023-01-07 15:25:18', '2023-01-07 15:25:18', '2023-01-07 19:55:18'),
('ae5c44c4f70d31bfb21f7255cf6299d838327fc4950839337522b566789f827f50fd0f94f92fc8ea', 1, 1, 'personalToken', '[]', 0, '2023-01-08 02:32:52', '2023-01-08 02:32:52', '2023-01-08 07:02:52'),
('ae71753047cc3b3cf8d36fa27741b324396991585335dc4ee4bbec97164265eb926d17b6e92dacaf', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:26:24', '2023-08-09 01:26:24', '2023-08-09 05:56:24'),
('ae822ebfe9d25083092e6def1dd269e7d0f21d974cf32f78ea04988e319d583a438cac0d022cccc1', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:13', '2023-11-17 15:29:13', '2023-11-17 19:59:13'),
('ae885b31b62e2432b51c447bebe5c8f59b668804c6f6e312058d0fa554174337588385c179477550', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:10:22', '2023-06-30 07:10:22', '2023-06-30 11:40:23'),
('aebb636ceb43174df115a1e27664a3759c250f8334f1fb365c600de0075946ab60a0e0d5b6bb0264', 1, 1, 'personalToken', '[]', 1, '2023-03-04 09:19:49', '2023-03-04 09:19:49', '2028-03-04 12:49:49'),
('aec371ed5df98c81a364db9133f436748b7ffea41eb790ebcd528725f7d08b145e08d5863bfc9c84', 1, 1, 'personalToken', '[]', 0, '2023-01-13 05:23:49', '2023-01-13 05:23:49', '2028-01-13 08:53:49'),
('aed2a71b4a3af05491954e8a183fffb5ca173feab2e5ce662272701fa3666f387b5d5d331c6da69d', 1, 1, 'personalToken', '[]', 1, '2023-02-12 17:57:26', '2023-02-12 17:57:26', '2028-02-12 21:27:26'),
('aee28388d600c142bd2c16013efdbdf2fd65ebfffa973a90225417d6bee00c5a3a36bbea73d654e4', 1, 1, 'personalToken', '[]', 1, '2023-04-07 03:55:40', '2023-04-07 03:55:40', '2028-04-07 07:25:40'),
('aef4689ad3d849cb6b6cfe467545cfdb9f67df7b824c87b687aa563eb75bb869b8818e6ce665908c', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:54:39', '2022-12-26 06:54:39', '2022-12-26 11:24:39'),
('af0fc4f0236758f3604db20d07436b4819995ef855b9a86b63042e5a37b9cd03744f8244e70d05e5', 1, 1, 'personalToken', '[]', 1, '2023-03-06 04:08:12', '2023-03-06 04:08:12', '2023-03-06 08:38:12'),
('af1102dc425a32af158fda4f431893bad5a5a2766b68551e7f766b29f4005518b96565f9970b90ab', 1, 1, 'personalToken', '[]', 0, '2023-03-13 08:37:51', '2023-03-13 08:37:51', '2023-03-13 13:07:52'),
('af2a9ff8cfda380142250f03237abcd2bb044a55c5daca94283f653fe62145799072aea361192646', 1, 1, 'personalToken', '[]', 1, '2022-08-27 00:34:51', '2022-08-27 00:34:51', '2022-08-27 06:04:51'),
('af3f8e17e4ebd26f0feced69fb1a3ef42d64199076dda824df0acbc4323be71f2f6af4cfc6832413', 1, 1, 'personalToken', '[]', 1, '2023-04-24 10:35:50', '2023-04-24 10:35:50', '2023-04-24 15:05:50'),
('af3f9328af820edebeddd4c514ec27c412bb6c67bde724b1abf7b53f8b155f5fbb33f2b96adabd3a', 1, 1, 'personalToken', '[]', 0, '2023-03-08 16:09:49', '2023-03-08 16:09:49', '2023-03-08 20:39:49'),
('af9574c9ff0cabcfbd6e602cf48c84b1394150e562e1b40033248228c001513879740e02dad68396', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:06:33', '2023-09-27 13:06:33', '2023-09-27 17:36:33'),
('af966958334456ef415aeeeb4054ebc52cdf42ecb2168ad644676f3e3f77682e8c6d354c9fe6b27b', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:45:54', '2023-11-17 15:45:54', '2023-11-17 20:15:54'),
('af9673a7804069ab6b809e5619410d617432261574fc037b40ed457573c0d4a83d69d4f750501b8f', 1, 1, 'personalToken', '[]', 1, '2023-01-28 14:41:24', '2023-01-28 14:41:24', '2023-01-28 19:11:24'),
('af9dea4ff03dad0c6c586382a190edcddd282f6ff75f4acc8f9376ea730b0f1611d8a78e99ac8849', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:51:29', '2023-04-11 17:51:29', '2023-04-11 22:21:29'),
('afbb8613e1b823c7baa4704a94d93ae5d21a70e2fd941e5c8decae575603540e5344b808dc0d9606', 2, 1, 'personalToken', '[]', 1, '2022-09-07 17:57:24', '2022-09-07 17:57:24', '2022-09-07 23:27:24'),
('b00384989952b0b54ce9e2c38694330bc7701eaae3374b10bb8b845266c5540e13741abf3d2dca22', 1, 1, 'personalToken', '[]', 0, '2023-09-08 08:57:33', '2023-09-08 08:57:33', '2028-09-08 12:27:33'),
('b01589b3e1d05b97127aafceda37cc1759a9a7981126b0efbb8ef365866dda3a0fb6805eb7d9ddda', 14, 1, 'personalToken', '[]', 1, '2022-12-26 16:33:26', '2022-12-26 16:33:26', '2027-12-26 20:03:26'),
('b018b762ef43b3d0f38e7062a8277ff29d216416e135576251d67cac969fe4358dc1cb7ee4d7e943', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:16:15', '2022-08-28 03:16:15', '2022-08-28 08:46:15'),
('b02016cec1892e7588c731c2c18af541a904811a7b3e86c91cb8844ccfdb04cbd72c5bb75bd1a77d', 10, 1, 'personalToken', '[]', 1, '2022-10-28 17:52:22', '2022-10-28 17:52:22', '2022-10-28 22:22:22'),
('b02092d9c0f27eda0b993906d307e8c8d406b6b5f50181a9d2d825fe787325ea7ca19855a418b748', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:19:49', '2022-12-08 05:19:49', '2022-12-08 09:49:49'),
('b0b559a51531d0f37922b06d7b6b301c59e41590ebcbfd7583a4bc7daad1b786570395d481296057', 1, 1, 'personalToken', '[]', 1, '2022-09-19 03:51:27', '2022-09-19 03:51:27', '2027-09-19 08:21:27'),
('b0c7ef85dd2af2f28c84c2cb382cc2b3d2daaab2fe4ed23c970fd68f63fc4431bd1c021cb33cb355', 1, 1, 'personalToken', '[]', 0, '2023-05-08 11:02:33', '2023-05-08 11:02:33', '2023-05-08 15:32:33'),
('b0c9f82b5771010960d58993b620860f2292e590971a9f56108041b48a3a2c1f0fb8e5f5f1f888a8', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:57:11', '2022-09-28 06:57:11', '2027-09-28 10:27:11'),
('b0d7532afd6095d913565e90c872f7686208f38be51b3d1e141b430282adf238ff35928bb04bef30', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:35:30', '2023-11-17 15:35:30', '2028-11-17 19:05:30'),
('b0dd6584100a55231539cf7e571d28ea6943d1542386c7152c1dafbe9b6d5d2dc01e21ea7c69faf6', 1, 1, 'personalToken', '[]', 1, '2022-11-22 02:38:40', '2022-11-22 02:38:40', '2022-11-22 07:08:40'),
('b0f733b4f971b615c58530c19b5c942c4a6ab3570f72977b8a1b2ad3c0a9256812b08e5d580db049', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:06:54', '2022-12-06 07:06:54', '2022-12-06 11:36:54'),
('b0fc8005970d7985045cd21273df8d54e980a1b193e81754434c697663de3800a00fff48c9caad86', 1, 1, 'personalToken', '[]', 1, '2022-12-26 07:13:19', '2022-12-26 07:13:19', '2022-12-26 11:43:19'),
('b10307f9ce09603acd7f8e6e0ca5343fa8d3afd6f7bbe69689a285f1ac541b38ddae17eb7f9205b0', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:13:27', '2022-08-03 06:13:27', '2022-08-03 11:43:27'),
('b12f41eb8f329f945cbaf9c124556eff4612ec06aeab709834f42f55a1e776e6a079947a4fbe1645', 10, 1, 'personalToken', '[]', 1, '2022-10-28 18:11:10', '2022-10-28 18:11:10', '2022-10-28 22:41:10'),
('b13e7b0df5171edf04ef60394502e883fbc0f5a51543bbed04c3187a7d43cce78608465e6e3f31eb', 1, 1, 'personalToken', '[]', 0, '2023-08-07 04:59:39', '2023-08-07 04:59:39', '2023-08-07 09:29:39'),
('b147740b43fba27871594c213f7cc80546ea5a94a3b3b4779e4e23a0f4823fb0f17071469883f3fc', 1, 1, 'personalToken', '[]', 0, '2023-01-20 10:15:53', '2023-01-20 10:15:53', '2028-01-20 13:45:53'),
('b147e1ffe1de52458e903ac7387edc1b31bd26dbd7e818743bba791db8d34025840f6e33469eb91c', 1, 1, 'personalToken', '[]', 1, '2023-04-24 12:00:04', '2023-04-24 12:00:04', '2028-04-24 15:30:04'),
('b14ef46996889086e0fa5a3d375e382760b81febc974bd68e0f3001bca1d14c2e2e428aa38d58cac', 1, 1, 'personalToken', '[]', 1, '2022-07-08 04:41:59', '2022-07-08 04:41:59', '2022-07-08 10:11:59'),
('b15d9becc1510fdb83ad5eb8ed1ec826c9506f2541742ce7b3f14df591756a83e84244a88401a8d4', 1, 1, 'personalToken', '[]', 0, '2023-08-20 02:18:21', '2023-08-20 02:18:21', '2023-08-20 06:48:21'),
('b1a8142bd7621a37c9263ccd98efa715e0853ca60f4a9ad158ef0465d46310b9099bdce3e903478c', 1, 1, 'personalToken', '[]', 0, '2023-04-24 11:21:01', '2023-04-24 11:21:01', '2023-04-24 15:51:01'),
('b1d56c024eb2903860a538af6ce5602d746f89d833706ca0a129f74cee85916ab1a9953b0f407139', 1, 1, 'personalToken', '[]', 1, '2022-10-15 13:02:02', '2022-10-15 13:02:02', '2022-10-15 17:32:02'),
('b1e0d3fff65be15ec159652f1e657731e2d4f87b4ad633b81269ca65dc3982755b4d0590cd934613', 1, 1, 'personalToken', '[]', 0, '2022-11-08 02:25:41', '2022-11-08 02:25:41', '2027-11-08 05:55:41'),
('b1e6f7b065cb8ab02c2f9b29ef22273ae9981c55352c4e9a354c1576a1bb1534acf9501870ba9b86', 1, 1, 'personalToken', '[]', 0, '2023-09-18 02:48:57', '2023-09-18 02:48:57', '2023-09-18 07:18:57'),
('b22dfcb6fe7513059aca91b52ff1512ea2762797e40ce4662045ed7fdb624464f63d1e36dccd24d0', 1, 1, 'personalToken', '[]', 1, '2022-08-04 07:12:40', '2022-08-04 07:12:40', '2022-08-04 12:42:40'),
('b24d92f136ce6c810d496e2ba2ae8cc2cf1b7c706604b03ac4dba8f8c2e8af455d00e0d1a6739da4', 1, 1, 'personalToken', '[]', 0, '2023-04-08 17:46:07', '2023-04-08 17:46:07', '2023-04-08 22:16:08'),
('b2830e3dc78042d5597041501ad89ca098438a140dd4af7f504fc543f6cb3c6c2ade5896a1584eec', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:02:04', '2022-12-06 07:02:04', '2022-12-06 11:32:04'),
('b2868d19b3285a9f60fec80d6602fe630aa88887ff66eb659c2ce618b299e118a322e43f0abd3e81', 1, 1, 'personalToken', '[]', 0, '2023-11-17 03:55:40', '2023-11-17 03:55:40', '2028-11-17 07:25:40'),
('b28e9321065fbdfaf9f6bccc3125288487e2a6cbcbe91e7b69e61cc0a81c3eec1d09b92d6c2d9003', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:37:57', '2023-01-21 05:37:57', '2023-01-21 10:07:57'),
('b2a99647847f81a67fd88bbd0db6d66cfac2f4e2127154ae1b09e05b92359ebc5f398993cef7ddbe', 1, 1, 'personalToken', '[]', 1, '2023-06-21 05:45:16', '2023-06-21 05:45:16', '2023-06-21 10:15:16'),
('b2b894cb8e9f865967a6c9e753397b3febad91dcf4609a094f378e9895e17117795346499f836905', 1, 1, 'personalToken', '[]', 0, '2023-02-12 17:48:11', '2023-02-12 17:48:11', '2028-02-12 21:18:11'),
('b2bc8eec21c2cdd2123fbf1db5c7e00868d7447a19951b4057d33498e94f81ba9f62e777ee6d20ab', 1, 1, 'personalToken', '[]', 0, '2022-10-22 10:52:51', '2022-10-22 10:52:51', '2022-10-22 15:22:51'),
('b2bf26f922aa74bf35712875aa70971c6003f8799ad57e1e890a260ac5a4dce37fe7d740464ea52a', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('b2d574bf769fe75c7184bf0a330c4208858e429f75ce5657693cf215c32d1444ab36854f5e212254', 1, 1, 'personalToken', '[]', 1, '2022-09-19 03:52:45', '2022-09-19 03:52:45', '2027-09-19 08:22:45'),
('b2d8e9e9de91e5d4e463743a65d5d67e9f15c41812d7d7423c2c2757b0c33fdf80b7ebd91b333b9b', 1, 1, 'personalToken', '[]', 1, '2022-12-06 07:56:36', '2022-12-06 07:56:36', '2022-12-06 12:26:36'),
('b32bf9ed34b8b05709d6204cdd80c229e20ea397fdc86cde96d78b509b6eb1b0ed84ca8a796f870d', 1, 1, 'personalToken', '[]', 0, '2022-08-04 03:58:30', '2022-08-04 03:58:30', '2022-08-04 09:28:30'),
('b33eecd25bfb618975d61aa8974d3f5f1d02318528055a5e5e08287ff7cfc56ec8eaa524a2208f4f', 1, 1, 'personalToken', '[]', 1, '2023-11-30 16:53:30', '2023-11-30 16:53:30', '2023-11-30 21:23:30'),
('b34872ad2fc6ed06703d5d371a5cd893292c98622467398d96f32c8737cbbd015c3a1f0f75dd0365', 10, 1, 'personalToken', '[]', 1, '2023-02-13 16:59:28', '2023-02-13 16:59:28', '2023-02-13 21:29:28'),
('b36d6bd803a7d5208b29d2480c04c18ae828a2e12cd9cdf0b315a3ddd851818a376ab3dc95796e9d', 1, 1, 'personalToken', '[]', 1, '2023-07-18 05:19:01', '2023-07-18 05:19:01', '2028-07-18 08:49:01'),
('b382178dd5f6e010f042e49bc6af99c7801d7f31c41a84b0f47e8bcb1c051578cd67b9b9418c2bda', 1, 1, 'personalToken', '[]', 1, '2022-07-03 04:27:59', '2022-07-03 04:27:59', '2022-07-03 09:57:59'),
('b39c14e90590e661ad594cc83e19ecb9d70380d8b797a7684d62955b4bf489bad0c4cafe2b34944c', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:39:58', '2023-08-08 08:39:58', '2023-08-08 13:09:58'),
('b3a47c0d5775b6a2cb1cced43b92ebadd9bcc9a461d11402be60d21eddb81bcc0807decf9e07af9a', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:08:49', '2023-09-09 11:08:49', '2028-09-09 14:38:49'),
('b3afeea00bc40031774354b2fb86afc8d779a5ab44d27eb142bfd6bbe7521810ddd65cae9c4f81ef', 1, 1, 'personalToken', '[]', 1, '2022-10-25 02:10:13', '2022-10-25 02:10:13', '2027-10-25 05:40:13'),
('b3c5f2ec90ac076719afcb33344c647d6fb6b8852cbe78d859d24af9fc3c090dbc337c46bff2d700', 1, 1, 'personalToken', '[]', 1, '2022-08-25 02:18:27', '2022-08-25 02:18:27', '2022-08-25 07:48:27'),
('b40b43568f0491ba193b932fbf8067d6a62099b6af8c3b3f7b09865a9a3f6ed178f8918777aeeb5c', 1, 1, 'personalToken', '[]', 0, '2023-07-18 10:37:45', '2023-07-18 10:37:45', '2023-07-18 15:07:45'),
('b41db8e61e171b28b845b31a5308c419e400ba20f3102b91e2002e501c8e19604efa3fd5df67930d', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:37:08', '2022-12-26 03:37:08', '2022-12-26 08:07:08'),
('b41ee0abcbe2e53839c806ccfb38bbf3f3017abbf1dffee6c2626ab17bdd5e1e013463ce03f1f7f3', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:51:05', '2023-05-16 03:51:05', '2023-05-16 08:21:05'),
('b41fb54685d1c57174b89bed1b166a8c255ebe0de21fab775e50ab59db61fad7ab66c69b6e9e7cae', 1, 1, 'personalToken', '[]', 0, '2022-09-23 13:32:20', '2022-09-23 13:32:20', '2022-09-23 18:02:20'),
('b42ed31f1f3bf9e0f4d6cf4c94f143c95420970f11fc22468200754fd9f5318198be8fe88c745db9', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:39', '2023-11-17 15:29:39', '2023-11-17 19:59:39'),
('b4831d301facf662bdc57b40480716360b6c2a1fd0b7af4487950918876f3b1f3ab9114fdbe7acba', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:44:59', '2023-06-21 05:44:59', '2023-06-21 10:15:00'),
('b4aa724fd5c2f4a6ab74049fd58d6c9504e06e1f6bd6ba08976bc354a29160f82dbdc59934f5a18e', 1, 1, 'personalToken', '[]', 0, '2022-11-29 09:38:16', '2022-11-29 09:38:16', '2022-11-29 14:08:16'),
('b4d4a44461785c660fac88423231ad3a87e4fac5a5875dfdccead604d1b1ba2063d24f32efc049a0', 1, 1, 'personalToken', '[]', 0, '2023-11-29 03:38:43', '2023-11-29 03:38:43', '2023-11-29 08:08:43'),
('b4fb6942c67853504f28e582c83b5aff4646f0ba75264f86ae13cfae087f21eb6e5f7d74f9b25c84', 1, 1, 'personalToken', '[]', 1, '2023-08-22 04:44:52', '2023-08-22 04:44:52', '2028-08-22 08:14:52'),
('b4fd085175604c9d46b06b7af45ba5798223393aac373bfd5bb1afe73efa4d3951712c1ebd039633', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:50:10', '2023-02-05 17:50:10', '2023-02-05 22:20:10'),
('b51626be0aaf4bd2d49d4c30f461a5902f45d44234890b81d66e6e83302b255ca4eb0dcd85340a85', 1, 1, 'personalToken', '[]', 1, '2022-11-20 06:56:15', '2022-11-20 06:56:15', '2022-11-20 11:26:15'),
('b55bf096d4012a577ca3f1b2831ebb9e059d5c911c9fe74de7dae019012f1a88204d720a9f3f10d0', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:10:26', '2022-12-06 09:10:26', '2022-12-06 13:40:26'),
('b57897aa3bc19ebea8d69db957eafb87fd77835d9de702748ac2bd2f4cfef8368a0636c2c10e6cb8', 1, 1, 'personalToken', '[]', 1, '2023-09-09 11:06:26', '2023-09-09 11:06:26', '2028-09-09 14:36:26'),
('b579ff3078a0646d3762e3ef27ae4d7279b185e47f1a2e613c261cfd095f654c1b04eac1f0bc5258', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:53:02', '2023-04-11 15:53:02', '2023-04-11 20:23:02'),
('b58be2bef3e447292507920f29a161dd7723fad40b73c3e85e9221dd313d961c350b993f6c2cfba9', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:07:27', '2023-01-19 13:07:27', '2028-01-19 16:37:27'),
('b5bf90e83c6b33d6ec79649b997071e4a81a808edb5ceb52fe47835f2ab100f9d128e4825ffe0fee', 1, 1, 'personalToken', '[]', 1, '2022-10-13 16:52:48', '2022-10-13 16:52:48', '2022-10-13 21:22:48'),
('b5d9f2e0b02af52548af8eaac1791d9e16127099bc6f49a63479779267fd6a89ef44820c24e6a4a6', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:33:44', '2022-11-28 17:33:44', '2027-11-28 21:03:44'),
('b5df2a1554400325f5114d7f03424fd41802a821e9d2f5c939ca70a9b2bedfbcae1ed4510f145068', 1, 1, 'personalToken', '[]', 1, '2022-07-10 15:15:11', '2022-07-10 15:15:11', '2027-07-10 19:45:11'),
('b6028949f1c061187119353ee832aca11d6af1551868501dfcbc1360010b22e7ad9c1cc8d2583dd3', 1, 1, 'personalToken', '[]', 0, '2023-02-03 17:33:45', '2023-02-03 17:33:45', '2023-02-03 22:03:45'),
('b62d1cbed92dcfe4cd801d0cf79edceebdf16d793b0f62da13ef341910dfebd3eef94ac4ebfa4c97', 1, 1, 'personalToken', '[]', 1, '2022-10-17 16:19:42', '2022-10-17 16:19:42', '2022-10-17 20:49:42'),
('b6571a0ecf339d02183a49a453d5b681b4f7c98fe6a80b35dcfd82a0befafb7d40fcf4f1ffe6dce7', 1, 1, 'personalToken', '[]', 0, '2022-07-16 02:22:34', '2022-07-16 02:22:34', '2022-07-16 07:52:34'),
('b6c0b9e91368ede975872243772bc74d49ddb41109aaa0dccda3ce6f6fd9bc3005a8356a788281fa', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:47:34', '2022-08-27 01:47:34', '2022-08-27 07:17:35'),
('b6d66b96d5ecdff0806caf6d672937568bb684d7a2de636e1cf142f19fecf9368d9f4414fa3e0966', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:28:56', '2022-11-15 05:28:56', '2022-11-15 09:58:56'),
('b73f55a7bbe49bd07e2896904e7385b3df6e7b54de93281ac2927ea44b1fd3c9f594ffc2fc9e830d', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:06:17', '2022-08-03 06:06:17', '2022-08-03 11:36:17'),
('b745ebed8b7a58a8ab0b587e391e3869a889cfa1ff71d71436d4fddc07ab126c461b4df3009a15e3', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:10:58', '2023-09-27 13:10:58', '2023-09-27 17:40:58'),
('b78a7d2dda4299d82f43147897efba0ae0ee648d314f28cc572b8941e82d384428e2ba4ada239565', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:52:30', '2023-05-16 03:52:30', '2023-05-16 08:22:30'),
('b7a6c47e94fc4fc2965502ddab78d761a45844e459329b67de79ba59ce2d59de5b61fe804d72022d', 1, 1, 'personalToken', '[]', 0, '2023-09-04 03:24:49', '2023-09-04 03:24:49', '2023-09-04 07:54:49'),
('b7aa145c71fd6fc88e3d5b50c9e7891557b66cf646f5c2166b4daff81ffb482c5eb8e6c65d92ddce', 1, 1, 'personalToken', '[]', 1, '2022-11-30 16:00:45', '2022-11-30 16:00:45', '2027-11-30 19:30:45'),
('b7aea78069ef972ad4a2fc1b007d5ec85fc571453a9f43faf59454706d911ac728605227115ec070', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:50:05', '2023-04-11 08:50:05', '2023-04-11 13:20:05'),
('b7f0d41d467e429a7dce92fc05693f1243ed123e7a95bbe9808b2aad4cc69f15e10686cfac4d1abd', 1, 1, 'personalToken', '[]', 1, '2023-05-23 12:35:46', '2023-05-23 12:35:46', '2028-05-23 16:05:46'),
('b82eea54f83ef8024da78c262419b60803721196c769a6f6e8413ae37d9192d81497ce4c737f014f', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:43:49', '2022-12-26 09:43:49', '2022-12-26 14:13:49');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b84d20e6e25267137f87235dedbe65852db7094fbc7b5e02a361e49001f31e99fbbdc6e7ddad77da', 1, 1, 'personalToken', '[]', 0, '2023-04-06 12:51:41', '2023-04-06 12:51:41', '2028-04-06 16:21:41'),
('b84dc5351c0d43e8b847dfaac36495744bb3d02fc62e053e9fe74cf3c0bf4f979d9b47e7627d9c4f', 1, 1, 'personalToken', '[]', 0, '2022-12-16 08:51:06', '2022-12-16 08:51:06', '2027-12-16 12:21:06'),
('b884324b0463480896e43b10c51e57746d068123b18bb19b3c19f31703ae13b292df5947c99a78d3', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:51:24', '2023-08-13 03:51:24', '2023-08-13 08:21:24'),
('b8e98611441a4dc099f95850475c1ec04f7a58474bc41b0bb8ee8e025dee68cf9ff68ec5c62ed1ff', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:56:04', '2022-12-26 02:56:04', '2022-12-26 07:26:04'),
('b8f1f9b48a7bd785b51c85baa93e42b68ec9db121f5ed6a1bbdf1748266c50179ad5581763cb49c1', 1, 1, 'personalToken', '[]', 0, '2022-09-26 08:07:36', '2022-09-26 08:07:36', '2022-09-26 12:37:36'),
('b8f73e93706210677dfd0b623ad32116b50edf075336df057f0d96b898a9dfd3790234f71766239e', 1, 1, 'personalToken', '[]', 1, '2022-12-16 02:59:27', '2022-12-16 02:59:27', '2022-12-16 07:29:27'),
('b8fb760427bb864e5ac2d3327cc621a372e019887a1891382d2d7c9b88cfe813ecfa58ad7f5d65e8', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:37:30', '2023-02-05 17:37:30', '2023-02-05 22:07:30'),
('b9109bfa5b8adc7e5dac24428cd4ee244650ff372dc7d8f7519696cc27c3ffce68121bbac91efb80', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:35:59', '2022-12-26 03:35:59', '2022-12-26 08:05:59'),
('b93b5c9d8377f146c47295a0ebdbf11d77cea64bd8dca6621ffd09a62934b653f863f5471eb21366', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:35:51', '2022-12-07 06:35:51', '2022-12-07 11:05:51'),
('b956b26977c5148943b1bc7931cd164e8761e2ce60f9272703d48dbb9667d98bceb7e779d224e7ff', 1, 1, 'personalToken', '[]', 1, '2023-03-10 08:11:07', '2023-03-10 08:11:07', '2028-03-10 11:41:07'),
('b9780e2c0579cb2b8179cf0cdf55de960e674444e7ba25a0466e22b931d6a4d92809de9d6b7d93d1', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('b9aeeb7a9ca33bbb85e18036bde9d3650006b895ec081e50ff4bf5370e320eade7a547e4e1263544', 1, 1, 'personalToken', '[]', 1, '2022-12-26 10:09:14', '2022-12-26 10:09:14', '2022-12-26 14:39:14'),
('b9ecdd84fc86a67e9475832b490882098515e247c83bf749da021c8791df5e861afec47aac51b8c3', 1, 1, 'personalToken', '[]', 0, '2022-07-13 12:57:07', '2022-07-13 12:57:07', '2022-07-13 18:27:07'),
('b9f0c87d511092a2a6c45b8e8c0d3d1dfe3457e6bac484aa93cfd8ad6e219146d6f689a904072727', 34, 1, 'personalToken', '[]', 0, '2023-06-26 05:23:02', '2023-06-26 05:23:02', '2023-06-26 09:53:02'),
('b9f4d02bc7c9797cb1d2e6a7e89e496137b7d1d914cd916cbbeed10e9b60fd799b177f1961c58a03', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:56:07', '2022-07-02 12:56:07', '2022-07-02 18:26:07'),
('b9f8cb9b131cb304dfdf71dcd7beb300fd10fc339f59c33af26e982cd03079a482d876acc128986c', 1, 1, 'personalToken', '[]', 0, '2022-10-23 03:53:18', '2022-10-23 03:53:18', '2022-10-23 08:23:18'),
('ba1e44c2345d194cde500b7ad203fb016ae412a9b4ff7665e1f3101eb977e3cd4ef0cc1fb8dd215b', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:52:20', '2023-05-16 11:52:20', '2023-05-16 16:22:21'),
('ba53b8754e340cffe71e16f63a925b05442254ab08aea04e5aece9d1e357ea1a5f2f2214602d4307', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:48:03', '2022-12-26 09:48:03', '2027-12-26 13:18:03'),
('ba55aaeeb27451afa38c7a02419261081b0ff46e06fe3b8308e3b51fd5bc5a3b39166158e18711ec', 1, 1, 'personalToken', '[]', 1, '2023-02-12 18:48:36', '2023-02-12 18:48:36', '2028-02-12 22:18:36'),
('ba5fcf61c5c6361a9c1fd25d909736a2e67801b8e10600c7ca3c6422e6c9576a15e8c0a6b93d7a52', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:37:57', '2022-10-22 14:37:57', '2027-10-22 18:07:57'),
('ba62a53ae693f79465a035a8c746d64f4f15a2583a79053a46ad9ea0c1c7e9fb9bbf0d4cff8da2d2', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:36:01', '2022-07-12 04:36:01', '2022-07-12 10:06:01'),
('ba82afcc4a205ce518415db5a62f780ba0dc5f9936457e95940cbddae65adb12ed24165f17303331', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:43:52', '2022-12-26 09:43:52', '2022-12-26 14:13:52'),
('ba9e1fa314cc63673f127325c2b85497c1d003cd0242fac766cbb6fe9421166f3a2e558bb92a4a26', 1, 1, 'personalToken', '[]', 1, '2023-03-06 03:48:20', '2023-03-06 03:48:20', '2023-03-06 08:18:20'),
('bab04fe279f976f3053ad851e9be30678fd0c056a5e4a00355caad42583379d1d866ac22d37298c1', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:26:04', '2022-12-06 11:26:04', '2022-12-06 15:56:04'),
('bafed678ab9b41ea43caa36c406f3bb33f60c46966b6f0e158548e88833f70685a8c350a336defef', 1, 1, 'personalToken', '[]', 1, '2022-08-05 10:16:21', '2022-08-05 10:16:21', '2027-08-05 14:46:21'),
('bb04c3d86f2b8f6781c653eda722ed8491c591b8fbbcae118fd6b5b2412bb7348d72b09621b811d8', 1, 1, 'personalToken', '[]', 0, '2023-07-10 12:10:58', '2023-07-10 12:10:58', '2023-07-10 16:40:58'),
('bb215ffcbc2b2dca654fbd9590fbe3e985351b65d92fc9be52d2571b5c93e79ba8738cd53c971ac0', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:34:02', '2022-07-06 07:34:02', '2022-07-06 13:04:02'),
('bb2349cf4206903b0e8fcadb25edb77f259462f183c205fef5893e03af380462c6dcec9ed89506a4', 1, 1, 'personalToken', '[]', 0, '2022-11-14 04:34:15', '2022-11-14 04:34:15', '2022-11-14 09:04:15'),
('bb273d2c1b90831c5bb94326dd37704c978b6389bb097be516497b517a6ab1a67b97e0591312c3e5', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:10:16', '2022-07-06 04:10:16', '2022-07-06 09:40:16'),
('bb3aafcbd6e6d5d120306bfa3ef22feb823e463d52cb5bf58b8141602c5ae6e56d0076ac9459be6e', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:26:16', '2023-04-11 08:26:16', '2023-04-11 12:56:16'),
('bb4832fabbc307a13f92dd28fc3c15cd386fabe0bf0de3c39f9a5c5013a0ccd479bd01dbd59885f3', 1, 1, 'personalToken', '[]', 0, '2023-05-17 03:32:55', '2023-05-17 03:32:55', '2028-05-17 07:02:55'),
('bb65914802d30be0a2a1cf73436abe1f43adb8f9bc81c0c16e7098ca3ff1de59b402c105ddabe4d1', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:56:55', '2022-08-01 16:56:55', '2027-08-01 21:26:55'),
('bb69301208e66030278aee27e037d6128d727d0443456f1490bb94f6521b5135df4169d22cf90728', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:37:53', '2023-11-17 15:37:53', '2028-11-17 19:07:53'),
('bb771754b2ae1afd771041b5f4dea5ef6fd77c0ba1867fb80e1cdedecec00bed28f1d9606d839217', 1, 1, 'personalToken', '[]', 1, '2023-02-13 12:47:39', '2023-02-13 12:47:39', '2023-02-13 17:17:39'),
('bb7da8be8885a540beaac627e42d74c060b171a47e0e4a77a01f9e9331e461e77de6fe38d3cca7a0', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:28:36', '2022-11-20 08:28:36', '2022-11-20 12:58:36'),
('bb81b77ed4bec762eaa2a8350ea0660b1e58b5b0b7c1378488766ead5571622c179202840ca44f5c', 1, 1, 'personalToken', '[]', 1, '2022-11-19 02:36:05', '2022-11-19 02:36:05', '2022-11-19 07:06:05'),
('bbbec6b8db1088dab8605a6edcefe827bde257406c2a479d8bf25484b05595cbac8833adb35ad7c8', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:55:14', '2022-08-03 03:55:14', '2022-08-03 09:25:14'),
('bbc24b3f77beb404c1a76c09598f296152388e4721f39aae82accaa2d56e0b4e2ba6e7a6324bd999', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:44:17', '2023-05-16 03:44:17', '2023-05-16 08:14:18'),
('bbf25752425017b7765395de048e3f8b970ffe9b980499293639f7d19b58ac991877e6de63c7c9b9', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:38', '2022-10-14 13:23:38', '2027-10-14 16:53:38'),
('bc0fc57a23f567dc3ab472a88f1a639be737c007e715ebae60b7ee0bec3fcc5ec7b0c293354b7652', 1, 1, 'personalToken', '[]', 1, '2023-02-10 04:26:23', '2023-02-10 04:26:23', '2023-02-10 08:56:23'),
('bc2c1bfd88ea1fcf0c407cf74dee9cd490192f8b5524571e26bfaf2105ee740421382fca0f6cab6e', 1, 1, 'personalToken', '[]', 0, '2023-08-19 03:46:14', '2023-08-19 03:46:14', '2023-08-19 08:16:15'),
('bc54ab3a6eb34347df2b7562990dc2394453b8d518ebaa44cca40986dc68d51fb35bf033427d4955', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:12:43', '2022-08-28 03:12:43', '2022-08-28 08:42:43'),
('bc7eea9d8d32c0ae2eafe641fdb2c569bac16c5e7fbcfab05c1e031f41227308a0a9182519edf7e0', 2, 1, 'personalToken', '[]', 1, '2022-10-05 06:13:13', '2022-10-05 06:13:13', '2022-10-05 10:43:13'),
('bc8ad54129777f4574499fa73c278f488886c11f8b5ac68c9abe1f01cbb9676b50da6c1453fcee0b', 1, 1, 'personalToken', '[]', 0, '2023-01-27 11:46:41', '2023-01-27 11:46:41', '2028-01-27 15:16:41'),
('bc93dc6bdb383c7c2716341cfbbeb929c315efe44563cfe4964102284d18fb23ef39043309d636e1', 1, 1, 'personalToken', '[]', 0, '2023-02-07 17:37:35', '2023-02-07 17:37:35', '2023-02-07 22:07:35'),
('bc95f8d682ac9839e142a52c1f462f03d9126954ba1d9614dc163b61543b2870a4d4c95f85475730', 1, 1, 'personalToken', '[]', 1, '2023-01-21 06:05:07', '2023-01-21 06:05:07', '2023-01-21 10:35:07'),
('bccd8fc1194656f761146ffba1e91bb589ab6ae64adcf767d2cf3f82fcdc6e284e2ca26b151ca69c', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:25:20', '2023-08-14 07:25:20', '2023-08-14 11:55:21'),
('bce04a5bb9a3dca0b923796f78c6b77e5989be3a5e9c639d2a54ef2f3f8baa0e6adadf9c0da5efe9', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:11:13', '2022-12-16 05:11:13', '2022-12-16 09:41:13'),
('bce79d72ec5749ebdc8f7979ae9def0252a0691187ee4f905d650788aa1d5506dda4bfb6e1d5f794', 1, 1, 'personalToken', '[]', 1, '2022-12-16 02:57:01', '2022-12-16 02:57:01', '2022-12-16 07:27:01'),
('bcea55d2a37866c4a525250558323486a3a46864022a0576614c2e1e23def511e257372eb7c094d2', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:19:10', '2023-05-16 11:19:10', '2023-05-16 15:49:10'),
('bd39de3ffe6faaffab5efc309c9c584015c1ba990cbe950b71090b66658436dfca8ba7e0fee5111b', 1, 1, 'personalToken', '[]', 0, '2022-10-15 13:51:42', '2022-10-15 13:51:42', '2022-10-15 18:21:42'),
('bd5d4f248ac5ce314ca69d84985c8ad0b3c9f0f70e9948482ecc1e2d68d6c21936d91d893b126286', 1, 1, 'personalToken', '[]', 0, '2022-07-08 04:34:50', '2022-07-08 04:34:50', '2022-07-08 10:04:50'),
('bdaeda859c0cfe9c140b02c3d7f993ce9462225123ea93c9c16d283775b9f1c907ab22fc29a7f944', 1, 1, 'personalToken', '[]', 0, '2023-02-07 17:37:08', '2023-02-07 17:37:08', '2023-02-07 22:07:08'),
('bdfadcf045e5ef59aefc517ca3f9b657b8e2cfdb42989d4d938609b83f037c3b85d9c77947acf717', 1, 1, 'personalToken', '[]', 0, '2023-08-13 05:06:05', '2023-08-13 05:06:05', '2023-08-13 09:36:05'),
('be2738e07cdfc227af52878b1c8535981db13554e31baf27713a2846b7ca3784f5b1c12bfbb75639', 1, 1, 'personalToken', '[]', 1, '2022-07-25 14:01:32', '2022-07-25 14:01:32', '2027-07-25 18:31:32'),
('be4646561f55a3b90f0e4a960b512f48feefcbf8c1427dff3bf3e3291769b2b3093bf4900fa4f481', 1, 1, 'personalToken', '[]', 0, '2023-01-15 14:06:57', '2023-01-15 14:06:57', '2023-01-15 18:36:57'),
('be4df7e4019f80caca602a3033fa7ccde615ed1503efbcbec98278e5c2746ce5b213fe9eca7cae6b', 1, 1, 'personalToken', '[]', 0, '2022-07-12 04:26:41', '2022-07-12 04:26:41', '2027-07-12 08:56:41'),
('be5e35074c7f087ef751586b096ee9b2e9fb4d069bbe728ece9a32e81218ee84b953278ff9020527', 1, 1, 'personalToken', '[]', 0, '2022-07-06 06:48:50', '2022-07-06 06:48:50', '2022-07-06 12:18:50'),
('be6c3df83b7778b034f453081a46d4d3a83b2d0e4a15a37dbcf848084800727337e65ea914b213a6', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:31:15', '2022-11-21 02:31:15', '2022-11-21 07:01:15'),
('be835382a1663ca5c5bc149db3401bde1056af5cabf004a44f340c5895c518cd32c6931e28f82a5a', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:57:14', '2023-11-17 15:57:14', '2023-11-17 20:27:14'),
('be8fbddb4991b70074097b7d3d8b50f0fd6491eb5d8890fb2548e680ffa6f818ca754b3024bed8fc', 1, 1, 'personalToken', '[]', 0, '2022-08-04 05:47:52', '2022-08-04 05:47:52', '2022-08-04 11:17:52'),
('be942b9f6b195f419bbdd0a705a502ef9a35b769bfdb3c7fa9c379ba6ca94b21f8513445507fd19d', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:09:51', '2023-06-21 04:09:51', '2028-06-21 07:39:51'),
('be9f3e9ef2f44b4052c2f4c5da1e75eaa4b473b31991dd60a586f05f80cf26d5637cf8ecd05a9b8f', 1, 1, 'personalToken', '[]', 0, '2022-12-26 09:44:00', '2022-12-26 09:44:00', '2022-12-26 14:14:00'),
('beadd47cb771346f94c5137bdeb6ea959dcb6820131ae2c1c94e6fe145a3d103e5f5b1d988a5899e', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:31:59', '2023-09-27 13:31:59', '2023-09-27 18:01:59'),
('beb4ec25f6f427274b19a413623db8fff7b7dfe6bb3edb132b75ff11302b6e532ce565f879c17636', 2, 1, 'personalToken', '[]', 1, '2022-10-13 16:55:36', '2022-10-13 16:55:36', '2022-10-13 21:25:36'),
('bed83a624fd9a70d2afccc47d1994db8d1c8941200258e6f455086954e39b5dba7622c4d44858785', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:45:52', '2023-06-30 09:45:52', '2023-06-30 14:15:52'),
('bede0a4374ea3718b72d8389cf9477a92696369d3c426cc1a4b30c6b2e49a30567b83c04be8598d2', 1, 1, 'personalToken', '[]', 0, '2022-08-31 01:16:23', '2022-08-31 01:16:23', '2027-08-31 05:46:23'),
('bf61b8cd743cb6f840bbbd0d50b89ff4ce558e7bf130aee2664c0bbcade105518ce18a64d49f23d7', 1, 1, 'personalToken', '[]', 0, '2022-12-14 11:08:12', '2022-12-14 11:08:12', '2022-12-14 15:38:12'),
('bf73a14c068d6eb5fcd4343324de531f3a920f7a19ddddf5800a4f5f56077c5f3970e63a875a2e63', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:53:05', '2022-12-08 05:53:05', '2027-12-08 09:23:05'),
('bf883a2b02ba8c9e0ca9c2ed0b8bda2f06c28f6e44c28aa6eb28c03cd791322b5601fd55c429260c', 1, 1, 'personalToken', '[]', 0, '2023-04-08 14:37:48', '2023-04-08 14:37:48', '2023-04-08 19:07:48'),
('bf9211f9a7320be9bf226a31ff1ad064712cf812d789b27d7be7161077bc5392f18856274d0d9c6e', 1, 1, 'personalToken', '[]', 1, '2022-12-24 08:24:50', '2022-12-24 08:24:50', '2022-12-24 12:54:50'),
('bfaba03a14bc01807767df93caf2c81a4433ad874c53cd5b05fb74d3b864453f8d2a5dd62d32a009', 1, 1, 'personalToken', '[]', 0, '2023-02-05 02:11:16', '2023-02-05 02:11:16', '2028-02-05 05:41:16'),
('bfc64adb174c15e9830a82de4f888b8a0481926abf20d993cc0747fc459bbd7eb10decf98d0d6dfa', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:11:16', '2022-07-25 07:11:16', '2027-07-25 11:41:16'),
('bfd524511b428138587fcaa1709f8ca2484a51727c47b3a5bf9a437beb3b8712c52111be8b571748', 1, 1, 'personalToken', '[]', 0, '2022-12-17 07:20:47', '2022-12-17 07:20:47', '2027-12-17 10:50:47'),
('bfd5dd4382d0a8c2b96db9eada741b797629ae58193973b00b4e2462651ebbd16182541bf82f473a', 1, 1, 'personalToken', '[]', 0, '2023-05-16 11:07:24', '2023-05-16 11:07:24', '2023-05-16 15:37:24'),
('bfde207d212571b438843b5d00720dc96cf109e17792683c6c2016f5b865ca1d8c6088935cf0e07d', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:05:10', '2022-08-28 03:05:10', '2027-08-28 07:35:10'),
('c019bbd3ef93b6b66413b71df5905c984f3daf528f4e45356fb5cc7a6178ad067674f373e06547f4', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:25:50', '2022-10-14 13:25:50', '2027-10-14 16:55:50'),
('c01fdbca4dc1abbcf6497ae9f9847aab0fefa33a13d4539cc30b70e9f27edc8de3ee775901a3599f', 1, 1, 'personalToken', '[]', 0, '2023-09-10 01:07:10', '2023-09-10 01:07:10', '2028-09-10 04:37:10'),
('c036d8c41b112ac2ac73dfa0c54c59ca6bd056df33d9a7d7a819ce52d1ce650113feb4d922cd2a1d', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:44', '2022-08-03 03:51:44', '2027-08-03 08:21:44'),
('c03ed19c1ea40604115b32d2e11440c6630fa14e24a76061a8c973bef3be85c0fd8c8f1654d00dd3', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:19', '2022-12-16 05:08:19', '2022-12-16 09:38:19'),
('c049d25627be83c9749111957afb2112b36130cc12e977a5e18a21aebd6cf55683b577ac49bcb1c4', 1, 1, 'personalToken', '[]', 0, '2023-10-21 00:00:32', '2023-10-21 00:00:32', '2028-10-21 03:30:32'),
('c05d84de6e1b3aa1c3c487d35966121e99b36bf33a3dd6248ed52087311d73171a660e27ac4fddbe', 1, 1, 'personalToken', '[]', 0, '2022-11-27 02:43:23', '2022-11-27 02:43:23', '2022-11-27 07:13:23'),
('c0ba0a61f3831b008b678e768c238199a624bf80df8100efd3ae57e3567c6eabb1f7a2a788fb77c3', 1, 1, 'personalToken', '[]', 0, '2023-04-13 06:05:16', '2023-04-13 06:05:16', '2028-04-13 09:35:16'),
('c0d4940088deb4a80c43303fcd88b5f893272eca0a5cfe5ee9e7d6170c7a551bf48c61fe30f30bbf', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:54:10', '2022-08-28 02:54:10', '2022-08-28 08:24:10'),
('c11a90c6b085a6c09170ff2a170d6fc1c0223b2bb85b0dbb61ad8ea2d9113dd8d3ab72c69e8fafe8', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:22:38', '2022-07-25 07:22:38', '2027-07-25 11:52:38'),
('c151775879dcaee549ade304b65af11bd01170c92f0ec633f60a6461b895a60ca600dc8f9a5c57c8', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:26:16', '2022-11-12 01:26:16', '2022-11-12 05:56:17'),
('c177761a6cc848ef52b7fbddc6ba4098445cbd75701f379e90b844ecb5aa358a668f7af53918ea0e', 1, 1, 'personalToken', '[]', 1, '2022-07-02 16:03:53', '2022-07-02 16:03:53', '2022-07-02 21:33:53'),
('c17b5d3bbda327c0b8b17be8cba7b0e21d718df10192cf11e7cf71c10e7c179e5c13af256af8f356', 1, 1, 'personalToken', '[]', 0, '2022-12-15 05:13:25', '2022-12-15 05:13:25', '2022-12-15 09:43:25'),
('c17fead7086b6a37dc993b199221c3aed6aebaad2b59ed5d5e840b57cf1f3424c799d8aec81518c7', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:24:58', '2023-01-20 11:24:58', '2023-01-20 15:54:58'),
('c18a6bea4297a8ed4bdf86736da077816936a1a6e1075a1f09bc1d941e32ebde17a73a2b8d730031', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:11:26', '2023-09-27 13:11:26', '2023-09-27 17:41:26'),
('c18b63fa4eecbc5afa48d3bd1d7a089fbf9ad53b8250c43760ef69cb6c30201f0fe8a4710cb86d72', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:20:42', '2023-09-27 12:20:42', '2023-09-27 16:50:42'),
('c1c98d4b17a63c07232fb1a86a8eebb7cd5f83a1caa64ceab656c950d38353cb428c29a0a783ea86', 1, 1, 'personalToken', '[]', 1, '2022-11-30 03:55:52', '2022-11-30 03:55:52', '2022-11-30 08:25:52'),
('c1ff2f054d12aad059595a8b954bb7d88ebdd184c93760610cec19522cc664f208a61b160296a536', 1, 1, 'personalToken', '[]', 1, '2022-12-26 07:00:41', '2022-12-26 07:00:41', '2022-12-26 11:30:41'),
('c23280d1cf030b475bf70f48a648542c9bb21bb61ca225531a6ae278eb123e46fe4bcb348a4dece0', 1, 1, 'personalToken', '[]', 1, '2023-04-11 16:02:11', '2023-04-11 16:02:11', '2023-04-11 20:32:11'),
('c2588f2c9cda7d07e042848c5a0e53a29ca03178ff1b6c16c9c5828f1bf1aed3e13596895a564fd7', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:46:03', '2022-10-22 14:46:03', '2027-10-22 18:16:03'),
('c28c7ec31d8bfab5527b91d310752a0b2f7f21eb7629dc700e6e40b863b0618a8afe3141a90580e3', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:22:51', '2022-10-14 13:22:51', '2027-10-14 16:52:51'),
('c293a57f0168e2c4dc469526355c0c98bb6a3f689268727b36dc8e0049ffd55a0dc5ebcd32ac89fa', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:15:46', '2023-09-27 13:15:46', '2023-09-27 17:45:46'),
('c2b5e8f0475c0c833686ef0eb949056ea62ff147258adf75365c659bb20244413ecbc6508fa07a80', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:21:53', '2022-11-15 05:21:53', '2022-11-15 09:51:53'),
('c2bf4e958d89ab589f4b34bc75dadd9f72dcdb3a75e8b790d62ec4508ade9b3730c065e791b3e6e7', 1, 1, 'personalToken', '[]', 0, '2023-03-17 01:53:25', '2023-03-17 01:53:25', '2023-03-17 06:23:25'),
('c2cf7e1636ba865ec76d81b2b6f3f356517e79faa97924d3837dfcd562b49ff3ca3d2296e2cf3124', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:10:10', '2022-11-15 05:10:10', '2022-11-15 09:40:10'),
('c2d6d4412a19c97b70247ab3b618f08ee7cb34c178705a0eab6e540e7b4d210f04650a76d70df836', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:51:39', '2023-08-12 08:51:39', '2023-08-12 13:21:40'),
('c2e612ab49046117e2ececb523a99d1519b42d5c8fe73831762b752dbe7ea0e4f5aa0907f3314fd2', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:51:07', '2023-04-11 15:51:07', '2023-04-11 20:21:07'),
('c2f6c8520e761c39b15a73bbe9d0694d3833a80e91b6e075302eb9abc4276529f274c69e648a4a5e', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:02:37', '2022-07-12 09:02:37', '2022-07-12 14:32:38'),
('c31e8b4709a9139b3f7b5893047f2ee270200a438bed9dadc2db9beedd08be7a2466bd17b02b0b88', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:07:30', '2022-08-03 06:07:30', '2027-08-03 10:37:30'),
('c35f6986766e65f0922c2d52300e3ea5b5f68be209121bb487bb26b965301f757428f33cead9e88e', 1, 1, 'personalToken', '[]', 0, '2022-06-25 10:00:29', '2022-06-25 10:00:29', '2022-06-25 15:30:29'),
('c36c26b5f892ff9db63dd1a8d5959bacbbc66a1b3b8f7576f4c2747896bb7d4e2ae9d4fbcd3d323b', 1, 1, 'personalToken', '[]', 0, '2023-09-27 14:01:30', '2023-09-27 14:01:30', '2023-09-27 18:31:30'),
('c3737adf34957221b8341b44fcc48e8cc3615c29c697bc32ecd574c328dc401202c76eb7bf4bb503', 1, 1, 'personalToken', '[]', 1, '2023-04-24 10:32:37', '2023-04-24 10:32:37', '2023-04-24 15:02:37'),
('c387a2f7897763c6b4a222f3cac29fcf39605bece5cd980d5dc8c86214f48eeb99109b036b8c5762', 1, 1, 'personalToken', '[]', 1, '2022-11-28 17:14:13', '2022-11-28 17:14:13', '2027-11-28 20:44:13'),
('c3b5b0508307545e2ab6f1b360cd73f201959f8f01cba506947d6b88e1f052f422959bbb9a01d426', 1, 1, 'personalToken', '[]', 0, '2023-01-11 07:52:08', '2023-01-11 07:52:08', '2028-01-11 11:22:08'),
('c3ddd8837ff00ff1331057a3a90250cdc18e1691b5bc8e71bc5f283d5ab7a84a5aa905c1d09355cf', 1, 1, 'personalToken', '[]', 1, '2022-12-14 15:22:09', '2022-12-14 15:22:09', '2027-12-14 18:52:09'),
('c3f5688029cc078d8dfb3455b70c49dbac186372551d5a84476534d1814cd7467d6f241560ab21f9', 1, 1, 'personalToken', '[]', 0, '2022-12-15 16:49:09', '2022-12-15 16:49:09', '2027-12-15 20:19:09'),
('c3f63eb8ffe854928e1b14eba357467b2151f9f313d002dd42dfdbcdacac4735e01b166e5d214b47', 1, 1, 'personalToken', '[]', 0, '2022-07-28 11:36:11', '2022-07-28 11:36:11', '2027-07-28 16:06:11'),
('c402f2a5a69ce5be4367074e45b8921d118d0706d163ae2ee45344fbac5a8ee963fa193433af7478', 1, 1, 'personalToken', '[]', 0, '2022-08-05 14:33:14', '2022-08-05 14:33:14', '2022-08-05 20:03:14'),
('c42eb9cef1f2de473da4dd3c7b2b2baa719f32e1a3021454d1a20051980f78f69416d9d7c04217fe', 1, 1, 'personalToken', '[]', 0, '2022-10-31 05:24:28', '2022-10-31 05:24:28', '2027-10-31 08:54:28'),
('c458621cbb8f17fd13e1de94eb6ac84a67118e7502bccf5b132460ab68f37fa2976ede755619ddca', 1, 1, 'personalToken', '[]', 0, '2023-04-29 10:12:12', '2023-04-29 10:12:12', '2023-04-29 14:42:12'),
('c46e1a651dbfebdf1db35d99840a1a84d4466f5f01595cbc6a262ce4f23e623a3550f96b9cb05a23', 1, 1, 'personalToken', '[]', 1, '2022-11-12 02:35:27', '2022-11-12 02:35:27', '2027-11-12 06:05:27'),
('c477ffc5115198f8cad3e1cb173dc860be2fc5fe2e6d8ea9634228369bbb848a24e412c70c134ce8', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:59:09', '2022-07-02 12:59:09', '2022-07-02 18:29:09'),
('c4964e36cb5e3214451f4c859c925c342073a2ffcccb66dd2297a055c4da1559ca55e6df4e1e8fc1', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:40:33', '2022-12-07 06:40:33', '2022-12-07 11:10:33'),
('c4993bbcade10f00a75220944bc3d573541d0b5a05940c3d7762cccc7af4b6b30bc3733777aadddd', 1, 1, 'personalToken', '[]', 1, '2022-07-15 03:06:53', '2022-07-15 03:06:53', '2022-07-15 08:36:53'),
('c499ff3f83243bac80f99cf0a4ff9c2c8b201430e1dab8d2d84ad2fc6052ccc381bf9550390ee120', 1, 1, 'personalToken', '[]', 0, '2023-02-06 11:46:46', '2023-02-06 11:46:46', '2023-02-06 16:16:46'),
('c4a9a93222e1f257eb5392d67bcfd1358eab51caf4bcc199397b53a224fe6898cddc70e34fa18406', 1, 1, 'personalToken', '[]', 0, '2023-06-25 07:30:15', '2023-06-25 07:30:15', '2023-06-25 12:00:15'),
('c4ff5bc0606a9ac0bc25eda8596b751530fd4a02b620b1c46305d24949b827e8818515154de6c98a', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:08:56', '2023-09-27 13:08:56', '2023-09-27 17:38:56'),
('c50a263c10a9e0e02d1405cff25f2f448e9f47956b31ffd780d7a229b5a25a1a080ba5044d8d081e', 1, 1, 'personalToken', '[]', 0, '2023-05-08 01:53:38', '2023-05-08 01:53:38', '2028-05-08 05:23:38'),
('c50bf4a0836778e4e512dceef42fbff9916c1cd0eaab029e4317bbace7ef5acee7d5f58e4e6f301a', 1, 1, 'personalToken', '[]', 0, '2023-09-25 03:48:56', '2023-09-25 03:48:56', '2028-09-25 07:18:56'),
('c51db919fce6e47b34568b7d1336830d472dd60d25a0a1effd202f17b164dc0212c7ccab0fca1fd3', 1, 1, 'personalToken', '[]', 0, '2023-04-11 14:55:29', '2023-04-11 14:55:29', '2023-04-11 19:25:29'),
('c533a121cd4a062e0bfbae30c94f12dd166d000892485cc75a52e3fdd128589797615bb1ea878ba5', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:09:36', '2023-08-12 08:09:36', '2023-08-12 12:39:36'),
('c549bee088823e78b7782a3c8d66e0e896b2bc854fe0c477e586d06da3b3a20271276f23a705f4c6', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:54:17', '2023-06-30 09:54:17', '2023-06-30 14:24:18'),
('c55e58ee1378502d10b94e1063a7eacc8904eb77f51f1affdd170fc9a8aec9533f90b28d94cf83b9', 1, 1, 'personalToken', '[]', 1, '2023-03-05 05:53:49', '2023-03-05 05:53:49', '2028-03-05 09:23:50'),
('c560c5267c0b5cc15eb2672e0e9cccfe02d0062d6b53d3ed4f6dded149bbd9ebe4582d34902bae5e', 1, 1, 'personalToken', '[]', 0, '2023-12-12 20:58:30', '2023-12-12 20:58:30', '2028-12-13 00:28:30'),
('c565d8e912e03cef4172b7ec14a43d267cf55844d64f25fc016aea84d0cba871ca0ec121aa5984bc', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:45:33', '2023-04-11 08:45:33', '2023-04-11 13:15:33'),
('c5a670131a7c505122d1a58824d10539734e8456585b23b53f297662f819a51f9cdf2910dfc57d9d', 1, 1, 'personalToken', '[]', 0, '2022-08-24 03:25:39', '2022-08-24 03:25:39', '2022-08-24 08:55:39'),
('c5a8018bbf6366d6f2a154775fff16feae628b0fdbb2be7a06ea81fe43e3d0bc636270747938cf99', 1, 1, 'personalToken', '[]', 0, '2023-06-15 04:03:17', '2023-06-15 04:03:17', '2023-06-15 08:33:17'),
('c5abf98753290f84c5ea0e6f696654b368dba5c55af4ad116604f5925dd0745208f8fb8bd6cfd0a6', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:06:03', '2022-11-10 04:06:03', '2027-11-10 07:36:03'),
('c5e549079a57426a3b53bbc24ae99f0a6575443fe922670f9a74b07982b8b8ec28de14e93248cc8b', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:46:25', '2023-08-08 08:46:25', '2023-08-08 13:16:25'),
('c5fa5120af8882eb0707c0200fbb2994cd4f0084b47e424059da04cb2fc6f51aa562ec5744eaf2dd', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:52:04', '2023-07-05 13:52:04', '2023-07-05 18:22:04'),
('c63ec7cfcb65f7820f8c0e26f7f1a90099d457715982f314076a5e72a507133463a24318cc9e8055', 1, 1, 'personalToken', '[]', 0, '2023-05-28 07:21:37', '2023-05-28 07:21:37', '2028-05-28 10:51:38'),
('c663043889c72ba72cd75335b65f3a52ea970f00980a2aee8ddaab2b97ad23705ecc43cccb5c0f87', 1, 1, 'personalToken', '[]', 1, '2022-07-25 03:51:31', '2022-07-25 03:51:31', '2022-07-25 09:21:31'),
('c6a1c2241c061efb08c4f15b30259f1d97ab200c4fd61c0576c31960cc6a6ac777c63f32f1f0e8a2', 1, 1, 'personalToken', '[]', 1, '2022-12-26 16:27:14', '2022-12-26 16:27:14', '2027-12-26 19:57:14'),
('c6b4080a3cc2affa5cd93ae5c172e95bb08af85b41cbdc5090df9ffa01cc044a279d9339265f1a1c', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:39:49', '2022-07-06 03:39:49', '2022-07-06 09:09:49'),
('c6b744f0e15c0f4af95a7e15be2866170572c82c83d4f958ec86382a38db88eb17b074a2d344ced3', 1, 1, 'personalToken', '[]', 1, '2023-04-11 15:54:55', '2023-04-11 15:54:55', '2023-04-11 20:24:55'),
('c6c97c4e475c6f69162a39d0b897aa1ff1f7993b422d89a07d75af5b9fe8dd5779bb78a9f6599dfc', 1, 1, 'personalToken', '[]', 0, '2022-12-13 03:02:38', '2022-12-13 03:02:38', '2022-12-13 07:32:38'),
('c6e1005cbbb80179ac680954a1a2f7b7011932fe4c795b7de29245ea634dfe1b23388611fa11a114', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:47:39', '2022-08-27 01:47:39', '2022-08-27 07:17:39'),
('c6ee5b97f8118459815791cfcbed9b4ee309950f868311e8e4160f1c537d1887ad093f2c61af0e82', 1, 1, 'personalToken', '[]', 0, '2022-08-18 15:22:29', '2022-08-18 15:22:29', '2022-08-18 20:52:29'),
('c6f7f914c5fb90ca4c00b4889dbe2ee490fde04149c523317532b5da4dc87aafce7beb493cb7dec3', 1, 1, 'personalToken', '[]', 1, '2022-10-22 16:04:33', '2022-10-22 16:04:33', '2027-10-22 19:34:33'),
('c6f81b0d1763a0d1b6ba3eff7c8108148bf5fece56699e95cdc59d07623344da23c56a3631ad6a14', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:33:34', '2023-09-27 13:33:34', '2023-09-27 18:03:34'),
('c729f77d72c697d7de75f8ae025ba8d17a8acaa8c1f74276d71ef16d0e1024457f9e47541f22156e', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:09:12', '2022-07-12 09:09:12', '2022-07-12 14:39:12'),
('c7351c983571b5022debf64ebcabdbae413965449346c9a2a8a71164074a7ff8f58cda4ec8a939dc', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:41:50', '2023-08-12 08:41:50', '2023-08-12 13:11:50'),
('c75b057e901defed758425f402a5c1e15a83a15456f563460f7e4b70202e16c70fb96c8eedb0712b', 1, 1, 'personalToken', '[]', 1, '2022-12-26 07:00:00', '2022-12-26 07:00:00', '2022-12-26 11:30:00'),
('c75ff246e04cdaf752c1aed7303b615f64d6e372a82059725f898a1a329e6177a9ec70f15aef1daf', 1, 1, 'personalToken', '[]', 0, '2023-02-03 13:00:45', '2023-02-03 13:00:45', '2023-02-03 17:30:45'),
('c76c5f247ddfcfad4bb427125325672e8f04722b469545b6bfbef46b0c690d3cdd9367147867283b', 1, 1, 'personalToken', '[]', 1, '2022-08-03 13:21:45', '2022-08-03 13:21:45', '2027-08-03 17:51:45'),
('c76e4a515ebc0285bd49dbc88fe2cbf99ebf1b0b3847612205ebf68e952b9be84aa9f4b98910e1b7', 1, 1, 'personalToken', '[]', 0, '2022-09-25 18:32:53', '2022-09-25 18:32:53', '2027-09-25 22:02:53'),
('c773f78ced63d2c34c3aa201fe3d4d18c09810fdb76e6d21b56858d2cf7aab9c863b8a869d48b06e', 1, 1, 'personalToken', '[]', 1, '2023-04-07 04:25:59', '2023-04-07 04:25:59', '2028-04-07 07:55:59'),
('c7801a1bf2c3c8d57fca3d45914ac08ea6ca5fa02898ca353e97f91c49380d0f66ed67111781e12b', 1, 1, 'personalToken', '[]', 0, '2023-03-01 10:10:13', '2023-03-01 10:10:13', '2028-03-01 13:40:13'),
('c78a2cadf21aa68a6909ae65d8d4a5a8297a5bfb0fe54736a238cfab71e1f684e9f1cde82cf7ddf0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:46:11', '2022-12-26 06:46:11', '2022-12-26 11:16:11'),
('c78c5604088946dc5afddfc1c54a0181cc416526f7a02a351bcd7942a4d39fe7206d20923c4d7a54', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:21:45', '2022-08-02 06:21:45', '2027-08-02 10:51:45'),
('c7bf43f863cf8b7dec954d5df44f4525db2873032573954f3ee53a3e26621aaca0e8ec5541a558e7', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:14:48', '2022-07-06 07:14:48', '2022-07-06 12:44:48'),
('c7dc5b80e1a99c5cda61810921f1d93085180ace3710da73682807eba858d874261757f8b5066d2b', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:40:40', '2023-06-21 04:40:40', '2023-06-21 09:10:40'),
('c7f6b2da0e1829b25b4619da2820324668c740b98dd2eb8387c50ac7d230ccc5b56867ff44e7a57f', 1, 1, 'personalToken', '[]', 0, '2023-08-01 05:01:14', '2023-08-01 05:01:14', '2028-08-01 08:31:14'),
('c807adf61ff8a5cb95553fbad1ee5d11a3a8f4f035f4edf6d50ce41e91c25f6b7d64198c123f40fe', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:39:38', '2023-02-05 17:39:38', '2023-02-05 22:09:38'),
('c834102db3e5da84642d8c2efc1674388e75a1c566de56712a95671fbe10777825cf75aa97b3b831', 1, 1, 'personalToken', '[]', 1, '2023-04-13 02:48:55', '2023-04-13 02:48:55', '2023-04-13 07:18:55'),
('c84d7c469ad419a54f420e9a244ab8eeb8e3c6367afdde3032e4be5ceda807002199bf7762c3d356', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:07:24', '2022-12-16 05:07:24', '2022-12-16 09:37:24'),
('c84e177deee40defb3ae229695e1da11ff28b536c30a1d296f369157eebd00f96842c9b55b95544f', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:13:50', '2023-08-07 08:13:50', '2023-08-07 12:43:50'),
('c86d5e5ed0db034b864025ab2dea867323daab2cdd48981f83d5bdf7361330aae9bfef243b46fac7', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:01:18', '2022-10-24 03:01:18', '2027-10-24 06:31:18'),
('c8a05549730f6c10ab6b9db7d08e460c9d0dabc0b721ca32432a1cb234f6ceab4a68cb1b07d56486', 1, 1, 'personalToken', '[]', 0, '2023-03-09 02:54:18', '2023-03-09 02:54:18', '2028-03-09 06:24:18'),
('c8a1925eae1ad707818c284f159564b8f01945f9a9599f5db58befdab7128b129c4d5d81bdd2679c', 1, 1, 'personalToken', '[]', 1, '2023-02-01 11:02:03', '2023-02-01 11:02:03', '2028-02-01 14:32:03'),
('c8a2325c01842bdc797e488f15d4513b41f626c48b3356982035374486ab13df5bbaf1be943e2a5b', 1, 1, 'personalToken', '[]', 0, '2023-12-15 07:25:16', '2023-12-15 07:25:16', '2028-12-15 10:55:16'),
('c8a8c5fc86033cc2a30978356cd9b9ca7b4bc263158a82bf368ae7709c2b7bf537d074a8e2a834cc', 1, 1, 'personalToken', '[]', 0, '2022-09-30 05:40:25', '2022-09-30 05:40:25', '2027-09-30 09:10:25'),
('c8b89317dbaf00e98e508ecbb3ca9f672b74002adbac32845f9c3f4e8cedafe92bcf7b3801b7a88b', 1, 1, 'personalToken', '[]', 0, '2023-06-16 04:52:35', '2023-06-16 04:52:35', '2023-06-16 09:22:35'),
('c8c533af0b8647d9a93d91a4f5750416f8d51d23f1b27fac56edd792d29a5210d213aa918bc95ef3', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:39:31', '2022-07-12 04:39:31', '2022-07-12 10:09:31'),
('c8f6bf3e2c85ac593f82ba35be6c946b7fc97799bbc3f5c8b084f52855195f709369e1c6fea5d768', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:46:55', '2023-07-05 13:46:55', '2023-07-05 18:16:55'),
('c91a35f018d5548be0b99c3a174c3dfbf345eb2b63a7feb79d8eb0f9d21fa3df92dab5cf3ff3f3b7', 1, 1, 'personalToken', '[]', 1, '2022-07-25 03:52:33', '2022-07-25 03:52:33', '2022-07-25 09:22:33'),
('c931dd92dffd18609bbc703c269b4d8c8a29eef2afc86d46418d7e350aa64741e1c943f8ab97701f', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:27:29', '2022-07-25 07:27:29', '2027-07-25 11:57:29'),
('c935b22abc0f3fe510e234d3469f48823775431a3bc2c04c3c519f42d887a84e6b72f89caa1badba', 1, 1, 'personalToken', '[]', 1, '2023-04-11 15:57:51', '2023-04-11 15:57:51', '2023-04-11 20:27:51'),
('c9380ea86c7098ecc5120d2c531eb3577256653a89bc492ecc7237227d4b00ca13878f3404fac02a', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:15:58', '2022-11-15 05:15:58', '2022-11-15 09:45:58'),
('c94eba0d0e030423ad401a3c800a217c6a01fb4b785aa6926f08558c280dd6243d81a3996b3a2a64', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:47:22', '2023-04-11 17:47:22', '2023-04-11 22:17:22'),
('c9990550ffd210975203a9f30ee6930342fb5645485331d991eaa7da74f32e982a296069af26907b', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:23:40', '2022-10-14 13:23:40', '2027-10-14 16:53:40'),
('c99d856cfe597599f029c9ee7802062c9e3e11845fb46a969c2266602bdb7eef0d77bc5563c79bc0', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:09:19', '2022-12-16 05:09:19', '2022-12-16 09:39:19'),
('c9f55e291444caad057ff9659a454dd46f5ef4e5ab5d682747470fb721b6c2f7e8478f5740607f27', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:27:01', '2023-02-03 15:27:01', '2023-02-03 19:57:01'),
('c9f975ff178c8b1862a527a799924fea2c4e9dfabf618b92b5431ab311b25b6d87e3fa61fe90c2c6', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:52:38', '2023-03-04 11:52:38', '2023-03-04 16:22:38'),
('ca2cf398ad696ae62bc52f29e3904602c08e6a331120ebcafcbd98ee754319494a32458bee51b086', 1, 1, 'personalToken', '[]', 0, '2022-12-15 07:10:35', '2022-12-15 07:10:35', '2022-12-15 11:40:35'),
('ca3d88360b84121541340301c869b5d991b77b674f9dcab998a530592b84e22014e6999c03fc3330', 1, 1, 'personalToken', '[]', 0, '2023-04-23 12:37:51', '2023-04-23 12:37:51', '2028-04-23 16:07:51'),
('ca4293ede575d930a07baa609e3c46ee4cc0c1e01908fd04ebf8a4e692a330f9ce3ecda3c04b00d4', 1, 1, 'personalToken', '[]', 0, '2023-04-06 13:31:17', '2023-04-06 13:31:17', '2028-04-06 17:01:17'),
('ca684bc955b754c97a806b952adf3ad298a3ae241902d5607cf9b5954ae823d821900688af562a7a', 1, 1, 'personalToken', '[]', 1, '2023-04-23 14:40:21', '2023-04-23 14:40:21', '2023-04-23 19:10:21'),
('ca7035addab56577e4a195792024fc4237e6ac505fe893b8a2d534bf870c8def378032b08dcfe944', 26, 1, 'personalToken', '[]', 1, '2023-03-04 09:53:52', '2023-03-04 09:53:52', '2028-03-04 13:23:52'),
('ca79f7d395590a58795e53b9b97edfffe9b47fe1b26fad35810522dc803de98c2603e7a78a9c82ed', 1, 1, 'personalToken', '[]', 0, '2023-04-09 15:50:36', '2023-04-09 15:50:36', '2023-04-09 20:20:36'),
('ca83415326c0d29e168d4a6d26bd7b0918e09038c57cdc1e133daa6b29472c9e0e41e2f6c371cba0', 1, 1, 'personalToken', '[]', 0, '2022-12-14 05:36:18', '2022-12-14 05:36:18', '2022-12-14 10:06:19'),
('caa8d9ae1b61b4e7016742ee57087367304b184c5c030c51c54f3fe8455c3d7bf49efc020de2ad48', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:20:40', '2022-07-12 05:20:40', '2022-07-12 10:50:40'),
('caddb59092f26de68109f0600daab0cf45a4e1cfd42e58a746ba07fd744e8ce5f7c25515ec56ca33', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:20:08', '2022-08-01 16:20:08', '2022-08-01 21:50:08'),
('cb075b12fc8056df92a047c3943e0cd957210c9cd5df42937e9baf7b76824d12bfc94b32ab8745f4', 1, 1, 'personalToken', '[]', 1, '2023-09-12 03:54:24', '2023-09-12 03:54:24', '2028-09-12 07:24:24'),
('cb1c37d4c037417763e347593d99957b58525e877d323ac5fc36db0571fdc5d8d1ccb76eacea8df4', 1, 1, 'personalToken', '[]', 1, '2023-06-04 04:52:15', '2023-06-04 04:52:15', '2023-06-04 09:22:15'),
('cb23eb9623d9fdd633c753af9ca3066e9dcbfa3cabf49b8725a6086724bec6e846d4fa90b9b9a78b', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:56:00', '2022-12-08 05:56:00', '2027-12-08 09:26:00'),
('cb37a3f04da65516f85fdd5a288a684810b74cc9cbf0bbbef0829656c8078fddd084084d168c0cf7', 1, 1, 'personalToken', '[]', 0, '2022-12-26 04:18:57', '2022-12-26 04:18:57', '2022-12-26 08:48:57'),
('cb4ef9b63eb7f99aa43d786897911b1abc12109bf418f26c44a5471dd72b8fdeca1c5b968bba6289', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:50:30', '2023-08-08 08:50:30', '2023-08-08 13:20:30'),
('cb7bc45626ba2f62e9bcc48d3c70b050887ea0698bbd870908f8278873cf724d3eac6ce03ed02f98', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:27:55', '2022-07-12 08:27:55', '2022-07-12 13:57:55'),
('cbc042ac71c138a88c798bfc895c167b6690abd8fccea9fcfc889ef958c49f1ebcfd47a707425f58', 1, 1, 'personalToken', '[]', 1, '2022-08-03 07:26:33', '2022-08-03 07:26:33', '2022-08-03 12:56:33'),
('cbd7c43d5cee6ab4ef3bb1cca5aead8a2ebb1f3fa6eeb6a853d6cc1b1764719f9e370f8fc11fd148', 1, 1, 'personalToken', '[]', 0, '2022-07-03 05:50:35', '2022-07-03 05:50:35', '2022-07-03 11:20:35'),
('cc004c97688dfa5d53738e2b7fb83f54b1d5c112a60614dc01ec3b92328600148f9734c858b76669', 1, 1, 'personalToken', '[]', 0, '2023-12-16 11:21:33', '2023-12-16 11:21:33', '2028-12-16 14:51:33'),
('cc07a40d0739a99416d116f41158e050ad391be23ecf1c1bc046d2d7157ecacbe939aa49727e565d', 1, 1, 'personalToken', '[]', 0, '2023-08-09 01:29:25', '2023-08-09 01:29:25', '2023-08-09 05:59:25'),
('cc1623ddf04e0834fedf31a17fd1f702ecbfaa86a9960adbb7c5308c07ad4fc8f9c7251b618837e5', 1, 1, 'personalToken', '[]', 1, '2022-08-02 15:53:27', '2022-08-02 15:53:27', '2022-08-02 21:23:27'),
('cc28d9df0f237607cfd7a4d9c3b3bf0d3ad8fcaa7724c71bb331640424ecccbafeb24a87f04f066c', 1, 1, 'personalToken', '[]', 0, '2023-04-11 07:59:10', '2023-04-11 07:59:10', '2023-04-11 12:29:10'),
('cc80bdea7ce898ed02417871f4e2f91d0f200c5fd0ca43bf39704afe63dc2c01c1f5acdf2cbfcf88', 1, 1, 'personalToken', '[]', 0, '2023-03-13 09:42:26', '2023-03-13 09:42:26', '2023-03-13 14:12:26'),
('cc86a029315feaee2866da580eb5aa740ad3c3da235b18b7d2efac33c717b7b6d22ecee72f1d4c4a', 1, 1, 'personalToken', '[]', 0, '2023-05-16 05:07:11', '2023-05-16 05:07:11', '2023-05-16 09:37:11'),
('cc8902da6fcd860bf0cdad918145051cb5a42d1d244c5f694bb7361d542b9df84cb15f7fb3992961', 1, 1, 'personalToken', '[]', 0, '2023-04-11 14:57:48', '2023-04-11 14:57:48', '2023-04-11 19:27:48'),
('cc912e695b6c863f6d99949e1ad347659d5d3f59e38308a86bd9cfaec1c1d57d662cc9348a89e294', 1, 1, 'personalToken', '[]', 0, '2023-02-03 13:01:19', '2023-02-03 13:01:19', '2023-02-03 17:31:19'),
('ccab1b901b02112168916885dbb2082e15f09eb785eb1df167bf80a7b827397e85f1d92aca568cf7', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:46:20', '2022-12-08 05:46:20', '2027-12-08 09:16:20'),
('ccade863f728fe6181f9ee611fcab1b2bb3e1fe87cff5bffcd3b15c67c0d5e8cf5ea75883cf0d311', 1, 1, 'personalToken', '[]', 0, '2022-11-12 04:48:40', '2022-11-12 04:48:40', '2027-11-12 08:18:40'),
('ccc0412f7b5a03d4117f91eb290b0f666fd619f739c3c343454c8a794df9238698aceb20fca218d1', 1, 1, 'personalToken', '[]', 1, '2023-05-16 12:36:40', '2023-05-16 12:36:40', '2023-05-16 17:06:40'),
('ccc53b6ee2768c154a6029c51355c5e18341f22634b72e21508b5975255be8fd883172dffa10dd43', 1, 1, 'personalToken', '[]', 1, '2022-10-15 11:44:58', '2022-10-15 11:44:58', '2022-10-15 16:14:58'),
('ccc92555dbae6acf993caf0a9ff60f31748b177c541e1ea114a37bdb849965c91891b322e4dafaea', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:00:35', '2023-06-30 10:00:35', '2023-06-30 14:30:35'),
('cce82bf68cd591af241e9b2bd2aa1dbe992bcd1a882831d1b0f0447c98f37c363388affd3f25b738', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:41:31', '2023-04-11 17:41:31', '2023-04-11 22:11:31'),
('cd0020e47f12333ede336c9b220ae1ab91422d53900196707c765f57ce9a3753f5e4aaf0e10e3ae9', 1, 1, 'personalToken', '[]', 1, '2022-09-14 07:37:08', '2022-09-14 07:37:08', '2027-09-14 12:07:08'),
('cd0618b815b8dee573ba4f7cfefd0423e4b86c5de1806a0abac07c03046bdb09cd9a4d463860ed9b', 1, 1, 'personalToken', '[]', 1, '2023-05-01 05:12:51', '2023-05-01 05:12:51', '2028-05-01 08:42:51'),
('cd26382cb3bab37cbe80c53164d2c61c36f86c72e036fc93e9c83b03cdbe8f107a00c7a03a8e8d83', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:53:16', '2022-07-06 04:53:16', '2022-07-06 10:23:16'),
('cd2684b3a32e28f8d7f0ede391c05bfefe2c9cbcdb16dcf66291672b6be1e1502ffb00ecc9bfcab5', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:32:26', '2023-08-14 07:32:26', '2023-08-14 12:02:26'),
('cd30069a6c955d176f818f28e8555307b5c8f6b0d324e410015c968a3971d7c7e517706bf650d4b2', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:16:15', '2023-09-27 13:16:15', '2023-09-27 17:46:15'),
('cd539ae2182add10cddea4714312247b97a913430b888d6220d6802340e0f8e0d8161d018c52ae52', 34, 1, 'personalToken', '[]', 1, '2023-06-25 07:03:16', '2023-06-25 07:03:16', '2028-06-25 10:33:16'),
('cd59802cf8e1cdfe62d52314a2460f20a43e7c641477258c85b21ca1c798d45163df6f298fb11f9f', 1, 1, 'personalToken', '[]', 0, '2023-07-20 10:12:39', '2023-07-20 10:12:39', '2028-07-20 13:42:39'),
('cd727b76991a4d47b382d6c1319f1d2c759223059f4e9873829d90d467a1bb2b4bea16d43302f4c8', 1, 1, 'personalToken', '[]', 0, '2022-08-15 08:05:46', '2022-08-15 08:05:46', '2022-08-15 13:35:46'),
('cd9551cc1e32e77cdcfd2d315d5127067490795a720539d9c56805f6207aef6a943b3a58b94d266b', 1, 1, 'personalToken', '[]', 0, '2022-10-15 12:06:10', '2022-10-15 12:06:10', '2022-10-15 16:36:10'),
('cdacff70310104a0b40b5e84f11a4f5c8a43811db2fc360b7a10886258a110014336d8ddcfd66802', 1, 1, 'personalToken', '[]', 0, '2022-08-25 01:34:31', '2022-08-25 01:34:31', '2022-08-25 07:04:31'),
('cdd23fe7bd5b6bd286abcd3a43690f56109fb4edc300a183dbf6d9f6967fd00fad5770cc2bb0e895', 1, 1, 'personalToken', '[]', 0, '2023-05-01 10:38:30', '2023-05-01 10:38:30', '2028-05-01 14:08:30'),
('ce55524e53087adae26ca0517f2f7e655ef2e8aa933ad699d964d711977e1b5d7ce3cbf5897b8230', 1, 1, 'personalToken', '[]', 0, '2022-12-15 07:11:18', '2022-12-15 07:11:18', '2027-12-15 10:41:19'),
('ce55a92295da1c560d35f26ec5ab81cab03befb019a87c651bba1ebb092b186dc1b2a8f828660135', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:50:14', '2022-12-06 07:50:14', '2022-12-06 12:20:14'),
('ce66040cb41a6c3926beebbcaaaca26a0eb013e16509f2d1cb54e6101b3a3b604b135fb155b248ff', 1, 1, 'personalToken', '[]', 0, '2023-07-08 09:26:40', '2023-07-08 09:26:40', '2028-07-08 12:56:40'),
('ce6adf32ae01c29378d08c37db858f44ff8376c12a60ad3beeffd88274c4c36680c0175ff146d073', 1, 1, 'personalToken', '[]', 1, '2022-08-06 16:02:20', '2022-08-06 16:02:20', '2027-08-06 20:32:20'),
('ce97c095e444d3a78bb7fe30187604697a0eaa9155b0d552e4e3590b409a43d200bbaa7e4cc02660', 1, 1, 'personalToken', '[]', 1, '2022-12-26 10:21:19', '2022-12-26 10:21:19', '2022-12-26 14:51:19'),
('cec61d5278b7dca9ddf7d48d6c0c74c57747f71eccde2939d6279011081cbb1e059f5f1c49e5dc96', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:11:49', '2022-12-02 09:11:49', '2022-12-02 13:41:49'),
('cf11e9127bf29c6c52b4221d1993e282017c5a9539f7cc2c09b56c5c00a63638038da98207dea255', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:52:36', '2022-12-26 06:52:36', '2022-12-26 11:22:36'),
('cf2016886df86159d009d6435ba51e757f7eee0f976c1a0a2a868853956be7bc86b4ea2439a83bbc', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:23:27', '2022-09-28 06:23:27', '2027-09-28 09:53:27'),
('cf23bd809bc8cd77fdaca25b9619ddca5977c02a844af308b54b81685e87637adf724856edd78dd9', 1, 1, 'personalToken', '[]', 1, '2022-11-01 13:55:28', '2022-11-01 13:55:28', '2022-11-01 18:25:28'),
('cf29387ffe9a878b144308be20bf26973cb6af13fbb7ef948dbfd496bd7cf7b8cfee289d299404df', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:34:28', '2022-12-07 09:34:28', '2022-12-07 14:04:28'),
('cf366ebd521ad89638ec7bb49489d65d33887d9d4a9b915225543cad096b622509bbbc0c4483c639', 1, 1, 'personalToken', '[]', 0, '2023-10-15 01:56:20', '2023-10-15 01:56:20', '2028-10-15 05:26:20'),
('cf80d3b9a6a95aba45e998c394fd7d75e45e201205fb92252c11cd75808cac9c53054d6adc1784ba', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:15:21', '2023-06-30 07:15:21', '2023-06-30 11:45:21'),
('cf89dd9c6b6d8e326fad8295c1a8daa4a13a1da9aea03d040525813980c43f1c369059b95712496a', 1, 1, 'personalToken', '[]', 0, '2023-03-26 18:02:56', '2023-03-26 18:02:56', '2028-03-26 21:32:56'),
('cfb69d346c891e7cb68de111e7093441a3f29c7d9b390863bd884e24d744af003c3a7501e9f8a06d', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:26:45', '2023-11-17 15:26:45', '2023-11-17 19:56:45'),
('cfb948a23a97382b8c689ab67a55ebcd02ea258abc1ec7ade6f2a394a72219d6c428e0ea49fe5fb0', 1, 1, 'personalToken', '[]', 1, '2022-11-22 16:34:34', '2022-11-22 16:34:34', '2022-11-22 21:04:34'),
('cfbc0f73f7e3357c6d7a9c5e4bdb386cc60dcf44e8f291a027ea6c916b9cac6b236768cfbd5c1129', 1, 1, 'personalToken', '[]', 1, '2023-06-14 10:11:51', '2023-06-14 10:11:51', '2023-06-14 14:41:51'),
('cfcb7d9b1e72fa3a1ab0e54511aa46a13b93f90ee9f8e7c67f69bf4fcb2262800bf6ed89f27ce4bf', 1, 1, 'personalToken', '[]', 1, '2023-06-10 16:09:36', '2023-06-10 16:09:36', '2023-06-10 20:39:36'),
('d055b6813abc658e8f00e901eea641e8c6ba89a9b03e79c34b7851f7da13d80b1c59c36903737dbe', 1, 1, 'personalToken', '[]', 0, '2022-12-07 09:35:54', '2022-12-07 09:35:54', '2022-12-07 14:05:54'),
('d06be9a85ff3047c0620947ad45f7432948ec2036a05c755d25d624e03011c7ec6cdb37465bb1ff2', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:48:08', '2023-08-08 07:48:08', '2023-08-08 12:18:08'),
('d06da35d940dc5aadf536bc70e86334ad9013ad20e46a429ba97cf5d91c2bfcb84e530f8bf2c770e', 1, 1, 'personalToken', '[]', 0, '2022-12-25 09:07:31', '2022-12-25 09:07:31', '2022-12-25 13:37:31'),
('d0f0c05b99fd396a8b91b8067dc10c5b549c923b6b17a5ba2e5714472ec9e848d4126f181a7ee69c', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:38:44', '2023-02-05 17:38:44', '2023-02-05 22:08:44'),
('d1188a52bc5e858099f6cf4567ea8a4749398d0169be66acf1ad56fb26680f459e73318a403c9e65', 1, 1, 'personalToken', '[]', 0, '2023-07-18 10:45:22', '2023-07-18 10:45:22', '2023-07-18 15:15:22'),
('d14b723a0ac071c00ad585047f4d20963f04232cb89b0f67a51e44838240cde37274b124d99678d9', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:57:55', '2022-12-26 02:57:55', '2022-12-26 07:27:55'),
('d155461a6a9492ac88dd0e20549ab1200c5cd63338cab744b3a668e94cbbd8ab249dcfc372dd5ef4', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:01:47', '2022-10-24 03:01:47', '2027-10-24 06:31:48'),
('d177f60915380a5a3e510538f6244795e2d6d3c32aac235a63aa165eb3ef41779bec26d72f39d02a', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:26:37', '2023-08-08 08:26:37', '2023-08-08 12:56:37'),
('d17ade0e79be494b2490ffd0df9a0189b271da3126d07955b1b232535d45f45f6eb3685211e10fde', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:38:08', '2023-02-05 17:38:08', '2023-02-05 22:08:08'),
('d18f5f632e402c28d165c023ab701cb35d48dd95f27d96ad98da178364becf7744562b4478227515', 1, 1, 'personalToken', '[]', 0, '2023-08-09 03:01:47', '2023-08-09 03:01:47', '2023-08-09 07:31:47'),
('d1946aa4c6f78638ed4b62efc151dc469bfa9867791f27e992d97222dc953e9dae9b588d240d1fe4', 1, 1, 'personalToken', '[]', 1, '2022-09-28 06:22:55', '2022-09-28 06:22:55', '2022-09-28 10:52:55'),
('d1a5f9ad9ab040e690a2238d914d98ec7ea9d10ceaa988c6af6437e976be4932f906d4590c1cf445', 1, 1, 'personalToken', '[]', 0, '2023-03-09 17:17:24', '2023-03-09 17:17:24', '2028-03-09 20:47:24'),
('d1a79df189943ba534358d280ebe823fa4285446acf5d1329a2cbcbff584825bd42c17e00966253f', 1, 1, 'personalToken', '[]', 0, '2022-09-27 06:15:59', '2022-09-27 06:15:59', '2022-09-27 10:45:59'),
('d1c88f7c7b02874684a77384ff27f47a69e62e60e9cf3f635138d484fe77986aa7ceefc37140e267', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:38:20', '2023-11-17 15:38:20', '2023-11-17 20:08:20'),
('d1eb5307cb8fc1a696c0601991b838a81080d501821c114f225132f93ac060e85c0c10efbdb296be', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:50:03', '2023-06-30 09:50:03', '2023-06-30 14:20:03'),
('d2168b2a02ac5f2bc93c67760c19289183d817eedfbce29e6418301547a49428efc13f354a8373a2', 1, 1, 'personalToken', '[]', 0, '2023-11-04 02:04:44', '2023-11-04 02:04:44', '2023-11-04 06:34:44'),
('d218ae221f06235f448ea4616ec9146a6e7a9c4be74fb2b7d87057865ff547efebbb2d81c377bd90', 1, 1, 'personalToken', '[]', 1, '2023-09-17 00:00:33', '2023-09-17 00:00:33', '2028-09-17 03:30:33'),
('d2302ad2a62a0eae7c0abf0ea877dc33d21f3ae090f7b96a7b622b92d52f3d852cb9305b2ee4b5e2', 1, 1, 'personalToken', '[]', 0, '2023-01-06 06:38:56', '2023-01-06 06:38:56', '2023-01-06 11:08:56'),
('d254e2755ecdc3544360a284f412516476b2f48d45c42772dc19995816bd1f8733e17a20d3b5e615', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:51:14', '2023-03-04 11:51:14', '2023-03-04 16:21:14'),
('d25bfc21dd84b117f577af3249ce544710fbba4b7c8dda0538af0ca2394d0a3bad05193e84c73b90', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:40:36', '2023-08-09 04:40:36', '2023-08-09 09:10:36'),
('d27230697d6ca6da767fb02d41517b905f04594b21612c7668d49d3a73d57357d7889c16da5deca3', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:33:55', '2022-12-26 03:33:55', '2022-12-26 08:03:55'),
('d2a66fef7405677f8fe5ef96dad4ee4f53a054491a6da6e8590f83a41e63b1ba7f28328e0b2c1e4b', 1, 1, 'personalToken', '[]', 1, '2022-12-16 10:11:47', '2022-12-16 10:11:47', '2027-12-16 13:41:47'),
('d2b07dcf438ead314563527dd23f503c1844560b6c2b09e833926802395fd275e82cc7d3cbd6ad48', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:11:00', '2022-07-25 07:11:00', '2027-07-25 11:41:00'),
('d2f2f1c9348be069b0ea4c7b9bcb36ba6550dd95ef59feed66a4589b80239b8fde74284f32bedd7b', 1, 1, 'personalToken', '[]', 1, '2023-04-07 04:14:17', '2023-04-07 04:14:17', '2028-04-07 07:44:17'),
('d3086f9959cc4ca652934a875eb614a92e3e3105cb52c645edc806eb29f4fd4228396b3c7c09d813', 1, 1, 'personalToken', '[]', 0, '2022-08-02 06:11:32', '2022-08-02 06:11:32', '2027-08-02 10:41:32'),
('d31264adc4dcfb7642fec22d224a3a384f676da6f5d1828d3c6f2e0f3c1fea197c316781a314e535', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:25:42', '2023-11-17 15:25:42', '2023-11-17 19:55:42'),
('d314fcc028abc25e316abd5d7bec0dd35bdd3a4a2465d587a492cf4d19089577970ad289e138e8f7', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:02:35', '2022-10-22 15:02:35', '2022-10-22 19:32:35'),
('d32aa5cee2ed4c6d226eaea39746504e909195e59d7c53cd417cca59b312e764f8dd73117f42961b', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:46:23', '2022-10-22 14:46:23', '2027-10-22 18:16:23'),
('d32caacdeaacd6e806ec312d265f722e3d4aba7494dac2252edb03b89e232ee8ddf1a9fc38b47027', 1, 1, 'personalToken', '[]', 0, '2022-10-14 13:24:51', '2022-10-14 13:24:51', '2027-10-14 16:54:51'),
('d32d5ea80f9f1192626608e762906f7cd063b7f41ac52c8c548d82c271f35173cb4791b204117a74', 1, 1, 'personalToken', '[]', 1, '2023-04-24 10:25:23', '2023-04-24 10:25:23', '2023-04-24 14:55:23'),
('d32ec722b477b1d222b4b1eefaa01bc46058b400e60b4d7541b199fc0d5d831bd4ae444257cc58b8', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:55:47', '2023-09-27 12:55:47', '2023-09-27 17:25:47');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d33318a35d516994ce5e7fca17955b2eda22db3aa442f9e37fb1e93c8168e646289d66d6a4edb7e0', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:16:17', '2022-12-06 14:16:17', '2022-12-06 18:46:17'),
('d3364b21ac861b1926e900e7ba06319ebf4bf84a71165929bad85b933b762982c9c7315ece6e0c63', 1, 1, 'personalToken', '[]', 0, '2022-10-23 04:04:50', '2022-10-23 04:04:50', '2027-10-23 07:34:50'),
('d351d6d7108cf2ac243392347d8f3fb4abcb0d3a8dfd4c8d43531ce23bbb7b7a219e776718fce0f3', 1, 1, 'personalToken', '[]', 1, '2023-02-10 03:18:05', '2023-02-10 03:18:05', '2023-02-10 07:48:05'),
('d36f91fd78ffe5b5b2e4f1c8ed2bf2c7e896bcad04dea936c574d331d89a5bc66eee0a9296e0d6dc', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:07:44', '2022-12-16 05:07:44', '2022-12-16 09:37:44'),
('d3f87e44a1ed01d69030da4c0bcc5b90f5f480c649ead176fd02900f8e92aec90050857ebb3f0a76', 1, 1, 'personalToken', '[]', 1, '2023-04-12 15:54:47', '2023-04-12 15:54:47', '2023-04-12 20:24:47'),
('d40080c3a90ec0e2697c7d25990ceff5575b4e58d15035a96a914366f6df25bae475dac0867b0e09', 1, 1, 'personalToken', '[]', 1, '2022-09-14 08:18:42', '2022-09-14 08:18:42', '2027-09-14 12:48:42'),
('d405e17a64b1c04a9faec28015b461aea1e631a2562c7c62401f551f4d6a861b0f2f9d2f84b75e93', 1, 1, 'personalToken', '[]', 1, '2022-12-17 03:59:43', '2022-12-17 03:59:43', '2022-12-17 08:29:43'),
('d437e9c7dd8b85a67ac91085df393f9314da86903c41177f4f9958faaff4fdb33a3d78f6d0facc75', 1, 1, 'personalToken', '[]', 1, '2023-02-03 18:21:27', '2023-02-03 18:21:27', '2023-02-03 22:51:27'),
('d4424e78c3667cc73e717eaaa492039ca1f274016e22f50f146f5a8bbf3def5cf41d9715896688af', 1, 1, 'personalToken', '[]', 0, '2023-05-24 05:24:45', '2023-05-24 05:24:45', '2023-05-24 09:54:45'),
('d4624ac0cb768cd910f41c72b7f94fa35d261c9c9df496674f7f40f949c067b607307b4a80c5f012', 1, 1, 'personalToken', '[]', 0, '2022-12-14 11:05:47', '2022-12-14 11:05:47', '2022-12-14 15:35:47'),
('d4ce0f4b3908a29d3a18bd28c188a9c4e6f64b6f42bc5cf0bb2851c949d4c622f2747b3c32d98cf8', 1, 1, 'personalToken', '[]', 0, '2023-04-11 07:54:48', '2023-04-11 07:54:48', '2023-04-11 12:24:48'),
('d5156a68edbe02850942aa0cba5ef3657b1b6e68787a1d53ebf6e18923a7cbc6bb2409109f7af173', 1, 1, 'personalToken', '[]', 0, '2023-09-04 06:26:56', '2023-09-04 06:26:56', '2023-09-04 10:56:56'),
('d516438dcd207d703f4c333d53e6183bf39fbd9b976eadec3184ff6e812b9d58cb5bdd45c49303a4', 1, 1, 'personalToken', '[]', 1, '2023-02-13 18:29:38', '2023-02-13 18:29:38', '2023-02-13 22:59:38'),
('d529dcb97b16debeb433f24f8390d77c074ed1c6beba025785787cbd2e98ef0451e71efd503846e6', 1, 1, 'personalToken', '[]', 0, '2023-04-11 15:17:41', '2023-04-11 15:17:41', '2023-04-11 19:47:41'),
('d5b353d7cd6a02239d84187613c2149a0f14905fe6f461c204d99648236569c272e443db07248850', 1, 1, 'personalToken', '[]', 0, '2023-04-06 12:00:25', '2023-04-06 12:00:25', '2023-04-06 16:30:25'),
('d5b3982d248ca97c2080f99436234f1d571e4c0b70a5e25d655c59bd1106ba77aa52bbda100398a6', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:28:58', '2023-04-11 17:28:58', '2023-04-11 21:58:58'),
('d5b5f1f863ef8a118cc7267fef7a0bf18255e79b12ce7c98d390f4a092b0e48f86e393f59dea5d21', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:18:15', '2023-08-14 07:18:15', '2023-08-14 11:48:15'),
('d60846ca3e77c0733be33ed870332f66cfadd9bca3e0747539a4447a12d1688d1a9570484a628692', 1, 1, 'personalToken', '[]', 0, '2022-10-16 09:14:38', '2022-10-16 09:14:38', '2022-10-16 13:44:38'),
('d628f184469328229cac21420af6280400bc5fb63df82ffdc707bd715456c63a162aeb3675aec818', 1, 1, 'personalToken', '[]', 1, '2022-12-15 17:01:46', '2022-12-15 17:01:46', '2027-12-15 20:31:46'),
('d62af1002caf5a64e5504a090b6052e40305dab6242fa7d4b3b35689433808bae4b2e04fdfe2a241', 1, 1, 'personalToken', '[]', 0, '2023-07-20 07:40:07', '2023-07-20 07:40:07', '2028-07-20 11:10:07'),
('d6944285c9432c0765da831f5f98cef9b2c556c8f09834113a9dbc55264ffbfc2232c585962c70bc', 1, 1, 'personalToken', '[]', 0, '2023-02-03 13:35:24', '2023-02-03 13:35:24', '2028-02-03 17:05:24'),
('d6bbbc42a440f2cc1f2522b7eb2ab483afc2a2a79c14118ba5da15dac59e76f70ccb0040efb09033', 1, 1, 'personalToken', '[]', 0, '2023-08-09 02:59:09', '2023-08-09 02:59:09', '2023-08-09 07:29:09'),
('d6c3f5552dc3f90dfdfdfc7bdd65d96d58ef1c389709469025e723ffd5b7789a3b8f4c597cb7f244', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:48:56', '2023-11-17 15:48:56', '2023-11-17 20:18:56'),
('d6d7d9ca08688a9f1fba310c50a89b8190e321fd4609b2d4138c440f455d15e4a1085f662c94655c', 1, 1, 'personalToken', '[]', 1, '2023-05-16 12:14:42', '2023-05-16 12:14:42', '2023-05-16 16:44:43'),
('d6f1616c25d8ae880044973b143de150ee66e9271b0a8d0d242aa055f38a908814258edfdcf35ca7', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:52:58', '2023-03-04 11:52:58', '2023-03-04 16:22:58'),
('d6f3848dbe8a523a18fe710e381f22acb6baf3b8d68e81b63737819210802925de0bdcd8610224f4', 1, 1, 'personalToken', '[]', 0, '2023-01-31 04:54:49', '2023-01-31 04:54:49', '2023-01-31 09:24:49'),
('d72d736d7c2d6dd6917b99e5e039f7304deeb43ffd8df40c3063814bc155dca4d4d96deba433f2b8', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:59:56', '2022-07-12 08:59:56', '2022-07-12 14:29:56'),
('d73d012cba36583f22e1c91ac27200c12c3fa153436491de7aba2a19a70e57db512481a7c3612c59', 1, 1, 'personalToken', '[]', 0, '2022-10-22 14:14:32', '2022-10-22 14:14:32', '2027-10-22 17:44:32'),
('d747e3228e6fd683c69bd5a98f41f4820dc9523cd4f6772e75da48b85981ec1006d0956812a1bdd4', 1, 1, 'personalToken', '[]', 0, '2022-06-14 12:29:20', '2022-06-14 12:29:20', '2027-06-14 16:59:20'),
('d754921654492bb120bee58fbf0dd4085d265240fb16cc6dba72c5b40fdfdbcda993379f4f95b17d', 1, 1, 'personalToken', '[]', 1, '2022-08-27 03:26:44', '2022-08-27 03:26:44', '2027-08-27 07:56:44'),
('d77bc769ad5aa53ff82430eb38a9628e05e02b588c06b2a7c15a922121a43ba0b67a28acab8ea478', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:29:47', '2023-09-27 12:29:47', '2023-09-27 16:59:47'),
('d793ae23da3a7966ade6d38ff6e07be0a91fe4a288518ea22777efc168a80b432376980e82b690d2', 1, 1, 'personalToken', '[]', 0, '2022-09-29 17:38:34', '2022-09-29 17:38:34', '2022-09-29 22:08:34'),
('d7a1634aef28aa478f088882dfdd890505b2f76aa2e4a5788f1979b61aa36a47b856d269e8403784', 1, 1, 'personalToken', '[]', 0, '2022-11-15 06:31:20', '2022-11-15 06:31:20', '2022-11-15 11:01:20'),
('d7a9670bf8bab85bf8b160b9198534f501575037e7e8c6c4c72a8529941f76174259ba9479b0330f', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:40:13', '2023-11-17 15:40:13', '2023-11-17 20:10:13'),
('d7ac2ad4dbecebadc1c514978284e4df3439c29174f1e0e0abf82811dfa769a0b000c2ceb5735067', 1, 1, 'personalToken', '[]', 0, '2023-05-08 01:42:04', '2023-05-08 01:42:04', '2023-05-08 06:12:04'),
('d7b4695712bb57073d805f47d000892d6a8c9a6662824d00d91bbe6f993d03a53a3dbc9ec1974ada', 1, 1, 'personalToken', '[]', 0, '2023-01-28 14:41:34', '2023-01-28 14:41:34', '2028-01-28 18:11:34'),
('d7b5c61ff25391fcf3f6022a0480667dfc4eedf139b03ce2d82529729469d44a0f9f9df99eed9aec', 1, 1, 'personalToken', '[]', 0, '2023-04-29 10:10:21', '2023-04-29 10:10:21', '2023-04-29 14:40:21'),
('d7d7ee09d9788319d676c40b44aaa099e6caae5eca08aa5182c6e227c557cd5f9f4439919de202c6', 1, 1, 'personalToken', '[]', 1, '2023-09-18 02:42:35', '2023-09-18 02:42:35', '2023-09-18 07:12:35'),
('d7f2ab7f574079603c6219f60bf3efb29028bbbb355d8388d63a0ad74e2450355c2f33cb58343a6e', 1, 1, 'personalToken', '[]', 0, '2023-04-09 07:32:20', '2023-04-09 07:32:20', '2023-04-09 12:02:20'),
('d8017be0269a89239009661d4da098835a5d9a4eb742f7d94c6b2524fa4fef417885a759bb7fe275', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:10:46', '2023-08-09 04:10:46', '2023-08-09 08:40:46'),
('d809381cb825a9b7a5ef5f810fb35c8bc2a4de373831a48e583634ff5933ccb09576913c15a06762', 1, 1, 'personalToken', '[]', 1, '2023-01-07 14:37:41', '2023-01-07 14:37:41', '2028-01-07 18:07:41'),
('d81de7c80de81a70739108aaae109a411d62a2a1e22ce0199e64a24971193ccbe06cdc365686860f', 1, 1, 'personalToken', '[]', 1, '2023-05-16 12:31:34', '2023-05-16 12:31:34', '2023-05-16 17:01:34'),
('d839fd4bf340391969aede4796e771ef7e2a1458df5c4591101fb1f640ef1a1e31c6ef61d015f01e', 1, 1, 'personalToken', '[]', 0, '2023-06-16 07:47:31', '2023-06-16 07:47:31', '2023-06-16 12:17:31'),
('d87316ecdc05567642875efd2d85784dad00e30cc6d88ecfac253d7945a4b559c2aec8af351af762', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:39:44', '2023-04-08 15:39:44', '2023-04-08 20:09:44'),
('d8a1dcf9673d27e98b0fa066e9579300416b130dbfc032be4111dab014a81c19865c16e90e111985', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:34:22', '2023-08-09 04:34:22', '2023-08-09 09:04:22'),
('d8aa6dd0e8cb72413888eb4ded3b72be3e792ad6c1fcea54a1b2a53bbf7a4c2e1b966cec06d24942', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:38:01', '2022-12-26 06:38:01', '2022-12-26 11:08:01'),
('d8c158f60238dc04b62bddd74c694dfb9c73458684cc96a42b2b3c5b82cf265b80fdba54e6d97698', 1, 1, 'personalToken', '[]', 0, '2022-09-26 07:44:20', '2022-09-26 07:44:20', '2022-09-26 12:14:20'),
('d8c2ea9b31424394fda2ae0ca8094e96d7512696156dd2cd718f16d91f3cb0421f966459f0a84525', 1, 1, 'personalToken', '[]', 0, '2022-07-23 13:53:06', '2022-07-23 13:53:06', '2027-07-23 18:23:06'),
('d91660e2acf51e3c7421a3f3a2f5c0c6b10575df1a0167fdbcada567ab05f066404413980f72309c', 1, 1, 'personalToken', '[]', 1, '2023-05-13 08:50:35', '2023-05-13 08:50:35', '2023-05-13 13:20:35'),
('d93e36dd3a0ad13eace10c625e73ec405f3c9f1e1d8faf03f6ebc2503ca9b4deb7f1f4f64a949d7f', 1, 1, 'personalToken', '[]', 1, '2023-01-02 10:08:09', '2023-01-02 10:08:09', '2023-01-02 14:38:09'),
('d93e5d79ffeec2bfb27e1ed586834b2d8f0c910d2fca9d2573d6b018996ca3c845108761d9e2b635', 1, 1, 'personalToken', '[]', 0, '2022-12-07 06:40:18', '2022-12-07 06:40:18', '2022-12-07 11:10:18'),
('d95bb2a49778ffe5bed734182bc33be583a38e951d1b928a28b57116b61753d3d980fdcc6de27abe', 1, 1, 'personalToken', '[]', 0, '2022-07-31 14:18:27', '2022-07-31 14:18:27', '2027-07-31 18:48:27'),
('d95f038868a36c5d4210a0b6ae74800994a6fe08ae7f60c29e727eea81021ad9b295c71052be7206', 1, 1, 'personalToken', '[]', 0, '2023-09-09 16:55:04', '2023-09-09 16:55:04', '2028-09-09 20:25:04'),
('d99b18aebec791b46826ecab1959346f405f0d13a66a9abe6fa46a00654d2175e428e6eedf01f6b0', 1, 1, 'personalToken', '[]', 0, '2022-12-08 04:51:03', '2022-12-08 04:51:03', '2022-12-08 09:21:03'),
('d9a73c3780cab66ee5c80d2b3d7993a18bf3403dc0f812d9cadc572526910068b9eaa3a5de6b10ce', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:46:44', '2023-05-16 01:46:44', '2023-05-16 06:16:44'),
('d9c917d1f23e883c865b013f951d37f7a2d1ffa4aea44aec1e1d0c7110947732a933ecb68836efcc', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:44:25', '2023-04-11 08:44:25', '2023-04-11 13:14:25'),
('d9ec0e916704d0253a125542046f33bf7117c759d21634b9c0466fa6ecaca92cee0e4bcffff704f2', 1, 1, 'personalToken', '[]', 0, '2023-12-15 04:45:47', '2023-12-15 04:45:47', '2028-12-15 08:15:47'),
('d9f264494cd89ac893c96f8ffc471fb590a66a6b6277cdb6d00f12210ce145e89c53600951e78c22', 1, 1, 'personalToken', '[]', 1, '2022-10-17 16:46:21', '2022-10-17 16:46:21', '2022-10-17 21:16:21'),
('d9f38f4e72d0ea0005c4e6ec96e9e37823f2c2bff979127329d9c4bc99be813432f344cfe7346d93', 1, 1, 'personalToken', '[]', 0, '2023-08-15 05:05:11', '2023-08-15 05:05:11', '2023-08-15 09:35:12'),
('da11e05048d7c03eb97f20d9d28829d95b6aa8fccbcae9dbc53a8f1863a64c95b626840b1ad8ca0e', 1, 1, 'personalToken', '[]', 1, '2022-10-28 13:05:59', '2022-10-28 13:05:59', '2022-10-28 17:35:59'),
('da301192d4503071054f47289897d2ba78a4f7b5bc7973b1339eab6bc8921a9b039d07a97af52fb0', 1, 1, 'personalToken', '[]', 0, '2023-01-19 12:49:01', '2023-01-19 12:49:01', '2028-01-19 16:19:01'),
('da4e044313bb970bf72fef2c428218a1c7b481d95d5d613c99b64ce6534f007ec364aedef7979f03', 34, 1, 'personalToken', '[]', 1, '2023-06-25 07:09:24', '2023-06-25 07:09:24', '2023-06-25 11:39:24'),
('da6ff9ecf589d26659d1d12291258747b6385b11f06cadfc8b17ffbcd24263e1846c24cb75f0288f', 1, 1, 'personalToken', '[]', 1, '2023-02-03 17:55:18', '2023-02-03 17:55:18', '2023-02-03 22:25:18'),
('da9ba44d790d1a8b0764f4f444741d62a4cc3cd9597e0d4b401152b4947a32be9c117104d0acbaca', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:50:42', '2022-07-12 08:50:42', '2022-07-12 14:20:42'),
('dab929a6c2d85de4366e3817aa794ec4ec458776b869ae1e2866178c69902d40e969081a990468d4', 1, 1, 'personalToken', '[]', 0, '2022-07-08 02:09:10', '2022-07-08 02:09:10', '2027-07-08 06:39:10'),
('daef6035db44421f88ebf9467aa3987267f175d2aadad66e5e2b5b9bfe37f79e052e9141ad5d0689', 1, 1, 'personalToken', '[]', 0, '2022-12-11 12:16:05', '2022-12-11 12:16:05', '2022-12-11 16:46:05'),
('daf123c08195caa23cd0ffaca8278fcbad84a8ceda9bcabed7bffb6c1adf5711e18326ad80257088', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:07:14', '2022-12-16 05:07:14', '2022-12-16 09:37:14'),
('db44c5dbcde0b975737933ee1c17758582d9cb41c4c1328b64201f155f9a73b8c1c5d36a7bfb79cf', 1, 1, 'personalToken', '[]', 0, '2023-08-13 03:37:25', '2023-08-13 03:37:25', '2023-08-13 08:07:25'),
('db95cacb29112b7acaf5d0228b4f4188b4f8a4e764890c85aaeb6e42fcb786bcb2b0df7780608958', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:50:03', '2023-11-17 15:50:03', '2023-11-17 20:20:03'),
('dc1466d0975d88689ef5ace34e085f8084df0f86bc9f72f00e7341dafc444478e6b75e2b02821859', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:27:28', '2022-07-12 05:27:28', '2022-07-12 10:57:29'),
('dc3cf802aa31b605dcaa93c3e946e8fddfd86e791756120b4f3dd83bfbc5951aa2b102659f3766f1', 1, 1, 'personalToken', '[]', 0, '2023-08-13 06:28:16', '2023-08-13 06:28:16', '2023-08-13 10:58:16'),
('dc46481e81cf66293a25a901ea0832e9b3caf021f66f4538f6fc63047f3cade2ebe2ed76553dae61', 1, 1, 'personalToken', '[]', 0, '2022-08-03 03:51:45', '2022-08-03 03:51:45', '2027-08-03 08:21:45'),
('dc4e72502d728e83d35c45449b95f008f5d164ce38c03271b15426d5a653d90853a41c5d03146c17', 1, 1, 'personalToken', '[]', 0, '2022-12-12 19:01:42', '2022-12-12 19:01:42', '2022-12-12 23:31:42'),
('dc5763f72efbcef443ca126627cebe85bbcd80ad172974ca0cded9d83617677e16ba972791c38b4b', 1, 1, 'personalToken', '[]', 1, '2022-07-12 09:12:22', '2022-07-12 09:12:22', '2022-07-12 14:42:22'),
('dc5d06dfe51cf68104323cd199d8b2d7f6e1449d11c6f02efbc7482d44d2bf7a7b40ca0f8cb6b260', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:09:14', '2022-12-16 05:09:14', '2022-12-16 09:39:14'),
('dc90d9b83e042ec4bae41f5b15334f2d79670aaabd688a421ee1f0ff089eea03bbeeda2d26b362a0', 1, 1, 'personalToken', '[]', 0, '2023-02-14 13:14:43', '2023-02-14 13:14:43', '2028-02-14 16:44:43'),
('dc92d02fc9f2ab21ecbb58b1e9fe8de6ec656301b4052da05f33063a07397f4c52e07e537bb86366', 1, 1, 'personalToken', '[]', 1, '2022-07-13 14:59:35', '2022-07-13 14:59:35', '2027-07-13 19:29:35'),
('dc961dfbfca46da0788a12c89f44ecd14852c7a2b50b4fede8322176f682339e58e719bb94805bc5', 1, 1, 'personalToken', '[]', 0, '2022-10-15 12:03:46', '2022-10-15 12:03:46', '2022-10-15 16:33:46'),
('dc9fd2edd28e689f4043d1255b8780b1330cad059725d5eac59730f0c3064648b3e5fbcf0c7601ab', 1, 1, 'personalToken', '[]', 1, '2022-11-12 02:02:44', '2022-11-12 02:02:44', '2027-11-12 05:32:45'),
('dca88fb8ece2fe5b59827412b8ca8d3069adb14f815c3fc446516a23643d85196896097276d79eaa', 1, 1, 'personalToken', '[]', 1, '2022-12-26 06:40:55', '2022-12-26 06:40:55', '2022-12-26 11:10:55'),
('dcbe0e216789d63cec4f737d2a35163356840f3f1f8638c904a605a7e5a5450a2c2d44decd264129', 1, 1, 'personalToken', '[]', 0, '2023-02-14 15:39:01', '2023-02-14 15:39:01', '2023-02-14 20:09:01'),
('dcd2d2ef08f845ad390cd1db3cb90cfcc788be2ebeac95c83e474e534772719c2c55aa73e819c870', 1, 1, 'personalToken', '[]', 0, '2023-06-15 04:07:16', '2023-06-15 04:07:16', '2023-06-15 08:37:16'),
('dcedd377b6c2779df4c39a5f523573a1d6924fa422c3d7ff3902f12c76dd335e98034263dcd73567', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:57:09', '2023-05-16 01:57:09', '2023-05-16 06:27:09'),
('dd014dca8f052913ef7c72c91c58801d94be7bc127af1c045ffca4648490aab3027836590c07b317', 1, 1, 'personalToken', '[]', 1, '2022-12-16 10:06:56', '2022-12-16 10:06:56', '2022-12-16 14:36:56'),
('dd0b6fbf76501d90916da5c7ca8cbf3e501d8b01c72dc55837f072fff1290db11611f24351415404', 34, 1, 'personalToken', '[]', 1, '2023-06-21 04:21:22', '2023-06-21 04:21:22', '2028-06-21 07:51:22'),
('dd1bab29fc5e1d2488d084a4364d905ea7e8f254d5a6272d80f9b75b0afac6003e95485916e552c9', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:48:54', '2023-03-04 11:48:54', '2023-03-04 16:18:54'),
('dd3515d8070241a173ce9c0bcd74fec69a01216d274d238ddd41007110e81b4f322579dbd453da24', 1, 1, 'personalToken', '[]', 0, '2023-03-16 12:51:18', '2023-03-16 12:51:18', '2023-03-16 17:21:18'),
('dd7dfa049c93bc10094dd585b196c270cf3f6d5d87d4ac0a83315213dc9f0a0caa7c8f56a739439f', 1, 1, 'personalToken', '[]', 0, '2023-12-09 12:52:15', '2023-12-09 12:52:15', '2023-12-09 17:22:15'),
('dd87145f24ccd4183bf66ae6a086aa71f6d9337bea72b36f8848af07728abded487ab70b509bf380', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:07:56', '2023-08-12 08:07:56', '2023-08-12 12:37:56'),
('dd91ec8550c86abbc29f73ff5e2d130027847894f3c4f3babe479eddc797006e0fb99d6365563fa9', 1, 1, 'personalToken', '[]', 0, '2023-12-11 15:36:11', '2023-12-11 15:36:11', '2028-12-11 19:06:11'),
('dd94e5e5b64789a729d98fd130be62c93f10625dae8fb05f7f9a3dbf7da6ce235ab0a307ac8fb4f4', 1, 1, 'personalToken', '[]', 0, '2023-09-11 14:51:14', '2023-09-11 14:51:14', '2023-09-11 19:21:14'),
('dda779b0a33392a88272847655616907c1dbfcd8548ab66cc4f3f07b1aca2e3f895717a8006ce5d6', 1, 1, 'personalToken', '[]', 1, '2023-04-04 10:10:41', '2023-04-04 10:10:41', '2023-04-04 14:40:41'),
('ddb9b433cd0b60a28c63416cc9c29876ed0426c2473505f5e3c94f0ff35d13e9e973e73ce7eed0c4', 1, 1, 'personalToken', '[]', 1, '2022-08-04 10:17:09', '2022-08-04 10:17:09', '2022-08-04 15:47:09'),
('ddcf2584cadb13913efaf9a1a6b68ee2d42e82786a3f41ba6c7cfbba3eaba4bea391e134875126c5', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:07:08', '2022-12-16 05:07:08', '2022-12-16 09:37:08'),
('ddf5c2fb951494cb5d2b85b071e90f0b06dea06105022f1a498e54c7cea9846516417a3c11651f2d', 1, 1, 'personalToken', '[]', 0, '2023-05-15 16:57:48', '2023-05-15 16:57:48', '2028-05-15 20:27:48'),
('de2fdf2c6a3049b16db175e36f4633793fdc1b28be2ee7b8ec1ab23d726fe5506bd9741d74c9dece', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:03:06', '2023-09-27 13:03:06', '2023-09-27 17:33:06'),
('de4088edbb8d602731a7bbd1280539a41cd7efc5638e0d7b15260721be75ca600d33bd31fb2e3da4', 1, 1, 'personalToken', '[]', 0, '2023-02-08 05:23:21', '2023-02-08 05:23:21', '2028-02-08 08:53:21'),
('de4e767aeaf364ee8fb84a4bdf60a38a5045eed89e638fe7d6ae27cf6c8329f8eb31c7fabd43221b', 1, 1, 'personalToken', '[]', 0, '2022-12-11 12:35:03', '2022-12-11 12:35:03', '2027-12-11 16:05:03'),
('de80b3f82439cfc2912d10af5d9b995f61677f72c913dd8b8d05239dffd94dac6d90d68696d54028', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:24:44', '2023-01-19 13:24:44', '2028-01-19 16:54:44'),
('dee599ee312b2f900ea950acd45bb93222e98ccc314143cfda24406bf6a71014887a727fac4d7cfe', 1, 1, 'personalToken', '[]', 0, '2022-12-15 16:52:46', '2022-12-15 16:52:46', '2027-12-15 20:22:46'),
('df006b6d781f9c163a29e50559b73513afa92d7baa9d8fc59c8ead9564b2384901e887451512ffef', 1, 1, 'personalToken', '[]', 0, '2022-12-07 17:13:10', '2022-12-07 17:13:10', '2027-12-07 20:43:10'),
('df0844a3a3f67cd36a1927e58f6a0b155ae2c3dc26ca0e143be24ed336d1387e1514e00b9c5fb72b', 1, 1, 'personalToken', '[]', 0, '2023-05-16 22:31:26', '2023-05-16 22:31:26', '2023-05-17 03:01:26'),
('df1ab740726a4f280af1b0a874eb89ddf76f18aa560754e649c8af53d11746ae92b6bd84446a84a0', 1, 1, 'personalToken', '[]', 0, '2022-11-15 05:19:24', '2022-11-15 05:19:24', '2022-11-15 09:49:24'),
('df3c9309adbc81e1484aa34e2d5d50fc63913f987e595dae92ee94ad1487821413ccd2b56d5175ee', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:48:16', '2023-03-04 11:48:16', '2023-03-04 16:18:16'),
('df8695447bba2d2f188e65d64db36e4c937327301c32317f718db7fa38ce1f1badc86cfbb676a5ac', 26, 1, 'personalToken', '[]', 1, '2023-03-04 09:51:16', '2023-03-04 09:51:16', '2028-03-04 13:21:16'),
('dfbf7086bdeed24ca0713bcf89180fb415b8dbc63952c46b0357ead65e1ecf8e95bf225502fa69f3', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:10:01', '2022-12-16 05:10:01', '2022-12-16 09:40:01'),
('dfc482c00949cf07773319985e2bd58f4c8fcccb398611f0436f85c670ecfa0ef8e2651f3de0eca5', 1, 1, 'personalToken', '[]', 0, '2022-07-21 15:04:09', '2022-07-21 15:04:09', '2027-07-21 19:34:09'),
('dfc4969e11894c959dc582252885697716ec470490d114382a3c71faf535c70bb1fb75e4ff35e688', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:35:12', '2023-05-16 03:35:12', '2023-05-16 08:05:12'),
('e00b5cd214ba16b1e5d013a081b1fc7313409d0091e7453c300dd94e2259da72ef3153783e259651', 1, 1, 'personalToken', '[]', 0, '2022-11-23 11:06:05', '2022-11-23 11:06:05', '2027-11-23 14:36:05'),
('e011b0294012481aae7918acd764ec35249608ef83d927236a79ae4892373fdd5ddfd7d20b8ff4e4', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:24:55', '2022-12-06 14:24:55', '2022-12-06 18:54:55'),
('e01343dcf8d891e1a13f3167e8bcc58c7dc762223f4a5dace3c289f62987a29e4f3c9b399a6a907a', 1, 1, 'personalToken', '[]', 0, '2022-11-10 03:59:39', '2022-11-10 03:59:39', '2027-11-10 07:29:39'),
('e01366ed65e2cc9d919bf99b1db54c7c8d69df4630816e43b89e93a6ec3780859a9e75249b5ecd40', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:51:05', '2023-09-27 12:51:05', '2023-09-27 17:21:05'),
('e02628bc2fb789c0d65a3b3c5fb1d9b4d6168069c8e7ea07a00eaefc5bba48a4608040c02151dbe7', 1, 1, 'personalToken', '[]', 1, '2022-12-06 10:20:42', '2022-12-06 10:20:42', '2022-12-06 14:50:42'),
('e02e7dd9e7bacbc9432a265e00f661e94f09632489ca8d93d3ae1d8813fd08556356680e6e131018', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:39:40', '2023-01-21 05:39:40', '2023-01-21 10:09:40'),
('e040e28ccbe81b8e86c6af035f7bb78d2cc0c4fbabfe1446f86cb726d21959198b11af1e332c88a1', 1, 1, 'personalToken', '[]', 0, '2023-09-04 06:26:51', '2023-09-04 06:26:51', '2023-09-04 10:56:51'),
('e04b1e1189aa2506061100fada0634fc07c35ed3055b5b8ea2138d3f84e254f8490da8ff392b70e8', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:45:23', '2023-11-17 15:45:23', '2023-11-17 20:15:23'),
('e04ff6eff0d17ad85b9a5a4024d9f9aafea03b4f0a11625572f9079395d9778a7d08b8abac34cf0d', 1, 1, 'personalToken', '[]', 0, '2022-12-02 08:27:49', '2022-12-02 08:27:49', '2027-12-02 11:57:49'),
('e06e389fa397069de5827f9bf73ff3ff4a34f24de43c42cdc513ca3e07788e625bbea8c76007cba7', 1, 1, 'personalToken', '[]', 0, '2022-12-14 05:21:33', '2022-12-14 05:21:33', '2022-12-14 09:51:33'),
('e0719b2192a7d5046908b65a751434277aaedc72d0f437c8660d5d9678365c288d46a73e9a4cbdce', 1, 1, 'personalToken', '[]', 0, '2023-05-28 10:25:14', '2023-05-28 10:25:14', '2023-05-28 14:55:14'),
('e074b3972785fb45878fc4b89b0e01531ad05efcdd07acc0b0350a9d17e5c159bb6715302a5246fb', 1, 1, 'personalToken', '[]', 0, '2022-09-25 04:27:18', '2022-09-25 04:27:18', '2022-09-25 08:57:18'),
('e09064b8fcedb69413c77e0a3390e9ac2b88d7adf66e19af90d78382d6ee5cd340d7e7c1b6e584b8', 1, 1, 'personalToken', '[]', 1, '2022-09-08 07:05:09', '2022-09-08 07:05:09', '2022-09-08 12:35:09'),
('e090fa14d8f90551880bd9e23f2ab98df3eb66b3b2fbe877c5372749639c963eeaf5364d161eedb8', 1, 1, 'personalToken', '[]', 0, '2023-06-15 03:34:55', '2023-06-15 03:34:55', '2023-06-15 08:04:55'),
('e0b08afc069b0c0d14fdadaf565deb245fb092a2c445c9dd8a74ab2b082b3d06bc4d44d2d1798482', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:53:23', '2022-08-28 02:53:23', '2022-08-28 08:23:23'),
('e0db29a0f33305669f9f9658f87b18b9dd63d7320850f37e27f05c2c0efc057c11dcc72c8294f64f', 1, 1, 'personalToken', '[]', 0, '2023-12-18 08:35:12', '2023-12-18 08:35:12', '2023-12-18 13:05:12'),
('e0e4f4387120c84ded5ef687a81704d7d1f0fc87e4d3cd2ce7e3afb7a59e27747a5475bd966ea920', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:00:08', '2023-12-11 05:00:08', '2023-12-11 09:30:09'),
('e0f4f2b03158f88277c1caa3d5bc9f598e56d28525c311031fa2976a59ce26f76e3428e554af91cb', 1, 1, 'personalToken', '[]', 0, '2022-08-27 03:22:23', '2022-08-27 03:22:23', '2022-08-27 08:52:23'),
('e0ffcc844cefecbb7a01475404b6ea2f4877e83d08d30bee62f04ebecf5f68ab419b5a27b9a981b7', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:47:52', '2023-05-16 03:47:52', '2023-05-16 08:17:52'),
('e1167a9c981badea4f3063b4a7e68a7262957e0987082d6b4fc7b21368f3e977b237965fc5a97915', 1, 1, 'personalToken', '[]', 0, '2023-04-27 04:09:36', '2023-04-27 04:09:36', '2023-04-27 08:39:36'),
('e117c0e75f3896093fec705ba8f3fbd18f728496ad76437346b42713f882d09ba51b1c3dab00bda0', 1, 1, 'personalToken', '[]', 1, '2022-10-23 03:53:09', '2022-10-23 03:53:09', '2022-10-23 08:23:09'),
('e1194fce19132843100ec544c02a74d28ffc54817a01a5d6041b40ff92cf69423308f7cc2518cac7', 1, 1, 'personalToken', '[]', 0, '2023-09-04 06:18:40', '2023-09-04 06:18:40', '2028-09-04 09:48:40'),
('e1c7000f4f6b877f51b7354042a06b08642188c35a4705c5917ba1354a9ae355ec2039e43a41b35c', 1, 1, 'personalToken', '[]', 0, '2022-08-03 04:40:02', '2022-08-03 04:40:02', '2027-08-03 09:10:02'),
('e1f01d400811b0489a7c2938c861c940389b7c91fb26c260355c9e489832d0375c7c7e6ae081dfb6', 1, 1, 'personalToken', '[]', 0, '2022-08-27 01:55:26', '2022-08-27 01:55:26', '2027-08-27 06:25:26'),
('e1f1c1207214832ed4f24f817ad7a4dec6271a17cc6f54199eb27ceb1c4510647312163487721c13', 1, 1, 'personalToken', '[]', 0, '2023-08-12 01:29:08', '2023-08-12 01:29:08', '2023-08-12 05:59:08'),
('e2160a9a26ecd176109b7b956651cec5cb06ce104d54fac82dc4ae54cfa387a902446b09773b1333', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:43:37', '2022-11-20 08:43:37', '2022-11-20 13:13:37'),
('e2653c3dfdfef49de32cee69e0c2342fca4ce6a78a1876509e9620ff43eb108e438daaef52d87ec6', 1, 1, 'personalToken', '[]', 0, '2023-01-27 11:13:02', '2023-01-27 11:13:02', '2023-01-27 15:43:02'),
('e2672c3d6164e7871f3cb6bad7530e118f57a7a488e7e5e552708da041459c171cba8e194bc63772', 1, 1, 'personalToken', '[]', 0, '2023-05-21 08:31:42', '2023-05-21 08:31:42', '2023-05-21 13:01:42'),
('e277bb0045a50ec8f418ee7c4a4792adc4ca24839c235b1a993f1a86637a06919471d451c86bd886', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:44:40', '2023-04-08 15:44:40', '2023-04-08 20:14:40'),
('e289b834c601fcf526264a4fe76bf98065f8417753fd52d9d6b127420905445e015c1ea34005b73f', 1, 1, 'personalToken', '[]', 0, '2023-04-16 11:50:37', '2023-04-16 11:50:37', '2028-04-16 15:20:38'),
('e28aae3a31b151d08a8dd44b5d032a01ba3cda636fa99c303f319b543fd1a03716b9d43c974da211', 1, 1, 'personalToken', '[]', 0, '2023-04-14 14:44:15', '2023-04-14 14:44:15', '2028-04-14 18:14:15'),
('e2a659530d517f52e88498c75fcc18c03937f795e5cc9f769f1b0d56713699882a9d6961a221020f', 1, 1, 'personalToken', '[]', 0, '2023-08-13 04:53:15', '2023-08-13 04:53:15', '2023-08-13 09:23:15'),
('e2b8d4dd3d215bae4bab03ccf1f62f042e7c16f5688ae8b0a5e8396808ca019a446dc8d05ef9c52d', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:48:00', '2023-08-08 08:48:00', '2023-08-08 13:18:00'),
('e2be6b90702e021a6f839bf92ad76c9bab633612dd040ca844886941fe1f077970ea5001cf549652', 1, 1, 'personalToken', '[]', 0, '2023-04-11 07:47:46', '2023-04-11 07:47:46', '2023-04-11 12:17:46'),
('e2cf5d07709ca87eba642b7d1ac3d5aad8b6f2a64ab1912ba11d626f4fb38c4a35eb84bda1c14628', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:50:06', '2023-02-05 17:50:06', '2023-02-05 22:20:06'),
('e2f6977da21f0078cc09225e6202fb0c7b6e60fc55f0e0eb038aae1cd6c982952ef3f609b5ea0e8c', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:23:45', '2022-10-22 15:23:45', '2027-10-22 18:53:45'),
('e307123dfe8e13cd44fdeeb23ceaa855af4b23c677f5f818ff578dfde803cbcf201914919354486e', 1, 1, 'personalToken', '[]', 1, '2023-03-09 07:00:08', '2023-03-09 07:00:08', '2028-03-09 10:30:08'),
('e33f449c53209298fa3995febccbd19f913bc0bfd8391bb246cf599dae00784e6a7473d6bad5ab53', 1, 1, 'personalToken', '[]', 0, '2022-09-30 05:37:19', '2022-09-30 05:37:19', '2027-09-30 09:07:19'),
('e348d21542cdeae8b279da046518a6dcf52a7a70ffcd3c95fb42f9913588cbe134e04f688f93b06e', 1, 1, 'personalToken', '[]', 0, '2023-01-19 14:02:26', '2023-01-19 14:02:26', '2028-01-19 17:32:26'),
('e367de5312eb44e9d27968c9dc5b455a3cf5ffa49c8782bc5481d36db67db27bc5ba6779cc982355', 1, 1, 'personalToken', '[]', 1, '2022-07-02 12:59:38', '2022-07-02 12:59:38', '2022-07-02 18:29:38'),
('e36e9de073d4fdcb2021cd5d4546eb910107f80e0dfa5c6b8c1e6c998816ac0964fb54294b249135', 1, 1, 'personalToken', '[]', 1, '2022-11-02 08:41:53', '2022-11-02 08:41:53', '2022-11-02 13:11:53'),
('e39c073fa6378a62bb1493b18412221976807aab79fa6bf7472556ee9b5f2ca34b9ec55a19d1f758', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:35:06', '2023-11-17 15:35:06', '2023-11-17 20:05:06'),
('e3c781c081c7311983daf685c173d0ccc94e069bb7a7f87630795a68d7878e343e5bdf0cc22b66a3', 1, 1, 'personalToken', '[]', 0, '2022-08-31 09:57:47', '2022-08-31 09:57:47', '2022-08-31 15:27:47'),
('e3cfc23798b536c472b87634c51cc787c2fa8cf8affeb3b018698d054119a5ef9d050baad174c477', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:42:26', '2023-06-30 10:42:26', '2023-06-30 15:12:26'),
('e3ef29824c1b20298e33bcead385f1887d07416f495c3fc8e6cc3cfd95299f197e1254802edcf096', 1, 1, 'personalToken', '[]', 0, '2023-08-13 02:29:40', '2023-08-13 02:29:40', '2023-08-13 06:59:40'),
('e449671dff9aff758de5fe6fa96bb91cafca3cae327328aa775ef086ce573157a75da5c3b17d86f9', 1, 1, 'personalToken', '[]', 0, '2022-12-02 09:17:53', '2022-12-02 09:17:53', '2022-12-02 13:47:53'),
('e4497b7cf47fa573b25dedfc8423e555040a3baeb87669d9200326f8b6ff228b033f8f26170dc95b', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:28:23', '2022-07-12 05:28:23', '2022-07-12 10:58:23'),
('e483fe4d16a31d1bc15694e3d834ac21a3a08af7ed2fd6eb95851c6902160147e1a44530eb42e042', 1, 1, 'personalToken', '[]', 0, '2022-08-29 08:19:49', '2022-08-29 08:19:49', '2022-08-29 13:49:49'),
('e4b7e74d38a9dd51b961d0636e0b7609184e74d1361518c68236e2428a98cf981a32ecceae000e9d', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:49:21', '2023-04-12 16:49:21', '2023-04-12 21:19:21'),
('e4c1cdadfd69f37e6c076b063f0667662174604b435387d122ed4d117acef0a0ebe8bf29a1e99136', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:28:26', '2023-06-21 04:28:26', '2028-06-21 07:58:26'),
('e4d70b9ddd0150d0fe57dfaebe012c8900505a25abd9114cf12c8b22c1cf24818993b175bc14191b', 1, 1, 'personalToken', '[]', 0, '2023-01-31 04:36:30', '2023-01-31 04:36:30', '2023-01-31 09:06:30'),
('e4dadbb9aadb18902fb4feb944a41bfd564f0ce65e58400a24095d467239ec82b13a33930de2332d', 1, 1, 'personalToken', '[]', 1, '2023-04-23 14:40:56', '2023-04-23 14:40:56', '2023-04-23 19:10:56'),
('e4edb2225d97838be38b5d57dfb0bc76ff83571b066fdeb3105f95dc40c2fd3cf4af22cbc61939b4', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:50:02', '2023-08-08 08:50:02', '2023-08-08 13:20:02'),
('e521bbbbbe9be439a1bb532aa40985abbe359f1cffc035212ef37ef9a89d8deec66f3f2f05fcf5b8', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:39:26', '2022-07-06 03:39:26', '2022-07-06 09:09:26'),
('e521cbbcfcc8f36550c1fdeaa599aa303177325a8835ad31de2b616016bc6c6639e3889053930631', 1, 1, 'personalToken', '[]', 0, '2022-09-19 06:23:51', '2022-09-19 06:23:51', '2022-09-19 11:53:51'),
('e5319e7fd3a48cc39a9a520f288a61f1ef357bc568fac53522af196adfeef120ada4f8a1bbb34f14', 1, 1, 'personalToken', '[]', 0, '2023-08-07 05:43:30', '2023-08-07 05:43:30', '2023-08-07 10:13:31'),
('e542e958b4eba646dc50a658876d8d04feaac7d69b6b846a96196ef612f2bf4de1dfd5354bcb2dc9', 1, 1, 'personalToken', '[]', 0, '2023-08-14 03:29:07', '2023-08-14 03:29:07', '2023-08-14 07:59:07'),
('e5493d39ebea697ae8878d6486a0df04863b4238fb77ed1e89a00b244c3a88f1fee34769ed7a5cc4', 1, 1, 'personalToken', '[]', 1, '2022-11-04 08:25:11', '2022-11-04 08:25:11', '2027-11-04 11:55:11'),
('e54a2a45a6386ff80af8a8b32ab60cb85aa07dc82c00cb77d718285c681a399646101dacbb631c7b', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:08:18', '2023-06-21 04:08:18', '2028-06-21 07:38:18'),
('e54efcc2fbf5e2668891eb20fe4c57563133be6eca7dd6257f0d253fa9583b78888686c92abf47a9', 1, 1, 'personalToken', '[]', 0, '2023-08-07 07:23:41', '2023-08-07 07:23:41', '2028-08-07 10:53:41'),
('e560f6941262cfa6716c907fd2589fffda7ef30a9ea59cb270b76a3b2a06e7aa18edfeb57c97313a', 1, 1, 'personalToken', '[]', 1, '2023-03-16 09:39:01', '2023-03-16 09:39:01', '2028-03-16 13:09:01'),
('e59a9cf4b308f50abfe1f886d2672492b00de2d1480b4b7ec6115f69ae61de510204c62bd91bcc13', 1, 1, 'personalToken', '[]', 1, '2023-06-14 10:15:16', '2023-06-14 10:15:16', '2023-06-14 14:45:16'),
('e5dfd9502c4e25944787e23003f5259be89c185754cec8142af0c058ca4c189e66e9a6660c29b799', 1, 1, 'personalToken', '[]', 1, '2022-07-25 03:45:00', '2022-07-25 03:45:00', '2022-07-25 09:15:00'),
('e64b6d5b2f57bc83fa22db94130be02b18ab3aa28574f19eb2ebc01ab1a63b2e3a6911ad736a8db7', 1, 1, 'personalToken', '[]', 1, '2022-12-06 12:15:30', '2022-12-06 12:15:30', '2027-12-06 15:45:30'),
('e652200e96442d884922b531d25556dd5da25e748ce097904e287f41b4a9b592313f401d8429180f', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:25:17', '2023-11-17 15:25:17', '2023-11-17 19:55:17'),
('e66e5770a2f10b2bacdefb2fb83fa4b82d7f71c55c5dbcb5d957b71246f2ae8311be72e17013c526', 1, 1, 'personalToken', '[]', 0, '2022-08-23 01:44:55', '2022-08-23 01:44:55', '2022-08-23 07:14:55'),
('e696122fc38ab7a18f194f0dab02fd0895fa550425bbbb9c45b1f129360bd997f867ca1aef0c465a', 1, 1, 'personalToken', '[]', 1, '2022-11-28 16:47:48', '2022-11-28 16:47:48', '2027-11-28 20:17:48'),
('e6eb09b416952504c2bcf4661e96f457bac249f9f658004546a922c2d054da4d292b28ae097aa907', 1, 1, 'personalToken', '[]', 0, '2022-12-06 06:58:33', '2022-12-06 06:58:33', '2022-12-06 11:28:33'),
('e71162098db0984f7b89464fd3b04884731210821b97a7050f5b49efde1fae325a9338f1888bde04', 34, 1, 'personalToken', '[]', 0, '2023-06-21 06:43:48', '2023-06-21 06:43:48', '2023-06-21 11:13:48'),
('e739b18f64afc5c49a0b6e007094dbe340531be07f7d6ec9e29e6e56e0f31420938aaaa8f68bedee', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:57:47', '2023-04-08 15:57:47', '2023-04-08 20:27:47'),
('e78c5a3ec5450bdd7f46a2676d9338e7545eb4a1eaa0d8f80c78cf96e3fd6c0116194075a7e64b7f', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:33:59', '2023-01-19 13:33:59', '2028-01-19 17:03:59'),
('e7978591d3abf5a6ee6d88120705352f07bac13606e331514df33bd4d41809214c7047bba2961b29', 1, 1, 'personalToken', '[]', 0, '2023-02-06 06:26:52', '2023-02-06 06:26:52', '2023-02-06 10:56:52'),
('e7a904ec87f773c5fadefca450b57f201b956c14d99a57c5657ca78d358c336ec865acbe6cd2fd1b', 1, 1, 'personalToken', '[]', 0, '2023-06-21 04:21:34', '2023-06-21 04:21:34', '2028-06-21 07:51:34'),
('e7bd47e9d8761f3dbc5463c91f0314216aca8aae7b93fccc75be3c59e428df72117a5645c5397692', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:23:16', '2023-04-12 16:23:16', '2023-04-12 20:53:16'),
('e7c4add6514694559ec6056440242251a6e9d0f92295abe94ab1cf8a34ecd19561a9c4691adb6d1c', 34, 1, 'personalToken', '[]', 0, '2023-07-18 06:11:39', '2023-07-18 06:11:39', '2023-07-18 10:41:39'),
('e7d4cde5e9ab8b85ce8fe26a542f07c85d7914139abebcf61f7d1d29380f8fde3e3529915dfe7539', 1, 1, 'personalToken', '[]', 0, '2022-12-12 17:52:32', '2022-12-12 17:52:32', '2027-12-12 21:22:32'),
('e83be58112bd7dcce690aaf25a65efec1c19b2106f052d95f95cd47a758cc5bb953cabe1e5d64d07', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:47:57', '2023-04-12 16:47:57', '2023-04-12 21:17:57'),
('e8659a8c28c010565b1f383691730cde8f77134614838cb6de9ea01a58e822d2a2bdbda4f2a1d40b', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:05:38', '2022-08-28 03:05:38', '2022-08-28 08:35:38'),
('e88d8a94e23c0dad47c04addf17b53361fe0c752f1581a6bb006a7e7ed0d9c87c21d9a8d50975f66', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:23:58', '2023-04-11 08:23:58', '2023-04-11 12:53:58'),
('e8e91e84db3739a52fef4b26e71e5e4c85ec7114342ae4bce1568794a8c01b3215718d9099665eae', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:40:14', '2022-07-12 04:40:14', '2022-07-12 10:10:14'),
('e904e3516c683a7adb719b3e95c96d38e267529be53da95c28c6881fdc495df6ae3cebcd77bb807a', 1, 1, 'personalToken', '[]', 1, '2022-10-29 04:57:40', '2022-10-29 04:57:40', '2022-10-29 09:27:40'),
('e9160192a0f30f2c731d6b5d316dea76d358caad2c559c8e2f2a63022e66a8b074c5db68628fa618', 1, 1, 'personalToken', '[]', 0, '2022-12-30 04:11:43', '2022-12-30 04:11:43', '2022-12-30 08:41:43'),
('e921cfb4947cc5b4b2f5f14b988d8b4f848f3af3fcb58b07edca9d8b32daa2a191b0c89b10363190', 1, 1, 'personalToken', '[]', 1, '2022-10-29 05:00:48', '2022-10-29 05:00:48', '2022-10-29 09:30:48'),
('e94a4d420bfaf499c44575b4a2f587e878b8cb0ce8798d240ec6f10b09fde7cf86133f32045c39a8', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:22:56', '2023-08-01 04:22:56', '2028-08-01 07:52:56'),
('e95eba5559bc548f694317487025d546de93a4d4d32e144a3a65b5edc45d3f72ff3ef980da5bf86d', 1, 1, 'personalToken', '[]', 1, '2023-08-07 06:12:36', '2023-08-07 06:12:36', '2023-08-07 10:42:36'),
('e9604e21a9de1c1e7c389d03bbf51ff8c9196aac3de6c413ff7a0d073265c6f1b75fd5a8eea10ebb', 1, 1, 'personalToken', '[]', 0, '2023-04-27 04:59:53', '2023-04-27 04:59:53', '2023-04-27 09:29:54'),
('e97b1481338d1267c75fa418d4f577321f5d9ca4aae921bdb871a25191d2620bcf81d5f73de92228', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:53:02', '2023-01-21 05:53:02', '2023-01-21 10:23:02'),
('e9875178005f9bc41a4b4aefdf3fec248fca20fb4006181c5c779608756719c5ef9d9454994e7be5', 1, 1, 'personalToken', '[]', 0, '2023-12-08 18:22:30', '2023-12-08 18:22:30', '2028-12-08 21:52:30'),
('e9a56957e7ae98333c449677644692a9d465da87675fa302fd57a233ac7cc94adc2184c9ea2719fa', 1, 1, 'personalToken', '[]', 0, '2022-12-26 02:51:52', '2022-12-26 02:51:52', '2022-12-26 07:21:52'),
('e9c293834427ea79752f535b379c3eb6fe33e5a50f611a2d51d6774ae9bd14b90ca7434ec4e22f23', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:58:53', '2022-08-28 02:58:53', '2022-08-28 08:28:53'),
('e9d5e1a77963e91993dd15f574adf41e3d75af8927cca4e222d08e66186bfe2040aa533b94fa3576', 1, 1, 'personalToken', '[]', 0, '2023-05-21 08:33:43', '2023-05-21 08:33:43', '2023-05-21 13:03:43'),
('e9fc020a2930b882c33b3dd262ea4c2b8aed5f8f46d99489d815fc6eb02e61c948c37b341807d7fb', 1, 1, 'personalToken', '[]', 0, '2022-10-31 11:59:09', '2022-10-31 11:59:09', '2027-10-31 15:29:09'),
('e9fd5f524a47adfc08699391addbcad27a771da4ecd7ed4542f5223c2e4c147024551e6e812caa03', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:57:07', '2022-08-28 02:57:07', '2022-08-28 08:27:07'),
('e9fde4dc312bdad9a91659ced946435dfd2036a068c7acd8227ab6a890aeb4376478539c8987a483', 1, 1, 'personalToken', '[]', 0, '2023-01-10 16:17:46', '2023-01-10 16:17:46', '2028-01-10 19:47:46'),
('ea0380f9f9500987b05f91518ba02454ccaba56e1d377a78418be520604ad5f47da494105b71bd3a', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:10:40', '2023-09-27 13:10:40', '2023-09-27 17:40:40'),
('ea9725a082efcffe33cbe058265aa857aa908d3c1b14802e552e1dea369cc517058e3b22b50cc9b1', 1, 1, 'personalToken', '[]', 0, '2022-07-25 08:06:10', '2022-07-25 08:06:10', '2022-07-25 13:36:10'),
('ea9e5fac1d446acc0f48db235cc0becf551d1d34eeb440341e1c111a7004a3ee8847cc2dde2e7f58', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:49:28', '2023-05-16 03:49:28', '2023-05-16 08:19:28'),
('eae15f9a3541565ec40c73e58026856ff75b51a4418fba4fca05bf3f31f6d8dee896024adcaa47a3', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:49:39', '2023-11-17 14:49:39', '2023-11-17 19:19:39'),
('eb00decb3a35017365f12c335cc653c66bffe4d0ebdb550beb67c1d2c6ffc4728f4e82e3ccf5e391', 1, 1, 'personalToken', '[]', 0, '2023-01-30 04:14:26', '2023-01-30 04:14:26', '2023-01-30 08:44:26'),
('eb089dae32b4f79d175cb4b5a2d0670bd89dfa727443c7b815d39f8e2cbad52353ae077b6cc40e98', 1, 1, 'personalToken', '[]', 1, '2022-11-27 17:24:56', '2022-11-27 17:24:56', '2027-11-27 20:54:56'),
('eb0dfbcfa228d44aba7e92cdd9f566afff84c1a0da35f292a87fa50f4c5390f1f97ef102cf20d6e3', 1, 1, 'personalToken', '[]', 1, '2023-02-13 17:51:16', '2023-02-13 17:51:16', '2023-02-13 22:21:16'),
('eb2dc89289bf2bbdf147e1ee0bf99d5ff4c8a707149b9ffc3cfe8a9345f64bc7c0a4829251261bda', 1, 1, 'personalToken', '[]', 1, '2022-08-03 11:54:30', '2022-08-03 11:54:30', '2022-08-03 17:24:30'),
('eb39568b9877e44e37f496d863bcbfa2ced4ffd0072ff226f95b3ebb57fafa62d3baa5231d5b5c45', 1, 1, 'personalToken', '[]', 1, '2023-06-21 04:24:16', '2023-06-21 04:24:16', '2028-06-21 07:54:16'),
('eb58924a394be306e036fb27d79b54b9bb94b2914b147133aad792075ec715bacadf684927cf7982', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:13:42', '2023-06-21 05:13:42', '2023-06-21 09:43:42'),
('eb6d08d2b511f6e54c64ad80f8ed39570008bc779b26c273fe3d157f535e8b2da1dd82de7b3462d7', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:16:22', '2022-07-12 05:16:22', '2022-07-12 10:46:22'),
('eb6f4e6359f9c19935fbe3c7adbc54a9d1bd53fd921c56fe6122a896bcace81ffdc30b0bf56a2f07', 1, 1, 'personalToken', '[]', 0, '2022-10-14 14:33:49', '2022-10-14 14:33:49', '2022-10-14 19:03:49'),
('eb96f9b86c9a5d0c00d594083ec15a94b89a366c30935163c5b684a9e5a82096d2fe6849ed7b226a', 1, 1, 'personalToken', '[]', 1, '2022-08-03 05:34:52', '2022-08-03 05:34:52', '2022-08-03 11:04:52'),
('eba0c22dd4df3dda47bdaefea87c30aa42e85440af688353e724407f4865c6ea7338c1aea0bd67e9', 1, 1, 'personalToken', '[]', 0, '2022-07-06 04:57:43', '2022-07-06 04:57:43', '2022-07-06 10:27:43'),
('eba2d941d8e3910a8804b77b079909d9de74df231e99c1fdf96ddb7011fd314c71a21c07d0026a53', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:55:49', '2023-11-17 15:55:49', '2023-11-17 20:25:49'),
('ebe41e7d31a76fabbe05c66104168bd9136156373ddcf3edb2a9a7a217c24e4ae2a777eb0a47c883', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:20:24', '2022-07-25 07:20:24', '2027-07-25 11:50:24'),
('ebeae880492abf8fbe301b52738b650fe89faf5d65499cc15c9402c60db286025b023ab58ddf8e41', 1, 1, 'personalToken', '[]', 0, '2023-07-08 12:12:10', '2023-07-08 12:12:10', '2028-07-08 15:42:10'),
('ebef28e5f5c4bd1b2759ae36a215edc5f5e2bb42c0ed27aad5b29f223248f1dacaa38accd021aaa9', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:21:29', '2022-07-25 07:21:29', '2027-07-25 11:51:29'),
('ebff657ffd51f636ae91d2a4a1ae54202ecaa9e6fce46d099e9a88f8e78494e1da339a42964afa46', 1, 1, 'personalToken', '[]', 0, '2022-09-25 02:30:01', '2022-09-25 02:30:01', '2027-09-25 06:00:02'),
('ec40152fffe4fc50d93bf345277b95d02d00b9214e4e1f82e4906d248e7d96faf266b2c4b48a7477', 1, 1, 'personalToken', '[]', 1, '2022-11-27 16:54:17', '2022-11-27 16:54:17', '2027-11-27 20:24:17'),
('ec62069c5d699247eca878aab801b2ff8d363561de020ce9a8f270815b143b9be5600d9d4d5882f9', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:13:15', '2022-12-16 05:13:15', '2022-12-16 09:43:15'),
('ec75fce80ac0ab150c50d1fa20aa6e9716138cfed9926fc0df33b12f4231736ba1550f2fea6ab358', 1, 1, 'personalToken', '[]', 1, '2023-04-09 07:35:33', '2023-04-09 07:35:33', '2023-04-09 12:05:33'),
('ecd4b09773a99d47ad70015f3f51635c7723da6e2c84b366797958a2acde29abd2a2af28ed7e9844', 1, 1, 'personalToken', '[]', 0, '2023-09-07 14:37:58', '2023-09-07 14:37:58', '2028-09-07 18:07:58'),
('ece3972731140e7d54144c7d5650ad48dbebbcfd8b78631ccb07a8655f5a912c2da6d6b8dfd9458b', 1, 1, 'personalToken', '[]', 0, '2022-07-17 14:57:56', '2022-07-17 14:57:56', '2022-07-17 20:27:56'),
('ed05d0167896075f9bd0a497fa9e906ed9aef64e77ccb317f6a7f7073f60aa5c8cb88501a3459994', 1, 1, 'personalToken', '[]', 0, '2022-07-25 03:50:04', '2022-07-25 03:50:04', '2022-07-25 09:20:04'),
('ed30d738ef7bb35d3b5e182054d2f1543a3b8930f0c60f4bb895a016a7914b7bcb3b6b8574468741', 1, 1, 'personalToken', '[]', 1, '2023-06-21 03:50:10', '2023-06-21 03:50:10', '2028-06-21 07:20:10'),
('ed469ec5dfcaa69f3781121f871e73e5d778b9aab82876babd1aa294299dcf8698944201ec671e95', 1, 1, 'personalToken', '[]', 1, '2023-01-21 05:47:58', '2023-01-21 05:47:58', '2023-01-21 10:17:58'),
('ed62f39453580477c60ab7bf0929239af96877b63720d8d5cc6206098129daf08db7375130fb045b', 1, 1, 'personalToken', '[]', 0, '2022-12-06 07:07:38', '2022-12-06 07:07:38', '2022-12-06 11:37:38'),
('ed9e0958a548253a11afcf6f05baa29ef2d71b96bdb5c8cf671777d25056c41930317cb4e908c258', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:09:53', '2023-04-08 15:09:53', '2023-04-08 19:39:53'),
('edabb21de6eed2e7aadd3b538bfa0cbff7fb3e600ae7e36eb9fec80f881fbaca8a67f4087c65b38f', 1, 1, 'personalToken', '[]', 1, '2023-05-24 05:24:01', '2023-05-24 05:24:01', '2023-05-24 09:54:01'),
('edbc916389566c3372e6e36e9de528064000239abaf4dff4662febdc1b047e2e39e54b9e96d62cc9', 1, 1, 'personalToken', '[]', 1, '2022-09-15 09:52:52', '2022-09-15 09:52:52', '2027-09-15 14:22:52'),
('edd745b37ade635fed45f2c60d4d64706245fb5e387fa7d4ae6b3b71304bcce0214e6d75e47f70bd', 1, 1, 'personalToken', '[]', 1, '2022-08-25 07:21:14', '2022-08-25 07:21:14', '2027-08-25 11:51:14'),
('ede9dc2ca1829a21853a411a114b087987e6ee457eaef00c31c5f434b3f2b1c716806e7517fd92e6', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:02:56', '2022-10-24 03:02:56', '2027-10-24 06:32:56'),
('edf9b2bd7fb76f8bca72d0576f04958db38a2f192c2953e6240f148eb8e024ea0e598134e456ede2', 1, 1, 'personalToken', '[]', 0, '2023-12-13 11:48:28', '2023-12-13 11:48:28', '2028-12-13 15:18:28'),
('edfc4321062ede631bb9275d8ffcbee8d48d8a8ae051f03fe0abaf03bdb5e9590e7c2a8bb08266a5', 1, 1, 'personalToken', '[]', 0, '2023-08-07 06:23:02', '2023-08-07 06:23:02', '2023-08-07 10:53:02'),
('ee051482277285fb7397992287c4a60f098165e8196cfac933c87546189f03899378d0d1dedbca81', 1, 1, 'personalToken', '[]', 0, '2023-04-23 08:09:12', '2023-04-23 08:09:12', '2028-04-23 11:39:12'),
('ee2397ad9de02e46dcde31c238f6600556360cd06caad8ef7de96edef765876045eeb8e954c9e608', 1, 1, 'personalToken', '[]', 0, '2023-07-11 06:09:53', '2023-07-11 06:09:53', '2028-07-11 09:39:53'),
('ee25d5c9209d7da776bd077c5063fcd76990e10e5345fe8d701490e23188720c078bc259ef0f650e', 1, 1, 'personalToken', '[]', 0, '2022-07-15 15:02:55', '2022-07-15 15:02:55', '2027-07-15 19:32:56'),
('ee26f5effbcbf0ddc5cac9020f6c58b9871218cec6a8fdde7515dedaecce43e2eca8d259ff695ea8', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:41:46', '2022-11-20 08:41:46', '2022-11-20 13:11:46'),
('ee2a1ee03394942c65b1eadd3ea4882c58c43a0a03c4b207fc8f61d2e0bb62d4a9df4bb3a6d81113', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:58:36', '2023-08-12 07:58:36', '2023-08-12 12:28:37'),
('ee322e6d8131661d7a82096d777ec4a1760b27b155f4ef6bc08796326dcd460672cf5be6d3e7c2ec', 1, 1, 'personalToken', '[]', 0, '2023-09-11 06:31:32', '2023-09-11 06:31:32', '2028-09-11 10:01:32'),
('ee42502fff2ae97b0b5dd539bb208dbcc9a0066b43706cde336e774b6de3a2729ba345bea7de9558', 1, 1, 'personalToken', '[]', 0, '2023-07-05 13:51:43', '2023-07-05 13:51:43', '2023-07-05 18:21:44'),
('eea3b94b87487c0bb1002fe8c199fe744044ac594ed0dab634bf8a1e30655043595eb04cb68eb537', 1, 1, 'personalToken', '[]', 0, '2023-04-08 17:46:01', '2023-04-08 17:46:01', '2023-04-08 22:16:01'),
('eecfd81561448ff0745101b9dbafc589bd01dde1639ddba0dc97abff54cb8ef2e05335422858c65a', 1, 1, 'personalToken', '[]', 0, '2023-08-07 08:09:48', '2023-08-07 08:09:48', '2028-08-07 11:39:48'),
('eedd18c282ef51192f7688a6cd294885ab5564260035bfb9207d085da857f4583f03581f2ee50382', 1, 1, 'personalToken', '[]', 0, '2023-02-03 10:02:10', '2023-02-03 10:02:10', '2023-02-03 14:32:10'),
('ef1696bc7ab3beb960504eeddd5fe3a9a1d5cc670cdff7ca419838cbb466305f54aa3e155fb9ef0e', 1, 1, 'personalToken', '[]', 0, '2023-08-20 08:49:36', '2023-08-20 08:49:36', '2028-08-20 12:19:36'),
('ef236b7a6cd0dd00d1265ddeb929ec8500c19a49d92d63cc1fb2818adcc0369d982b7967a28d97d3', 1, 1, 'personalToken', '[]', 1, '2022-12-16 02:57:28', '2022-12-16 02:57:28', '2022-12-16 07:27:28'),
('ef61f68f5e54ce3af8e27809873f40c2164555ea57c80a0c9486bf1a32a7d05b1916421ab82f90f8', 1, 1, 'personalToken', '[]', 0, '2023-07-10 13:03:55', '2023-07-10 13:03:55', '2023-07-10 17:33:55'),
('ef7a0405c9b62eafda16a0c238986b4380e718d83dac72fde686e366d7c05563c782ed8a08b9985d', 1, 1, 'personalToken', '[]', 1, '2023-01-28 14:26:19', '2023-01-28 14:26:19', '2028-01-28 17:56:19'),
('ef962ba1ec20abba5d5ad732d9f5169fb47ed1b3c58fd96d8f145aa332477e08fb32ebf867dace1c', 1, 1, 'personalToken', '[]', 0, '2023-11-22 07:55:55', '2023-11-22 07:55:55', '2023-11-22 12:25:55'),
('ef9e88bc588887927cc71e05e11e8d85c97f262212aa7ced80081f41d7eb8c67d736adb8e757e882', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:35:39', '2022-07-12 04:35:39', '2022-07-12 10:05:39'),
('efa0a91af2fd045d27080e071ee11feab7eb07b8415370352058c5914a52dc3e2e79eabcf7b39e54', 1, 1, 'personalToken', '[]', 0, '2023-08-09 04:34:50', '2023-08-09 04:34:50', '2023-08-09 09:04:51'),
('efebd51fe9bcf7a126afc345ae44a036701c99783d2178d91a55644f0578615fe78e2972683027bf', 1, 1, 'personalToken', '[]', 0, '2022-10-24 02:41:26', '2022-10-24 02:41:26', '2027-10-24 06:11:26'),
('f00c1bd2788f0f1df6098b3195ad4006195a011f94110fbdeaecfb596fd9811b74183f15aec45156', 1, 1, 'personalToken', '[]', 1, '2023-04-12 16:02:39', '2023-04-12 16:02:39', '2023-04-12 20:32:39'),
('f01ea2c6264427d9f1206ec3fdf1ddc8de01c94de72d21f7815c908f49b82d0945bc847ebda1c6ef', 1, 1, 'personalToken', '[]', 0, '2023-01-31 04:32:57', '2023-01-31 04:32:57', '2028-01-31 08:02:57'),
('f021c9d5e9c9e9b69e4713ecd8fb21a0dff80301d05d92153501cfb2a2ac97d56df96d5d4488bb63', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:16:08', '2022-07-06 07:16:08', '2027-07-06 11:46:08'),
('f02bcf9e3a7f4cd733164f1e2d4a5d06267d78a08b40daf3f94d214635dc617c75c2dc5dd600af7b', 34, 1, 'personalToken', '[]', 0, '2023-06-21 08:35:25', '2023-06-21 08:35:25', '2023-06-21 13:05:26'),
('f04841122e88cca95da9fe9c6692e6a52870e7f876d6baf7b267f597fa870f35145c8e8621a5cc31', 1, 1, 'personalToken', '[]', 0, '2022-11-12 01:17:20', '2022-11-12 01:17:20', '2027-11-12 04:47:20'),
('f053a00cef7c0468d1ba6f624a17d36f4fd7fa026d6e07d883d40c2954e90a83d8529dec6fb3adca', 1, 1, 'personalToken', '[]', 1, '2022-07-07 02:05:56', '2022-07-07 02:05:56', '2022-07-07 07:35:56'),
('f05925e3ef022cd458d05a71994b5d3068af93987183010c8dd5d1f81d212d90803bd2ec63c9bbaf', 1, 1, 'personalToken', '[]', 0, '2023-03-08 16:54:40', '2023-03-08 16:54:40', '2028-03-08 20:24:40'),
('f06140a8282dfe652c403e93b88e65cb5fd8afd16cddd6860ca13dd8d39b141162278f553bff0615', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:12:46', '2022-07-13 03:12:46', '2022-07-13 08:42:46'),
('f06404cae20b368786e4d0be21b5899e828eb11fdec28bdf90133349a0edffc35d5b82552c443bcf', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:00:37', '2022-08-03 06:00:37', '2022-08-03 11:30:37'),
('f067bc7a04a7a2d087ea755115f0ebd8e34e4f92cb25e91453cf8f62658d497225c77ea39904a342', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:27:35', '2023-11-17 15:27:35', '2023-11-17 19:57:35'),
('f06fc95a89ed61461bef106dbcce356de740ced9873c5a3d618282a82d47211f6fb6fb47d683a67c', 1, 1, 'personalToken', '[]', 0, '2023-08-08 08:41:24', '2023-08-08 08:41:24', '2023-08-08 13:11:24'),
('f08431d2ebb58305a55f8ae49ced4512e7410652100fe8eb8229db51af999da1618d150200d2b0aa', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:47:56', '2023-11-17 15:47:56', '2023-11-17 20:17:56'),
('f1208762fe9a0d20062d10d25c7778625c444ea89888ee5b7943e6e5ec6d3a03809667b25eac8025', 1, 1, 'personalToken', '[]', 0, '2022-12-25 08:29:26', '2022-12-25 08:29:26', '2022-12-25 12:59:27'),
('f1213e1b66b45468cff6ccfa8910114a20eafdb31683c55f24a777a0a49297c2eff3fffcb9dfff57', 1, 1, 'personalToken', '[]', 0, '2023-08-07 06:48:54', '2023-08-07 06:48:54', '2028-08-07 10:18:54');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f124eae4240199688be00c336ce549f9c1e1e35490dd9eb38695c37fda6cd30273d14bc17a679a09', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:39:03', '2023-02-05 17:39:03', '2023-02-05 22:09:03'),
('f12a4d483f62210358d1147f6b1b96fa6758fa037875ed44fd078bfa09af24c5ba0d3be59ecf521f', 1, 1, 'personalToken', '[]', 0, '2023-05-08 10:55:22', '2023-05-08 10:55:22', '2028-05-08 14:25:22'),
('f14185499efb1dd68f48c842f4e59556a4facd89b41a327a0387bda78581e919fcfa40157010822d', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:19:19', '2023-09-27 12:19:19', '2028-09-27 15:49:19'),
('f14a881d13659bedd92a113b9b9e6b7c821cd6073ab9737e196ab9038f110cda182de3864ab824df', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:00:52', '2023-04-11 08:00:52', '2023-04-11 12:30:52'),
('f1754c0987c6a2652383a2904a7072ac1d63c0b0dd6bf71a42676805e2e7f89330e09c82e567ff49', 1, 1, 'personalToken', '[]', 0, '2023-05-27 15:40:37', '2023-05-27 15:40:37', '2028-05-27 19:10:37'),
('f17ac96e25778983071aff20ad7bfb6fd439eefa7242948c9a39f06d110f097119ef3da0a01f9952', 1, 1, 'personalToken', '[]', 0, '2023-01-19 13:30:16', '2023-01-19 13:30:16', '2028-01-19 17:00:16'),
('f17d2e4b2fb0ee920469231576799e0d15e64c3058bc9b0e8ee3097034a59b5722fccbdacbdeaf09', 1, 1, 'personalToken', '[]', 0, '2023-08-14 03:29:06', '2023-08-14 03:29:06', '2023-08-14 07:59:06'),
('f1823a6f86229bf44afac25fd9c957387d654043c6d179cf26be6a420f825ca9f0fe0a7418813722', 1, 1, 'personalToken', '[]', 0, '2023-06-20 07:27:40', '2023-06-20 07:27:40', '2028-06-20 10:57:40'),
('f18bb3697a408b98ccb0efb436f73afabaac81fa7745e412958180d1f39886bb54c73ee51da93f98', 1, 1, 'personalToken', '[]', 0, '2022-12-12 16:24:24', '2022-12-12 16:24:24', '2022-12-12 20:54:24'),
('f197ae28784967ad3398e8b26642fc50c0735123a37245835563f5f076985778d8b3c7e8c9fe63fe', 19, 1, 'personalToken', '[]', 1, '2023-02-13 17:53:19', '2023-02-13 17:53:19', '2023-02-13 22:23:19'),
('f19e0a75799c8c64626b7e5dde44ecc9cfe5046913e395ea54ae1d5a3946c48019b831d736ae0d79', 1, 1, 'personalToken', '[]', 0, '2023-04-11 17:20:13', '2023-04-11 17:20:13', '2023-04-11 21:50:13'),
('f1cb9af9ad3a442b960d0157ac273abb027ce6467a66541b9da4692fefc0bbeeefb4a919a6ed35f1', 1, 1, 'personalToken', '[]', 0, '2022-09-23 09:14:12', '2022-09-23 09:14:12', '2022-09-23 13:44:12'),
('f1e36f3a831fb96357b878325e6405de93f9619770a3f88a470ba078044e48b709f9c4934ce37b7f', 1, 1, 'personalToken', '[]', 0, '2023-05-28 06:14:00', '2023-05-28 06:14:00', '2028-05-28 09:44:00'),
('f20ed03929e68d68c90b52b55d51250e3b801d32ebbe1e1abfd9e54c9f23a075211149338de85126', 1, 1, 'personalToken', '[]', 0, '2022-08-03 12:10:38', '2022-08-03 12:10:38', '2027-08-03 16:40:38'),
('f21f3ed83c84e451dd62250ace9dd618f023368d59f6aa9e0d074522021e509352dd2de9ef3da92e', 1, 1, 'personalToken', '[]', 0, '2022-08-28 02:53:15', '2022-08-28 02:53:15', '2027-08-28 07:23:15'),
('f2364a4d331a6538b96fc2098f1f7dfd8d4e0760c2b7f32ad1e14365940d72c36f78ba52e1f97fc7', 1, 1, 'personalToken', '[]', 1, '2023-04-07 03:36:47', '2023-04-07 03:36:47', '2028-04-07 07:06:47'),
('f238a3d28c6e577420f510bc61d37a4ab1b10f2c7a47a22b72799fc386067344a6cd5bd5671476de', 1, 1, 'personalToken', '[]', 0, '2023-06-18 08:40:29', '2023-06-18 08:40:29', '2023-06-18 13:10:29'),
('f2797cb52f94a14b9d107e1c4c8901053954fc39000f6f1496ac08530c47dc5ee7ab8f5d1a6167d5', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('f2a2139b3e5f49e4526a31b3f7a4d8f5a070695e656a8d808bf6253cee383d5e9ad117c6f0ad4aeb', 1, 1, 'personalToken', '[]', 1, '2022-08-03 05:34:27', '2022-08-03 05:34:27', '2022-08-03 11:04:27'),
('f2d729fb767b8c980a2a2f92012bed361aa1c798ddbbecb91238eb694f093c854d169af5a60f7bc4', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:31:33', '2023-05-16 03:31:33', '2023-05-16 08:01:33'),
('f340f07765e75d699976dba661ba462fcdd1d99bd7761dcc3d43ba71fb17b7fa60839d5e21c09e49', 1, 1, 'personalToken', '[]', 0, '2023-08-01 04:31:19', '2023-08-01 04:31:19', '2028-08-01 08:01:19'),
('f37587167957528ff7c5eea74066f74e7043c3bb15ceab728073cd6e254cbfc0eff622279575c031', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:31:40', '2023-06-30 07:31:40', '2023-06-30 12:01:40'),
('f39d8e83c6b5664b266c00f63e0649f96c1009b8b2e6cebe65e8e3c0e365c451af1e3e2f0b43cd27', 1, 1, 'personalToken', '[]', 1, '2023-02-10 02:50:40', '2023-02-10 02:50:40', '2023-02-10 07:20:40'),
('f39db04f28cfb84af6bbc7185acd608dd5e1f983d584fec245c42d7d1eb05e70133caf4231131f0c', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:19:56', '2022-12-06 11:19:56', '2022-12-06 15:49:56'),
('f3a71eaaa8719f45651825b1d9414d0c5726a9f69f3955a749732610705700a3932319ef77671059', 2, 1, 'personalToken', '[]', 1, '2022-09-29 17:29:54', '2022-09-29 17:29:54', '2022-09-29 21:59:54'),
('f3dd88b4a15a73f568122dc52997e947302087cf06e49d40fea1f08c106d053181b57fe537da999a', 1, 1, 'personalToken', '[]', 1, '2022-11-03 10:59:27', '2022-11-03 10:59:27', '2027-11-03 14:29:27'),
('f3e1c4b57b4d7e7588acf7c0227cd14a16996c3936c7eb33134ce103cc18b567075a4c0f4055d3a8', 1, 1, 'personalToken', '[]', 0, '2023-01-06 05:53:21', '2023-01-06 05:53:21', '2028-01-06 09:23:21'),
('f3e53113a4fe4cde45ff67c24f4413838c43e6594ded12156f744069e6a2c9bc84aae7840c5b42e5', 1, 1, 'personalToken', '[]', 0, '2023-02-07 17:37:13', '2023-02-07 17:37:13', '2023-02-07 22:07:13'),
('f3f17e53f4c127b8f84755580989f2fbd1effba2e7a77863f112e723b52808861708a444bcab706e', 1, 1, 'personalToken', '[]', 0, '2023-05-13 12:37:01', '2023-05-13 12:37:01', '2028-05-13 16:07:01'),
('f3f5d9c769c6a5b81ebb056c40a7c44a445dd8285e1fe9c6077084a5ebee02d7f3cdfa748b1fcbac', 34, 1, 'personalToken', '[]', 0, '2023-06-21 09:44:29', '2023-06-21 09:44:29', '2023-06-21 14:14:29'),
('f3f74aa20efd73364f11316316f56e1069897c2ade75883615673883849a8bf74dac95b53b22ff73', 1, 1, 'personalToken', '[]', 0, '2023-07-18 08:29:39', '2023-07-18 08:29:39', '2023-07-18 12:59:39'),
('f4192be2217baf2fa3272fb34508993fa36eb2307f25d54731ed913b8d83e2539729fc1dd7db2e7b', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:41:13', '2022-07-06 03:41:13', '2022-07-06 09:11:13'),
('f433d4101feef242a97c3e5fda48cce8b35ef39c08d298baf56c45aff638a5e19b7548d84e3fa492', 1, 1, 'personalToken', '[]', 1, '2023-12-07 06:04:54', '2023-12-07 06:04:54', '2023-12-07 10:34:54'),
('f43f70d5f4e859865b92a65a6e60cd0190559b28e7d8c67ed489c979515880e545b3f226a23e9381', 1, 1, 'personalToken', '[]', 0, '2023-05-16 03:46:42', '2023-05-16 03:46:42', '2023-05-16 08:16:42'),
('f474abf5133672669d8a4bd62042ad3c0a1fbeee94911f8e6ef0c2e29703c0013d4be95e2ecb2544', 1, 1, 'personalToken', '[]', 0, '2023-11-17 14:47:52', '2023-11-17 14:47:52', '2023-11-17 19:17:52'),
('f49b13017f5e5bb39c18ba201d1f9ad1e98401ff44591fb2e4c58f41110acfe95aecf00328add5d5', 1, 1, 'personalToken', '[]', 0, '2023-04-11 08:07:30', '2023-04-11 08:07:30', '2023-04-11 12:37:30'),
('f4c7f64a9c14b00f5061282a800513d6a10c20d9e28281759d7cd0929d9313a9f27a2240252f4fca', 1, 1, 'personalToken', '[]', 0, '2023-07-10 11:11:30', '2023-07-10 11:11:30', '2023-07-10 15:41:30'),
('f4cdcf9169392292fa99eb6a0a223253fbe1d6f25f835c8c4aa1e6a31233b60b863a5fbc83cc12f2', 1, 1, 'personalToken', '[]', 0, '2023-12-11 05:17:56', '2023-12-11 05:17:56', '2023-12-11 09:47:56'),
('f4d8c7ce1077b6dbf08744275f491f3dfc042a57cf23ee3155b903f28cd66df532df754e8b85802e', 1, 1, 'personalToken', '[]', 0, '2023-01-06 13:04:20', '2023-01-06 13:04:20', '2023-01-06 17:34:20'),
('f5157da737e71e583b6186d6b9c80a6d676c111a149a81e1a002c07cee76b0bde7045957d75b1c1f', 1, 1, 'personalToken', '[]', 0, '2022-08-24 02:49:44', '2022-08-24 02:49:44', '2022-08-24 08:19:44'),
('f517814fce4119ce2e3f62e7769af3723c51481337d9adebe7811bcfaacb18e8fc5cc1f73a3d2006', 1, 1, 'personalToken', '[]', 0, '2023-05-23 13:46:43', '2023-05-23 13:46:43', '2028-05-23 17:16:43'),
('f51c01504b9d52c2733046082b146f5aaab56aca807880d0b8b4c3d9324d814d7b1de6b726400f06', 1, 1, 'personalToken', '[]', 1, '2023-01-20 11:38:10', '2023-01-20 11:38:10', '2023-01-20 16:08:10'),
('f51dc16fa5f2fdccc035e2ba7e0cf6a05157ab650c63cd9b7fc6f1aa1edf3f45a34536a999f970f9', 34, 1, 'personalToken', '[]', 1, '2023-06-20 05:23:41', '2023-06-20 05:23:41', '2028-06-20 08:53:41'),
('f522e311e98929942c97b0e3854de26a4a3de59fc71cf0a0292e80f481a73ede0ed4ae9e9f7c5374', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:21:39', '2023-09-27 12:21:39', '2028-09-27 15:51:39'),
('f571dfa414111afdfe7fd3281dc5d7291c8ff36ffdecad18a42c7d7dab41b2890972c593a6ae27a5', 2, 1, 'personalToken', '[]', 1, '2022-09-29 17:36:38', '2022-09-29 17:36:38', '2022-09-29 22:06:38'),
('f5777678b6169fbfce3c42f27cf817f923bd53dcf91214087ff549cf7f381a1d23d97828c2707cca', 1, 1, 'personalToken', '[]', 0, '2022-08-28 03:06:02', '2022-08-28 03:06:02', '2022-08-28 08:36:02'),
('f596f50e47d497677c9967e636f7e71ad529d31aaf929056a6af2d7cb382ac9870876973d149ab8a', 1, 1, 'personalToken', '[]', 0, '2023-04-29 04:51:10', '2023-04-29 04:51:10', '2023-04-29 09:21:10'),
('f5a54fc8c03c02894c12ac8e30949b16d5e03eeac8c92ac0b262d05dac420f9408c789b94e18492c', 1, 1, 'personalToken', '[]', 1, '2022-07-12 05:35:22', '2022-07-12 05:35:22', '2022-07-12 11:05:22'),
('f5ef112f882232978e1eeab7489d944bce3edebb8f60f315f9e2c639650b02e4b56f3744cfe31b8e', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:38:28', '2022-07-13 03:38:28', '2022-07-13 09:08:28'),
('f5f4c56c7e0ae8006352dd7ec480f60c9ab3b3587fb58ab0916c75e0985de91dc8ff407b71b1b747', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:04:02', '2023-06-21 05:04:02', '2023-06-21 09:34:02'),
('f601b286128dcc1947c7f976485b26fe79eca00775714bdfc5e9cf846d8ab55016165b0b6f2b4ee4', 1, 1, 'personalToken', '[]', 0, '2023-03-18 18:13:15', '2023-03-18 18:13:15', '2023-03-18 22:43:15'),
('f60d4e37c05578518e24d14ca6024403f7416df8676a2f81e94f11263347c6a99a2951b1e595e116', 1, 1, 'personalToken', '[]', 1, '2022-11-23 06:23:35', '2022-11-23 06:23:35', '2022-11-23 10:53:35'),
('f6118c56617a509f2d820784961ec9f838808ffb46967cee7ef747aafe49f57063f2a992e2aaacb7', 1, 1, 'personalToken', '[]', 1, '2023-04-07 03:56:51', '2023-04-07 03:56:51', '2028-04-07 07:26:51'),
('f61f76448c242a9eb25a7be62c59e1b412318c9a2be41fee85b24948e8f978cabf3cac02f4d46bcc', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:13:08', '2022-07-13 03:13:08', '2022-07-13 08:43:08'),
('f63a108860180c3ebbb74d7597546842ac1b8edddf36fd0881a5a4f2914a6d2c783a1f7ec7c5aa1c', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:32:36', '2022-07-12 04:32:36', '2022-07-12 10:02:36'),
('f678aa1041f096b8c6e98db8520250ef3842ead840b87ee15ce0ac7ee2686d730080518fc9f1212b', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:27:42', '2022-11-10 04:27:42', '2027-11-10 07:57:43'),
('f68b6a03814023b6730496e18c7c5013fa4a6498f09c6cc74ebea621a12df5f10658a2bee26e2386', 1, 1, 'personalToken', '[]', 1, '2022-07-12 08:55:51', '2022-07-12 08:55:51', '2022-07-12 14:25:51'),
('f690ae73344a7d13fbcf57b5647f6155be9e2a1443ee54579108030cd3aa00b93d433d25b32cb260', 1, 1, 'personalToken', '[]', 1, '2022-10-28 18:10:19', '2022-10-28 18:10:19', '2022-10-28 22:40:19'),
('f69dddd619108b1dae585c3d23a1c9aa733555a65ea643915d256967dd0ff97662c1ca400b9a18ee', 1, 1, 'personalToken', '[]', 1, '2023-09-23 09:37:51', '2023-09-23 09:37:51', '2028-09-23 13:07:51'),
('f6c74d8a4e068b8c6ad2b6c422c9758714cbc6db857b639b7b53bc76c8758203a62b1252a14903a0', 1, 1, 'personalToken', '[]', 0, '2022-07-19 05:02:54', '2022-07-19 05:02:54', '2022-07-19 10:32:54'),
('f6d65026d7050f81e7b66c7ffe458c2fd50601b74af15be8ef3d3710dc40993d1a49cff50b246cd7', 1, 1, 'personalToken', '[]', 0, '2023-03-07 07:14:23', '2023-03-07 07:14:23', '2028-03-07 10:44:23'),
('f6e4e621680e95abfb6e50d692cd2c48f71cf4c354a91894b3c7f8d94cddc454b1549a43d06feede', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:27:06', '2023-02-03 15:27:06', '2023-02-03 19:57:06'),
('f6e5281d6c0811b0d512186476501ef39ad0786c5c48aff67b9d3c6e77ee7522295bef28bec289b9', 1, 1, 'personalToken', '[]', 0, '2022-12-26 04:04:24', '2022-12-26 04:04:24', '2022-12-26 08:34:24'),
('f6e8ffa361c3382ced65c668d8d78287ac90f3cfb817dab76ccdfef61c114c1ac88be47a1b8a3c1d', 1, 1, 'personalToken', '[]', 1, '2023-02-17 01:24:07', '2023-02-17 01:24:07', '2023-02-17 05:54:07'),
('f6ed3d2409ee0b14ce09476a4e387be47974f67548b3e832ea01ce1e3552bfb14316fcb9665a1cf3', 1, 1, 'personalToken', '[]', 0, '2022-12-06 14:22:29', '2022-12-06 14:22:29', '2022-12-06 18:52:29'),
('f711355786062158f5e9986ec65a858956e834e14db8280e371ec4a9b93087e3e2423fe95695a096', 1, 1, 'personalToken', '[]', 0, '2022-12-26 08:18:35', '2022-12-26 08:18:35', '2022-12-26 12:48:35'),
('f71f2726b9de7491ba38de6396a56f0164b9fa2568a4a7c47370f1b17371754079379bae05ccc430', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:52:47', '2023-03-04 11:52:47', '2023-03-04 16:22:47'),
('f74f54827a2bef4a491e14426ec2aa201ad989b0a121589d7f6066203fc4bcc4f48a3274d84130d6', 34, 1, 'personalToken', '[]', 1, '2023-06-21 04:28:17', '2023-06-21 04:28:17', '2028-06-21 07:58:17'),
('f76c9b7a2fd9fc4c74c8d4d9e031378839220f9e171e82488ab0a668e6401ad8bbbcd3a1199362be', 1, 1, 'personalToken', '[]', 0, '2022-10-24 03:14:40', '2022-10-24 03:14:40', '2022-10-24 07:44:40'),
('f780655cf98372b26c9c5bb368bfd98c6e92e460ed90344393b60ce781754c4cea25f7802c7dcbf5', 1, 1, 'personalToken', '[]', 1, '2022-12-06 09:32:07', '2022-12-06 09:32:07', '2022-12-06 14:02:07'),
('f7a6768b72cd57f7e7698e9f897a48e9425fb94ee4b8432a0d459e5aadd5e621d2b91ea4aeb87812', 1, 1, 'personalToken', '[]', 0, '2023-02-10 04:24:03', '2023-02-10 04:24:03', '2023-02-10 08:54:03'),
('f7b4d735b03724a3034b2f5e90cda7ffab93ada1c78d9ae72f207d51e332bc707b2d81d91bfa3a67', 1, 1, 'personalToken', '[]', 0, '2023-05-08 01:53:50', '2023-05-08 01:53:50', '2023-05-08 06:23:50'),
('f817d63e4c920c6a42f553328f1050ff4e38dca995db48db9455ef062791273139003bdec0db8a3c', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:46:03', '2023-05-16 01:46:03', '2023-05-16 06:16:03'),
('f823a99bd0a36e7c099694dc0bf1b63a8640d1215e69ef473e5c3ecf1d314e8c9bd89d1198bcc1fc', 1, 1, 'personalToken', '[]', 0, '2023-09-18 02:38:07', '2023-09-18 02:38:07', '2028-09-18 06:08:07'),
('f82611bf272f1387596fb94c8cb62a2da84179099154c4514ceac18891c3ac33985642e6a56a663f', 1, 1, 'personalToken', '[]', 0, '2023-09-27 13:12:07', '2023-09-27 13:12:07', '2023-09-27 17:42:07'),
('f82f5723cd916dc9d7c9be67a0f49681560d8017bb03d31585561d8a8dce3d34641923e378418c48', 1, 1, 'personalToken', '[]', 0, '2022-11-10 04:04:06', '2022-11-10 04:04:06', '2027-11-10 07:34:06'),
('f8447cffa320ccb1274db084882aef6afde81f8b292df26c47b85a2a4399534b632c5f018e123f33', 1, 1, 'personalToken', '[]', 0, '2022-08-03 05:36:57', '2022-08-03 05:36:57', '2022-08-03 11:06:57'),
('f8548df06581c0f3a524d3e69d7c0169822a425b4a4dbae3baf560baaa8ffea42cd9c1107e40e87b', 1, 1, 'personalToken', '[]', 0, '2023-06-30 09:56:14', '2023-06-30 09:56:14', '2023-06-30 14:26:14'),
('f87093912d70b561a8d5f86b967889ce753c9089ea27d6eebb730b9c14d00f4ef26c3c799ca90220', 1, 1, 'personalToken', '[]', 0, '2022-09-05 00:24:11', '2022-09-05 00:24:11', '2027-09-05 04:54:11'),
('f8828e430f8364f7b332caefcdac2602dddb3a13462bd5b735625192f9f5ba05edef38b29da1eb2b', 1, 1, 'personalToken', '[]', 0, '2023-06-30 07:08:53', '2023-06-30 07:08:53', '2023-06-30 11:38:53'),
('f883795aa1d8f62813205587253d76a174157245e0d827c2af7bec7e46bf1608dcd445b63d264bb5', 26, 1, 'personalToken', '[]', 1, '2023-03-06 04:05:59', '2023-03-06 04:05:59', '2023-03-06 08:35:59'),
('f89140cd90d632a56b7e677c1e13eb9f726b0e07c79be356ea664058248312afc8ac1d0a12091142', 1, 1, 'personalToken', '[]', 0, '2023-02-03 15:26:15', '2023-02-03 15:26:15', '2023-02-03 19:56:15'),
('f895668c1b0ec52af1f4be9c9e1e26bb685eb73a9f505b9f8fd4c14b07b62830429c96b7edb245ce', 1, 1, 'personalToken', '[]', 1, '2023-04-11 17:21:44', '2023-04-11 17:21:44', '2023-04-11 21:51:44'),
('f8b16831d73d1aab760de735c905887ac139f3fc132103f7612ff6ffa6dfe8b494caf3e584372b1c', 1, 1, 'personalToken', '[]', 1, '2023-08-09 17:00:38', '2023-08-09 17:00:38', '2023-08-09 21:30:38'),
('f8bf140d4c6dc2a00aa90c33784497fda13a58bfbfe488fd1e369ae0cf1dd387ac62bcd01edbf594', 1, 1, 'personalToken', '[]', 0, '2023-01-14 16:33:24', '2023-01-14 16:33:24', '2028-01-14 20:03:24'),
('f8ef18ec3e8ab8248d887e2fa20467aa7d053840b400751997ee3c9bf508051ece08173ff5f83063', 1, 1, 'personalToken', '[]', 1, '2023-05-16 13:51:30', '2023-05-16 13:51:30', '2023-05-16 18:21:30'),
('f90cc2f8c1fb41645b7a20d86141d22fc7518387efb072dcb823e417fcea670a67ef99013e7cbec2', 34, 1, 'personalToken', '[]', 1, '2023-06-21 09:38:37', '2023-06-21 09:38:37', '2023-06-21 14:08:37'),
('f94242c286319f8fd481c443e6d2671fedf756ececa90119d4eb7adeb2733a23ceb9df6b83aea5b6', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:07:19', '2023-06-21 05:07:19', '2023-06-21 09:37:19'),
('f97a8c4c9905e0d2bf3ec063a80cc609dff71992b78039a40b07b5cf11743204b8804732a7ad9116', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:50:51', '2023-03-04 11:50:51', '2023-03-04 16:20:51'),
('f9beaaf31542cdff8df33508217c2953ddeadb4f05fb6290e383bb4aac6ed01e84e3228e2da2310e', 1, 1, 'personalToken', '[]', 0, '2023-08-12 08:50:52', '2023-08-12 08:50:52', '2023-08-12 13:20:52'),
('f9ceedee9009b029d80dcc428ce94306be365a5d68fd413b0388438f5cedac24fb97362ef210c4ca', 1, 1, 'personalToken', '[]', 1, '2022-07-06 07:05:31', '2022-07-06 07:05:31', '2022-07-06 12:35:31'),
('f9f52556528c93c9e677fcacf267278133908bce3a1902e58e55f9b6c9cba4e246d9a7c8b77bded2', 1, 1, 'personalToken', '[]', 0, '2022-12-06 11:38:06', '2022-12-06 11:38:06', '2022-12-06 16:08:06'),
('f9fc598093f3ae1437708f1f6af89569ada23efe2d32bd13bd23a0bbce84bb5c399d72f724195002', 1, 1, 'personalToken', '[]', 1, '2022-11-21 02:47:11', '2022-11-21 02:47:11', '2022-11-21 07:17:11'),
('f9fd88df11505533ba732e8fb6cbc22770b229146d57897c0dc882f6b1d5784676afb4c98073877c', 1, 1, 'personalToken', '[]', 0, '2022-08-24 03:14:05', '2022-08-24 03:14:05', '2027-08-24 07:44:05'),
('fa0ddc618dadfa559df36bb7824ce31dfb2ceac2686b891c5626c78c92cd324c0e710382afd00317', 14, 1, 'personalToken', '[]', 1, '2022-12-26 17:11:45', '2022-12-26 17:11:45', '2027-12-26 20:41:45'),
('fa14380f1aae99f4b64344217a04fbfddb7e670fb61a4b14ef4727f511912f22a3c6f29968ee8e41', 1, 1, 'personalToken', '[]', 0, '2022-06-24 12:34:57', '2022-06-24 12:34:57', '2022-06-24 18:04:57'),
('fa45f358d3c3deb1e9135633e9edb0935b4a3fbced2358f097a63e943e6a1157d39f6e15feb678a8', 1, 1, 'personalToken', '[]', 0, '2022-07-25 07:10:40', '2022-07-25 07:10:40', '2027-07-25 11:40:40'),
('fa570fd328f737a67e453b75ab158f61f36df2b7171c012b2aab84850867e4ae0c43b2a78009ef3f', 1, 1, 'personalToken', '[]', 0, '2023-06-21 03:41:19', '2023-06-21 03:41:19', '2028-06-21 07:11:19'),
('fa712a5eeb6076b1d982b7398880963f0e4469cee28b5791ba6ee28004fc6eebf546861de92570a5', 1, 1, 'personalToken', '[]', 0, '2022-12-26 03:33:34', '2022-12-26 03:33:34', '2022-12-26 08:03:34'),
('fadc3738d59c6db4744a808f646eb3a7952776d917e085c091b173dadb464b39050be403b69831f9', 1, 1, 'personalToken', '[]', 1, '2022-08-03 06:40:33', '2022-08-03 06:40:33', '2022-08-03 12:10:33'),
('faeb871f730904cd5eefc1771199be8032f0558fe831a8dffa57d656f41d00f297bf0d7779f190ea', 1, 1, 'personalToken', '[]', 1, '2022-07-12 04:58:36', '2022-07-12 04:58:36', '2022-07-12 10:28:36'),
('fb1502d9f7539c31773691c7e66c5b5a7609d40b51543b90f97ac9aafcc72d32533bc9d8b9eb13d0', 1, 1, 'personalToken', '[]', 0, '2023-02-05 17:49:47', '2023-02-05 17:49:47', '2023-02-05 22:19:47'),
('fb4cdd13a39b4ec4bb0b2038c8bfecf0da64c89d2d88ceb01c2c0e2a6b0acc2b07b1e375ea7d5d5b', 1, 1, 'personalToken', '[]', 0, '2023-09-27 12:54:42', '2023-09-27 12:54:42', '2023-09-27 17:24:42'),
('fb5543287cf04b70faca7f124b0086862ff47b4c5561e942bb0fe715ed393746ca62ec04eb49af3d', 1, 1, 'personalToken', '[]', 1, '2022-07-20 04:06:25', '2022-07-20 04:06:25', '2022-07-20 09:36:25'),
('fb9e43b90d2b6fefa4dfa5febdd3f58e086c041145d4498c0335a76b0dbbcaeaa629bc11bd09708f', 19, 1, 'personalToken', '[]', 1, '2023-02-13 17:45:25', '2023-02-13 17:45:25', '2023-02-13 22:15:25'),
('fba135ee023c5d00cded28fbab619dbe58d3eaa51cb04c8e43af7f9f0d4e1492e8f6c9e9f8bf2321', 1, 1, 'personalToken', '[]', 0, '2023-08-12 07:40:55', '2023-08-12 07:40:55', '2023-08-12 12:10:55'),
('fba15d6a97b03e37f6df9d93c94a67f80ab6f5f1289f3c8735078299f868957da4880cc9f640b616', 1, 1, 'personalToken', '[]', 0, '2023-11-17 15:29:28', '2023-11-17 15:29:28', '2023-11-17 19:59:28'),
('fbe5faeceea1c6afc11860e085923d79bb11de924dab42847407096e9dc5b5a8714799864d202843', 1, 1, 'personalToken', '[]', 0, '2023-02-19 14:48:41', '2023-02-19 14:48:41', '2028-02-19 18:18:41'),
('fbefb3699e8e0df39421c016886c44e754c453af8b9e32a570f0b6cf43b4f8e34aff15446cf3c759', 1, 1, 'personalToken', '[]', 1, '2023-04-24 11:52:37', '2023-04-24 11:52:37', '2023-04-24 16:22:38'),
('fc09e940f8c33f9f2cdc8ebb3c1af02787bc16e0fe334c2d666ce653e6efb04e6c03d37fb00840f5', 1, 1, 'personalToken', '[]', 0, '2023-04-08 17:45:28', '2023-04-08 17:45:28', '2023-04-08 22:15:28'),
('fc17af07bd0e60c928d66fd99f9ea31e27a63658b94ec7e198ca679eea38338cb2590ca2286bd497', 1, 1, 'personalToken', '[]', 1, '2023-04-07 07:44:45', '2023-04-07 07:44:45', '2028-04-07 11:14:45'),
('fc41e5501c4e11a3b78aa4d5480fb0d5db570813a229cc55d2f7c500dbb4530b29159c3a568ec7d5', 1, 1, 'personalToken', '[]', 1, '2022-07-13 03:26:54', '2022-07-13 03:26:54', '2022-07-13 08:56:54'),
('fc48bbeb6a8f74b6c9746a42ea8ba797e22a0d155f60d7b2fe4bebe97308fff97139e80a03f0ef10', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:40:50', '2023-08-14 07:40:50', '2023-08-14 12:10:50'),
('fc4c8e67b46bf8e4fa07d6ca8910b7d5b1f7437d6161b3f08069d84f71abdca9a4d01dc2e513efb2', 1, 1, 'personalToken', '[]', 1, '2023-07-15 04:50:15', '2023-07-15 04:50:15', '2028-07-15 08:20:15'),
('fc569d1102774ca32fb46dfbc2ae7d3393b6185cb3558562368286887bc4bcf7b6f14fed0b06123d', 1, 1, 'personalToken', '[]', 0, '2022-10-22 15:25:55', '2022-10-22 15:25:55', '2027-10-22 18:55:55'),
('fcc797ef615b4dae9b784ccc9ba6963d8a9d9cef9d68b235196e2329a802e915d3cdf9ddb60d94b0', 1, 1, 'personalToken', '[]', 1, '2023-08-07 07:27:16', '2023-08-07 07:27:16', '2028-08-07 10:57:16'),
('fcf332ed47b10033dfad1cd2ac47f50081802eb126b84808d0bd8e8a57b7eda032f36aac0a13d86f', 1, 1, 'personalToken', '[]', 1, '2023-03-04 09:51:36', '2023-03-04 09:51:36', '2023-03-04 14:21:36'),
('fd1ca5016ec71e496647e17084d8909fe73b76756355dc748a6b72f249a63516743076290991ebce', 1, 1, 'personalToken', '[]', 0, '2023-04-08 15:45:56', '2023-04-08 15:45:56', '2023-04-08 20:15:56'),
('fd4870f9725d28bdbfab2511f36267a61df11bfbd5ccf09de96efdde607976a29e60e4e1e25ebe74', 1, 1, 'personalToken', '[]', 0, '2023-02-10 03:57:00', '2023-02-10 03:57:00', '2023-02-10 08:27:00'),
('fd8eb8f3fb345bba68abdde1cfce883b7a9bdb1c1fad26b6c0ffabcf717ef1f2c5d02904368476fc', 1, 1, 'personalToken', '[]', 0, '2023-08-08 07:48:03', '2023-08-08 07:48:03', '2023-08-08 12:18:03'),
('fd901029ffcf157e580b03fb3fb285c5cb2c164a19aaab945f820de2d439dd2dd64373b7a34a2b05', 1, 1, 'personalToken', '[]', 0, '2022-11-08 06:28:15', '2022-11-08 06:28:15', '2022-11-08 10:58:15'),
('fdb989adf57cf2cb480e4c9c5cbc05c8e058ff13564b496ad4fbe7f3da24ada7e98e590a91e8a527', 1, 1, 'personalToken', '[]', 0, '2022-12-08 05:46:24', '2022-12-08 05:46:24', '2027-12-08 09:16:24'),
('fdc9d46da64e442587aed9ae7e16cf750b755a9c96ca2e66e2fc55a7f0e06b58cfebd5cb7f3f2e70', 1, 1, 'personalToken', '[]', 0, '2023-05-16 01:44:57', '2023-05-16 01:44:57', '2023-05-16 06:14:57'),
('fddc985a4b3c6168b2bd7d2fabae91a157914a8c6f0e83ba2132fe09a3adc37b993c59265e7e1946', 1, 1, 'personalToken', '[]', 1, '2022-12-16 05:08:58', '2022-12-16 05:08:58', '2022-12-16 09:38:58'),
('fdff1288019ce1c1cbc380538907896f3335fa484574c0a515991563cb8cd7e28050777c58e071cf', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:22:32', '2022-07-06 03:22:32', '2022-07-06 08:52:32'),
('fe06c9154d2d07454ea84369ac4cb66634b5d11e0227f0bbbff9ba93a5269ac669abb1ea0791ab3f', 1, 1, 'personalToken', '[]', 0, '2023-08-14 07:21:31', '2023-08-14 07:21:31', '2023-08-14 11:51:31'),
('fe17fe81bdd1fe464efe53780a5c6dce76a75b8d421993db6fb83d2084e9c319c8a5460d6aec7018', 1, 1, 'personalToken', '[]', 0, '2022-07-06 03:58:10', '2022-07-06 03:58:10', '2022-07-06 09:28:10'),
('fe1d9d5a1f43a515e3e7a115b43f2d15b5c8f4a4e6b00cd47201e9f3ad5d9d2e4dd70ce48e3fa20b', 1, 1, 'personalToken', '[]', 1, '2022-12-26 09:31:43', '2022-12-26 09:31:43', '2022-12-26 14:01:43'),
('fe5f0f20e422f002ebd1576b4efdf3e05084d149fbca96939dbf89859e60a956846c5fe2346a0690', 34, 1, 'personalToken', '[]', 1, '2023-06-21 05:02:20', '2023-06-21 05:02:20', '2023-06-21 09:32:20'),
('fe7d439c82e18d99678c1ca08d19c04024a7f35ffd7fd431bef6ec299f913afadf658108cf0ba241', 1, 1, 'personalToken', '[]', 0, '2023-06-30 10:07:20', '2023-06-30 10:07:20', '2023-06-30 14:37:20'),
('feb125563fcd4380fcf8aec205e2dc82996c7059c2b566bb678f72f57c49b5a0c78939215b33b547', 1, 1, 'personalToken', '[]', 1, '2023-03-04 11:37:19', '2023-03-04 11:37:19', '2023-03-04 16:07:19'),
('febfba14424564be5e98bd3f16ec4426f26bbadb6c1ed0f85afa92a3c1467d022c609248dbac6648', 1, 1, 'personalToken', '[]', 0, '2023-04-08 16:26:01', '2023-04-08 16:26:01', '2023-04-08 20:56:01'),
('fec0c648a5706ef456a2c54db9df60336c696e288d82e754372d8f8d0a0b8b1295a50343b7bc2148', 1, 1, 'personalToken', '[]', 1, '2023-08-07 07:18:45', '2023-08-07 07:18:45', '2023-08-07 11:48:45'),
('ff0612c0a8fbf014031d16e3bcdbf87dceaf3c264ab8fe714fed85bf98ca4e728e8da69f339f8a58', 2, 1, 'personalToken', '[]', 0, '2022-10-22 10:54:18', '2022-10-22 10:54:18', '2022-10-22 15:24:18'),
('ff457badd757f555a967e19b3f13908d6f99c09ed961116c8f411b30cf93ffe6fce29a06d77c814a', 1, 1, 'personalToken', '[]', 0, '2022-11-20 08:17:28', '2022-11-20 08:17:28', '2022-11-20 12:47:28'),
('ff5bde3dfedfa2ad55ad5b86e74ac48dea3957a922ea71f77dcf5237b027dca40cca64a1681a93f3', 1, 1, 'personalToken', '[]', 0, '2023-08-19 02:07:48', '2023-08-19 02:07:48', '2028-08-19 05:37:48'),
('ff78391c04c0cd2c52336f445e74345edc12b7e7685d85d5f7e1c89de938267c2eb3a0351e8cf254', 1, 1, 'personalToken', '[]', 0, '2022-07-23 16:33:25', '2022-07-23 16:33:25', '2022-07-23 22:03:25'),
('ffc0784959a70d9d8da1b65ff6d507fc49f490c05a22a193a32905efc0b6c6bd0545d41586e2862f', 1, 1, 'personalToken', '[]', 1, '2023-02-04 15:13:00', '2023-02-04 15:13:00', '2023-02-04 19:43:00'),
('ffd7c307aa2962b1821f723198d12d969b91e7d8d39301ebef9a689e224dcd3be5af308367235626', 1, 1, 'personalToken', '[]', 1, '2022-10-10 15:35:14', '2022-10-10 15:35:14', '2022-10-10 20:05:14'),
('ffd93ff32ae02c5401917b809a7746f86f8f4a175c3c14bdbae55d82caa35a9420a1c36e5e98e2e9', 1, 1, 'personalToken', '[]', 0, '2022-08-01 16:24:35', '2022-08-01 16:24:35', '2022-08-01 21:54:36'),
('ffe5ed86d45d8e72226dbe30ff2b5c6d80a04bee0afc064c7cfdc6d188bfd0aa74aa62483d0968f0', 1, 1, 'personalToken', '[]', 1, '2022-12-26 04:32:18', '2022-12-26 04:32:18', '2022-12-26 09:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'jvjs5XCVSEYwLtvdC5xsfDHk8C0iYASx1i0SG3FP', NULL, 'http://localhost', 1, 0, 0, '2022-06-14 12:28:14', '2022-06-14 12:28:14'),
(2, NULL, 'Laravel Personal Access Client', 'EYu72mmZgh0H8n9pJ5xYzbmi8QiVN3oha4EqTDjA', NULL, 'http://localhost', 1, 0, 0, '2023-12-21 17:41:12', '2023-12-21 17:41:12'),
(3, NULL, 'Laravel Password Grant Client', 'ejC0qUG2fkRiZRyZPOycnt5GmRS52eQvSq8jITXb', 'users', 'http://localhost', 0, 1, 0, '2023-12-21 17:41:12', '2023-12-21 17:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-14 12:28:14', '2022-06-14 12:28:14'),
(2, 2, '2023-12-21 17:41:12', '2023-12-21 17:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  `pay_amount` varchar(255) DEFAULT NULL,
  `pay_at` timestamp NULL DEFAULT NULL,
  `pay_card_number` varchar(255) DEFAULT NULL,
  `pay_bank` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart_id`, `discount_id`, `delivery_id`, `status_id`, `user_fullname`, `amount`, `discount_price`, `address`, `postal_code`, `phone`, `email`, `pay_method`, `pay_amount`, `pay_at`, `pay_card_number`, `pay_bank`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 12, 14, 17, 1, NULL, 'vahid saei', '35000000', '7000000', 'آدرس تست', NULL, '09110000000', NULL, NULL, '28000000', '2022-11-11 20:30:00', '1111000011110000', 'بانک تست', NULL, '2022-11-12 15:44:06', '2022-11-12 15:44:06'),
(6, 10, 15, NULL, 1, NULL, 'کاربر تست', '60500000', '0', 'aaaa', NULL, '09110000001', NULL, NULL, '60500000', '2022-09-20 22:25:41', NULL, NULL, NULL, '2022-11-17 17:27:22', '2022-11-17 17:27:22'),
(8, 10, 17, NULL, 1, NULL, 'کاربر تست', '35000000', '0', 'iran-arak', NULL, '09110000001', NULL, NULL, '35000000', '2022-07-20 19:30:00', '1111000011110000', 'بانک تست', NULL, '2022-11-20 19:57:41', '2022-11-20 19:57:41'),
(9, 12, 18, NULL, 1, NULL, 'vahid saei', '5500000', '0', 'iran-arak', NULL, '09110000001', NULL, NULL, '5500000', '2022-11-18 20:30:00', '1111000011110000', 'بانک تست', NULL, '2022-11-20 19:58:52', '2022-11-20 19:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `arrange` int(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `description`, `path`, `method`, `arrange`, `category`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'read_categories', 'مشاهده دسته بندی ها', 'api/admin/categories', 'get', 1, 'دسته بندی ها', 1, NULL, NULL, NULL),
(2, 'create_category', 'افزودن دسته بندی', 'api/admin/categories', 'post', 1, 'دسته بندی ها', 1, NULL, NULL, NULL),
(3, 'read_category', 'دریافت تکی دسته بندی', 'api/admin/categories/{id}', 'get', 1, 'دسته بندی ها', 1, NULL, NULL, NULL),
(4, 'update_category', 'ویرایش دسته بندی', 'api/admin/categories/{id}', 'put', 1, 'دسته بندی ها', 1, NULL, NULL, NULL),
(5, 'delete_category', 'حذف دسته بندی', 'api/admin/categories/{id}', 'delete', 1, 'دسته بندی ها', 1, NULL, NULL, NULL),
(6, 'read_category_attrs', 'دریاقت ویژگیهای دسته بندی', 'api/admin/categories/{categoryId}/attributes', 'get', 2, 'دسته بندی ها', 1, NULL, NULL, NULL),
(7, 'create_category_attr', 'تعریف ویژگی برای دسته بندی', 'api/admin/categories/{categoryId}/attributes', 'post', 2, 'دسته بندی ها', 1, NULL, NULL, NULL),
(8, 'read_category_attr', 'دریاقت یک ویژگی از دسته بندی', 'api/admin/categories/attributes/{id}', 'get', 2, 'دسته بندی ها', 1, NULL, NULL, NULL),
(9, 'update_category_attr', 'ویرایش ویژگی هر دسته بندی', 'api/admin/categories/attributes/{id}', 'put', 2, 'دسته بندی ها', 1, NULL, NULL, NULL),
(10, 'delete_category_attr', 'حذف ویژگی مربوط به دسته بندی', 'api/admin/categories/attributes/{id}', 'delete', 2, 'دسته بندی ها', 1, NULL, NULL, NULL),
(11, 'read_products', 'مشاهده محصولات', 'api/admin/products', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(12, 'read_products_title', 'دریافت همه عناوین محصولات', 'api/admin/products/all_titles', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(13, 'create_product', 'افزودن محصول جدید', 'api/admin/products', 'post', 3, 'محصولات', 1, NULL, NULL, NULL),
(14, 'read_product', 'دریافت یک محصول', 'api/admin/products/{id}', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(15, 'exist_product_title', 'بررسی وجود عنوان محصول', 'api/admin/products/title_is_exist/{title}', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(16, 'update_product', 'ویرایش محصول', 'api/admin/products/{id}', 'put', 3, 'محصولات', 1, NULL, NULL, NULL),
(17, 'delete_product', 'حذف محصول', 'api/admin/products/{id}', 'delete', 3, 'محصولات', 1, NULL, NULL, NULL),
(18, 'create_product_attr', 'افزودن ویژگی محصول', 'api/admin/products/{id}/add_attr', 'post', 4, 'محصولات', 1, NULL, NULL, NULL),
(19, 'read_product_attrs', 'دریافت ویژگی محصول', 'api/admin/products/{id}/get_attr', 'get', 4, 'محصولات', 1, NULL, NULL, NULL),
(20, 'create_product_image', 'افزودن تصویر محصول', 'api/admin/products/{id}/add_image', 'post', 5, 'محصولات', 1, NULL, NULL, NULL),
(21, 'delete_product_image', 'حذف تصویر محصول', 'api/admin/products/gallery/{imageId}', 'delete', 5, 'محصولات', 1, NULL, NULL, NULL),
(22, 'default_product_image', 'تنظیم تصویر پیشفرض', 'api/admin/products/gallery/set_main/{imageId}', 'get', 5, 'محصولات', 1, NULL, NULL, NULL),
(23, 'read_colors', 'مشاهده لیست رنگ ها', 'api/admin/colors', 'get', 6, 'رنگ ها', 1, NULL, NULL, NULL),
(24, 'create_color', 'افزودن رنگ جدید', 'api/admin/colors', 'post', 6, 'رنگ ها', 1, NULL, NULL, NULL),
(25, 'read_color', 'مشاهده یک رنگ', 'api/admin/colors/{id}', 'get', 6, 'رنگ ها', 1, NULL, NULL, NULL),
(26, 'update_color', 'ویرایش رنگ', 'api/admin/colors/{id}', 'put', 6, 'رنگ ها', 1, NULL, NULL, NULL),
(27, 'delete_color', 'حذف رنگ ها', 'api/admin/colors/{id}', 'delete', 6, 'رنگ ها', 1, NULL, NULL, NULL),
(28, 'read_brands', 'مشاهده برند ها', 'api/admin/brands', 'get', 7, 'برند ها', 1, NULL, NULL, NULL),
(29, 'create_brand', 'افزودن برند جدید', 'api/admin/brands', 'post', 7, 'برند ها', 1, NULL, NULL, NULL),
(30, 'read_brand', 'دریافت برند تکی', 'api/admin/brands/{id}', 'get', 7, 'برند ها', 1, NULL, NULL, NULL),
(31, 'update_brand', 'ویرایش برند', 'api/admin/brands/{id}', 'post', 7, 'برند ها', 1, NULL, NULL, NULL),
(32, 'delete_brand', 'حذف برند', 'api/admin/brands/{id}', 'delete', 7, 'برند ها', 1, NULL, NULL, NULL),
(33, 'read_guarantees', 'مشاهده گارانتی ها', 'api/admin/guarantees', 'get', 8, 'گارانتی ها', 1, NULL, NULL, NULL),
(34, 'create_guarantee', 'افزودن گارانتی', 'api/admin/guarantees', 'post', 8, 'گارانتی ها', 1, NULL, NULL, NULL),
(35, 'read_guarantee', 'مشاهده گارانتی تکی', 'api/admin/guarantees/{id}', 'get', 8, 'گارانتی ها', 1, NULL, NULL, NULL),
(36, 'update_guarantee', 'ویرایش گارانتی', 'api/admin/guarantees/{id}', 'put', 8, 'گارانتی ها', 1, NULL, NULL, NULL),
(37, 'delete_guarantee', 'حذف گارانتی', 'api/admin/guarantees/{id}', 'delete', 8, 'گارانتی ها', 1, NULL, NULL, NULL),
(38, 'read_discounts', 'مشاهده کد های تخفیف', 'api/admin/discounts', 'get', 9, 'تخفیف ها', 1, NULL, NULL, NULL),
(39, 'create_discount', 'افزودن کد تخفیف', 'api/admin/discounts', 'post', 9, 'تخفیف ها', 1, NULL, NULL, NULL),
(40, 'update_discount', 'ویرایش کد تخفیف', 'api/admin/discounts/{id}', 'put', 9, 'تخفیف ها', 1, NULL, NULL, NULL),
(41, 'delete_discount', 'حذف کد تخفیف', 'api/admin/discounts/{id}', 'delete', 9, 'تخفیف ها', 1, NULL, NULL, NULL),
(42, 'read_permissions', 'مشاهده مجوز های دسترسی', 'api/admin/permissions', 'get', 10, 'کاربران', 1, NULL, NULL, NULL),
(43, 'read_roles', 'مشاهده نقش ها', 'api/admin/roles', 'get', 11, 'کاربران', 1, NULL, NULL, NULL),
(44, 'create_role', 'افزودن نقش جدید', 'api/admin/roles', 'post', 11, 'کاربران', 1, NULL, NULL, NULL),
(45, 'read_role', 'مشاهده یک نقش خاص', 'api/admin/roles/{id}', 'get', 11, 'کاربران', 1, NULL, NULL, NULL),
(46, 'update_role', 'ویرایش نقش', 'api/admin/roles/{id}', 'put', 11, 'کاربران', 1, NULL, NULL, NULL),
(47, 'update_role_permissions', 'تغییر دسترسی های نقش ', 'api/admin/roles/{id}/permissions', 'put', 11, 'کاربران', 1, NULL, NULL, NULL),
(48, 'update_role_permissions', 'حذف نقش ', 'api/admin/roles/{id}', 'delete', 11, 'کاربران', 1, NULL, NULL, NULL),
(49, 'read_users', 'مشاهده کاربران', 'api/admin/users', 'get', 12, 'کاربران', 1, NULL, NULL, NULL),
(50, 'create_user', 'ایجاد کاربر جدید', 'api/admin/users', 'post', 12, 'کاربران', 1, NULL, NULL, NULL),
(51, 'read_user', 'مشاهده یک کاربر', 'api/admin/users/{id}', 'get', 12, 'کاربران', 1, NULL, NULL, NULL),
(52, 'update_user', 'ویرایش  کاربر', 'api/admin/users/{id}', 'put', 12, 'کاربران', 1, NULL, NULL, NULL),
(53, 'delete_user', 'حذف  کاربر', 'api/admin/users/{id}', 'delete', 12, 'کاربران', 1, NULL, NULL, NULL),
(54, 'read_deliveries', 'مشاهده روش ارسال', 'api/admin/deliveries', 'get', 13, 'روش ارسال', 1, NULL, NULL, NULL),
(55, 'read_delivery', 'مشاهده یک روش ارسال', 'api/admin/deliveries/{id}', 'get', 13, 'روش ارسال', 1, NULL, NULL, NULL),
(56, 'create_delivery', 'ایجاد روش ارسال', 'api/admin/deliveries', 'post', 13, 'روش ارسال', 1, NULL, NULL, NULL),
(57, 'update_delivery', 'ویرایش روش ارسال', 'api/admin/deliveries/{id}', 'put', 13, 'روش ارسال', 1, NULL, NULL, NULL),
(58, 'delete_delivery', 'حذف روش ارسال', 'api/admin/deliveries/{id}', 'delete', 13, 'روش ارسال', 1, NULL, NULL, NULL),
(59, 'read_carts', 'مشاهده سبد خرید', 'api/admin/carts', 'get', 14, 'سبد خرید', 1, NULL, NULL, NULL),
(60, 'read_cart', 'مشاهده یک سبد خرید', 'api/admin/carts/{id}', 'get', 14, 'سبد خرید', 1, NULL, NULL, NULL),
(61, 'create_cart', 'ایجاد سبد خرید', 'api/admin/carts', 'post', 14, 'سبد خرید', 1, NULL, NULL, NULL),
(62, 'delete_cart', 'حذف سبد خرید', 'api/admin/carts/{id}', 'delete', 14, 'سبد خرید', 1, NULL, NULL, NULL),
(63, 'update_cart', 'ویرایش سبد خرید', 'api/admin/carts/{id}', 'put', 14, 'سبد خرید', 1, NULL, NULL, NULL),
(64, 'read_orders', 'مشاهده سفارشات', 'api/admin/orders', 'get', 15, 'سفارش', 1, NULL, NULL, NULL),
(65, 'read_order', 'مشاهده یک سفارش', 'api/admin/orders/{id}', 'get', 15, 'سفارش', 1, NULL, NULL, NULL),
(66, 'create_order', 'ایجاد سفارش', 'api/admin/orders', 'post', 15, 'سفارش', 1, NULL, NULL, NULL),
(67, 'delete_order', 'حذف سفارش', 'api/admin/orders/{id}', 'delete', 15, 'سفارش', 1, NULL, NULL, NULL),
(68, 'read_discount', 'مشاهده یک کد تخفیف', 'api/admin/discounts/{id}', 'get', 9, 'تخفیف ها', 1, NULL, NULL, NULL),
(69, 'read_fewer_products', 'دریافت محصولات رو به اتمام', 'api/admin/products/fewer_products', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(70, 'update_product_notification', 'تغییر وضعیت اطلاع رسانی محصول', 'api/admin/products/toggle_notification/{id}', 'get', 3, 'محصولات', 1, NULL, NULL, NULL),
(71, 'read_order_statistics', 'مشاهده آمار سفارشات', 'api/admin/orders/orders_statistics', 'get', 15, 'سفارش', 1, NULL, NULL, NULL),
(72, 'read_orders_year', 'مشاهده لیست سفارشات سال', 'api/admin/orders/this_year_orders', 'get', 15, 'سفارش', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(29, 1, 6),
(30, 2, 6),
(31, 3, 6),
(32, 6, 6),
(33, 5, 6),
(34, 4, 6),
(35, 7, 6),
(36, 8, 6),
(37, 9, 6),
(38, 10, 6),
(39, 1, 7),
(40, 3, 7),
(41, 6, 7),
(43, 8, 7),
(44, 11, 8),
(45, 12, 8),
(46, 14, 8),
(47, 15, 8),
(48, 19, 8),
(49, 5, 7),
(50, 17, 8),
(51, 20, 8),
(52, 11, 9),
(121, 1, 9),
(122, 7, 9),
(123, 19, 9),
(124, 25, 9),
(125, 28, 9),
(126, 64, 9),
(127, 14, 9),
(128, 23, 9),
(129, 26, 9),
(130, 29, 9),
(131, 59, 9),
(132, 65, 9),
(133, 68, 9),
(134, 71, 9),
(135, 12, 9),
(136, 24, 9),
(137, 27, 9),
(138, 33, 9),
(139, 60, 9),
(140, 72, 9),
(192, 12, 30),
(193, 15, 30),
(194, 16, 30),
(195, 17, 30),
(196, 14, 30),
(197, 13, 30),
(198, 18, 30),
(199, 19, 30),
(200, 20, 30),
(201, 22, 30),
(202, 21, 30),
(203, 3, 30),
(204, 1, 31),
(205, 4, 31),
(206, 5, 31),
(207, 2, 31),
(208, 3, 31),
(209, 6, 31),
(210, 9, 31),
(211, 12, 31),
(212, 15, 31),
(213, 18, 31),
(214, 21, 31),
(215, 24, 31),
(216, 23, 31),
(217, 20, 31),
(218, 17, 31),
(219, 14, 31),
(220, 11, 31),
(221, 8, 31),
(222, 7, 31),
(223, 10, 31),
(224, 13, 31),
(225, 16, 31),
(226, 19, 31),
(227, 22, 31),
(228, 25, 31),
(229, 28, 31),
(230, 31, 31),
(231, 34, 31),
(232, 35, 31),
(233, 26, 31),
(234, 29, 31),
(235, 32, 31),
(236, 36, 31),
(237, 33, 31),
(238, 30, 31),
(239, 27, 31),
(240, 39, 31),
(241, 42, 31),
(242, 45, 31),
(243, 48, 31),
(244, 51, 31),
(245, 54, 31),
(246, 53, 31),
(247, 50, 31),
(248, 47, 31),
(249, 44, 31),
(250, 41, 31),
(251, 38, 31),
(252, 52, 31),
(253, 49, 31),
(254, 46, 31),
(255, 43, 31),
(256, 40, 31),
(257, 37, 31),
(258, 55, 31),
(259, 56, 31),
(260, 59, 31),
(261, 58, 31),
(262, 61, 31),
(263, 64, 31),
(264, 67, 31),
(265, 70, 31),
(266, 71, 31),
(267, 68, 31),
(268, 65, 31),
(269, 62, 31),
(270, 72, 31),
(271, 69, 31),
(272, 66, 31),
(273, 63, 31),
(274, 60, 31),
(275, 57, 31),
(276, 49, 32),
(277, 50, 32),
(278, 51, 32),
(279, 53, 32),
(280, 52, 32),
(281, 25, 33),
(282, 23, 33),
(283, 24, 33),
(284, 54, 33),
(285, 56, 33),
(286, 1, 34),
(287, 11, 34),
(288, 25, 34),
(289, 28, 34),
(290, 23, 34),
(291, 45, 34),
(292, 42, 34),
(293, 51, 34),
(294, 54, 34),
(295, 60, 34),
(296, 55, 34),
(297, 49, 34),
(298, 43, 34),
(299, 64, 34),
(300, 68, 34),
(301, 65, 34),
(302, 59, 34),
(303, 71, 34),
(304, 38, 34),
(305, 35, 34),
(306, 72, 34),
(307, 1, 35),
(308, 2, 35),
(309, 3, 35),
(310, 12, 35),
(311, 14, 35),
(312, 22, 35),
(313, 27, 35);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'personalToken', '10c15ee531a45f07e27c12e6b872ab81213ace2885698b3c9f48d29559f380fc', '[\"*\"]', NULL, NULL, '2023-12-21 11:52:33', '2023-12-21 11:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `short_descriptions` text DEFAULT NULL,
  `cart_descriptions` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `alt_image` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) DEFAULT NULL,
  `start_special_at` timestamp NULL DEFAULT NULL,
  `end_special_at` timestamp NULL DEFAULT NULL,
  `only_us` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `has_notification` tinyint(1) NOT NULL DEFAULT 1,
  `view_count` bigint(20) NOT NULL DEFAULT 0,
  `like_count` bigint(20) NOT NULL DEFAULT 0,
  `dislike_count` bigint(20) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `weight`, `brand_id`, `descriptions`, `short_descriptions`, `cart_descriptions`, `image`, `alt_image`, `keywords`, `stock`, `discount`, `start_special_at`, `end_special_at`, `only_us`, `is_active`, `has_notification`, `view_count`, `like_count`, `dislike_count`, `deleted_at`, `created_at`, `updated_at`) VALUES
(297, 'behdashti', 10000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, NULL, '2023-12-09 07:55:43', '2023-12-09 08:22:33'),
(298, 'برقییییییییییییی', 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, NULL, '2023-12-09 08:28:35', '2023-12-09 08:28:35'),
(303, '12', 17, 12.00, 44, '<p>dddnbhhhhddddd</p>', 'jj', 'sss', NULL, 'ss', 'ss', 12, 12, NULL, NULL, 0, 1, 1, 0, 0, 0, NULL, '2023-12-12 18:24:23', '2023-12-12 18:24:23'),
(304, 'ff', 12, 12.00, 45, NULL, 'ssss', 'ss', NULL, 'ss', 'ss', 12, 12, NULL, NULL, 0, 1, 1, 0, 0, 0, NULL, '2023-12-12 19:31:32', '2023-12-12 19:31:32'),
(306, 'fgsdfgsdfg', 45000, 20.00, 39, '<p>ghghghg</p>', NULL, NULL, NULL, 'ghghgh', 'ghgh', 56, 56, NULL, NULL, 0, 1, 1, 0, 0, 0, NULL, '2023-12-18 03:14:48', '2023-12-18 03:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_property`
--

CREATE TABLE `product_property` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_property`
--

INSERT INTO `product_property` (`id`, `product_id`, `property_id`, `value`) VALUES
(80, 303, 375, 'cccss'),
(81, 303, 376, 'sssssvvv'),
(82, 306, 384, '1'),
(83, 306, 385, '2'),
(84, 306, 388, '3'),
(85, 306, 391, '89'),
(86, 306, 392, '98'),
(87, 306, 393, '87'),
(88, 306, 394, '4'),
(89, 306, 395, '5'),
(90, 306, 396, '65'),
(91, 306, 397, '7'),
(92, 297, 384, 'ff'),
(93, 297, 385, 'gg'),
(94, 297, 388, 'hh'),
(95, 297, 394, 'jj'),
(99, 304, 377, 'w'),
(100, 304, 378, 'e'),
(101, 304, 379, 'r'),
(102, 304, 391, '22'),
(103, 304, 392, '33'),
(104, 304, 393, '44');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `in_filter` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `title`, `unit`, `in_filter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(375, 558, 'رم', 'گیگ', 0, NULL, '2023-12-10 02:51:56', '2023-12-10 02:51:56'),
(376, 558, 'سایز', 'اینچ', 0, NULL, '2023-12-10 02:52:05', '2023-12-10 02:52:05'),
(377, 559, 'ویژگی 1', 'واحد1', 0, NULL, '2023-12-10 02:58:56', '2023-12-10 02:58:56'),
(378, 559, 'ویژگی 2', 'واحد 2', 0, NULL, '2023-12-10 02:59:12', '2023-12-10 02:59:12'),
(379, 559, 'ویژگی 3', 'واحد 3', 0, NULL, '2023-12-10 02:59:24', '2023-12-10 02:59:24'),
(381, 561, 'ویژگی 1', 'واحد1', 0, NULL, '2023-12-10 08:01:37', '2023-12-10 08:01:37'),
(382, 561, 'ویژگی 2', 'واحد2', 0, NULL, '2023-12-10 08:01:47', '2023-12-10 08:01:47'),
(384, 550, 'ویژگی 3', 'واحد 3', 1, NULL, '2023-12-11 07:04:23', '2023-12-15 07:26:55'),
(385, 550, 'ویژگی 4', 'واحد 4', 0, NULL, '2023-12-11 07:04:36', '2023-12-11 07:04:36'),
(388, 550, 'size', 'cm', 1, NULL, '2023-12-12 19:01:39', '2023-12-13 00:57:47'),
(391, 551, 'test1', 'unit1', 0, NULL, '2023-12-13 01:39:30', '2023-12-13 01:39:30'),
(392, 551, 'test2', 'unit2', 0, NULL, '2023-12-13 01:39:39', '2023-12-13 01:39:39'),
(393, 551, 'test3', 'unit3', 0, NULL, '2023-12-13 01:39:48', '2023-12-13 01:39:48'),
(394, 550, 'kjlbjj', 'jkjlkn', 1, NULL, '2023-12-14 15:30:07', '2023-12-14 15:30:07'),
(395, 550, '65877', '9unkf', 1, NULL, '2023-12-14 15:34:03', '2023-12-14 15:34:03'),
(396, 550, 'tex', 's', 1, NULL, '2023-12-15 05:05:43', '2023-12-15 05:05:43'),
(397, 550, 'text5555555', '111', 1, NULL, '2023-12-15 05:05:59', '2023-12-15 05:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_best` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_categories`
--

CREATE TABLE `question_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'دسترسی به همه جا', 1, NULL, '2022-09-07 21:13:23', '2022-09-07 21:13:23'),
(6, 'مدیریت کامل دسته بندی ها', 'به صورت کامل می تواند دسته بندی محصولات و ویژگی های و ... را مشاهده، حذف و ویرایش کند.', 1, NULL, '2022-10-28 12:20:24', '2023-06-12 08:14:56'),
(7, 'مشاهده دسته بندی ها', 'فقط مشاهده دسته بندی و ویژگی آنها', 1, NULL, '2022-10-28 12:21:31', '2022-10-28 12:21:31'),
(8, 'مشاهده محصولات', 'فقط مشاهده محصولات', 1, NULL, '2022-10-28 12:23:49', '2022-10-28 12:23:49'),
(9, 'کاربر معمولی', 'کاربر معمولی', 1, NULL, '2022-10-31 16:44:33', '2022-11-04 04:54:11'),
(30, 'ادمین انبار', 'دستری به تمامی مجوزهای انبار داری.', 1, NULL, '2023-06-12 08:14:04', '2023-06-12 15:38:30'),
(31, 'ادمین', 'لطفا پاک نکنید', 1, NULL, '2023-06-21 09:22:54', '2023-06-21 09:22:54'),
(32, 'مدیریت کاربران', 'مدیریت کاربران', 1, NULL, '2023-06-25 08:22:46', '2023-06-25 08:22:46'),
(33, 'مشاهده رنگ', 'رنگ', 1, NULL, '2023-06-26 05:23:48', '2023-06-26 05:23:48'),
(34, 'مشاهده گر', 'فقط برای مشاهده', 1, NULL, '2023-07-18 06:09:59', '2023-07-18 06:09:59'),
(35, 'نقش تست', 'توضیحات تستی', 1, NULL, '2023-08-04 11:45:23', '2023-08-04 11:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(13, 7, 10),
(14, 8, 10),
(15, 6, 10),
(17, 6, 12),
(19, 8, 12),
(23, 7, 14),
(24, 8, 14),
(25, 9, 14),
(51, 6, 26),
(52, 7, 26),
(53, 8, 26),
(54, 9, 26),
(61, 6, 31),
(62, 30, 31);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `national_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `news` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `first_name`, `last_name`, `phone`, `national_code`, `email`, `email_verified_at`, `password`, `phone_verified_at`, `ip`, `birth_date`, `gender`, `province`, `city`, `address`, `image`, `instagram`, `telegram`, `news`, `is_active`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '09110000000', NULL, NULL, NULL, '$2y$10$9WQMRiOaNT54ACE3c7h9AeCwdnxZoxnl15Is4f3CDfck8wv.fdYuK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2022-06-14 12:20:13', '2022-06-14 12:20:13'),
(10, 'test_user', 'کاربر', 'تست', '09100000001', NULL, NULL, NULL, '$2y$10$r3iUNYdDtS.uWUtPKgjYlOl1qsLwUul4DjGrXBaPybq14P4us6wCm', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2022-10-28 12:30:09', '2023-02-13 12:04:09'),
(12, 'vahid', 'vahid', 'saei', '09111234567', NULL, 'vahid@gamil.com', NULL, '$2y$10$UQUeGC02LyoD5Y199CcsIeg4nkLfcvdHPz2CY3shLF4gwT1BkVAgi', NULL, NULL, '1993-04-18 19:30:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2022-11-05 03:44:26', '2022-11-08 02:33:46'),
(14, 'observer', 'نظاره گر', NULL, '09130001234', NULL, 'test@gmail.com', NULL, '$2y$10$NvZmODoaX2rDEJjrkEJi0ep3.89Q8yC7aQepUyoDQsPkR21bEkhXi', NULL, NULL, '1996-06-25 19:30:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2022-12-26 16:31:57', '2023-04-23 16:06:13'),
(26, 'EhsanAryan', 'ehsan', 'aryan', '09197477916', NULL, 'tssest@gmail.com', NULL, '$2y$10$431zM680KaKNKFZaLvNdg.GWZDjDp/mYszjpO8xhBDqreeqNheRFK', NULL, NULL, '2023-03-03 20:30:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-03-04 09:18:38', '2023-06-20 04:28:48'),
(31, 'abbas', 'abbas', 'samani', '98765432147', NULL, 'sallijerson@gmail.com', NULL, '$2y$10$JVggSmps.06.kN0HUakATOIlahvt2bRyMNQophC6yUWD0aZuysN52', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-06-20 03:51:31', '2023-06-20 03:51:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_index` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_index` (`category_id`),
  ADD KEY `category_product_product_id_index` (`product_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_index` (`color_id`),
  ADD KEY `color_product_product_id_index` (`product_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_product_id_index` (`product_id`),
  ADD KEY `comments_parent_id_index` (`parent_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_product`
--
ALTER TABLE `discount_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_product_discount_id_index` (`discount_id`),
  ADD KEY `discount_product_product_id_index` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorits`
--
ALTER TABLE `favorits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorits_user_id_index` (`user_id`),
  ADD KEY `favorits_product_id_index` (`product_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_product_id_index` (`product_id`);

--
-- Indexes for table `guarantees`
--
ALTER TABLE `guarantees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guarantee_product`
--
ALTER TABLE `guarantee_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guarantee_product_guarantee_id_index` (`guarantee_id`),
  ADD KEY `guarantee_product_product_id_index` (`product_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_cart_id_index` (`cart_id`),
  ADD KEY `items_product_id_index` (`product_id`),
  ADD KEY `items_color_id_index` (`color_id`),
  ADD KEY `items_guarantee_id_index` (`guarantee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_cart_id_index` (`cart_id`),
  ADD KEY `orders_discount_id_index` (`discount_id`),
  ADD KEY `orders_delivery_id_index` (`delivery_id`),
  ADD KEY `orders_status_id_index` (`status_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Indexes for table `product_property`
--
ALTER TABLE `product_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_product_id_index` (`product_id`),
  ADD KEY `product_property_property_id_index` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_category_id_index` (`category_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_question_category_id_index` (`question_category_id`),
  ADD KEY `questions_user_id_index` (`user_id`),
  ADD KEY `questions_product_id_index` (`product_id`),
  ADD KEY `questions_parent_id_index` (`parent_id`);

--
-- Indexes for table `question_categories`
--
ALTER TABLE `question_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_national_code_unique` (`national_code`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `discount_product`
--
ALTER TABLE `discount_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorits`
--
ALTER TABLE `favorits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `guarantees`
--
ALTER TABLE `guarantees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `guarantee_product`
--
ALTER TABLE `guarantee_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `product_property`
--
ALTER TABLE `product_property`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_categories`
--
ALTER TABLE `question_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `discount_product`
--
ALTER TABLE `discount_product`
  ADD CONSTRAINT `discount_product_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorits`
--
ALTER TABLE `favorits`
  ADD CONSTRAINT `favorits_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guarantee_product`
--
ALTER TABLE `guarantee_product`
  ADD CONSTRAINT `guarantee_product_guarantee_id_foreign` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guarantee_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_guarantee_id_foreign` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`),
  ADD CONSTRAINT `orders_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`),
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_property`
--
ALTER TABLE `product_property`
  ADD CONSTRAINT `product_property_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_question_category_id_foreign` FOREIGN KEY (`question_category_id`) REFERENCES `question_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
