-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2020 a las 20:13:09
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cursa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(9) NOT NULL,
  `nom_categoria` enum('Infantil (8-12)','Junior (13-18)','Senior (18-35)','Veterano (Mayor 35)','Discapacitado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nom_categoria`) VALUES
(1, 'Infantil (8-12)'),
(2, 'Junior (13-18)'),
(3, 'Senior (18-35)'),
(4, 'Veterano (Mayor 35)'),
(5, 'Discapacitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inscripcion`
--

CREATE TABLE `tbl_inscripcion` (
  `ins_dorsal` int(3) NOT NULL,
  `fecha_ins` date NOT NULL,
  `pagadoSINO` enum('SI','NO') DEFAULT NULL,
  `precio_ins` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_inscripcion`
--

INSERT INTO `tbl_inscripcion` (`ins_dorsal`, `fecha_ins`, `pagadoSINO`, `precio_ins`) VALUES
(104, '2020-11-12', NULL, NULL),
(213, '2020-11-23', NULL, NULL),
(255, '2020-11-23', NULL, NULL),
(281, '2020-11-12', NULL, NULL),
(384, '2020-11-23', NULL, NULL),
(566, '2020-11-12', NULL, NULL),
(955, '2020-11-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participante`
--

CREATE TABLE `tbl_participante` (
  `DNI_parti` char(9) NOT NULL,
  `nom_parti` varchar(255) NOT NULL,
  `apellido_parti` varchar(255) NOT NULL,
  `apellido2_parti` varchar(255) NOT NULL,
  `fechaNac` date NOT NULL,
  `genero_parti` enum('Hombre','Mujer') NOT NULL,
  `email_parti` varchar(255) NOT NULL,
  `id_categoria` int(9) NOT NULL,
  `dorsal` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_participante`
--

INSERT INTO `tbl_participante` (`DNI_parti`, `nom_parti`, `apellido_parti`, `apellido2_parti`, `fechaNac`, `genero_parti`, `email_parti`, `id_categoria`, `dorsal`) VALUES
('47323938N', 'Albert', 'Buendia', 'Monjil', '2020-10-27', 'Hombre', 'abumo@read.com', 5, 281),
('51288755C', 'Carlos', 'Mirabal', 'Salazar', '2020-10-29', 'Hombre', 'david.juanaranda@gmail.com', 3, 955),
('58692408L', 'pepe', 'pepe', 'pepon', '2020-10-30', 'Mujer', 'pepe.pepe@pepon.com', 2, 566),
('66286601A', 'david', 'juan', 'jimenez', '2020-11-16', 'Hombre', 'beeee@b.com', 5, 213),
('71382556D', 'Bumo', 'f', 'f', '2020-10-27', 'Hombre', 'b@a.com', 5, 104),
('75786685Y', 'david', 'david', 'dovid', '2020-10-30', 'Hombre', 'didididid@dididi.com', 5, 384),
('87363732A', 'david', 'Mirabal', 'dadadad', '2020-10-28', 'Hombre', 'bb@bebe.com', 3, 255);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD PRIMARY KEY (`ins_dorsal`);

--
-- Indices de la tabla `tbl_participante`
--
ALTER TABLE `tbl_participante`
  ADD PRIMARY KEY (`DNI_parti`),
  ADD KEY `fk_participante_categoria` (`id_categoria`),
  ADD KEY `fk_participante_inscripcion` (`dorsal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  MODIFY `ins_dorsal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=996;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_participante`
--
ALTER TABLE `tbl_participante`
  ADD CONSTRAINT `fk_participante_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_participante_inscripcion` FOREIGN KEY (`dorsal`) REFERENCES `tbl_inscripcion` (`ins_dorsal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
