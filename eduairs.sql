-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 01:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduairs`
--

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2025_03_01_155739_create_permission_tables', 1),
(24, '2025_03_01_162230_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '7c964c910f4560e576139c0aa16dd8e4c4afa2145149ff0d2bfe08801dad52b3', '[\"*\"]', '2025-03-03 10:37:35', NULL, '2025-03-02 16:08:38', '2025-03-03 10:37:35'),
(2, 'App\\Models\\User', 2, 'auth_token', 'ffd5240be6d125d782b2c27c13d60880ebcefbb7b32e4233de5ff260610b45e8', '[\"*\"]', '2025-03-03 10:41:31', NULL, '2025-03-03 10:38:21', '2025-03-03 10:41:31'),
(3, 'App\\Models\\User', 2, 'auth_token', '8a806cd49cb949069b0fef42215fa75cb1a0a1b89b5eb7b8db3253255825f0e3', '[\"*\"]', '2025-03-03 10:53:54', NULL, '2025-03-03 10:52:46', '2025-03-03 10:53:54'),
(4, 'App\\Models\\User', 2, 'auth_token', 'fc4f56ea06822af6b6960ea548aa017e5ee5bf71a18a1f5239ad53680248510d', '[\"*\"]', '2025-03-03 10:57:41', NULL, '2025-03-03 10:57:06', '2025-03-03 10:57:41'),
(5, 'App\\Models\\User', 2, 'auth_token', '3c6cfb04c1afa42bb38c8754a591ccfa6d179370a5f8199849aa962e592cb4a9', '[\"*\"]', '2025-03-03 10:59:43', NULL, '2025-03-03 10:59:30', '2025-03-03 10:59:43'),
(6, 'App\\Models\\User', 3, 'auth_token', 'fdff995793bb5cb4e7046a43e4c8ec184aa00a43620273a0a758f31853fa4b16', '[\"*\"]', NULL, NULL, '2025-03-03 11:00:39', '2025-03-03 11:00:39'),
(7, 'App\\Models\\User', 4, 'auth_token', '58b172f39de394214e894fce66527c823deb5f6d8c9278efa75b6e03dc1cd934', '[\"*\"]', '2025-03-03 11:08:47', NULL, '2025-03-03 11:03:58', '2025-03-03 11:08:47'),
(8, 'App\\Models\\User', 3, 'auth_token', '3fb37b7435e9911b0f2951fdc73fcfb7702a11ee050bc93d66166d45e539967d', '[\"*\"]', '2025-03-03 11:09:51', NULL, '2025-03-03 11:09:49', '2025-03-03 11:09:51'),
(9, 'App\\Models\\User', 2, 'auth_token', '17361892cbe18a0b5dee6cbbcc0a61d911bf83ca4d7d4d822599fc5c37f8e1ab', '[\"*\"]', '2025-03-03 11:19:04', NULL, '2025-03-03 11:10:04', '2025-03-03 11:19:04'),
(10, 'App\\Models\\User', 3, 'auth_token', '87f5dcde4e3deda1b9bd9a084eb23545b221523da90e35c4d130f4ddeab2b458', '[\"*\"]', '2025-03-03 11:47:27', NULL, '2025-03-03 11:19:24', '2025-03-03 11:47:27'),
(11, 'App\\Models\\User', 2, 'auth_token', 'fd2d41b6e3a94122c75a49ccee99639c290a6d4ba6b7414a7c90cf2fb5e7c04f', '[\"*\"]', '2025-03-03 11:56:09', NULL, '2025-03-03 11:55:54', '2025-03-03 11:56:09'),
(12, 'App\\Models\\User', 2, 'auth_token', 'c3b936eb0ce68a4bbb90fb31ebf938538b5afaf733bb8569c0c56ce5639d96b5', '[\"*\"]', '2025-03-03 11:57:34', NULL, '2025-03-03 11:57:31', '2025-03-03 11:57:34'),
(13, 'App\\Models\\User', 2, 'auth_token', '55db543f6da5f220624cace3047a597450b312847e8233970113ba76855f6971', '[\"*\"]', '2025-03-03 12:01:30', NULL, '2025-03-03 12:00:58', '2025-03-03 12:01:30'),
(14, 'App\\Models\\User', 2, 'auth_token', '83aaf00948c4f9f736ac80a9a33880ac323ae4d8b3ae3eefa83471ec96dcdc04', '[\"*\"]', '2025-03-03 12:01:47', NULL, '2025-03-03 12:01:42', '2025-03-03 12:01:47'),
(15, 'App\\Models\\User', 3, 'auth_token', '5f2ea4f18b5bf54790a5d992d5963d580fb762fcd7a1b6517b91778220ca0dcd', '[\"*\"]', '2025-03-03 12:15:15', NULL, '2025-03-03 12:15:03', '2025-03-03 12:15:15'),
(16, 'App\\Models\\User', 4, 'auth_token', '945a28e2c95574eccbe01ed0dfbe3b32a7de080849eb5f19f2f7536e109a6880', '[\"*\"]', '2025-03-03 12:15:52', NULL, '2025-03-03 12:15:48', '2025-03-03 12:15:52'),
(17, 'App\\Models\\User', 2, 'auth_token', 'e825f7f262bffe09a4ea9a3dfb9f05ba2a4f65aad29a7a38aaff0c1cc0a7c847', '[\"*\"]', '2025-03-03 12:16:14', NULL, '2025-03-03 12:16:10', '2025-03-03 12:16:14'),
(18, 'App\\Models\\User', 5, 'auth_token', 'bb0be1a4b36a3aa746f75215740112fd34f0f5dc3be59c871a36baea7d38d8d7', '[\"*\"]', '2025-03-03 12:27:22', NULL, '2025-03-03 12:18:41', '2025-03-03 12:27:22'),
(19, 'App\\Models\\User', 6, 'auth_token', 'df3987f82188c813f1a343cb0628fef18961ebd0aead687df5fa0224827f1b99', '[\"*\"]', '2025-03-03 12:30:27', NULL, '2025-03-03 12:28:15', '2025-03-03 12:30:27'),
(20, 'App\\Models\\User', 2, 'auth_token', '35f57ce1bddabdaf6b732c9d7329e0cc50aeccd4378fcc860e82177355888feb', '[\"*\"]', '2025-03-03 12:53:37', NULL, '2025-03-03 12:30:38', '2025-03-03 12:53:37'),
(21, 'App\\Models\\User', 2, 'auth_token', '02a081b474d4ca676899b96518f1f8c81465e8372d052215b13bf0dd28687c9d', '[\"*\"]', NULL, NULL, '2025-03-03 13:19:46', '2025-03-03 13:19:46'),
(22, 'App\\Models\\User', 2, 'auth_token', '1f9a1b3e6a4ca90c41bc27e42eea187c37e311189acb285545965a16aa3303b3', '[\"*\"]', '2025-03-03 13:32:59', NULL, '2025-03-03 13:25:11', '2025-03-03 13:32:59'),
(23, 'App\\Models\\User', 2, 'auth_token', 'a2429fdd4437914c209c37da4919598b5ef2d071cf1a10189c734a38d96824ad', '[\"*\"]', '2025-03-03 15:21:29', NULL, '2025-03-03 13:33:37', '2025-03-03 15:21:29'),
(24, 'App\\Models\\User', 2, 'auth_token', 'cbbb35cafe41d2410be9cf372e11727f5f1ccd260a9f3e37f6bdc2778f7485cf', '[\"*\"]', '2025-03-03 15:21:56', NULL, '2025-03-03 15:21:56', '2025-03-03 15:21:56'),
(25, 'App\\Models\\User', 2, 'auth_token', 'a369e4d2615200586c970a2941efc7e752b2792d6bdab0030c3ee111f36cac30', '[\"*\"]', '2025-03-03 15:22:29', NULL, '2025-03-03 15:22:28', '2025-03-03 15:22:29'),
(26, 'App\\Models\\User', 2, 'auth_token', 'e270c316158fcdda11372291b9f777f1849b4664213aba58b4af26fcc0f12cea', '[\"*\"]', '2025-03-03 16:10:17', NULL, '2025-03-03 15:24:05', '2025-03-03 16:10:17'),
(27, 'App\\Models\\User', 2, 'auth_token', '37dc0653e095df5282195e5e473eb22c436015b731ffdf8f1ec1e8ab75e08d17', '[\"*\"]', '2025-03-03 16:14:24', NULL, '2025-03-03 16:11:49', '2025-03-03 16:14:24'),
(28, 'App\\Models\\User', 1, 'auth_token', '3e76a72431624dd5cc7785efc4d67fa79be27e94f660ea97db05165d7b11e66f', '[\"*\"]', '2025-03-03 16:19:56', NULL, '2025-03-03 16:15:20', '2025-03-03 16:19:56'),
(29, 'App\\Models\\User', 2, 'auth_token', '6451470a2cb552c45ff41fc440b6d6cde63a8611ace00bfcd603a3bc07088a7e', '[\"*\"]', '2025-03-03 16:20:21', NULL, '2025-03-03 16:20:09', '2025-03-03 16:20:21'),
(30, 'App\\Models\\User', 1, 'auth_token', '48aeae6d0563aa1ebc59d62c136132a6516c939cf652f77794fd0917408dad7e', '[\"*\"]', '2025-03-03 17:10:31', NULL, '2025-03-03 16:20:45', '2025-03-03 17:10:31'),
(31, 'App\\Models\\User', 1, 'auth_token', '5c05e2e3b0a182efd0a306c5a6d2a9fc70f30e38e33806d4918e4b517d119d36', '[\"*\"]', '2025-03-03 17:36:50', NULL, '2025-03-03 17:14:59', '2025-03-03 17:36:50'),
(32, 'App\\Models\\User', 1, 'auth_token', 'b8237ed58d6b5bff97197be3e8c2577dfeb5537a238077cd60afa9a36eeb448d', '[\"*\"]', '2025-03-03 17:44:41', NULL, '2025-03-03 17:44:34', '2025-03-03 17:44:41'),
(33, 'App\\Models\\User', 1, 'auth_token', '8075e6b768c58a542cc5fc17927b25fec8a923af0370444b522e35dbeaf415e8', '[\"*\"]', '2025-03-03 17:46:45', NULL, '2025-03-03 17:46:02', '2025-03-03 17:46:45'),
(34, 'App\\Models\\User', 1, 'auth_token', '8aba1d5e7104c1b03625a5c02ccb6f964e5d15410fc69aed911546fd39676c26', '[\"*\"]', '2025-03-03 17:53:37', NULL, '2025-03-03 17:51:09', '2025-03-03 17:53:37'),
(35, 'App\\Models\\User', 1, 'auth_token', 'fd2038cc3197053eeaa73c568796e1dfc81b662f4ff97ef35153f972f41ecffa', '[\"*\"]', '2025-03-03 18:14:36', NULL, '2025-03-03 17:59:02', '2025-03-03 18:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `color` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`color`)),
  `size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`size`)),
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `description`, `category`, `price`, `color`, `size`, `discount`, `image`, `created_at`, `updated_at`) VALUES
(10, 1, 'autem nobis iure', 'Est repellendus explicabo non ab.', 'ab', 910.74, '[\"Green\",\"Red\"]', '[\"M\",\"L\"]', 24.56, NULL, '2025-03-02 16:07:52', '2025-03-02 16:07:52'),
(11, 2, 'Product title', 'Product description', 'Pant', 2000.00, '[\"red\",\"black\"]', '[\"small\",\"large\"]', 10.00, NULL, '2025-03-02 16:23:22', '2025-03-03 04:06:01'),
(13, 2, 'title', 'description', 'Shirt', 100.00, '[\"red\",\"green\"]', '[\"Small\"]', 10.00, 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dXJsfGVufDB8fDB8fHww', '2025-03-03 06:55:26', '2025-03-03 06:55:26'),
(16, 5, 'T-shirt', 'Plain Black T-shirt for everyone', 'T-shirt', 200.00, '[\"Black\"]', '[\"Small\",\"Large\"]', 20.00, 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dHNoaXJ0fGVufDB8fDB8fHww', '2025-03-03 12:20:05', '2025-03-03 12:20:05'),
(17, 5, 'Denem', 'Qualityfull jeans', 'jeans', 2000.00, '[\"blue\"]', '[\"small\",\"large\"]', 0.00, 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8amVhbnN8ZW58MHx8MHx8fDA%3D', '2025-03-03 12:27:21', '2025-03-03 12:27:21'),
(18, 6, 'Puma', 'Wear a shoe', 'Shoe', 4000.00, '[\"White\"]', '[\"small\",\"medium\",\"large\"]', 20.00, 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2hvZXxlbnwwfHwwfHx8MA%3D%3D', '2025-03-03 12:30:14', '2025-03-03 12:30:14'),
(19, 1, 'provident nostrum tempore', 'Nisi molestias autem temporibus repudiandae.', 'impedit', 643.70, '[\"Green\",\"Black\"]', '[\"L\",\"XL\"]', 27.46, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(20, 5, 'in ad perferendis', 'Magni quisquam dolor voluptatem quo.', 'laboriosam', 694.00, '[\"Green\",\"Blue\"]', '[\"S\",\"XL\"]', 8.58, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(21, 6, 'molestias laudantium ullam', 'Illo et totam consectetur consequuntur corrupti rerum.', 'enim', 128.07, '[\"Black\",\"Green\"]', '[\"XL\",\"M\"]', 18.60, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(22, 6, 'ut et consectetur', 'Est officia omnis numquam optio aperiam autem.', 'harum', 480.30, '[\"Green\",\"Black\"]', '[\"XL\",\"S\"]', 23.36, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(23, 1, 'nisi rerum explicabo', 'Perferendis possimus consectetur ea suscipit necessitatibus sed minus.', 'est', 725.11, '[\"Green\",\"Red\"]', '[\"S\",\"XL\"]', 6.08, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(24, 5, 'quo voluptatem occaecati', 'Ex soluta non autem eligendi voluptatem.', 'ut', 44.04, '[\"Black\",\"Green\"]', '[\"S\",\"XL\"]', 24.81, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(25, 5, 'corporis perspiciatis ipsam', 'Odio aliquam quisquam sed et sint.', 'architecto', 226.55, '[\"Green\",\"Red\"]', '[\"S\",\"L\"]', 9.47, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(26, 1, 'et tempora architecto', 'Hic eos similique velit ab ratione.', 'tempore', 790.85, '[\"Red\",\"Black\"]', '[\"L\",\"M\"]', 25.52, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(27, 5, 'et harum consequatur', 'Neque laboriosam labore qui est sint minus.', 'ut', 249.79, '[\"Green\",\"Red\"]', '[\"S\",\"XL\"]', 7.32, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33'),
(28, 6, 'nihil totam architecto', 'Deserunt cumque quidem rerum dolorum voluptatem itaque fuga.', 'neque', 48.15, '[\"Red\",\"Black\"]', '[\"S\",\"M\"]', 24.26, NULL, '2025-03-03 17:16:33', '2025-03-03 17:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-03-02 16:07:56', '2025-03-02 16:07:56'),
(2, 'user', 'web', '2025-03-02 16:07:56', '2025-03-02 16:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Cassandre Cartwright PhD', 'justina.blick@example.net', '2025-03-02 16:07:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p3dtooBSun', '2025-03-02 16:07:52', '2025-03-02 16:07:52'),
(2, 'Imran Syam', 'md.imransyam1956@gmail.com', NULL, '$2y$10$Hu70Sg4fMx7CwMQzBhkbd.J7BNteVit4ITn704kHZLcF1o8JQbQa.', NULL, '2025-03-02 16:08:22', '2025-03-02 16:08:22'),
(5, 'test', 'test@gmail.com', NULL, '$2y$10$K4WwGRG0hp2.IpLBn87RvuZFYyyJ4ZV957oqIblDAYLdQZV.MAzA2', NULL, '2025-03-03 12:18:41', '2025-03-03 12:18:41'),
(6, 'test2', 'test2@gmail.com', NULL, '$2y$10$9baYbXaXQJUtqzR7shz3HOK9blJBVqjCX5F6LhCDPIiDjXv2aj55S', NULL, '2025-03-03 12:28:14', '2025-03-03 12:28:14');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
