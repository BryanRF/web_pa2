-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 20:56:27
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotelemely`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room`
--

CREATE TABLE `room` (
  `IdHab` int(10) UNSIGNED NOT NULL,
  `Tipo` varchar(40) DEFAULT NULL,
  `Cama` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `room`
--

INSERT INTO `room` (`IdHab`, `Tipo`, `Cama`) VALUES
(1, 'Habitacion de lujo', 'Doble'),
(2, 'Habitacion ejecutiva', 'Simple'),
(3, 'Habitacion individual', 'Simple');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nombre` text DEFAULT NULL,
  `Apellido` text CHARACTER SET utf8 DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  `Telefono` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `entrada` date DEFAULT NULL,
  `salida` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `costo` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roombook`
--

INSERT INTO `roombook` (`id`, `Nombre`, `Apellido`, `Pais`, `Telefono`, `TRoom`, `entrada`, `salida`, `total`, `costo`) VALUES
(1, 'res', '', 'Angola', '5342543', 'Guest House', '2021-11-25', '2021-11-26', 1, 0.00),
(5, 'asdadadadsadada', 'sadasdsad', 'Peru', '1212123', 'Deluxe Room', '2021-11-25', '2021-11-26', 1, 0.00),
(6, 'Stephano', 'Panta', 'Pakistan', '00000000000', 'Guest House', '2021-11-25', '2021-11-28', 3, 0.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`IdHab`);

--
-- Indices de la tabla `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `room`
--
ALTER TABLE `room`
  MODIFY `IdHab` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
