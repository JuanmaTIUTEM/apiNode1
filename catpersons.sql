-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-02-2025 a las 22:02:20
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catpersons`
--

CREATE TABLE `catpersons` (
  `personId` int NOT NULL,
  `personName` varchar(50) NOT NULL,
  `personLName` varchar(80) DEFAULT NULL,
  `personEmail` varchar(150) NOT NULL,
  `personPhone` varchar(20) NOT NULL,
  `dtCreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `bActive` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `catpersons`
--

INSERT INTO `catpersons` (`personId`, `personName`, `personLName`, `personEmail`, `personPhone`, `dtCreatedAt`, `bActive`) VALUES
(1, 'Super Admin', 'Sistema', 'laboratorios_ti@utem.edu.mx', '3140000001', '2023-05-24 13:55:39', b'1'),
(2, 'Secretario', 'Académico', 'secretaria-academica@utem.edu.mx', '3140000002', '2023-05-24 13:55:39', b'1'),
(3, 'Director', 'Académico', 'direccion-academica@utem.edu.mx', '3140000003', '2023-05-24 13:55:39', b'1'),
(4, 'Director', 'Carrera', 'direccion-carrera@utem.edu.mx', '3140000004', '2023-05-24 13:55:39', b'1'),
(5, '\nProfesor ', 'Tiempo Completo', 'ptc@utem.edu.mx', '3140000005', '2023-05-24 13:55:39', b'1'),
(6, 'Profesor', 'Asignatura', 'pa@utem.edu.mx', '3140000006', '2023-05-24 13:55:39', b'1'),
(7, 'Revisor', 'Pedagogía', 'revisor-pedagogia@utem.edu.mx', '3122100436', '2023-09-28 13:02:04', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catpersons`
--
ALTER TABLE `catpersons`
  ADD PRIMARY KEY (`personId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catpersons`
--
ALTER TABLE `catpersons`
  MODIFY `personId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
