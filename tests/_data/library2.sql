-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 15 2020 г., 13:13
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `description`, `picture`, `category`) VALUES
(30, 'inferno', 'Ден Браун', 'ужасающий роман о нежити', 'newimage/2SGpqtcJo6tQzdiTcKCYd6XR6ytrM6NMD88mekbP.jpeg', 'мистика'),
(31, 'саркофаг', 'андрей данкович', 'легкие фантастические рассказы для детей младшего возраста', 'newimage/ENKx3BEVbBk5nxsq4FYQnf7UU5Ek0eOg8GaMPpP2.jpeg', 'фантастика'),
(32, 'бегущий в лабиринте', 'джеймс дешнер', 'яркий фантастический триллер для читателей любого возраста', 'newimage/0nW2QuI3spTssoNdT3itvQtcmrXsA19z4MVMqniL.jpeg', 'фантастика'),
(33, 'преступление и наказание', 'Достоевский', 'роман о незавидной участи старушки-процентщицы', 'newimage/dL11m3Ug9IZxdbsFm889LbO6bw4M8hI1u783qmkI.jpeg', 'роман'),
(34, 'я,Сергей Есенин', 'Сергей Есенин', 'сборник стихотворений поэта Сергея Есенина', 'newimage/6CvIPt3era8BlTmK9mOcy8GQIoAZtUpqVxa21IHd.jpeg', 'поэзия'),
(35, 'сборник стихов', 'сергей есенин', 'сборник стихов из раннего творчества поэта Сергея Есенина', 'newimage/fqH65FrifB09WNdddiNTSCaGwnG0wtOyXJ0jbiaz.jpeg', 'поэзия'),
(36, 'дипломатия', 'генри киссенджер', 'опус о мировом закулисье', 'newimage/jTzyWmnPryQvN35J4rXYqyihYFD7Wgtvt50hs7rX.jpeg', 'публицистика'),
(38, 'Становление', 'Мишель Обама', 'воспоминания бывшей первой леди США', 'newimage/7k49BbLIrcZ1BYOPanpNlKNEV94WELV7PLR0cjNk.jpeg', 'публицистика'),
(42, 'Код да Винчи', 'Ден Браун', 'Захватывающая детективная история', 'newimage/RKy9xBqxQHrXQ5oeCZNcBxEN2EBrvFDQee7jjIa2.jpeg', 'детектив'),
(43, 'Сияние', 'Стивен Кинг', 'Захватывающий,холодящий кровь в жилах триллер', 'newimage/OzNDeC55KIjeGR9FEIWDSDAYz0OC61hXRPtM2Km4.jpeg', 'детектив');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_19_124926_laratrust_setup_tables', 2),
(6, '2020_10_20_161921_create_books_table', 3),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(10, '2016_06_01_000004_create_oauth_clients_table', 4),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0bc72050bfcb66bf5c211ede8f40704572ce2450b14065f0380454e4c916c64ae5afe72e699641c9', 1, 3, 'Laravel', '[]', 0, '2020-11-13 12:00:31', '2020-11-13 12:00:31', '2020-11-14 14:00:31'),
('2e8b0d0b6c2d84a4d52cd4771637821c4a9e4273a3794f26e0135700a80286d34bd6f8bb0c8ebe38', 1, 3, 'Laravel', '[]', 0, '2020-11-13 18:03:22', '2020-11-13 18:03:22', '2020-11-14 20:03:22'),
('33b3aed62d890a1a4a1c9085d87636cbf2410ec687d30e4fe2b32095217ba63a31e1425a67dfeb4c', 1, 3, 'Laravel', '[]', 0, '2020-11-13 09:54:40', '2020-11-13 09:54:40', '2020-11-14 11:54:40'),
('77548e26e548323e2d9b1bf1a23f75908b8051a63c30300d734b9bfd79e690c572fb81c47e07f2c3', 1, 3, 'Laravel', '[]', 0, '2020-11-13 16:03:53', '2020-11-13 16:03:53', '2020-11-14 18:03:53'),
('8e6ef146a161dcd939b1776b629e0160568182d8907b5ba0aa8d3f05f8967322fe8b8eeac3a9f433', 1, 3, 'Laravel', '[]', 0, '2020-11-13 11:31:03', '2020-11-13 11:31:03', '2020-11-14 13:31:03'),
('980327d45b5dd8941bb0fa81ecc9cd245604da9ddf70c074b96818d78ba407c7ff2976e1fe2b5c73', 1, 3, 'Laravel', '[]', 0, '2020-11-13 12:28:40', '2020-11-13 12:28:40', '2020-11-14 14:28:40'),
('f4bfa9a3264c27b1e3c14968d2c8741fd29d46d5c81c7fe976e0f6c8be8527834f7e59851421a2ff', 1, 3, 'Laravel', '[]', 0, '2020-11-13 12:00:35', '2020-11-13 12:00:35', '2020-11-14 14:00:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ItJzW0iJuVnW6PkmAY1hdH1hlNfTHUt0MywhLVRQ', NULL, 'http://localhost', 1, 0, 0, '2020-11-10 13:09:27', '2020-11-10 13:09:27'),
(2, NULL, 'Laravel Password Grant Client', 'NqJSHv1vUuOjyjuboxxRGA9JzqcGxlstxEn1rNkW', 'users', 'http://localhost', 0, 1, 0, '2020-11-10 13:09:27', '2020-11-10 13:09:27'),
(3, NULL, 'Laravel Personal Access Client', '4jQppSXiw9vvbVSNNehoeyB74jVKZQELE6zX9qwa', NULL, 'http://localhost', 1, 0, 0, '2020-11-13 07:35:34', '2020-11-13 07:35:34'),
(4, NULL, 'Laravel Password Grant Client', '3sBw1r4G4EpMbQiHPcSyjSJwIrLL0QOldr0vw8Ud', 'users', 'http://localhost', 0, 1, 0, '2020-11-13 07:35:34', '2020-11-13 07:35:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-10 13:09:27', '2020-11-10 13:09:27'),
(2, 3, '2020-11-13 07:35:34', '2020-11-13 07:35:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2020-10-20 14:23:20', '2020-10-20 14:23:20'),
(2, 'editor', 'editor', NULL, '2020-10-20 14:23:20', '2020-10-20 14:23:20'),
(3, 'author', 'author', NULL, '2020-10-20 14:23:20', '2020-10-20 14:23:20');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 3, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ivan', 'qwert@gmail.com', NULL, '$2y$10$t2X/QH7tgEjwZ.mBBESuYOjoJZQuOuhKSsvq1lBHZhl2NSdZS8vou', NULL, '2020-10-19 10:51:14', '2020-10-19 10:51:14'),
(2, 'petr', 'qwert2@gmail.com', NULL, '$2y$10$fDi0Vs8fy8qxrOYpdTmo6OAh56AQs65RhrNDdhZniPN3XImDMDitG', NULL, '2020-10-19 10:52:44', '2020-10-19 10:52:44'),
(3, 'boris', 'qwert3@gmail.com', NULL, '$2y$10$pKaGR14azxJzGiINoWW8wuMx0r/1CO5KJ5u4AjklehCLJZXyDaZdK', NULL, '2020-10-19 10:53:33', '2020-10-19 10:53:33'),
(5, 'Bill', 'BillClinton@gmail.com', NULL, '$2y$10$cAfHJaS4XidzCDkWa8u6oOREB43eDgeJ9Zg3duWVLKlbJImbBbOq.', NULL, '2020-10-30 12:27:28', '2020-10-30 12:27:28'),
(6, 'Barack', 'BarackObama@gmail.com', NULL, '$2y$10$y5zzvgnK.Lz4SsPWtKNCTONqUNE7hCFtgt.Up0hhZ3ljMe1BWtn7u', NULL, '2020-10-30 12:29:07', '2020-10-30 12:29:07'),
(7, 'Leonid', 'LeonidBreznev@gmail.com', NULL, '$2y$10$TMhnL7i8.sOXooOPhWzfm.ToDtwLHp1vo6dUOQvPXBBLuB.9VmsgG', NULL, '2020-10-30 12:30:37', '2020-10-30 12:30:37'),
(8, 'Nickita', 'NickitaHrushchov@gmail.com', NULL, '$2y$10$RgRZ7aY.tEKgqa7iNAdiAOWJiSX0VqIBSaZ9yK7fGTBJqruQX5eM2', NULL, '2020-10-30 12:33:06', '2020-10-30 12:33:06'),
(10, 'Gorby', 'gorby@gmail.com', NULL, '$2y$10$1DqHR8X11IgSXqC3ZR7PgOIp8WiCMxRFmwEuCGFSPQiZvW77/oG/m', NULL, '2020-10-30 14:58:16', '2020-10-30 14:58:16'),
(11, 'John', 'JohnCennedy@gmail.com', NULL, '11111111', NULL, NULL, NULL),
(12, 'Jimmy', 'JimmiCarter@gmail.com', NULL, '11111111', NULL, NULL, NULL),
(13, 'unknow', 'unknow@gmail.com', NULL, '11111111', NULL, NULL, NULL);


--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Индексы таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
