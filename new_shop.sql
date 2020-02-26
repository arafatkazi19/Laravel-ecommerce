-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 04:58 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'Asus', 'Mobiles and laptops', 1, '2019-07-12 09:19:05', '2019-07-12 09:19:05'),
(5, 'Ecstasy', 'All kinds of women and men clothing', 1, '2019-07-12 09:21:16', '2019-07-12 09:21:16'),
(6, 'Apple', 'Latest Apple products', 1, '2019-07-12 09:21:38', '2019-07-12 09:24:23'),
(7, 'German Shephard', 'Breed of medium to a large-sized working dog that originated in Germany', 1, '2019-07-12 09:24:01', '2019-07-12 09:48:37'),
(8, 'Hublot', 'An Italian Brand', 1, '2019-07-12 09:25:20', '2019-07-12 09:48:41'),
(9, 'Pedigree', 'Pet food', 1, '2019-07-12 10:02:15', '2019-07-12 10:02:15'),
(10, 'Dell', 'Good good good', 1, '2019-07-15 06:11:25', '2019-07-15 06:11:25'),
(11, 'Canon', 'All kinds of canon dslr camera', 1, '2019-07-16 02:10:03', '2019-07-16 02:10:03'),
(12, 'Nikon', 'All kinds of nikon cameras', 1, '2019-07-16 02:10:57', '2019-07-16 02:10:57'),
(13, 'Mi', 'Very Popular', 1, '2019-07-21 11:04:17', '2019-07-21 11:04:17'),
(14, 'Samsung', 'Samsung is all', 1, '2019-07-21 11:07:44', '2019-07-21 11:07:44'),
(15, 'Nokia', 'Old , reliable', 1, '2019-07-21 11:12:29', '2019-07-21 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(13, 'Women', 'Women Clothing', 1, '2019-07-12 09:15:15', '2019-07-12 09:15:15'),
(14, 'Men', 'Men Products', 1, '2019-07-12 09:15:35', '2019-07-12 09:15:35'),
(15, 'Laptops', 'All kinds of laptops', 1, '2019-07-12 09:15:57', '2019-07-12 09:48:23'),
(16, 'Mobiles', 'All brands of mobile and authentic', 1, '2019-07-12 09:16:40', '2019-07-12 09:48:27'),
(17, 'Pets', 'All kinds of pets and pets food', 0, '2019-07-12 09:18:04', '2019-07-13 09:35:05'),
(18, 'Camera', 'All kinds of dslr camera', 1, '2019-07-16 02:09:29', '2019-07-16 02:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_no`, `address`, `created_at`, `updated_at`) VALUES
(17, 'customer', 'five', 'cus@five.com', '$2y$10$UP4Hpvcf.WPdAeNylzm9JeKD6ReV66eMTEUXfmrzt6VnfD4jz8fz2', '01414', 'Dhanmondi , Dhaka', '2019-07-18 02:09:43', '2019-07-18 02:09:43'),
(18, 'customer', 'one', 'cus@one.com', '$2y$10$iN3boSJ2cBuD1Euvh3rJV.Lk64LafR9W24USnfi/7Ncv5raC7fauO', '01913', 'Mohammadpur , Dhaka', '2019-07-18 10:24:48', '2019-07-19 06:57:31'),
(19, 'customer', 'two', 'cus@two.com', '$2y$10$Pqj2aeAIcFgnBXNUQaW10.Sxk3sPXCltwd626EoBaIqZJJtadV.0y', '01832', 'Nawabpur , Dhaka', '2019-07-18 13:13:42', '2019-07-18 13:13:42'),
(20, 'customer', 'three', 'cus@three.com', '$2y$10$NfW1r9XIlLgJUCVkSoKRHeW9yzHaYzjmdthMmDOpL7kTkneS0Wndq', '01915', 'Dholaikhal , Dhaka', '2019-07-19 02:41:41', '2019-07-19 02:41:41'),
(21, 'Arafat', 'Kazi', 'arafatkazi47@gmail.com', '$2y$10$Yg2o..uhqeFB0FgLI8zs5.f8CKacTRoKxwClsAvJIhsHqyM4YgxMG', '01632', 'Wari , Dhaka', '2019-07-19 06:03:42', '2019-07-19 06:14:34'),
(22, 'customer', 'six', 'cus@six.com', '$2y$10$OLGERcojoU2YKwMii9xLFuMjKpkltUKcnGf2OU0r8foHWtVIiWRmW', '01712', 'Kurmitola , Dhaka', '2019-07-19 06:33:39', '2019-07-19 06:33:39'),
(23, 'customer', 'seven', 'cus@seven.com', '$2y$10$0CJRrFNRXjVD7bptqimbqO93.Ln1TiVQOnKkZx4mB0bhTv/7EcxxO', '01987', 'Mirpur , Dhaka', '2019-07-19 06:53:08', '2019-07-19 06:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_06_161832_create_categories_table', 2),
(4, '2019_07_08_122214_create_brands_table', 3),
(5, '2019_07_09_125251_create_products_table', 4),
(6, '2019_07_16_101439_create_customers_table', 5),
(7, '2019_07_17_143106_create_shippings_table', 6),
(8, '2019_07_17_152218_create_orders_table', 7),
(9, '2019_07_17_152259_create_payments_table', 7),
(10, '2019_07_17_152438_create_product_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 16, 2, 48500.00, 'Pending', '2019-07-17 11:24:16', '2019-07-17 11:24:16'),
(2, 16, 3, 24000.00, 'Pending', '2019-07-17 11:45:24', '2019-07-17 11:45:24'),
(3, 16, 3, 24000.00, 'Pending', '2019-07-17 11:46:02', '2019-07-17 11:46:02'),
(4, 16, 4, 224000.00, 'Pending', '2019-07-17 11:47:30', '2019-07-17 11:47:30'),
(7, 22, 12, 195000.00, 'Pending', '2019-07-19 08:03:22', '2019-07-19 08:03:22'),
(8, 20, 13, 96000.00, 'Pending', '2019-07-20 11:29:40', '2019-07-20 11:29:40'),
(11, 19, 14, 23500.00, 'Pending', '2019-07-21 09:31:14', '2019-07-21 09:31:14'),
(12, 19, 15, 124500.00, 'Pending', '2019-07-21 11:00:16', '2019-07-21 11:00:16'),
(13, 19, 16, 45888.00, 'Pending', '2019-07-22 05:36:45', '2019-07-22 05:36:45'),
(14, 17, 17, 2300.00, 'Pending', '2019-07-22 08:41:23', '2019-07-22 08:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash', 'Pending', '2019-07-17 11:24:17', '2019-07-17 11:24:17'),
(2, 2, 'cash', 'Pending', '2019-07-17 11:45:24', '2019-07-17 11:45:24'),
(3, 3, 'cash', 'Pending', '2019-07-17 11:46:02', '2019-07-17 11:46:02'),
(4, 4, 'cash', 'Pending', '2019-07-17 11:47:30', '2019-07-17 11:47:30'),
(5, 5, 'cash', 'Pending', '2019-07-18 10:09:53', '2019-07-18 10:09:53'),
(6, 6, 'cash', 'Pending', '2019-07-18 13:28:45', '2019-07-18 13:28:45'),
(7, 7, 'cash', 'Pending', '2019-07-19 08:03:22', '2019-07-19 08:03:22'),
(8, 8, 'cash', 'Pending', '2019-07-20 11:29:40', '2019-07-20 11:29:40'),
(9, 9, 'cash', 'Pending', '2019-07-21 09:07:02', '2019-07-21 09:07:02'),
(10, 10, 'cash', 'Pending', '2019-07-21 09:11:11', '2019-07-21 09:11:11'),
(11, 11, 'cash', 'Pending', '2019-07-21 09:31:14', '2019-07-21 09:31:14'),
(12, 12, 'cash', 'Pending', '2019-07-21 11:00:16', '2019-07-21 11:00:16'),
(13, 13, 'cash', 'Pending', '2019-07-22 05:36:45', '2019-07-22 05:36:45'),
(14, 14, 'cash', 'Pending', '2019-07-22 08:41:23', '2019-07-22 08:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 14, 5, 'Punjabi', 2300.00, 4, 'Best Eid Collection', '<p>Punjabi identity is primarily linguistic, geographical and cultural. Its identity is independent of historical origin or religion and refers to those who reside in the&nbsp;<strong>Punjab</strong>&nbsp;region</p>', 'product-images/panjabi.jpg', 1, '2019-07-12 09:51:31', '2019-07-12 09:51:31'),
(8, 13, 5, 'Salwar', 3890.00, 5, 'Best Eid Collection', '<h3>The&nbsp;<em>salwar kameez&nbsp;</em>is a traditional outfit worn by Punjabi women. It comprises a pair of trousers known as the&nbsp;<em>salwar</em>&nbsp;and a tunic called the&nbsp;<em>kameez</em>. Traditionally, the&nbsp;<em>salwar</em>&nbsp;trousers are tailored to be long and loose-fitting with narrow hems above the ankles that are stitched to look like cuffs.</h3>', 'product-images/salwar.jpg', 1, '2019-07-12 09:53:41', '2019-07-13 02:55:26'),
(10, 15, 4, 'Asus S100R', 34000.00, 5, 'Asus asus', '<p>Asus asus&nbsp;Asus asus&nbsp;Asus asus</p>', 'product-images/P_setting_F5F5F5_1_90_end_765.jpg', 1, '2019-07-12 09:56:42', '2019-07-12 09:56:42'),
(14, 17, 9, 'Cat\'s Food', 555.00, 4, 'cats food', '<p>cats food&nbsp;cats food&nbsp;cats food&nbsp;cats food</p>', 'product-images/download.jpg', 0, '2019-07-12 10:07:21', '2019-07-21 11:14:48'),
(16, 16, 6, 'Iphone XS', 100000.00, 4, 'Apple iPhone XS Max smartphone', '<p>features a 6.5-inch Super Retina display with custom-built OLED panels for an HDR display that provides the industry&#39;s best color accuracy, true blacks, and remarkable brightness</p>', 'product-images/iphone-xs-max-space-select-2018.jpg', 1, '2019-07-13 00:35:23', '2019-07-13 00:35:23'),
(17, 15, 10, 'Dell Inspiron 14-3462', 24000.00, 3, '4GB DDR3L 1600MHz', '<p>Yes we have EMI system with specific credit cards at regular price</p>', 'product-images/dell-cdc-3462-500x500.jpg', 1, '2019-07-15 06:12:34', '2019-07-15 06:12:34'),
(18, 18, 11, 'Canon EOS 1100D DSLR Camera', 23500.00, 1, '18-55mm Lens', '<p>Canon EOS 1100D 12.2 MP CMOS sensor and DIGIC 4 Image Processor for high image quality and speed..ISO 100 - 6400 for shooting from bright to dim light..Improved EOS HD Movie mode with expanded recording and with in-camera video editing options.High speed, reliable 9-point AF system utilizing a high precision, f/5.6 cross-type center point.Enhanced metering with a 63-zone, Dual-layer metering system for accurate metering between exposures.This DSLR camera provides 01 year warranty.</p>', 'product-images/1100d-500x500.jpg', 1, '2019-07-16 02:12:46', '2019-07-16 02:12:46'),
(19, 14, 8, 'Black Leather Watch AX2098', 24500.00, 2, 'Display Type: Analog', '<p>A sophisticated men&#39;s watch from Armani Exchange. The black dial features three chronograph sub-dials, with silver hands and hour markers. With a date window at the half past 4 position, quartz movement and comfy leather strap.</p>', 'product-images/0bdf3d5b759522b897cc9f6b6d4315a9.jpg', 1, '2019-07-16 02:16:19', '2019-07-16 02:16:19'),
(20, 18, 11, 'Canon EOS 1500D Digital SLR Camera', 25900.00, 2, 'EF S18-55 is II Lens/Camera Case', '<p>All camera users, even beginners, will be able to capture amazing images and movies with this DSLR camera, which is equipped with a 24.1-megapixel APS-C-size CMOS sensor and an optical viewfinder for an authentic DSLR shooting experience. Capturing sharp images is easy thanks to the fast, accurate AF and the large grip that provides a firm, steady hold on the camera. Built-in Wi-Fi / NFC connectivity enables the seamless upload of photos and videos to social media.</p>', 'product-images/canon-eos-1500d.jpeg', 1, '2019-07-21 09:43:49', '2019-07-21 09:43:49'),
(21, 16, 13, 'Xiaomi Redmi Note 7', 20999.00, 15, 'within the next', '<p>within the next&nbsp;&nbsp;within the next&nbsp;within the next&nbsp;within the next</p>', 'product-images/images.jpg', 1, '2019-07-21 11:05:39', '2019-07-21 11:05:39'),
(22, 16, 14, 'Samsung Galaxy M20', 21900.00, 5, 'order within', '<p>Released 2019, February<br />\r\n186g, 8.8mm thickness<br />\r\nAndroid 8.1, up to Android 9.0; One UI<br />\r\n64GB storage, microSD card slot</p>', 'product-images/samsung-galaxy-m20-m205f-1.jpg', 1, '2019-07-21 11:09:17', '2019-07-21 11:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 17, 'Dell Inspiron 14-3462', 24000.00, 1, '2019-07-17 11:46:02', '2019-07-17 11:46:02'),
(2, 4, 17, 'Dell Inspiron 14-3462', 24000.00, 1, '2019-07-17 11:47:31', '2019-07-17 11:47:31'),
(3, 4, 16, 'Iphone XS', 100000.00, 2, '2019-07-17 11:47:31', '2019-07-17 11:47:31'),
(4, 5, 19, 'Black Leather Watch AX2098', 24500.00, 1, '2019-07-18 10:09:53', '2019-07-18 10:09:53'),
(5, 5, 18, 'Canon EOS 1100D DSLR Camera', 23500.00, 1, '2019-07-18 10:09:53', '2019-07-18 10:09:53'),
(6, 6, 17, 'Dell Inspiron 14-3462', 24000.00, 1, '2019-07-18 13:28:45', '2019-07-18 13:28:45'),
(7, 7, 17, 'Dell Inspiron 14-3462', 24000.00, 2, '2019-07-19 08:03:22', '2019-07-19 08:03:22'),
(8, 7, 18, 'Canon EOS 1100D DSLR Camera', 23500.00, 2, '2019-07-19 08:03:22', '2019-07-19 08:03:22'),
(9, 7, 16, 'Iphone XS', 100000.00, 1, '2019-07-19 08:03:22', '2019-07-19 08:03:22'),
(10, 8, 17, 'Dell Inspiron 14-3462', 24000.00, 4, '2019-07-20 11:29:41', '2019-07-20 11:29:41'),
(11, 9, 18, 'Canon EOS 1100D DSLR Camera', 23500.00, 1, '2019-07-21 09:07:02', '2019-07-21 09:07:02'),
(12, 11, 18, 'Canon EOS 1100D DSLR Camera', 23500.00, 1, '2019-07-21 09:31:14', '2019-07-21 09:31:14'),
(13, 12, 19, 'Black Leather Watch AX2098', 24500.00, 1, '2019-07-21 11:00:16', '2019-07-21 11:00:16'),
(14, 12, 16, 'Iphone XS', 100000.00, 1, '2019-07-21 11:00:16', '2019-07-21 11:00:16'),
(15, 13, 8, 'Salwar', 3890.00, 1, '2019-07-22 05:36:45', '2019-07-22 05:36:45'),
(16, 13, 21, 'Xiaomi Redmi Note 7', 20999.00, 2, '2019-07-22 05:36:45', '2019-07-22 05:36:45'),
(17, 14, 7, 'Punjabi', 2300.00, 1, '2019-07-22 08:41:23', '2019-07-22 08:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_no`, `address`, `created_at`, `updated_at`) VALUES
(1, 'customer four', 'cus@four.com', '01834', 'Vuter Goli , Dhaka', '2019-07-17 08:46:33', '2019-07-17 08:46:33'),
(2, 'customer four', 'cus@four.com', '01834', 'Vuter Goli , Dhaka', '2019-07-17 11:24:12', '2019-07-17 11:24:12'),
(3, 'customer four', 'cus@four.com', '01834', 'Vuter Goli , Dhaka', '2019-07-17 11:45:19', '2019-07-17 11:45:19'),
(4, 'customer four', 'cus@four.com', '01834', 'Vuter Goli , Dhaka', '2019-07-17 11:47:26', '2019-07-17 11:47:26'),
(5, 'customer five', 'cus@five.com', '01414', 'Dhanmondi , Dhaka', '2019-07-18 02:16:14', '2019-07-18 02:16:14'),
(6, 'customer five', 'cus@five.com', '01414', 'Dhanmondi , Dhaka', '2019-07-18 03:24:50', '2019-07-18 03:24:50'),
(7, 'customer five', 'cus@five.com', '01414', 'Dhanmondi , Dhaka', '2019-07-18 10:04:35', '2019-07-18 10:04:35'),
(8, 'cus one', 'cus@one.com', '01913', 'Mohammadpur , Dhaka', '2019-07-18 11:47:06', '2019-07-18 11:47:06'),
(9, 'customer two', 'cus@two.com', '01832', 'Nawabpur , Dhaka', '2019-07-18 13:28:38', '2019-07-18 13:28:38'),
(10, 'customer three', 'cus@three.com', '01915', 'Dholaikhal , Dhaka', '2019-07-19 02:41:54', '2019-07-19 02:41:54'),
(11, 'customer seven', 'cus@seven.com', '01987', 'Mirpur , Dhaka', '2019-07-19 06:54:05', '2019-07-19 06:54:05'),
(12, 'customer six', 'cus@six.com', '01712', 'Kurmitola , Dhaka', '2019-07-19 08:03:17', '2019-07-19 08:03:17'),
(13, 'Aslam Haque', 'cus@three.com', '01717', 'Kataban , Dhaka', '2019-07-20 11:29:34', '2019-07-20 11:29:34'),
(14, 'customer two', 'cus@two.com', '01832', 'Nawabpur , Dhaka', '2019-07-21 09:06:56', '2019-07-21 09:06:56'),
(15, 'customer two', 'cus@two.com', '01832', 'Nawabpur , Dhaka', '2019-07-21 11:00:10', '2019-07-21 11:00:10'),
(16, 'customer two', 'cus@two.com', '01832', 'Nawabpur , Dhaka', '2019-07-22 05:36:39', '2019-07-22 05:36:39'),
(17, 'customer five', 'cus@five.com', '01414', 'Dhanmondi , Dhaka', '2019-07-22 08:41:19', '2019-07-22 08:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$Tm/x/WoXU2yo.RRVMKf6z.O7MMB7MyVyee9yRkSE6ihwr2/kFc3B6', 'H8CLdSESdsdtrwsUpjgCF78S2EAtk7x7qSpP3e1BWMD1Cj5ByWVVAHaLepVH', '2019-07-05 10:28:06', '2019-07-05 10:28:06'),
(2, 'Admin 2', 'admin2@admin.com', NULL, '$2y$10$cBQ5NRCz/E8DcLxYzIrBSu688VFAunhhlJPz1cUmTFE/DxgsfxaVu', '49jv8KYa3LR0or28oHDcjlpwRPbyN9NKY4oFiDZfGplODdUOHG9N2SM1jRf7', '2019-07-22 08:37:39', '2019-07-22 08:37:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
