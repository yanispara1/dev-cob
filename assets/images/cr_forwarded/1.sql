-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2023 a las 18:02:13
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `files_frwrd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_forwarded_corr`
--

INSERT INTO `tbl_forwarded_corr` (`id_frwd`, `destinty_frwd`, `class_frwd`, `indicative_frwd`, `date_frwd`, `clasif_frwd`, `frwd_by`, `signature_frwd`, `ext_frwd`, `rcvd_corr`, `issue_frwd`, `team_id`, `files_frwrd`) VALUES
(15, 'qwerqwe', '2', '3', '09/02/2023', '4', '1', '', 'pdf', 62, '5', 4, '');

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
  `rcvd_by` varchar(11) NOT NULL,
  `signature_rcvd` text NOT NULL,
  `ext_rcvd` varchar(11) NOT NULL,
  `decree` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_received_corr`
--

INSERT INTO `tbl_received_corr` (`id_rcvd_cr`, `sender_rcvd`, `class_rcvd`, `indicative_rcvd`, `date_rcvd`, `clasif_rcvd`, `issue_rcvd`, `rcvd_by`, `signature_rcvd`, `ext_rcvd`, `decree`) VALUES
(62, 'qwerqwe', 'qweqw', 'eqwe', '24/01/2023', 'qwe', 'qwe', 'qwe', '', 'jpg', '4');

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
  `name_rol` varchar(15) NOT NULL,
  `descr_rol` varchar(120) NOT NULL,
  `jefe_rol` varchar(11) NOT NULL,
  `array_int` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`id_rol`, `name_rol`, `descr_rol`, `jefe_rol`, `array_int`) VALUES
(0, 'No Decretado', '', '0', ''),
(1, 'Admin', '', '0', ''),
(2, 'Usuario', '', '0', ''),
(3, 'DACE', 'Aun no', '25', '[\"25\"]'),
(4, 'DAS', 'Departamento de Ayuda Social', '27', '[\"27\",\"34\"]'),
(11, 'Mesa de Partes', '-----------------', '54', '[\"54\"]'),
(12, 'JEM', 'Jefatura de Estado Mayor', '56', '[\"56\"]');

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
  `team_depart` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `team_depart`) VALUES
(24, 3, '98c8ee11c22643db1e9b93d52c520808b33ed11cffa62d42d4a55b3765ec728bcd4626b4c713cadca0f8914cdc18955db58b22608c69c8428ee1218d8de32b4bUxumgcMUHRktmF/DCU7Bpa+vvc8MPwHNhgsdnUHVLFI=', '0d72b3f707ba1c849c99cecba0bfcdbc', 'bfe32c1c2050f849a06f56b365d565349426528f127aba9daf052b2c80fc1f1f5cbdb2a9497496a59f40052e8d3dc7ec5931987626d9a46c493e7209355fe9baNxywUDWcFBTHxur3z72uDnQv3bijQdiUzJDC731pDbU=', 'Marlon emerson', 'Valenzuela Estrada', '22', 'valenestradam1@gmail.com', '926730944', '', 'assets/images/cip/1672084897.png', 'assets/images/cip/1676306286.png', '2022-10-28T18:29:13-05:00', '1', 2, 'assets/images/users/1676305957.png', 'assets/images/fingerprint/1672084987.png', ''),
(25, 3, 'b319e99c7900e43013775a16d3be120a11c8ee81b419bbd43ae32cfaac44309b91f7d366e545025e4cc9e3f2efaf81d373eb5bc49be12daedeb2db614b5e8348iCksUe8F28bz716J60mKUAhO4KVxq6/igCMbB7iNUZY=', '25f9e794323b453885f5181f1b624d0b', 'd84e6d0f73cba870fce8ae96355b1e122fb37823e7425818f4d23fca4e2d07e0f0fb6470fb90f7c3fb6af7a3f0c7723ae037a28c4246e2384b607c9b530bb5c4DMKvLQXntw/hF/CMUpFA1SdZzxPG+jEnawbMkNtq2/Y=', 'Marlon', 'Emerson', '3', 'valenestradam@gmail.com', '972252744', '', 'assets/images/cip/1669499755.png', 'assets/images/cip/1669499749.png', '2022-11-17T13:28:47-06:00', '1', 2, 'assets/images/users/1674583770.png', 'assets/images/fingerprint/1669499761.png', ''),
(26, 1, '6a25310569fe05bcff99a4d07d68699449cb2e594b6ae8f6a13c03132b45a7479c11de28192789450590fbd36d8798f225a0f8e432f79549f8f8f8b8837c77acRgjPMRjRxzBSm+L3+aps7cxMdli2x1V/lxoLBoZUIww=', 'e96a3966eac1fce863eae454a94fa4af', 'bde180f50266f0b9c090253f7e473026b13b06364d1db3bf3d8de67529ef076850c2d3df2ad42bfa5b68ecfae88e4e189138e78ab8ca95d89122b43126b9c5638Cwez25wo6OxWftILyTbwDrBMjXSLAEIces30jaCScg=', 'Roberto', 'Mendoza perca', '22', 'beto1perk@gmail.com', '972252744', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-11-03T22:32:07-06:00', '1', 2, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(27, 2, 'c51cad4291ddb52621b6a6c086d27387e63856a0cec9204497fdcfbde28e547fa4a829127c64c1ae252706ded9c6d064c5bc5d33d153364212b2b45e1a6d9914IJtjggrH0ZAe4hYwb4xKrm2TMbuZBSk/p4BIboECEVw=', 'f5935bfe675c31372dd8f66c7a81f6af', '7fc04c37cb269ee1cbfbf0316eb966c15429bf7ff1d2f191d2bee9a7b6e0615b3b008957e3344e04940e137d9ebeabecb46912f2781fcabe8121f56b492f85f3o/3HXzhRPypkI9UsJCJ04ca0CDm07/DmIGhZ9HF3AJA=', 'Javier mario', 'Acosta cancho', '15', 'javiermarioacosta27@hotmail.com', '960315252', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-01T20:26:43-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(28, 2, 'd44f7aa4ff3ad5da972ef155682678a2d7d23bdfb013ce1eb2661b8eec9ec43afb3ac6a04c5d2bfa1ce079439afee47d7ced2c5a36c4ad49d1fa34bfb0d9842dc0dKZsxgNITcKCKGXpVHiVPJx0+/gn5JXRpfI9D6O9g=', 'c56dafb41b9fdba45bc2577636fd2873', '2a6edaa624ae16535198e106c5d5688d97d5632406e7c5690e3c62b58022d5559df4bcf594da738e1612ba6167e80a6194df76a1b03247d76374f28c670c67f3wbRNUf8ItxVOKFBZyiuhSk3C0Qe2RskVby/pTYe8nu4=', 'Daniel Agustin ', 'Muñante Valencia ', '22', 'danielmv94@hotmail.com', '957219455', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-03T16:20:17-06:00', '0', 1, 'assets/images/users/1672701110.png', 'assets/images/no-photo.jpg', ''),
(29, 2, 'b24deba49b8b41dac9f31fffe5c81c4ad166f67a176ccb56e8a81fabe2ace5a92547383c0ff1632b59572f9cf6c0afcd014652e5c36e4de5b729429910caab9d3g0rMKgedVk2utc+G8gQgk2QUz/IGPtvNfVXykm+wNA=', '0f8c3ba05231a3ede0089444bb74f759', '19fe72493dbbe154142a3862f0943f97a2b5437d3e3b0ebab99375167b52552d9558bd529d3326410095e72611a4e4c77c67365de465c75dc43c00930e44b62bx0B9FFDimC4hQg9K9CCsup/4ecMObZVrMTNzOthkL78=', 'JONATHAN HIPÓLITO', 'GANDULIAS JIMENEZ', '6', 'jonganjim86@gmail.com', '958104231', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-04T19:46:01-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(30, 2, '23261525c3b2a924b69526d827ae475c046399252f9557fefc83bc3933627240180046f98e658f05e862c34386cf70afa35c3282796e678d2fd898dd28ef0fecp8ISkP6QLhLqMy2KiqkkjyflMML8pZdMEauvB+feFGI=', 'b830a904fa342867947d7dbf9a58b13f', '6d818d1cfcbce519c2f435febf2043c2079fd006966f8bc4a2dcd6714f8088ddf84170143e64bb33b792bed603d0374505058505f878277e53fd1996a2d3f0b4pcCpHBLayNbHsr0qiR7nYYvWIz8uCIUVzMQawnS8y14=', 'Ricardo', 'Huanilo Tarazona ', '5', 'Ricardohuanilo79@gmail.com ', '996132986', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T09:19:41-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(31, 2, 'cf11c800fe496cace488ffaeab96b9de6e2a549e9ad2bea312569eaecc3195623f6d57140f926c10a78788b5a9128b159214d684556c80cc91beaf1c78da18ff6pueVVWP6bEbsb7CfX3/cb2+wz2v0CmZPO55Py/sFvw=', '38039a37a2d97f5aa5a4c37d50b09b13', 'a5829a6e5afdf81f743b37c79088ba7df3517f0a5347d5635f7163e48df25f74205b25c8b8a3d470858ecdd2402ece245c7760bebf288e549e5bb5c26a386246n11qExzoxv2oLDjP0AESj0rWwcP+SM6m/ppWh/FMa2Y=', 'Ricardo Enrique ', 'Sampen Aida ', '7', 'ricardo_sa48@hotmail.com ', '956030396', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T13:04:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(32, 2, '03caa592c41ad107e67cf567909abf34a9a3c96672f06039e904da62c9fb45c94c09460032a9dd9600957648001fbd44fa2dfc84d86a1444891b55b79a510beaKU0MkDoS4ibXIAFQVr5DRDuolHTvR6Q0xTk/tnhFEvo=', 'da2371822ac87fda3e6c6e66c7e20e80', '2cdd14a95699f25df38e10d35b341260cea7b281cabed16e7e85e1d4ad817bdb6590d52ebfc918a56e7177dbfcc0730159be071b496022b3f571e5081d967824/+u9Io3VUASuOZX9oEgvqxcJUn1nh2PzNMG+PWCV+gc=', 'Jose ', 'Espinoza Lucho ', '4', 'Jepelucho@hotmail.com ', '999044558', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T16:28:30-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(33, 2, '1e5580ceca0842b71f050dbbb95553f2016fbb8b2c15d884e9c057e2703a9963485852a128d26e7e7864e1c4944b92293ca05738ffd6729d48747df8e77b39d6DxUHtNEGvzhx4J9BGsE9HEffP9jolthE8RJWJ+yhVEk=', '924502a06d963586c067c2eb12b9a640', '2c52370f5e726038b706bca9b9cf47f8a6ff52217783c21db6b2046864a04966011a2ed91bc8c8af7b67ca1d5d3ba97e2999a5809a9abcf9a6af154149c195908SQd6xB//TOENBzUMXvoo8cTINOHcQzN/kku/Q/1FmI=', 'Ander ariel', 'Bustamante menacho', '22', 'Anderariel@hotmail.com', '979606527', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-06T16:51:21-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(34, 2, '0fde97aeb43a5f16f5eb3882708fe9b94e84e123213ed4f7fe23155ef3e2e02e1d8179f8d47d8bbc7a3ba798f5704ca640da3847eab39c8000af9a8f202949278/6nRFS5IMs3TIm8rkDBxSpwc4nArVwzmp6k0q/UeDQ=', '0f08ce3b2beffff9d0eff78522fb884b', 'f9ee100b0d679be8eb3784ab8bc58d82c1ae7410a56f7a1edcd22c9d71eb23187acfc60f9bbd8ea5391b07084ff7ee2747ca81ba7c7184983e1151143613804acrBHijt31RWyIMX1rPF8m7L1mZu4+l3icUp5FM1oTtc=', 'nelson manuel', 'esquivel jesus', '8', 'nelsonesquiveljesus@gmail.com', '949545262', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-07T10:53:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(36, 2, '4c8de3f011e6b3378097c0f4b83ae7449956f1824b8479a707308f767d5f3b2ecc672b537263979822a3d10e1a4ec789b112915c663c34381ab2972271953002hjPv16GcRaWoSVJYXTslZ+4irCpkQ8x4TenegxydKO0=', '42f1113833a07c895f4f2400bbf2f9bb', '437c15e3c9570453e07fa569364ac07b9823e10f9f3cd456cd16d8751da40f66b4e878e6c21bc62cc459938af22290c64773d588f80b6e9b41832ddaf4fb2dbevgj/lNfXO+mgkGNDRI8MvQS+pUdUslQDGwfX9OvK7oI=', 'Dayvi Jimmy ', 'Villegas Huarcaya ', '5', 'dayvi1977@gmail.com', '901661304', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-08T05:45:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(37, 2, '6ffcd4c2d187238b899a9606356ea57995c1a08e4aab427908846f2022398ccb8012a7190058f9e211d6a755b870401f8b1c06f665028c054be03e82c10bb264SH96xcfqywK6CLn/HHK+Fb2PusMZMlkmvJJgL+58D48=', 'd4509062ab274e66aed053c3d0167114', 'b53a35e10dd2dd3b6a5347b727a3e7c8cab9b150889d015181216ebcc22e89cedf5e35568063bc064e5557241e0793c1a1e641b113d79505a695d2b581e821b7fCD+WPRtvfI+DheZt6sPB4jtrlWS4DLRxFZ+WhtFbhE=', 'Larrinilto', 'Ocas Azañero', '13', 'larrinilto18@gmail.com', '999800318', '', 'assets/images/cip/1673403084.png', 'assets/images/cip/1673402991.png', '2022-12-08T21:40:11-06:00', '0', 1, 'assets/images/users/1670557474.png', 'assets/images/fingerprint/1673403259.png', ''),
(38, 2, 'f3e40313772ec3d05545121dd64ea49f74624195bceccad18d5460e70afe137f6e0fed3a31852b36e2041ce7ffa017717154a2de8a22deeb8a73915c17d82051f66wHAbH2vDMHtnltN88LZzggbTVCLL0GorR4ftpmvs=', '5c1718b7018238b9d8bdfb91d02108ba', 'fd52b116398735123eaa079f866239cfd4fc02c5834d0618068d70ef4fa74208a74559ba21440bed4dcd254e8bd9678d9e2c2242a2c1e12d870f3abd0912e950gBLuoHrsGe5NXnFJniD+VmZXelQ2zRVI7CSh2b0yHrY=', 'Danny Anderson', 'Huamani Chucuya', '15', 'psdannyhuamani@gmail.com', '930302567', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-09T07:53:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(39, 2, '404a625d18121654aa684819b46797905b293ca232c293e5877c8eac507366de9ba514172749c134821a5d0f897d05743865816759a4396c199033c5e44bb20bWkHY2TnDVWhyjBbhLhbuzh/RNntO2yea88cvt7qVzUg=', '833fd5185a5812044668e682a588ee75', '29b0c5fb787211ebed7a4b99273253e532a0a75223f1df31faef81e80f4655207c26f2a77035e901b3ec89e00fec4dd63344c36ac1e28a067505344602dcc4892ZmuAlevByQt4jxdYv32twbsg6ofXPhEc6DmTCZv9T8=', 'Christian Oswaldo', 'Jauregui Teran', '6', 'cricri2658@gmail.com', '975044058', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-12T09:20:49-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(40, 2, '0d5a5b5a0be8b55a9481e958d24eedc1865cfa07583d16d16a5c60581c6e9a5b60bdc58d4cc70c0316737358007da5dd3ca9137e421f6240b7391080b9a5e2c7f94EB0Qb8tcrzHnQm9J+rPzQrlWGYYLtD5nZX3SkpAU=', '9a244dcaec269e816040fb7f2933b78a', '2e02200fa52e728769633be52dd47e112b96fa9139888a8256a7c6303f8b06fd9e8100570fea6423ce8b78488de012dc487a5e25fbfc8a091586e55c57b1fcd6GO7pP10Z9F2HYEkALXeZVEZzfFc/+w8XV2AOD8DqHjo=', 'Jaime ', 'Santa Cruz Pinela', '7', 'xtoverdad@hotmail.com', '968019017', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-12T11:22:24-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(42, 2, '2ac77375eb0d818c870ec412760a3d7b688f2199e360037bafe87f82528eb1e34e123c869b3da99fbab2eecc2509e4bd3ebb44584a5fc801f93329c027b0068d1TDxLwt3g03M518MJk+SrX90d4K0lh2+jBuZa0eiLak=', '506f26e4d8793d800d4c26a727035021', 'a182dacd41fc955353ca6aeba4abd74a86cb9558961a57023c3dc1248894938849f626dd7241e4ea069cd9756da252b82d0bb48ea881a3bb7373abb30f8127a43KzKS25BirM16dsl5QVZv8tPTGcwoexVoaaf43v45nY=', 'Segundo Julio', 'Maldonado Milian ', '14', 'maldonadomilian.jmm@gmail.com', '945343661', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T07:57:33-06:00', '0', 1, 'assets/images/users/1671113003.png', 'assets/images/no-photo.jpg', ''),
(44, 1, '1f5db2ff9093ebacc2c81fccaf9758dea12d3c32ec73063295b8da4175eb5819fc2b5d946dfb7a5d376c5477df2e48aa43a8a99ef19ae98e1fb50eca42054d0ayeZ+DIzKPro/b6yt/u/YoZdT5f0hD7ft8d9zLBixa1Q=', 'b7e2f3f9215b8e3e7672d0493efb7bb8', '14af37e9516fdfd449a5340407b4daf5ec3db540adce57ddbbb81f9315502d5b80acdb187ffee7cefcf0a5a22f651a9c2e2fe12d0ca4f915907c9fe07d721c0ds5J0IyppcIja7RBXglwtwIJuNKSZ9GfX3PrydosgKWk=', 'Julio ', 'Guzmán ', '22', 'juguar01@hotmail.com', '981162510', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T11:15:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(45, 1, '660f22e425eda281a8ca71d175c7e1a33a95879667b573b0a1cbd81944188e17994da7e119ef8ec0c7cde85511eb3f849683a7f56b1835b8923ccdf19e06a82fusV35K3y2Sh7SNqOS8e/b74LU01PsKXPjTEGYlQF7xA=', '38340c38aaa625db95839d70e904e353', '4e433900f50fec2d17cb7ca533e145026ef95e3f3072bd9ec29fc5181e5c433ee397737a339aa62049de8a76357a93783d6aa20163738f7b2d09b550b7ab8c86z8OUpW3eSJYGKjVdUtC6ne3QDt7751ea7HvgUpHjS3c=', 'Oscar', 'Guevara Ramirez', '22', 'ocurra_24@hotmail.com', '974614777', '', 'assets/images/cip/1671125828.png', 'assets/images/cip/1671125767.png', '2022-12-15T11:31:03-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1671125892.png', ''),
(46, 1, 'd01ee4fc1c3f98fee5f423f7040bb09d93b8afd53e6db1af5c29ac93539e572436b728d4c8601d6b9492efbf7a43bbec30ef3a81d96f24c0de6d440fb3cfe8648lzLnN1xH49f2srlZz87k01xWr9vmuuHPvEOCNP8bw4=', '2bbe493e6b4c34935ee38baf69c87bb7', '592ddc90d2ad01ac2705517793b115563a57fc83cce7bf6fa11af5ab1989d1fd06f28800dc19748287af9a05af4424e33aaa1f7078d3a8b750bb9b9242ecb768lh8H+mBGzMUrVqJH4smWB1YOQj3EbRQjlW/VlUyyi1w=', 'Wilfredo Jesús', 'Bastidas Huayta', '8', 'wilfredo_bastidas@outlook.com', '947514654', '', 'assets/images/cip/1671210100.png', 'assets/images/cip/1671210052.png', '2022-12-16T10:50:14-06:00', '0', 1, 'assets/images/users/1671210368.png', 'assets/images/fingerprint/1671210083.png', ''),
(47, 2, '6de110188636a25f3298183aa9d475d952ec5826f6438d3a95bbad22c577ef99305fef48655cb72ea627ed5605c0a3bb7332df93e3337f1cf1fc62b8446b6985CyP0B9Yxd3hzTj74iP5uUandtiZC1tWQjRPJLCXYCwQ=', '9bacb65511186ab00199e566c644b70d', '57d5ecde1b460032dc19db4060015d15e95c11d1dbac14f7546a6126f1249691c57ddb68a43cee93d475a412a10ae15b8eb739b2971308c5ea7bb3f5e346f017/yTVNc6NYWSK8qZqFa0HxPeM9rZCQNPAkjdz/QXdkus=', 'Jorge Rolando', 'Pachamango Novoa ', '5', 'jrpn.abogado@gmail.com ', '968304009', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-17T04:34:49-06:00', '0', 1, 'assets/images/users/1671273669.png', 'assets/images/no-photo.jpg', ''),
(49, 2, 'a3257844900d9fad65f9b430ee14ad394131b5fb4a3aad250fb328052077d082cb6004000785ccbe0bee97e20d616dd05354fcd81ae5ad3aeede37e5352ca018hhrrxfIBoUihvmYTSUQqxKs5fyDusyBYLppY4QDecLw=', 'fe83143d80af2a9f7000d99378232cf5', 'dea1cc4bc1be4d477b4438d880c939c3172f5468df5d80ee693131dca9b25885af79412d522629a84eb66956b624b8bb33a84625f5c8d83508feb7ed13c6817beAsIMbKTBWV6Xa2PwXl37eI8DlpENAMwFZ5GBlRrAb8=', 'Miguel', 'Bovadilla Marcilla', 'Seleccionar Grado', 'mmicky619@gmail.com', '933566511', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:52:32-06:00', '0', 1, 'assets/images/users/1674873088.png', 'assets/images/no-photo.jpg', ''),
(50, 2, 'bd738165a6bcc6309c0766d6c1d360897748435b0292a67a6e0a39ba3a8fb59a2419a813d5416149a1e8a7e2a1beb2600095c1afb7af971d826cba43b9137906TMe7VnuMUxurdHLrVJfdsYufQqQKrfFj6VNadzGSPDU=', '60b905686dae9345100b73507624cbcc', 'f8d03ce29113c7882d7c3f11825dce8709648023aab1b3c4b31d0a399ac5394a7c3c4b1a6fbbf7ed43fa05e769f5f76544420e135f250439641797593def628bv3T/Q086ZtNgnycGtOVQmrYQ4XP3k0BehO2FR+nT4zg=', 'Higilia', 'Marcilla Espinoza', '20', 'mbovadillamarcilla@gmail.com', '960473404', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:57:17-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(51, 2, '08217018f846c0086e5843aad4b834006ebd70746f589b68199e35e0df98de95ea15fe98acce3f4eaf680f10d7b91cefd75e9e038dd80f08d635e705e8c64959b5H4HmftEICEuCHNGz9QWdaST4yzDGjHE/YimJGwNIU=', '1cf6312772096ac6694530d132278c1a', '1b0f6f2a85d35342a691eff49835ab3141b078ed8ed7ca9c7b5f12ed73ebfe1f0dbf9f8c2903cb540dca87a401d3f47009398fc9e25375e0de421609ed37e0637Rx2IbwBiyuL1XfYm6eROAi2SAAyy4+yjN9gqY8YAZg=', 'Erix Aldair ', 'Guevara Tone', '9', 'guevaratoneerixaldair@gmail.com', '954602802', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T20:43:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(52, 2, '1c2116e185333ea55aba49926f734b936c3db17888985ab934f838ecb73a72c8c78a3ff1591c4dc8dfd4117b813c9488d7c579d4ea4034fef84a43abd0446337kKXFiXhug2zT1hO42HVFYMs84McOsi/PvGi4IW/v+iE=', '77625e07af744175ddb13468b4850938', '4b29e1e622c95f427413b11b0be24df9b4bf707cc12fa77da32b62a38cbec4e7e672cf5bfaae9493cea03bd4580b0e9842795a9d88f394626ecc9ad112b6d7a4iiOPSJ18nummBmJ9r13XsVZeIyNv5jsNBqlSxZEMed4=', 'qweqwe', 'qwer', '3', 'marlonunico02.99@hotmail.com', '123123213', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T13:56:06-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(54, 1, 'eb11f9a7302443ae6af21d84dd4f94cd8d270152e463f75afabca07831497cff0ca799b5ecdd8caa1e0fd96cac20210855c19abfea22bec4e9e19cac16908e307PaUvfvSF9CNI72mO+9QtfggUAUL7g16D10wFFCwp0k=', 'cd3c2568b284308b8e64534c1d4675cf', '772ac74f9672968127e507723b815a21b4e7f435f852feb6a58712ba7aadd3e2b6bccb3f91cbe7af94b7cf0c464224c739b39e101da31717603d043286c5f005rhzDKK1XZM8VVHr4bSuU7lXGiq0bNDs5i00YLdg1yFs=', 'warren', 'gonzales trigozo', '13', 'warrengt.4@gmail.com', '959528931', '', 'assets/images/cip/1674591265.png', 'assets/images/cip/1674591302.png', '2023-01-24T14:08:27-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1674591357.png', ''),
(55, 2, '9ee2f7e37fc137c42df4020d9ef39098a70f34bc88d2f710440472279eadd856136f2114a1b3b30211811d823d948f0d7bdcee7931bffbe99a05fb7d863d52d3TO5oK5q3dGW8wyIeSk4EgaYjQE2olDB62875gc4TSYw=', 'da8bf31baeec1b15db76a9add752f68d', '06a2fdaf4d60e6064587f75ef1c60de0c239f5afe67dd61d9b0148a5a6db734a438e14e8cd49f5b767c5ae355682e4f5f9c06dc7b223c27e4f043f14c175b595Ye9iCu08wNDm9O/1SNhfqAwiaNwRI9KgAkAoGIriE+w=', 'Dora Anglica Trinidad ', 'Maldonado Vidal ', '16', 'dorita123acuario@gmail.com', '920733873', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T14:12:49-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(56, 1, 'b2e9131b3c57ae9e7e591fb3078405cd51a0251791fa11dd62ef4051314c34713b341dbeba7df2a21981312186637bf93240bd3e4eb0efda3ecccdc807274208CW4WE4wSMcvA1ZvjI2V/O50p0Gtw0M1msgjfkCTs06w=', '04e77f7732c5d8fe3e8a72e3fe5f1b15', 'c963e82ccc8357628782c6bfd4499cd359514f8a7f7d627322ee010715160c647f353112f570b9a5ae95c6fe14589ddb4e432a4745fadc42219fdab5149e2ce9lG0tVBb9FKPodsAW0a2QWHEvAbU2hTzp4i2/lWyFT/8=', 'Jorge Luis', 'Jaramillo Lam', '4', 'jljl72@hotmail.com', '955501362', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T16:33:42-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(57, 2, '494a1afe8fab69363c5b957450ddbdf0498a9de0010663b8894fc34ab57c9b1c512f9ae8bdf5a6d66f89382adc38c19761adf9ce206187c58d3e81cef2c332924UV3umRdVKZlt12JBb7vIqfmsdhDQHaorCCRc2jkU54=', 'f1eb9f803f83628cf63e29dadeb9324e', '008943f3eef04d47e3a182a0107a7a3f41e410231565779de072fc45bf92b911a0035607e1eeaedb5393a587080c59d4b2dcc1278fb8a001d782a1542dbf5399WplVal63PJj+l9Ay1pwgWNG7iw5BHy561fNWj6HQ9yA=', 'Evelyn margot', 'Rejas velasco', '15', 'Erejas@prg.edu.pe', '923091836', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T03:50:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(58, 2, '102d5009af68968c2fdb1f9797185796cec39d4347aa3dc78d0e1165a0cdb83dc6d72f6b9f12fab787c45eec35f726ebe7c62bc42a7eb1808c78efc34a7fc6179LEbbpT6X5cLoxQ743NXi39mA7qv1I11W6d1VAgpdNk=', 'b66bd09e1b9fbd1da071a23df1f8a4ae', '7efbfb4747b38cfe3b3335d5c6ea9fdb7f7c4cc4bb908d2f25999c838add6448577f10598432afc8a9e68159db3bf450973d3cf862a58f764e082553a1cb3ab8QXMGbBG85vOQdZ/05iEgBKbf1ZFp5fmxPG4baiH2GTg=', 'Jherson', 'Rojas guillen', '9', 'jherson.69.lamejor@gmail.com', '951365835', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T06:19:44-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(59, 2, 'e33e1d70c9d42114b762753d42a69e4c91dae4f84b671808a91bb7f8bf33c6536a01dd112059e7547720a00030daec6af79407560e62ad273172f1ca19bcbb71Z26Ui4nCPPB/kG8yS1HopsyLCfjCTbTBdjV0YONNgo8=', '24827c6974b2337c33c20503b45f8b4b', 'e5acc5e44d49abde560ababf11e8df0941b347f9f3a9df29db22460a27c57f9f9c01369c535352ce453346f48196216cf1ac85b4b647f2621e41f663b73e0c0aLq4xgR9/nnmvpNDwVn/kcC+SMGyK3rYVYwd55fha6e4=', 'GERARDO', 'BASILIO ELGUERA', '14', 'gerard30cmt_leo@hotmail.es', '952256090', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-26T15:22:36-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(60, 2, 'fe67d93a6204d32891ffa90f4c8fd3f926c3fd4b85574222165a988324d9f5b420218cedd20581d377c18a36f9536a83e90dc48fb7b241c8a5639a7b9a3fa1a1UaB6ZyHPcynsBRsYA1WX64nZjy8elHBn0+P12I8wBhA=', 'fad6cc2a1ca29c3beb1397a1baab1139', '6d98f4965e3ae583e71dd249bc33786e576945376ffeb68a56e7932aeeacdbd9f5b8a103a9656a5c96c0fd9d8d19e53d89f6d213de7ab670b1ead513b5d3406fdF0BSvN9CMUdPdrthZ9FMepXtdecz2R33lGX7Ckq9ZY=', 'Jos Carlos ', 'Perales Wong ', '6', 'wpcj999@hotmail.com', '999989103', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T17:05:33-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(61, 2, 'fd52f077a5a85a388adf2acbf9b8eebeadf54458e0d0c3ce52a21c1bbdb8986b4dbc330c977f407c0af33d37504dc74c40f8145c44c757eabb24f4856475a387BjE9kkScXu8z78zXuz02miJEStGxbI/zpYvL2EabVho=', '6ca4a91841e4a5f749d465923e80278b', 'f6bcb3b5c7d4a91b77f784fc85e68c55e940654d324b274f3ab561e61c8b957adef366499824503beec6d3ce99a03b3df67fee6e32f51d5e89a35913c7a633a080dSjUDcfgRZhE+R73FJ43jtYbtnviZBnjwMgFroNq0=', 'Julissa Doris', 'BOVADILLA MARCILLA ', '20', 'mbovadilla@proempresa.com.pe', '989252930', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T20:24:59-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(62, 2, 'bac1c4f0a4107f4d9546fd49388a7a66ebcd238cc8582bf50b5ae708efcc36196849e70cdb8b7be27c7bcb8fad1bfaf51dba70393d009c0d3a176137f20d353dfaAr1aHr4e1qnCBtTbkvU5MOPQzje4G2dpC8zGRIr04=', '893e66411b392b787a8888db94838904', '9a7831a64b27548ecd676702bb9854c701c9b455d083f9757692e6a2dea32229b15ee7ad0fce8770c1f2fe223431c17c24db7a3697bb449bbecb3c9fb7dbff57mkIuwx5DatIxJ8eGRsa2taSrr1vHtquxbRW5K15iwKc=', 'Marco Antonio', 'Aguirre Rivera', '5', 'maguirrer@esge.edu.pe', '996004167', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-28T06:45:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(63, 2, 'e1c7721f24700c734975dd85c1416e7ebae865bafd5fdaf8262d30138f508e11441a2f066031b6643cd5f4204d2438f03477df158e452b6da2239d3eb9722471Z03KeCRlNEI7gTwDArhQ2fSrJeL87uhixMcwT/eJMSc=', '42f5a564785fbda02a67c03ba69e8bed', 'a674ccd9827b68c9977cbe7ccc80f2fe1a42200e9c019a4bb84bd1d7cd00d8dc4805ee7c03114c8218251bfb1d1e29a57c1cc52b5a7e86d46ef974456fb36459wKa66VCCIrOZsoRyRCJtAe2pnck+seOksgeltttV8xk=', 'Andy ', 'Rodrguez Leveau ', '20', 'bellavistaryr@gmail.com', '930210804', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-28T23:06:18-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(64, 2, 'b89bf77c77e8e57aa566d66036cf2b3dd9a6b96267c99c164666955bd5e8b71356ce8758862f1c59c277592d3b0c4fb05d62d60a8de6d6a7f7e07da715042483umreNwSxsvqD1H79iMPAZeLHbNfIxit9zSsApfIc8CM=', '11d6a4ec284e05b1fdf1c9839b9eb68b', 'c0009b2691f84b1c1c69b0897a702621c61aa7ee072af2f555b6f83ad6a987a0a53886cf0a68d378ca2f8a4f9782a78bfb9a7c1bef4937ffbba8380a815d8d22Tue9FhPI6W/0mRfwsoJoucq0zmrL5Pz2jrUlcImDRIc=', 'Jose Alejandro', 'Len Meja', '5', 'jleonm4@gmail.com', '998091514', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T09:39:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(65, 2, '9a7920cada6e7bc03d84ad4196af415b209ae26d557576d2f600bca33da55e45822fd956297a946fd43266a7de1e8683823e327cb1141ca06bb76f518c94b49fIsDH2krrcqbJPrnc0yVWjTpkPapew2Pckax5WXfttiE=', 'caf596d89448c80599a69e71c27d7188', 'abfad129f15dac51fe7587fd51fb5f07cfee025589f13c04bf3ece04d2fe7f8a14c114b6f667efaec55c30d466ce8876bde14b5b050d36eb3202f24fb3fa5a7dHNuUcThClEliFnl+xUZcZu5xowf+8GMstmiQQwUcwGY=', 'silvana', 'vilchez gonzales', '15', 'sizulbelica@gmail.com', '972089644', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T10:13:58-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(66, 2, 'dc4f4310a4c3f3f64ea607505134f34880c3f188bc3ae71042fa788f9b3350a537543f5604182c3af37c6a5d85378364e4e89d96a37f401dc0db5cf447eba33boPqn5Dn3Cj4FLo0KnUHGQ9gYm6b3XpmpxObqVkKFARY=', '1a2b7065fb4db16bc4930c23afa3ab63', '9e8243158dbc46d77621fe21df36e14facb4f3088f72038e3ae91bd17c40ee8d5b8b47d13d0678abf424ea0cdf157ceb6cc0376ccdaebac7e778641a1b47afcfliSrYfPC76dsrnMMOzuGHBvOxadm9k94Iqq/2uxgEgc=', 'Harri', 'Meza abarca', '22', 'Rossmerypalacioslagos@gmail.com ', '970596738', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T13:29:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(67, 2, '602f2ce2eb3306547a391ecfe7d23be6ac9f5759ef9e38c5340c6c843b7e0a93da9c3f1a03490be6424991dc683ac29a4ab101114478eaa5f2461540a3223d526PP+mUFng0zd80V18VVtHDMJJY6xKA5M08YEmTWlRbo=', '8d2b43221c8ddb026216547209a692eb', 'a36dc0affa254176418aa313f8886a9ed9726d2cb9da4397ad9dcf0f4e979cd3c4ef5ab142a62a477663c7f7772dfd531a7c4513636b47c43ca3c6bf7e00082dUTROsVFi4eCW6vt0BjeMGW5CzhOQNZxtuyLhyU+aqlU=', 'Franklin', 'Sandoval Roque', '15', 'f_sandoval190@hotmail.com', '974129481', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-02T07:51:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(68, 2, '55017b8100703f982c043544eb962772ac95700ee820610485b0f4ab68ff64cd058b831e602be074c324ab2ff2338db703628dafb9d1b82384b4fb00e5b14512Nw7V2dsV8DrPzj5vPAiJtAAupsjwlaVDiGSqZisBba8=', '2d55cb3d0b2977bc4cbaecb0da9117c9', '50b2ae0b187e755aea9a20f00678543b6c3d91f3c901e26e10c1b4fd9c64b1cedb7a8a2ac342a1d2dfd9cd371dc7c84be3f5afe49aad4862e032eb56d2d269ce4g64FU+KNP1prp6qxxSK32kpCA+Jrz+BMjkJcDA7VN0=', 'TELMO JANO ', 'LEON MACHUCA', '15', 'ARES16@GMAIL.COM', '943312735', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-07T11:37:05-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(69, 2, '8b3d88d85c210ca7cfd3dcded3b2e181645c064e150322760289292f58752a6a14e12a67f0a72e1d19e7651f83ee38806575a8cc2979db75d328a860d2bc100e6c/lgS8+ZZqlRNhdaX3+UEmrZyqB0z6gFESwIN6VdHE=', '8027e93b7b2ad48d6a3f80dffc8494c5', '1f6156a935162ee79f01c5f69f938fd96851ce6007099e79a73aa45e5d47bc342f58c4bb5c51f8b854620e59e45fa71d541f29a5a8680bd33f7171a87fdc57a18Zv72Hd/e5saZeWpVFHcTnCXN89etuuetTr0lhaMzfM=', 'Anthony', ' Valdez Camposano', '15', 'anthonyvcsc@gmail.com', '939153866', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T08:05:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(70, 2, '72cca4a2af206d4d589ecce592c489d6ce53ee5e9eb275b52df8f9580645ff8dabb21e705bf10b6869b392d4d32a235ab952efe8fdb76614cd648d504a4888f8aO0/IllUA6PkMwgBNwGKBKAUOsUdBljqmwJWwnAzIy0=', '489a4d5bea5ac58570260c11acd33df2', '7bfe0ad5e7eeeb16bc36ed4b3616c6286617437609ee43314ea967437836e0447ca870f7633d75d321208d5d7e9346b31071f350e4fc80afb2b914515908084dVO+fOEjVje57ySmBEdDBBUDcc5/ZTo9i0JniovrquKM=', 'NINO', 'DELGADO VIERA', '11', 'nidelvi_2873@hotmail.com', '996070183', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T15:23:53-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(71, 2, 'd34cd7facbf823c7b4b022f7b0707d7c81f94347c408f48734551044ad3b957a33696fa76fd730f661be5524bea2499a2878246c1ef04dab8019aab47240d897Gngqfsbu2Qhe/psLNR/otzyTU0pYpbImVwFkwlcb/IU=', 'ddb1e33629a4df8fda4f5934fbd98fb4', '282ba7060593d660322d2701074266f9e5af81fadaa0933a5b494279642f2d439d4921940ec1c5ffc98ac4a4ddc789f983d2589489fc49678abb5991808c8b02PnGRHb395/CBZD399jISe1ht8s+fr6m/DI3lceumiL8=', 'Anghiellie Yuriko', 'Alcala Poves', '8', 'anghiellie_9@hotmail.com', '934477409', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:20:07-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(72, 2, 'a96c26e675d1404103648a72461eea272244286e1e316bed2829935c68e2c7deca1a85fd356b95d92883187f7feae617f8b6261576baa3206893294881003e45QALysWMxyXh3g+tc9uyN3SXYU9pQKNaInlVo+/vco7Q=', 'f39de05563c2680f8d3351231c8f6a01', '7a507c6634a321a2d1edb041746c7a3018498aed466edf4bd460b9b751950171d0d6c3efb278595b510538d26330c70945452d2accf8462dace59c02919b6553o0YCfETTAxlp0fOpeUBfTpeZaVYf+hQ0NN2D58bE7uY=', 'Valeria Antuanette', 'Alcal Poves', '22', 'alcalaantuanette@gmail.com', '920349172', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:28:25-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', ''),
(73, 2, '30843044a3c0b6ded71b6fee9ac57652bd3e36b78572a68b4694dbd360987789258a017faac64576b5b713facd2b1569bed53e4329c899a20b7fd83081ccd1dahwQlGSKNhotnpNX6/OCXHqQAzFH+8BcomSOEPKen8LY=', '910494440958dd7fed4d5c3556425cfd', '25633d898fd15b4f4cac8c08a651d99379ae7f91fddf881604c9399ea3b7a7defef323a3de88eec15be1bdcac3e8b3a896b5a34f282d0d15f1736cd29948e11bDwH8dSirIrvPScp2Gt9PNs9jk/OJvCaiq4Yl0OXy94Y=', 'Jesus percy', 'valverde', '6', 'salazarvalverdejesus2525@gmail.com', '963090212', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-12T13:38:48-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '');

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
-- Indices de la tabla `tbl_drive`
--
ALTER TABLE `tbl_drive`
  ADD PRIMARY KEY (`id_file`);

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
-- Indices de la tabla `tbl_occupancy_home`
--
ALTER TABLE `tbl_occupancy_home`
  ADD PRIMARY KEY (`id_occupancy_home`);

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
  MODIFY `id_bri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tbl_data_institute`
--
ALTER TABLE `tbl_data_institute`
  MODIFY `id_ins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `tbl_data_univ`
--
ALTER TABLE `tbl_data_univ`
  MODIFY `id_univ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tbl_drive`
--
ALTER TABLE `tbl_drive`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `tbl_form_dace`
--
ALTER TABLE `tbl_form_dace`
  MODIFY `id_formdace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_forwarded_corr`
--
ALTER TABLE `tbl_forwarded_corr`
  MODIFY `id_frwd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT de la tabla `tbl_occupancy_home`
--
ALTER TABLE `tbl_occupancy_home`
  MODIFY `id_occupancy_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_rcvd_cr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
  MODIFY `id_resolution` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_universities`
--
ALTER TABLE `tbl_universities`
  MODIFY `id_university` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
