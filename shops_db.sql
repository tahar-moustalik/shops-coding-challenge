-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 08 avr. 2019 à 17:22
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `shops_challenge`
--
CREATE DATABASE IF NOT EXISTS `shops_challenge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shops_challenge`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_22_193950_create_shops_table', 2),
(4, '2019_03_22_194147_create_user_liked_shops_table', 2),
(5, '2019_03_22_194310_create_user_disliked_shops_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_latitude` double NOT NULL,
  `shop_longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`shop_id`, `shop_name`, `shop_image`, `shop_latitude`, `shop_longitude`, `created_at`, `updated_at`) VALUES
(1, 'Nicolas Inc', NULL, 55.6665482, 12.556108, NULL, NULL),
(2, 'Hayes, Parker and Jones', NULL, 37.6837922, 138.8825459, NULL, NULL),
(3, 'Lang and Sons', NULL, 31.685608, 35.120362, NULL, NULL),
(4, 'Cummerata, Spinka and Padberg', NULL, 12.6920562, 109.2221964, NULL, NULL),
(5, 'Bins-Ritchie', NULL, 7.7321516, 8.539144, NULL, NULL),
(6, 'Farrell, Schoen and Russel', NULL, 13.6867437, 123.1989968, NULL, NULL),
(7, 'Muller, Rice and Johnston', NULL, 13.1225519, 5.5053129, NULL, NULL),
(8, 'Kulas, Wisoky and Collier', NULL, 53.0210495, 27.554013, NULL, NULL),
(9, 'VonRueden-Dibbert', NULL, -8.5934865, 116.8969234, NULL, NULL),
(10, 'Walsh, Crist and Kuhlman', NULL, 16.1069981, 108.2521815, NULL, NULL),
(11, 'Connelly-Rogahn', NULL, -10.28917, 123.70037, NULL, NULL),
(12, 'Hirthe, Mitchell and Wyman', NULL, -21.5679739, -45.7142063, NULL, NULL),
(13, 'Purdy-Medhurst', NULL, 23.320477, 111.2138, NULL, NULL),
(14, 'Marks, O\'Keefe and Legros', NULL, -8.4963229, 123.3766669, NULL, NULL),
(15, 'Hahn-Morissette', NULL, 50.8579559, 32.3974889, NULL, NULL),
(16, 'Tremblay, Marks and Schuster', NULL, 10.2535534, -67.9583246, NULL, NULL),
(17, 'Reichel, Robel and Bartell', NULL, 12.3420676, 14.1858272, NULL, NULL),
(18, 'Jenkins, Smith and Waters', NULL, 6.1724969, 1.2313618, NULL, NULL),
(19, 'Murphy Group', NULL, 59.9026039, 10.767309, NULL, NULL),
(20, 'Lakin Group', NULL, 40.2982408, 70.419388, NULL, NULL),
(21, 'Hilpert-Bahringer', NULL, 15.670299, 100.4846227, NULL, NULL),
(22, 'Schumm, Rohan and Schimmel', NULL, 43.4945737, 5.8978018, NULL, NULL),
(23, 'Buckridge-Pagac', NULL, 56.3825759, 14.0267172, NULL, NULL),
(24, 'Leannon-Dickinson', NULL, 50.7113724, 25.8291867, NULL, NULL),
(25, 'Langworth, O\'Keefe and Zieme', NULL, 39.0638705, -108.5506486, NULL, NULL),
(26, 'D\'Amore, Hirthe and Keeling', NULL, -25.0993621, -50.1584514, NULL, NULL),
(27, 'Kub Group', NULL, -15.741151, -43.0280584, NULL, NULL),
(28, 'Conn, Hilpert and Bernhard', NULL, 18.0735299, -15.9582372, NULL, NULL),
(29, 'Rippin, Boehm and Frami', NULL, -15.712819, 28.5797981, NULL, NULL),
(30, 'Wisozk-Windler', NULL, 39.905131, 112.505924, NULL, NULL),
(31, 'Lowe, Walsh and Steuber', NULL, 36.6484118, 9.6146499, NULL, NULL),
(32, 'Schaefer LLC', NULL, 43.4945737, 5.8978018, NULL, NULL),
(33, 'Nolan-Terry', NULL, 0.2827307, 34.7518631, NULL, NULL),
(34, 'Braun, Thiel and Pouros', NULL, 11.1856085, 124.9202302, NULL, NULL),
(35, 'Stroman Inc', NULL, 30.299559, 108.039002, NULL, NULL),
(36, 'Reilly, Stanton and Rice', NULL, 25.5311276, 69.0397556, NULL, NULL),
(37, 'Daniel-Hessel', NULL, 39.2167, -9.2167, NULL, NULL),
(38, 'McKenzie LLC', NULL, 45.9018536, 6.121072, NULL, NULL),
(39, 'Marvin, Bernhard and Fisher', NULL, 13.8503992, 123.7585154, NULL, NULL),
(40, 'Hammes, Yost and Cassin', NULL, 58.8144355, 40.7334111, NULL, NULL),
(41, 'Labadie Group', NULL, -36.6131562, -72.9588593, NULL, NULL),
(42, 'Muller, Legros and Rau', NULL, -34.7235134, -58.7945777, NULL, NULL),
(43, 'Padberg Group', NULL, -6.5142035, -79.1188656, NULL, NULL),
(44, 'Batz, Russel and Hermann', NULL, -6.3621916, 106.8502879, NULL, NULL),
(45, 'Beatty Inc', NULL, 30.9457638, 121.4371451, NULL, NULL),
(46, 'Nikolaus LLC', NULL, 14.8165996, 106.9329091, NULL, NULL),
(47, 'Watsica LLC', NULL, 21.3410625, 105.0089888, NULL, NULL),
(48, 'Hauck LLC', NULL, 14.160407, -87.0399404, NULL, NULL),
(49, 'Heathcote, Abbott and Hessel', NULL, -6.2691666, 106.05, NULL, NULL),
(50, 'Glover-Hessel', NULL, 53.09697, -113.4729375, NULL, NULL),
(51, 'Effertz, Skiles and Wolff', NULL, 18.5049101, -69.8296974, NULL, NULL),
(52, 'Hodkiewicz, Prohaska and Kunde', NULL, 48.2044234, 5.942257, NULL, NULL),
(53, 'McGlynn, Fay and Friesen', NULL, 5.1650775, 96.3372305, NULL, NULL),
(54, 'Kiehn, Klein and Langosh', NULL, 50.1267067, 45.4468585, NULL, NULL),
(55, 'Macejkovic, Marks and Lang', NULL, -30.031249, 29.8439109, NULL, NULL),
(56, 'Howell-Reinger', NULL, -31.6577222, -60.7829517, NULL, NULL),
(57, 'Jast-Schmitt', NULL, 24.315499, 109.410683, NULL, NULL),
(58, 'Grimes-Hansen', NULL, -18.8228804, -40.9050432, NULL, NULL),
(59, 'Smitham-Maggio', NULL, -41.3167, -72.9833, NULL, NULL),
(60, 'Hettinger, Goyette and MacGyver', NULL, 45.3982443, 16.8946158, NULL, NULL),
(61, 'Armstrong, Ortiz and Kirlin', NULL, 31.026665, 119.910952, NULL, NULL),
(62, 'Jones-Ondricka', NULL, -43.1169327, -73.6138821, NULL, NULL),
(63, 'Beatty-Kris', NULL, -6.8775, 111.8752, NULL, NULL),
(64, 'Schimmel-Schuster', NULL, 49.1141224, 16.1902227, NULL, NULL),
(65, 'Mann-Kuphal', NULL, 3.9671435, 103.40391, NULL, NULL),
(66, 'Kreiger-Flatley', NULL, 30.2733296, 120.1672735, NULL, NULL),
(67, 'Deckow, Casper and Gleason', NULL, 45.4235609, -73.9319061, NULL, NULL),
(68, 'Carter and Sons', NULL, 38.6026034, -90.4365807, NULL, NULL),
(69, 'Batz-Homenick', NULL, 8.7069226, -82.4861053, NULL, NULL),
(70, 'Murray and Sons', NULL, 9.9298167, -73.9590333, NULL, NULL),
(71, 'O\'Connell Inc', NULL, 41.0647873, -8.5507322, NULL, NULL),
(72, 'Bosco-Veum', NULL, 40.076762, 113.300129, NULL, NULL),
(73, 'Prosacco-Wolff', NULL, 32.417346, 105.238901, NULL, NULL),
(74, 'Ruecker-Towne', NULL, -40.1382194, -71.2883704, NULL, NULL),
(75, 'Gaylord-Wolff', NULL, 32.8924632, 130.6828947, NULL, NULL),
(76, 'Wolf-Johnston', NULL, 29.099294, 119.692696, NULL, NULL),
(77, 'Kerluke-Koepp', NULL, 16.1818, 43.60986, NULL, NULL),
(78, 'Lebsack Inc', NULL, 43.6743315, 15.9193188, NULL, NULL),
(79, 'Ebert LLC', NULL, 40.3464743, -7.8548033, NULL, NULL),
(80, 'Crooks-McLaughlin', NULL, 53.21983, 15.75932, NULL, NULL),
(81, 'Cormier Group', NULL, -26.0396759, 27.8452537, NULL, NULL),
(82, 'Walker, Thiel and Treutel', NULL, -7.0117033, 108.3682641, NULL, NULL),
(83, 'Schiller-Kerluke', NULL, 52.9718428, 63.1128326, NULL, NULL),
(84, 'Bechtelar and Sons', NULL, 54.4026022, 22.0193739, NULL, NULL),
(85, 'Homenick Inc', NULL, -22.4939375, -47.4294326, NULL, NULL),
(86, 'Dibbert, Torphy and Kirlin', NULL, 37.8456119, 68.7989617, NULL, NULL),
(87, 'Mosciski LLC', NULL, -6.2284889, 106.9602906, NULL, NULL),
(88, 'Mills, Feeney and Bednar', NULL, -25.1042007, -65.5381671, NULL, NULL),
(89, 'Conroy LLC', NULL, -8.5697306, 123.3991028, NULL, NULL),
(90, 'Sipes LLC', NULL, 47.747805, 87.51972, NULL, NULL),
(91, 'Cartwright, Stoltenberg and Leannon', NULL, 13.4712468, 101.0978724, NULL, NULL),
(92, 'Rempel LLC', NULL, -7.3559, 107.8034, NULL, NULL),
(93, 'Gusikowski and Sons', NULL, -6.7397149, 23.9476988, NULL, NULL),
(94, 'Bednar-Skiles', NULL, 26.89745, 68.40681, NULL, NULL),
(95, 'McKenzie and Sons', NULL, 36.7818033, 140.7299857, NULL, NULL),
(96, 'Beier LLC', NULL, -15.4806094, -44.3642956, NULL, NULL),
(97, 'Miller, McGlynn and Davis', NULL, 41.9870319, 21.4362855, NULL, NULL),
(98, 'Parisian-Harris', NULL, 16.85836, 43.19781, NULL, NULL),
(99, 'Waters, Lowe and Mueller', NULL, 32.225262, 35.070676, NULL, NULL),
(100, 'Douglas LLC', NULL, 56.81, 40.51, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_lat` double DEFAULT NULL,
  `user_lng` double DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `user_lat`, `user_lng`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'demo@gmail.com', NULL, '$2y$10$sHyv.SYC8igszJLvDx7mouGh7VxEtJGX9QxrVxb1QxpJi.BIJCwTG', 31.633408, -8.0084992, NULL, '2019-04-08 14:21:53', '2019-04-08 14:21:53');

-- --------------------------------------------------------

--
-- Structure de la table `user_disliked_shops`
--

CREATE TABLE `user_disliked_shops` (
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_disliked_shops`
--

INSERT INTO `user_disliked_shops` (`shop_id`, `user_id`, `created_at`, `updated_at`) VALUES
(28, 5, '2019-04-08 12:54:03', '2019-04-08 12:54:03'),
(31, 5, '2019-04-08 12:54:50', '2019-04-08 12:54:50'),
(32, 5, '2019-04-08 12:55:24', '2019-04-08 12:55:24'),
(38, 5, '2019-04-08 13:06:12', '2019-04-08 13:06:12'),
(80, 5, '2019-04-08 13:23:27', '2019-04-08 13:23:27');

-- --------------------------------------------------------

--
-- Structure de la table `user_liked_shops`
--

CREATE TABLE `user_liked_shops` (
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_liked_shops`
--

INSERT INTO `user_liked_shops` (`shop_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 5, '2019-04-08 13:06:29', '2019-04-08 13:06:29'),
(37, 5, '2019-04-08 13:13:24', '2019-04-08 13:13:24'),
(22, 5, '2019-04-08 13:13:35', '2019-04-08 13:13:35'),
(78, 5, '2019-04-08 13:14:35', '2019-04-08 13:14:35'),
(97, 5, '2019-04-08 13:14:46', '2019-04-08 13:14:46'),
(64, 5, '2019-04-08 13:19:55', '2019-04-08 13:19:55'),
(18, 5, '2019-04-08 13:22:54', '2019-04-08 13:22:54'),
(1, 5, '2019-04-08 13:23:23', '2019-04-08 13:23:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
