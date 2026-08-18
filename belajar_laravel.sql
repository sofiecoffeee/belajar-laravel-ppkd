-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2026 at 04:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '2026-08-12 21:39:22', '2026-08-12 21:44:49'),
(2, 'snack chiki', 1, '2026-08-12 22:01:37', '2026-08-12 22:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
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
  `attempts` smallint(5) UNSIGNED NOT NULL,
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_08_11_031220_create_pesertas_table', 2),
(5, '2026_08_11_070142_create_roles_table', 3),
(6, '2026_08_11_070602_create_categories_table', 3),
(7, '2026_08_11_070657_create_products_table', 4),
(8, '2026_08_14_022647_create_settings_table', 5);

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
-- Table structure for table `pesertas`
--

CREATE TABLE `pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesertas`
--

INSERT INTO `pesertas` (`id`, `name`, `email`, `age`, `address`, `created_at`, `updated_at`) VALUES
(5, 'Gabriella Lala Aryani', 'elvina.jailani@yahoo.com', '60', 'Gg. Kebangkitan Nasional No. 973, Tegal 92770, DIY', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(6, 'Daliono Labuh Manullang', 'nova.hutagalung@sudiati.mil.id', '44', 'Psr. Wora Wari No. 478, Cimahi 69756, Riau', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(7, 'Rika Lestari', 'siregar.ivan@maryati.web.id', '23', 'Jr. Sudiarto No. 548, Medan 60120, Sulut', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(8, 'Kani Yuni Kusmawati S.Pt', 'jagapati.hutapea@yahoo.co.id', '51', 'Jln. Sutarto No. 684, Tarakan 42551, Babel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(9, 'Irnanto Saragih', 'dabukke.rafi@firmansyah.net', '40', 'Dk. Raya Ujungberung No. 169, Cimahi 76152, Kalteng', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(10, 'Baktiadi Thamrin', 'laksana.natsir@pradipta.info', '42', 'Dk. Gambang No. 872, Balikpapan 70368, Malut', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(11, 'Harimurti Situmorang', 'wpratiwi@sirait.desa.id', '30', 'Jln. Cikutra Timur No. 265, Administrasi Jakarta Pusat 35319, NTB', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(12, 'Cici Putri Purwanti', 'mahdi42@gmail.co.id', '33', 'Dk. Siliwangi No. 6, Sungai Penuh 93955, NTT', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(13, 'Ciaobella Nilam Pratiwi M.Farm', 'ida.pertiwi@haryanti.ac.id', '39', 'Dk. Wahidin Sudirohusodo No. 385, Probolinggo 28229, Gorontalo', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(14, 'Maya Pratiwi', 'ksuartini@gmail.com', '24', 'Psr. Taman No. 564, Jayapura 38476, NTB', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(15, 'Maman Ardianto', 'maryati.michelle@puspasari.info', '22', 'Ki. K.H. Wahid Hasyim (Kopo) No. 434, Banjarmasin 67029, Pabar', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(16, 'Harjaya Yahya Wasita S.Sos', 'oktaviani.hamzah@safitri.co.id', '18', 'Jln. Basuki Rahmat  No. 815, Surabaya 76895, Babel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(17, 'Zahra Mulyani', 'hasan.najmudin@tarihoran.sch.id', '54', 'Kpg. Taman No. 219, Batu 41339, Kepri', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(18, 'Bala Wijaya', 'paris08@maheswara.sch.id', '52', 'Ds. Muwardi No. 495, Padangpanjang 82148, Kalsel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(19, 'Caturangga Manullang', 'hariyah.candra@permata.com', '24', 'Ds. Jamika No. 523, Administrasi Jakarta Barat 69250, Babel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(20, 'Upik Permadi S.E.', 'unjani50@gmail.co.id', '47', 'Jr. Bagonwoto  No. 345, Bekasi 24559, Pabar', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(21, 'Puji Zulaika', 'hrahimah@gmail.co.id', '50', 'Psr. Panjaitan No. 216, Gunungsitoli 62381, NTT', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(22, 'Galang Wijaya', 'tri.puspasari@gmail.co.id', '42', 'Dk. Karel S. Tubun No. 526, Surabaya 89306, Bali', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(23, 'Yuni Nasyidah S.Farm', 'yuliana52@gmail.co.id', '57', 'Psr. Hang No. 796, Pematangsiantar 30366, Lampung', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(24, 'Paulin Kusmawati M.Farm', 'kenari69@gmail.co.id', '35', 'Jln. Ters. Buah Batu No. 289, Surakarta 85229, Sumbar', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(25, 'Naradi Situmorang', 'dadap.budiman@oktaviani.com', '29', 'Ki. R.E. Martadinata No. 886, Balikpapan 93087, Bali', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(26, 'Ghani Jagapati Halim S.E.', 'aryani.ina@gmail.com', '45', 'Ki. Abdullah No. 588, Tomohon 91808, Kaltara', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(27, 'Kunthara Samosir S.E.', 'cnasyiah@puspita.com', '41', 'Psr. Imam No. 693, Tomohon 64070, Sumut', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(28, 'Mujur Dodo Mansur S.Psi', 'dian65@kurniawan.net', '18', 'Ki. Cut Nyak Dien No. 596, Gunungsitoli 51150, Aceh', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(29, 'Tirta Siregar M.Farm', 'jailani.mahesa@gmail.co.id', '46', 'Ki. B.Agam Dlm No. 164, Kupang 41025, Babel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(30, 'Cakrawala Ardianto S.Gz', 'umahendra@gmail.com', '48', 'Jr. Jayawijaya No. 366, Pangkal Pinang 59105, Riau', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(31, 'Bahuwirya Dodo Wahyudin S.Gz', 'natsir.emas@yulianti.biz', '37', 'Ki. Dahlia No. 596, Administrasi Jakarta Selatan 78328, Bengkulu', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(32, 'Ajeng Mulyani S.Farm', 'orahmawati@mandasari.in', '29', 'Psr. Wahidin No. 316, Ternate 41327, Kalbar', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(33, 'Unjani Utami M.Pd', 'brahimah@yahoo.co.id', '19', 'Jr. Bak Air No. 210, Administrasi Jakarta Pusat 84806, Kaltim', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(34, 'Anastasia Melani', 'ajimat52@nurdiyanti.biz.id', '51', 'Jr. Teuku Umar No. 97, Batam 91162, Bali', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(35, 'Dian Yuliarti', 'safina.saefullah@yahoo.co.id', '17', 'Ki. Banda No. 836, Padangpanjang 81537, Kepri', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(36, 'Ani Hartati', 'umi.hasanah@yahoo.co.id', '60', 'Jr. PHH. Mustofa No. 886, Pagar Alam 79897, Sulsel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(37, 'Nardi Mahendra', 'erik.firmansyah@pangestu.desa.id', '28', 'Gg. Ujung No. 580, Padangpanjang 62815, Lampung', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(38, 'Nugraha Suwarno', 'balamantri61@gmail.co.id', '23', 'Psr. Cikutra Timur No. 949, Bitung 81422, Kalsel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(39, 'Putri Purwanti', 'tsuartini@suwarno.go.id', '36', 'Jr. Flores No. 68, Serang 44064, Jatim', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(40, 'Agus Simbolon', 'danuja.uwais@gmail.com', '44', 'Gg. Ciwastra No. 690, Tangerang 84906, Lampung', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(41, 'Janet Wastuti', 'omulyani@widiastuti.desa.id', '30', 'Ds. Pacuan Kuda No. 774, Kediri 47533, Sumsel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(42, 'Cager Setiawan', 'susanti.daryani@gmail.co.id', '36', 'Gg. Villa No. 211, Padang 13204, Sultra', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(43, 'Julia Mulyani', 'setiawan.jumadi@yahoo.co.id', '38', 'Dk. B.Agam Dlm No. 460, Tarakan 14495, DIY', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(44, 'Bella Nasyiah', 'astuti.luwar@nurdiyanti.biz.id', '18', 'Jln. Bah Jaya No. 186, Palangka Raya 73333, NTB', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(45, 'Pardi Limar Budiyanto S.Sos', 'purwanti.karimah@yahoo.co.id', '25', 'Kpg. Bakau No. 669, Tanjung Pinang 28670, NTB', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(46, 'Dewi Eli Rahimah M.M.', 'vpudjiastuti@gunarto.biz.id', '43', 'Psr. Sutami No. 145, Administrasi Jakarta Utara 72501, Sumsel', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(47, 'Hilda Zulaika', 'padmi.aryani@gmail.co.id', '44', 'Dk. Sutoyo No. 837, Balikpapan 84322, Banten', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(48, 'Lalita Riyanti M.Pd', 'dmegantara@gmail.co.id', '25', 'Dk. Yosodipuro No. 399, Pasuruan 29830, Malut', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(49, 'Nova Kartika Usamah', 'upik.wibisono@agustina.biz', '25', 'Kpg. Sutan Syahrir No. 662, Bima 70471, Sultra', '2026-08-10 20:16:44', '2026-08-10 20:16:44'),
(50, 'Rahayu Pertiwi', 'omaheswara@yahoo.co.id', '18', 'Ki. Suharso No. 91, Bandung 44172, Maluku', '2026-08-10 20:16:44', '2026-08-10 20:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `photo`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'TES', 'products/fUH2VRAoCqrv6IvZzO5a9LhO5dhiIRXN6XY7fEeG.jpg', 20000.00, 'AAAA', '2026-08-13 00:42:04', '2026-08-13 00:42:04'),
(2, 2, 'TES', NULL, 30000.00, 'aaaswa', '2026-08-13 00:45:18', '2026-08-13 00:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, '2026-08-12 00:28:40', '2026-08-12 00:28:40'),
(2, 'test', 1, '2026-08-12 00:29:39', '2026-08-12 00:29:39'),
(3, 'aaa', 1, '2026-08-12 00:32:54', '2026-08-12 00:32:54'),
(4, 'test', 0, '2026-08-12 00:34:28', '2026-08-12 00:34:28'),
(5, 'test ubah', 1, '2026-08-12 00:34:34', '2026-08-12 00:34:34'),
(6, 'test', 1, '2026-08-12 00:34:54', '2026-08-12 00:34:54'),
(7, 'snack chiki', 1, '2026-08-12 21:36:15', '2026-08-12 21:36:15');

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
('scqAuOyoyiDtGrGMiuiNtQgCOW8VPDMPo9Ze74E6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJYNkgySW9YWDZSdHJsU0F1ZTdVN0RCU2tiUzZyT2Jaek9XNk53VDR2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9wcm9kdWN0Iiwicm91dGUiOiJwcm9kdWN0LmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjF9', 1786607118);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Biodata` varchar(255) NOT NULL,
  `navbar_image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$EVdEyGAbceEaVHYXsD9pv.UQLUMnifmwDuv.PvPM6ezKzud5hseqO', NULL, '2026-08-12 19:11:06', '2026-08-12 19:11:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

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
-- Indexes for table `pesertas`
--
ALTER TABLE `pesertas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesertas`
--
ALTER TABLE `pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
