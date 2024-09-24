-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2024 at 09:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('test@gmail.com|127.0.0.1', 'i:1;', 1726832140),
('test@gmail.com|127.0.0.1:timer', 'i:1726832140;', 1726832140);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=visible,0=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Science', 'Category for science-related topics.', 1, '2023-01-01 03:30:00', '2023-01-01 03:30:00'),
(2, 'Mathematics', 'Category for mathematics-related topics.', 0, '2023-01-02 04:30:00', '2023-01-02 04:30:00'),
(3, 'Literature', 'Category for literature-related topics.', 1, '2023-01-03 05:30:00', '2023-01-03 05:30:00'),
(4, 'History', 'Category for history-related topics.', 0, '2023-01-04 06:30:00', '2023-01-04 06:30:00'),
(5, 'Technology', 'Category for technology-related topics.', 1, '2023-01-05 07:30:00', '2023-01-05 07:30:00'),
(6, 'Art', 'Category for art-related topics.', 0, '2023-01-06 08:30:00', '2023-01-06 08:30:00'),
(7, 'Music', 'Category for music-related topics.', 1, '2023-01-07 09:30:00', '2023-01-07 09:30:00'),
(8, 'Geography', 'Category for geography-related topics.', 0, '2023-01-08 10:30:00', '2023-01-08 10:30:00'),
(9, 'Sports', 'Category for sports-related topics.', 1, '2023-01-09 11:30:00', '2023-01-09 11:30:00'),
(10, 'Health', 'Category for health-related topics.', 0, '2023-01-10 12:30:00', '2023-01-10 12:30:00'),
(11, 'Business', 'Category for business-related topics.', 1, '2023-01-11 13:30:00', '2023-01-11 13:30:00'),
(12, 'Psychology', 'Category for psychology-related topics.', 0, '2023-01-12 14:30:00', '2023-01-12 14:30:00');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(5, '2024_09_19_094443_create_products_table', 2),
(6, '2024_09_19_095242_create_products_table', 3),
(7, '2024_09_19_114724_create_products_table', 4),
(16, '0001_01_01_000000_create_users_table', 5),
(17, '0001_01_01_000001_create_cache_table', 5),
(18, '0001_01_01_000002_create_jobs_table', 5),
(19, '2024_09_19_045841_create_categories_table', 5),
(20, '2024_09_19_123849_create_products_table', 5),
(21, '2024_09_20_045602_create_students_table', 5),
(22, '2024_09_20_055101_add_category_id_to_products_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=visible, 0=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `price`, `discount`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Science Book 1', 'An introductory book on science.', 1, 19.99, 10.00, 'product/1726835554.jpeg', 1, '2023-01-01 03:30:00', '2023-01-01 03:30:00'),
(2, 'Science Book 2', 'Advanced topics in science.', 1, 29.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-02 03:30:00', '2023-01-02 03:30:00'),
(3, 'Mathematics Guide 1', 'Basic concepts in mathematics.', 2, 15.99, 0.00, 'product/1726835554.jpeg', 1, '2023-01-03 04:30:00', '2023-01-03 04:30:00'),
(4, 'Mathematics Guide 2', 'Intermediate mathematics topics.', 2, 25.99, 15.00, 'product/1726835554.jpeg', 0, '2023-01-04 04:30:00', '2023-01-04 04:30:00'),
(5, 'Literature Novel 1', 'A classic literature novel.', 3, 12.99, 20.00, 'product/1726835554.jpeg', 1, '2023-01-05 05:30:00', '2023-01-05 05:30:00'),
(6, 'Literature Novel 2', 'A contemporary literature novel.', 3, 22.99, 10.00, 'product/1726835554.jpeg', 0, '2023-01-06 05:30:00', '2023-01-06 05:30:00'),
(7, 'History Book 1', 'An overview of world history.', 4, 18.99, 10.00, 'product/1726835554.jpeg', 1, '2023-01-07 06:30:00', '2023-01-07 06:30:00'),
(8, 'History Book 2', 'Key events in history.', 4, 28.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-08 06:30:00', '2023-01-08 06:30:00'),
(9, 'Tech Gadget 1', 'Latest technology gadget.', 5, 99.99, 20.00, 'product/1726835554.jpeg', 1, '2023-01-09 07:30:00', '2023-01-09 07:30:00'),
(10, 'Tech Gadget 2', 'Innovative tech device.', 5, 199.99, 15.00, 'product/1726835554.jpeg', 0, '2023-01-10 07:30:00', '2023-01-10 07:30:00'),
(11, 'Art Supplies 1', 'Basic art supplies set.', 6, 29.99, 5.00, 'product/1726835554.jpeg', 1, '2023-01-11 08:30:00', '2023-01-11 08:30:00'),
(12, 'Art Supplies 2', 'Advanced art supplies set.', 6, 49.99, 10.00, 'product/1726835554.jpeg', 0, '2023-01-12 08:30:00', '2023-01-12 08:30:00'),
(13, 'Music Album 1', 'Popular music album.', 7, 14.99, 0.00, 'product/1726835554.jpeg', 1, '2023-01-13 09:30:00', '2023-01-13 09:30:00'),
(14, 'Music Album 2', 'Latest hit music album.', 7, 19.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-14 09:30:00', '2023-01-14 09:30:00'),
(15, 'Geography Map 1', 'Detailed world map.', 8, 9.99, 10.00, 'product/1726835554.jpeg', 1, '2023-01-15 10:30:00', '2023-01-15 10:30:00'),
(16, 'Geography Map 2', 'Map of continents.', 8, 12.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-16 10:30:00', '2023-01-16 10:30:00'),
(17, 'Sports Equipment 1', 'Basic sports gear.', 9, 39.99, 15.00, 'product/1726835554.jpeg', 1, '2023-01-17 11:30:00', '2023-01-17 11:30:00'),
(18, 'Sports Equipment 2', 'Professional sports gear.', 9, 99.99, 20.00, 'product/1726835554.jpeg', 0, '2023-01-18 11:30:00', '2023-01-18 11:30:00'),
(19, 'Health Guide 1', 'Guide to a healthy lifestyle.', 10, 24.99, 10.00, 'product/1726835554.jpeg', 1, '2023-01-19 12:30:00', '2023-01-19 12:30:00'),
(20, 'Health Guide 2', 'Nutrition tips and tricks.', 10, 29.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-20 12:30:00', '2023-01-20 12:30:00'),
(21, 'Business Book 1', 'Essential business strategies.', 11, 29.99, 15.00, 'product/1726835554.jpeg', 1, '2023-01-21 13:30:00', '2023-01-21 13:30:00'),
(22, 'Business Book 2', 'Advanced business concepts.', 11, 34.99, 10.00, 'product/1726835554.jpeg', 0, '2023-01-22 13:30:00', '2023-01-22 13:30:00'),
(23, 'Psychology Book 1', 'Introduction to psychology.', 12, 19.99, 20.00, 'product/1726835554.jpeg', 1, '2023-01-23 14:30:00', '2023-01-23 14:30:00'),
(24, 'Psychology Book 2', 'Understanding human behavior.', 12, 22.99, 5.00, 'product/1726835554.jpeg', 0, '2023-01-24 14:30:00', '2023-01-24 14:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('50MbZPphNYGSVRkrXZwaPMdrRJrfehTjylwT7mC4', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjZwb05QeGdYeFlGV0YwS3Brc3h0SG45czBZQ1VhOG5idEdxa0lSSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727164241),
('MOsOjCBicIsnByLIJi4JkhsS96IUlvGF9wIUFcGp', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHdnQkxvY1U4SzZDbmk1Uzd4UGV3M1pQOGxBODRKUHFxeHRCdUhwcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1726899034);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `phone_number`, `profile_picture`, `address`, `bio`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', NULL, '12345678', '1234567890', 'student/1726834706.png', '123 Main St, City', 'A passionate learner.', 'admin', NULL, '2023-01-15 04:53:45', '2023-01-15 04:53:45'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', NULL, '12345678', '0987654321', 'student/1726834706.png', '456 Elm St, City', 'Loves mathematics.', 'user', NULL, '2023-02-05 08:42:30', '2023-02-05 08:42:30'),
(3, 'Emily', 'Johnson', 'emily.j@example.com', NULL, '12345678', '1112223333', 'student/1726834706.png', '789 Maple St, City', 'Enjoys science.', 'admin', NULL, '2023-03-10 03:15:12', '2023-03-10 03:15:12'),
(4, 'Michael', 'Williams', 'michael.w@example.com', NULL, '12345678', '4445556666', 'student/1726834706.png', '321 Oak St, City', 'Avid reader.', 'user', NULL, '2023-04-20 06:00:00', '2023-04-20 06:00:00'),
(5, 'Sarah', 'Brown', 'sarah.brown@example.com', NULL, '12345678', '7778889999', 'student/1726834706.png', '654 Pine St, City', 'Art enthusiast.', 'admin', NULL, '2023-05-15 03:45:22', '2023-05-15 03:45:22'),
(6, 'David', 'Jones', 'david.j@example.com', NULL, '12345678', '2223334444', 'student/1726834706.png', '987 Cedar St, City', 'Tech lover.', 'user', NULL, '2023-06-01 07:35:05', '2023-06-01 07:35:05'),
(7, 'Laura', 'Garcia', 'laura.g@example.com', NULL, '12345678', '5556667777', 'student/1726834706.png', '135 Birch St, City', 'Music lover.', 'admin', NULL, '2023-06-30 11:10:33', '2023-06-30 11:10:33'),
(8, 'Robert', 'Martinez', 'robert.m@example.com', NULL, '12345678', '8889990000', 'student/1726834706.png', '246 Walnut St, City', 'Sports fan.', 'user', NULL, '2023-07-12 06:30:12', '2023-07-12 06:30:12'),
(9, 'Mia', 'Hernandez', 'mia.h@example.com', NULL, '12345678', '3334445555', 'student/1726834706.png', '357 Spruce St, City', 'Nature enthusiast.', 'admin', NULL, '2023-08-05 10:00:00', '2023-08-05 10:00:00'),
(10, 'James', 'Lee', 'james.lee@example.com', NULL, '12345678', '6667778888', 'student/1726834706.png', '468 Fir St, City', 'History buff.', 'user', NULL, '2023-08-20 11:40:45', '2023-08-20 11:40:45'),
(11, 'Olivia', 'Nguyen', 'olivia.n@example.com', NULL, '12345678', '7778889990', 'student/1726834706.png', '579 Cherry St, City', 'Coding enthusiast.', 'admin', NULL, '2023-09-01 04:55:55', '2023-09-01 04:55:55'),
(12, 'William', 'Anderson', 'william.a@example.com', NULL, '12345678', '8889990001', 'student/1726834706.png', '680 Dogwood St, City', 'Adventure seeker.', 'user', NULL, '2023-09-10 09:20:22', '2023-09-10 09:20:22'),
(13, 'Sophia', 'Thomas', 'sophia.t@example.com', NULL, '12345678', '9990001112', 'student/1726834706.png', '791 Palm St, City', 'Culinary arts fan.', 'admin', NULL, '2023-09-15 05:41:11', '2023-09-15 05:41:11'),
(14, 'Benjamin', 'Taylor', 'benjamin.t@example.com', NULL, '12345678', '2223334444', 'student/1726834706.png', '852 Aspen St, City', 'Film lover.', 'user', NULL, '2023-09-18 04:00:30', '2023-09-18 04:00:30'),
(15, 'Ava', 'Moore', 'ava.m@example.com', NULL, '12345678', '5556667778', 'student/1726834706.png', '963 Magnolia St, City', 'Fashion enthusiast.', 'admin', NULL, '2023-09-19 02:52:15', '2023-09-19 02:52:15');

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
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'test1@gmail.com', NULL, '$2y$12$AMjIN.ZhfC39tAUZ3/GOreacd.sffIcRwH5VkyWla8pLa6SDln2S.', NULL, 'admin', '2024-09-20 06:04:08', '2024-09-20 06:04:08'),
(2, 'user', 'test@gmail.com', NULL, '$2y$12$WM5NsC6jhmzpSEhKR2p12.iTcB2dh.D1z9ifY1Q4RQEgjsgPLY7.6', NULL, 'user', '2024-09-20 06:04:58', '2024-09-20 23:30:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
