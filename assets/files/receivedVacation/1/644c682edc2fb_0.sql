-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-04-2023 a las 02:54:33
-- Versión del servidor: 10.3.32-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cobiene`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categories_ranges`
--

CREATE TABLE `tbl_categories_ranges` (
  `id_categories_ranges` int(11) NOT NULL,
  `name_categories_ranges` varchar(50) NOT NULL,
  `min_categories_ranges` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_categories_ranges`
--

INSERT INTO `tbl_categories_ranges` (`id_categories_ranges`, `name_categories_ranges`, `min_categories_ranges`) VALUES
(1, 'Personal de Oficiales', ''),
(2, 'Personal Auxiliar o Subalterno', ''),
(3, 'Tropa Servicio Militar y Especialista', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_condition_users`
--

CREATE TABLE `tbl_condition_users` (
  `id_condition_user` int(11) NOT NULL,
  `condition_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_condition_users`
--

INSERT INTO `tbl_condition_users` (`id_condition_user`, `condition_user`) VALUES
(1, 'pendiente'),
(2, 'verificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_britanico`
--

CREATE TABLE `tbl_data_britanico` (
  `id_bri` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `bri_name_fam` varchar(60) DEFAULT NULL,
  `bri_last_fam` varchar(60) DEFAULT NULL,
  `bri_cift_fam` varchar(60) DEFAULT NULL,
  `bri_email_fam` varchar(60) DEFAULT NULL,
  `bri_specialty` varchar(60) NOT NULL,
  `bri_settlement` varchar(100) NOT NULL,
  `bri_cip` varchar(100) NOT NULL,
  `bri_dni` varchar(100) NOT NULL,
  `bri_cif_fam` varchar(100) DEFAULT NULL,
  `bri_dni_fam` varchar(100) DEFAULT NULL,
  `bri_create_date` varchar(60) NOT NULL,
  `person` varchar(1) NOT NULL,
  `bri_grade` int(11) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_institute`
--

CREATE TABLE `tbl_data_institute` (
  `id_ins` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `institute` int(11) NOT NULL,
  `ins_name_fam` varchar(100) DEFAULT NULL,
  `ins_last_fam` varchar(250) DEFAULT NULL,
  `ins_cift_fam` varchar(20) DEFAULT NULL,
  `ins_email_fam` varchar(60) DEFAULT NULL,
  `ins_specialty` varchar(60) DEFAULT NULL,
  `ins_settlement` varchar(100) DEFAULT NULL,
  `ins_cip` varchar(100) DEFAULT NULL,
  `ins_dni` varchar(100) DEFAULT NULL,
  `ins_cif_fam` varchar(100) DEFAULT NULL,
  `ins_dni_fam` varchar(100) DEFAULT NULL,
  `person` varchar(100) NOT NULL,
  `ins_create_date` varchar(100) NOT NULL,
  `ins_grade` int(11) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_data_institute`
--

INSERT INTO `tbl_data_institute` (`id_ins`, `user`, `institute`, `ins_name_fam`, `ins_last_fam`, `ins_cift_fam`, `ins_email_fam`, `ins_specialty`, `ins_settlement`, `ins_cip`, `ins_dni`, `ins_cif_fam`, `ins_dni_fam`, `person`, `ins_create_date`, `ins_grade`, `relationship`, `service`) VALUES
(40, 39, 3, '', '', '', '', 'q23rq23rq23r23qr', NULL, 'assets/images/cip/1676364450.png', 'assets/images/cip/1676364476.png', '', '', '1', '2023-02-24T06:20:43-05:00', 6, '', 'asdwefqewfqwef'),
(45, 108, 23, '', '', '', '', 'Avanzado 4', NULL, 'assets/images/cip/1677427960.png', 'assets/images/cip/1677427990.png', '', '', '1', '2023-02-26T11:19:12-05:00', 6, '', 'Escuela de Inteligencia'),
(48, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'Giancarlo.apudlc@gmail.com', 'Idioma ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023044452_89322.jpg', '26022023044453_70651.jpeg', '2', '2023-02-26T16:44:53-05:00', 13, 'Hijo', 'En retiro'),
(49, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'Giancarlo.apudlc@gmail.com', 'Idioma ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023044540_96720.jpg', '26022023044540_15711.jpeg', '2', '2023-02-26T16:45:41-05:00', 13, 'Hijo', 'En retiro'),
(50, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'Giancarlo.apudlc@gmail.com', 'Idioma ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023044825_90153.jpg', '26022023044825_48842.jpeg', '2', '2023-02-26T16:48:25-05:00', 13, 'Hijo', 'En retiro'),
(51, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'Giancarlo.apudlc@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023045128_39633.jpg', '26022023045128_88828.jpeg', '2', '2023-02-26T16:51:29-05:00', 13, 'Hijo', 'En retiro'),
(52, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'giancarlo.apudlc@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023054118_95250.pdf', '26022023054118_78912.pdf', '2', '2023-02-26T17:41:18-05:00', 13, 'Hijo', 'En retiro'),
(53, 109, 23, 'Giancarlo Jesús', 'Apumayta De la Cruz', '313994853', 'giancarlo.apudlc@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677447310.png', 'assets/images/cip/1677447330.png', '26022023054455_64304.pdf', '26022023054455_51116.pdf', '2', '2023-02-26T17:44:55-05:00', 13, 'Hijo', 'En retiro'),
(54, 105, 14, 'Angie arely ', 'Guerrero valdivia ', '325573551', 'welmer800@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677343502.png', 'assets/images/cip/1677343200.png', '27022023075340_59982.jpg', '27022023075340_97083.jpg', '2', '2023-02-27T08:06:08-05:00', 13, 'Hija', 'CCFFAA '),
(55, 105, 14, '', '', '', '', 'Ingles', NULL, 'assets/images/cip/1677343502.png', 'assets/images/cip/1677343200.png', '', '', '1', '2023-02-27T07:59:08-05:00', 13, '', 'CCFFAA '),
(56, 105, 14, 'Angie arely ', 'Guerrero valdivia ', '325573551', 'welmer800@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677343502.png', 'assets/images/cip/1677343200.png', '27022023080254_64457.jpg', '27022023080254_86109.jpg', '2', '2023-02-27T08:02:54-05:00', 13, 'Hija', 'CCFFAA ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_univ`
--

CREATE TABLE `tbl_data_univ` (
  `id_univ` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `uni_name_fam` varchar(250) DEFAULT NULL,
  `uni_last_fam` varchar(250) DEFAULT NULL,
  `uni_cift_fam` varchar(250) DEFAULT NULL,
  `uni_email_fam` varchar(50) DEFAULT NULL,
  `university` int(11) NOT NULL,
  `type_process` int(11) NOT NULL,
  `uni_specialty` varchar(250) NOT NULL,
  `uni_tuition` varchar(250) DEFAULT NULL,
  `uni_settlement` varchar(250) DEFAULT NULL,
  `uni_cip` varchar(250) DEFAULT NULL,
  `uni_dni` varchar(250) DEFAULT NULL,
  `uni_cif_fam` varchar(250) DEFAULT NULL,
  `uni_dni_fam` varchar(250) DEFAULT NULL,
  `uni_grades` varchar(250) DEFAULT NULL,
  `person` int(11) NOT NULL,
  `uni_create_date` varchar(100) NOT NULL,
  `grado` int(11) NOT NULL,
  `relationship` text NOT NULL,
  `service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_data_univ`
--

INSERT INTO `tbl_data_univ` (`id_univ`, `user`, `uni_name_fam`, `uni_last_fam`, `uni_cift_fam`, `uni_email_fam`, `university`, `type_process`, `uni_specialty`, `uni_tuition`, `uni_settlement`, `uni_cip`, `uni_dni`, `uni_cif_fam`, `uni_dni_fam`, `uni_grades`, `person`, `uni_create_date`, `grado`, `relationship`, `service`) VALUES
(39, 79, '', '', '', '', 17, 1, 'Ingeniería civil', '24022023063005_2169.jpg', '24022023063005_26256.jpg', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '', '', '', 1, '2023-02-14T08:25:35-05:00', 7, '', 'Actividad'),
(40, 90, '', '', '', '', 17, 2, 'Diseño digital publicitatio', '24022023063401_42479.jpg', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '', '', '24022023063401_15371.jpg', 1, '2023-02-17T15:46:25-05:00', 16, '', 'DETEL - COPERE'),
(42, 63, 'Dana Fabiana ', 'Rodriguez Chumacero ', '582579250', 'danarodriguezchumacero@gmail.com', 11, 1, 'Administración de Negocios Globales', '24022023063536_4187.jpg', '24022023063536_92371.jpg', 'assets/images/cip/1676848302.png', 'assets/images/cip/1676848644.png', '24022023063536_88225.jpg', '24022023063536_82284.jpg', '', 2, '2023-02-19T18:36:27-05:00', 20, 'Hija', 'Pensionista '),
(47, 89, '', '', '', '', 17, 2, 'PSICOLOGIA', '24022023063720_91446.jpg', '', 'assets/images/cip/1677003235.png', 'assets/images/cip/1677003134.png', '', '', '24022023063720_64938.jpg', 1, '2023-02-22T16:12:27-05:00', 17, '', 'ESGE-EPG'),
(48, 89, '', '', '', '', 17, 2, 'PSICOLOGIA', '27022023095452_79972.pdf', '', 'assets/images/cip/1677003235.png', 'assets/images/cip/1677003134.png', '', '', '27022023095452_35269.pdf', 1, '2023-02-27T09:54:52-05:00', 17, '0', 'ESGE-EPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_date_das`
--

CREATE TABLE `tbl_date_das` (
  `id_ddas` int(11) NOT NULL,
  `date_ddas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_decree`
--

CREATE TABLE `tbl_decree` (
  `id_decree` int(11) NOT NULL,
  `name_decree` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_decree`
--

INSERT INTO `tbl_decree` (`id_decree`, `name_decree`) VALUES
(1, 'ARCHIVO'),
(2, 'TRAMITE'),
(3, 'CONOCIMIENTO'),
(4, 'COORDINAR'),
(5, 'CUMPLIMIENTO'),
(6, 'DIFUSION'),
(7, 'EXPLOTACION'),
(8, 'ESTUDIO'),
(9, 'HABLE CONMIGO'),
(10, 'RECOMENDACION'),
(11, 'RESPUESTA'),
(12, 'SEGUIMIENTO'),
(13, 'ACCION CORRESPONDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_drive`
--

CREATE TABLE `tbl_drive` (
  `id_file` int(11) NOT NULL,
  `frwrd_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ext` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_drive`
--

INSERT INTO `tbl_drive` (`id_file`, `frwrd_id`, `name`, `ext`) VALUES
(163, 15, '63e6df5b12b62_4.jpg', 'jpg'),
(164, 15, '63e6dfad63b0c_0.jpeg', 'jpeg'),
(165, 15, '63e6dfad65054_1.png', 'png'),
(166, 15, '63e6dfad6632a_2.png', 'png'),
(167, 15, '63e6dfad685ed_3.jpeg', 'jpeg'),
(168, 15, '63e6dfad6933a_4.jpeg', 'jpeg'),
(169, 15, '63e6dfad6a59a_5.jpeg', 'jpeg'),
(170, 15, '63e6e6aa6e5a0_0.zip', 'zip'),
(171, 15, '63e6e6c6a3791_0.pdf', 'pdf'),
(172, 15, '63e6e6f7d1e01_0.jpeg', 'jpeg'),
(173, 15, '63e6e7009f432_0.xls', 'xls'),
(174, 15, '63e6e72e961be_0.txt', 'txt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_drive_rcvd`
--

CREATE TABLE `tbl_drive_rcvd` (
  `id_file_rcvd` int(11) NOT NULL,
  `rcvd_id` int(11) NOT NULL,
  `name_rcvd` varchar(100) NOT NULL,
  `ext_rcvd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_drive_rcvd`
--

INSERT INTO `tbl_drive_rcvd` (`id_file_rcvd`, `rcvd_id`, `name_rcvd`, `ext_rcvd`) VALUES
(3, 3, '643edbc496eb8_0.jpeg', 'jpeg'),
(4, 3, '643edbcd88ca8_0.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_form_dace`
--

CREATE TABLE `tbl_form_dace` (
  `id_formdace` int(11) NOT NULL,
  `user_formdace` int(11) NOT NULL,
  `token_formdace` text NOT NULL,
  `observation_user` text NOT NULL,
  `assignment` text NOT NULL,
  `assignment_type` varchar(15) NOT NULL,
  `img_tit` text NOT NULL,
  `img_con` text NOT NULL,
  `date_create_dace` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_form_dace`
--

INSERT INTO `tbl_form_dace` (`id_formdace`, `user_formdace`, `token_formdace`, `observation_user`, `assignment`, `assignment_type`, `img_tit`, `img_con`, `date_create_dace`) VALUES
(1, 14, 'fe098a881bf29e9e81dac5e54315a812', 'Ninguno', 'Ninguno', '2', '', '', '2022-06-15T13:16:01-05:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_forwarded_corr`
--

CREATE TABLE `tbl_forwarded_corr` (
  `id_frwd` int(11) NOT NULL,
  `destinty_frwd` varchar(30) NOT NULL,
  `class_frwd` varchar(20) NOT NULL,
  `indicative_frwd` varchar(10) NOT NULL,
  `date_frwd` varchar(22) NOT NULL,
  `clasif_frwd` varchar(20) NOT NULL,
  `frwd_by` varchar(30) NOT NULL,
  `signature_frwd` varchar(50) NOT NULL,
  `ext_frwd` varchar(20) NOT NULL,
  `rcvd_corr` int(11) NOT NULL,
  `issue_frwd` varchar(150) NOT NULL,
  `team_id` int(11) NOT NULL,
  `answer_jem` varchar(70) NOT NULL,
  `ext_answer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_forwarded_corr`
--

INSERT INTO `tbl_forwarded_corr` (`id_frwd`, `destinty_frwd`, `class_frwd`, `indicative_frwd`, `date_frwd`, `clasif_frwd`, `frwd_by`, `signature_frwd`, `ext_frwd`, `rcvd_corr`, `issue_frwd`, `team_id`, `answer_jem`, `ext_answer`) VALUES
(1, 'DEPENDENCIAS EXTERNAS COBIENE', 'OFICIO', 'DETEL/COBI', '23/02/2023', 'COMUN', 'TCO1 ORTEGA', '', 'docx', 1, 'VIDEOCONFERENCIA MENSUAL DEL SR. GRAL BRIG COMANDANTE GENERAL DEL COBIENE', 12, '', ''),
(2, 'I DE PIURA, II DE RIMAC, III D', 'Fax', '024', '24/02/2023', 'Comun', 'OLAYA', '', 'jpg', 0, 'Remite informacion relacionada al apoyo social', 11, '', ''),
(3, 'asdasdasd', 'asd', 'asd', '18/04/2023', 'asd', 'asd', '', 'jpeg', 0, 'asd', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gguu_placement`
--

CREATE TABLE `tbl_gguu_placement` (
  `id_gguu_placement` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `unit_gguu_placement` varchar(150) NOT NULL,
  `greatunit_gguu_placement` varchar(150) NOT NULL,
  `core_gguu_placement` varchar(150) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_gguu_placement`
--

INSERT INTO `tbl_gguu_placement` (`id_gguu_placement`, `user`, `unit_gguu_placement`, `greatunit_gguu_placement`, `core_gguu_placement`, `token_formdace`) VALUES
(3, 14, 'Unidad gguu', 'gran unidad gguu', 'Nucleo gguu', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_institute`
--

CREATE TABLE `tbl_institute` (
  `id_institute` int(11) NOT NULL,
  `name_institute` varchar(150) NOT NULL,
  `cat_institute` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_institute`
--

INSERT INTO `tbl_institute` (`id_institute`, `name_institute`, `cat_institute`) VALUES
(1, 'Centro de Altos Estudios de la Moda', 1),
(2, 'CEPEA', 1),
(3, 'CEPEBAN', 1),
(4, 'CESCA', 1),
(5, 'CETPRO “GAMOR”', 1),
(6, 'CEVATUR PERU', 1),
(7, 'Corporación Educativa San Vicente', 1),
(8, 'D`GALLIA', 1),
(9, 'Daniel A. Carrión', 1),
(10, 'Desarrollo Gerencial', 1),
(11, 'Desarrollo Profesional y Técnico', 1),
(12, 'Internacional de Gerencia (EIGER)', 1),
(13, 'AKRON', 1),
(14, 'EUROIDIOMAS', 1),
(15, 'Headway Collegue', 1),
(16, 'INTECI', 1),
(17, 'Lectura Veloz(ILVEM)', 1),
(18, 'Latino', 1),
(19, 'Libertador', 1),
(20, 'Interamericano para el Desarrollo Humano y Empresarial', 1),
(21, 'PRIVATEACHER', 1),
(22, 'San Ignacio de Loyola', 1),
(23, 'ICPNA', 1),
(24, 'Markayachay', 1),
(25, 'de Formación Empresarial IFEEP', 1),
(26, 'Internacional de Graduados - EIGRA', 1),
(27, 'GUIDE', 1),
(28, 'Alianza Francesa', 1),
(29, 'SISE', 1),
(30, 'Pitagoras', 2),
(31, 'Trilce', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_neogicates`
--

CREATE TABLE `tbl_neogicates` (
  `id_neogicates` int(11) NOT NULL,
  `name_neogicates` varchar(100) NOT NULL,
  `jefe_neogicates` varchar(11) NOT NULL,
  `m_neogicates` varchar(50) NOT NULL,
  `s_neogicates` varchar(11) NOT NULL,
  `descrip_neogi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_occupancy_home`
--

CREATE TABLE `tbl_occupancy_home` (
  `id_occupancy_home` int(11) NOT NULL,
  `from_occupancy_home` varchar(10) NOT NULL,
  `to_occupancy_home` varchar(10) NOT NULL,
  `user` int(11) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_occupancy_home`
--

INSERT INTO `tbl_occupancy_home` (`id_occupancy_home`, `from_occupancy_home`, `to_occupancy_home`, `user`, `token_formdace`) VALUES
(3, '2022-05-17', '2022-05-18', 14, 'fe098a881bf29e9e81dac5e54315a812'),
(4, '2022-05-14', '2022-05-16', 14, 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_office`
--

CREATE TABLE `tbl_office` (
  `id_office` int(11) NOT NULL,
  `name_office` varchar(70) NOT NULL,
  `descrip_office` int(70) NOT NULL,
  `first_office` int(11) NOT NULL,
  `second_office` int(11) NOT NULL,
  `members_office` varchar(100) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_priorities_dace`
--

CREATE TABLE `tbl_priorities_dace` (
  `id_priority_dace` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `first_priority_dace` varchar(100) NOT NULL,
  `second_priority_dace` varchar(50) NOT NULL,
  `third_priority_dace` varchar(50) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_priorities_dace`
--

INSERT INTO `tbl_priorities_dace` (`id_priority_dace`, `user`, `first_priority_dace`, `second_priority_dace`, `third_priority_dace`, `token_formdace`) VALUES
(2, 14, 'prioridad 1', '', '', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ranges`
--

CREATE TABLE `tbl_ranges` (
  `id_range` int(11) NOT NULL,
  `name_range` varchar(30) NOT NULL,
  `category_range` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_ranges`
--

INSERT INTO `tbl_ranges` (`id_range`, `name_range`, `category_range`) VALUES
(1, 'General del Ejército', '1'),
(2, 'General de División', '1'),
(3, 'General de Brigada', '1'),
(4, 'Coronel', '1'),
(5, 'Teniente Coronel', '1'),
(6, 'Mayor', '1'),
(7, 'Capitán', '1'),
(8, 'Teniente', '1'),
(9, 'Sub-Teniente o Alférez', '1'),
(10, 'Técnico Jefe Superior', '2'),
(11, 'Técnico Jefe', '2'),
(12, 'Técnico 1ra', '2'),
(13, 'Técnico 2da', '2'),
(14, 'Técnico 3ra', '2'),
(15, 'Sub-Oficial 1ra', '2'),
(16, 'Sub-Oficial 2da', '2'),
(17, 'Sub-Oficial 3ra', '2'),
(18, 'Sargento 1ro', '3'),
(19, 'Sargento 2do', '3'),
(20, 'Cabo', '3'),
(21, 'Soldado', '3'),
(22, 'Personal Civil', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_received_corr`
--

CREATE TABLE `tbl_received_corr` (
  `id_rcvd_cr` int(11) NOT NULL,
  `sender_rcvd` varchar(40) NOT NULL,
  `class_rcvd` varchar(12) NOT NULL,
  `indicative_rcvd` varchar(11) NOT NULL,
  `date_rcvd` text NOT NULL,
  `clasif_rcvd` varchar(11) NOT NULL,
  `issue_rcvd` text NOT NULL,
  `rcvd_by` varchar(11) DEFAULT NULL,
  `signature_rcvd` text NOT NULL,
  `ext_rcvd` varchar(11) NOT NULL,
  `decree` varchar(5) NOT NULL,
  `status` varchar(11) NOT NULL,
  `mode_decree` int(11) NOT NULL,
  `urg` int(11) NOT NULL,
  `issue_decree` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_received_corr`
--

INSERT INTO `tbl_received_corr` (`id_rcvd_cr`, `sender_rcvd`, `class_rcvd`, `indicative_rcvd`, `date_rcvd`, `clasif_rcvd`, `issue_rcvd`, `rcvd_by`, `signature_rcvd`, `ext_rcvd`, `decree`, `status`, `mode_decree`, `urg`, `issue_decree`) VALUES
(1, 'qwerqwer', 'Oficios', 'indicative', '20/02/2023', 'Común', 'qwer', 'DETEL', '', 'jpeg', '12', '3', 1, 2, 'qwrqwerwfsdf ewfwe fwe'),
(3, 'Gral Div Comandante General del Cosale', 'Fax', 'N° 0100', '21/02/2023', 'Olaya', 'Asistencia obligatoria del personal militar y civil a la vídeo conferencia  \" proyecto de vida del personal militar, su salud es primero \"y \"obesidad una muerte silenciosa \"', 'DEPER', '', 'jpg', '14', '2', 2, 1, '-----'),
(4, 'Gral Div Comandante General de la I DE.-', 'Oficios', 'N° 009', '21/02/2023', 'Olaya', 'Información de Fondo Solidario de Sepelio del Ejército del Perú ', NULL, '', 'jpg', '0', '1', 0, 0, ''),
(5, 'Copere', 'Fax', 'N° 002', '21/02/2023', 'Olaya', 'Asistencia de personal de oficiales, supervisores, técnicos y sub oficiales del CGE', NULL, '', 'jpg', '0', '1', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_relationship`
--

CREATE TABLE `tbl_relationship` (
  `id_rt` int(11) NOT NULL,
  `name_rt` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_relationship`
--

INSERT INTO `tbl_relationship` (`id_rt`, `name_rt`) VALUES
(1, 'Padre'),
(2, 'Madre'),
(3, 'Hijo'),
(4, 'Hija'),
(5, 'Hermano'),
(6, 'Hermana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_request_home`
--

CREATE TABLE `tbl_request_home` (
  `id_request_home` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `day_request_home` varchar(10) NOT NULL,
  `month_request_home` varchar(10) NOT NULL,
  `year_request_home` varchar(10) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_request_home`
--

INSERT INTO `tbl_request_home` (`id_request_home`, `user`, `day_request_home`, `month_request_home`, `year_request_home`, `token_formdace`) VALUES
(3, 14, '032', '082', '20002', 'fe098a881bf29e9e81dac5e54315a812'),
(4, 14, '03', '08', '2000', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_resolution`
--

CREATE TABLE `tbl_resolution` (
  `id_resolution` int(11) NOT NULL,
  `id_procedure` int(11) NOT NULL,
  `adress_name` varchar(50) NOT NULL,
  `range_res` varchar(60) NOT NULL,
  `issue_res` text NOT NULL,
  `ref_res` varchar(60) NOT NULL,
  `date` text NOT NULL,
  `type_res` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `id_rol` int(11) NOT NULL,
  `name_rol` varchar(50) NOT NULL,
  `descr_rol` varchar(120) NOT NULL,
  `jefe_rol` varchar(11) NOT NULL,
  `array_int` varchar(100) NOT NULL,
  `core_rol` int(11) NOT NULL,
  `subjefe_rol` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`id_rol`, `name_rol`, `descr_rol`, `jefe_rol`, `array_int`, `core_rol`, `subjefe_rol`) VALUES
(0, 'No Decretado', '', '0', '', 0, ''),
(1, 'Admin', '', '0', '', 0, ''),
(2, 'Usuario', '', '0', '', 0, ''),
(3, 'DACE', 'Aun no', '71', '[\"71\",\"73\"]', 2, '73'),
(4, 'DAS', 'Departamento de Ayuda Social', '27', '[\"27\",\"28\"]', 2, ''),
(11, 'Mesa de Partes', '-----------------', '54', '[\"54\",\"103\",\"26\"]', 2, ''),
(12, 'DETEL', 'Departamento de Telemática', '76', '[\"76\"]', 2, ''),
(13, 'JEM', 'JEM', '56', '[\"56\"]', 2, ''),
(14, 'DEPER', 'DEPER', '34', '[\"34\"]', 2, ''),
(15, 'Convenios', 'Gestion de convenios', '36', '[\"36\"]', 2, ''),
(16, 'Convenios Recep', 'Sección de convenios para recepción de datos', '44', '[\"44\"]', 2, ''),
(17, 'COMTE GRAL', 'COMTE GRAL', '29', '[\"29\"]', 2, ''),
(18, 'DPP', 'DPP', '31', '[\"31\"]', 2, ''),
(19, 'INSPECTOR', 'INSPECTOR', '30', '[\"30\"]', 2, ''),
(20, 'FOSSEP', 'FOSSEP', '32', '[\"32\"]', 2, ''),
(21, 'DELOG', 'DELOG', '33', '[\"33\"]', 2, ''),
(22, 'DSCS', 'DSCS', '37', '[\"37\"]', 2, ''),
(23, 'ASES LEGAL', 'ASES LEGAL', '38', '[\"38\"]', 2, ''),
(24, 'DEICE', 'DEICE', '39', '[\"39\"]', 2, ''),
(25, 'FOVIME', 'FOVIME', '40', '[\"40\"]', 2, ''),
(26, 'BCE', 'BCE', '42', '[\"42\",\"45\"]', 2, ''),
(27, 'ACMP', 'ACMP', '46', '[\"46\"]', 2, ''),
(28, 'IE \"BONIFAZ\"', 'IE \"BONIFAZ\"', '47', '[\"47\"]', 2, ''),
(29, 'IE \"E.SOYER\"', 'IE \"E.SOYER\"', '50', '[\"50\"]', 2, ''),
(30, 'IE \"RPG\"', 'IE \"RPG\"', '49', '[\"49\"]', 2, ''),
(31, 'IE \"INCLAN\"', 'IE \"INCLAN\"', '51', '[\"51\"]', 2, ''),
(32, 'IE \"JS NIÑO\"', 'IE \"JS NIÑO\"', '52', '[\"52\"]', 2, ''),
(33, 'DISCAPACITADO', 'DISCAPACITADO', '55', '[\"55\"]', 2, ''),
(34, 'ABASTO', 'ABASTO', '57', '[\"57\"]', 2, ''),
(35, 'IE \"STA ISABEL\"', 'IE \"STA ISABEL\"', '58', '[\"58\"]', 2, ''),
(36, 'IE \"LA ESPERANZA\"', 'IE \"LA ESPERANZA\"', '59', '[\"59\"]', 2, ''),
(37, 'IE \"LAS PALMAS\"', 'IE \"LAS PALMAS\"', '60', '[\"60\"]', 2, ''),
(38, 'IE \"M.P PASOS\"', 'IE \"M.P PASOS\"', '61', '[\"61\"]', 2, ''),
(39, 'IE \"MATELLINI\"', 'IE \"MATELLINI\"', '62', '[\"62\"]', 2, ''),
(40, 'CUNA CGE', 'CUNA CGE', '63', '[\"63\"]', 2, ''),
(41, 'CEANDE', 'CEANDE', '64', '[\"64\"]', 2, ''),
(42, 'LA TIZA', 'LA TIZA', '65', '[\"65\"]', 2, ''),
(43, 'CM CHORRILLOS', 'CM CHORRILLOS', '66', '[\"66\"]', 2, ''),
(44, 'CM PIURA', 'CM PIURA', '67', '[\"67\"]', 2, ''),
(45, 'CM AREQUIPA', 'CM AREQUIPA', '68', '[\"68\"]', 2, ''),
(46, 'IE TUMBES', 'IE TUMBES', '69', '[\"69\"]', 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sons_user`
--

CREATE TABLE `tbl_sons_user` (
  `id_son_user` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `name_son_user` varchar(70) NOT NULL,
  `lastname_son_user` varchar(70) NOT NULL,
  `cip_son_user` varchar(20) NOT NULL,
  `dni_son_user` varchar(8) NOT NULL,
  `observations` varchar(250) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_sons_user`
--

INSERT INTO `tbl_sons_user` (`id_son_user`, `user`, `name_son_user`, `lastname_son_user`, `cip_son_user`, `dni_son_user`, `observations`, `token_formdace`) VALUES
(20, 14, 'chino', 'gamonal', '98765432', '12354678', 'No tiene observaicon', 'fe098a881bf29e9e81dac5e54315a812'),
(21, 14, 'raul', 'valenzuela', '98765431', '09876543', 'si tiene observaicon', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_spouse_user`
--

CREATE TABLE `tbl_spouse_user` (
  `id_spouse` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `name_spouse` varchar(70) NOT NULL,
  `lastname_spouse` varchar(70) NOT NULL,
  `cip_spouse` varchar(20) NOT NULL,
  `dni_spouse` varchar(8) NOT NULL,
  `range_spouse` int(11) NOT NULL,
  `obser_spouse` varchar(250) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_spouse_user`
--

INSERT INTO `tbl_spouse_user` (`id_spouse`, `user`, `name_spouse`, `lastname_spouse`, `cip_spouse`, `dni_spouse`, `range_spouse`, `obser_spouse`, `token_formdace`) VALUES
(3, 14, 'carla', 'Paredes', '123456789', '09876512', 19, 'Ninguna', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `name_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `name_status`) VALUES
(1, 'Registrado'),
(2, 'Activo'),
(3, 'Suspendido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_universities`
--

CREATE TABLE `tbl_universities` (
  `id_university` int(11) NOT NULL,
  `name_university` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_universities`
--

INSERT INTO `tbl_universities` (`id_university`, `name_university`) VALUES
(1, 'Agraria la molina'),
(2, 'Científica del sur'),
(3, 'Católica del Perú'),
(4, 'Cesar vallejo'),
(5, 'ESAN'),
(6, 'Federico Villarreal'),
(7, 'Jaime Bausate y mesa'),
(8, 'Marcelino Champagnat'),
(9, 'Norbert Wiener'),
(10, 'del pacifico'),
(11, 'Ricardo palma'),
(12, 'San Ignacio de Loyola USIL'),
(13, 'San juan bautista'),
(14, 'San Martín de Porres'),
(15, 'Científica del sur'),
(16, 'Señor de Sipan'),
(17, 'UTP'),
(18, 'Católica sede Sapientiae'),
(19, 'Unife sagrado Corazón'),
(20, 'Privada del norte'),
(21, 'Peruana de Ciencias Aplicadas UPC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `cip_user` text NOT NULL,
  `encrypt_cip` text NOT NULL,
  `dni_user` text NOT NULL,
  `name_user` varchar(150) NOT NULL,
  `lastname_user` varchar(40) NOT NULL,
  `range_user` varchar(100) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `phone_user` varchar(20) NOT NULL,
  `tel_user` varchar(20) NOT NULL,
  `cip_image_user` varchar(60) NOT NULL,
  `dni_image_user` varchar(60) NOT NULL,
  `create_user` varchar(50) NOT NULL,
  `condition_user` varchar(2) NOT NULL,
  `val_user` int(11) NOT NULL,
  `img_user` text NOT NULL,
  `signature_user` text NOT NULL,
  `password` varchar(30) NOT NULL,
  `team_depart` varchar(11) NOT NULL,
  `core` varchar(11) NOT NULL,
  `neogicates` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`) VALUES
(24, 1, '98c8ee11c22643db1e9b93d52c520808b33ed11cffa62d42d4a55b3765ec728bcd4626b4c713cadca0f8914cdc18955db58b22608c69c8428ee1218d8de32b4bUxumgcMUHRktmF/DCU7Bpa+vvc8MPwHNhgsdnUHVLFI=', '0d72b3f707ba1c849c99cecba0bfcdbc', 'bfe32c1c2050f849a06f56b365d565349426528f127aba9daf052b2c80fc1f1f5cbdb2a9497496a59f40052e8d3dc7ec5931987626d9a46c493e7209355fe9baNxywUDWcFBTHxur3z72uDnQv3bijQdiUzJDC731pDbU=', 'Marlon emerson', 'Valenzuela Estrada', '22', 'valenestradam1@gmail.com', '926730944', '', 'assets/images/cip/1676680057.png', 'assets/images/cip/1682033908.png', '2022-10-28T18:29:13-05:00', '1', 2, 'assets/images/users/1682058780.png', 'assets/images/fingerprint/1676680060.png', '75214038', '', '2', ''),
(26, 11, '6a25310569fe05bcff99a4d07d68699449cb2e594b6ae8f6a13c03132b45a7479c11de28192789450590fbd36d8798f225a0f8e432f79549f8f8f8b8837c77acRgjPMRjRxzBSm+L3+aps7cxMdli2x1V/lxoLBoZUIww=', 'e96a3966eac1fce863eae454a94fa4af', 'bde180f50266f0b9c090253f7e473026b13b06364d1db3bf3d8de67529ef076850c2d3df2ad42bfa5b68ecfae88e4e189138e78ab8ca95d89122b43126b9c5638Cwez25wo6OxWftILyTbwDrBMjXSLAEIces30jaCScg=', 'Roberto', 'Mendoza perca', '22', 'beto1perk@gmail.com', '972252744', '', 'assets/images/cip/1677188046.png', 'assets/images/cip/1677187974.png', '2022-11-03T22:32:07-06:00', '1', 2, 'assets/images/no-image.png', 'assets/images/fingerprint/1677188125.png', '', '', '0', ''),
(27, 4, 'c51cad4291ddb52621b6a6c086d27387e63856a0cec9204497fdcfbde28e547fa4a829127c64c1ae252706ded9c6d064c5bc5d33d153364212b2b45e1a6d9914IJtjggrH0ZAe4hYwb4xKrm2TMbuZBSk/p4BIboECEVw=', 'f5935bfe675c31372dd8f66c7a81f6af', '7fc04c37cb269ee1cbfbf0316eb966c15429bf7ff1d2f191d2bee9a7b6e0615b3b008957e3344e04940e137d9ebeabecb46912f2781fcabe8121f56b492f85f3o/3HXzhRPypkI9UsJCJ04ca0CDm07/DmIGhZ9HF3AJA=', 'Javier mario', 'Acosta cancho', '15', 'javiermarioacosta27@hotmail.com', '960315252', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-01T20:26:43-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(28, 4, 'd44f7aa4ff3ad5da972ef155682678a2d7d23bdfb013ce1eb2661b8eec9ec43afb3ac6a04c5d2bfa1ce079439afee47d7ced2c5a36c4ad49d1fa34bfb0d9842dc0dKZsxgNITcKCKGXpVHiVPJx0+/gn5JXRpfI9D6O9g=', 'c56dafb41b9fdba45bc2577636fd2873', '2a6edaa624ae16535198e106c5d5688d97d5632406e7c5690e3c62b58022d5559df4bcf594da738e1612ba6167e80a6194df76a1b03247d76374f28c670c67f3wbRNUf8ItxVOKFBZyiuhSk3C0Qe2RskVby/pTYe8nu4=', 'Daniel Agustin ', 'Muñante Valencia ', '22', 'danielmv94@hotmail.com', '957219455', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-03T16:20:17-06:00', '0', 1, 'assets/images/users/1672701110.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(29, 17, 'b24deba49b8b41dac9f31fffe5c81c4ad166f67a176ccb56e8a81fabe2ace5a92547383c0ff1632b59572f9cf6c0afcd014652e5c36e4de5b729429910caab9d3g0rMKgedVk2utc+G8gQgk2QUz/IGPtvNfVXykm+wNA=', '0f8c3ba05231a3ede0089444bb74f759', '19fe72493dbbe154142a3862f0943f97a2b5437d3e3b0ebab99375167b52552d9558bd529d3326410095e72611a4e4c77c67365de465c75dc43c00930e44b62bx0B9FFDimC4hQg9K9CCsup/4ecMObZVrMTNzOthkL78=', 'JONATHAN HIPÓLITO', 'GANDULIAS JIMENEZ', '6', 'jonganjim86@gmail.com', '958104231', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-04T19:46:01-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(30, 19, '23261525c3b2a924b69526d827ae475c046399252f9557fefc83bc3933627240180046f98e658f05e862c34386cf70afa35c3282796e678d2fd898dd28ef0fecp8ISkP6QLhLqMy2KiqkkjyflMML8pZdMEauvB+feFGI=', 'b830a904fa342867947d7dbf9a58b13f', '6d818d1cfcbce519c2f435febf2043c2079fd006966f8bc4a2dcd6714f8088ddf84170143e64bb33b792bed603d0374505058505f878277e53fd1996a2d3f0b4pcCpHBLayNbHsr0qiR7nYYvWIz8uCIUVzMQawnS8y14=', 'Ricardo', 'Huanilo Tarazona ', '5', 'Ricardohuanilo79@gmail.com ', '996132986', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T09:19:41-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(31, 18, 'cf11c800fe496cace488ffaeab96b9de6e2a549e9ad2bea312569eaecc3195623f6d57140f926c10a78788b5a9128b159214d684556c80cc91beaf1c78da18ff6pueVVWP6bEbsb7CfX3/cb2+wz2v0CmZPO55Py/sFvw=', '38039a37a2d97f5aa5a4c37d50b09b13', 'a5829a6e5afdf81f743b37c79088ba7df3517f0a5347d5635f7163e48df25f74205b25c8b8a3d470858ecdd2402ece245c7760bebf288e549e5bb5c26a386246n11qExzoxv2oLDjP0AESj0rWwcP+SM6m/ppWh/FMa2Y=', 'Ricardo Enrique ', 'Sampen Aida ', '7', 'ricardo_sa48@hotmail.com ', '956030396', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T13:04:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(32, 20, '03caa592c41ad107e67cf567909abf34a9a3c96672f06039e904da62c9fb45c94c09460032a9dd9600957648001fbd44fa2dfc84d86a1444891b55b79a510beaKU0MkDoS4ibXIAFQVr5DRDuolHTvR6Q0xTk/tnhFEvo=', 'da2371822ac87fda3e6c6e66c7e20e80', '2cdd14a95699f25df38e10d35b341260cea7b281cabed16e7e85e1d4ad817bdb6590d52ebfc918a56e7177dbfcc0730159be071b496022b3f571e5081d967824/+u9Io3VUASuOZX9oEgvqxcJUn1nh2PzNMG+PWCV+gc=', 'Jose ', 'Espinoza Lucho ', '4', 'Jepelucho@hotmail.com ', '999044558', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T16:28:30-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(33, 21, '1e5580ceca0842b71f050dbbb95553f2016fbb8b2c15d884e9c057e2703a9963485852a128d26e7e7864e1c4944b92293ca05738ffd6729d48747df8e77b39d6DxUHtNEGvzhx4J9BGsE9HEffP9jolthE8RJWJ+yhVEk=', '924502a06d963586c067c2eb12b9a640', '2c52370f5e726038b706bca9b9cf47f8a6ff52217783c21db6b2046864a04966011a2ed91bc8c8af7b67ca1d5d3ba97e2999a5809a9abcf9a6af154149c195908SQd6xB//TOENBzUMXvoo8cTINOHcQzN/kku/Q/1FmI=', 'Ander ariel', 'Bustamante menacho', '22', 'Anderariel@hotmail.com', '979606527', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-06T16:51:21-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(34, 14, '0fde97aeb43a5f16f5eb3882708fe9b94e84e123213ed4f7fe23155ef3e2e02e1d8179f8d47d8bbc7a3ba798f5704ca640da3847eab39c8000af9a8f202949278/6nRFS5IMs3TIm8rkDBxSpwc4nArVwzmp6k0q/UeDQ=', '0f08ce3b2beffff9d0eff78522fb884b', 'f9ee100b0d679be8eb3784ab8bc58d82c1ae7410a56f7a1edcd22c9d71eb23187acfc60f9bbd8ea5391b07084ff7ee2747ca81ba7c7184983e1151143613804acrBHijt31RWyIMX1rPF8m7L1mZu4+l3icUp5FM1oTtc=', 'nelson manuel', 'esquivel jesus', '8', 'nelsonesquiveljesus@gmail.com', '949545262', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-07T10:53:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(36, 15, '4c8de3f011e6b3378097c0f4b83ae7449956f1824b8479a707308f767d5f3b2ecc672b537263979822a3d10e1a4ec789b112915c663c34381ab2972271953002hjPv16GcRaWoSVJYXTslZ+4irCpkQ8x4TenegxydKO0=', '42f1113833a07c895f4f2400bbf2f9bb', '437c15e3c9570453e07fa569364ac07b9823e10f9f3cd456cd16d8751da40f66b4e878e6c21bc62cc459938af22290c64773d588f80b6e9b41832ddaf4fb2dbevgj/lNfXO+mgkGNDRI8MvQS+pUdUslQDGwfX9OvK7oI=', 'Dayvi Jimmy ', 'Villegas Huarcaya ', '5', 'dayvi1977@gmail.com', '901661304', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-08T05:45:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(37, 22, '6ffcd4c2d187238b899a9606356ea57995c1a08e4aab427908846f2022398ccb8012a7190058f9e211d6a755b870401f8b1c06f665028c054be03e82c10bb264SH96xcfqywK6CLn/HHK+Fb2PusMZMlkmvJJgL+58D48=', 'd4509062ab274e66aed053c3d0167114', 'b53a35e10dd2dd3b6a5347b727a3e7c8cab9b150889d015181216ebcc22e89cedf5e35568063bc064e5557241e0793c1a1e641b113d79505a695d2b581e821b7fCD+WPRtvfI+DheZt6sPB4jtrlWS4DLRxFZ+WhtFbhE=', 'Larrinilto', 'Ocas Azañero', '13', 'larrinilto18@gmail.com', '999800318', '', 'assets/images/cip/1673403084.png', 'assets/images/cip/1673402991.png', '2022-12-08T21:40:11-06:00', '0', 1, 'assets/images/users/1670557474.png', 'assets/images/fingerprint/1673403259.png', '', '', '0', ''),
(38, 23, 'f3e40313772ec3d05545121dd64ea49f74624195bceccad18d5460e70afe137f6e0fed3a31852b36e2041ce7ffa017717154a2de8a22deeb8a73915c17d82051f66wHAbH2vDMHtnltN88LZzggbTVCLL0GorR4ftpmvs=', '5c1718b7018238b9d8bdfb91d02108ba', 'fd52b116398735123eaa079f866239cfd4fc02c5834d0618068d70ef4fa74208a74559ba21440bed4dcd254e8bd9678d9e2c2242a2c1e12d870f3abd0912e950gBLuoHrsGe5NXnFJniD+VmZXelQ2zRVI7CSh2b0yHrY=', 'Danny Anderson', 'Huamani Chucuya', '15', 'psdannyhuamani@gmail.com', '930302567', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-09T07:53:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(39, 24, '404a625d18121654aa684819b46797905b293ca232c293e5877c8eac507366de9ba514172749c134821a5d0f897d05743865816759a4396c199033c5e44bb20bWkHY2TnDVWhyjBbhLhbuzh/RNntO2yea88cvt7qVzUg=', '833fd5185a5812044668e682a588ee75', '29b0c5fb787211ebed7a4b99273253e532a0a75223f1df31faef81e80f4655207c26f2a77035e901b3ec89e00fec4dd63344c36ac1e28a067505344602dcc4892ZmuAlevByQt4jxdYv32twbsg6ofXPhEc6DmTCZv9T8=', 'Christian Oswaldo', 'Jauregui Teran', '6', 'cricri2658@gmail.com', '975044058', '', 'assets/images/cip/1677237456.png', 'assets/images/cip/1677237460.png', '2022-12-12T09:20:49-06:00', '0', 1, 'assets/images/users/1677237465.png', 'assets/images/fingerprint/1677237447.png', '', '', '0', ''),
(40, 25, '0d5a5b5a0be8b55a9481e958d24eedc1865cfa07583d16d16a5c60581c6e9a5b60bdc58d4cc70c0316737358007da5dd3ca9137e421f6240b7391080b9a5e2c7f94EB0Qb8tcrzHnQm9J+rPzQrlWGYYLtD5nZX3SkpAU=', '9a244dcaec269e816040fb7f2933b78a', '2e02200fa52e728769633be52dd47e112b96fa9139888a8256a7c6303f8b06fd9e8100570fea6423ce8b78488de012dc487a5e25fbfc8a091586e55c57b1fcd6GO7pP10Z9F2HYEkALXeZVEZzfFc/+w8XV2AOD8DqHjo=', 'Jaime ', 'Santa Cruz Pinela', '7', 'xtoverdad@hotmail.com', '968019017', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-12T11:22:24-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(42, 26, '2ac77375eb0d818c870ec412760a3d7b688f2199e360037bafe87f82528eb1e34e123c869b3da99fbab2eecc2509e4bd3ebb44584a5fc801f93329c027b0068d1TDxLwt3g03M518MJk+SrX90d4K0lh2+jBuZa0eiLak=', '506f26e4d8793d800d4c26a727035021', 'a182dacd41fc955353ca6aeba4abd74a86cb9558961a57023c3dc1248894938849f626dd7241e4ea069cd9756da252b82d0bb48ea881a3bb7373abb30f8127a43KzKS25BirM16dsl5QVZv8tPTGcwoexVoaaf43v45nY=', 'Segundo Julio', 'Maldonado Milian ', '14', 'maldonadomilian.jmm@gmail.com', '945343661', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T07:57:33-06:00', '0', 1, 'assets/images/users/1671113003.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(44, 16, '1f5db2ff9093ebacc2c81fccaf9758dea12d3c32ec73063295b8da4175eb5819fc2b5d946dfb7a5d376c5477df2e48aa43a8a99ef19ae98e1fb50eca42054d0ayeZ+DIzKPro/b6yt/u/YoZdT5f0hD7ft8d9zLBixa1Q=', 'b7e2f3f9215b8e3e7672d0493efb7bb8', '14af37e9516fdfd449a5340407b4daf5ec3db540adce57ddbbb81f9315502d5b80acdb187ffee7cefcf0a5a22f651a9c2e2fe12d0ca4f915907c9fe07d721c0ds5J0IyppcIja7RBXglwtwIJuNKSZ9GfX3PrydosgKWk=', 'Julio ', 'Guzmán ', '22', 'juguar01@hotmail.com', '981162510', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T11:15:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(45, 26, '660f22e425eda281a8ca71d175c7e1a33a95879667b573b0a1cbd81944188e17994da7e119ef8ec0c7cde85511eb3f849683a7f56b1835b8923ccdf19e06a82fusV35K3y2Sh7SNqOS8e/b74LU01PsKXPjTEGYlQF7xA=', '38340c38aaa625db95839d70e904e353', '4e433900f50fec2d17cb7ca533e145026ef95e3f3072bd9ec29fc5181e5c433ee397737a339aa62049de8a76357a93783d6aa20163738f7b2d09b550b7ab8c86z8OUpW3eSJYGKjVdUtC6ne3QDt7751ea7HvgUpHjS3c=', 'Oscar', 'Guevara Ramirez', '22', 'ocurra_24@hotmail.com', '974614777', '', 'assets/images/cip/1671125828.png', 'assets/images/cip/1671125767.png', '2022-12-15T11:31:03-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1671125892.png', '', '', '0', ''),
(46, 27, 'd01ee4fc1c3f98fee5f423f7040bb09d93b8afd53e6db1af5c29ac93539e572436b728d4c8601d6b9492efbf7a43bbec30ef3a81d96f24c0de6d440fb3cfe8648lzLnN1xH49f2srlZz87k01xWr9vmuuHPvEOCNP8bw4=', '2bbe493e6b4c34935ee38baf69c87bb7', '592ddc90d2ad01ac2705517793b115563a57fc83cce7bf6fa11af5ab1989d1fd06f28800dc19748287af9a05af4424e33aaa1f7078d3a8b750bb9b9242ecb768lh8H+mBGzMUrVqJH4smWB1YOQj3EbRQjlW/VlUyyi1w=', 'Wilfredo Jesús', 'Bastidas Huayta', '8', 'wilfredo_bastidas@outlook.com', '947514654', '', 'assets/images/cip/1671210100.png', 'assets/images/cip/1671210052.png', '2022-12-16T10:50:14-06:00', '0', 1, 'assets/images/users/1671210368.png', 'assets/images/fingerprint/1671210083.png', '', '', '0', ''),
(47, 28, '6de110188636a25f3298183aa9d475d952ec5826f6438d3a95bbad22c577ef99305fef48655cb72ea627ed5605c0a3bb7332df93e3337f1cf1fc62b8446b6985CyP0B9Yxd3hzTj74iP5uUandtiZC1tWQjRPJLCXYCwQ=', '9bacb65511186ab00199e566c644b70d', '57d5ecde1b460032dc19db4060015d15e95c11d1dbac14f7546a6126f1249691c57ddb68a43cee93d475a412a10ae15b8eb739b2971308c5ea7bb3f5e346f017/yTVNc6NYWSK8qZqFa0HxPeM9rZCQNPAkjdz/QXdkus=', 'Jorge Rolando', 'Pachamango Novoa ', '5', 'jrpn.abogado@gmail.com ', '968304009', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-17T04:34:49-06:00', '0', 1, 'assets/images/users/1671273669.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(49, 30, 'a3257844900d9fad65f9b430ee14ad394131b5fb4a3aad250fb328052077d082cb6004000785ccbe0bee97e20d616dd05354fcd81ae5ad3aeede37e5352ca018hhrrxfIBoUihvmYTSUQqxKs5fyDusyBYLppY4QDecLw=', 'fe83143d80af2a9f7000d99378232cf5', 'dea1cc4bc1be4d477b4438d880c939c3172f5468df5d80ee693131dca9b25885af79412d522629a84eb66956b624b8bb33a84625f5c8d83508feb7ed13c6817beAsIMbKTBWV6Xa2PwXl37eI8DlpENAMwFZ5GBlRrAb8=', 'Miguel', 'Bovadilla Marcilla', 'Seleccionar Grado', 'mmicky619@gmail.com', '933566511', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:52:32-06:00', '0', 1, 'assets/images/users/1674873088.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(50, 29, 'bd738165a6bcc6309c0766d6c1d360897748435b0292a67a6e0a39ba3a8fb59a2419a813d5416149a1e8a7e2a1beb2600095c1afb7af971d826cba43b9137906TMe7VnuMUxurdHLrVJfdsYufQqQKrfFj6VNadzGSPDU=', '60b905686dae9345100b73507624cbcc', 'f8d03ce29113c7882d7c3f11825dce8709648023aab1b3c4b31d0a399ac5394a7c3c4b1a6fbbf7ed43fa05e769f5f76544420e135f250439641797593def628bv3T/Q086ZtNgnycGtOVQmrYQ4XP3k0BehO2FR+nT4zg=', 'Higilia', 'Marcilla Espinoza', '20', 'mbovadillamarcilla@gmail.com', '960473404', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:57:17-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(51, 31, '08217018f846c0086e5843aad4b834006ebd70746f589b68199e35e0df98de95ea15fe98acce3f4eaf680f10d7b91cefd75e9e038dd80f08d635e705e8c64959b5H4HmftEICEuCHNGz9QWdaST4yzDGjHE/YimJGwNIU=', '1cf6312772096ac6694530d132278c1a', '1b0f6f2a85d35342a691eff49835ab3141b078ed8ed7ca9c7b5f12ed73ebfe1f0dbf9f8c2903cb540dca87a401d3f47009398fc9e25375e0de421609ed37e0637Rx2IbwBiyuL1XfYm6eROAi2SAAyy4+yjN9gqY8YAZg=', 'Erix Aldair ', 'Guevara Tone', '9', 'guevaratoneerixaldair@gmail.com', '954602802', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T20:43:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(52, 32, '1c2116e185333ea55aba49926f734b936c3db17888985ab934f838ecb73a72c8c78a3ff1591c4dc8dfd4117b813c9488d7c579d4ea4034fef84a43abd0446337kKXFiXhug2zT1hO42HVFYMs84McOsi/PvGi4IW/v+iE=', '77625e07af744175ddb13468b4850938', '4b29e1e622c95f427413b11b0be24df9b4bf707cc12fa77da32b62a38cbec4e7e672cf5bfaae9493cea03bd4580b0e9842795a9d88f394626ecc9ad112b6d7a4iiOPSJ18nummBmJ9r13XsVZeIyNv5jsNBqlSxZEMed4=', 'qweqwe', 'qwer', '3', 'marlonunico02.99@hotmail.com', '123123213', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T13:56:06-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(54, 11, 'eb11f9a7302443ae6af21d84dd4f94cd8d270152e463f75afabca07831497cff0ca799b5ecdd8caa1e0fd96cac20210855c19abfea22bec4e9e19cac16908e307PaUvfvSF9CNI72mO+9QtfggUAUL7g16D10wFFCwp0k=', 'cd3c2568b284308b8e64534c1d4675cf', '772ac74f9672968127e507723b815a21b4e7f435f852feb6a58712ba7aadd3e2b6bccb3f91cbe7af94b7cf0c464224c739b39e101da31717603d043286c5f005rhzDKK1XZM8VVHr4bSuU7lXGiq0bNDs5i00YLdg1yFs=', 'warren', 'gonzales trigozo', '13', 'warrengt.4@gmail.com', '959528931', '', 'assets/images/cip/1674591265.png', 'assets/images/cip/1674591302.png', '2023-01-24T14:08:27-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1674591357.png', '', '', '0', ''),
(55, 33, '9ee2f7e37fc137c42df4020d9ef39098a70f34bc88d2f710440472279eadd856136f2114a1b3b30211811d823d948f0d7bdcee7931bffbe99a05fb7d863d52d3TO5oK5q3dGW8wyIeSk4EgaYjQE2olDB62875gc4TSYw=', 'da8bf31baeec1b15db76a9add752f68d', '06a2fdaf4d60e6064587f75ef1c60de0c239f5afe67dd61d9b0148a5a6db734a438e14e8cd49f5b767c5ae355682e4f5f9c06dc7b223c27e4f043f14c175b595Ye9iCu08wNDm9O/1SNhfqAwiaNwRI9KgAkAoGIriE+w=', 'Dora Anglica Trinidad ', 'Maldonado Vidal ', '16', 'dorita123acuario@gmail.com', '920733873', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T14:12:49-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(56, 13, 'b2e9131b3c57ae9e7e591fb3078405cd51a0251791fa11dd62ef4051314c34713b341dbeba7df2a21981312186637bf93240bd3e4eb0efda3ecccdc807274208CW4WE4wSMcvA1ZvjI2V/O50p0Gtw0M1msgjfkCTs06w=', '04e77f7732c5d8fe3e8a72e3fe5f1b15', 'c963e82ccc8357628782c6bfd4499cd359514f8a7f7d627322ee010715160c647f353112f570b9a5ae95c6fe14589ddb4e432a4745fadc42219fdab5149e2ce9lG0tVBb9FKPodsAW0a2QWHEvAbU2hTzp4i2/lWyFT/8=', 'Jorge Luis', 'Jaramillo Lam', '4', 'jljl72@hotmail.com', '955501362', '', 'assets/images/cip/1677188058.png', 'assets/images/cip/1677188018.png', '2023-01-24T16:33:42-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677188133.png', '', '', '0', ''),
(57, 34, '494a1afe8fab69363c5b957450ddbdf0498a9de0010663b8894fc34ab57c9b1c512f9ae8bdf5a6d66f89382adc38c19761adf9ce206187c58d3e81cef2c332924UV3umRdVKZlt12JBb7vIqfmsdhDQHaorCCRc2jkU54=', 'f1eb9f803f83628cf63e29dadeb9324e', '008943f3eef04d47e3a182a0107a7a3f41e410231565779de072fc45bf92b911a0035607e1eeaedb5393a587080c59d4b2dcc1278fb8a001d782a1542dbf5399WplVal63PJj+l9Ay1pwgWNG7iw5BHy561fNWj6HQ9yA=', 'Evelyn margot', 'Rejas velasco', '15', 'Erejas@prg.edu.pe', '923091836', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T03:50:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(58, 35, '102d5009af68968c2fdb1f9797185796cec39d4347aa3dc78d0e1165a0cdb83dc6d72f6b9f12fab787c45eec35f726ebe7c62bc42a7eb1808c78efc34a7fc6179LEbbpT6X5cLoxQ743NXi39mA7qv1I11W6d1VAgpdNk=', 'b66bd09e1b9fbd1da071a23df1f8a4ae', '7efbfb4747b38cfe3b3335d5c6ea9fdb7f7c4cc4bb908d2f25999c838add6448577f10598432afc8a9e68159db3bf450973d3cf862a58f764e082553a1cb3ab8QXMGbBG85vOQdZ/05iEgBKbf1ZFp5fmxPG4baiH2GTg=', 'Jherson', 'Rojas guillen', '9', 'jherson.69.lamejor@gmail.com', '951365835', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T06:19:44-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(59, 36, 'e33e1d70c9d42114b762753d42a69e4c91dae4f84b671808a91bb7f8bf33c6536a01dd112059e7547720a00030daec6af79407560e62ad273172f1ca19bcbb71Z26Ui4nCPPB/kG8yS1HopsyLCfjCTbTBdjV0YONNgo8=', '24827c6974b2337c33c20503b45f8b4b', 'e5acc5e44d49abde560ababf11e8df0941b347f9f3a9df29db22460a27c57f9f9c01369c535352ce453346f48196216cf1ac85b4b647f2621e41f663b73e0c0aLq4xgR9/nnmvpNDwVn/kcC+SMGyK3rYVYwd55fha6e4=', 'GERARDO', 'BASILIO ELGUERA', '14', 'gerard30cmt_leo@hotmail.es', '952256090', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-26T15:22:36-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(60, 37, 'fe67d93a6204d32891ffa90f4c8fd3f926c3fd4b85574222165a988324d9f5b420218cedd20581d377c18a36f9536a83e90dc48fb7b241c8a5639a7b9a3fa1a1UaB6ZyHPcynsBRsYA1WX64nZjy8elHBn0+P12I8wBhA=', 'fad6cc2a1ca29c3beb1397a1baab1139', '6d98f4965e3ae583e71dd249bc33786e576945376ffeb68a56e7932aeeacdbd9f5b8a103a9656a5c96c0fd9d8d19e53d89f6d213de7ab670b1ead513b5d3406fdF0BSvN9CMUdPdrthZ9FMepXtdecz2R33lGX7Ckq9ZY=', 'Jos Carlos ', 'Perales Wong ', '6', 'wpcj999@hotmail.com', '999989103', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T17:05:33-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(61, 38, 'fd52f077a5a85a388adf2acbf9b8eebeadf54458e0d0c3ce52a21c1bbdb8986b4dbc330c977f407c0af33d37504dc74c40f8145c44c757eabb24f4856475a387BjE9kkScXu8z78zXuz02miJEStGxbI/zpYvL2EabVho=', '6ca4a91841e4a5f749d465923e80278b', 'f6bcb3b5c7d4a91b77f784fc85e68c55e940654d324b274f3ab561e61c8b957adef366499824503beec6d3ce99a03b3df67fee6e32f51d5e89a35913c7a633a080dSjUDcfgRZhE+R73FJ43jtYbtnviZBnjwMgFroNq0=', 'Julissa Doris', 'BOVADILLA MARCILLA ', '20', 'mbovadilla@proempresa.com.pe', '989252930', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T20:24:59-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(62, 39, 'bac1c4f0a4107f4d9546fd49388a7a66ebcd238cc8582bf50b5ae708efcc36196849e70cdb8b7be27c7bcb8fad1bfaf51dba70393d009c0d3a176137f20d353dfaAr1aHr4e1qnCBtTbkvU5MOPQzje4G2dpC8zGRIr04=', '893e66411b392b787a8888db94838904', '9a7831a64b27548ecd676702bb9854c701c9b455d083f9757692e6a2dea32229b15ee7ad0fce8770c1f2fe223431c17c24db7a3697bb449bbecb3c9fb7dbff57mkIuwx5DatIxJ8eGRsa2taSrr1vHtquxbRW5K15iwKc=', 'Marco Antonio', 'Aguirre Rivera', '5', 'maguirrer@esge.edu.pe', '996004167', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-28T06:45:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(63, 40, 'e1c7721f24700c734975dd85c1416e7ebae865bafd5fdaf8262d30138f508e11441a2f066031b6643cd5f4204d2438f03477df158e452b6da2239d3eb9722471Z03KeCRlNEI7gTwDArhQ2fSrJeL87uhixMcwT/eJMSc=', '42f5a564785fbda02a67c03ba69e8bed', 'a674ccd9827b68c9977cbe7ccc80f2fe1a42200e9c019a4bb84bd1d7cd00d8dc4805ee7c03114c8218251bfb1d1e29a57c1cc52b5a7e86d46ef974456fb36459wKa66VCCIrOZsoRyRCJtAe2pnck+seOksgeltttV8xk=', 'Andy ', 'Rodrguez Leveau ', '20', 'bellavistaryr@gmail.com', '930210804', '', 'assets/images/cip/1676848644.png', 'assets/images/cip/1676848302.png', '2023-01-28T23:06:18-06:00', '0', 1, 'assets/images/users/1676848089.png', 'assets/images/fingerprint/1676848664.png', '', '', '0', ''),
(64, 41, 'b89bf77c77e8e57aa566d66036cf2b3dd9a6b96267c99c164666955bd5e8b71356ce8758862f1c59c277592d3b0c4fb05d62d60a8de6d6a7f7e07da715042483umreNwSxsvqD1H79iMPAZeLHbNfIxit9zSsApfIc8CM=', '11d6a4ec284e05b1fdf1c9839b9eb68b', 'c0009b2691f84b1c1c69b0897a702621c61aa7ee072af2f555b6f83ad6a987a0a53886cf0a68d378ca2f8a4f9782a78bfb9a7c1bef4937ffbba8380a815d8d22Tue9FhPI6W/0mRfwsoJoucq0zmrL5Pz2jrUlcImDRIc=', 'Jose Alejandro', 'Len Meja', '5', 'jleonm4@gmail.com', '998091514', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T09:39:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(65, 42, '9a7920cada6e7bc03d84ad4196af415b209ae26d557576d2f600bca33da55e45822fd956297a946fd43266a7de1e8683823e327cb1141ca06bb76f518c94b49fIsDH2krrcqbJPrnc0yVWjTpkPapew2Pckax5WXfttiE=', 'caf596d89448c80599a69e71c27d7188', 'abfad129f15dac51fe7587fd51fb5f07cfee025589f13c04bf3ece04d2fe7f8a14c114b6f667efaec55c30d466ce8876bde14b5b050d36eb3202f24fb3fa5a7dHNuUcThClEliFnl+xUZcZu5xowf+8GMstmiQQwUcwGY=', 'silvana', 'vilchez gonzales', '15', 'sizulbelica@gmail.com', '972089644', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T10:13:58-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(66, 43, 'dc4f4310a4c3f3f64ea607505134f34880c3f188bc3ae71042fa788f9b3350a537543f5604182c3af37c6a5d85378364e4e89d96a37f401dc0db5cf447eba33boPqn5Dn3Cj4FLo0KnUHGQ9gYm6b3XpmpxObqVkKFARY=', '1a2b7065fb4db16bc4930c23afa3ab63', '9e8243158dbc46d77621fe21df36e14facb4f3088f72038e3ae91bd17c40ee8d5b8b47d13d0678abf424ea0cdf157ceb6cc0376ccdaebac7e778641a1b47afcfliSrYfPC76dsrnMMOzuGHBvOxadm9k94Iqq/2uxgEgc=', 'Harri', 'Meza abarca', '22', 'Rossmerypalacioslagos@gmail.com ', '970596738', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T13:29:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(67, 44, '602f2ce2eb3306547a391ecfe7d23be6ac9f5759ef9e38c5340c6c843b7e0a93da9c3f1a03490be6424991dc683ac29a4ab101114478eaa5f2461540a3223d526PP+mUFng0zd80V18VVtHDMJJY6xKA5M08YEmTWlRbo=', '8d2b43221c8ddb026216547209a692eb', 'a36dc0affa254176418aa313f8886a9ed9726d2cb9da4397ad9dcf0f4e979cd3c4ef5ab142a62a477663c7f7772dfd531a7c4513636b47c43ca3c6bf7e00082dUTROsVFi4eCW6vt0BjeMGW5CzhOQNZxtuyLhyU+aqlU=', 'Franklin', 'Sandoval Roque', '15', 'f_sandoval190@hotmail.com', '974129481', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-02T07:51:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(68, 45, '55017b8100703f982c043544eb962772ac95700ee820610485b0f4ab68ff64cd058b831e602be074c324ab2ff2338db703628dafb9d1b82384b4fb00e5b14512Nw7V2dsV8DrPzj5vPAiJtAAupsjwlaVDiGSqZisBba8=', '2d55cb3d0b2977bc4cbaecb0da9117c9', '50b2ae0b187e755aea9a20f00678543b6c3d91f3c901e26e10c1b4fd9c64b1cedb7a8a2ac342a1d2dfd9cd371dc7c84be3f5afe49aad4862e032eb56d2d269ce4g64FU+KNP1prp6qxxSK32kpCA+Jrz+BMjkJcDA7VN0=', 'TELMO JANO ', 'LEON MACHUCA', '15', 'ARES16@GMAIL.COM', '943312735', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-07T11:37:05-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(69, 46, '8b3d88d85c210ca7cfd3dcded3b2e181645c064e150322760289292f58752a6a14e12a67f0a72e1d19e7651f83ee38806575a8cc2979db75d328a860d2bc100e6c/lgS8+ZZqlRNhdaX3+UEmrZyqB0z6gFESwIN6VdHE=', '8027e93b7b2ad48d6a3f80dffc8494c5', '1f6156a935162ee79f01c5f69f938fd96851ce6007099e79a73aa45e5d47bc342f58c4bb5c51f8b854620e59e45fa71d541f29a5a8680bd33f7171a87fdc57a18Zv72Hd/e5saZeWpVFHcTnCXN89etuuetTr0lhaMzfM=', 'Anthony', ' Valdez Camposano', '15', 'anthonyvcsc@gmail.com', '939153866', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T08:05:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(70, 2, '72cca4a2af206d4d589ecce592c489d6ce53ee5e9eb275b52df8f9580645ff8dabb21e705bf10b6869b392d4d32a235ab952efe8fdb76614cd648d504a4888f8aO0/IllUA6PkMwgBNwGKBKAUOsUdBljqmwJWwnAzIy0=', '489a4d5bea5ac58570260c11acd33df2', '7bfe0ad5e7eeeb16bc36ed4b3616c6286617437609ee43314ea967437836e0447ca870f7633d75d321208d5d7e9346b31071f350e4fc80afb2b914515908084dVO+fOEjVje57ySmBEdDBBUDcc5/ZTo9i0JniovrquKM=', 'NINO', 'DELGADO VIERA', '11', 'nidelvi_2873@hotmail.com', '996070183', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T15:23:53-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(71, 3, 'd34cd7facbf823c7b4b022f7b0707d7c81f94347c408f48734551044ad3b957a33696fa76fd730f661be5524bea2499a2878246c1ef04dab8019aab47240d897Gngqfsbu2Qhe/psLNR/otzyTU0pYpbImVwFkwlcb/IU=', 'ddb1e33629a4df8fda4f5934fbd98fb4', '282ba7060593d660322d2701074266f9e5af81fadaa0933a5b494279642f2d439d4921940ec1c5ffc98ac4a4ddc789f983d2589489fc49678abb5991808c8b02PnGRHb395/CBZD399jISe1ht8s+fr6m/DI3lceumiL8=', 'Anghiellie Yuriko', 'Alcala Poves', '8', 'anghiellie_9@hotmail.com', '934477409', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:20:07-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '2', ''),
(72, 2, 'a96c26e675d1404103648a72461eea272244286e1e316bed2829935c68e2c7deca1a85fd356b95d92883187f7feae617f8b6261576baa3206893294881003e45QALysWMxyXh3g+tc9uyN3SXYU9pQKNaInlVo+/vco7Q=', 'f39de05563c2680f8d3351231c8f6a01', '7a507c6634a321a2d1edb041746c7a3018498aed466edf4bd460b9b751950171d0d6c3efb278595b510538d26330c70945452d2accf8462dace59c02919b6553o0YCfETTAxlp0fOpeUBfTpeZaVYf+hQ0NN2D58bE7uY=', 'Valeria Antuanette', 'Alcal Poves', '22', 'alcalaantuanette@gmail.com', '920349172', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:28:25-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(73, 3, '30843044a3c0b6ded71b6fee9ac57652bd3e36b78572a68b4694dbd360987789258a017faac64576b5b713facd2b1569bed53e4329c899a20b7fd83081ccd1dahwQlGSKNhotnpNX6/OCXHqQAzFH+8BcomSOEPKen8LY=', '910494440958dd7fed4d5c3556425cfd', '25633d898fd15b4f4cac8c08a651d99379ae7f91fddf881604c9399ea3b7a7defef323a3de88eec15be1bdcac3e8b3a896b5a34f282d0d15f1736cd29948e11bDwH8dSirIrvPScp2Gt9PNs9jk/OJvCaiq4Yl0OXy94Y=', 'Jesus percy', 'valverde', '6', 'salazarvalverdejesus2525@gmail.com', '963090212', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-12T13:38:48-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '2', ''),
(75, 2, '92813b4c64f0ebac761da1324aa86ed1368f230bd471271db6f08c7d4ebaf74a179b5600fcb6e72b25d47cf6ff75602d5b3e00201cc5b00e6c075cce07556916VNPEx8XmskI5lt7/Sbrg8RgsXs3By6kvG2ZjaOOJO14=', '162efe45c9624ffa5e58d8d00b41fc82', '4f61449eb60a57626ee8cdfe16850a2e3883ef9a36ac6d366a634748d6ccd638567b94a8630b74d9d04fe55c455fc2a459b06882fde359807c99c13f0f92bbdcyiBdN/BJn2jOiYezMFuf7C0II2pnt+8PSYtd0NNJKa4=', 'qwerqwer', 'qwerqwerqwer', 'Seleccionar Grado', 'sadvsd@gmail.comEW', '123123123', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-13T15:05:02-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(76, 12, 'a612dfcfb3953a58ec8ce5916348d83ecdbc74aae8f64f3d376c3fbe44d26014ed226e8dde1e2366cf4fd6633a280c19888411c4a6f5f3a245e15a87573ea40fyaEh5E+ywrBP3VgcpKEc8Q53Kdm7RTLjANpQ35q2BPs=', '49032b1ca65c9a840e16ab93389ca0e4', '1c9714c0d60e0e1b54e61f3eaea0cdadf509c56186ba2e3539fbb6cad67a15edd0138afaaedd783a18fcbadb8671aac335d5c6271ed6991e12bee5afc7b8be1ddr+y/6GBj+WCzNkGrGAMA/tqUcNXxtOZkMinwewRq+U=', 'Marco ', 'Ortega Trejo', '12', 'marco14.ot@gmail.com', '995620183', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-13T15:07:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(77, 2, 'c78e3d937feafccf52634c5085c6062fa393a5ddc61f7a31a579ef4a723959ab1741b74b85942b3232d6c34cc958fc5a6d2e0d24dd72ee1131f29a3d86ec4fe3Q/wobhPeaZI1v4QqCgaoEHk18KLVy72wt8Tbd+RV9NQ=', 'fd421be9d7bd5e7309501b568e346806', 'a0328f6e222be49ca9a5714889f1a41f60d70369512842755c4d25fe0df0b58ac717085fd88112ecc600dd698c186e7411fb1a449d4f29fcc31c7e0cf0e56b9aXyhQmnelqhl2M3yj2iYe8JJTTN1YkOA8whFbygiPPMs=', 'wqerqwerqwer', 'qwerqwerqwer', '1', 'marlonunico02.99@hotmail.co', '213412341', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T01:54:11-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(78, 2, '8211d20c5bf528cba86304a8263f58e6b1ec096ab30948d147916ad2308eef1e1924a5b5b8ea10a29a2142695ce3ff922c4a73b6c653e10b0b70ccbf680cdf9do5MjspJLskr6McHNx+XRlFdDdOLcSZvR43xS2VzAb68=', 'fa140430271d47fb47f13c673cbb481f', '8e15d4e064b446c4ef62f31706209214cb2bec74e572f7ad1b1e31590a993f73075fa9afa1564148b55ba8a44bfc6141840b3a936479380aff4424267045d419ogEyHViCmE+wzmszDokLbH3GC3tiC+/B9rrd26/DclU=', 'QWERQWERQ', 'WERQWER', '2', 'QWQDQWQWQWW12311QW@AQWDQWQW', '123123222', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T02:26:22-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(79, 2, 'f266b9eddb9a22c0769a6921b2faa096ecd8796024f3971e82290a20bd75b5619514088c46f5e3d1a4333eebe4f9e29453a48e0d744db5525cbb63ddb86463119U5DL0ZHMhvNbBvxGp+BWcrAem3LzBflhLOeQ9HUIFk=', 'd57cb91a118ab508817e0b399a2054ca', '7d25749bbdeb0e08a2152a65b36dc123037cdab71b7bb1e7700d0f78c7f9bcdafb51e926029587a6ab738687812b3c15af346c25b8350597695f69efe94cd41awG47RDzH4QHFlh7rPLhiBBRvFyl6k86cxcTu2RKsqP8=', 'Yhovanny Roman ', 'Champi Bayona ', '7', 'ychbpetruquio@gmail.com', '936504887', '', 'assets/images/cip/1677237968.png', 'assets/images/cip/1677237959.png', '2023-02-14T08:20:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677237972.png', '', '', '0', ''),
(80, 2, 'e36dec29c99972f1b25fa869a721283346576ad2e9da10deca53c1a34f21485524129516820ce58875030d671acd8079265c8c2cdce27b8208597b41c1fd2e24zQXo48+vrkS9g/JhZiWFv0HBP1EpH2ABh50dVR7IAWE=', '5822df9b021bf840d81a984a3c48f261', '7f234512b04eb1ef855599010f6529a94746ed3564e3d1c635d82ced69d9578cfbca6f6b2b25ee32aade6a67d70f92c2c37bd76e8d60e44c7eb89f838630b33e11Hy1YlxqzAVCQ2OtUErtIZ4eepxmF9pp/ZW5V0UJTE=', 'Edwards Roman', 'Vergara Cordero', '12', 'edwardsvergara73@gmail.com', '964977690', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T09:17:35-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(81, 2, '4ef901cbd24e02257be92f71c336013633ab99073dedae1c21aa9cc9f21b2e733f4517367de4392608e58080881e54bc0ad0fa839e7a5f77227bffeeddde0c1d1SGTSzQ65o/um1u1aVzu0YMoPak2Y0EcSxKEKXGTi/Y=', '1107256265e9044a5dd7661050c95437', '1848420b96cdeb4dd860fe70d01a044e8d86a9bd5b9a5008c9c61746085d46e4385dd115f1ebd1b806b5c2a2cc66219df850c1f0d695480c4cc66bf992448c79VRZC9n023LSR7tN40GSF62HmxPfoqcze9a1aO3e6/OU=', 'juan carlos', 'humpire lorenzo', '7', 'djuankarlos117@gmail.com', '923576634', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T09:22:04-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(82, 2, '67d2fa66b7df1447f88c5f8f4701eb00881fa5f68b1757db79736c5ccda49c38b89603ad7db1a66d18d4d6bd63188ac9e704d8295e03da5b68fb892aa84e5ef63mT3rlGOmTy+wik23QDQSOkIaCgrZ2039Yg3MnqsnA4=', 'd92b887c11fa940999915ba333c70e09', '9a44f62f38a8d294b7033c7fbc11cc2851a316b8ec57653b803b5d578daf3e86379700a468ea5e908fdd9887a2123aa1563b2ce6ccb04b6d7e6925d52db5f0a90qYKlkyKTLgYmT1f3bu55gU3+6+QBCS+tr8TkNwf/sY=', 'George Ernesto ', 'Limaylla Rojas ', '8', 'georgelimaylla@gmail.com', '989876474', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:08:59-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(83, 2, '28fcec5fb7408866a0af61fde14c4def8989ce314893164afb235d2819eb19d6fb608e75bb132710dbef9b05d731192c3a3600bbba62112a2661850720775964fuBvD6pmgxVEzfjXmbHR0A4TP+eNgehMxzevH7TB5js=', '5a081cf04b5acbe8ba84af79bf6a0bae', '6a39e9864639eaeff4f62269e9c83ab2979c58c5e3a258223af511a7ecdf4d7eef7ac4c57f1a438090e2cb0509f50b5eda8b0ec395f5e7be212da4feddaf3f61iLnoMssqikm9nKXfkpJlAhoXB1z+NRSqrlyNY/lxDPY=', 'Ruben', 'Hurtado Ancco', '22', 'rubenha73@gmail.com', '917188789', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:28:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(84, 2, 'a83f43a3d108cb7db1c52ac567807f9805a9c243ae2ceecf6975b3f3ca37154f1e30bec9273f67155c782542eca88eacf465702f60cf330a9eaa7ac6ee644214fCo4RPEAv+8ly2gyBr3XMeI/WnD0pb/kiC/tehnXE7U=', '2710146ec5e8fb9fcb3c27e49409687d', '1f2e7c85f737680af649ea32812756a1edf9eb09a404a0c1700aa76abb903804a9d8dd2312961c55dcdc3e048cfefb554f5ac41879a48e7ff261e2f174f2bc02NDd6pPRyZ/X2Faf0MZHrToHgMGqM8J6QY8I5/UmYVZQ=', 'JORGE ALBERTO', 'VARGAS CERNA', '5', 'coco54076@hotmail.com', '973963190', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:44:20-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(85, 2, '1b7759117e48fd65d868d61d1afa731630b9740b7033f051ae3d8da9cd6e2af972160746371bf3beaf8a960e43ff58a67b20700cea7e8166942dc5d5069e7c3dd1RqdyGC2HAw7XKuEUrbK2UhRwp4ByJlvZQ0uNJbHAU=', 'db2e93a09e55582c3fcabccf8f23cb99', '0862a1cff8e775d260e17545bd81d9bd34dd4007e9fe69eb751a6dabf25b5717b1e53c521bca2e6ca67afe6c2cea38a686469aaa7ff32632e3c56798164d177coDmvc0v8097KyE/Me/epYbaJxlk7h2Gw5ZPLv//PIRI=', 'William junion ', 'Ortiz carhuajulca ', '15', 'xmefisx@hotmail.com ', '982290820', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-16T14:19:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(86, 2, '43e4f657452f07490c92b6f3f334f2ac89efb105b79b11a7b274b130c43ed932dfd1386ef687d98ca4306143c5e072d64c99a144ba5978c34b62407deb9cdd71nPx3ZzYyR4zXp8rnGgUZwFD3nUdTrz+l7+3qAPZChRA=', 'd063d4b919c900a947cd2a85fbe816ce', '588fd0fc0020ab4251dad8476818136ccad963535252e80a8da9ccda1e2025803983f6d6ec4e1aaa277640f19ad5092aee8849868ec2243b3f65dc1908d2185bNjX2gZmXRy7/wsC6sVM2o98FVoYsMYxFVUaUrYCdqiE=', 'Edwin John', 'Zavala Astete ', '5', 'Zaza-1900@hotmail.com ', '958876753', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-16T14:50:16-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(87, 2, '6416f57658e9470133632d1dc7d20cad30f8038f221bbbd34bac535a21f994f8a3af2b38d17b48f779f9d417cb5200ff3a6b98ea0004812977b2d646cd7493ababP8chGJp3zozGKNqgbnPGpgJd18yonMweYoWWgtnuo=', '745209ff2ac5fada49dc6fd3b7534307', '3d61dc9551094bf35ca3e2108019fc7b5b76b7a2e31ded87e95c350f04174a80c374955da2d47ec9cfdc381eb4de46843befa7b91ede518996f8c6195b3e2272RS9LqIypwY8xn9ZmvxovNNm+3s9hJWAnz2B6+BP1rKM=', 'Santos Alberto', 'Silva Blas', '17', 'Almensor19@gmail.com', '980464594', '', 'assets/images/cip/1676997027.png', 'assets/images/cip/1676996824.png', '2023-02-16T23:46:37-05:00', '0', 1, 'assets/images/users/1676996654.png', 'assets/images/fingerprint/1676997417.png', '', '', '0', ''),
(88, 2, '0dc705a10741b1bbf10789c096243ef85958fd6d3242005e247fc5de16ab5b1679f89bd4c9e2a22e42c2273c4f91743da923831fd49635371acd287435638208GwRk520qn9cQ6Jg70BQurW6MzD1lmRmNBjOPQAFZzqI=', '1a94db75aeccf9940392a3bcf521374a', 'd2775d6ce20f19d67a01fcffb549b234a34a86a18dd999b8c7d1f33b14d2173ed2c85447c0b85b4fc80cef32a22c8daed12bd3f31a742bf5fa3689c764acd8ccniPX3PRPgc/s3oaQE0w1QPhjC3Igd0jUbejRQB7Ic6I=', 'Misach Abednego ', 'RAVELO CHVEZ ', '11', 'papitomisach@gmail.com', '964707831', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-17T09:56:33-05:00', '0', 1, 'assets/images/users/1676646062.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(89, 2, 'df22831ff806b1da6f067ab02f8a5cd99fe70c356664a9762ecbea3ad93bce228f240099f52950055f95548ef9a13bfd3080bd326cb93bdc1ce6aa7f78b97860SPuk3+zrHKUqLdoKAYCDK3RH9fEW5WHeQNXO7NsRyBQ=', 'e96fb65f21584fdae89d3ecd63a85da4', '6a3a3369c221a64e09056f0132b8c7173bdb05807e1d9d9cfc1c99d5c6511fc449fba6f41e40c4ffd45227b372b63d3dffe7eb1d0c8d0249005223cf0107625dmGZM98gKNXhuRSEtyuo+7dwY+1q3YZBSXDTW7O0Yv2U=', 'Estrella Soledad', 'Tami Pino', '17', 'estrellatami.50@hotmail.com', '972982144', '', 'assets/images/cip/1677003134.png', 'assets/images/cip/1677003235.png', '2023-02-17T10:50:49-05:00', '0', 1, 'assets/images/users/1677003015.png', 'assets/images/fingerprint/1677003692.png', '', '', '0', ''),
(90, 2, 'cbe26402f9d0606e038abdeae8bf3a7ef2ab920f82d5da73aedb29f8bd3de11130f5f9f6ccf5dec01d0edad34d7dae6585275a9a0681f298bc136f9721b78579nO7fRcogNkmyMCuXO1+YcS1p06nwQsBNjHTYLnDwuiU=', 'fc652c0065cb1f5a17f70844db8ee26b', '3ec2afcc287e0719121c30ac08620cf24b46150cd974660d5e339cef43ddf966addc66b8fcd64dfb1016aa7a4c497713c40fa1ed31d965b324efc8992245fd95gxqlApiG9itqtFVLU+x64zufGaHBCl7eO5OgeycrjdU=', 'Alejandra', 'Ormeno llacta', '16', 'alejadraormeno06@gmail.com', '995100157', '', 'assets/images/cip/1677238274.png', 'assets/images/cip/1677238271.png', '2023-02-17T15:39:37-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677238281.png', '', '', '0', ''),
(91, 2, '55b3d8cb750feca6f65883ee8850c5aeeda6b67e16a2446545373771c564116c2a028c3e4a21c4f6948f95f9752a301c367bb038eef33e3a6c8757b4d5da85be+fPRkiAEvXJ0Ui1QdCLHsbEqCKMCzMnIxlbn7tAI7Dw=', '51612ff7341724570e3d4f0148adcf61', '8ad5d6ae8fd07963b23198126e30fc3fd1925cd2f7b6be925c60d48634b9b326071b156a87631ce577d1125a0416f9a80259bec9f71e6943b22200be2010b6b6U0zi1C3XjMEsO5N3+kQ/2KaG/lpKCy1xrw8m9jR2xQc=', 'JORGE JUVENAL', 'PEREZ HURTADO', '6', 'cocoph@hotmail.com', '971158004', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-17T17:21:39-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(92, 2, '6c08a09ff1aea9369db5fa9b591950f20d9313ed969e6cc699b1d3eae98a62ec6116749063e192937f8cccfc0d1dc2e62d668965d2c08a842af7a73633c6c0eblR/+j9EB57HqAV38VDxrf32pevUM49tsaxCYBVFBpgE=', '276154f993e319e02c59a6cd64d86877', '273351f39de1ad9229435b45f33f55cdd22aaa1502064edd1a50fabfd3e59b475f92e59ff69db737ca748fcc4194ab5f07fce4f8537ad8f6957b0b03aa8781d5qqpddQyb7b9Sbt9cK7J+MF1A5tpjhTdX5xV/TGIJTz8=', 'Wilfredo', 'Valencia Vega', '16', 'vwilfredo14@gmail.com', '995550645', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-18T15:44:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(93, 2, 'eeda48c9fbd11fde5e93e691c0655b6521849efcc89b0307b8a246cb718943fbb3c91cce8c3d6741b9cfd0a8d9fe604b3f73d35da3e5953f965ca11df5cba5cc3jc6JIhRt9rJejGmHuHZKBNO/5qGa7+aB6MQH6ykEKk=', 'ec9fc299899dae023a47ce3fa5f1f6c0', '964e2d1afcb5c0ef11a52876929ab7d93666da270eda417db551cc9e776d949a558a1c06ce767f1d1aefd92ca18a5377533a7fbd639c3f8367567d06ac26870eX/A8iN1R0acbTjirULU/eHrceO0qkS4FKNGhf/tx4Eg=', 'Tanner', 'Rodriguez Valderrama', '14', 'tarovarovata@gmail.com', '937094339', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-19T12:07:58-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(94, 2, 'e322fc8ea9b11a32edfc04a6cfd08879da48a09eb8c811b4574553c8d3d3ad777ffe2d8807bd1f0800996ca4ab10d8427716d4180f9c69f85c173ed73a7a79ac6QBlhiionv9KBRY8b0Q/e/UZEAhGwZ0rLFGbBnnb8Eo=', '74d1052672b687991eb996b8cbea3777', 'e332b1478366368e4a3503ead4ba487d185e20a7daa217d07ee870282aa9cdabadc2d0275c07b004cd536247196d7c16e16df6f39dd0c4b7466e524a050b1570lclkJdhVfIG/7yHpvHNHOQEsPuBleDTYnokLsfE5n0A=', 'luis augusto', 'rojas tudela', '7', 'lucho_rt33@hotmail.com', '926696982', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-20T05:31:06-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(95, 2, 'a9252f706bf4c228d1339175a68a09c6e33b50c7bda6f996414339fbf5c0a704b7b8088b1e605461c12cfe2d2affbfd5cdca154e836ca04064d3c4182ebb68107yakj2z+r4mtH2qGXoJmxW2Tvtgm8ral2QhSkMdWHF8=', 'b31f921f0230f4d6c71138160e8f4e92', '91c60c88425a1e7bf0470bb50358fafceea2f12d642a4a8a325030743ffc271fc5f802b5f175d94086e2033ac3bd402e11cee0708c27a2b2c83e60018e1716f4lXNWFl4IOBNGKDATMRo1mbvzuvuZW6IqELejj2Rmd48=', 'Dany Robert ', 'Benites colqui', '8', 'talullahbc@gmail.com', '990067627', '', 'assets/images/cip/1676906465.png', 'assets/images/cip/1676906399.png', '2023-02-20T10:14:04-05:00', '0', 1, 'assets/images/users/1676906534.png', 'assets/images/fingerprint/1676906499.png', '', '', '0', ''),
(96, 2, '647644a2eb0dd97e61661c044175e52d96a3fde006b7f67cb8f2555072cbb89dec0825726eea7ae43decfa88d1ca4688503f38ecf57611b22e3158555e20dca3yORDPFFaNvegWH/1ySIiMO7D11Rz2ate+e9weujGj5Y=', 'cb6f2affbcc1fdfb94e8c89bac14aa3c', 'f450e4740bad1b8a798ac2d387c48da91ab842c59a7507acec355292cc20d0fe09cc19ffaec7b6072f53f415c9073c9b8d533cd515fa38e18408499b688984a9k9nY+7ZKaLiBD6WCUL+n7EIUmUwWaTeyYjNvS8OA9kc=', 'Amelia yuvi', 'Chirinos huayna', '14', 'canmayu29@gmail.com', '924993075', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-20T14:50:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(97, 2, '4bff9c2638aee2f87350ed799e1a9011ead10a6c7e5f8779d6ff04cbfc453aaab48baa2468882e1e71c8aa3b096200c558b62fbdd9334c6a91a11d43225a8d53QP3406P/TAbT9rrPvMw4rc0cP57YgrEGZoeyqN+AZUg=', 'f6249f547353bfc9da90e3f2eb559d94', '3fd8aa885412940de25a8e1b94d5adf00e4dcf351f5e4d24854d7a42a5a6dc9f7b46036fd5ca4c90dca3f5305c514cbdb0b680e777c2991f84ad12a594a4c339/uKp97tFuxRVrKim53SDJF5ZvQbXrI54ha1KvB3nPbE=', 'Angela Ines', 'Cerna Ramirez', '22', 'aries_96_cerna@outlook.es', '970220043', '', 'assets/images/cip/1676947647.png', 'assets/images/cip/1676947035.png', '2023-02-20T21:29:15-05:00', '0', 1, 'assets/images/users/1676947811.png', 'assets/images/fingerprint/1676947687.png', '', '', '0', ''),
(98, 2, '52bdfa9f6386d585e8bf99ae7d6e726439abe8b53b91860503f39008eee07f8439bead98a499c0b45641070f201778dde502b21c4b310814e3c0f542e3b65d09kZV3lzv+Oo5eeUkuIQLo5zjtEcmBBVitLHmI+zT6xKc=', '595caa69f8a8ad09a720af1de8129bf5', '315bcfbc5e845ba49fddbd900458382fd44c2ffa6392a4953af19467a2aac23121474f4bee4d8eb7de3825afb8d2f073371cf22c91197f0b4c796d52c421ad0d3AauGLfEhKBxgylymnxzTWzDbU5Xom+e6jhnPZnfv+k=', 'PABLO MOHAMED', 'HERRADA GUTIERREZ', '5', 'pablo_06setiembre@hotmail.com', '999991538', '', 'assets/images/cip/1676996123.png', 'assets/images/cip/1676996151.png', '2023-02-21T10:45:31-05:00', '0', 1, 'assets/images/users/1676994441.png', 'assets/images/fingerprint/1676996042.png', '', '', '0', ''),
(99, 2, '857a5de384db5ba0784376256fd282fe0fe53a730843322cc9dc416ef11f8d407a6f25cece4a38f9b2398fdba5838f9909888d24a284bad3fd0e256038c26fb7/a5ioeg2Zs7lBVcWrxgpQ/wveAKQw6MOusRSdX9f630=', '2d090b300eb641f29cfdee21d49a7164', '21afe9b3cc2b3ef54ecd747a394255882803fa76a296dbc1f70e936b7da340322fedad9e3b0b1fc0df99c3be6b48181762b1f1338d8cd4d5583865709ec5d9b6/Mcbl6Yqxks2iE0rniSqHxU9wvduEu/xmLEPxa/ElSg=', 'Rosario', 'Avalos Jara', '22', 'charoavalos_jara@yahoo.es', '998878922', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-22T05:06:19-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(100, 2, '0276a81afcb6de683c38ee2ec51a99d4531853c146b629516cb53383e8f144dac422b62b7b965c942012596891091e26b941f4e1173eecd1e74f1d59bd08b867X6b3jcLe19UsV/AnIgdHncy6Bfabl5KF/ArGT6169U4=', '3b269a5fb942dfde770b5144831d0e4f', 'b92182804dedbd302ecd4b2b1bc85d02dc7b574a14d787e19bee3afb642a0c3e198b346786abce9afae281f4788d436e9a91292cd4156c2c27a04af73c5e83ccvKG0NboYDNtKUCT1sTFaaM4gS1wvGl20I8MhmK28Ej4=', 'Antonio ', 'Luque Luque ', '13', 'antonioluque4@gmail.com', '07434790', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-22T08:56:09-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(101, 2, '1313da28f58c4a94d9ed1b346733d759d9f35661d9603efdd076badc59db696a52032abd303e22695b218f8263d0dfd07285b3781017c6920d4e310f01cc1b46Lm6pl8TiOFhbxhTnCmwUIULUm2QBVsNH/T+L9s6nHjA=', '59f618bbf9c86fd67b7fbeef2ee72afb', '5cfde782fb3a1ff8c77344a2119a4b215204d4833216debbcbb5ac85d01c7c274af9459740d14676078d0468048875c78a6b5a1eab83ec303269fd025bd6cff20m/6YA59X3AMPQIuBFBKb6AA/oE8GOSgd1jX1FoLZXg=', 'Antonio Evelio', 'Colque Coayla', '12', 'antonio_c_tkm@hotmail.com', '921785839', '', 'assets/images/cip/1677122296.png', 'assets/images/cip/1677122249.png', '2023-02-22T22:06:48-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677122886.png', '', '', '0', ''),
(102, 2, '6a1e0760c65bb75857690c0ec3fa026c7a1dbdfc4d926d9739522cc1f0568f24f8a4a6c3ea351ba1a720a1a3a56195aff91a4b2c49ac1f8071cfcfbfa15e5610Ji8B1FgRtDDgmHl0T5kjGA1aRRnQfmvlZhvNF8oNSuM=', '5a54d2fab76c3caff80282cc88833c6a', 'f29b6a772deacaca463f67a9991e20c9b0238a243addba2065c69aafabc80f7cba73072a6f1a1366ce3f4d5b7755309972b0907357077c7316853c9b8be6c8f2UH7SLwZfavbaslfDZxjOo3UZKtnz3TRYoQBYHoRWpsM=', 'jimmy yoel', 'ORDINOLA VIERA', '13', 'jimmyordinola260@gmail.com', '969815537', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-24T08:46:13-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(103, 11, 'acdf11dd4fb8433089e6f8f15f13a86c05b1c18bf9840bfc5623f413279fe08f324883f4ed82cb083a3c95449906ba2f048574771d22605d31318c5ea2fca8928+4vR7oVKHIQu1IPgmBh3o2Og74a2nbV77hgzuaSzXM=', '8d1fc0bf86ff997d032a80d0db2840cc', '78ee4eb68d7b7aa98c411adc558cbfe08b7f19346796b085c33e7acca6aadd5bdcbb30dcefb54e064c40231745de7317081ed9f7785dd552f62dc50164c638084UmXQfVHeztW7ySZFTMovAb0+7ZcVH65QQfm/zOKMBE=', 'victor', 'sotelo canelo', '12', 'vsoteloc@hotmail.com', '981741046', '', 'assets/images/cip/1677257836.png', 'assets/images/cip/1677257739.png', '2023-02-24T11:48:57-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677257947.png', '', '', '0', ''),
(104, 2, '6d95b79623ab91752ace17710ebe6e25eef51232fff7a98b3cd9931f388733fbb5ed6759bcb8f942cf22e9fc6e00a2b863646aff0cac6e3fc23ee127bacbb310WCpjrfKhKNOfQhVDqzv7jG8FCnG3SSv89ACTFh0eCyM=', 'b772ad4573b302c66b725388ff7bdd79', 'f37d2ce247ddeb36bbe41234a0ee552318de6aa61eaaa19d050cb3e585fccde3452a045750dc1f6a142c159d660d21494c4e29817ee6d042e960e98c767e97d7MqTNv4kLJV82PxR5ulMEnZpAcY8D+bjba4bj0A3wpkU=', 'Gilmer', 'Graus Villanueva', '13', 'gilmergrausvilla@gmail.com', '942681173', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-24T16:16:26-05:00', '0', 1, 'assets/images/users/1677273512.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(105, 2, 'c109ccf39f9a015a5fe1937b3629ce3f8f2e8f66854d7f69df4583a9a1511b92d41a730ed1e2c28958a178ae4d2d0a3e7e9a251347c57e639726c02bc3310bc69ujAeNcMN9Bivoh42JxI0ljCRuY1nrzPWSz0lAnAkhs=', '4740687bb5e75df150307beaf30340c4', '98c7c87445f92c0b4140c55d7c68d316cf5423df036a5ffe64cddb640f7892d5d75e6cc2da6815fdd6e8b18335e00fa67f73ad8b1a921d0dc2e44f86562b9fedAg/cQF1Tob4ze6P/lWYIZUESykxEPESO927SsisvDqo=', 'Alex welmer', 'Guerrero Culqui ', '13', 'welmer800@gmail.com', '969695734', '', 'assets/images/cip/1677343200.png', 'assets/images/cip/1677343502.png', '2023-02-24T18:49:48-05:00', '0', 1, 'assets/images/users/1677343443.png', 'assets/images/fingerprint/1677343340.png', '', '', '0', '');
INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`) VALUES
(106, 2, 'e83ee3b17923b34e4b37c7a28817822b55a7d2dbec608ffb5b860aa4abbb2365b1426fd2e5491cc3b3a2bfe0123b1d6943d03453b70536ae7473e7852e181c05GLpe1XROxTsLMJMiA1LsDG9mpkFFO9Mx0FPuv5QQufY=', 'd1d4ec370da309848dccae6d468a4e3d', 'f0ca867cd8edaae16e2a01afcdff0ec75afd53a214a30e83f35c5d84694ec1fb488b6cb3a3dffe17eb3cdd8880c1a7c5c5a47aa1f3dc1b872bc65a4436d4b6207jphyXToI63+yTM2bjB77/47tNBBPE43idxLru+W10c=', 'Felix', 'Meza salinas ', '8', 'f.felix.2016.125@gmail.com', '917823452', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-25T20:20:33-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(107, 2, 'e560cd457a57954672698561679dcaa40a85c570d104a7423e1de4a29e0f95689bdb83cd1752fcc15782d048b1da3d7e45d36e176276d8bfc98935080fde57c0eHzR98vZEFYp+oMj+4Co+51Z6BGl+peuXn8UKydesYk=', 'ec69fef89d1fa47f23190e7aa8647c6f', 'e9dfc22791de265f436c027174616f369963857ad38e1c8e18b362aa6435d750fedbcb8ace9e04b238d9e808a9351babf523fdad3916e96d595391ea2eb1f7c0m+ms1umQlEE4TZzRwTRajSl5L3WsA5kUs+uQTmoCLL0=', 'Robert ', 'Cachay Vela ', '13', 'cavero_80@hotmail.com', '988356314', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-26T00:32:31-05:00', '0', 1, 'assets/images/users/1677389981.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(108, 2, '54db85b8868bcb6716ffea268e1b03e1dbc2c9503b28609ba32454e55b0e1eb9bcfbbc2ab0c09e263510204be7f6a28c0c25fe99334fd4a98bcee25eb371c512zLgMi0IJrlrmoMLstwamESffJqPiI9CuPMdn8PK/qbA=', 'f6bf2d600e9c51ae09fdf160a6a0f8c6', '00d8c3c6da32e41fb4027bd5227955d5bf56674ce8f61634a7a8cabc9a3152980e5a5cc36b95cc6d706e86250775fa101b1d138e5220d9f765914b5fd258ce44gT0sGTfdOfeB7Fn7pN5lNAoZHLFtT46AGv+9s/zmF18=', 'Gilmar Santos', 'Apumayta de la Cruz', '6', 'Gilmarapumayta5@gmail.com', '941856635', '', 'assets/images/cip/1677427990.png', 'assets/images/cip/1677427960.png', '2023-02-26T10:45:58-05:00', '0', 1, 'assets/images/users/1677427882.png', 'assets/images/fingerprint/1677426956.png', '', '', '0', ''),
(109, 2, '8c71d41c4546a526d528207b5946de6f5e59ac9de4306c9ce459b02f159e51bc2d2f4b59f673e8b179b628ff740fb6c3c0526618f29418818958d2b5972ee8335sYf21mKjiDFUADLeJezxBcNQs34IcrHPYocy2qODd4=', '7744408fbe3161d4f7f65a2ba2533fde', '86bd4a7a0dce59104fa168a1b0fce2f7b48c361485d2862ee0203cb2ad852be11bfc821156b0c0cd86661513317e100531bae8011cc0a89097eee922dd3515b1OQuO+kOrZCU+htGzLnrG2O0Gy8P2Rhs9W5Omyo/NH+Y=', 'Santos Inocencio', 'Apumayta Huillca', '13', 'santos_ahs_028@hotmail.com', '955657579', '', 'assets/images/cip/1677447330.png', 'assets/images/cip/1677447310.png', '2023-02-26T16:25:24-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677447346.png', '', '', '0', ''),
(110, 2, '680bec57cd2ef63986477ec02055317e9301cabae770d3c0b0ff6d8c8e3b17fc1968b56bbd956ca262b2d2232afea1f9c183e8c2ee52e793e6ba755dc65da6e3uJTDq3V2I0NzodqmMIORcbu4k0myokhsVFE2VuL4WoM=', 'ac42363bf68af47ffe3d6f4907b2f268', '069e3f2af71a0bb8997c79bc94d632c33875db1eba28c19dd0d3afec9e6ddf9381c5ba01784357ce8e5e18c5ac1e8d7b08a67341aba37dd6654ec1ee56197676GBVo5o4qSbEnoygWDeGjQbPquTVu95jFNkWdeRvmDIc=', 'JAIRO', 'IPARRAGUIRRE ALVA', '15', 'JAIROIPARRAGUIRRE66@GMAIL.COM', '956134918', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T08:21:24-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(111, 2, '6f0126bce4de204b784eda2a651fcf2ca154aeb2fba5413eb6fc0c02bbd285f6158ee5959a84eae979e36e73b8cd31d5c6cf7cc654205e56dd08c6708603c77cCfGOBwPMdZfOsa2dkcldwvDjnG0tBAgAYbqI5y9Qf1I=', 'dd826a12db143b78217ce20c3b3ff923', '7b2c6c86e29453010cd43dd8dcf331f64e18bc8a8cd66c52410cf011d244a2170a4d4f7552a0890004e5a7b0897f2a4af3b529c32817fc8cbab721bf9593eaf74LspthZHhGrC+z0BgoPitz2o6IzETL2p8kQ7JilXRF8=', 'Maria Alexandra', 'Terrones silva', '22', 'ale.aledgc9889@gmail.com', '944875063', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T11:51:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(112, 2, 'a78af903865871e2a546e96b4f92c6d08469107261dde78c97ec109baf6aeb082e8af23aa1383d5410f18109c564c577cfacbbaca855fd50e310d0612273a28fFvr5+vVdnqvzdCvyKIL6D74C/v1YalkkdDYsToxN2Fg=', '310e638989a88d2ccf1d2d791137a456', '3e4b8eaaf2d0fff7093200de7d2765eba01290d57207f8e5c1058aa8a6a7b78224dbe5491de03d63b81117c7c267c8dd3eb08d01fc1eb71f271d3e707cb58db2GNVXG2ejsT/d1Fw+8w3Zgby0IfwaYObDRv7XYFJTVgM=', 'Rita elsa', 'Rodriguez Julca ', 'Seleccionar Grado', 'ritarodriguezjulca22@hotmail.com', '953532167', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T13:17:05-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(113, 2, 'fbd08540c863b44a7082ddfe843a744f74b71dab8bfd620eeb23e280a331a24d8abd1ac09d061effc904f621c13ccd12cbcd113da383dce6b07ce6a6f2e086a08f3uiJPv1uvAoc+lvDDRJfOqx9PDmWN8K/RPNzvMrx0=', '299f461a2dababd312a5c450b86d6fb8', '726268379f3d9a578acd41e94d1261f429567a02a6cb2cbcaae7fe960b04c5a57ebadc3aadcf7f712981d45ea607a4625f93328d14bd5f4d0c2df316b57397dd8k/iDoWLvMnFKMqsEMBcmsjSQr9E7UY0oboUIJPS1gU=', 'Jorge Luis', 'Campos Gomez', '5', 'ARTCAMPOSJL@HOTMAIL.COM', '960778635', '', 'assets/images/cip/1677619105.png', 'assets/images/cip/1677619928.png', '2023-02-28T15:30:58-05:00', '0', 1, 'assets/images/users/1677619892.png', 'assets/images/fingerprint/1677619529.png', '', '', '0', ''),
(114, 2, '04f64cb7f4d22259fbfe3a212bd6658960dd60ea0f12be9b893a80a48b46c7cdb8f9b34e36d523d7f3a48a4a3725afd31e582cc8bbcfdf616483e0d573663b2fCozYF0gasJimfDHhaMiXjJDZDLp8qBrR+M7Qahn9m74=', '3466e3d133378ebf7f24185a07b240c6', '307d3612880a90b8e4902a44409ca0dab8cdcaf9b2259ed7dfac243199ec3a90da588dc807a5e56fda95b6f3014f58dee7e3ff4325407a1a84b1c8810399cedb00B17e5Erb6SzCCWXors6Ove+U4eIuNKvDq3VJfyjaw=', 'Josu Julinho', 'Asencios Tolentino ', '17', 'jasenciost@gmail.com', '922822682', '', 'assets/images/cip/1677623146.png', 'assets/images/cip/1677623132.png', '2023-02-28T17:18:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677623163.png', '', '', '0', ''),
(115, 2, '3d547b4d680794e397da38c7f0dd28599fc5c43c3f946171b3e06df98f85d799a1a7d353567944ba4d1318573eed2117c1275f6073b064585ae4f4f12a1fe8065gbZ8wgmr2Omg+34El7uLFZ9noWqAx6Yv6E3wmJP0Q0=', 'd9b3bff780df85a20f46fe66293a1a0f', 'b619b1fe49bef581c3940144ebf8ea65857ca32c3ea93a811be61529010b8adad3f7fcd989ec3cc8103cebc8fdfbc162f95f0f47fd14fe90cc179b9c75b46288lRlDsMQ9kqZzMPmXNjEt+m2KPmRUJ46XndLHgN5PEFY=', 'Christian ', 'Quispe ajalcria ', '8', 'christian222417@gmail.com', '935269748', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-01T11:21:42-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(116, 2, 'ac7cf19ff6727fa1ac31979134c8b5b50eb83199437ef4f4d2993aac304813c7cbb228f91eab78ec69c5efe6638be49dccf16af415378fd32e68b0cc5c0242e9R9+PGlac+Szq2R+mB/szhObMfS1k+p/mqYiHZzm/+Vk=', '4db0a70e2a8d0d4562348c1e10418555', '813bc9a035785c0b54e6c32a6da01328a38b812b9b602899211ea20595b19bb566a46df30e566116b1bce4555e667a2e940c22a2592054d356312d2ecc1b307fG0G6t6dTlMzBPHb0dSAt6b/1Ohi+nsCV6XvJ0yTyFP8=', 'Luis angel', 'Reyes gonzales', '7', 'luisangel127@hotmail.com', '945130311', '', 'assets/images/cip/1677779192.png', 'assets/images/cip/1677779159.png', '2023-03-02T09:47:25-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677779222.png', '', '', '0', ''),
(117, 2, '463138e29afa5c54d8549682bc44420bc8df5d67b8fc2767fc75a9c57860fe8a03c768e9b24db6d9055543730067a41e3a61e094c4d466a3d82eaccadee950c0Sk3mvdkEGuywIGPxi45iOMtGpJrUdR2+TQ4mqwTnjck=', 'd5c1560560b9689ee1808008e2db5f5c', '25b90307c27117ad947f69dd95715f80a45df073b47252f8a8fe5fcf8d6d87838e555de86b71027b4457e2830e2608872e4c988dd21330a4612c8b4c91465be1vmgO4OXdvYGtziLXBiFdXWJOTe1qEZiq9OzweXdTXno=', 'Carlos Alberto ', 'Saavedra Zavaleta ', '12', 'csaavedrazavaleta@gmail.com', '999039484', '', 'assets/images/cip/1677790932.png', 'assets/images/cip/1677791007.png', '2023-03-02T13:43:18-05:00', '0', 1, 'assets/images/users/1677782693.png', 'assets/images/fingerprint/1677790948.png', '', '', '0', ''),
(118, 2, 'a745df209da5ae27f8a160a154fdbaba3221a28939d7f9a50287ba99061fa90eb5bc048470d3036e07b74f2f429c3c8698b09e6cf85e44ab34e5f778df1fab61CKeg1otz8oPoTXWFXsDyuvx/gHGrvXBG6zqqsPOFzAE=', 'caea4172194933ed2dc189fa4f6e9609', '388e57fe601f86d8cebad9b64c43350937f465c69edf7d080386915b4d4a6004f02427e461b5b956dc8a9a3f2f59741b4ba2bf321de0072260007421599946f9JptjTLWLOGCsJpep59dKqcjtPPvUeMjAdKywOOGgdD0=', 'Nestor aurelio', 'Valqui rosas', '6', 'NVALQUIR@GMAIL.COM', '998694343', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-02T20:08:54-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(119, 2, 'dfe2f60141f393bc16adad2e202f9cbcab117c63cc6f8c22dfbe6a59e4c6cddb0c07f8e3205f2a10add02a39216f3e5d2bc94f9f0431cacc3a8eaa27f97e82b1cC+e/zfnAwrHCToCd8Owk4WCZ8/FjGGkN6k0v89JwZ8=', 'cee405762f26f968e243dd0549b2afd2', '4dc6102088add1e1dc91600446dd8f6842b1bd930fe933040bfe0ab9ac6a9550e144e210913030bf285dbdb1cd073f6b12e7ac9478bd265fe892628570c443a9mK8FbhItDZb/Q7p16wPp2mr0yUhwxaNP0KKBZxuIJhc=', 'Alberto ', 'Lopez Vidal ', '4', 'albertolopez2020@hotmail.com', '995567312', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-03T07:25:26-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(120, 2, '3fb4e53608204e407c90607afcd788e2208e0a692464bd122fa23084f4899413ab752653061fff8dc2138779fd2faf4bb2baafe9ca83dd531a0eed1b1d981d24gynBWLyvAIMpNgGzWP7wS8HfYo3HndoPyIeJHDuLJvk=', '807958c8d29d805326e072389cadd294', '6c58e4c9da503f52bf913ecbf273db07d1dd98c5c1849ac0696a28a2d4b4456c0203c3e8754cb00e18878b6aa24394b1ddf1e5a9f6b2f74a7f0bd1560b67c77aKguNQuH2XJWOyh0nMtUpXiJ119TphMtIwCdYF2ngimc=', 'Franklin John ', 'Guerrero Aldana ', '15', 'monibenja.13.18@gmail.com', '989045372', '', 'assets/images/cip/1678283408.png', 'assets/images/cip/1678283569.png', '2023-03-03T20:23:26-05:00', '0', 1, 'assets/images/users/1677893180.png', 'assets/images/fingerprint/1678283445.png', '', '', '0', ''),
(121, 2, 'ac78733308c70f8ffff0d4ebe6a7ba0be3abb33864c2cb45145b0e7f14d0d4e57d1923fa67b7e4f72d71c70807469402a55ae96ea7de36a239332d3acc6560baMykPpHXexsoMeElBX+haLnTbwjRge1p05iJBXOCkCKc=', '8e8479960022e71730d239e5446a56f3', 'e5788da7dd83971fec331a4d07ae2b0937f5dab22616854df9147d8987fa83e7e900f4807392d36d5b3a20d4afd1118c6db7ea9ca234335351a3776e8c0c9b418XAmdLMSy+oB8p4tfWfhxhjEu5+NsXsgiHZsW/4M7Rw=', 'Edgar', 'Angulo sotomayor', '15', 'eas_1175@hotmail.com', '943285610', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-04T20:21:46-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(122, 2, 'dcb1af5c0257a17307480c5aa9bf187e55cde048464336077c6d07d4ddb4683f1f3d85aa82c7a1752bb7998130774abcceeecdc2351f425c09282f233223d796kAViXGImBQpdQ3h+QB9cr8aT9Mum7E0NxH8KhRQrbeQ=', '1d59f7dd3c3be886d0f846998a79f8b3', 'baf25fe75c011661e1646065429124656d747539979238cf630cf25dfc9ce7d5c9cfbb60d86ecaf3b97634d575974924eba7066518c8c507cc96f0dab4905747tYPidKWFBXs58qsYulQIqIFjx00kzIjQ/HgAkSVXIEQ=', 'Luis Nicolas', 'Cueva Carbajal', '4', 'Libertad0112@hotmail.com', '938163970', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-04T23:18:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(123, 2, 'a2870385151b64f891da1a02016d30e8d0fba72e668872b01fadffb9638610d7c2cb53864acc55314d322c188e2d1ecfae666e6dfaa6f6db5d6bc700f57f40f9M22NOMchY9M/G6PT597KiR/RYvAITOA3YiWI+U4W7B4=', '62fab7e6d02c91f33cfa3489751005ef', '3a73f11cad356969a3a9dcd57235cf954b93472c78cec45e9136ce4557ae05aa54886b8c867a2500288dbdf8aefb61536f79dc25b6f675cb4a7bb465cd8480baPecu+6LBdGbeGV+zfYkGS2IXOykBBjCS0AkV4WLBhjo=', 'Gabi Liz ', 'Leon Chericente ', '16', 'gabilizleon84@hotmail.com', '973609213', '', 'assets/images/cip/1678017282.png', 'assets/images/cip/1678017308.png', '2023-03-05T06:08:22-05:00', '0', 1, 'assets/images/users/1678015330.png', 'assets/images/fingerprint/1678017247.png', '', '', '0', ''),
(124, 2, '180019bb0f3408ab9cbe15ec6d38f4deba279196065d37f8568ab011dd951c7c494057f890b7b911708073e59f89348bb5131370a944ed4f2a3c3cee3e4be5a7O6LugVVtLgW/0WfFV6MoUhtp1DAu7dgCIE1n39Q7RWU=', '25a0884b21a0beb43d4cd0f9a52b96fb', '2445f656bd8363b2712ccaf20fcf624381f6abc475e0015c943cf386fde8a2f8d4748d162756e98e51b7cf0049ef4c48e4072a9cf6d473d589ab369cc415ea6erUItnJ9XzDi3GWqYuUnE4Kmqs80eEVPAgXT8D9RJLu8=', 'Williams Roger', 'Balczar Zarate ', '5', 'willing108@hotmail.com', '942088898', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-06T13:42:44-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(125, 2, '7f8852f062f9aa47a628a3d1a63926d37440880e7617043ab3633edd2bdf764ed6bae10abe5bd6a91a9ac33a14617c59344e84e6aa803f5a63477a0c642471eakecbs00GiREpbwRfFvAz94gGNsGfR96fgh9HzI+3wOg=', 'b7617f9a82784c320d99e71b6f256754', '1bc115b7a306997a7fe525150f548cf28105c82558d1521bf184005847cc95be0094a85f96f19b79c343f838c56fd5eacd93ec35d6bb9d2abaff089b98e38c35DyGRQt9FAL1zUl7AY0q+1ZKB1Vbx7Ji/4INX6F6+Trg=', 'Jorge', 'GOMEZ', '6', 'roxicocina@gmail.com', '982142210', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T10:55:23-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(126, 2, '41892725399fb25ed5ddbf9dd1fbd8bd2b4cd7e3673a553038407883013c0a9516e7ccb56c4d9968ef7eef0458c92a1fbe428987062b8af7e5531d67badadb7dDbNjCe7bRoROzPzVwBp0haCzKiFwFoDBVrO3kaqY0f0=', 'e985de1d13804d6e122f55e8d948d993', '02042a1bb63eb749a1cf5f2a259dfb356f2256b4556c571d666cfac137c42fa3ec0829f2092299b016a31c0f321e696a9b97810a26ea9343d8d89c5cf006fae9yOu8P2bptoWY7Sx9xgzFcJ/D61HILdn9Olz2shw+gU8=', 'JOSE LUIS', 'AGUILAR OBLITAS', '4', 'jaguilaro76@hotmail.com', '951643301', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T12:16:46-05:00', '0', 1, 'assets/images/users/1678209625.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(127, 2, '5e2258e27aceb3023188fe83861ffea628fcb288bcb15423a1261d4dc261a6809a8f9f60e31e4490f2b8f99344041030a69e77fe6acc9186f08ef97ec43d870dAwLBSipAjBGAp2Z00C9IIe5Gnd7KbTsomjN91X8HO68=', 'a9b44ac7a3b00c77634438a8fa6ca17b', '3d66b2ade6be1f770cbb739686a30a3a62001f105e8b696958dcec4200863df935a8aa88b325e997c6aeff9589e86e79e3731e6957063948240d7c33ceb29403eBY9j5EGQwbjJTpTjR/R73Xj5WKlD2C0ddhPLRZyQoI=', 'José Ernesto', 'Basilio Uribe ', '17', 'jbasiliouribe@gmail.com', '936667933', '', 'assets/images/cip/1678300778.png', 'assets/images/cip/1678300759.png', '2023-03-07T21:05:55-05:00', '0', 1, 'assets/images/users/1678300867.png', 'assets/images/fingerprint/1678300845.png', '', '', '0', ''),
(128, 2, '589c0ea8752748904cd9cf5bb9a330825628b9bcd926bafc43dcd019c71d75665157b99cf65a27559c957ea7860ebaa9b9dfa58c140692c8c1f4255123e59ed0kVO0eSrualf2yhNaI/34YvyyzFYm+M9TuK0ONUpBjN0=', 'ea6bcc1589221d1eafeef2bbb639f483', '939e9aff6d9de511a9b874fdd1d36124234e5eecfaf7c9bdf9308b1ac239cfae64a6960471113a18c9741abf1c5be29d8efed14a4c74175736923714091923c4gBZMSerqXxJEW6mq5oxpvVITilgvvFp7N8KLp8LyD0E=', 'Jaime', 'Macedo Torres', '19', 'Vladimirerick24@gmail.com', '900103395', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T22:37:30-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(129, 2, 'a933c8cf9db204642fb1e1a3674d5511fcc91037c93e70f405e1f4ce907473c93b77d7b2b3794983686fc31bab891b13a0e5ae1fae850b79079eb01f47258e86nBGX0csujw6YaMFn0zyV1vsRvlGqUiVJBQ8mxctinVw=', '3c959a32b2bf9d0170f9c30a64fe12b4', 'b9332ca72d7727adf44f5dfd27c15f747f4fedd9004a0d05c78102d9d3f716622632c82a9dd59cece4c2c16bba698ced2eaf65b8aee7c881154965505e9680fbPlR2JVq5RK0dpb1S+CNnZPsseN25r98Z/z2XMJUm00E=', 'SAHORi ', 'Coaquira Estrella ', '17', 'jcoaquira.acmp@gmail.com', '926178347', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T22:45:02-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(130, 2, '357242f0ac95f0ec3fa66540ec1f743af4f272fff213b1b6943508bfb5574e71bce790532ba4f88ebbfff9704f2daa9818a3cebc0853f549ce9069dbef7e4411InhrqwndUGr5a0/5FTQq3mCqFN/vnRuzKrZVRxuTHzE=', 'a5d4f18f5a19983461dca267009b0cbb', '5d235d6bb7fc7761dad797a5fad503d18c5a2fe004ab1d937876e98a8e19d94f14031aa1306dac8c8a59d96e2019d3dae4705878d3e55c4bfbc7292651148ece2lWKSFYXKOUiLd5qHTxUxwViK9h9zBJ1u/VD0z8O+2I=', 'JOSUE ALBIDIO', 'RAMOS VIERA', '5', 'josueramosviera@gmail.com', '998734171', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-08T11:17:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(131, 2, '0dfbe44059f1aa2e3a0c441cabb7b2ff1b8c8aec81a7933204a7dd8a49fb0adda5485ac5892a4c8b0eb6278d57cea67bb2c377235d5f89fd1ae6004ecd505626CkFu04r4oh4kbXuBqKbt9ruscnouseshbM/qg0I5FKk=', '5f0aaf25d1302faad8d9131f0f765186', 'd8eb0b8fc89255fe3e0cf5c9bc0ad3f201240d0eafa96e5288db54a4dbba7afd4cc945c15593e09c6204f03c0e1c7bd68c91969137e88916ee71df8bc2bfd464Bz8kiAtgMJF1wOjOqxI73XI9R5JrJAYcjiTctwtMUKU=', 'violeta marina', 'pando arias', '22', 'alondra-violeta@hotmail.com', '934677357', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-10T13:51:05-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(132, 2, 'c1e0388895a04803b7ab1fa037a629e3b22c8476a2387fcbcd155fdaed3afb7ecf8ce7029dc2dd9c73b46fa608d9da39f58f4a49e169e52a1a8ca42fbed72db7TbvTKf4y0U3sXCy4Wo73CvhG0+x3mHcbpqDWkAI0Yuw=', 'a408277b9e654c2a1b9c050a97c57652', '2d8982b04314e8bbce1fb21a5f3543fb734777ab3d14f0631116e5736ca9e2a52a0ed92ca1ed5faa9c6a940c30fcba565e77a611173d2110c6323a0e8853f5f4mXDz8fDQ8f6Sq+MV47/q2h6/Xd2aljpL2n9vmI8RvN0=', 'Nilton Eleazar', 'Caldern Villalobos', '13', 'eaedeemoq@gmail.com', '', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-10T22:08:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(133, 2, 'de6bd17f9b6db2c5b135f44cc509d2c004de81be2782d4c7ad693aed4a0242d2542bf5fc2cd4b6607d52e3e26eef0a55e46c2d0f1189b10bf80c6f9ab4724434hP0ZtnZ6oeMaViFhVmqhh9OmQ/eywXG3PG2gwCS1C1c=', '181a05c5475db60f22989de134174155', '88575c8cae017c6d96755d95eac14adbd385e14c859a0a471b2bd49de09866c61f3c5f5e2a852e234c5dbee86601fa49527a3c4ab9cb1d7470e1ccbfeac901a1PU0CmiKKX6YI/XcPXGZQHNRnCXNGFOufUhYD0iyv1Es=', 'Abner russelmir', 'Payano gamarra', '17', 'apayanogamarra@gmail.com', '918202270', '', 'assets/images/cip/1678553230.png', 'assets/images/cip/1678553079.png', '2023-03-11T11:38:57-05:00', '0', 1, 'assets/images/users/1678553001.png', 'assets/images/fingerprint/1678553157.png', '', '', '0', ''),
(134, 2, '5008d9004fec1f7ef40baf4372693fb5053ac4cf10a1dc6c1efebb9fa51dedcc7bfd4b5d3a5fbd193f04b0ddb9e09052dd795d7c26534ad566f848ee6003ab08OmedioDm9ZFBP/NlIoRKm7hMNN8ufwCWddJI5yp+6dI=', '21350ffa48e38374e31cf91635665901', 'fac4b94703128e4147c91d90831e1c535f3100f93e0581850c877e4bd355ab10add9f2f39bf76505eb829cb3e416cdb754412fbea980ccc1336a62d2dbcef1day7/kuCoQ1frwiT3oKxRATgTiNhZ7rLd4ICWtf+T4k+k=', 'Rusell Joselito', 'Rivera Calderon', '22', 'rj.riverac@gmail.com', '993108134', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-11T21:26:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(135, 2, 'ad27f8d42afcc4e0874df48638f7960b0c3726d5b932f1c92093b227399443a2549c0505aef29c7827bdf74b0d09b31953ea3a034460583d92910f5b9380cdd6F0eU/APrbjdgxUZCy74W0nHWtLlr3EwQqNPG8wbMCyk=', '5fd204d15df18a97c057ca7581c8b0d9', '788b2c81ec25eed420899e1357a8527771cbc7193a7d2f8898ffd4eb7e48be75a82983f5662def843a4b20f4c8fb1c1795e3743c49c1af3c618282ca862c7694IgL5i05vohfM/M+0gFV1IL5G+m0Ttss/t2EAZDEKmg4=', 'Juan Ramón ', 'Flores Naval ', '13', 'jrf_naval@hotmail.com', '969125778', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-13T09:29:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(136, 2, 'fe1da75d78f4642b1d951f5e6569a8ee4ae235992c1710988abf8301677df80a6f4b03a8de70bfd7a55eb78741c434de0e68e0268203c78bb72c20c7aaaf0a9cfZhEK5VJFcu0D7UecPuaAs7m0eN9ZA/c0QxPNMndlX8=', '148683dddbe91b5065238ef3fbe8d5da', '3ac2ccb9167016330a67a72b264cb8a4ac9e2662188418fad0e95f9f78dfc73695a7e37198c0b54a20ec7d2042c4e563316c7d9f5b4ec5e973545d705241a9d1RgMfTpZr/gJbGlz4ajF9qJtlfxchU4Pud9C1xczLjKo=', 'JULIO CESAR', 'LLONTOP MENDOZA', '14', 'jllontopm@gmail.com', '976102961', '', 'assets/images/cip/1678724849.png', 'assets/images/cip/1678724907.png', '2023-03-13T10:28:13-05:00', '0', 1, 'assets/images/users/1678724341.png', 'assets/images/fingerprint/1678725072.png', '', '', '0', ''),
(137, 2, 'ae6a7f1559fe129b1f90072e54b2b479810d3db70a9fd3ea85b41d7369ce86b94366a1f3d6f4d5276cb7c4538883a5c03386d030a80b6ba365378d51fad27957WWExb1RR1h+MWmB1PaSz82VWPp2Ud9Xu8nlUMd5tlJo=', 'b57ee557c26b0e7513c16832d199689d', '523935bf6fd7572a5803ab5f80279d98c94a61b7a9d708a84387736a9bcdeaa419c210948090a143177208ac28d9293405a297a7f0111aab5816b5e73c2eadd34qgwYC1cbUn91nt0h86iafTKb+xYsdhBMvSSI6ZNeuI=', 'Thalia Feli ', 'Romero Ahuanlla ', '16', 'farwrq14@gmail.com', '920605027', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-13T12:16:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(138, 2, '4c966d01d08ba5351f0f4826f188f5df157808fef1126ff165bd2ef4737a9c95eafc1033e807d98dd27b6bbf79883c69693f5ffefd92e308ecc29898bf1c995dXaJc9yULk6voC3Q01kbm12c+KZFGGIPvUJbTUSu8EUs=', '1b58eba9a72301866b9679d791683de3', '8f41dabc40f95daacf4122426057a15b245bccdfd2e5f8a5549abdc544775c41959f72c9d0efdd62f9b983d64b1ff8e70a260dea3bf64074ba97bc06493c3d1arRBHbfem/X0CT8ClvT+O7HI/f8vZN4FbHMKBeu1Shsg=', 'Pablo ivan', 'Chamorro aguilar', '17', 'pichamorroa@gmail.com', '935831762', '', 'assets/images/cip/1678751172.png', 'assets/images/cip/1678751135.png', '2023-03-13T16:25:40-05:00', '0', 1, 'assets/images/users/1678743608.png', 'assets/images/fingerprint/1678751238.png', '', '', '0', ''),
(139, 2, 'c70f1ed2514376958763bc4447074895573b66b88ae97d32c9a2c2122002e0b34d452962c7f2537e5e79d2c18e66cac845137c75f8f587222bc6a5bb6090002dUaTgatQEHkSXRDLqUaswM3F9Ztq22fWHh0+TRKHHqAs=', '1b123eaf3f331be1e359b7d7de58fb56', '2e0b3f9f954bf0e56052431715492bb40aeffc782c1b5a2e4b7d581a9b2485ae85da5c92a10da98317bf5f029aeb75b0095b25f8a7c281cacd9c2caf8fefe218pvlAEO+OvWjUsdY+7oQR8IQmPt+Q8IIclEHHIHe87Lg=', 'GILMAR ABRAHAM ', 'COLQUE NJERA ', '13', 'gilmar196614_2013@hotmail.com', '924718375', '', 'assets/images/cip/1678848600.png', 'assets/images/cip/1678848468.png', '2023-03-14T21:42:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1678848630.png', '', '', '0', ''),
(140, 2, '6dbf86ba925ade8870fd2dcddaa2492eba167f2e8df963ed1b0200254291ed67342c0e4da19129820f611f61438192168661f026a69646f001c5194e763eca099P1/AzxuaMCwF3tSmDw0QCYmcM/Z9dC7q56gejYrYGI=', '8c088f519ab19a0246967a0e1c85ac72', '9a0885d76409835ba05d8ab0938411cf29dc4763a68ef43e4603d5a44d1509163b9291eb4ef8e6e376059459f81099d2f2826f9b1a3eb8d35fd1500e28abdcd1YgwXmfeR5RAo7R3NakXigXfadogp4bTLyUoSmqzOyIA=', 'Anderson', 'Aguirre Yato', '12', 'anderson10108654@gmail.com', '971146613', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-15T09:11:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(141, 2, 'b05ad1c728dd25932ac9f44ec4e9476a7db6f09c8415027df1541f27ee39bc789095d024b78b0e7d1adf2a789f581189ded364ba1d1603c373ac7fa165d1839dP981pSUPOf0hxup6v4jNoXQg8rl298m5NbEtTGlbEXo=', 'f01041ee85029548bb93084359c3c541', '130262110825b16d1a3b729cca33b9a8d1eb98affde827b00edee598c6bc520458f725b8d5cd7face99b7cbc11058d6576c4ca6db9b8184fabb041327bf5abd2cVfYaXDrnEgl6qteHZxcdn5motzbf/vvfHRQWc6uNc4=', 'Rudiar ', 'Ruiz cordova', '6', 'Ruyz_78@hotmail.com', '984988060', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-16T10:12:55-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(142, 2, '394856cc381b8890cc22cd3e1ce91cd18201d3ff0ca23dc0ef3ffa1aa25d2b1892d417c6bbc220b133d6d939981509beec768b590b84fc8ed75d184f0c14fb7bQpjm2sScRuS1yHvDtfBzPok0HGOB8akZr4GaM9O8a3Q=', '9b029f0f4b26e578dc07d324f2840aef', '9636f1199caed72e59a0e6cdfc0f96eaa6a0d33801f91352d587b89002a835ddd07303c9c59da9c0c6949b01a89ba036892bc46f824e5059ee91c48dc000c60eU+PWDAw22OMLPx9p15xWHp0IfRyroBQItoXzHCW/Myk=', 'Marco Antonio ', 'Villalon Quiroz ', '5', 'villalon23480@gmail.com', '943023011', '', 'assets/images/cip/1679090738.png', 'assets/images/cip/1679090634.png', '2023-03-17T16:55:42-05:00', '0', 1, 'assets/images/users/1679090519.png', 'assets/images/fingerprint/1679090949.png', '', '', '0', ''),
(143, 2, '7fb46023cb727c7a59c6cae4a0bc4d42606aa5bea4f55f61e0ce210b77694292851fba0ee865191a5ce4a2926672a5f03be077355cb65265643ff73a8845b839lbNNwt7z2J8JBdIK7U+CWNqXiiENqeJ/0reHrW4ufoo=', 'feffad1eb8a32c8f0c6be3b308726018', 'bb74017534f8655826cfca885edcee253c01e7394191c5a0e53f605427c9318d81546c796d9433329743e896a74b6fd758b9999ddeb4c4a706b15d49b253ee67++CgTKBsgspVR2NouYbC2aDrwbTG64P88zR7bj3r4r8=', 'Cristopher Alexis', 'Cornejo Foronda', '6', 'alexismil80@hotmail.com', '954052309', '', 'assets/images/cip/1679360819.png', 'assets/images/cip/1679360786.png', '2023-03-17T17:04:11-05:00', '0', 1, 'assets/images/users/1679360653.png', 'assets/images/fingerprint/1679360889.png', '', '', '0', ''),
(144, 2, '749c114bd527a375e095d59eca94e8ec18e24e345c642e0cacfabd252851e402c4e63da3d7c36a538bf459322bd5282d6bfa12b4fa681cd47e59c4bf1cace262fASO9pLUmJ6+3dx1pOzPVP0roJIwZcUoRpaac+W7mGY=', '9318e4a929124448f86892be3669423e', 'be05d68720b6b4558d1c02fb90e3f6b411a49cbcc9f93893182c35a8ef97b03cc75d4b03a2890d0731c00b9b6207de3d1cdd5e54ec4db7bfb6c56e5836e93e64fGuizq5d4s3cEyiFWEB8ldUgMLDESD28huTiLsBXk1I=', 'Fulgencio ', 'Antonio santisteban ', '6', 'fulansanthy@gmail.com', '972688761', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-19T12:00:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(145, 2, '3efba32a3155fd55e971b651fd4ac213671cb670babb3b9f17a59dc45eb5c1d119c71d2e044f56cbd5667148db245c7a2aaf4f1f88f6c7063915d520abd93e84i8ATHTsyzgpOmf4B4ldlHznq1d3PmE4nOCgOkuSVzQ0=', '5acaec6ec6c6c9a3e69f3c42da57ff86', '527e6d7c72bd38b8540db1077c8f412b62848cc5b6b6debf758fea5ec238e66c925d05841c4416716ce89a5befd80e032ce2f3e21497e16e42129b97538fe682b6G/vZb9MXJvObPaIdlmGsMdrA3hy/V6CyUoOkMahdw=', 'MARCIAL EDUARDO JAVIER', 'PEREZ SALAS', '6', 'Lalopara_rato@hotmail.com', '974035300', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T14:03:27-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(146, 2, 'e9ff47707e9c68490a09a87889ef430e1227db2b5ab1fddf915c14203fb5dbef6c3a8624dc339bcf9edb7e3ac0409f20ff6ebcb88df1c0ba700ffd2775c6cbd85dcTGj6gbEUHviBgL/JAVQ2niGqb9TgIQcjppa1UgDE=', '2ccdffb18a2160b845f21cb8c09ccad2', '155707ac4295fc5879c41af77d73373fa884a9c92cc4e58e056be062f50c796137e5ef5ab3ef68710e5ca772bb5a7e3347cded60690edf66cea345d7deae80e1gtBmsng8eKUHtw8NGyPNwZ4IPUA/zo6tcrYIwhKtaDM=', 'Manuel Antonio ', 'Delgado Amasifuen ', '14', 'chinoperez1360@gmail.com', '955608306', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T14:42:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(147, 2, '63b2182f58b1a35709f59750437fe5373ef8855cea96c2dfe71247a9a2b4b0cd7e0c75ac6a16c110de7fa68f6599a82f44ad2075c7d7bda527ff450675e0af33kIg2tv8UMUjMh3prTD/ni74TM0W1+l669mjwITuSwgE=', 'a26380abe1c88009a0da839bd90b5c74', 'cacae3c4da5121d4921075b569fb53478e1fcbd389022c198cbd544d806a252fd9b3d519e6048bcc6663e3d471ab58a9f1d42899cd787b7cb3b466015d334e93TVAqaEm73ciQffERdNDY0kL2dIoKIuyMQrijtYNBHNs=', 'Chrystian ', 'Ruiz Silva ', '6', 'lince205@hotmail.com', '936261648', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T15:23:29-05:00', '0', 1, 'assets/images/users/1679344123.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(148, 2, '170dd8cc5bd10ad9e844fc039a163d6ca93e27a50b76759ea5715bde0a9e5254265dfcbc73f9ef0b31a6ad80df8f81a8059757875b3d539f59dc0ee5d764a290nNm343sa/cg38xB8qnYfBpV3g5Ygds7JFQhv0i23oyY=', 'a4dff1cede90915e46482bf638ed0b46', 'd5ba2b3f7e437cf805e0c76ad2cfb57211d3b93fc8cc9b3f6be15148fd81a01b109caa70d43e978e32d99ce652294bbe9fe273e70527b08cd2f29fd42133bf2fegY/4VTGGqerSzzaRkNJWUQqSWaYOQ3Oeuq/RQZPZE8=', 'Darwin Ronald', 'Collazos Durand ', '5', 'darikar1379@hotmail.com', '955858565', '', 'assets/images/cip/1679346105.png', 'assets/images/cip/1679346071.png', '2023-03-20T15:51:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(149, 2, '6b1b63ff2e01f7a646a92ec69570b962105e7b38c40fa496bfe5b3adbfbaea9c4a299e88b27df2191f439bdf57ee07046ffec859a4034c4256939113003007b2YvS+Zn/pXb6krZa97rftA2nw+fRD9f6QMftJcJ0oM1M=', 'a873dd04b4226848acf32913848d3762', '218b7874302c7ad39a7fe4872974fa872585df00aee14ccb753f5929dd5a41b905c97a356fc2d89959e8b1109a07587cf526a009e75feb7f1d69e38a0e8f35f7Q9DYJ7qmu9zqAbWtxlvoYN1P2vx4Mm6TbiTSmhHx0k8=', 'Máximo William ', 'Paredes Otero ', '6', 'mapaot@hotmail.com', '996610007', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-21T13:29:43-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(150, 2, '328769ed2914fcee992af85b994c35690ceb23bf86a6695391709deec7dec84c01f5caecbb8c4279da278f2cfdc63e02cd74d6e3fb5c9285d542646a0495a982QF6dV3tM4NSv/4Fu3wDSRJCFkJpoSsXBcX7TnK4vuBg=', '19dfdda00b49b1e94651739e5970bb9a', '3ae54f604d999cd19b4f1747dc6168d93c388263964e6f46f42a1ce4d5db542e2a39d56952b653f8cd7d91c16a80ee4ba2e7d57a1ff31cebad7531fe480f8c453DSAT+Bh+h8aBjYOc3k+zTOfSJuiTpfRCEX63zbxB2w=', 'JUAN CARLOS', 'VILLANUEVA VILCAHUAMAN', '14', 'jucavilla34@gmail.com', '927585304', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T10:10:36-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(151, 2, 'cb5c7524fc99657330a1e940a23c041c66acd7476cb35843fd5bf222c52f9d0532d0696ee78b0b4160e9d6760e2d9fed2489fde5a317bf25d4460398172ab31ad3jzBBDwd9etUZNqpXh2qiuXKvkmc4jN/LIoB864L2Q=', 'aef50c3a9e7af24ae704a2941bf7ab76', '006c099e988bd6c855f9b6a061413eac430eee390c2cac36ac5c2f8b32dd98c47a176f77c44976b336c9e37fdcb18a0ea65979e957298b5dbf3eb5064a7e643d7GatL+4UXY+AMtiNMP+3sGkTdl7k/ntDCuD/vfu8fUg=', 'Jose deyvis', 'Rafael blas', '16', 'rafa76jd@gmail.com', '', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T11:07:14-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(152, 2, '6ad092a7bcdc048cbd7bcbb8d87402e4919ea0458ad890998bd7db15bfa4e8b9d7f463e784444cf503ff041fb462f93bc1de372a7b0d6dcffdd222e47736c8adMX1FIrd4btiUwjAy7mWyv/PUvmCsiRZDvzG2WqcaMnI=', 'b6fb6db2ddfcc635f1b7867e0642289c', 'c801e3848d9a241999c641df1584259c9b42371d97b5ec21cdf2eda49a22f6f4df72d7c12f9ab10f1bf59e227363ef0e7d8d28e37037337e37f3be03ccbfa1fcuV8rCOjNKiVC3gluqyThLzPls5dLCw4dn3NJ+5R+DGk=', 'Oscar Elisban ', 'Soto Quispe ', '5', 'osdisech2000@gmail.com', '958139656', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T12:16:35-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(153, 2, '5855a4c94e60135beb2873934da8371bb6a79cb16e2fa1b3448491d215efe8a29582dc32bce61d7ca22be15be295068000aaf9b4ccb0d76942bdc096b28e91d9JFM0TVkTxKTTIvFooyDlFNA6Fyh3RTBcknYIjSf9cbE=', 'd9ddb27ac22d216120d50c4973e126a8', '38e6af889c4b807384066ebe7a937273d7ba286a4e7866c5dc6bc4f1bf4152035d9538ed1b3afa6576cff401b5cb140ccc4d7d7f6e87e5ce2d4502f976750dd3lS6YOkhm1mLhMBwnp/5aJTlSplGzimR2RnBJjj4pdgc=', 'Joshua Lizzet', 'Figueroa Tineo', '22', 'Joshuliz@hotmail.com', '987171905', '', 'assets/images/cip/1679630156.png', 'assets/images/cip/1679630912.png', '2023-03-22T22:44:11-05:00', '0', 1, 'assets/images/users/1679630499.png', 'assets/images/fingerprint/1679630359.png', '', '', '0', ''),
(154, 2, '0a4e2f23fa4253dfffccb184e7247d81a80d126d8b16cb30863efc2cc99a6726af35079ea8a0c85af1e8b6a8fff51e1b16777254d9a5bceb2ba4359141f7a8adi0cuXwrVZy3KNAHqz7vTUa0NxlLyfO/CfhokA2XdmLY=', 'e0d7b9240584d045937d0278f4ff119d', 'dbac89d3b1d90d18d1d6cc3c8b7da50003fe8c2af7d844183c2ae3774b668685a6696a8beda2ef8cf3eaa76f8a3d3a6d3c14aad73079a1d74791453db05fc8b5g34b+Ego/lIHA3g1fLU/na9YPy286FPduQCIvWp1mkA=', 'Obdulio Jesus', 'Cisneros Figueroa ', '5', 'ocisnerosf@yahoo.com', '999863537', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-23T10:31:37-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(155, 2, 'bfbabc59a778123ac1c5c266e25c75e928f56da25edfd2b9f2bad285a0b6309f48f52988d900e88efd7e3c29fe1a6e43d7e06a9b8df185832ce217a62c6fc48bmwnn0W8R3gBv8paRmEDP8puVRZVo9kqV/kW7+YOtb6I=', 'a6648ebc7b436857692f659dc75ae46e', 'acaa0249e2161a58b9a668af4acee6eac2c342b567cc24a3cca4f2e8dd569a543246e1f7db1b65ac554b90966ff51c43e9993d86c14be73ebc946f387bf07025JjaYh8wILJIDWl185UVvPt2bBk6S1EGi2M2X7M7I0Co=', 'Jorge Hibar', 'Alfaro Goicochea ', '6', 'Jhalfaro48@gmail.com', '954988791', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-23T13:35:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(156, 2, 'f02a34c5e5768b8529dd3e2a772bcc853a4d279a75adde7dd8476d4f448e9b9cc74c10fa0ac022af1d9fe1c60c8048df3f37188c9b10e48d1422b8cfab8039bbAdEq1wzWKWrvenLBbf+Wzp2i1+f1G6Tz1+/BMAp4/Dw=', 'cabb90e78319f186fc6f912894d7fabb', '170c792f35d0556580f527a2f8ddec9d8868d0460d6a3e16c9db6ff9db03b9adf6b1629ec47d9368ec72d652a7fcb1110785126ebc46078aa4b02c59ca277cae7utqC/Xy+UV2ntBQpXHGjphSVRzConlt+lbIzo49xJU=', 'Paul ', 'Loayza deudor ', '6', 'alias_088@hotmail.com', '928486854', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T07:02:57-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(157, 2, '355a5e54d1e294bc5ef5cb74059b0cffe40cd5e0e718bd7120ebff95be7ece36734165ddaa11ac86778518582edb247d2c15885d333aa5d7af0ad035cb3a70cf9eNAPmcu0yoc9hHfDGYvSGdW7vKl7dYw+HK/ZpoRnAs=', '2e6401d953dffe971c148318fb89c3ac', '6ba5ccb099055f7aab12457e2067d2f0688276923868696d9274bf6e9d260a05dc99042069d7ac8c8fac8f03f14404bfddd84adad509d56c17b2977ce40749d50yFcirvmcepCust3tmlfvvlYdWOSds+ycEv5PkYjzqM=', 'Dick Deivy', 'Rocca Novoa', '13', 'amazonasprg1979@gmail.com', '977456830', '', 'assets/images/cip/1679665360.png', 'assets/images/cip/1679665342.png', '2023-03-24T07:55:17-05:00', '0', 1, 'assets/images/users/1679664281.png', 'assets/images/fingerprint/1679664925.png', '', '', '0', ''),
(158, 2, 'e05e6745e88473e408126aef81305b20c7ab69ae1bc408b5414d037d80ddc1c0cc37b19f86698e7d20c75f0caf99fefcd1c74654ef905b86807154eb307bbecafwgUgSYiA7SmLFZuKf+iUz1dktpzt+Twr0K0oWo0CnQ=', 'c071c77ce80c588b10dfd052a7d39dac', '1e47694830370b9ace013a477ccc5c847070074d42b7eb82efad4557824fb19953cc0505f93c86fec3a22196588a7e9bf05986e3e645b65c6c77bdf2e03c033cL4NyO+bDOI5AIi5va4Catx//pKcUGQaq1UvWz49tCXk=', 'Julio martin', 'Molina berrocal', '12', 'jumolbe_28@hotmail.com ', '952216070', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T11:14:53-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(159, 2, '0f4ff15795589255e0e13d0c7bb21581ad1e9d8834e226343a14a8b9290d9862f315b021b3a7863b0f89500d6af6eb335a6baf13e68855b6d517a629462667bcMM+oqJeaCq4c+f0xWmmCggs1twcCU0jsbjTA/6xhSIA=', 'cad4c20e0eb3b74ef9031ca381d09b3c', 'e13b65e1d457458df0179a717891033bc09a5ee423c51f59ccea062c042221e4808a4f060787de2ed597457c8c414223fbb29da1a9ac3421f32e85f1056c40baz5afIXii2JtkTnhHMEc3xhPBYEQh3x2VGqrbCp49+Ig=', 'Marco Antonio ', 'Jimenez Lazo ', '4', 'majilazo@hotmail.com', '996631276', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T14:36:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(160, 2, '946498fd72d48be977a4457548d6b6709c386fb7ab11ad3fbee785c6851f2958b6564c54dc4dd4bdc0cc9a609a3b4d119d8ffff496de3be017776e3830a198b6E+QCAldEfdqCQFVeo2zB9imz5/Y26+oWmbejPzOA+gE=', 'b96b0d3e990037d30e5c2c763b8b3f8f', 'dc6f070f53568ed66450df122139af88ff1a193a49ed0a7185779e7d8705598e6c66dd92c712d818be4a6dc1e314897627f611c40217c7f2b46db73d2fc9c938MtZL5p+ifq+PvYFfyr8trbr4oeysXodAAUwV1fkQU/o=', 'Keli celia ', 'Flores Villanueva ', '22', 'Kelicita680@hotmail.com', '953678398', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T15:54:13-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(161, 2, '5a5e578e3076c6ded6ff858c619c37affbefbca4c0ccfa7d642ec49d32b7d1cfe6c99d8cf77354a9f38704761c0d551d7c47130c80e18c190561789a8399a5fek5tmVdKWkewRdDBTS1J43iGlLg1mheiAIzOyLDuiDck=', '23621a5daadb59d7bd9cd4aeaad915c3', '5fbaf5fe83ee9c211e6ef6d3b115af77689a09bb89328afdd4a038a61e8da5e525691456680c340df06860ec83940b833ad1953d39c983d306e43f0affdb1e92A0wThCc8aeUMpVWMG+/tidDjyFedgmT7qD1tIE/l79Y=', 'ALFREDO ALEX', 'FLORES CHAVEZ', '4', 'alfredofloresperu@gmail.com', '988072471', '', 'assets/images/cip/1679697623.png', 'assets/images/cip/1679697742.png', '2023-03-24T17:02:18-05:00', '0', 1, 'assets/images/users/1679700606.png', 'assets/images/fingerprint/1679698728.png', '', '', '0', ''),
(162, 2, '9683b3ccad5a91dafc4364886b8a326839984f8140a65159e988ebb089dc31ed0a61f1a55a701244f62c2f4c79d4a88378b6fc2d1b8b37c680e7ed8bb86d05f6yybdWFluNuHIFpL5TD3oNnjTdoP2HbaQ13sO/s8tNzY=', 'e2526667ba3453bfcf77e3b48a33bc11', '040d7f6658d967e3e67b7b734f06154793effdec7ad02fe0a18927244b3c37ff4df5c3a42ad0fd072d9ca868597c16ce930191ac98544c25b98b455c5caa579bD2pAq0JPhdxQrjzQlGhAukUg7C4f9e+g5E6nqHpAqRE=', 'Victor Raul', 'Carazas Vilca', '5', 'vcarazasv@ejercito.mil.pe', '932397524', '', 'assets/images/cip/1679699124.png', 'assets/images/cip/1679699103.png', '2023-03-24T17:49:46-05:00', '0', 1, 'assets/images/users/1679698402.png', 'assets/images/fingerprint/1679699235.png', '', '', '0', ''),
(163, 2, '5b7d0780c7b1e870bf4fc44c9edfc5915d48bfc7c83aa50353ebf6d4bb17308b2366e5c9bf4095e0098b0870862972246933b8eaa884735cb0fc20249a407379V0PeoNO3gqsP+pyTnpjnkhah3usycbiYsEAnQQSLnvY=', '0731c85d364aaf33ff8632a6142bf42e', '2d37cf7c89b3a8c791f20f62324ee7f7d5a0b6899db381d74d10edce527a4c8df6202cc8a47d3e49fab98c2bd5193e235fde701b7bb55a804fbe487124808c403YMtj4Q/nlC/XnwWa9Jbtbm9F2WvIDWDiAbWekI+R04=', 'Eyner', 'Cordova pea', '21', 'eynercordova27@gmail.com', '939880411', '', 'assets/images/cip/1679942537.png', 'assets/images/cip/1679941590.png', '2023-03-24T18:26:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1679941738.png', '', '', '0', ''),
(164, 2, '9749cefe734a36db35ec67482bf17a94ffa892201974b6c039b066050c9d4b5d1aaea3308d7ab9551a3f2048ef4f8161bef2df02a228e3c4ea1931f1375dc8a6ClCibVDoEJO/aLhCC3JfjzrisiTN1xY579I4VAkacko=', '5ac9b3417e0883809bbb24bbbe090896', '05b3a0784fe72ce58a1ea6cfe2d96c8bd3fd68f2a335d1ab04ea987f28e5e793adc42cc2c7e5013212e43179e9e907a7d36020843220aed82ac2fd376feff89clrU9mS5CjcbF2Il4sZNDO23MQvIjp39Sxjm2jk27Fqg=', 'Rafael ', 'Alcandre Angeles ', '5', 'ralangel111@gmail.com', '988466241', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-25T15:36:46-05:00', '0', 1, 'assets/images/users/1679776728.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(165, 2, '413816cf769cdf657e4e4e72bee5d9880ada2cb9cba7bbfd17a9b723c6d8d1c19d3ba3758f8f57e3e1bbde17b96c6739e2559f1a6b02f9c732d30477592a09e0PIxbj1At4tqoBHoOc6pUMRg8RnrpA1XRL3GT2bmwDlo=', '9a3bda5e54eeda5a0165f0717dab531a', '04b46049f13ea43dab26dc955c77f7a68e47aaffd9e25164203ab98e4972843f5be498823df3256cf726d6a127b1f501e7c47c89bfcc77cdf83cc7b40617015dko3c8bU1x8i/vYpqonhP35B5DogU7bdwMxP2odt7nJc=', 'Franco Anthony', 'Ayala Odar', '8', 'thonyxs.19@hotmail.com', '963809412', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-25T15:59:09-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(166, 2, 'bc0640dff4c851918d318558c6c95e44570ea245633f33483ea76ad77944c2168aae3b7451cb47de7dccb83c1cbd9c12bc4005a9bccb242a5b575963a94537903hDwpYaH3KZNj5hfsBgj397/kMTGsU/cb5Fr93CUtP4=', '855fd7422ae3716ba32cedbb0bff0653', '1bb0c781f853c15f0b3639421e4e6e5a8e363e4b15b74dc11c7e4ffd761756102473158e6a0c0e5088fa009c9b75f97e2cda9bf35f3134ce5ac08f98bbc6d568e3WrUv4WKUI5fXSHY+DBYFI3Scj8bNCbFCJbrkS9UGY=', 'Hans Lander ', 'Guerrero Alvarado ', '14', 'hanslan24@hotmail.com', '988009516', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T00:32:30-05:00', '0', 1, 'assets/images/users/1679895275.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(167, 2, 'b71cfd7d4c7a48d54a5ae67fa06932f0abf4836e1eb6005a77544fb7d57c47c8189ae0f85d47ba26e91647397ac8c41fffb9169120d8b629fed8c4c94cf0aa0fZzZpHLveACrJgFW+bm2s9pa6MPBnamP+juH3KCl6Rns=', 'eba23bcbea6399ad8832c1dcbf921bb1', '0e841792abfe3c3f0aacb4c07c0a882307574a60f453794df5372b639b9de0fb8b432431db9c10f49463c4506849210062dfca45036e64981e3e3e05c83968b8TNh4RQ7WsPuAwuTBca8hRP1byiffCNr7AoY54b/sFgI=', 'ELIZABETH', 'CARDENAS GAGO', '14', 'jarit11@hotmail.com', '943282104', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T13:13:59-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(168, 2, '10bc87fb2213e263e3fb299034ab6c6734eda8aeaf5bfc7826b681a8b1d5b5793376503aa9461a5d0f19449e501574803d8bcec6b28ca9f30fd3820833d5b7b1eZOkEpvAPabmmEvFt8dZERZw5OHCiw0U4ahsbnRWVSY=', '748de5906279bb4e6555a512a7eaeaa2', '623fa7b90db086e3365fe8bddb29e59ef0c8adcf75ad8a7166f870f9c8ae1b0bdc395a17b57642c16d9215c9b94d0c80035fd29127a33e398095da9f67f7cbfdaIRO12iXzi+kd9aYnDzEIi5E/u5KFfZT1epBkXRh9FA=', 'Nilton Andr ', 'Alcazar Rojas ', '6', 'Anccoellomon@gmail.com', '946353071', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T15:43:41-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(169, 2, 'eb42a86382b3add154f8956218d06799d206d77aa3e3b54825b06cda11e2de8c26402234e511ae87a15e15c16a19bdb2ee7b86750f9bd89a21d2afe8c2de5437ZVLRBvhMyywlHn85MtU5ry1QezvuCScjIUFJoWv0TdA=', '3d31d4e56ca71d07049f701626c89b1e', 'efc93499a44f3c171fe38f8328c8e194d203d9530f8c6b0c2f8d540461160bc38cd198cd3ee0d4eb1688568968803be16c27c1962f1e94015543c28459319f855W3eWIqTBfmvCk1pQIbpEkdaK3psJyv4p2uEj6X/icc=', 'Anny Aurora ', 'Coello Mondragon de Alcazar ', '6', 'Naar11283@hotmail.com', '934527634', '', 'assets/images/cip/1679950443.png', 'assets/images/cip/1679950752.png', '2023-03-27T15:47:42-05:00', '0', 1, 'assets/images/users/1679950556.png', 'assets/images/fingerprint/1679950469.png', '', '', '0', ''),
(170, 2, '7ba4d621c81c856b7bde65f14fb1cc2b5582e81e399e16721cdb4a9d2ae3870a4a1dc23546fc2fe10289e79a1da6bcc23c05b401aa1db44b5567a739136712adY+Zie3nunRlTKWmPbNNo/VzgPON2KBS3/ES3HX8/+6U=', 'd1ac85d79da78e3d0b00ffff92a8b66a', 'cb1fe4cfefd71aeb04744ea82ef4fc73d1d952a055c2dc52c7314f93fa3df7ac621b87d39c22be516097059c00c3be833386bb9622e03667a26c1798c6d2d6e8fL8NTfYBGeHI/ZOPBitxDdqMjWBx7CIFPVdTQnHpbM8=', 'Jairo Yasub ', 'Churata Tuesta ', '9', 'jairojas7@yahoo.it', '987790504', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T19:34:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(171, 2, 'e329b2e53002629b8b75206d55ac8a1a8cbbe165e0ca0c7e793e9bc996eb68b059ccbf10a103abfe8aef98d46f35b98aee09a0591341f34dca8899008031992aBkqNbdseRuEecLxdmQuD0cVsxO6PASZ9DXaHxy2W07U=', '523ee6afc456fe614558da52205a939b', '7a848beac3fd3df7f00215ae02e456663e26023d5dd317a3d46cb80e94c5a6a7d0ea1e588fddfc2a188ce60a41dff101ca4d07e4cb7b2da501c4cd687c6ff1029Ev3a3yIeba94hdmipPPHvRWG4Y8/JYvBB/80qa7O8w=', 'Oscar Ray ', 'Flores Silva ', '5', 'oscar_ray81@hotmail.com', '966080123', '', 'assets/images/cip/1679965151.png', 'assets/images/cip/1679965355.png', '2023-03-27T19:56:53-05:00', '0', 1, 'assets/images/users/1679965107.png', 'assets/images/fingerprint/1679965249.png', '', '', '0', ''),
(172, 2, 'dec929a55ce17161a053a1aace7fdef431a77b58528aff5561e3a160a2b5c4c9bb4b8790e5f687ac66d935f2464bb91235b48b9fb03395ce6dcd64d076f3238fG0kI3im9lxX6dgCWNDhlH0chQqTxpcFjT/bdSxcrDss=', 'b7b327268389c00e817901277d0379c1', 'fd4b576ca2bc1981eabecaadd59fab935739d612bdf292df306e956a009653ad9426c55b4e3cc0dcbdd354bbdcc5522b515dc2d4999d5ccd53a7d859f5654cbaG9rWNLPeVa9Y4j6ysfV/ptI4y0FC6sdJKUWFcLp6HMM=', 'Carlos Alfredo ', 'Llanos Fernandez ', '5', 'carlosalfredo1976@hotmail.com', '998743463', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T22:55:55-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(173, 2, 'a6765e4bf8e607be898e46eac5f572f27621059174e6b1a4677c7390a75a26561cad32a0dc37817c229aa6ccabae905a896783bba31343c728180c754e817cc97RbeevGmiLGc3p7dQXGmyHod6CFkypBcHuYBNHhN218=', 'c018c99bbde310e9e06879fdec38d5b6', 'e98a5a94ee53ce9913f132dfd529b6aa4357762ce83fe58abbe1c425e51fce0ca37def3ab2c71cada6f790074b6a4a1da041f65ba1c58f971cd619da7b8c98d3fwLoGtv2lLfuEyTcKkhB4mGaF85mjYiWtrz7WXC3VYU=', 'Manuel Augusto ', 'Inocente Espinoza ', '4', 'Manuel.inocente@gmail.com', '988884013', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T23:14:42-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(174, 2, '68560c28de39ea1d9642f0591f5fde55d253e1320c2f8e424dc0b36acbc244be95a13b64422ec4dedb71ab24ecf07747855253841e26f90841d8ee4d24032b1doWNxiwQqQ1uy4rR0AVNEHO+lkGsjKSJVSVRzFP4EsCs=', '9f2f32433b76c5427d9c468753503cae', 'fa623962ba170c3f5a787ddd9c54be2ef8ca3dba52ceab1020dd30e0d594236c8be13bf02e9e1c0f1d08ecc1e455d39363bb99897f74f4306a13a3a682c397d0vB05VXNFLx/8Zf3DCGBzJr6+oZtCeslhlha/wGqfRho=', 'David Walter', 'Mayta Brzola ', '12', 'david271212@gmail.com', '978995631', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T23:32:22-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(175, 2, 'ba116734116b1e2bba7ad557eac56eda8a7dcba33046feb9133eec5c675737f8c7104d1f48ded0d1db8669fa9f938b75c6b0035135f9497fca9925e8693948735ohl71v0jTOp/lpk7iZ1DMYlW2lrtMKKbmh/g/WXnC8=', '312540e617b6c8d112d9f196a1e0c880', '2675db31807d3935e5aa6ab0c600c71d8ee7a428a0ffa1f1ccdf0e9d437528effa0c80fbaee2376b85efbd8574c0724ee9c07129f8374d7794fc01c7a35388bf5CEPq7MnGozCUqrnuJpu2IWwCEw4VTilS1lC/pCpLNQ=', 'JORGE LUIS ', 'MACO CASTRO', '12', 'macocastroj@gmail.com', '920136259', '', 'assets/images/cip/1680091543.png', 'assets/images/cip/1680091511.png', '2023-03-28T09:12:24-05:00', '0', 1, 'assets/images/users/1680091811.png', 'assets/images/fingerprint/1680091594.png', '', '', '0', ''),
(176, 2, 'e67986c840c1ed0bdfd689ba87d4521816bdabe60563a2264096732c2703d3a05569f423f21de4e89eeb22625f4159871606628fb90398fd0e52836258c37f21UT4dJDAU7pG4bMFkY7+BbHBx5I9ydNuBAvX1BYPe868=', '465a403269feda5d234e174326e62fb2', 'a32d479388cf802b0193c38e8ff395de79dcdb6fad5302e06e8bd6c47e4b877b15030b8e463c16b48f5ba3e81bda700adc12b84b690817224b694484dc8e51a98dcNr6jQBAFgEP9+tR5DxnyQpuDYQ5P9H56KGvZAebw=', 'Henry Enrique ', 'Zevallos Melgar ', '5', 'Henryzevallos1983@gmail.com', '999839445', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-28T17:52:46-05:00', '0', 1, 'assets/images/users/1680045353.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(177, 2, '9cfd907a2b0b8371f5a9fc7b527de24231ffdc0393fe3fb09bf6f30cc368b1c3596241493a2f17cecacaa0cb4dc3c9ebbda597f465f22176208a68a57326547claugxGpJ1N3WOzRwlXp+jTsk/TdUfCU4Bsb4noPK74U=', '5bf095411450eb0f62e570688c7108f1', 'e4ec84db815fb5e9c2505f886bce0512442f2d60f978757a9c71dd4049923220367c09d9f8c9e62e7193437bd425106e74b700823ff8e0c76043054709559153GHgEJTYr/1HvaKu5u4t/s+/pbDDcLeOtVEjr3NTAGOs=', 'Wilmer orlando', 'Ramirez Gutierrez ', '8', 'worg24072013.worg@gmail.com', '996024966', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-28T21:58:45-05:00', '0', 1, 'assets/images/users/1680058890.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(178, 2, '605e019b9400ef2b3040e31fcfa65f32cc15f38781a0363ce55f5aa21b75c497bd4f07c8889c4e35f1a137b5625007580b84967bbc6a7de641281d13ac8e0af1X95Ao8S9maucHQHm4xCmWfrrCHCoHRIaTxB+j7qY+OQ=', '7460329f21934f3adec5c0edb9e02961', '256c868b9cc0f591f1644999617a74acfaf2e889bb5d2d86b3f9468a1719fd03bd096358860ba96d0ebb4c1cc9369ef54889836fb50b0cd7ac6ccaea1cca3e732PeMHnD/Ct0WhHDS5QkMaTldPc+PPPZ0QYFZ9wEAZ4c=', 'Brigette Alejandra', 'Romero Talledo', '15', 'Brigettealejandra15@gmail.com', '920674674', '', 'assets/images/cip/1680145304.png', 'assets/images/cip/1680145441.png', '2023-03-29T21:56:58-05:00', '0', 1, 'assets/images/users/1680145459.png', 'assets/images/fingerprint/1680145425.png', '', '', '0', ''),
(179, 2, '7d6ca7eba9f158463eccb76798c3f870f289f77f24b48926957b1b224c9db1aa3e86e21179fe6ad95fc7230ab4a40378cb7f863bedbe079e7d72e53f1a690898LtSKfnJ+vcNBYheo2iRQ9OTM1k0WJT/IyLddF9lp+wE=', 'e108eb2f3d192dd40eb0d26f5bd65e49', 'd3078f973f1f5d47ecfa27aa2333422560f9be0857713cf1df62b5d35325c9eee15722441e06809790a45051ac3801f5fef3113d645b80aa09dd2c93e0cdec81Jeka7jAZkQdjw9k1DhCXD56kODzCta9pBeUkWU2MhG8=', 'Gianmarcos franco', 'Ticona choque', '8', 'gticonachep@gmail.com', '956139491', '', 'assets/images/cip/1680196151.png', 'assets/images/cip/1680196144.png', '2023-03-30T12:03:33-05:00', '0', 1, 'assets/images/users/1680196045.png', 'assets/images/fingerprint/1680196191.png', '', '', '0', '');
INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`) VALUES
(180, 2, 'f8e1d92936404d3493ae43967dc339dede90a9a19b389570f9bcf3460accbcce170d20fc9a9d7aa198fffdcf2d363e77a1bab2c0b0b540950f699c526fa1196dIVi3hhhtYXIHeN+2AEJpe099o9wlwbZT+bp76cpyo8I=', 'b805de96a1e5c0b5e5ab8ab439240105', '64ac055e270560d643f9019b2855fd10a29143ddb4ae921998e8d39e73025a67a26b38a69352c2b9accafdb405923dd9fb59b9e858fc48580d27343aa4a84b73OSDqTHFPRNf7LHXyXliZQz/LBz9U1jPF37CWR0gp7tE=', 'Walter', 'Dilas Mosqueira ', '12', 'Waldimo1975@yahoo.es', '958606468', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-30T23:55:45-05:00', '0', 1, 'assets/images/users/1680238718.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(181, 2, 'e4ad0ad59d3e1f2ab2a66d9ebcda6e5049255ed9ad17792dda0bc7da9ac93353db6929cd074fad1a7ef3d98c8fb715417426e38e4d1bb6a7ba6ceff68c8b47e4qYnL7SizWIIacE+J7e1sKy8A2U6xxhSyJKSSUQZ+0/g=', 'ac02f87dfc0fa5518cf871e581e3a2f7', '9107fe6696a66677a2950fff307eeaec42ae7a7600ea7bc996e2dbce26909240570412bc00a9810ac19ac2cfb46acc2fa09dca62bee38235db13875281c6d5cbti8nW9xvdoff8SBxf4hIQ1oKjNCuOdn5tiB3O0nd1Po=', 'Omar ', 'Cardenas Aliaga ', '6', 'oca_emch2@hotmail.com', '980315677', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-01T10:17:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(182, 2, '7cdc6c8416ab5505872e41a0193c5d83bf342f09676ced6fee9e56023a2af109ead3dcec29be23987219ca24b393e35305cf6653bf55c9f05bd04ce71d7512c1sMwgros0uFJMZuv7j+ayroWboCBsMF3s7tstYOKjh94=', '3980a72840b1e90e59f657368d0dbe36', '8b47dcc0a1ca4dbd1651b4020a4b6ec10a1e8bf5be1f429dd1f103c58e0c05446059ebf54a480791b0e54683062fe58b306b180e8cfa83a720a444c3506105dawOlDYgtBqw6xD6nu+NhYQUemFW8F85ztVb8CvWzQMew=', 'Luis', 'Quiñonez Rodriguez ', '9', 'x100preangel12@gmail.com', '945364936', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-02T16:58:30-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(183, 2, '655b313794552f3982f69502f3c2dc29b95d3131125a984289edb548e81f2dd62bffebce28f881dd9f14c0432abb450d559b44fcda0bd0f938224c14edc963a6Q4JS/PRzKAzpN8GP5gvvAOu8EtL9iyZxQtz3CYVyMiQ=', 'cdff412b4791dcc15e1f21dd9af43c16', '335837ca5720caded649857af1ea3497d850d6f9437160b037366f4c13db1b71104cee1b2c53ed57cdbabd68b897454153949f8b7955e05fb37c6da037720fd8fGEvEeSkk1cIoeqZwIXbK7aZTfa1L0hULGGTdAVV3jk=', 'Hector', 'Camacho cerro', '16', 'hector8181camacho@gmail.com', '931687143', '', 'assets/images/cip/1680541515.png', 'assets/images/cip/1680541471.png', '2023-04-03T12:02:42-05:00', '0', 1, 'assets/images/users/1680541661.png', 'assets/images/fingerprint/1680541572.png', '', '', '0', ''),
(184, 2, 'a6c249c3d48a44553484e157ff215ffc332d0fcdf3b0d7fc560d1901425a745b03b3816fb184fed5183b8ea8d9384bb51eba069ff2aa2bce9763dc903d0feaa0c3EHpZx2qH9WGoNwrCBPzZHjBLhMZKzJ81zEL8ZPa9I=', '184834e1153b2c45c6f5dbc00f259cfa', '29804d097e0e494c4cdd984ca35c6ecfbd0a7c19f3805264ad2241f44ed25003eca3f119ad51219eee483edccaac3845f8a4d8196b3b6d049921ca5521bb33f0E0ZX/70WBm8FCCbErS5yY+nfEMcwzeB7/ovHce427vk=', 'Luis Jhonatan ', 'Condori Gordillo ', '8', 'aries30jhon@gmail.com', '993174287', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-03T16:58:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(185, 2, 'f3e1fbcca1bf3fc2b84892129cd12f88e26d4239adf7727e7b7b7cf4cfd8f82fda6ee59fb3a1de9079826b0df0824371b4e4e0944c534e137000e75759c00dd1r9DqRAk1aVKfnPPFMad99la3Wc0B5hG/Ekx7qVLAQ1s=', 'e7e265d6898aae39031ed469fc69625d', 'f16ab0af55c2f55244ee1fda5a5010984713e1a2cc1c7fba6546a040ffa39b3f036a9463da940fd42a87cccd48cd9c731713d6469977ea64732ae2777fbef212G6ZBCpqdshzOWSyGKici2Kl+zpa8aOphRDegxpuOhGc=', 'Crhistian Andre ', 'Cervantes Cartagena ', '8', 'crhistian.cervantes.cartagena@gmail.com', '964979175', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-04T07:38:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', ''),
(186, 2, 'd202158f6f21590ff7253c2738623bbabdeaac912e6c334b917e719c3be255240016d8dbe668048cc2592fb3562be3f65be20141ae6a2f52967de373c9b8759d53U9/pap4j8Qzc0HwCsLxA1sSCnt5/JVbwj4ZQ5PEo8=', '5acaec6ec6c6c9a3e69f3c42da57ff86', '2d97a33a78c19ccb633f0d45337fd2d3013ebd8211567fbb6413087bdbd36fe24fe2747b5326e7e626bba1dd4e4bb86ae91e41b1c074e15a35ca39fadbbc20bcntOgQTMMdUYXy/PMoXWfkVXoizd6BBcNH9OnwDJAyCo=', 'MARCIAL EDUARDO JAVIER', 'PEREZ SALAS', '6', 'Lalopara_rato@hotmail.com', '974035300', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T13:59:33-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_workplace_user`
--

CREATE TABLE `tbl_workplace_user` (
  `id_workplace_user` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `unit_workplace_user` varchar(200) NOT NULL,
  `greatunit_workplace_user` varchar(200) NOT NULL,
  `core_workplace_user` varchar(200) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_workplace_user`
--

INSERT INTO `tbl_workplace_user` (`id_workplace_user`, `user`, `unit_workplace_user`, `greatunit_workplace_user`, `core_workplace_user`, `token_formdace`) VALUES
(3, 14, 'Unidad', 'Gran Unidad', 'Nucelo', 'fe098a881bf29e9e81dac5e54315a812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ze_placement`
--

CREATE TABLE `tbl_ze_placement` (
  `id_ze_placement` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `unit_ze_placement` varchar(150) NOT NULL,
  `greatunit_ze_placement` varchar(150) NOT NULL,
  `core_ze_placement` varchar(150) NOT NULL,
  `token_formdace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_ze_placement`
--

INSERT INTO `tbl_ze_placement` (`id_ze_placement`, `user`, `unit_ze_placement`, `greatunit_ze_placement`, `core_ze_placement`, `token_formdace`) VALUES
(2, 14, 'Unidad ze', 'gran unidad ze', 'Nucleo ze', 'fe098a881bf29e9e81dac5e54315a812');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categories_ranges`
--
ALTER TABLE `tbl_categories_ranges`
  ADD PRIMARY KEY (`id_categories_ranges`);

--
-- Indices de la tabla `tbl_condition_users`
--
ALTER TABLE `tbl_condition_users`
  ADD PRIMARY KEY (`id_condition_user`);

--
-- Indices de la tabla `tbl_data_britanico`
--
ALTER TABLE `tbl_data_britanico`
  ADD PRIMARY KEY (`id_bri`);

--
-- Indices de la tabla `tbl_data_institute`
--
ALTER TABLE `tbl_data_institute`
  ADD PRIMARY KEY (`id_ins`);

--
-- Indices de la tabla `tbl_data_univ`
--
ALTER TABLE `tbl_data_univ`
  ADD PRIMARY KEY (`id_univ`);

--
-- Indices de la tabla `tbl_decree`
--
ALTER TABLE `tbl_decree`
  ADD PRIMARY KEY (`id_decree`);

--
-- Indices de la tabla `tbl_drive`
--
ALTER TABLE `tbl_drive`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `tbl_drive_rcvd`
--
ALTER TABLE `tbl_drive_rcvd`
  ADD PRIMARY KEY (`id_file_rcvd`);

--
-- Indices de la tabla `tbl_form_dace`
--
ALTER TABLE `tbl_form_dace`
  ADD PRIMARY KEY (`id_formdace`);

--
-- Indices de la tabla `tbl_forwarded_corr`
--
ALTER TABLE `tbl_forwarded_corr`
  ADD PRIMARY KEY (`id_frwd`);

--
-- Indices de la tabla `tbl_gguu_placement`
--
ALTER TABLE `tbl_gguu_placement`
  ADD PRIMARY KEY (`id_gguu_placement`);

--
-- Indices de la tabla `tbl_institute`
--
ALTER TABLE `tbl_institute`
  ADD PRIMARY KEY (`id_institute`);

--
-- Indices de la tabla `tbl_neogicates`
--
ALTER TABLE `tbl_neogicates`
  ADD PRIMARY KEY (`id_neogicates`);

--
-- Indices de la tabla `tbl_occupancy_home`
--
ALTER TABLE `tbl_occupancy_home`
  ADD PRIMARY KEY (`id_occupancy_home`);

--
-- Indices de la tabla `tbl_office`
--
ALTER TABLE `tbl_office`
  ADD PRIMARY KEY (`id_office`);

--
-- Indices de la tabla `tbl_priorities_dace`
--
ALTER TABLE `tbl_priorities_dace`
  ADD PRIMARY KEY (`id_priority_dace`);

--
-- Indices de la tabla `tbl_ranges`
--
ALTER TABLE `tbl_ranges`
  ADD PRIMARY KEY (`id_range`);

--
-- Indices de la tabla `tbl_received_corr`
--
ALTER TABLE `tbl_received_corr`
  ADD PRIMARY KEY (`id_rcvd_cr`);

--
-- Indices de la tabla `tbl_relationship`
--
ALTER TABLE `tbl_relationship`
  ADD PRIMARY KEY (`id_rt`);

--
-- Indices de la tabla `tbl_request_home`
--
ALTER TABLE `tbl_request_home`
  ADD PRIMARY KEY (`id_request_home`);

--
-- Indices de la tabla `tbl_resolution`
--
ALTER TABLE `tbl_resolution`
  ADD PRIMARY KEY (`id_resolution`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tbl_sons_user`
--
ALTER TABLE `tbl_sons_user`
  ADD PRIMARY KEY (`id_son_user`);

--
-- Indices de la tabla `tbl_spouse_user`
--
ALTER TABLE `tbl_spouse_user`
  ADD PRIMARY KEY (`id_spouse`);

--
-- Indices de la tabla `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indices de la tabla `tbl_universities`
--
ALTER TABLE `tbl_universities`
  ADD PRIMARY KEY (`id_university`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `tbl_workplace_user`
--
ALTER TABLE `tbl_workplace_user`
  ADD PRIMARY KEY (`id_workplace_user`);

--
-- Indices de la tabla `tbl_ze_placement`
--
ALTER TABLE `tbl_ze_placement`
  ADD PRIMARY KEY (`id_ze_placement`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categories_ranges`
--
ALTER TABLE `tbl_categories_ranges`
  MODIFY `id_categories_ranges` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_condition_users`
--
ALTER TABLE `tbl_condition_users`
  MODIFY `id_condition_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_data_britanico`
--
ALTER TABLE `tbl_data_britanico`
  MODIFY `id_bri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_data_institute`
--
ALTER TABLE `tbl_data_institute`
  MODIFY `id_ins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `tbl_data_univ`
--
ALTER TABLE `tbl_data_univ`
  MODIFY `id_univ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tbl_decree`
--
ALTER TABLE `tbl_decree`
  MODIFY `id_decree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_drive`
--
ALTER TABLE `tbl_drive`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `tbl_drive_rcvd`
--
ALTER TABLE `tbl_drive_rcvd`
  MODIFY `id_file_rcvd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_form_dace`
--
ALTER TABLE `tbl_form_dace`
  MODIFY `id_formdace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_forwarded_corr`
--
ALTER TABLE `tbl_forwarded_corr`
  MODIFY `id_frwd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_gguu_placement`
--
ALTER TABLE `tbl_gguu_placement`
  MODIFY `id_gguu_placement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_institute`
--
ALTER TABLE `tbl_institute`
  MODIFY `id_institute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tbl_neogicates`
--
ALTER TABLE `tbl_neogicates`
  MODIFY `id_neogicates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_occupancy_home`
--
ALTER TABLE `tbl_occupancy_home`
  MODIFY `id_occupancy_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_office`
--
ALTER TABLE `tbl_office`
  MODIFY `id_office` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_priorities_dace`
--
ALTER TABLE `tbl_priorities_dace`
  MODIFY `id_priority_dace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_ranges`
--
ALTER TABLE `tbl_ranges`
  MODIFY `id_range` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_received_corr`
--
ALTER TABLE `tbl_received_corr`
  MODIFY `id_rcvd_cr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_relationship`
--
ALTER TABLE `tbl_relationship`
  MODIFY `id_rt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_request_home`
--
ALTER TABLE `tbl_request_home`
  MODIFY `id_request_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_resolution`
--
ALTER TABLE `tbl_resolution`
  MODIFY `id_resolution` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `tbl_sons_user`
--
ALTER TABLE `tbl_sons_user`
  MODIFY `id_son_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tbl_spouse_user`
--
ALTER TABLE `tbl_spouse_user`
  MODIFY `id_spouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_universities`
--
ALTER TABLE `tbl_universities`
  MODIFY `id_university` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT de la tabla `tbl_workplace_user`
--
ALTER TABLE `tbl_workplace_user`
  MODIFY `id_workplace_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_ze_placement`
--
ALTER TABLE `tbl_ze_placement`
  MODIFY `id_ze_placement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
