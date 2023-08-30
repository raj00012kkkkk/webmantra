-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 11:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur et.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(2, 'Aspernatur.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(3, 'Voluptatem.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(4, 'Debitis.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(5, 'Consequatur.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(6, 'Nulla fuga sed.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(7, 'Sit occaecati.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(8, 'Sed aut nemo.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(9, 'Labore.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(10, 'Dolorem nisi.', '2023-08-30 16:59:50', '2023-08-30 16:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `qty`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 6, 4, '2023-08-30 17:02:42', '2023-08-30 17:02:42'),
(11, 1, 4, 8, '2023-08-30 18:04:35', '2023-08-30 18:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(2, 'Voluptatum.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(3, 'Autem cum eaque.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(4, 'Dolor atque.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(5, 'Rerum minima.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(6, 'Et accusamus.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(7, 'Dignissimos.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(8, 'Quaerat saepe.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(9, 'Tempore porro.', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(10, 'Id sint.', '2023-08-30 16:59:50', '2023-08-30 16:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(147, '2014_10_12_000000_create_users_table', 1),
(148, '2014_10_12_100000_create_password_resets_table', 1),
(149, '2019_08_19_000000_create_failed_jobs_table', 1),
(150, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(151, '2023_08_30_060548_create_brands_table', 1),
(152, '2023_08_30_060655_create_categories_table', 1),
(153, '2023_08_30_133409_create_products_table', 1),
(154, '2023_08_30_215156_create_carts_table', 1),
(157, '2023_08_31_001437_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_address` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `qty_product_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`qty_product_id`)),
  `paypal_resource_id` varchar(255) NOT NULL,
  `paypal_success_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`paypal_success_response`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `delivery_address`, `user_id`, `total_price`, `qty_product_id`, `paypal_resource_id`, `paypal_success_response`, `created_at`, `updated_at`) VALUES
(2, 'rajesh home', 1, 24.00, '[{\"1\":2},{\"1\":3},{\"1\":5},{\"1\":4},{\"1\":3}]', '53S65214EB2770246', '[{\"paypaldata\":{\"id\":\"53S65214EB2770246\",\"status\":\"COMPLETED\",\"payment_source\":{\"paypal\":{\"email_address\":\"sb-247g5o15211041@personal.example.com\",\"account_id\":\"Q5NW8DH9ZH9WA\",\"account_status\":\"VERIFIED\",\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"address\":{\"country_code\":\"IN\"}}},\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Flat no. 507 Wing A Raheja Residency\",\"address_line_2\":\"Film City Road\",\"admin_area_2\":\"Mumbai\",\"admin_area_1\":\"Maharashtra\",\"postal_code\":\"400097\",\"country_code\":\"IN\"}},\"payments\":{\"captures\":[{\"id\":\"72436891B2680121A\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"24.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"24.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"1.69\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"22.31\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/72436891B2680121A\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/72436891B2680121A\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/53S65214EB2770246\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2023-08-30T21:15:08Z\",\"update_time\":\"2023-08-30T21:15:08Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-247g5o15211041@personal.example.com\",\"payer_id\":\"Q5NW8DH9ZH9WA\",\"address\":{\"country_code\":\"IN\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/53S65214EB2770246\",\"rel\":\"self\",\"method\":\"GET\"}]}}]', '2023-08-30 21:14:43', '2023-08-30 21:15:09'),
(3, 'eheh', 1, 8.00, '[{\"1\":3},{\"1\":4}]', '0', '0', '2023-08-30 21:25:33', '2023-08-30 21:25:33'),
(4, 'nh', 1, 8.00, '[{\"1\":3},{\"1\":4}]', '0', '0', '2023-08-30 21:29:54', '2023-08-30 21:29:54'),
(5, 'rgreg', 1, 8.00, '[{\"1\":3},{\"1\":4}]', '04840775WD4474721', '[{\"paypaldata\":{\"id\":\"04840775WD4474721\",\"status\":\"COMPLETED\",\"payment_source\":{\"paypal\":{\"email_address\":\"sb-c5fkw27229950@personal.example.com\",\"account_id\":\"ZN25AEHJBQK8Y\",\"account_status\":\"VERIFIED\",\"name\":{\"given_name\":\"Raj\",\"surname\":\"Maiti\"},\"address\":{\"country_code\":\"US\"}}},\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"Raj Maiti\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"0V4666778H704293H\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"8.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"8.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"0.77\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"7.23\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0V4666778H704293H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0V4666778H704293H\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/04840775WD4474721\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2023-08-30T21:31:47Z\",\"update_time\":\"2023-08-30T21:31:47Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"Raj\",\"surname\":\"Maiti\"},\"email_address\":\"sb-c5fkw27229950@personal.example.com\",\"payer_id\":\"ZN25AEHJBQK8Y\",\"address\":{\"country_code\":\"US\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/04840775WD4474721\",\"rel\":\"self\",\"method\":\"GET\"}]}}]', '2023-08-30 21:30:20', '2023-08-30 21:31:48'),
(6, 'raj test', 1, 15.00, '[{\"1\":3},{\"1\":1},{\"1\":2}]', '3JW359235W8271439', '[{\"paypaldata\":{\"id\":\"3JW359235W8271439\",\"status\":\"COMPLETED\",\"payment_source\":{\"paypal\":{\"email_address\":\"sb-c5fkw27229950@personal.example.com\",\"account_id\":\"ZN25AEHJBQK8Y\",\"account_status\":\"VERIFIED\",\"name\":{\"given_name\":\"Raj\",\"surname\":\"Maiti\"},\"address\":{\"country_code\":\"US\"}}},\"purchase_units\":[{\"reference_id\":\"default\",\"shipping\":{\"name\":{\"full_name\":\"Raj Maiti\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"2VE80574180846831\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"15.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"15.00\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"1.01\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"13.99\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/2VE80574180846831\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/2VE80574180846831\\/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3JW359235W8271439\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2023-08-30T21:36:59Z\",\"update_time\":\"2023-08-30T21:36:59Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"Raj\",\"surname\":\"Maiti\"},\"email_address\":\"sb-c5fkw27229950@personal.example.com\",\"payer_id\":\"ZN25AEHJBQK8Y\",\"address\":{\"country_code\":\"US\"}},\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3JW359235W8271439\",\"rel\":\"self\",\"method\":\"GET\"}]}}]', '2023-08-30 21:35:49', '2023-08-30 21:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_title` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `product_img` text NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_status` varchar(255) NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `price`, `product_img`, `added_by`, `qty`, `category_id`, `brand_id`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Libbie Larson', 7.00, 'thumb-tomatoes.png', 4, 2, 6, 8, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(2, 'Kaley Pfannerstill', 1.00, 'thumb-tomatoes.png', 4, 5, 6, 4, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(3, 'Mrs. Magdalena Gislason IV', 7.00, 'thumb-tomatoes.png', 2, 1, 8, 3, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(4, 'Virginia Schmidt', 1.00, 'thumb-tomatoes.png', 2, 1, 5, 1, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(5, 'Eusebio Brakus', 8.00, 'thumb-tomatoes.png', 2, 0, 9, 1, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(6, 'Mrs. Daphney Murphy I', 1.00, 'thumb-tomatoes.png', 3, 2, 10, 10, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(7, 'Kamron Halvorson', 7.00, 'thumb-tomatoes.png', 6, 0, 8, 8, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(8, 'Skyla Abshire', 2.00, 'thumb-tomatoes.png', 1, 1, 9, 8, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(9, 'Roxanne Hammes', 6.00, 'thumb-tomatoes.png', 2, 4, 5, 5, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(10, 'Kara Strosin', 4.00, 'thumb-tomatoes.png', 6, 7, 6, 1, 'Y', '2023-08-30 16:59:50', '2023-08-30 16:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$RGTOYtrQaQaiQ/Mr.Rcb0eh84auZ0WTrkLbOccl1dtFjF4k49V/wC', NULL, '2023-08-30 16:57:52', '2023-08-30 16:57:52'),
(2, 'Stan Rohan', 'umarks@example.org', '2023-08-30 16:59:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w4uBJF5KHO', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(3, 'Raleigh Wilderman', 'bradtke.uriel@example.com', '2023-08-30 16:59:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GXw5LBE0ia', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(4, 'Mr. Keaton Mitchell', 'aaliyah74@example.org', '2023-08-30 16:59:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2l8QB3Iz3P', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(5, 'Dr. Ethan Emmerich II', 'aubrey42@example.org', '2023-08-30 16:59:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oFxhWjizxg', '2023-08-30 16:59:50', '2023-08-30 16:59:50'),
(6, 'Marco Ziemann', 'aubrey.gerhold@example.net', '2023-08-30 16:59:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4aABjafKcE', '2023-08-30 16:59:50', '2023-08-30 16:59:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_brand_name_unique` (`brand_name`) USING HASH;

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_cate_name_unique` (`cate_name`) USING HASH;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD KEY `products_added_by_foreign` (`added_by`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
