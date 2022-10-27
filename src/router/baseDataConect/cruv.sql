-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 21:58:54
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cruv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(5) NOT NULL,
  `nombre_carrera` varchar(500) NOT NULL,
  `id_facultad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`, `id_facultad`) VALUES
(1, 'Lic. Administración de Empresas\r\n', 1),
(2, 'Lic. Contabilidad\r\n', 1),
(3, 'Lic. Administración en Recursos Humanos\r\n', 1),
(4, 'Lic. Ingeniería Operaciones\r\nLogística Empresarial', 1),
(5, 'Lic. Administración Pública\r\n', 2),
(6, 'Lic. Trabajo Social\r\n', 2),
(7, 'Lic. Arquitectura\r\n', 3),
(8, 'Lic. Música', 4),
(9, 'Lic. Ingeniero Agrónomo\r\nZootecnísta\r\n', 5),
(10, 'Lic. Educación Primaria\r\n', 6),
(11, 'Lic. Educación Preescolar\r\n', 6),
(12, 'Lic. Biología(Animal, Ambiental y\r\nMarina)\r\n', 7),
(13, 'Lic. Matemáticas', 7),
(14, 'Lic. Periodismo\r\n', 8),
(15, 'Lic. Evento y Protocolo\r\n', 8),
(16, 'Lic. Derecho\r\n', 9),
(17, 'Lic. Economía\r\n', 10),
(18, 'Lic. Finanzas y Bancas\r\n', 10),
(19, 'Lic. Enfermería\r\n', 11),
(20, 'Tec. Farmacia\r\n', 12),
(21, 'Lic. Español\r\n', 13),
(22, 'Lic. Inglés\r\n', 13),
(23, 'Téc. Inglés Conversacional\r\npara la Atención a Clientes\r\n', 13),
(24, 'Lic. Educación Física\r\n', 13),
(25, 'Lic. Geografía e Historia\r\n', 13),
(26, 'Lic. Turismo Alternativo\r\n', 13),
(27, 'Lic. Ingeniería en Informática\r\n', 14),
(28, 'Lic. Informática para la\r\nGestión Educativa y Empresarial', 14),
(31, 'Tec. Asistente Odontológico\r\n', 15),
(32, 'Lic. Psicología ', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades_u_nacional`
--

CREATE TABLE `facultades_u_nacional` (
  `id` int(11) NOT NULL,
  `opcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facultades_u_nacional`
--

INSERT INTO `facultades_u_nacional` (`id`, `opcion`) VALUES
(1, 'Administración de Empresas y Contabilidad'),
(2, 'Administración Pública'),
(3, 'Arquitectura'),
(4, 'Bellas Artes'),
(5, 'Ciencias Agropecuarias'),
(6, 'Ciencias de la Educación'),
(7, 'Ciencias Naturales Exactas y Tecnología'),
(8, 'Comunicación Social'),
(9, 'Derecho y Ciencias Políticas'),
(10, 'Economía'),
(11, 'Enfermería'),
(12, 'Farmacia'),
(13, 'Humanidades'),
(14, 'Informática, Electrónica y Comunicación'),
(15, 'Odontología'),
(16, 'Psicología');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `facultades_u_nacional`
--
ALTER TABLE `facultades_u_nacional`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_carrera` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `facultades_u_nacional`
--
ALTER TABLE `facultades_u_nacional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
