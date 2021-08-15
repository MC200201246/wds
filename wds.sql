-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 07:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wds`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Earlene Abernathy', 'Assumenda et aspernatur et qui illo ducimus.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(2, 'Rosa Kassulke', 'Ut nam mollitia iste.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(3, 'Darwin Johnson', 'Veritatis quos quia est omnis dolor ex consequatur.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(4, 'Bailey Zulauf', 'Voluptas totam doloremque fuga molestiae aut.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(5, 'Eliezer Keeling', 'Temporibus molestiae vitae velit.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(6, 'Ms. Katelyn Waters DVM', 'Qui natus ut dicta officiis dolor veritatis.', '2021-08-01 13:46:29', '2021-08-01 13:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `product_id`, `user_id`, `quantity`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 3, 0, '2021-08-01 14:26:19', '2021-08-02 12:40:08'),
(6, 1, 2, 3, 1, '2021-08-02 11:29:25', '2021-08-02 11:29:25'),
(7, 3, 1, 1, 0, '2021-08-02 12:16:58', '2021-08-02 12:40:08'),
(8, 3, 1, 1, 0, '2021-08-02 12:39:28', '2021-08-02 12:40:08'),
(9, 2, 1, 1, 0, '2021-08-02 12:46:45', '2021-08-02 12:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Melyna Will', 'Labore ut neque natus excepturi exercitationem nobis.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(2, 'Aniya McDermott', 'Minus at assumenda id perspiciatis et molestias.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(3, 'Gonzalo Osinski', 'Aut voluptatem rem tempora a.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(4, 'Seamus Schamberger', 'At corrupti eum aut reprehenderit.', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(5, 'Prof. Otis Raynor', 'Necessitatibus accusamus sit nulla blanditiis vero libero autem.', '2021-08-01 13:46:29', '2021-08-01 13:46:29');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_25_122012_create_category', 1),
(5, '2021_07_25_123057_create_brand', 1),
(6, '2021_07_25_123113_create_tag', 1),
(7, '2021_07_25_123144_create_product', 1),
(8, '2021_07_25_123256_create_cart', 1),
(9, '2021_07_25_123317_create_cart_item', 1),
(10, '2021_07_25_123330_create_order', 1),
(11, '2021_07_25_123343_create_order_item', 1),
(12, '2021_07_25_123357_create_payment', 1),
(13, '2021_07_25_123502_create_review', 1),
(14, '2021_07_25_123627_create_product_tags', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardholder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `card_number`, `cvc`, `expiry_date`, `cardholder_name`, `address`, `total_price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 2, '453452', '4352', 'AET3', '4534', 'T34T', 36, 0, '2021-08-01 13:59:40', '2021-08-01 13:59:40'),
(2, 2, '453452', '4352', 'AET3', '4534', 'T34T', 36, 0, '2021-08-01 13:59:58', '2021-08-01 13:59:58'),
(3, 1, '60980-', '679870970', '5689', '4534', '3452345', 21, 0, '2021-08-01 14:26:47', '2021-08-01 14:26:47'),
(4, 1, '12345', '21314', '123214', '123', '3452345', 22, 0, '2021-08-02 12:17:14', '2021-08-02 12:17:14'),
(5, 1, '13214', '234', '2454', '4534', '3452345', 23, 0, '2021-08-02 12:40:08', '2021-08-02 12:40:08'),
(6, 1, '324234', '32', '2341234', '234123', '12341232134', 0, 0, '2021-08-02 12:48:55', '2021-08-02 12:48:55'),
(7, 1, '324234', '32', '2341234', '234123', '12341232134', 0, 0, '2021-08-02 12:50:13', '2021-08-02 12:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `product_id`, `order_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 4, 9, '2021-08-01 13:59:58', '2021-08-01 13:59:58'),
(2, 1, 3, 3, 7, '2021-08-01 14:26:47', '2021-08-01 14:26:47'),
(3, 1, 4, 3, 7, '2021-08-02 12:17:14', '2021-08-02 12:17:14'),
(4, 3, 4, 1, 1, '2021-08-02 12:17:14', '2021-08-02 12:17:14'),
(5, 1, 5, 3, 7, '2021-08-02 12:40:08', '2021-08-02 12:40:08'),
(6, 3, 5, 1, 1, '2021-08-02 12:40:08', '2021-08-02 12:40:08'),
(7, 3, 5, 1, 1, '2021-08-02 12:40:08', '2021-08-02 12:40:08'),
(8, 2, 7, 1, 0, '2021-08-02 12:50:13', '2021-08-02 12:50:13');

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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` enum('cash_on_delivery','credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`, `brand_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Rosalinda Volkman MD', 'Error eos possimus aut iure officiis.', 7, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(2, 'Linnie Kozey', 'Magnam atque veritatis sed.', 0, 'http://via.placeholder.com/400x500', 6, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(3, 'Ubaldo Cummings', 'At porro quo ut.', 1, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(4, 'Mavis Zboncak', 'Rerum ut voluptatem reprehenderit voluptatibus.', 5, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(5, 'Keshawn Koch', 'Fugit sint praesentium quidem veritatis est officiis.', 0, 'http://via.placeholder.com/400x500', 6, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(6, 'Simeon Deckow Sr.', 'Deserunt est minus modi dignissimos molestiae ipsum.', 2, 'http://via.placeholder.com/400x500', 6, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(7, 'Claire Herzog', 'Explicabo veritatis nisi aut et dolores fugiat.', 3, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(8, 'Arvel Ratke', 'Maiores omnis animi sint rem sint neque voluptates molestias.', 9, 'http://via.placeholder.com/400x500', 4, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(9, 'Mr. Blaze Haag', 'Omnis ipsum iste explicabo qui provident voluptatem ipsam qui.', 1, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(10, 'Troy Brakus', 'Praesentium dolor eos velit nihil ut et.', 8, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(11, 'Loma Hermiston', 'Sit a amet earum non dolor dolore esse.', 6, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(12, 'Dr. Pearl Lockman V', 'Repudiandae dolorem quos eligendi omnis blanditiis sunt ex.', 1, 'http://via.placeholder.com/400x500', 2, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(13, 'Virginie Von', 'Quo similique ut laboriosam consequuntur modi consequatur ullam.', 1, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(14, 'Prof. Christy Reinger', 'Consequatur ut et sequi rerum optio quo.', 1, 'http://via.placeholder.com/400x500', 5, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(15, 'Prof. Darren Runolfsson PhD', 'Reprehenderit voluptatem et sunt repellendus fuga.', 2, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(16, 'Retha Lubowitz', 'Quis quo fuga quod omnis omnis ipsam sequi fugit.', 3, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(17, 'Chanelle Lehner', 'Consequuntur voluptatem rerum sunt facilis dolorum explicabo tempore.', 8, 'http://via.placeholder.com/400x500', 1, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(18, 'Esperanza Gottlieb', 'Eius commodi sapiente excepturi natus aut laborum.', 2, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(19, 'Creola Volkman DVM', 'Sed voluptate sequi fugiat in.', 5, 'http://via.placeholder.com/400x500', 5, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(20, 'Colleen Larkin', 'Quas voluptas aliquam reprehenderit.', 5, 'http://via.placeholder.com/400x500', 5, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(21, 'Raphaelle Braun DVM', 'Modi est eum vel quae harum.', 2, 'http://via.placeholder.com/400x500', 1, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(22, 'Leatha VonRueden', 'Ratione aperiam blanditiis iure vitae.', 1, 'http://via.placeholder.com/400x500', 4, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(23, 'Mrs. Carolina Satterfield', 'Est aut esse voluptas minus.', 1, 'http://via.placeholder.com/400x500', 4, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(24, 'Fredy Baumbach', 'Eos autem dolorem molestiae assumenda quo.', 1, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(25, 'Hiram Langosh', 'Velit molestias perferendis molestias eos.', 8, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(26, 'Prof. Rey Wilderman', 'Doloremque ut voluptatum adipisci dolores eveniet ab necessitatibus est.', 2, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(27, 'Judd McDermott', 'Blanditiis corrupti labore provident enim molestias ut.', 4, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(28, 'Sydney Carroll', 'Iure rerum incidunt suscipit ullam dicta enim.', 7, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(29, 'Gerald Leannon DVM', 'Porro nisi vel autem.', 7, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(30, 'Coleman Lueilwitz', 'Occaecati voluptatem non iure ut est sit.', 9, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(31, 'Conrad Windler', 'In nobis eos aut et qui.', 6, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(32, 'Ms. Annetta Koch', 'Eum debitis perferendis fugit aut quo perferendis.', 0, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(33, 'Mr. Joe Hand Sr.', 'Eos aut quo eveniet nobis.', 7, 'http://via.placeholder.com/400x500', 6, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(34, 'Mr. Rudolph Keeling II', 'Ea modi autem quisquam saepe suscipit.', 5, 'http://via.placeholder.com/400x500', 4, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(35, 'Michele Braun I', 'Eaque in eos occaecati dolores nisi quam qui.', 3, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(36, 'Anthony O\'Reilly', 'Saepe sit aut enim neque rerum quidem.', 5, 'http://via.placeholder.com/400x500', 5, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(37, 'Dr. Thalia Daugherty Jr.', 'Rerum architecto amet dolor nobis ut.', 5, 'http://via.placeholder.com/400x500', 4, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(38, 'Miss Maybell Hammes', 'Odio velit sit facere et pariatur sit dolores non.', 3, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(39, 'Stewart Oberbrunner', 'Ducimus sint dolor omnis fuga.', 3, 'http://via.placeholder.com/400x500', 5, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(40, 'Vernie Rowe III', 'Dolores blanditiis fugiat ratione voluptas quam quia qui.', 3, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(41, 'Kaylah Lindgren', 'Corrupti nesciunt ut possimus aliquid dolorem omnis.', 4, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(42, 'Name Tremblay', 'Accusantium voluptatem perspiciatis est aperiam blanditiis molestiae.', 4, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(43, 'Prof. Wendy Pacocha', 'Dolor eveniet qui aut voluptatem est sint perferendis.', 2, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(44, 'Columbus Johns', 'Totam ab sed sapiente numquam sint sunt.', 8, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(45, 'Deion Hintz', 'Voluptatem et eaque magni voluptatem ipsum facere.', 2, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(46, 'Dr. Shaun Hills DDS', 'Mollitia sit et consequuntur quo eligendi.', 7, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(47, 'Cynthia Hilpert', 'Iste quis deserunt voluptas facilis.', 8, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(48, 'Brad Gislason', 'Vero alias provident rem.', 5, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(49, 'Deanna Fadel V', 'Tenetur vero natus omnis quis atque.', 9, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(50, 'Miss Maddison Lockman V', 'Quasi nulla et et ipsam.', 4, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(51, 'Dr. Cydney Jacobs', 'Ipsam velit ut numquam est est.', 6, 'http://via.placeholder.com/400x500', 6, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(52, 'Dr. Ursula Dooley', 'Esse voluptates ut eos voluptatum veritatis.', 3, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(53, 'Eli Batz', 'At odio reprehenderit voluptatem cupiditate.', 9, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(54, 'Archibald Wisoky', 'Rerum repellat voluptatibus facilis voluptatem corporis omnis eaque officiis.', 2, 'http://via.placeholder.com/400x500', 2, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(55, 'Emmie Cruickshank', 'Ut cum reiciendis quas.', 5, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(56, 'Mrs. Sharon O\'Reilly MD', 'Ipsam aspernatur ea vero inventore.', 1, 'http://via.placeholder.com/400x500', 3, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(57, 'Adolph Crona Sr.', 'Quas maiores ut eos.', 5, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(58, 'Dr. Lorna Mosciski', 'Et natus voluptatem temporibus distinctio maxime.', 3, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(59, 'Avis Shanahan', 'Ex eligendi delectus nobis dolorem ea in.', 3, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(60, 'Mr. Vincenzo Sipes', 'Ipsam fugiat et autem reiciendis amet ut sed.', 2, 'http://via.placeholder.com/400x500', 4, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(61, 'Jameson Mante', 'Fugiat ut fugit saepe deleniti enim ex perferendis.', 8, 'http://via.placeholder.com/400x500', 1, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(62, 'Mrs. Melyna Herman', 'Repellendus excepturi dignissimos sit qui iure.', 5, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(63, 'Prof. Cyril Maggio', 'Repudiandae eum unde praesentium dolorem.', 9, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(64, 'Jackson Heller', 'Ut quisquam ad aperiam fugit.', 3, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(65, 'Raleigh Larkin', 'Error aut voluptatum perferendis sit nam quas.', 1, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(66, 'Prof. Loren Mann II', 'Facilis quam velit velit ullam nihil libero blanditiis.', 0, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(67, 'Jamir Thompson', 'Dolor error iusto fugit qui.', 7, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(68, 'Mrs. Carmen Herzog', 'Cupiditate perferendis dolores impedit voluptas culpa atque a.', 2, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(69, 'Sterling Hessel', 'Et laboriosam et mollitia.', 1, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(70, 'Jonathon Gaylord', 'Porro voluptas praesentium fugiat velit dignissimos omnis.', 9, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(71, 'Dr. Marco Wisozk', 'Sed quod quis sit vel cumque.', 7, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(72, 'Violet Frami', 'Repudiandae omnis quidem atque soluta fuga.', 9, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(73, 'Mr. Napoleon Witting', 'Eos ex laboriosam at.', 2, 'http://via.placeholder.com/400x500', 4, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(74, 'Zane Bernhard', 'Quia voluptatum natus et magni asperiores debitis et.', 7, 'http://via.placeholder.com/400x500', 2, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(75, 'Sid Heathcote', 'Quibusdam quis magni possimus eum tempore possimus sit.', 9, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(76, 'Margie Purdy', 'Et voluptatum velit impedit magni rerum ipsam sunt.', 7, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(77, 'Hilbert Lang Sr.', 'Neque dicta optio ipsa dolor reiciendis dolore.', 5, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(78, 'Dr. Mekhi Shanahan III', 'Animi vel ut expedita voluptatem asperiores rerum.', 9, 'http://via.placeholder.com/400x500', 6, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(79, 'Napoleon Weimann IV', 'Porro quia illum inventore nulla.', 4, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(80, 'Ms. Liliane Marvin', 'Qui vitae ut sapiente et ea.', 9, 'http://via.placeholder.com/400x500', 1, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(81, 'Angela Davis', 'Qui ea labore eos et.', 8, 'http://via.placeholder.com/400x500', 4, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(82, 'Reyna O\'Reilly Jr.', 'Ut nemo ut autem a.', 3, 'http://via.placeholder.com/400x500', 6, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(83, 'Jamir Conroy', 'Odit sed alias eius magnam sunt repellat illum.', 4, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(84, 'Carlotta Strosin II', 'Et fugit id vel quasi rem dolore numquam.', 1, 'http://via.placeholder.com/400x500', 1, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(85, 'Ms. Eloise Donnelly', 'Vel sed incidunt occaecati delectus eaque libero veritatis.', 3, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(86, 'Ron Monahan III', 'Eum repellendus rerum assumenda esse.', 0, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(87, 'Kailee Bernhard', 'Et et aut id nostrum.', 5, 'http://via.placeholder.com/400x500', 6, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(88, 'Chaya Hyatt', 'Est blanditiis magni facere maxime.', 2, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(89, 'Prof. Althea Cremin', 'Est qui ipsum ratione ratione.', 1, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(90, 'Hailey Bashirian', 'Et consectetur reprehenderit omnis tenetur eos deserunt ut perferendis.', 5, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(91, 'Lelah Kling', 'Repudiandae ab nobis qui aliquam.', 0, 'http://via.placeholder.com/400x500', 1, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(92, 'Miss Magdalena Leuschke', 'Totam laudantium voluptatem nulla laboriosam.', 9, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(93, 'Arlie Gerhold', 'Et non quaerat alias quam repellendus.', 1, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(94, 'Kirk Jaskolski', 'Modi ut velit adipisci possimus reiciendis aut accusamus ad.', 2, 'http://via.placeholder.com/400x500', 1, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(95, 'Ms. Kiara Murazik', 'Eius voluptatum omnis adipisci omnis veniam qui est maxime.', 2, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(96, 'Marcellus Konopelski IV', 'Debitis aut quisquam earum esse.', 8, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(97, 'Kennedy Keebler', 'Quia architecto voluptatem quae odit.', 3, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(98, 'Bernice Buckridge', 'Consequuntur facere ea est doloremque.', 9, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(99, 'Ms. Mertie Herman', 'Impedit reprehenderit omnis dolore similique repudiandae sed.', 2, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(100, 'Beryl Rogahn', 'Officia ipsa nesciunt molestias odio et unde sit et.', 8, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(101, 'Dr. Deven Huel III', 'Consectetur quis et dolor vero qui est aut.', 1, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(102, 'Madisen Borer', 'Labore sint laborum autem ad.', 3, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(103, 'Kayden Breitenberg', 'Aperiam dolorum blanditiis veniam quia.', 5, 'http://via.placeholder.com/400x500', 4, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(104, 'Dr. Ardith Hahn PhD', 'Expedita aliquam voluptatibus reprehenderit minus beatae.', 4, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(105, 'Flavio Weber DVM', 'Aut beatae distinctio ea nam ipsam sed voluptatem.', 9, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(106, 'Junior Ernser Jr.', 'Magnam possimus facilis voluptatem.', 8, 'http://via.placeholder.com/400x500', 5, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(107, 'Prof. Deontae Goldner III', 'Quas sed ipsa doloribus qui.', 1, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(108, 'Laurie Hickle Sr.', 'Rerum et officia distinctio suscipit magni.', 1, 'http://via.placeholder.com/400x500', 2, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(109, 'Prof. Cade Ankunding DVM', 'Suscipit in dignissimos nam reiciendis sit aut iste.', 7, 'http://via.placeholder.com/400x500', 3, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(110, 'Margaret Johnson III', 'Quidem aliquid est dolores et et rerum nisi.', 9, 'http://via.placeholder.com/400x500', 5, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(111, 'Mrs. Felipa Conn', 'Sapiente quasi corrupti enim odio ipsam odit veritatis id.', 7, 'http://via.placeholder.com/400x500', 4, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(112, 'Scarlett Goyette', 'Minus odit expedita voluptas sapiente.', 7, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(113, 'Prof. Tyrel Terry Sr.', 'Iure pariatur enim saepe autem reprehenderit temporibus.', 7, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(114, 'Pansy McGlynn', 'Quo iusto nihil sequi ipsum.', 6, 'http://via.placeholder.com/400x500', 5, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(115, 'Syble Gleason', 'Dolor qui tempora voluptatem quas molestiae optio.', 0, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(116, 'Nels Kertzmann PhD', 'Voluptatibus odio aut et eum ut ea sapiente.', 0, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(117, 'Dr. Erwin Mayert', 'Quis animi doloribus minus asperiores animi.', 6, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(118, 'Antonietta Lemke', 'Rerum facilis ea eligendi.', 6, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(119, 'Aleen Conn', 'Quisquam nostrum ab dolorum doloribus sed explicabo.', 9, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(120, 'Tessie King III', 'Maiores a officiis numquam tenetur cupiditate est temporibus.', 7, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(121, 'Miss Lura Considine', 'Dolor praesentium ea cumque eligendi odio quaerat est.', 6, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(122, 'Emmie Kiehn', 'Reprehenderit omnis id quaerat eos voluptatibus architecto quo veritatis.', 6, 'http://via.placeholder.com/400x500', 2, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(123, 'Catalina Cummerata I', 'Ullam fugiat nam voluptas eum illum.', 3, 'http://via.placeholder.com/400x500', 3, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(124, 'Johnathon Ritchie', 'Ullam magni accusantium omnis ab ipsum libero nemo dolor.', 6, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(125, 'Ms. Alysha Stoltenberg', 'Voluptatem veniam blanditiis assumenda ullam.', 1, 'http://via.placeholder.com/400x500', 1, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(126, 'Agustina McLaughlin', 'Tenetur quos est nam corrupti voluptatem.', 1, 'http://via.placeholder.com/400x500', 3, 4, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(127, 'Dr. Herman Cartwright Jr.', 'Illum quidem eligendi repellendus repudiandae optio.', 5, 'http://via.placeholder.com/400x500', 4, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(128, 'Aurore Gleason', 'Pariatur nulla consequatur neque qui.', 1, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(129, 'Kaden Nader', 'Reiciendis nihil ut nulla et cum.', 9, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(130, 'Monty Adams', 'Incidunt sit velit magni et ut.', 4, 'http://via.placeholder.com/400x500', 1, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(131, 'Frida Jast', 'Rerum sed sequi sed.', 6, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(132, 'Shayna Schinner', 'Accusamus eos vel harum hic veritatis ratione earum.', 9, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(133, 'Kali Sanford', 'Eos dicta molestiae dolor perspiciatis corporis.', 1, 'http://via.placeholder.com/400x500', 4, 1, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(134, 'Edward Mayer', 'Beatae ex ipsam quis tempore.', 5, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(135, 'Roosevelt Pouros', 'Eos qui iure earum et.', 2, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(136, 'Mr. Dillon Botsford DVM', 'Enim quia sit dolor quos vitae porro porro.', 6, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(137, 'Andreanne Sawayn', 'Distinctio rerum autem sunt quibusdam repudiandae.', 2, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(138, 'Mrs. Amelie Corkery', 'Nobis aut iste molestiae.', 2, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(139, 'Prof. Estella Howe', 'Et provident hic et consequatur.', 9, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(140, 'Prof. Jeanie Kemmer', 'Consectetur repellendus est quae facere.', 0, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(141, 'Verona Pfannerstill', 'Tenetur vitae natus voluptatem id quam quaerat molestiae labore.', 9, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(142, 'Ms. Velma Bernhard V', 'Magnam doloribus veritatis quibusdam excepturi sit.', 8, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(143, 'Prof. Mac Stark', 'Quia expedita minima vitae.', 0, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(144, 'Luna Kiehn', 'Quam placeat voluptatem rerum est rem quo ratione sunt.', 1, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(145, 'Rowan Pacocha', 'Beatae rem accusamus libero impedit.', 9, 'http://via.placeholder.com/400x500', 3, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(146, 'Lillie Murphy', 'Reiciendis veritatis aut odio fugiat alias sint architecto.', 5, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(147, 'Pete Crist', 'Aut ipsam ut quasi aspernatur.', 9, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(148, 'Talia Welch', 'Enim earum totam inventore.', 7, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(149, 'Mrs. Carolyn Lemke II', 'Nihil nam architecto non.', 7, 'http://via.placeholder.com/400x500', 3, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(150, 'Tremayne Hills', 'Odio corrupti ratione est rerum atque distinctio eum.', 2, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(151, 'Ruth Tillman', 'Cum est sed eum ut et voluptas.', 6, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(152, 'Ray Aufderhar I', 'Provident suscipit quia aut voluptatibus.', 0, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(153, 'Prof. Maryjane Langworth', 'Mollitia itaque et quia repellendus et.', 8, 'http://via.placeholder.com/400x500', 3, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(154, 'Jeffry Kozey', 'Harum atque nulla veritatis dolor quam.', 4, 'http://via.placeholder.com/400x500', 3, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(155, 'Carlie Mueller', 'Adipisci soluta nobis quidem nam.', 7, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(156, 'Kristian Schultz Jr.', 'Voluptatem officiis autem architecto tempore totam nobis molestias.', 7, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(157, 'Prof. Clyde Kling DVM', 'Libero aliquid accusantium ut aliquam cumque ipsa.', 7, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(158, 'Wyman Stamm', 'Sint impedit culpa unde sunt voluptas sequi.', 5, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(159, 'Gudrun Fadel DVM', 'Et ipsum voluptatibus qui ut voluptatem voluptatem fugiat facere.', 7, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(160, 'Mr. Golden Klein V', 'Et earum minus fugit possimus culpa.', 6, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(161, 'Theresa Ledner DDS', 'Aliquid et et temporibus possimus eum animi.', 9, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(162, 'Kristin Buckridge V', 'Qui in excepturi ducimus iusto sit.', 0, 'http://via.placeholder.com/400x500', 6, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(163, 'Sincere Schneider', 'Sed dignissimos corporis molestiae culpa.', 4, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(164, 'Mr. Issac Hahn V', 'Id esse dolores itaque magnam molestiae.', 1, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(165, 'Mrs. Thea Doyle II', 'Voluptates minus itaque quibusdam neque officiis.', 3, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(166, 'Mrs. Aimee Terry', 'Perferendis beatae natus voluptatem libero id.', 4, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(167, 'Mrs. Eulalia Glover', 'Exercitationem nemo dolores nihil quo quia ut.', 3, 'http://via.placeholder.com/400x500', 5, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(168, 'Murl Wintheiser PhD', 'Ea explicabo eaque consequatur assumenda.', 2, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(169, 'Parker Lind', 'Optio natus provident quia aut et pariatur.', 4, 'http://via.placeholder.com/400x500', 3, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(170, 'Raegan Ledner III', 'Voluptatibus qui in qui voluptatem et itaque sunt.', 1, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(171, 'Prof. Lafayette Price', 'Ex deserunt minus vel natus sint beatae.', 5, 'http://via.placeholder.com/400x500', 1, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(172, 'Mr. Berry Hilpert', 'Maxime odit nemo accusantium officiis accusamus.', 1, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(173, 'Mr. Blaze Rath III', 'Quod rerum id consequatur ratione dolor ut harum.', 7, 'http://via.placeholder.com/400x500', 4, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(174, 'Gaetano Johnson', 'Facere et molestiae temporibus amet molestiae.', 8, 'http://via.placeholder.com/400x500', 5, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(175, 'Camron Sanford', 'Molestiae rerum et qui voluptas porro enim blanditiis.', 0, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(176, 'Jailyn Hartmann MD', 'Laboriosam fugiat non eligendi molestias cupiditate sint.', 1, 'http://via.placeholder.com/400x500', 3, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(177, 'Craig Nolan', 'Et quidem qui adipisci molestias rerum voluptatem.', 6, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(178, 'Jeanie Hagenes', 'Qui numquam tenetur id.', 4, 'http://via.placeholder.com/400x500', 6, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(179, 'Miss Alta DuBuque II', 'Eos officiis est voluptas temporibus cumque atque.', 3, 'http://via.placeholder.com/400x500', 2, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(180, 'Einar Rau', 'Consectetur aliquid aut et illum facilis.', 1, 'http://via.placeholder.com/400x500', 4, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(181, 'Prof. Broderick Von', 'Et iure et vitae et iure autem.', 0, 'http://via.placeholder.com/400x500', 4, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(182, 'Devon Dare', 'Dolore molestiae sed exercitationem cumque repellat consequatur ad.', 4, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(183, 'Harmony Frami', 'Voluptas iste consequatur ipsa possimus voluptas.', 3, 'http://via.placeholder.com/400x500', 3, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(184, 'Tobin Langworth DDS', 'Fugit consectetur maiores dignissimos expedita sunt.', 9, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(185, 'Ana Cruickshank PhD', 'Doloribus non ipsum ut non consectetur.', 1, 'http://via.placeholder.com/400x500', 6, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(186, 'Beverly Hyatt V', 'Ut id similique necessitatibus at id molestiae.', 1, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(187, 'Quincy Howell', 'Quia et tempora iure maxime.', 0, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(188, 'Prof. Otis Schmitt PhD', 'Facere saepe sint qui dolores placeat aliquid soluta.', 7, 'http://via.placeholder.com/400x500', 6, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(189, 'Amani Stanton', 'Voluptatibus animi in dolorem amet et fuga fugiat tempora.', 8, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(190, 'Ova McCullough DVM', 'Voluptatem velit qui quia.', 3, 'http://via.placeholder.com/400x500', 2, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(191, 'Armand Bartoletti', 'Dolorum perferendis quas est aut deserunt earum hic.', 3, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(192, 'Annabell Bogisich', 'Aut aut similique sunt eaque et.', 0, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(193, 'Nat Haley', 'Soluta quia voluptates fuga dolorum et et sed.', 3, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(194, 'Orie Koss', 'Labore ut quia rerum laboriosam natus.', 0, 'http://via.placeholder.com/400x500', 5, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(195, 'Henderson Stamm I', 'Suscipit rerum nobis tempore non magnam.', 2, 'http://via.placeholder.com/400x500', 4, 4, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(196, 'Danyka Roob I', 'Adipisci nulla possimus rerum rerum qui repudiandae eaque.', 8, 'http://via.placeholder.com/400x500', 2, 5, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(197, 'Sheldon Ortiz', 'Unde dolore ipsa explicabo perspiciatis delectus deleniti excepturi.', 3, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(198, 'Gay Hudson', 'Voluptatem aut aliquid similique dolor aut.', 8, 'http://via.placeholder.com/400x500', 2, 1, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(199, 'Dr. Werner Lehner V', 'Minus voluptas consectetur repudiandae.', 8, 'http://via.placeholder.com/400x500', 1, 2, '2021-08-01 13:46:30', '2021-08-01 13:46:30'),
(200, 'Willy Jerde DVM', 'Ut qui asperiores quaerat non deleniti.', 4, 'http://via.placeholder.com/400x500', 1, 3, '2021-08-01 13:46:30', '2021-08-01 13:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shanie O\'Conner II', 'admin@admin.com', '2021-08-01 13:46:29', '$2y$10$26DKtYzMEi2uo0PfnQkytuuMVwIfTwd6VOITijWQQXSWtcoCYp.hm', 'admin', 'F2QaZBbOHm', '2021-08-01 13:46:29', '2021-08-01 13:46:29'),
(2, 'Yazmin Wiegand', 'customer@customer.com', '2021-08-01 13:46:29', '$2y$10$bArPNPd5VXIfZKqlak3zluPQqaij5dAhrDic4giqJyROM0SAHtqxS', 'customer', 'tnjtd5r9Kc1gmPL0R15YOI9OJfxsk4gobEZsayfnCe4xR44ECYC1oWQ09fqa', '2021-08-01 13:46:29', '2021-08-01 13:46:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_item_product_id_foreign` (`product_id`),
  ADD KEY `cart_item_user_id_foreign` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_product_id_foreign` (`product_id`),
  ADD KEY `order_item_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_customer_id_foreign` (`customer_id`),
  ADD KEY `payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_brand_id_foreign` (`brand_id`),
  ADD KEY `product_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_product_id_foreign` (`product_id`),
  ADD KEY `review_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `cart_item_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `review_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
