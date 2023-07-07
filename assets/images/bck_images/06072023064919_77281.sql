-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 01:35:48
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

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
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE `antecedentes` (
  `id` int(5) NOT NULL,
  `id_personal` int(5) NOT NULL,
  `fecha_antecedente` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcionAntecedentes` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `abreviatura`) VALUES
(4, 'ABOGADO', 'Abog.'),
(5, 'AGENTE PASTORAL', ''),
(6, 'ARTESANO', ''),
(7, 'ASISTENTA SOCIAL', ''),
(8, 'ASISTENTE ADMINISTRATIVO', ''),
(9, 'ASISTENTE ANALISTA PAD', ''),
(10, 'ASISTENTE DE EDUCACION', ''),
(11, 'ASISTENTE SERVICIO SALUD', ''),
(12, 'AUX DE ABASTECIMIENTO', ''),
(13, 'AUX DE ARTESANIA', ''),
(14, 'AUX DE CONTABILIDAD', ''),
(15, 'AUX DE ENFERMERIA', ''),
(16, 'AUX DE FORMACION DE NIÑO', ''),
(17, 'AUX SISTEMA ADMTVO', ''),
(18, 'AUXILIAR DE NUTRICION', ''),
(19, 'BARMAN', ''),
(20, 'CAPELLAN', ''),
(21, 'CHEFF', ''),
(22, 'CHOFER', ''),
(23, 'CIRUJANO DENTISTA', ''),
(24, 'CONTADOR', ''),
(25, 'DIBUJANTE', ''),
(26, 'DOCENTE', ''),
(27, 'ELECTRICISTA', ''),
(28, 'ENFERMERA', ''),
(29, 'ESPECIALISTA EN EDUCACION', ''),
(30, 'MAITRE', ''),
(31, 'MAYORDOMO', ''),
(32, 'MECANICO ELECT Y REFRIGERACION', ''),
(33, 'MEDICO', ''),
(34, 'OFICINISTA', ''),
(35, 'OPERADOR PAD', ''),
(36, 'PSICOLOGO', ''),
(37, 'SECRETARIA TECNICA', ''),
(38, 'SUPERVISOR DE CONSERV Y SERV', ''),
(39, 'TCO ADMINISTRATIVO', ''),
(40, 'TCO CONTABILIDAD', ''),
(41, 'TCO EN ABASTECIMIENTOS', ''),
(42, 'TCO EN ABOGACIA', ''),
(43, 'TCO EN BIBLIOTECA', ''),
(44, 'TCO EN CAPACITACION Y DIFUSION', ''),
(45, 'TCO EN CONTABILIDAD', ''),
(46, 'TCO EN ENFERMERIA', ''),
(47, 'TCO EN LABORATORIO', ''),
(48, 'TCO EN NUTRICION', ''),
(49, 'TCO EN PERIODISMO', ''),
(50, 'TCO EN PERSONAL', ''),
(51, 'TCO EN RELACIONES PÚBLICAS', ''),
(52, 'TCO EN TRANSPORTES', ''),
(53, 'TCO POSTAL', ''),
(54, 'TECNOLOGO MEDICO', ''),
(55, 'TRABAJADOR DE SERVICIOS', ''),
(56, 'TRADUCTOR INTERPRETE', ''),
(57, 'TRANSCRIPTOR PAD', ''),
(58, 'VIGILANTE', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `nombre`, `abreviatura`) VALUES
(1, 'Sargento', 'zzzzzzzzzzzz'),
(3, 'kjhkhkh', 'kjhkjhkjasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`, `abreviatura`) VALUES
(1, 'AUXILIARES', 'Aux.'),
(3, 'DOCENTES DE COLEGIOS', 'Tec.'),
(4, 'PROFESIONAL SALUD', 'Prof.'),
(6, 'PROFESIONALES', ''),
(7, 'TECNICOS', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(3) NOT NULL,
  `id_grado` int(3) NOT NULL,
  `id_unidad` int(3) NOT NULL,
  `id_grupo` int(3) NOT NULL,
  `id_especialidad` int(3) NOT NULL,
  `condicion` varchar(20) NOT NULL,
  `puesto` varchar(200) NOT NULL,
  `fecha_contrato` varchar(20) NOT NULL,
  `fecha_nombrado` varchar(20) NOT NULL,
  `fecha_ascenso` varchar(20) NOT NULL,
  `lugarTrabajo1` varchar(200) NOT NULL,
  `lugarTrabaajofecha1` varchar(20) NOT NULL,
  `lugarTrababajo2` varchar(200) NOT NULL,
  `lugarTrababajofecha2` varchar(20) NOT NULL,
  `lugarTrabajo3` varchar(200) NOT NULL,
  `lugarTrabajajofecha3` varchar(20) NOT NULL,
  `sanciones` varchar(500) NOT NULL,
  `medicos` varchar(500) NOT NULL,
  `user_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `id_grado`, `id_unidad`, `id_grupo`, `id_especialidad`, `condicion`, `puesto`, `fecha_contrato`, `fecha_nombrado`, `fecha_ascenso`, `lugarTrabajo1`, `lugarTrabaajofecha1`, `lugarTrababajo2`, `lugarTrababajofecha2`, `lugarTrabajo3`, `lugarTrabajajofecha3`, `sanciones`, `medicos`, `user_id`) VALUES
(35, 1, 8, 1, 19, 'CONTRATADO', 'kjhk', '11/07/2023', '19/07/2023', '20/07/2023', 'ffffffffffffffffff', '19/07/2023', 'qweeqweqsas', '25/07/2023', 'uuuu', '03/07/2023', 'jjnkjhk', 'jhkjhkjhk', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(5) NOT NULL,
  `nombre_rol` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre_rol`) VALUES
(1, 'Adminstrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sunat_codigoubigeo`
--

CREATE TABLE `sunat_codigoubigeo` (
  `codigo_ubigeo` varchar(6) NOT NULL,
  `departamento` varchar(120) NOT NULL,
  `provincia` varchar(120) NOT NULL,
  `distrito` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sunat_codigoubigeo`
--

INSERT INTO `sunat_codigoubigeo` (`codigo_ubigeo`, `departamento`, `provincia`, `distrito`) VALUES
('010101', 'Amazonas', 'Chachapoyas', 'Chachapoyas'),
('010102', 'Amazonas', 'Chachapoyas', 'Asunción'),
('010103', 'Amazonas', 'Chachapoyas', 'Balsas'),
('010104', 'Amazonas', 'Chachapoyas', 'Cheto'),
('010105', 'Amazonas', 'Chachapoyas', 'Chiliquin'),
('010106', 'Amazonas', 'Chachapoyas', 'Chuquibamba'),
('010107', 'Amazonas', 'Chachapoyas', 'Granada'),
('010108', 'Amazonas', 'Chachapoyas', 'Huancas'),
('010109', 'Amazonas', 'Chachapoyas', 'La Jalca'),
('010110', 'Amazonas', 'Chachapoyas', 'Leimebamba'),
('010111', 'Amazonas', 'Chachapoyas', 'Levanto'),
('010112', 'Amazonas', 'Chachapoyas', 'Magdalena'),
('010113', 'Amazonas', 'Chachapoyas', 'Mariscal Castilla'),
('010114', 'Amazonas', 'Chachapoyas', 'Molinopampa'),
('010115', 'Amazonas', 'Chachapoyas', 'Montevideo'),
('010116', 'Amazonas', 'Chachapoyas', 'Olleros'),
('010117', 'Amazonas', 'Chachapoyas', 'Quinjalca'),
('010118', 'Amazonas', 'Chachapoyas', 'San Francisco de Daguas'),
('010119', 'Amazonas', 'Chachapoyas', 'San Isidro de Maino'),
('010120', 'Amazonas', 'Chachapoyas', 'Soloco'),
('010121', 'Amazonas', 'Chachapoyas', 'Sonche'),
('010201', 'Amazonas', 'Bagua', 'Bagua'),
('010202', 'Amazonas', 'Bagua', 'Aramango'),
('010203', 'Amazonas', 'Bagua', 'Copallin'),
('010204', 'Amazonas', 'Bagua', 'El Parco'),
('010205', 'Amazonas', 'Bagua', 'Imaza'),
('010206', 'Amazonas', 'Bagua', 'La Peca'),
('010301', 'Amazonas', 'Bongará', 'Jumbilla'),
('010302', 'Amazonas', 'Bongará', 'Chisquilla'),
('010303', 'Amazonas', 'Bongará', 'Churuja'),
('010304', 'Amazonas', 'Bongará', 'Corosha'),
('010305', 'Amazonas', 'Bongará', 'Cuispes'),
('010306', 'Amazonas', 'Bongará', 'Florida'),
('010307', 'Amazonas', 'Bongará', 'Jazan'),
('010308', 'Amazonas', 'Bongará', 'Recta'),
('010309', 'Amazonas', 'Bongará', 'San Carlos'),
('010310', 'Amazonas', 'Bongará', 'Shipasbamba'),
('010311', 'Amazonas', 'Bongará', 'Valera'),
('010312', 'Amazonas', 'Bongará', 'Yambrasbamba'),
('010401', 'Amazonas', 'Condorcanqui', 'Nieva'),
('010402', 'Amazonas', 'Condorcanqui', 'El Cenepa'),
('010403', 'Amazonas', 'Condorcanqui', 'Río Santiago'),
('010501', 'Amazonas', 'Luya', 'Lamud'),
('010502', 'Amazonas', 'Luya', 'Camporredondo'),
('010503', 'Amazonas', 'Luya', 'Cocabamba'),
('010504', 'Amazonas', 'Luya', 'Colcamar'),
('010505', 'Amazonas', 'Luya', 'Conila'),
('010506', 'Amazonas', 'Luya', 'Inguilpata'),
('010507', 'Amazonas', 'Luya', 'Longuita'),
('010508', 'Amazonas', 'Luya', 'Lonya Chico'),
('010509', 'Amazonas', 'Luya', 'Luya'),
('010510', 'Amazonas', 'Luya', 'Luya Viejo'),
('010511', 'Amazonas', 'Luya', 'María'),
('010512', 'Amazonas', 'Luya', 'Ocalli'),
('010513', 'Amazonas', 'Luya', 'Ocumal'),
('010514', 'Amazonas', 'Luya', 'Pisuquia'),
('010515', 'Amazonas', 'Luya', 'Providencia'),
('010516', 'Amazonas', 'Luya', 'San Cristóbal'),
('010517', 'Amazonas', 'Luya', 'San Francisco de Yeso'),
('010518', 'Amazonas', 'Luya', 'San Jerónimo'),
('010519', 'Amazonas', 'Luya', 'San Juan de Lopecancha'),
('010520', 'Amazonas', 'Luya', 'Santa Catalina'),
('010521', 'Amazonas', 'Luya', 'Santo Tomas'),
('010522', 'Amazonas', 'Luya', 'Tingo'),
('010523', 'Amazonas', 'Luya', 'Trita'),
('010601', 'Amazonas', 'Rodríguez de Mendoza', 'San Nicolás'),
('010602', 'Amazonas', 'Rodríguez de Mendoza', 'Chirimoto'),
('010603', 'Amazonas', 'Rodríguez de Mendoza', 'Cochamal'),
('010604', 'Amazonas', 'Rodríguez de Mendoza', 'Huambo'),
('010605', 'Amazonas', 'Rodríguez de Mendoza', 'Limabamba'),
('010606', 'Amazonas', 'Rodríguez de Mendoza', 'Longar'),
('010607', 'Amazonas', 'Rodríguez de Mendoza', 'Mariscal Benavides'),
('010608', 'Amazonas', 'Rodríguez de Mendoza', 'Milpuc'),
('010609', 'Amazonas', 'Rodríguez de Mendoza', 'Omia'),
('010610', 'Amazonas', 'Rodríguez de Mendoza', 'Santa Rosa'),
('010611', 'Amazonas', 'Rodríguez de Mendoza', 'Totora'),
('010612', 'Amazonas', 'Rodríguez de Mendoza', 'Vista Alegre'),
('010701', 'Amazonas', 'Utcubamba', 'Bagua Grande'),
('010702', 'Amazonas', 'Utcubamba', 'Cajaruro'),
('010703', 'Amazonas', 'Utcubamba', 'Cumba'),
('010704', 'Amazonas', 'Utcubamba', 'El Milagro'),
('010705', 'Amazonas', 'Utcubamba', 'Jamalca'),
('010706', 'Amazonas', 'Utcubamba', 'Lonya Grande'),
('010707', 'Amazonas', 'Utcubamba', 'Yamon'),
('020101', 'Áncash', 'Huaraz', 'Huaraz'),
('020102', 'Áncash', 'Huaraz', 'Cochabamba'),
('020103', 'Áncash', 'Huaraz', 'Colcabamba'),
('020104', 'Áncash', 'Huaraz', 'Huanchay'),
('020105', 'Áncash', 'Huaraz', 'Independencia'),
('020106', 'Áncash', 'Huaraz', 'Jangas'),
('020107', 'Áncash', 'Huaraz', 'La Libertad'),
('020108', 'Áncash', 'Huaraz', 'Olleros'),
('020109', 'Áncash', 'Huaraz', 'Pampas Grande'),
('020110', 'Áncash', 'Huaraz', 'Pariacoto'),
('020111', 'Áncash', 'Huaraz', 'Pira'),
('020112', 'Áncash', 'Huaraz', 'Tarica'),
('020201', 'Áncash', 'Aija', 'Aija'),
('020202', 'Áncash', 'Aija', 'Coris'),
('020203', 'Áncash', 'Aija', 'Huacllan'),
('020204', 'Áncash', 'Aija', 'La Merced'),
('020205', 'Áncash', 'Aija', 'Succha'),
('020301', 'Áncash', 'Antonio Raymondi', 'Llamellin'),
('020302', 'Áncash', 'Antonio Raymondi', 'Aczo'),
('020303', 'Áncash', 'Antonio Raymondi', 'Chaccho'),
('020304', 'Áncash', 'Antonio Raymondi', 'Chingas'),
('020305', 'Áncash', 'Antonio Raymondi', 'Mirgas'),
('020306', 'Áncash', 'Antonio Raymondi', 'San Juan de Rontoy'),
('020401', 'Áncash', 'Asunción', 'Chacas'),
('020402', 'Áncash', 'Asunción', 'Acochaca'),
('020501', 'Áncash', 'Bolognesi', 'Chiquian'),
('020502', 'Áncash', 'Bolognesi', 'Abelardo Pardo Lezameta'),
('020503', 'Áncash', 'Bolognesi', 'Antonio Raymondi'),
('020504', 'Áncash', 'Bolognesi', 'Aquia'),
('020505', 'Áncash', 'Bolognesi', 'Cajacay'),
('020506', 'Áncash', 'Bolognesi', 'Canis'),
('020507', 'Áncash', 'Bolognesi', 'Colquioc'),
('020508', 'Áncash', 'Bolognesi', 'Huallanca'),
('020509', 'Áncash', 'Bolognesi', 'Huasta'),
('020510', 'Áncash', 'Bolognesi', 'Huayllacayan'),
('020511', 'Áncash', 'Bolognesi', 'La Primavera'),
('020512', 'Áncash', 'Bolognesi', 'Mangas'),
('020513', 'Áncash', 'Bolognesi', 'Pacllon'),
('020514', 'Áncash', 'Bolognesi', 'San Miguel de Corpanqui'),
('020515', 'Áncash', 'Bolognesi', 'Ticllos'),
('020601', 'Áncash', 'Carhuaz', 'Carhuaz'),
('020602', 'Áncash', 'Carhuaz', 'Acopampa'),
('020603', 'Áncash', 'Carhuaz', 'Amashca'),
('020604', 'Áncash', 'Carhuaz', 'Anta'),
('020605', 'Áncash', 'Carhuaz', 'Ataquero'),
('020606', 'Áncash', 'Carhuaz', 'Marcara'),
('020607', 'Áncash', 'Carhuaz', 'Pariahuanca'),
('020608', 'Áncash', 'Carhuaz', 'San Miguel de Aco'),
('020609', 'Áncash', 'Carhuaz', 'Shilla'),
('020610', 'Áncash', 'Carhuaz', 'Tinco'),
('020611', 'Áncash', 'Carhuaz', 'Yungar'),
('020701', 'Áncash', 'Carlos Fermín Fitzcarrald', 'San Luis'),
('020702', 'Áncash', 'Carlos Fermín Fitzcarrald', 'San Nicolás'),
('020703', 'Áncash', 'Carlos Fermín Fitzcarrald', 'Yauya'),
('020801', 'Áncash', 'Casma', 'Casma'),
('020802', 'Áncash', 'Casma', 'Buena Vista Alta'),
('020803', 'Áncash', 'Casma', 'Comandante Noel'),
('020804', 'Áncash', 'Casma', 'Yautan'),
('020901', 'Áncash', 'Corongo', 'Corongo'),
('020902', 'Áncash', 'Corongo', 'Aco'),
('020903', 'Áncash', 'Corongo', 'Bambas'),
('020904', 'Áncash', 'Corongo', 'Cusca'),
('020905', 'Áncash', 'Corongo', 'La Pampa'),
('020906', 'Áncash', 'Corongo', 'Yanac'),
('020907', 'Áncash', 'Corongo', 'Yupan'),
('021001', 'Áncash', 'Huari', 'Huari'),
('021002', 'Áncash', 'Huari', 'Anra'),
('021003', 'Áncash', 'Huari', 'Cajay'),
('021004', 'Áncash', 'Huari', 'Chavin de Huantar'),
('021005', 'Áncash', 'Huari', 'Huacachi'),
('021006', 'Áncash', 'Huari', 'Huacchis'),
('021007', 'Áncash', 'Huari', 'Huachis'),
('021008', 'Áncash', 'Huari', 'Huantar'),
('021009', 'Áncash', 'Huari', 'Masin'),
('021010', 'Áncash', 'Huari', 'Paucas'),
('021011', 'Áncash', 'Huari', 'Ponto'),
('021012', 'Áncash', 'Huari', 'Rahuapampa'),
('021013', 'Áncash', 'Huari', 'Rapayan'),
('021014', 'Áncash', 'Huari', 'San Marcos'),
('021015', 'Áncash', 'Huari', 'San Pedro de Chana'),
('021016', 'Áncash', 'Huari', 'Uco'),
('021101', 'Áncash', 'Huarmey', 'Huarmey'),
('021102', 'Áncash', 'Huarmey', 'Cochapeti'),
('021103', 'Áncash', 'Huarmey', 'Culebras'),
('021104', 'Áncash', 'Huarmey', 'Huayan'),
('021105', 'Áncash', 'Huarmey', 'Malvas'),
('021201', 'Áncash', 'Huaylas', 'Caraz'),
('021202', 'Áncash', 'Huaylas', 'Huallanca'),
('021203', 'Áncash', 'Huaylas', 'Huata'),
('021204', 'Áncash', 'Huaylas', 'Huaylas'),
('021205', 'Áncash', 'Huaylas', 'Mato'),
('021206', 'Áncash', 'Huaylas', 'Pamparomas'),
('021207', 'Áncash', 'Huaylas', 'Pueblo Libre'),
('021208', 'Áncash', 'Huaylas', 'Santa Cruz'),
('021209', 'Áncash', 'Huaylas', 'Santo Toribio'),
('021210', 'Áncash', 'Huaylas', 'Yuracmarca'),
('021301', 'Áncash', 'Mariscal Luzuriaga', 'Piscobamba'),
('021302', 'Áncash', 'Mariscal Luzuriaga', 'Casca'),
('021303', 'Áncash', 'Mariscal Luzuriaga', 'Eleazar Guzmán Barron'),
('021304', 'Áncash', 'Mariscal Luzuriaga', 'Fidel Olivas Escudero'),
('021305', 'Áncash', 'Mariscal Luzuriaga', 'Llama'),
('021306', 'Áncash', 'Mariscal Luzuriaga', 'Llumpa'),
('021307', 'Áncash', 'Mariscal Luzuriaga', 'Lucma'),
('021308', 'Áncash', 'Mariscal Luzuriaga', 'Musga'),
('021401', 'Áncash', 'Ocros', 'Ocros'),
('021402', 'Áncash', 'Ocros', 'Acas'),
('021403', 'Áncash', 'Ocros', 'Cajamarquilla'),
('021404', 'Áncash', 'Ocros', 'Carhuapampa'),
('021405', 'Áncash', 'Ocros', 'Cochas'),
('021406', 'Áncash', 'Ocros', 'Congas'),
('021407', 'Áncash', 'Ocros', 'Llipa'),
('021408', 'Áncash', 'Ocros', 'San Cristóbal de Rajan'),
('021409', 'Áncash', 'Ocros', 'San Pedro'),
('021410', 'Áncash', 'Ocros', 'Santiago de Chilcas'),
('021501', 'Áncash', 'Pallasca', 'Cabana'),
('021502', 'Áncash', 'Pallasca', 'Bolognesi'),
('021503', 'Áncash', 'Pallasca', 'Conchucos'),
('021504', 'Áncash', 'Pallasca', 'Huacaschuque'),
('021505', 'Áncash', 'Pallasca', 'Huandoval'),
('021506', 'Áncash', 'Pallasca', 'Lacabamba'),
('021507', 'Áncash', 'Pallasca', 'Llapo'),
('021508', 'Áncash', 'Pallasca', 'Pallasca'),
('021509', 'Áncash', 'Pallasca', 'Pampas'),
('021510', 'Áncash', 'Pallasca', 'Santa Rosa'),
('021511', 'Áncash', 'Pallasca', 'Tauca'),
('021601', 'Áncash', 'Pomabamba', 'Pomabamba'),
('021602', 'Áncash', 'Pomabamba', 'Huayllan'),
('021603', 'Áncash', 'Pomabamba', 'Parobamba'),
('021604', 'Áncash', 'Pomabamba', 'Quinuabamba'),
('021701', 'Áncash', 'Recuay', 'Recuay'),
('021702', 'Áncash', 'Recuay', 'Catac'),
('021703', 'Áncash', 'Recuay', 'Cotaparaco'),
('021704', 'Áncash', 'Recuay', 'Huayllapampa'),
('021705', 'Áncash', 'Recuay', 'Llacllin'),
('021706', 'Áncash', 'Recuay', 'Marca'),
('021707', 'Áncash', 'Recuay', 'Pampas Chico'),
('021708', 'Áncash', 'Recuay', 'Pararin'),
('021709', 'Áncash', 'Recuay', 'Tapacocha'),
('021710', 'Áncash', 'Recuay', 'Ticapampa'),
('021801', 'Áncash', 'Santa', 'Chimbote'),
('021802', 'Áncash', 'Santa', 'Cáceres del Perú'),
('021803', 'Áncash', 'Santa', 'Coishco'),
('021804', 'Áncash', 'Santa', 'Macate'),
('021805', 'Áncash', 'Santa', 'Moro'),
('021806', 'Áncash', 'Santa', 'Nepeña'),
('021807', 'Áncash', 'Santa', 'Samanco'),
('021808', 'Áncash', 'Santa', 'Santa'),
('021809', 'Áncash', 'Santa', 'Nuevo Chimbote'),
('021901', 'Áncash', 'Sihuas', 'Sihuas'),
('021902', 'Áncash', 'Sihuas', 'Acobamba'),
('021903', 'Áncash', 'Sihuas', 'Alfonso Ugarte'),
('021904', 'Áncash', 'Sihuas', 'Cashapampa'),
('021905', 'Áncash', 'Sihuas', 'Chingalpo'),
('021906', 'Áncash', 'Sihuas', 'Huayllabamba'),
('021907', 'Áncash', 'Sihuas', 'Quiches'),
('021908', 'Áncash', 'Sihuas', 'Ragash'),
('021909', 'Áncash', 'Sihuas', 'San Juan'),
('021910', 'Áncash', 'Sihuas', 'Sicsibamba'),
('022001', 'Áncash', 'Yungay', 'Yungay'),
('022002', 'Áncash', 'Yungay', 'Cascapara'),
('022003', 'Áncash', 'Yungay', 'Mancos'),
('022004', 'Áncash', 'Yungay', 'Matacoto'),
('022005', 'Áncash', 'Yungay', 'Quillo'),
('022006', 'Áncash', 'Yungay', 'Ranrahirca'),
('022007', 'Áncash', 'Yungay', 'Shupluy'),
('022008', 'Áncash', 'Yungay', 'Yanama'),
('030101', 'Apurímac', 'Abancay', 'Abancay'),
('030102', 'Apurímac', 'Abancay', 'Chacoche'),
('030103', 'Apurímac', 'Abancay', 'Circa'),
('030104', 'Apurímac', 'Abancay', 'Curahuasi'),
('030105', 'Apurímac', 'Abancay', 'Huanipaca'),
('030106', 'Apurímac', 'Abancay', 'Lambrama'),
('030107', 'Apurímac', 'Abancay', 'Pichirhua'),
('030108', 'Apurímac', 'Abancay', 'San Pedro de Cachora'),
('030109', 'Apurímac', 'Abancay', 'Tamburco'),
('030201', 'Apurímac', 'Andahuaylas', 'Andahuaylas'),
('030202', 'Apurímac', 'Andahuaylas', 'Andarapa'),
('030203', 'Apurímac', 'Andahuaylas', 'Chiara'),
('030204', 'Apurímac', 'Andahuaylas', 'Huancarama'),
('030205', 'Apurímac', 'Andahuaylas', 'Huancaray'),
('030206', 'Apurímac', 'Andahuaylas', 'Huayana'),
('030207', 'Apurímac', 'Andahuaylas', 'Kishuara'),
('030208', 'Apurímac', 'Andahuaylas', 'Pacobamba'),
('030209', 'Apurímac', 'Andahuaylas', 'Pacucha'),
('030210', 'Apurímac', 'Andahuaylas', 'Pampachiri'),
('030211', 'Apurímac', 'Andahuaylas', 'Pomacocha'),
('030212', 'Apurímac', 'Andahuaylas', 'San Antonio de Cachi'),
('030213', 'Apurímac', 'Andahuaylas', 'San Jerónimo'),
('030214', 'Apurímac', 'Andahuaylas', 'San Miguel de Chaccrampa'),
('030215', 'Apurímac', 'Andahuaylas', 'Santa María de Chicmo'),
('030216', 'Apurímac', 'Andahuaylas', 'Talavera'),
('030217', 'Apurímac', 'Andahuaylas', 'Tumay Huaraca'),
('030218', 'Apurímac', 'Andahuaylas', 'Turpo'),
('030219', 'Apurímac', 'Andahuaylas', 'Kaquiabamba'),
('030220', 'Apurímac', 'Andahuaylas', 'José María Arguedas'),
('030301', 'Apurímac', 'Antabamba', 'Antabamba'),
('030302', 'Apurímac', 'Antabamba', 'El Oro'),
('030303', 'Apurímac', 'Antabamba', 'Huaquirca'),
('030304', 'Apurímac', 'Antabamba', 'Juan Espinoza Medrano'),
('030305', 'Apurímac', 'Antabamba', 'Oropesa'),
('030306', 'Apurímac', 'Antabamba', 'Pachaconas'),
('030307', 'Apurímac', 'Antabamba', 'Sabaino'),
('030401', 'Apurímac', 'Aymaraes', 'Chalhuanca'),
('030402', 'Apurímac', 'Aymaraes', 'Capaya'),
('030403', 'Apurímac', 'Aymaraes', 'Caraybamba'),
('030404', 'Apurímac', 'Aymaraes', 'Chapimarca'),
('030405', 'Apurímac', 'Aymaraes', 'Colcabamba'),
('030406', 'Apurímac', 'Aymaraes', 'Cotaruse'),
('030407', 'Apurímac', 'Aymaraes', 'Ihuayllo'),
('030408', 'Apurímac', 'Aymaraes', 'Justo Apu Sahuaraura'),
('030409', 'Apurímac', 'Aymaraes', 'Lucre'),
('030410', 'Apurímac', 'Aymaraes', 'Pocohuanca'),
('030411', 'Apurímac', 'Aymaraes', 'San Juan de Chacña'),
('030412', 'Apurímac', 'Aymaraes', 'Sañayca'),
('030413', 'Apurímac', 'Aymaraes', 'Soraya'),
('030414', 'Apurímac', 'Aymaraes', 'Tapairihua'),
('030415', 'Apurímac', 'Aymaraes', 'Tintay'),
('030416', 'Apurímac', 'Aymaraes', 'Toraya'),
('030417', 'Apurímac', 'Aymaraes', 'Yanaca'),
('030501', 'Apurímac', 'Cotabambas', 'Tambobamba'),
('030502', 'Apurímac', 'Cotabambas', 'Cotabambas'),
('030503', 'Apurímac', 'Cotabambas', 'Coyllurqui'),
('030504', 'Apurímac', 'Cotabambas', 'Haquira'),
('030505', 'Apurímac', 'Cotabambas', 'Mara'),
('030506', 'Apurímac', 'Cotabambas', 'Challhuahuacho'),
('030601', 'Apurímac', 'Chincheros', 'Chincheros'),
('030602', 'Apurímac', 'Chincheros', 'Anco_Huallo'),
('030603', 'Apurímac', 'Chincheros', 'Cocharcas'),
('030604', 'Apurímac', 'Chincheros', 'Huaccana'),
('030605', 'Apurímac', 'Chincheros', 'Ocobamba'),
('030606', 'Apurímac', 'Chincheros', 'Ongoy'),
('030607', 'Apurímac', 'Chincheros', 'Uranmarca'),
('030608', 'Apurímac', 'Chincheros', 'Ranracancha'),
('030609', 'Apurímac', 'Chincheros', 'Rocchacc'),
('030610', 'Apurímac', 'Chincheros', 'El Porvenir'),
('030701', 'Apurímac', 'Grau', 'Chuquibambilla'),
('030702', 'Apurímac', 'Grau', 'Curpahuasi'),
('030703', 'Apurímac', 'Grau', 'Gamarra'),
('030704', 'Apurímac', 'Grau', 'Huayllati'),
('030705', 'Apurímac', 'Grau', 'Mamara'),
('030706', 'Apurímac', 'Grau', 'Micaela Bastidas'),
('030707', 'Apurímac', 'Grau', 'Pataypampa'),
('030708', 'Apurímac', 'Grau', 'Progreso'),
('030709', 'Apurímac', 'Grau', 'San Antonio'),
('030710', 'Apurímac', 'Grau', 'Santa Rosa'),
('030711', 'Apurímac', 'Grau', 'Turpay'),
('030712', 'Apurímac', 'Grau', 'Vilcabamba'),
('030713', 'Apurímac', 'Grau', 'Virundo'),
('030714', 'Apurímac', 'Grau', 'Curasco'),
('040101', 'Arequipa', 'Arequipa', 'Arequipa'),
('040102', 'Arequipa', 'Arequipa', 'Alto Selva Alegre'),
('040103', 'Arequipa', 'Arequipa', 'Cayma'),
('040104', 'Arequipa', 'Arequipa', 'Cerro Colorado'),
('040105', 'Arequipa', 'Arequipa', 'Characato'),
('040106', 'Arequipa', 'Arequipa', 'Chiguata'),
('040107', 'Arequipa', 'Arequipa', 'Jacobo Hunter'),
('040108', 'Arequipa', 'Arequipa', 'La Joya'),
('040109', 'Arequipa', 'Arequipa', 'Mariano Melgar'),
('040110', 'Arequipa', 'Arequipa', 'Miraflores'),
('040111', 'Arequipa', 'Arequipa', 'Mollebaya'),
('040112', 'Arequipa', 'Arequipa', 'Paucarpata'),
('040113', 'Arequipa', 'Arequipa', 'Pocsi'),
('040114', 'Arequipa', 'Arequipa', 'Polobaya'),
('040115', 'Arequipa', 'Arequipa', 'Quequeña'),
('040116', 'Arequipa', 'Arequipa', 'Sabandia'),
('040117', 'Arequipa', 'Arequipa', 'Sachaca'),
('040118', 'Arequipa', 'Arequipa', 'San Juan de Siguas'),
('040119', 'Arequipa', 'Arequipa', 'San Juan de Tarucani'),
('040120', 'Arequipa', 'Arequipa', 'Santa Isabel de Siguas'),
('040121', 'Arequipa', 'Arequipa', 'Santa Rita de Siguas'),
('040122', 'Arequipa', 'Arequipa', 'Socabaya'),
('040123', 'Arequipa', 'Arequipa', 'Tiabaya'),
('040124', 'Arequipa', 'Arequipa', 'Uchumayo'),
('040125', 'Arequipa', 'Arequipa', 'Vitor'),
('040126', 'Arequipa', 'Arequipa', 'Yanahuara'),
('040127', 'Arequipa', 'Arequipa', 'Yarabamba'),
('040128', 'Arequipa', 'Arequipa', 'Yura'),
('040129', 'Arequipa', 'Arequipa', 'José Luis Bustamante Y Rivero'),
('040201', 'Arequipa', 'Camaná', 'Camaná'),
('040202', 'Arequipa', 'Camaná', 'José María Quimper'),
('040203', 'Arequipa', 'Camaná', 'Mariano Nicolás Valcárcel'),
('040204', 'Arequipa', 'Camaná', 'Mariscal Cáceres'),
('040205', 'Arequipa', 'Camaná', 'Nicolás de Pierola'),
('040206', 'Arequipa', 'Camaná', 'Ocoña'),
('040207', 'Arequipa', 'Camaná', 'Quilca'),
('040208', 'Arequipa', 'Camaná', 'Samuel Pastor'),
('040301', 'Arequipa', 'Caravelí', 'Caravelí'),
('040302', 'Arequipa', 'Caravelí', 'Acarí'),
('040303', 'Arequipa', 'Caravelí', 'Atico'),
('040304', 'Arequipa', 'Caravelí', 'Atiquipa'),
('040305', 'Arequipa', 'Caravelí', 'Bella Unión'),
('040306', 'Arequipa', 'Caravelí', 'Cahuacho'),
('040307', 'Arequipa', 'Caravelí', 'Chala'),
('040308', 'Arequipa', 'Caravelí', 'Chaparra'),
('040309', 'Arequipa', 'Caravelí', 'Huanuhuanu'),
('040310', 'Arequipa', 'Caravelí', 'Jaqui'),
('040311', 'Arequipa', 'Caravelí', 'Lomas'),
('040312', 'Arequipa', 'Caravelí', 'Quicacha'),
('040313', 'Arequipa', 'Caravelí', 'Yauca'),
('040401', 'Arequipa', 'Castilla', 'Aplao'),
('040402', 'Arequipa', 'Castilla', 'Andagua'),
('040403', 'Arequipa', 'Castilla', 'Ayo'),
('040404', 'Arequipa', 'Castilla', 'Chachas'),
('040405', 'Arequipa', 'Castilla', 'Chilcaymarca'),
('040406', 'Arequipa', 'Castilla', 'Choco'),
('040407', 'Arequipa', 'Castilla', 'Huancarqui'),
('040408', 'Arequipa', 'Castilla', 'Machaguay'),
('040409', 'Arequipa', 'Castilla', 'Orcopampa'),
('040410', 'Arequipa', 'Castilla', 'Pampacolca'),
('040411', 'Arequipa', 'Castilla', 'Tipan'),
('040412', 'Arequipa', 'Castilla', 'Uñon'),
('040413', 'Arequipa', 'Castilla', 'Uraca'),
('040414', 'Arequipa', 'Castilla', 'Viraco'),
('040501', 'Arequipa', 'Caylloma', 'Chivay'),
('040502', 'Arequipa', 'Caylloma', 'Achoma'),
('040503', 'Arequipa', 'Caylloma', 'Cabanaconde'),
('040504', 'Arequipa', 'Caylloma', 'Callalli'),
('040505', 'Arequipa', 'Caylloma', 'Caylloma'),
('040506', 'Arequipa', 'Caylloma', 'Coporaque'),
('040507', 'Arequipa', 'Caylloma', 'Huambo'),
('040508', 'Arequipa', 'Caylloma', 'Huanca'),
('040509', 'Arequipa', 'Caylloma', 'Ichupampa'),
('040510', 'Arequipa', 'Caylloma', 'Lari'),
('040511', 'Arequipa', 'Caylloma', 'Lluta'),
('040512', 'Arequipa', 'Caylloma', 'Maca'),
('040513', 'Arequipa', 'Caylloma', 'Madrigal'),
('040514', 'Arequipa', 'Caylloma', 'San Antonio de Chuca'),
('040515', 'Arequipa', 'Caylloma', 'Sibayo'),
('040516', 'Arequipa', 'Caylloma', 'Tapay'),
('040517', 'Arequipa', 'Caylloma', 'Tisco'),
('040518', 'Arequipa', 'Caylloma', 'Tuti'),
('040519', 'Arequipa', 'Caylloma', 'Yanque'),
('040520', 'Arequipa', 'Caylloma', 'Majes'),
('040601', 'Arequipa', 'Condesuyos', 'Chuquibamba'),
('040602', 'Arequipa', 'Condesuyos', 'Andaray'),
('040603', 'Arequipa', 'Condesuyos', 'Cayarani'),
('040604', 'Arequipa', 'Condesuyos', 'Chichas'),
('040605', 'Arequipa', 'Condesuyos', 'Iray'),
('040606', 'Arequipa', 'Condesuyos', 'Río Grande'),
('040607', 'Arequipa', 'Condesuyos', 'Salamanca'),
('040608', 'Arequipa', 'Condesuyos', 'Yanaquihua'),
('040701', 'Arequipa', 'Islay', 'Mollendo'),
('040702', 'Arequipa', 'Islay', 'Cocachacra'),
('040703', 'Arequipa', 'Islay', 'Dean Valdivia'),
('040704', 'Arequipa', 'Islay', 'Islay'),
('040705', 'Arequipa', 'Islay', 'Mejia'),
('040706', 'Arequipa', 'Islay', 'Punta de Bombón'),
('040801', 'Arequipa', 'La Uniòn', 'Cotahuasi'),
('040802', 'Arequipa', 'La Uniòn', 'Alca'),
('040803', 'Arequipa', 'La Uniòn', 'Charcana'),
('040804', 'Arequipa', 'La Uniòn', 'Huaynacotas'),
('040805', 'Arequipa', 'La Uniòn', 'Pampamarca'),
('040806', 'Arequipa', 'La Uniòn', 'Puyca'),
('040807', 'Arequipa', 'La Uniòn', 'Quechualla'),
('040808', 'Arequipa', 'La Uniòn', 'Sayla'),
('040809', 'Arequipa', 'La Uniòn', 'Tauria'),
('040810', 'Arequipa', 'La Uniòn', 'Tomepampa'),
('040811', 'Arequipa', 'La Uniòn', 'Toro'),
('050101', 'Ayacucho', 'Huamanga', 'Ayacucho'),
('050102', 'Ayacucho', 'Huamanga', 'Acocro'),
('050103', 'Ayacucho', 'Huamanga', 'Acos Vinchos'),
('050104', 'Ayacucho', 'Huamanga', 'Carmen Alto'),
('050105', 'Ayacucho', 'Huamanga', 'Chiara'),
('050106', 'Ayacucho', 'Huamanga', 'Ocros'),
('050107', 'Ayacucho', 'Huamanga', 'Pacaycasa'),
('050108', 'Ayacucho', 'Huamanga', 'Quinua'),
('050109', 'Ayacucho', 'Huamanga', 'San José de Ticllas'),
('050110', 'Ayacucho', 'Huamanga', 'San Juan Bautista'),
('050111', 'Ayacucho', 'Huamanga', 'Santiago de Pischa'),
('050112', 'Ayacucho', 'Huamanga', 'Socos'),
('050113', 'Ayacucho', 'Huamanga', 'Tambillo'),
('050114', 'Ayacucho', 'Huamanga', 'Vinchos'),
('050115', 'Ayacucho', 'Huamanga', 'Jesús Nazareno'),
('050116', 'Ayacucho', 'Huamanga', 'Andrés Avelino Cáceres Dorregaray'),
('050201', 'Ayacucho', 'Cangallo', 'Cangallo'),
('050202', 'Ayacucho', 'Cangallo', 'Chuschi'),
('050203', 'Ayacucho', 'Cangallo', 'Los Morochucos'),
('050204', 'Ayacucho', 'Cangallo', 'María Parado de Bellido'),
('050205', 'Ayacucho', 'Cangallo', 'Paras'),
('050206', 'Ayacucho', 'Cangallo', 'Totos'),
('050301', 'Ayacucho', 'Huanca Sancos', 'Sancos'),
('050302', 'Ayacucho', 'Huanca Sancos', 'Carapo'),
('050303', 'Ayacucho', 'Huanca Sancos', 'Sacsamarca'),
('050304', 'Ayacucho', 'Huanca Sancos', 'Santiago de Lucanamarca'),
('050401', 'Ayacucho', 'Huanta', 'Huanta'),
('050402', 'Ayacucho', 'Huanta', 'Ayahuanco'),
('050403', 'Ayacucho', 'Huanta', 'Huamanguilla'),
('050404', 'Ayacucho', 'Huanta', 'Iguain'),
('050405', 'Ayacucho', 'Huanta', 'Luricocha'),
('050406', 'Ayacucho', 'Huanta', 'Santillana'),
('050407', 'Ayacucho', 'Huanta', 'Sivia'),
('050408', 'Ayacucho', 'Huanta', 'Llochegua'),
('050409', 'Ayacucho', 'Huanta', 'Canayre'),
('050410', 'Ayacucho', 'Huanta', 'Uchuraccay'),
('050411', 'Ayacucho', 'Huanta', 'Pucacolpa'),
('050412', 'Ayacucho', 'Huanta', 'Chaca'),
('050501', 'Ayacucho', 'La Mar', 'San Miguel'),
('050502', 'Ayacucho', 'La Mar', 'Anco'),
('050503', 'Ayacucho', 'La Mar', 'Ayna'),
('050504', 'Ayacucho', 'La Mar', 'Chilcas'),
('050505', 'Ayacucho', 'La Mar', 'Chungui'),
('050506', 'Ayacucho', 'La Mar', 'Luis Carranza'),
('050507', 'Ayacucho', 'La Mar', 'Santa Rosa'),
('050508', 'Ayacucho', 'La Mar', 'Tambo'),
('050509', 'Ayacucho', 'La Mar', 'Samugari'),
('050510', 'Ayacucho', 'La Mar', 'Anchihuay'),
('050601', 'Ayacucho', 'Lucanas', 'Puquio'),
('050602', 'Ayacucho', 'Lucanas', 'Aucara'),
('050603', 'Ayacucho', 'Lucanas', 'Cabana'),
('050604', 'Ayacucho', 'Lucanas', 'Carmen Salcedo'),
('050605', 'Ayacucho', 'Lucanas', 'Chaviña'),
('050606', 'Ayacucho', 'Lucanas', 'Chipao'),
('050607', 'Ayacucho', 'Lucanas', 'Huac-Huas'),
('050608', 'Ayacucho', 'Lucanas', 'Laramate'),
('050609', 'Ayacucho', 'Lucanas', 'Leoncio Prado'),
('050610', 'Ayacucho', 'Lucanas', 'Llauta'),
('050611', 'Ayacucho', 'Lucanas', 'Lucanas'),
('050612', 'Ayacucho', 'Lucanas', 'Ocaña'),
('050613', 'Ayacucho', 'Lucanas', 'Otoca'),
('050614', 'Ayacucho', 'Lucanas', 'Saisa'),
('050615', 'Ayacucho', 'Lucanas', 'San Cristóbal'),
('050616', 'Ayacucho', 'Lucanas', 'San Juan'),
('050617', 'Ayacucho', 'Lucanas', 'San Pedro'),
('050618', 'Ayacucho', 'Lucanas', 'San Pedro de Palco'),
('050619', 'Ayacucho', 'Lucanas', 'Sancos'),
('050620', 'Ayacucho', 'Lucanas', 'Santa Ana de Huaycahuacho'),
('050621', 'Ayacucho', 'Lucanas', 'Santa Lucia'),
('050701', 'Ayacucho', 'Parinacochas', 'Coracora'),
('050702', 'Ayacucho', 'Parinacochas', 'Chumpi'),
('050703', 'Ayacucho', 'Parinacochas', 'Coronel Castañeda'),
('050704', 'Ayacucho', 'Parinacochas', 'Pacapausa'),
('050705', 'Ayacucho', 'Parinacochas', 'Pullo'),
('050706', 'Ayacucho', 'Parinacochas', 'Puyusca'),
('050707', 'Ayacucho', 'Parinacochas', 'San Francisco de Ravacayco'),
('050708', 'Ayacucho', 'Parinacochas', 'Upahuacho'),
('050801', 'Ayacucho', 'Pàucar del Sara Sara', 'Pausa'),
('050802', 'Ayacucho', 'Pàucar del Sara Sara', 'Colta'),
('050803', 'Ayacucho', 'Pàucar del Sara Sara', 'Corculla'),
('050804', 'Ayacucho', 'Pàucar del Sara Sara', 'Lampa'),
('050805', 'Ayacucho', 'Pàucar del Sara Sara', 'Marcabamba'),
('050806', 'Ayacucho', 'Pàucar del Sara Sara', 'Oyolo'),
('050807', 'Ayacucho', 'Pàucar del Sara Sara', 'Pararca'),
('050808', 'Ayacucho', 'Pàucar del Sara Sara', 'San Javier de Alpabamba'),
('050809', 'Ayacucho', 'Pàucar del Sara Sara', 'San José de Ushua'),
('050810', 'Ayacucho', 'Pàucar del Sara Sara', 'Sara Sara'),
('050901', 'Ayacucho', 'Sucre', 'Querobamba'),
('050902', 'Ayacucho', 'Sucre', 'Belén'),
('050903', 'Ayacucho', 'Sucre', 'Chalcos'),
('050904', 'Ayacucho', 'Sucre', 'Chilcayoc'),
('050905', 'Ayacucho', 'Sucre', 'Huacaña'),
('050906', 'Ayacucho', 'Sucre', 'Morcolla'),
('050907', 'Ayacucho', 'Sucre', 'Paico'),
('050908', 'Ayacucho', 'Sucre', 'San Pedro de Larcay'),
('050909', 'Ayacucho', 'Sucre', 'San Salvador de Quije'),
('050910', 'Ayacucho', 'Sucre', 'Santiago de Paucaray'),
('050911', 'Ayacucho', 'Sucre', 'Soras'),
('051001', 'Ayacucho', 'Víctor Fajardo', 'Huancapi'),
('051002', 'Ayacucho', 'Víctor Fajardo', 'Alcamenca'),
('051003', 'Ayacucho', 'Víctor Fajardo', 'Apongo'),
('051004', 'Ayacucho', 'Víctor Fajardo', 'Asquipata'),
('051005', 'Ayacucho', 'Víctor Fajardo', 'Canaria'),
('051006', 'Ayacucho', 'Víctor Fajardo', 'Cayara'),
('051007', 'Ayacucho', 'Víctor Fajardo', 'Colca'),
('051008', 'Ayacucho', 'Víctor Fajardo', 'Huamanquiquia'),
('051009', 'Ayacucho', 'Víctor Fajardo', 'Huancaraylla'),
('051010', 'Ayacucho', 'Víctor Fajardo', 'Huaya'),
('051011', 'Ayacucho', 'Víctor Fajardo', 'Sarhua'),
('051012', 'Ayacucho', 'Víctor Fajardo', 'Vilcanchos'),
('051101', 'Ayacucho', 'Vilcas Huamán', 'Vilcas Huaman'),
('051102', 'Ayacucho', 'Vilcas Huamán', 'Accomarca'),
('051103', 'Ayacucho', 'Vilcas Huamán', 'Carhuanca'),
('051104', 'Ayacucho', 'Vilcas Huamán', 'Concepción'),
('051105', 'Ayacucho', 'Vilcas Huamán', 'Huambalpa'),
('051106', 'Ayacucho', 'Vilcas Huamán', 'Independencia'),
('051107', 'Ayacucho', 'Vilcas Huamán', 'Saurama'),
('051108', 'Ayacucho', 'Vilcas Huamán', 'Vischongo'),
('060101', 'Cajamarca', 'Cajamarca', 'Cajamarca'),
('060102', 'Cajamarca', 'Cajamarca', 'Asunción'),
('060103', 'Cajamarca', 'Cajamarca', 'Chetilla'),
('060104', 'Cajamarca', 'Cajamarca', 'Cospan'),
('060105', 'Cajamarca', 'Cajamarca', 'Encañada'),
('060106', 'Cajamarca', 'Cajamarca', 'Jesús'),
('060107', 'Cajamarca', 'Cajamarca', 'Llacanora'),
('060108', 'Cajamarca', 'Cajamarca', 'Los Baños del Inca'),
('060109', 'Cajamarca', 'Cajamarca', 'Magdalena'),
('060110', 'Cajamarca', 'Cajamarca', 'Matara'),
('060111', 'Cajamarca', 'Cajamarca', 'Namora'),
('060112', 'Cajamarca', 'Cajamarca', 'San Juan'),
('060201', 'Cajamarca', 'Cajabamba', 'Cajabamba'),
('060202', 'Cajamarca', 'Cajabamba', 'Cachachi'),
('060203', 'Cajamarca', 'Cajabamba', 'Condebamba'),
('060204', 'Cajamarca', 'Cajabamba', 'Sitacocha'),
('060301', 'Cajamarca', 'Celendín', 'Celendín'),
('060302', 'Cajamarca', 'Celendín', 'Chumuch'),
('060303', 'Cajamarca', 'Celendín', 'Cortegana'),
('060304', 'Cajamarca', 'Celendín', 'Huasmin'),
('060305', 'Cajamarca', 'Celendín', 'Jorge Chávez'),
('060306', 'Cajamarca', 'Celendín', 'José Gálvez'),
('060307', 'Cajamarca', 'Celendín', 'Miguel Iglesias'),
('060308', 'Cajamarca', 'Celendín', 'Oxamarca'),
('060309', 'Cajamarca', 'Celendín', 'Sorochuco'),
('060310', 'Cajamarca', 'Celendín', 'Sucre'),
('060311', 'Cajamarca', 'Celendín', 'Utco'),
('060312', 'Cajamarca', 'Celendín', 'La Libertad de Pallan'),
('060401', 'Cajamarca', 'Chota', 'Chota'),
('060402', 'Cajamarca', 'Chota', 'Anguia'),
('060403', 'Cajamarca', 'Chota', 'Chadin'),
('060404', 'Cajamarca', 'Chota', 'Chiguirip'),
('060405', 'Cajamarca', 'Chota', 'Chimban'),
('060406', 'Cajamarca', 'Chota', 'Choropampa'),
('060407', 'Cajamarca', 'Chota', 'Cochabamba'),
('060408', 'Cajamarca', 'Chota', 'Conchan'),
('060409', 'Cajamarca', 'Chota', 'Huambos'),
('060410', 'Cajamarca', 'Chota', 'Lajas'),
('060411', 'Cajamarca', 'Chota', 'Llama'),
('060412', 'Cajamarca', 'Chota', 'Miracosta'),
('060413', 'Cajamarca', 'Chota', 'Paccha'),
('060414', 'Cajamarca', 'Chota', 'Pion'),
('060415', 'Cajamarca', 'Chota', 'Querocoto'),
('060416', 'Cajamarca', 'Chota', 'San Juan de Licupis'),
('060417', 'Cajamarca', 'Chota', 'Tacabamba'),
('060418', 'Cajamarca', 'Chota', 'Tocmoche'),
('060419', 'Cajamarca', 'Chota', 'Chalamarca'),
('060501', 'Cajamarca', 'Contumazá', 'Contumaza'),
('060502', 'Cajamarca', 'Contumazá', 'Chilete'),
('060503', 'Cajamarca', 'Contumazá', 'Cupisnique'),
('060504', 'Cajamarca', 'Contumazá', 'Guzmango'),
('060505', 'Cajamarca', 'Contumazá', 'San Benito'),
('060506', 'Cajamarca', 'Contumazá', 'Santa Cruz de Toledo'),
('060507', 'Cajamarca', 'Contumazá', 'Tantarica'),
('060508', 'Cajamarca', 'Contumazá', 'Yonan'),
('060601', 'Cajamarca', 'Cutervo', 'Cutervo'),
('060602', 'Cajamarca', 'Cutervo', 'Callayuc'),
('060603', 'Cajamarca', 'Cutervo', 'Choros'),
('060604', 'Cajamarca', 'Cutervo', 'Cujillo'),
('060605', 'Cajamarca', 'Cutervo', 'La Ramada'),
('060606', 'Cajamarca', 'Cutervo', 'Pimpingos'),
('060607', 'Cajamarca', 'Cutervo', 'Querocotillo'),
('060608', 'Cajamarca', 'Cutervo', 'San Andrés de Cutervo'),
('060609', 'Cajamarca', 'Cutervo', 'San Juan de Cutervo'),
('060610', 'Cajamarca', 'Cutervo', 'San Luis de Lucma'),
('060611', 'Cajamarca', 'Cutervo', 'Santa Cruz'),
('060612', 'Cajamarca', 'Cutervo', 'Santo Domingo de la Capilla'),
('060613', 'Cajamarca', 'Cutervo', 'Santo Tomas'),
('060614', 'Cajamarca', 'Cutervo', 'Socota'),
('060615', 'Cajamarca', 'Cutervo', 'Toribio Casanova'),
('060701', 'Cajamarca', 'Hualgayoc', 'Bambamarca'),
('060702', 'Cajamarca', 'Hualgayoc', 'Chugur'),
('060703', 'Cajamarca', 'Hualgayoc', 'Hualgayoc'),
('060801', 'Cajamarca', 'Jaén', 'Jaén'),
('060802', 'Cajamarca', 'Jaén', 'Bellavista'),
('060803', 'Cajamarca', 'Jaén', 'Chontali'),
('060804', 'Cajamarca', 'Jaén', 'Colasay'),
('060805', 'Cajamarca', 'Jaén', 'Huabal'),
('060806', 'Cajamarca', 'Jaén', 'Las Pirias'),
('060807', 'Cajamarca', 'Jaén', 'Pomahuaca'),
('060808', 'Cajamarca', 'Jaén', 'Pucara'),
('060809', 'Cajamarca', 'Jaén', 'Sallique'),
('060810', 'Cajamarca', 'Jaén', 'San Felipe'),
('060811', 'Cajamarca', 'Jaén', 'San José del Alto'),
('060812', 'Cajamarca', 'Jaén', 'Santa Rosa'),
('060901', 'Cajamarca', 'San Ignacio', 'San Ignacio'),
('060902', 'Cajamarca', 'San Ignacio', 'Chirinos'),
('060903', 'Cajamarca', 'San Ignacio', 'Huarango'),
('060904', 'Cajamarca', 'San Ignacio', 'La Coipa'),
('060905', 'Cajamarca', 'San Ignacio', 'Namballe'),
('060906', 'Cajamarca', 'San Ignacio', 'San José de Lourdes'),
('060907', 'Cajamarca', 'San Ignacio', 'Tabaconas'),
('061001', 'Cajamarca', 'San Marcos', 'Pedro Gálvez'),
('061002', 'Cajamarca', 'San Marcos', 'Chancay'),
('061003', 'Cajamarca', 'San Marcos', 'Eduardo Villanueva'),
('061004', 'Cajamarca', 'San Marcos', 'Gregorio Pita'),
('061005', 'Cajamarca', 'San Marcos', 'Ichocan'),
('061006', 'Cajamarca', 'San Marcos', 'José Manuel Quiroz'),
('061007', 'Cajamarca', 'San Marcos', 'José Sabogal'),
('061101', 'Cajamarca', 'San Miguel', 'San Miguel'),
('061102', 'Cajamarca', 'San Miguel', 'Bolívar'),
('061103', 'Cajamarca', 'San Miguel', 'Calquis'),
('061104', 'Cajamarca', 'San Miguel', 'Catilluc'),
('061105', 'Cajamarca', 'San Miguel', 'El Prado'),
('061106', 'Cajamarca', 'San Miguel', 'La Florida'),
('061107', 'Cajamarca', 'San Miguel', 'Llapa'),
('061108', 'Cajamarca', 'San Miguel', 'Nanchoc'),
('061109', 'Cajamarca', 'San Miguel', 'Niepos'),
('061110', 'Cajamarca', 'San Miguel', 'San Gregorio'),
('061111', 'Cajamarca', 'San Miguel', 'San Silvestre de Cochan'),
('061112', 'Cajamarca', 'San Miguel', 'Tongod'),
('061113', 'Cajamarca', 'San Miguel', 'Unión Agua Blanca'),
('061201', 'Cajamarca', 'San Pablo', 'San Pablo'),
('061202', 'Cajamarca', 'San Pablo', 'San Bernardino'),
('061203', 'Cajamarca', 'San Pablo', 'San Luis'),
('061204', 'Cajamarca', 'San Pablo', 'Tumbaden'),
('061301', 'Cajamarca', 'Santa Cruz', 'Santa Cruz'),
('061302', 'Cajamarca', 'Santa Cruz', 'Andabamba'),
('061303', 'Cajamarca', 'Santa Cruz', 'Catache'),
('061304', 'Cajamarca', 'Santa Cruz', 'Chancaybaños'),
('061305', 'Cajamarca', 'Santa Cruz', 'La Esperanza'),
('061306', 'Cajamarca', 'Santa Cruz', 'Ninabamba'),
('061307', 'Cajamarca', 'Santa Cruz', 'Pulan'),
('061308', 'Cajamarca', 'Santa Cruz', 'Saucepampa'),
('061309', 'Cajamarca', 'Santa Cruz', 'Sexi'),
('061310', 'Cajamarca', 'Santa Cruz', 'Uticyacu'),
('061311', 'Cajamarca', 'Santa Cruz', 'Yauyucan'),
('070101', 'Callao', 'Prov. Const. del Callao', 'Callao'),
('070102', 'Callao', 'Prov. Const. del Callao', 'Bellavista'),
('070103', 'Callao', 'Prov. Const. del Callao', 'Carmen de la Legua Reynoso'),
('070104', 'Callao', 'Prov. Const. del Callao', 'La Perla'),
('070105', 'Callao', 'Prov. Const. del Callao', 'La Punta'),
('070106', 'Callao', 'Prov. Const. del Callao', 'Ventanilla'),
('070107', 'Callao', 'Prov. Const. del Callao', 'Mi Perú'),
('080101', 'Cusco', 'Cusco', 'Cusco'),
('080102', 'Cusco', 'Cusco', 'Ccorca'),
('080103', 'Cusco', 'Cusco', 'Poroy'),
('080104', 'Cusco', 'Cusco', 'San Jerónimo'),
('080105', 'Cusco', 'Cusco', 'San Sebastian'),
('080106', 'Cusco', 'Cusco', 'Santiago'),
('080107', 'Cusco', 'Cusco', 'Saylla'),
('080108', 'Cusco', 'Cusco', 'Wanchaq'),
('080201', 'Cusco', 'Acomayo', 'Acomayo'),
('080202', 'Cusco', 'Acomayo', 'Acopia'),
('080203', 'Cusco', 'Acomayo', 'Acos'),
('080204', 'Cusco', 'Acomayo', 'Mosoc Llacta'),
('080205', 'Cusco', 'Acomayo', 'Pomacanchi'),
('080206', 'Cusco', 'Acomayo', 'Rondocan'),
('080207', 'Cusco', 'Acomayo', 'Sangarara'),
('080301', 'Cusco', 'Anta', 'Anta'),
('080302', 'Cusco', 'Anta', 'Ancahuasi'),
('080303', 'Cusco', 'Anta', 'Cachimayo'),
('080304', 'Cusco', 'Anta', 'Chinchaypujio'),
('080305', 'Cusco', 'Anta', 'Huarocondo'),
('080306', 'Cusco', 'Anta', 'Limatambo'),
('080307', 'Cusco', 'Anta', 'Mollepata'),
('080308', 'Cusco', 'Anta', 'Pucyura'),
('080309', 'Cusco', 'Anta', 'Zurite'),
('080401', 'Cusco', 'Calca', 'Calca'),
('080402', 'Cusco', 'Calca', 'Coya'),
('080403', 'Cusco', 'Calca', 'Lamay'),
('080404', 'Cusco', 'Calca', 'Lares'),
('080405', 'Cusco', 'Calca', 'Pisac'),
('080406', 'Cusco', 'Calca', 'San Salvador'),
('080407', 'Cusco', 'Calca', 'Taray'),
('080408', 'Cusco', 'Calca', 'Yanatile'),
('080501', 'Cusco', 'Canas', 'Yanaoca'),
('080502', 'Cusco', 'Canas', 'Checca'),
('080503', 'Cusco', 'Canas', 'Kunturkanki'),
('080504', 'Cusco', 'Canas', 'Langui'),
('080505', 'Cusco', 'Canas', 'Layo'),
('080506', 'Cusco', 'Canas', 'Pampamarca'),
('080507', 'Cusco', 'Canas', 'Quehue'),
('080508', 'Cusco', 'Canas', 'Tupac Amaru'),
('080601', 'Cusco', 'Canchis', 'Sicuani'),
('080602', 'Cusco', 'Canchis', 'Checacupe'),
('080603', 'Cusco', 'Canchis', 'Combapata'),
('080604', 'Cusco', 'Canchis', 'Marangani'),
('080605', 'Cusco', 'Canchis', 'Pitumarca'),
('080606', 'Cusco', 'Canchis', 'San Pablo'),
('080607', 'Cusco', 'Canchis', 'San Pedro'),
('080608', 'Cusco', 'Canchis', 'Tinta'),
('080701', 'Cusco', 'Chumbivilcas', 'Santo Tomas'),
('080702', 'Cusco', 'Chumbivilcas', 'Capacmarca'),
('080703', 'Cusco', 'Chumbivilcas', 'Chamaca'),
('080704', 'Cusco', 'Chumbivilcas', 'Colquemarca'),
('080705', 'Cusco', 'Chumbivilcas', 'Livitaca'),
('080706', 'Cusco', 'Chumbivilcas', 'Llusco'),
('080707', 'Cusco', 'Chumbivilcas', 'Quiñota'),
('080708', 'Cusco', 'Chumbivilcas', 'Velille'),
('080801', 'Cusco', 'Espinar', 'Espinar'),
('080802', 'Cusco', 'Espinar', 'Condoroma'),
('080803', 'Cusco', 'Espinar', 'Coporaque'),
('080804', 'Cusco', 'Espinar', 'Ocoruro'),
('080805', 'Cusco', 'Espinar', 'Pallpata'),
('080806', 'Cusco', 'Espinar', 'Pichigua'),
('080807', 'Cusco', 'Espinar', 'Suyckutambo'),
('080808', 'Cusco', 'Espinar', 'Alto Pichigua'),
('080901', 'Cusco', 'La Convención', 'Santa Ana'),
('080902', 'Cusco', 'La Convención', 'Echarate'),
('080903', 'Cusco', 'La Convención', 'Huayopata'),
('080904', 'Cusco', 'La Convención', 'Maranura'),
('080905', 'Cusco', 'La Convención', 'Ocobamba'),
('080906', 'Cusco', 'La Convención', 'Quellouno'),
('080907', 'Cusco', 'La Convención', 'Kimbiri'),
('080908', 'Cusco', 'La Convención', 'Santa Teresa'),
('080909', 'Cusco', 'La Convención', 'Vilcabamba'),
('080910', 'Cusco', 'La Convención', 'Pichari'),
('080911', 'Cusco', 'La Convención', 'Inkawasi'),
('080912', 'Cusco', 'La Convención', 'Villa Virgen'),
('080913', 'Cusco', 'La Convención', 'Villa Kintiarina'),
('081001', 'Cusco', 'Paruro', 'Paruro'),
('081002', 'Cusco', 'Paruro', 'Accha'),
('081003', 'Cusco', 'Paruro', 'Ccapi'),
('081004', 'Cusco', 'Paruro', 'Colcha'),
('081005', 'Cusco', 'Paruro', 'Huanoquite'),
('081006', 'Cusco', 'Paruro', 'Omacha'),
('081007', 'Cusco', 'Paruro', 'Paccaritambo'),
('081008', 'Cusco', 'Paruro', 'Pillpinto'),
('081009', 'Cusco', 'Paruro', 'Yaurisque'),
('081101', 'Cusco', 'Paucartambo', 'Paucartambo'),
('081102', 'Cusco', 'Paucartambo', 'Caicay'),
('081103', 'Cusco', 'Paucartambo', 'Challabamba'),
('081104', 'Cusco', 'Paucartambo', 'Colquepata'),
('081105', 'Cusco', 'Paucartambo', 'Huancarani'),
('081106', 'Cusco', 'Paucartambo', 'Kosñipata'),
('081201', 'Cusco', 'Quispicanchi', 'Urcos'),
('081202', 'Cusco', 'Quispicanchi', 'Andahuaylillas'),
('081203', 'Cusco', 'Quispicanchi', 'Camanti'),
('081204', 'Cusco', 'Quispicanchi', 'Ccarhuayo'),
('081205', 'Cusco', 'Quispicanchi', 'Ccatca'),
('081206', 'Cusco', 'Quispicanchi', 'Cusipata'),
('081207', 'Cusco', 'Quispicanchi', 'Huaro'),
('081208', 'Cusco', 'Quispicanchi', 'Lucre'),
('081209', 'Cusco', 'Quispicanchi', 'Marcapata'),
('081210', 'Cusco', 'Quispicanchi', 'Ocongate'),
('081211', 'Cusco', 'Quispicanchi', 'Oropesa'),
('081212', 'Cusco', 'Quispicanchi', 'Quiquijana'),
('081301', 'Cusco', 'Urubamba', 'Urubamba'),
('081302', 'Cusco', 'Urubamba', 'Chinchero'),
('081303', 'Cusco', 'Urubamba', 'Huayllabamba'),
('081304', 'Cusco', 'Urubamba', 'Machupicchu'),
('081305', 'Cusco', 'Urubamba', 'Maras'),
('081306', 'Cusco', 'Urubamba', 'Ollantaytambo'),
('081307', 'Cusco', 'Urubamba', 'Yucay'),
('090101', 'Huancavelica', 'Huancavelica', 'Huancavelica'),
('090102', 'Huancavelica', 'Huancavelica', 'Acobambilla'),
('090103', 'Huancavelica', 'Huancavelica', 'Acoria'),
('090104', 'Huancavelica', 'Huancavelica', 'Conayca'),
('090105', 'Huancavelica', 'Huancavelica', 'Cuenca'),
('090106', 'Huancavelica', 'Huancavelica', 'Huachocolpa'),
('090107', 'Huancavelica', 'Huancavelica', 'Huayllahuara'),
('090108', 'Huancavelica', 'Huancavelica', 'Izcuchaca'),
('090109', 'Huancavelica', 'Huancavelica', 'Laria'),
('090110', 'Huancavelica', 'Huancavelica', 'Manta'),
('090111', 'Huancavelica', 'Huancavelica', 'Mariscal Cáceres'),
('090112', 'Huancavelica', 'Huancavelica', 'Moya'),
('090113', 'Huancavelica', 'Huancavelica', 'Nuevo Occoro'),
('090114', 'Huancavelica', 'Huancavelica', 'Palca'),
('090115', 'Huancavelica', 'Huancavelica', 'Pilchaca'),
('090116', 'Huancavelica', 'Huancavelica', 'Vilca'),
('090117', 'Huancavelica', 'Huancavelica', 'Yauli'),
('090118', 'Huancavelica', 'Huancavelica', 'Ascensión'),
('090119', 'Huancavelica', 'Huancavelica', 'Huando'),
('090201', 'Huancavelica', 'Acobamba', 'Acobamba'),
('090202', 'Huancavelica', 'Acobamba', 'Andabamba'),
('090203', 'Huancavelica', 'Acobamba', 'Anta'),
('090204', 'Huancavelica', 'Acobamba', 'Caja'),
('090205', 'Huancavelica', 'Acobamba', 'Marcas'),
('090206', 'Huancavelica', 'Acobamba', 'Paucara'),
('090207', 'Huancavelica', 'Acobamba', 'Pomacocha'),
('090208', 'Huancavelica', 'Acobamba', 'Rosario'),
('090301', 'Huancavelica', 'Angaraes', 'Lircay'),
('090302', 'Huancavelica', 'Angaraes', 'Anchonga'),
('090303', 'Huancavelica', 'Angaraes', 'Callanmarca'),
('090304', 'Huancavelica', 'Angaraes', 'Ccochaccasa'),
('090305', 'Huancavelica', 'Angaraes', 'Chincho'),
('090306', 'Huancavelica', 'Angaraes', 'Congalla'),
('090307', 'Huancavelica', 'Angaraes', 'Huanca-Huanca'),
('090308', 'Huancavelica', 'Angaraes', 'Huayllay Grande'),
('090309', 'Huancavelica', 'Angaraes', 'Julcamarca'),
('090310', 'Huancavelica', 'Angaraes', 'San Antonio de Antaparco'),
('090311', 'Huancavelica', 'Angaraes', 'Santo Tomas de Pata'),
('090312', 'Huancavelica', 'Angaraes', 'Secclla'),
('090401', 'Huancavelica', 'Castrovirreyna', 'Castrovirreyna'),
('090402', 'Huancavelica', 'Castrovirreyna', 'Arma'),
('090403', 'Huancavelica', 'Castrovirreyna', 'Aurahua'),
('090404', 'Huancavelica', 'Castrovirreyna', 'Capillas'),
('090405', 'Huancavelica', 'Castrovirreyna', 'Chupamarca'),
('090406', 'Huancavelica', 'Castrovirreyna', 'Cocas'),
('090407', 'Huancavelica', 'Castrovirreyna', 'Huachos'),
('090408', 'Huancavelica', 'Castrovirreyna', 'Huamatambo'),
('090409', 'Huancavelica', 'Castrovirreyna', 'Mollepampa'),
('090410', 'Huancavelica', 'Castrovirreyna', 'San Juan'),
('090411', 'Huancavelica', 'Castrovirreyna', 'Santa Ana'),
('090412', 'Huancavelica', 'Castrovirreyna', 'Tantara'),
('090413', 'Huancavelica', 'Castrovirreyna', 'Ticrapo'),
('090501', 'Huancavelica', 'Churcampa', 'Churcampa'),
('090502', 'Huancavelica', 'Churcampa', 'Anco'),
('090503', 'Huancavelica', 'Churcampa', 'Chinchihuasi'),
('090504', 'Huancavelica', 'Churcampa', 'El Carmen'),
('090505', 'Huancavelica', 'Churcampa', 'La Merced'),
('090506', 'Huancavelica', 'Churcampa', 'Locroja'),
('090507', 'Huancavelica', 'Churcampa', 'Paucarbamba'),
('090508', 'Huancavelica', 'Churcampa', 'San Miguel de Mayocc'),
('090509', 'Huancavelica', 'Churcampa', 'San Pedro de Coris'),
('090510', 'Huancavelica', 'Churcampa', 'Pachamarca'),
('090511', 'Huancavelica', 'Churcampa', 'Cosme'),
('090601', 'Huancavelica', 'Huaytará', 'Huaytara'),
('090602', 'Huancavelica', 'Huaytará', 'Ayavi'),
('090603', 'Huancavelica', 'Huaytará', 'Córdova'),
('090604', 'Huancavelica', 'Huaytará', 'Huayacundo Arma'),
('090605', 'Huancavelica', 'Huaytará', 'Laramarca'),
('090606', 'Huancavelica', 'Huaytará', 'Ocoyo'),
('090607', 'Huancavelica', 'Huaytará', 'Pilpichaca'),
('090608', 'Huancavelica', 'Huaytará', 'Querco'),
('090609', 'Huancavelica', 'Huaytará', 'Quito-Arma'),
('090610', 'Huancavelica', 'Huaytará', 'San Antonio de Cusicancha'),
('090611', 'Huancavelica', 'Huaytará', 'San Francisco de Sangayaico'),
('090612', 'Huancavelica', 'Huaytará', 'San Isidro'),
('090613', 'Huancavelica', 'Huaytará', 'Santiago de Chocorvos'),
('090614', 'Huancavelica', 'Huaytará', 'Santiago de Quirahuara'),
('090615', 'Huancavelica', 'Huaytará', 'Santo Domingo de Capillas'),
('090616', 'Huancavelica', 'Huaytará', 'Tambo'),
('090701', 'Huancavelica', 'Tayacaja', 'Pampas'),
('090702', 'Huancavelica', 'Tayacaja', 'Acostambo'),
('090703', 'Huancavelica', 'Tayacaja', 'Acraquia'),
('090704', 'Huancavelica', 'Tayacaja', 'Ahuaycha'),
('090705', 'Huancavelica', 'Tayacaja', 'Colcabamba'),
('090706', 'Huancavelica', 'Tayacaja', 'Daniel Hernández'),
('090707', 'Huancavelica', 'Tayacaja', 'Huachocolpa'),
('090709', 'Huancavelica', 'Tayacaja', 'Huaribamba'),
('090710', 'Huancavelica', 'Tayacaja', 'Ñahuimpuquio'),
('090711', 'Huancavelica', 'Tayacaja', 'Pazos'),
('090713', 'Huancavelica', 'Tayacaja', 'Quishuar'),
('090714', 'Huancavelica', 'Tayacaja', 'Salcabamba'),
('090715', 'Huancavelica', 'Tayacaja', 'Salcahuasi'),
('090716', 'Huancavelica', 'Tayacaja', 'San Marcos de Rocchac'),
('090717', 'Huancavelica', 'Tayacaja', 'Surcubamba'),
('090718', 'Huancavelica', 'Tayacaja', 'Tintay Puncu'),
('090719', 'Huancavelica', 'Tayacaja', 'Quichuas'),
('090720', 'Huancavelica', 'Tayacaja', 'Andaymarca'),
('090721', 'Huancavelica', 'Tayacaja', 'Roble'),
('090722', 'Huancavelica', 'Tayacaja', 'Pichos'),
('100101', 'Huánuco', 'Huánuco', 'Huanuco'),
('100102', 'Huánuco', 'Huánuco', 'Amarilis'),
('100103', 'Huánuco', 'Huánuco', 'Chinchao'),
('100104', 'Huánuco', 'Huánuco', 'Churubamba'),
('100105', 'Huánuco', 'Huánuco', 'Margos'),
('100106', 'Huánuco', 'Huánuco', 'Quisqui (Kichki)'),
('100107', 'Huánuco', 'Huánuco', 'San Francisco de Cayran'),
('100108', 'Huánuco', 'Huánuco', 'San Pedro de Chaulan'),
('100109', 'Huánuco', 'Huánuco', 'Santa María del Valle'),
('100110', 'Huánuco', 'Huánuco', 'Yarumayo'),
('100111', 'Huánuco', 'Huánuco', 'Pillco Marca'),
('100112', 'Huánuco', 'Huánuco', 'Yacus'),
('100113', 'Huánuco', 'Huánuco', 'San Pablo de Pillao'),
('100201', 'Huánuco', 'Ambo', 'Ambo'),
('100202', 'Huánuco', 'Ambo', 'Cayna'),
('100203', 'Huánuco', 'Ambo', 'Colpas'),
('100204', 'Huánuco', 'Ambo', 'Conchamarca'),
('100205', 'Huánuco', 'Ambo', 'Huacar'),
('100206', 'Huánuco', 'Ambo', 'San Francisco'),
('100207', 'Huánuco', 'Ambo', 'San Rafael'),
('100208', 'Huánuco', 'Ambo', 'Tomay Kichwa'),
('100301', 'Huánuco', 'Dos de Mayo', 'La Unión'),
('100307', 'Huánuco', 'Dos de Mayo', 'Chuquis'),
('100311', 'Huánuco', 'Dos de Mayo', 'Marías'),
('100313', 'Huánuco', 'Dos de Mayo', 'Pachas'),
('100316', 'Huánuco', 'Dos de Mayo', 'Quivilla'),
('100317', 'Huánuco', 'Dos de Mayo', 'Ripan'),
('100321', 'Huánuco', 'Dos de Mayo', 'Shunqui'),
('100322', 'Huánuco', 'Dos de Mayo', 'Sillapata'),
('100323', 'Huánuco', 'Dos de Mayo', 'Yanas'),
('100401', 'Huánuco', 'Huacaybamba', 'Huacaybamba'),
('100402', 'Huánuco', 'Huacaybamba', 'Canchabamba'),
('100403', 'Huánuco', 'Huacaybamba', 'Cochabamba'),
('100404', 'Huánuco', 'Huacaybamba', 'Pinra'),
('100501', 'Huánuco', 'Huamalíes', 'Llata'),
('100502', 'Huánuco', 'Huamalíes', 'Arancay'),
('100503', 'Huánuco', 'Huamalíes', 'Chavín de Pariarca'),
('100504', 'Huánuco', 'Huamalíes', 'Jacas Grande'),
('100505', 'Huánuco', 'Huamalíes', 'Jircan'),
('100506', 'Huánuco', 'Huamalíes', 'Miraflores'),
('100507', 'Huánuco', 'Huamalíes', 'Monzón'),
('100508', 'Huánuco', 'Huamalíes', 'Punchao'),
('100509', 'Huánuco', 'Huamalíes', 'Puños'),
('100510', 'Huánuco', 'Huamalíes', 'Singa'),
('100511', 'Huánuco', 'Huamalíes', 'Tantamayo'),
('100601', 'Huánuco', 'Leoncio Prado', 'Rupa-Rupa'),
('100602', 'Huánuco', 'Leoncio Prado', 'Daniel Alomía Robles'),
('100603', 'Huánuco', 'Leoncio Prado', 'Hermílio Valdizan'),
('100604', 'Huánuco', 'Leoncio Prado', 'José Crespo y Castillo'),
('100605', 'Huánuco', 'Leoncio Prado', 'Luyando'),
('100606', 'Huánuco', 'Leoncio Prado', 'Mariano Damaso Beraun'),
('100607', 'Huánuco', 'Leoncio Prado', 'Pucayacu'),
('100608', 'Huánuco', 'Leoncio Prado', 'Castillo Grande'),
('100701', 'Huánuco', 'Marañón', 'Huacrachuco'),
('100702', 'Huánuco', 'Marañón', 'Cholon'),
('100703', 'Huánuco', 'Marañón', 'San Buenaventura'),
('100704', 'Huánuco', 'Marañón', 'La Morada'),
('100705', 'Huánuco', 'Marañón', 'Santa Rosa de Alto Yanajanca'),
('100801', 'Huánuco', 'Pachitea', 'Panao'),
('100802', 'Huánuco', 'Pachitea', 'Chaglla'),
('100803', 'Huánuco', 'Pachitea', 'Molino'),
('100804', 'Huánuco', 'Pachitea', 'Umari'),
('100901', 'Huánuco', 'Puerto Inca', 'Puerto Inca'),
('100902', 'Huánuco', 'Puerto Inca', 'Codo del Pozuzo'),
('100903', 'Huánuco', 'Puerto Inca', 'Honoria'),
('100904', 'Huánuco', 'Puerto Inca', 'Tournavista'),
('100905', 'Huánuco', 'Puerto Inca', 'Yuyapichis'),
('101001', 'Huánuco', 'Lauricocha', 'Jesús'),
('101002', 'Huánuco', 'Lauricocha', 'Baños'),
('101003', 'Huánuco', 'Lauricocha', 'Jivia'),
('101004', 'Huánuco', 'Lauricocha', 'Queropalca'),
('101005', 'Huánuco', 'Lauricocha', 'Rondos'),
('101006', 'Huánuco', 'Lauricocha', 'San Francisco de Asís'),
('101007', 'Huánuco', 'Lauricocha', 'San Miguel de Cauri'),
('101101', 'Huánuco', 'Yarowilca', 'Chavinillo'),
('101102', 'Huánuco', 'Yarowilca', 'Cahuac'),
('101103', 'Huánuco', 'Yarowilca', 'Chacabamba'),
('101104', 'Huánuco', 'Yarowilca', 'Aparicio Pomares'),
('101105', 'Huánuco', 'Yarowilca', 'Jacas Chico'),
('101106', 'Huánuco', 'Yarowilca', 'Obas'),
('101107', 'Huánuco', 'Yarowilca', 'Pampamarca'),
('101108', 'Huánuco', 'Yarowilca', 'Choras'),
('110101', 'Ica', 'Ica', 'Ica'),
('110102', 'Ica', 'Ica', 'La Tinguiña'),
('110103', 'Ica', 'Ica', 'Los Aquijes'),
('110104', 'Ica', 'Ica', 'Ocucaje'),
('110105', 'Ica', 'Ica', 'Pachacutec'),
('110106', 'Ica', 'Ica', 'Parcona'),
('110107', 'Ica', 'Ica', 'Pueblo Nuevo'),
('110108', 'Ica', 'Ica', 'Salas'),
('110109', 'Ica', 'Ica', 'San José de Los Molinos'),
('110110', 'Ica', 'Ica', 'San Juan Bautista'),
('110111', 'Ica', 'Ica', 'Santiago'),
('110112', 'Ica', 'Ica', 'Subtanjalla'),
('110113', 'Ica', 'Ica', 'Tate'),
('110114', 'Ica', 'Ica', 'Yauca del Rosario'),
('110201', 'Ica', 'Chincha', 'Chincha Alta'),
('110202', 'Ica', 'Chincha', 'Alto Laran'),
('110203', 'Ica', 'Chincha', 'Chavin'),
('110204', 'Ica', 'Chincha', 'Chincha Baja'),
('110205', 'Ica', 'Chincha', 'El Carmen'),
('110206', 'Ica', 'Chincha', 'Grocio Prado'),
('110207', 'Ica', 'Chincha', 'Pueblo Nuevo'),
('110208', 'Ica', 'Chincha', 'San Juan de Yanac'),
('110209', 'Ica', 'Chincha', 'San Pedro de Huacarpana'),
('110210', 'Ica', 'Chincha', 'Sunampe'),
('110211', 'Ica', 'Chincha', 'Tambo de Mora'),
('110301', 'Ica', 'Nasca', 'Nasca'),
('110302', 'Ica', 'Nasca', 'Changuillo'),
('110303', 'Ica', 'Nasca', 'El Ingenio'),
('110304', 'Ica', 'Nasca', 'Marcona'),
('110305', 'Ica', 'Nasca', 'Vista Alegre'),
('110401', 'Ica', 'Palpa', 'Palpa'),
('110402', 'Ica', 'Palpa', 'Llipata'),
('110403', 'Ica', 'Palpa', 'Río Grande'),
('110404', 'Ica', 'Palpa', 'Santa Cruz'),
('110405', 'Ica', 'Palpa', 'Tibillo'),
('110501', 'Ica', 'Pisco', 'Pisco'),
('110502', 'Ica', 'Pisco', 'Huancano'),
('110503', 'Ica', 'Pisco', 'Humay'),
('110504', 'Ica', 'Pisco', 'Independencia'),
('110505', 'Ica', 'Pisco', 'Paracas'),
('110506', 'Ica', 'Pisco', 'San Andrés'),
('110507', 'Ica', 'Pisco', 'San Clemente'),
('110508', 'Ica', 'Pisco', 'Tupac Amaru Inca'),
('120101', 'Junín', 'Huancayo', 'Huancayo'),
('120104', 'Junín', 'Huancayo', 'Carhuacallanga'),
('120105', 'Junín', 'Huancayo', 'Chacapampa'),
('120106', 'Junín', 'Huancayo', 'Chicche'),
('120107', 'Junín', 'Huancayo', 'Chilca'),
('120108', 'Junín', 'Huancayo', 'Chongos Alto'),
('120111', 'Junín', 'Huancayo', 'Chupuro'),
('120112', 'Junín', 'Huancayo', 'Colca'),
('120113', 'Junín', 'Huancayo', 'Cullhuas'),
('120114', 'Junín', 'Huancayo', 'El Tambo'),
('120116', 'Junín', 'Huancayo', 'Huacrapuquio'),
('120117', 'Junín', 'Huancayo', 'Hualhuas'),
('120119', 'Junín', 'Huancayo', 'Huancan'),
('120120', 'Junín', 'Huancayo', 'Huasicancha'),
('120121', 'Junín', 'Huancayo', 'Huayucachi'),
('120122', 'Junín', 'Huancayo', 'Ingenio'),
('120124', 'Junín', 'Huancayo', 'Pariahuanca'),
('120125', 'Junín', 'Huancayo', 'Pilcomayo'),
('120126', 'Junín', 'Huancayo', 'Pucara'),
('120127', 'Junín', 'Huancayo', 'Quichuay'),
('120128', 'Junín', 'Huancayo', 'Quilcas'),
('120129', 'Junín', 'Huancayo', 'San Agustín'),
('120130', 'Junín', 'Huancayo', 'San Jerónimo de Tunan'),
('120132', 'Junín', 'Huancayo', 'Saño'),
('120133', 'Junín', 'Huancayo', 'Sapallanga'),
('120134', 'Junín', 'Huancayo', 'Sicaya'),
('120135', 'Junín', 'Huancayo', 'Santo Domingo de Acobamba'),
('120136', 'Junín', 'Huancayo', 'Viques');
INSERT INTO `sunat_codigoubigeo` (`codigo_ubigeo`, `departamento`, `provincia`, `distrito`) VALUES
('120201', 'Junín', 'Concepción', 'Concepción'),
('120202', 'Junín', 'Concepción', 'Aco'),
('120203', 'Junín', 'Concepción', 'Andamarca'),
('120204', 'Junín', 'Concepción', 'Chambara'),
('120205', 'Junín', 'Concepción', 'Cochas'),
('120206', 'Junín', 'Concepción', 'Comas'),
('120207', 'Junín', 'Concepción', 'Heroínas Toledo'),
('120208', 'Junín', 'Concepción', 'Manzanares'),
('120209', 'Junín', 'Concepción', 'Mariscal Castilla'),
('120210', 'Junín', 'Concepción', 'Matahuasi'),
('120211', 'Junín', 'Concepción', 'Mito'),
('120212', 'Junín', 'Concepción', 'Nueve de Julio'),
('120213', 'Junín', 'Concepción', 'Orcotuna'),
('120214', 'Junín', 'Concepción', 'San José de Quero'),
('120215', 'Junín', 'Concepción', 'Santa Rosa de Ocopa'),
('120301', 'Junín', 'Chanchamayo', 'Chanchamayo'),
('120302', 'Junín', 'Chanchamayo', 'Perene'),
('120303', 'Junín', 'Chanchamayo', 'Pichanaqui'),
('120304', 'Junín', 'Chanchamayo', 'San Luis de Shuaro'),
('120305', 'Junín', 'Chanchamayo', 'San Ramón'),
('120306', 'Junín', 'Chanchamayo', 'Vitoc'),
('120401', 'Junín', 'Jauja', 'Jauja'),
('120402', 'Junín', 'Jauja', 'Acolla'),
('120403', 'Junín', 'Jauja', 'Apata'),
('120404', 'Junín', 'Jauja', 'Ataura'),
('120405', 'Junín', 'Jauja', 'Canchayllo'),
('120406', 'Junín', 'Jauja', 'Curicaca'),
('120407', 'Junín', 'Jauja', 'El Mantaro'),
('120408', 'Junín', 'Jauja', 'Huamali'),
('120409', 'Junín', 'Jauja', 'Huaripampa'),
('120410', 'Junín', 'Jauja', 'Huertas'),
('120411', 'Junín', 'Jauja', 'Janjaillo'),
('120412', 'Junín', 'Jauja', 'Julcán'),
('120413', 'Junín', 'Jauja', 'Leonor Ordóñez'),
('120414', 'Junín', 'Jauja', 'Llocllapampa'),
('120415', 'Junín', 'Jauja', 'Marco'),
('120416', 'Junín', 'Jauja', 'Masma'),
('120417', 'Junín', 'Jauja', 'Masma Chicche'),
('120418', 'Junín', 'Jauja', 'Molinos'),
('120419', 'Junín', 'Jauja', 'Monobamba'),
('120420', 'Junín', 'Jauja', 'Muqui'),
('120421', 'Junín', 'Jauja', 'Muquiyauyo'),
('120422', 'Junín', 'Jauja', 'Paca'),
('120423', 'Junín', 'Jauja', 'Paccha'),
('120424', 'Junín', 'Jauja', 'Pancan'),
('120425', 'Junín', 'Jauja', 'Parco'),
('120426', 'Junín', 'Jauja', 'Pomacancha'),
('120427', 'Junín', 'Jauja', 'Ricran'),
('120428', 'Junín', 'Jauja', 'San Lorenzo'),
('120429', 'Junín', 'Jauja', 'San Pedro de Chunan'),
('120430', 'Junín', 'Jauja', 'Sausa'),
('120431', 'Junín', 'Jauja', 'Sincos'),
('120432', 'Junín', 'Jauja', 'Tunan Marca'),
('120433', 'Junín', 'Jauja', 'Yauli'),
('120434', 'Junín', 'Jauja', 'Yauyos'),
('120501', 'Junín', 'Junín', 'Junin'),
('120502', 'Junín', 'Junín', 'Carhuamayo'),
('120503', 'Junín', 'Junín', 'Ondores'),
('120504', 'Junín', 'Junín', 'Ulcumayo'),
('120601', 'Junín', 'Satipo', 'Satipo'),
('120602', 'Junín', 'Satipo', 'Coviriali'),
('120603', 'Junín', 'Satipo', 'Llaylla'),
('120604', 'Junín', 'Satipo', 'Mazamari'),
('120605', 'Junín', 'Satipo', 'Pampa Hermosa'),
('120606', 'Junín', 'Satipo', 'Pangoa'),
('120607', 'Junín', 'Satipo', 'Río Negro'),
('120608', 'Junín', 'Satipo', 'Río Tambo'),
('120609', 'Junín', 'Satipo', 'Vizcatan del Ene'),
('120701', 'Junín', 'Tarma', 'Tarma'),
('120702', 'Junín', 'Tarma', 'Acobamba'),
('120703', 'Junín', 'Tarma', 'Huaricolca'),
('120704', 'Junín', 'Tarma', 'Huasahuasi'),
('120705', 'Junín', 'Tarma', 'La Unión'),
('120706', 'Junín', 'Tarma', 'Palca'),
('120707', 'Junín', 'Tarma', 'Palcamayo'),
('120708', 'Junín', 'Tarma', 'San Pedro de Cajas'),
('120709', 'Junín', 'Tarma', 'Tapo'),
('120801', 'Junín', 'Yauli', 'La Oroya'),
('120802', 'Junín', 'Yauli', 'Chacapalpa'),
('120803', 'Junín', 'Yauli', 'Huay-Huay'),
('120804', 'Junín', 'Yauli', 'Marcapomacocha'),
('120805', 'Junín', 'Yauli', 'Morococha'),
('120806', 'Junín', 'Yauli', 'Paccha'),
('120807', 'Junín', 'Yauli', 'Santa Bárbara de Carhuacayan'),
('120808', 'Junín', 'Yauli', 'Santa Rosa de Sacco'),
('120809', 'Junín', 'Yauli', 'Suitucancha'),
('120810', 'Junín', 'Yauli', 'Yauli'),
('120901', 'Junín', 'Chupaca', 'Chupaca'),
('120902', 'Junín', 'Chupaca', 'Ahuac'),
('120903', 'Junín', 'Chupaca', 'Chongos Bajo'),
('120904', 'Junín', 'Chupaca', 'Huachac'),
('120905', 'Junín', 'Chupaca', 'Huamancaca Chico'),
('120906', 'Junín', 'Chupaca', 'San Juan de Iscos'),
('120907', 'Junín', 'Chupaca', 'San Juan de Jarpa'),
('120908', 'Junín', 'Chupaca', 'Tres de Diciembre'),
('120909', 'Junín', 'Chupaca', 'Yanacancha'),
('130101', 'La Libertad', 'Trujillo', 'Trujillo'),
('130102', 'La Libertad', 'Trujillo', 'El Porvenir'),
('130103', 'La Libertad', 'Trujillo', 'Florencia de Mora'),
('130104', 'La Libertad', 'Trujillo', 'Huanchaco'),
('130105', 'La Libertad', 'Trujillo', 'La Esperanza'),
('130106', 'La Libertad', 'Trujillo', 'Laredo'),
('130107', 'La Libertad', 'Trujillo', 'Moche'),
('130108', 'La Libertad', 'Trujillo', 'Poroto'),
('130109', 'La Libertad', 'Trujillo', 'Salaverry'),
('130110', 'La Libertad', 'Trujillo', 'Simbal'),
('130111', 'La Libertad', 'Trujillo', 'Victor Larco Herrera'),
('130201', 'La Libertad', 'Ascope', 'Ascope'),
('130202', 'La Libertad', 'Ascope', 'Chicama'),
('130203', 'La Libertad', 'Ascope', 'Chocope'),
('130204', 'La Libertad', 'Ascope', 'Magdalena de Cao'),
('130205', 'La Libertad', 'Ascope', 'Paijan'),
('130206', 'La Libertad', 'Ascope', 'Rázuri'),
('130207', 'La Libertad', 'Ascope', 'Santiago de Cao'),
('130208', 'La Libertad', 'Ascope', 'Casa Grande'),
('130301', 'La Libertad', 'Bolívar', 'Bolívar'),
('130302', 'La Libertad', 'Bolívar', 'Bambamarca'),
('130303', 'La Libertad', 'Bolívar', 'Condormarca'),
('130304', 'La Libertad', 'Bolívar', 'Longotea'),
('130305', 'La Libertad', 'Bolívar', 'Uchumarca'),
('130306', 'La Libertad', 'Bolívar', 'Ucuncha'),
('130401', 'La Libertad', 'Chepén', 'Chepen'),
('130402', 'La Libertad', 'Chepén', 'Pacanga'),
('130403', 'La Libertad', 'Chepén', 'Pueblo Nuevo'),
('130501', 'La Libertad', 'Julcán', 'Julcan'),
('130502', 'La Libertad', 'Julcán', 'Calamarca'),
('130503', 'La Libertad', 'Julcán', 'Carabamba'),
('130504', 'La Libertad', 'Julcán', 'Huaso'),
('130601', 'La Libertad', 'Otuzco', 'Otuzco'),
('130602', 'La Libertad', 'Otuzco', 'Agallpampa'),
('130604', 'La Libertad', 'Otuzco', 'Charat'),
('130605', 'La Libertad', 'Otuzco', 'Huaranchal'),
('130606', 'La Libertad', 'Otuzco', 'La Cuesta'),
('130608', 'La Libertad', 'Otuzco', 'Mache'),
('130610', 'La Libertad', 'Otuzco', 'Paranday'),
('130611', 'La Libertad', 'Otuzco', 'Salpo'),
('130613', 'La Libertad', 'Otuzco', 'Sinsicap'),
('130614', 'La Libertad', 'Otuzco', 'Usquil'),
('130701', 'La Libertad', 'Pacasmayo', 'San Pedro de Lloc'),
('130702', 'La Libertad', 'Pacasmayo', 'Guadalupe'),
('130703', 'La Libertad', 'Pacasmayo', 'Jequetepeque'),
('130704', 'La Libertad', 'Pacasmayo', 'Pacasmayo'),
('130705', 'La Libertad', 'Pacasmayo', 'San José'),
('130801', 'La Libertad', 'Pataz', 'Tayabamba'),
('130802', 'La Libertad', 'Pataz', 'Buldibuyo'),
('130803', 'La Libertad', 'Pataz', 'Chillia'),
('130804', 'La Libertad', 'Pataz', 'Huancaspata'),
('130805', 'La Libertad', 'Pataz', 'Huaylillas'),
('130806', 'La Libertad', 'Pataz', 'Huayo'),
('130807', 'La Libertad', 'Pataz', 'Ongon'),
('130808', 'La Libertad', 'Pataz', 'Parcoy'),
('130809', 'La Libertad', 'Pataz', 'Pataz'),
('130810', 'La Libertad', 'Pataz', 'Pias'),
('130811', 'La Libertad', 'Pataz', 'Santiago de Challas'),
('130812', 'La Libertad', 'Pataz', 'Taurija'),
('130813', 'La Libertad', 'Pataz', 'Urpay'),
('130901', 'La Libertad', 'Sánchez Carrión', 'Huamachuco'),
('130902', 'La Libertad', 'Sánchez Carrión', 'Chugay'),
('130903', 'La Libertad', 'Sánchez Carrión', 'Cochorco'),
('130904', 'La Libertad', 'Sánchez Carrión', 'Curgos'),
('130905', 'La Libertad', 'Sánchez Carrión', 'Marcabal'),
('130906', 'La Libertad', 'Sánchez Carrión', 'Sanagoran'),
('130907', 'La Libertad', 'Sánchez Carrión', 'Sarin'),
('130908', 'La Libertad', 'Sánchez Carrión', 'Sartimbamba'),
('131001', 'La Libertad', 'Santiago de Chuco', 'Santiago de Chuco'),
('131002', 'La Libertad', 'Santiago de Chuco', 'Angasmarca'),
('131003', 'La Libertad', 'Santiago de Chuco', 'Cachicadan'),
('131004', 'La Libertad', 'Santiago de Chuco', 'Mollebamba'),
('131005', 'La Libertad', 'Santiago de Chuco', 'Mollepata'),
('131006', 'La Libertad', 'Santiago de Chuco', 'Quiruvilca'),
('131007', 'La Libertad', 'Santiago de Chuco', 'Santa Cruz de Chuca'),
('131008', 'La Libertad', 'Santiago de Chuco', 'Sitabamba'),
('131101', 'La Libertad', 'Gran Chimú', 'Cascas'),
('131102', 'La Libertad', 'Gran Chimú', 'Lucma'),
('131103', 'La Libertad', 'Gran Chimú', 'Marmot'),
('131104', 'La Libertad', 'Gran Chimú', 'Sayapullo'),
('131201', 'La Libertad', 'Virú', 'Viru'),
('131202', 'La Libertad', 'Virú', 'Chao'),
('131203', 'La Libertad', 'Virú', 'Guadalupito'),
('140101', 'Lambayeque', 'Chiclayo', 'Chiclayo'),
('140102', 'Lambayeque', 'Chiclayo', 'Chongoyape'),
('140103', 'Lambayeque', 'Chiclayo', 'Eten'),
('140104', 'Lambayeque', 'Chiclayo', 'Eten Puerto'),
('140105', 'Lambayeque', 'Chiclayo', 'José Leonardo Ortiz'),
('140106', 'Lambayeque', 'Chiclayo', 'La Victoria'),
('140107', 'Lambayeque', 'Chiclayo', 'Lagunas'),
('140108', 'Lambayeque', 'Chiclayo', 'Monsefu'),
('140109', 'Lambayeque', 'Chiclayo', 'Nueva Arica'),
('140110', 'Lambayeque', 'Chiclayo', 'Oyotun'),
('140111', 'Lambayeque', 'Chiclayo', 'Picsi'),
('140112', 'Lambayeque', 'Chiclayo', 'Pimentel'),
('140113', 'Lambayeque', 'Chiclayo', 'Reque'),
('140114', 'Lambayeque', 'Chiclayo', 'Santa Rosa'),
('140115', 'Lambayeque', 'Chiclayo', 'Saña'),
('140116', 'Lambayeque', 'Chiclayo', 'Cayalti'),
('140117', 'Lambayeque', 'Chiclayo', 'Patapo'),
('140118', 'Lambayeque', 'Chiclayo', 'Pomalca'),
('140119', 'Lambayeque', 'Chiclayo', 'Pucala'),
('140120', 'Lambayeque', 'Chiclayo', 'Tuman'),
('140201', 'Lambayeque', 'Ferreñafe', 'Ferreñafe'),
('140202', 'Lambayeque', 'Ferreñafe', 'Cañaris'),
('140203', 'Lambayeque', 'Ferreñafe', 'Incahuasi'),
('140204', 'Lambayeque', 'Ferreñafe', 'Manuel Antonio Mesones Muro'),
('140205', 'Lambayeque', 'Ferreñafe', 'Pitipo'),
('140206', 'Lambayeque', 'Ferreñafe', 'Pueblo Nuevo'),
('140301', 'Lambayeque', 'Lambayeque', 'Lambayeque'),
('140302', 'Lambayeque', 'Lambayeque', 'Chochope'),
('140303', 'Lambayeque', 'Lambayeque', 'Illimo'),
('140304', 'Lambayeque', 'Lambayeque', 'Jayanca'),
('140305', 'Lambayeque', 'Lambayeque', 'Mochumi'),
('140306', 'Lambayeque', 'Lambayeque', 'Morrope'),
('140307', 'Lambayeque', 'Lambayeque', 'Motupe'),
('140308', 'Lambayeque', 'Lambayeque', 'Olmos'),
('140309', 'Lambayeque', 'Lambayeque', 'Pacora'),
('140310', 'Lambayeque', 'Lambayeque', 'Salas'),
('140311', 'Lambayeque', 'Lambayeque', 'San José'),
('140312', 'Lambayeque', 'Lambayeque', 'Tucume'),
('150101', 'Lima', 'Lima', 'Lima'),
('150102', 'Lima', 'Lima', 'Ancón'),
('150103', 'Lima', 'Lima', 'Ate'),
('150104', 'Lima', 'Lima', 'Barranco'),
('150105', 'Lima', 'Lima', 'Breña'),
('150106', 'Lima', 'Lima', 'Carabayllo'),
('150107', 'Lima', 'Lima', 'Chaclacayo'),
('150108', 'Lima', 'Lima', 'Chorrillos'),
('150109', 'Lima', 'Lima', 'Cieneguilla'),
('150110', 'Lima', 'Lima', 'Comas'),
('150111', 'Lima', 'Lima', 'El Agustino'),
('150112', 'Lima', 'Lima', 'Independencia'),
('150113', 'Lima', 'Lima', 'Jesús María'),
('150114', 'Lima', 'Lima', 'La Molina'),
('150115', 'Lima', 'Lima', 'La Victoria'),
('150116', 'Lima', 'Lima', 'Lince'),
('150117', 'Lima', 'Lima', 'Los Olivos'),
('150118', 'Lima', 'Lima', 'Lurigancho'),
('150119', 'Lima', 'Lima', 'Lurin'),
('150120', 'Lima', 'Lima', 'Magdalena del Mar'),
('150121', 'Lima', 'Lima', 'Pueblo Libre'),
('150122', 'Lima', 'Lima', 'Miraflores'),
('150123', 'Lima', 'Lima', 'Pachacamac'),
('150124', 'Lima', 'Lima', 'Pucusana'),
('150125', 'Lima', 'Lima', 'Puente Piedra'),
('150126', 'Lima', 'Lima', 'Punta Hermosa'),
('150127', 'Lima', 'Lima', 'Punta Negra'),
('150128', 'Lima', 'Lima', 'Rímac'),
('150129', 'Lima', 'Lima', 'San Bartolo'),
('150130', 'Lima', 'Lima', 'San Borja'),
('150131', 'Lima', 'Lima', 'San Isidro'),
('150132', 'Lima', 'Lima', 'San Juan de Lurigancho'),
('150133', 'Lima', 'Lima', 'San Juan de Miraflores'),
('150134', 'Lima', 'Lima', 'San Luis'),
('150135', 'Lima', 'Lima', 'San Martín de Porres'),
('150136', 'Lima', 'Lima', 'San Miguel'),
('150137', 'Lima', 'Lima', 'Santa Anita'),
('150138', 'Lima', 'Lima', 'Santa María del Mar'),
('150139', 'Lima', 'Lima', 'Santa Rosa'),
('150140', 'Lima', 'Lima', 'Santiago de Surco'),
('150141', 'Lima', 'Lima', 'Surquillo'),
('150142', 'Lima', 'Lima', 'Villa El Salvador'),
('150143', 'Lima', 'Lima', 'Villa María del Triunfo'),
('150201', 'Lima', 'Barranca', 'Barranca'),
('150202', 'Lima', 'Barranca', 'Paramonga'),
('150203', 'Lima', 'Barranca', 'Pativilca'),
('150204', 'Lima', 'Barranca', 'Supe'),
('150205', 'Lima', 'Barranca', 'Supe Puerto'),
('150301', 'Lima', 'Cajatambo', 'Cajatambo'),
('150302', 'Lima', 'Cajatambo', 'Copa'),
('150303', 'Lima', 'Cajatambo', 'Gorgor'),
('150304', 'Lima', 'Cajatambo', 'Huancapon'),
('150305', 'Lima', 'Cajatambo', 'Manas'),
('150401', 'Lima', 'Canta', 'Canta'),
('150402', 'Lima', 'Canta', 'Arahuay'),
('150403', 'Lima', 'Canta', 'Huamantanga'),
('150404', 'Lima', 'Canta', 'Huaros'),
('150405', 'Lima', 'Canta', 'Lachaqui'),
('150406', 'Lima', 'Canta', 'San Buenaventura'),
('150407', 'Lima', 'Canta', 'Santa Rosa de Quives'),
('150501', 'Lima', 'Cañete', 'San Vicente de Cañete'),
('150502', 'Lima', 'Cañete', 'Asia'),
('150503', 'Lima', 'Cañete', 'Calango'),
('150504', 'Lima', 'Cañete', 'Cerro Azul'),
('150505', 'Lima', 'Cañete', 'Chilca'),
('150506', 'Lima', 'Cañete', 'Coayllo'),
('150507', 'Lima', 'Cañete', 'Imperial'),
('150508', 'Lima', 'Cañete', 'Lunahuana'),
('150509', 'Lima', 'Cañete', 'Mala'),
('150510', 'Lima', 'Cañete', 'Nuevo Imperial'),
('150511', 'Lima', 'Cañete', 'Pacaran'),
('150512', 'Lima', 'Cañete', 'Quilmana'),
('150513', 'Lima', 'Cañete', 'San Antonio'),
('150514', 'Lima', 'Cañete', 'San Luis'),
('150515', 'Lima', 'Cañete', 'Santa Cruz de Flores'),
('150516', 'Lima', 'Cañete', 'Zúñiga'),
('150601', 'Lima', 'Huaral', 'Huaral'),
('150602', 'Lima', 'Huaral', 'Atavillos Alto'),
('150603', 'Lima', 'Huaral', 'Atavillos Bajo'),
('150604', 'Lima', 'Huaral', 'Aucallama'),
('150605', 'Lima', 'Huaral', 'Chancay'),
('150606', 'Lima', 'Huaral', 'Ihuari'),
('150607', 'Lima', 'Huaral', 'Lampian'),
('150608', 'Lima', 'Huaral', 'Pacaraos'),
('150609', 'Lima', 'Huaral', 'San Miguel de Acos'),
('150610', 'Lima', 'Huaral', 'Santa Cruz de Andamarca'),
('150611', 'Lima', 'Huaral', 'Sumbilca'),
('150612', 'Lima', 'Huaral', 'Veintisiete de Noviembre'),
('150701', 'Lima', 'Huarochirí', 'Matucana'),
('150702', 'Lima', 'Huarochirí', 'Antioquia'),
('150703', 'Lima', 'Huarochirí', 'Callahuanca'),
('150704', 'Lima', 'Huarochirí', 'Carampoma'),
('150705', 'Lima', 'Huarochirí', 'Chicla'),
('150706', 'Lima', 'Huarochirí', 'Cuenca'),
('150707', 'Lima', 'Huarochirí', 'Huachupampa'),
('150708', 'Lima', 'Huarochirí', 'Huanza'),
('150709', 'Lima', 'Huarochirí', 'Huarochiri'),
('150710', 'Lima', 'Huarochirí', 'Lahuaytambo'),
('150711', 'Lima', 'Huarochirí', 'Langa'),
('150712', 'Lima', 'Huarochirí', 'Laraos'),
('150713', 'Lima', 'Huarochirí', 'Mariatana'),
('150714', 'Lima', 'Huarochirí', 'Ricardo Palma'),
('150715', 'Lima', 'Huarochirí', 'San Andrés de Tupicocha'),
('150716', 'Lima', 'Huarochirí', 'San Antonio'),
('150717', 'Lima', 'Huarochirí', 'San Bartolomé'),
('150718', 'Lima', 'Huarochirí', 'San Damian'),
('150719', 'Lima', 'Huarochirí', 'San Juan de Iris'),
('150720', 'Lima', 'Huarochirí', 'San Juan de Tantaranche'),
('150721', 'Lima', 'Huarochirí', 'San Lorenzo de Quinti'),
('150722', 'Lima', 'Huarochirí', 'San Mateo'),
('150723', 'Lima', 'Huarochirí', 'San Mateo de Otao'),
('150724', 'Lima', 'Huarochirí', 'San Pedro de Casta'),
('150725', 'Lima', 'Huarochirí', 'San Pedro de Huancayre'),
('150726', 'Lima', 'Huarochirí', 'Sangallaya'),
('150727', 'Lima', 'Huarochirí', 'Santa Cruz de Cocachacra'),
('150728', 'Lima', 'Huarochirí', 'Santa Eulalia'),
('150729', 'Lima', 'Huarochirí', 'Santiago de Anchucaya'),
('150730', 'Lima', 'Huarochirí', 'Santiago de Tuna'),
('150731', 'Lima', 'Huarochirí', 'Santo Domingo de Los Olleros'),
('150732', 'Lima', 'Huarochirí', 'Surco'),
('150801', 'Lima', 'Huaura', 'Huacho'),
('150802', 'Lima', 'Huaura', 'Ambar'),
('150803', 'Lima', 'Huaura', 'Caleta de Carquin'),
('150804', 'Lima', 'Huaura', 'Checras'),
('150805', 'Lima', 'Huaura', 'Hualmay'),
('150806', 'Lima', 'Huaura', 'Huaura'),
('150807', 'Lima', 'Huaura', 'Leoncio Prado'),
('150808', 'Lima', 'Huaura', 'Paccho'),
('150809', 'Lima', 'Huaura', 'Santa Leonor'),
('150810', 'Lima', 'Huaura', 'Santa María'),
('150811', 'Lima', 'Huaura', 'Sayan'),
('150812', 'Lima', 'Huaura', 'Vegueta'),
('150901', 'Lima', 'Oyón', 'Oyon'),
('150902', 'Lima', 'Oyón', 'Andajes'),
('150903', 'Lima', 'Oyón', 'Caujul'),
('150904', 'Lima', 'Oyón', 'Cochamarca'),
('150905', 'Lima', 'Oyón', 'Navan'),
('150906', 'Lima', 'Oyón', 'Pachangara'),
('151001', 'Lima', 'Yauyos', 'Yauyos'),
('151002', 'Lima', 'Yauyos', 'Alis'),
('151003', 'Lima', 'Yauyos', 'Allauca'),
('151004', 'Lima', 'Yauyos', 'Ayaviri'),
('151005', 'Lima', 'Yauyos', 'Azángaro'),
('151006', 'Lima', 'Yauyos', 'Cacra'),
('151007', 'Lima', 'Yauyos', 'Carania'),
('151008', 'Lima', 'Yauyos', 'Catahuasi'),
('151009', 'Lima', 'Yauyos', 'Chocos'),
('151010', 'Lima', 'Yauyos', 'Cochas'),
('151011', 'Lima', 'Yauyos', 'Colonia'),
('151012', 'Lima', 'Yauyos', 'Hongos'),
('151013', 'Lima', 'Yauyos', 'Huampara'),
('151014', 'Lima', 'Yauyos', 'Huancaya'),
('151015', 'Lima', 'Yauyos', 'Huangascar'),
('151016', 'Lima', 'Yauyos', 'Huantan'),
('151017', 'Lima', 'Yauyos', 'Huañec'),
('151018', 'Lima', 'Yauyos', 'Laraos'),
('151019', 'Lima', 'Yauyos', 'Lincha'),
('151020', 'Lima', 'Yauyos', 'Madean'),
('151021', 'Lima', 'Yauyos', 'Miraflores'),
('151022', 'Lima', 'Yauyos', 'Omas'),
('151023', 'Lima', 'Yauyos', 'Putinza'),
('151024', 'Lima', 'Yauyos', 'Quinches'),
('151025', 'Lima', 'Yauyos', 'Quinocay'),
('151026', 'Lima', 'Yauyos', 'San Joaquín'),
('151027', 'Lima', 'Yauyos', 'San Pedro de Pilas'),
('151028', 'Lima', 'Yauyos', 'Tanta'),
('151029', 'Lima', 'Yauyos', 'Tauripampa'),
('151030', 'Lima', 'Yauyos', 'Tomas'),
('151031', 'Lima', 'Yauyos', 'Tupe'),
('151032', 'Lima', 'Yauyos', 'Viñac'),
('151033', 'Lima', 'Yauyos', 'Vitis'),
('160101', 'Loreto', 'Maynas', 'Iquitos'),
('160102', 'Loreto', 'Maynas', 'Alto Nanay'),
('160103', 'Loreto', 'Maynas', 'Fernando Lores'),
('160104', 'Loreto', 'Maynas', 'Indiana'),
('160105', 'Loreto', 'Maynas', 'Las Amazonas'),
('160106', 'Loreto', 'Maynas', 'Mazan'),
('160107', 'Loreto', 'Maynas', 'Napo'),
('160108', 'Loreto', 'Maynas', 'Punchana'),
('160110', 'Loreto', 'Maynas', 'Torres Causana'),
('160112', 'Loreto', 'Maynas', 'Belén'),
('160113', 'Loreto', 'Maynas', 'San Juan Bautista'),
('160201', 'Loreto', 'Alto Amazonas', 'Yurimaguas'),
('160202', 'Loreto', 'Alto Amazonas', 'Balsapuerto'),
('160205', 'Loreto', 'Alto Amazonas', 'Jeberos'),
('160206', 'Loreto', 'Alto Amazonas', 'Lagunas'),
('160210', 'Loreto', 'Alto Amazonas', 'Santa Cruz'),
('160211', 'Loreto', 'Alto Amazonas', 'Teniente Cesar López Rojas'),
('160301', 'Loreto', 'Loreto', 'Nauta'),
('160302', 'Loreto', 'Loreto', 'Parinari'),
('160303', 'Loreto', 'Loreto', 'Tigre'),
('160304', 'Loreto', 'Loreto', 'Trompeteros'),
('160305', 'Loreto', 'Loreto', 'Urarinas'),
('160401', 'Loreto', 'Mariscal Ramón Castilla', 'Ramón Castilla'),
('160402', 'Loreto', 'Mariscal Ramón Castilla', 'Pebas'),
('160403', 'Loreto', 'Mariscal Ramón Castilla', 'Yavari'),
('160404', 'Loreto', 'Mariscal Ramón Castilla', 'San Pablo'),
('160501', 'Loreto', 'Requena', 'Requena'),
('160502', 'Loreto', 'Requena', 'Alto Tapiche'),
('160503', 'Loreto', 'Requena', 'Capelo'),
('160504', 'Loreto', 'Requena', 'Emilio San Martín'),
('160505', 'Loreto', 'Requena', 'Maquia'),
('160506', 'Loreto', 'Requena', 'Puinahua'),
('160507', 'Loreto', 'Requena', 'Saquena'),
('160508', 'Loreto', 'Requena', 'Soplin'),
('160509', 'Loreto', 'Requena', 'Tapiche'),
('160510', 'Loreto', 'Requena', 'Jenaro Herrera'),
('160511', 'Loreto', 'Requena', 'Yaquerana'),
('160601', 'Loreto', 'Ucayali', 'Contamana'),
('160602', 'Loreto', 'Ucayali', 'Inahuaya'),
('160603', 'Loreto', 'Ucayali', 'Padre Márquez'),
('160604', 'Loreto', 'Ucayali', 'Pampa Hermosa'),
('160605', 'Loreto', 'Ucayali', 'Sarayacu'),
('160606', 'Loreto', 'Ucayali', 'Vargas Guerra'),
('160701', 'Loreto', 'Datem del Marañón', 'Barranca'),
('160702', 'Loreto', 'Datem del Marañón', 'Cahuapanas'),
('160703', 'Loreto', 'Datem del Marañón', 'Manseriche'),
('160704', 'Loreto', 'Datem del Marañón', 'Morona'),
('160705', 'Loreto', 'Datem del Marañón', 'Pastaza'),
('160706', 'Loreto', 'Datem del Marañón', 'Andoas'),
('160801', 'Loreto', 'Putumayo', 'Putumayo'),
('160802', 'Loreto', 'Putumayo', 'Rosa Panduro'),
('160803', 'Loreto', 'Putumayo', 'Teniente Manuel Clavero'),
('160804', 'Loreto', 'Putumayo', 'Yaguas'),
('170101', 'Madre de Dios', 'Tambopata', 'Tambopata'),
('170102', 'Madre de Dios', 'Tambopata', 'Inambari'),
('170103', 'Madre de Dios', 'Tambopata', 'Las Piedras'),
('170104', 'Madre de Dios', 'Tambopata', 'Laberinto'),
('170201', 'Madre de Dios', 'Manu', 'Manu'),
('170202', 'Madre de Dios', 'Manu', 'Fitzcarrald'),
('170203', 'Madre de Dios', 'Manu', 'Madre de Dios'),
('170204', 'Madre de Dios', 'Manu', 'Huepetuhe'),
('170301', 'Madre de Dios', 'Tahuamanu', 'Iñapari'),
('170302', 'Madre de Dios', 'Tahuamanu', 'Iberia'),
('170303', 'Madre de Dios', 'Tahuamanu', 'Tahuamanu'),
('180101', 'Moquegua', 'Mariscal Nieto', 'Moquegua'),
('180102', 'Moquegua', 'Mariscal Nieto', 'Carumas'),
('180103', 'Moquegua', 'Mariscal Nieto', 'Cuchumbaya'),
('180104', 'Moquegua', 'Mariscal Nieto', 'Samegua'),
('180105', 'Moquegua', 'Mariscal Nieto', 'San Cristóbal'),
('180106', 'Moquegua', 'Mariscal Nieto', 'Torata'),
('180201', 'Moquegua', 'General Sánchez Cerro', 'Omate'),
('180202', 'Moquegua', 'General Sánchez Cerro', 'Chojata'),
('180203', 'Moquegua', 'General Sánchez Cerro', 'Coalaque'),
('180204', 'Moquegua', 'General Sánchez Cerro', 'Ichuña'),
('180205', 'Moquegua', 'General Sánchez Cerro', 'La Capilla'),
('180206', 'Moquegua', 'General Sánchez Cerro', 'Lloque'),
('180207', 'Moquegua', 'General Sánchez Cerro', 'Matalaque'),
('180208', 'Moquegua', 'General Sánchez Cerro', 'Puquina'),
('180209', 'Moquegua', 'General Sánchez Cerro', 'Quinistaquillas'),
('180210', 'Moquegua', 'General Sánchez Cerro', 'Ubinas'),
('180211', 'Moquegua', 'General Sánchez Cerro', 'Yunga'),
('180301', 'Moquegua', 'Ilo', 'Ilo'),
('180302', 'Moquegua', 'Ilo', 'El Algarrobal'),
('180303', 'Moquegua', 'Ilo', 'Pacocha'),
('190101', 'Pasco', 'Pasco', 'Chaupimarca'),
('190102', 'Pasco', 'Pasco', 'Huachon'),
('190103', 'Pasco', 'Pasco', 'Huariaca'),
('190104', 'Pasco', 'Pasco', 'Huayllay'),
('190105', 'Pasco', 'Pasco', 'Ninacaca'),
('190106', 'Pasco', 'Pasco', 'Pallanchacra'),
('190107', 'Pasco', 'Pasco', 'Paucartambo'),
('190108', 'Pasco', 'Pasco', 'San Francisco de Asís de Yarusyacan'),
('190109', 'Pasco', 'Pasco', 'Simon Bolívar'),
('190110', 'Pasco', 'Pasco', 'Ticlacayan'),
('190111', 'Pasco', 'Pasco', 'Tinyahuarco'),
('190112', 'Pasco', 'Pasco', 'Vicco'),
('190113', 'Pasco', 'Pasco', 'Yanacancha'),
('190201', 'Pasco', 'Daniel Alcides Carrión', 'Yanahuanca'),
('190202', 'Pasco', 'Daniel Alcides Carrión', 'Chacayan'),
('190203', 'Pasco', 'Daniel Alcides Carrión', 'Goyllarisquizga'),
('190204', 'Pasco', 'Daniel Alcides Carrión', 'Paucar'),
('190205', 'Pasco', 'Daniel Alcides Carrión', 'San Pedro de Pillao'),
('190206', 'Pasco', 'Daniel Alcides Carrión', 'Santa Ana de Tusi'),
('190207', 'Pasco', 'Daniel Alcides Carrión', 'Tapuc'),
('190208', 'Pasco', 'Daniel Alcides Carrión', 'Vilcabamba'),
('190301', 'Pasco', 'Oxapampa', 'Oxapampa'),
('190302', 'Pasco', 'Oxapampa', 'Chontabamba'),
('190303', 'Pasco', 'Oxapampa', 'Huancabamba'),
('190304', 'Pasco', 'Oxapampa', 'Palcazu'),
('190305', 'Pasco', 'Oxapampa', 'Pozuzo'),
('190306', 'Pasco', 'Oxapampa', 'Puerto Bermúdez'),
('190307', 'Pasco', 'Oxapampa', 'Villa Rica'),
('190308', 'Pasco', 'Oxapampa', 'Constitución'),
('200101', 'Piura', 'Piura', 'Piura'),
('200104', 'Piura', 'Piura', 'Castilla'),
('200105', 'Piura', 'Piura', 'Catacaos'),
('200107', 'Piura', 'Piura', 'Cura Mori'),
('200108', 'Piura', 'Piura', 'El Tallan'),
('200109', 'Piura', 'Piura', 'La Arena'),
('200110', 'Piura', 'Piura', 'La Unión'),
('200111', 'Piura', 'Piura', 'Las Lomas'),
('200114', 'Piura', 'Piura', 'Tambo Grande'),
('200115', 'Piura', 'Piura', 'Veintiseis de Octubre'),
('200201', 'Piura', 'Ayabaca', 'Ayabaca'),
('200202', 'Piura', 'Ayabaca', 'Frias'),
('200203', 'Piura', 'Ayabaca', 'Jilili'),
('200204', 'Piura', 'Ayabaca', 'Lagunas'),
('200205', 'Piura', 'Ayabaca', 'Montero'),
('200206', 'Piura', 'Ayabaca', 'Pacaipampa'),
('200207', 'Piura', 'Ayabaca', 'Paimas'),
('200208', 'Piura', 'Ayabaca', 'Sapillica'),
('200209', 'Piura', 'Ayabaca', 'Sicchez'),
('200210', 'Piura', 'Ayabaca', 'Suyo'),
('200301', 'Piura', 'Huancabamba', 'Huancabamba'),
('200302', 'Piura', 'Huancabamba', 'Canchaque'),
('200303', 'Piura', 'Huancabamba', 'El Carmen de la Frontera'),
('200304', 'Piura', 'Huancabamba', 'Huarmaca'),
('200305', 'Piura', 'Huancabamba', 'Lalaquiz'),
('200306', 'Piura', 'Huancabamba', 'San Miguel de El Faique'),
('200307', 'Piura', 'Huancabamba', 'Sondor'),
('200308', 'Piura', 'Huancabamba', 'Sondorillo'),
('200401', 'Piura', 'Morropón', 'Chulucanas'),
('200402', 'Piura', 'Morropón', 'Buenos Aires'),
('200403', 'Piura', 'Morropón', 'Chalaco'),
('200404', 'Piura', 'Morropón', 'La Matanza'),
('200405', 'Piura', 'Morropón', 'Morropon'),
('200406', 'Piura', 'Morropón', 'Salitral'),
('200407', 'Piura', 'Morropón', 'San Juan de Bigote'),
('200408', 'Piura', 'Morropón', 'Santa Catalina de Mossa'),
('200409', 'Piura', 'Morropón', 'Santo Domingo'),
('200410', 'Piura', 'Morropón', 'Yamango'),
('200501', 'Piura', 'Paita', 'Paita'),
('200502', 'Piura', 'Paita', 'Amotape'),
('200503', 'Piura', 'Paita', 'Arenal'),
('200504', 'Piura', 'Paita', 'Colan'),
('200505', 'Piura', 'Paita', 'La Huaca'),
('200506', 'Piura', 'Paita', 'Tamarindo'),
('200507', 'Piura', 'Paita', 'Vichayal'),
('200601', 'Piura', 'Sullana', 'Sullana'),
('200602', 'Piura', 'Sullana', 'Bellavista'),
('200603', 'Piura', 'Sullana', 'Ignacio Escudero'),
('200604', 'Piura', 'Sullana', 'Lancones'),
('200605', 'Piura', 'Sullana', 'Marcavelica'),
('200606', 'Piura', 'Sullana', 'Miguel Checa'),
('200607', 'Piura', 'Sullana', 'Querecotillo'),
('200608', 'Piura', 'Sullana', 'Salitral'),
('200701', 'Piura', 'Talara', 'Pariñas'),
('200702', 'Piura', 'Talara', 'El Alto'),
('200703', 'Piura', 'Talara', 'La Brea'),
('200704', 'Piura', 'Talara', 'Lobitos'),
('200705', 'Piura', 'Talara', 'Los Organos'),
('200706', 'Piura', 'Talara', 'Mancora'),
('200801', 'Piura', 'Sechura', 'Sechura'),
('200802', 'Piura', 'Sechura', 'Bellavista de la Unión'),
('200803', 'Piura', 'Sechura', 'Bernal'),
('200804', 'Piura', 'Sechura', 'Cristo Nos Valga'),
('200805', 'Piura', 'Sechura', 'Vice'),
('200806', 'Piura', 'Sechura', 'Rinconada Llicuar'),
('210101', 'Puno', 'Puno', 'Puno'),
('210102', 'Puno', 'Puno', 'Acora'),
('210103', 'Puno', 'Puno', 'Amantani'),
('210104', 'Puno', 'Puno', 'Atuncolla'),
('210105', 'Puno', 'Puno', 'Capachica'),
('210106', 'Puno', 'Puno', 'Chucuito'),
('210107', 'Puno', 'Puno', 'Coata'),
('210108', 'Puno', 'Puno', 'Huata'),
('210109', 'Puno', 'Puno', 'Mañazo'),
('210110', 'Puno', 'Puno', 'Paucarcolla'),
('210111', 'Puno', 'Puno', 'Pichacani'),
('210112', 'Puno', 'Puno', 'Plateria'),
('210113', 'Puno', 'Puno', 'San Antonio'),
('210114', 'Puno', 'Puno', 'Tiquillaca'),
('210115', 'Puno', 'Puno', 'Vilque'),
('210201', 'Puno', 'Azángaro', 'Azángaro'),
('210202', 'Puno', 'Azángaro', 'Achaya'),
('210203', 'Puno', 'Azángaro', 'Arapa'),
('210204', 'Puno', 'Azángaro', 'Asillo'),
('210205', 'Puno', 'Azángaro', 'Caminaca'),
('210206', 'Puno', 'Azángaro', 'Chupa'),
('210207', 'Puno', 'Azángaro', 'José Domingo Choquehuanca'),
('210208', 'Puno', 'Azángaro', 'Muñani'),
('210209', 'Puno', 'Azángaro', 'Potoni'),
('210210', 'Puno', 'Azángaro', 'Saman'),
('210211', 'Puno', 'Azángaro', 'San Anton'),
('210212', 'Puno', 'Azángaro', 'San José'),
('210213', 'Puno', 'Azángaro', 'San Juan de Salinas'),
('210214', 'Puno', 'Azángaro', 'Santiago de Pupuja'),
('210215', 'Puno', 'Azángaro', 'Tirapata'),
('210301', 'Puno', 'Carabaya', 'Macusani'),
('210302', 'Puno', 'Carabaya', 'Ajoyani'),
('210303', 'Puno', 'Carabaya', 'Ayapata'),
('210304', 'Puno', 'Carabaya', 'Coasa'),
('210305', 'Puno', 'Carabaya', 'Corani'),
('210306', 'Puno', 'Carabaya', 'Crucero'),
('210307', 'Puno', 'Carabaya', 'Ituata'),
('210308', 'Puno', 'Carabaya', 'Ollachea'),
('210309', 'Puno', 'Carabaya', 'San Gaban'),
('210310', 'Puno', 'Carabaya', 'Usicayos'),
('210401', 'Puno', 'Chucuito', 'Juli'),
('210402', 'Puno', 'Chucuito', 'Desaguadero'),
('210403', 'Puno', 'Chucuito', 'Huacullani'),
('210404', 'Puno', 'Chucuito', 'Kelluyo'),
('210405', 'Puno', 'Chucuito', 'Pisacoma'),
('210406', 'Puno', 'Chucuito', 'Pomata'),
('210407', 'Puno', 'Chucuito', 'Zepita'),
('210501', 'Puno', 'El Collao', 'Ilave'),
('210502', 'Puno', 'El Collao', 'Capazo'),
('210503', 'Puno', 'El Collao', 'Pilcuyo'),
('210504', 'Puno', 'El Collao', 'Santa Rosa'),
('210505', 'Puno', 'El Collao', 'Conduriri'),
('210601', 'Puno', 'Huancané', 'Huancane'),
('210602', 'Puno', 'Huancané', 'Cojata'),
('210603', 'Puno', 'Huancané', 'Huatasani'),
('210604', 'Puno', 'Huancané', 'Inchupalla'),
('210605', 'Puno', 'Huancané', 'Pusi'),
('210606', 'Puno', 'Huancané', 'Rosaspata'),
('210607', 'Puno', 'Huancané', 'Taraco'),
('210608', 'Puno', 'Huancané', 'Vilque Chico'),
('210701', 'Puno', 'Lampa', 'Lampa'),
('210702', 'Puno', 'Lampa', 'Cabanilla'),
('210703', 'Puno', 'Lampa', 'Calapuja'),
('210704', 'Puno', 'Lampa', 'Nicasio'),
('210705', 'Puno', 'Lampa', 'Ocuviri'),
('210706', 'Puno', 'Lampa', 'Palca'),
('210707', 'Puno', 'Lampa', 'Paratia'),
('210708', 'Puno', 'Lampa', 'Pucara'),
('210709', 'Puno', 'Lampa', 'Santa Lucia'),
('210710', 'Puno', 'Lampa', 'Vilavila'),
('210801', 'Puno', 'Melgar', 'Ayaviri'),
('210802', 'Puno', 'Melgar', 'Antauta'),
('210803', 'Puno', 'Melgar', 'Cupi'),
('210804', 'Puno', 'Melgar', 'Llalli'),
('210805', 'Puno', 'Melgar', 'Macari'),
('210806', 'Puno', 'Melgar', 'Nuñoa'),
('210807', 'Puno', 'Melgar', 'Orurillo'),
('210808', 'Puno', 'Melgar', 'Santa Rosa'),
('210809', 'Puno', 'Melgar', 'Umachiri'),
('210901', 'Puno', 'Moho', 'Moho'),
('210902', 'Puno', 'Moho', 'Conima'),
('210903', 'Puno', 'Moho', 'Huayrapata'),
('210904', 'Puno', 'Moho', 'Tilali'),
('211001', 'Puno', 'San Antonio de Putina', 'Putina'),
('211002', 'Puno', 'San Antonio de Putina', 'Ananea'),
('211003', 'Puno', 'San Antonio de Putina', 'Pedro Vilca Apaza'),
('211004', 'Puno', 'San Antonio de Putina', 'Quilcapuncu'),
('211005', 'Puno', 'San Antonio de Putina', 'Sina'),
('211101', 'Puno', 'San Román', 'Juliaca'),
('211102', 'Puno', 'San Román', 'Cabana'),
('211103', 'Puno', 'San Román', 'Cabanillas'),
('211104', 'Puno', 'San Román', 'Caracoto'),
('211105', 'Puno', 'San Román', 'San Miguel'),
('211201', 'Puno', 'Sandia', 'Sandia'),
('211202', 'Puno', 'Sandia', 'Cuyocuyo'),
('211203', 'Puno', 'Sandia', 'Limbani'),
('211204', 'Puno', 'Sandia', 'Patambuco'),
('211205', 'Puno', 'Sandia', 'Phara'),
('211206', 'Puno', 'Sandia', 'Quiaca'),
('211207', 'Puno', 'Sandia', 'San Juan del Oro'),
('211208', 'Puno', 'Sandia', 'Yanahuaya'),
('211209', 'Puno', 'Sandia', 'Alto Inambari'),
('211210', 'Puno', 'Sandia', 'San Pedro de Putina Punco'),
('211301', 'Puno', 'Yunguyo', 'Yunguyo'),
('211302', 'Puno', 'Yunguyo', 'Anapia'),
('211303', 'Puno', 'Yunguyo', 'Copani'),
('211304', 'Puno', 'Yunguyo', 'Cuturapi'),
('211305', 'Puno', 'Yunguyo', 'Ollaraya'),
('211306', 'Puno', 'Yunguyo', 'Tinicachi'),
('211307', 'Puno', 'Yunguyo', 'Unicachi'),
('220101', 'San Martín', 'Moyobamba', 'Moyobamba'),
('220102', 'San Martín', 'Moyobamba', 'Calzada'),
('220103', 'San Martín', 'Moyobamba', 'Habana'),
('220104', 'San Martín', 'Moyobamba', 'Jepelacio'),
('220105', 'San Martín', 'Moyobamba', 'Soritor'),
('220106', 'San Martín', 'Moyobamba', 'Yantalo'),
('220201', 'San Martín', 'Bellavista', 'Bellavista'),
('220202', 'San Martín', 'Bellavista', 'Alto Biavo'),
('220203', 'San Martín', 'Bellavista', 'Bajo Biavo'),
('220204', 'San Martín', 'Bellavista', 'Huallaga'),
('220205', 'San Martín', 'Bellavista', 'San Pablo'),
('220206', 'San Martín', 'Bellavista', 'San Rafael'),
('220301', 'San Martín', 'El Dorado', 'San José de Sisa'),
('220302', 'San Martín', 'El Dorado', 'Agua Blanca'),
('220303', 'San Martín', 'El Dorado', 'San Martín'),
('220304', 'San Martín', 'El Dorado', 'Santa Rosa'),
('220305', 'San Martín', 'El Dorado', 'Shatoja'),
('220401', 'San Martín', 'Huallaga', 'Saposoa'),
('220402', 'San Martín', 'Huallaga', 'Alto Saposoa'),
('220403', 'San Martín', 'Huallaga', 'El Eslabón'),
('220404', 'San Martín', 'Huallaga', 'Piscoyacu'),
('220405', 'San Martín', 'Huallaga', 'Sacanche'),
('220406', 'San Martín', 'Huallaga', 'Tingo de Saposoa'),
('220501', 'San Martín', 'Lamas', 'Lamas'),
('220502', 'San Martín', 'Lamas', 'Alonso de Alvarado'),
('220503', 'San Martín', 'Lamas', 'Barranquita'),
('220504', 'San Martín', 'Lamas', 'Caynarachi'),
('220505', 'San Martín', 'Lamas', 'Cuñumbuqui'),
('220506', 'San Martín', 'Lamas', 'Pinto Recodo'),
('220507', 'San Martín', 'Lamas', 'Rumisapa'),
('220508', 'San Martín', 'Lamas', 'San Roque de Cumbaza'),
('220509', 'San Martín', 'Lamas', 'Shanao'),
('220510', 'San Martín', 'Lamas', 'Tabalosos'),
('220511', 'San Martín', 'Lamas', 'Zapatero'),
('220601', 'San Martín', 'Mariscal Cáceres', 'Juanjuí'),
('220602', 'San Martín', 'Mariscal Cáceres', 'Campanilla'),
('220603', 'San Martín', 'Mariscal Cáceres', 'Huicungo'),
('220604', 'San Martín', 'Mariscal Cáceres', 'Pachiza'),
('220605', 'San Martín', 'Mariscal Cáceres', 'Pajarillo'),
('220701', 'San Martín', 'Picota', 'Picota'),
('220702', 'San Martín', 'Picota', 'Buenos Aires'),
('220703', 'San Martín', 'Picota', 'Caspisapa'),
('220704', 'San Martín', 'Picota', 'Pilluana'),
('220705', 'San Martín', 'Picota', 'Pucacaca'),
('220706', 'San Martín', 'Picota', 'San Cristóbal'),
('220707', 'San Martín', 'Picota', 'San Hilarión'),
('220708', 'San Martín', 'Picota', 'Shamboyacu'),
('220709', 'San Martín', 'Picota', 'Tingo de Ponasa'),
('220710', 'San Martín', 'Picota', 'Tres Unidos'),
('220801', 'San Martín', 'Rioja', 'Rioja'),
('220802', 'San Martín', 'Rioja', 'Awajun'),
('220803', 'San Martín', 'Rioja', 'Elías Soplin Vargas'),
('220804', 'San Martín', 'Rioja', 'Nueva Cajamarca'),
('220805', 'San Martín', 'Rioja', 'Pardo Miguel'),
('220806', 'San Martín', 'Rioja', 'Posic'),
('220807', 'San Martín', 'Rioja', 'San Fernando'),
('220808', 'San Martín', 'Rioja', 'Yorongos'),
('220809', 'San Martín', 'Rioja', 'Yuracyacu'),
('220901', 'San Martín', 'San Martín', 'Tarapoto'),
('220902', 'San Martín', 'San Martín', 'Alberto Leveau'),
('220903', 'San Martín', 'San Martín', 'Cacatachi'),
('220904', 'San Martín', 'San Martín', 'Chazuta'),
('220905', 'San Martín', 'San Martín', 'Chipurana'),
('220906', 'San Martín', 'San Martín', 'El Porvenir'),
('220907', 'San Martín', 'San Martín', 'Huimbayoc'),
('220908', 'San Martín', 'San Martín', 'Juan Guerra'),
('220909', 'San Martín', 'San Martín', 'La Banda de Shilcayo'),
('220910', 'San Martín', 'San Martín', 'Morales'),
('220911', 'San Martín', 'San Martín', 'Papaplaya'),
('220912', 'San Martín', 'San Martín', 'San Antonio'),
('220913', 'San Martín', 'San Martín', 'Sauce'),
('220914', 'San Martín', 'San Martín', 'Shapaja'),
('221001', 'San Martín', 'Tocache', 'Tocache'),
('221002', 'San Martín', 'Tocache', 'Nuevo Progreso'),
('221003', 'San Martín', 'Tocache', 'Polvora'),
('221004', 'San Martín', 'Tocache', 'Shunte'),
('221005', 'San Martín', 'Tocache', 'Uchiza'),
('230101', 'Tacna', 'Tacna', 'Tacna'),
('230102', 'Tacna', 'Tacna', 'Alto de la Alianza'),
('230103', 'Tacna', 'Tacna', 'Calana'),
('230104', 'Tacna', 'Tacna', 'Ciudad Nueva'),
('230105', 'Tacna', 'Tacna', 'Inclan'),
('230106', 'Tacna', 'Tacna', 'Pachia'),
('230107', 'Tacna', 'Tacna', 'Palca'),
('230108', 'Tacna', 'Tacna', 'Pocollay'),
('230109', 'Tacna', 'Tacna', 'Sama'),
('230110', 'Tacna', 'Tacna', 'Coronel Gregorio Albarracín Lanchipa'),
('230111', 'Tacna', 'Tacna', 'La Yarada los Palos'),
('230201', 'Tacna', 'Candarave', 'Candarave'),
('230202', 'Tacna', 'Candarave', 'Cairani'),
('230203', 'Tacna', 'Candarave', 'Camilaca'),
('230204', 'Tacna', 'Candarave', 'Curibaya'),
('230205', 'Tacna', 'Candarave', 'Huanuara'),
('230206', 'Tacna', 'Candarave', 'Quilahuani'),
('230301', 'Tacna', 'Jorge Basadre', 'Locumba'),
('230302', 'Tacna', 'Jorge Basadre', 'Ilabaya'),
('230303', 'Tacna', 'Jorge Basadre', 'Ite'),
('230401', 'Tacna', 'Tarata', 'Tarata'),
('230402', 'Tacna', 'Tarata', 'Héroes Albarracín'),
('230403', 'Tacna', 'Tarata', 'Estique'),
('230404', 'Tacna', 'Tarata', 'Estique-Pampa'),
('230405', 'Tacna', 'Tarata', 'Sitajara'),
('230406', 'Tacna', 'Tarata', 'Susapaya'),
('230407', 'Tacna', 'Tarata', 'Tarucachi'),
('230408', 'Tacna', 'Tarata', 'Ticaco'),
('240101', 'Tumbes', 'Tumbes', 'Tumbes'),
('240102', 'Tumbes', 'Tumbes', 'Corrales'),
('240103', 'Tumbes', 'Tumbes', 'La Cruz'),
('240104', 'Tumbes', 'Tumbes', 'Pampas de Hospital'),
('240105', 'Tumbes', 'Tumbes', 'San Jacinto'),
('240106', 'Tumbes', 'Tumbes', 'San Juan de la Virgen'),
('240201', 'Tumbes', 'Contralmirante Villar', 'Zorritos'),
('240202', 'Tumbes', 'Contralmirante Villar', 'Casitas'),
('240203', 'Tumbes', 'Contralmirante Villar', 'Canoas de Punta Sal'),
('240301', 'Tumbes', 'Zarumilla', 'Zarumilla'),
('240302', 'Tumbes', 'Zarumilla', 'Aguas Verdes'),
('240303', 'Tumbes', 'Zarumilla', 'Matapalo'),
('240304', 'Tumbes', 'Zarumilla', 'Papayal'),
('250101', 'Ucayali', 'Coronel Portillo', 'Calleria'),
('250102', 'Ucayali', 'Coronel Portillo', 'Campoverde'),
('250103', 'Ucayali', 'Coronel Portillo', 'Iparia'),
('250104', 'Ucayali', 'Coronel Portillo', 'Masisea'),
('250105', 'Ucayali', 'Coronel Portillo', 'Yarinacocha'),
('250106', 'Ucayali', 'Coronel Portillo', 'Nueva Requena'),
('250107', 'Ucayali', 'Coronel Portillo', 'Manantay'),
('250201', 'Ucayali', 'Atalaya', 'Raymondi'),
('250202', 'Ucayali', 'Atalaya', 'Sepahua'),
('250203', 'Ucayali', 'Atalaya', 'Tahuania'),
('250204', 'Ucayali', 'Atalaya', 'Yurua'),
('250301', 'Ucayali', 'Padre Abad', 'Padre Abad'),
('250302', 'Ucayali', 'Padre Abad', 'Irazola'),
('250303', 'Ucayali', 'Padre Abad', 'Curimana'),
('250304', 'Ucayali', 'Padre Abad', 'Neshuya'),
('250305', 'Ucayali', 'Padre Abad', 'Alexander Von Humboldt'),
('250401', 'Ucayali', 'Purús', 'Purus');

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
-- Estructura de tabla para la tabla `tbl_cgi_person`
--

CREATE TABLE `tbl_cgi_person` (
  `id_cgi` int(11) NOT NULL,
  `birthday_cgi` varchar(40) NOT NULL,
  `ubigeous_birth` int(70) NOT NULL,
  `civil_status` int(20) NOT NULL,
  `housing_ubigeo` int(70) NOT NULL,
  `home_phone` int(15) NOT NULL,
  `size_cgi` int(10) NOT NULL,
  `conadis_did` int(20) NOT NULL,
  `high_resolution` int(50) NOT NULL,
  `current_ocupation` varchar(70) NOT NULL,
  `situation_cgi` text NOT NULL,
  `cash_type` varchar(30) NOT NULL,
  `level_education` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cgi_requirements`
--

CREATE TABLE `tbl_cgi_requirements` (
  `id_require` int(11) NOT NULL,
  `ubigeo_require` varchar(60) NOT NULL,
  `hospital_require` varchar(50) NOT NULL,
  `weelchair` varchar(10) NOT NULL,
  `prosthesis` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Volcado de datos para la tabla `tbl_data_britanico`
--

INSERT INTO `tbl_data_britanico` (`id_bri`, `user`, `bri_name_fam`, `bri_last_fam`, `bri_cift_fam`, `bri_email_fam`, `bri_specialty`, `bri_settlement`, `bri_cip`, `bri_dni`, `bri_cif_fam`, `bri_dni_fam`, `bri_create_date`, `person`, `bri_grade`, `relationship`, `service`) VALUES
(1, 24, '', '', '', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '2023-06-11T10:50:15-05:00', '1', 22, '', 'aaaaaaaaaaaaaaaaa'),
(2, 24, '', '', '', '', 'asdasd', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '2023-06-13T14:26:39-05:00', '1', 22, '', 'asdasdwsd'),
(3, 24, '', '', '', '', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '2023-06-13T16:24:16-05:00', '1', 22, '', 'asdasdasd');

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
(56, 105, 14, 'Angie arely ', 'Guerrero valdivia ', '325573551', 'welmer800@gmail.com', 'Ingles', NULL, 'assets/images/cip/1677343502.png', 'assets/images/cip/1677343200.png', '27022023080254_64457.jpg', '27022023080254_86109.jpg', '2', '2023-02-27T08:02:54-05:00', 13, 'Hija', 'CCFFAA '),
(59, 24, 0, '', '', '', '', 'qqqqqqqqqqqqqqqqqq', NULL, 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '1', '2023-06-11T10:51:07-05:00', 22, '', 'aaaaaaaaaaaaaaaaaaaa'),
(60, 24, 0, '', '', '', '', '', NULL, 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '1', '2023-06-13T16:24:35-05:00', 22, '', 'zcasdas');

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
(48, 89, '', '', '', '', 17, 2, 'PSICOLOGIA', '27022023095452_79972.pdf', '', 'assets/images/cip/1677003235.png', 'assets/images/cip/1677003134.png', '', '', '27022023095452_35269.pdf', 1, '2023-02-27T09:54:52-05:00', 17, '0', 'ESGE-EPG'),
(49, 24, '', '', '', '', 0, 1, '', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-11T10:51:29-05:00', 22, '0', 'aaaaaaaaaaaaaaaaaaaaa'),
(50, 24, '', '', '', '', 0, 1, '', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-12T11:37:26-05:00', 22, '0', 'asdasd'),
(51, 24, '', '', '', '', 3, 2, 'hhhgg', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-12T11:59:11-05:00', 22, '0', 'sasdasd'),
(52, 24, '', '', '', '', 3, 2, 'hhhgg', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-12T12:04:02-05:00', 22, '0', 'sasdasd'),
(53, 24, '', '', '', '', 3, 2, 'hhhgg', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-12T12:04:11-05:00', 22, '0', 'sasdasd'),
(54, 24, '', '', '', '', 3, 2, 'hhhgg', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-12T12:04:13-05:00', 22, '0', 'sasdasd'),
(55, 24, '', '', '', '', 0, 1, '', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-13T16:24:53-05:00', 22, '0', 'dsssdfsdf'),
(56, 24, '', '', '', '', 0, 1, '', '', '', 'assets/images/cip/1682106550.png', 'assets/images/cip/1676680057.png', '', '', '', 1, '2023-06-13T16:29:24-05:00', 22, '0', 'alskjdas');

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
  `ext_frwrd_d` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_drive`
--

INSERT INTO `tbl_drive` (`id_file`, `frwrd_id`, `name`, `ext_frwrd_d`) VALUES
(175, 4, '6453c4afd0627_0.jpeg', 'jpeg'),
(176, 4, '6453c61099922_0.pdf', 'pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_drive_rcvd`
--

CREATE TABLE `tbl_drive_rcvd` (
  `id_file_rcvd` int(11) NOT NULL,
  `rcvd_id` int(11) NOT NULL,
  `name_rcvd` varchar(100) NOT NULL,
  `ext_rcvd_d` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ficha`
--

CREATE TABLE `tbl_ficha` (
  `id` int(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sex` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_civil` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `tb_d` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `ubigeo_birthday` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ubigeo_home` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `urbanizacion` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tbl_ficha`
--

INSERT INTO `tbl_ficha` (`id`, `user_id`, `sex`, `estado_civil`, `tb_d`, `ubigeo_birthday`, `ubigeo_home`, `urbanizacion`, `direccion`) VALUES
(79, 24, 'M', 'Casado', '07/06/2023', 'Amazonas - Chachapoyas - Chachapoyas', 'Amazonas - Chachapoyas - Chachapoyas', 'kkk', 'jjj');

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
(2, 'I DE PIURA, II DE RIMAC, III D', 'Fax', '024', '24/02/2023', 'Comun', 'OLAYA', '', 'jpg', 0, 'Remite informacion relacionada al apoyo social', 11, '', ''),
(7, 'iiiiiiiiiii', 'iiiiiiiiii', 'iiiiiiiiii', '11/06/2023', 'iiiiiiiii', 'iiiiiiiiiii', '', 'png', 0, 'iiiiiiii', 1, '', '');

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
-- Estructura de tabla para la tabla `tbl_habitacion`
--

CREATE TABLE `tbl_habitacion` (
  `id_habitacion` int(4) NOT NULL,
  `ubigeo_home` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `urbanizacion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tbl_habitacion`
--

INSERT INTO `tbl_habitacion` (`id_habitacion`, `ubigeo_home`, `urbanizacion`, `user_id`) VALUES
(10, '', 'Urbanizacion', 24);

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

--
-- Volcado de datos para la tabla `tbl_neogicates`
--

INSERT INTO `tbl_neogicates` (`id_neogicates`, `name_neogicates`, `jefe_neogicates`, `m_neogicates`, `s_neogicates`, `descrip_neogi`) VALUES
(2, '', '0', 'null', '', ''),
(3, '', '0', 'null', '', ''),
(4, '', '0', 'null', '', ''),
(5, '', '57', '[\"57\"]', '6', '');

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
  `descrip_office` varchar(70) NOT NULL,
  `first_office` int(11) NOT NULL,
  `second_office` int(11) NOT NULL,
  `members_office` varchar(100) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_office`
--

INSERT INTO `tbl_office` (`id_office`, `name_office`, `descrip_office`, `first_office`, `second_office`, `members_office`, `rol`) VALUES
(6, 'venta', 'esta se encarga de administrar', 57, 0, '[\"57\"]', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_orders_services`
--

CREATE TABLE `tbl_orders_services` (
  `id_order` int(11) NOT NULL,
  `ep_order` text NOT NULL,
  `pp_order` text NOT NULL,
  `name_order` text NOT NULL,
  `dpto_order` text NOT NULL,
  `phone_order` varchar(9) NOT NULL,
  `register_order` varchar(40) NOT NULL,
  `status_order` int(11) NOT NULL,
  `line_order` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_orders_services`
--

INSERT INTO `tbl_orders_services` (`id_order`, `ep_order`, `pp_order`, `name_order`, `dpto_order`, `phone_order`, `register_order`, `status_order`, `line_order`) VALUES
(15, 'https://www.no-site.com', 'Hi!  tetraval.myds.me \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd businеss оffеr аbsоlutеly lеgаl? \r\nWе prоpоsе а nеw lеgаl mеthоd оf sеnding rеquеst thrоugh соntасt fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh businеss prоpоsаls аrе sеnt, n', 'Anthonydiura', '', '843528335', '2021', 1, '03'),
(17, 'Cpu core i3', 'Lenta..\r\nFormateo\r\n', 'Bernaola Orihuela Pável ', 'Inspectoria-preboste ', '950050211', '2021', 1, '03'),
(18, 'Problemas de Red', 'No tengo acceso al Siscobam', 'Teresa Dávila Flores ', 'Logística - Abastecimiento', '948495900', '2021', 1, '03'),
(19, 'No tengo ref', 'No accedo al siscobam ni puedo imprimir', 'Luz García carrasco', 'Delog', '995101096', '2021', 1, '03'),
(20, 'Impresora ', 'Impresora no imprime en red', 'Ramirez García Robert', 'DAL', '980123888', '2021', 1, '03'),
(21, 'Impresora ', 'Impresora no imprime en red', 'Ramirez García Robert', 'DAL', '980123888', '2021', 1, '03'),
(23, 'CPU sin número de serie DATAONE y monitor HP serie 6CM5460LGJ', 'Placa dañada', 'Millán Vásquez Manuel', 'DAL', '943496489', '2021', 115, '03'),
(25, 'CPU serie Nro MXL6121HCL  y monitor Samsung sin número de serie', 'Placa malograda', 'Manuel Millán Vásquez', 'DAL', '943496489', '2021', 114, '03'),
(26, 'Impresora epson L355 código s42k258786', 'No imprime cabezal dañado almohadilla bota tinta', 'Tco yacolca', 'Di', '958044002', '2021', 112, '03'),
(28, 'Impresora epson L375 serie wbjk045689', 'Cabezal dañado', 'Iris morales', 'Inguar', '945349040', '2021', 111, '03'),
(30, 'Epson L355 serie s42k121990', 'Cabezal dañado', 'Cap Ep morales amaringo iris', 'Inguar', '945349040', '2021', 110, '03'),
(31, 'Puc no enciende ', 'Diagnóstico ', 'Tco Ruiz ', 'Inguar ', '928875270', '2021', 1, '03'),
(46, 'Sistema sapte', 'No ingresa al sistema, servidores en man', 'Baldimir Caxi ', 'Deper ', '991247926', '2021', 1, '03'),
(47, 'Sistema sapte', 'Sistema no ingresa ', 'Tco rengifo', 'Deper ', '954955054', '2021', 1, '03'),
(48, 'Impresora Hp p4015', 'No Impre me doble hoja ', 'Érica Ramirez ', 'Adquisiciones ', '934728209', '2021', 1, '03'),
(61, 'Problema de red ', 'No hay conectividad ', 'Eddy Jets son Antonio guerrero', 'Delog abastecimiento ', '945139388', '2021', 1, '02'),
(62, 'Pc', 'Se prende y se paraliza', 'Tco2 Torres Rodas Nazario', 'DDEPER MYG', '900587363', '2021', 1, '02'),
(63, 'Cp problemas con el sistema operativo ', 'Pide constantemente actualiza lenta', 'Troncos Ruiz', 'delog ', '953951690', '2021', 1, '01'),
(64, 'Problemas de impresion', 'Conectividad con la impresora en red del centro de impresión ', 'So1 EP Sara lucia López campos', 'JEM-COEDE', '939241365', '2021', 1, '03'),
(65, 'Cpu no enciende ', 'No enciende cpu falla total', 'Tco yacolca', 'Dpto información ', '969309411', '2021', 1, '02'),
(66, 'Las computadoras no tienen antivirus', 'Las 4 computadoras no tienen antivirus falta actualizar ', 'Tco yacolca', 'Dpto información ', '969309411', '2021', 1, '02'),
(67, 'Impresora canon', 'Impresión en red de 6 computadoras del departamento de información del Coede', 'Tco yacilca', 'Dpto información ', '969309411', '2021', 1, '03'),
(68, 'Red', 'No tengo acceso a la red del ejército ', 'Tco vivas ', 'Jeduce', '963947793', '2021', 1, '01'),
(69, 'Red no puedo ingresar ', 'Cable dañado no se conectar a la red ', 'Tereza Davila ', 'Adquisiciones ', '948495900', '2021', 1, '03'),
(72, 'sistema electrónico y digital del polígono tiro de la efte', 'no funciona ', 'TC schanks', 'EFTE', '982518634', '2021', 116, '04'),
(73, ' qwe qweqwe qweq ', 'q weq weqwe qwe', ' qweqweqwe', ' qweqwe qwe', '212312312', '2023', 0, '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_orders_status`
--

CREATE TABLE `tbl_orders_status` (
  `id_statuso` int(11) NOT NULL,
  `name_statuso` varchar(250) NOT NULL,
  `desc_statuso` varchar(250) NOT NULL,
  `register_statuso` varchar(50) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_orders_status`
--

INSERT INTO `tbl_orders_status` (`id_statuso`, `name_statuso`, `desc_statuso`, `register_statuso`, `order`) VALUES
(31, '01', 'Nueva Orden', '2021-09-03T16:30:32-05:00', 45),
(49, '04', 'wd qwedq sdas dasdadasd', '2021-09-03T19:15:42-04:00', 45),
(50, '02', 'diagnostico , en el taller de informática ', '2021-09-06T18:36:50-04:00', 32),
(51, '02', 'diagnostico ', '2021-09-06T18:37:17-04:00', 31),
(52, '03', 'SOLUCIONADO ', '2021-09-08T23:39:34-04:00', 21),
(53, '03', 'SOLUCIONADO ', '2021-09-08T23:40:26-04:00', 19),
(54, '03', 'SOLUCIONADO ', '2021-09-08T23:41:02-04:00', 18),
(55, '03', '', '2021-09-08T23:42:13-04:00', 20),
(56, '01', 'Nueva Orden', '2021-09-09T11:25:29-05:00', 46),
(57, '03', 'se formateo.', '2021-09-09T12:28:40-04:00', 32),
(58, '03', 'se formateo', '2021-09-09T12:29:11-04:00', 31),
(59, '02', 'formateo.', '2021-09-09T12:31:12-04:00', 17),
(60, '03', 'cuartel general, servidores en mantenimiento.', '2021-09-09T12:33:38-04:00', 46),
(61, '01', 'Nueva Orden', '2021-09-09T11:44:18-05:00', 47),
(62, '01', 'Nueva Orden', '2021-09-09T11:46:15-05:00', 48),
(63, '01', 'Nueva Orden', '2021-09-09T11:46:17-05:00', 49),
(64, '01', 'Nueva Orden', '2021-09-09T13:19:10-05:00', 50),
(65, '01', 'Nueva Orden', '2021-09-09T13:19:12-05:00', 51),
(66, '01', 'Nueva Orden', '2021-09-09T13:20:24-05:00', 52),
(67, '01', 'Nueva Orden', '2021-09-09T13:21:40-05:00', 53),
(68, '01', 'Nueva Orden', '2021-09-09T13:21:42-05:00', 54),
(69, '01', 'Nueva Orden', '2021-09-09T13:21:43-05:00', 55),
(70, '01', 'Nueva Orden', '2021-09-09T13:21:45-05:00', 56),
(71, '01', 'Nueva Orden', '2021-09-09T13:21:47-05:00', 57),
(72, '01', 'Nueva Orden', '2021-09-09T13:24:37-05:00', 58),
(73, '01', 'Nueva Orden', '2021-09-09T13:33:46-05:00', 59),
(74, '01', 'Nueva Orden', '2021-09-09T13:34:25-05:00', 60),
(78, '03', 'solucionado ', '2021-09-14T09:15:04-04:00', 48),
(79, '03', 'solucionado ', '2021-09-14T09:15:41-04:00', 47),
(80, '03', 'caxi formteo', '2021-09-14T09:16:49-04:00', 17),
(81, '01', 'Nueva Orden', '2021-09-14T08:41:33-05:00', 61),
(82, '01', 'Nueva Orden', '2021-09-14T09:00:22-05:00', 62),
(83, '01', 'Nueva Orden', '2021-09-14T09:08:17-05:00', 63),
(84, '01', 'Nueva Orden', '2021-09-14T09:34:57-05:00', 64),
(85, '01', 'Nueva Orden', '2021-09-14T10:06:56-05:00', 65),
(86, '01', 'Nueva Orden', '2021-09-14T10:10:48-05:00', 66),
(87, '01', 'Nueva Orden', '2021-09-14T10:26:52-05:00', 67),
(88, '01', 'Nueva Orden', '2021-09-14T11:23:57-05:00', 68),
(89, '03', 'se configuro 6 equipos ', '2021-09-14T12:25:31-04:00', 67),
(90, '02', 'caxi', '2021-09-14T12:25:58-04:00', 66),
(91, '02', 'caxi', '2021-09-14T12:27:05-04:00', 65),
(92, '02', 'caxi', '2021-09-14T12:27:10-04:00', 65),
(93, '02', 'caxi', '2021-09-14T12:28:17-04:00', 65),
(94, '03', 'mendoza: ya imprime \r\n', '2021-09-14T12:28:59-04:00', 64),
(95, '03', 'Mendoza : se hizo un informe técnico ', '2021-09-14T12:33:28-04:00', 28),
(97, '03', 'Mendoza : se hizo un informe técnico ', '2021-09-14T12:35:21-04:00', 26),
(98, '03', 'Mendoza : se hizo un informe técnico ', '2021-09-14T12:35:42-04:00', 25),
(99, '03', 'Mendoza : se hizo un informe técnico ', '2021-09-14T12:36:02-04:00', 23),
(100, '01', 'Nueva Orden', '2021-09-21T08:41:59-05:00', 69),
(101, '01', 'Nueva Orden', '2021-09-22T12:11:16-05:00', 70),
(102, '01', 'Nueva Orden', '2021-09-23T11:04:40-05:00', 71),
(103, '01', 'Nueva Orden', '2021-09-23T22:49:16-05:00', 72),
(104, '01', 'Nueva Orden', '2021-09-30T11:39:40-05:00', 73),
(105, '01', 'Nueva Orden', '2021-09-30T11:47:43-05:00', 74),
(106, '03', 'todo ok', '2021-10-06T12:02:22-04:00', 69),
(107, '02', 'formateo', '2021-10-07T09:50:28-04:00', 74),
(108, '01', 'Nueva Orden', '2021-10-07T08:59:47-05:00', 75),
(109, '03', 'adquisición de placa y fuente.', '2021-10-07T10:39:51-04:00', 75),
(110, '01', 'Nueva Orden', '2023-02-14T07:45:12+00:00', 76),
(111, '01', 'Nueva Orden', '2023-02-14T07:47:11+00:00', 77),
(112, '01', 'Nueva Orden', '2023-02-14T07:47:34+00:00', 78),
(113, '01', 'Nueva Orden', '2023-02-14T20:50:19+00:00', 79),
(114, '02', '', '2023-02-14T15:51:17-05:00', 79),
(115, '01', 'Nueva Orden', '2023-02-14T21:20:56+00:00', 80),
(116, '01', 'Nueva Orden', '2023-02-20T21:19:19+00:00', 81),
(117, '02', '', '2023-02-20T16:20:06-05:00', 81),
(118, '03', '', '2023-02-20T16:20:37-05:00', 81),
(119, '01', 'Nueva Orden', '2023-02-24T14:32:00+00:00', 82),
(120, '01', 'Nueva Orden', '2023-02-24T14:32:05+00:00', 83),
(121, '03', '', '2023-02-24T09:33:41-05:00', 72),
(122, '02', 'wwdasd', '2023-05-12T17:53:44-04:00', 83),
(130, '04', '<h1><i>cancelado</i></h1><ol><li><b></b><b>cancelado 1</b></li><li><i><b>cancelado 2</b></i></li><li><i><b>cancelado 3</b></i><b></b></li><li><i><b>no se</b></i><b> no italixc</b><i><b></b></i></li></ol>', '2023-05-16T15:49:37-05:00', 72),
(131, '02', '<b>MANTENIMIENTO DE PC<br></b><ol><li>PLACA DAÑADA<b></b></li><li>DISCO DAÑADO</li><li>MONITOR DAÑADO</li></ol>', '2023-05-16T16:10:00-05:00', 68);

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
-- Estructura de tabla para la tabla `tbl_reason_disabilty`
--

CREATE TABLE `tbl_reason_disabilty` (
  `id_reason` int(11) NOT NULL,
  `causal` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `invalidity_date` varchar(40) NOT NULL,
  `accident_site` varchar(50) NOT NULL,
  `diagnosis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `neogicates` varchar(11) NOT NULL,
  `cgi_status` tinyint(1) NOT NULL,
  `estado_civil` varchar(30) NOT NULL,
  `fecha_nacimiento` varchar(30) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `ubigeo_birthday` varchar(100) NOT NULL,
  `ubigeo_home` varchar(100) NOT NULL,
  `urbanizacion` varchar(500) NOT NULL,
  `tel_habitacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`, `cgi_status`, `estado_civil`, `fecha_nacimiento`, `sexo`, `ubigeo_birthday`, `ubigeo_home`, `urbanizacion`, `tel_habitacion`) VALUES
(24, 1, '98c8ee11c22643db1e9b93d52c520808b33ed11cffa62d42d4a55b3765ec728bcd4626b4c713cadca0f8914cdc18955db58b22608c69c8428ee1218d8de32b4bUxumgcMUHRktmF/DCU7Bpa+vvc8MPwHNhgsdnUHVLFI=', '0d72b3f707ba1c849c99cecba0bfcdbc', 'bfe32c1c2050f849a06f56b365d565349426528f127aba9daf052b2c80fc1f1f5cbdb2a9497496a59f40052e8d3dc7ec5931987626d9a46c493e7209355fe9baNxywUDWcFBTHxur3z72uDnQv3bijQdiUzJDC731pDbU=', 'Marlon emerson', 'Valenzuela Estrada', '22', 'valenestradam1@gmail.com', '926730944', '', 'assets/images/cip/1686769422.png', 'assets/images/cip/1688411680.png', '2022-10-28T18:29:13-05:00', '1', 2, 'assets/images/users/1686769635.png', 'assets/images/fingerprint/1686769431.png', '75214038', '', '2', '', 0, 'Divorciado', '27/03/1983', 'F', 'Amazonas - Chachapoyas - Balsas', 'Lima - Lima - Chorrillos', 'Urbanizacion 2', '4444444444444444'),
(26, 2, '6a25310569fe05bcff99a4d07d68699449cb2e594b6ae8f6a13c03132b45a7479c11de28192789450590fbd36d8798f225a0f8e432f79549f8f8f8b8837c77acRgjPMRjRxzBSm+L3+aps7cxMdli2x1V/lxoLBoZUIww=', 'e96a3966eac1fce863eae454a94fa4af', 'bde180f50266f0b9c090253f7e473026b13b06364d1db3bf3d8de67529ef076850c2d3df2ad42bfa5b68ecfae88e4e189138e78ab8ca95d89122b43126b9c5638Cwez25wo6OxWftILyTbwDrBMjXSLAEIces30jaCScg=', 'Roberto', 'Mendoza perca', '22', 'beto1perk@gmail.com', '972252744', '', 'assets/images/cip/1677188046.png', 'assets/images/cip/1677187974.png', '2022-11-03T22:32:07-06:00', '1', 2, 'assets/images/no-image.png', 'assets/images/fingerprint/1677188125.png', '', '', '1', '', 1, '', '', '', '', '', '', ''),
(27, 4, 'c51cad4291ddb52621b6a6c086d27387e63856a0cec9204497fdcfbde28e547fa4a829127c64c1ae252706ded9c6d064c5bc5d33d153364212b2b45e1a6d9914IJtjggrH0ZAe4hYwb4xKrm2TMbuZBSk/p4BIboECEVw=', 'f5935bfe675c31372dd8f66c7a81f6af', '7fc04c37cb269ee1cbfbf0316eb966c15429bf7ff1d2f191d2bee9a7b6e0615b3b008957e3344e04940e137d9ebeabecb46912f2781fcabe8121f56b492f85f3o/3HXzhRPypkI9UsJCJ04ca0CDm07/DmIGhZ9HF3AJA=', 'Javier mario', 'Acosta cancho', '15', 'javiermarioacosta27@hotmail.com', '960315252', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-01T20:26:43-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(28, 4, 'd44f7aa4ff3ad5da972ef155682678a2d7d23bdfb013ce1eb2661b8eec9ec43afb3ac6a04c5d2bfa1ce079439afee47d7ced2c5a36c4ad49d1fa34bfb0d9842dc0dKZsxgNITcKCKGXpVHiVPJx0+/gn5JXRpfI9D6O9g=', 'c56dafb41b9fdba45bc2577636fd2873', '2a6edaa624ae16535198e106c5d5688d97d5632406e7c5690e3c62b58022d5559df4bcf594da738e1612ba6167e80a6194df76a1b03247d76374f28c670c67f3wbRNUf8ItxVOKFBZyiuhSk3C0Qe2RskVby/pTYe8nu4=', 'Daniel Agustin ', 'Muñante Valencia ', '22', 'danielmv94@hotmail.com', '957219455', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-03T16:20:17-06:00', '0', 1, 'assets/images/users/1672701110.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(29, 17, 'b24deba49b8b41dac9f31fffe5c81c4ad166f67a176ccb56e8a81fabe2ace5a92547383c0ff1632b59572f9cf6c0afcd014652e5c36e4de5b729429910caab9d3g0rMKgedVk2utc+G8gQgk2QUz/IGPtvNfVXykm+wNA=', '0f8c3ba05231a3ede0089444bb74f759', '19fe72493dbbe154142a3862f0943f97a2b5437d3e3b0ebab99375167b52552d9558bd529d3326410095e72611a4e4c77c67365de465c75dc43c00930e44b62bx0B9FFDimC4hQg9K9CCsup/4ecMObZVrMTNzOthkL78=', 'JONATHAN HIPÓLITO', 'GANDULIAS JIMENEZ', '6', 'jonganjim86@gmail.com', '958104231', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-04T19:46:01-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(30, 19, '23261525c3b2a924b69526d827ae475c046399252f9557fefc83bc3933627240180046f98e658f05e862c34386cf70afa35c3282796e678d2fd898dd28ef0fecp8ISkP6QLhLqMy2KiqkkjyflMML8pZdMEauvB+feFGI=', 'b830a904fa342867947d7dbf9a58b13f', '6d818d1cfcbce519c2f435febf2043c2079fd006966f8bc4a2dcd6714f8088ddf84170143e64bb33b792bed603d0374505058505f878277e53fd1996a2d3f0b4pcCpHBLayNbHsr0qiR7nYYvWIz8uCIUVzMQawnS8y14=', 'Ricardo', 'Huanilo Tarazona ', '5', 'Ricardohuanilo79@gmail.com ', '996132986', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T09:19:41-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(31, 18, 'cf11c800fe496cace488ffaeab96b9de6e2a549e9ad2bea312569eaecc3195623f6d57140f926c10a78788b5a9128b159214d684556c80cc91beaf1c78da18ff6pueVVWP6bEbsb7CfX3/cb2+wz2v0CmZPO55Py/sFvw=', '38039a37a2d97f5aa5a4c37d50b09b13', 'a5829a6e5afdf81f743b37c79088ba7df3517f0a5347d5635f7163e48df25f74205b25c8b8a3d470858ecdd2402ece245c7760bebf288e549e5bb5c26a386246n11qExzoxv2oLDjP0AESj0rWwcP+SM6m/ppWh/FMa2Y=', 'Ricardo Enrique ', 'Sampen Aida ', '7', 'ricardo_sa48@hotmail.com ', '956030396', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T13:04:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(32, 20, '03caa592c41ad107e67cf567909abf34a9a3c96672f06039e904da62c9fb45c94c09460032a9dd9600957648001fbd44fa2dfc84d86a1444891b55b79a510beaKU0MkDoS4ibXIAFQVr5DRDuolHTvR6Q0xTk/tnhFEvo=', 'da2371822ac87fda3e6c6e66c7e20e80', '2cdd14a95699f25df38e10d35b341260cea7b281cabed16e7e85e1d4ad817bdb6590d52ebfc918a56e7177dbfcc0730159be071b496022b3f571e5081d967824/+u9Io3VUASuOZX9oEgvqxcJUn1nh2PzNMG+PWCV+gc=', 'Jose ', 'Espinoza Lucho ', '4', 'Jepelucho@hotmail.com ', '999044558', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-05T16:28:30-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(33, 21, '1e5580ceca0842b71f050dbbb95553f2016fbb8b2c15d884e9c057e2703a9963485852a128d26e7e7864e1c4944b92293ca05738ffd6729d48747df8e77b39d6DxUHtNEGvzhx4J9BGsE9HEffP9jolthE8RJWJ+yhVEk=', '924502a06d963586c067c2eb12b9a640', '2c52370f5e726038b706bca9b9cf47f8a6ff52217783c21db6b2046864a04966011a2ed91bc8c8af7b67ca1d5d3ba97e2999a5809a9abcf9a6af154149c195908SQd6xB//TOENBzUMXvoo8cTINOHcQzN/kku/Q/1FmI=', 'Ander ariel', 'Bustamante menacho', '22', 'Anderariel@hotmail.com', '979606527', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-06T16:51:21-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(34, 14, '0fde97aeb43a5f16f5eb3882708fe9b94e84e123213ed4f7fe23155ef3e2e02e1d8179f8d47d8bbc7a3ba798f5704ca640da3847eab39c8000af9a8f202949278/6nRFS5IMs3TIm8rkDBxSpwc4nArVwzmp6k0q/UeDQ=', '0f08ce3b2beffff9d0eff78522fb884b', 'f9ee100b0d679be8eb3784ab8bc58d82c1ae7410a56f7a1edcd22c9d71eb23187acfc60f9bbd8ea5391b07084ff7ee2747ca81ba7c7184983e1151143613804acrBHijt31RWyIMX1rPF8m7L1mZu4+l3icUp5FM1oTtc=', 'nelson manuel', 'esquivel jesus', '8', 'nelsonesquiveljesus@gmail.com', '949545262', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-07T10:53:00-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(36, 15, '4c8de3f011e6b3378097c0f4b83ae7449956f1824b8479a707308f767d5f3b2ecc672b537263979822a3d10e1a4ec789b112915c663c34381ab2972271953002hjPv16GcRaWoSVJYXTslZ+4irCpkQ8x4TenegxydKO0=', '42f1113833a07c895f4f2400bbf2f9bb', '437c15e3c9570453e07fa569364ac07b9823e10f9f3cd456cd16d8751da40f66b4e878e6c21bc62cc459938af22290c64773d588f80b6e9b41832ddaf4fb2dbevgj/lNfXO+mgkGNDRI8MvQS+pUdUslQDGwfX9OvK7oI=', 'Dayvi Jimmy ', 'Villegas Huarcaya ', '5', 'dayvi1977@gmail.com', '901661304', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-08T05:45:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(37, 22, '6ffcd4c2d187238b899a9606356ea57995c1a08e4aab427908846f2022398ccb8012a7190058f9e211d6a755b870401f8b1c06f665028c054be03e82c10bb264SH96xcfqywK6CLn/HHK+Fb2PusMZMlkmvJJgL+58D48=', 'd4509062ab274e66aed053c3d0167114', 'b53a35e10dd2dd3b6a5347b727a3e7c8cab9b150889d015181216ebcc22e89cedf5e35568063bc064e5557241e0793c1a1e641b113d79505a695d2b581e821b7fCD+WPRtvfI+DheZt6sPB4jtrlWS4DLRxFZ+WhtFbhE=', 'Larrinilto', 'Ocas Azañero', '13', 'larrinilto18@gmail.com', '999800318', '', 'assets/images/cip/1673403084.png', 'assets/images/cip/1673402991.png', '2022-12-08T21:40:11-06:00', '0', 1, 'assets/images/users/1670557474.png', 'assets/images/fingerprint/1673403259.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(38, 23, 'f3e40313772ec3d05545121dd64ea49f74624195bceccad18d5460e70afe137f6e0fed3a31852b36e2041ce7ffa017717154a2de8a22deeb8a73915c17d82051f66wHAbH2vDMHtnltN88LZzggbTVCLL0GorR4ftpmvs=', '5c1718b7018238b9d8bdfb91d02108ba', 'fd52b116398735123eaa079f866239cfd4fc02c5834d0618068d70ef4fa74208a74559ba21440bed4dcd254e8bd9678d9e2c2242a2c1e12d870f3abd0912e950gBLuoHrsGe5NXnFJniD+VmZXelQ2zRVI7CSh2b0yHrY=', 'Danny Anderson', 'Huamani Chucuya', '15', 'psdannyhuamani@gmail.com', '930302567', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-09T07:53:55-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(39, 24, '404a625d18121654aa684819b46797905b293ca232c293e5877c8eac507366de9ba514172749c134821a5d0f897d05743865816759a4396c199033c5e44bb20bWkHY2TnDVWhyjBbhLhbuzh/RNntO2yea88cvt7qVzUg=', '833fd5185a5812044668e682a588ee75', '29b0c5fb787211ebed7a4b99273253e532a0a75223f1df31faef81e80f4655207c26f2a77035e901b3ec89e00fec4dd63344c36ac1e28a067505344602dcc4892ZmuAlevByQt4jxdYv32twbsg6ofXPhEc6DmTCZv9T8=', 'Christian Oswaldo', 'Jauregui Teran', '6', 'cricri2658@gmail.com', '975044058', '', 'assets/images/cip/1677237456.png', 'assets/images/cip/1677237460.png', '2022-12-12T09:20:49-06:00', '0', 1, 'assets/images/users/1677237465.png', 'assets/images/fingerprint/1677237447.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(40, 25, '0d5a5b5a0be8b55a9481e958d24eedc1865cfa07583d16d16a5c60581c6e9a5b60bdc58d4cc70c0316737358007da5dd3ca9137e421f6240b7391080b9a5e2c7f94EB0Qb8tcrzHnQm9J+rPzQrlWGYYLtD5nZX3SkpAU=', '9a244dcaec269e816040fb7f2933b78a', '2e02200fa52e728769633be52dd47e112b96fa9139888a8256a7c6303f8b06fd9e8100570fea6423ce8b78488de012dc487a5e25fbfc8a091586e55c57b1fcd6GO7pP10Z9F2HYEkALXeZVEZzfFc/+w8XV2AOD8DqHjo=', 'Jaime ', 'Santa Cruz Pinela', '7', 'xtoverdad@hotmail.com', '968019017', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-12T11:22:24-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(42, 26, '2ac77375eb0d818c870ec412760a3d7b688f2199e360037bafe87f82528eb1e34e123c869b3da99fbab2eecc2509e4bd3ebb44584a5fc801f93329c027b0068d1TDxLwt3g03M518MJk+SrX90d4K0lh2+jBuZa0eiLak=', '506f26e4d8793d800d4c26a727035021', 'a182dacd41fc955353ca6aeba4abd74a86cb9558961a57023c3dc1248894938849f626dd7241e4ea069cd9756da252b82d0bb48ea881a3bb7373abb30f8127a43KzKS25BirM16dsl5QVZv8tPTGcwoexVoaaf43v45nY=', 'Segundo Julio', 'Maldonado Milian ', '14', 'maldonadomilian.jmm@gmail.com', '945343661', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T07:57:33-06:00', '0', 1, 'assets/images/users/1671113003.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(44, 16, '1f5db2ff9093ebacc2c81fccaf9758dea12d3c32ec73063295b8da4175eb5819fc2b5d946dfb7a5d376c5477df2e48aa43a8a99ef19ae98e1fb50eca42054d0ayeZ+DIzKPro/b6yt/u/YoZdT5f0hD7ft8d9zLBixa1Q=', 'b7e2f3f9215b8e3e7672d0493efb7bb8', '14af37e9516fdfd449a5340407b4daf5ec3db540adce57ddbbb81f9315502d5b80acdb187ffee7cefcf0a5a22f651a9c2e2fe12d0ca4f915907c9fe07d721c0ds5J0IyppcIja7RBXglwtwIJuNKSZ9GfX3PrydosgKWk=', 'Julio ', 'Guzmán ', '22', 'juguar01@hotmail.com', '981162510', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-15T11:15:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(45, 26, '660f22e425eda281a8ca71d175c7e1a33a95879667b573b0a1cbd81944188e17994da7e119ef8ec0c7cde85511eb3f849683a7f56b1835b8923ccdf19e06a82fusV35K3y2Sh7SNqOS8e/b74LU01PsKXPjTEGYlQF7xA=', '38340c38aaa625db95839d70e904e353', '4e433900f50fec2d17cb7ca533e145026ef95e3f3072bd9ec29fc5181e5c433ee397737a339aa62049de8a76357a93783d6aa20163738f7b2d09b550b7ab8c86z8OUpW3eSJYGKjVdUtC6ne3QDt7751ea7HvgUpHjS3c=', 'Oscar', 'Guevara Ramirez', '22', 'ocurra_24@hotmail.com', '974614777', '', 'assets/images/cip/1671125828.png', 'assets/images/cip/1671125767.png', '2022-12-15T11:31:03-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1671125892.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(46, 27, 'd01ee4fc1c3f98fee5f423f7040bb09d93b8afd53e6db1af5c29ac93539e572436b728d4c8601d6b9492efbf7a43bbec30ef3a81d96f24c0de6d440fb3cfe8648lzLnN1xH49f2srlZz87k01xWr9vmuuHPvEOCNP8bw4=', '2bbe493e6b4c34935ee38baf69c87bb7', '592ddc90d2ad01ac2705517793b115563a57fc83cce7bf6fa11af5ab1989d1fd06f28800dc19748287af9a05af4424e33aaa1f7078d3a8b750bb9b9242ecb768lh8H+mBGzMUrVqJH4smWB1YOQj3EbRQjlW/VlUyyi1w=', 'Wilfredo Jesús', 'Bastidas Huayta', '8', 'wilfredo_bastidas@outlook.com', '947514654', '', 'assets/images/cip/1671210100.png', 'assets/images/cip/1671210052.png', '2022-12-16T10:50:14-06:00', '0', 1, 'assets/images/users/1671210368.png', 'assets/images/fingerprint/1671210083.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(47, 28, '6de110188636a25f3298183aa9d475d952ec5826f6438d3a95bbad22c577ef99305fef48655cb72ea627ed5605c0a3bb7332df93e3337f1cf1fc62b8446b6985CyP0B9Yxd3hzTj74iP5uUandtiZC1tWQjRPJLCXYCwQ=', '9bacb65511186ab00199e566c644b70d', '57d5ecde1b460032dc19db4060015d15e95c11d1dbac14f7546a6126f1249691c57ddb68a43cee93d475a412a10ae15b8eb739b2971308c5ea7bb3f5e346f017/yTVNc6NYWSK8qZqFa0HxPeM9rZCQNPAkjdz/QXdkus=', 'Jorge Rolando', 'Pachamango Novoa ', '5', 'jrpn.abogado@gmail.com ', '968304009', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-17T04:34:49-06:00', '0', 1, 'assets/images/users/1671273669.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(49, 30, 'a3257844900d9fad65f9b430ee14ad394131b5fb4a3aad250fb328052077d082cb6004000785ccbe0bee97e20d616dd05354fcd81ae5ad3aeede37e5352ca018hhrrxfIBoUihvmYTSUQqxKs5fyDusyBYLppY4QDecLw=', 'fe83143d80af2a9f7000d99378232cf5', 'dea1cc4bc1be4d477b4438d880c939c3172f5468df5d80ee693131dca9b25885af79412d522629a84eb66956b624b8bb33a84625f5c8d83508feb7ed13c6817beAsIMbKTBWV6Xa2PwXl37eI8DlpENAMwFZ5GBlRrAb8=', 'Miguel', 'Bovadilla Marcilla', 'Seleccionar Grado', 'mmicky619@gmail.com', '933566511', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:52:32-06:00', '0', 1, 'assets/images/users/1674873088.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(50, 29, 'bd738165a6bcc6309c0766d6c1d360897748435b0292a67a6e0a39ba3a8fb59a2419a813d5416149a1e8a7e2a1beb2600095c1afb7af971d826cba43b9137906TMe7VnuMUxurdHLrVJfdsYufQqQKrfFj6VNadzGSPDU=', '60b905686dae9345100b73507624cbcc', 'f8d03ce29113c7882d7c3f11825dce8709648023aab1b3c4b31d0a399ac5394a7c3c4b1a6fbbf7ed43fa05e769f5f76544420e135f250439641797593def628bv3T/Q086ZtNgnycGtOVQmrYQ4XP3k0BehO2FR+nT4zg=', 'Higilia', 'Marcilla Espinoza', '20', 'mbovadillamarcilla@gmail.com', '960473404', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T06:57:17-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(51, 31, '08217018f846c0086e5843aad4b834006ebd70746f589b68199e35e0df98de95ea15fe98acce3f4eaf680f10d7b91cefd75e9e038dd80f08d635e705e8c64959b5H4HmftEICEuCHNGz9QWdaST4yzDGjHE/YimJGwNIU=', '1cf6312772096ac6694530d132278c1a', '1b0f6f2a85d35342a691eff49835ab3141b078ed8ed7ca9c7b5f12ed73ebfe1f0dbf9f8c2903cb540dca87a401d3f47009398fc9e25375e0de421609ed37e0637Rx2IbwBiyuL1XfYm6eROAi2SAAyy4+yjN9gqY8YAZg=', 'Erix Aldair ', 'Guevara Tone', '9', 'guevaratoneerixaldair@gmail.com', '954602802', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2022-12-18T20:43:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(52, 32, '1c2116e185333ea55aba49926f734b936c3db17888985ab934f838ecb73a72c8c78a3ff1591c4dc8dfd4117b813c9488d7c579d4ea4034fef84a43abd0446337kKXFiXhug2zT1hO42HVFYMs84McOsi/PvGi4IW/v+iE=', '77625e07af744175ddb13468b4850938', '4b29e1e622c95f427413b11b0be24df9b4bf707cc12fa77da32b62a38cbec4e7e672cf5bfaae9493cea03bd4580b0e9842795a9d88f394626ecc9ad112b6d7a4iiOPSJ18nummBmJ9r13XsVZeIyNv5jsNBqlSxZEMed4=', 'qweqwe', 'qwer', '3', 'marlonunico02.99@hotmail.com', '123123213', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T13:56:06-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(54, 11, 'eb11f9a7302443ae6af21d84dd4f94cd8d270152e463f75afabca07831497cff0ca799b5ecdd8caa1e0fd96cac20210855c19abfea22bec4e9e19cac16908e307PaUvfvSF9CNI72mO+9QtfggUAUL7g16D10wFFCwp0k=', 'cd3c2568b284308b8e64534c1d4675cf', '772ac74f9672968127e507723b815a21b4e7f435f852feb6a58712ba7aadd3e2b6bccb3f91cbe7af94b7cf0c464224c739b39e101da31717603d043286c5f005rhzDKK1XZM8VVHr4bSuU7lXGiq0bNDs5i00YLdg1yFs=', 'warren', 'gonzales trigozo', '13', 'warrengt.4@gmail.com', '959528931', '', 'assets/images/cip/1674591265.png', 'assets/images/cip/1674591302.png', '2023-01-24T14:08:27-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1674591357.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(55, 33, '9ee2f7e37fc137c42df4020d9ef39098a70f34bc88d2f710440472279eadd856136f2114a1b3b30211811d823d948f0d7bdcee7931bffbe99a05fb7d863d52d3TO5oK5q3dGW8wyIeSk4EgaYjQE2olDB62875gc4TSYw=', 'da8bf31baeec1b15db76a9add752f68d', '06a2fdaf4d60e6064587f75ef1c60de0c239f5afe67dd61d9b0148a5a6db734a438e14e8cd49f5b767c5ae355682e4f5f9c06dc7b223c27e4f043f14c175b595Ye9iCu08wNDm9O/1SNhfqAwiaNwRI9KgAkAoGIriE+w=', 'Dora Anglica Trinidad ', 'Maldonado Vidal ', '16', 'dorita123acuario@gmail.com', '920733873', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-24T14:12:49-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(56, 13, 'b2e9131b3c57ae9e7e591fb3078405cd51a0251791fa11dd62ef4051314c34713b341dbeba7df2a21981312186637bf93240bd3e4eb0efda3ecccdc807274208CW4WE4wSMcvA1ZvjI2V/O50p0Gtw0M1msgjfkCTs06w=', '04e77f7732c5d8fe3e8a72e3fe5f1b15', 'c963e82ccc8357628782c6bfd4499cd359514f8a7f7d627322ee010715160c647f353112f570b9a5ae95c6fe14589ddb4e432a4745fadc42219fdab5149e2ce9lG0tVBb9FKPodsAW0a2QWHEvAbU2hTzp4i2/lWyFT/8=', 'Jorge Luis', 'Jaramillo Lam', '4', 'jljl72@hotmail.com', '955501362', '', 'assets/images/cip/1677188058.png', 'assets/images/cip/1677188018.png', '2023-01-24T16:33:42-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677188133.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(57, 34, '494a1afe8fab69363c5b957450ddbdf0498a9de0010663b8894fc34ab57c9b1c512f9ae8bdf5a6d66f89382adc38c19761adf9ce206187c58d3e81cef2c332924UV3umRdVKZlt12JBb7vIqfmsdhDQHaorCCRc2jkU54=', 'f1eb9f803f83628cf63e29dadeb9324e', '008943f3eef04d47e3a182a0107a7a3f41e410231565779de072fc45bf92b911a0035607e1eeaedb5393a587080c59d4b2dcc1278fb8a001d782a1542dbf5399WplVal63PJj+l9Ay1pwgWNG7iw5BHy561fNWj6HQ9yA=', 'Evelyn margot', 'Rejas velasco', '15', 'Erejas@prg.edu.pe', '923091836', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T03:50:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '6', '0', '5', 0, '', '', '', '', '', '', ''),
(58, 35, '102d5009af68968c2fdb1f9797185796cec39d4347aa3dc78d0e1165a0cdb83dc6d72f6b9f12fab787c45eec35f726ebe7c62bc42a7eb1808c78efc34a7fc6179LEbbpT6X5cLoxQ743NXi39mA7qv1I11W6d1VAgpdNk=', 'b66bd09e1b9fbd1da071a23df1f8a4ae', '7efbfb4747b38cfe3b3335d5c6ea9fdb7f7c4cc4bb908d2f25999c838add6448577f10598432afc8a9e68159db3bf450973d3cf862a58f764e082553a1cb3ab8QXMGbBG85vOQdZ/05iEgBKbf1ZFp5fmxPG4baiH2GTg=', 'Jherson', 'Rojas guillen', '9', 'jherson.69.lamejor@gmail.com', '951365835', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-25T06:19:44-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(59, 36, 'e33e1d70c9d42114b762753d42a69e4c91dae4f84b671808a91bb7f8bf33c6536a01dd112059e7547720a00030daec6af79407560e62ad273172f1ca19bcbb71Z26Ui4nCPPB/kG8yS1HopsyLCfjCTbTBdjV0YONNgo8=', '24827c6974b2337c33c20503b45f8b4b', 'e5acc5e44d49abde560ababf11e8df0941b347f9f3a9df29db22460a27c57f9f9c01369c535352ce453346f48196216cf1ac85b4b647f2621e41f663b73e0c0aLq4xgR9/nnmvpNDwVn/kcC+SMGyK3rYVYwd55fha6e4=', 'GERARDO', 'BASILIO ELGUERA', '14', 'gerard30cmt_leo@hotmail.es', '952256090', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-26T15:22:36-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(60, 37, 'fe67d93a6204d32891ffa90f4c8fd3f926c3fd4b85574222165a988324d9f5b420218cedd20581d377c18a36f9536a83e90dc48fb7b241c8a5639a7b9a3fa1a1UaB6ZyHPcynsBRsYA1WX64nZjy8elHBn0+P12I8wBhA=', 'fad6cc2a1ca29c3beb1397a1baab1139', '6d98f4965e3ae583e71dd249bc33786e576945376ffeb68a56e7932aeeacdbd9f5b8a103a9656a5c96c0fd9d8d19e53d89f6d213de7ab670b1ead513b5d3406fdF0BSvN9CMUdPdrthZ9FMepXtdecz2R33lGX7Ckq9ZY=', 'Jos Carlos ', 'Perales Wong ', '6', 'wpcj999@hotmail.com', '999989103', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T17:05:33-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(61, 38, 'fd52f077a5a85a388adf2acbf9b8eebeadf54458e0d0c3ce52a21c1bbdb8986b4dbc330c977f407c0af33d37504dc74c40f8145c44c757eabb24f4856475a387BjE9kkScXu8z78zXuz02miJEStGxbI/zpYvL2EabVho=', '6ca4a91841e4a5f749d465923e80278b', 'f6bcb3b5c7d4a91b77f784fc85e68c55e940654d324b274f3ab561e61c8b957adef366499824503beec6d3ce99a03b3df67fee6e32f51d5e89a35913c7a633a080dSjUDcfgRZhE+R73FJ43jtYbtnviZBnjwMgFroNq0=', 'Julissa Doris', 'BOVADILLA MARCILLA ', '20', 'mbovadilla@proempresa.com.pe', '989252930', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-27T20:24:59-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(62, 39, 'bac1c4f0a4107f4d9546fd49388a7a66ebcd238cc8582bf50b5ae708efcc36196849e70cdb8b7be27c7bcb8fad1bfaf51dba70393d009c0d3a176137f20d353dfaAr1aHr4e1qnCBtTbkvU5MOPQzje4G2dpC8zGRIr04=', '893e66411b392b787a8888db94838904', '9a7831a64b27548ecd676702bb9854c701c9b455d083f9757692e6a2dea32229b15ee7ad0fce8770c1f2fe223431c17c24db7a3697bb449bbecb3c9fb7dbff57mkIuwx5DatIxJ8eGRsa2taSrr1vHtquxbRW5K15iwKc=', 'Marco Antonio', 'Aguirre Rivera', '5', 'maguirrer@esge.edu.pe', '996004167', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-01-28T06:45:31-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(63, 40, 'e1c7721f24700c734975dd85c1416e7ebae865bafd5fdaf8262d30138f508e11441a2f066031b6643cd5f4204d2438f03477df158e452b6da2239d3eb9722471Z03KeCRlNEI7gTwDArhQ2fSrJeL87uhixMcwT/eJMSc=', '42f5a564785fbda02a67c03ba69e8bed', 'a674ccd9827b68c9977cbe7ccc80f2fe1a42200e9c019a4bb84bd1d7cd00d8dc4805ee7c03114c8218251bfb1d1e29a57c1cc52b5a7e86d46ef974456fb36459wKa66VCCIrOZsoRyRCJtAe2pnck+seOksgeltttV8xk=', 'Andy ', 'Rodrguez Leveau ', '20', 'bellavistaryr@gmail.com', '930210804', '', 'assets/images/cip/1676848644.png', 'assets/images/cip/1676848302.png', '2023-01-28T23:06:18-06:00', '0', 1, 'assets/images/users/1676848089.png', 'assets/images/fingerprint/1676848664.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(64, 41, 'b89bf77c77e8e57aa566d66036cf2b3dd9a6b96267c99c164666955bd5e8b71356ce8758862f1c59c277592d3b0c4fb05d62d60a8de6d6a7f7e07da715042483umreNwSxsvqD1H79iMPAZeLHbNfIxit9zSsApfIc8CM=', '11d6a4ec284e05b1fdf1c9839b9eb68b', 'c0009b2691f84b1c1c69b0897a702621c61aa7ee072af2f555b6f83ad6a987a0a53886cf0a68d378ca2f8a4f9782a78bfb9a7c1bef4937ffbba8380a815d8d22Tue9FhPI6W/0mRfwsoJoucq0zmrL5Pz2jrUlcImDRIc=', 'Jose Alejandro', 'Len Meja', '5', 'jleonm4@gmail.com', '998091514', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T09:39:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(65, 42, '9a7920cada6e7bc03d84ad4196af415b209ae26d557576d2f600bca33da55e45822fd956297a946fd43266a7de1e8683823e327cb1141ca06bb76f518c94b49fIsDH2krrcqbJPrnc0yVWjTpkPapew2Pckax5WXfttiE=', 'caf596d89448c80599a69e71c27d7188', 'abfad129f15dac51fe7587fd51fb5f07cfee025589f13c04bf3ece04d2fe7f8a14c114b6f667efaec55c30d466ce8876bde14b5b050d36eb3202f24fb3fa5a7dHNuUcThClEliFnl+xUZcZu5xowf+8GMstmiQQwUcwGY=', 'silvana', 'vilchez gonzales', '15', 'sizulbelica@gmail.com', '972089644', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T10:13:58-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(66, 43, 'dc4f4310a4c3f3f64ea607505134f34880c3f188bc3ae71042fa788f9b3350a537543f5604182c3af37c6a5d85378364e4e89d96a37f401dc0db5cf447eba33boPqn5Dn3Cj4FLo0KnUHGQ9gYm6b3XpmpxObqVkKFARY=', '1a2b7065fb4db16bc4930c23afa3ab63', '9e8243158dbc46d77621fe21df36e14facb4f3088f72038e3ae91bd17c40ee8d5b8b47d13d0678abf424ea0cdf157ceb6cc0376ccdaebac7e778641a1b47afcfliSrYfPC76dsrnMMOzuGHBvOxadm9k94Iqq/2uxgEgc=', 'Harri', 'Meza abarca', '22', 'Rossmerypalacioslagos@gmail.com ', '970596738', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-01T13:29:40-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(67, 44, '602f2ce2eb3306547a391ecfe7d23be6ac9f5759ef9e38c5340c6c843b7e0a93da9c3f1a03490be6424991dc683ac29a4ab101114478eaa5f2461540a3223d526PP+mUFng0zd80V18VVtHDMJJY6xKA5M08YEmTWlRbo=', '8d2b43221c8ddb026216547209a692eb', 'a36dc0affa254176418aa313f8886a9ed9726d2cb9da4397ad9dcf0f4e979cd3c4ef5ab142a62a477663c7f7772dfd531a7c4513636b47c43ca3c6bf7e00082dUTROsVFi4eCW6vt0BjeMGW5CzhOQNZxtuyLhyU+aqlU=', 'Franklin', 'Sandoval Roque', '15', 'f_sandoval190@hotmail.com', '974129481', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-02T07:51:39-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(68, 45, '55017b8100703f982c043544eb962772ac95700ee820610485b0f4ab68ff64cd058b831e602be074c324ab2ff2338db703628dafb9d1b82384b4fb00e5b14512Nw7V2dsV8DrPzj5vPAiJtAAupsjwlaVDiGSqZisBba8=', '2d55cb3d0b2977bc4cbaecb0da9117c9', '50b2ae0b187e755aea9a20f00678543b6c3d91f3c901e26e10c1b4fd9c64b1cedb7a8a2ac342a1d2dfd9cd371dc7c84be3f5afe49aad4862e032eb56d2d269ce4g64FU+KNP1prp6qxxSK32kpCA+Jrz+BMjkJcDA7VN0=', 'TELMO JANO ', 'LEON MACHUCA', '15', 'ARES16@GMAIL.COM', '943312735', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-07T11:37:05-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(69, 46, '8b3d88d85c210ca7cfd3dcded3b2e181645c064e150322760289292f58752a6a14e12a67f0a72e1d19e7651f83ee38806575a8cc2979db75d328a860d2bc100e6c/lgS8+ZZqlRNhdaX3+UEmrZyqB0z6gFESwIN6VdHE=', '8027e93b7b2ad48d6a3f80dffc8494c5', '1f6156a935162ee79f01c5f69f938fd96851ce6007099e79a73aa45e5d47bc342f58c4bb5c51f8b854620e59e45fa71d541f29a5a8680bd33f7171a87fdc57a18Zv72Hd/e5saZeWpVFHcTnCXN89etuuetTr0lhaMzfM=', 'Anthony', ' Valdez Camposano', '15', 'anthonyvcsc@gmail.com', '939153866', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T08:05:19-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(70, 2, '72cca4a2af206d4d589ecce592c489d6ce53ee5e9eb275b52df8f9580645ff8dabb21e705bf10b6869b392d4d32a235ab952efe8fdb76614cd648d504a4888f8aO0/IllUA6PkMwgBNwGKBKAUOsUdBljqmwJWwnAzIy0=', '489a4d5bea5ac58570260c11acd33df2', '7bfe0ad5e7eeeb16bc36ed4b3616c6286617437609ee43314ea967437836e0447ca870f7633d75d321208d5d7e9346b31071f350e4fc80afb2b914515908084dVO+fOEjVje57ySmBEdDBBUDcc5/ZTo9i0JniovrquKM=', 'NINO', 'DELGADO VIERA', '11', 'nidelvi_2873@hotmail.com', '996070183', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-10T15:23:53-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(71, 3, 'd34cd7facbf823c7b4b022f7b0707d7c81f94347c408f48734551044ad3b957a33696fa76fd730f661be5524bea2499a2878246c1ef04dab8019aab47240d897Gngqfsbu2Qhe/psLNR/otzyTU0pYpbImVwFkwlcb/IU=', 'ddb1e33629a4df8fda4f5934fbd98fb4', '282ba7060593d660322d2701074266f9e5af81fadaa0933a5b494279642f2d439d4921940ec1c5ffc98ac4a4ddc789f983d2589489fc49678abb5991808c8b02PnGRHb395/CBZD399jISe1ht8s+fr6m/DI3lceumiL8=', 'Anghiellie Yuriko', 'Alcala Poves', '8', 'anghiellie_9@hotmail.com', '934477409', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:20:07-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '2', '', 0, '', '', '', '', '', '', ''),
(72, 2, 'a96c26e675d1404103648a72461eea272244286e1e316bed2829935c68e2c7deca1a85fd356b95d92883187f7feae617f8b6261576baa3206893294881003e45QALysWMxyXh3g+tc9uyN3SXYU9pQKNaInlVo+/vco7Q=', 'f39de05563c2680f8d3351231c8f6a01', '7a507c6634a321a2d1edb041746c7a3018498aed466edf4bd460b9b751950171d0d6c3efb278595b510538d26330c70945452d2accf8462dace59c02919b6553o0YCfETTAxlp0fOpeUBfTpeZaVYf+hQ0NN2D58bE7uY=', 'Valeria Antuanette', 'Alcal Poves', '22', 'alcalaantuanette@gmail.com', '920349172', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-11T11:28:25-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(73, 3, '30843044a3c0b6ded71b6fee9ac57652bd3e36b78572a68b4694dbd360987789258a017faac64576b5b713facd2b1569bed53e4329c899a20b7fd83081ccd1dahwQlGSKNhotnpNX6/OCXHqQAzFH+8BcomSOEPKen8LY=', '910494440958dd7fed4d5c3556425cfd', '25633d898fd15b4f4cac8c08a651d99379ae7f91fddf881604c9399ea3b7a7defef323a3de88eec15be1bdcac3e8b3a896b5a34f282d0d15f1736cd29948e11bDwH8dSirIrvPScp2Gt9PNs9jk/OJvCaiq4Yl0OXy94Y=', 'Jesus percy', 'valverde', '6', 'salazarvalverdejesus2525@gmail.com', '963090212', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-12T13:38:48-06:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '2', '', 0, '', '', '', '', '', '', ''),
(75, 2, '92813b4c64f0ebac761da1324aa86ed1368f230bd471271db6f08c7d4ebaf74a179b5600fcb6e72b25d47cf6ff75602d5b3e00201cc5b00e6c075cce07556916VNPEx8XmskI5lt7/Sbrg8RgsXs3By6kvG2ZjaOOJO14=', '162efe45c9624ffa5e58d8d00b41fc82', '4f61449eb60a57626ee8cdfe16850a2e3883ef9a36ac6d366a634748d6ccd638567b94a8630b74d9d04fe55c455fc2a459b06882fde359807c99c13f0f92bbdcyiBdN/BJn2jOiYezMFuf7C0II2pnt+8PSYtd0NNJKa4=', 'qwerqwer', 'qwerqwerqwer', 'Seleccionar Grado', 'sadvsd@gmail.comEW', '123123123', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-13T15:05:02-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(76, 12, 'a612dfcfb3953a58ec8ce5916348d83ecdbc74aae8f64f3d376c3fbe44d26014ed226e8dde1e2366cf4fd6633a280c19888411c4a6f5f3a245e15a87573ea40fyaEh5E+ywrBP3VgcpKEc8Q53Kdm7RTLjANpQ35q2BPs=', '49032b1ca65c9a840e16ab93389ca0e4', '1c9714c0d60e0e1b54e61f3eaea0cdadf509c56186ba2e3539fbb6cad67a15edd0138afaaedd783a18fcbadb8671aac335d5c6271ed6991e12bee5afc7b8be1ddr+y/6GBj+WCzNkGrGAMA/tqUcNXxtOZkMinwewRq+U=', 'Marco ', 'Ortega Trejo', '12', 'marco14.ot@gmail.com', '995620183', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-13T15:07:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(77, 2, 'c78e3d937feafccf52634c5085c6062fa393a5ddc61f7a31a579ef4a723959ab1741b74b85942b3232d6c34cc958fc5a6d2e0d24dd72ee1131f29a3d86ec4fe3Q/wobhPeaZI1v4QqCgaoEHk18KLVy72wt8Tbd+RV9NQ=', 'fd421be9d7bd5e7309501b568e346806', 'a0328f6e222be49ca9a5714889f1a41f60d70369512842755c4d25fe0df0b58ac717085fd88112ecc600dd698c186e7411fb1a449d4f29fcc31c7e0cf0e56b9aXyhQmnelqhl2M3yj2iYe8JJTTN1YkOA8whFbygiPPMs=', 'wqerqwerqwer', 'qwerqwerqwer', '1', 'marlonunico02.99@hotmail.co', '213412341', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T01:54:11-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(78, 2, '8211d20c5bf528cba86304a8263f58e6b1ec096ab30948d147916ad2308eef1e1924a5b5b8ea10a29a2142695ce3ff922c4a73b6c653e10b0b70ccbf680cdf9do5MjspJLskr6McHNx+XRlFdDdOLcSZvR43xS2VzAb68=', 'fa140430271d47fb47f13c673cbb481f', '8e15d4e064b446c4ef62f31706209214cb2bec74e572f7ad1b1e31590a993f73075fa9afa1564148b55ba8a44bfc6141840b3a936479380aff4424267045d419ogEyHViCmE+wzmszDokLbH3GC3tiC+/B9rrd26/DclU=', 'QWERQWERQ', 'WERQWER', '2', 'QWQDQWQWQWW12311QW@AQWDQWQW', '123123222', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T02:26:22-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(79, 2, 'f266b9eddb9a22c0769a6921b2faa096ecd8796024f3971e82290a20bd75b5619514088c46f5e3d1a4333eebe4f9e29453a48e0d744db5525cbb63ddb86463119U5DL0ZHMhvNbBvxGp+BWcrAem3LzBflhLOeQ9HUIFk=', 'd57cb91a118ab508817e0b399a2054ca', '7d25749bbdeb0e08a2152a65b36dc123037cdab71b7bb1e7700d0f78c7f9bcdafb51e926029587a6ab738687812b3c15af346c25b8350597695f69efe94cd41awG47RDzH4QHFlh7rPLhiBBRvFyl6k86cxcTu2RKsqP8=', 'Yhovanny Roman ', 'Champi Bayona ', '7', 'ychbpetruquio@gmail.com', '936504887', '', 'assets/images/cip/1677237968.png', 'assets/images/cip/1677237959.png', '2023-02-14T08:20:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677237972.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(80, 50, 'e36dec29c99972f1b25fa869a721283346576ad2e9da10deca53c1a34f21485524129516820ce58875030d671acd8079265c8c2cdce27b8208597b41c1fd2e24zQXo48+vrkS9g/JhZiWFv0HBP1EpH2ABh50dVR7IAWE=', '5822df9b021bf840d81a984a3c48f261', '7f234512b04eb1ef855599010f6529a94746ed3564e3d1c635d82ced69d9578cfbca6f6b2b25ee32aade6a67d70f92c2c37bd76e8d60e44c7eb89f838630b33e11Hy1YlxqzAVCQ2OtUErtIZ4eepxmF9pp/ZW5V0UJTE=', 'Edwards Roman', 'Vergara Cordero', '12', 'edwardsvergara73@gmail.com', '964977690', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T09:17:35-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '2', '', 0, '', '', '', '', '', '', ''),
(81, 2, '4ef901cbd24e02257be92f71c336013633ab99073dedae1c21aa9cc9f21b2e733f4517367de4392608e58080881e54bc0ad0fa839e7a5f77227bffeeddde0c1d1SGTSzQ65o/um1u1aVzu0YMoPak2Y0EcSxKEKXGTi/Y=', '1107256265e9044a5dd7661050c95437', '1848420b96cdeb4dd860fe70d01a044e8d86a9bd5b9a5008c9c61746085d46e4385dd115f1ebd1b806b5c2a2cc66219df850c1f0d695480c4cc66bf992448c79VRZC9n023LSR7tN40GSF62HmxPfoqcze9a1aO3e6/OU=', 'juan carlos', 'humpire lorenzo', '7', 'djuankarlos117@gmail.com', '923576634', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T09:22:04-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(82, 2, '67d2fa66b7df1447f88c5f8f4701eb00881fa5f68b1757db79736c5ccda49c38b89603ad7db1a66d18d4d6bd63188ac9e704d8295e03da5b68fb892aa84e5ef63mT3rlGOmTy+wik23QDQSOkIaCgrZ2039Yg3MnqsnA4=', 'd92b887c11fa940999915ba333c70e09', '9a44f62f38a8d294b7033c7fbc11cc2851a316b8ec57653b803b5d578daf3e86379700a468ea5e908fdd9887a2123aa1563b2ce6ccb04b6d7e6925d52db5f0a90qYKlkyKTLgYmT1f3bu55gU3+6+QBCS+tr8TkNwf/sY=', 'George Ernesto ', 'Limaylla Rojas ', '8', 'georgelimaylla@gmail.com', '989876474', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:08:59-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(83, 2, '28fcec5fb7408866a0af61fde14c4def8989ce314893164afb235d2819eb19d6fb608e75bb132710dbef9b05d731192c3a3600bbba62112a2661850720775964fuBvD6pmgxVEzfjXmbHR0A4TP+eNgehMxzevH7TB5js=', '5a081cf04b5acbe8ba84af79bf6a0bae', '6a39e9864639eaeff4f62269e9c83ab2979c58c5e3a258223af511a7ecdf4d7eef7ac4c57f1a438090e2cb0509f50b5eda8b0ec395f5e7be212da4feddaf3f61iLnoMssqikm9nKXfkpJlAhoXB1z+NRSqrlyNY/lxDPY=', 'Ruben', 'Hurtado Ancco', '22', 'rubenha73@gmail.com', '917188789', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:28:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(84, 2, 'a83f43a3d108cb7db1c52ac567807f9805a9c243ae2ceecf6975b3f3ca37154f1e30bec9273f67155c782542eca88eacf465702f60cf330a9eaa7ac6ee644214fCo4RPEAv+8ly2gyBr3XMeI/WnD0pb/kiC/tehnXE7U=', '2710146ec5e8fb9fcb3c27e49409687d', '1f2e7c85f737680af649ea32812756a1edf9eb09a404a0c1700aa76abb903804a9d8dd2312961c55dcdc3e048cfefb554f5ac41879a48e7ff261e2f174f2bc02NDd6pPRyZ/X2Faf0MZHrToHgMGqM8J6QY8I5/UmYVZQ=', 'JORGE ALBERTO', 'VARGAS CERNA', '5', 'coco54076@hotmail.com', '973963190', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-14T14:44:20-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(85, 2, '1b7759117e48fd65d868d61d1afa731630b9740b7033f051ae3d8da9cd6e2af972160746371bf3beaf8a960e43ff58a67b20700cea7e8166942dc5d5069e7c3dd1RqdyGC2HAw7XKuEUrbK2UhRwp4ByJlvZQ0uNJbHAU=', 'db2e93a09e55582c3fcabccf8f23cb99', '0862a1cff8e775d260e17545bd81d9bd34dd4007e9fe69eb751a6dabf25b5717b1e53c521bca2e6ca67afe6c2cea38a686469aaa7ff32632e3c56798164d177coDmvc0v8097KyE/Me/epYbaJxlk7h2Gw5ZPLv//PIRI=', 'William junion ', 'Ortiz carhuajulca ', '15', 'xmefisx@hotmail.com ', '982290820', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-16T14:19:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(86, 2, '43e4f657452f07490c92b6f3f334f2ac89efb105b79b11a7b274b130c43ed932dfd1386ef687d98ca4306143c5e072d64c99a144ba5978c34b62407deb9cdd71nPx3ZzYyR4zXp8rnGgUZwFD3nUdTrz+l7+3qAPZChRA=', 'd063d4b919c900a947cd2a85fbe816ce', '588fd0fc0020ab4251dad8476818136ccad963535252e80a8da9ccda1e2025803983f6d6ec4e1aaa277640f19ad5092aee8849868ec2243b3f65dc1908d2185bNjX2gZmXRy7/wsC6sVM2o98FVoYsMYxFVUaUrYCdqiE=', 'Edwin John', 'Zavala Astete ', '5', 'Zaza-1900@hotmail.com ', '958876753', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-16T14:50:16-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(87, 2, '6416f57658e9470133632d1dc7d20cad30f8038f221bbbd34bac535a21f994f8a3af2b38d17b48f779f9d417cb5200ff3a6b98ea0004812977b2d646cd7493ababP8chGJp3zozGKNqgbnPGpgJd18yonMweYoWWgtnuo=', '745209ff2ac5fada49dc6fd3b7534307', '3d61dc9551094bf35ca3e2108019fc7b5b76b7a2e31ded87e95c350f04174a80c374955da2d47ec9cfdc381eb4de46843befa7b91ede518996f8c6195b3e2272RS9LqIypwY8xn9ZmvxovNNm+3s9hJWAnz2B6+BP1rKM=', 'Santos Alberto', 'Silva Blas', '17', 'Almensor19@gmail.com', '980464594', '', 'assets/images/cip/1676997027.png', 'assets/images/cip/1676996824.png', '2023-02-16T23:46:37-05:00', '0', 1, 'assets/images/users/1676996654.png', 'assets/images/fingerprint/1676997417.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(88, 2, '0dc705a10741b1bbf10789c096243ef85958fd6d3242005e247fc5de16ab5b1679f89bd4c9e2a22e42c2273c4f91743da923831fd49635371acd287435638208GwRk520qn9cQ6Jg70BQurW6MzD1lmRmNBjOPQAFZzqI=', '1a94db75aeccf9940392a3bcf521374a', 'd2775d6ce20f19d67a01fcffb549b234a34a86a18dd999b8c7d1f33b14d2173ed2c85447c0b85b4fc80cef32a22c8daed12bd3f31a742bf5fa3689c764acd8ccniPX3PRPgc/s3oaQE0w1QPhjC3Igd0jUbejRQB7Ic6I=', 'Misach Abednego ', 'RAVELO CHVEZ ', '11', 'papitomisach@gmail.com', '964707831', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-17T09:56:33-05:00', '0', 1, 'assets/images/users/1676646062.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(89, 2, 'df22831ff806b1da6f067ab02f8a5cd99fe70c356664a9762ecbea3ad93bce228f240099f52950055f95548ef9a13bfd3080bd326cb93bdc1ce6aa7f78b97860SPuk3+zrHKUqLdoKAYCDK3RH9fEW5WHeQNXO7NsRyBQ=', 'e96fb65f21584fdae89d3ecd63a85da4', '6a3a3369c221a64e09056f0132b8c7173bdb05807e1d9d9cfc1c99d5c6511fc449fba6f41e40c4ffd45227b372b63d3dffe7eb1d0c8d0249005223cf0107625dmGZM98gKNXhuRSEtyuo+7dwY+1q3YZBSXDTW7O0Yv2U=', 'Estrella Soledad', 'Tami Pino', '17', 'estrellatami.50@hotmail.com', '972982144', '', 'assets/images/cip/1677003134.png', 'assets/images/cip/1677003235.png', '2023-02-17T10:50:49-05:00', '0', 1, 'assets/images/users/1677003015.png', 'assets/images/fingerprint/1677003692.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(90, 2, 'cbe26402f9d0606e038abdeae8bf3a7ef2ab920f82d5da73aedb29f8bd3de11130f5f9f6ccf5dec01d0edad34d7dae6585275a9a0681f298bc136f9721b78579nO7fRcogNkmyMCuXO1+YcS1p06nwQsBNjHTYLnDwuiU=', 'fc652c0065cb1f5a17f70844db8ee26b', '3ec2afcc287e0719121c30ac08620cf24b46150cd974660d5e339cef43ddf966addc66b8fcd64dfb1016aa7a4c497713c40fa1ed31d965b324efc8992245fd95gxqlApiG9itqtFVLU+x64zufGaHBCl7eO5OgeycrjdU=', 'Alejandra', 'Ormeno llacta', '16', 'alejadraormeno06@gmail.com', '995100157', '', 'assets/images/cip/1677238274.png', 'assets/images/cip/1677238271.png', '2023-02-17T15:39:37-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677238281.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(91, 2, '55b3d8cb750feca6f65883ee8850c5aeeda6b67e16a2446545373771c564116c2a028c3e4a21c4f6948f95f9752a301c367bb038eef33e3a6c8757b4d5da85be+fPRkiAEvXJ0Ui1QdCLHsbEqCKMCzMnIxlbn7tAI7Dw=', '51612ff7341724570e3d4f0148adcf61', '8ad5d6ae8fd07963b23198126e30fc3fd1925cd2f7b6be925c60d48634b9b326071b156a87631ce577d1125a0416f9a80259bec9f71e6943b22200be2010b6b6U0zi1C3XjMEsO5N3+kQ/2KaG/lpKCy1xrw8m9jR2xQc=', 'JORGE JUVENAL', 'PEREZ HURTADO', '6', 'cocoph@hotmail.com', '971158004', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-17T17:21:39-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(92, 2, '6c08a09ff1aea9369db5fa9b591950f20d9313ed969e6cc699b1d3eae98a62ec6116749063e192937f8cccfc0d1dc2e62d668965d2c08a842af7a73633c6c0eblR/+j9EB57HqAV38VDxrf32pevUM49tsaxCYBVFBpgE=', '276154f993e319e02c59a6cd64d86877', '273351f39de1ad9229435b45f33f55cdd22aaa1502064edd1a50fabfd3e59b475f92e59ff69db737ca748fcc4194ab5f07fce4f8537ad8f6957b0b03aa8781d5qqpddQyb7b9Sbt9cK7J+MF1A5tpjhTdX5xV/TGIJTz8=', 'Wilfredo', 'Valencia Vega', '16', 'vwilfredo14@gmail.com', '995550645', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-18T15:44:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(93, 2, 'eeda48c9fbd11fde5e93e691c0655b6521849efcc89b0307b8a246cb718943fbb3c91cce8c3d6741b9cfd0a8d9fe604b3f73d35da3e5953f965ca11df5cba5cc3jc6JIhRt9rJejGmHuHZKBNO/5qGa7+aB6MQH6ykEKk=', 'ec9fc299899dae023a47ce3fa5f1f6c0', '964e2d1afcb5c0ef11a52876929ab7d93666da270eda417db551cc9e776d949a558a1c06ce767f1d1aefd92ca18a5377533a7fbd639c3f8367567d06ac26870eX/A8iN1R0acbTjirULU/eHrceO0qkS4FKNGhf/tx4Eg=', 'Tanner', 'Rodriguez Valderrama', '14', 'tarovarovata@gmail.com', '937094339', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-19T12:07:58-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(94, 2, 'e322fc8ea9b11a32edfc04a6cfd08879da48a09eb8c811b4574553c8d3d3ad777ffe2d8807bd1f0800996ca4ab10d8427716d4180f9c69f85c173ed73a7a79ac6QBlhiionv9KBRY8b0Q/e/UZEAhGwZ0rLFGbBnnb8Eo=', '74d1052672b687991eb996b8cbea3777', 'e332b1478366368e4a3503ead4ba487d185e20a7daa217d07ee870282aa9cdabadc2d0275c07b004cd536247196d7c16e16df6f39dd0c4b7466e524a050b1570lclkJdhVfIG/7yHpvHNHOQEsPuBleDTYnokLsfE5n0A=', 'luis augusto', 'rojas tudela', '7', 'lucho_rt33@hotmail.com', '926696982', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-20T05:31:06-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(95, 2, 'a9252f706bf4c228d1339175a68a09c6e33b50c7bda6f996414339fbf5c0a704b7b8088b1e605461c12cfe2d2affbfd5cdca154e836ca04064d3c4182ebb68107yakj2z+r4mtH2qGXoJmxW2Tvtgm8ral2QhSkMdWHF8=', 'b31f921f0230f4d6c71138160e8f4e92', '91c60c88425a1e7bf0470bb50358fafceea2f12d642a4a8a325030743ffc271fc5f802b5f175d94086e2033ac3bd402e11cee0708c27a2b2c83e60018e1716f4lXNWFl4IOBNGKDATMRo1mbvzuvuZW6IqELejj2Rmd48=', 'Dany Robert ', 'Benites colqui', '8', 'talullahbc@gmail.com', '990067627', '', 'assets/images/cip/1676906465.png', 'assets/images/cip/1676906399.png', '2023-02-20T10:14:04-05:00', '0', 1, 'assets/images/users/1676906534.png', 'assets/images/fingerprint/1676906499.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(96, 2, '647644a2eb0dd97e61661c044175e52d96a3fde006b7f67cb8f2555072cbb89dec0825726eea7ae43decfa88d1ca4688503f38ecf57611b22e3158555e20dca3yORDPFFaNvegWH/1ySIiMO7D11Rz2ate+e9weujGj5Y=', 'cb6f2affbcc1fdfb94e8c89bac14aa3c', 'f450e4740bad1b8a798ac2d387c48da91ab842c59a7507acec355292cc20d0fe09cc19ffaec7b6072f53f415c9073c9b8d533cd515fa38e18408499b688984a9k9nY+7ZKaLiBD6WCUL+n7EIUmUwWaTeyYjNvS8OA9kc=', 'Amelia yuvi', 'Chirinos huayna', '14', 'canmayu29@gmail.com', '924993075', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-20T14:50:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(97, 2, '4bff9c2638aee2f87350ed799e1a9011ead10a6c7e5f8779d6ff04cbfc453aaab48baa2468882e1e71c8aa3b096200c558b62fbdd9334c6a91a11d43225a8d53QP3406P/TAbT9rrPvMw4rc0cP57YgrEGZoeyqN+AZUg=', 'f6249f547353bfc9da90e3f2eb559d94', '3fd8aa885412940de25a8e1b94d5adf00e4dcf351f5e4d24854d7a42a5a6dc9f7b46036fd5ca4c90dca3f5305c514cbdb0b680e777c2991f84ad12a594a4c339/uKp97tFuxRVrKim53SDJF5ZvQbXrI54ha1KvB3nPbE=', 'Angela Ines', 'Cerna Ramirez', '22', 'aries_96_cerna@outlook.es', '970220043', '', 'assets/images/cip/1676947647.png', 'assets/images/cip/1676947035.png', '2023-02-20T21:29:15-05:00', '0', 1, 'assets/images/users/1676947811.png', 'assets/images/fingerprint/1676947687.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(98, 2, '52bdfa9f6386d585e8bf99ae7d6e726439abe8b53b91860503f39008eee07f8439bead98a499c0b45641070f201778dde502b21c4b310814e3c0f542e3b65d09kZV3lzv+Oo5eeUkuIQLo5zjtEcmBBVitLHmI+zT6xKc=', '595caa69f8a8ad09a720af1de8129bf5', '315bcfbc5e845ba49fddbd900458382fd44c2ffa6392a4953af19467a2aac23121474f4bee4d8eb7de3825afb8d2f073371cf22c91197f0b4c796d52c421ad0d3AauGLfEhKBxgylymnxzTWzDbU5Xom+e6jhnPZnfv+k=', 'PABLO MOHAMED', 'HERRADA GUTIERREZ', '5', 'pablo_06setiembre@hotmail.com', '999991538', '', 'assets/images/cip/1676996123.png', 'assets/images/cip/1676996151.png', '2023-02-21T10:45:31-05:00', '0', 1, 'assets/images/users/1676994441.png', 'assets/images/fingerprint/1676996042.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(99, 2, '857a5de384db5ba0784376256fd282fe0fe53a730843322cc9dc416ef11f8d407a6f25cece4a38f9b2398fdba5838f9909888d24a284bad3fd0e256038c26fb7/a5ioeg2Zs7lBVcWrxgpQ/wveAKQw6MOusRSdX9f630=', '2d090b300eb641f29cfdee21d49a7164', '21afe9b3cc2b3ef54ecd747a394255882803fa76a296dbc1f70e936b7da340322fedad9e3b0b1fc0df99c3be6b48181762b1f1338d8cd4d5583865709ec5d9b6/Mcbl6Yqxks2iE0rniSqHxU9wvduEu/xmLEPxa/ElSg=', 'Rosario', 'Avalos Jara', '22', 'charoavalos_jara@yahoo.es', '998878922', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-22T05:06:19-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(100, 2, '0276a81afcb6de683c38ee2ec51a99d4531853c146b629516cb53383e8f144dac422b62b7b965c942012596891091e26b941f4e1173eecd1e74f1d59bd08b867X6b3jcLe19UsV/AnIgdHncy6Bfabl5KF/ArGT6169U4=', '3b269a5fb942dfde770b5144831d0e4f', 'b92182804dedbd302ecd4b2b1bc85d02dc7b574a14d787e19bee3afb642a0c3e198b346786abce9afae281f4788d436e9a91292cd4156c2c27a04af73c5e83ccvKG0NboYDNtKUCT1sTFaaM4gS1wvGl20I8MhmK28Ej4=', 'Antonio ', 'Luque Luque ', '13', 'antonioluque4@gmail.com', '07434790', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-22T08:56:09-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(101, 2, '1313da28f58c4a94d9ed1b346733d759d9f35661d9603efdd076badc59db696a52032abd303e22695b218f8263d0dfd07285b3781017c6920d4e310f01cc1b46Lm6pl8TiOFhbxhTnCmwUIULUm2QBVsNH/T+L9s6nHjA=', '59f618bbf9c86fd67b7fbeef2ee72afb', '5cfde782fb3a1ff8c77344a2119a4b215204d4833216debbcbb5ac85d01c7c274af9459740d14676078d0468048875c78a6b5a1eab83ec303269fd025bd6cff20m/6YA59X3AMPQIuBFBKb6AA/oE8GOSgd1jX1FoLZXg=', 'Antonio Evelio', 'Colque Coayla', '12', 'antonio_c_tkm@hotmail.com', '921785839', '', 'assets/images/cip/1677122296.png', 'assets/images/cip/1677122249.png', '2023-02-22T22:06:48-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677122886.png', '', '', '0', '', 0, '', '', '', '', '', '', '');
INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`, `cgi_status`, `estado_civil`, `fecha_nacimiento`, `sexo`, `ubigeo_birthday`, `ubigeo_home`, `urbanizacion`, `tel_habitacion`) VALUES
(102, 2, '6a1e0760c65bb75857690c0ec3fa026c7a1dbdfc4d926d9739522cc1f0568f24f8a4a6c3ea351ba1a720a1a3a56195aff91a4b2c49ac1f8071cfcfbfa15e5610Ji8B1FgRtDDgmHl0T5kjGA1aRRnQfmvlZhvNF8oNSuM=', '5a54d2fab76c3caff80282cc88833c6a', 'f29b6a772deacaca463f67a9991e20c9b0238a243addba2065c69aafabc80f7cba73072a6f1a1366ce3f4d5b7755309972b0907357077c7316853c9b8be6c8f2UH7SLwZfavbaslfDZxjOo3UZKtnz3TRYoQBYHoRWpsM=', 'jimmy yoel', 'ORDINOLA VIERA', '13', 'jimmyordinola260@gmail.com', '969815537', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-24T08:46:13-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(103, 11, 'acdf11dd4fb8433089e6f8f15f13a86c05b1c18bf9840bfc5623f413279fe08f324883f4ed82cb083a3c95449906ba2f048574771d22605d31318c5ea2fca8928+4vR7oVKHIQu1IPgmBh3o2Og74a2nbV77hgzuaSzXM=', '8d1fc0bf86ff997d032a80d0db2840cc', '78ee4eb68d7b7aa98c411adc558cbfe08b7f19346796b085c33e7acca6aadd5bdcbb30dcefb54e064c40231745de7317081ed9f7785dd552f62dc50164c638084UmXQfVHeztW7ySZFTMovAb0+7ZcVH65QQfm/zOKMBE=', 'victor', 'sotelo canelo', '12', 'vsoteloc@hotmail.com', '981741046', '', 'assets/images/cip/1677257836.png', 'assets/images/cip/1677257739.png', '2023-02-24T11:48:57-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677257947.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(104, 2, '6d95b79623ab91752ace17710ebe6e25eef51232fff7a98b3cd9931f388733fbb5ed6759bcb8f942cf22e9fc6e00a2b863646aff0cac6e3fc23ee127bacbb310WCpjrfKhKNOfQhVDqzv7jG8FCnG3SSv89ACTFh0eCyM=', 'b772ad4573b302c66b725388ff7bdd79', 'f37d2ce247ddeb36bbe41234a0ee552318de6aa61eaaa19d050cb3e585fccde3452a045750dc1f6a142c159d660d21494c4e29817ee6d042e960e98c767e97d7MqTNv4kLJV82PxR5ulMEnZpAcY8D+bjba4bj0A3wpkU=', 'Gilmer', 'Graus Villanueva', '13', 'gilmergrausvilla@gmail.com', '942681173', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-24T16:16:26-05:00', '0', 1, 'assets/images/users/1677273512.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(105, 2, 'c109ccf39f9a015a5fe1937b3629ce3f8f2e8f66854d7f69df4583a9a1511b92d41a730ed1e2c28958a178ae4d2d0a3e7e9a251347c57e639726c02bc3310bc69ujAeNcMN9Bivoh42JxI0ljCRuY1nrzPWSz0lAnAkhs=', '4740687bb5e75df150307beaf30340c4', '98c7c87445f92c0b4140c55d7c68d316cf5423df036a5ffe64cddb640f7892d5d75e6cc2da6815fdd6e8b18335e00fa67f73ad8b1a921d0dc2e44f86562b9fedAg/cQF1Tob4ze6P/lWYIZUESykxEPESO927SsisvDqo=', 'Alex welmer', 'Guerrero Culqui ', '13', 'welmer800@gmail.com', '969695734', '', 'assets/images/cip/1677343200.png', 'assets/images/cip/1677343502.png', '2023-02-24T18:49:48-05:00', '0', 1, 'assets/images/users/1677343443.png', 'assets/images/fingerprint/1677343340.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(106, 2, 'e83ee3b17923b34e4b37c7a28817822b55a7d2dbec608ffb5b860aa4abbb2365b1426fd2e5491cc3b3a2bfe0123b1d6943d03453b70536ae7473e7852e181c05GLpe1XROxTsLMJMiA1LsDG9mpkFFO9Mx0FPuv5QQufY=', 'd1d4ec370da309848dccae6d468a4e3d', 'f0ca867cd8edaae16e2a01afcdff0ec75afd53a214a30e83f35c5d84694ec1fb488b6cb3a3dffe17eb3cdd8880c1a7c5c5a47aa1f3dc1b872bc65a4436d4b6207jphyXToI63+yTM2bjB77/47tNBBPE43idxLru+W10c=', 'Felix', 'Meza salinas ', '8', 'f.felix.2016.125@gmail.com', '917823452', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-25T20:20:33-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(107, 2, 'e560cd457a57954672698561679dcaa40a85c570d104a7423e1de4a29e0f95689bdb83cd1752fcc15782d048b1da3d7e45d36e176276d8bfc98935080fde57c0eHzR98vZEFYp+oMj+4Co+51Z6BGl+peuXn8UKydesYk=', 'ec69fef89d1fa47f23190e7aa8647c6f', 'e9dfc22791de265f436c027174616f369963857ad38e1c8e18b362aa6435d750fedbcb8ace9e04b238d9e808a9351babf523fdad3916e96d595391ea2eb1f7c0m+ms1umQlEE4TZzRwTRajSl5L3WsA5kUs+uQTmoCLL0=', 'Robert ', 'Cachay Vela ', '13', 'cavero_80@hotmail.com', '988356314', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-26T00:32:31-05:00', '0', 1, 'assets/images/users/1677389981.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(108, 2, '54db85b8868bcb6716ffea268e1b03e1dbc2c9503b28609ba32454e55b0e1eb9bcfbbc2ab0c09e263510204be7f6a28c0c25fe99334fd4a98bcee25eb371c512zLgMi0IJrlrmoMLstwamESffJqPiI9CuPMdn8PK/qbA=', 'f6bf2d600e9c51ae09fdf160a6a0f8c6', '00d8c3c6da32e41fb4027bd5227955d5bf56674ce8f61634a7a8cabc9a3152980e5a5cc36b95cc6d706e86250775fa101b1d138e5220d9f765914b5fd258ce44gT0sGTfdOfeB7Fn7pN5lNAoZHLFtT46AGv+9s/zmF18=', 'Gilmar Santos', 'Apumayta de la Cruz', '6', 'Gilmarapumayta5@gmail.com', '941856635', '', 'assets/images/cip/1677427990.png', 'assets/images/cip/1677427960.png', '2023-02-26T10:45:58-05:00', '0', 1, 'assets/images/users/1677427882.png', 'assets/images/fingerprint/1677426956.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(109, 2, '8c71d41c4546a526d528207b5946de6f5e59ac9de4306c9ce459b02f159e51bc2d2f4b59f673e8b179b628ff740fb6c3c0526618f29418818958d2b5972ee8335sYf21mKjiDFUADLeJezxBcNQs34IcrHPYocy2qODd4=', '7744408fbe3161d4f7f65a2ba2533fde', '86bd4a7a0dce59104fa168a1b0fce2f7b48c361485d2862ee0203cb2ad852be11bfc821156b0c0cd86661513317e100531bae8011cc0a89097eee922dd3515b1OQuO+kOrZCU+htGzLnrG2O0Gy8P2Rhs9W5Omyo/NH+Y=', 'Santos Inocencio', 'Apumayta Huillca', '13', 'santos_ahs_028@hotmail.com', '955657579', '', 'assets/images/cip/1677447330.png', 'assets/images/cip/1677447310.png', '2023-02-26T16:25:24-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677447346.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(110, 2, '680bec57cd2ef63986477ec02055317e9301cabae770d3c0b0ff6d8c8e3b17fc1968b56bbd956ca262b2d2232afea1f9c183e8c2ee52e793e6ba755dc65da6e3uJTDq3V2I0NzodqmMIORcbu4k0myokhsVFE2VuL4WoM=', 'ac42363bf68af47ffe3d6f4907b2f268', '069e3f2af71a0bb8997c79bc94d632c33875db1eba28c19dd0d3afec9e6ddf9381c5ba01784357ce8e5e18c5ac1e8d7b08a67341aba37dd6654ec1ee56197676GBVo5o4qSbEnoygWDeGjQbPquTVu95jFNkWdeRvmDIc=', 'JAIRO', 'IPARRAGUIRRE ALVA', '15', 'JAIROIPARRAGUIRRE66@GMAIL.COM', '956134918', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T08:21:24-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(111, 2, '6f0126bce4de204b784eda2a651fcf2ca154aeb2fba5413eb6fc0c02bbd285f6158ee5959a84eae979e36e73b8cd31d5c6cf7cc654205e56dd08c6708603c77cCfGOBwPMdZfOsa2dkcldwvDjnG0tBAgAYbqI5y9Qf1I=', 'dd826a12db143b78217ce20c3b3ff923', '7b2c6c86e29453010cd43dd8dcf331f64e18bc8a8cd66c52410cf011d244a2170a4d4f7552a0890004e5a7b0897f2a4af3b529c32817fc8cbab721bf9593eaf74LspthZHhGrC+z0BgoPitz2o6IzETL2p8kQ7JilXRF8=', 'Maria Alexandra', 'Terrones silva', '22', 'ale.aledgc9889@gmail.com', '944875063', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T11:51:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(112, 2, 'a78af903865871e2a546e96b4f92c6d08469107261dde78c97ec109baf6aeb082e8af23aa1383d5410f18109c564c577cfacbbaca855fd50e310d0612273a28fFvr5+vVdnqvzdCvyKIL6D74C/v1YalkkdDYsToxN2Fg=', '310e638989a88d2ccf1d2d791137a456', '3e4b8eaaf2d0fff7093200de7d2765eba01290d57207f8e5c1058aa8a6a7b78224dbe5491de03d63b81117c7c267c8dd3eb08d01fc1eb71f271d3e707cb58db2GNVXG2ejsT/d1Fw+8w3Zgby0IfwaYObDRv7XYFJTVgM=', 'Rita elsa', 'Rodriguez Julca ', 'Seleccionar Grado', 'ritarodriguezjulca22@hotmail.com', '953532167', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-02-27T13:17:05-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(113, 2, 'fbd08540c863b44a7082ddfe843a744f74b71dab8bfd620eeb23e280a331a24d8abd1ac09d061effc904f621c13ccd12cbcd113da383dce6b07ce6a6f2e086a08f3uiJPv1uvAoc+lvDDRJfOqx9PDmWN8K/RPNzvMrx0=', '299f461a2dababd312a5c450b86d6fb8', '726268379f3d9a578acd41e94d1261f429567a02a6cb2cbcaae7fe960b04c5a57ebadc3aadcf7f712981d45ea607a4625f93328d14bd5f4d0c2df316b57397dd8k/iDoWLvMnFKMqsEMBcmsjSQr9E7UY0oboUIJPS1gU=', 'Jorge Luis', 'Campos Gomez', '5', 'ARTCAMPOSJL@HOTMAIL.COM', '960778635', '', 'assets/images/cip/1677619105.png', 'assets/images/cip/1677619928.png', '2023-02-28T15:30:58-05:00', '0', 1, 'assets/images/users/1677619892.png', 'assets/images/fingerprint/1677619529.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(114, 2, '04f64cb7f4d22259fbfe3a212bd6658960dd60ea0f12be9b893a80a48b46c7cdb8f9b34e36d523d7f3a48a4a3725afd31e582cc8bbcfdf616483e0d573663b2fCozYF0gasJimfDHhaMiXjJDZDLp8qBrR+M7Qahn9m74=', '3466e3d133378ebf7f24185a07b240c6', '307d3612880a90b8e4902a44409ca0dab8cdcaf9b2259ed7dfac243199ec3a90da588dc807a5e56fda95b6f3014f58dee7e3ff4325407a1a84b1c8810399cedb00B17e5Erb6SzCCWXors6Ove+U4eIuNKvDq3VJfyjaw=', 'Josu Julinho', 'Asencios Tolentino ', '17', 'jasenciost@gmail.com', '922822682', '', 'assets/images/cip/1677623146.png', 'assets/images/cip/1677623132.png', '2023-02-28T17:18:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677623163.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(115, 2, '3d547b4d680794e397da38c7f0dd28599fc5c43c3f946171b3e06df98f85d799a1a7d353567944ba4d1318573eed2117c1275f6073b064585ae4f4f12a1fe8065gbZ8wgmr2Omg+34El7uLFZ9noWqAx6Yv6E3wmJP0Q0=', 'd9b3bff780df85a20f46fe66293a1a0f', 'b619b1fe49bef581c3940144ebf8ea65857ca32c3ea93a811be61529010b8adad3f7fcd989ec3cc8103cebc8fdfbc162f95f0f47fd14fe90cc179b9c75b46288lRlDsMQ9kqZzMPmXNjEt+m2KPmRUJ46XndLHgN5PEFY=', 'Christian ', 'Quispe ajalcria ', '8', 'christian222417@gmail.com', '935269748', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-01T11:21:42-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(116, 2, 'ac7cf19ff6727fa1ac31979134c8b5b50eb83199437ef4f4d2993aac304813c7cbb228f91eab78ec69c5efe6638be49dccf16af415378fd32e68b0cc5c0242e9R9+PGlac+Szq2R+mB/szhObMfS1k+p/mqYiHZzm/+Vk=', '4db0a70e2a8d0d4562348c1e10418555', '813bc9a035785c0b54e6c32a6da01328a38b812b9b602899211ea20595b19bb566a46df30e566116b1bce4555e667a2e940c22a2592054d356312d2ecc1b307fG0G6t6dTlMzBPHb0dSAt6b/1Ohi+nsCV6XvJ0yTyFP8=', 'Luis angel', 'Reyes gonzales', '7', 'luisangel127@hotmail.com', '945130311', '', 'assets/images/cip/1677779192.png', 'assets/images/cip/1677779159.png', '2023-03-02T09:47:25-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1677779222.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(117, 2, '463138e29afa5c54d8549682bc44420bc8df5d67b8fc2767fc75a9c57860fe8a03c768e9b24db6d9055543730067a41e3a61e094c4d466a3d82eaccadee950c0Sk3mvdkEGuywIGPxi45iOMtGpJrUdR2+TQ4mqwTnjck=', 'd5c1560560b9689ee1808008e2db5f5c', '25b90307c27117ad947f69dd95715f80a45df073b47252f8a8fe5fcf8d6d87838e555de86b71027b4457e2830e2608872e4c988dd21330a4612c8b4c91465be1vmgO4OXdvYGtziLXBiFdXWJOTe1qEZiq9OzweXdTXno=', 'Carlos Alberto ', 'Saavedra Zavaleta ', '12', 'csaavedrazavaleta@gmail.com', '999039484', '', 'assets/images/cip/1677790932.png', 'assets/images/cip/1677791007.png', '2023-03-02T13:43:18-05:00', '0', 1, 'assets/images/users/1677782693.png', 'assets/images/fingerprint/1677790948.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(118, 2, 'a745df209da5ae27f8a160a154fdbaba3221a28939d7f9a50287ba99061fa90eb5bc048470d3036e07b74f2f429c3c8698b09e6cf85e44ab34e5f778df1fab61CKeg1otz8oPoTXWFXsDyuvx/gHGrvXBG6zqqsPOFzAE=', 'caea4172194933ed2dc189fa4f6e9609', '388e57fe601f86d8cebad9b64c43350937f465c69edf7d080386915b4d4a6004f02427e461b5b956dc8a9a3f2f59741b4ba2bf321de0072260007421599946f9JptjTLWLOGCsJpep59dKqcjtPPvUeMjAdKywOOGgdD0=', 'Nestor aurelio', 'Valqui rosas', '6', 'NVALQUIR@GMAIL.COM', '998694343', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-02T20:08:54-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(119, 2, 'dfe2f60141f393bc16adad2e202f9cbcab117c63cc6f8c22dfbe6a59e4c6cddb0c07f8e3205f2a10add02a39216f3e5d2bc94f9f0431cacc3a8eaa27f97e82b1cC+e/zfnAwrHCToCd8Owk4WCZ8/FjGGkN6k0v89JwZ8=', 'cee405762f26f968e243dd0549b2afd2', '4dc6102088add1e1dc91600446dd8f6842b1bd930fe933040bfe0ab9ac6a9550e144e210913030bf285dbdb1cd073f6b12e7ac9478bd265fe892628570c443a9mK8FbhItDZb/Q7p16wPp2mr0yUhwxaNP0KKBZxuIJhc=', 'Alberto ', 'Lopez Vidal ', '4', 'albertolopez2020@hotmail.com', '995567312', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-03T07:25:26-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(120, 2, '3fb4e53608204e407c90607afcd788e2208e0a692464bd122fa23084f4899413ab752653061fff8dc2138779fd2faf4bb2baafe9ca83dd531a0eed1b1d981d24gynBWLyvAIMpNgGzWP7wS8HfYo3HndoPyIeJHDuLJvk=', '807958c8d29d805326e072389cadd294', '6c58e4c9da503f52bf913ecbf273db07d1dd98c5c1849ac0696a28a2d4b4456c0203c3e8754cb00e18878b6aa24394b1ddf1e5a9f6b2f74a7f0bd1560b67c77aKguNQuH2XJWOyh0nMtUpXiJ119TphMtIwCdYF2ngimc=', 'Franklin John ', 'Guerrero Aldana ', '15', 'monibenja.13.18@gmail.com', '989045372', '', 'assets/images/cip/1678283408.png', 'assets/images/cip/1678283569.png', '2023-03-03T20:23:26-05:00', '0', 1, 'assets/images/users/1677893180.png', 'assets/images/fingerprint/1678283445.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(121, 2, 'ac78733308c70f8ffff0d4ebe6a7ba0be3abb33864c2cb45145b0e7f14d0d4e57d1923fa67b7e4f72d71c70807469402a55ae96ea7de36a239332d3acc6560baMykPpHXexsoMeElBX+haLnTbwjRge1p05iJBXOCkCKc=', '8e8479960022e71730d239e5446a56f3', 'e5788da7dd83971fec331a4d07ae2b0937f5dab22616854df9147d8987fa83e7e900f4807392d36d5b3a20d4afd1118c6db7ea9ca234335351a3776e8c0c9b418XAmdLMSy+oB8p4tfWfhxhjEu5+NsXsgiHZsW/4M7Rw=', 'Edgar', 'Angulo sotomayor', '15', 'eas_1175@hotmail.com', '943285610', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-04T20:21:46-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(122, 2, 'dcb1af5c0257a17307480c5aa9bf187e55cde048464336077c6d07d4ddb4683f1f3d85aa82c7a1752bb7998130774abcceeecdc2351f425c09282f233223d796kAViXGImBQpdQ3h+QB9cr8aT9Mum7E0NxH8KhRQrbeQ=', '1d59f7dd3c3be886d0f846998a79f8b3', 'baf25fe75c011661e1646065429124656d747539979238cf630cf25dfc9ce7d5c9cfbb60d86ecaf3b97634d575974924eba7066518c8c507cc96f0dab4905747tYPidKWFBXs58qsYulQIqIFjx00kzIjQ/HgAkSVXIEQ=', 'Luis Nicolas', 'Cueva Carbajal', '4', 'Libertad0112@hotmail.com', '938163970', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-04T23:18:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(123, 2, 'a2870385151b64f891da1a02016d30e8d0fba72e668872b01fadffb9638610d7c2cb53864acc55314d322c188e2d1ecfae666e6dfaa6f6db5d6bc700f57f40f9M22NOMchY9M/G6PT597KiR/RYvAITOA3YiWI+U4W7B4=', '62fab7e6d02c91f33cfa3489751005ef', '3a73f11cad356969a3a9dcd57235cf954b93472c78cec45e9136ce4557ae05aa54886b8c867a2500288dbdf8aefb61536f79dc25b6f675cb4a7bb465cd8480baPecu+6LBdGbeGV+zfYkGS2IXOykBBjCS0AkV4WLBhjo=', 'Gabi Liz ', 'Leon Chericente ', '16', 'gabilizleon84@hotmail.com', '973609213', '', 'assets/images/cip/1678017282.png', 'assets/images/cip/1678017308.png', '2023-03-05T06:08:22-05:00', '0', 1, 'assets/images/users/1678015330.png', 'assets/images/fingerprint/1678017247.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(124, 2, '180019bb0f3408ab9cbe15ec6d38f4deba279196065d37f8568ab011dd951c7c494057f890b7b911708073e59f89348bb5131370a944ed4f2a3c3cee3e4be5a7O6LugVVtLgW/0WfFV6MoUhtp1DAu7dgCIE1n39Q7RWU=', '25a0884b21a0beb43d4cd0f9a52b96fb', '2445f656bd8363b2712ccaf20fcf624381f6abc475e0015c943cf386fde8a2f8d4748d162756e98e51b7cf0049ef4c48e4072a9cf6d473d589ab369cc415ea6erUItnJ9XzDi3GWqYuUnE4Kmqs80eEVPAgXT8D9RJLu8=', 'Williams Roger', 'Balczar Zarate ', '5', 'willing108@hotmail.com', '942088898', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-06T13:42:44-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(125, 2, '7f8852f062f9aa47a628a3d1a63926d37440880e7617043ab3633edd2bdf764ed6bae10abe5bd6a91a9ac33a14617c59344e84e6aa803f5a63477a0c642471eakecbs00GiREpbwRfFvAz94gGNsGfR96fgh9HzI+3wOg=', 'b7617f9a82784c320d99e71b6f256754', '1bc115b7a306997a7fe525150f548cf28105c82558d1521bf184005847cc95be0094a85f96f19b79c343f838c56fd5eacd93ec35d6bb9d2abaff089b98e38c35DyGRQt9FAL1zUl7AY0q+1ZKB1Vbx7Ji/4INX6F6+Trg=', 'Jorge', 'GOMEZ', '6', 'roxicocina@gmail.com', '982142210', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T10:55:23-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(126, 2, '41892725399fb25ed5ddbf9dd1fbd8bd2b4cd7e3673a553038407883013c0a9516e7ccb56c4d9968ef7eef0458c92a1fbe428987062b8af7e5531d67badadb7dDbNjCe7bRoROzPzVwBp0haCzKiFwFoDBVrO3kaqY0f0=', 'e985de1d13804d6e122f55e8d948d993', '02042a1bb63eb749a1cf5f2a259dfb356f2256b4556c571d666cfac137c42fa3ec0829f2092299b016a31c0f321e696a9b97810a26ea9343d8d89c5cf006fae9yOu8P2bptoWY7Sx9xgzFcJ/D61HILdn9Olz2shw+gU8=', 'JOSE LUIS', 'AGUILAR OBLITAS', '4', 'jaguilaro76@hotmail.com', '951643301', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T12:16:46-05:00', '0', 1, 'assets/images/users/1678209625.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(127, 2, '5e2258e27aceb3023188fe83861ffea628fcb288bcb15423a1261d4dc261a6809a8f9f60e31e4490f2b8f99344041030a69e77fe6acc9186f08ef97ec43d870dAwLBSipAjBGAp2Z00C9IIe5Gnd7KbTsomjN91X8HO68=', 'a9b44ac7a3b00c77634438a8fa6ca17b', '3d66b2ade6be1f770cbb739686a30a3a62001f105e8b696958dcec4200863df935a8aa88b325e997c6aeff9589e86e79e3731e6957063948240d7c33ceb29403eBY9j5EGQwbjJTpTjR/R73Xj5WKlD2C0ddhPLRZyQoI=', 'José Ernesto', 'Basilio Uribe ', '17', 'jbasiliouribe@gmail.com', '936667933', '', 'assets/images/cip/1678300778.png', 'assets/images/cip/1678300759.png', '2023-03-07T21:05:55-05:00', '0', 1, 'assets/images/users/1678300867.png', 'assets/images/fingerprint/1678300845.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(128, 2, '589c0ea8752748904cd9cf5bb9a330825628b9bcd926bafc43dcd019c71d75665157b99cf65a27559c957ea7860ebaa9b9dfa58c140692c8c1f4255123e59ed0kVO0eSrualf2yhNaI/34YvyyzFYm+M9TuK0ONUpBjN0=', 'ea6bcc1589221d1eafeef2bbb639f483', '939e9aff6d9de511a9b874fdd1d36124234e5eecfaf7c9bdf9308b1ac239cfae64a6960471113a18c9741abf1c5be29d8efed14a4c74175736923714091923c4gBZMSerqXxJEW6mq5oxpvVITilgvvFp7N8KLp8LyD0E=', 'Jaime', 'Macedo Torres', '19', 'Vladimirerick24@gmail.com', '900103395', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T22:37:30-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(129, 2, 'a933c8cf9db204642fb1e1a3674d5511fcc91037c93e70f405e1f4ce907473c93b77d7b2b3794983686fc31bab891b13a0e5ae1fae850b79079eb01f47258e86nBGX0csujw6YaMFn0zyV1vsRvlGqUiVJBQ8mxctinVw=', '3c959a32b2bf9d0170f9c30a64fe12b4', 'b9332ca72d7727adf44f5dfd27c15f747f4fedd9004a0d05c78102d9d3f716622632c82a9dd59cece4c2c16bba698ced2eaf65b8aee7c881154965505e9680fbPlR2JVq5RK0dpb1S+CNnZPsseN25r98Z/z2XMJUm00E=', 'SAHORi ', 'Coaquira Estrella ', '17', 'jcoaquira.acmp@gmail.com', '926178347', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-07T22:45:02-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(130, 2, '357242f0ac95f0ec3fa66540ec1f743af4f272fff213b1b6943508bfb5574e71bce790532ba4f88ebbfff9704f2daa9818a3cebc0853f549ce9069dbef7e4411InhrqwndUGr5a0/5FTQq3mCqFN/vnRuzKrZVRxuTHzE=', 'a5d4f18f5a19983461dca267009b0cbb', '5d235d6bb7fc7761dad797a5fad503d18c5a2fe004ab1d937876e98a8e19d94f14031aa1306dac8c8a59d96e2019d3dae4705878d3e55c4bfbc7292651148ece2lWKSFYXKOUiLd5qHTxUxwViK9h9zBJ1u/VD0z8O+2I=', 'JOSUE ALBIDIO', 'RAMOS VIERA', '5', 'josueramosviera@gmail.com', '998734171', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-08T11:17:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(131, 2, '0dfbe44059f1aa2e3a0c441cabb7b2ff1b8c8aec81a7933204a7dd8a49fb0adda5485ac5892a4c8b0eb6278d57cea67bb2c377235d5f89fd1ae6004ecd505626CkFu04r4oh4kbXuBqKbt9ruscnouseshbM/qg0I5FKk=', '5f0aaf25d1302faad8d9131f0f765186', 'd8eb0b8fc89255fe3e0cf5c9bc0ad3f201240d0eafa96e5288db54a4dbba7afd4cc945c15593e09c6204f03c0e1c7bd68c91969137e88916ee71df8bc2bfd464Bz8kiAtgMJF1wOjOqxI73XI9R5JrJAYcjiTctwtMUKU=', 'violeta marina', 'pando arias', '22', 'alondra-violeta@hotmail.com', '934677357', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-10T13:51:05-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(132, 2, 'c1e0388895a04803b7ab1fa037a629e3b22c8476a2387fcbcd155fdaed3afb7ecf8ce7029dc2dd9c73b46fa608d9da39f58f4a49e169e52a1a8ca42fbed72db7TbvTKf4y0U3sXCy4Wo73CvhG0+x3mHcbpqDWkAI0Yuw=', 'a408277b9e654c2a1b9c050a97c57652', '2d8982b04314e8bbce1fb21a5f3543fb734777ab3d14f0631116e5736ca9e2a52a0ed92ca1ed5faa9c6a940c30fcba565e77a611173d2110c6323a0e8853f5f4mXDz8fDQ8f6Sq+MV47/q2h6/Xd2aljpL2n9vmI8RvN0=', 'Nilton Eleazar', 'Caldern Villalobos', '13', 'eaedeemoq@gmail.com', '', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-10T22:08:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(133, 2, 'de6bd17f9b6db2c5b135f44cc509d2c004de81be2782d4c7ad693aed4a0242d2542bf5fc2cd4b6607d52e3e26eef0a55e46c2d0f1189b10bf80c6f9ab4724434hP0ZtnZ6oeMaViFhVmqhh9OmQ/eywXG3PG2gwCS1C1c=', '181a05c5475db60f22989de134174155', '88575c8cae017c6d96755d95eac14adbd385e14c859a0a471b2bd49de09866c61f3c5f5e2a852e234c5dbee86601fa49527a3c4ab9cb1d7470e1ccbfeac901a1PU0CmiKKX6YI/XcPXGZQHNRnCXNGFOufUhYD0iyv1Es=', 'Abner russelmir', 'Payano gamarra', '17', 'apayanogamarra@gmail.com', '918202270', '', 'assets/images/cip/1678553230.png', 'assets/images/cip/1678553079.png', '2023-03-11T11:38:57-05:00', '0', 1, 'assets/images/users/1678553001.png', 'assets/images/fingerprint/1678553157.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(134, 2, '5008d9004fec1f7ef40baf4372693fb5053ac4cf10a1dc6c1efebb9fa51dedcc7bfd4b5d3a5fbd193f04b0ddb9e09052dd795d7c26534ad566f848ee6003ab08OmedioDm9ZFBP/NlIoRKm7hMNN8ufwCWddJI5yp+6dI=', '21350ffa48e38374e31cf91635665901', 'fac4b94703128e4147c91d90831e1c535f3100f93e0581850c877e4bd355ab10add9f2f39bf76505eb829cb3e416cdb754412fbea980ccc1336a62d2dbcef1day7/kuCoQ1frwiT3oKxRATgTiNhZ7rLd4ICWtf+T4k+k=', 'Rusell Joselito', 'Rivera Calderon', '22', 'rj.riverac@gmail.com', '993108134', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-11T21:26:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(135, 2, 'ad27f8d42afcc4e0874df48638f7960b0c3726d5b932f1c92093b227399443a2549c0505aef29c7827bdf74b0d09b31953ea3a034460583d92910f5b9380cdd6F0eU/APrbjdgxUZCy74W0nHWtLlr3EwQqNPG8wbMCyk=', '5fd204d15df18a97c057ca7581c8b0d9', '788b2c81ec25eed420899e1357a8527771cbc7193a7d2f8898ffd4eb7e48be75a82983f5662def843a4b20f4c8fb1c1795e3743c49c1af3c618282ca862c7694IgL5i05vohfM/M+0gFV1IL5G+m0Ttss/t2EAZDEKmg4=', 'Juan Ramón ', 'Flores Naval ', '13', 'jrf_naval@hotmail.com', '969125778', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-13T09:29:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(136, 2, 'fe1da75d78f4642b1d951f5e6569a8ee4ae235992c1710988abf8301677df80a6f4b03a8de70bfd7a55eb78741c434de0e68e0268203c78bb72c20c7aaaf0a9cfZhEK5VJFcu0D7UecPuaAs7m0eN9ZA/c0QxPNMndlX8=', '148683dddbe91b5065238ef3fbe8d5da', '3ac2ccb9167016330a67a72b264cb8a4ac9e2662188418fad0e95f9f78dfc73695a7e37198c0b54a20ec7d2042c4e563316c7d9f5b4ec5e973545d705241a9d1RgMfTpZr/gJbGlz4ajF9qJtlfxchU4Pud9C1xczLjKo=', 'JULIO CESAR', 'LLONTOP MENDOZA', '14', 'jllontopm@gmail.com', '976102961', '', 'assets/images/cip/1678724849.png', 'assets/images/cip/1678724907.png', '2023-03-13T10:28:13-05:00', '0', 1, 'assets/images/users/1678724341.png', 'assets/images/fingerprint/1678725072.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(137, 2, 'ae6a7f1559fe129b1f90072e54b2b479810d3db70a9fd3ea85b41d7369ce86b94366a1f3d6f4d5276cb7c4538883a5c03386d030a80b6ba365378d51fad27957WWExb1RR1h+MWmB1PaSz82VWPp2Ud9Xu8nlUMd5tlJo=', 'b57ee557c26b0e7513c16832d199689d', '523935bf6fd7572a5803ab5f80279d98c94a61b7a9d708a84387736a9bcdeaa419c210948090a143177208ac28d9293405a297a7f0111aab5816b5e73c2eadd34qgwYC1cbUn91nt0h86iafTKb+xYsdhBMvSSI6ZNeuI=', 'Thalia Feli ', 'Romero Ahuanlla ', '16', 'farwrq14@gmail.com', '920605027', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-13T12:16:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(138, 2, '4c966d01d08ba5351f0f4826f188f5df157808fef1126ff165bd2ef4737a9c95eafc1033e807d98dd27b6bbf79883c69693f5ffefd92e308ecc29898bf1c995dXaJc9yULk6voC3Q01kbm12c+KZFGGIPvUJbTUSu8EUs=', '1b58eba9a72301866b9679d791683de3', '8f41dabc40f95daacf4122426057a15b245bccdfd2e5f8a5549abdc544775c41959f72c9d0efdd62f9b983d64b1ff8e70a260dea3bf64074ba97bc06493c3d1arRBHbfem/X0CT8ClvT+O7HI/f8vZN4FbHMKBeu1Shsg=', 'Pablo ivan', 'Chamorro aguilar', '17', 'pichamorroa@gmail.com', '935831762', '', 'assets/images/cip/1678751172.png', 'assets/images/cip/1678751135.png', '2023-03-13T16:25:40-05:00', '0', 1, 'assets/images/users/1678743608.png', 'assets/images/fingerprint/1678751238.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(139, 2, 'c70f1ed2514376958763bc4447074895573b66b88ae97d32c9a2c2122002e0b34d452962c7f2537e5e79d2c18e66cac845137c75f8f587222bc6a5bb6090002dUaTgatQEHkSXRDLqUaswM3F9Ztq22fWHh0+TRKHHqAs=', '1b123eaf3f331be1e359b7d7de58fb56', '2e0b3f9f954bf0e56052431715492bb40aeffc782c1b5a2e4b7d581a9b2485ae85da5c92a10da98317bf5f029aeb75b0095b25f8a7c281cacd9c2caf8fefe218pvlAEO+OvWjUsdY+7oQR8IQmPt+Q8IIclEHHIHe87Lg=', 'GILMAR ABRAHAM ', 'COLQUE NJERA ', '13', 'gilmar196614_2013@hotmail.com', '924718375', '', 'assets/images/cip/1678848600.png', 'assets/images/cip/1678848468.png', '2023-03-14T21:42:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1678848630.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(140, 2, '6dbf86ba925ade8870fd2dcddaa2492eba167f2e8df963ed1b0200254291ed67342c0e4da19129820f611f61438192168661f026a69646f001c5194e763eca099P1/AzxuaMCwF3tSmDw0QCYmcM/Z9dC7q56gejYrYGI=', '8c088f519ab19a0246967a0e1c85ac72', '9a0885d76409835ba05d8ab0938411cf29dc4763a68ef43e4603d5a44d1509163b9291eb4ef8e6e376059459f81099d2f2826f9b1a3eb8d35fd1500e28abdcd1YgwXmfeR5RAo7R3NakXigXfadogp4bTLyUoSmqzOyIA=', 'Anderson', 'Aguirre Yato', '12', 'anderson10108654@gmail.com', '971146613', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-15T09:11:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(141, 2, 'b05ad1c728dd25932ac9f44ec4e9476a7db6f09c8415027df1541f27ee39bc789095d024b78b0e7d1adf2a789f581189ded364ba1d1603c373ac7fa165d1839dP981pSUPOf0hxup6v4jNoXQg8rl298m5NbEtTGlbEXo=', 'f01041ee85029548bb93084359c3c541', '130262110825b16d1a3b729cca33b9a8d1eb98affde827b00edee598c6bc520458f725b8d5cd7face99b7cbc11058d6576c4ca6db9b8184fabb041327bf5abd2cVfYaXDrnEgl6qteHZxcdn5motzbf/vvfHRQWc6uNc4=', 'Rudiar ', 'Ruiz cordova', '6', 'Ruyz_78@hotmail.com', '984988060', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-16T10:12:55-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(142, 2, '394856cc381b8890cc22cd3e1ce91cd18201d3ff0ca23dc0ef3ffa1aa25d2b1892d417c6bbc220b133d6d939981509beec768b590b84fc8ed75d184f0c14fb7bQpjm2sScRuS1yHvDtfBzPok0HGOB8akZr4GaM9O8a3Q=', '9b029f0f4b26e578dc07d324f2840aef', '9636f1199caed72e59a0e6cdfc0f96eaa6a0d33801f91352d587b89002a835ddd07303c9c59da9c0c6949b01a89ba036892bc46f824e5059ee91c48dc000c60eU+PWDAw22OMLPx9p15xWHp0IfRyroBQItoXzHCW/Myk=', 'Marco Antonio ', 'Villalon Quiroz ', '5', 'villalon23480@gmail.com', '943023011', '', 'assets/images/cip/1679090738.png', 'assets/images/cip/1679090634.png', '2023-03-17T16:55:42-05:00', '0', 1, 'assets/images/users/1679090519.png', 'assets/images/fingerprint/1679090949.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(143, 2, '7fb46023cb727c7a59c6cae4a0bc4d42606aa5bea4f55f61e0ce210b77694292851fba0ee865191a5ce4a2926672a5f03be077355cb65265643ff73a8845b839lbNNwt7z2J8JBdIK7U+CWNqXiiENqeJ/0reHrW4ufoo=', 'feffad1eb8a32c8f0c6be3b308726018', 'bb74017534f8655826cfca885edcee253c01e7394191c5a0e53f605427c9318d81546c796d9433329743e896a74b6fd758b9999ddeb4c4a706b15d49b253ee67++CgTKBsgspVR2NouYbC2aDrwbTG64P88zR7bj3r4r8=', 'Cristopher Alexis', 'Cornejo Foronda', '6', 'alexismil80@hotmail.com', '954052309', '', 'assets/images/cip/1679360819.png', 'assets/images/cip/1679360786.png', '2023-03-17T17:04:11-05:00', '0', 1, 'assets/images/users/1679360653.png', 'assets/images/fingerprint/1679360889.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(144, 2, '749c114bd527a375e095d59eca94e8ec18e24e345c642e0cacfabd252851e402c4e63da3d7c36a538bf459322bd5282d6bfa12b4fa681cd47e59c4bf1cace262fASO9pLUmJ6+3dx1pOzPVP0roJIwZcUoRpaac+W7mGY=', '9318e4a929124448f86892be3669423e', 'be05d68720b6b4558d1c02fb90e3f6b411a49cbcc9f93893182c35a8ef97b03cc75d4b03a2890d0731c00b9b6207de3d1cdd5e54ec4db7bfb6c56e5836e93e64fGuizq5d4s3cEyiFWEB8ldUgMLDESD28huTiLsBXk1I=', 'Fulgencio ', 'Antonio santisteban ', '6', 'fulansanthy@gmail.com', '972688761', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-19T12:00:17-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(145, 2, '3efba32a3155fd55e971b651fd4ac213671cb670babb3b9f17a59dc45eb5c1d119c71d2e044f56cbd5667148db245c7a2aaf4f1f88f6c7063915d520abd93e84i8ATHTsyzgpOmf4B4ldlHznq1d3PmE4nOCgOkuSVzQ0=', '5acaec6ec6c6c9a3e69f3c42da57ff86', '527e6d7c72bd38b8540db1077c8f412b62848cc5b6b6debf758fea5ec238e66c925d05841c4416716ce89a5befd80e032ce2f3e21497e16e42129b97538fe682b6G/vZb9MXJvObPaIdlmGsMdrA3hy/V6CyUoOkMahdw=', 'MARCIAL EDUARDO JAVIER', 'PEREZ SALAS', '6', 'Lalopara_rato@hotmail.com', '974035300', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T14:03:27-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(146, 2, 'e9ff47707e9c68490a09a87889ef430e1227db2b5ab1fddf915c14203fb5dbef6c3a8624dc339bcf9edb7e3ac0409f20ff6ebcb88df1c0ba700ffd2775c6cbd85dcTGj6gbEUHviBgL/JAVQ2niGqb9TgIQcjppa1UgDE=', '2ccdffb18a2160b845f21cb8c09ccad2', '155707ac4295fc5879c41af77d73373fa884a9c92cc4e58e056be062f50c796137e5ef5ab3ef68710e5ca772bb5a7e3347cded60690edf66cea345d7deae80e1gtBmsng8eKUHtw8NGyPNwZ4IPUA/zo6tcrYIwhKtaDM=', 'Manuel Antonio ', 'Delgado Amasifuen ', '14', 'chinoperez1360@gmail.com', '955608306', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T14:42:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(147, 2, '63b2182f58b1a35709f59750437fe5373ef8855cea96c2dfe71247a9a2b4b0cd7e0c75ac6a16c110de7fa68f6599a82f44ad2075c7d7bda527ff450675e0af33kIg2tv8UMUjMh3prTD/ni74TM0W1+l669mjwITuSwgE=', 'a26380abe1c88009a0da839bd90b5c74', 'cacae3c4da5121d4921075b569fb53478e1fcbd389022c198cbd544d806a252fd9b3d519e6048bcc6663e3d471ab58a9f1d42899cd787b7cb3b466015d334e93TVAqaEm73ciQffERdNDY0kL2dIoKIuyMQrijtYNBHNs=', 'Chrystian ', 'Ruiz Silva ', '6', 'lince205@hotmail.com', '936261648', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T15:23:29-05:00', '0', 1, 'assets/images/users/1679344123.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(148, 2, '170dd8cc5bd10ad9e844fc039a163d6ca93e27a50b76759ea5715bde0a9e5254265dfcbc73f9ef0b31a6ad80df8f81a8059757875b3d539f59dc0ee5d764a290nNm343sa/cg38xB8qnYfBpV3g5Ygds7JFQhv0i23oyY=', 'a4dff1cede90915e46482bf638ed0b46', 'd5ba2b3f7e437cf805e0c76ad2cfb57211d3b93fc8cc9b3f6be15148fd81a01b109caa70d43e978e32d99ce652294bbe9fe273e70527b08cd2f29fd42133bf2fegY/4VTGGqerSzzaRkNJWUQqSWaYOQ3Oeuq/RQZPZE8=', 'Darwin Ronald', 'Collazos Durand ', '5', 'darikar1379@hotmail.com', '955858565', '', 'assets/images/cip/1679346105.png', 'assets/images/cip/1679346071.png', '2023-03-20T15:51:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(149, 2, '6b1b63ff2e01f7a646a92ec69570b962105e7b38c40fa496bfe5b3adbfbaea9c4a299e88b27df2191f439bdf57ee07046ffec859a4034c4256939113003007b2YvS+Zn/pXb6krZa97rftA2nw+fRD9f6QMftJcJ0oM1M=', 'a873dd04b4226848acf32913848d3762', '218b7874302c7ad39a7fe4872974fa872585df00aee14ccb753f5929dd5a41b905c97a356fc2d89959e8b1109a07587cf526a009e75feb7f1d69e38a0e8f35f7Q9DYJ7qmu9zqAbWtxlvoYN1P2vx4Mm6TbiTSmhHx0k8=', 'Máximo William ', 'Paredes Otero ', '6', 'mapaot@hotmail.com', '996610007', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-21T13:29:43-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(150, 2, '328769ed2914fcee992af85b994c35690ceb23bf86a6695391709deec7dec84c01f5caecbb8c4279da278f2cfdc63e02cd74d6e3fb5c9285d542646a0495a982QF6dV3tM4NSv/4Fu3wDSRJCFkJpoSsXBcX7TnK4vuBg=', '19dfdda00b49b1e94651739e5970bb9a', '3ae54f604d999cd19b4f1747dc6168d93c388263964e6f46f42a1ce4d5db542e2a39d56952b653f8cd7d91c16a80ee4ba2e7d57a1ff31cebad7531fe480f8c453DSAT+Bh+h8aBjYOc3k+zTOfSJuiTpfRCEX63zbxB2w=', 'JUAN CARLOS', 'VILLANUEVA VILCAHUAMAN', '14', 'jucavilla34@gmail.com', '927585304', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T10:10:36-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(151, 2, 'cb5c7524fc99657330a1e940a23c041c66acd7476cb35843fd5bf222c52f9d0532d0696ee78b0b4160e9d6760e2d9fed2489fde5a317bf25d4460398172ab31ad3jzBBDwd9etUZNqpXh2qiuXKvkmc4jN/LIoB864L2Q=', 'aef50c3a9e7af24ae704a2941bf7ab76', '006c099e988bd6c855f9b6a061413eac430eee390c2cac36ac5c2f8b32dd98c47a176f77c44976b336c9e37fdcb18a0ea65979e957298b5dbf3eb5064a7e643d7GatL+4UXY+AMtiNMP+3sGkTdl7k/ntDCuD/vfu8fUg=', 'Jose deyvis', 'Rafael blas', '16', 'rafa76jd@gmail.com', '', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T11:07:14-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(152, 2, '6ad092a7bcdc048cbd7bcbb8d87402e4919ea0458ad890998bd7db15bfa4e8b9d7f463e784444cf503ff041fb462f93bc1de372a7b0d6dcffdd222e47736c8adMX1FIrd4btiUwjAy7mWyv/PUvmCsiRZDvzG2WqcaMnI=', 'b6fb6db2ddfcc635f1b7867e0642289c', 'c801e3848d9a241999c641df1584259c9b42371d97b5ec21cdf2eda49a22f6f4df72d7c12f9ab10f1bf59e227363ef0e7d8d28e37037337e37f3be03ccbfa1fcuV8rCOjNKiVC3gluqyThLzPls5dLCw4dn3NJ+5R+DGk=', 'Oscar Elisban ', 'Soto Quispe ', '5', 'osdisech2000@gmail.com', '958139656', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-22T12:16:35-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(153, 2, '5855a4c94e60135beb2873934da8371bb6a79cb16e2fa1b3448491d215efe8a29582dc32bce61d7ca22be15be295068000aaf9b4ccb0d76942bdc096b28e91d9JFM0TVkTxKTTIvFooyDlFNA6Fyh3RTBcknYIjSf9cbE=', 'd9ddb27ac22d216120d50c4973e126a8', '38e6af889c4b807384066ebe7a937273d7ba286a4e7866c5dc6bc4f1bf4152035d9538ed1b3afa6576cff401b5cb140ccc4d7d7f6e87e5ce2d4502f976750dd3lS6YOkhm1mLhMBwnp/5aJTlSplGzimR2RnBJjj4pdgc=', 'Joshua Lizzet', 'Figueroa Tineo', '22', 'Joshuliz@hotmail.com', '987171905', '', 'assets/images/cip/1679630156.png', 'assets/images/cip/1679630912.png', '2023-03-22T22:44:11-05:00', '0', 1, 'assets/images/users/1679630499.png', 'assets/images/fingerprint/1679630359.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(154, 2, '0a4e2f23fa4253dfffccb184e7247d81a80d126d8b16cb30863efc2cc99a6726af35079ea8a0c85af1e8b6a8fff51e1b16777254d9a5bceb2ba4359141f7a8adi0cuXwrVZy3KNAHqz7vTUa0NxlLyfO/CfhokA2XdmLY=', 'e0d7b9240584d045937d0278f4ff119d', 'dbac89d3b1d90d18d1d6cc3c8b7da50003fe8c2af7d844183c2ae3774b668685a6696a8beda2ef8cf3eaa76f8a3d3a6d3c14aad73079a1d74791453db05fc8b5g34b+Ego/lIHA3g1fLU/na9YPy286FPduQCIvWp1mkA=', 'Obdulio Jesus', 'Cisneros Figueroa ', '5', 'ocisnerosf@yahoo.com', '999863537', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-23T10:31:37-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(155, 2, 'bfbabc59a778123ac1c5c266e25c75e928f56da25edfd2b9f2bad285a0b6309f48f52988d900e88efd7e3c29fe1a6e43d7e06a9b8df185832ce217a62c6fc48bmwnn0W8R3gBv8paRmEDP8puVRZVo9kqV/kW7+YOtb6I=', 'a6648ebc7b436857692f659dc75ae46e', 'acaa0249e2161a58b9a668af4acee6eac2c342b567cc24a3cca4f2e8dd569a543246e1f7db1b65ac554b90966ff51c43e9993d86c14be73ebc946f387bf07025JjaYh8wILJIDWl185UVvPt2bBk6S1EGi2M2X7M7I0Co=', 'Jorge Hibar', 'Alfaro Goicochea ', '6', 'Jhalfaro48@gmail.com', '954988791', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-23T13:35:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(156, 2, 'f02a34c5e5768b8529dd3e2a772bcc853a4d279a75adde7dd8476d4f448e9b9cc74c10fa0ac022af1d9fe1c60c8048df3f37188c9b10e48d1422b8cfab8039bbAdEq1wzWKWrvenLBbf+Wzp2i1+f1G6Tz1+/BMAp4/Dw=', 'cabb90e78319f186fc6f912894d7fabb', '170c792f35d0556580f527a2f8ddec9d8868d0460d6a3e16c9db6ff9db03b9adf6b1629ec47d9368ec72d652a7fcb1110785126ebc46078aa4b02c59ca277cae7utqC/Xy+UV2ntBQpXHGjphSVRzConlt+lbIzo49xJU=', 'Paul ', 'Loayza deudor ', '6', 'alias_088@hotmail.com', '928486854', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T07:02:57-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(157, 2, '355a5e54d1e294bc5ef5cb74059b0cffe40cd5e0e718bd7120ebff95be7ece36734165ddaa11ac86778518582edb247d2c15885d333aa5d7af0ad035cb3a70cf9eNAPmcu0yoc9hHfDGYvSGdW7vKl7dYw+HK/ZpoRnAs=', '2e6401d953dffe971c148318fb89c3ac', '6ba5ccb099055f7aab12457e2067d2f0688276923868696d9274bf6e9d260a05dc99042069d7ac8c8fac8f03f14404bfddd84adad509d56c17b2977ce40749d50yFcirvmcepCust3tmlfvvlYdWOSds+ycEv5PkYjzqM=', 'Dick Deivy', 'Rocca Novoa', '13', 'amazonasprg1979@gmail.com', '977456830', '', 'assets/images/cip/1679665360.png', 'assets/images/cip/1679665342.png', '2023-03-24T07:55:17-05:00', '0', 1, 'assets/images/users/1679664281.png', 'assets/images/fingerprint/1679664925.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(158, 2, 'e05e6745e88473e408126aef81305b20c7ab69ae1bc408b5414d037d80ddc1c0cc37b19f86698e7d20c75f0caf99fefcd1c74654ef905b86807154eb307bbecafwgUgSYiA7SmLFZuKf+iUz1dktpzt+Twr0K0oWo0CnQ=', 'c071c77ce80c588b10dfd052a7d39dac', '1e47694830370b9ace013a477ccc5c847070074d42b7eb82efad4557824fb19953cc0505f93c86fec3a22196588a7e9bf05986e3e645b65c6c77bdf2e03c033cL4NyO+bDOI5AIi5va4Catx//pKcUGQaq1UvWz49tCXk=', 'Julio martin', 'Molina berrocal', '12', 'jumolbe_28@hotmail.com ', '952216070', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T11:14:53-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(159, 2, '0f4ff15795589255e0e13d0c7bb21581ad1e9d8834e226343a14a8b9290d9862f315b021b3a7863b0f89500d6af6eb335a6baf13e68855b6d517a629462667bcMM+oqJeaCq4c+f0xWmmCggs1twcCU0jsbjTA/6xhSIA=', 'cad4c20e0eb3b74ef9031ca381d09b3c', 'e13b65e1d457458df0179a717891033bc09a5ee423c51f59ccea062c042221e4808a4f060787de2ed597457c8c414223fbb29da1a9ac3421f32e85f1056c40baz5afIXii2JtkTnhHMEc3xhPBYEQh3x2VGqrbCp49+Ig=', 'Marco Antonio ', 'Jimenez Lazo ', '4', 'majilazo@hotmail.com', '996631276', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T14:36:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(160, 2, '946498fd72d48be977a4457548d6b6709c386fb7ab11ad3fbee785c6851f2958b6564c54dc4dd4bdc0cc9a609a3b4d119d8ffff496de3be017776e3830a198b6E+QCAldEfdqCQFVeo2zB9imz5/Y26+oWmbejPzOA+gE=', 'b96b0d3e990037d30e5c2c763b8b3f8f', 'dc6f070f53568ed66450df122139af88ff1a193a49ed0a7185779e7d8705598e6c66dd92c712d818be4a6dc1e314897627f611c40217c7f2b46db73d2fc9c938MtZL5p+ifq+PvYFfyr8trbr4oeysXodAAUwV1fkQU/o=', 'Keli celia ', 'Flores Villanueva ', '22', 'Kelicita680@hotmail.com', '953678398', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-24T15:54:13-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(161, 2, '5a5e578e3076c6ded6ff858c619c37affbefbca4c0ccfa7d642ec49d32b7d1cfe6c99d8cf77354a9f38704761c0d551d7c47130c80e18c190561789a8399a5fek5tmVdKWkewRdDBTS1J43iGlLg1mheiAIzOyLDuiDck=', '23621a5daadb59d7bd9cd4aeaad915c3', '5fbaf5fe83ee9c211e6ef6d3b115af77689a09bb89328afdd4a038a61e8da5e525691456680c340df06860ec83940b833ad1953d39c983d306e43f0affdb1e92A0wThCc8aeUMpVWMG+/tidDjyFedgmT7qD1tIE/l79Y=', 'ALFREDO ALEX', 'FLORES CHAVEZ', '4', 'alfredofloresperu@gmail.com', '988072471', '', 'assets/images/cip/1679697623.png', 'assets/images/cip/1679697742.png', '2023-03-24T17:02:18-05:00', '0', 1, 'assets/images/users/1679700606.png', 'assets/images/fingerprint/1679698728.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(162, 2, '9683b3ccad5a91dafc4364886b8a326839984f8140a65159e988ebb089dc31ed0a61f1a55a701244f62c2f4c79d4a88378b6fc2d1b8b37c680e7ed8bb86d05f6yybdWFluNuHIFpL5TD3oNnjTdoP2HbaQ13sO/s8tNzY=', 'e2526667ba3453bfcf77e3b48a33bc11', '040d7f6658d967e3e67b7b734f06154793effdec7ad02fe0a18927244b3c37ff4df5c3a42ad0fd072d9ca868597c16ce930191ac98544c25b98b455c5caa579bD2pAq0JPhdxQrjzQlGhAukUg7C4f9e+g5E6nqHpAqRE=', 'Victor Raul', 'Carazas Vilca', '5', 'vcarazasv@ejercito.mil.pe', '932397524', '', 'assets/images/cip/1679699124.png', 'assets/images/cip/1679699103.png', '2023-03-24T17:49:46-05:00', '0', 1, 'assets/images/users/1679698402.png', 'assets/images/fingerprint/1679699235.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(163, 2, '5b7d0780c7b1e870bf4fc44c9edfc5915d48bfc7c83aa50353ebf6d4bb17308b2366e5c9bf4095e0098b0870862972246933b8eaa884735cb0fc20249a407379V0PeoNO3gqsP+pyTnpjnkhah3usycbiYsEAnQQSLnvY=', '0731c85d364aaf33ff8632a6142bf42e', '2d37cf7c89b3a8c791f20f62324ee7f7d5a0b6899db381d74d10edce527a4c8df6202cc8a47d3e49fab98c2bd5193e235fde701b7bb55a804fbe487124808c403YMtj4Q/nlC/XnwWa9Jbtbm9F2WvIDWDiAbWekI+R04=', 'Eyner', 'Cordova pea', '21', 'eynercordova27@gmail.com', '939880411', '', 'assets/images/cip/1679942537.png', 'assets/images/cip/1679941590.png', '2023-03-24T18:26:21-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/fingerprint/1679941738.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(164, 2, '9749cefe734a36db35ec67482bf17a94ffa892201974b6c039b066050c9d4b5d1aaea3308d7ab9551a3f2048ef4f8161bef2df02a228e3c4ea1931f1375dc8a6ClCibVDoEJO/aLhCC3JfjzrisiTN1xY579I4VAkacko=', '5ac9b3417e0883809bbb24bbbe090896', '05b3a0784fe72ce58a1ea6cfe2d96c8bd3fd68f2a335d1ab04ea987f28e5e793adc42cc2c7e5013212e43179e9e907a7d36020843220aed82ac2fd376feff89clrU9mS5CjcbF2Il4sZNDO23MQvIjp39Sxjm2jk27Fqg=', 'Rafael ', 'Alcandre Angeles ', '5', 'ralangel111@gmail.com', '988466241', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-25T15:36:46-05:00', '0', 1, 'assets/images/users/1679776728.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(165, 2, '413816cf769cdf657e4e4e72bee5d9880ada2cb9cba7bbfd17a9b723c6d8d1c19d3ba3758f8f57e3e1bbde17b96c6739e2559f1a6b02f9c732d30477592a09e0PIxbj1At4tqoBHoOc6pUMRg8RnrpA1XRL3GT2bmwDlo=', '9a3bda5e54eeda5a0165f0717dab531a', '04b46049f13ea43dab26dc955c77f7a68e47aaffd9e25164203ab98e4972843f5be498823df3256cf726d6a127b1f501e7c47c89bfcc77cdf83cc7b40617015dko3c8bU1x8i/vYpqonhP35B5DogU7bdwMxP2odt7nJc=', 'Franco Anthony', 'Ayala Odar', '8', 'thonyxs.19@hotmail.com', '963809412', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-25T15:59:09-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(166, 2, 'bc0640dff4c851918d318558c6c95e44570ea245633f33483ea76ad77944c2168aae3b7451cb47de7dccb83c1cbd9c12bc4005a9bccb242a5b575963a94537903hDwpYaH3KZNj5hfsBgj397/kMTGsU/cb5Fr93CUtP4=', '855fd7422ae3716ba32cedbb0bff0653', '1bb0c781f853c15f0b3639421e4e6e5a8e363e4b15b74dc11c7e4ffd761756102473158e6a0c0e5088fa009c9b75f97e2cda9bf35f3134ce5ac08f98bbc6d568e3WrUv4WKUI5fXSHY+DBYFI3Scj8bNCbFCJbrkS9UGY=', 'Hans Lander ', 'Guerrero Alvarado ', '14', 'hanslan24@hotmail.com', '988009516', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T00:32:30-05:00', '0', 1, 'assets/images/users/1679895275.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(167, 2, 'b71cfd7d4c7a48d54a5ae67fa06932f0abf4836e1eb6005a77544fb7d57c47c8189ae0f85d47ba26e91647397ac8c41fffb9169120d8b629fed8c4c94cf0aa0fZzZpHLveACrJgFW+bm2s9pa6MPBnamP+juH3KCl6Rns=', 'eba23bcbea6399ad8832c1dcbf921bb1', '0e841792abfe3c3f0aacb4c07c0a882307574a60f453794df5372b639b9de0fb8b432431db9c10f49463c4506849210062dfca45036e64981e3e3e05c83968b8TNh4RQ7WsPuAwuTBca8hRP1byiffCNr7AoY54b/sFgI=', 'ELIZABETH', 'CARDENAS GAGO', '14', 'jarit11@hotmail.com', '943282104', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T13:13:59-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(168, 2, '10bc87fb2213e263e3fb299034ab6c6734eda8aeaf5bfc7826b681a8b1d5b5793376503aa9461a5d0f19449e501574803d8bcec6b28ca9f30fd3820833d5b7b1eZOkEpvAPabmmEvFt8dZERZw5OHCiw0U4ahsbnRWVSY=', '748de5906279bb4e6555a512a7eaeaa2', '623fa7b90db086e3365fe8bddb29e59ef0c8adcf75ad8a7166f870f9c8ae1b0bdc395a17b57642c16d9215c9b94d0c80035fd29127a33e398095da9f67f7cbfdaIRO12iXzi+kd9aYnDzEIi5E/u5KFfZT1epBkXRh9FA=', 'Nilton Andr ', 'Alcazar Rojas ', '6', 'Anccoellomon@gmail.com', '946353071', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T15:43:41-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(169, 2, 'eb42a86382b3add154f8956218d06799d206d77aa3e3b54825b06cda11e2de8c26402234e511ae87a15e15c16a19bdb2ee7b86750f9bd89a21d2afe8c2de5437ZVLRBvhMyywlHn85MtU5ry1QezvuCScjIUFJoWv0TdA=', '3d31d4e56ca71d07049f701626c89b1e', 'efc93499a44f3c171fe38f8328c8e194d203d9530f8c6b0c2f8d540461160bc38cd198cd3ee0d4eb1688568968803be16c27c1962f1e94015543c28459319f855W3eWIqTBfmvCk1pQIbpEkdaK3psJyv4p2uEj6X/icc=', 'Anny Aurora ', 'Coello Mondragon de Alcazar ', '6', 'Naar11283@hotmail.com', '934527634', '', 'assets/images/cip/1679950443.png', 'assets/images/cip/1679950752.png', '2023-03-27T15:47:42-05:00', '0', 1, 'assets/images/users/1679950556.png', 'assets/images/fingerprint/1679950469.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(170, 2, '7ba4d621c81c856b7bde65f14fb1cc2b5582e81e399e16721cdb4a9d2ae3870a4a1dc23546fc2fe10289e79a1da6bcc23c05b401aa1db44b5567a739136712adY+Zie3nunRlTKWmPbNNo/VzgPON2KBS3/ES3HX8/+6U=', 'd1ac85d79da78e3d0b00ffff92a8b66a', 'cb1fe4cfefd71aeb04744ea82ef4fc73d1d952a055c2dc52c7314f93fa3df7ac621b87d39c22be516097059c00c3be833386bb9622e03667a26c1798c6d2d6e8fL8NTfYBGeHI/ZOPBitxDdqMjWBx7CIFPVdTQnHpbM8=', 'Jairo Yasub ', 'Churata Tuesta ', '9', 'jairojas7@yahoo.it', '987790504', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T19:34:49-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(171, 2, 'e329b2e53002629b8b75206d55ac8a1a8cbbe165e0ca0c7e793e9bc996eb68b059ccbf10a103abfe8aef98d46f35b98aee09a0591341f34dca8899008031992aBkqNbdseRuEecLxdmQuD0cVsxO6PASZ9DXaHxy2W07U=', '523ee6afc456fe614558da52205a939b', '7a848beac3fd3df7f00215ae02e456663e26023d5dd317a3d46cb80e94c5a6a7d0ea1e588fddfc2a188ce60a41dff101ca4d07e4cb7b2da501c4cd687c6ff1029Ev3a3yIeba94hdmipPPHvRWG4Y8/JYvBB/80qa7O8w=', 'Oscar Ray ', 'Flores Silva ', '5', 'oscar_ray81@hotmail.com', '966080123', '', 'assets/images/cip/1679965151.png', 'assets/images/cip/1679965355.png', '2023-03-27T19:56:53-05:00', '0', 1, 'assets/images/users/1679965107.png', 'assets/images/fingerprint/1679965249.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(172, 2, 'dec929a55ce17161a053a1aace7fdef431a77b58528aff5561e3a160a2b5c4c9bb4b8790e5f687ac66d935f2464bb91235b48b9fb03395ce6dcd64d076f3238fG0kI3im9lxX6dgCWNDhlH0chQqTxpcFjT/bdSxcrDss=', 'b7b327268389c00e817901277d0379c1', 'fd4b576ca2bc1981eabecaadd59fab935739d612bdf292df306e956a009653ad9426c55b4e3cc0dcbdd354bbdcc5522b515dc2d4999d5ccd53a7d859f5654cbaG9rWNLPeVa9Y4j6ysfV/ptI4y0FC6sdJKUWFcLp6HMM=', 'Carlos Alfredo ', 'Llanos Fernandez ', '5', 'carlosalfredo1976@hotmail.com', '998743463', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T22:55:55-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', '');
INSERT INTO `tbl_users` (`id_user`, `rol`, `cip_user`, `encrypt_cip`, `dni_user`, `name_user`, `lastname_user`, `range_user`, `email_user`, `phone_user`, `tel_user`, `cip_image_user`, `dni_image_user`, `create_user`, `condition_user`, `val_user`, `img_user`, `signature_user`, `password`, `team_depart`, `core`, `neogicates`, `cgi_status`, `estado_civil`, `fecha_nacimiento`, `sexo`, `ubigeo_birthday`, `ubigeo_home`, `urbanizacion`, `tel_habitacion`) VALUES
(173, 2, 'a6765e4bf8e607be898e46eac5f572f27621059174e6b1a4677c7390a75a26561cad32a0dc37817c229aa6ccabae905a896783bba31343c728180c754e817cc97RbeevGmiLGc3p7dQXGmyHod6CFkypBcHuYBNHhN218=', 'c018c99bbde310e9e06879fdec38d5b6', 'e98a5a94ee53ce9913f132dfd529b6aa4357762ce83fe58abbe1c425e51fce0ca37def3ab2c71cada6f790074b6a4a1da041f65ba1c58f971cd619da7b8c98d3fwLoGtv2lLfuEyTcKkhB4mGaF85mjYiWtrz7WXC3VYU=', 'Manuel Augusto ', 'Inocente Espinoza ', '4', 'Manuel.inocente@gmail.com', '988884013', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T23:14:42-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(174, 2, '68560c28de39ea1d9642f0591f5fde55d253e1320c2f8e424dc0b36acbc244be95a13b64422ec4dedb71ab24ecf07747855253841e26f90841d8ee4d24032b1doWNxiwQqQ1uy4rR0AVNEHO+lkGsjKSJVSVRzFP4EsCs=', '9f2f32433b76c5427d9c468753503cae', 'fa623962ba170c3f5a787ddd9c54be2ef8ca3dba52ceab1020dd30e0d594236c8be13bf02e9e1c0f1d08ecc1e455d39363bb99897f74f4306a13a3a682c397d0vB05VXNFLx/8Zf3DCGBzJr6+oZtCeslhlha/wGqfRho=', 'David Walter', 'Mayta Brzola ', '12', 'david271212@gmail.com', '978995631', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-27T23:32:22-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(175, 2, 'ba116734116b1e2bba7ad557eac56eda8a7dcba33046feb9133eec5c675737f8c7104d1f48ded0d1db8669fa9f938b75c6b0035135f9497fca9925e8693948735ohl71v0jTOp/lpk7iZ1DMYlW2lrtMKKbmh/g/WXnC8=', '312540e617b6c8d112d9f196a1e0c880', '2675db31807d3935e5aa6ab0c600c71d8ee7a428a0ffa1f1ccdf0e9d437528effa0c80fbaee2376b85efbd8574c0724ee9c07129f8374d7794fc01c7a35388bf5CEPq7MnGozCUqrnuJpu2IWwCEw4VTilS1lC/pCpLNQ=', 'JORGE LUIS ', 'MACO CASTRO', '12', 'macocastroj@gmail.com', '920136259', '', 'assets/images/cip/1680091543.png', 'assets/images/cip/1680091511.png', '2023-03-28T09:12:24-05:00', '0', 1, 'assets/images/users/1680091811.png', 'assets/images/fingerprint/1680091594.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(176, 2, 'e67986c840c1ed0bdfd689ba87d4521816bdabe60563a2264096732c2703d3a05569f423f21de4e89eeb22625f4159871606628fb90398fd0e52836258c37f21UT4dJDAU7pG4bMFkY7+BbHBx5I9ydNuBAvX1BYPe868=', '465a403269feda5d234e174326e62fb2', 'a32d479388cf802b0193c38e8ff395de79dcdb6fad5302e06e8bd6c47e4b877b15030b8e463c16b48f5ba3e81bda700adc12b84b690817224b694484dc8e51a98dcNr6jQBAFgEP9+tR5DxnyQpuDYQ5P9H56KGvZAebw=', 'Henry Enrique ', 'Zevallos Melgar ', '5', 'Henryzevallos1983@gmail.com', '999839445', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-28T17:52:46-05:00', '0', 1, 'assets/images/users/1680045353.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(177, 2, '9cfd907a2b0b8371f5a9fc7b527de24231ffdc0393fe3fb09bf6f30cc368b1c3596241493a2f17cecacaa0cb4dc3c9ebbda597f465f22176208a68a57326547claugxGpJ1N3WOzRwlXp+jTsk/TdUfCU4Bsb4noPK74U=', '5bf095411450eb0f62e570688c7108f1', 'e4ec84db815fb5e9c2505f886bce0512442f2d60f978757a9c71dd4049923220367c09d9f8c9e62e7193437bd425106e74b700823ff8e0c76043054709559153GHgEJTYr/1HvaKu5u4t/s+/pbDDcLeOtVEjr3NTAGOs=', 'Wilmer orlando', 'Ramirez Gutierrez ', '8', 'worg24072013.worg@gmail.com', '996024966', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-28T21:58:45-05:00', '0', 1, 'assets/images/users/1680058890.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(178, 2, '605e019b9400ef2b3040e31fcfa65f32cc15f38781a0363ce55f5aa21b75c497bd4f07c8889c4e35f1a137b5625007580b84967bbc6a7de641281d13ac8e0af1X95Ao8S9maucHQHm4xCmWfrrCHCoHRIaTxB+j7qY+OQ=', '7460329f21934f3adec5c0edb9e02961', '256c868b9cc0f591f1644999617a74acfaf2e889bb5d2d86b3f9468a1719fd03bd096358860ba96d0ebb4c1cc9369ef54889836fb50b0cd7ac6ccaea1cca3e732PeMHnD/Ct0WhHDS5QkMaTldPc+PPPZ0QYFZ9wEAZ4c=', 'Brigette Alejandra', 'Romero Talledo', '15', 'Brigettealejandra15@gmail.com', '920674674', '', 'assets/images/cip/1680145304.png', 'assets/images/cip/1680145441.png', '2023-03-29T21:56:58-05:00', '0', 1, 'assets/images/users/1680145459.png', 'assets/images/fingerprint/1680145425.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(179, 2, '7d6ca7eba9f158463eccb76798c3f870f289f77f24b48926957b1b224c9db1aa3e86e21179fe6ad95fc7230ab4a40378cb7f863bedbe079e7d72e53f1a690898LtSKfnJ+vcNBYheo2iRQ9OTM1k0WJT/IyLddF9lp+wE=', 'e108eb2f3d192dd40eb0d26f5bd65e49', 'd3078f973f1f5d47ecfa27aa2333422560f9be0857713cf1df62b5d35325c9eee15722441e06809790a45051ac3801f5fef3113d645b80aa09dd2c93e0cdec81Jeka7jAZkQdjw9k1DhCXD56kODzCta9pBeUkWU2MhG8=', 'Gianmarcos franco', 'Ticona choque', '8', 'gticonachep@gmail.com', '956139491', '', 'assets/images/cip/1680196151.png', 'assets/images/cip/1680196144.png', '2023-03-30T12:03:33-05:00', '0', 1, 'assets/images/users/1680196045.png', 'assets/images/fingerprint/1680196191.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(180, 2, 'f8e1d92936404d3493ae43967dc339dede90a9a19b389570f9bcf3460accbcce170d20fc9a9d7aa198fffdcf2d363e77a1bab2c0b0b540950f699c526fa1196dIVi3hhhtYXIHeN+2AEJpe099o9wlwbZT+bp76cpyo8I=', 'b805de96a1e5c0b5e5ab8ab439240105', '64ac055e270560d643f9019b2855fd10a29143ddb4ae921998e8d39e73025a67a26b38a69352c2b9accafdb405923dd9fb59b9e858fc48580d27343aa4a84b73OSDqTHFPRNf7LHXyXliZQz/LBz9U1jPF37CWR0gp7tE=', 'Walter', 'Dilas Mosqueira ', '12', 'Waldimo1975@yahoo.es', '958606468', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-30T23:55:45-05:00', '0', 1, 'assets/images/users/1680238718.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(181, 2, 'e4ad0ad59d3e1f2ab2a66d9ebcda6e5049255ed9ad17792dda0bc7da9ac93353db6929cd074fad1a7ef3d98c8fb715417426e38e4d1bb6a7ba6ceff68c8b47e4qYnL7SizWIIacE+J7e1sKy8A2U6xxhSyJKSSUQZ+0/g=', 'ac02f87dfc0fa5518cf871e581e3a2f7', '9107fe6696a66677a2950fff307eeaec42ae7a7600ea7bc996e2dbce26909240570412bc00a9810ac19ac2cfb46acc2fa09dca62bee38235db13875281c6d5cbti8nW9xvdoff8SBxf4hIQ1oKjNCuOdn5tiB3O0nd1Po=', 'Omar ', 'Cardenas Aliaga ', '6', 'oca_emch2@hotmail.com', '980315677', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-01T10:17:34-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(182, 2, '7cdc6c8416ab5505872e41a0193c5d83bf342f09676ced6fee9e56023a2af109ead3dcec29be23987219ca24b393e35305cf6653bf55c9f05bd04ce71d7512c1sMwgros0uFJMZuv7j+ayroWboCBsMF3s7tstYOKjh94=', '3980a72840b1e90e59f657368d0dbe36', '8b47dcc0a1ca4dbd1651b4020a4b6ec10a1e8bf5be1f429dd1f103c58e0c05446059ebf54a480791b0e54683062fe58b306b180e8cfa83a720a444c3506105dawOlDYgtBqw6xD6nu+NhYQUemFW8F85ztVb8CvWzQMew=', 'Luis', 'Quiñonez Rodriguez ', '9', 'x100preangel12@gmail.com', '945364936', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-02T16:58:30-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(183, 2, '655b313794552f3982f69502f3c2dc29b95d3131125a984289edb548e81f2dd62bffebce28f881dd9f14c0432abb450d559b44fcda0bd0f938224c14edc963a6Q4JS/PRzKAzpN8GP5gvvAOu8EtL9iyZxQtz3CYVyMiQ=', 'cdff412b4791dcc15e1f21dd9af43c16', '335837ca5720caded649857af1ea3497d850d6f9437160b037366f4c13db1b71104cee1b2c53ed57cdbabd68b897454153949f8b7955e05fb37c6da037720fd8fGEvEeSkk1cIoeqZwIXbK7aZTfa1L0hULGGTdAVV3jk=', 'Hector', 'Camacho cerro', '16', 'hector8181camacho@gmail.com', '931687143', '', 'assets/images/cip/1680541515.png', 'assets/images/cip/1680541471.png', '2023-04-03T12:02:42-05:00', '0', 1, 'assets/images/users/1680541661.png', 'assets/images/fingerprint/1680541572.png', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(184, 2, 'a6c249c3d48a44553484e157ff215ffc332d0fcdf3b0d7fc560d1901425a745b03b3816fb184fed5183b8ea8d9384bb51eba069ff2aa2bce9763dc903d0feaa0c3EHpZx2qH9WGoNwrCBPzZHjBLhMZKzJ81zEL8ZPa9I=', '184834e1153b2c45c6f5dbc00f259cfa', '29804d097e0e494c4cdd984ca35c6ecfbd0a7c19f3805264ad2241f44ed25003eca3f119ad51219eee483edccaac3845f8a4d8196b3b6d049921ca5521bb33f0E0ZX/70WBm8FCCbErS5yY+nfEMcwzeB7/ovHce427vk=', 'Luis Jhonatan ', 'Condori Gordillo ', '8', 'aries30jhon@gmail.com', '993174287', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-03T16:58:07-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(185, 2, 'f3e1fbcca1bf3fc2b84892129cd12f88e26d4239adf7727e7b7b7cf4cfd8f82fda6ee59fb3a1de9079826b0df0824371b4e4e0944c534e137000e75759c00dd1r9DqRAk1aVKfnPPFMad99la3Wc0B5hG/Ekx7qVLAQ1s=', 'e7e265d6898aae39031ed469fc69625d', 'f16ab0af55c2f55244ee1fda5a5010984713e1a2cc1c7fba6546a040ffa39b3f036a9463da940fd42a87cccd48cd9c731713d6469977ea64732ae2777fbef212G6ZBCpqdshzOWSyGKici2Kl+zpa8aOphRDegxpuOhGc=', 'Crhistian Andre ', 'Cervantes Cartagena ', '8', 'crhistian.cervantes.cartagena@gmail.com', '964979175', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-04-04T07:38:32-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(186, 2, 'd202158f6f21590ff7253c2738623bbabdeaac912e6c334b917e719c3be255240016d8dbe668048cc2592fb3562be3f65be20141ae6a2f52967de373c9b8759d53U9/pap4j8Qzc0HwCsLxA1sSCnt5/JVbwj4ZQ5PEo8=', '5acaec6ec6c6c9a3e69f3c42da57ff86', '2d97a33a78c19ccb633f0d45337fd2d3013ebd8211567fbb6413087bdbd36fe24fe2747b5326e7e626bba1dd4e4bb86ae91e41b1c074e15a35ca39fadbbc20bcntOgQTMMdUYXy/PMoXWfkVXoizd6BBcNH9OnwDJAyCo=', 'MARCIAL EDUARDO JAVIER', 'PEREZ SALAS', '6', 'Lalopara_rato@hotmail.com', '974035300', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-03-20T13:59:33-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', ''),
(197, 2, '81be5beba0c0c21b95389d1e4cb27d7a634e3ed8404e75a08ebf872fe82dc7f388d1535dcca8660aed1b8b308ed7f76ebb10b3b4f452b188dc08b8d64c752fd0SE5bApQVNCekDlpE9wX1iOUbXekr6YvmLIRAath2Nds=', 'dc0fa7df3d07904a09288bd2d2bb5f40', '225b2652c4be8eb12a09286c9209469144faf6f590d7814245c8be7a2d6b6045cabbcd01bcd2407c3abb7f56187782d52b2e13f239ff3417a79f26080192f226IHxwnigRoeDmCwx/qwIE4+1nm2o1CKz2u/jJR3Lu04Q=', 'yanis', 'parra', '4', 'yanisparra@gmail.com', '4267503459', '', 'assets/images/no-photo.jpg', 'assets/images/no-photo.jpg', '2023-06-04T11:00:56-05:00', '0', 1, 'assets/images/no-image.png', 'assets/images/no-photo.jpg', '', '', '0', '', 0, '', '', '', '', '', '', '');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_family`
--

CREATE TABLE `tb_family` (
  `id` int(3) NOT NULL,
  `id_ficha` int(3) DEFAULT NULL,
  `id_personal` int(4) NOT NULL,
  `nameFamily` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `lastNameFamily` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `age` int(3) NOT NULL,
  `CCIIFFS` int(9) NOT NULL,
  `parentesco` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `soporte` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo_peru_departments`
--

CREATE TABLE `ubigeo_peru_departments` (
  `id` varchar(2) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubigeo_peru_departments`
--

INSERT INTO `ubigeo_peru_departments` (`id`, `name`) VALUES
('01', 'Amazonas'),
('02', 'Áncash'),
('03', 'Apurímac'),
('04', 'Arequipa'),
('05', 'Ayacucho'),
('06', 'Cajamarca'),
('07', 'Callao'),
('08', 'Cusco'),
('09', 'Huancavelica'),
('10', 'Huánuco'),
('11', 'Ica'),
('12', 'Junín'),
('13', 'La Libertad'),
('14', 'Lambayeque'),
('15', 'Lima'),
('16', 'Loreto'),
('17', 'Madre de Dios'),
('18', 'Moquegua'),
('19', 'Pasco'),
('20', 'Piura'),
('21', 'Puno'),
('22', 'San Martín'),
('23', 'Tacna'),
('24', 'Tumbes'),
('25', 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo_peru_districts`
--

CREATE TABLE `ubigeo_peru_districts` (
  `id` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `department_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubigeo_peru_districts`
--

INSERT INTO `ubigeo_peru_districts` (`id`, `name`, `province_id`, `department_id`) VALUES
('010101', 'Chachapoyas', '0101', '01'),
('010102', 'Asunción', '0101', '01'),
('010103', 'Balsas', '0101', '01'),
('010104', 'Cheto', '0101', '01'),
('010105', 'Chiliquin', '0101', '01'),
('010106', 'Chuquibamba', '0101', '01'),
('010107', 'Granada', '0101', '01'),
('010108', 'Huancas', '0101', '01'),
('010109', 'La Jalca', '0101', '01'),
('010110', 'Leimebamba', '0101', '01'),
('010111', 'Levanto', '0101', '01'),
('010112', 'Magdalena', '0101', '01'),
('010113', 'Mariscal Castilla', '0101', '01'),
('010114', 'Molinopampa', '0101', '01'),
('010115', 'Montevideo', '0101', '01'),
('010116', 'Olleros', '0101', '01'),
('010117', 'Quinjalca', '0101', '01'),
('010118', 'San Francisco de Daguas', '0101', '01'),
('010119', 'San Isidro de Maino', '0101', '01'),
('010120', 'Soloco', '0101', '01'),
('010121', 'Sonche', '0101', '01'),
('010201', 'Bagua', '0102', '01'),
('010202', 'Aramango', '0102', '01'),
('010203', 'Copallin', '0102', '01'),
('010204', 'El Parco', '0102', '01'),
('010205', 'Imaza', '0102', '01'),
('010206', 'La Peca', '0102', '01'),
('010301', 'Jumbilla', '0103', '01'),
('010302', 'Chisquilla', '0103', '01'),
('010303', 'Churuja', '0103', '01'),
('010304', 'Corosha', '0103', '01'),
('010305', 'Cuispes', '0103', '01'),
('010306', 'Florida', '0103', '01'),
('010307', 'Jazan', '0103', '01'),
('010308', 'Recta', '0103', '01'),
('010309', 'San Carlos', '0103', '01'),
('010310', 'Shipasbamba', '0103', '01'),
('010311', 'Valera', '0103', '01'),
('010312', 'Yambrasbamba', '0103', '01'),
('010401', 'Nieva', '0104', '01'),
('010402', 'El Cenepa', '0104', '01'),
('010403', 'Río Santiago', '0104', '01'),
('010501', 'Lamud', '0105', '01'),
('010502', 'Camporredondo', '0105', '01'),
('010503', 'Cocabamba', '0105', '01'),
('010504', 'Colcamar', '0105', '01'),
('010505', 'Conila', '0105', '01'),
('010506', 'Inguilpata', '0105', '01'),
('010507', 'Longuita', '0105', '01'),
('010508', 'Lonya Chico', '0105', '01'),
('010509', 'Luya', '0105', '01'),
('010510', 'Luya Viejo', '0105', '01'),
('010511', 'María', '0105', '01'),
('010512', 'Ocalli', '0105', '01'),
('010513', 'Ocumal', '0105', '01'),
('010514', 'Pisuquia', '0105', '01'),
('010515', 'Providencia', '0105', '01'),
('010516', 'San Cristóbal', '0105', '01'),
('010517', 'San Francisco de Yeso', '0105', '01'),
('010518', 'San Jerónimo', '0105', '01'),
('010519', 'San Juan de Lopecancha', '0105', '01'),
('010520', 'Santa Catalina', '0105', '01'),
('010521', 'Santo Tomas', '0105', '01'),
('010522', 'Tingo', '0105', '01'),
('010523', 'Trita', '0105', '01'),
('010601', 'San Nicolás', '0106', '01'),
('010602', 'Chirimoto', '0106', '01'),
('010603', 'Cochamal', '0106', '01'),
('010604', 'Huambo', '0106', '01'),
('010605', 'Limabamba', '0106', '01'),
('010606', 'Longar', '0106', '01'),
('010607', 'Mariscal Benavides', '0106', '01'),
('010608', 'Milpuc', '0106', '01'),
('010609', 'Omia', '0106', '01'),
('010610', 'Santa Rosa', '0106', '01'),
('010611', 'Totora', '0106', '01'),
('010612', 'Vista Alegre', '0106', '01'),
('010701', 'Bagua Grande', '0107', '01'),
('010702', 'Cajaruro', '0107', '01'),
('010703', 'Cumba', '0107', '01'),
('010704', 'El Milagro', '0107', '01'),
('010705', 'Jamalca', '0107', '01'),
('010706', 'Lonya Grande', '0107', '01'),
('010707', 'Yamon', '0107', '01'),
('020101', 'Huaraz', '0201', '02'),
('020102', 'Cochabamba', '0201', '02'),
('020103', 'Colcabamba', '0201', '02'),
('020104', 'Huanchay', '0201', '02'),
('020105', 'Independencia', '0201', '02'),
('020106', 'Jangas', '0201', '02'),
('020107', 'La Libertad', '0201', '02'),
('020108', 'Olleros', '0201', '02'),
('020109', 'Pampas Grande', '0201', '02'),
('020110', 'Pariacoto', '0201', '02'),
('020111', 'Pira', '0201', '02'),
('020112', 'Tarica', '0201', '02'),
('020201', 'Aija', '0202', '02'),
('020202', 'Coris', '0202', '02'),
('020203', 'Huacllan', '0202', '02'),
('020204', 'La Merced', '0202', '02'),
('020205', 'Succha', '0202', '02'),
('020301', 'Llamellin', '0203', '02'),
('020302', 'Aczo', '0203', '02'),
('020303', 'Chaccho', '0203', '02'),
('020304', 'Chingas', '0203', '02'),
('020305', 'Mirgas', '0203', '02'),
('020306', 'San Juan de Rontoy', '0203', '02'),
('020401', 'Chacas', '0204', '02'),
('020402', 'Acochaca', '0204', '02'),
('020501', 'Chiquian', '0205', '02'),
('020502', 'Abelardo Pardo Lezameta', '0205', '02'),
('020503', 'Antonio Raymondi', '0205', '02'),
('020504', 'Aquia', '0205', '02'),
('020505', 'Cajacay', '0205', '02'),
('020506', 'Canis', '0205', '02'),
('020507', 'Colquioc', '0205', '02'),
('020508', 'Huallanca', '0205', '02'),
('020509', 'Huasta', '0205', '02'),
('020510', 'Huayllacayan', '0205', '02'),
('020511', 'La Primavera', '0205', '02'),
('020512', 'Mangas', '0205', '02'),
('020513', 'Pacllon', '0205', '02'),
('020514', 'San Miguel de Corpanqui', '0205', '02'),
('020515', 'Ticllos', '0205', '02'),
('020601', 'Carhuaz', '0206', '02'),
('020602', 'Acopampa', '0206', '02'),
('020603', 'Amashca', '0206', '02'),
('020604', 'Anta', '0206', '02'),
('020605', 'Ataquero', '0206', '02'),
('020606', 'Marcara', '0206', '02'),
('020607', 'Pariahuanca', '0206', '02'),
('020608', 'San Miguel de Aco', '0206', '02'),
('020609', 'Shilla', '0206', '02'),
('020610', 'Tinco', '0206', '02'),
('020611', 'Yungar', '0206', '02'),
('020701', 'San Luis', '0207', '02'),
('020702', 'San Nicolás', '0207', '02'),
('020703', 'Yauya', '0207', '02'),
('020801', 'Casma', '0208', '02'),
('020802', 'Buena Vista Alta', '0208', '02'),
('020803', 'Comandante Noel', '0208', '02'),
('020804', 'Yautan', '0208', '02'),
('020901', 'Corongo', '0209', '02'),
('020902', 'Aco', '0209', '02'),
('020903', 'Bambas', '0209', '02'),
('020904', 'Cusca', '0209', '02'),
('020905', 'La Pampa', '0209', '02'),
('020906', 'Yanac', '0209', '02'),
('020907', 'Yupan', '0209', '02'),
('021001', 'Huari', '0210', '02'),
('021002', 'Anra', '0210', '02'),
('021003', 'Cajay', '0210', '02'),
('021004', 'Chavin de Huantar', '0210', '02'),
('021005', 'Huacachi', '0210', '02'),
('021006', 'Huacchis', '0210', '02'),
('021007', 'Huachis', '0210', '02'),
('021008', 'Huantar', '0210', '02'),
('021009', 'Masin', '0210', '02'),
('021010', 'Paucas', '0210', '02'),
('021011', 'Ponto', '0210', '02'),
('021012', 'Rahuapampa', '0210', '02'),
('021013', 'Rapayan', '0210', '02'),
('021014', 'San Marcos', '0210', '02'),
('021015', 'San Pedro de Chana', '0210', '02'),
('021016', 'Uco', '0210', '02'),
('021101', 'Huarmey', '0211', '02'),
('021102', 'Cochapeti', '0211', '02'),
('021103', 'Culebras', '0211', '02'),
('021104', 'Huayan', '0211', '02'),
('021105', 'Malvas', '0211', '02'),
('021201', 'Caraz', '0212', '02'),
('021202', 'Huallanca', '0212', '02'),
('021203', 'Huata', '0212', '02'),
('021204', 'Huaylas', '0212', '02'),
('021205', 'Mato', '0212', '02'),
('021206', 'Pamparomas', '0212', '02'),
('021207', 'Pueblo Libre', '0212', '02'),
('021208', 'Santa Cruz', '0212', '02'),
('021209', 'Santo Toribio', '0212', '02'),
('021210', 'Yuracmarca', '0212', '02'),
('021301', 'Piscobamba', '0213', '02'),
('021302', 'Casca', '0213', '02'),
('021303', 'Eleazar Guzmán Barron', '0213', '02'),
('021304', 'Fidel Olivas Escudero', '0213', '02'),
('021305', 'Llama', '0213', '02'),
('021306', 'Llumpa', '0213', '02'),
('021307', 'Lucma', '0213', '02'),
('021308', 'Musga', '0213', '02'),
('021401', 'Ocros', '0214', '02'),
('021402', 'Acas', '0214', '02'),
('021403', 'Cajamarquilla', '0214', '02'),
('021404', 'Carhuapampa', '0214', '02'),
('021405', 'Cochas', '0214', '02'),
('021406', 'Congas', '0214', '02'),
('021407', 'Llipa', '0214', '02'),
('021408', 'San Cristóbal de Rajan', '0214', '02'),
('021409', 'San Pedro', '0214', '02'),
('021410', 'Santiago de Chilcas', '0214', '02'),
('021501', 'Cabana', '0215', '02'),
('021502', 'Bolognesi', '0215', '02'),
('021503', 'Conchucos', '0215', '02'),
('021504', 'Huacaschuque', '0215', '02'),
('021505', 'Huandoval', '0215', '02'),
('021506', 'Lacabamba', '0215', '02'),
('021507', 'Llapo', '0215', '02'),
('021508', 'Pallasca', '0215', '02'),
('021509', 'Pampas', '0215', '02'),
('021510', 'Santa Rosa', '0215', '02'),
('021511', 'Tauca', '0215', '02'),
('021601', 'Pomabamba', '0216', '02'),
('021602', 'Huayllan', '0216', '02'),
('021603', 'Parobamba', '0216', '02'),
('021604', 'Quinuabamba', '0216', '02'),
('021701', 'Recuay', '0217', '02'),
('021702', 'Catac', '0217', '02'),
('021703', 'Cotaparaco', '0217', '02'),
('021704', 'Huayllapampa', '0217', '02'),
('021705', 'Llacllin', '0217', '02'),
('021706', 'Marca', '0217', '02'),
('021707', 'Pampas Chico', '0217', '02'),
('021708', 'Pararin', '0217', '02'),
('021709', 'Tapacocha', '0217', '02'),
('021710', 'Ticapampa', '0217', '02'),
('021801', 'Chimbote', '0218', '02'),
('021802', 'Cáceres del Perú', '0218', '02'),
('021803', 'Coishco', '0218', '02'),
('021804', 'Macate', '0218', '02'),
('021805', 'Moro', '0218', '02'),
('021806', 'Nepeña', '0218', '02'),
('021807', 'Samanco', '0218', '02'),
('021808', 'Santa', '0218', '02'),
('021809', 'Nuevo Chimbote', '0218', '02'),
('021901', 'Sihuas', '0219', '02'),
('021902', 'Acobamba', '0219', '02'),
('021903', 'Alfonso Ugarte', '0219', '02'),
('021904', 'Cashapampa', '0219', '02'),
('021905', 'Chingalpo', '0219', '02'),
('021906', 'Huayllabamba', '0219', '02'),
('021907', 'Quiches', '0219', '02'),
('021908', 'Ragash', '0219', '02'),
('021909', 'San Juan', '0219', '02'),
('021910', 'Sicsibamba', '0219', '02'),
('022001', 'Yungay', '0220', '02'),
('022002', 'Cascapara', '0220', '02'),
('022003', 'Mancos', '0220', '02'),
('022004', 'Matacoto', '0220', '02'),
('022005', 'Quillo', '0220', '02'),
('022006', 'Ranrahirca', '0220', '02'),
('022007', 'Shupluy', '0220', '02'),
('022008', 'Yanama', '0220', '02'),
('030101', 'Abancay', '0301', '03'),
('030102', 'Chacoche', '0301', '03'),
('030103', 'Circa', '0301', '03'),
('030104', 'Curahuasi', '0301', '03'),
('030105', 'Huanipaca', '0301', '03'),
('030106', 'Lambrama', '0301', '03'),
('030107', 'Pichirhua', '0301', '03'),
('030108', 'San Pedro de Cachora', '0301', '03'),
('030109', 'Tamburco', '0301', '03'),
('030201', 'Andahuaylas', '0302', '03'),
('030202', 'Andarapa', '0302', '03'),
('030203', 'Chiara', '0302', '03'),
('030204', 'Huancarama', '0302', '03'),
('030205', 'Huancaray', '0302', '03'),
('030206', 'Huayana', '0302', '03'),
('030207', 'Kishuara', '0302', '03'),
('030208', 'Pacobamba', '0302', '03'),
('030209', 'Pacucha', '0302', '03'),
('030210', 'Pampachiri', '0302', '03'),
('030211', 'Pomacocha', '0302', '03'),
('030212', 'San Antonio de Cachi', '0302', '03'),
('030213', 'San Jerónimo', '0302', '03'),
('030214', 'San Miguel de Chaccrampa', '0302', '03'),
('030215', 'Santa María de Chicmo', '0302', '03'),
('030216', 'Talavera', '0302', '03'),
('030217', 'Tumay Huaraca', '0302', '03'),
('030218', 'Turpo', '0302', '03'),
('030219', 'Kaquiabamba', '0302', '03'),
('030220', 'José María Arguedas', '0302', '03'),
('030301', 'Antabamba', '0303', '03'),
('030302', 'El Oro', '0303', '03'),
('030303', 'Huaquirca', '0303', '03'),
('030304', 'Juan Espinoza Medrano', '0303', '03'),
('030305', 'Oropesa', '0303', '03'),
('030306', 'Pachaconas', '0303', '03'),
('030307', 'Sabaino', '0303', '03'),
('030401', 'Chalhuanca', '0304', '03'),
('030402', 'Capaya', '0304', '03'),
('030403', 'Caraybamba', '0304', '03'),
('030404', 'Chapimarca', '0304', '03'),
('030405', 'Colcabamba', '0304', '03'),
('030406', 'Cotaruse', '0304', '03'),
('030407', 'Ihuayllo', '0304', '03'),
('030408', 'Justo Apu Sahuaraura', '0304', '03'),
('030409', 'Lucre', '0304', '03'),
('030410', 'Pocohuanca', '0304', '03'),
('030411', 'San Juan de Chacña', '0304', '03'),
('030412', 'Sañayca', '0304', '03'),
('030413', 'Soraya', '0304', '03'),
('030414', 'Tapairihua', '0304', '03'),
('030415', 'Tintay', '0304', '03'),
('030416', 'Toraya', '0304', '03'),
('030417', 'Yanaca', '0304', '03'),
('030501', 'Tambobamba', '0305', '03'),
('030502', 'Cotabambas', '0305', '03'),
('030503', 'Coyllurqui', '0305', '03'),
('030504', 'Haquira', '0305', '03'),
('030505', 'Mara', '0305', '03'),
('030506', 'Challhuahuacho', '0305', '03'),
('030601', 'Chincheros', '0306', '03'),
('030602', 'Anco_Huallo', '0306', '03'),
('030603', 'Cocharcas', '0306', '03'),
('030604', 'Huaccana', '0306', '03'),
('030605', 'Ocobamba', '0306', '03'),
('030606', 'Ongoy', '0306', '03'),
('030607', 'Uranmarca', '0306', '03'),
('030608', 'Ranracancha', '0306', '03'),
('030609', 'Rocchacc', '0306', '03'),
('030610', 'El Porvenir', '0306', '03'),
('030611', 'Los Chankas', '0306', '03'),
('030701', 'Chuquibambilla', '0307', '03'),
('030702', 'Curpahuasi', '0307', '03'),
('030703', 'Gamarra', '0307', '03'),
('030704', 'Huayllati', '0307', '03'),
('030705', 'Mamara', '0307', '03'),
('030706', 'Micaela Bastidas', '0307', '03'),
('030707', 'Pataypampa', '0307', '03'),
('030708', 'Progreso', '0307', '03'),
('030709', 'San Antonio', '0307', '03'),
('030710', 'Santa Rosa', '0307', '03'),
('030711', 'Turpay', '0307', '03'),
('030712', 'Vilcabamba', '0307', '03'),
('030713', 'Virundo', '0307', '03'),
('030714', 'Curasco', '0307', '03'),
('040101', 'Arequipa', '0401', '04'),
('040102', 'Alto Selva Alegre', '0401', '04'),
('040103', 'Cayma', '0401', '04'),
('040104', 'Cerro Colorado', '0401', '04'),
('040105', 'Characato', '0401', '04'),
('040106', 'Chiguata', '0401', '04'),
('040107', 'Jacobo Hunter', '0401', '04'),
('040108', 'La Joya', '0401', '04'),
('040109', 'Mariano Melgar', '0401', '04'),
('040110', 'Miraflores', '0401', '04'),
('040111', 'Mollebaya', '0401', '04'),
('040112', 'Paucarpata', '0401', '04'),
('040113', 'Pocsi', '0401', '04'),
('040114', 'Polobaya', '0401', '04'),
('040115', 'Quequeña', '0401', '04'),
('040116', 'Sabandia', '0401', '04'),
('040117', 'Sachaca', '0401', '04'),
('040118', 'San Juan de Siguas', '0401', '04'),
('040119', 'San Juan de Tarucani', '0401', '04'),
('040120', 'Santa Isabel de Siguas', '0401', '04'),
('040121', 'Santa Rita de Siguas', '0401', '04'),
('040122', 'Socabaya', '0401', '04'),
('040123', 'Tiabaya', '0401', '04'),
('040124', 'Uchumayo', '0401', '04'),
('040125', 'Vitor', '0401', '04'),
('040126', 'Yanahuara', '0401', '04'),
('040127', 'Yarabamba', '0401', '04'),
('040128', 'Yura', '0401', '04'),
('040129', 'José Luis Bustamante Y Rivero', '0401', '04'),
('040201', 'Camaná', '0402', '04'),
('040202', 'José María Quimper', '0402', '04'),
('040203', 'Mariano Nicolás Valcárcel', '0402', '04'),
('040204', 'Mariscal Cáceres', '0402', '04'),
('040205', 'Nicolás de Pierola', '0402', '04'),
('040206', 'Ocoña', '0402', '04'),
('040207', 'Quilca', '0402', '04'),
('040208', 'Samuel Pastor', '0402', '04'),
('040301', 'Caravelí', '0403', '04'),
('040302', 'Acarí', '0403', '04'),
('040303', 'Atico', '0403', '04'),
('040304', 'Atiquipa', '0403', '04'),
('040305', 'Bella Unión', '0403', '04'),
('040306', 'Cahuacho', '0403', '04'),
('040307', 'Chala', '0403', '04'),
('040308', 'Chaparra', '0403', '04'),
('040309', 'Huanuhuanu', '0403', '04'),
('040310', 'Jaqui', '0403', '04'),
('040311', 'Lomas', '0403', '04'),
('040312', 'Quicacha', '0403', '04'),
('040313', 'Yauca', '0403', '04'),
('040401', 'Aplao', '0404', '04'),
('040402', 'Andagua', '0404', '04'),
('040403', 'Ayo', '0404', '04'),
('040404', 'Chachas', '0404', '04'),
('040405', 'Chilcaymarca', '0404', '04'),
('040406', 'Choco', '0404', '04'),
('040407', 'Huancarqui', '0404', '04'),
('040408', 'Machaguay', '0404', '04'),
('040409', 'Orcopampa', '0404', '04'),
('040410', 'Pampacolca', '0404', '04'),
('040411', 'Tipan', '0404', '04'),
('040412', 'Uñon', '0404', '04'),
('040413', 'Uraca', '0404', '04'),
('040414', 'Viraco', '0404', '04'),
('040501', 'Chivay', '0405', '04'),
('040502', 'Achoma', '0405', '04'),
('040503', 'Cabanaconde', '0405', '04'),
('040504', 'Callalli', '0405', '04'),
('040505', 'Caylloma', '0405', '04'),
('040506', 'Coporaque', '0405', '04'),
('040507', 'Huambo', '0405', '04'),
('040508', 'Huanca', '0405', '04'),
('040509', 'Ichupampa', '0405', '04'),
('040510', 'Lari', '0405', '04'),
('040511', 'Lluta', '0405', '04'),
('040512', 'Maca', '0405', '04'),
('040513', 'Madrigal', '0405', '04'),
('040514', 'San Antonio de Chuca', '0405', '04'),
('040515', 'Sibayo', '0405', '04'),
('040516', 'Tapay', '0405', '04'),
('040517', 'Tisco', '0405', '04'),
('040518', 'Tuti', '0405', '04'),
('040519', 'Yanque', '0405', '04'),
('040520', 'Majes', '0405', '04'),
('040601', 'Chuquibamba', '0406', '04'),
('040602', 'Andaray', '0406', '04'),
('040603', 'Cayarani', '0406', '04'),
('040604', 'Chichas', '0406', '04'),
('040605', 'Iray', '0406', '04'),
('040606', 'Río Grande', '0406', '04'),
('040607', 'Salamanca', '0406', '04'),
('040608', 'Yanaquihua', '0406', '04'),
('040701', 'Mollendo', '0407', '04'),
('040702', 'Cocachacra', '0407', '04'),
('040703', 'Dean Valdivia', '0407', '04'),
('040704', 'Islay', '0407', '04'),
('040705', 'Mejia', '0407', '04'),
('040706', 'Punta de Bombón', '0407', '04'),
('040801', 'Cotahuasi', '0408', '04'),
('040802', 'Alca', '0408', '04'),
('040803', 'Charcana', '0408', '04'),
('040804', 'Huaynacotas', '0408', '04'),
('040805', 'Pampamarca', '0408', '04'),
('040806', 'Puyca', '0408', '04'),
('040807', 'Quechualla', '0408', '04'),
('040808', 'Sayla', '0408', '04'),
('040809', 'Tauria', '0408', '04'),
('040810', 'Tomepampa', '0408', '04'),
('040811', 'Toro', '0408', '04'),
('050101', 'Ayacucho', '0501', '05'),
('050102', 'Acocro', '0501', '05'),
('050103', 'Acos Vinchos', '0501', '05'),
('050104', 'Carmen Alto', '0501', '05'),
('050105', 'Chiara', '0501', '05'),
('050106', 'Ocros', '0501', '05'),
('050107', 'Pacaycasa', '0501', '05'),
('050108', 'Quinua', '0501', '05'),
('050109', 'San José de Ticllas', '0501', '05'),
('050110', 'San Juan Bautista', '0501', '05'),
('050111', 'Santiago de Pischa', '0501', '05'),
('050112', 'Socos', '0501', '05'),
('050113', 'Tambillo', '0501', '05'),
('050114', 'Vinchos', '0501', '05'),
('050115', 'Jesús Nazareno', '0501', '05'),
('050116', 'Andrés Avelino Cáceres Dorregaray', '0501', '05'),
('050201', 'Cangallo', '0502', '05'),
('050202', 'Chuschi', '0502', '05'),
('050203', 'Los Morochucos', '0502', '05'),
('050204', 'María Parado de Bellido', '0502', '05'),
('050205', 'Paras', '0502', '05'),
('050206', 'Totos', '0502', '05'),
('050301', 'Sancos', '0503', '05'),
('050302', 'Carapo', '0503', '05'),
('050303', 'Sacsamarca', '0503', '05'),
('050304', 'Santiago de Lucanamarca', '0503', '05'),
('050401', 'Huanta', '0504', '05'),
('050402', 'Ayahuanco', '0504', '05'),
('050403', 'Huamanguilla', '0504', '05'),
('050404', 'Iguain', '0504', '05'),
('050405', 'Luricocha', '0504', '05'),
('050406', 'Santillana', '0504', '05'),
('050407', 'Sivia', '0504', '05'),
('050408', 'Llochegua', '0504', '05'),
('050409', 'Canayre', '0504', '05'),
('050410', 'Uchuraccay', '0504', '05'),
('050411', 'Pucacolpa', '0504', '05'),
('050412', 'Chaca', '0504', '05'),
('050501', 'San Miguel', '0505', '05'),
('050502', 'Anco', '0505', '05'),
('050503', 'Ayna', '0505', '05'),
('050504', 'Chilcas', '0505', '05'),
('050505', 'Chungui', '0505', '05'),
('050506', 'Luis Carranza', '0505', '05'),
('050507', 'Santa Rosa', '0505', '05'),
('050508', 'Tambo', '0505', '05'),
('050509', 'Samugari', '0505', '05'),
('050510', 'Anchihuay', '0505', '05'),
('050511', 'Oronccoy', '0505', '05'),
('050601', 'Puquio', '0506', '05'),
('050602', 'Aucara', '0506', '05'),
('050603', 'Cabana', '0506', '05'),
('050604', 'Carmen Salcedo', '0506', '05'),
('050605', 'Chaviña', '0506', '05'),
('050606', 'Chipao', '0506', '05'),
('050607', 'Huac-Huas', '0506', '05'),
('050608', 'Laramate', '0506', '05'),
('050609', 'Leoncio Prado', '0506', '05'),
('050610', 'Llauta', '0506', '05'),
('050611', 'Lucanas', '0506', '05'),
('050612', 'Ocaña', '0506', '05'),
('050613', 'Otoca', '0506', '05'),
('050614', 'Saisa', '0506', '05'),
('050615', 'San Cristóbal', '0506', '05'),
('050616', 'San Juan', '0506', '05'),
('050617', 'San Pedro', '0506', '05'),
('050618', 'San Pedro de Palco', '0506', '05'),
('050619', 'Sancos', '0506', '05'),
('050620', 'Santa Ana de Huaycahuacho', '0506', '05'),
('050621', 'Santa Lucia', '0506', '05'),
('050701', 'Coracora', '0507', '05'),
('050702', 'Chumpi', '0507', '05'),
('050703', 'Coronel Castañeda', '0507', '05'),
('050704', 'Pacapausa', '0507', '05'),
('050705', 'Pullo', '0507', '05'),
('050706', 'Puyusca', '0507', '05'),
('050707', 'San Francisco de Ravacayco', '0507', '05'),
('050708', 'Upahuacho', '0507', '05'),
('050801', 'Pausa', '0508', '05'),
('050802', 'Colta', '0508', '05'),
('050803', 'Corculla', '0508', '05'),
('050804', 'Lampa', '0508', '05'),
('050805', 'Marcabamba', '0508', '05'),
('050806', 'Oyolo', '0508', '05'),
('050807', 'Pararca', '0508', '05'),
('050808', 'San Javier de Alpabamba', '0508', '05'),
('050809', 'San José de Ushua', '0508', '05'),
('050810', 'Sara Sara', '0508', '05'),
('050901', 'Querobamba', '0509', '05'),
('050902', 'Belén', '0509', '05'),
('050903', 'Chalcos', '0509', '05'),
('050904', 'Chilcayoc', '0509', '05'),
('050905', 'Huacaña', '0509', '05'),
('050906', 'Morcolla', '0509', '05'),
('050907', 'Paico', '0509', '05'),
('050908', 'San Pedro de Larcay', '0509', '05'),
('050909', 'San Salvador de Quije', '0509', '05'),
('050910', 'Santiago de Paucaray', '0509', '05'),
('050911', 'Soras', '0509', '05'),
('051001', 'Huancapi', '0510', '05'),
('051002', 'Alcamenca', '0510', '05'),
('051003', 'Apongo', '0510', '05'),
('051004', 'Asquipata', '0510', '05'),
('051005', 'Canaria', '0510', '05'),
('051006', 'Cayara', '0510', '05'),
('051007', 'Colca', '0510', '05'),
('051008', 'Huamanquiquia', '0510', '05'),
('051009', 'Huancaraylla', '0510', '05'),
('051010', 'Hualla', '0510', '05'),
('051011', 'Sarhua', '0510', '05'),
('051012', 'Vilcanchos', '0510', '05'),
('051101', 'Vilcas Huaman', '0511', '05'),
('051102', 'Accomarca', '0511', '05'),
('051103', 'Carhuanca', '0511', '05'),
('051104', 'Concepción', '0511', '05'),
('051105', 'Huambalpa', '0511', '05'),
('051106', 'Independencia', '0511', '05'),
('051107', 'Saurama', '0511', '05'),
('051108', 'Vischongo', '0511', '05'),
('060101', 'Cajamarca', '0601', '06'),
('060102', 'Asunción', '0601', '06'),
('060103', 'Chetilla', '0601', '06'),
('060104', 'Cospan', '0601', '06'),
('060105', 'Encañada', '0601', '06'),
('060106', 'Jesús', '0601', '06'),
('060107', 'Llacanora', '0601', '06'),
('060108', 'Los Baños del Inca', '0601', '06'),
('060109', 'Magdalena', '0601', '06'),
('060110', 'Matara', '0601', '06'),
('060111', 'Namora', '0601', '06'),
('060112', 'San Juan', '0601', '06'),
('060201', 'Cajabamba', '0602', '06'),
('060202', 'Cachachi', '0602', '06'),
('060203', 'Condebamba', '0602', '06'),
('060204', 'Sitacocha', '0602', '06'),
('060301', 'Celendín', '0603', '06'),
('060302', 'Chumuch', '0603', '06'),
('060303', 'Cortegana', '0603', '06'),
('060304', 'Huasmin', '0603', '06'),
('060305', 'Jorge Chávez', '0603', '06'),
('060306', 'José Gálvez', '0603', '06'),
('060307', 'Miguel Iglesias', '0603', '06'),
('060308', 'Oxamarca', '0603', '06'),
('060309', 'Sorochuco', '0603', '06'),
('060310', 'Sucre', '0603', '06'),
('060311', 'Utco', '0603', '06'),
('060312', 'La Libertad de Pallan', '0603', '06'),
('060401', 'Chota', '0604', '06'),
('060402', 'Anguia', '0604', '06'),
('060403', 'Chadin', '0604', '06'),
('060404', 'Chiguirip', '0604', '06'),
('060405', 'Chimban', '0604', '06'),
('060406', 'Choropampa', '0604', '06'),
('060407', 'Cochabamba', '0604', '06'),
('060408', 'Conchan', '0604', '06'),
('060409', 'Huambos', '0604', '06'),
('060410', 'Lajas', '0604', '06'),
('060411', 'Llama', '0604', '06'),
('060412', 'Miracosta', '0604', '06'),
('060413', 'Paccha', '0604', '06'),
('060414', 'Pion', '0604', '06'),
('060415', 'Querocoto', '0604', '06'),
('060416', 'San Juan de Licupis', '0604', '06'),
('060417', 'Tacabamba', '0604', '06'),
('060418', 'Tocmoche', '0604', '06'),
('060419', 'Chalamarca', '0604', '06'),
('060501', 'Contumaza', '0605', '06'),
('060502', 'Chilete', '0605', '06'),
('060503', 'Cupisnique', '0605', '06'),
('060504', 'Guzmango', '0605', '06'),
('060505', 'San Benito', '0605', '06'),
('060506', 'Santa Cruz de Toledo', '0605', '06'),
('060507', 'Tantarica', '0605', '06'),
('060508', 'Yonan', '0605', '06'),
('060601', 'Cutervo', '0606', '06'),
('060602', 'Callayuc', '0606', '06'),
('060603', 'Choros', '0606', '06'),
('060604', 'Cujillo', '0606', '06'),
('060605', 'La Ramada', '0606', '06'),
('060606', 'Pimpingos', '0606', '06'),
('060607', 'Querocotillo', '0606', '06'),
('060608', 'San Andrés de Cutervo', '0606', '06'),
('060609', 'San Juan de Cutervo', '0606', '06'),
('060610', 'San Luis de Lucma', '0606', '06'),
('060611', 'Santa Cruz', '0606', '06'),
('060612', 'Santo Domingo de la Capilla', '0606', '06'),
('060613', 'Santo Tomas', '0606', '06'),
('060614', 'Socota', '0606', '06'),
('060615', 'Toribio Casanova', '0606', '06'),
('060701', 'Bambamarca', '0607', '06'),
('060702', 'Chugur', '0607', '06'),
('060703', 'Hualgayoc', '0607', '06'),
('060801', 'Jaén', '0608', '06'),
('060802', 'Bellavista', '0608', '06'),
('060803', 'Chontali', '0608', '06'),
('060804', 'Colasay', '0608', '06'),
('060805', 'Huabal', '0608', '06'),
('060806', 'Las Pirias', '0608', '06'),
('060807', 'Pomahuaca', '0608', '06'),
('060808', 'Pucara', '0608', '06'),
('060809', 'Sallique', '0608', '06'),
('060810', 'San Felipe', '0608', '06'),
('060811', 'San José del Alto', '0608', '06'),
('060812', 'Santa Rosa', '0608', '06'),
('060901', 'San Ignacio', '0609', '06'),
('060902', 'Chirinos', '0609', '06'),
('060903', 'Huarango', '0609', '06'),
('060904', 'La Coipa', '0609', '06'),
('060905', 'Namballe', '0609', '06'),
('060906', 'San José de Lourdes', '0609', '06'),
('060907', 'Tabaconas', '0609', '06'),
('061001', 'Pedro Gálvez', '0610', '06'),
('061002', 'Chancay', '0610', '06'),
('061003', 'Eduardo Villanueva', '0610', '06'),
('061004', 'Gregorio Pita', '0610', '06'),
('061005', 'Ichocan', '0610', '06'),
('061006', 'José Manuel Quiroz', '0610', '06'),
('061007', 'José Sabogal', '0610', '06'),
('061101', 'San Miguel', '0611', '06'),
('061102', 'Bolívar', '0611', '06'),
('061103', 'Calquis', '0611', '06'),
('061104', 'Catilluc', '0611', '06'),
('061105', 'El Prado', '0611', '06'),
('061106', 'La Florida', '0611', '06'),
('061107', 'Llapa', '0611', '06'),
('061108', 'Nanchoc', '0611', '06'),
('061109', 'Niepos', '0611', '06'),
('061110', 'San Gregorio', '0611', '06'),
('061111', 'San Silvestre de Cochan', '0611', '06'),
('061112', 'Tongod', '0611', '06'),
('061113', 'Unión Agua Blanca', '0611', '06'),
('061201', 'San Pablo', '0612', '06'),
('061202', 'San Bernardino', '0612', '06'),
('061203', 'San Luis', '0612', '06'),
('061204', 'Tumbaden', '0612', '06'),
('061301', 'Santa Cruz', '0613', '06'),
('061302', 'Andabamba', '0613', '06'),
('061303', 'Catache', '0613', '06'),
('061304', 'Chancaybaños', '0613', '06'),
('061305', 'La Esperanza', '0613', '06'),
('061306', 'Ninabamba', '0613', '06'),
('061307', 'Pulan', '0613', '06'),
('061308', 'Saucepampa', '0613', '06'),
('061309', 'Sexi', '0613', '06'),
('061310', 'Uticyacu', '0613', '06'),
('061311', 'Yauyucan', '0613', '06'),
('070101', 'Callao', '0701', '07'),
('070102', 'Bellavista', '0701', '07'),
('070103', 'Carmen de la Legua Reynoso', '0701', '07'),
('070104', 'La Perla', '0701', '07'),
('070105', 'La Punta', '0701', '07'),
('070106', 'Ventanilla', '0701', '07'),
('070107', 'Mi Perú', '0701', '07'),
('080101', 'Cusco', '0801', '08'),
('080102', 'Ccorca', '0801', '08'),
('080103', 'Poroy', '0801', '08'),
('080104', 'San Jerónimo', '0801', '08'),
('080105', 'San Sebastian', '0801', '08'),
('080106', 'Santiago', '0801', '08'),
('080107', 'Saylla', '0801', '08'),
('080108', 'Wanchaq', '0801', '08'),
('080201', 'Acomayo', '0802', '08'),
('080202', 'Acopia', '0802', '08'),
('080203', 'Acos', '0802', '08'),
('080204', 'Mosoc Llacta', '0802', '08'),
('080205', 'Pomacanchi', '0802', '08'),
('080206', 'Rondocan', '0802', '08'),
('080207', 'Sangarara', '0802', '08'),
('080301', 'Anta', '0803', '08'),
('080302', 'Ancahuasi', '0803', '08'),
('080303', 'Cachimayo', '0803', '08'),
('080304', 'Chinchaypujio', '0803', '08'),
('080305', 'Huarocondo', '0803', '08'),
('080306', 'Limatambo', '0803', '08'),
('080307', 'Mollepata', '0803', '08'),
('080308', 'Pucyura', '0803', '08'),
('080309', 'Zurite', '0803', '08'),
('080401', 'Calca', '0804', '08'),
('080402', 'Coya', '0804', '08'),
('080403', 'Lamay', '0804', '08'),
('080404', 'Lares', '0804', '08'),
('080405', 'Pisac', '0804', '08'),
('080406', 'San Salvador', '0804', '08'),
('080407', 'Taray', '0804', '08'),
('080408', 'Yanatile', '0804', '08'),
('080501', 'Yanaoca', '0805', '08'),
('080502', 'Checca', '0805', '08'),
('080503', 'Kunturkanki', '0805', '08'),
('080504', 'Langui', '0805', '08'),
('080505', 'Layo', '0805', '08'),
('080506', 'Pampamarca', '0805', '08'),
('080507', 'Quehue', '0805', '08'),
('080508', 'Tupac Amaru', '0805', '08'),
('080601', 'Sicuani', '0806', '08'),
('080602', 'Checacupe', '0806', '08'),
('080603', 'Combapata', '0806', '08'),
('080604', 'Marangani', '0806', '08'),
('080605', 'Pitumarca', '0806', '08'),
('080606', 'San Pablo', '0806', '08'),
('080607', 'San Pedro', '0806', '08'),
('080608', 'Tinta', '0806', '08'),
('080701', 'Santo Tomas', '0807', '08'),
('080702', 'Capacmarca', '0807', '08'),
('080703', 'Chamaca', '0807', '08'),
('080704', 'Colquemarca', '0807', '08'),
('080705', 'Livitaca', '0807', '08'),
('080706', 'Llusco', '0807', '08'),
('080707', 'Quiñota', '0807', '08'),
('080708', 'Velille', '0807', '08'),
('080801', 'Espinar', '0808', '08'),
('080802', 'Condoroma', '0808', '08'),
('080803', 'Coporaque', '0808', '08'),
('080804', 'Ocoruro', '0808', '08'),
('080805', 'Pallpata', '0808', '08'),
('080806', 'Pichigua', '0808', '08'),
('080807', 'Suyckutambo', '0808', '08'),
('080808', 'Alto Pichigua', '0808', '08'),
('080901', 'Santa Ana', '0809', '08'),
('080902', 'Echarate', '0809', '08'),
('080903', 'Huayopata', '0809', '08'),
('080904', 'Maranura', '0809', '08'),
('080905', 'Ocobamba', '0809', '08'),
('080906', 'Quellouno', '0809', '08'),
('080907', 'Kimbiri', '0809', '08'),
('080908', 'Santa Teresa', '0809', '08'),
('080909', 'Vilcabamba', '0809', '08'),
('080910', 'Pichari', '0809', '08'),
('080911', 'Inkawasi', '0809', '08'),
('080912', 'Villa Virgen', '0809', '08'),
('080913', 'Villa Kintiarina', '0809', '08'),
('080914', 'Megantoni', '0809', '08'),
('081001', 'Paruro', '0810', '08'),
('081002', 'Accha', '0810', '08'),
('081003', 'Ccapi', '0810', '08'),
('081004', 'Colcha', '0810', '08'),
('081005', 'Huanoquite', '0810', '08'),
('081006', 'Omachaç', '0810', '08'),
('081007', 'Paccaritambo', '0810', '08'),
('081008', 'Pillpinto', '0810', '08'),
('081009', 'Yaurisque', '0810', '08'),
('081101', 'Paucartambo', '0811', '08'),
('081102', 'Caicay', '0811', '08'),
('081103', 'Challabamba', '0811', '08'),
('081104', 'Colquepata', '0811', '08'),
('081105', 'Huancarani', '0811', '08'),
('081106', 'Kosñipata', '0811', '08'),
('081201', 'Urcos', '0812', '08'),
('081202', 'Andahuaylillas', '0812', '08'),
('081203', 'Camanti', '0812', '08'),
('081204', 'Ccarhuayo', '0812', '08'),
('081205', 'Ccatca', '0812', '08'),
('081206', 'Cusipata', '0812', '08'),
('081207', 'Huaro', '0812', '08'),
('081208', 'Lucre', '0812', '08'),
('081209', 'Marcapata', '0812', '08'),
('081210', 'Ocongate', '0812', '08'),
('081211', 'Oropesa', '0812', '08'),
('081212', 'Quiquijana', '0812', '08'),
('081301', 'Urubamba', '0813', '08'),
('081302', 'Chinchero', '0813', '08'),
('081303', 'Huayllabamba', '0813', '08'),
('081304', 'Machupicchu', '0813', '08'),
('081305', 'Maras', '0813', '08'),
('081306', 'Ollantaytambo', '0813', '08'),
('081307', 'Yucay', '0813', '08'),
('090101', 'Huancavelica', '0901', '09'),
('090102', 'Acobambilla', '0901', '09'),
('090103', 'Acoria', '0901', '09'),
('090104', 'Conayca', '0901', '09'),
('090105', 'Cuenca', '0901', '09'),
('090106', 'Huachocolpa', '0901', '09'),
('090107', 'Huayllahuara', '0901', '09'),
('090108', 'Izcuchaca', '0901', '09'),
('090109', 'Laria', '0901', '09'),
('090110', 'Manta', '0901', '09'),
('090111', 'Mariscal Cáceres', '0901', '09'),
('090112', 'Moya', '0901', '09'),
('090113', 'Nuevo Occoro', '0901', '09'),
('090114', 'Palca', '0901', '09'),
('090115', 'Pilchaca', '0901', '09'),
('090116', 'Vilca', '0901', '09'),
('090117', 'Yauli', '0901', '09'),
('090118', 'Ascensión', '0901', '09'),
('090119', 'Huando', '0901', '09'),
('090201', 'Acobamba', '0902', '09'),
('090202', 'Andabamba', '0902', '09'),
('090203', 'Anta', '0902', '09'),
('090204', 'Caja', '0902', '09'),
('090205', 'Marcas', '0902', '09'),
('090206', 'Paucara', '0902', '09'),
('090207', 'Pomacocha', '0902', '09'),
('090208', 'Rosario', '0902', '09'),
('090301', 'Lircay', '0903', '09'),
('090302', 'Anchonga', '0903', '09'),
('090303', 'Callanmarca', '0903', '09'),
('090304', 'Ccochaccasa', '0903', '09'),
('090305', 'Chincho', '0903', '09'),
('090306', 'Congalla', '0903', '09'),
('090307', 'Huanca-Huanca', '0903', '09'),
('090308', 'Huayllay Grande', '0903', '09'),
('090309', 'Julcamarca', '0903', '09'),
('090310', 'San Antonio de Antaparco', '0903', '09'),
('090311', 'Santo Tomas de Pata', '0903', '09'),
('090312', 'Secclla', '0903', '09'),
('090401', 'Castrovirreyna', '0904', '09'),
('090402', 'Arma', '0904', '09'),
('090403', 'Aurahua', '0904', '09'),
('090404', 'Capillas', '0904', '09'),
('090405', 'Chupamarca', '0904', '09'),
('090406', 'Cocas', '0904', '09'),
('090407', 'Huachos', '0904', '09'),
('090408', 'Huamatambo', '0904', '09'),
('090409', 'Mollepampa', '0904', '09'),
('090410', 'San Juan', '0904', '09'),
('090411', 'Santa Ana', '0904', '09'),
('090412', 'Tantara', '0904', '09'),
('090413', 'Ticrapo', '0904', '09'),
('090501', 'Churcampa', '0905', '09'),
('090502', 'Anco', '0905', '09'),
('090503', 'Chinchihuasi', '0905', '09'),
('090504', 'El Carmen', '0905', '09'),
('090505', 'La Merced', '0905', '09'),
('090506', 'Locroja', '0905', '09'),
('090507', 'Paucarbamba', '0905', '09'),
('090508', 'San Miguel de Mayocc', '0905', '09'),
('090509', 'San Pedro de Coris', '0905', '09'),
('090510', 'Pachamarca', '0905', '09'),
('090511', 'Cosme', '0905', '09'),
('090601', 'Huaytara', '0906', '09'),
('090602', 'Ayavi', '0906', '09'),
('090603', 'Córdova', '0906', '09'),
('090604', 'Huayacundo Arma', '0906', '09'),
('090605', 'Laramarca', '0906', '09'),
('090606', 'Ocoyo', '0906', '09'),
('090607', 'Pilpichaca', '0906', '09'),
('090608', 'Querco', '0906', '09'),
('090609', 'Quito-Arma', '0906', '09'),
('090610', 'San Antonio de Cusicancha', '0906', '09'),
('090611', 'San Francisco de Sangayaico', '0906', '09'),
('090612', 'San Isidro', '0906', '09'),
('090613', 'Santiago de Chocorvos', '0906', '09'),
('090614', 'Santiago de Quirahuara', '0906', '09'),
('090615', 'Santo Domingo de Capillas', '0906', '09'),
('090616', 'Tambo', '0906', '09'),
('090701', 'Pampas', '0907', '09'),
('090702', 'Acostambo', '0907', '09'),
('090703', 'Acraquia', '0907', '09'),
('090704', 'Ahuaycha', '0907', '09'),
('090705', 'Colcabamba', '0907', '09'),
('090706', 'Daniel Hernández', '0907', '09'),
('090707', 'Huachocolpa', '0907', '09'),
('090709', 'Huaribamba', '0907', '09'),
('090710', 'Ñahuimpuquio', '0907', '09'),
('090711', 'Pazos', '0907', '09'),
('090713', 'Quishuar', '0907', '09'),
('090714', 'Salcabamba', '0907', '09'),
('090715', 'Salcahuasi', '0907', '09'),
('090716', 'San Marcos de Rocchac', '0907', '09'),
('090717', 'Surcubamba', '0907', '09'),
('090718', 'Tintay Puncu', '0907', '09'),
('090719', 'Quichuas', '0907', '09'),
('090720', 'Andaymarca', '0907', '09'),
('090721', 'Roble', '0907', '09'),
('090722', 'Pichos', '0907', '09'),
('090723', 'Santiago de Tucuma', '0907', '09'),
('100101', 'Huanuco', '1001', '10'),
('100102', 'Amarilis', '1001', '10'),
('100103', 'Chinchao', '1001', '10'),
('100104', 'Churubamba', '1001', '10'),
('100105', 'Margos', '1001', '10'),
('100106', 'Quisqui (Kichki)', '1001', '10'),
('100107', 'San Francisco de Cayran', '1001', '10'),
('100108', 'San Pedro de Chaulan', '1001', '10'),
('100109', 'Santa María del Valle', '1001', '10'),
('100110', 'Yarumayo', '1001', '10'),
('100111', 'Pillco Marca', '1001', '10'),
('100112', 'Yacus', '1001', '10'),
('100113', 'San Pablo de Pillao', '1001', '10'),
('100201', 'Ambo', '1002', '10'),
('100202', 'Cayna', '1002', '10'),
('100203', 'Colpas', '1002', '10'),
('100204', 'Conchamarca', '1002', '10'),
('100205', 'Huacar', '1002', '10'),
('100206', 'San Francisco', '1002', '10'),
('100207', 'San Rafael', '1002', '10'),
('100208', 'Tomay Kichwa', '1002', '10'),
('100301', 'La Unión', '1003', '10'),
('100307', 'Chuquis', '1003', '10'),
('100311', 'Marías', '1003', '10'),
('100313', 'Pachas', '1003', '10'),
('100316', 'Quivilla', '1003', '10'),
('100317', 'Ripan', '1003', '10'),
('100321', 'Shunqui', '1003', '10'),
('100322', 'Sillapata', '1003', '10'),
('100323', 'Yanas', '1003', '10'),
('100401', 'Huacaybamba', '1004', '10'),
('100402', 'Canchabamba', '1004', '10'),
('100403', 'Cochabamba', '1004', '10'),
('100404', 'Pinra', '1004', '10'),
('100501', 'Llata', '1005', '10'),
('100502', 'Arancay', '1005', '10'),
('100503', 'Chavín de Pariarca', '1005', '10'),
('100504', 'Jacas Grande', '1005', '10'),
('100505', 'Jircan', '1005', '10'),
('100506', 'Miraflores', '1005', '10'),
('100507', 'Monzón', '1005', '10'),
('100508', 'Punchao', '1005', '10'),
('100509', 'Puños', '1005', '10'),
('100510', 'Singa', '1005', '10'),
('100511', 'Tantamayo', '1005', '10'),
('100601', 'Rupa-Rupa', '1006', '10'),
('100602', 'Daniel Alomía Robles', '1006', '10'),
('100603', 'Hermílio Valdizan', '1006', '10'),
('100604', 'José Crespo y Castillo', '1006', '10'),
('100605', 'Luyando', '1006', '10'),
('100606', 'Mariano Damaso Beraun', '1006', '10'),
('100607', 'Pucayacu', '1006', '10'),
('100608', 'Castillo Grande', '1006', '10'),
('100609', 'Pueblo Nuevo', '1006', '10'),
('100610', 'Santo Domingo de Anda', '1006', '10'),
('100701', 'Huacrachuco', '1007', '10'),
('100702', 'Cholon', '1007', '10'),
('100703', 'San Buenaventura', '1007', '10'),
('100704', 'La Morada', '1007', '10'),
('100705', 'Santa Rosa de Alto Yanajanca', '1007', '10'),
('100801', 'Panao', '1008', '10'),
('100802', 'Chaglla', '1008', '10'),
('100803', 'Molino', '1008', '10'),
('100804', 'Umari', '1008', '10'),
('100901', 'Puerto Inca', '1009', '10'),
('100902', 'Codo del Pozuzo', '1009', '10'),
('100903', 'Honoria', '1009', '10'),
('100904', 'Tournavista', '1009', '10'),
('100905', 'Yuyapichis', '1009', '10'),
('101001', 'Jesús', '1010', '10'),
('101002', 'Baños', '1010', '10'),
('101003', 'Jivia', '1010', '10'),
('101004', 'Queropalca', '1010', '10'),
('101005', 'Rondos', '1010', '10'),
('101006', 'San Francisco de Asís', '1010', '10'),
('101007', 'San Miguel de Cauri', '1010', '10'),
('101101', 'Chavinillo', '1011', '10'),
('101102', 'Cahuac', '1011', '10'),
('101103', 'Chacabamba', '1011', '10'),
('101104', 'Aparicio Pomares', '1011', '10'),
('101105', 'Jacas Chico', '1011', '10'),
('101106', 'Obas', '1011', '10'),
('101107', 'Pampamarca', '1011', '10'),
('101108', 'Choras', '1011', '10'),
('110101', 'Ica', '1101', '11'),
('110102', 'La Tinguiña', '1101', '11'),
('110103', 'Los Aquijes', '1101', '11'),
('110104', 'Ocucaje', '1101', '11'),
('110105', 'Pachacutec', '1101', '11'),
('110106', 'Parcona', '1101', '11'),
('110107', 'Pueblo Nuevo', '1101', '11'),
('110108', 'Salas', '1101', '11'),
('110109', 'San José de Los Molinos', '1101', '11'),
('110110', 'San Juan Bautista', '1101', '11'),
('110111', 'Santiago', '1101', '11'),
('110112', 'Subtanjalla', '1101', '11'),
('110113', 'Tate', '1101', '11'),
('110114', 'Yauca del Rosario', '1101', '11'),
('110201', 'Chincha Alta', '1102', '11'),
('110202', 'Alto Laran', '1102', '11'),
('110203', 'Chavin', '1102', '11'),
('110204', 'Chincha Baja', '1102', '11'),
('110205', 'El Carmen', '1102', '11'),
('110206', 'Grocio Prado', '1102', '11'),
('110207', 'Pueblo Nuevo', '1102', '11'),
('110208', 'San Juan de Yanac', '1102', '11'),
('110209', 'San Pedro de Huacarpana', '1102', '11'),
('110210', 'Sunampe', '1102', '11'),
('110211', 'Tambo de Mora', '1102', '11'),
('110301', 'Nasca', '1103', '11'),
('110302', 'Changuillo', '1103', '11'),
('110303', 'El Ingenio', '1103', '11'),
('110304', 'Marcona', '1103', '11'),
('110305', 'Vista Alegre', '1103', '11'),
('110401', 'Palpa', '1104', '11'),
('110402', 'Llipata', '1104', '11'),
('110403', 'Río Grande', '1104', '11'),
('110404', 'Santa Cruz', '1104', '11'),
('110405', 'Tibillo', '1104', '11'),
('110501', 'Pisco', '1105', '11'),
('110502', 'Huancano', '1105', '11'),
('110503', 'Humay', '1105', '11'),
('110504', 'Independencia', '1105', '11'),
('110505', 'Paracas', '1105', '11'),
('110506', 'San Andrés', '1105', '11'),
('110507', 'San Clemente', '1105', '11'),
('110508', 'Tupac Amaru Inca', '1105', '11'),
('120101', 'Huancayo', '1201', '12'),
('120104', 'Carhuacallanga', '1201', '12'),
('120105', 'Chacapampa', '1201', '12'),
('120106', 'Chicche', '1201', '12'),
('120107', 'Chilca', '1201', '12'),
('120108', 'Chongos Alto', '1201', '12'),
('120111', 'Chupuro', '1201', '12'),
('120112', 'Colca', '1201', '12'),
('120113', 'Cullhuas', '1201', '12'),
('120114', 'El Tambo', '1201', '12'),
('120116', 'Huacrapuquio', '1201', '12'),
('120117', 'Hualhuas', '1201', '12'),
('120119', 'Huancan', '1201', '12'),
('120120', 'Huasicancha', '1201', '12'),
('120121', 'Huayucachi', '1201', '12'),
('120122', 'Ingenio', '1201', '12'),
('120124', 'Pariahuanca', '1201', '12'),
('120125', 'Pilcomayo', '1201', '12'),
('120126', 'Pucara', '1201', '12'),
('120127', 'Quichuay', '1201', '12'),
('120128', 'Quilcas', '1201', '12'),
('120129', 'San Agustín', '1201', '12'),
('120130', 'San Jerónimo de Tunan', '1201', '12'),
('120132', 'Saño', '1201', '12'),
('120133', 'Sapallanga', '1201', '12'),
('120134', 'Sicaya', '1201', '12'),
('120135', 'Santo Domingo de Acobamba', '1201', '12'),
('120136', 'Viques', '1201', '12'),
('120201', 'Concepción', '1202', '12'),
('120202', 'Aco', '1202', '12'),
('120203', 'Andamarca', '1202', '12'),
('120204', 'Chambara', '1202', '12'),
('120205', 'Cochas', '1202', '12'),
('120206', 'Comas', '1202', '12'),
('120207', 'Heroínas Toledo', '1202', '12'),
('120208', 'Manzanares', '1202', '12'),
('120209', 'Mariscal Castilla', '1202', '12'),
('120210', 'Matahuasi', '1202', '12'),
('120211', 'Mito', '1202', '12'),
('120212', 'Nueve de Julio', '1202', '12'),
('120213', 'Orcotuna', '1202', '12'),
('120214', 'San José de Quero', '1202', '12'),
('120215', 'Santa Rosa de Ocopa', '1202', '12'),
('120301', 'Chanchamayo', '1203', '12'),
('120302', 'Perene', '1203', '12'),
('120303', 'Pichanaqui', '1203', '12'),
('120304', 'San Luis de Shuaro', '1203', '12'),
('120305', 'San Ramón', '1203', '12'),
('120306', 'Vitoc', '1203', '12'),
('120401', 'Jauja', '1204', '12'),
('120402', 'Acolla', '1204', '12'),
('120403', 'Apata', '1204', '12'),
('120404', 'Ataura', '1204', '12'),
('120405', 'Canchayllo', '1204', '12'),
('120406', 'Curicaca', '1204', '12'),
('120407', 'El Mantaro', '1204', '12'),
('120408', 'Huamali', '1204', '12'),
('120409', 'Huaripampa', '1204', '12'),
('120410', 'Huertas', '1204', '12'),
('120411', 'Janjaillo', '1204', '12'),
('120412', 'Julcán', '1204', '12'),
('120413', 'Leonor Ordóñez', '1204', '12'),
('120414', 'Llocllapampa', '1204', '12'),
('120415', 'Marco', '1204', '12'),
('120416', 'Masma', '1204', '12'),
('120417', 'Masma Chicche', '1204', '12'),
('120418', 'Molinos', '1204', '12'),
('120419', 'Monobamba', '1204', '12'),
('120420', 'Muqui', '1204', '12'),
('120421', 'Muquiyauyo', '1204', '12'),
('120422', 'Paca', '1204', '12'),
('120423', 'Paccha', '1204', '12'),
('120424', 'Pancan', '1204', '12'),
('120425', 'Parco', '1204', '12'),
('120426', 'Pomacancha', '1204', '12'),
('120427', 'Ricran', '1204', '12'),
('120428', 'San Lorenzo', '1204', '12'),
('120429', 'San Pedro de Chunan', '1204', '12'),
('120430', 'Sausa', '1204', '12'),
('120431', 'Sincos', '1204', '12'),
('120432', 'Tunan Marca', '1204', '12'),
('120433', 'Yauli', '1204', '12'),
('120434', 'Yauyos', '1204', '12'),
('120501', 'Junin', '1205', '12'),
('120502', 'Carhuamayo', '1205', '12'),
('120503', 'Ondores', '1205', '12'),
('120504', 'Ulcumayo', '1205', '12'),
('120601', 'Satipo', '1206', '12'),
('120602', 'Coviriali', '1206', '12'),
('120603', 'Llaylla', '1206', '12'),
('120604', 'Mazamari', '1206', '12'),
('120605', 'Pampa Hermosa', '1206', '12'),
('120606', 'Pangoa', '1206', '12'),
('120607', 'Río Negro', '1206', '12'),
('120608', 'Río Tambo', '1206', '12'),
('120609', 'Vizcatan del Ene', '1206', '12'),
('120701', 'Tarma', '1207', '12'),
('120702', 'Acobamba', '1207', '12'),
('120703', 'Huaricolca', '1207', '12'),
('120704', 'Huasahuasi', '1207', '12'),
('120705', 'La Unión', '1207', '12'),
('120706', 'Palca', '1207', '12'),
('120707', 'Palcamayo', '1207', '12'),
('120708', 'San Pedro de Cajas', '1207', '12'),
('120709', 'Tapo', '1207', '12'),
('120801', 'La Oroya', '1208', '12'),
('120802', 'Chacapalpa', '1208', '12'),
('120803', 'Huay-Huay', '1208', '12'),
('120804', 'Marcapomacocha', '1208', '12'),
('120805', 'Morococha', '1208', '12'),
('120806', 'Paccha', '1208', '12'),
('120807', 'Santa Bárbara de Carhuacayan', '1208', '12'),
('120808', 'Santa Rosa de Sacco', '1208', '12'),
('120809', 'Suitucancha', '1208', '12'),
('120810', 'Yauli', '1208', '12'),
('120901', 'Chupaca', '1209', '12'),
('120902', 'Ahuac', '1209', '12'),
('120903', 'Chongos Bajo', '1209', '12'),
('120904', 'Huachac', '1209', '12'),
('120905', 'Huamancaca Chico', '1209', '12'),
('120906', 'San Juan de Iscos', '1209', '12'),
('120907', 'San Juan de Jarpa', '1209', '12'),
('120908', 'Tres de Diciembre', '1209', '12'),
('120909', 'Yanacancha', '1209', '12'),
('130101', 'Trujillo', '1301', '13'),
('130102', 'El Porvenir', '1301', '13'),
('130103', 'Florencia de Mora', '1301', '13'),
('130104', 'Huanchaco', '1301', '13'),
('130105', 'La Esperanza', '1301', '13'),
('130106', 'Laredo', '1301', '13'),
('130107', 'Moche', '1301', '13'),
('130108', 'Poroto', '1301', '13'),
('130109', 'Salaverry', '1301', '13'),
('130110', 'Simbal', '1301', '13'),
('130111', 'Victor Larco Herrera', '1301', '13'),
('130201', 'Ascope', '1302', '13'),
('130202', 'Chicama', '1302', '13'),
('130203', 'Chocope', '1302', '13'),
('130204', 'Magdalena de Cao', '1302', '13'),
('130205', 'Paijan', '1302', '13'),
('130206', 'Rázuri', '1302', '13'),
('130207', 'Santiago de Cao', '1302', '13'),
('130208', 'Casa Grande', '1302', '13'),
('130301', 'Bolívar', '1303', '13'),
('130302', 'Bambamarca', '1303', '13'),
('130303', 'Condormarca', '1303', '13'),
('130304', 'Longotea', '1303', '13'),
('130305', 'Uchumarca', '1303', '13'),
('130306', 'Ucuncha', '1303', '13'),
('130401', 'Chepen', '1304', '13'),
('130402', 'Pacanga', '1304', '13'),
('130403', 'Pueblo Nuevo', '1304', '13'),
('130501', 'Julcan', '1305', '13'),
('130502', 'Calamarca', '1305', '13'),
('130503', 'Carabamba', '1305', '13'),
('130504', 'Huaso', '1305', '13'),
('130601', 'Otuzco', '1306', '13'),
('130602', 'Agallpampa', '1306', '13'),
('130604', 'Charat', '1306', '13'),
('130605', 'Huaranchal', '1306', '13'),
('130606', 'La Cuesta', '1306', '13'),
('130608', 'Mache', '1306', '13'),
('130610', 'Paranday', '1306', '13'),
('130611', 'Salpo', '1306', '13'),
('130613', 'Sinsicap', '1306', '13'),
('130614', 'Usquil', '1306', '13'),
('130701', 'San Pedro de Lloc', '1307', '13'),
('130702', 'Guadalupe', '1307', '13'),
('130703', 'Jequetepeque', '1307', '13'),
('130704', 'Pacasmayo', '1307', '13'),
('130705', 'San José', '1307', '13'),
('130801', 'Tayabamba', '1308', '13'),
('130802', 'Buldibuyo', '1308', '13'),
('130803', 'Chillia', '1308', '13'),
('130804', 'Huancaspata', '1308', '13'),
('130805', 'Huaylillas', '1308', '13'),
('130806', 'Huayo', '1308', '13'),
('130807', 'Ongon', '1308', '13'),
('130808', 'Parcoy', '1308', '13'),
('130809', 'Pataz', '1308', '13'),
('130810', 'Pias', '1308', '13'),
('130811', 'Santiago de Challas', '1308', '13'),
('130812', 'Taurija', '1308', '13'),
('130813', 'Urpay', '1308', '13'),
('130901', 'Huamachuco', '1309', '13'),
('130902', 'Chugay', '1309', '13'),
('130903', 'Cochorco', '1309', '13'),
('130904', 'Curgos', '1309', '13'),
('130905', 'Marcabal', '1309', '13'),
('130906', 'Sanagoran', '1309', '13'),
('130907', 'Sarin', '1309', '13'),
('130908', 'Sartimbamba', '1309', '13'),
('131001', 'Santiago de Chuco', '1310', '13'),
('131002', 'Angasmarca', '1310', '13'),
('131003', 'Cachicadan', '1310', '13'),
('131004', 'Mollebamba', '1310', '13'),
('131005', 'Mollepata', '1310', '13'),
('131006', 'Quiruvilca', '1310', '13'),
('131007', 'Santa Cruz de Chuca', '1310', '13'),
('131008', 'Sitabamba', '1310', '13'),
('131101', 'Cascas', '1311', '13'),
('131102', 'Lucma', '1311', '13'),
('131103', 'Marmot', '1311', '13'),
('131104', 'Sayapullo', '1311', '13'),
('131201', 'Viru', '1312', '13'),
('131202', 'Chao', '1312', '13'),
('131203', 'Guadalupito', '1312', '13'),
('140101', 'Chiclayo', '1401', '14'),
('140102', 'Chongoyape', '1401', '14'),
('140103', 'Eten', '1401', '14'),
('140104', 'Eten Puerto', '1401', '14'),
('140105', 'José Leonardo Ortiz', '1401', '14'),
('140106', 'La Victoria', '1401', '14'),
('140107', 'Lagunas', '1401', '14'),
('140108', 'Monsefu', '1401', '14'),
('140109', 'Nueva Arica', '1401', '14'),
('140110', 'Oyotun', '1401', '14'),
('140111', 'Picsi', '1401', '14'),
('140112', 'Pimentel', '1401', '14'),
('140113', 'Reque', '1401', '14'),
('140114', 'Santa Rosa', '1401', '14'),
('140115', 'Saña', '1401', '14'),
('140116', 'Cayalti', '1401', '14'),
('140117', 'Patapo', '1401', '14'),
('140118', 'Pomalca', '1401', '14'),
('140119', 'Pucala', '1401', '14'),
('140120', 'Tuman', '1401', '14'),
('140201', 'Ferreñafe', '1402', '14'),
('140202', 'Cañaris', '1402', '14'),
('140203', 'Incahuasi', '1402', '14'),
('140204', 'Manuel Antonio Mesones Muro', '1402', '14'),
('140205', 'Pitipo', '1402', '14'),
('140206', 'Pueblo Nuevo', '1402', '14'),
('140301', 'Lambayeque', '1403', '14'),
('140302', 'Chochope', '1403', '14'),
('140303', 'Illimo', '1403', '14'),
('140304', 'Jayanca', '1403', '14'),
('140305', 'Mochumi', '1403', '14'),
('140306', 'Morrope', '1403', '14'),
('140307', 'Motupe', '1403', '14'),
('140308', 'Olmos', '1403', '14'),
('140309', 'Pacora', '1403', '14'),
('140310', 'Salas', '1403', '14'),
('140311', 'San José', '1403', '14'),
('140312', 'Tucume', '1403', '14'),
('150101', 'Lima', '1501', '15'),
('150102', 'Ancón', '1501', '15'),
('150103', 'Ate', '1501', '15'),
('150104', 'Barranco', '1501', '15'),
('150105', 'Breña', '1501', '15'),
('150106', 'Carabayllo', '1501', '15'),
('150107', 'Chaclacayo', '1501', '15'),
('150108', 'Chorrillos', '1501', '15'),
('150109', 'Cieneguilla', '1501', '15'),
('150110', 'Comas', '1501', '15'),
('150111', 'El Agustino', '1501', '15'),
('150112', 'Independencia', '1501', '15'),
('150113', 'Jesús María', '1501', '15'),
('150114', 'La Molina', '1501', '15'),
('150115', 'La Victoria', '1501', '15'),
('150116', 'Lince', '1501', '15'),
('150117', 'Los Olivos', '1501', '15'),
('150118', 'Lurigancho', '1501', '15'),
('150119', 'Lurin', '1501', '15'),
('150120', 'Magdalena del Mar', '1501', '15'),
('150121', 'Pueblo Libre', '1501', '15'),
('150122', 'Miraflores', '1501', '15'),
('150123', 'Pachacamac', '1501', '15'),
('150124', 'Pucusana', '1501', '15'),
('150125', 'Puente Piedra', '1501', '15'),
('150126', 'Punta Hermosa', '1501', '15'),
('150127', 'Punta Negra', '1501', '15'),
('150128', 'Rímac', '1501', '15'),
('150129', 'San Bartolo', '1501', '15'),
('150130', 'San Borja', '1501', '15'),
('150131', 'San Isidro', '1501', '15'),
('150132', 'San Juan de Lurigancho', '1501', '15'),
('150133', 'San Juan de Miraflores', '1501', '15'),
('150134', 'San Luis', '1501', '15'),
('150135', 'San Martín de Porres', '1501', '15'),
('150136', 'San Miguel', '1501', '15'),
('150137', 'Santa Anita', '1501', '15'),
('150138', 'Santa María del Mar', '1501', '15'),
('150139', 'Santa Rosa', '1501', '15'),
('150140', 'Santiago de Surco', '1501', '15'),
('150141', 'Surquillo', '1501', '15'),
('150142', 'Villa El Salvador', '1501', '15'),
('150143', 'Villa María del Triunfo', '1501', '15'),
('150201', 'Barranca', '1502', '15'),
('150202', 'Paramonga', '1502', '15'),
('150203', 'Pativilca', '1502', '15'),
('150204', 'Supe', '1502', '15'),
('150205', 'Supe Puerto', '1502', '15'),
('150301', 'Cajatambo', '1503', '15'),
('150302', 'Copa', '1503', '15'),
('150303', 'Gorgor', '1503', '15'),
('150304', 'Huancapon', '1503', '15'),
('150305', 'Manas', '1503', '15'),
('150401', 'Canta', '1504', '15'),
('150402', 'Arahuay', '1504', '15'),
('150403', 'Huamantanga', '1504', '15'),
('150404', 'Huaros', '1504', '15'),
('150405', 'Lachaqui', '1504', '15'),
('150406', 'San Buenaventura', '1504', '15'),
('150407', 'Santa Rosa de Quives', '1504', '15');
INSERT INTO `ubigeo_peru_districts` (`id`, `name`, `province_id`, `department_id`) VALUES
('150501', 'San Vicente de Cañete', '1505', '15'),
('150502', 'Asia', '1505', '15'),
('150503', 'Calango', '1505', '15'),
('150504', 'Cerro Azul', '1505', '15'),
('150505', 'Chilca', '1505', '15'),
('150506', 'Coayllo', '1505', '15'),
('150507', 'Imperial', '1505', '15'),
('150508', 'Lunahuana', '1505', '15'),
('150509', 'Mala', '1505', '15'),
('150510', 'Nuevo Imperial', '1505', '15'),
('150511', 'Pacaran', '1505', '15'),
('150512', 'Quilmana', '1505', '15'),
('150513', 'San Antonio', '1505', '15'),
('150514', 'San Luis', '1505', '15'),
('150515', 'Santa Cruz de Flores', '1505', '15'),
('150516', 'Zúñiga', '1505', '15'),
('150601', 'Huaral', '1506', '15'),
('150602', 'Atavillos Alto', '1506', '15'),
('150603', 'Atavillos Bajo', '1506', '15'),
('150604', 'Aucallama', '1506', '15'),
('150605', 'Chancay', '1506', '15'),
('150606', 'Ihuari', '1506', '15'),
('150607', 'Lampian', '1506', '15'),
('150608', 'Pacaraos', '1506', '15'),
('150609', 'San Miguel de Acos', '1506', '15'),
('150610', 'Santa Cruz de Andamarca', '1506', '15'),
('150611', 'Sumbilca', '1506', '15'),
('150612', 'Veintisiete de Noviembre', '1506', '15'),
('150701', 'Matucana', '1507', '15'),
('150702', 'Antioquia', '1507', '15'),
('150703', 'Callahuanca', '1507', '15'),
('150704', 'Carampoma', '1507', '15'),
('150705', 'Chicla', '1507', '15'),
('150706', 'Cuenca', '1507', '15'),
('150707', 'Huachupampa', '1507', '15'),
('150708', 'Huanza', '1507', '15'),
('150709', 'Huarochiri', '1507', '15'),
('150710', 'Lahuaytambo', '1507', '15'),
('150711', 'Langa', '1507', '15'),
('150712', 'Laraos', '1507', '15'),
('150713', 'Mariatana', '1507', '15'),
('150714', 'Ricardo Palma', '1507', '15'),
('150715', 'San Andrés de Tupicocha', '1507', '15'),
('150716', 'San Antonio', '1507', '15'),
('150717', 'San Bartolomé', '1507', '15'),
('150718', 'San Damian', '1507', '15'),
('150719', 'San Juan de Iris', '1507', '15'),
('150720', 'San Juan de Tantaranche', '1507', '15'),
('150721', 'San Lorenzo de Quinti', '1507', '15'),
('150722', 'San Mateo', '1507', '15'),
('150723', 'San Mateo de Otao', '1507', '15'),
('150724', 'San Pedro de Casta', '1507', '15'),
('150725', 'San Pedro de Huancayre', '1507', '15'),
('150726', 'Sangallaya', '1507', '15'),
('150727', 'Santa Cruz de Cocachacra', '1507', '15'),
('150728', 'Santa Eulalia', '1507', '15'),
('150729', 'Santiago de Anchucaya', '1507', '15'),
('150730', 'Santiago de Tuna', '1507', '15'),
('150731', 'Santo Domingo de Los Olleros', '1507', '15'),
('150732', 'Surco', '1507', '15'),
('150801', 'Huacho', '1508', '15'),
('150802', 'Ambar', '1508', '15'),
('150803', 'Caleta de Carquin', '1508', '15'),
('150804', 'Checras', '1508', '15'),
('150805', 'Hualmay', '1508', '15'),
('150806', 'Huaura', '1508', '15'),
('150807', 'Leoncio Prado', '1508', '15'),
('150808', 'Paccho', '1508', '15'),
('150809', 'Santa Leonor', '1508', '15'),
('150810', 'Santa María', '1508', '15'),
('150811', 'Sayan', '1508', '15'),
('150812', 'Vegueta', '1508', '15'),
('150901', 'Oyon', '1509', '15'),
('150902', 'Andajes', '1509', '15'),
('150903', 'Caujul', '1509', '15'),
('150904', 'Cochamarca', '1509', '15'),
('150905', 'Navan', '1509', '15'),
('150906', 'Pachangara', '1509', '15'),
('151001', 'Yauyos', '1510', '15'),
('151002', 'Alis', '1510', '15'),
('151003', 'Allauca', '1510', '15'),
('151004', 'Ayaviri', '1510', '15'),
('151005', 'Azángaro', '1510', '15'),
('151006', 'Cacra', '1510', '15'),
('151007', 'Carania', '1510', '15'),
('151008', 'Catahuasi', '1510', '15'),
('151009', 'Chocos', '1510', '15'),
('151010', 'Cochas', '1510', '15'),
('151011', 'Colonia', '1510', '15'),
('151012', 'Hongos', '1510', '15'),
('151013', 'Huampara', '1510', '15'),
('151014', 'Huancaya', '1510', '15'),
('151015', 'Huangascar', '1510', '15'),
('151016', 'Huantan', '1510', '15'),
('151017', 'Huañec', '1510', '15'),
('151018', 'Laraos', '1510', '15'),
('151019', 'Lincha', '1510', '15'),
('151020', 'Madean', '1510', '15'),
('151021', 'Miraflores', '1510', '15'),
('151022', 'Omas', '1510', '15'),
('151023', 'Putinza', '1510', '15'),
('151024', 'Quinches', '1510', '15'),
('151025', 'Quinocay', '1510', '15'),
('151026', 'San Joaquín', '1510', '15'),
('151027', 'San Pedro de Pilas', '1510', '15'),
('151028', 'Tanta', '1510', '15'),
('151029', 'Tauripampa', '1510', '15'),
('151030', 'Tomas', '1510', '15'),
('151031', 'Tupe', '1510', '15'),
('151032', 'Viñac', '1510', '15'),
('151033', 'Vitis', '1510', '15'),
('160101', 'Iquitos', '1601', '16'),
('160102', 'Alto Nanay', '1601', '16'),
('160103', 'Fernando Lores', '1601', '16'),
('160104', 'Indiana', '1601', '16'),
('160105', 'Las Amazonas', '1601', '16'),
('160106', 'Mazan', '1601', '16'),
('160107', 'Napo', '1601', '16'),
('160108', 'Punchana', '1601', '16'),
('160110', 'Torres Causana', '1601', '16'),
('160112', 'Belén', '1601', '16'),
('160113', 'San Juan Bautista', '1601', '16'),
('160201', 'Yurimaguas', '1602', '16'),
('160202', 'Balsapuerto', '1602', '16'),
('160205', 'Jeberos', '1602', '16'),
('160206', 'Lagunas', '1602', '16'),
('160210', 'Santa Cruz', '1602', '16'),
('160211', 'Teniente Cesar López Rojas', '1602', '16'),
('160301', 'Nauta', '1603', '16'),
('160302', 'Parinari', '1603', '16'),
('160303', 'Tigre', '1603', '16'),
('160304', 'Trompeteros', '1603', '16'),
('160305', 'Urarinas', '1603', '16'),
('160401', 'Ramón Castilla', '1604', '16'),
('160402', 'Pebas', '1604', '16'),
('160403', 'Yavari', '1604', '16'),
('160404', 'San Pablo', '1604', '16'),
('160501', 'Requena', '1605', '16'),
('160502', 'Alto Tapiche', '1605', '16'),
('160503', 'Capelo', '1605', '16'),
('160504', 'Emilio San Martín', '1605', '16'),
('160505', 'Maquia', '1605', '16'),
('160506', 'Puinahua', '1605', '16'),
('160507', 'Saquena', '1605', '16'),
('160508', 'Soplin', '1605', '16'),
('160509', 'Tapiche', '1605', '16'),
('160510', 'Jenaro Herrera', '1605', '16'),
('160511', 'Yaquerana', '1605', '16'),
('160601', 'Contamana', '1606', '16'),
('160602', 'Inahuaya', '1606', '16'),
('160603', 'Padre Márquez', '1606', '16'),
('160604', 'Pampa Hermosa', '1606', '16'),
('160605', 'Sarayacu', '1606', '16'),
('160606', 'Vargas Guerra', '1606', '16'),
('160701', 'Barranca', '1607', '16'),
('160702', 'Cahuapanas', '1607', '16'),
('160703', 'Manseriche', '1607', '16'),
('160704', 'Morona', '1607', '16'),
('160705', 'Pastaza', '1607', '16'),
('160706', 'Andoas', '1607', '16'),
('160801', 'Putumayo', '1608', '16'),
('160802', 'Rosa Panduro', '1608', '16'),
('160803', 'Teniente Manuel Clavero', '1608', '16'),
('160804', 'Yaguas', '1608', '16'),
('170101', 'Tambopata', '1701', '17'),
('170102', 'Inambari', '1701', '17'),
('170103', 'Las Piedras', '1701', '17'),
('170104', 'Laberinto', '1701', '17'),
('170201', 'Manu', '1702', '17'),
('170202', 'Fitzcarrald', '1702', '17'),
('170203', 'Madre de Dios', '1702', '17'),
('170204', 'Huepetuhe', '1702', '17'),
('170301', 'Iñapari', '1703', '17'),
('170302', 'Iberia', '1703', '17'),
('170303', 'Tahuamanu', '1703', '17'),
('180101', 'Moquegua', '1801', '18'),
('180102', 'Carumas', '1801', '18'),
('180103', 'Cuchumbaya', '1801', '18'),
('180104', 'Samegua', '1801', '18'),
('180105', 'San Cristóbal', '1801', '18'),
('180106', 'Torata', '1801', '18'),
('180201', 'Omate', '1802', '18'),
('180202', 'Chojata', '1802', '18'),
('180203', 'Coalaque', '1802', '18'),
('180204', 'Ichuña', '1802', '18'),
('180205', 'La Capilla', '1802', '18'),
('180206', 'Lloque', '1802', '18'),
('180207', 'Matalaque', '1802', '18'),
('180208', 'Puquina', '1802', '18'),
('180209', 'Quinistaquillas', '1802', '18'),
('180210', 'Ubinas', '1802', '18'),
('180211', 'Yunga', '1802', '18'),
('180301', 'Ilo', '1803', '18'),
('180302', 'El Algarrobal', '1803', '18'),
('180303', 'Pacocha', '1803', '18'),
('190101', 'Chaupimarca', '1901', '19'),
('190102', 'Huachon', '1901', '19'),
('190103', 'Huariaca', '1901', '19'),
('190104', 'Huayllay', '1901', '19'),
('190105', 'Ninacaca', '1901', '19'),
('190106', 'Pallanchacra', '1901', '19'),
('190107', 'Paucartambo', '1901', '19'),
('190108', 'San Francisco de Asís de Yarusyacan', '1901', '19'),
('190109', 'Simon Bolívar', '1901', '19'),
('190110', 'Ticlacayan', '1901', '19'),
('190111', 'Tinyahuarco', '1901', '19'),
('190112', 'Vicco', '1901', '19'),
('190113', 'Yanacancha', '1901', '19'),
('190201', 'Yanahuanca', '1902', '19'),
('190202', 'Chacayan', '1902', '19'),
('190203', 'Goyllarisquizga', '1902', '19'),
('190204', 'Paucar', '1902', '19'),
('190205', 'San Pedro de Pillao', '1902', '19'),
('190206', 'Santa Ana de Tusi', '1902', '19'),
('190207', 'Tapuc', '1902', '19'),
('190208', 'Vilcabamba', '1902', '19'),
('190301', 'Oxapampa', '1903', '19'),
('190302', 'Chontabamba', '1903', '19'),
('190303', 'Huancabamba', '1903', '19'),
('190304', 'Palcazu', '1903', '19'),
('190305', 'Pozuzo', '1903', '19'),
('190306', 'Puerto Bermúdez', '1903', '19'),
('190307', 'Villa Rica', '1903', '19'),
('190308', 'Constitución', '1903', '19'),
('200101', 'Piura', '2001', '20'),
('200104', 'Castilla', '2001', '20'),
('200105', 'Catacaos', '2001', '20'),
('200107', 'Cura Mori', '2001', '20'),
('200108', 'El Tallan', '2001', '20'),
('200109', 'La Arena', '2001', '20'),
('200110', 'La Unión', '2001', '20'),
('200111', 'Las Lomas', '2001', '20'),
('200114', 'Tambo Grande', '2001', '20'),
('200115', 'Veintiseis de Octubre', '2001', '20'),
('200201', 'Ayabaca', '2002', '20'),
('200202', 'Frias', '2002', '20'),
('200203', 'Jilili', '2002', '20'),
('200204', 'Lagunas', '2002', '20'),
('200205', 'Montero', '2002', '20'),
('200206', 'Pacaipampa', '2002', '20'),
('200207', 'Paimas', '2002', '20'),
('200208', 'Sapillica', '2002', '20'),
('200209', 'Sicchez', '2002', '20'),
('200210', 'Suyo', '2002', '20'),
('200301', 'Huancabamba', '2003', '20'),
('200302', 'Canchaque', '2003', '20'),
('200303', 'El Carmen de la Frontera', '2003', '20'),
('200304', 'Huarmaca', '2003', '20'),
('200305', 'Lalaquiz', '2003', '20'),
('200306', 'San Miguel de El Faique', '2003', '20'),
('200307', 'Sondor', '2003', '20'),
('200308', 'Sondorillo', '2003', '20'),
('200401', 'Chulucanas', '2004', '20'),
('200402', 'Buenos Aires', '2004', '20'),
('200403', 'Chalaco', '2004', '20'),
('200404', 'La Matanza', '2004', '20'),
('200405', 'Morropon', '2004', '20'),
('200406', 'Salitral', '2004', '20'),
('200407', 'San Juan de Bigote', '2004', '20'),
('200408', 'Santa Catalina de Mossa', '2004', '20'),
('200409', 'Santo Domingo', '2004', '20'),
('200410', 'Yamango', '2004', '20'),
('200501', 'Paita', '2005', '20'),
('200502', 'Amotape', '2005', '20'),
('200503', 'Arenal', '2005', '20'),
('200504', 'Colan', '2005', '20'),
('200505', 'La Huaca', '2005', '20'),
('200506', 'Tamarindo', '2005', '20'),
('200507', 'Vichayal', '2005', '20'),
('200601', 'Sullana', '2006', '20'),
('200602', 'Bellavista', '2006', '20'),
('200603', 'Ignacio Escudero', '2006', '20'),
('200604', 'Lancones', '2006', '20'),
('200605', 'Marcavelica', '2006', '20'),
('200606', 'Miguel Checa', '2006', '20'),
('200607', 'Querecotillo', '2006', '20'),
('200608', 'Salitral', '2006', '20'),
('200701', 'Pariñas', '2007', '20'),
('200702', 'El Alto', '2007', '20'),
('200703', 'La Brea', '2007', '20'),
('200704', 'Lobitos', '2007', '20'),
('200705', 'Los Organos', '2007', '20'),
('200706', 'Mancora', '2007', '20'),
('200801', 'Sechura', '2008', '20'),
('200802', 'Bellavista de la Unión', '2008', '20'),
('200803', 'Bernal', '2008', '20'),
('200804', 'Cristo Nos Valga', '2008', '20'),
('200805', 'Vice', '2008', '20'),
('200806', 'Rinconada Llicuar', '2008', '20'),
('210101', 'Puno', '2101', '21'),
('210102', 'Acora', '2101', '21'),
('210103', 'Amantani', '2101', '21'),
('210104', 'Atuncolla', '2101', '21'),
('210105', 'Capachica', '2101', '21'),
('210106', 'Chucuito', '2101', '21'),
('210107', 'Coata', '2101', '21'),
('210108', 'Huata', '2101', '21'),
('210109', 'Mañazo', '2101', '21'),
('210110', 'Paucarcolla', '2101', '21'),
('210111', 'Pichacani', '2101', '21'),
('210112', 'Plateria', '2101', '21'),
('210113', 'San Antonio', '2101', '21'),
('210114', 'Tiquillaca', '2101', '21'),
('210115', 'Vilque', '2101', '21'),
('210201', 'Azángaro', '2102', '21'),
('210202', 'Achaya', '2102', '21'),
('210203', 'Arapa', '2102', '21'),
('210204', 'Asillo', '2102', '21'),
('210205', 'Caminaca', '2102', '21'),
('210206', 'Chupa', '2102', '21'),
('210207', 'José Domingo Choquehuanca', '2102', '21'),
('210208', 'Muñani', '2102', '21'),
('210209', 'Potoni', '2102', '21'),
('210210', 'Saman', '2102', '21'),
('210211', 'San Anton', '2102', '21'),
('210212', 'San José', '2102', '21'),
('210213', 'San Juan de Salinas', '2102', '21'),
('210214', 'Santiago de Pupuja', '2102', '21'),
('210215', 'Tirapata', '2102', '21'),
('210301', 'Macusani', '2103', '21'),
('210302', 'Ajoyani', '2103', '21'),
('210303', 'Ayapata', '2103', '21'),
('210304', 'Coasa', '2103', '21'),
('210305', 'Corani', '2103', '21'),
('210306', 'Crucero', '2103', '21'),
('210307', 'Ituata', '2103', '21'),
('210308', 'Ollachea', '2103', '21'),
('210309', 'San Gaban', '2103', '21'),
('210310', 'Usicayos', '2103', '21'),
('210401', 'Juli', '2104', '21'),
('210402', 'Desaguadero', '2104', '21'),
('210403', 'Huacullani', '2104', '21'),
('210404', 'Kelluyo', '2104', '21'),
('210405', 'Pisacoma', '2104', '21'),
('210406', 'Pomata', '2104', '21'),
('210407', 'Zepita', '2104', '21'),
('210501', 'Ilave', '2105', '21'),
('210502', 'Capazo', '2105', '21'),
('210503', 'Pilcuyo', '2105', '21'),
('210504', 'Santa Rosa', '2105', '21'),
('210505', 'Conduriri', '2105', '21'),
('210601', 'Huancane', '2106', '21'),
('210602', 'Cojata', '2106', '21'),
('210603', 'Huatasani', '2106', '21'),
('210604', 'Inchupalla', '2106', '21'),
('210605', 'Pusi', '2106', '21'),
('210606', 'Rosaspata', '2106', '21'),
('210607', 'Taraco', '2106', '21'),
('210608', 'Vilque Chico', '2106', '21'),
('210701', 'Lampa', '2107', '21'),
('210702', 'Cabanilla', '2107', '21'),
('210703', 'Calapuja', '2107', '21'),
('210704', 'Nicasio', '2107', '21'),
('210705', 'Ocuviri', '2107', '21'),
('210706', 'Palca', '2107', '21'),
('210707', 'Paratia', '2107', '21'),
('210708', 'Pucara', '2107', '21'),
('210709', 'Santa Lucia', '2107', '21'),
('210710', 'Vilavila', '2107', '21'),
('210801', 'Ayaviri', '2108', '21'),
('210802', 'Antauta', '2108', '21'),
('210803', 'Cupi', '2108', '21'),
('210804', 'Llalli', '2108', '21'),
('210805', 'Macari', '2108', '21'),
('210806', 'Nuñoa', '2108', '21'),
('210807', 'Orurillo', '2108', '21'),
('210808', 'Santa Rosa', '2108', '21'),
('210809', 'Umachiri', '2108', '21'),
('210901', 'Moho', '2109', '21'),
('210902', 'Conima', '2109', '21'),
('210903', 'Huayrapata', '2109', '21'),
('210904', 'Tilali', '2109', '21'),
('211001', 'Putina', '2110', '21'),
('211002', 'Ananea', '2110', '21'),
('211003', 'Pedro Vilca Apaza', '2110', '21'),
('211004', 'Quilcapuncu', '2110', '21'),
('211005', 'Sina', '2110', '21'),
('211101', 'Juliaca', '2111', '21'),
('211102', 'Cabana', '2111', '21'),
('211103', 'Cabanillas', '2111', '21'),
('211104', 'Caracoto', '2111', '21'),
('211105', 'San Miguel', '2111', '21'),
('211201', 'Sandia', '2112', '21'),
('211202', 'Cuyocuyo', '2112', '21'),
('211203', 'Limbani', '2112', '21'),
('211204', 'Patambuco', '2112', '21'),
('211205', 'Phara', '2112', '21'),
('211206', 'Quiaca', '2112', '21'),
('211207', 'San Juan del Oro', '2112', '21'),
('211208', 'Yanahuaya', '2112', '21'),
('211209', 'Alto Inambari', '2112', '21'),
('211210', 'San Pedro de Putina Punco', '2112', '21'),
('211301', 'Yunguyo', '2113', '21'),
('211302', 'Anapia', '2113', '21'),
('211303', 'Copani', '2113', '21'),
('211304', 'Cuturapi', '2113', '21'),
('211305', 'Ollaraya', '2113', '21'),
('211306', 'Tinicachi', '2113', '21'),
('211307', 'Unicachi', '2113', '21'),
('220101', 'Moyobamba', '2201', '22'),
('220102', 'Calzada', '2201', '22'),
('220103', 'Habana', '2201', '22'),
('220104', 'Jepelacio', '2201', '22'),
('220105', 'Soritor', '2201', '22'),
('220106', 'Yantalo', '2201', '22'),
('220201', 'Bellavista', '2202', '22'),
('220202', 'Alto Biavo', '2202', '22'),
('220203', 'Bajo Biavo', '2202', '22'),
('220204', 'Huallaga', '2202', '22'),
('220205', 'San Pablo', '2202', '22'),
('220206', 'San Rafael', '2202', '22'),
('220301', 'San José de Sisa', '2203', '22'),
('220302', 'Agua Blanca', '2203', '22'),
('220303', 'San Martín', '2203', '22'),
('220304', 'Santa Rosa', '2203', '22'),
('220305', 'Shatoja', '2203', '22'),
('220401', 'Saposoa', '2204', '22'),
('220402', 'Alto Saposoa', '2204', '22'),
('220403', 'El Eslabón', '2204', '22'),
('220404', 'Piscoyacu', '2204', '22'),
('220405', 'Sacanche', '2204', '22'),
('220406', 'Tingo de Saposoa', '2204', '22'),
('220501', 'Lamas', '2205', '22'),
('220502', 'Alonso de Alvarado', '2205', '22'),
('220503', 'Barranquita', '2205', '22'),
('220504', 'Caynarachi', '2205', '22'),
('220505', 'Cuñumbuqui', '2205', '22'),
('220506', 'Pinto Recodo', '2205', '22'),
('220507', 'Rumisapa', '2205', '22'),
('220508', 'San Roque de Cumbaza', '2205', '22'),
('220509', 'Shanao', '2205', '22'),
('220510', 'Tabalosos', '2205', '22'),
('220511', 'Zapatero', '2205', '22'),
('220601', 'Juanjuí', '2206', '22'),
('220602', 'Campanilla', '2206', '22'),
('220603', 'Huicungo', '2206', '22'),
('220604', 'Pachiza', '2206', '22'),
('220605', 'Pajarillo', '2206', '22'),
('220701', 'Picota', '2207', '22'),
('220702', 'Buenos Aires', '2207', '22'),
('220703', 'Caspisapa', '2207', '22'),
('220704', 'Pilluana', '2207', '22'),
('220705', 'Pucacaca', '2207', '22'),
('220706', 'San Cristóbal', '2207', '22'),
('220707', 'San Hilarión', '2207', '22'),
('220708', 'Shamboyacu', '2207', '22'),
('220709', 'Tingo de Ponasa', '2207', '22'),
('220710', 'Tres Unidos', '2207', '22'),
('220801', 'Rioja', '2208', '22'),
('220802', 'Awajun', '2208', '22'),
('220803', 'Elías Soplin Vargas', '2208', '22'),
('220804', 'Nueva Cajamarca', '2208', '22'),
('220805', 'Pardo Miguel', '2208', '22'),
('220806', 'Posic', '2208', '22'),
('220807', 'San Fernando', '2208', '22'),
('220808', 'Yorongos', '2208', '22'),
('220809', 'Yuracyacu', '2208', '22'),
('220901', 'Tarapoto', '2209', '22'),
('220902', 'Alberto Leveau', '2209', '22'),
('220903', 'Cacatachi', '2209', '22'),
('220904', 'Chazuta', '2209', '22'),
('220905', 'Chipurana', '2209', '22'),
('220906', 'El Porvenir', '2209', '22'),
('220907', 'Huimbayoc', '2209', '22'),
('220908', 'Juan Guerra', '2209', '22'),
('220909', 'La Banda de Shilcayo', '2209', '22'),
('220910', 'Morales', '2209', '22'),
('220911', 'Papaplaya', '2209', '22'),
('220912', 'San Antonio', '2209', '22'),
('220913', 'Sauce', '2209', '22'),
('220914', 'Shapaja', '2209', '22'),
('221001', 'Tocache', '2210', '22'),
('221002', 'Nuevo Progreso', '2210', '22'),
('221003', 'Polvora', '2210', '22'),
('221004', 'Shunte', '2210', '22'),
('221005', 'Uchiza', '2210', '22'),
('230101', 'Tacna', '2301', '23'),
('230102', 'Alto de la Alianza', '2301', '23'),
('230103', 'Calana', '2301', '23'),
('230104', 'Ciudad Nueva', '2301', '23'),
('230105', 'Inclan', '2301', '23'),
('230106', 'Pachia', '2301', '23'),
('230107', 'Palca', '2301', '23'),
('230108', 'Pocollay', '2301', '23'),
('230109', 'Sama', '2301', '23'),
('230110', 'Coronel Gregorio Albarracín Lanchipa', '2301', '23'),
('230111', 'La Yarada los Palos', '2301', '23'),
('230201', 'Candarave', '2302', '23'),
('230202', 'Cairani', '2302', '23'),
('230203', 'Camilaca', '2302', '23'),
('230204', 'Curibaya', '2302', '23'),
('230205', 'Huanuara', '2302', '23'),
('230206', 'Quilahuani', '2302', '23'),
('230301', 'Locumba', '2303', '23'),
('230302', 'Ilabaya', '2303', '23'),
('230303', 'Ite', '2303', '23'),
('230401', 'Tarata', '2304', '23'),
('230402', 'Héroes Albarracín', '2304', '23'),
('230403', 'Estique', '2304', '23'),
('230404', 'Estique-Pampa', '2304', '23'),
('230405', 'Sitajara', '2304', '23'),
('230406', 'Susapaya', '2304', '23'),
('230407', 'Tarucachi', '2304', '23'),
('230408', 'Ticaco', '2304', '23'),
('240101', 'Tumbes', '2401', '24'),
('240102', 'Corrales', '2401', '24'),
('240103', 'La Cruz', '2401', '24'),
('240104', 'Pampas de Hospital', '2401', '24'),
('240105', 'San Jacinto', '2401', '24'),
('240106', 'San Juan de la Virgen', '2401', '24'),
('240201', 'Zorritos', '2402', '24'),
('240202', 'Casitas', '2402', '24'),
('240203', 'Canoas de Punta Sal', '2402', '24'),
('240301', 'Zarumilla', '2403', '24'),
('240302', 'Aguas Verdes', '2403', '24'),
('240303', 'Matapalo', '2403', '24'),
('240304', 'Papayal', '2403', '24'),
('250101', 'Calleria', '2501', '25'),
('250102', 'Campoverde', '2501', '25'),
('250103', 'Iparia', '2501', '25'),
('250104', 'Masisea', '2501', '25'),
('250105', 'Yarinacocha', '2501', '25'),
('250106', 'Nueva Requena', '2501', '25'),
('250107', 'Manantay', '2501', '25'),
('250201', 'Raymondi', '2502', '25'),
('250202', 'Sepahua', '2502', '25'),
('250203', 'Tahuania', '2502', '25'),
('250204', 'Yurua', '2502', '25'),
('250301', 'Padre Abad', '2503', '25'),
('250302', 'Irazola', '2503', '25'),
('250303', 'Curimana', '2503', '25'),
('250304', 'Neshuya', '2503', '25'),
('250305', 'Alexander Von Humboldt', '2503', '25'),
('250401', 'Purus', '2504', '25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo_peru_provinces`
--

CREATE TABLE `ubigeo_peru_provinces` (
  `id` varchar(4) NOT NULL,
  `name` varchar(45) NOT NULL,
  `department_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubigeo_peru_provinces`
--

INSERT INTO `ubigeo_peru_provinces` (`id`, `name`, `department_id`) VALUES
('0101', 'Chachapoyas', '01'),
('0102', 'Bagua', '01'),
('0103', 'Bongará', '01'),
('0104', 'Condorcanqui', '01'),
('0105', 'Luya', '01'),
('0106', 'Rodríguez de Mendoza', '01'),
('0107', 'Utcubamba', '01'),
('0201', 'Huaraz', '02'),
('0202', 'Aija', '02'),
('0203', 'Antonio Raymondi', '02'),
('0204', 'Asunción', '02'),
('0205', 'Bolognesi', '02'),
('0206', 'Carhuaz', '02'),
('0207', 'Carlos Fermín Fitzcarrald', '02'),
('0208', 'Casma', '02'),
('0209', 'Corongo', '02'),
('0210', 'Huari', '02'),
('0211', 'Huarmey', '02'),
('0212', 'Huaylas', '02'),
('0213', 'Mariscal Luzuriaga', '02'),
('0214', 'Ocros', '02'),
('0215', 'Pallasca', '02'),
('0216', 'Pomabamba', '02'),
('0217', 'Recuay', '02'),
('0218', 'Santa', '02'),
('0219', 'Sihuas', '02'),
('0220', 'Yungay', '02'),
('0301', 'Abancay', '03'),
('0302', 'Andahuaylas', '03'),
('0303', 'Antabamba', '03'),
('0304', 'Aymaraes', '03'),
('0305', 'Cotabambas', '03'),
('0306', 'Chincheros', '03'),
('0307', 'Grau', '03'),
('0401', 'Arequipa', '04'),
('0402', 'Camaná', '04'),
('0403', 'Caravelí', '04'),
('0404', 'Castilla', '04'),
('0405', 'Caylloma', '04'),
('0406', 'Condesuyos', '04'),
('0407', 'Islay', '04'),
('0408', 'La Uniòn', '04'),
('0501', 'Huamanga', '05'),
('0502', 'Cangallo', '05'),
('0503', 'Huanca Sancos', '05'),
('0504', 'Huanta', '05'),
('0505', 'La Mar', '05'),
('0506', 'Lucanas', '05'),
('0507', 'Parinacochas', '05'),
('0508', 'Pàucar del Sara Sara', '05'),
('0509', 'Sucre', '05'),
('0510', 'Víctor Fajardo', '05'),
('0511', 'Vilcas Huamán', '05'),
('0601', 'Cajamarca', '06'),
('0602', 'Cajabamba', '06'),
('0603', 'Celendín', '06'),
('0604', 'Chota', '06'),
('0605', 'Contumazá', '06'),
('0606', 'Cutervo', '06'),
('0607', 'Hualgayoc', '06'),
('0608', 'Jaén', '06'),
('0609', 'San Ignacio', '06'),
('0610', 'San Marcos', '06'),
('0611', 'San Miguel', '06'),
('0612', 'San Pablo', '06'),
('0613', 'Santa Cruz', '06'),
('0701', 'Prov. Const. del Callao', '07'),
('0801', 'Cusco', '08'),
('0802', 'Acomayo', '08'),
('0803', 'Anta', '08'),
('0804', 'Calca', '08'),
('0805', 'Canas', '08'),
('0806', 'Canchis', '08'),
('0807', 'Chumbivilcas', '08'),
('0808', 'Espinar', '08'),
('0809', 'La Convención', '08'),
('0810', 'Paruro', '08'),
('0811', 'Paucartambo', '08'),
('0812', 'Quispicanchi', '08'),
('0813', 'Urubamba', '08'),
('0901', 'Huancavelica', '09'),
('0902', 'Acobamba', '09'),
('0903', 'Angaraes', '09'),
('0904', 'Castrovirreyna', '09'),
('0905', 'Churcampa', '09'),
('0906', 'Huaytará', '09'),
('0907', 'Tayacaja', '09'),
('1001', 'Huánuco', '10'),
('1002', 'Ambo', '10'),
('1003', 'Dos de Mayo', '10'),
('1004', 'Huacaybamba', '10'),
('1005', 'Huamalíes', '10'),
('1006', 'Leoncio Prado', '10'),
('1007', 'Marañón', '10'),
('1008', 'Pachitea', '10'),
('1009', 'Puerto Inca', '10'),
('1010', 'Lauricocha ', '10'),
('1011', 'Yarowilca ', '10'),
('1101', 'Ica ', '11'),
('1102', 'Chincha ', '11'),
('1103', 'Nasca ', '11'),
('1104', 'Palpa ', '11'),
('1105', 'Pisco ', '11'),
('1201', 'Huancayo ', '12'),
('1202', 'Concepción ', '12'),
('1203', 'Chanchamayo ', '12'),
('1204', 'Jauja ', '12'),
('1205', 'Junín ', '12'),
('1206', 'Satipo ', '12'),
('1207', 'Tarma ', '12'),
('1208', 'Yauli ', '12'),
('1209', 'Chupaca ', '12'),
('1301', 'Trujillo ', '13'),
('1302', 'Ascope ', '13'),
('1303', 'Bolívar ', '13'),
('1304', 'Chepén ', '13'),
('1305', 'Julcán ', '13'),
('1306', 'Otuzco ', '13'),
('1307', 'Pacasmayo ', '13'),
('1308', 'Pataz ', '13'),
('1309', 'Sánchez Carrión ', '13'),
('1310', 'Santiago de Chuco ', '13'),
('1311', 'Gran Chimú ', '13'),
('1312', 'Virú ', '13'),
('1401', 'Chiclayo ', '14'),
('1402', 'Ferreñafe ', '14'),
('1403', 'Lambayeque ', '14'),
('1501', 'Lima ', '15'),
('1502', 'Barranca ', '15'),
('1503', 'Cajatambo ', '15'),
('1504', 'Canta ', '15'),
('1505', 'Cañete ', '15'),
('1506', 'Huaral ', '15'),
('1507', 'Huarochirí ', '15'),
('1508', 'Huaura ', '15'),
('1509', 'Oyón ', '15'),
('1510', 'Yauyos ', '15'),
('1601', 'Maynas ', '16'),
('1602', 'Alto Amazonas ', '16'),
('1603', 'Loreto ', '16'),
('1604', 'Mariscal Ramón Castilla ', '16'),
('1605', 'Requena ', '16'),
('1606', 'Ucayali ', '16'),
('1607', 'Datem del Marañón ', '16'),
('1608', 'Putumayo', '16'),
('1701', 'Tambopata ', '17'),
('1702', 'Manu ', '17'),
('1703', 'Tahuamanu ', '17'),
('1801', 'Mariscal Nieto ', '18'),
('1802', 'General Sánchez Cerro ', '18'),
('1803', 'Ilo ', '18'),
('1901', 'Pasco ', '19'),
('1902', 'Daniel Alcides Carrión ', '19'),
('1903', 'Oxapampa ', '19'),
('2001', 'Piura ', '20'),
('2002', 'Ayabaca ', '20'),
('2003', 'Huancabamba ', '20'),
('2004', 'Morropón ', '20'),
('2005', 'Paita ', '20'),
('2006', 'Sullana ', '20'),
('2007', 'Talara ', '20'),
('2008', 'Sechura ', '20'),
('2101', 'Puno ', '21'),
('2102', 'Azángaro ', '21'),
('2103', 'Carabaya ', '21'),
('2104', 'Chucuito ', '21'),
('2105', 'El Collao ', '21'),
('2106', 'Huancané ', '21'),
('2107', 'Lampa ', '21'),
('2108', 'Melgar ', '21'),
('2109', 'Moho ', '21'),
('2110', 'San Antonio de Putina ', '21'),
('2111', 'San Román ', '21'),
('2112', 'Sandia ', '21'),
('2113', 'Yunguyo ', '21'),
('2201', 'Moyobamba ', '22'),
('2202', 'Bellavista ', '22'),
('2203', 'El Dorado ', '22'),
('2204', 'Huallaga ', '22'),
('2205', 'Lamas ', '22'),
('2206', 'Mariscal Cáceres ', '22'),
('2207', 'Picota ', '22'),
('2208', 'Rioja ', '22'),
('2209', 'San Martín ', '22'),
('2210', 'Tocache ', '22'),
('2301', 'Tacna ', '23'),
('2302', 'Candarave ', '23'),
('2303', 'Jorge Basadre ', '23'),
('2304', 'Tarata ', '23'),
('2401', 'Tumbes ', '24'),
('2402', 'Contralmirante Villar ', '24'),
('2403', 'Zarumilla ', '24'),
('2501', 'Coronel Portillo ', '25'),
('2502', 'Atalaya ', '25'),
('2503', 'Padre Abad ', '25'),
('2504', 'Purús', '25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `nombre`, `abreviatura`) VALUES
(7, 'BAZAR', ''),
(8, 'CEBA PRG', ''),
(9, 'CEBE STA ISABEL', ''),
(10, 'CI CORAZON DE JESUS', ''),
(11, 'CMP', ''),
(12, 'DAL', ''),
(13, 'DAS', ''),
(14, 'DCCSS', ''),
(15, 'DELOG', ''),
(16, 'DEPER', ''),
(17, 'DPP\r\n', ''),
(18, 'FOVIME', ''),
(19, 'IE BONIFAZ', ''),
(20, 'IE CRL FB - CUZCO', ''),
(21, 'IE EJTO AQP - AREQUIPA', ''),
(22, 'IE INCLAN', ''),
(23, 'IE INCLAN - PIURA', ''),
(24, 'IE JESUS NIÑO', ''),
(25, 'IE LA ESPERANZA', ''),
(26, 'IE LAS PALMAS', ''),
(27, 'IE MAAC - IQUITOS', ''),
(28, 'IE MAAC - TUMBES', ''),
(29, 'IE MATELLINI', ''),
(30, 'IE MONTESORI - IQUITOS - CAS', ''),
(31, 'IE NHGP - TACNA', ''),
(32, 'IE PRG', ''),
(33, 'IE PRIMEROS P', ''),
(34, 'IE SOYER', ''),
(35, 'IE TARAPACA  - IQUITOS', ''),
(36, 'IE TARAPACA  - IQUITOS - CAS', ''),
(37, 'IE TTE CORTEZ - SULLANA', ''),
(38, 'INSPECTORIA', ''),
(39, 'JACE', ''),
(40, 'JACE-CAS', ''),
(41, 'JAE', ''),
(42, 'JAE-CAS', ''),
(43, 'JEM COBIENE', ''),
(44, 'SAD', ''),
(45, 'SCG COBIENE', ''),
(46, 'SEGRE', ''),
(47, 'SETEL', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_de_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usuario_id` int(5) NOT NULL,
  `id_rol` int(5) NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_de_usuario`, `correo`, `cedula`, `clave_usuario`, `tipo_usuario_id`, `id_rol`, `telefono`, `fecha_registro`) VALUES
(359, 'carlos tudare', 'carlos@cloudlinkspa.com', '', '12345678', 1, 2, '243245234', '2022-01-19 03:00:54'),
(360, 'yans xsajsnaun', 'admin@admin.com', '', '123456', 1, 4, '123123123', '2022-05-11 14:29:31'),
(369, 'eliezer vilhez', 'eliezer@gmail.com', '', '123456', 1, 1, '937375827', '2023-01-16 16:36:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sunat_codigoubigeo`
--
ALTER TABLE `sunat_codigoubigeo`
  ADD PRIMARY KEY (`codigo_ubigeo`);
ALTER TABLE `sunat_codigoubigeo` ADD FULLTEXT KEY `departamento` (`departamento`,`provincia`,`distrito`);
ALTER TABLE `sunat_codigoubigeo` ADD FULLTEXT KEY `codigo_ubigeo` (`codigo_ubigeo`,`departamento`,`provincia`,`distrito`);

--
-- Indices de la tabla `tbl_categories_ranges`
--
ALTER TABLE `tbl_categories_ranges`
  ADD PRIMARY KEY (`id_categories_ranges`);

--
-- Indices de la tabla `tbl_cgi_requirements`
--
ALTER TABLE `tbl_cgi_requirements`
  ADD PRIMARY KEY (`id_require`);

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
-- Indices de la tabla `tbl_ficha`
--
ALTER TABLE `tbl_ficha`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `tbl_habitacion`
--
ALTER TABLE `tbl_habitacion`
  ADD PRIMARY KEY (`id_habitacion`);

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
-- Indices de la tabla `tbl_orders_services`
--
ALTER TABLE `tbl_orders_services`
  ADD PRIMARY KEY (`id_order`);

--
-- Indices de la tabla `tbl_orders_status`
--
ALTER TABLE `tbl_orders_status`
  ADD PRIMARY KEY (`id_statuso`);

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
-- Indices de la tabla `tbl_reason_disabilty`
--
ALTER TABLE `tbl_reason_disabilty`
  ADD PRIMARY KEY (`id_reason`);

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
-- Indices de la tabla `tb_family`
--
ALTER TABLE `tb_family`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubigeo_peru_departments`
--
ALTER TABLE `ubigeo_peru_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubigeo_peru_districts`
--
ALTER TABLE `ubigeo_peru_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubigeo_peru_provinces`
--
ALTER TABLE `ubigeo_peru_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_categories_ranges`
--
ALTER TABLE `tbl_categories_ranges`
  MODIFY `id_categories_ranges` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_cgi_requirements`
--
ALTER TABLE `tbl_cgi_requirements`
  MODIFY `id_require` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_condition_users`
--
ALTER TABLE `tbl_condition_users`
  MODIFY `id_condition_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_data_britanico`
--
ALTER TABLE `tbl_data_britanico`
  MODIFY `id_bri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_data_institute`
--
ALTER TABLE `tbl_data_institute`
  MODIFY `id_ins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tbl_data_univ`
--
ALTER TABLE `tbl_data_univ`
  MODIFY `id_univ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `tbl_decree`
--
ALTER TABLE `tbl_decree`
  MODIFY `id_decree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_drive`
--
ALTER TABLE `tbl_drive`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `tbl_drive_rcvd`
--
ALTER TABLE `tbl_drive_rcvd`
  MODIFY `id_file_rcvd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tbl_ficha`
--
ALTER TABLE `tbl_ficha`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `tbl_form_dace`
--
ALTER TABLE `tbl_form_dace`
  MODIFY `id_formdace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_forwarded_corr`
--
ALTER TABLE `tbl_forwarded_corr`
  MODIFY `id_frwd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_gguu_placement`
--
ALTER TABLE `tbl_gguu_placement`
  MODIFY `id_gguu_placement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_habitacion`
--
ALTER TABLE `tbl_habitacion`
  MODIFY `id_habitacion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_institute`
--
ALTER TABLE `tbl_institute`
  MODIFY `id_institute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tbl_neogicates`
--
ALTER TABLE `tbl_neogicates`
  MODIFY `id_neogicates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_occupancy_home`
--
ALTER TABLE `tbl_occupancy_home`
  MODIFY `id_occupancy_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_office`
--
ALTER TABLE `tbl_office`
  MODIFY `id_office` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_orders_services`
--
ALTER TABLE `tbl_orders_services`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `tbl_orders_status`
--
ALTER TABLE `tbl_orders_status`
  MODIFY `id_statuso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

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
-- AUTO_INCREMENT de la tabla `tbl_reason_disabilty`
--
ALTER TABLE `tbl_reason_disabilty`
  MODIFY `id_reason` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

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

--
-- AUTO_INCREMENT de la tabla `tb_family`
--
ALTER TABLE `tb_family`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
