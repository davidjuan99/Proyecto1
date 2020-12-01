-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2020 a las 22:54:05
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cursa`
--
CREATE DATABASE IF NOT EXISTS `bd_cursa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_cursa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(9) NOT NULL,
  `nom_categoria` enum('Bebe(0-7)','Infantil(8-12)','Junior (13-18)','Senior (19-35)','Veterano (Mayor 35)','Discapacitado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nom_categoria`) VALUES
(1, 'Bebe(0-7)'),
(2, 'Infantil(8-12)'),
(3, 'Junior (13-18)'),
(4, 'Senior (19-35)'),
(5, 'Veterano (Mayor 35)'),
(6, 'Discapacitado');

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
(510, '2020-11-27', NULL, NULL);

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
('48074942C', 'David', 'Juan', 'Aranda', '1999-12-09', 'Hombre', 'david.juanaranda@gmail.com', 4, 510);

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
  MODIFY `id_categoria` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  MODIFY `ins_dorsal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;

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
