-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 03:50 PM
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
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`) VALUES
(1, 'Fiction Books', '/imgs/logo.jpg', 'This is a good choice for people who loves to read about fiction. '),
(2, 'Mystery Books', '/imgs/Mystery.jfif', 'This is a good choice for people who loves to read about Mystery. '),
(3, 'History Books', '/imgs/History.jfif', 'This is a good choice for people who loves to read about History. '),
(4, 'Thriller Books', '/imgs/Thriller.jfif', 'This is a good choice for people who loves to read about Thriller. ');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240613145420', '2024-06-13 16:54:26', 30),
('DoctrineMigrations\\Version20240613145618', '2024-06-13 16:56:22', 12),
('DoctrineMigrations\\Version20240613145740', '2024-06-13 16:57:45', 10),
('DoctrineMigrations\\Version20240614102757', '2024-06-14 12:28:11', 21),
('DoctrineMigrations\\Version20240614103024', '2024-06-14 12:30:31', 20),
('DoctrineMigrations\\Version20240616200835', '2024-06-16 22:08:42', 19),
('DoctrineMigrations\\Version20240617014857', '2024-06-17 03:49:03', 34),
('DoctrineMigrations\\Version20240617015036', '2024-06-17 03:50:43', 16),
('DoctrineMigrations\\Version20240617015226', '2024-06-17 03:52:31', 24),
('DoctrineMigrations\\Version20240617015417', '2024-06-17 03:54:23', 43),
('DoctrineMigrations\\Version20240617015651', '2024-06-17 03:56:55', 35),
('DoctrineMigrations\\Version20240617020043', '2024-06-17 04:00:50', 20),
('DoctrineMigrations\\Version20240617154732', '2024-06-17 17:47:39', 216),
('DoctrineMigrations\\Version20240617172757', '2024-06-17 19:28:26', 89),
('DoctrineMigrations\\Version20240619100617', '2024-06-19 12:07:46', 122),
('DoctrineMigrations\\Version20240619100759', '2024-06-19 12:08:30', 28),
('DoctrineMigrations\\Version20240619101244', '2024-06-19 12:12:51', 90),
('DoctrineMigrations\\Version20240619101429', '2024-06-19 12:14:37', 65),
('DoctrineMigrations\\Version20240619102612', '2024-06-19 12:27:04', 199),
('DoctrineMigrations\\Version20240619103712', '2024-06-19 12:37:22', 79),
('DoctrineMigrations\\Version20240619104644', '2024-06-19 12:46:51', 66),
('DoctrineMigrations\\Version20240619104938', '2024-06-19 12:49:45', 50),
('DoctrineMigrations\\Version20240619132923', '2024-06-19 15:29:44', 319),
('DoctrineMigrations\\Version20240620144235', '2024-06-20 16:42:55', 105);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `category_id`) VALUES
(2, 'Echoes of the Eternal Flame', '/imgs/Fiction.jfif', 'This is a good book to read.', 20.99, 1),
(3, 'The Last Starfall', '/imgs/Fiction.jfif', 'This is a good book to read.', 11.99, 1),
(4, 'Dune', '/imgs/Fiction.jfif', 'This is a good book to read.', 16.99, 1),
(5, 'The Hobbit', '/imgs/Fiction.jfif', 'This is a good book to read.', 21.99, 1),
(6, 'The Da Vinci Code', '/imgs/Mystery.jfif', 'This is about the mystery stories.', 10.99, 2),
(7, 'Gone Girl', '/imgs/Mystery.jfif', 'This is about the mystery stories.', 25.99, 2),
(8, 'The Hound of the Baskervilles', '/imgs/Mystery.jfif', 'This is about the mystery stories.', 12.99, 2),
(9, 'The Girl with the Dragon Tattoo', '/imgs/Thriller.jfif', 'This is all about a adventure to figure it out.', 23.99, 4),
(10, 'The Silence of the Lambs', '/imgs/Thriller.jfif', 'This is all about a adventure to figure it out.', 13.99, 4),
(11, 'Gone Tomorrow', '/imgs/Thriller.jfif', 'This is all about a adventure to figure it out.', 17.99, 4),
(13, 'The Guns of August', '/imgs/History.jfif', 'THis book provide insightful perspectives and comprehensive overviews of various historical events, eras, and figures.', 12.99, 3),
(14, 'The Silk Roads', '/imgs/History.jfif', 'THis book provide insightful perspectives and comprehensive overviews of various historical events, eras, and figures.', 14.99, 3),
(15, 'The World: A Brief Introduction', '/imgs/History.jfif', 'THis book provide insightful perspectives and comprehensive overviews of various historical events, eras, and figures.', 16.99, 3),
(16, 'Iron Curtain: The Crushing of Eastern Europe', '/imgs/History.jfif', 'THis book provide insightful perspectives and comprehensive overviews of various historical events, eras, and figures.', 14.99, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(7, 'jamelalhaji@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$YKNpjLU5EAOttKhABtqg4uOWac1fFt5LkmIl7y6/2xA2QbEXH2IZW'),
(8, 'ahmad@gmail.com', '[\"ROLE_CLIENT\"]', '$2y$13$IBXV2ezwgN84WEaoaaxu5ugve4ALpF7G57GRGcnvJdYXhvfhA0Aja'),
(9, 'ali@gmail.com', '[\"ROLE_CLIENT\"]', '$2y$13$T3IbF4B1jY817Nv6IIqBL.oVtQeJZbjLVDk9DrlsCaLuJ4cbBnBRe'),
(11, 'mo@gmail.com', '[\"ROLE_CLIENT\"]', '$2y$13$DTNZCli3NFbFIJIoH8kXSuXZdit7A9xwZgiIliuvEKJfkKPV6il7a'),
(12, 'a@a.nl', '[\"ROLE_CLIENT\"]', '$2y$13$Vst2znyt7HJeDGBJubirAuvRsKJKMaXzaOjwrtpILTq5a8DNjdLiq'),
(13, 'b@b.nl', '[\"ROLE_CLIENT\"]', '$2y$13$HaS4PfFNcc6IpFe6rca9JuxlQ2pMEo/LSeiggCs2bT2Y94agqzqzm'),
(14, 'ali20@gmail.com', '[\"ROLE_CLIENT\"]', '$2y$13$qZJutcMWqB1.A7cQUW6iMunQQX/hGBgKcKXOVr8HYJ/wBscPld.ly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B3BA5A5A12469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5A12469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
