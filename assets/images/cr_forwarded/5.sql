-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2023 a las 11:40:16
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
(9, 'qwerqwer', 'Oficios', 'qwer', '18/02/2023', 'Común', 'qwerqwerqwer', 'qwerqwer', '', 'jpeg', '0', '1', 0, 1, 'w3r2323'),
(11, 'fqwefqw', 'Oficios', 'qwefqwef', '18/02/2023', 'Común', 'qwefqewf', 'qwefqwef', '', 'pdf', '4', '2', 2, 1, 'Hola emerson'),
(12, 'qwerqwer', 'Oficios', 'qwer', '18/02/2023', 'Común', 'qwerqwer', 'qwer', '', 'jpeg', '11', '2', 13, 1, 'asdsdfadsf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_received_corr`
--
ALTER TABLE `tbl_received_corr`
  ADD PRIMARY KEY (`id_rcvd_cr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_received_corr`
--
ALTER TABLE `tbl_received_corr`
  MODIFY `id_rcvd_cr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
