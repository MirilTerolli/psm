-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2017 at 02:16 AM
-- Server version: 5.7.16
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psm`
--

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gallery single picture', '2017-06-27 11:05:20', '2017-06-28 04:00:00'),
(2, 'Gallery multiple pictures', '2017-06-27 11:05:20', '2017-06-28 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gall_img_rel`
--

CREATE TABLE `gall_img_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `gall_id` int(10) UNSIGNED NOT NULL,
  `img_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gall_img_rel`
--

INSERT INTO `gall_img_rel` (`id`, `gall_id`, `img_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(2, 2, 2, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(3, 2, 3, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(4, 2, 4, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(5, 2, 5, '2017-06-28 04:00:00', '2017-06-28 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_width` int(11) NOT NULL,
  `img_height` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_link`, `img_name`, `img_width`, `img_height`, `created_at`, `updated_at`) VALUES
(1, 'https://www.site.com/christmas_flower.jpg', 'Christmas Flower', 1024, 980, '2017-06-28 04:00:00', '2017-06-30 04:00:00'),
(2, 'https://www.site.com/beach.jpg', 'Beach', 156, 234, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(3, 'https://www.site.com/dog.jpg', 'Dog', 720, 510, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(4, 'https://www.site.com/blueberry.jpg', 'Blueberry', 350, 270, '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(5, 'https://www.site.com/rose.jpg', 'Rose', 480, 300, '2017-06-28 04:00:00', '2017-06-28 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'flower', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(2, 'sun', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(3, 'water', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(4, 'blue', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(5, 'red', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(6, 'gift', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(7, 'santa', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(8, 'christmas', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(9, 'tulip', '2017-06-28 04:00:00', '2017-06-28 04:00:00'),
(10, 'dog', '2017-06-28 04:00:00', '2017-06-28 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `keyw_img_rel`
--

CREATE TABLE `keyw_img_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyw_id` int(10) UNSIGNED NOT NULL,
  `img_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyw_img_rel`
--

INSERT INTO `keyw_img_rel` (`id`, `keyw_id`, `img_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(2, 1, 5, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(3, 2, 2, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(4, 3, 2, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(5, 4, 2, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(6, 4, 4, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(7, 5, 1, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(8, 5, 5, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(9, 6, 1, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(10, 6, 5, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(11, 7, 1, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(12, 8, 1, '2017-06-29 04:00:00', '2017-06-29 04:00:00'),
(13, 10, 3, '2017-06-29 04:00:00', '2017-06-29 04:00:00');

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
(3, '2017_06_28_235214_create_galleries_table', 1),
(4, '2017_06_29_000149_create_images_table', 2),
(6, '2017_06_29_021009_create_gall_img_rel_table', 3),
(7, '2017_06_29_021639_create_keywords_table', 4),
(8, '2017_06_29_021955_create_keyw_img_rel', 5);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gall_img_rel`
--
ALTER TABLE `gall_img_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gall_img_rel_gall_id_foreign` (`gall_id`),
  ADD KEY `gall_img_rel_img_id_foreign` (`img_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyw_img_rel`
--
ALTER TABLE `keyw_img_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyw_img_rel_keyw_id_foreign` (`keyw_id`),
  ADD KEY `keyw_img_rel_img_id_foreign` (`img_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gall_img_rel`
--
ALTER TABLE `gall_img_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `keyw_img_rel`
--
ALTER TABLE `keyw_img_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gall_img_rel`
--
ALTER TABLE `gall_img_rel`
  ADD CONSTRAINT `gall_img_rel_gall_id_foreign` FOREIGN KEY (`gall_id`) REFERENCES `galleries` (`id`),
  ADD CONSTRAINT `gall_img_rel_img_id_foreign` FOREIGN KEY (`img_id`) REFERENCES `images` (`id`);

--
-- Constraints for table `keyw_img_rel`
--
ALTER TABLE `keyw_img_rel`
  ADD CONSTRAINT `keyw_img_rel_img_id_foreign` FOREIGN KEY (`img_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `keyw_img_rel_keyw_id_foreign` FOREIGN KEY (`keyw_id`) REFERENCES `keywords` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
