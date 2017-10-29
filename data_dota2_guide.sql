-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Okt 2017 pada 02.40
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
(1, 'Antimage', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_vert.jpg', 12, 10, 12, 123123, 123123, 12, 13, 12, 123, 123, 1, 1, 1, '2017-10-24 22:41:54', '2017-10-26 09:58:37'),
(2, 'Axe', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(3, 'Bane', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(4, 'Bloodseeker', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(5, 'Crystal Maiden', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(6, 'Drow Ranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(7, 'Earthshaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(8, 'Juggernaut', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(9, 'Mirana', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(10, 'Nevermore', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(11, 'Morphling', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(12, 'Phantom Lancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(13, 'Puck', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(14, 'Pudge', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(15, 'Razor', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(16, 'Sand King', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(17, 'Storm Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(18, 'Sven', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(19, 'Tiny', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(20, 'Vengefulspirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(21, 'Windrunner', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(22, 'Zuus', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(23, 'Kunkka', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(24, 'Lina', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(25, 'Lich', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(26, 'Lion', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(27, 'Shadow Shaman', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(28, 'Slardar', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(29, 'Tidehunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(30, 'Witch Doctor', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(31, 'Riki', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(32, 'Enigma', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(33, 'Tinker', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(34, 'Sniper', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(35, 'Necrolyte', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(36, 'Warlock', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(37, 'Beastmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(38, 'Queenofpain', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(39, 'Venomancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(40, 'Faceless Void', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(41, 'Skeleton King', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(42, 'Death Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(43, 'Phantom Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(44, 'Pugna', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(45, 'Templar Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(46, 'Viper', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(47, 'Luna', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(48, 'Dragon Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(49, 'Dazzle', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(50, 'Rattletrap', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(51, 'Leshrac', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(52, 'Furion', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(53, 'Life Stealer', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(54, 'Dark Seer', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(55, 'Clinkz', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(56, 'Omniknight', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(57, 'Enchantress', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(58, 'Huskar', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(59, 'Night Stalker', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(60, 'Broodmother', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(61, 'Bounty Hunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(62, 'Weaver', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(63, 'Jakiro', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(64, 'Batrider', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(65, 'Chen', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(66, 'Spectre', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(67, 'Doom Bringer', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(68, 'Ancient Apparition', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(69, 'Ursa', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(70, 'Spirit Breaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(71, 'Gyrocopter', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(72, 'Alchemist', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(73, 'Invoker', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(74, 'Silencer', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(75, 'Obsidian Destroyer', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(76, 'Lycan', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(77, 'Brewmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(78, 'Shadow Demon', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(79, 'Lone Druid', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(80, 'Chaos Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(81, 'Meepo', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(82, 'Treant', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(83, 'Ogre Magi', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(84, 'Undying', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(85, 'Rubick', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(86, 'Disruptor', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(87, 'Nyx Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(88, 'Naga Siren', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(89, 'Keeper Of The Light', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(90, 'Wisp', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(91, 'Visage', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(92, 'Slark', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(93, 'Medusa', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(94, 'Troll Warlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(95, 'Centaur', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(96, 'Magnataur', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(97, 'Shredder', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(98, 'Bristleback', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(99, 'Tusk', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(100, 'Skywrath Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(101, 'Abaddon', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(102, 'Elder Titan', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(103, 'Legion Commander', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(104, 'Ember Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(105, 'Earth Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(106, 'Terrorblade', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(107, 'Phoenix', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(108, 'Oracle', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(109, 'Techies', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(110, 'Winter Wyvern', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(111, 'Arc Warden', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(112, 'Abyssal Underlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(113, 'Monkey King', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_vert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-24 22:41:54', '2017-10-24 22:41:54'),
(114, 'Stikoman', 'http://localhost/dota2guide/assets/heros/6ffb403c2f145bfe3cfa1241ab95d6b7.jpg', 12, 12, 123, 1333, 3333, 45, 48, 12, 12, 456, 1, 1, 1, '2017-10-26 19:42:44', '2017-10-26 19:42:44');

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
(1, 'Blink', 'http://cdn.dota2.com/apps/dota2/images/items/blink_lg.png', 2250, '<p>Teleport to a target point up to 1200 units away. Blink Dagger cannot be used for 3 seconds after taking damage from an enemy hero or Roshan.</p><p><strong>Cast Range</strong>: Global</p><p><strong>Max Blink Distance</strong>: 1200</p><p><strong>Penalty Blink Distance</strong>: 960</p><p><strong>Damage Cooldown</strong>: 3</p>', '2017-10-24 22:58:20', '2017-10-27 06:58:57'),
(2, 'Blades Of Attack', 'http://cdn.dota2.com/apps/dota2/images/items/blades_of_attack_lg.png', 420, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(3, 'Broadsword', 'http://cdn.dota2.com/apps/dota2/images/items/broadsword_lg.png', 1200, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(4, 'Chainmail', 'http://cdn.dota2.com/apps/dota2/images/items/chainmail_lg.png', 550, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(5, 'Claymore', 'http://cdn.dota2.com/apps/dota2/images/items/claymore_lg.png', 1400, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(6, 'Helm Of Iron Will', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_iron_will_lg.png', 900, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(7, 'Javelin', 'http://cdn.dota2.com/apps/dota2/images/items/javelin_lg.png', 1500, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(8, 'Mithril Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/mithril_hammer_lg.png', 1600, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(9, 'Platemail', 'http://cdn.dota2.com/apps/dota2/images/items/platemail_lg.png', 1400, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(10, 'Quarterstaff', 'http://cdn.dota2.com/apps/dota2/images/items/quarterstaff_lg.png', 875, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(11, 'Quelling Blade', 'http://cdn.dota2.com/apps/dota2/images/items/quelling_blade_lg.png', 200, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(12, 'Faerie Fire', 'http://cdn.dota2.com/apps/dota2/images/items/faerie_fire_lg.png', 70, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(13, 'Infused Raindrop', 'http://cdn.dota2.com/apps/dota2/images/items/infused_raindrop_lg.png', 225, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(14, 'Wind Lace', 'http://cdn.dota2.com/apps/dota2/images/items/wind_lace_lg.png', 250, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(15, 'Ring Of Protection', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_protection_lg.png', 175, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(16, 'Stout Shield', 'http://cdn.dota2.com/apps/dota2/images/items/stout_shield_lg.png', 200, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(17, 'Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/moon_shard_lg.png', 4000, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(18, 'Gauntlets', 'http://cdn.dota2.com/apps/dota2/images/items/gauntlets_lg.png', 150, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(19, 'Slippers', 'http://cdn.dota2.com/apps/dota2/images/items/slippers_lg.png', 150, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(20, 'Mantle', 'http://cdn.dota2.com/apps/dota2/images/items/mantle_lg.png', 150, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(21, 'Branches', 'http://cdn.dota2.com/apps/dota2/images/items/branches_lg.png', 50, '', '2017-10-24 22:58:20', '2017-10-24 22:58:20'),
(22, 'Belt Of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/belt_of_strength_lg.png', 450, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(23, 'Boots Of Elves', 'http://cdn.dota2.com/apps/dota2/images/items/boots_of_elves_lg.png', 450, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(24, 'Robe', 'http://cdn.dota2.com/apps/dota2/images/items/robe_lg.png', 450, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(25, 'Circlet', 'http://cdn.dota2.com/apps/dota2/images/items/circlet_lg.png', 165, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(26, 'Ogre Axe', 'http://cdn.dota2.com/apps/dota2/images/items/ogre_axe_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(27, 'Blade Of Alacrity', 'http://cdn.dota2.com/apps/dota2/images/items/blade_of_alacrity_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(28, 'Staff Of Wizardry', 'http://cdn.dota2.com/apps/dota2/images/items/staff_of_wizardry_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(29, 'Ultimate Orb', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_orb_lg.png', 2150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(30, 'Gloves', 'http://cdn.dota2.com/apps/dota2/images/items/gloves_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(31, 'Lifesteal', 'http://cdn.dota2.com/apps/dota2/images/items/lifesteal_lg.png', 1100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(32, 'Ring Of Regen', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_regen_lg.png', 325, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(33, 'Sobi Mask', 'http://cdn.dota2.com/apps/dota2/images/items/sobi_mask_lg.png', 325, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(34, 'Boots', 'http://cdn.dota2.com/apps/dota2/images/items/boots_lg.png', 400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(35, 'Gem', 'http://cdn.dota2.com/apps/dota2/images/items/gem_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(36, 'Cloak', 'http://cdn.dota2.com/apps/dota2/images/items/cloak_lg.png', 550, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(37, 'Talisman Of Evasion', 'http://cdn.dota2.com/apps/dota2/images/items/talisman_of_evasion_lg.png', 1450, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(38, 'Cheese', 'http://cdn.dota2.com/apps/dota2/images/items/cheese_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(39, 'Magic Stick', 'http://cdn.dota2.com/apps/dota2/images/items/magic_stick_lg.png', 200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(40, 'Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/magic_wand_lg.png', 465, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(41, 'Ghost', 'http://cdn.dota2.com/apps/dota2/images/items/ghost_lg.png', 1500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(42, 'Clarity', 'http://cdn.dota2.com/apps/dota2/images/items/clarity_lg.png', 50, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(43, 'Enchanted Mango', 'http://cdn.dota2.com/apps/dota2/images/items/enchanted_mango_lg.png', 100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(44, 'Flask', 'http://cdn.dota2.com/apps/dota2/images/items/flask_lg.png', 110, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(45, 'Dust', 'http://cdn.dota2.com/apps/dota2/images/items/dust_lg.png', 180, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(46, 'Bottle', 'http://cdn.dota2.com/apps/dota2/images/items/bottle_lg.png', 650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(47, 'Ward Observer', 'http://cdn.dota2.com/apps/dota2/images/items/ward_observer_lg.png', 60, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(48, 'Ward Sentry', 'http://cdn.dota2.com/apps/dota2/images/items/ward_sentry_lg.png', 100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(49, 'Ward Dispenser', 'http://cdn.dota2.com/apps/dota2/images/items/ward_dispenser_lg.png', 160, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(50, 'Tango', 'http://cdn.dota2.com/apps/dota2/images/items/tango_lg.png', 125, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(51, 'Tango Single', 'http://cdn.dota2.com/apps/dota2/images/items/tango_single_lg.png', 30, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(52, 'Courier', 'http://cdn.dota2.com/apps/dota2/images/items/courier_lg.png', 100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(53, 'Tpscroll', 'http://cdn.dota2.com/apps/dota2/images/items/tpscroll_lg.png', 50, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(54, 'Recipe Travel Boots', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 2000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(55, 'Travel Boots', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_lg.png', 2400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(56, 'Travel Boots 2', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_2_lg.png', 4400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(57, 'Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/phase_boots_lg.png', 1240, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(58, 'Demon Edge', 'http://cdn.dota2.com/apps/dota2/images/items/demon_edge_lg.png', 2200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(59, 'Eagle', 'http://cdn.dota2.com/apps/dota2/images/items/eagle_lg.png', 3200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(60, 'Reaver', 'http://cdn.dota2.com/apps/dota2/images/items/reaver_lg.png', 3000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(61, 'Relic', 'http://cdn.dota2.com/apps/dota2/images/items/relic_lg.png', 3800, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(62, 'Hyperstone', 'http://cdn.dota2.com/apps/dota2/images/items/hyperstone_lg.png', 2000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(63, 'Ring Of Health', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_health_lg.png', 850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(64, 'Void Stone', 'http://cdn.dota2.com/apps/dota2/images/items/void_stone_lg.png', 850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(65, 'Mystic Staff', 'http://cdn.dota2.com/apps/dota2/images/items/mystic_staff_lg.png', 2700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(66, 'Energy Booster', 'http://cdn.dota2.com/apps/dota2/images/items/energy_booster_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(67, 'Point Booster', 'http://cdn.dota2.com/apps/dota2/images/items/point_booster_lg.png', 1200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(68, 'Vitality Booster', 'http://cdn.dota2.com/apps/dota2/images/items/vitality_booster_lg.png', 1100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(69, 'Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/power_treads_lg.png', 1350, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(70, 'Recipe Hand Of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(71, 'Hand Of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/hand_of_midas_lg.png', 2150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(72, 'Oblivion Staff', 'http://cdn.dota2.com/apps/dota2/images/items/oblivion_staff_lg.png', 1650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(73, 'Pers', 'http://cdn.dota2.com/apps/dota2/images/items/pers_lg.png', 1700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(74, 'Poor Mans Shield', 'http://cdn.dota2.com/apps/dota2/images/items/poor_mans_shield_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(75, 'Recipe Bracer', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 175, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(76, 'Bracer', 'http://cdn.dota2.com/apps/dota2/images/items/bracer_lg.png', 490, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(77, 'Recipe Wraith Band', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 170, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(78, 'Wraith Band', 'http://cdn.dota2.com/apps/dota2/images/items/wraith_band_lg.png', 485, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(79, 'Recipe Null Talisman', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 155, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(80, 'Null Talisman', 'http://cdn.dota2.com/apps/dota2/images/items/null_talisman_lg.png', 470, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(81, 'Recipe Mekansm', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(82, 'Mekansm', 'http://cdn.dota2.com/apps/dota2/images/items/mekansm_lg.png', 2375, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(83, 'Vladmir', 'http://cdn.dota2.com/apps/dota2/images/items/vladmir_lg.png', 2275, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(84, 'Flying Courier', 'http://cdn.dota2.com/apps/dota2/images/items/flying_courier_lg.png', 150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(85, 'Recipe Buckler', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(86, 'Buckler', 'http://cdn.dota2.com/apps/dota2/images/items/buckler_lg.png', 800, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(87, 'Ring Of Basilius', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_basilius_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(88, 'Recipe Pipe', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 800, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(89, 'Pipe', 'http://cdn.dota2.com/apps/dota2/images/items/pipe_lg.png', 3200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(90, 'Recipe Urn Of Shadows', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 310, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(91, 'Urn Of Shadows', 'http://cdn.dota2.com/apps/dota2/images/items/urn_of_shadows_lg.png', 875, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(92, 'Recipe Headdress', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 300, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(93, 'Headdress', 'http://cdn.dota2.com/apps/dota2/images/items/headdress_lg.png', 675, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(94, 'Sheepstick', 'http://cdn.dota2.com/apps/dota2/images/items/sheepstick_lg.png', 5700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(95, 'Recipe Orchid', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 775, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(96, 'Orchid', 'http://cdn.dota2.com/apps/dota2/images/items/orchid_lg.png', 4075, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(97, 'Recipe Bloodthorn', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(98, 'Bloodthorn', 'http://cdn.dota2.com/apps/dota2/images/items/bloodthorn_lg.png', 7195, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(99, 'Echo Sabre', 'http://cdn.dota2.com/apps/dota2/images/items/echo_sabre_lg.png', 2650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(100, 'Recipe Cyclone', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(101, 'Cyclone', 'http://cdn.dota2.com/apps/dota2/images/items/cyclone_lg.png', 2750, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(102, 'Recipe Aether Lens', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 600, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(103, 'Aether Lens', 'http://cdn.dota2.com/apps/dota2/images/items/aether_lens_lg.png', 2350, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(104, 'Recipe Force Staff', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(105, 'Force Staff', 'http://cdn.dota2.com/apps/dota2/images/items/force_staff_lg.png', 2250, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(106, 'Recipe Hurricane Pike', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(107, 'Hurricane Pike', 'http://cdn.dota2.com/apps/dota2/images/items/hurricane_pike_lg.png', 4650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(108, 'Recipe Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1250, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(109, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_lg.png', 2720, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(110, 'Dagon 2', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_2_lg.png', 3970, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(111, 'Dagon 3', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_3_lg.png', 5220, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(112, 'Dagon 4', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_4_lg.png', 6470, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(113, 'Dagon 5', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_5_lg.png', 7720, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(114, 'Recipe Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(115, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_lg.png', 2650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(116, 'Necronomicon 2', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_2_lg.png', 3850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(117, 'Necronomicon 3', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_3_lg.png', 5050, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(118, 'Ultimate Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_scepter_lg.png', 4200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(119, 'Recipe Refresher', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1800, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(120, 'Refresher', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_lg.png', 5200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(121, 'Recipe Assault', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1300, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(122, 'Assault', 'http://cdn.dota2.com/apps/dota2/images/items/assault_lg.png', 5250, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(123, 'Heart', 'http://cdn.dota2.com/apps/dota2/images/items/heart_lg.png', 5200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(124, 'Recipe Black King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1375, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(125, 'Black King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/black_king_bar_lg.png', 3975, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(126, 'Recipe Shivas Guard', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 650, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(127, 'Shivas Guard', 'http://cdn.dota2.com/apps/dota2/images/items/shivas_guard_lg.png', 4750, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(128, 'Recipe Bloodstone', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(129, 'Bloodstone', 'http://cdn.dota2.com/apps/dota2/images/items/bloodstone_lg.png', 4850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(130, 'Recipe Sphere', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(131, 'Sphere', 'http://cdn.dota2.com/apps/dota2/images/items/sphere_lg.png', 4850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(132, 'Lotus Orb', 'http://cdn.dota2.com/apps/dota2/images/items/lotus_orb_lg.png', 4000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(133, 'Vanguard', 'http://cdn.dota2.com/apps/dota2/images/items/vanguard_lg.png', 2150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(134, 'Recipe Crimson Guard', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 600, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(135, 'Crimson Guard', 'http://cdn.dota2.com/apps/dota2/images/items/crimson_guard_lg.png', 3550, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(136, 'Blade Mail', 'http://cdn.dota2.com/apps/dota2/images/items/blade_mail_lg.png', 2200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(137, 'Soul Booster', 'http://cdn.dota2.com/apps/dota2/images/items/soul_booster_lg.png', 3200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(138, 'Hood Of Defiance', 'http://cdn.dota2.com/apps/dota2/images/items/hood_of_defiance_lg.png', 1725, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(139, 'Rapier', 'http://cdn.dota2.com/apps/dota2/images/items/rapier_lg.png', 6000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(140, 'Monkey King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/monkey_king_bar_lg.png', 5200, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(141, 'Recipe Radiance', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1350, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(142, 'Radiance', 'http://cdn.dota2.com/apps/dota2/images/items/radiance_lg.png', 5150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(143, 'Butterfly', 'http://cdn.dota2.com/apps/dota2/images/items/butterfly_lg.png', 5525, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(144, 'Recipe Greater Crit', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(145, 'Greater Crit', 'http://cdn.dota2.com/apps/dota2/images/items/greater_crit_lg.png', 5320, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(146, 'Recipe Basher', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 750, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(147, 'Basher', 'http://cdn.dota2.com/apps/dota2/images/items/basher_lg.png', 2700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(148, 'Bfury', 'http://cdn.dota2.com/apps/dota2/images/items/bfury_lg.png', 4500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(149, 'Recipe Manta', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(150, 'Manta', 'http://cdn.dota2.com/apps/dota2/images/items/manta_lg.png', 5000, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(151, 'Recipe Lesser Crit', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(152, 'Lesser Crit', 'http://cdn.dota2.com/apps/dota2/images/items/lesser_crit_lg.png', 2120, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(153, 'Dragon Lance', 'http://cdn.dota2.com/apps/dota2/images/items/dragon_lance_lg.png', 1900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(154, 'Recipe Armlet', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 550, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(155, 'Armlet', 'http://cdn.dota2.com/apps/dota2/images/items/armlet_lg.png', 2370, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(156, 'Invis Sword', 'http://cdn.dota2.com/apps/dota2/images/items/invis_sword_lg.png', 2700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(157, 'Recipe Silver Edge', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(158, 'Silver Edge', 'http://cdn.dota2.com/apps/dota2/images/items/silver_edge_lg.png', 5550, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(159, 'Sange And Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/sange_and_yasha_lg.png', 3900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(160, 'Satanic', 'http://cdn.dota2.com/apps/dota2/images/items/satanic_lg.png', 5700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(161, 'Recipe Mjollnir', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(162, 'Mjollnir', 'http://cdn.dota2.com/apps/dota2/images/items/mjollnir_lg.png', 5700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(163, 'Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/skadi_lg.png', 5775, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(164, 'Recipe Sange', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(165, 'Sange', 'http://cdn.dota2.com/apps/dota2/images/items/sange_lg.png', 1950, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(166, 'Helm Of The Dominator', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_the_dominator_lg.png', 2025, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(167, 'Recipe Maelstrom', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(168, 'Maelstrom', 'http://cdn.dota2.com/apps/dota2/images/items/maelstrom_lg.png', 2800, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(169, 'Desolator', 'http://cdn.dota2.com/apps/dota2/images/items/desolator_lg.png', 3500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(170, 'Recipe Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(171, 'Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_lg.png', 1950, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(172, 'Mask Of Madness', 'http://cdn.dota2.com/apps/dota2/images/items/mask_of_madness_lg.png', 1975, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(173, 'Recipe Diffusal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(174, 'Diffusal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/diffusal_blade_lg.png', 3150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(175, 'Diffusal Blade 2', 'http://cdn.dota2.com/apps/dota2/images/items/diffusal_blade_2_lg.png', 3850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(176, 'Ethereal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/ethereal_blade_lg.png', 4700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(177, 'Soul Ring', 'http://cdn.dota2.com/apps/dota2/images/items/soul_ring_lg.png', 750, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(178, 'Arcane Boots', 'http://cdn.dota2.com/apps/dota2/images/items/arcane_boots_lg.png', 1300, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(179, 'Octarine Core', 'http://cdn.dota2.com/apps/dota2/images/items/octarine_core_lg.png', 5900, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(180, 'Orb Of Venom', 'http://cdn.dota2.com/apps/dota2/images/items/orb_of_venom_lg.png', 275, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(181, 'Blight Stone', 'http://cdn.dota2.com/apps/dota2/images/items/blight_stone_lg.png', 300, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(182, 'Recipe Ancient Janggo', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 575, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(183, 'Ancient Janggo', 'http://cdn.dota2.com/apps/dota2/images/items/ancient_janggo_lg.png', 1640, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(184, 'Medallion Of Courage', 'http://cdn.dota2.com/apps/dota2/images/items/medallion_of_courage_lg.png', 1175, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(185, 'Solar Crest', 'http://cdn.dota2.com/apps/dota2/images/items/solar_crest_lg.png', 2625, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(186, 'Smoke Of Deceit', 'http://cdn.dota2.com/apps/dota2/images/items/smoke_of_deceit_lg.png', 50, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(187, 'Tome Of Knowledge', 'http://cdn.dota2.com/apps/dota2/images/items/tome_of_knowledge_lg.png', 150, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(188, 'Recipe Veil Of Discord', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(189, 'Veil Of Discord', 'http://cdn.dota2.com/apps/dota2/images/items/veil_of_discord_lg.png', 2340, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(190, 'Recipe Guardian Greaves', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1700, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(191, 'Guardian Greaves', 'http://cdn.dota2.com/apps/dota2/images/items/guardian_greaves_lg.png', 5375, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(192, 'Recipe Rod Of Atos', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1100, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(193, 'Rod Of Atos', 'http://cdn.dota2.com/apps/dota2/images/items/rod_of_atos_lg.png', 3080, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(194, 'Recipe Iron Talon', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 125, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(195, 'Iron Talon', 'http://cdn.dota2.com/apps/dota2/images/items/iron_talon_lg.png', 500, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(196, 'Recipe Abyssal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png', 1550, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(197, 'Abyssal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/abyssal_blade_lg.png', 6400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(198, 'Heavens Halberd', 'http://cdn.dota2.com/apps/dota2/images/items/heavens_halberd_lg.png', 3400, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(199, 'Ring Of Aquila', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_aquila_lg.png', 985, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(200, 'Tranquil Boots', 'http://cdn.dota2.com/apps/dota2/images/items/tranquil_boots_lg.png', 975, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(201, 'Shadow Amulet', 'http://cdn.dota2.com/apps/dota2/images/items/shadow_amulet_lg.png', 1300, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(202, 'Glimmer Cape', 'http://cdn.dota2.com/apps/dota2/images/items/glimmer_cape_lg.png', 1850, '', '2017-10-24 22:58:21', '2017-10-24 22:58:21'),
(203, 'Egg', 'http://localhost/dota2guide/assets/items/39a7557d2d7804e1de4ad31dc28bc0d1.jpg', 8888, '<p>Teleport to a target point up to 1200 units away. Blink Dagger cannot be used for 3 seconds after taking damage from an enemy hero or Roshan.</p><p><strong>Cast Range</strong>: Global</p><p><strong>Max Blink Distance</strong>: 1200</p><p><strong>Penalty Blink Distance</strong>: 960</p><p><strong>Damage Cooldown</strong>: 3</p>', '2017-10-27 07:00:15', '2017-10-27 07:00:15');

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
(11, 1, 1, '2017-10-26 10:53:28', '2017-10-26 10:53:28'),
(12, 114, 1, '2017-10-26 19:42:44', '2017-10-26 19:42:44'),
(13, 114, 4, '2017-10-26 19:42:44', '2017-10-26 19:42:44');

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
  `mana_cost` int(5) DEFAULT NULL,
  `cooldown` float DEFAULT NULL,
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
(2, 114, 'Sidang Skripsi', 'b0ac270e4274832829054c2dd1be1062.jpg', 1, 3, 1, 0, 6, 1, '<p>Skill yang menakutkan bagi mahasiswa</p><ul><li>life time -10%</li><li>tidur tidak tenang</li></ul>', '2017-10-26 19:43:58', '2017-10-26 19:43:58');

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
(1, 'Administrator', 'admin@mail.com', NULL, '$2y$10$Hoe5daRZimTtOkCngr71FewAmqp2AE6fgnekeWIsBeY7wUjuWnI/e', 'bPoRebGYLRQKaesxvIQ079dEXttt23SPF0flFpgdzvioAZ6Kumk955EDTTNH', NULL, 1, 1, '2017-10-24 22:05:58', '2017-10-24 22:05:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
