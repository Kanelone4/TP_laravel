-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 28 juil. 2024 à 23:41
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `name`, `biography`, `created_at`, `updated_at`) VALUES
(3, 'Victor Hugo', 'Victor Hugo, parfois surnommé l\'Homme océan ou, de manière posthume, l\'Homme siècle, est un poète, dramaturge, écrivain, romancier et dessinateur romantique français, né le 7 ventôse an X (26 février 1802) à Besançon et mort le 22 mai 1885 à Paris. Il est considéré comme l\'un des écrivains de la langue française et de la littérature mondiale les plus importants.', '2024-07-25 20:18:26', '2024-07-26 13:18:19'),
(4, 'Maxime Lorant', 'Maxime Lorant is a technical lead who has made significant contributions in the field of web development. He studied at the IUT de Vannes and later at the INSA de Rennes.', '2024-07-25 20:18:26', '2024-07-25 20:18:26'),
(5, 'Henri Poincaré', 'Henri Poincaré, born on April 29, 1854, in Nancy, France, was a remarkable mathematician, theoretical physicist, and philosopher of science. His contributions spanned various fields, and here are some key aspects of his life and work', '2024-07-25 20:18:26', '2024-07-25 20:18:26'),
(6, 'J.J. Rousseau', 'Jean-Jacques Rousseau (born June 28, 1712, Geneva, Switzerland—died July 2, 1778, Ermenonville, France) was a Swiss-born philosopher, writer, and political theorist whose treatises and novels inspired the leaders of the French Revolution and the Romantic generation.', '2024-07-25 20:18:26', '2024-07-25 20:18:26'),
(7, 'JK Rowlings', 'Joanne Rowling CH OBE FRSL , known by her pen name J. K. Rowling, is a British author and philanthropist. She wrote Harry Potter, a seven-volume fantasy series published from 1997 to 2007. ', '2024-07-25 20:18:26', '2024-07-25 20:18:26'),
(8, 'honoré de balzac', 'Honoré de Balzac, nom de plume d\'Honoré Balzacn 1, né le 20 mai 1799 (1er prairial an VII du calendrier républicain) à Tours et mort le 18 août 1850 à Paris, est un écrivain français.', '2024-07-25 22:38:58', '2024-07-25 22:38:58'),
(11, 'Voltaire', 'Inhumé en 1791, Voltaire est souvent présenté comme l\'inventeur du conte philosophique. Cet écrivain français a lutté contre l\'obscurantisme, l\'intolérance et à peu près tous les maux moraux de son siècle. Écrivain et philosophe français du XVIIIe siècle, il est connu pour son esprit vif et son influence sur les Lumières.', '2024-07-26 14:33:14', '2024-07-26 14:33:14'),
(12, 'Émile', 'Journaliste et chef de file du naturalisme, ses célèbres romans ont été traduits dans toutes les langues et adaptés pour certains au cinéma ou à la télévision. Ce grand écrivain français du XIXe siècle, est connu pour son style réaliste, son engagement en faveur de la justice sociale, son rôle dans l\'affaire Dreyfus (J\'accuse), qui lui vaut un procès pour diffamation et l\'obligea à gagner Londres, et son influence sur le naturalisme littéraire.', '2024-07-26 14:34:01', '2024-07-26 14:34:16'),
(13, 'André Malraux', 'André Malraux était un écrivain engagé, un aventurier exceptionnel et un homme politique autodidacte. Il a reçu le Prix Goncourt en 1933 pour La Condition Humaine, un roman d\'aventures et de littérature engagée. Ses cendres ont été transférées au Panthéon en 1996, pour le 20e anniversaire de sa mort.', '2024-07-26 14:34:49', '2024-07-26 14:34:49'),
(14, 'Alexandre Dumas', 'L\'auteur des Trois Mousquetaires est entré au Panthéon en 2002. Il a créé des personnages et des intrigues considérées comme des classiques du roman historique et fut aidé dans l\'écriture de ses romans par Auguste Maquet.', '2024-07-26 14:58:05', '2024-07-26 14:58:05'),
(15, 'Michel de Montaigne', '(1533 -1592)\r\nL\'auteur de Les Essais, incarne la Renaissance littéraire et l\'Humanisme qui gagna l\'Europe du XVIe siècle. Cet esprit libre nous a laissé une œuvre philosophique et littéraire hors du commun et une vision sceptique du monde.', '2024-07-26 14:59:00', '2024-07-26 14:59:00'),
(16, 'Albert Camus', '(1913 - 1960)\r\nCamus a reçu le prix Nobel en 1957. Dramaturge, romancier et philosophe, son œuvre originale ne s\'inscrit dans aucun système de pensée. Il a fait de l\'absurde le thème principal de son œuvre.', '2024-07-26 15:00:37', '2024-07-26 15:00:37'),
(17, 'Jean-Paul Sartre', 'Jean-Paul Sartre, écrivain et philosophe français du XXe siècle, était connu pour son existentialisme, son engagement politique à gauche, son refus du prix Nobel de littérature, son influence sur la théorie critique et sa relation avec Simone de Beauvoir. Il a également été acteur et a écrit des pièces de théâtre.', '2024-07-26 15:01:32', '2024-07-26 15:01:32'),
(18, 'Diderot', '(1713 – 1784)\r\n\r\n Ecrivain et philosophe français considéré par son époque comme \"le philosophe\" par excellence, il manifeste un génie multiple, créant la critique d\'art (Salon, 1759-1781).', '2024-07-26 15:02:55', '2024-07-26 15:02:55'),
(19, 'Marcel Proust', 'Marcel Proust est largement considéré comme l’un des écrivains les plus influents du XXe siècle. Il est né après la guerre franco-prussienne, alors que la France connaissait de nombreux changements sociétaux. C’est pourquoi nombre de ses romans portent sur le déclin de l’aristocratie et la montée de la classe ouvrière.', '2024-07-26 15:04:12', '2024-07-26 15:04:12');

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_year` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`id`, `title`, `pdf`, `author_id`, `isbn`, `published_year`, `created_at`, `updated_at`) VALUES
(10, 'Les Misérables', 'Les_Miserables.pdf', 3, '2010008995', 1862, '2024-07-26 00:51:42', '2024-07-26 13:09:44'),
(12, 'Notre-Dame de Paris', 'notre-dame-de-paris-victor-hugo.pdf', 3, '2019068495', 1831, '2024-07-26 15:08:14', '2024-07-26 15:08:14'),
(13, 'Les Châtiments', 'hugo-les-chatiments_compress.pdf', 3, '2010008954', 1853, '2024-07-26 15:10:14', '2024-07-26 15:10:14'),
(14, 'Développez votre site web avec le framework Django', 'Developpez votre site web avec le framework Django.pdf', 4, '2219772467', 2015, '2024-07-26 15:12:42', '2024-07-26 15:12:42'),
(15, 'La Science et l\'hypothèse', 'La science et l\'hypothèse.pdf', 5, '3000906854', 2011, '2024-07-26 15:15:45', '2024-07-26 15:15:45'),
(16, 'Les Sciences et les Humanités', 'Les Sciences et les humanités.pdf', 5, '0090693754', 2016, '2024-07-26 15:16:52', '2024-07-26 15:16:52'),
(17, 'Théorie analytique de la propagation de la chaleur', '', 5, '2019068693', 2008, '2024-07-26 15:17:49', '2024-07-26 15:17:49'),
(18, 'Candide ou l\'Optimisme', 'candide.pdf', 11, '200988395', 1759, '2024-07-27 11:41:41', '2024-07-27 11:41:41'),
(19, 'Zadig ou la Destinée', 'Voltaire-Zadig.pdf', 11, '2206077267', 1747, '2024-07-27 11:42:29', '2024-07-27 11:42:29'),
(20, 'Le Blanc et le Noir', 'Voltaire-blanc.pdf', 11, '2210782656', 1764, '2024-07-27 11:44:44', '2024-07-27 11:44:44');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_25_122927_create_authors_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7LWwu8NE1LDUM6Lu80Z1VSNLA6PHpDYjTkK8cVgr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzluVEh0YjBlcUtiUGpwZ09mQzZoZlhpc2lEREJJTlMyYjRFcUl3WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hdXRob3JzLzMvYm9va3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722185110),
('LazjMDjXKcw7aGHuSwnN8D6DKxfwdMP2kkXyFwNH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3lramhocUZMWUNDSkUxU2ZqU3V4c01WTlhwd0lQYTZCbng3YVVjNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rcy9pbmRleC9zZWFyY2hlZD9fdG9rZW49T3lramhocUZMWUNDSkUxU2ZqU3V4c01WTlhwd0lQYTZCbng3YVVjNCZzZWFyY2g9bSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722202560);

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Index pour les tables déchargées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
