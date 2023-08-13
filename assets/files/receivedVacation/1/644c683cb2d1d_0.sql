-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2023 a las 22:12:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_academy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(20, '7effc89147', 'Cursos', 0, 'cursos', 1678402800, NULL, 'fas fa-chess', 'category-thumbnail.png'),
(21, '8d9ba27c13', 'Especializaciones', 0, 'especializaciones', 1678402800, NULL, 'fas fa-chess', 'category-thumbnail.png'),
(22, '60ef775533', 'Diplomados', 0, 'diplomados', 1678402800, NULL, 'fas fa-chess', 'category-thumbnail.png'),
(23, '1193cb5aff', 'Arquitectura', 20, 'arquitectura', 1678402800, NULL, 'fas fa-chess', NULL),
(24, 'a7e532d146', 'Estructura', 20, 'estructura', 1678402800, NULL, 'fas fa-chess', NULL),
(26, 'd6128a9a73', 'Instalaciones', 20, 'instalaciones', 1678402800, NULL, 'fas fa-chess', NULL),
(27, '15883e3555', 'Dibujo 2D', 20, 'dibujo-2d', 1678402800, 1678402800, 'fas fa-chess', 'category-thumbnail.png'),
(28, '4597b53dde', 'Infraestructura', 20, 'infraestructura', 1678402800, NULL, 'fas fa-chess', NULL),
(29, 'b5ddf3ec77', 'Automatización', 20, 'automatización', 1678402800, 1678402800, 'fas fa-chess', 'category-thumbnail.png'),
(30, '4a7368b3e0', 'Gestión', 20, 'gestión', 1678402800, NULL, 'fas fa-chess', NULL),
(31, '840348ae33', 'Modelador BIM', 21, 'modelador-bim', 1678402800, NULL, 'fas fa-chess', NULL),
(32, '85c911329b', 'Gestion BIM', 21, 'gestion-bim', 1678402800, 1678402800, 'fas fa-chess', 'category-thumbnail.png'),
(33, 'b7ee6f5f9a', 'Expedientes BIM', 21, 'expedientes-bim', 1678402800, NULL, 'fas fa-chess', NULL),
(34, '30880c6854', 'Ingeniería Civil', 22, 'ingeniería-civil', 1678402800, NULL, 'fas fa-chess', NULL),
(35, '0fa5ca69e7', 'Arquitectura y Urbanismo', 22, 'arquitectura-y-urbanismo', 1678402800, NULL, 'fas fa-chess', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('s8fkb49ejjmcg3ftukqtble54c9uvb1k', '::1', 1670428269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('82emncm26u9h6c03jgcsq2h8puairj7c', '::1', 1670428269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('h7usbh2hamn491m6g6deev65u30fh2b3', '::1', 1670428269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('ic3vdlhncojsb3usu7qkomr3c7a7blvd', '::1', 1670428269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('l8io0nmv4g0c3hqpg0edbmh5nadv5alp', '::1', 1670428269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('qnqb33069gcsskpkpd56f47em5kca27d', '::1', 1670522399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637303432383236393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a227370616e697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313637313338363339383b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31383a22656d6572736f6e2076616c656e7a75656c61223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('q7j5in5lu3lj22b531hvdlvch4rv4q5f', '::1', 1672706914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323639383438303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313637333536383630373b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31383a22656d6572736f6e2076616c656e7a75656c61223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('55sjq72rfgc6po47v7415djlisvsmbeq', '::1', 1672704547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323730323833393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a226c697374223b637573746f6d5f73657373696f6e5f6c696d69747c693a313637333536383239303b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31383a22656d6572736f6e2076616c656e7a75656c61223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('ohqbopuhp2n1gpdeo3ode2tgqptu6cn1', '::1', 1673389226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333034343737393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a2267726964223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('ou39tk5v90m9i41541nrae0urg3q3r4i', '::1', 1673397488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333338393439343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('tr40496bjdkcj89t9lo0rgcbfe67hu8j', '::1', 1673819402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333831393430323b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('0n1nh3sj9821hk50ln6n39kjuc67sqsu', '::1', 1673819579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333831393537393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('45tvcj58sl676l7brp9a1ovrm4gt2teb', '::1', 1673819580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333831393538303b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('l5p050b50ib9milna1051bv0d40o8mci', '::1', 1673819582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333831393538323b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('3assnkbu117qkl81ebbpnbnf8r6sfu3t', '::1', 1673819589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333831393538393b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('039qdfa774642dlit8e89c36clvno2o6', '::1', 1674183915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333931393132313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a226c697374223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('4vl4d4jc13liebpsrah77s9cn3eprrrm', '::1', 1676011660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363031313533333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a226c697374223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('1iip24nseg1rg568dk91iafnn14jnsbu', '::1', 1676359608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363038373437353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a226c697374223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d),
('mlubdtb70098lo52c1amgto7e1ee73co', '::1', 1676941217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637363631303334353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6c61796f75747c733a343a226c697374223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226e6577223b7d),
('3kai8rubnsha7nnp57k68oegfe30ug74', '::1', 1680638975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303131393234343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22456e676c697368223b637573746f6d5f73657373696f6e5f6c696d69747c693a313638313530323937353b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a32393a22416c657373616e64726120487561796e61747465656565656565656565223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_percentage`, `created_at`, `expiry_date`) VALUES
(1, 'RGGC0MH', '10', 1673046000, 1673391600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcomes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `is_soon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`, `is_soon`) VALUES
(1, 'Modelador BIM aplicado a Edificaciones', NULL, '<p>Certifican: Autodesk, Dozer y CIP</p>', '[]', 'english', 3, 2, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672962404, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(2, 'Modelador BIM aplicado a obras viales', '', '', '[]', 'english', 3, 2, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672962651, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(3, 'Modelador BIM aplicado a Obras Hidráulicas', '', '', '[]', 'english', 3, 2, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672962664, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(4, 'Modelador BIM aplicado a Estructuras Metálicas', '', '', '[]', 'english', 3, 2, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672962677, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(5, 'Análisis, diseño y detallado de Edificaciones utilizando Robot Structural Analysis', '', '', '[]', 'english', 3, 6, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672966770, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(6, 'Modelado y detallado de  estructuras de acero utilizando Advance Steel', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 6, '[]', '[]', 500, 1, 150, 'beginner', '1', NULL, '', 1672700400, 1672966794, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(7, 'Coordinador de  Proyectos BIM', '', '', '[]', 'english', 3, 7, '[1]', '[]', 667, 1, 200, 'beginner', '1', NULL, '', 1672700400, 1672966858, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(8, 'Supervisor de  Proyectos BIM', '', '', '[]', 'english', 3, 7, '[]', '[]', 667, 1, 200, 'beginner', '1', NULL, '', 1672700400, 1673045791, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(9, 'Gestor de  Proyectos BIM', '', '', '[]', 'english', 3, 7, '[]', '[]', 667, 1, 200, 'beginner', '1', NULL, '', 1672700400, 1672966892, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(10, 'Lider de  Proyectos BIM', '', '', '[]', 'english', 3, 7, '[]', '[]', 667, 1, 200, 'beginner', '1', NULL, '', 1672700400, 1672966910, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(11, 'Expedientes técnicos con  BIM aplicado a Proyectos  de Infraestructrura  educativa', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, 1, 250, 'beginner', '1', NULL, '', 1672700400, 1672966959, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(12, 'Expedientes técnicos con  BIM aplicado a Proyectos  de Infraestructrura  Hospitalaria', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, 1, 250, 'beginner', '1', NULL, '', 1672700400, 1672966972, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(13, 'Expedientes técnicos con  BIM aplicado a Proyectos  de infraestructura Vial', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, 1, 250, 'beginner', '1', NULL, '', 1672700400, 1672966988, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(14, 'Expedientes Técnicos con  BIM aplicado a Proyectos  de Pavimentación Urbano  y Rural', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, 1, 250, 'beginner', '1', NULL, '', 1672700400, 1672967006, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(15, 'Expedientes técnicos con  BIM aplicado a proyectos  de Agua y saneamiento  Rural', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, NULL, 250, 'beginner', '1', NULL, '', 1672700400, 1672967039, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(16, 'Expedientes técnicos con  BIM aplicado a proyectos  de electrificación rural', 'Certifican: Autodesk, Dozer y CIP  ', '', '[]', 'english', 3, 15, '[]', '[]', 834, 1, 250, 'beginner', '1', NULL, '', 1672700400, 1672967053, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(17, 'Revit Arquitectura Básico, Nivel Basico', '', '', '[]', 'english', 5, 8, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1678419219, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(18, 'Revit Arquitectura Nivel  Intermedio', '', '', '[]', 'english', 5, 8, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672897330, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(19, 'Revit Arquitectura Nivel  Avanzado', '', '', '[]', 'english', 5, 8, '[]', '[]', 295, NULL, 59, 'advanced', '1', NULL, '', 1672700400, 1672897469, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(20, 'Revit Arquitectura para  Empresas', '', '', '[]', 'english', 5, 8, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672897669, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(21, 'Revit Estructura ', '', '', '[]', 'espaol', 20, 23, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1678475378, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(22, 'Revit Estructura', '', '', '[]', 'english', 20, 23, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1678475423, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(23, 'Revit Estructura ', '', '', '[]', 'english', 20, 23, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1678475444, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(24, 'Revit Estructura para Empresas', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960189, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(25, 'Robot Structural Analysis  Básico, Primeros pasos', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, NULL, 59, 'beginner', '1', NULL, '', 1672700400, 1672960228, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(26, 'Robot Structural Analysis   Nivel Intermedio', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672960243, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(27, 'Robot Structural Analysis   Nivel Avanzado', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672960264, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(28, 'Advance Steel Básico,  Primeros pasos', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960325, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(29, 'Advance Steel Nivel  Intermedio', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672960345, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(30, 'Advance Steel Nivel   Avanzado', '', '', '[]', 'english', 5, 9, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672960368, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(31, 'Revit MEP Básico, Primeros Pasos', '', '', '[]', 'english', 5, 10, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960722, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(32, 'Revit MEP Nivel  Intermedio', '', '', '[]', 'english', 5, 10, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672960740, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(33, 'Revit MEP Nivel  Avanzado', '', '', '[]', 'english', 5, 10, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672960763, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(34, 'Revit MEP para  Empresas', '', '', '[]', 'english', 5, 10, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960780, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(35, 'AutoCAD Básico, Primeros Pasos', '', '', '[]', 'english', 5, 11, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960843, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(36, 'AutoCAD Nivel  Intermedio', '', '', '[]', 'english', 5, 11, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672960865, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(37, 'AutoCAD Nivel  Avanzado', '', '', '[]', 'english', 5, 11, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672960881, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(38, 'AutoCAD para  Empresas', '', '', '[]', 'english', 5, 11, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960904, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(39, 'Civil 3D Básico, Primeros Pasos', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672960954, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(40, 'Civil 3D Nivel  Intermedio', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672960970, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(41, 'Civil 3D Nivel  Avanzado', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672960988, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(42, 'Civil 3D para  Empresas', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, NULL, 59, 'beginner', '1', NULL, '', 1672700400, 1672961007, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(43, 'Infraworks Básico, Primeros Pasos', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672961025, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(44, 'Infraworks Nivel  Intermedio', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672961047, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(45, 'Infraworks Nivel  Avanzado', '', '', '[]', 'english', 5, 12, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672961064, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(46, 'Dynamo para Revit  Básico, Primeros Pasos', '', '', '[]', 'english', 5, 13, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672961253, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(47, 'Dynamo para Revit  Nivel Intermedio', '', '', '[]', 'english', 5, 13, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672961273, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(48, 'Dynamo para Revit  Nivel Avanzado', '', '', '[]', 'english', 5, 13, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672961295, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(49, 'Navisworks Manage Básico, Primeros Pasos', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672961337, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(50, 'Navisworks Manage Nivel Intermedio', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672961364, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(51, 'Navisworks Manage Nivel Avanzado', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672961428, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(52, 'BIM Collaborate Primeros Pasos', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'beginner', '1', NULL, '', 1672700400, 1672961441, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(53, 'BIM Collaborate Nivel Intermedio', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'intermediate', '1', NULL, '', 1672700400, 1672961465, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(54, 'BIM Collaborate Nivel Avanzado', '', '', '[]', 'english', 5, 14, '[]', '[]', 295, 1, 59, 'advanced', '1', NULL, '', 1672700400, 1672961479, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(55, 'BIM Management en  Infraestructura e Ingeniería Civil', '', '', '[]', 'english', 4, 17, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672700400, 1672967631, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(56, 'BIM Management  Especializado en Proyectos Estructurales ', '', '', '[]', 'english', 4, 17, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672700400, 1672967648, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(57, 'BIM Management en Arquitectura de Interiores', '', '', '[]', 'english', 4, 18, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672700400, 1672967738, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(58, 'BIM Management en  Proyectos de Arquitectura y Urbanismo', '', '', '[]', 'english', 4, 18, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672700400, 1672967772, 'general', 0, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(59, 'Gestión en Proyectos de  Construcción según BIM, VDC, LEAN y IPD ', '', '', '[]', 'espaol', 4, 16, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672959600, NULL, 'general', NULL, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(60, 'BIM Management aplicado a Proyectos de Inversión Pública y Privadas', '', '', '[]', 'espaol', 4, 16, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672959600, NULL, 'general', NULL, 1, 'active', '', '', '', NULL, 0, 0, 1, 0),
(61, 'Implementación BIM en  Proyectos de Gobiernos  Regionales y Municipales', '', '', '[]', 'english', 4, 16, '[]', '[]', 1334, 1, 400, 'beginner', '1', NULL, '', 1672959600, NULL, 'general', NULL, 1, 'active', '', '', '', NULL, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1),
(5, 'Argentine Peso', 'ARS', '$', 1, 1),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1),
(8, 'Australian Dollar', 'AUD', '$', 1, 1),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1),
(16, 'Belize Dollar', 'BZD', '$', 1, 1),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1),
(19, 'Bitcoin', 'BTC', '฿', 1, 1),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1),
(21, 'Bosnia', 'BAM', 'KM', 1, 1),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1),
(34, 'CFP Franc', 'XPF', '₣', 1, 1),
(35, 'Chilean Peso', 'CLP', '$', 1, 1),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1),
(37, 'Colombian Peso', 'COP', '$', 1, 1),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1),
(46, 'Dominican Peso', 'DOP', '$', 1, 1),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1),
(52, 'Euro', 'EUR', '€', 1, 1),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1),
(57, 'German Mark', 'DEM', 'DM', 1, 1),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1),
(69, 'Indian Rupee', 'INR', '₹', 1, 1),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1),
(97, 'Mexican Peso', 'MXN', '$', 1, 1),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1),
(134, 'South African Rand', 'ZAR', 'R', 1, 1),
(135, 'South Korean Won', 'KRW', '₩', 1, 1),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1),
(148, 'Thai Baht', 'THB', '฿', 1, 1),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', 'home-banner.jpg'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `admin_id`, `permissions`) VALUES
(1, 2, '[\"category\",\"course\",\"user\",\"instructor\",\"student\",\"enrolment\",\"revenue\",\"messaging\",\"blog\",\"addon\",\"theme\",\"settings\",\"coupon\",\"academy_cloud\"]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(1, '4yhetyhetyh', 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'English'),
(2, 'system_name', 'Instituto Dozer'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'Enter-your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'PEN'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'your-email-address'),
(29, 'smtp_pass', 'your-email-password'),
(30, 'version', '5.10.1'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'facebook-app-id'),
(36, 'fb_app_secret', 'facebook-app-secret-key'),
(37, 'fb_social_login', '0'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '5'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessions` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES
(1, 'emerson', 'valenzuela', 'valenestradam1@gmail.com', '15ab189bd9d59c0e64b3e200fc2d8889af26d252', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, NULL, 1672726554, NULL, '', '{\"paypal\":{\"production_client_id\":null,\"production_secret_key\":null},\"stripe\":{\"public_live_key\":null,\"secret_live_key\":null},\"razorpay\":{\"key_id\":null,\"secret_key\":null}}', NULL, 1, 1, 'a55c6eab18923e9062564c209a5b603a', ''),
(2, 'Alessandra', 'Huaynatte', 'alessahuaynatte@gmail.com', '7530245ded249d8faadcbe20b9ced9406e7c8ee5', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, 1672725616, NULL, '[]', NULL, '{\"paypal\":{\"production_client_id\":null,\"production_secret_key\":null},\"stripe\":{\"public_live_key\":null,\"secret_live_key\":null},\"razorpay\":{\"key_id\":null,\"secret_key\":null}}', NULL, 1, 1, 'ee0fcb14d54a50aca4643e55eafe2f3f', ''),
(3, 'Alessandra', 'Huaynatteeeee', 'admin@example.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, 1673044746, NULL, '[]', NULL, '{\"paypal\":{\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\"}}', '127364', 1, 0, NULL, '[]'),
(4, 'Alessandra', 'Huaynatteeeeeeeeee', 'hola@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, 1673852484, NULL, '[]', NULL, '{\"paypal\":{\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\"}}', '189752', 1, 0, '0883e3d12536091196fce53336f8102a', '[]'),
(5, 'Alessandra', 'Huaynatte', 'prueba_alumno@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":null,\"twitter\":null,\"linkedin\":null}', NULL, 2, 1675979324, 1676087082, '[]', NULL, '{\"paypal\":{\"production_client_id\":null,\"production_secret_key\":null},\"stripe\":{\"public_live_key\":null,\"secret_live_key\":null},\"razorpay\":{\"key_id\":null,\"secret_key\":null}}', '128793', 1, 0, '040081b4a4192cc9af538e6008446b7c', '[]'),
(6, 'aless', 'huayy', 'hola1@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1677627185, NULL, '[]', NULL, '{\"paypal\":{\"production_client_id\":\"\",\"production_secret_key\":\"\"},\"stripe\":{\"public_live_key\":\"\",\"secret_live_key\":\"\"},\"razorpay\":{\"key_id\":\"\",\"secret_key\":\"\"}}', '192707', 1, 0, '04445bf3ec07828aee5988fe2d744d1f', '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indices de la tabla `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indices de la tabla `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indices de la tabla `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indices de la tabla `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indices de la tabla `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
