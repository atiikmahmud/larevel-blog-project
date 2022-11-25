-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2022 at 09:59 AM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react-laravel-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Test Comment by me', 1, 2, '2022-09-25 23:32:21', '2022-09-25 23:32:21'),
(2, 'Test Comment bb', 1, 3, '2022-09-25 23:58:14', '2022-09-25 23:58:14'),
(3, 'test', 1, 2, '2022-09-27 04:03:01', '2022-09-27 04:03:01'),
(4, 'OK', 1, 2, '2022-09-27 04:04:37', '2022-09-27 04:04:37'),
(5, 'Yes', 1, 2, '2022-09-27 04:05:05', '2022-09-27 04:05:05'),
(6, 'wrwerwer', 1, 2, '2022-09-27 04:06:53', '2022-09-27 04:06:53'),
(7, 'cfvcf', 1, 2, '2022-09-27 04:10:23', '2022-09-27 04:10:23'),
(8, 'dfdfd', 1, 2, '2022-09-27 04:10:59', '2022-09-27 04:10:59'),
(9, 'frdfdf', 1, 2, '2022-09-27 04:12:19', '2022-09-27 04:12:19'),
(10, 'dfdf', 1, 2, '2022-09-27 04:13:34', '2022-09-27 04:13:34'),
(11, 'tttt', 1, 2, '2022-09-27 04:21:48', '2022-09-27 04:21:48'),
(12, 'grgrtgt', 2, 2, '2022-09-27 04:22:27', '2022-09-27 04:22:27'),
(13, 'dfdfdf', 2, 2, '2022-09-27 04:22:53', '2022-09-27 04:22:53'),
(14, 'fwffd', 2, 2, '2022-09-27 04:24:02', '2022-09-27 04:24:02'),
(15, 'vvv', 2, 2, '2022-09-27 04:24:25', '2022-09-27 04:24:25'),
(16, 'fdfdf', 2, 2, '2022-09-27 04:24:38', '2022-09-27 04:24:38'),
(17, 'hhhh', 2, 2, '2022-09-27 04:25:25', '2022-09-27 04:25:25'),
(18, 'hhh', 2, 2, '2022-09-27 04:26:13', '2022-09-27 04:26:13'),
(19, '123', 3, 2, '2022-09-27 04:32:47', '2022-09-27 04:32:47'),
(20, 'ssdsd', 3, 2, '2022-09-27 04:33:43', '2022-09-27 04:33:43'),
(21, 'bangladesh', 3, 2, '2022-09-27 04:36:21', '2022-09-27 04:36:21'),
(22, 'xcxc', 3, 2, '2022-09-27 04:37:21', '2022-09-27 04:37:21'),
(23, 'fff', 3, 2, '2022-09-27 04:39:50', '2022-09-27 04:39:50'),
(24, 'sdsdfsd', 3, 2, '2022-09-27 04:40:37', '2022-09-27 04:40:37'),
(25, 'erererer', 3, 2, '2022-09-27 04:41:21', '2022-09-27 04:41:21'),
(26, 'jkjk', 3, 2, '2022-09-27 04:43:10', '2022-09-27 04:43:10'),
(27, 'ddsd', 3, 2, '2022-09-27 04:44:06', '2022-09-27 04:44:06'),
(28, 'dfsfs', 3, 2, '2022-09-27 04:44:54', '2022-09-27 04:44:54'),
(29, 'sdfs', 3, 2, '2022-09-27 04:46:03', '2022-09-27 04:46:03'),
(30, 'jhkjkjk', 3, 2, '2022-09-27 04:47:34', '2022-09-27 04:47:34'),
(31, 'asas', 3, 2, '2022-09-27 04:48:41', '2022-09-27 04:48:41'),
(32, 'joy bangla', 11, 2, '2022-09-27 04:50:18', '2022-09-27 04:50:18'),
(33, 'dfdf', 11, 2, '2022-09-27 04:50:48', '2022-09-27 04:50:48'),
(34, 'sdsd', 11, 2, '2022-09-27 04:50:57', '2022-09-27 04:50:57'),
(35, 'yah', 1, 2, '2022-09-27 23:18:03', '2022-09-27 23:18:03'),
(36, 'dfgdfd', 2, 2, '2022-09-27 23:35:13', '2022-09-27 23:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Fahim Hasan', 'fahim@test.com', 'Shajgoj Limited, Bangladesh', '2022-09-20 05:53:08', '2022-09-20 05:53:08'),
(2, 'Nazrul Safa', 'nazrulsafa@test.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2022-09-25 11:08:59', '2022-09-25 11:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2022_09_18_102432_create_posts_table', 1),
(37, '2022_09_19_061659_add_column_to_users_table', 1),
(38, '2022_09_19_144558_create_contacts_table', 1),
(39, '2022_09_20_112847_add_column_to_posts_table', 1),
(41, '2022_09_25_054500_modify_column_type_to_posts_table', 2),
(42, '2022_09_25_193837_add_column_to_posts_table_new', 2),
(43, '2022_09_25_194333_create_comments_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `tag`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Test post one', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'test', '2022-09-21 04:37:18', '2022-09-21 04:37:18', 2),
(2, 'Lorem ipsum', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'lorem', '2022-09-21 04:39:43', '2022-09-21 04:39:43', 3),
(3, 'Test Post', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Test', '2022-09-21 05:36:11', '2022-09-21 05:36:11', 3),
(4, 'DDD', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'DDD', '2022-09-21 05:48:40', '2022-09-21 05:48:40', 2),
(5, '1212312', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1212121', '2022-09-21 05:58:56', '2022-09-21 05:58:56', 2),
(6, 'sdsdsd', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'sdsds', '2022-09-21 05:59:56', '2022-09-21 05:59:56', 2),
(7, 'Good Morning', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'test', '2022-09-24 23:35:47', '2022-09-24 23:35:47', 2),
(8, 'Long Test', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'test', '2022-09-24 23:48:45', '2022-09-24 23:48:45', 2),
(9, 'About Shajgoj Limitesd', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'shajgoj, test, others, dhaka, story', '2022-09-25 01:41:32', '2022-09-25 01:41:32', 2),
(10, 'Tech Team', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'test', '2022-09-25 04:35:39', '2022-09-25 04:35:39', 2),
(11, 'Joy bangla', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'test', '2022-09-25 11:11:16', '2022-09-25 11:11:16', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', 'admin@test.com', 'jaftFflLnzkjJ0XJ.jpg', NULL, '$2y$10$ASWFaUQJIji1zbKhHhCgeO0.PTw5U4HU2AEqRZ6m4HeXQ8tpwyg2C', NULL, '2022-09-20 05:42:59', '2022-09-20 05:49:50'),
(2, 'Atik Mahmud', '0', 'atik@test.com', '2heBlMPUkCFQNt5D.jpg', NULL, '$2y$10$g9UJq5gDx.Z02Sjdv5nXlO4tUBRT3uLjyidfKcQnsIOGHbJwh4o22', NULL, '2022-09-20 05:43:34', '2022-09-21 00:03:51'),
(3, 'Sejan Hoque', '0', 'sejan@test.com', 'vGOJJkG3RZzFCQLx.jpg', NULL, '$2y$10$QTW1wgJS3RelPXd5bfIOKO15fOhADmnyHqc6YPkjuVP/pF4OiJEsO', NULL, '2022-09-20 05:46:26', '2022-09-20 05:46:26'),
(4, 'Nayeem Hasan', '0', 'nayeem@test.com', 'KZYco80KG7IuzqsN.png', NULL, '$2y$10$CUoLmYIo2RCGhEsfnejDeeVQcs5Eq8xv4PB.nQ7nUbAJfVnoePg3W', NULL, '2022-09-20 05:46:54', '2022-09-20 05:46:54'),
(5, 'Rabbi Hasan', '0', 'rabbi@test.com', 'PV9kvuR2bdQ4yVjG.jpg', NULL, '$2y$10$EDDEb8V2tCcwIi0mqVOb5uQk6TR.EJSSkBEcBax8ZJbCj8aHzPqgC', NULL, '2022-09-20 05:47:27', '2022-09-20 05:47:27'),
(6, 'Tushar Khan', '0', 'tushar@test.com', 'VDdLXk2gUsazoo8r.jpg', NULL, '$2y$10$5cDT6gv6n7WT1VgpUVZTleTkusQLm4UevujpMDW91tUZFs/c5VPRe', NULL, '2022-09-20 05:48:11', '2022-09-20 05:48:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
