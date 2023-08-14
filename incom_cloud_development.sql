-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 02:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incom_cloud_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discriptsion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `discriptsion`, `created_by`, `updated_by`, `image`, `created_at`, `updated_at`) VALUES
(1, 'About Web Host', '<p><font color=\"#444444\">We are a leading web hosting company based in Bangladesh. Our mission is to provide reliable, secure, and affordable web hosting solutions for businesses of all sizes.</font></p><p><span style=\"color: rgb(68, 68, 68); font-size: 1rem;\">We are committed to being the most reliable web hosting provider in the industry, and our team of experts strives to deliver the highest quality of service to our customers. We offer a wide range of hosting services, including shared hosting, VPS hosting, dedicated hosting, and domain registration. Our servers are located in state-of-the-art data centers around the world, ensuring your website is always secure and running at top performance. We also provide 24/7 customer support, so you can rest assured that your website is always taken care of.</span><br></p><p><span style=\"color: rgb(68, 68, 68); font-size: 1rem;\">With our advanced tools and features, you can easily manage your website and make sure it\'s running smoothly. We look forward to helping you create an online presence for your business</span><br></p>', NULL, 1, 'IMG_20230408054045.png', NULL, '2023-08-14 05:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `chooses`
--

CREATE TABLE `chooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discriptsion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chooses`
--

INSERT INTO `chooses` (`id`, `title`, `discriptsion`, `created_by`, `updated_by`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Web Host', '<p><font color=\"#444444\">Web Host provides a wide range of hosting solutions for businesses of all sizes. Their services include shared hosting, cloud hosting, VPS hosting, dedicated servers, reseller hosting, and more. InCom Cloud also offers 24/7 customer support, a 99.9% uptime guarantee, and cutting–edge security measures to ensure that your data is safe and secure.</font></p><p><font color=\"#444444\">They also provide domain registration and free website migration services to make setting up your website easy and stress-free. With all these features, Web Host is a great choice for both businesses and individuals who are looking for reliable and affordable hosting solutions.</font></p><p><br></p>', NULL, 1, 'IMG_20230408055940.png', NULL, '2023-08-14 05:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationURL` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `locationURL`, `email`, `phone`, `cell`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'H##, R##, Dhaka, Bangladesh', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d233667.4993020771!2d90.25487291477086!3d23.78106723908492!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2sDhaka!5e0!3m2!1sen!2sbd!4v1692011480864!5m2!1sen!2sbd', '[\"info@webhost.com\",\"support@webhost.com\"]', '[\"+88 01700000000\"]', '[\"+88 01700000000\"]', NULL, 1, NULL, '2023-08-14 05:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact_massages`
--

CREATE TABLE `contact_massages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_massages`
--

INSERT INTO `contact_massages` (`id`, `name`, `phone`, `email`, `subject`, `message`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'kalam', '098765432', 'kamal@gmail.com', 'jani na', 'ami ke', NULL, NULL, '2023-04-08 03:24:47', '2023-04-08 03:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covers`
--

INSERT INTO `covers` (`id`, `image`, `title`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'IMG_20230429071500.jpg', '[null]', NULL, NULL, 1, NULL, '2023-04-29 01:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `cover_settings`
--

CREATE TABLE `cover_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cover_settings`
--

INSERT INTO `cover_settings` (`id`, `cover_id`, `title`, `status`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'mail', 'Reliable Email for Your Business', 0, 'IMG_20230415064232.png', 2, 1, '2023-04-08 04:53:49', '2023-04-15 22:17:55'),
(2, 'contact', 'Contact Web Host', 0, 'IMG_20230408105457.png', 2, 1, '2023-04-08 04:54:57', '2023-08-14 05:22:31'),
(3, 'zimbramail', 'Professional                    Zimbra Mail', 0, 'IMG_20230415101517.png', 2, 1, '2023-04-08 04:55:32', '2023-04-15 04:23:12'),
(4, 'office', 'Microsoft 365', 0, 'IMG_20230408105612.png', 2, 1, '2023-04-08 04:56:12', '2023-04-16 22:49:00'),
(5, 'sms', 'Bulk SMS', 0, 'IMG_20230408105645.png', 2, NULL, '2023-04-08 04:56:45', '2023-04-08 04:56:45'),
(6, 'shared_hosting', 'Our best Seared hosting', 0, 'IMG_20230408105728.png', 2, NULL, '2023-04-08 04:57:28', '2023-04-08 04:57:28'),
(7, 'reseller_hosting', 'Our reseller hosting', 0, 'IMG_20230415090408.png', 2, 1, '2023-04-08 04:58:00', '2023-04-15 03:04:08'),
(8, 'VPS', 'Virtual Private Server', 0, 'IMG_20230415053800.png', 2, 1, '2023-04-08 04:59:14', '2023-04-14 23:38:00'),
(9, 'domain_pricing', 'Domain Pricing', 0, 'IMG_20230415092129.png', 2, 1, '2023-04-08 05:00:35', '2023-04-15 03:21:29'),
(10, 'web', 'One dashboard for your site\'s clients', 0, 'IMG_20230412040901.png', 1, NULL, '2023-04-11 22:09:01', '2023-04-11 22:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `domain_categories`
--

CREATE TABLE `domain_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domain_categories`
--

INSERT INTO `domain_categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Popular', 0, 2, NULL, '2023-04-08 03:53:19', '2023-04-08 03:53:19'),
(2, 'Other', 0, 2, NULL, '2023-04-08 03:53:28', '2023-04-08 03:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `domain_pricings`
--

CREATE TABLE `domain_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transferprice` int(11) DEFAULT NULL,
  `transfer_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renewalprice` int(11) DEFAULT NULL,
  `renewal_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graceprice` int(11) DEFAULT NULL,
  `grace_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domain_pricings`
--

INSERT INTO `domain_pricings` (`id`, `category_id`, `name`, `price`, `price_duration`, `transferprice`, `transfer_duration`, `renewalprice`, `renewal_duration`, `graceprice`, `grace_duration`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '.bid', 1750, '1', 1700, '1', 1650, '1', 0, '40', 0, 2, 1, '2023-04-08 03:56:06', '2023-04-16 22:41:37'),
(2, '1', '.biz', 1700, '1', 1650, '1', 1650, '1', 0, '40', 0, 2, 1, '2023-04-08 03:57:18', '2023-04-16 22:42:37'),
(3, '2', '.cc', 2000, '1', 1900, '1', 1750, '1', 0, '40', 0, 2, 1, '2023-04-08 03:58:17', '2023-04-16 22:43:04'),
(4, '2', '.co', 2000, '1', 1900, '1', 1800, '1', 1750, '40', 0, 2, 1, '2023-04-08 03:59:55', '2023-04-17 04:05:35'),
(5, '1', '.com', 2200, '1', 2100, '1', 2000, '1', 0, '30', 0, 2, 1, '2023-04-08 04:00:59', '2023-04-16 22:44:05'),
(6, '1', '.com.bd', 2250, '1', 2000, '1', 1900, '1', 0, '30', 0, 2, 1, '2023-04-08 04:02:00', '2023-04-16 22:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genarel_settings`
--

CREATE TABLE `genarel_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genarel_settings`
--

INSERT INTO `genarel_settings` (`id`, `title`, `name`, `phone`, `email`, `address`, `logo`, `favicon`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Host', 'Web Host', '+88 01700000000', 'info@webhost.com', 'H##, R##, Dhaka, Bangladesh', NULL, 'favicon.png', NULL, 1, NULL, '2023-08-14 04:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_covers`
--

CREATE TABLE `home_covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discriptsion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_covers`
--

INSERT INTO `home_covers` (`id`, `title`, `discriptsion`, `created_by`, `updated_by`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Control panel is simple to use', 'Intuitive and easy-to-use graphical web-based web hosting control panel helps customer to manage their web hosting accounts with maximum efficiency.\r\nWeb Host is currently providing cPanel & DirectAdmin panel with Linux shared and Plesk panel with Windows shared web hosting plans.\r\nFor the VPS customers will get a control panel within their clients’ area to execute the different administrative tasks (eg. boot, reboot, shutdown, rescue, rebuild, etc.', NULL, 1, 'IMG_20230408070056.png', NULL, '2023-08-14 05:00:05');

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
(58, '2014_10_12_000000_create_users_table', 1),
(59, '2014_10_12_100000_create_password_resets_table', 1),
(60, '2019_08_19_000000_create_failed_jobs_table', 1),
(61, '2022_08_25_110145_create_sliders_table', 1),
(62, '2023_03_18_070921_create_contact_massages_table', 1),
(63, '2023_03_25_074536_create_services_types_table', 1),
(64, '2023_03_26_035321_create_cover_settings_table', 1),
(65, '2023_03_26_065441_create_abouts_table', 1),
(66, '2023_03_26_100828_create_chooses_table', 1),
(67, '2023_03_27_041522_create_home_covers_table', 1),
(68, '2023_03_27_053950_create_servicesmanages_table', 1),
(69, '2023_03_29_045837_create_package_types_table', 1),
(70, '2023_03_30_082334_create_package_manages_table', 1),
(71, '2023_04_01_080548_create_package_fetures_table', 1),
(72, '2023_04_02_034828_create_package_services_table', 1),
(73, '2023_04_02_064425_create_domain_categories_table', 1),
(74, '2023_04_02_071756_create_domain_pricings_table', 1),
(75, '2023_04_04_071222_create_contacts_table', 1),
(76, '2023_04_05_042435_create_genarel_settings_table', 1),
(78, '2023_04_12_043920_create_webcontents_table', 2),
(79, '2023_04_29_042700_create_covers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `package_fetures`
--

CREATE TABLE `package_fetures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_fetures`
--

INSERT INTO `package_fetures` (`id`, `package_id`, `title`, `detalis`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3', 'Fully Managed Hosting', NULL, 'IMG_20230410061959.png', 0, 1, NULL, '2023-04-10 00:19:59', '2023-04-10 00:19:59'),
(2, '3', 'Free cPanel', NULL, 'IMG_20230410062023.png', 0, 1, NULL, '2023-04-10 00:20:23', '2023-04-10 00:20:23'),
(3, '3', 'Upgradable CPU / RAM', NULL, 'IMG_20230410062054.png', 0, 1, NULL, '2023-04-10 00:20:54', '2023-04-10 00:20:54'),
(4, '3', 'Free SSL', NULL, 'IMG_20230410062130.png', 0, 1, NULL, '2023-04-10 00:21:30', '2023-04-10 00:21:30'),
(5, '3', '24x7 Support', NULL, 'IMG_20230410062157.png', 0, 1, NULL, '2023-04-10 00:21:57', '2023-04-10 00:21:57'),
(6, '3', 'Free Data Migration', NULL, 'IMG_20230410062249.png', 0, 1, NULL, '2023-04-10 00:22:49', '2023-04-10 00:22:49'),
(7, '3', 'SSL CERTIFICATES', NULL, 'IMG_20230410062318.png', 0, 1, NULL, '2023-04-10 00:23:18', '2023-04-10 00:23:18'),
(8, '3', 'TRANSFER WEBSITE & DOMAIN', NULL, 'IMG_20230410062341.png', 0, 1, NULL, '2023-04-10 00:23:41', '2023-04-10 00:23:41'),
(9, '1', 'Easy to use interface', 'You can access your email service from your PC or your Phone with our intuitive and responsive dashboard. The beautifully designed email client will give you a great experience on all your devices.', 'IMG_20230415061152.png', 0, 1, 1, '2023-04-10 01:25:58', '2023-04-15 00:11:52'),
(10, '1', 'Stay Secured from Malware Attack', 'Our inbuild anti-virus protects your inbox and secures your files so that you do not accidentally download any malware from the emails.', 'IMG_20230415061218.png', 0, 1, 1, '2023-04-10 01:26:34', '2023-04-15 00:12:18'),
(11, '1', 'Cloud & Dedicated Storage', 'Never lose access to your precious data with our remote backup servers. All your data will be backed up to a separate location providing you access to your data even in times of disaster.', 'IMG_20230415061246.png', 0, 1, 1, '2023-04-10 01:27:08', '2023-04-15 00:12:46'),
(12, '1', 'A service that you can rely on', 'With our 100% Network uptime and High-End redundant email system, you will get reliable service which ensures zero data loss.', 'IMG_20230415061324.png', 0, 1, 1, '2023-04-10 01:27:31', '2023-04-15 00:13:24'),
(13, '2', 'Client Area Manage', 'You can install, configure and manage VPS from IT Nut client area', 'IMG_20230415052359.png', 0, 1, 1, '2023-04-10 02:35:11', '2023-04-14 23:23:59'),
(14, '2', '1 Click Install', 'With 1 click you can install operating system, control panel and LAMP, LEMP on the server.', 'IMG_20230415052431.png', 0, 1, 1, '2023-04-10 02:35:33', '2023-04-14 23:24:31'),
(15, '2', 'Dedicated Resources', 'We provide Dedicated resources with KVM VPS', 'IMG_20230415052515.png', 0, 1, 1, '2023-04-10 02:35:53', '2023-04-14 23:25:15'),
(16, '2', 'Full Root Access', 'We give full access to VPS packages', 'IMG_20230415052547.png', 0, 1, 1, '2023-04-10 02:36:13', '2023-04-14 23:25:47'),
(17, '4', 'The All-New WebPro Panel', 'An intuitive, easy-to-use panel to manage products, orders and customers. The Supersite, Tax Engine, Billing & Invoicing features allow you run your business on your terms.', 'IMG_20230410091653.png', 0, 1, NULL, '2023-04-10 03:16:53', '2023-04-10 03:16:53'),
(18, '4', 'ResellerClub Mobile App', 'Buy Domains, Renew Orders, Track Funds & more at the click of a button. Available on Android & iOS.', 'IMG_20230410091748.png', 0, 1, NULL, '2023-04-10 03:17:48', '2023-04-10 03:17:48'),
(19, '4', 'Industry Best Prices & Offers', 'Highly competitive Pricing & Fantastic Promotions year round to help you make profits', 'IMG_20230410091829.png', 0, 1, NULL, '2023-04-10 03:18:29', '2023-04-10 03:18:29'),
(20, '4', 'Billing & Customer Automatione', 'Proven Automated Billing & Support management panels', 'IMG_20230410091929.png', 0, 1, NULL, '2023-04-10 03:19:29', '2023-04-10 03:19:29'),
(21, '4', 'Proven Scale & Expertise', 'One of the largest wholesale Domain Reseller programs, offering over 350 domain extensions', 'IMG_20230410092016.png', 0, 1, NULL, '2023-04-10 03:20:16', '2023-04-10 03:20:16'),
(22, '4', 'Easy Setup & Integration', 'Easy integration with our HTTP API and FREE storefront – SuperSite', 'IMG_20230410092043.png', 0, 1, NULL, '2023-04-10 03:20:43', '2023-04-10 03:20:43'),
(23, '7', 'Data and device protection', 'Keep your personal data safer online with identity theft monitoring, risk alerts, expert guidance, and support with Microsoft Defender.1,2', 'IMG_20230410103016.png', 0, 1, NULL, '2023-04-10 04:30:16', '2023-04-10 04:30:16'),
(24, '7', 'Powerful productivity apps', 'Use Word, Excel, and PowerPoint to collaborate in real time or work offline.', 'IMG_20230410103055.png', 0, 1, NULL, '2023-04-10 04:30:55', '2023-04-10 04:30:55'),
(25, '7', 'OneDrive advanced security and backup', 'Securely save your photos and files in OneDrive with built-in ransomware detection and recovery protection6 across devices.', 'IMG_20230410103141.png', 0, 1, NULL, '2023-04-10 04:31:41', '2023-04-10 04:31:41'),
(26, '7', 'Add-free email', 'Use Outlook for your email, calendars, to do lists and contacts with built-in security tools that keep your information protected.7', 'IMG_20230410103229.png', 0, 1, NULL, '2023-04-10 04:32:29', '2023-04-10 04:32:29'),
(27, '7', 'Your digital notebook', 'Get organized with OneNote, a cross-functional digital notebook for all your note taking needs.', 'IMG_20230410103304.png', 0, 1, NULL, '2023-04-10 04:33:04', '2023-04-10 04:33:04'),
(28, '7', 'Video editor with premium filters and effects', 'Create and edit beautiful videos with ease using Clipchamp’s3 robust tools, intuitive controls, templates, and an extensive stock library.', 'IMG_20230410103338.png', 0, 1, NULL, '2023-04-10 04:33:38', '2023-04-10 04:33:38'),
(29, '5', 'Developer API', 'SMS REST API for Application development. Easy Integration with your software.', 'IMG_20230412101247.png', 0, 1, NULL, '2023-04-12 04:12:47', '2023-04-12 04:12:47'),
(30, '5', 'Long SMS Support', 'You can send up to 800 Characters in one SMS. Per SMS 160 Characters.', 'IMG_20230412101349.png', 0, 1, NULL, '2023-04-12 04:13:49', '2023-04-12 04:13:49'),
(31, '5', 'Use From Any Device', 'You can use your SMS Web Interface from PC, Tablet or Smart Phones.', 'IMG_20230412101438.png', 0, 1, NULL, '2023-04-12 04:14:38', '2023-04-12 04:14:38'),
(32, '5', 'SMS Template', 'You can create your Own SMS template for sending bulk SMS.', 'IMG_20230412101516.png', 0, 1, NULL, '2023-04-12 04:15:16', '2023-04-12 04:15:16'),
(33, '5', 'Scheduled SMS', 'Setup your schedule and deliver SMS on a specific Date and Time.', 'IMG_20230412101559.png', 0, 1, NULL, '2023-04-12 04:15:59', '2023-04-12 04:15:59'),
(34, '5', 'Delivery Report', 'Get detailed and accurate delivery report of your bulk SMS.', 'IMG_20230412101649.png', 0, 1, NULL, '2023-04-12 04:16:49', '2023-04-12 04:16:49'),
(35, '1', 'Manage Tasks, Calendars, Contacts', 'Get more productive with your tasks by managing your to-do list, contacts, and calendar with our productivity tools that you will get with the service.', 'IMG_20230415061347.png', 0, 1, NULL, '2023-04-15 00:13:47', '2023-04-15 00:13:47'),
(36, '1', 'One-stop solution for Business', 'Get all your business apps and email in one dashboard. Easily Use Docs, Spreadsheet, Presentation apps, and your branded business email all from one cloud solution.', 'IMG_20230415061411.png', 0, 1, NULL, '2023-04-15 00:14:11', '2023-04-15 00:14:11'),
(37, '6', 'Commitment to Security', 'We don\'t compromise on server security, we have highly skilled Engineers to maintain our server', 'IMG_20230415100603.png', 0, 1, NULL, '2023-04-15 04:06:03', '2023-04-15 04:06:03'),
(38, '6', '99.99% Uptime Guaranty', 'We give you guarantee about our service so you don\'t have to worry after buying us any service.', 'IMG_20230415100630.png', 0, 1, NULL, '2023-04-15 04:06:30', '2023-04-15 04:06:30'),
(39, '6', 'Reliablity', 'Success depends on strong honest relationships that involve having a strong bond with our customers.', 'IMG_20230415100657.png', 0, 1, NULL, '2023-04-15 04:06:57', '2023-04-15 04:06:57'),
(40, '6', '24/7 Premium Support', 'Our Special Support Engineer does their best to give as much support as possible for us customers.', 'IMG_20230415100719.png', 0, 1, NULL, '2023-04-15 04:07:19', '2023-04-15 04:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `package_manages`
--

CREATE TABLE `package_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_manages`
--

INSERT INTO `package_manages` (`id`, `package_id`, `name`, `title`, `duration`, `price`, `url`, `fetures`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'BACIS', 'Secure, reliable, and affordable web hosting', 'Year', '2000', 'http://127.0.0.1:8000', '[\"2GB SSD Storage\",\"200 GB Bandwidth\",\"5 MySQL\",\"7 Email\",\"5 Sub Domains\",\"2 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"Free SSL Unlimited\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:48:49', '2023-08-14 05:33:16'),
(2, 3, 'ADVANCED', 'Secure, reliable, and affordable web hosting', 'Year', '2800', 'http://127.0.0.1:8000', '[\"3 GB SSD Storage\",\"300 GB Bandwidth\",\"10 MySQL\",\"10 Email\",\"5 Sub Domains\",\"3 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:51:01', '2023-08-14 05:33:25'),
(3, 3, 'BUSINESS', 'Secure, reliable, and affordable web hosting', 'Year', '4500', 'http://127.0.0.1:8000', '[\"5 GB SSD Storage\",\"400 GB Bandwidth\",\"10 MySQL\",\"15 Email\",\"5 Sub Domains\",\"5 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:52:45', '2023-08-14 05:33:35'),
(4, 3, 'PROFESSIONAL', 'Secure, reliable, and affordable web hosting', 'Year', '8000', 'http://127.0.0.1:8000', '[\"10 GB SSD Storage\",\"1000 GB Bandwidth\",\"20 MySQL\",\"30 Email\",\"Unlimited Sub Domains\",\"5 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:55:08', '2023-08-14 05:33:47'),
(5, 3, 'ENTERPRISE', 'Secure, reliable, and affordable web hosting', 'Year', '12000', 'http://127.0.0.1:8000', '[\"15 GB SSD Storage\",\"10000 GB Bandwidth\",\"30 MySQL\",\"Unlimited Email\",\"Unlimited Sub Domains\",\"5 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:56:48', '2023-08-14 05:33:57'),
(6, 3, 'PREMIUM', 'Secure, reliable, and affordable web hosting', 'Year', '15000', 'http://127.0.0.1:8000', '[\"20 GB SSD Storage\",\"Unlimited GB Bandwidth\",\"30 MySQL\",\"Unlimited Email\",\"Unlimited Sub Domains\",\"5 Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-09 23:58:51', '2023-08-14 05:34:07'),
(7, 3, 'UNLIMITED', 'Secure, reliable, and affordable web hosting', 'Year', '19000', 'http://127.0.0.1:8000', '[\"25 GB SSD Storage\",\"Unlimited GB Bandwidth\",\"30 MySQL\",\"Unlimited Email\",\"Unlimited Sub Domains\",\"Unlimited Addon Domains\",\"24\\/7 Unlimited Support\",\"Free SSL Unlimited\",\"cPanel Control Panel\",\"10 GB Port Speed\",\"Free Daily Backup\"]', '0', 1, 1, '2023-04-10 00:00:37', '2023-08-14 05:34:19'),
(9, 1, 'Mail Basic', 'privacy security features', 'Year', '4000', 'http://127.0.0.1:8000', '[\"10 GB email space\",\"2 GB personal drive file storage\",\"Spam & Virus Filtering\",\"Webmail: GroupOffice\",\"Free Email Migration from other providers.\"]', '0', 1, 1, '2023-04-10 01:13:38', '2023-08-14 05:34:32'),
(10, 1, 'Mail Enhanced', 'privacy security features', 'Year', '4700', 'http://127.0.0.1:8000', '[\"25 GB Enhanced mailbox\",\"15 GB personal drive file storage\",\"Spam & Virus Filtering\",\"Webmail: GroupOffice\",\"Free Email Migration from other providers.\"]', '0', 1, 1, '2023-04-10 01:15:35', '2023-08-14 05:34:45'),
(11, 1, 'Custom Pack', 'privacy security features', 'Year', '6000', 'http://127.0.0.1:8000', '[\"Upto 50 GB Enhanced mailbox\",\"Upto 50 GB personal drive file storage\",\"Spam & Virus Filtering\",\"Webmail: GroupOffice\",\"Free Email Migration from other providers.\"]', '0', 1, 1, '2023-04-10 01:17:49', '2023-08-14 05:34:56'),
(13, 2, 'VPS 1', NULL, 'month', '7200', 'http://127.0.0.1:8000', '[\"RAM: 2 GB\",\"CPU:  1vCore\",\"Storage 40 GB SSD\",\"GB Bandwidth 1500GB\",\"Dedicated IP\",\"Full Root Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-10 02:30:38', '2023-08-14 05:39:05'),
(14, 2, 'VPS 2', NULL, 'month', '3500', 'http://127.0.0.1:8000', '[\"RAM: GB\",\"CPU: 2 vCore\",\"Storage: 60 GB SSD\",\"Bandwidth: 3000 GB\",\"Dedicated IP\",\"Full Root Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-10 02:32:08', '2023-08-14 05:39:17'),
(15, 2, 'VPS 3', NULL, 'month', '5000', 'http://127.0.0.1:8000', '[\"RAM: 8 GB\",\"CPU:4 vCore\",\"Storage:160 GB SSD\",\"Bandwidth:3750 GB\",\"Dedicated IP\",\"Full Root Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-10 02:33:17', '2023-08-14 05:39:27'),
(16, 4, 'STARTER', 'Perfect to Start Reselling', 'month', '2000', 'http://127.0.0.1:8000', '[\"Unlimited Websites\",\"Free SSL Certificate\",\"20 GB SSD Disk Space\",\"200 GB Data Transfer\",\"5 cPanel Accounts\"]', '0', 1, 1, '2023-04-10 03:00:54', '2023-08-14 05:39:37'),
(17, 4, 'ESSENTIAL', 'Perfect to Start Reselling', 'month', '2900', 'http://127.0.0.1:8000', '[\"Unlimited Websites\",\"Free SSL Certificate\",\"20 GB SSD Disk Space\",\"200 GB Data Transfer\",\"5 cPanel Accounts\"]', '0', 1, 1, '2023-04-10 03:02:12', '2023-08-14 05:39:51'),
(18, 4, 'ADVANCE', 'Best Value for Money', 'month', '3500', 'http://127.0.0.1:8000', '[\"Unlimited Websites\",\"Free SSL Certificate\",\"50 GB SSD Disk Space\",\"1000 GB Data Transfer\",\"5 cPanel Accounts\",\"Free WHMCS\",\"Unlimited Email\",\"5 cPanel Accounts\"]', '0', 1, 1, '2023-04-10 03:04:02', '2023-08-14 05:40:39'),
(19, 4, 'PRO', 'Resources to fuel your growth', 'month', '4200', 'http://127.0.0.1:8000/reseller-hosting', '[\"Unlimited Websites\",\"Free SSL Certificate\",\"100 GB SSD Disk Space\",\"2000 GB Data Transfer\",\"5 cPanel Accounts\",\"Free WHMCS\",\"Unlimited Email\",\"5 cPanel Accounts\"]', '0', 1, 1, '2023-04-10 03:06:06', '2023-04-16 23:29:36'),
(20, 4, 'ULTIMATE', 'Become a Web Hosting Pro', 'month', '5900', 'http://127.0.0.1:8000', '[\"Unlimited Websites\",\"Free SSL Certificate\",\"200 GB SSD Disk Space\",\"3900 GB Data Transfer\",\"5 cPanel Accounts\",\"Free WHMCS\",\"Unlimited Email\",\"5 cPanel Accounts\"]', '0', 1, 1, '2023-04-10 03:07:55', '2023-08-14 05:40:30'),
(21, 6, 'STARTER', NULL, 'month', '4500', 'http://127.0.0.1:8000', '[\"Processor 4 vCore\",\"RAM 8 GB\",\"Storage 250GB\",\"Zimbra OS Platform\",\"Full Administration\",\"Mail Domains\",\"Unlimited Mail Domains\",\"Unlimited Email Accounts\",\"Bandwidth 250GB\"]', '0', 1, 1, '2023-04-10 04:11:00', '2023-08-14 05:40:12'),
(22, 6, 'STANDARD', NULL, 'month', '5500', 'http://127.0.0.1:8000', '[\"Processor 4 vCore\",\"RAM 8 GB\",\"Storage 500GB\",\"Zimbra OS Platform\",\"Full Administration\",\"Mail Domains\",\"Unlimited Mail Domains\",\"Unlimited Email Accounts\",\"Bandwidth 500GB\"]', '0', 1, 1, '2023-04-10 04:12:37', '2023-08-14 05:40:01'),
(23, 6, 'PLUS', NULL, 'month', '9000', 'http://127.0.0.1:8000', '[\"Processor 4 vCore\",\"RAM 8 GB\",\"Storage 1TB\",\"Zimbra OS Platform\",\"Full Administration\",\"Mail Domains\",\"Unlimited Mail Domains\",\"Unlimited Email Accounts\",\"Bandwidth 1TB\"]', '0', 1, 1, '2023-04-10 04:15:13', '2023-08-14 05:42:07'),
(24, 7, '365 BUSINESS BASIC', NULL, 'user/month', '600', 'http://127.0.0.1:8000', '[\"Maximum number of users 300\",\"24\\/7 Support for end users via phone, chat, and email\",\"99.9% uptime guarantee\",\"Available on 5 phones, 5 tablets, 5 PC\\/Macs per user\",\"Licensed for commercial use\"]', '0', 1, 1, '2023-04-10 04:25:40', '2023-08-14 05:42:19'),
(25, 7, '365 BUSINESS STANDARD', NULL, 'user/month', '1200', 'http://127.0.0.1:8000', '[\"Maximum number of users 300\",\"24\\/7 Support for end users via phone, chat, and email\",\"99.9% uptime guarantee\",\"Available on 5 phones, 5 tablets, 5 PC\\/Macs per user\",\"Licensed for commercial use\"]', '0', 1, 1, '2023-04-10 04:27:07', '2023-08-14 05:42:29'),
(26, 7, '365 BUSINESS PREMIUM', NULL, 'user/month', '2200', 'http://127.0.0.1:8000', '[\"Maximum number of users 300\",\"24\\/7 Support for end users via phone, chat, and email\",\"99.9% uptime guarantee\",\"Available on 5 phones, 5 tablets, 5 PC\\/Macs per user\",\"Licensed for commercial use\"]', '0', 1, 1, '2023-04-10 04:28:15', '2023-08-14 05:42:39'),
(27, 8, 'BASIC', NULL, 'Per SMS', '2', 'http://127.0.0.1:8000', '[\"Type: Non-Masking\",\"Validity: 6 Month\",\"Quantity: 5,000\",\"Total Price: BDT 2,900\\/-\"]', '0', 1, 1, '2023-04-12 03:54:36', '2023-08-14 05:58:30'),
(28, 8, 'STANDARD', NULL, 'Per SMS', '1.50', 'http://127.0.0.1:8000', '[\"Type: Non-Masking\",\"Validity: 6 Month\",\"Quantity: 40,000 SMS\",\"Total Price: 10,000\\/-\"]', '0', 1, 1, '2023-04-12 03:55:48', '2023-08-14 05:44:33'),
(29, 8, 'BUSINESS', NULL, 'Per SMS', '1.20', 'http://127.0.0.1:8000', '[\"Type: Non-Masking\",\"Validity: 12 Month\",\"Quantity: 1000 SMS\",\"Total Price: 22,000\\/-\"]', '0', 1, 1, '2023-04-12 03:56:54', '2023-08-14 05:41:32'),
(30, 8, 'ENTERPRISE', NULL, 'Per SMS', '1', 'http://127.0.0.1:8000', '[\"Type: Non-Masking\",\"Validity: 12 Month\",\"Quantity: 250,00 SMS\",\"Total Price: 50,000\\/-\"]', '0', 1, 1, '2023-04-12 03:58:12', '2023-08-14 05:41:24'),
(31, 5, 'BASIC', NULL, 'Per SMS', '1.95', 'http://127.0.0.1:8000', '[\"Type: Masking\",\"Validity: 6 Month\",\"Quantity: 5,000\",\"Total Price: BDT 2,900\\/-\"]', '0', 1, 1, '2023-04-12 04:06:23', '2023-08-14 05:41:15'),
(32, 5, 'STANDARD', NULL, 'Per SMS', '1.50', 'http://127.0.0.1:8000', '[\"Type: Masking\",\"Validity: 6 Month\",\"Quantity: 40,000 SMS\",\"Total Price: 10,000\\/-\"]', '0', 1, 1, '2023-04-12 04:07:37', '2023-08-14 05:41:07'),
(33, 5, 'BUSINESS', NULL, 'Per SMS', '1.20', 'http://127.0.0.1:8000', '[\"Type: Masking\",\"Validity: 12 Month\",\"Quantity: 1000 SMS\",\"Total Price: 22,000\\/-\"]', '0', 1, 1, '2023-04-12 04:08:56', '2023-08-14 05:43:56'),
(34, 5, 'ENTERPRISE', NULL, 'Per SMS', '1', 'http://127.0.0.1:8000', '[\"Type: Masking\",\"Validity: 12 Month\",\"Quantity: 250,00 SMS\",\"Total Price: 50,000\\/-\"]', '0', 1, 1, '2023-04-12 04:10:03', '2023-08-14 05:43:43'),
(35, 2, 'VPS 4', NULL, 'month', '7800', 'http://127.0.0.1:8000', '[\"RAM: 12 BG\",\"CPU 5 vCore\",\"Storage: 240 GB SSD\",\"Bandwidth: 4875  BB\",\"Dedicated IP\",\"Full Root Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-14 23:08:48', '2023-08-14 05:43:26'),
(36, 2, 'VPS 5', NULL, 'month', '12000', 'http://127.0.0.1:8000', '[\"RAM: 16 GB\",\"CUP: 6vCore\",\"Storage:320 GB SSD\",\"Dedicated IP\",\"Full Root Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-14 23:11:58', '2023-08-14 05:43:16'),
(37, 2, 'VPS 6', NULL, 'month', '18000', 'http://127.0.0.1:8000', '[\"RAM: 32GB\",\"CPU: 8V Core\",\"Storage: 640 GB SSD\",\"bandwidth: 12000 GB\",\"Dedicated IP\",\"Full Root  Access\",\"Instant Activation\"]', '0', 1, 1, '2023-04-14 23:17:04', '2023-08-14 05:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `package_services`
--

CREATE TABLE `package_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_services`
--

INSERT INTO `package_services` (`id`, `package_id`, `title`, `detalis`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3', 'Weekly Backups recover', 'We\'ll give you weekly backup. You will be able to recover your website fully.', 'IMG_20230410062520.png', 0, 1, NULL, '2023-04-10 00:25:20', '2023-04-10 00:25:20'),
(2, '3', 'Optimized Control Panel', 'We provide cPanel to our clients and cPanel is a well optimized control panel.', 'IMG_20230410062620.png', 0, 1, NULL, '2023-04-10 00:26:20', '2023-04-10 00:26:20'),
(3, '3', '99.99% Server Up time', 'Web Host BD maintain guaranteed 99.99% up time. Its very important.', 'IMG_20230410062648.png', 0, 1, NULL, '2023-04-10 00:26:48', '2023-04-10 00:26:48'),
(4, '3', 'Server Level Protection', 'We maintain strong protection form server. Protected server, safe website', 'IMG_20230410062751.png', 0, 1, NULL, '2023-04-10 00:27:51', '2023-04-10 00:27:51'),
(5, '3', 'Optimized Software', 'We use all well optimized software to server that\'s very important.', 'IMG_20230410062923.png', 0, 1, NULL, '2023-04-10 00:29:23', '2023-04-10 00:29:23'),
(6, '3', 'Friendly Support', 'Our all clients get friendly support from us. We care our all clients equally.', 'IMG_20230410063015.png', 0, 1, NULL, '2023-04-10 00:30:15', '2023-04-10 00:30:15'),
(7, '1', 'Robust anti-spam protection', 'Enjoy super-secure email hosting including free anti-spam protection to safeguard every message.', 'IMG_20230415063313.png', 0, 1, 1, '2023-04-10 01:29:09', '2023-04-15 00:33:13'),
(8, '1', 'Safe and strong 2FA', 'Choose between webmail 2FA options — U2F (Universal 2nd Factor) and TOTP (Time-based One-Time Password)', 'IMG_20230415063337.png', 0, 1, 1, '2023-04-10 01:29:33', '2023-04-15 00:33:37'),
(9, '1', 'Tighter app security', 'Get enhanced account protection and privacy. You can set other secure passwords for apps to protect your main password from compromise.', 'IMG_20230415063417.png', 0, 1, 1, '2023-04-10 01:30:06', '2023-04-15 00:34:17'),
(10, '1', 'Brand impact', 'Strengthen your brand with social media links and bespoke logos, handwritten and HTML signatures. Create with images, colors, styles, and shapes to match.', 'IMG_20230415063445.png', 0, 1, 1, '2023-04-10 01:30:48', '2023-04-15 00:34:45'),
(11, '1', 'Free forwarding addresses', 'Look even more credible and use your professional email address to create aliases', 'IMG_20230415063527.png', 0, 1, 1, '2023-04-10 01:31:15', '2023-04-15 00:35:27'),
(12, '1', 'Confident growth', 'Scale up with our Pro and Ultimate plans where you can get extra mailboxes included, more storage, ActiveSync, CalDav, and CardDav. All additional mailboxes are 2x less than subscription prices.', 'IMG_20230415063552.png', 0, 1, 1, '2023-04-10 01:31:44', '2023-04-15 00:35:52'),
(13, '2', 'Predictable Pricing', 'We simplified cloud pricing to a flat fee so anyone can understand without complex calculation.', 'IMG_20230415053232.png', 0, 1, 1, '2023-04-10 02:36:50', '2023-04-14 23:32:32'),
(15, '2', 'Scaleable & Flexible', 'Our scaleable & Flexible plan allows you to scale as high as you need.', 'IMG_20230415053307.png', 0, 1, 1, '2023-04-10 02:37:52', '2023-04-14 23:33:07'),
(16, '2', 'Strong Security', 'Deploy your virtual machine worry free with our secure system.', 'IMG_20230415053340.png', 0, 1, 1, '2023-04-10 02:38:26', '2023-04-14 23:33:40'),
(17, '2', 'Managed Server', 'If you are not familiar with server management, we will manage it for you.', 'IMG_20230415053428.png', 0, 1, 1, '2023-04-10 02:38:58', '2023-04-14 23:34:28'),
(19, '6', 'DKIM & SPF', 'Free setup of your SPF and DKIM secure key so that your emails hit the inbox every time as authoritative mail.', 'IMG_20230410101623.png', 0, 1, NULL, '2023-04-10 04:16:23', '2023-04-10 04:16:23'),
(20, '6', 'DMARC & rDNS', 'Free setup of Reverse DNS along with the DMARC record entity. The reputation of your business is important!', 'IMG_20230410101716.png', 0, 1, NULL, '2023-04-10 04:17:16', '2023-04-10 04:17:16'),
(21, '6', 'POP3, IMAP, SMTP', 'Ready to serve all mail protocols seamlessly at the same time. Sync all your devices and feel free!', 'IMG_20230410101806.png', 0, 1, NULL, '2023-04-10 04:18:06', '2023-04-10 04:18:06'),
(22, '6', 'SSL/TLS Security', 'Mail server will be secured over SSL/TLS handshake and you can forget any security issues!', 'IMG_20230410101853.png', 0, 1, NULL, '2023-04-10 04:18:53', '2023-04-10 04:18:53'),
(23, '6', '99% Client Support', 'Support all kinds of mail clients like OperaMail, Thunderbird, Android, iOS, BlackBerry or any others!', 'IMG_20230410101948.png', 0, 1, NULL, '2023-04-10 04:19:48', '2023-04-10 04:19:48'),
(24, '6', 'No Spam! Only Mails!!', '24 hours scanning your inboxes and incoming mails to keep your junk-free. Blackhole spam or junk mails!', 'IMG_20230410102105.png', 0, 1, NULL, '2023-04-10 04:21:05', '2023-04-10 04:21:05'),
(25, '6', 'Windows/Mac Apps', '24 hours scanning your inboxes and incoming mails to keep your junk-free. Blackhole spam or junk mails!', 'IMG_20230410102141.png', 0, 1, NULL, '2023-04-10 04:21:41', '2023-04-10 04:21:41'),
(26, '6', 'Briefcase/Drive', 'To carry over your important documents and data online 24/7 available there is briefcase functionality.', 'IMG_20230410102218.png', 0, 1, NULL, '2023-04-10 04:22:18', '2023-04-10 04:22:18'),
(27, '7', 'asdfghjk', 'wq er qwer', 'IMG_20230410124654.png', 1, 1, NULL, '2023-04-10 06:46:54', '2023-04-10 06:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `package_types`
--

CREATE TABLE `package_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_types`
--

INSERT INTO `package_types` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'mail', 0, 1, NULL, '2023-04-09 23:38:57', '2023-04-09 23:38:57'),
(2, 'VPS', 0, 1, NULL, '2023-04-09 23:39:13', '2023-04-09 23:39:13'),
(3, 'shared-hosting', 0, 1, NULL, '2023-04-09 23:39:56', '2023-04-09 23:39:56'),
(4, 'reseller-hosting', 0, 1, NULL, '2023-04-09 23:40:15', '2023-04-09 23:40:15'),
(5, 'Masking sms', 0, 1, 1, '2023-04-09 23:40:30', '2023-04-12 03:45:11'),
(6, 'zimbra-mail', 0, 1, NULL, '2023-04-09 23:40:52', '2023-04-09 23:40:52'),
(7, 'office', 0, 1, 1, '2023-04-09 23:41:31', '2023-04-09 23:42:32'),
(8, 'Non Masking sms', 0, 1, NULL, '2023-04-12 03:45:37', '2023-04-12 03:45:37');

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
-- Table structure for table `servicesmanages`
--

CREATE TABLE `servicesmanages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicesmanages`
--

INSERT INTO `servicesmanages` (`id`, `service_type_id`, `history`, `status`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'Shared web hosting that’s faster and better to accommodate beginners to become professionals.', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:32:50', '2023-08-14 04:55:53'),
(2, '2', 'Get started with a VPS to enjoy the complete power & flexibility of having a  root/Administrator access.', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:33:37', '2023-08-14 04:56:01'),
(3, '3', 'If you’re looking to register a domain name then you’re at the right place.', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:33:58', '2023-08-14 04:56:09'),
(4, '4', 'Our professional business email solution plans helps businesses to build a professional brand image.', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:34:25', '2023-08-14 04:56:19'),
(5, '5', 'arget your audience within seconds. Schedule the texts easily and send them out in various regional langauges.', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:34:50', '2023-08-14 04:57:06'),
(6, '6', 'Office 365 is a cloud service platform that combines several productivity, collaboration, and communication applications', '0', 'http://127.0.0.1:8000', 2, 1, '2023-04-08 03:35:13', '2023-08-14 04:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `services_types`
--

CREATE TABLE `services_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_types`
--

INSERT INTO `services_types` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cloud Services', 0, 2, NULL, '2023-04-08 03:25:41', '2023-04-08 03:25:41'),
(2, 'VPS', 0, 2, NULL, '2023-04-08 03:25:57', '2023-04-08 03:29:03'),
(3, 'Domain', 0, 2, NULL, '2023-04-08 03:26:14', '2023-04-08 03:26:14'),
(4, 'Mail', 0, 2, NULL, '2023-04-08 03:28:07', '2023-04-08 03:28:07'),
(5, 'SMS', 0, 2, NULL, '2023-04-08 03:28:16', '2023-04-08 03:28:16'),
(6, 'Office 365', 0, 2, NULL, '2023-04-08 03:28:25', '2023-04-08 03:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sl`, `image`, `title`, `link`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 1, 'IMG_20230408045033.png', 'One Platform. Multiple Hosting Options.', 'https://incomcloud.com/shared-hosting', 0, 2, 1, '2023-04-07 22:50:33', '2023-04-14 22:03:48'),
(3, 2, 'IMG_20230408045057.png', 'One Platform. Best VPS Services', 'https://incomcloud.com/VPS', 0, 2, 1, '2023-04-07 22:50:57', '2023-04-14 22:03:38'),
(4, 3, 'IMG_20230408045133.png', 'Best Website Customize', 'https://incomcloud.com/web-development', 0, 2, 1, '2023-04-07 22:51:33', '2023-04-14 22:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `delete_able` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `status`, `is_admin`, `delete_able`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@app.com', NULL, '$2y$10$U0NvZUHexRXLeZXh3jMnM.JKWwkISjItScpkn72HUYWPdPJTBMSZG', '8809611403403', 'Urban Rose, Flat  3A, House 61, Road 27, Gulshan 1, Dhaka 1212.', NULL, 'IMG_20230408043652.png', 0, 1, 0, NULL, '2023-04-06 06:13:48', '2023-04-07 22:36:52'),
(2, 'Admin', 'incom cloud', 'info@gmail.com', NULL, '$2y$10$/aE9aXiEhcpeimx5H/awAeUx.w6ANkJvTT9eZkJTsXIN7UcNl2dLO', '8809611403403', 'Urban Rose, Flat-3A, House-61, Road-27, Gulshan-1, Dhaka-1212.', NULL, 'IMG_20230408044611.png', 0, 1, 1, NULL, '2023-04-07 22:44:28', '2023-04-07 22:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `webcontents`
--

CREATE TABLE `webcontents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discriptsion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webcontents`
--

INSERT INTO `webcontents` (`id`, `title`, `discriptsion`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Get one-click access to Website Admin and cPanel', 'One-click access to website admin and cPanel is available with many web hosting services. Most hosting providers offer a control panel for managing your website and hosting account. This control panel usually includes a link to access the website admin and cPanel. In some cases, you may need to log in to your hosting account first before you can access the control panel. Once you are logged into the control panel, you should be able to find the link to access the website admin and the cPanel.', 'IMG_20230415034615.png', '0', 1, 1, '2023-04-12 01:46:22', '2023-04-14 21:46:15'),
(3, 'Save time while building and maintaining sites', 'Use a Content Management System (CMS): CMSs such as WordPress and Drupal make it easy to quickly create and maintain websites. Use a Theme: Using a pre-designed theme to build your website can save you time in the long run. Automate Tasks: Use automation tools to help with tasks such as creating backups, optimizing images, and running updates. Streamline Your Process: Create a workflow for building and maintaining websites that you can repeat for new projects. Utilize Plugins and Widgets: Use plugins and widgets to add features and functionality to your website quickly and easily. Leverage Your Hosting Provider: Many hosting providers offer additional services to help you manage your website. Utilize Version Control: Use version control to keep track of changes to your website and roll back to a previous version if needed.', 'IMG_20230415034850.png', '0', 1, 1, '2023-04-12 01:47:01', '2023-04-14 21:48:50'),
(4, 'Monitor sites for critical issues.', '1. Monitor the website for performance issues such as slow loading times, errors, and broken links.\r\n2. Monitor customer feedback and reviews to identify any negative sentiment.\r\n3. Monitor uptime and downtime of the site.\r\n4. Monitor security for any threats or vulnerabilities.\r\n5. Monitor user engagement with the site and optimize accordingly.\r\n6. Monitor competitors’ websites for changes in features and pricing.\r\n7. Monitor search engine rankings to ensure your website is visible.\r\n8. Monitor your website for content quality and accuracy.\r\n9. Monitor the website for changes in the user interface.\r\n10. Monitor for any changes in the terms and conditions or privacy policies.', 'IMG_20230415035001.png', '0', 1, 1, '2023-04-12 01:47:37', '2023-04-14 21:50:01'),
(5, 'Safeguard sites with staging and backups', 'Safely test changes: Test site updates, code modifications and content changes on a staging site.\r\n\r\nEasy deployment: Deploy files and database changes from your staging site to live site in a single click.\r\n\r\nAutomated backups: Get automated daily, on-demand and downloadable backups, with 1-click restore.', 'IMG_20230412074938.png', '0', 1, NULL, '2023-04-12 01:49:38', '2023-04-12 01:49:38'),
(6, 'Bill clients using stunning invoices', 'Customize templates: Choose from a wide variety of templates and colours that suit your business.\r\n\r\nTrack payments: Record full and partial payments on all your invoices inside your Maestro dashboard.\r\n\r\nFlexibility: Add tax exemption and discounts on the professional services you offer.', 'IMG_20230412075025.png', '0', 1, NULL, '2023-04-12 01:50:25', '2023-04-12 01:50:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chooses`
--
ALTER TABLE `chooses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_massages`
--
ALTER TABLE `contact_massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cover_settings`
--
ALTER TABLE `cover_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_categories`
--
ALTER TABLE `domain_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_pricings`
--
ALTER TABLE `domain_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genarel_settings`
--
ALTER TABLE `genarel_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_covers`
--
ALTER TABLE `home_covers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_fetures`
--
ALTER TABLE `package_fetures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_manages`
--
ALTER TABLE `package_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_services`
--
ALTER TABLE `package_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_types`
--
ALTER TABLE `package_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `servicesmanages`
--
ALTER TABLE `servicesmanages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_types`
--
ALTER TABLE `services_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webcontents`
--
ALTER TABLE `webcontents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chooses`
--
ALTER TABLE `chooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_massages`
--
ALTER TABLE `contact_massages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cover_settings`
--
ALTER TABLE `cover_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `domain_categories`
--
ALTER TABLE `domain_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `domain_pricings`
--
ALTER TABLE `domain_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genarel_settings`
--
ALTER TABLE `genarel_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_covers`
--
ALTER TABLE `home_covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `package_fetures`
--
ALTER TABLE `package_fetures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `package_manages`
--
ALTER TABLE `package_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `package_services`
--
ALTER TABLE `package_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `package_types`
--
ALTER TABLE `package_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `servicesmanages`
--
ALTER TABLE `servicesmanages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services_types`
--
ALTER TABLE `services_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webcontents`
--
ALTER TABLE `webcontents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
