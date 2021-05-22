-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2021 pada 06.06
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apsurabaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_template`
--

CREATE TABLE `email_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_template`
--

INSERT INTO `email_template` (`id`, `created_at`, `updated_at`, `content`, `name`, `subject`) VALUES
(1, NULL, NULL, '<!DOCTYPE html>\n                <html lang=\"en\">\n                <head>\n                    <meta charset=\"utf-8\">\n                    <meta name=\"viewport\" content=\"width=device-width\">\n                    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n                    <meta name=\"x-apple-disable-message-reformatting\">\n                    <title>Example</title>\n                    <style>\n                        body {\n                            background-color:#fff;\n                            color:#222222;\n                            margin: 0px auto;\n                            padding: 0px;\n                            height: 100%;\n                            width: 100%;\n                            font-weight: 400;\n                            font-size: 15px;\n                            line-height: 1.8;\n                        }\n                        .continer{\n                            width:400px;\n                            margin-left:auto;\n                            margin-right:auto;\n                            background-color:#efefef;\n                            padding:30px;\n                        }\n                        .btn{\n                            padding: 5px 15px;\n                            display: inline-block;\n                        }\n                        .btn-primary{\n                            border-radius: 3px;\n                            background: #0b3c7c;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                        .btn-primary:hover{\n                            border-radius: 3px;\n                            background: #4673ad;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                    </style>\n                </head>\n                <body>\n                    <div class=\"continer\">\n                        <h1>Lorem ipsum dolor</h1>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea <strong>commodo consequat</strong>. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod <a href=\"#\">tempor incididunt ut labore</a> et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <a href=\"#\" class=\"btn btn-primary\">Lorem ipsum dolor</a>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation <a href=\"#\">ullamco</a> laboris nisi ut aliquip ex ea commodo consequat. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                    </div>\n                </body>\n                </html>', 'Example E-mail', 'Example E-mail');

-- --------------------------------------------------------

--
-- Struktur dari tabel `example`
--

CREATE TABLE `example` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `example`
--

INSERT INTO `example` (`id`, `created_at`, `updated_at`, `name`, `description`, `status_id`) VALUES
(1, NULL, NULL, 'Dolorem omnis magnam distinctio.', 'Deleniti earum nisi omnis error quia.', 1),
(2, NULL, NULL, 'Molestiae aliquam laboriosam mollitia.', 'Laboriosam ut quisquam voluptatem incidunt.', 1),
(3, NULL, NULL, 'At placeat aut eum.', 'Quis ipsam dolor dicta. Quis iusto inventore fugiat quia numquam sint laborum inventore.', 3),
(4, NULL, NULL, 'Nihil ex quos occaecati.', 'Rerum cupiditate officia omnis molestias facere.', 3),
(5, NULL, NULL, 'Aut perferendis dicta et voluptas.', 'Et libero ipsa illo aliquam saepe odio eligendi. Expedita vel est maxime explicabo eaque aut.', 2),
(6, NULL, NULL, 'Ipsam et impedit ea dolor.', 'Beatae eaque iure autem exercitationem aut officia numquam. Qui libero quia nisi autem repellat voluptatem.', 2),
(7, NULL, NULL, 'Totam consequatur animi laboriosam.', 'Inventore perferendis excepturi ab enim odio dolorem ea.', 1),
(8, NULL, NULL, 'Est voluptatem qui eos.', 'Ratione atque autem commodi. Et et eaque quia eos voluptatem et corporis.', 2),
(9, NULL, NULL, 'Enim doloribus ut aut molestiae commodi.', 'Saepe quis quia laborum aut perspiciatis minima. Doloribus voluptatem sed sunt molestias voluptatem esse sint.', 3),
(10, NULL, NULL, 'Sunt sit possimus nostrum explicabo dolores.', 'Accusantium mollitia quo cupiditate animi libero qui. Quos cumque sequi voluptatum possimus.', 4),
(11, NULL, NULL, 'Hic laborum et ipsa quia.', 'Quo non facere in velit et.', 3),
(12, NULL, NULL, 'Enim adipisci atque et tempore.', 'Illo aut vel rem et.', 3),
(13, NULL, NULL, 'Aliquam nulla ullam enim.', 'Minima deleniti aliquam tempore culpa amet repellendus dolor quod. Quasi impedit explicabo consequatur velit.', 3),
(14, NULL, NULL, 'Dolor provident incidunt vel consectetur.', 'Neque quas commodi aspernatur optio ea accusantium.', 2),
(15, NULL, NULL, 'Repudiandae nam saepe impedit quo.', 'Aspernatur sapiente aut et voluptatem esse iusto.', 2),
(16, NULL, NULL, 'Necessitatibus incidunt aut voluptas corporis.', 'Est earum voluptas saepe hic. Autem aut qui corrupti explicabo enim aut.', 4),
(17, NULL, NULL, 'Velit omnis ea soluta.', 'Voluptatum incidunt qui eos ipsam placeat et perspiciatis. Vel ut dignissimos beatae quis mollitia architecto sit.', 1),
(18, NULL, NULL, 'Veritatis doloremque veniam facilis impedit.', 'Laborum laborum sit consectetur sunt.', 3),
(19, NULL, NULL, 'Nam quia magnam.', 'Dolor quaerat et vitae cumque beatae. Nobis et est dolores iste odit asperiores.', 3),
(20, NULL, NULL, 'Et at eos.', 'Provident ut reprehenderit repellat doloremque facere tempora.', 4),
(21, NULL, NULL, 'Qui laboriosam laborum.', 'Sed harum ut voluptas error quidem rerum magni autem.', 2),
(22, NULL, NULL, 'Molestias id quo.', 'Itaque consequatur ut tempore odio impedit.', 2),
(23, NULL, NULL, 'Sit voluptatibus nihil.', 'Nihil voluptatem esse ipsum labore ducimus animi reiciendis.', 4),
(24, NULL, NULL, 'Impedit laborum aut.', 'Sed aut autem quibusdam nostrum expedita laboriosam. Dolor officiis ipsum ut et.', 3),
(25, NULL, NULL, 'Quia alias occaecati.', 'Blanditiis neque architecto ea libero qui eveniet commodi.', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `folder`
--

CREATE TABLE `folder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `resource` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `folder`
--

INSERT INTO `folder` (`id`, `created_at`, `updated_at`, `name`, `folder_id`, `resource`) VALUES
(1, NULL, NULL, 'root', NULL, NULL),
(2, NULL, NULL, 'resource', 1, 1),
(3, NULL, NULL, 'documents', 1, NULL),
(4, NULL, NULL, 'graphics', 1, NULL),
(5, NULL, NULL, 'other', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `form`
--

CREATE TABLE `form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `pagination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `form`
--

INSERT INTO `form` (`id`, `created_at`, `updated_at`, `name`, `table_name`, `read`, `edit`, `add`, `delete`, `pagination`) VALUES
(1, NULL, NULL, 'Example', 'example', 1, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_field`
--

CREATE TABLE `form_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browse` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `relation_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `form_field`
--

INSERT INTO `form_field` (`id`, `created_at`, `updated_at`, `name`, `type`, `browse`, `read`, `edit`, `add`, `relation_table`, `relation_column`, `form_id`, `column_name`) VALUES
(1, NULL, NULL, 'Title', 'text', 1, 1, 1, 1, NULL, NULL, 1, 'name'),
(2, NULL, NULL, 'Description', 'text_area', 1, 1, 1, 1, NULL, NULL, 1, 'description'),
(3, NULL, NULL, 'Status', 'relation_select', 1, 1, 1, 1, 'status', 'name', 1, 'status_id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `prioritas` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `kategori`, `prioritas`, `created_at`, `updated_at`) VALUES
(1, 'Kategori 1', 'pemasukan', 1, '2021-05-21 20:45:34', '2021-05-21 20:45:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menulist`
--

CREATE TABLE `menulist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menulist`
--

INSERT INTO `menulist` (`id`, `name`) VALUES
(1, 'sidebar menu'),
(2, 'top menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `href`, `icon`, `slug`, `parent_id`, `menu_id`, `sequence`) VALUES
(1, 'Dashboard', '/', 'cil-speedometer', 'link', NULL, 1, 1),
(2, 'Settings', NULL, 'cil-calculator', 'dropdown', NULL, 1, 2),
(3, 'Notes', '/notes', NULL, 'link', 2, 1, 3),
(4, 'Users', '/users', NULL, 'link', 2, 1, 4),
(5, 'Edit menu', '/menu/menu', NULL, 'link', 2, 1, 5),
(6, 'Edit menu elements', '/menu/element', NULL, 'link', 2, 1, 6),
(7, 'Edit roles', '/roles', NULL, 'link', 2, 1, 7),
(11, 'Login', '/login', 'cil-account-logout', 'link', NULL, 1, 11),
(12, 'Register', '/register', 'cil-account-logout', 'link', NULL, 1, 12),
(50, 'Login', '/login', NULL, 'link', 49, 1, 50),
(51, 'Register', '/register', NULL, 'link', 49, 1, 51),
(52, 'Error 404', '/404', NULL, 'link', 49, 1, 52),
(53, 'Error 500', '/500', NULL, 'link', 49, 1, 53),
(57, 'Dashboard', '/', NULL, 'link', 56, 2, 57),
(58, 'Notes', '/notes', NULL, 'link', 56, 2, 58),
(59, 'Users', '/users', NULL, 'link', 56, 2, 59),
(60, 'Settings', NULL, '', 'dropdown', NULL, 2, 60),
(61, 'Edit menu', '/menu/menu', NULL, 'link', 60, 2, 61),
(62, 'Edit menu elements', '/menu/element', NULL, 'link', 60, 2, 62),
(63, 'Edit roles', '/roles', NULL, 'link', 60, 2, 63),
(66, 'Tes AP Surabaya', NULL, 'cil-calculator', 'dropdown', NULL, 1, 54),
(67, 'Kategori', '/kategori', NULL, 'link', 66, 1, 55);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_role`
--

CREATE TABLE `menu_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_role`
--

INSERT INTO `menu_role` (`id`, `role_name`, `menus_id`) VALUES
(1, 'guest', 1),
(2, 'user', 1),
(3, 'admin', 1),
(4, 'admin', 2),
(5, 'admin', 3),
(6, 'admin', 4),
(7, 'admin', 5),
(8, 'admin', 6),
(9, 'admin', 7),
(10, 'admin', 8),
(11, 'admin', 9),
(12, 'admin', 10),
(13, 'guest', 11),
(14, 'guest', 12),
(15, 'user', 13),
(16, 'admin', 13),
(17, 'user', 14),
(18, 'admin', 14),
(19, 'user', 15),
(20, 'admin', 15),
(21, 'user', 16),
(22, 'admin', 16),
(23, 'user', 17),
(24, 'admin', 17),
(25, 'user', 18),
(26, 'admin', 18),
(27, 'user', 19),
(28, 'admin', 19),
(29, 'user', 20),
(30, 'admin', 20),
(31, 'user', 21),
(32, 'admin', 21),
(33, 'user', 22),
(34, 'admin', 22),
(35, 'user', 23),
(36, 'admin', 23),
(37, 'user', 24),
(38, 'admin', 24),
(39, 'user', 25),
(40, 'admin', 25),
(41, 'user', 26),
(42, 'admin', 26),
(43, 'user', 27),
(44, 'admin', 27),
(45, 'user', 28),
(46, 'admin', 28),
(47, 'user', 29),
(48, 'admin', 29),
(49, 'user', 30),
(50, 'admin', 30),
(51, 'user', 31),
(52, 'admin', 31),
(53, 'user', 32),
(54, 'admin', 32),
(55, 'user', 33),
(56, 'admin', 33),
(57, 'user', 34),
(58, 'admin', 34),
(59, 'user', 35),
(60, 'admin', 35),
(61, 'user', 36),
(62, 'admin', 36),
(63, 'user', 37),
(64, 'admin', 37),
(65, 'user', 38),
(66, 'admin', 38),
(69, 'user', 40),
(70, 'admin', 40),
(71, 'user', 41),
(72, 'admin', 41),
(73, 'user', 42),
(74, 'admin', 42),
(75, 'user', 43),
(76, 'admin', 43),
(77, 'user', 44),
(78, 'admin', 44),
(79, 'user', 45),
(80, 'admin', 45),
(81, 'user', 46),
(82, 'admin', 46),
(83, 'user', 47),
(84, 'admin', 47),
(85, 'user', 48),
(86, 'admin', 48),
(87, 'user', 49),
(88, 'admin', 49),
(89, 'user', 50),
(90, 'admin', 50),
(91, 'user', 51),
(92, 'admin', 51),
(93, 'user', 52),
(94, 'admin', 52),
(95, 'user', 53),
(96, 'admin', 53),
(97, 'guest', 54),
(98, 'user', 54),
(99, 'admin', 54),
(100, 'guest', 55),
(101, 'user', 55),
(102, 'admin', 55),
(103, 'guest', 56),
(104, 'user', 56),
(105, 'admin', 56),
(106, 'guest', 57),
(107, 'user', 57),
(108, 'admin', 57),
(109, 'user', 58),
(110, 'admin', 58),
(111, 'admin', 59),
(112, 'admin', 60),
(113, 'admin', 61),
(114, 'admin', 62),
(115, 'admin', 63),
(116, 'admin', 64),
(117, 'admin', 65),
(118, 'admin', 66),
(119, 'user', 66),
(120, 'guest', 66),
(121, 'admin', 67),
(122, 'user', 67),
(123, 'guest', 67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_11_085455_create_notes_table', 1),
(5, '2019_10_12_115248_create_status_table', 1),
(6, '2019_11_08_102827_create_menus_table', 1),
(7, '2019_11_13_092213_create_menurole_table', 1),
(8, '2019_12_10_092113_create_permission_tables', 1),
(9, '2019_12_11_091036_create_menulist_table', 1),
(10, '2019_12_18_092518_create_role_hierarchy_table', 1),
(11, '2020_01_07_093259_create_folder_table', 1),
(12, '2020_01_08_184500_create_media_table', 1),
(13, '2020_01_21_161241_create_form_field_table', 1),
(14, '2020_01_21_161242_create_form_table', 1),
(15, '2020_01_21_161243_create_example_table', 1),
(16, '2020_03_12_111400_create_email_template_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `note_type`, `applies_to_date`, `users_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Atque aut blanditiis debitis.', 'Aut architecto officiis provident molestias omnis adipisci et. Labore voluptatibus similique possimus nemo perferendis voluptates ut itaque. Quis saepe ipsum nihil placeat enim. Ea ipsam itaque iure ipsa.', 'magnam', '1973-01-28', 10, 4, NULL, NULL),
(2, 'Mollitia accusamus culpa soluta.', 'Error ut et ea rerum. Maiores amet id ipsa consequatur est odio.', 'quis et', '2007-03-27', 6, 4, NULL, NULL),
(3, 'Quam quod similique molestiae.', 'Atque repellat ab et quos. Et natus possimus est quisquam delectus iure est. Minima perferendis minima dignissimos voluptatem autem.', 'fugit', '1971-05-07', 10, 3, NULL, NULL),
(4, 'Accusantium aliquid minus officia tempora consequatur.', 'Et quia veniam quod eaque suscipit ut eum temporibus. Incidunt ipsum animi quasi a quam delectus porro. Porro est aliquid blanditiis ut.', 'et ipsam', '2017-10-21', 3, 3, NULL, NULL),
(5, 'Eos voluptas rerum.', 'Occaecati omnis et omnis quasi fuga debitis. Error voluptatem aliquid necessitatibus vero voluptatem. Vero qui nemo et dolore repudiandae porro eum dolores. Laborum autem eos aut illo id.', 'voluptatum', '2015-07-29', 4, 1, NULL, NULL),
(6, 'Architecto neque et repellendus eos.', 'Cum dolorum dolorem non ut quo aut pariatur. Ab totam aspernatur commodi. Tempora illum voluptas non veritatis.', 'provident', '1985-12-15', 3, 4, NULL, NULL),
(7, 'Culpa sapiente odio impedit.', 'At temporibus molestiae sed corporis quia voluptatem. Voluptatum dignissimos expedita ducimus. Error deserunt non sed quae amet ea.', 'sapiente', '1979-08-04', 9, 2, NULL, NULL),
(8, 'Ratione ipsum quibusdam.', 'Illo maiores autem dolor asperiores deserunt aut beatae. Provident possimus ullam quas vero voluptatum. Ullam qui eveniet ducimus vitae commodi molestiae. Voluptatem quae vel voluptate quidem doloribus sunt.', 'ex', '1982-04-08', 3, 4, NULL, NULL),
(9, 'Facilis quas sed ipsa rerum et.', 'Velit quia eos dignissimos. Aliquid illum blanditiis cum non. Esse odit molestias eaque architecto laudantium tempore odit.', 'voluptatum incidunt', '2002-01-12', 5, 2, NULL, NULL),
(10, 'Omnis repellendus asperiores deserunt.', 'Culpa ut excepturi eaque voluptatum rem. Quo laboriosam voluptatum suscipit et. Quisquam ullam laboriosam culpa sed itaque.', 'nostrum doloremque', '1996-03-19', 9, 3, NULL, NULL),
(11, 'Vel totam quod.', 'Reiciendis cumque doloribus quo rerum unde. Sed ex qui nihil.', 'consequatur neque', '2009-03-11', 11, 3, NULL, NULL),
(12, 'Inventore illum vitae earum impedit.', 'Et ut tempore qui aperiam nihil libero. Deleniti reprehenderit id nam. Minus sint dolorum saepe in. Et voluptas possimus quam aliquid magnam dolores.', 'fugit', '2000-09-11', 7, 2, NULL, NULL),
(13, 'Adipisci temporibus incidunt quasi rerum nesciunt.', 'Et rerum voluptates reiciendis. Porro distinctio consequatur ipsum a autem quis. Nostrum recusandae atque quia quaerat. Eaque id sit incidunt vel.', 'saepe', '1986-12-05', 5, 3, NULL, NULL),
(14, 'Ea temporibus officiis unde dolorem.', 'Molestiae sed eos quaerat et quis modi animi dolores. Quia ut iusto nihil doloribus consequatur cum. Earum occaecati quod odio ut dignissimos laboriosam. Veniam similique enim et rerum quo tenetur et ab.', 'voluptatibus', '1989-05-27', 10, 4, NULL, NULL),
(15, 'Sit sunt minus quidem.', 'Laborum dolore nesciunt possimus quod. Aut provident eaque quia saepe aut. Aspernatur repellat aut numquam quia non in odit.', 'odio', '1996-04-26', 8, 3, NULL, NULL),
(16, 'Qui qui est esse.', 'Modi labore iure incidunt iure possimus reiciendis voluptas dolorem. Aliquid voluptatem quibusdam alias quod. Nesciunt nam excepturi sequi incidunt labore eligendi. Dolor enim et quisquam doloremque expedita. Magni aut reprehenderit odio consequatur nesciunt.', 'et atque', '2003-01-16', 4, 4, NULL, NULL),
(17, 'Impedit adipisci dicta quia.', 'Ea sapiente saepe veritatis natus. Nobis aut quaerat sunt excepturi quo. Perspiciatis illo molestiae qui ea temporibus. Enim aut nisi vel consequatur qui totam incidunt.', 'laudantium', '2013-02-15', 2, 2, NULL, NULL),
(18, 'Alias vitae nihil nesciunt et.', 'Qui aut aut rerum rerum consequatur cum. Consequatur nihil debitis nemo ab voluptatem aut consequatur. Earum sit necessitatibus natus quos. Debitis perspiciatis et sit autem qui.', 'velit sed', '1984-07-18', 4, 4, NULL, NULL),
(19, 'Vel illo voluptas.', 'Accusantium nihil velit debitis. Ratione beatae maxime occaecati voluptas aut in et. Ipsum ut nulla optio laboriosam nihil est. Doloribus adipisci voluptas pariatur quod optio.', 'quis', '2018-12-03', 7, 2, NULL, NULL),
(20, 'Excepturi voluptatem sit porro.', 'Deserunt optio soluta ipsam pariatur. Ut quasi sapiente qui. Et in sunt est dolorum. Distinctio explicabo sit sint repellendus dolorem.', 'debitis quas', '2019-11-10', 7, 4, NULL, NULL),
(21, 'Aut nostrum sit aut reiciendis.', 'Et temporibus omnis molestiae magni. Qui eum repudiandae rerum ut et sint. Doloremque fuga hic qui non est tenetur fuga. Atque consectetur accusamus ut et nobis voluptatem harum.', 'aperiam atque', '2017-04-12', 3, 2, NULL, NULL),
(22, 'Temporibus consequatur voluptatem provident sed est.', 'Et maxime dolorum culpa nulla expedita. Adipisci consequatur tempora deserunt ut dolorem laborum. Doloribus iure quas et vel placeat.', 'repellendus dolorum', '1984-05-21', 6, 3, NULL, NULL),
(23, 'Molestiae incidunt quod minus.', 'Quo nam ea repudiandae qui consequatur iure voluptatem voluptatum. Delectus nesciunt iusto fugit qui asperiores expedita cumque. Soluta earum accusantium nisi sit deleniti aut. Possimus a ut sed perferendis in mollitia distinctio.', 'sit rem', '1977-04-11', 5, 4, NULL, NULL),
(24, 'Fugiat in atque tenetur.', 'Sint eligendi minus atque et sed reprehenderit in minus. Deserunt voluptas aliquid nihil. Illum ullam qui et repudiandae. Mollitia ut est quisquam mollitia dolore et itaque dicta.', 'nobis voluptatibus', '1984-05-10', 2, 4, NULL, NULL),
(25, 'Consequatur numquam sit sequi.', 'Ut amet sapiente aut in harum et. Nam omnis corrupti magni ut reprehenderit. Sequi quia sunt sit quod eius officia quis.', 'qui', '2002-02-04', 2, 2, NULL, NULL),
(26, 'Numquam nobis saepe.', 'Vero veritatis voluptatem recusandae quis dolorem est ut. Nemo error est tempora veniam voluptatum necessitatibus quas. Voluptates aut consectetur tenetur veritatis.', 'quis', '1972-04-30', 8, 3, NULL, NULL),
(27, 'Dicta ea voluptas.', 'Dolor est id ullam officiis eveniet. Quia soluta numquam ullam beatae. Ea reprehenderit qui quia iure est aut autem. Saepe qui recusandae culpa sed et.', 'sit', '1971-08-08', 3, 1, NULL, NULL),
(28, 'Sed error consectetur.', 'Autem nam velit et eius qui dignissimos commodi. Dignissimos dolorum fuga qui aut quia fugiat officiis. Ipsa ea deleniti fuga numquam eos suscipit.', 'dolor', '1985-01-29', 7, 1, NULL, NULL),
(29, 'Ducimus quo quo velit quo.', 'Earum repellat sunt eius hic tempore rerum. Alias sint doloribus quos quia. Mollitia saepe a est omnis minus vel maxime. Sit est distinctio eum unde corporis.', 'ratione dignissimos', '2013-04-23', 4, 2, NULL, NULL),
(30, 'Ut dicta illo veritatis.', 'Corporis consequatur reprehenderit sit corporis ut voluptatibus ad. Accusamus qui non qui tenetur. Eos qui delectus reprehenderit.', 'maiores numquam', '2004-06-13', 3, 3, NULL, NULL),
(31, 'Ipsum aut eum voluptatum.', 'Laboriosam autem ut et cumque quo soluta deleniti. Consequuntur quos nulla vel a est quae. Eum et architecto suscipit.', 'et ullam', '1984-10-21', 8, 4, NULL, NULL),
(32, 'Sint et sit quisquam.', 'Nisi sit ab est praesentium. Similique placeat et ipsum dolores eum quas id. Numquam et inventore harum voluptatum ratione repellendus et.', 'molestiae', '1970-05-16', 6, 4, NULL, NULL),
(33, 'Et sed recusandae soluta.', 'Tempora quisquam quisquam asperiores iure mollitia veritatis est iste. Dolorem odit quia exercitationem quisquam qui cumque et dignissimos. Nam dolorem sit ex dolor.', 'sint est', '1992-03-18', 4, 1, NULL, NULL),
(34, 'Id ratione rem cupiditate.', 'Dicta illo placeat recusandae qui impedit voluptate. Ullam illo vel soluta molestias non quo eius. Neque quia reprehenderit dolores. Minima explicabo nihil aut quaerat laborum numquam.', 'nulla', '1988-03-27', 4, 3, NULL, NULL),
(35, 'Ab id cum voluptas vel ratione.', 'Dolor adipisci fugit aut incidunt ut. Quibusdam dolor molestiae ratione totam ratione maxime et est. Aliquid officia accusamus dicta cupiditate sit modi iste.', 'odit', '1988-05-04', 6, 4, NULL, NULL),
(36, 'Esse vel fuga asperiores.', 'Incidunt aut doloribus dolor sint et similique dicta nisi. Quam veniam praesentium porro. Tenetur totam impedit necessitatibus magni odit adipisci ut. Voluptas quia dolores dolore labore et laboriosam. Iusto aut aut voluptatum aut aliquam aut nihil nihil.', 'non accusamus', '1992-01-01', 4, 1, NULL, NULL),
(37, 'Doloribus sapiente beatae et hic esse.', 'Quidem rerum incidunt tempora molestiae voluptas officia. Soluta sed facere est hic quas. Sit eos dicta facere esse. Vel tempore deserunt omnis repellat.', 'omnis delectus', '1976-11-15', 7, 1, NULL, NULL),
(38, 'Veritatis cupiditate omnis.', 'Fugit repellat voluptas et. Qui veritatis et sed autem fugiat et. Ducimus dolor sit doloribus aut quasi. Tempora aut assumenda corporis magnam.', 'id inventore', '1994-10-10', 3, 3, NULL, NULL),
(39, 'Iste enim voluptatem voluptas.', 'Corporis atque eum ullam nobis architecto repellendus vel aut. Ut quia quam voluptate quisquam asperiores. Iure esse rem ullam. Dolores est blanditiis necessitatibus quod quasi omnis recusandae.', 'non', '2013-12-05', 7, 1, NULL, NULL),
(40, 'Distinctio non molestias amet doloribus.', 'Ipsum veritatis fugiat voluptatem et. Omnis quis modi est. Quia vel maiores atque quas aut aut.', 'quia', '2013-11-23', 3, 3, NULL, NULL),
(41, 'Aut cum dolores natus.', 'Sed deleniti at vel dolor. Quia harum tempora quam quod dolor alias nobis. Non eaque autem delectus voluptate. Voluptatem est iure sunt quod dolorum.', 'odio', '2002-06-01', 7, 2, NULL, NULL),
(42, 'Voluptatem asperiores commodi voluptatem adipisci.', 'Aliquam ut soluta culpa est. Amet illum eum veritatis qui et. Voluptatem ad ab est ullam eos accusamus.', 'laborum cum', '2013-02-16', 6, 3, NULL, NULL),
(43, 'Autem quibusdam iste laudantium saepe.', 'Repellat enim numquam doloremque numquam perspiciatis facere. Consequatur ut nemo ipsa cupiditate at ut. Occaecati est ducimus tempore iure. Excepturi libero sunt commodi est qui beatae autem.', 'facilis', '2009-08-26', 4, 2, NULL, NULL),
(44, 'Deserunt et non.', 'Non veniam tempora aut iure. Eos dolor itaque magni sed quia eaque qui. Dolores praesentium accusantium sed inventore perspiciatis.', 'quas rerum', '2015-06-29', 6, 4, NULL, NULL),
(45, 'Quia neque sed facere.', 'Est necessitatibus animi velit est. Et vero recusandae nihil est tempore maiores in. Illum voluptate nihil eligendi sed animi commodi nisi.', 'aperiam', '1991-07-28', 11, 4, NULL, NULL),
(46, 'Voluptate repellat fugit laudantium quo.', 'Omnis dolorum iste qui consequatur quis natus. Et nostrum hic eum inventore. Numquam repudiandae aut vel ipsum deleniti. Qui voluptas id fugiat quidem qui. In ad ut sit cumque nostrum id molestiae.', 'quis voluptatem', '1990-04-12', 11, 2, NULL, NULL),
(47, 'Non aut culpa et soluta.', 'Expedita et ipsum eum minus nulla quia debitis est. Dolorum numquam commodi quae et magni vel cumque qui. Nulla ipsum officiis nesciunt et ut delectus facere.', 'consequuntur repellendus', '1976-10-30', 9, 4, NULL, NULL),
(48, 'Enim autem quia.', 'Ut eaque quam aliquam quae sunt quia rerum. Et repellendus voluptatem sunt facilis. Sit laboriosam quae eveniet.', 'debitis perferendis', '2001-10-15', 10, 1, NULL, NULL),
(49, 'Est aperiam qui sit qui.', 'Ut fuga sequi laudantium et. Hic reiciendis a dolor aperiam quasi delectus. Ad recusandae omnis qui facilis aut qui.', 'quibusdam nesciunt', '1976-03-14', 7, 2, NULL, NULL),
(50, 'Id accusantium ea ab amet.', 'Dicta atque voluptates ab error quis quos iusto quisquam. Quam a eos non fugiat neque doloribus aut recusandae. Quos aut excepturi et ut animi veniam perspiciatis. Deserunt possimus vero molestias explicabo.', 'non impedit', '1973-09-22', 9, 4, NULL, NULL),
(51, 'Enim aut ipsum.', 'Ut temporibus molestias molestiae perferendis magnam dignissimos autem. Aliquid minus placeat ut sunt. Quibusdam sed corporis maxime minima recusandae id.', 'iusto et', '1980-03-25', 10, 1, NULL, NULL),
(52, 'Suscipit earum aspernatur fugit aspernatur rerum.', 'Ut aperiam maxime et dolorem repellat. Non quam sunt quisquam fugit libero. Nobis repellendus incidunt repellat in similique. Laborum quibusdam quos nihil id et voluptatum inventore fugiat.', 'quas totam', '1971-10-19', 4, 2, NULL, NULL),
(53, 'In magnam eos dolores sed iste.', 'In optio quis esse architecto est qui. Tenetur ipsam itaque eum et omnis quisquam molestiae. Non a blanditiis omnis sunt molestiae atque eaque. Doloremque suscipit dolores iure enim nesciunt ut molestiae. Assumenda dolorem nobis quasi aut inventore enim aut voluptas.', 'deleniti', '2016-10-03', 2, 3, NULL, NULL),
(54, 'Commodi repellendus est deleniti modi.', 'Quam rerum vero et. Modi eos nisi nihil non ipsa sed deserunt. Eaque totam animi provident cupiditate nobis excepturi.', 'consequatur ea', '2004-08-11', 11, 1, NULL, NULL),
(55, 'Magni in amet est repellendus.', 'Ad corporis ut qui tenetur et aliquid sequi recusandae. Nihil quia at dignissimos. Quia et animi ipsam eius nihil.', 'fuga iure', '2014-01-04', 6, 3, NULL, NULL),
(56, 'Quisquam aut quaerat.', 'Assumenda animi possimus enim velit quis quasi culpa. Cupiditate ipsam sapiente molestiae aut enim accusantium. Corporis quaerat distinctio sit deleniti quasi cupiditate.', 'corporis', '1971-12-07', 6, 1, NULL, NULL),
(57, 'Quia reprehenderit et rerum illum.', 'Ab aut dicta id. Enim occaecati officiis officia voluptatem libero repellat. Vitae earum corporis sapiente iure qui consectetur quaerat.', 'ut', '2014-07-23', 3, 3, NULL, NULL),
(58, 'Enim consectetur temporibus magnam cumque.', 'Nihil id ea voluptatem laboriosam neque aspernatur aut. Et corporis ut est rerum odit in incidunt. Voluptatibus quia excepturi et qui et.', 'dolor et', '2018-08-27', 5, 2, NULL, NULL),
(59, 'Exercitationem quia incidunt rem.', 'Nesciunt eum aliquid non dolor quibusdam quisquam placeat. Vero ut dolor animi asperiores ducimus nihil et. Officiis voluptatem quo earum mollitia maxime.', 'ducimus', '2018-03-29', 6, 3, NULL, NULL),
(60, 'Fugit rerum est laudantium ad.', 'Cumque labore sunt ex dolor et veniam porro. Quia quasi in asperiores sed magni animi eligendi velit. Est rerum iusto quod optio natus molestiae eum architecto.', 'similique qui', '2008-10-20', 9, 3, NULL, NULL),
(61, 'Sed aut sint blanditiis veritatis.', 'Sapiente voluptas aut ea quis libero quam expedita. Amet possimus non aspernatur voluptas ratione est. Quidem qui neque quod dolores sunt animi.', 'nihil cum', '1998-10-29', 4, 1, NULL, NULL),
(62, 'Est quidem ipsam possimus quidem.', 'Pariatur assumenda non est officia earum. Magnam voluptatum laudantium sit necessitatibus omnis odit ipsa. Unde dolorem quas explicabo saepe.', 'ipsum', '2003-05-31', 6, 3, NULL, NULL),
(63, 'Quam quaerat eum.', 'Quo quo est perferendis quae. Rerum error nulla velit fuga. Sequi corporis quidem et deleniti quae. Tempora enim et officiis aut quam amet.', 'tempora nostrum', '2001-11-28', 9, 3, NULL, NULL),
(64, 'Molestiae animi quibusdam et.', 'Assumenda omnis voluptate cum qui quia vitae enim dolorem. Aut ut vel ipsum eos quia ut et. Sed quod voluptatem occaecati. Adipisci eum cum cum.', 'officiis', '1986-10-06', 7, 1, NULL, NULL),
(65, 'Praesentium est debitis aut dolorum.', 'Perferendis rerum accusantium molestias vero facilis est sint ut. Rerum perferendis totam explicabo voluptatibus ducimus vero. Ullam saepe provident iure ea tempore nam.', 'voluptates veritatis', '1994-04-30', 10, 4, NULL, NULL),
(66, 'Et fugit totam nihil rerum.', 'Quas ab praesentium aut animi quia. Et voluptate laboriosam vel maxime aut et. Et delectus rerum est itaque sequi. Necessitatibus quia nobis deleniti molestiae voluptatibus.', 'iure', '2012-08-04', 6, 1, NULL, NULL),
(67, 'Esse architecto qui nostrum.', 'Quod labore iste autem eveniet eaque eos dignissimos. Illo assumenda possimus itaque rerum maxime. Vel odit officiis sapiente quasi eligendi mollitia aut.', 'nobis', '1991-05-21', 3, 4, NULL, NULL),
(68, 'Molestias provident qui impedit.', 'Aut velit officia eum dicta. Ut velit et cupiditate laboriosam quo. Exercitationem eaque reprehenderit dolor sit iste. Qui quos tenetur nihil a hic.', 'facilis temporibus', '2012-11-08', 2, 2, NULL, NULL),
(69, 'Beatae aspernatur eligendi consequuntur nam.', 'Possimus dolorem sed tempore voluptatem corrupti magni fuga. Et voluptate quaerat quo laudantium nihil. Consequatur quia natus repudiandae. Dolor illo ut assumenda inventore veniam commodi.', 'provident', '2009-06-21', 9, 2, NULL, NULL),
(70, 'Sunt enim culpa libero at.', 'Odit accusamus quo minus ad iste eum error. Qui veritatis aut veniam nam. Sed aliquam necessitatibus quia maiores.', 'doloribus velit', '1999-09-04', 9, 1, NULL, NULL),
(71, 'Rerum saepe quia tenetur.', 'Iusto quia et quia. Voluptatem accusantium voluptatem aut voluptatibus. Nam architecto expedita aliquam qui excepturi culpa. Et et officia dolore dolorem voluptatem id. Voluptatem est atque porro distinctio illo tempore.', 'nihil atque', '1998-03-11', 9, 2, NULL, NULL),
(72, 'Dolorum dolore esse ea.', 'Dolorum itaque est sunt. Fugiat aliquam neque sed laboriosam sit voluptatem perspiciatis. Voluptatem ut sapiente officia est in qui. Laborum ex repudiandae corrupti.', 'commodi', '1990-05-16', 9, 4, NULL, NULL),
(73, 'Dignissimos minima alias mollitia.', 'Iure quia eos quae consequatur iure beatae eius. Facere assumenda ea facilis voluptatibus dolor. Pariatur error doloribus blanditiis et.', 'sunt', '1971-04-24', 5, 4, NULL, NULL),
(74, 'Reiciendis praesentium sit distinctio et rem.', 'Nesciunt et et veritatis sunt officia aut. Aut eos mollitia libero amet quae et. Velit ipsum aspernatur velit iure qui. Distinctio aut sed totam omnis voluptas ut veritatis minus.', 'ducimus', '2004-10-30', 11, 2, NULL, NULL),
(75, 'Dolorem at ipsam in.', 'Quis aut ad repudiandae dolores sint consequatur culpa. Quia et distinctio dolorum et. Sed dolores aut non repellendus aliquam voluptatem.', 'soluta et', '1971-09-21', 2, 4, NULL, NULL),
(76, 'Unde provident quo.', 'Et rerum laborum saepe dolores voluptatem voluptatem expedita. Rem et numquam quia quia esse sint aut. Magni consequatur reprehenderit enim nemo maiores et. Blanditiis quos magnam voluptatum aut laboriosam atque quam.', 'laudantium', '1981-08-27', 9, 2, NULL, NULL),
(77, 'Voluptatem magnam voluptatem.', 'Velit in et repudiandae perspiciatis praesentium eum placeat. Omnis odio iste earum. Suscipit repudiandae ut rerum adipisci iure nobis blanditiis. Vitae minima debitis quia ad blanditiis debitis temporibus deserunt.', 'quaerat', '2014-10-12', 11, 3, NULL, NULL),
(78, 'Ex libero sint magnam vel atque.', 'Earum maiores omnis inventore illum. Ipsa recusandae amet a commodi dicta. Quae rerum totam quasi provident consectetur.', 'explicabo', '1973-06-03', 6, 4, NULL, NULL),
(79, 'Sit ad qui nostrum ea.', 'Natus a inventore omnis iure ut dolorum aut. Accusantium placeat blanditiis autem sed. Occaecati totam odit at. Dolor et voluptas dolor tempore qui ea aut.', 'quibusdam', '1992-05-31', 3, 3, NULL, NULL),
(80, 'Sint voluptas omnis et quo.', 'Nihil et error illo quae ut quam est. Fugit est dolore reprehenderit labore molestiae. Aut placeat sit laboriosam ut asperiores occaecati.', 'iste', '2005-03-22', 8, 2, NULL, NULL),
(81, 'Vel consequatur vel culpa omnis.', 'Deserunt cum placeat tenetur non sint non nihil. Esse necessitatibus earum est aut repellendus. Hic quisquam ea impedit omnis ea et amet ut.', 'id', '2016-07-04', 7, 1, NULL, NULL),
(82, 'Odio enim eius dolores.', 'Blanditiis asperiores dolorem ducimus recusandae dolores ut omnis. Ut autem qui voluptatem consectetur quam laudantium architecto. Dignissimos sit et voluptate expedita qui temporibus. Saepe in quia nemo ut eaque quaerat.', 'labore', '2006-06-05', 2, 4, NULL, NULL),
(83, 'Quam amet dolorem aliquid.', 'Occaecati maxime enim qui aliquid explicabo omnis praesentium. Voluptas dolores laborum unde rem non sit. Nihil et id eum in occaecati. Magnam qui fugit voluptates et voluptatem a.', 'quia', '2007-07-10', 3, 1, NULL, NULL),
(84, 'Sed veniam veniam dolorum tempora.', 'Commodi aut nesciunt quasi expedita repudiandae quae quia et. Quibusdam corporis quia eum odio. Et nam qui deserunt quidem. Magnam ullam dolorem in ad sed aperiam eius quis.', 'dolores', '1974-07-11', 10, 3, NULL, NULL),
(85, 'Tempore quod nulla voluptate.', 'Rerum consequatur pariatur omnis voluptatem tempora cum qui. Necessitatibus est dolor facere voluptas ad nulla. Rerum explicabo in animi cumque autem.', 'ea aut', '2007-08-09', 4, 3, NULL, NULL),
(86, 'Nobis quis asperiores error est placeat.', 'Accusantium dolor molestiae iste dolorem. Quaerat iusto molestiae qui ipsam aut eveniet voluptatem in. Qui consequatur aut quia voluptas.', 'deleniti', '1992-03-14', 4, 3, NULL, NULL),
(87, 'Quaerat quae quia vitae.', 'Placeat voluptatibus atque ut praesentium similique ut. Excepturi saepe consequatur incidunt sint. Qui deleniti adipisci et. Qui officiis repellat dolor dolores ut sed.', 'hic eos', '2020-08-01', 5, 2, NULL, NULL),
(88, 'Ut qui nesciunt neque recusandae cum.', 'Et ratione reiciendis consequuntur modi voluptatum qui facilis. Voluptatum sit et doloremque modi non nulla. Possimus sed sit est exercitationem facilis dolorum et. Sed voluptates voluptas eligendi suscipit distinctio et facilis delectus.', 'nemo', '1980-09-26', 3, 1, NULL, NULL),
(89, 'Consequatur eveniet fuga incidunt culpa.', 'Enim soluta ipsam quasi eum. Cum porro itaque dicta laudantium voluptas tenetur voluptate. Labore labore iusto qui eveniet eum iusto consequatur. Est tempore ducimus atque dolores delectus.', 'nobis', '2000-08-26', 3, 3, NULL, NULL),
(90, 'Dolores est eius id repellat.', 'Maxime et vel architecto nisi dicta. Ut nulla aut consequatur officia consequuntur. Corrupti nulla eius officiis commodi molestiae autem. Possimus eum tempore id rerum ut aspernatur. Sed quisquam reiciendis aut eos numquam libero omnis.', 'aspernatur est', '2018-12-04', 10, 4, NULL, NULL),
(91, 'Repellat et consequatur omnis et.', 'Aut quaerat est quos consequuntur autem et rem. Velit dolorem et tempore non. Laudantium ut omnis facere tenetur et ea ab atque.', 'veritatis', '1971-03-21', 3, 2, NULL, NULL),
(92, 'Corrupti odio pariatur earum doloremque.', 'Aspernatur ipsam quia eos delectus tempore dignissimos aperiam. Totam est nihil temporibus cupiditate aliquam ut qui. Ut alias sed dolorem.', 'magni facilis', '1987-03-31', 8, 3, NULL, NULL),
(93, 'Odio voluptatum voluptatem dignissimos est.', 'At tenetur similique sit voluptates illum qui. Et qui aut necessitatibus dolor deserunt debitis ut. Qui perspiciatis dolore earum tempora impedit.', 'sint', '1998-03-02', 10, 4, NULL, NULL),
(94, 'Quod fugit et eius omnis.', 'Quod amet error sapiente perspiciatis adipisci. Quae laboriosam consequatur cupiditate voluptate iusto sed. Repellendus quia fugiat est et odio sit ex.', 'aliquam et', '1972-10-09', 10, 4, NULL, NULL),
(95, 'Quo mollitia non.', 'Qui maxime minus ut. Qui perspiciatis veniam fugit pariatur magnam ut ut. Distinctio tempora eum quis repudiandae modi.', 'tempore', '2019-03-04', 9, 4, NULL, NULL),
(96, 'Est omnis aut enim.', 'Asperiores enim et aliquam nulla. Minus impedit cupiditate hic id aut doloribus. Ipsum quia voluptatem temporibus temporibus sequi pariatur. In eum quod at. Ea hic aut quam placeat aut.', 'sequi', '1971-11-18', 11, 3, NULL, NULL),
(97, 'Quia eveniet voluptate omnis libero ullam.', 'Minus aut deserunt et veritatis. Quia aut adipisci explicabo explicabo. Veritatis qui quo occaecati eos illum enim voluptas.', 'voluptas', '1988-01-04', 2, 3, NULL, NULL),
(98, 'Nostrum omnis dignissimos nemo.', 'Ex accusantium deleniti natus ut impedit fuga dolorem. Ut et iste aspernatur cumque est qui praesentium. Eligendi ratione voluptatem et impedit iusto. Cum consequatur quo eum repudiandae sed voluptatem ducimus id. Error non rem non dignissimos ullam quis ut reiciendis.', 'corrupti blanditiis', '1970-03-09', 8, 1, NULL, NULL),
(99, 'Qui nisi est dignissimos nisi ipsum.', 'Neque est ea quae. Nostrum qui natus quidem soluta. Amet ipsam odio ipsa illo culpa sit. Non explicabo non eum nihil. Error explicabo optio est dicta omnis.', 'possimus accusantium', '2016-09-27', 3, 1, NULL, NULL),
(100, 'Fugiat voluptatem consequatur architecto ut eum.', 'Quas rerum ipsa sint dolores exercitationem ut quam. Aut architecto saepe quidem rerum vel. Adipisci modi similique eveniet qui magni. Est deleniti qui repudiandae ut recusandae dolorum. Sint sit est ut velit perferendis quia aliquam.', 'earum', '2017-02-28', 10, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'browse bread 1', 'web', '2021-05-21 09:04:30', '2021-05-21 09:04:30'),
(2, 'read bread 1', 'web', '2021-05-21 09:04:30', '2021-05-21 09:04:30'),
(3, 'edit bread 1', 'web', '2021-05-21 09:04:31', '2021-05-21 09:04:31'),
(4, 'add bread 1', 'web', '2021-05-21 09:04:31', '2021-05-21 09:04:31'),
(5, 'delete bread 1', 'web', '2021-05-21 09:04:31', '2021-05-21 09:04:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-05-21 09:04:08', '2021-05-21 09:04:08'),
(2, 'user', 'web', '2021-05-21 09:04:08', '2021-05-21 09:04:08'),
(3, 'guest', 'web', '2021-05-21 09:04:08', '2021-05-21 09:04:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_hierarchy`
--

CREATE TABLE `role_hierarchy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hierarchy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_hierarchy`
--

INSERT INTO `role_hierarchy` (`id`, `role_id`, `hierarchy`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `name`, `class`) VALUES
(1, 'ongoing', 'badge badge-pill badge-primary'),
(2, 'stopped', 'badge badge-pill badge-secondary'),
(3, 'completed', 'badge badge-pill badge-success'),
(4, 'expired', 'badge badge-pill badge-warning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuroles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `menuroles`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@admin.com', '2021-05-21 09:04:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user,admin', 'P4ZDPY0V83', '2021-05-21 09:04:10', '2021-05-21 09:04:10', NULL),
(2, 'Cierra Klocko', 'treva.langosh@example.net', '2021-05-21 09:04:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'zhfCOD3HIS', '2021-05-21 09:04:11', '2021-05-21 09:04:11', NULL),
(3, 'Alanis Gislason', 'sanford.geo@example.com', '2021-05-21 09:04:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'QYwz5Ukv9U', '2021-05-21 09:04:11', '2021-05-21 09:04:11', NULL),
(4, 'Mrs. Madilyn Hackett Sr.', 'uriah94@example.com', '2021-05-21 09:04:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'rTICNgEJBC', '2021-05-21 09:04:11', '2021-05-21 09:04:11', NULL),
(5, 'Isai Bartell', 'ardith32@example.org', '2021-05-21 09:04:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '1BPTXEluzr', '2021-05-21 09:04:12', '2021-05-21 09:04:12', NULL),
(6, 'Carolina Nicolas Sr.', 'adolfo63@example.org', '2021-05-21 09:04:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Qd9nBXj4bs', '2021-05-21 09:04:12', '2021-05-21 09:04:12', NULL),
(7, 'Americo Corwin', 'zlynch@example.org', '2021-05-21 09:04:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'cFU0NUgzwq', '2021-05-21 09:04:12', '2021-05-21 09:04:12', NULL),
(8, 'Miss Ivy Bauch PhD', 'asimonis@example.org', '2021-05-21 09:04:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '2nszVKcpoe', '2021-05-21 09:04:12', '2021-05-21 09:04:12', NULL),
(9, 'Prof. Abdul Deckow Jr.', 'bernhard.dillon@example.com', '2021-05-21 09:04:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '7fV2yU3TxM', '2021-05-21 09:04:12', '2021-05-21 09:04:12', NULL),
(10, 'Velma Kshlerin', 'bruen.brionna@example.net', '2021-05-21 09:04:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'UU0nPnyJXz', '2021-05-21 09:04:13', '2021-05-21 09:04:13', NULL),
(11, 'Alda D\'Amore', 'jasmin47@example.org', '2021-05-21 09:04:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'qFGUQI3Hr2', '2021-05-21 09:04:13', '2021-05-21 09:04:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indeks untuk tabel `menulist`
--
ALTER TABLE `menulist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `example`
--
ALTER TABLE `example`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `folder`
--
ALTER TABLE `folder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `form`
--
ALTER TABLE `form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menulist`
--
ALTER TABLE `menulist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `menu_role`
--
ALTER TABLE `menu_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

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
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
