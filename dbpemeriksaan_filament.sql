-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250428.c2ba3c9211
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Mei 2025 pada 09.02
-- Versi server: 8.4.2
-- Versi PHP: 8.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `dbpemeriksaan_filament`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint UNSIGNED NOT NULL,
  `panel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5', 'i:1;', 1748679883),
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5:timer', 'i:1748679883;', 1748679883),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:159:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"book:create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"book:update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:16:\"book:delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"book:pagination_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"book:detail_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"view_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:20:\"view_any_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:18:\"create_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:18:\"update_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"restore_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:23:\"restore_any_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:21:\"replicate_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:19:\"reorder_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:18:\"delete_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:22:\"delete_any_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:24:\"force_delete_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:28:\"force_delete_any_pemeriksaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:10:\"view_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:14:\"view_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:12:\"create_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"update_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:13:\"restore_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:17:\"restore_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"replicate_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:13:\"reorder_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:12:\"delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:16:\"delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:18:\"force_delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:22:\"force_delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:18:\"page_ManageSetting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:3:{s:1:\"a\";i:63;s:1:\"b\";s:13:\"view_e::resep\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:64;s:1:\"b\";s:17:\"view_any_e::resep\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:65;s:1:\"b\";s:15:\"create_e::resep\";s:1:\"c\";s:3:\"web\";}i:65;a:3:{s:1:\"a\";i:66;s:1:\"b\";s:15:\"update_e::resep\";s:1:\"c\";s:3:\"web\";}i:66;a:3:{s:1:\"a\";i:67;s:1:\"b\";s:16:\"restore_e::resep\";s:1:\"c\";s:3:\"web\";}i:67;a:3:{s:1:\"a\";i:68;s:1:\"b\";s:20:\"restore_any_e::resep\";s:1:\"c\";s:3:\"web\";}i:68;a:3:{s:1:\"a\";i:69;s:1:\"b\";s:18:\"replicate_e::resep\";s:1:\"c\";s:3:\"web\";}i:69;a:3:{s:1:\"a\";i:70;s:1:\"b\";s:16:\"reorder_e::resep\";s:1:\"c\";s:3:\"web\";}i:70;a:3:{s:1:\"a\";i:71;s:1:\"b\";s:15:\"delete_e::resep\";s:1:\"c\";s:3:\"web\";}i:71;a:3:{s:1:\"a\";i:72;s:1:\"b\";s:19:\"delete_any_e::resep\";s:1:\"c\";s:3:\"web\";}i:72;a:3:{s:1:\"a\";i:73;s:1:\"b\";s:21:\"force_delete_e::resep\";s:1:\"c\";s:3:\"web\";}i:73;a:3:{s:1:\"a\";i:74;s:1:\"b\";s:25:\"force_delete_any_e::resep\";s:1:\"c\";s:3:\"web\";}i:74;a:3:{s:1:\"a\";i:75;s:1:\"b\";s:16:\"widget_Dashboard\";s:1:\"c\";s:3:\"web\";}i:75;a:3:{s:1:\"a\";i:76;s:1:\"b\";s:11:\"view_dokter\";s:1:\"c\";s:3:\"web\";}i:76;a:3:{s:1:\"a\";i:77;s:1:\"b\";s:15:\"view_any_dokter\";s:1:\"c\";s:3:\"web\";}i:77;a:3:{s:1:\"a\";i:78;s:1:\"b\";s:13:\"create_dokter\";s:1:\"c\";s:3:\"web\";}i:78;a:3:{s:1:\"a\";i:79;s:1:\"b\";s:13:\"update_dokter\";s:1:\"c\";s:3:\"web\";}i:79;a:3:{s:1:\"a\";i:80;s:1:\"b\";s:14:\"restore_dokter\";s:1:\"c\";s:3:\"web\";}i:80;a:3:{s:1:\"a\";i:81;s:1:\"b\";s:18:\"restore_any_dokter\";s:1:\"c\";s:3:\"web\";}i:81;a:3:{s:1:\"a\";i:82;s:1:\"b\";s:16:\"replicate_dokter\";s:1:\"c\";s:3:\"web\";}i:82;a:3:{s:1:\"a\";i:83;s:1:\"b\";s:14:\"reorder_dokter\";s:1:\"c\";s:3:\"web\";}i:83;a:3:{s:1:\"a\";i:84;s:1:\"b\";s:13:\"delete_dokter\";s:1:\"c\";s:3:\"web\";}i:84;a:3:{s:1:\"a\";i:85;s:1:\"b\";s:17:\"delete_any_dokter\";s:1:\"c\";s:3:\"web\";}i:85;a:3:{s:1:\"a\";i:86;s:1:\"b\";s:19:\"force_delete_dokter\";s:1:\"c\";s:3:\"web\";}i:86;a:3:{s:1:\"a\";i:87;s:1:\"b\";s:23:\"force_delete_any_dokter\";s:1:\"c\";s:3:\"web\";}i:87;a:3:{s:1:\"a\";i:88;s:1:\"b\";s:11:\"view_jadwal\";s:1:\"c\";s:3:\"web\";}i:88;a:3:{s:1:\"a\";i:89;s:1:\"b\";s:15:\"view_any_jadwal\";s:1:\"c\";s:3:\"web\";}i:89;a:3:{s:1:\"a\";i:90;s:1:\"b\";s:13:\"create_jadwal\";s:1:\"c\";s:3:\"web\";}i:90;a:3:{s:1:\"a\";i:91;s:1:\"b\";s:13:\"update_jadwal\";s:1:\"c\";s:3:\"web\";}i:91;a:3:{s:1:\"a\";i:92;s:1:\"b\";s:14:\"restore_jadwal\";s:1:\"c\";s:3:\"web\";}i:92;a:3:{s:1:\"a\";i:93;s:1:\"b\";s:18:\"restore_any_jadwal\";s:1:\"c\";s:3:\"web\";}i:93;a:3:{s:1:\"a\";i:94;s:1:\"b\";s:16:\"replicate_jadwal\";s:1:\"c\";s:3:\"web\";}i:94;a:3:{s:1:\"a\";i:95;s:1:\"b\";s:14:\"reorder_jadwal\";s:1:\"c\";s:3:\"web\";}i:95;a:3:{s:1:\"a\";i:96;s:1:\"b\";s:13:\"delete_jadwal\";s:1:\"c\";s:3:\"web\";}i:96;a:3:{s:1:\"a\";i:97;s:1:\"b\";s:17:\"delete_any_jadwal\";s:1:\"c\";s:3:\"web\";}i:97;a:3:{s:1:\"a\";i:98;s:1:\"b\";s:19:\"force_delete_jadwal\";s:1:\"c\";s:3:\"web\";}i:98;a:3:{s:1:\"a\";i:99;s:1:\"b\";s:23:\"force_delete_any_jadwal\";s:1:\"c\";s:3:\"web\";}i:99;a:3:{s:1:\"a\";i:100;s:1:\"b\";s:12:\"view_perawat\";s:1:\"c\";s:3:\"web\";}i:100;a:3:{s:1:\"a\";i:101;s:1:\"b\";s:16:\"view_any_perawat\";s:1:\"c\";s:3:\"web\";}i:101;a:3:{s:1:\"a\";i:102;s:1:\"b\";s:14:\"create_perawat\";s:1:\"c\";s:3:\"web\";}i:102;a:3:{s:1:\"a\";i:103;s:1:\"b\";s:14:\"update_perawat\";s:1:\"c\";s:3:\"web\";}i:103;a:3:{s:1:\"a\";i:104;s:1:\"b\";s:15:\"restore_perawat\";s:1:\"c\";s:3:\"web\";}i:104;a:3:{s:1:\"a\";i:105;s:1:\"b\";s:19:\"restore_any_perawat\";s:1:\"c\";s:3:\"web\";}i:105;a:3:{s:1:\"a\";i:106;s:1:\"b\";s:17:\"replicate_perawat\";s:1:\"c\";s:3:\"web\";}i:106;a:3:{s:1:\"a\";i:107;s:1:\"b\";s:15:\"reorder_perawat\";s:1:\"c\";s:3:\"web\";}i:107;a:3:{s:1:\"a\";i:108;s:1:\"b\";s:14:\"delete_perawat\";s:1:\"c\";s:3:\"web\";}i:108;a:3:{s:1:\"a\";i:109;s:1:\"b\";s:18:\"delete_any_perawat\";s:1:\"c\";s:3:\"web\";}i:109;a:3:{s:1:\"a\";i:110;s:1:\"b\";s:20:\"force_delete_perawat\";s:1:\"c\";s:3:\"web\";}i:110;a:3:{s:1:\"a\";i:111;s:1:\"b\";s:24:\"force_delete_any_perawat\";s:1:\"c\";s:3:\"web\";}i:111;a:3:{s:1:\"a\";i:112;s:1:\"b\";s:9:\"view_poli\";s:1:\"c\";s:3:\"web\";}i:112;a:3:{s:1:\"a\";i:113;s:1:\"b\";s:13:\"view_any_poli\";s:1:\"c\";s:3:\"web\";}i:113;a:3:{s:1:\"a\";i:114;s:1:\"b\";s:11:\"create_poli\";s:1:\"c\";s:3:\"web\";}i:114;a:3:{s:1:\"a\";i:115;s:1:\"b\";s:11:\"update_poli\";s:1:\"c\";s:3:\"web\";}i:115;a:3:{s:1:\"a\";i:116;s:1:\"b\";s:12:\"restore_poli\";s:1:\"c\";s:3:\"web\";}i:116;a:3:{s:1:\"a\";i:117;s:1:\"b\";s:16:\"restore_any_poli\";s:1:\"c\";s:3:\"web\";}i:117;a:3:{s:1:\"a\";i:118;s:1:\"b\";s:14:\"replicate_poli\";s:1:\"c\";s:3:\"web\";}i:118;a:3:{s:1:\"a\";i:119;s:1:\"b\";s:12:\"reorder_poli\";s:1:\"c\";s:3:\"web\";}i:119;a:3:{s:1:\"a\";i:120;s:1:\"b\";s:11:\"delete_poli\";s:1:\"c\";s:3:\"web\";}i:120;a:3:{s:1:\"a\";i:121;s:1:\"b\";s:15:\"delete_any_poli\";s:1:\"c\";s:3:\"web\";}i:121;a:3:{s:1:\"a\";i:122;s:1:\"b\";s:17:\"force_delete_poli\";s:1:\"c\";s:3:\"web\";}i:122;a:3:{s:1:\"a\";i:123;s:1:\"b\";s:21:\"force_delete_any_poli\";s:1:\"c\";s:3:\"web\";}i:123;a:3:{s:1:\"a\";i:124;s:1:\"b\";s:16:\"view_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:124;a:3:{s:1:\"a\";i:125;s:1:\"b\";s:20:\"view_any_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:125;a:3:{s:1:\"a\";i:126;s:1:\"b\";s:18:\"create_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:126;a:3:{s:1:\"a\";i:127;s:1:\"b\";s:18:\"update_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:127;a:3:{s:1:\"a\";i:128;s:1:\"b\";s:19:\"restore_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:128;a:3:{s:1:\"a\";i:129;s:1:\"b\";s:23:\"restore_any_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:129;a:3:{s:1:\"a\";i:130;s:1:\"b\";s:21:\"replicate_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:130;a:3:{s:1:\"a\";i:131;s:1:\"b\";s:19:\"reorder_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:131;a:3:{s:1:\"a\";i:132;s:1:\"b\";s:18:\"delete_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:132;a:3:{s:1:\"a\";i:133;s:1:\"b\";s:22:\"delete_any_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:133;a:3:{s:1:\"a\";i:134;s:1:\"b\";s:24:\"force_delete_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:134;a:3:{s:1:\"a\";i:135;s:1:\"b\";s:28:\"force_delete_any_pemeriksaan\";s:1:\"c\";s:3:\"mba\";}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:13:\"view_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:17:\"view_any_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:15:\"create_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:15:\"update_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:16:\"restore_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:20:\"restore_any_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:18:\"replicate_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:16:\"reorder_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:15:\"delete_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:19:\"delete_any_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:21:\"force_delete_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:25:\"force_delete_any_e::resep\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:16:\"view_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:20:\"view_any_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:18:\"create_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:18:\"update_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:19:\"restore_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:23:\"restore_any_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:21:\"replicate_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:154;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:19:\"reorder_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:155;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:18:\"delete_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:156;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:22:\"delete_any_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:157;a:4:{s:1:\"a\";i:158;s:1:\"b\";s:24:\"force_delete_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}i:158;a:4:{s:1:\"a\";i:159;s:1:\"b\";s:28:\"force_delete_any_pemeriksaan\";s:1:\"c\";s:3:\"mas\";s:1:\"r\";a:1:{i:0;i:5;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"perawat\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:6:\"dokter\";s:1:\"c\";s:3:\"mas\";}}}', 1748764481),
('theme', 's:6:\"sunset\";', 2064039801),
('theme_color', 's:4:\"teal\";', 2064039792);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_e_resep`
--

CREATE TABLE `detail_e_resep` (
  `id_resep` smallint UNSIGNED NOT NULL,
  `id_obat` smallint UNSIGNED NOT NULL,
  `jumlah` smallint NOT NULL,
  `aturan_pakai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_e_resep`
--

INSERT INTO `detail_e_resep` (`id_resep`, `id_obat`, `jumlah`, `aturan_pakai`) VALUES
(3, 1, 1, '3x1'),
(3, 2, 1, '3x1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` smallint UNSIGNED NOT NULL,
  `id` bigint UNSIGNED NOT NULL,
  `nama_dokter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_dokter` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialis` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `id`, `nama_dokter`, `no_hp_dokter`, `spesialis`) VALUES
(2, 5, 'dokteran', '083140215112', 'Jantung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_resep`
--

CREATE TABLE `e_resep` (
  `id_resep` smallint UNSIGNED NOT NULL,
  `no_registrasi` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `e_resep`
--

INSERT INTO `e_resep` (`id_resep`, `no_registrasi`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `imports`
--

CREATE TABLE `imports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` smallint UNSIGNED NOT NULL,
  `id_perawat` smallint UNSIGNED NOT NULL,
  `id_dokter` smallint UNSIGNED NOT NULL,
  `hari` enum('SENIN','SELASA','RABU','KAMIS','JUMAT','SABTU','MINGGU') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"23e77157-c8ff-48b6-934c-f51cb3a81e27\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:181:\\\"https:\\/\\/simrs.test\\/email-verification\\/verify\\/1\\/d3942dce589a8baf879be01b717184712b119a72?expires=1748396362&signature=239eb45930b2f79832c33eedfd13d53cff350e84e1a811824335d86029c5c65b\\\";s:2:\\\"id\\\";s:36:\\\"34c22b96-d8e4-4b95-9491-c9bba113eeac\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748392766, 1748392766);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_12_14_083707_create_settings_table', 1),
(5, '2024_12_04_025120_create_media_table', 1),
(6, '2024_12_04_041953_create_breezy_sessions_table', 1),
(7, '2025_01_02_064819_create_permission_tables', 1),
(8, '2025_01_02_225927_add_avatar_url_column_to_users_table', 1),
(9, '2025_01_03_114929_create_personal_access_tokens_table', 1),
(10, '2025_01_04_125650_create_posts_table', 1),
(11, '2025_01_08_152510_create_kaido_settings', 1),
(12, '2025_01_08_233142_create_socialite_users_table', 1),
(13, '2025_01_09_225908_update_user_table_make_password_column_nullable', 1),
(14, '2025_01_12_031340_create_notifications_table', 1),
(15, '2025_01_12_031357_create_imports_table', 1),
(16, '2025_01_12_031358_create_exports_table', 1),
(17, '2025_01_12_031359_create_failed_import_rows_table', 1),
(18, '2025_01_12_091355_create_contacts_table', 1),
(19, '2025_01_31_020024_add_themes_settings_to_users_table', 1),
(20, '2025_05_04_004721_create_sessions_table', 2),
(21, '2025_05_27_130559_dokter', 2),
(22, '2025_05_27_130736_perawat', 2),
(23, '2025_05_27_130815_poli', 2),
(24, '2025_05_27_130840_jadwal', 2),
(25, '2025_05_27_130908_pemeriksaan', 2),
(26, '2025_05_27_130946_eresep', 2),
(27, '2025_05_27_131007_eresepdetail', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `no_registrasi` smallint UNSIGNED NOT NULL,
  `id_dokter` smallint UNSIGNED DEFAULT NULL,
  `id_perawat` smallint UNSIGNED DEFAULT NULL,
  `rm` int DEFAULT NULL,
  `suhu` smallint DEFAULT NULL,
  `tensi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` smallint DEFAULT NULL,
  `berat_badan` smallint DEFAULT NULL,
  `diagnosa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Menunggu','Diperiksa','Selesai Diperiksa','Sudah Bayar','Sudah ambil obat') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`no_registrasi`, `id_dokter`, `id_perawat`, `rm`, `suhu`, `tensi`, `tinggi_badan`, `berat_badan`, `diagnosa`, `tindakan`, `status`) VALUES
(1, NULL, NULL, 1, 2, '2', 2, 2, NULL, NULL, 'Diperiksa'),
(2, NULL, NULL, 1, 23, '70', 70, 70, NULL, NULL, 'Menunggu'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Menunggu'),
(6, 2, 2, 2, 3, '70', 23, 23, NULL, NULL, 'Menunggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawat`
--

CREATE TABLE `perawat` (
  `id_perawat` smallint UNSIGNED NOT NULL,
  `id` bigint UNSIGNED NOT NULL,
  `nama_perawat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_perawat` char(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perawat`
--

INSERT INTO `perawat` (`id_perawat`, `id`, `nama_perawat`, `no_hp_perawat`) VALUES
(2, 4, 'Perawatan', '08392192121');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(2, 'view_any_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(3, 'create_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(4, 'update_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(5, 'restore_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(6, 'restore_any_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(7, 'replicate_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(8, 'reorder_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(9, 'delete_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(10, 'delete_any_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(11, 'force_delete_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(12, 'force_delete_any_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(13, 'book:create_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(14, 'book:update_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(15, 'book:delete_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(16, 'book:pagination_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(17, 'book:detail_book', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(18, 'view_pemeriksaan', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(19, 'view_any_pemeriksaan', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(20, 'create_pemeriksaan', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(21, 'update_pemeriksaan', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(22, 'restore_pemeriksaan', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(23, 'restore_any_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(24, 'replicate_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(25, 'reorder_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(26, 'delete_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(27, 'delete_any_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(28, 'force_delete_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(29, 'force_delete_any_pemeriksaan', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(30, 'view_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(31, 'view_any_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(32, 'create_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(33, 'update_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(34, 'delete_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(35, 'delete_any_role', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(36, 'view_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(37, 'view_any_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(38, 'create_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(39, 'update_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(40, 'restore_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(41, 'restore_any_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(42, 'replicate_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(43, 'reorder_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(44, 'delete_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(45, 'delete_any_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(46, 'force_delete_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(47, 'force_delete_any_token', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(48, 'view_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(49, 'view_any_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(50, 'create_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(51, 'update_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(52, 'restore_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(53, 'restore_any_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(54, 'replicate_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(55, 'reorder_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(56, 'delete_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(57, 'delete_any_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(58, 'force_delete_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(59, 'force_delete_any_user', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(60, 'page_ManageSetting', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(61, 'page_Themes', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(62, 'page_MyProfilePage', 'web', '2025-05-27 16:42:42', '2025-05-27 16:42:42'),
(63, 'view_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(64, 'view_any_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(65, 'create_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(66, 'update_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(67, 'restore_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(68, 'restore_any_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(69, 'replicate_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(70, 'reorder_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(71, 'delete_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(72, 'delete_any_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(73, 'force_delete_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(74, 'force_delete_any_e::resep', 'web', '2025-05-30 22:10:37', '2025-05-30 22:10:37'),
(75, 'widget_Dashboard', 'web', '2025-05-30 22:52:05', '2025-05-30 22:52:05'),
(76, 'view_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(77, 'view_any_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(78, 'create_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(79, 'update_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(80, 'restore_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(81, 'restore_any_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(82, 'replicate_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(83, 'reorder_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(84, 'delete_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(85, 'delete_any_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(86, 'force_delete_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(87, 'force_delete_any_dokter', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(88, 'view_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(89, 'view_any_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(90, 'create_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(91, 'update_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(92, 'restore_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(93, 'restore_any_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(94, 'replicate_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(95, 'reorder_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(96, 'delete_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(97, 'delete_any_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(98, 'force_delete_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(99, 'force_delete_any_jadwal', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(100, 'view_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(101, 'view_any_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(102, 'create_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(103, 'update_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(104, 'restore_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(105, 'restore_any_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(106, 'replicate_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(107, 'reorder_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(108, 'delete_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(109, 'delete_any_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(110, 'force_delete_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(111, 'force_delete_any_perawat', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(112, 'view_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(113, 'view_any_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(114, 'create_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(115, 'update_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(116, 'restore_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(117, 'restore_any_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(118, 'replicate_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(119, 'reorder_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(120, 'delete_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(121, 'delete_any_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(122, 'force_delete_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(123, 'force_delete_any_poli', 'web', '2025-05-30 22:53:34', '2025-05-30 22:53:34'),
(124, 'view_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(125, 'view_any_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(126, 'create_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(127, 'update_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(128, 'restore_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(129, 'restore_any_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(130, 'replicate_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(131, 'reorder_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(132, 'delete_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(133, 'delete_any_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(134, 'force_delete_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(135, 'force_delete_any_pemeriksaan', 'mba', '2025-05-30 23:15:04', '2025-05-30 23:15:04'),
(136, 'view_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(137, 'view_any_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(138, 'create_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(139, 'update_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(140, 'restore_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(141, 'restore_any_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(142, 'replicate_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(143, 'reorder_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(144, 'delete_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(145, 'delete_any_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(146, 'force_delete_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(147, 'force_delete_any_e::resep', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(148, 'view_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(149, 'view_any_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(150, 'create_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(151, 'update_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(152, 'restore_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(153, 'restore_any_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(154, 'replicate_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(155, 'reorder_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(156, 'delete_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(157, 'delete_any_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(158, 'force_delete_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41'),
(159, 'force_delete_any_pemeriksaan', 'mas', '2025-05-30 23:54:41', '2025-05-30 23:54:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id_poli` smallint UNSIGNED NOT NULL,
  `id_perawat` smallint UNSIGNED NOT NULL,
  `id_dokter` smallint UNSIGNED NOT NULL,
  `nama_poli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`id_poli`, `id_perawat`, `id_dokter`, `nama_poli`) VALUES
(2, 2, 2, 'Jantung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-05-27 16:42:41', '2025-05-27 16:42:41'),
(4, 'perawat', 'web', '2025-05-30 23:15:04', '2025-05-30 23:22:19'),
(5, 'dokter', 'mas', '2025-05-30 23:15:17', '2025-05-30 23:15:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(26, 4),
(28, 4),
(136, 5),
(137, 5),
(138, 5),
(139, 5),
(140, 5),
(141, 5),
(142, 5),
(143, 5),
(144, 5),
(145, 5),
(146, 5),
(147, 5),
(148, 5),
(149, 5),
(150, 5),
(151, 5),
(152, 5),
(153, 5),
(154, 5),
(155, 5),
(156, 5),
(157, 5),
(158, 5),
(159, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ot7feGIhHSxIA1rHtxaYplMJxL4ZUgTh8b9TjJYQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia1djNk9WR2F3QTJqVElNNzByMzBDZndUUjZhMlFXcnpnNm5ERFBROSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748673820),
('pWULaZz9rkzeng3pk3AdcakuTRYlWbrSAcdAAMyC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUXRXZlJRS3VFeDFrcXVzWnd3TWhYVjVsRVB1RWdTZGdWUzNiSjRGZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748674231),
('VGRlARRdyvVuvpZfhWQTLdFGlUed2QnexnfdY3uG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRUY3WFJYR21idXFhOWNYM1JMeTBFWFRVR0g2ak1OOXZXYzJESzZMQiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6ImZpbGFtZW50IjthOjA6e31zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkOGlPVVpQb0guYUFIbHpWLzc2b3B1T3k2Q0lHVGJ0ZUNzb21mUU0xVjR6a05lbTRmaUVSRi4iO30=', 1748673779),
('w3mvW8JRVsUgc3hQETwTtuSnwHbLza1Cb7UXlYWd', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoieE5uRUNUZmtja0FqSzFKdkRmNjZ2a2ZaRjZ5a09HZ0h6VmNoc3VybiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2NzL2FwaSI7fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRFRUJPbTdhcXplLzJxa1ZYLzBHL0h1YUwzVmtHcG5wOVVXU1RJUUg0OVhyY0JjOXRsdzdjcSI7czo4OiJmaWxhbWVudCI7YTowOnt9czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1748681840);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `payload` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'KaidoSetting', 'site_name', 0, '\"Spatie\"', '2025-05-27 16:25:24', '2025-05-27 16:25:24'),
(2, 'KaidoSetting', 'site_active', 0, 'true', '2025-05-27 16:25:24', '2025-05-27 16:25:24'),
(3, 'KaidoSetting', 'registration_enabled', 0, 'true', '2025-05-27 16:25:24', '2025-05-27 16:25:24'),
(4, 'KaidoSetting', 'login_enabled', 0, 'true', '2025-05-27 16:25:24', '2025-05-27 16:25:24'),
(5, 'KaidoSetting', 'password_reset_enabled', 0, 'true', '2025-05-27 16:25:24', '2025-05-27 16:25:24'),
(6, 'KaidoSetting', 'sso_enabled', 0, 'true', '2025-05-27 16:25:24', '2025-05-27 16:25:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nama_lengkap`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar_url`, `theme`, `theme_color`) VALUES
(1, 'admin', NULL, 'admin@admin.com', '2025-05-19 00:41:15', '$2y$12$8iOUZPoH.aAHlzV/76opuOy6CIGTbteCsomfQM1V4zkNem4fiERF.', 'wx8ScLxKkheld45PpGDYV7zi1AMG6KEfywCSjBfC3CmI4YcO3G3nyUDInqWv', '2025-05-27 16:39:22', '2025-05-27 16:39:22', NULL, 'default', NULL),
(4, 'perawat1', NULL, 'perawat1@gmail.com', '2025-05-21 07:52:45', '$2y$12$EEBOm7aqze/2qkVX/0G/HuaL3VkGpnp9UWSTIQH49XrcBc9tlw7cq', NULL, '2025-05-30 23:49:14', '2025-05-30 23:49:14', NULL, 'default', NULL),
(5, 'Dokter1', NULL, 'dokter@gmail.com', '2025-05-30 23:53:00', '$2y$12$hpMo3FCcRSAHkoMwQTnAyOCtaBhU/1l0A2RJ9w4veXmMFvKH7H6l.', NULL, '2025-05-30 23:53:59', '2025-05-30 23:53:59', NULL, 'default', NULL);

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_e_resep`
--
ALTER TABLE `detail_e_resep`
  ADD KEY `detail_e_resep_id_resep_foreign` (`id_resep`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `dokter_id_foreign` (`id`);

--
-- Indeks untuk tabel `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `e_resep`
--
ALTER TABLE `e_resep`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `e_resep_no_registrasi_foreign` (`no_registrasi`);

--
-- Indeks untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `jadwal_id_perawat_foreign` (`id_perawat`),
  ADD KEY `jadwal_id_dokter_foreign` (`id_dokter`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`no_registrasi`),
  ADD KEY `pemeriksaan_id_dokter_foreign` (`id_dokter`),
  ADD KEY `pemeriksaan_id_perawat_foreign` (`id_perawat`);

--
-- Indeks untuk tabel `perawat`
--
ALTER TABLE `perawat`
  ADD PRIMARY KEY (`id_perawat`),
  ADD KEY `perawat_id_foreign` (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`),
  ADD KEY `poli_id_perawat_foreign` (`id_perawat`),
  ADD KEY `poli_id_dokter_foreign` (`id_dokter`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indeks untuk tabel `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `e_resep`
--
ALTER TABLE `e_resep`
  MODIFY `id_resep` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `no_registrasi` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `perawat`
--
ALTER TABLE `perawat`
  MODIFY `id_perawat` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `id_poli` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_e_resep`
--
ALTER TABLE `detail_e_resep`
  ADD CONSTRAINT `detail_e_resep_id_resep_foreign` FOREIGN KEY (`id_resep`) REFERENCES `e_resep` (`id_resep`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `e_resep`
--
ALTER TABLE `e_resep`
  ADD CONSTRAINT `e_resep_no_registrasi_foreign` FOREIGN KEY (`no_registrasi`) REFERENCES `pemeriksaan` (`no_registrasi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_id_perawat_foreign` FOREIGN KEY (`id_perawat`) REFERENCES `perawat` (`id_perawat`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemeriksaan_id_perawat_foreign` FOREIGN KEY (`id_perawat`) REFERENCES `perawat` (`id_perawat`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `perawat`
--
ALTER TABLE `perawat`
  ADD CONSTRAINT `perawat_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD CONSTRAINT `poli_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE,
  ADD CONSTRAINT `poli_id_perawat_foreign` FOREIGN KEY (`id_perawat`) REFERENCES `perawat` (`id_perawat`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
