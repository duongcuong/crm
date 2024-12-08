-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 21, 2024 lúc 02:45 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `proj_crm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `name`, `deleted`, `website`, `type`, `industry`, `sic_code`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_postal_code`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_country`, `shipping_address_postal_code`, `description`, `created_at`, `modified_at`, `campaign_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('67225ddf04fdaa8d2', '123', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-30 16:25:03', '2024-10-30 16:25:03', NULL, '671fa89eeaf93e223', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_contact`
--

CREATE TABLE `account_contact` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_document`
--

CREATE TABLE `account_document` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_portal_user`
--

CREATE TABLE `account_portal_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_target_list`
--

CREATE TABLE `account_target_list` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `action_history_record`
--

CREATE TABLE `action_history_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_log_record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `action_history_record`
--

INSERT INTO `action_history_record` (`id`, `deleted`, `number`, `target_type`, `data`, `action`, `created_at`, `ip_address`, `target_id`, `user_id`, `auth_token_id`, `auth_log_record_id`) VALUES
('6720f65c61eebf3e4', 0, 1, 'User', NULL, 'read', '2024-10-29 14:51:08', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6720f65f4a2d9e3d4', 0, 2, 'User', NULL, 'read', '2024-10-29 14:51:11', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67224fb161410f180', 0, 3, 'User', NULL, 'read', '2024-10-30 15:24:33', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67224fc2b419c5a37', 0, 4, 'User', NULL, 'read', '2024-10-30 15:24:50', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67224ff596dd8ec02', 0, 5, 'User', NULL, 'read', '2024-10-30 15:25:41', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225ddf1388cb6a2', 0, 6, 'Account', NULL, 'create', '2024-10-30 16:25:03', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225ddf3b72cb565', 0, 7, 'Account', NULL, 'read', '2024-10-30 16:25:03', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225df09d415e60a', 0, 8, 'Opportunity', NULL, 'create', '2024-10-30 16:25:20', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225df0bed1a51a4', 0, 9, 'Opportunity', NULL, 'read', '2024-10-30 16:25:20', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225ea98f3d58fb2', 0, 10, 'CHocvien', NULL, 'create', '2024-10-30 16:28:25', '::1', '67225ea98755c7f29', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67225ea9b7e1b12c5', 0, 11, 'CHocvien', NULL, 'read', '2024-10-30 16:28:25', '::1', '67225ea98755c7f29', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6722608c8809a28de', 0, 12, 'Opportunity', NULL, 'read', '2024-10-30 16:36:28', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672260d3f177636ec', 0, 13, 'Opportunity', NULL, 'read', '2024-10-30 16:37:39', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6722613ea2e0193f9', 0, 14, 'User', NULL, 'read', '2024-10-30 16:39:26', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67226147004e9964c', 0, 15, 'User', NULL, 'read', '2024-10-30 16:39:35', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672261f82fa0f0ebf', 0, 16, 'ScheduledJob', NULL, 'read', '2024-10-30 16:42:32', '::1', '671fa92409c2cf9fe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672e205c88afdf965', 0, 17, 'CHocvien', NULL, 'read', '2024-11-08 14:29:48', '::1', '67225ea98755c7f29', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672e206c236fe9c65', 0, 18, 'User', NULL, 'read', '2024-11-08 14:30:04', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672e206db6f278353', 0, 19, 'CHocvien', NULL, 'read', '2024-11-08 14:30:05', '::1', '67225ea98755c7f29', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672e212c41a7213cd', 0, 20, 'User', NULL, 'read', '2024-11-08 14:33:16', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('672e218fa1821a6a9', 0, 21, 'User', NULL, 'read', '2024-11-08 14:34:55', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730bfb5ab4cb62ff', 0, 22, 'Role', NULL, 'create', '2024-11-10 14:14:13', '::1', '6730bfb5a1a304c35', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730bfb68e5e20683', 0, 23, 'Role', NULL, 'read', '2024-11-10 14:14:14', '::1', '6730bfb5a1a304c35', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730bfc1c3f57f0c2', 0, 24, 'Role', NULL, 'read', '2024-11-10 14:14:25', '::1', '6730bfb5a1a304c35', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c003e82dba873', 0, 25, 'Role', NULL, 'create', '2024-11-10 14:15:31', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c00451c8bd225', 0, 26, 'Role', NULL, 'read', '2024-11-10 14:15:32', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0808b5f20cfc', 0, 27, 'Role', NULL, 'read', '2024-11-10 14:17:36', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c09a407346c15', 0, 28, 'Role', NULL, 'create', '2024-11-10 14:18:02', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c09a96738d9c8', 0, 29, 'Role', NULL, 'read', '2024-11-10 14:18:02', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0a23282e87e0', 0, 30, 'User', NULL, 'read', '2024-11-10 14:18:10', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0a40c95066e5', 0, 31, 'Role', NULL, 'read', '2024-11-10 14:18:12', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0bf1ed90fa59', 0, 32, 'Role', NULL, 'create', '2024-11-10 14:18:39', '::1', '6730c0bf199d86e10', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0bf6a4ec5cfa', 0, 33, 'Role', NULL, 'read', '2024-11-10 14:18:39', '::1', '6730c0bf199d86e10', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c0cf9ca98d1c3', 0, 34, 'User', NULL, 'read', '2024-11-10 14:18:55', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c15776e03462b', 0, 35, 'User', NULL, 'create', '2024-11-10 14:21:11', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c157c93a7b724', 0, 36, 'User', NULL, 'read', '2024-11-10 14:21:11', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c19d90eb298c0', 0, 37, 'Role', NULL, 'read', '2024-11-10 14:22:21', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c1c2e6e1e8b49', 0, 38, 'Role', NULL, 'read', '2024-11-10 14:22:58', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c1f190b4d8aa1', 0, 39, 'Role', NULL, 'update', '2024-11-10 14:23:45', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c1f20029738c8', 0, 40, 'Role', NULL, 'read', '2024-11-10 14:23:46', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730c2003c30e6c17', 0, 41, 'Role', NULL, 'read', '2024-11-10 14:24:00', '::1', '6730c09a3aad83401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730d29511576d8c2', 0, 42, 'Lead', NULL, 'create', '2024-11-10 15:34:45', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730d2953a2de02f9', 0, 43, 'Lead', NULL, 'read', '2024-11-10 15:34:45', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730d29a798c41ffd', 0, 44, 'Lead', NULL, 'read', '2024-11-10 15:34:50', '::1', '6730d295012f41ae6', '6730c1576bf7c7966', '6730c172d675e68b4', '6730c172d7101aef9'),
('6730ee119e7ca7026', 0, 45, 'User', NULL, 'read', '2024-11-10 17:32:01', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730ee15a05fcd058', 0, 46, 'User', NULL, 'read', '2024-11-10 17:32:05', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730ee7fc3cf03483', 0, 47, 'Lead', NULL, 'read', '2024-11-10 17:33:51', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730ee998d2da56d9', 0, 48, 'CHocvien', NULL, 'read', '2024-11-10 17:34:17', '::1', '67225ea98755c7f29', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6730eee4b237c5e9a', 0, 49, 'Account', NULL, 'read', '2024-11-10 17:35:32', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67335bad1f358b813', 0, 50, 'Opportunity', NULL, 'read', '2024-11-12 13:44:13', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67337837a0d5b947a', 0, 51, 'User', NULL, 'read', '2024-11-12 15:45:59', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67337839061377364', 0, 52, 'User', NULL, 'read', '2024-11-12 15:46:01', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67338fc0ed61f32ce', 0, 53, 'Lead', NULL, 'read', '2024-11-12 17:26:24', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673766ef55a8bae0e', 0, 54, 'User', NULL, 'read', '2024-11-15 15:21:19', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673766f33c648694c', 0, 55, 'User', NULL, 'read', '2024-11-15 15:21:23', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6737688561dc662e3', 0, 56, 'User', NULL, 'read', '2024-11-15 15:28:05', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6737688621c481817', 0, 57, 'User', NULL, 'read', '2024-11-15 15:28:06', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673768e7d7b1f68cc', 0, 58, 'User', NULL, 'read', '2024-11-15 15:29:43', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6737694a252156555', 0, 59, 'User', NULL, 'read', '2024-11-15 15:31:22', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673842bb78ba79ed4', 0, 60, 'User', NULL, 'read', '2024-11-16 06:59:07', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673846925aef1056d', 0, 61, 'User', NULL, 'read', '2024-11-16 07:15:30', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673846b8eff41d663', 0, 62, 'User', NULL, 'read', '2024-11-16 07:16:08', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384cf45956e65e1', 0, 63, 'User', NULL, 'read', '2024-11-16 07:42:44', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384d872ad17fb98', 0, 64, 'User', NULL, 'read', '2024-11-16 07:45:11', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384f0e923233038', 0, 65, 'User', NULL, 'read', '2024-11-16 07:51:42', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384f8d122c76f0f', 0, 66, 'User', NULL, 'read', '2024-11-16 07:53:49', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384fbfbc86293f7', 0, 67, 'User', NULL, 'create', '2024-11-16 07:54:39', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384fc0588e770b2', 0, 68, 'User', NULL, 'read', '2024-11-16 07:54:40', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384fc96e578bd9b', 0, 69, 'User', NULL, 'read', '2024-11-16 07:54:49', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384fd3b45be34a0', 0, 70, 'User', NULL, 'update', '2024-11-16 07:54:59', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384fd3e11602b9d', 0, 71, 'User', NULL, 'read', '2024-11-16 07:54:59', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384ffd6626c2980', 0, 72, 'User', NULL, 'create', '2024-11-16 07:55:41', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67384ffdc90cb86d1', 0, 73, 'User', NULL, 'read', '2024-11-16 07:55:41', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673850612e7d12d93', 0, 74, 'User', NULL, 'read', '2024-11-16 07:57:21', '::1', '67384fbfacd709c07', '67384fbfacd709c07', '67385057a00c6cc9f', '67385057a1c5acdb6'),
('6738509e2b9542e2a', 0, 75, 'User', NULL, 'read', '2024-11-16 07:58:22', '::1', '67384ffd5febe04b1', '67384ffd5febe04b1', '673850911a2ae63bb', '673850911a96a2add'),
('673851045835df163', 0, 76, 'User', NULL, 'read', '2024-11-16 08:00:04', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67385108ef4348994', 0, 77, 'User', NULL, 'read', '2024-11-16 08:00:08', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67385120ed32f88ba', 0, 78, 'User', NULL, 'read', '2024-11-16 08:00:32', '::1', '67384ffd5febe04b1', '67384ffd5febe04b1', '673850911a2ae63bb', '673850911a96a2add'),
('67385cd3682d9c347', 0, 79, 'User', NULL, 'read', '2024-11-16 08:50:27', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afc73f55487bd', 0, 80, 'CFeePayment', NULL, 'create', '2024-11-16 14:44:23', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afc76e4ca0fec', 0, 81, 'CFeePayment', NULL, 'read', '2024-11-16 14:44:23', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afd435af41532', 0, 82, 'CFeePayment', NULL, 'read', '2024-11-16 14:44:36', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afdc4c3459dcf', 0, 83, 'CFeePayment', NULL, 'read', '2024-11-16 14:44:44', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afe266678354f', 0, 84, 'CFeePayment', NULL, 'read', '2024-11-16 14:44:50', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afe7cea933a36', 0, 85, 'User', NULL, 'read', '2024-11-16 14:44:55', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738afed18cced7fd', 0, 86, 'User', NULL, 'read', '2024-11-16 14:45:01', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738affa65a552c03', 0, 87, 'User', NULL, 'read', '2024-11-16 14:45:14', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b04655a271b20', 0, 88, 'CFeePayment', NULL, 'read', '2024-11-16 14:46:30', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b098a106587b2', 0, 89, 'CFeePayment', NULL, 'read', '2024-11-16 14:47:52', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b0c34193171e4', 0, 90, 'CFeePayment', NULL, 'read', '2024-11-16 14:48:35', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b106be7cd079d', 0, 91, 'CFeePayment', NULL, 'read', '2024-11-16 14:49:42', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b1136ba358c17', 0, 92, 'CFeePayment', NULL, 'read', '2024-11-16 14:49:55', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738b1172891fc183', 0, 93, 'CFeePayment', NULL, 'update', '2024-11-16 14:49:59', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c2789c462028d', 0, 94, 'CDrivingCourse', NULL, 'create', '2024-11-16 16:04:08', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c278c39a2a858', 0, 95, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:04:08', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c2a98a96510d4', 0, 96, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:04:57', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c2bd1d370b114', 0, 97, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:05:17', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c307397da38df', 0, 98, 'CDrivingCourse', NULL, 'update', '2024-11-16 16:06:31', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c3589859707c4', 0, 99, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:07:52', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c362ea61fd8a6', 0, 100, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:08:02', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c3a00ecdf65f9', 0, 101, 'User', NULL, 'read', '2024-11-16 16:09:04', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c3ee4efb5c367', 0, 102, 'CDrivingCourse', NULL, 'read', '2024-11-16 16:10:22', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c3f6ed3813d28', 0, 103, 'CDrivingCourse', NULL, 'update', '2024-11-16 16:10:30', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6738c3fb1af599c6e', 0, 104, 'User', NULL, 'read', '2024-11-16 16:10:35', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739574226052c3d2', 0, 105, 'CDrivingCourse', NULL, 'read', '2024-11-17 02:38:58', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739574713c125f2f', 0, 106, 'CDrivingCourse', NULL, 'read', '2024-11-17 02:39:03', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673957519bfb9b6bf', 0, 107, 'CDrivingCourse', NULL, 'read', '2024-11-17 02:39:13', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395769e8374b9eb', 0, 108, 'CDrivingCourse', NULL, 'read', '2024-11-17 02:39:37', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395770b97f1cf86', 0, 109, 'User', NULL, 'read', '2024-11-17 02:39:44', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739577c91b207106', 0, 110, 'User', NULL, 'read', '2024-11-17 02:39:56', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395aa3739b5d26b', 0, 111, 'User', NULL, 'read', '2024-11-17 02:53:23', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395aa7d133d18cd', 0, 112, 'CFeePayment', NULL, 'read', '2024-11-17 02:53:27', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395c7eb87402edc', 0, 113, 'CFeePayment', NULL, 'read', '2024-11-17 03:01:18', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395f2af0b8dfbac', 0, 114, 'CFeePayment', NULL, 'read', '2024-11-17 03:12:42', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395f2c8e078c5a0', 0, 115, 'CFeePayment', NULL, 'read', '2024-11-17 03:12:44', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395f3e386e24cdb', 0, 116, 'CFeePayment', NULL, 'read', '2024-11-17 03:13:02', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fbf14463ff09', 0, 117, 'CDrivingCourse', NULL, 'read', '2024-11-17 03:15:11', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fc0c6c34ca28', 0, 118, 'CDrivingCourse', NULL, 'read', '2024-11-17 03:15:12', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fc90bb73bd1f', 0, 119, 'CDrivingCourse', NULL, 'read', '2024-11-17 03:15:21', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fd8617b978c5', 0, 120, 'CDrivingCourse', NULL, 'read', '2024-11-17 03:15:36', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fe8a93c3baed', 0, 121, 'CFeePayment', NULL, 'read', '2024-11-17 03:15:52', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395fea23958c2f9', 0, 122, 'CFeePayment', NULL, 'read', '2024-11-17 03:15:54', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395ff599d0fe929', 0, 123, 'CFeePayment', NULL, 'read', '2024-11-17 03:16:05', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67395ff70e7634075', 0, 124, 'CFeePayment', NULL, 'read', '2024-11-17 03:16:07', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67396032c4bde4031', 0, 125, 'CFeePayment', NULL, 'read', '2024-11-17 03:17:06', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739603537e17c8f9', 0, 126, 'CFeePayment', NULL, 'read', '2024-11-17 03:17:09', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739603974268d8b5', 0, 127, 'CFeePayment', NULL, 'update', '2024-11-17 03:17:13', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739604262947bc18', 0, 128, 'CFeePayment', NULL, 'read', '2024-11-17 03:17:22', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739609d83c7ce61c', 0, 129, 'CFeePayment', NULL, 'update', '2024-11-17 03:18:53', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673982152b0eaed67', 0, 130, 'CDrivingCourse', NULL, 'read', '2024-11-17 05:41:41', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67398226d2112c638', 0, 131, 'CDrivingCourse', NULL, 'read', '2024-11-17 05:41:58', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('67398228d70c69f48', 0, 132, 'CDrivingCourse', NULL, 'read', '2024-11-17 05:42:00', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739835dc64203e2c', 0, 133, 'CDrivingCourse', NULL, 'read', '2024-11-17 05:47:09', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673983d3baa6bd654', 0, 134, 'CFeePayment', NULL, 'read', '2024-11-17 05:49:07', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739ba02dc71594f3', 0, 135, 'CFeePayment', NULL, 'read', '2024-11-17 09:40:18', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc4f0651da0bd', 0, 136, 'CDrivingCourse', NULL, 'read', '2024-11-17 09:50:07', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc5566cb2e031', 0, 137, 'CDrivingCourse', NULL, 'read', '2024-11-17 09:50:13', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc572100936cd', 0, 138, 'CDrivingCourse', NULL, 'read', '2024-11-17 09:50:15', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc633d8dff514', 0, 139, 'CFeePayment', NULL, 'read', '2024-11-17 09:50:27', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc648a760ac70', 0, 140, 'CFeePayment', NULL, 'read', '2024-11-17 09:50:28', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc79af9477492', 0, 141, 'CDrivingCourse', NULL, 'read', '2024-11-17 09:50:49', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc7f6a7687995', 0, 142, 'CDrivingCourse', NULL, 'update', '2024-11-17 09:50:55', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bc861b4e0ba43', 0, 143, 'CFeePayment', NULL, 'read', '2024-11-17 09:51:02', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bd7d9813b9e1c', 0, 144, 'CDrivingCourse', NULL, 'read', '2024-11-17 09:55:09', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bd840d9977a3d', 0, 145, 'CDrivingCourse', NULL, 'update', '2024-11-17 09:55:16', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bd8cec181291a', 0, 146, 'CFeePayment', NULL, 'read', '2024-11-17 09:55:24', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bd8ee480f91ea', 0, 147, 'CFeePayment', NULL, 'read', '2024-11-17 09:55:26', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bea9edab8b394', 0, 148, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:00:09', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739beb95777dd57c', 0, 149, 'CFeePayment', NULL, 'read', '2024-11-17 10:00:25', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bebf1935a50a9', 0, 150, 'CFeePayment', NULL, 'read', '2024-11-17 10:00:31', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bed43752f4796', 0, 151, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:00:52', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bf63ed673ae30', 0, 152, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:03:15', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bf67e8286eec0', 0, 153, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:03:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bfd24765050c2', 0, 154, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:05:06', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bfdcd83e7349a', 0, 155, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:05:16', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739bfdf3a20d7b70', 0, 156, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:05:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c0b65350a3c46', 0, 157, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:08:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c0c778e83ca64', 0, 158, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:09:11', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c12edd3d062a4', 0, 159, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:10:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c1351269cadd6', 0, 160, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:11:01', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c1988a2661d5c', 0, 161, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:12:40', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c1e2b7075b494', 0, 162, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:13:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c1eb63e350a41', 0, 163, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:14:03', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c34ddcc76fd09', 0, 164, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:19:57', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c35240401e218', 0, 165, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:20:02', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c355af96af936', 0, 166, 'CFeePayment', NULL, 'read', '2024-11-17 10:20:05', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c3824d553ea01', 0, 167, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:20:50', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c3869b858ade5', 0, 168, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:20:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c3ca257751d30', 0, 169, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:22:02', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c3fe2b409fb2f', 0, 170, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:22:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c405187b9d33e', 0, 171, 'CDrivingCourse', NULL, 'update', '2024-11-17 10:23:01', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c420eeeb61ae5', 0, 172, 'CFeePayment', NULL, 'read', '2024-11-17 10:23:28', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c4aee05ab0119', 0, 173, 'CFeePayment', NULL, 'read', '2024-11-17 10:25:50', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739c6c6110c0d8b6', 0, 174, 'CDrivingCourse', NULL, 'read', '2024-11-17 10:34:46', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739f7cd7dc23726a', 0, 175, 'CFeePayment', NULL, 'read', '2024-11-17 14:03:57', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739f8149ad8a8b92', 0, 176, 'CDrivingCourse', NULL, 'read', '2024-11-17 14:05:08', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739f81f8f44f58fc', 0, 177, 'CFeePayment', NULL, 'read', '2024-11-17 14:05:19', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739f8240e16e6b85', 0, 178, 'CFeePayment', NULL, 'read', '2024-11-17 14:05:24', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fb48b28088ada', 0, 179, 'CFeePayment', NULL, 'read', '2024-11-17 14:18:48', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fb8ab4a10a977', 0, 180, 'CFeePayment', NULL, 'read', '2024-11-17 14:19:54', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fbb2dbed6ca3f', 0, 181, 'CFeePayment', NULL, 'create', '2024-11-17 14:20:34', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fbb307e4f71f5', 0, 182, 'CFeePayment', NULL, 'read', '2024-11-17 14:20:35', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fc1eeb115b13d', 0, 183, 'CFeePayment', NULL, 'read', '2024-11-17 14:22:22', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('6739fce7bce7d59ac', 0, 184, 'CDrivingCourse', NULL, 'read', '2024-11-17 14:25:43', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673a09454dbdb7849', 0, 185, 'CDrivingCourse', NULL, 'read', '2024-11-17 15:18:29', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4bdda11c4bb28', 0, 186, 'Lead', NULL, 'read', '2024-11-18 14:14:53', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4be1ededeb1eb', 0, 187, 'User', NULL, 'read', '2024-11-18 14:14:57', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4be918ba5fee4', 0, 188, 'Opportunity', NULL, 'read', '2024-11-18 14:15:05', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4bf3e1afd5f6c', 0, 189, 'Account', NULL, 'read', '2024-11-18 14:15:15', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4bf679399070c', 0, 190, 'User', NULL, 'read', '2024-11-18 14:15:18', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4bf8e515ad87f', 0, 191, 'Account', NULL, 'read', '2024-11-18 14:15:20', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4bfe71a9d7a90', 0, 192, 'User', NULL, 'read', '2024-11-18 14:15:26', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c006395a7e70', 0, 193, 'Account', NULL, 'read', '2024-11-18 14:15:28', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c05eeff49573', 0, 194, 'Opportunity', NULL, 'read', '2024-11-18 14:15:33', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c0746304980f', 0, 195, 'Account', NULL, 'read', '2024-11-18 14:15:35', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c217f357cd75', 0, 196, 'Lead', NULL, 'read', '2024-11-18 14:16:01', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c3c41f89aadc', 0, 197, 'Lead', NULL, 'read', '2024-11-18 14:16:28', '::1', '6730d295012f41ae6', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c40181560a76', 0, 198, 'Opportunity', NULL, 'read', '2024-11-18 14:16:32', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c47427d40396', 0, 199, 'Account', NULL, 'read', '2024-11-18 14:16:39', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c4b7c828ea9d', 0, 200, 'Opportunity', NULL, 'read', '2024-11-18 14:16:43', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c4e35fc5f0c5', 0, 201, 'Account', NULL, 'read', '2024-11-18 14:16:46', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c71e35b80b69', 0, 202, 'Opportunity', NULL, 'read', '2024-11-18 14:17:21', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c7acd0e18ff2', 0, 203, 'Opportunity', NULL, 'read', '2024-11-18 14:17:30', '::1', '67225df0967d53cd4', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4c7c591e5d176', 0, 204, 'Account', NULL, 'read', '2024-11-18 14:17:32', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4ca584767619d', 0, 205, 'Account', NULL, 'read', '2024-11-18 14:18:13', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4d18c6b23877d', 0, 206, 'CDrivingCourse', NULL, 'read', '2024-11-18 14:20:08', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b4d25e5616fc6e', 0, 207, 'CDrivingCourse', NULL, 'read', '2024-11-18 14:20:21', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b5076de5cb220f', 0, 208, 'CFeePayment', NULL, 'read', '2024-11-18 14:34:30', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b5228ed93eb093', 0, 209, 'CDrivingCourse', NULL, 'read', '2024-11-18 14:41:44', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b52991112d8fc9', 0, 210, 'User', NULL, 'read', '2024-11-18 14:43:37', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b53082a6287570', 0, 211, 'User', NULL, 'read', '2024-11-18 14:45:28', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b5316d51159d4b', 0, 212, 'User', NULL, 'read', '2024-11-18 14:45:42', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b566da88caba89', 0, 213, 'Task', NULL, 'create', '2024-11-18 14:59:57', '::1', '673b566d99f89ac22', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b566f664bc7553', 0, 214, 'Task', NULL, 'read', '2024-11-18 14:59:59', '::1', '673b566d99f89ac22', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673b5a2be8897d117', 0, 215, 'Task', NULL, 'read', '2024-11-18 15:15:55', '::1', '673b566d99f89ac22', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be3e378f3a847f', 0, 216, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:03:31', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be41068f97e301', 0, 217, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:16', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be4137699fab4d', 0, 218, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be41abe04ad29e', 0, 219, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:26', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be41e671f65257', 0, 220, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:30', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be41fb2a7319f3', 0, 221, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:31', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be428873e3460f', 0, 222, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:40', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be42a16fd38b6e', 0, 223, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:04:42', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be474f3bc962ad', 0, 224, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:05:56', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be72a7accad2ad', 0, 225, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:17:30', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be72bc14893a95', 0, 226, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:17:31', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be73151fe651bc', 0, 227, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:17:37', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be738beeb5ae2e', 0, 228, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:17:44', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be7b5ae6089d7f', 0, 229, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:19:49', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be7b93ae3a7fb9', 0, 230, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:19:53', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be802b3e710454', 0, 231, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:21:06', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be81c1451ae5c3', 0, 232, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:21:32', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be81c357c0beca', 0, 233, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:21:32', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be8a1297a659da', 0, 234, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:23:45', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be8b752cd1ecd2', 0, 235, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:24:07', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be91f38bf1b99e', 0, 236, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:25:51', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be92558957fe0a', 0, 237, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:25:57', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be92c1feb1aa2b', 0, 238, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:26:04', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be9a6649711065', 0, 239, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:28:06', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be9a7b935391c3', 0, 240, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:28:07', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673be9ac95b832698', 0, 241, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:28:12', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673bea2b5d46942f0', 0, 242, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:30:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673bea2ea57dba5ea', 0, 243, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:30:22', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673bea9247a81d3a9', 0, 244, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:32:02', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673bea9725dcc8fcc', 0, 245, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:32:07', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673beaa0a53abd33f', 0, 246, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:32:16', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673beaa3883f45b09', 0, 247, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:32:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673beac21cf944aba', 0, 248, 'CDrivingCourse', NULL, 'read', '2024-11-19 01:32:50', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673beaca7d925d5cd', 0, 249, 'CDrivingCourse', NULL, 'update', '2024-11-19 01:32:58', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad1dc492968e9', 0, 250, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:22:05', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad20d8c9a42ff', 0, 251, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:22:08', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad29304ea98f1', 0, 252, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:22:17', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad2e09df5e681', 0, 253, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:22:22', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad43010637928', 0, 254, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:22:43', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad53c18e01198', 0, 255, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:22:59', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad632c99a3552', 0, 256, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:23:15', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cad786221825fe', 0, 257, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:23:36', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cada9d9ef8ae5c', 0, 258, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:24:25', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cadb74c642be4e', 0, 259, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:24:39', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cadb8c4d934074', 0, 260, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:24:40', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cadbb2e6bf8f68', 0, 261, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:24:43', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673caf9e9278432aa', 0, 262, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:32:46', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafb2ed7bdeeb9', 0, 263, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:06', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafb674c4ab529', 0, 264, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:10', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafbf90880ef59', 0, 265, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafc7ee20ed318', 0, 266, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:33:27', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafc83715de523', 0, 267, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:28', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafd5e7725d230', 0, 268, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:41', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cafd79f574365b', 0, 269, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:33:43', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673caff7c8deefee6', 0, 270, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:34:15', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb0011fb5fe38d', 0, 271, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:34:25', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb026e958bbb9a', 0, 272, 'Account', NULL, 'read', '2024-11-19 15:35:02', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb0300d0fff0cc', 0, 273, 'Account', NULL, 'read', '2024-11-19 15:35:12', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb0319a2fa0ff1', 0, 274, 'Account', NULL, 'read', '2024-11-19 15:35:13', '::1', '67225ddf04fdaa8d2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb03c05f4bb5cd', 0, 275, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:35:24', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb04caa1cdf772', 0, 276, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:35:40', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb0523ba41ea80', 0, 277, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:35:46', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb055110cac0af', 0, 278, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:35:49', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb056cf458156b', 0, 279, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:35:50', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb05b4d8e7bad2', 0, 280, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:35:55', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb060d8466c66b', 0, 281, 'CFeePayment', NULL, 'read', '2024-11-19 15:36:00', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb065d05517918', 0, 282, 'CFeePayment', NULL, 'update', '2024-11-19 15:36:05', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb06bdcfb7acf2', 0, 283, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:36:11', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb0772a351a4df', 0, 284, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:36:23', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb39f95da4f1e9', 0, 285, 'CFeePayment', NULL, 'read', '2024-11-19 15:49:51', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3a26973f8dd1', 0, 286, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:49:54', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3d703785f5d2', 0, 287, 'CFeePayment', NULL, 'read', '2024-11-19 15:50:47', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3dc3620c1145', 0, 288, 'CFeePayment', NULL, 'update', '2024-11-19 15:50:52', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3e7e91c3588c', 0, 289, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:51:03', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3ee480ac41e9', 0, 290, 'CFeePayment', NULL, 'read', '2024-11-19 15:51:10', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb3f3906aeee5e', 0, 291, 'CFeePayment', NULL, 'update', '2024-11-19 15:51:15', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289');
INSERT INTO `action_history_record` (`id`, `deleted`, `number`, `target_type`, `data`, `action`, `created_at`, `ip_address`, `target_id`, `user_id`, `auth_token_id`, `auth_log_record_id`) VALUES
('673cb4261689ee34d', 0, 292, 'CFeePayment', NULL, 'read', '2024-11-19 15:52:06', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb42942d2f1230', 0, 293, 'CFeePayment', NULL, 'update', '2024-11-19 15:52:09', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb44ceaf74427e', 0, 294, 'CFeePayment', NULL, 'read', '2024-11-19 15:52:44', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb454cd716b2e1', 0, 295, 'CFeePayment', NULL, 'update', '2024-11-19 15:52:52', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb4c1c891d974a', 0, 296, 'CFeePayment', NULL, 'read', '2024-11-19 15:54:41', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb534e9791281d', 0, 297, 'CFeePayment', NULL, 'update', '2024-11-19 15:56:36', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb5613e3ed3f67', 0, 298, 'CFeePayment', NULL, 'read', '2024-11-19 15:57:21', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb5658d2cc3193', 0, 299, 'CFeePayment', NULL, 'update', '2024-11-19 15:57:25', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb5b1c7aaf7751', 0, 300, 'CDrivingCourse', NULL, 'read', '2024-11-19 15:58:41', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb5b536404d72a', 0, 301, 'CDrivingCourse', NULL, 'update', '2024-11-19 15:58:45', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb6dee45621b72', 0, 302, 'CDrivingCourse', NULL, 'read', '2024-11-19 16:03:42', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb6e1d8ebad79a', 0, 303, 'CDrivingCourse', NULL, 'update', '2024-11-19 16:03:45', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb701f3417931f', 0, 304, 'CDrivingCourse', NULL, 'read', '2024-11-19 16:04:17', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb70789bf4d281', 0, 305, 'CDrivingCourse', NULL, 'update', '2024-11-19 16:04:23', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb850dbd9c72d9', 0, 306, 'CDrivingCourse', NULL, 'read', '2024-11-19 16:09:52', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb854d4202c713', 0, 307, 'CDrivingCourse', NULL, 'update', '2024-11-19 16:09:56', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb8c32f18cefaf', 0, 308, 'CDrivingCourse', NULL, 'read', '2024-11-19 16:11:47', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb8c6721336c95', 0, 309, 'CDrivingCourse', NULL, 'update', '2024-11-19 16:11:50', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb95a616f02c71', 0, 310, 'CDrivingCourse', NULL, 'read', '2024-11-19 16:14:18', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb95d36d298d43', 0, 311, 'CDrivingCourse', NULL, 'update', '2024-11-19 16:14:21', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb98b5bee3f24b', 0, 312, 'CFeePayment', NULL, 'read', '2024-11-19 16:15:07', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cb990d687f404e', 0, 313, 'CFeePayment', NULL, 'update', '2024-11-19 16:15:12', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbae681dbe999a', 0, 314, 'CFeePayment', NULL, 'read', '2024-11-19 16:20:54', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbaeb78e449c6b', 0, 315, 'CFeePayment', NULL, 'update', '2024-11-19 16:20:59', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb0684a9e6927', 0, 316, 'CFeePayment', NULL, 'read', '2024-11-19 16:21:26', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb0b32af29028', 0, 317, 'CFeePayment', NULL, 'update', '2024-11-19 16:21:31', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb2c676229295', 0, 318, 'CFeePayment', NULL, 'read', '2024-11-19 16:22:04', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb2fcd8c80b52', 0, 319, 'CFeePayment', NULL, 'update', '2024-11-19 16:22:07', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb593201361b9', 0, 320, 'CFeePayment', NULL, 'read', '2024-11-19 16:22:49', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb5d2c4887b57', 0, 321, 'CFeePayment', NULL, 'update', '2024-11-19 16:22:53', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb9ae3097e1a3', 0, 322, 'CFeePayment', NULL, 'read', '2024-11-19 16:23:54', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbb9f76269078c', 0, 323, 'CFeePayment', NULL, 'update', '2024-11-19 16:23:59', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbbb3cea94bbf2', 0, 324, 'CFeePayment', NULL, 'read', '2024-11-19 16:24:19', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbbb85bbbeeea9', 0, 325, 'CFeePayment', NULL, 'update', '2024-11-19 16:24:24', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbcc4d465bde55', 0, 326, 'CFeePayment', NULL, 'read', '2024-11-19 16:28:52', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673cbcc8753363b43', 0, 327, 'CFeePayment', NULL, 'update', '2024-11-19 16:28:56', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d96a3df2bdfab3', 0, 328, 'CFeePayment', NULL, 'read', '2024-11-20 07:58:27', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d96c86077bc6ea', 0, 329, 'CFeePayment', NULL, 'read', '2024-11-20 07:59:04', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d96d07bd494c3c', 0, 330, 'CFeePayment', NULL, 'update', '2024-11-20 07:59:12', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d96fa4fc8ec8f0', 0, 331, 'CFeePayment', NULL, 'read', '2024-11-20 07:59:54', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d96feb65505578', 0, 332, 'CFeePayment', NULL, 'update', '2024-11-20 07:59:58', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d9aa1ef73ec848', 0, 333, 'CFeePayment', NULL, 'read', '2024-11-20 08:15:29', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673d9aabb15f800a3', 0, 334, 'CFeePayment', NULL, 'update', '2024-11-20 08:15:39', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da142213afa271', 0, 335, 'CFeePayment', NULL, 'read', '2024-11-20 08:43:46', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da145864914e13', 0, 336, 'CFeePayment', NULL, 'update', '2024-11-20 08:43:49', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da1530c12b4aad', 0, 337, 'CFeePayment', NULL, 'read', '2024-11-20 08:44:03', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da156ec86cc55f', 0, 338, 'CFeePayment', NULL, 'update', '2024-11-20 08:44:06', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da163ad42b0241', 0, 339, 'CDrivingCourse', NULL, 'read', '2024-11-20 08:44:19', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da16725eaed9b5', 0, 340, 'CDrivingCourse', NULL, 'read', '2024-11-20 08:44:23', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da16dd8d123785', 0, 341, 'CDrivingCourse', NULL, 'read', '2024-11-20 08:44:29', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673da173582a947ee', 0, 342, 'CDrivingCourse', NULL, 'read', '2024-11-20 08:44:35', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673db04b831b4059d', 0, 343, 'CFeePayment', NULL, 'read', '2024-11-20 09:47:55', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673db25ff36bc55bf', 0, 344, 'CFeePayment', NULL, 'read', '2024-11-20 09:56:47', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673db38701178c65c', 0, 345, 'CFeePayment', NULL, 'read', '2024-11-20 10:01:43', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673db8143c9d2c816', 0, 346, 'CFeePayment', NULL, 'read', '2024-11-20 10:21:08', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dbe5aed88b15be', 0, 347, 'CFeePayment', NULL, 'read', '2024-11-20 10:47:54', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dbe5f74f67e478', 0, 348, 'CFeePayment', NULL, 'update', '2024-11-20 10:47:59', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dbecdc07733429', 0, 349, 'CFeePayment', NULL, 'read', '2024-11-20 10:49:49', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dbed1494aefe54', 0, 350, 'CFeePayment', NULL, 'update', '2024-11-20 10:49:53', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dbee98623aa44e', 0, 351, 'CFeePayment', NULL, 'read', '2024-11-20 10:50:17', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc0359445df52b', 0, 352, 'CFeePayment', NULL, 'update', '2024-11-20 10:55:49', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc095e0dda52e6', 0, 353, 'CFeePayment', NULL, 'update', '2024-11-20 10:57:25', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc0bd58572a684', 0, 354, 'CFeePayment', NULL, 'read', '2024-11-20 10:58:05', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc129bc5991edc', 0, 355, 'CFeePayment', NULL, 'read', '2024-11-20 10:59:53', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc12d349c0a529', 0, 356, 'CFeePayment', NULL, 'update', '2024-11-20 10:59:57', '::1', '673db3596234e0cc7', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc3258e018d92d', 0, 357, 'CFeePayment', NULL, 'delete', '2024-11-20 11:08:21', '::1', '6738afc736bccaf72', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc335c15235c2b', 0, 358, 'CFeePayment', NULL, 'delete', '2024-11-20 11:08:37', '::1', '6739fbb2d2e76e2b9', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc37c1672f2d03', 0, 359, 'CFeePayment', NULL, 'create', '2024-11-20 11:09:48', '::1', '673dc37c0ed1908da', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc37c31bd50adb', 0, 360, 'CFeePayment', NULL, 'read', '2024-11-20 11:09:48', '::1', '673dc37c0ed1908da', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc3d45edd7a2c9', 0, 361, 'CFeePayment', NULL, 'delete', '2024-11-20 11:11:16', '::1', '673dc37c0ed1908da', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc3e3bb6f62ed1', 0, 362, 'CFeePayment', NULL, 'delete', '2024-11-20 11:11:31', '::1', '673db33abb09c0401', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc437d4617abda', 0, 363, 'CFeePayment', NULL, 'create', '2024-11-20 11:12:55', '::1', '673dc437cc3be3247', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc43807f0ac6b5', 0, 364, 'CFeePayment', NULL, 'read', '2024-11-20 11:12:56', '::1', '673dc437cc3be3247', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc45ea03d0a5c0', 0, 365, 'CFeePayment', NULL, 'delete', '2024-11-20 11:13:34', '::1', '673dc437cc3be3247', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc53da22bddd65', 0, 366, 'CFeePayment', NULL, 'create', '2024-11-20 11:17:17', '::1', '673dc53d9a5974a65', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc53dd35e91477', 0, 367, 'CFeePayment', NULL, 'read', '2024-11-20 11:17:17', '::1', '673dc53d9a5974a65', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc557c86920a5b', 0, 368, 'CFeePayment', NULL, 'delete', '2024-11-20 11:17:43', '::1', '673dc53d9a5974a65', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc566d56d2cdc4', 0, 369, 'CDrivingCourse', NULL, 'delete', '2024-11-20 11:17:58', '::1', '673dc557c32b7d8fc', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc59e3e6a6f5aa', 0, 370, 'CFeePayment', NULL, 'create', '2024-11-20 11:18:54', '::1', '673dc59e36d5191c3', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc59e696c93e50', 0, 371, 'CFeePayment', NULL, 'read', '2024-11-20 11:18:54', '::1', '673dc59e36d5191c3', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc5a784d3ff9b8', 0, 372, 'CFeePayment', NULL, 'delete', '2024-11-20 11:19:03', '::1', '673dc59e36d5191c3', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc5afade6ab9cf', 0, 373, 'CDrivingCourse', NULL, 'delete', '2024-11-20 11:19:11', '::1', '673dc5a780d0a1a01', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc5df843a309cc', 0, 374, 'CFeePayment', NULL, 'create', '2024-11-20 11:19:59', '::1', '673dc5df7cc0c958a', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc5dfa2e09f9df', 0, 375, 'CFeePayment', NULL, 'read', '2024-11-20 11:19:59', '::1', '673dc5df7cc0c958a', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc61b6317fd64b', 0, 376, 'CFeePayment', NULL, 'create', '2024-11-20 11:20:59', '::1', '673dc61b5c0421f70', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dc61b85a6e50a2', 0, 377, 'CFeePayment', NULL, 'read', '2024-11-20 11:20:59', '::1', '673dc61b5c0421f70', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd96d79e899e60', 0, 378, 'CFeePayment', NULL, 'delete', '2024-11-20 12:43:25', '::1', '673dc718172fa26b2', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd985d37473d77', 0, 379, 'CFeePayment', NULL, 'create', '2024-11-20 12:43:49', '::1', '673dd985cc34af475', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd985ef9cc9544', 0, 380, 'CFeePayment', NULL, 'read', '2024-11-20 12:43:49', '::1', '673dd985cc34af475', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd99987ff84730', 0, 381, 'CFeePayment', NULL, 'create', '2024-11-20 12:44:09', '::1', '673dd999810e563f5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd999a20c14838', 0, 382, 'CFeePayment', NULL, 'read', '2024-11-20 12:44:09', '::1', '673dd999810e563f5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd9af36e828084', 0, 383, 'CFeePayment', NULL, 'create', '2024-11-20 12:44:31', '::1', '673dd9af30578af08', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd9af50dc24a4d', 0, 384, 'CFeePayment', NULL, 'read', '2024-11-20 12:44:31', '::1', '673dd9af30578af08', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dd9c3c34971e5e', 0, 385, 'CFeePayment', NULL, 'delete', '2024-11-20 12:44:51', '::1', '673dd9af30578af08', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda0eda9854fed', 0, 386, 'CFeePayment', NULL, 'delete', '2024-11-20 12:46:06', '::1', '673dd985cc34af475', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda30d6d055e11', 0, 387, 'CFeePayment', NULL, 'delete', '2024-11-20 12:46:40', '::1', '673dd999810e563f5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda4c96833a1b5', 0, 388, 'CFeePayment', NULL, 'create', '2024-11-20 12:47:08', '::1', '673dda4c8f9057ffc', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda4cb823aa17b', 0, 389, 'CFeePayment', NULL, 'read', '2024-11-20 12:47:08', '::1', '673dda4c8f9057ffc', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda5fd839a988a', 0, 390, 'CFeePayment', NULL, 'create', '2024-11-20 12:47:27', '::1', '673dda5fd1825bfdf', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda6001e60bcd4', 0, 391, 'CFeePayment', NULL, 'read', '2024-11-20 12:47:28', '::1', '673dda5fd1825bfdf', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda69cdb1b414f', 0, 392, 'CFeePayment', NULL, 'read', '2024-11-20 12:47:37', '::1', '673dda5fd1825bfdf', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda6f3e3eb6fde', 0, 393, 'CFeePayment', NULL, 'update', '2024-11-20 12:47:43', '::1', '673dda5fd1825bfdf', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673dda95c67a02301', 0, 394, 'CFeePayment', NULL, 'delete', '2024-11-20 12:48:21', '::1', '673dda4c8f9057ffc', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673ddaabaeb8ee9be', 0, 395, 'CFeePayment', NULL, 'create', '2024-11-20 12:48:43', '::1', '673ddaaba809b4c28', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673ddaabce339604e', 0, 396, 'CFeePayment', NULL, 'read', '2024-11-20 12:48:43', '::1', '673ddaaba809b4c28', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673ddab362911a06b', 0, 397, 'CDrivingCourse', NULL, 'read', '2024-11-20 12:48:51', '::1', '6738c278940b9515d', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673ddc7b049336b4a', 0, 398, 'User', NULL, 'read', '2024-11-20 12:56:27', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de0f9397858960', 0, 399, 'User', NULL, 'read', '2024-11-20 13:15:37', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de0fae20eb0fd5', 0, 400, 'User', NULL, 'read', '2024-11-20 13:15:38', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de140b3aeaad01', 0, 401, 'Task', NULL, 'create', '2024-11-20 13:16:48', '::1', '673de140a8d1352ba', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de15412b04f572', 0, 402, 'User', NULL, 'read', '2024-11-20 13:17:08', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de17058ce54109', 0, 403, 'User', NULL, 'read', '2024-11-20 13:17:36', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de35ea596e53a0', 0, 404, 'User', NULL, 'read', '2024-11-20 13:25:50', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de377dc70b1435', 0, 405, 'User', NULL, 'read', '2024-11-20 13:26:15', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de37cb85199069', 0, 406, 'User', NULL, 'read', '2024-11-20 13:26:20', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de37e39a12411f', 0, 407, 'User', NULL, 'read', '2024-11-20 13:26:22', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de38e9d96b1014', 0, 408, 'User', NULL, 'read', '2024-11-20 13:26:38', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de393d57693545', 0, 409, 'User', NULL, 'read', '2024-11-20 13:26:43', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de396eaf655f32', 0, 410, 'User', NULL, 'read', '2024-11-20 13:26:46', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de399b566235c0', 0, 411, 'User', NULL, 'read', '2024-11-20 13:26:49', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3a448b5e52ce', 0, 412, 'User', NULL, 'read', '2024-11-20 13:27:00', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3b95487e2216', 0, 413, 'Task', NULL, 'create', '2024-11-20 13:27:21', '::1', '673de3b94c2bc034c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3c0b3d73821d', 0, 414, 'User', NULL, 'read', '2024-11-20 13:27:28', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3c2d50b20aed', 0, 415, 'User', NULL, 'read', '2024-11-20 13:27:30', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3c816d41cb2b', 0, 416, 'User', NULL, 'read', '2024-11-20 13:27:36', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3d357a79c8d1', 0, 417, 'Task', NULL, 'read', '2024-11-20 13:27:47', '::1', '673de140a8d1352ba', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de3d6e213f8add', 0, 418, 'Task', NULL, 'read', '2024-11-20 13:27:50', '::1', '673de140a8d1352ba', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de412b2764a499', 0, 419, 'User', NULL, 'read', '2024-11-20 13:28:50', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de4162c6fde73b', 0, 420, 'User', NULL, 'read', '2024-11-20 13:28:54', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de43d7f54bc299', 0, 421, 'Task', NULL, 'create', '2024-11-20 13:29:33', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de446ea4be0f58', 0, 422, 'User', NULL, 'read', '2024-11-20 13:29:42', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de455491aa2ca3', 0, 423, 'User', NULL, 'read', '2024-11-20 13:29:57', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de45bac52e46a6', 0, 424, 'User', NULL, 'read', '2024-11-20 13:30:03', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de45dcd0650653', 0, 425, 'User', NULL, 'read', '2024-11-20 13:30:05', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de47d3634607a8', 0, 426, 'Task', NULL, 'create', '2024-11-20 13:30:37', '::1', '673de47d2f46d1040', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de48979585c66e', 0, 427, 'User', NULL, 'read', '2024-11-20 13:30:49', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de49390042656e', 0, 428, 'User', NULL, 'read', '2024-11-20 13:30:59', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de4f686f9b0091', 0, 429, 'Task', NULL, 'create', '2024-11-20 13:32:38', '::1', '673de4f680549467c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de502451743de6', 0, 430, 'User', NULL, 'read', '2024-11-20 13:32:50', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de52b3cf2e41c3', 0, 431, 'Task', NULL, 'create', '2024-11-20 13:33:31', '::1', '673de52b35c8942be', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de538c2cb7af61', 0, 432, 'User', NULL, 'read', '2024-11-20 13:33:44', '::1', '6730c1576bf7c7966', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de539c389da6e5', 0, 433, 'User', NULL, 'read', '2024-11-20 13:33:45', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de53aba6fb705f', 0, 434, 'User', NULL, 'read', '2024-11-20 13:33:46', '::1', '67384fbfacd709c07', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de53c107464dd3', 0, 435, 'User', NULL, 'read', '2024-11-20 13:33:48', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de55aacb369706', 0, 436, 'User', NULL, 'read', '2024-11-20 13:34:18', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5a20c7fc6861', 0, 437, 'User', NULL, 'read', '2024-11-20 13:35:30', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5bec66e0d0fa', 0, 438, 'User', NULL, 'read', '2024-11-20 13:35:58', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5c8e2b431e50', 0, 439, 'Task', NULL, 'read', '2024-11-20 13:36:08', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5ca87ccbb077', 0, 440, 'Task', NULL, 'read', '2024-11-20 13:36:10', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5e2cab170e4d', 0, 441, 'Meeting', NULL, 'create', '2024-11-20 13:36:34', '::1', '673de5e2c05c03448', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5e8f2adabf29', 0, 442, 'User', NULL, 'read', '2024-11-20 13:36:40', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de5eb6a0b00867', 0, 443, 'User', NULL, 'read', '2024-11-20 13:36:43', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de602cfd1fdd09', 0, 444, 'Task', NULL, 'read', '2024-11-20 13:37:06', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de607c86d46889', 0, 445, 'Task', NULL, 'read', '2024-11-20 13:37:11', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de60c8f82510cd', 0, 446, 'Task', NULL, 'delete', '2024-11-20 13:37:16', '::1', '673de43d77e198ffe', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de60df0aa9d48f', 0, 447, 'Task', NULL, 'read', '2024-11-20 13:37:17', '::1', '673de47d2f46d1040', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6118e58f4b25', 0, 448, 'Task', NULL, 'delete', '2024-11-20 13:37:21', '::1', '673de47d2f46d1040', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6134352abb47', 0, 449, 'Task', NULL, 'read', '2024-11-20 13:37:23', '::1', '673de4f680549467c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6168a6f872d0', 0, 450, 'Task', NULL, 'delete', '2024-11-20 13:37:26', '::1', '673de4f680549467c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de61985c4d286b', 0, 451, 'Task', NULL, 'read', '2024-11-20 13:37:29', '::1', '673de140a8d1352ba', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de61cd44a712c9', 0, 452, 'Task', NULL, 'delete', '2024-11-20 13:37:32', '::1', '673de140a8d1352ba', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de61e2f21e9966', 0, 453, 'Task', NULL, 'read', '2024-11-20 13:37:34', '::1', '673de52b35c8942be', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6214ae6d0146', 0, 454, 'Task', NULL, 'delete', '2024-11-20 13:37:37', '::1', '673de52b35c8942be', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de62602aeb6b9d', 0, 455, 'Task', NULL, 'read', '2024-11-20 13:37:42', '::1', '673de3b94c2bc034c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6298ea880c42', 0, 456, 'Task', NULL, 'delete', '2024-11-20 13:37:45', '::1', '673de3b94c2bc034c', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de636798403e30', 0, 457, 'User', NULL, 'read', '2024-11-20 13:37:58', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de64a11809c512', 0, 458, 'User', NULL, 'read', '2024-11-20 13:38:18', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de650659d116ab', 0, 459, 'User', NULL, 'read', '2024-11-20 13:38:24', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de65b2496984df', 0, 460, 'Task', NULL, 'create', '2024-11-20 13:38:35', '::1', '673de65b1d39bead5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6636893e71d4', 0, 461, 'User', NULL, 'read', '2024-11-20 13:38:43', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6651d88fdffe', 0, 462, 'User', NULL, 'read', '2024-11-20 13:38:45', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de66cc6df0e40f', 0, 463, 'User', NULL, 'read', '2024-11-20 13:38:52', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6781fdf89181', 0, 464, 'Task', NULL, 'read', '2024-11-20 13:39:04', '::1', '673de65b1d39bead5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de67bdc510502d', 0, 465, 'Task', NULL, 'delete', '2024-11-20 13:39:07', '::1', '673de65b1d39bead5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de67feb3e1f3f2', 0, 466, 'User', NULL, 'read', '2024-11-20 13:39:11', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6813b4427718', 0, 467, 'User', NULL, 'read', '2024-11-20 13:39:13', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6878be06c876', 0, 468, 'User', NULL, 'read', '2024-11-20 13:39:19', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de68e93a66bdb1', 0, 469, 'User', NULL, 'read', '2024-11-20 13:39:26', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de69701c8ee384', 0, 470, 'User', NULL, 'read', '2024-11-20 13:39:35', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6b99fccd3ae8', 0, 471, 'Task', NULL, 'create', '2024-11-20 13:40:09', '::1', '673de6b998392a1d5', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6be4fa902d68', 0, 472, 'User', NULL, 'read', '2024-11-20 13:40:14', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6c3d11e345ca', 0, 473, 'User', NULL, 'read', '2024-11-20 13:40:19', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6c8ec8d68c5e', 0, 474, 'User', NULL, 'read', '2024-11-20 13:40:24', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6d0b2eb44ae2', 0, 475, 'User', NULL, 'read', '2024-11-20 13:40:32', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6d31971b0e43', 0, 476, 'User', NULL, 'read', '2024-11-20 13:40:35', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de6f877d7f079b', 0, 477, 'User', NULL, 'read', '2024-11-20 13:41:12', '::1', '67384ffd5febe04b1', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de723435e49eb0', 0, 478, 'User', NULL, 'read', '2024-11-20 13:41:55', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de7287f96c7a28', 0, 479, 'User', NULL, 'read', '2024-11-20 13:42:00', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de739399fe13a8', 0, 480, 'User', NULL, 'update', '2024-11-20 13:42:17', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa92d94584dd8f', '671fa92d94ee6c289'),
('673de73d72e80b0d0', 0, 481, 'User', NULL, 'read', '2024-11-20 13:42:21', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673eeee03dfc39ba6', 0, 482, 'User', NULL, 'read', '2024-11-21 08:27:12', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef38fc3df499fa', 0, 483, 'User', NULL, 'read', '2024-11-21 08:47:11', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef3a14607ced14', 0, 484, 'User', NULL, 'read', '2024-11-21 08:47:29', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef4e666d819ab7', 0, 485, 'User', NULL, 'read', '2024-11-21 08:52:54', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef4ead78f4d4f1', 0, 486, 'User', NULL, 'read', '2024-11-21 08:52:58', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef4efbb347152e', 0, 487, 'User', NULL, 'read', '2024-11-21 08:53:03', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673ef9ed24eab2afe', 0, 488, 'Role', NULL, 'read', '2024-11-21 09:14:21', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673f0a2be5cccd7d2', 0, 489, 'Role', NULL, 'read', '2024-11-21 10:23:39', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673f0a3e42748ed2f', 0, 490, 'Role', NULL, 'read', '2024-11-21 10:23:58', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673f0a6253d0a86c4', 0, 491, 'Role', NULL, 'read', '2024-11-21 10:24:34', '::1', '6730c003e1e7741d6', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b'),
('673f111f992d080ad', 0, 492, 'User', NULL, 'read', '2024-11-21 10:53:19', '::1', '671fa89eeaf93e223', '671fa89eeaf93e223', '673de73cf0b5390cf', '673de73cf123cbc6b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address_country`
--

CREATE TABLE `address_country` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_preferred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_log_record`
--

CREATE TABLE `app_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `exception_class` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `request_method` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_resource_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `array_value`
--

CREATE TABLE `array_value` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attachment`
--

CREATE TABLE `attachment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_being_uploaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authentication_provider`
--

CREATE TABLE `authentication_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_token_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwks_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwt_signature_algorithm_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["RS256"]',
  `oidc_scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["profile","email","phone"]',
  `oidc_create_user` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_username_claim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sub',
  `oidc_sync` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_logout_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_log_record`
--

CREATE TABLE `auth_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `denial_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time` double DEFAULT NULL,
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_log_record`
--

INSERT INTO `auth_log_record` (`id`, `deleted`, `username`, `ip_address`, `created_at`, `is_denied`, `denial_reason`, `request_time`, `request_url`, `request_method`, `authentication_method`, `portal_id`, `user_id`, `auth_token_id`) VALUES
('671fa92d94ee6c289', 0, 'admin', '::1', '2024-10-28 15:09:33', 0, NULL, 1730128173.4404, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '671fa89eeaf93e223', '671fa92d94584dd8f'),
('6730c172d7101aef9', 0, 'duongcuong', '::1', '2024-11-10 14:21:38', 0, NULL, 1731248498.7628, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '6730c1576bf7c7966', '6730c172d675e68b4'),
('67385057a1c5acdb6', 0, 'hocvien', '::1', '2024-11-16 07:57:11', 0, NULL, 1731743831.3191, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '67384fbfacd709c07', '67385057a00c6cc9f'),
('6738508c149b29a36', 0, 'giaovien', '::1', '2024-11-16 07:58:04', 1, 'CREDENTIALS', 1731743883.9944, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, NULL, NULL),
('673850911a96a2add', 0, 'giaovien', '::1', '2024-11-16 07:58:09', 0, NULL, 1731743888.9981, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '67384ffd5febe04b1', '673850911a2ae63bb'),
('673de73cf123cbc6b', 0, 'admin', '::1', '2024-11-20 13:42:20', 0, NULL, 1732110140.8701, 'http://localhost/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '671fa89eeaf93e223', '673de73cf0b5390cf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_token`
--

CREATE TABLE `auth_token` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_access` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_token`
--

INSERT INTO `auth_token` (`id`, `deleted`, `token`, `hash`, `secret`, `ip_address`, `is_active`, `last_access`, `created_at`, `modified_at`, `user_id`, `portal_id`) VALUES
('671fa92d94584dd8f', 0, 'dedbb397a803b9101a5fb06f6de1cecb', 'i/l65EGlmotW8rJzscg0tAl5tgvUxxNvsKLW8DXQlTOskXtUGnPO09NbMNR3q6M3Fvka1CdfmFIgntSHW8UXw0', '5514ab34981d13b89b7ee4df18c06eaa', '::1', 1, '2024-11-20 13:42:17', '2024-10-28 15:09:33', '2024-11-20 13:42:17', '671fa89eeaf93e223', NULL),
('6730c172d675e68b4', 0, '01a2e476a66d3d22da7a76c451a9e084', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', '9d3761b219bfdb5ea29b7f866ba79b1e', '::1', 1, '2024-11-10 15:35:26', '2024-11-10 14:21:38', '2024-11-10 15:35:26', '6730c1576bf7c7966', NULL),
('67385057a00c6cc9f', 0, '8c2b6e8e1ee436a6b777e3014ef23bca', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', '8d0833e03c204183327d6f53f2019915', '::1', 1, '2024-11-20 05:41:49', '2024-11-16 07:57:11', '2024-11-20 05:41:49', '67384fbfacd709c07', NULL),
('673850911a2ae63bb', 0, 'a618c8e4477c4c4bc62eafd43397b0a3', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', '6df1cbb1ff7b0c85b5f58093ab69caf9', '::1', 1, '2024-11-20 05:41:49', '2024-11-16 07:58:09', '2024-11-20 05:41:49', '67384ffd5febe04b1', NULL),
('673de73cf0b5390cf', 0, '2e537321019cee0b9144097425d88477', 'rsvtaGD5S88p8MYVXrJGjQPeFuFsGqaOVcuegVVLrspqDA4Q/St2iHbCko6V/upm8JfQeHpRxWY0eF9Rkk2Qi1', 'd342548b3998c6eac9d3e50005317d7b', '::1', 1, '2024-11-21 13:45:00', '2024-11-20 13:42:20', '2024-11-21 13:45:00', '671fa89eeaf93e223', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `autofollow`
--

CREATE TABLE `autofollow` (
  `id` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `call`
--

CREATE TABLE `call` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Outbound',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `call_contact`
--

CREATE TABLE `call_contact` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `call_lead`
--

CREATE TABLE `call_lead` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `call_user`
--

CREATE TABLE `call_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign`
--

CREATE TABLE `campaign` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planning',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Email',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `mail_merge_only_with_address` tinyint(1) NOT NULL DEFAULT 1,
  `budget_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leads_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_log_record`
--

CREATE TABLE `campaign_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_additional_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Espo',
  `created_at` datetime DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_item_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_target_list`
--

CREATE TABLE `campaign_target_list` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_target_list_excluding`
--

CREATE TABLE `campaign_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_tracking_url`
--

CREATE TABLE `campaign_tracking_url` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Redirect',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `case`
--

CREATE TABLE `case` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `case_contact`
--

CREATE TABLE `case_contact` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `case_knowledge_base_article`
--

CREATE TABLE `case_knowledge_base_article` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_document`
--

CREATE TABLE `contact_document` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_meeting`
--

CREATE TABLE `contact_meeting` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_opportunity`
--

CREATE TABLE `contact_opportunity` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_target_list`
--

CREATE TABLE `contact_target_list` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `currency`
--

INSERT INTO `currency` (`id`, `rate`) VALUES
('VND', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_driving_course`
--

CREATE TABLE `c_driving_course` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idcard` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numbercard` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `sahinh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `duongtruong` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `xechip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `hour` double DEFAULT NULL,
  `km` double DEFAULT NULL,
  `totalhocphi` double DEFAULT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayhoanthanh` date DEFAULT NULL,
  `trangthai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'danghoc',
  `hangthi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A1',
  `tonghocphi_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tonghocphi` double DEFAULT NULL,
  `hocphidanap_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocphidanap` double DEFAULT NULL,
  `test` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `c_driving_course`
--

INSERT INTO `c_driving_course` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `idcard`, `numbercard`, `base`, `sahinh`, `duongtruong`, `xechip`, `hour`, `km`, `totalhocphi`, `ngaybatdau`, `ngayhoanthanh`, `trangthai`, `hangthi`, `tonghocphi_currency`, `tonghocphi`, `hocphidanap_currency`, `hocphidanap`, `test`) VALUES
('6738c278940b9515d', 'Dương Cường - A1', 0, NULL, '2024-11-16 16:04:08', '2024-11-20 12:48:43', '671fa89eeaf93e223', '671fa89eeaf93e223', '6730c1576bf7c7966', '090943', '3904390', 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', 3909090, 9848594, NULL, '2024-11-08', '2024-11-16', 'danghoc', 'A1', 'VND', 10000000, 'VND', 50300000, 50000000),
('673dc557c32b7d8fc', ' - A1', 1, NULL, '2024-11-20 11:17:43', '2024-11-20 11:17:58', '671fa89eeaf93e223', '671fa89eeaf93e223', NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, NULL, 'danghoc', 'A1', NULL, NULL, NULL, 0, NULL),
('673dc5a780d0a1a01', ' - A1', 1, NULL, '2024-11-20 11:19:03', '2024-11-20 11:19:11', '671fa89eeaf93e223', '671fa89eeaf93e223', NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, NULL, 'danghoc', 'A1', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_fee_payment`
--

CREATE TABLE `c_fee_payment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` double DEFAULT NULL,
  `money_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaynap` date DEFAULT NULL,
  `address` tinyint(1) NOT NULL DEFAULT 0,
  `driving_course_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_label` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_course1_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_payment_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `c_fee_payment`
--

INSERT INTO `c_fee_payment` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `money`, `money_currency`, `ngaynap`, `address`, `driving_course_id`, `custom_label`, `driving_course1_id`, `fee_payment_parent_id`, `test`) VALUES
('6738afc736bccaf72', NULL, 1, 'Đã nạp', '2024-11-16 14:44:23', '2024-11-20 11:08:21', '671fa89eeaf93e223', '671fa89eeaf93e223', '671fa89eeaf93e223', 10000000, 'VND', '2024-11-16', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('6739fbb2d2e76e2b9', NULL, 1, 'Hihi', '2024-11-17 14:20:34', '2024-11-20 11:08:37', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 12000000, 'VND', '2024-11-17', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673db33abb09c0401', NULL, 1, 'fsdf', '2024-11-20 10:00:26', '2024-11-20 11:11:31', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 100, 'VND', '2024-11-21', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673db3596234e0cc7', NULL, 1, 'fsdf', '2024-11-20 10:00:57', '2024-11-20 11:12:27', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 12200020, 'VND', '2024-11-21', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc37c0ed1908da', NULL, 1, NULL, '2024-11-20 11:09:48', '2024-11-20 11:11:16', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 40000000, 'VND', '2024-11-20', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc437cc3be3247', NULL, 1, 'sdfds', '2024-11-20 11:12:55', '2024-11-20 11:13:34', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 10000, 'VND', '2024-11-07', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc53d9a5974a65', NULL, 1, 'dsfsd', '2024-11-20 11:17:17', '2024-11-20 11:17:43', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 100000, 'VND', '2024-11-13', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc59e36d5191c3', NULL, 1, 'sdfds', '2024-11-20 11:18:54', '2024-11-20 11:19:03', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 2000000, 'VND', '2024-11-06', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc5df7cc0c958a', NULL, 1, 'sdf', '2024-11-20 11:19:59', '2024-11-20 11:20:06', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 20000, 'VND', '2024-11-14', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc61b5c0421f70', NULL, 1, 'dá', '2024-11-20 11:20:59', '2024-11-20 11:21:11', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 2000, 'VND', '2024-11-08', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc6f0236b7a63a', NULL, 1, 'dsfd', '2024-11-20 11:24:32', '2024-11-20 12:42:52', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 1000000, 'VND', '2024-11-07', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc718172fa26b2', NULL, 1, 'dsfd', '2024-11-20 11:25:12', '2024-11-20 12:43:25', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 1000000, 'VND', '2024-11-07', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dc72a8d340f669', NULL, 1, 'sdf', '2024-11-20 11:25:30', '2024-11-20 11:27:50', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 20000, 'VND', '2024-11-01', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dd985cc34af475', NULL, 1, NULL, '2024-11-20 12:43:49', '2024-11-20 12:46:06', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 200, 'VND', '2024-11-20', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dd999810e563f5', NULL, 1, 'sdfds', '2024-11-20 12:44:09', '2024-11-20 12:46:40', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 30000, 'VND', '2024-11-21', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dd9af30578af08', NULL, 1, 'sdfdsfds', '2024-11-20 12:44:31', '2024-11-20 12:44:51', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 2000, 'VND', '2024-11-19', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dda4c8f9057ffc', NULL, 1, 'sdfds', '2024-11-20 12:47:08', '2024-11-20 12:48:21', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 200000, 'VND', '2024-11-21', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673dda5fd1825bfdf', NULL, 0, 'sdfdsfd', '2024-11-20 12:47:27', '2024-11-20 12:47:43', '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', 50000000, 'VND', '2024-11-21', 0, '6738c278940b9515d', NULL, NULL, NULL, NULL),
('673ddaaba809b4c28', NULL, 0, NULL, '2024-11-20 12:48:43', '2024-11-20 12:48:43', '671fa89eeaf93e223', NULL, '67384ffd5febe04b1', 300000, 'VND', '2024-11-20', 1, '6738c278940b9515d', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_template`
--

CREATE TABLE `dashboard_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_folder`
--

CREATE TABLE `document_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_folder_path`
--

CREATE TABLE `document_folder_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_lead`
--

CREATE TABLE `document_lead` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_opportunity`
--

CREATE TABLE `document_opportunity` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_name_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id_internal` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `ics_contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ics_event_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_account`
--

CREATE TABLE `email_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `connected_at` datetime DEFAULT NULL,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_address`
--

CREATE TABLE `email_address` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `lower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email_address`
--

INSERT INTO `email_address` (`id`, `name`, `deleted`, `lower`, `invalid`, `opt_out`) VALUES
('6730c1576f9ad6e75', 'duongdinhcuong.20121992@gmail.com', 0, 'duongdinhcuong.20121992@gmail.com', 0, 0),
('6730d29504c43b3c7', 'aaa@gmail.com', 0, 'aaa@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_email_account`
--

CREATE TABLE `email_email_account` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_email_address`
--

CREATE TABLE `email_email_address` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_filter`
--

CREATE TABLE `email_filter` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains_all` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Skip',
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_folder`
--

CREATE TABLE `email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `skip_notifications` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_inbound_email`
--

CREATE TABLE `email_inbound_email` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_queue_item`
--

CREATE TABLE `email_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_template`
--

CREATE TABLE `email_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `one_off` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `deleted`, `subject`, `body`, `is_html`, `one_off`, `created_at`, `modified_at`, `category_id`, `assigned_user_id`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('671fa9240239daaa5', 'Case-to-Email auto-reply', 0, 'Case has been created', '<p>{Person.name},</p><p>Case \'{Case.name}\' has been created with number {Case.number} and assigned to {User.name}.</p>', 1, 0, '2024-10-28 15:09:24', '2024-10-28 15:09:24', NULL, NULL, 'system', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_template_category`
--

CREATE TABLE `email_template_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_template_category_path`
--

CREATE TABLE `email_template_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_user`
--

CREATE TABLE `email_user` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_important` tinyint(1) DEFAULT 0,
  `in_trash` tinyint(1) DEFAULT 0,
  `in_archive` tinyint(1) DEFAULT 0,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `entity_email_address`
--

CREATE TABLE `entity_email_address` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `entity_email_address`
--

INSERT INTO `entity_email_address` (`id`, `entity_id`, `email_address_id`, `entity_type`, `primary`, `deleted`) VALUES
(1, '6730c1576bf7c7966', '6730c1576f9ad6e75', 'User', 1, 0),
(2, '6730d295012f41ae6', '6730d29504c43b3c7', 'Lead', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `entity_phone_number`
--

CREATE TABLE `entity_phone_number` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `entity_phone_number`
--

INSERT INTO `entity_phone_number` (`id`, `entity_id`, `phone_number_id`, `entity_type`, `primary`, `deleted`) VALUES
(1, '6730c1576bf7c7966', '6730c157706791aa6', 'User', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `entity_team`
--

CREATE TABLE `entity_team` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `entity_user`
--

CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `export`
--

CREATE TABLE `export` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `extension`
--

CREATE TABLE `extension` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `check_version_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `external_account`
--

CREATE TABLE `external_account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_email_folder`
--

CREATE TABLE `group_email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_email_folder_team`
--

CREATE TABLE `group_email_folder_team` (
  `id` bigint(20) NOT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import`
--

CREATE TABLE `import` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_index` int(11) DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_entity`
--

CREATE TABLE `import_entity` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_imported` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `is_duplicate` tinyint(1) NOT NULL DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_error`
--

CREATE TABLE `import_error` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `row_index` int(11) DEFAULT NULL,
  `export_row_index` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_failures` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_all_team_users` tinyint(1) NOT NULL DEFAULT 1,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `connected_at` datetime DEFAULT NULL,
  `exclude_from_reply` tinyint(1) NOT NULL DEFAULT 0,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_shared` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_for_mass_email` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `create_case` tinyint(1) NOT NULL DEFAULT 0,
  `case_distribution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Direct-Assignment',
  `target_user_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assign_to_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inbound_email_team`
--

CREATE TABLE `inbound_email_team` (
  `id` bigint(20) NOT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `integration`
--

CREATE TABLE `integration` (
  `id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job`
--

CREATE TABLE `job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `execute_time` datetime DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `target_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `job`
--

INSERT INTO `job` (`id`, `name`, `deleted`, `status`, `execute_time`, `number`, `class_name`, `service_name`, `method_name`, `job`, `data`, `queue`, `group`, `target_group`, `started_at`, `executed_at`, `pid`, `attempts`, `target_id`, `target_type`, `failed_attempts`, `created_at`, `modified_at`, `scheduled_job_id`) VALUES
('671fa9240dcb51ea7', 'Dummy', 0, 'Pending', '2024-10-28 15:09:24', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', '671fa8971f266dfef');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kanban_order`
--

CREATE TABLE `kanban_order` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `knowledge_base_article`
--

CREATE TABLE `knowledge_base_article` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Article',
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `knowledge_base_article_knowledge_base_category`
--

CREATE TABLE `knowledge_base_article_knowledge_base_category` (
  `id` bigint(20) NOT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `knowledge_base_article_portal`
--

CREATE TABLE `knowledge_base_article_portal` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `knowledge_base_category`
--

CREATE TABLE `knowledge_base_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `knowledge_base_category_path`
--

CREATE TABLE `knowledge_base_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `layout_record`
--

CREATE TABLE `layout_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `layout_set`
--

CREATE TABLE `layout_set` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lead`
--

CREATE TABLE `lead` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount` double DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lead`
--

INSERT INTO `lead` (`id`, `deleted`, `salutation_name`, `first_name`, `last_name`, `title`, `status`, `source`, `industry`, `opportunity_amount`, `website`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postal_code`, `do_not_call`, `description`, `converted_at`, `created_at`, `modified_at`, `account_name`, `middle_name`, `opportunity_amount_currency`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `campaign_id`, `created_account_id`, `created_contact_id`, `created_opportunity_id`) VALUES
('6730d295012f41ae6', 0, 'Mr.', 'K', 'H', 'Khách hàng tiềm năng 1 này', 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-11-10 15:34:45', '2024-11-10 15:34:45', 'Trần Vân', NULL, NULL, '671fa89eeaf93e223', NULL, '6730c1576bf7c7966', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lead_capture`
--

CREATE TABLE `lead_capture` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_contact_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `field_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["firstName","lastName","emailAddress"]',
  `duplicate_check` tinyint(1) NOT NULL DEFAULT 1,
  `opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `opt_in_confirmation_lifetime` int(11) DEFAULT 48,
  `opt_in_confirmation_success_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_lead_before_opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `skip_opt_in_confirmation_if_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Web Site',
  `api_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_in_confirmation_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lead_capture_log_record`
--

CREATE TABLE `lead_capture_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `lead_capture_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lead_meeting`
--

CREATE TABLE `lead_meeting` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lead_target_list`
--

CREATE TABLE `lead_target_list` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mass_action`
--

CREATE TABLE `mass_action` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mass_email`
--

CREATE TABLE `mass_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out_entirely` tinyint(1) NOT NULL DEFAULT 0,
  `from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mass_email_target_list`
--

CREATE TABLE `mass_email_target_list` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mass_email_target_list_excluding`
--

CREATE TABLE `mass_email_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meeting`
--

CREATE TABLE `meeting` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `meeting`
--

INSERT INTO `meeting` (`id`, `name`, `deleted`, `status`, `date_start`, `date_end`, `is_all_day`, `description`, `created_at`, `modified_at`, `date_start_date`, `date_end_date`, `parent_id`, `parent_type`, `account_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('673de5e2c05c03448', 'Meeting', 0, 'Planned', '2024-11-20 13:55:00', '2024-11-20 14:55:00', 0, NULL, '2024-11-20 13:36:34', '2024-11-20 13:36:34', NULL, NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, '67384ffd5febe04b1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `meeting_user`
--

INSERT INTO `meeting_user` (`id`, `user_id`, `meeting_id`, `status`, `deleted`) VALUES
(1, '67384ffd5febe04b1', '673de5e2c05c03448', 'None', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `next_number`
--

CREATE TABLE `next_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note`
--

CREATE TABLE `note` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `post` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Post',
  `target_type` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `note`
--

INSERT INTO `note` (`id`, `deleted`, `post`, `data`, `type`, `target_type`, `number`, `is_global`, `is_internal`, `is_pinned`, `created_at`, `modified_at`, `parent_id`, `parent_type`, `related_id`, `related_type`, `created_by_id`, `modified_by_id`, `super_parent_id`, `super_parent_type`) VALUES
('67225ddf0c034f7a2', 0, NULL, '{}', 'Create', NULL, 1, 0, 0, 0, '2024-10-30 16:25:03', '2024-10-30 16:25:03', '67225ddf04fdaa8d2', 'Account', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('67225df099b2a2b6b', 0, NULL, '{\"statusValue\":\"Prospecting\",\"statusField\":\"stage\",\"statusStyle\":\"default\"}', 'Create', NULL, 2, 0, 0, 0, '2024-10-30 16:25:20', '2024-10-30 16:25:20', '67225df0967d53cd4', 'Opportunity', NULL, NULL, '671fa89eeaf93e223', NULL, '67225ddf04fdaa8d2', 'Account'),
('6730c1f18c68cb5c0', 0, NULL, '{\"fields\":[\"data\"],\"attributes\":{\"was\":{\"data\":{}},\"became\":{\"data\":{\"Lead\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"},\"Meeting\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"},\"Opportunity\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"}}}}}', 'Update', NULL, 3, 0, 0, 0, '2024-11-10 14:23:45', '2024-11-10 14:23:45', '6730c09a3aad83401', 'Role', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('6730d29508e8a32f8', 0, NULL, '{\"assignedUserId\":\"6730c1576bf7c7966\",\"assignedUserName\":\"Dương Cường\",\"statusValue\":\"New\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 4, 0, 0, 0, '2024-11-10 15:34:45', '2024-11-10 15:34:45', '6730d295012f41ae6', 'Lead', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('67384fd3b0834f522', 0, NULL, '{\"fields\":[\"roles\"],\"attributes\":{\"was\":{\"rolesIds\":[],\"rolesNames\":{}},\"became\":{\"rolesIds\":[\"6730c0bf199d86e10\"],\"rolesNames\":{\"6730c0bf199d86e10\":\"Học viên\"}}}}', 'Update', NULL, 5, 0, 0, 0, '2024-11-16 07:54:59', '2024-11-16 07:54:59', '67384fbfacd709c07', 'User', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673b566da262b29cc', 0, NULL, '{\"assignedUserId\":\"671fa89eeaf93e223\",\"assignedUserName\":\"Admin\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 6, 0, 0, 0, '2024-11-18 14:59:57', '2024-11-18 14:59:57', '673b566d99f89ac22', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de140af74cbf54', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 7, 0, 0, 0, '2024-11-20 13:16:48', '2024-11-20 13:16:48', '673de140a8d1352ba', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de3b950210739a', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 8, 0, 0, 0, '2024-11-20 13:27:21', '2024-11-20 13:27:21', '673de3b94c2bc034c', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de43d7bb3d777b', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 9, 0, 0, 0, '2024-11-20 13:29:33', '2024-11-20 13:29:33', '673de43d77e198ffe', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de47d32aec70e8', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Started\",\"statusField\":\"status\",\"statusStyle\":\"primary\"}', 'Create', NULL, 10, 0, 0, 0, '2024-11-20 13:30:37', '2024-11-20 13:30:37', '673de47d2f46d1040', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de4f683ad1b51d', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 11, 0, 0, 0, '2024-11-20 13:32:38', '2024-11-20 13:32:38', '673de4f680549467c', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de52b398df82dc', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 12, 0, 0, 0, '2024-11-20 13:33:31', '2024-11-20 13:33:31', '673de52b35c8942be', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de5e2c5fffef4b', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Planned\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 13, 0, 0, 0, '2024-11-20 13:36:34', '2024-11-20 13:36:34', '673de5e2c05c03448', 'Meeting', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de65b20c013c4c', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 14, 0, 0, 0, '2024-11-20 13:38:35', '2024-11-20 13:38:35', '673de65b1d39bead5', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL),
('673de6b99c12fa2ca', 0, NULL, '{\"assignedUserId\":\"67384ffd5febe04b1\",\"assignedUserName\":\"Giáo Viên 1\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 15, 0, 0, 0, '2024-11-20 13:40:09', '2024-11-20 13:40:09', '673de6b998392a1d5', 'Task', NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_portal`
--

CREATE TABLE `note_portal` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_team`
--

CREATE TABLE `note_team` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_user`
--

CREATE TABLE `note_user` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `email_is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `deleted`, `number`, `data`, `type`, `read`, `email_is_processed`, `created_at`, `message`, `user_id`, `related_id`, `related_type`, `related_parent_id`, `related_parent_type`) VALUES
('6730d2950cf876632', 0, 1, '{\"noteId\":\"6730d29508e8a32f8\"}', 'Note', 0, 0, '2024-11-10 15:34:45', NULL, '6730c1576bf7c7966', '6730d29508e8a32f8', 'Note', '6730d295012f41ae6', 'Lead');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunity`
--

CREATE TABLE `opportunity` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `amount` double DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Prospecting',
  `last_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `opportunity`
--

INSERT INTO `opportunity` (`id`, `name`, `deleted`, `amount`, `stage`, `last_stage`, `probability`, `lead_source`, `close_date`, `description`, `created_at`, `modified_at`, `amount_currency`, `account_id`, `contact_id`, `campaign_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('67225df0967d53cd4', 'bcc', 0, 123, 'Prospecting', 'Prospecting', 10, NULL, '2024-10-30', NULL, '2024-10-30 16:25:20', '2024-10-30 16:25:20', 'USD', '67225ddf04fdaa8d2', NULL, NULL, '671fa89eeaf93e223', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_change_request`
--

CREATE TABLE `password_change_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_number`
--

CREATE TABLE `phone_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phone_number`
--

INSERT INTO `phone_number` (`id`, `name`, `deleted`, `type`, `numeric`, `invalid`, `opt_out`) VALUES
('6730c157706791aa6', '+84392845572', 0, 'Mobile', '84392845572', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal`
--

CREATE TABLE `portal` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tab_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_create_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` int(11) DEFAULT -1,
  `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_lifetime` double DEFAULT NULL,
  `auth_token_max_idle_time` double DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal_portal_role`
--

CREATE TABLE `portal_portal_role` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal_role`
--

CREATE TABLE `portal_role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal_role_user`
--

CREATE TABLE `portal_role_user` (
  `id` bigint(20) NOT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal_user`
--

CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `preferences`
--

CREATE TABLE `preferences` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `preferences`
--

INSERT INTO `preferences` (`id`, `data`) VALUES
('671fa89eeaf93e223', '{\n    \"id\": \"671fa89eeaf93e223\",\n    \"timeZone\": null,\n    \"dateFormat\": null,\n    \"timeFormat\": null,\n    \"weekStart\": -1,\n    \"defaultCurrency\": null,\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": \"2\",\n                    \"width\": 2,\n                    \"height\": \"4\"\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": \"0\",\n                    \"width\": 2,\n                    \"height\": \"4\"\n                },\n                {\n                    \"id\": \"d387113\",\n                    \"name\": \"Calendar\",\n                    \"x\": 0,\n                    \"y\": \"0\",\n                    \"width\": 2,\n                    \"height\": \"2\"\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"dashboardLocked\": false,\n    \"language\": \"en_GB\",\n    \"exportDelimiter\": \",\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"assignmentNotificationsIgnoreEntityTypeList\": [],\n    \"signature\": null,\n    \"defaultReminders\": [],\n    \"defaultRemindersTask\": [],\n    \"theme\": null,\n    \"themeParams\": {},\n    \"useCustomTabList\": false,\n    \"addCustomTabs\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": true,\n    \"doNotFillAssignedUserIfNotRequired\": true,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false,\n    \"followCreatedEntityTypeList\": [],\n    \"emailUseExternalClient\": false,\n    \"scopeColorsDisabled\": false,\n    \"tabColorsDisabled\": false,\n    \"textSearchStoringDisabled\": false,\n    \"calendarSlotDuration\": null,\n    \"calendarScrollHour\": null\n}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminder`
--

CREATE TABLE `reminder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `remind_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Popup',
  `seconds` int(11) DEFAULT 0,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `message_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `follower_management_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `audit_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mention_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `deleted`, `assignment_permission`, `user_permission`, `message_permission`, `portal_permission`, `group_email_account_permission`, `export_permission`, `mass_update_permission`, `data_privacy_permission`, `follower_management_permission`, `audit_permission`, `mention_permission`, `data`, `field_data`, `created_at`, `modified_at`) VALUES
('6730bfb5a1a304c35', 'Admin', 0, 'all', 'all', 'all', 'yes', 'all', 'yes', 'yes', 'yes', 'all', 'yes', 'all', '{}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetList\":{},\"Task\":{},\"CHocvien\":{}}', '2024-11-10 14:14:13', '2024-11-10 14:14:13'),
('6730c003e1e7741d6', 'Giáo viên', 0, 'all', 'all', 'all', 'yes', 'all', 'yes', 'yes', 'yes', 'all', 'yes', 'all', '{}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetList\":{},\"Task\":{},\"CHocvien\":{}}', '2024-11-10 14:15:31', '2024-11-10 14:15:31'),
('6730c09a3aad83401', 'Sale', 0, 'all', 'all', 'all', 'yes', 'all', 'yes', 'yes', 'yes', 'all', 'yes', 'all', '{\"Lead\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"},\"Meeting\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"},\"Opportunity\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\",\"stream\":\"own\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetList\":{},\"Task\":{},\"CHocvien\":{}}', '2024-11-10 14:18:02', '2024-11-10 14:23:45'),
('6730c0bf199d86e10', 'Học viên', 0, 'all', 'all', 'all', 'yes', 'all', 'yes', 'yes', 'yes', 'all', 'yes', 'all', '{}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetList\":{},\"Task\":{},\"CHocvien\":{}}', '2024-11-10 14:18:39', '2024-11-10 14:18:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_team`
--

CREATE TABLE `role_team` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `deleted`) VALUES
(1, '6730c09a3aad83401', '6730c1576bf7c7966', 0),
(2, '6730c0bf199d86e10', '67384fbfacd709c07', 0),
(3, '6730c003e1e7741d6', '67384ffd5febe04b1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scheduled_job`
--

CREATE TABLE `scheduled_job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `scheduling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `scheduled_job`
--

INSERT INTO `scheduled_job` (`id`, `name`, `deleted`, `job`, `status`, `scheduling`, `last_run`, `created_at`, `modified_at`, `is_internal`, `created_by_id`, `modified_by_id`) VALUES
('671fa8971cf4d0d5a', 'Submit Popup Reminders', 0, 'SubmitPopupReminders', 'Active', '* * * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971dab1c9c9', 'Process Job Group', 0, 'ProcessJobGroup', 'Active', '* * * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971e29a02e7', 'Process Job Queue q0', 0, 'ProcessJobQueueQ0', 'Active', '* * * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971e80cecbf', 'Process Job Queue q1', 0, 'ProcessJobQueueQ1', 'Active', '*/1 * * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971ed223500', 'Process Job Queue e0', 0, 'ProcessJobQueueE0', 'Active', '* * * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971f266dfef', 'Dummy', 0, 'Dummy', 'Active', '1 */12 * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971f797b587', 'Check for New Version', 0, 'CheckNewVersion', 'Active', '15 5 * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa8971fdc2b485', 'Check for New Versions of Installed Extensions', 0, 'CheckNewExtensionVersion', 'Active', '25 5 * * *', NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', 1, NULL, NULL),
('671fa92409c2cf9fe', 'Check Group Email Accounts', 0, 'CheckInboundEmails', 'Active', '*/2 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240a7af9fc1', 'Check Personal Email Accounts', 0, 'CheckEmailAccounts', 'Active', '*/1 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240ad88c307', 'Send Email Reminders', 0, 'SendEmailReminders', 'Active', '*/2 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240b8b10fa4', 'Send Email Notifications', 0, 'SendEmailNotifications', 'Active', '*/2 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240bede1dcf', 'Clean-up', 0, 'Cleanup', 'Active', '1 1 * * 0', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240c48883fb', 'Send Mass Emails', 0, 'ProcessMassEmail', 'Active', '10,30,50 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240caa4ef0d', 'Auth Token Control', 0, 'AuthTokenControl', 'Active', '*/6 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240d02d44ed', 'Control Knowledge Base Article Status', 0, 'ControlKnowledgeBaseArticleStatus', 'Active', '10 1 * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL),
('671fa9240d6223e66', 'Process Webhook Queue', 0, 'ProcessWebhookQueue', 'Active', '*/2 * * * *', NULL, '2024-10-28 15:09:24', '2024-10-28 15:09:24', 0, 'system', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scheduled_job_log_record`
--

CREATE TABLE `scheduled_job_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sms`
--

CREATE TABLE `sms` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `date_sent` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `from_phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sms_phone_number`
--

CREATE TABLE `sms_phone_number` (
  `id` bigint(20) NOT NULL,
  `sms_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star_subscription`
--

CREATE TABLE `star_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stream_subscription`
--

CREATE TABLE `stream_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `stream_subscription`
--

INSERT INTO `stream_subscription` (`id`, `deleted`, `entity_id`, `entity_type`, `user_id`) VALUES
(1, 0, '6730d295012f41ae6', 'Lead', '6730c1576bf7c7966'),
(2, 0, '673b566d99f89ac22', 'Task', '671fa89eeaf93e223');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_data`
--

CREATE TABLE `system_data` (
  `id` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `last_password_recovery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_data`
--

INSERT INTO `system_data` (`id`, `deleted`, `last_password_recovery_date`) VALUES
('1', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `target`
--

CREATE TABLE `target` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `target_list`
--

CREATE TABLE `target_list` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `target_list_user`
--

CREATE TABLE `target_list_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task`
--

CREATE TABLE `task` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Not Started',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `task`
--

INSERT INTO `task` (`id`, `name`, `deleted`, `status`, `priority`, `date_start`, `date_end`, `date_start_date`, `date_end_date`, `date_completed`, `description`, `created_at`, `modified_at`, `parent_id`, `parent_type`, `account_id`, `contact_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `email_id`) VALUES
('673b566d99f89ac22', 'Đi dạy ca 1', 0, 'Not Started', 'Normal', '2024-11-18 14:00:00', '2024-11-19 14:00:00', NULL, NULL, NULL, NULL, '2024-11-18 14:59:57', '2024-11-18 14:59:57', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, '671fa89eeaf93e223', NULL),
('673de140a8d1352ba', 'Đi dạy ca 3', 1, 'Not Started', 'Normal', '2024-11-20 17:39:00', '2024-11-20 18:39:00', NULL, NULL, NULL, NULL, '2024-11-20 13:16:48', '2024-11-20 13:37:32', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de3b94c2bc034c', 'Đi dạy', 1, 'Not Started', 'Normal', '2024-11-22 09:55:00', '2024-11-22 10:55:00', NULL, NULL, NULL, NULL, '2024-11-20 13:27:21', '2024-11-20 13:37:45', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de43d77e198ffe', 'Đi dạy', 1, 'Not Started', 'Normal', '2024-11-20 14:05:00', '2024-11-20 15:05:00', NULL, NULL, NULL, NULL, '2024-11-20 13:29:33', '2024-11-20 13:37:16', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de47d2f46d1040', 'Đi làm', 1, 'Started', 'High', '2024-11-20 13:50:00', '2024-11-20 14:50:00', NULL, NULL, NULL, NULL, '2024-11-20 13:30:37', '2024-11-20 13:37:21', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de4f680549467c', 'Đi dạy', 1, 'Not Started', 'Normal', '2024-11-20 13:37:00', '2024-11-20 14:37:00', NULL, NULL, NULL, NULL, '2024-11-20 13:32:38', '2024-11-20 13:37:26', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de52b35c8942be', 'Đi dạy nha bạn', 1, 'Not Started', 'Normal', '2024-11-20 16:15:00', '2024-11-20 17:15:00', NULL, NULL, NULL, NULL, '2024-11-20 13:33:31', '2024-11-20 13:37:37', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de65b1d39bead5', 'Đi làm', 1, 'Not Started', 'Normal', '2024-11-20 15:37:00', '2024-11-20 16:37:00', NULL, NULL, NULL, NULL, '2024-11-20 13:38:35', '2024-11-20 13:39:07', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', '671fa89eeaf93e223', '67384ffd5febe04b1', NULL),
('673de6b998392a1d5', 'Hhihih', 0, 'Not Started', 'Normal', '2024-11-20 17:00:00', '2024-11-20 18:00:00', NULL, NULL, NULL, NULL, '2024-11-20 13:40:09', '2024-11-20 13:40:09', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, '67384ffd5febe04b1', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team`
--

CREATE TABLE `team` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `position_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) NOT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `template`
--

CREATE TABLE `template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_margin` double DEFAULT 10,
  `right_margin` double DEFAULT 10,
  `top_margin` double DEFAULT 10,
  `bottom_margin` double DEFAULT 20,
  `print_footer` tinyint(1) NOT NULL DEFAULT 0,
  `print_header` tinyint(1) NOT NULL DEFAULT 0,
  `footer_position` double DEFAULT 10,
  `header_position` double DEFAULT 0,
  `style` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `page_orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Portrait',
  `page_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A4',
  `page_width` double DEFAULT NULL,
  `page_height` double DEFAULT NULL,
  `font_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `two_factor_code`
--

CREATE TABLE `two_factor_code` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts_left` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `unique_id`
--

CREATE TABLE `unique_id` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `terminate_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_method` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_cmt` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_nationalid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_vehicleclass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A1',
  `c_gplx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_numbergcn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_idcart` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_numbercard` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_base` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `c_sahinh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `c_duongtruong` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `c_xechip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'chuahoc',
  `c_hour` double DEFAULT NULL,
  `c_km` double DEFAULT NULL,
  `c_giaovienhuongdan_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_nguoithu_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hangtaphuan` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `deleted`, `user_name`, `type`, `password`, `auth_method`, `api_key`, `salutation_name`, `first_name`, `last_name`, `is_active`, `title`, `avatar_color`, `gender`, `created_at`, `modified_at`, `delete_id`, `middle_name`, `default_team_id`, `contact_id`, `avatar_id`, `created_by_id`, `dashboard_template_id`, `working_time_calendar_id`, `layout_set_id`, `c_cmt`, `c_nationalid`, `c_address`, `c_vehicleclass`, `c_gplx`, `c_numbergcn`, `c_idcart`, `c_numbercard`, `c_base`, `c_sahinh`, `c_duongtruong`, `c_xechip`, `c_hour`, `c_km`, `c_giaovienhuongdan_id`, `c_nguoithu_id`, `c_hangtaphuan`) VALUES
('671fa89eeaf93e223', 0, 'admin', 'admin', 'rsvtaGD5S88p8MYVXrJGjQPeFuFsGqaOVcuegVVLrspqDA4Q/St2iHbCko6V/upm8JfQeHpRxWY0eF9Rkk2Qi1', NULL, NULL, NULL, NULL, 'Admin', 1, NULL, NULL, NULL, '2024-10-28 15:07:10', '2024-11-20 13:42:17', '0', NULL, NULL, NULL, NULL, 'system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, '[]'),
('6730c1576bf7c7966', 0, 'duongcuong', 'regular', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', NULL, NULL, 'Mr.', 'Dương', 'Cường', 1, 'Quản lý Sale', NULL, 'Male', '2024-11-10 14:21:11', '2024-11-10 14:21:11', '0', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, '[]'),
('67384fbfacd709c07', 0, 'hocvien', 'regular', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', NULL, NULL, 'Mr.', 'Học', 'Viên 1', 1, NULL, NULL, NULL, '2024-11-16 07:54:39', '2024-11-16 07:54:59', '0', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL, NULL, NULL, NULL, 'A1', NULL, NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, '[]'),
('67384ffd5febe04b1', 0, 'giaovien', 'regular', '1Vm8.qaHr.IYW0cDCdvBan.czejXElIUDhfuNkPoj5fDc/UFjN/oxf.Msoz9NxNOAcQ0YwDFr0EUJdD1Dhah0.', NULL, NULL, 'Mr.', 'Giáo', 'Viên 1', 1, NULL, NULL, NULL, '2024-11-16 07:55:41', '2024-11-16 07:55:41', '0', NULL, NULL, NULL, NULL, '671fa89eeaf93e223', NULL, NULL, NULL, NULL, NULL, NULL, 'A1', NULL, NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, '[]'),
('system', 0, 'system', 'system', NULL, NULL, NULL, NULL, NULL, 'System', 1, NULL, NULL, NULL, '2024-10-28 15:07:03', '2024-10-28 15:07:03', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chuahoc', 'chuahoc', 'chuahoc', 'chuahoc', NULL, NULL, NULL, NULL, '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_data`
--

CREATE TABLE `user_data` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `imap_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a` tinyint(1) NOT NULL DEFAULT 0,
  `auth2_f_a_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_totp_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_working_time_range`
--

CREATE TABLE `user_working_time_range` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webhook`
--

CREATE TABLE `webhook` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webhook_event_queue_item`
--

CREATE TABLE `webhook_event_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webhook_queue_item`
--

CREATE TABLE `webhook_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `processed_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT 0,
  `process_at` datetime DEFAULT NULL,
  `webhook_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `working_time_calendar`
--

CREATE TABLE `working_time_calendar` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[["9:00","17:00"]]',
  `weekday0` tinyint(1) NOT NULL DEFAULT 0,
  `weekday1` tinyint(1) NOT NULL DEFAULT 1,
  `weekday2` tinyint(1) NOT NULL DEFAULT 1,
  `weekday3` tinyint(1) NOT NULL DEFAULT 1,
  `weekday4` tinyint(1) NOT NULL DEFAULT 1,
  `weekday5` tinyint(1) NOT NULL DEFAULT 1,
  `weekday6` tinyint(1) NOT NULL DEFAULT 0,
  `weekday0_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday1_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday2_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday3_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday4_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday5_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday6_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `working_time_calendar_working_time_range`
--

CREATE TABLE `working_time_calendar_working_time_range` (
  `id` bigint(20) NOT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `working_time_range`
--

CREATE TABLE `working_time_range` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Non-working',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `account_contact`
--
ALTER TABLE `account_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_CONTACT_ID` (`account_id`,`contact_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Chỉ mục cho bảng `account_document`
--
ALTER TABLE `account_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_DOCUMENT_ID` (`account_id`,`document_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Chỉ mục cho bảng `account_portal_user`
--
ALTER TABLE `account_portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_ACCOUNT_ID` (`user_id`,`account_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);

--
-- Chỉ mục cho bảng `account_target_list`
--
ALTER TABLE `account_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_TARGET_LIST_ID` (`account_id`,`target_list_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `action_history_record`
--
ALTER TABLE `action_history_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_type`,`target_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
  ADD KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`);

--
-- Chỉ mục cho bảng `address_country`
--
ALTER TABLE `address_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NAME` (`name`);

--
-- Chỉ mục cho bảng `app_log_record`
--
ALTER TABLE `app_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEVEL` (`level`);

--
-- Chỉ mục cho bảng `array_value`
--
ALTER TABLE `array_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
  ADD KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Chỉ mục cho bảng `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_type`,`parent_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_SOURCE` (`source_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `authentication_provider`
--
ALTER TABLE `authentication_provider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `auth_log_record`
--
ALTER TABLE `auth_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_IP_ADDRESS` (`ip_address`),
  ADD KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
  ADD KEY `IDX_REQUEST_TIME` (`request_time`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`);

--
-- Chỉ mục cho bảng `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TOKEN` (`token`,`deleted`),
  ADD KEY `IDX_HASH` (`hash`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Chỉ mục cho bảng `autofollow`
--
ALTER TABLE `autofollow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Chỉ mục cho bảng `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `call_contact`
--
ALTER TABLE `call_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_CONTACT_ID` (`call_id`,`contact_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Chỉ mục cho bảng `call_lead`
--
ALTER TABLE `call_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_LEAD_ID` (`call_id`,`lead_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Chỉ mục cho bảng `call_user`
--
ALTER TABLE `call_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_CALL_ID` (`user_id`,`call_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`);

--
-- Chỉ mục cho bảng `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CONTACTS_TEMPLATE_ID` (`contacts_template_id`),
  ADD KEY `IDX_LEADS_TEMPLATE_ID` (`leads_template_id`),
  ADD KEY `IDX_ACCOUNTS_TEMPLATE_ID` (`accounts_template_id`),
  ADD KEY `IDX_USERS_TEMPLATE_ID` (`users_template_id`);

--
-- Chỉ mục cho bảng `campaign_log_record`
--
ALTER TABLE `campaign_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACTION_DATE` (`action_date`,`deleted`),
  ADD KEY `IDX_ACTION` (`action`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_OBJECT` (`object_id`,`object_type`),
  ADD KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`);

--
-- Chỉ mục cho bảng `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `campaign_tracking_url`
--
ALTER TABLE `campaign_tracking_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `case_contact`
--
ALTER TABLE `case_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_CONTACT_ID` (`case_id`,`contact_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Chỉ mục cho bảng `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`case_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `contact_document`
--
ALTER TABLE `contact_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_DOCUMENT_ID` (`contact_id`,`document_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Chỉ mục cho bảng `contact_meeting`
--
ALTER TABLE `contact_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_MEETING_ID` (`contact_id`,`meeting_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Chỉ mục cho bảng `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_OPPORTUNITY_ID` (`contact_id`,`opportunity_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Chỉ mục cho bảng `contact_target_list`
--
ALTER TABLE `contact_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_TARGET_LIST_ID` (`contact_id`,`target_list_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `c_driving_course`
--
ALTER TABLE `c_driving_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `c_fee_payment`
--
ALTER TABLE `c_fee_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_DRIVING_COURSE_ID` (`driving_course_id`);

--
-- Chỉ mục cho bảng `dashboard_template`
--
ALTER TABLE `dashboard_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_FOLDER_ID` (`folder_id`);

--
-- Chỉ mục cho bảng `document_folder`
--
ALTER TABLE `document_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Chỉ mục cho bảng `document_folder_path`
--
ALTER TABLE `document_folder_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Chỉ mục cho bảng `document_lead`
--
ALTER TABLE `document_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_LEAD_ID` (`document_id`,`lead_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Chỉ mục cho bảng `document_opportunity`
--
ALTER TABLE `document_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_OPPORTUNITY_ID` (`document_id`,`opportunity_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Chỉ mục cho bảng `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_MESSAGE_ID` (`message_id`),
  ADD KEY `IDX_ICS_EVENT_UID` (`ics_event_uid`),
  ADD KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_SENT_BY_ID` (`sent_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`),
  ADD KEY `IDX_CREATED_EVENT` (`created_event_id`,`created_event_type`),
  ADD KEY `IDX_GROUP_FOLDER_ID` (`group_folder_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);
ALTER TABLE `email` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`,`body`);

--
-- Chỉ mục cho bảng `email_account`
--
ALTER TABLE `email_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `email_address`
--
ALTER TABLE `email_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LOWER` (`lower`);

--
-- Chỉ mục cho bảng `email_email_account`
--
ALTER TABLE `email_email_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ACCOUNT_ID` (`email_id`,`email_account_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ACCOUNT_ID` (`email_account_id`);

--
-- Chỉ mục cho bảng `email_email_address`
--
ALTER TABLE `email_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ADDRESS_ID_ADDRESS_TYPE` (`email_id`,`email_address_id`,`address_type`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Chỉ mục cho bảng `email_filter`
--
ALTER TABLE `email_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `email_folder`
--
ALTER TABLE `email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_INBOUND_EMAIL_ID` (`email_id`,`inbound_email_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`);

--
-- Chỉ mục cho bảng `email_queue_item`
--
ALTER TABLE `email_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SENT_AT` (`sent_at`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `email_template_category`
--
ALTER TABLE `email_template_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Chỉ mục cho bảng `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Chỉ mục cho bảng `email_user`
--
ALTER TABLE `email_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_USER_ID` (`email_id`,`user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `entity_email_address`
--
ALTER TABLE `entity_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_EMAIL_ADDRESS_ID_ENTITY_TYPE` (`entity_id`,`email_address_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Chỉ mục cho bảng `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_PHONE_NUMBER_ID_ENTITY_TYPE` (`entity_id`,`phone_number_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Chỉ mục cho bảng `entity_team`
--
ALTER TABLE `entity_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_TEAM_ID_ENTITY_TYPE` (`entity_id`,`team_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Chỉ mục cho bảng `entity_user`
--
ALTER TABLE `entity_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_ATTACHMENT` (`attachment_id`);

--
-- Chỉ mục cho bảng `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LICENSE_STATUS` (`license_status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `external_account`
--
ALTER TABLE `external_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_email_folder`
--
ALTER TABLE `group_email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_GROUP_EMAIL_FOLDER_ID_TEAM_ID` (`group_email_folder_id`,`team_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Chỉ mục cho bảng `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `import_entity`
--
ALTER TABLE `import_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_IMPORT` (`import_id`);

--
-- Chỉ mục cho bảng `import_error`
--
ALTER TABLE `import_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ROW_INDEX` (`row_index`),
  ADD KEY `IDX_IMPORT_ROW_INDEX` (`import_id`,`row_index`),
  ADD KEY `IDX_IMPORT_ID` (`import_id`);

--
-- Chỉ mục cho bảng `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_INBOUND_EMAIL_ID_TEAM_ID` (`inbound_email_id`,`team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Chỉ mục cho bảng `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_STATUS_SCHEDULED_JOB_ID` (`status`,`scheduled_job_id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`);

--
-- Chỉ mục cho bảng `kanban_order`
--
ALTER TABLE `kanban_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_USER_ID` (`entity_type`,`entity_id`,`user_id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_ENTITY_TYPE_USER_ID` (`entity_type`,`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Chỉ mục cho bảng `knowledge_base_article`
--
ALTER TABLE `knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_KNOWLEDGE_BASE_ARTICLE_ID_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_article_id`,`knowledge_base_category_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_category_id`);

--
-- Chỉ mục cho bảng `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`portal_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Chỉ mục cho bảng `knowledge_base_category`
--
ALTER TABLE `knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Chỉ mục cho bảng `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Chỉ mục cho bảng `layout_record`
--
ALTER TABLE `layout_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME_LAYOUT_SET_ID` (`name`,`layout_set_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Chỉ mục cho bảng `layout_set`
--
ALTER TABLE `layout_set`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STATUS` (`created_at`,`status`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_ACCOUNT_ID` (`created_account_id`),
  ADD KEY `IDX_CREATED_CONTACT_ID` (`created_contact_id`),
  ADD KEY `IDX_CREATED_OPPORTUNITY_ID` (`created_opportunity_id`);

--
-- Chỉ mục cho bảng `lead_capture`
--
ALTER TABLE `lead_capture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
  ADD KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_TEMPLATE_ID` (`opt_in_confirmation_email_template_id`),
  ADD KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `lead_meeting`
--
ALTER TABLE `lead_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_MEETING_ID` (`lead_id`,`meeting_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Chỉ mục cho bảng `lead_target_list`
--
ALTER TABLE `lead_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_TARGET_LIST_ID` (`lead_id`,`target_list_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `mass_action`
--
ALTER TABLE `mass_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `mass_email`
--
ALTER TABLE `mass_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_TEMPLATE_ID` (`email_template_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_MEETING_ID` (`user_id`,`meeting_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Chỉ mục cho bảng `next_number`
--
ALTER TABLE `next_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD_NAME` (`entity_type`,`field_name`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`);

--
-- Chỉ mục cho bảng `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_NUMBER` (`created_by_id`,`number`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_TARGET_TYPE` (`target_type`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_PARENT_TYPE` (`parent_type`),
  ADD KEY `IDX_RELATED_ID` (`related_id`),
  ADD KEY `IDX_RELATED_TYPE` (`related_type`),
  ADD KEY `IDX_SUPER_PARENT_TYPE` (`super_parent_type`),
  ADD KEY `IDX_SUPER_PARENT_ID` (`super_parent_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`);
ALTER TABLE `note` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`post`);

--
-- Chỉ mục cho bảng `note_portal`
--
ALTER TABLE `note_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_PORTAL_ID` (`note_id`,`portal_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Chỉ mục cho bảng `note_team`
--
ALTER TABLE `note_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_TEAM_ID` (`note_id`,`team_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Chỉ mục cho bảng `note_user`
--
ALTER TABLE `note_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_USER_ID` (`note_id`,`user_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER` (`user_id`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`);

--
-- Chỉ mục cho bảng `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_STAGE` (`stage`,`deleted`),
  ADD KEY `IDX_LAST_STAGE` (`last_stage`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STAGE` (`created_at`,`stage`),
  ADD KEY `IDX_ASSIGNED_USER_STAGE` (`assigned_user_id`,`stage`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `password_change_request`
--
ALTER TABLE `password_change_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REQUEST_ID` (`request_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_NUMERIC` (`numeric`);

--
-- Chỉ mục cho bảng `portal`
--
ALTER TABLE `portal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CUSTOM_ID` (`custom_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_AUTHENTICATION_PROVIDER_ID` (`authentication_provider_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Chỉ mục cho bảng `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_PORTAL_ROLE_ID` (`portal_id`,`portal_role_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`);

--
-- Chỉ mục cho bảng `portal_role`
--
ALTER TABLE `portal_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `portal_role_user`
--
ALTER TABLE `portal_role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ROLE_ID_USER_ID` (`portal_role_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `portal_user`
--
ALTER TABLE `portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_USER_ID` (`portal_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REMIND_AT` (`remind_at`),
  ADD KEY `IDX_START_AT` (`start_at`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_team`
--
ALTER TABLE `role_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_TEAM_ID` (`role_id`,`team_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_USER_ID` (`role_id`,`user_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `scheduled_job`
--
ALTER TABLE `scheduled_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `scheduled_job_log_record`
--
ALTER TABLE `scheduled_job_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID_EXECUTION_TIME` (`scheduled_job_id`,`execution_time`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_FROM_PHONE_NUMBER_ID` (`from_phone_number_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`);

--
-- Chỉ mục cho bảng `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_SMS_ID_PHONE_NUMBER_ID_ADDRESS_TYPE` (`sms_id`,`phone_number_id`,`address_type`),
  ADD KEY `IDX_SMS_ID` (`sms_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Chỉ mục cho bảng `star_subscription`
--
ALTER TABLE `star_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_USER_ENTITY_TYPE` (`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Chỉ mục cho bảng `stream_subscription`
--
ALTER TABLE `stream_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Chỉ mục cho bảng `system_data`
--
ALTER TABLE `system_data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `target_list`
--
ALTER TABLE `target_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Chỉ mục cho bảng `target_list_user`
--
ALTER TABLE `target_list_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_TARGET_LIST_ID` (`user_id`,`target_list_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Chỉ mục cho bảng `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_END_STATUS` (`date_end`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`);

--
-- Chỉ mục cho bảng `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`);

--
-- Chỉ mục cho bảng `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_TEAM_ID_USER_ID` (`team_id`,`user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `two_factor_code`
--
ALTER TABLE `two_factor_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER_ID_METHOD` (`user_id`,`method`),
  ADD KEY `IDX_USER_ID_METHOD_IS_ACTIVE` (`user_id`,`method`,`is_active`),
  ADD KEY `IDX_USER_ID_METHOD_CREATED_AT` (`user_id`,`method`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `unique_id`
--
ALTER TABLE `unique_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_NAME_DELETE_ID` (`user_name`,`delete_id`),
  ADD KEY `IDX_USER_NAME` (`user_name`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DASHBOARD_TEMPLATE_ID` (`dashboard_template_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_C_GIAOVIENHUONGDAN_ID` (`c_giaovienhuongdan_id`);

--
-- Chỉ mục cho bảng `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Chỉ mục cho bảng `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_WORKING_TIME_RANGE_ID` (`user_id`,`working_time_range_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Chỉ mục cho bảng `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EVENT` (`event`),
  ADD KEY `IDX_ENTITY_TYPE_TYPE` (`entity_type`,`type`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD` (`entity_type`,`field`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_WEBHOOK_ID` (`webhook_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Chỉ mục cho bảng `working_time_calendar`
--
ALTER TABLE `working_time_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Chỉ mục cho bảng `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_WORKING_TIME_CALENDAR_ID_WORKING_TIME_RANGE_ID` (`working_time_calendar_id`,`working_time_range_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Chỉ mục cho bảng `working_time_range`
--
ALTER TABLE `working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TYPE_RANGE` (`type`,`date_start`,`date_end`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_contact`
--
ALTER TABLE `account_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `account_document`
--
ALTER TABLE `account_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `account_portal_user`
--
ALTER TABLE `account_portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `account_target_list`
--
ALTER TABLE `account_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `action_history_record`
--
ALTER TABLE `action_history_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT cho bảng `app_log_record`
--
ALTER TABLE `app_log_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `autofollow`
--
ALTER TABLE `autofollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `call_contact`
--
ALTER TABLE `call_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `call_lead`
--
ALTER TABLE `call_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `call_user`
--
ALTER TABLE `call_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `case`
--
ALTER TABLE `case`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `case_contact`
--
ALTER TABLE `case_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_document`
--
ALTER TABLE `contact_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_meeting`
--
ALTER TABLE `contact_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_target_list`
--
ALTER TABLE `contact_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `document_folder_path`
--
ALTER TABLE `document_folder_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `document_lead`
--
ALTER TABLE `document_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `document_opportunity`
--
ALTER TABLE `document_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_email_account`
--
ALTER TABLE `email_email_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_email_address`
--
ALTER TABLE `email_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_user`
--
ALTER TABLE `email_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `entity_email_address`
--
ALTER TABLE `entity_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `entity_team`
--
ALTER TABLE `entity_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `entity_user`
--
ALTER TABLE `entity_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `import_entity`
--
ALTER TABLE `import_entity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `job`
--
ALTER TABLE `job`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lead_meeting`
--
ALTER TABLE `lead_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lead_target_list`
--
ALTER TABLE `lead_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `note`
--
ALTER TABLE `note`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `note_portal`
--
ALTER TABLE `note_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `note_team`
--
ALTER TABLE `note_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `note_user`
--
ALTER TABLE `note_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `portal_role_user`
--
ALTER TABLE `portal_role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `portal_user`
--
ALTER TABLE `portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_team`
--
ALTER TABLE `role_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `star_subscription`
--
ALTER TABLE `star_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stream_subscription`
--
ALTER TABLE `stream_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `target_list_user`
--
ALTER TABLE `target_list_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
