-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Nov 2017 pada 10.03
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_dota2_guide`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_guide`
--

CREATE TABLE `detail_guide` (
  `id` int(11) NOT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tab` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_guide`
--

INSERT INTO `detail_guide` (`id`, `guide_id`, `item_id`, `tab`, `created_at`, `updated_at`) VALUES
(89, 1, 11, 1, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(90, 1, 16, 1, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(91, 1, 19, 1, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(92, 1, 21, 1, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(93, 1, 55, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(94, 1, 98, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(95, 1, 118, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(96, 1, 121, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(97, 1, 124, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(98, 1, 125, 2, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(99, 1, 8, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(100, 1, 69, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(101, 1, 76, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(102, 1, 95, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(103, 1, 97, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(104, 1, 136, 3, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(105, 1, 148, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(106, 1, 149, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(107, 1, 150, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(108, 1, 151, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(109, 1, 152, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49'),
(110, 1, 153, 4, '2017-11-08 00:37:49', '2017-11-08 00:37:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guide`
--

CREATE TABLE `guide` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hero_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `cost` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guide`
--

INSERT INTO `guide` (`id`, `user_id`, `hero_id`, `title`, `description`, `cost`, `status`, `views`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'The Best Antimage Carry', 'guide paling ampuh yang pernah ada pada jagat raya ini.', 53185, 1, 0, '2017-11-07 21:22:54', '2017-11-08 00:37:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `heros`
--

CREATE TABLE `heros` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `strength` float DEFAULT NULL,
  `intelligence` float DEFAULT NULL,
  `agility` float DEFAULT NULL,
  `health` float DEFAULT NULL,
  `mana` float DEFAULT NULL,
  `demage_a` int(10) DEFAULT NULL,
  `demage_b` int(10) DEFAULT NULL,
  `armor` float DEFAULT NULL,
  `evasion` float DEFAULT NULL,
  `mov_speed` float DEFAULT NULL,
  `faction` int(1) DEFAULT NULL,
  `primary_att` int(1) DEFAULT NULL,
  `atk_type` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `heros`
--

INSERT INTO `heros` (`id`, `name`, `img`, `strength`, `intelligence`, `agility`, `health`, `mana`, `demage_a`, `demage_b`, `armor`, `evasion`, `mov_speed`, `faction`, `primary_att`, `atk_type`, `created_at`, `updated_at`) VALUES
(1, 'Antimage', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_lg.png', 54, 57, 92, 1480, 1014, 49, 53, 3, 16, 310, 1, 2, 1, '2017-11-07 03:08:05', '2017-11-07 20:31:26'),
(2, 'Axe', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(3, 'Bane', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(4, 'Bloodseeker', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(5, 'Crystal Maiden', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(6, 'Drow Ranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(7, 'Earthshaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(8, 'Juggernaut', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(9, 'Mirana', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(10, 'Nevermore', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(11, 'Morphling', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(12, 'Phantom Lancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(13, 'Puck', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(14, 'Pudge', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(15, 'Razor', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(16, 'Sand King', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(17, 'Storm Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(18, 'Sven', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(19, 'Tiny', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(20, 'Vengefulspirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(21, 'Windrunner', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(22, 'Zuus', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(23, 'Kunkka', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(24, 'Lina', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(25, 'Lich', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(26, 'Lion', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(27, 'Shadow Shaman', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(28, 'Slardar', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(29, 'Tidehunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(30, 'Witch Doctor', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(31, 'Riki', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(32, 'Enigma', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(33, 'Tinker', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(34, 'Sniper', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(35, 'Necrolyte', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(36, 'Warlock', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(37, 'Beastmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(38, 'Queenofpain', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(39, 'Venomancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(40, 'Faceless Void', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(41, 'Skeleton King', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(42, 'Death Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(43, 'Phantom Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(44, 'Pugna', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(45, 'Templar Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(46, 'Viper', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(47, 'Luna', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(48, 'Dragon Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(49, 'Dazzle', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(50, 'Rattletrap', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(51, 'Leshrac', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(52, 'Furion', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(53, 'Life Stealer', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(54, 'Dark Seer', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(55, 'Clinkz', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(56, 'Omniknight', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(57, 'Enchantress', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(58, 'Huskar', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(59, 'Night Stalker', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(60, 'Broodmother', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(61, 'Bounty Hunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(62, 'Weaver', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(63, 'Jakiro', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(64, 'Batrider', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(65, 'Chen', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(66, 'Spectre', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(67, 'Doom Bringer', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(68, 'Ancient Apparition', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(69, 'Ursa', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(70, 'Spirit Breaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(71, 'Gyrocopter', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(72, 'Alchemist', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(73, 'Invoker', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(74, 'Silencer', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(75, 'Obsidian Destroyer', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(76, 'Lycan', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(77, 'Brewmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(78, 'Shadow Demon', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(79, 'Lone Druid', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(80, 'Chaos Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(81, 'Meepo', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(82, 'Treant', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(83, 'Ogre Magi', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(84, 'Undying', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(85, 'Rubick', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(86, 'Disruptor', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(87, 'Nyx Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(88, 'Naga Siren', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(89, 'Keeper Of The Light', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(90, 'Wisp', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(91, 'Visage', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(92, 'Slark', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(93, 'Medusa', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(94, 'Troll Warlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(95, 'Centaur', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(96, 'Magnataur', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(97, 'Shredder', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(98, 'Bristleback', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(99, 'Tusk', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(100, 'Skywrath Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(101, 'Abaddon', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(102, 'Elder Titan', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(103, 'Legion Commander', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(104, 'Ember Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(105, 'Earth Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(106, 'Terrorblade', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(107, 'Phoenix', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(108, 'Oracle', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(109, 'Techies', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(110, 'Winter Wyvern', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(111, 'Arc Warden', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(112, 'Abyssal Underlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(113, 'Monkey King', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(114, 'Pangolier', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05'),
(115, 'Dark Willow', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_lg.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 03:08:05', '2017-11-07 03:08:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `cost` float NOT NULL,
  `descriptions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `name`, `img`, `cost`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Blink Dagger', 'http://cdn.dota2.com/apps/dota2/images/items/blink_lg.png', 2250, '<p><strong>Active: Blink</strong></p><p>Teleport to a target point up to 1200 units away. If damage is taken from an enemy hero, Blink Dagger cannot be used for 3 seconds.</p><p><strong>Cast Range: Global</strong></p><p><strong>Max Blink Distance: 1200</strong></p>', '2017-11-07 03:16:39', '2017-11-07 20:36:47'),
(2, 'Blades Of Attack', 'http://cdn.dota2.com/apps/dota2/images/items/blades_of_attack_lg.png', 420, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(3, 'Broadsword', 'http://cdn.dota2.com/apps/dota2/images/items/broadsword_lg.png', 1200, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(4, 'Chainmail', 'http://cdn.dota2.com/apps/dota2/images/items/chainmail_lg.png', 550, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(5, 'Claymore', 'http://cdn.dota2.com/apps/dota2/images/items/claymore_lg.png', 1400, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(6, 'Helm Of Iron Will', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_iron_will_lg.png', 900, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(7, 'Javelin', 'http://cdn.dota2.com/apps/dota2/images/items/javelin_lg.png', 1100, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(8, 'Mithril Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/mithril_hammer_lg.png', 1600, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(9, 'Platemail', 'http://cdn.dota2.com/apps/dota2/images/items/platemail_lg.png', 1400, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(10, 'Quarterstaff', 'http://cdn.dota2.com/apps/dota2/images/items/quarterstaff_lg.png', 875, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(11, 'Quelling Blade', 'http://cdn.dota2.com/apps/dota2/images/items/quelling_blade_lg.png', 200, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(12, 'Faerie Fire', 'http://cdn.dota2.com/apps/dota2/images/items/faerie_fire_lg.png', 70, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(13, 'Infused Raindrop', 'http://cdn.dota2.com/apps/dota2/images/items/infused_raindrop_lg.png', 225, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(14, 'Wind Lace', 'http://cdn.dota2.com/apps/dota2/images/items/wind_lace_lg.png', 250, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(15, 'Ring Of Protection', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_protection_lg.png', 175, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(16, 'Stout Shield', 'http://cdn.dota2.com/apps/dota2/images/items/stout_shield_lg.png', 200, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(17, 'Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/moon_shard_lg.png', 4000, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(18, 'Gauntlets', 'http://cdn.dota2.com/apps/dota2/images/items/gauntlets_lg.png', 135, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(19, 'Slippers', 'http://cdn.dota2.com/apps/dota2/images/items/slippers_lg.png', 135, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(20, 'Mantle', 'http://cdn.dota2.com/apps/dota2/images/items/mantle_lg.png', 135, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(21, 'Branches', 'http://cdn.dota2.com/apps/dota2/images/items/branches_lg.png', 50, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(22, 'Belt Of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/belt_of_strength_lg.png', 450, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(23, 'Boots Of Elves', 'http://cdn.dota2.com/apps/dota2/images/items/boots_of_elves_lg.png', 450, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(24, 'Robe', 'http://cdn.dota2.com/apps/dota2/images/items/robe_lg.png', 450, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(25, 'Circlet', 'http://cdn.dota2.com/apps/dota2/images/items/circlet_lg.png', 165, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(26, 'Ogre Axe', 'http://cdn.dota2.com/apps/dota2/images/items/ogre_axe_lg.png', 1000, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(27, 'Blade Of Alacrity', 'http://cdn.dota2.com/apps/dota2/images/items/blade_of_alacrity_lg.png', 1000, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(28, 'Staff Of Wizardry', 'http://cdn.dota2.com/apps/dota2/images/items/staff_of_wizardry_lg.png', 1000, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(29, 'Ultimate Orb', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_orb_lg.png', 2150, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(30, 'Gloves', 'http://cdn.dota2.com/apps/dota2/images/items/gloves_lg.png', 500, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(31, 'Lifesteal', 'http://cdn.dota2.com/apps/dota2/images/items/lifesteal_lg.png', 1100, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(32, 'Ring Of Regen', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_regen_lg.png', 300, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(33, 'Sobi Mask', 'http://cdn.dota2.com/apps/dota2/images/items/sobi_mask_lg.png', 325, NULL, '2017-11-07 03:16:39', '2017-11-07 03:16:39'),
(34, 'Boots', 'http://cdn.dota2.com/apps/dota2/images/items/boots_lg.png', 400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(35, 'Gem', 'http://cdn.dota2.com/apps/dota2/images/items/gem_lg.png', 900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(36, 'Cloak', 'http://cdn.dota2.com/apps/dota2/images/items/cloak_lg.png', 550, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(37, 'Talisman Of Evasion', 'http://cdn.dota2.com/apps/dota2/images/items/talisman_of_evasion_lg.png', 1450, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(38, 'Cheese', 'http://cdn.dota2.com/apps/dota2/images/items/cheese_lg.png', 1000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(39, 'Magic Stick', 'http://cdn.dota2.com/apps/dota2/images/items/magic_stick_lg.png', 200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(40, 'Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/magic_wand_lg.png', 400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(41, 'Ghost', 'http://cdn.dota2.com/apps/dota2/images/items/ghost_lg.png', 1500, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(42, 'Clarity', 'http://cdn.dota2.com/apps/dota2/images/items/clarity_lg.png', 50, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(43, 'Enchanted Mango', 'http://cdn.dota2.com/apps/dota2/images/items/enchanted_mango_lg.png', 100, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(44, 'Flask', 'http://cdn.dota2.com/apps/dota2/images/items/flask_lg.png', 110, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(45, 'Dust', 'http://cdn.dota2.com/apps/dota2/images/items/dust_lg.png', 180, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(46, 'Bottle', 'http://cdn.dota2.com/apps/dota2/images/items/bottle_lg.png', 650, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(47, 'Ward Observer', 'http://cdn.dota2.com/apps/dota2/images/items/ward_observer_lg.png', 80, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(48, 'Ward Sentry', 'http://cdn.dota2.com/apps/dota2/images/items/ward_sentry_lg.png', 100, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(49, 'Ward Dispenser', 'http://cdn.dota2.com/apps/dota2/images/items/ward_dispenser_lg.png', 180, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(50, 'Tango', 'http://cdn.dota2.com/apps/dota2/images/items/tango_lg.png', 150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(51, 'Tango Single', 'http://cdn.dota2.com/apps/dota2/images/items/tango_single_lg.png', 30, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(52, 'Courier', 'http://cdn.dota2.com/apps/dota2/images/items/courier_lg.png', 200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(53, 'Tpscroll', 'http://cdn.dota2.com/apps/dota2/images/items/tpscroll_lg.png', 50, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(54, 'Travel Boots', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_lg.png', 2400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(55, 'Travel Boots 2', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_2_lg.png', 4400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(56, 'Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/phase_boots_lg.png', 1240, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(57, 'Demon Edge', 'http://cdn.dota2.com/apps/dota2/images/items/demon_edge_lg.png', 2200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(58, 'Eagle', 'http://cdn.dota2.com/apps/dota2/images/items/eagle_lg.png', 3200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(59, 'Reaver', 'http://cdn.dota2.com/apps/dota2/images/items/reaver_lg.png', 3000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(60, 'Relic', 'http://cdn.dota2.com/apps/dota2/images/items/relic_lg.png', 3800, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(61, 'Hyperstone', 'http://cdn.dota2.com/apps/dota2/images/items/hyperstone_lg.png', 2000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(62, 'Ring Of Health', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_health_lg.png', 850, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(63, 'Void Stone', 'http://cdn.dota2.com/apps/dota2/images/items/void_stone_lg.png', 850, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(64, 'Mystic Staff', 'http://cdn.dota2.com/apps/dota2/images/items/mystic_staff_lg.png', 2700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(65, 'Energy Booster', 'http://cdn.dota2.com/apps/dota2/images/items/energy_booster_lg.png', 900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(66, 'Point Booster', 'http://cdn.dota2.com/apps/dota2/images/items/point_booster_lg.png', 1200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(67, 'Vitality Booster', 'http://cdn.dota2.com/apps/dota2/images/items/vitality_booster_lg.png', 1100, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(68, 'Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/power_treads_lg.png', 1350, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(69, 'Hand Of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/hand_of_midas_lg.png', 2150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(70, 'Oblivion Staff', 'http://cdn.dota2.com/apps/dota2/images/items/oblivion_staff_lg.png', 1650, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(71, 'Pers', 'http://cdn.dota2.com/apps/dota2/images/items/pers_lg.png', 1700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(72, 'Bracer', 'http://cdn.dota2.com/apps/dota2/images/items/bracer_lg.png', 465, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(73, 'Wraith Band', 'http://cdn.dota2.com/apps/dota2/images/items/wraith_band_lg.png', 465, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(74, 'Null Talisman', 'http://cdn.dota2.com/apps/dota2/images/items/null_talisman_lg.png', 465, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(75, 'Mekansm', 'http://cdn.dota2.com/apps/dota2/images/items/mekansm_lg.png', 2350, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(76, 'Vladmir', 'http://cdn.dota2.com/apps/dota2/images/items/vladmir_lg.png', 2250, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(77, 'Buckler', 'http://cdn.dota2.com/apps/dota2/images/items/buckler_lg.png', 800, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(78, 'Ring Of Basilius', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_basilius_lg.png', 500, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(79, 'Pipe', 'http://cdn.dota2.com/apps/dota2/images/items/pipe_lg.png', 3150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(80, 'Urn Of Shadows', 'http://cdn.dota2.com/apps/dota2/images/items/urn_of_shadows_lg.png', 875, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(81, 'Headdress', 'http://cdn.dota2.com/apps/dota2/images/items/headdress_lg.png', 650, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(82, 'Sheepstick', 'http://cdn.dota2.com/apps/dota2/images/items/sheepstick_lg.png', 5700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(83, 'Orchid', 'http://cdn.dota2.com/apps/dota2/images/items/orchid_lg.png', 4075, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(84, 'Bloodthorn', 'http://cdn.dota2.com/apps/dota2/images/items/bloodthorn_lg.png', 7195, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(85, 'Echo Sabre', 'http://cdn.dota2.com/apps/dota2/images/items/echo_sabre_lg.png', 2650, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(86, 'Cyclone', 'http://cdn.dota2.com/apps/dota2/images/items/cyclone_lg.png', 2750, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(87, 'Aether Lens', 'http://cdn.dota2.com/apps/dota2/images/items/aether_lens_lg.png', 2350, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(88, 'Force Staff', 'http://cdn.dota2.com/apps/dota2/images/items/force_staff_lg.png', 2250, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(89, 'Hurricane Pike', 'http://cdn.dota2.com/apps/dota2/images/items/hurricane_pike_lg.png', 4615, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(90, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_lg.png', 2715, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(91, 'Dagon 2', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_2_lg.png', 3965, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(92, 'Dagon 3', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_3_lg.png', 5215, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(93, 'Dagon 4', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_4_lg.png', 6465, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(94, 'Dagon 5', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_5_lg.png', 7715, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(95, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_lg.png', 2400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(96, 'Necronomicon 2', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_2_lg.png', 3700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(97, 'Necronomicon 3', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_3_lg.png', 5000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(98, 'Ultimate Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_scepter_lg.png', 4200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(99, 'Refresher', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_lg.png', 5200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(100, 'Assault', 'http://cdn.dota2.com/apps/dota2/images/items/assault_lg.png', 5250, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(101, 'Heart', 'http://cdn.dota2.com/apps/dota2/images/items/heart_lg.png', 5200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(102, 'Black King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/black_king_bar_lg.png', 3975, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(103, 'Shivas Guard', 'http://cdn.dota2.com/apps/dota2/images/items/shivas_guard_lg.png', 4750, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(104, 'Bloodstone', 'http://cdn.dota2.com/apps/dota2/images/items/bloodstone_lg.png', 4900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(105, 'Sphere', 'http://cdn.dota2.com/apps/dota2/images/items/sphere_lg.png', 4850, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(106, 'Lotus Orb', 'http://cdn.dota2.com/apps/dota2/images/items/lotus_orb_lg.png', 4000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(107, 'Meteor Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/meteor_hammer_lg.png', 2625, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(108, 'Nullifier', 'http://cdn.dota2.com/apps/dota2/images/items/nullifier_lg.png', 4700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(109, 'Combo Breaker', 'http://cdn.dota2.com/apps/dota2/images/items/combo_breaker_lg.png', 3675, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(110, 'Trident', 'http://cdn.dota2.com/apps/dota2/images/items/trident_lg.png', 1950, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(111, 'Refresher Shard', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_shard_lg.png', 1000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(112, 'Spirit Vessel', 'http://cdn.dota2.com/apps/dota2/images/items/spirit_vessel_lg.png', 2825, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(113, 'Vanguard', 'http://cdn.dota2.com/apps/dota2/images/items/vanguard_lg.png', 2150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(114, 'Crimson Guard', 'http://cdn.dota2.com/apps/dota2/images/items/crimson_guard_lg.png', 3550, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(115, 'Blade Mail', 'http://cdn.dota2.com/apps/dota2/images/items/blade_mail_lg.png', 2200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(116, 'Soul Booster', 'http://cdn.dota2.com/apps/dota2/images/items/soul_booster_lg.png', 3200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(117, 'Hood Of Defiance', 'http://cdn.dota2.com/apps/dota2/images/items/hood_of_defiance_lg.png', 1700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(118, 'Rapier', 'http://cdn.dota2.com/apps/dota2/images/items/rapier_lg.png', 6000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(119, 'Monkey King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/monkey_king_bar_lg.png', 4200, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(120, 'Radiance', 'http://cdn.dota2.com/apps/dota2/images/items/radiance_lg.png', 5150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(121, 'Butterfly', 'http://cdn.dota2.com/apps/dota2/images/items/butterfly_lg.png', 5525, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(122, 'Greater Crit', 'http://cdn.dota2.com/apps/dota2/images/items/greater_crit_lg.png', 5320, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(123, 'Basher', 'http://cdn.dota2.com/apps/dota2/images/items/basher_lg.png', 2700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(124, 'Bfury', 'http://cdn.dota2.com/apps/dota2/images/items/bfury_lg.png', 4100, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(125, 'Manta', 'http://cdn.dota2.com/apps/dota2/images/items/manta_lg.png', 5000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(126, 'Lesser Crit', 'http://cdn.dota2.com/apps/dota2/images/items/lesser_crit_lg.png', 2120, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(127, 'Dragon Lance', 'http://cdn.dota2.com/apps/dota2/images/items/dragon_lance_lg.png', 1900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(128, 'Armlet', 'http://cdn.dota2.com/apps/dota2/images/items/armlet_lg.png', 2370, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(129, 'Invis Sword', 'http://cdn.dota2.com/apps/dota2/images/items/invis_sword_lg.png', 2700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(130, 'Silver Edge', 'http://cdn.dota2.com/apps/dota2/images/items/silver_edge_lg.png', 5550, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(131, 'Sange And Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/sange_and_yasha_lg.png', 3900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(132, 'Satanic', 'http://cdn.dota2.com/apps/dota2/images/items/satanic_lg.png', 5500, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(133, 'Mjollnir', 'http://cdn.dota2.com/apps/dota2/images/items/mjollnir_lg.png', 5700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(134, 'Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/skadi_lg.png', 5500, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(135, 'Sange', 'http://cdn.dota2.com/apps/dota2/images/items/sange_lg.png', 1950, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(136, 'Helm Of The Dominator', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_the_dominator_lg.png', 2000, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(137, 'Maelstrom', 'http://cdn.dota2.com/apps/dota2/images/items/maelstrom_lg.png', 2800, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(138, 'Desolator', 'http://cdn.dota2.com/apps/dota2/images/items/desolator_lg.png', 3500, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(139, 'Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_lg.png', 1950, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(140, 'Mask Of Madness', 'http://cdn.dota2.com/apps/dota2/images/items/mask_of_madness_lg.png', 1975, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(141, 'Diffusal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/diffusal_blade_lg.png', 3150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(142, 'Ethereal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/ethereal_blade_lg.png', 4700, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(143, 'Soul Ring', 'http://cdn.dota2.com/apps/dota2/images/items/soul_ring_lg.png', 755, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(144, 'Arcane Boots', 'http://cdn.dota2.com/apps/dota2/images/items/arcane_boots_lg.png', 1300, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(145, 'Octarine Core', 'http://cdn.dota2.com/apps/dota2/images/items/octarine_core_lg.png', 5900, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(146, 'Orb Of Venom', 'http://cdn.dota2.com/apps/dota2/images/items/orb_of_venom_lg.png', 275, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(147, 'Blight Stone', 'http://cdn.dota2.com/apps/dota2/images/items/blight_stone_lg.png', 300, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(148, 'Ancient Janggo', 'http://cdn.dota2.com/apps/dota2/images/items/ancient_janggo_lg.png', 1615, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(149, 'Medallion Of Courage', 'http://cdn.dota2.com/apps/dota2/images/items/medallion_of_courage_lg.png', 1175, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(150, 'Solar Crest', 'http://cdn.dota2.com/apps/dota2/images/items/solar_crest_lg.png', 2625, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(151, 'Smoke Of Deceit', 'http://cdn.dota2.com/apps/dota2/images/items/smoke_of_deceit_lg.png', 80, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(152, 'Tome Of Knowledge', 'http://cdn.dota2.com/apps/dota2/images/items/tome_of_knowledge_lg.png', 150, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(153, 'Veil Of Discord', 'http://cdn.dota2.com/apps/dota2/images/items/veil_of_discord_lg.png', 2330, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(154, 'Guardian Greaves', 'http://cdn.dota2.com/apps/dota2/images/items/guardian_greaves_lg.png', 5350, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(155, 'Rod Of Atos', 'http://cdn.dota2.com/apps/dota2/images/items/rod_of_atos_lg.png', 3030, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(156, 'Abyssal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/abyssal_blade_lg.png', 6400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(157, 'Heavens Halberd', 'http://cdn.dota2.com/apps/dota2/images/items/heavens_halberd_lg.png', 3400, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(158, 'Ring Of Aquila', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_aquila_lg.png', 965, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(159, 'Tranquil Boots', 'http://cdn.dota2.com/apps/dota2/images/items/tranquil_boots_lg.png', 950, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(160, 'Shadow Amulet', 'http://cdn.dota2.com/apps/dota2/images/items/shadow_amulet_lg.png', 1300, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40'),
(161, 'Glimmer Cape', 'http://cdn.dota2.com/apps/dota2/images/items/glimmer_cape_lg.png', 1850, NULL, '2017-11-07 03:16:40', '2017-11-07 03:16:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `hero_id` int(11) DEFAULT NULL,
  `role` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `hero_id`, `role`, `created_at`, `updated_at`) VALUES
(12, 114, 1, '2017-10-26 19:42:44', '2017-10-26 19:42:44'),
(13, 114, 4, '2017-10-26 19:42:44', '2017-10-26 19:42:44'),
(14, 1, 1, '2017-11-07 20:31:26', '2017-11-07 20:31:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `casting_method` int(1) DEFAULT NULL,
  `targetting_method` int(1) DEFAULT NULL,
  `allowed_targets` int(1) DEFAULT NULL,
  `mana_cost` varchar(100) DEFAULT NULL,
  `cooldown` varchar(100) DEFAULT NULL,
  `key` int(1) DEFAULT NULL,
  `descriptions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skill`
--

INSERT INTO `skill` (`id`, `hero_id`, `name`, `img`, `casting_method`, `targetting_method`, `allowed_targets`, `mana_cost`, `cooldown`, `key`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mana Break', 'b499ee8db5a52b277f2e08a8f4b73837.jpg', 2, NULL, NULL, NULL, NULL, 1, '<p>Burns an oppenents mana on each attack. Mana Break deals 60% of the mana burned as demage to the target.</p><ul><li>Mana Burned per hit: 28 / 40 / 52 / 64</li><li>Burned mana as demage: 60%</li></ul>', '2017-10-26 19:16:18', '2017-10-26 19:38:30'),
(2, 114, 'Sidang Skripsi', 'b0ac270e4274832829054c2dd1be1062.jpg', 1, 3, 1, '0', '6', 1, '<p>Skill yang menakutkan bagi mahasiswa</p><ul><li>life time -10%</li><li>tidur tidak tenang</li></ul>', '2017-10-26 19:43:58', '2017-10-26 19:43:58'),
(3, 1, 'Blink', '71433c89ee5812cfd791a5883a1dbc8c.jpg', 1, 1, 3, '60', '70', 2, '<p>Short distance teleportation that allows Anti-Mage to move in and out of combat.</p>', '2017-11-07 20:33:41', '2017-11-07 20:33:41'),
(4, 1, 'Spell Shield', 'f5fe475012bd6c44e768ec61c5fe8422.jpg', 2, NULL, NULL, NULL, NULL, 3, '<p>Increases Anti-Mage''s resistance to magic damage. Resistance: {20%/30%/40%/50%}</p>', '2017-11-07 20:34:38', '2017-11-07 20:34:38'),
(5, 1, 'Mana Void', '2f97b7eaa3b25ce5a17df4d099e9aadf.jpg', 1, 3, 1, '125/200/275', '70', 4, '<p>Deals damage to target unit based on each point of mana missing and also deals the same damage</p>', '2017-11-07 20:35:23', '2017-11-07 20:35:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `img`, `type`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@mail.com', '082247464196', '$2y$10$Hoe5daRZimTtOkCngr71FewAmqp2AE6fgnekeWIsBeY7wUjuWnI/e', 'FQv7w3RGybz8fAnpoJ7qP3m84uAVQpspmgsn8GG5brZ1DziuAU2E3HjerrB6', '196e972a1a44a811310c74300c2f803f.jpg', 1, 1, '2017-10-24 22:05:58', '2017-10-31 04:43:05'),
(2, 'test admin', 'admin2@mail.com', '08663736', '$2y$10$a0cNJfiL4Ajggql9M8ooEu/dOWRR9a4a5i/fURuh5CPmCnxMCi7ni', NULL, NULL, 1, 1, '2017-10-30 19:15:50', '2017-10-30 19:15:50'),
(3, 'Dota Member', 'member@mail.com', '08784984', '$2y$10$gyRiDPlDqHTWdlGm0nXDx.Ng/pBVy5hTFR0hncRLq2kUPlFVoWV0m', 'MvdEBGvMGH1kyo44vOsgTpnxT3LfG75GbkrkxSa8VeLBARnOqTbP9P3ofGyL', '2d78e83746e08684aa28fc765691d3da.jpg', 2, 1, '2017-10-30 19:17:59', '2017-10-31 19:35:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_guide`
--
ALTER TABLE `detail_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heros`
--
ALTER TABLE `heros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
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
-- AUTO_INCREMENT for table `detail_guide`
--
ALTER TABLE `detail_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
