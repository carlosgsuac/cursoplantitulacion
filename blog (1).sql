-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2025 a las 01:32:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `creado_el` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('REGISTRADO','ELIMINADO') NOT NULL DEFAULT 'REGISTRADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `paterno`, `materno`, `creado_el`, `estado`) VALUES
(1, 'Carlos Alberto', 'Guisbert', 'Salazar', '2025-11-22 04:16:37', 'REGISTRADO'),
(2, 'Masiel', 'Guisbert', 'Monrroy', '2025-11-22 04:17:06', 'REGISTRADO'),
(3, 'Brian', 'Guisbert', 'Monrroy', '2025-11-22 04:17:58', 'REGISTRADO'),
(4, 'bladi', 'torrelio', 'espiniza', '2025-12-10 09:44:29', 'REGISTRADO'),
(5, 'matilde', 'salazar', 'salazar', '2025-12-10 09:51:04', 'REGISTRADO'),
(6, 'Carlos', 'Guisbert', 'Lizarraga', '2025-12-10 09:53:47', 'REGISTRADO'),
(7, 'Marco', 'Villan', 'Salazar', '2025-12-10 10:00:55', 'REGISTRADO'),
(8, 'Juan', 'Perez', 'Perez', '2025-12-10 10:09:13', 'REGISTRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `creado_el` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('REGISTRADO','ELIMINADO') NOT NULL DEFAULT 'REGISTRADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `titulo`, `descripcion`, `foto`, `id_usuario`, `creado_el`, `estado`) VALUES
(1, 'Listar los archivos de un directorio en web', 'stoy usando php y html para mostrar como una galería de archivos, donde el usuario entre y pueda ver que archivos están dentro de una carpeta llamada converted_files que esta en una ruta distinta al código php que estoy usando y el problema es que no me muestran los archivos y en mi localhost también aparece lo siguiente: no se si es necesario usar php o si se podrá con javascript pero todo lo que conseguia de mostrar archivos de una carpeta era en php', NULL, 2, '2025-11-22 12:35:57', 'REGISTRADO'),
(2, 'Consulta SQL 2 Bases de datos diferentes', 'Buen día, estoy realizando algunas consultas para validación de datos de una aplicación de escritorio. Al realizar la consulta, junto dos tablas de una misma base de datos, quedando la consulta asi:', NULL, 3, '2025-11-22 12:36:42', 'REGISTRADO'),
(3, 'Obtener datos de una datatable con SQL en C# vía código', 'Estoy comenzando con C# (Solo 2 semanas con él). Se me presenta una duda con relación a la pregunta. Tengo el siguiente código:', NULL, 2, '2025-11-22 12:37:24', 'REGISTRADO'),
(4, 'Programación en Java', 'kdsgjkldsjglkjdflkgjldfkjglkdf', 'vistas/upload/pregunta/1764473545.PNG', 1, '2025-11-30 03:32:25', 'REGISTRADO'),
(5, 'Problemas con el servidor', 'Problemas con el servidor', 'vistas/upload/pregunta/1764473698.jpg', 1, '2025-11-30 03:34:58', 'REGISTRADO'),
(6, 'Error 404', 'Error 404', 'vistas/upload/pregunta/1764764084.PNG', 1, '2025-12-03 12:14:44', 'REGISTRADO'),
(7, 'Programación en Java', 'Java', 'vistas/upload/pregunta/1765240604.jpeg', 1, '2025-12-09 00:36:44', 'REGISTRADO'),
(8, 'Php', 'php8', 'vistas/upload/pregunta/1765240770.jpeg', 1, '2025-12-09 00:39:30', 'REGISTRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `creado_el` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('REGISTRADO','ELIMINADO') NOT NULL DEFAULT 'REGISTRADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `descripcion`, `foto`, `id_usuario`, `id_pregunta`, `creado_el`, `estado`) VALUES
(13, 'debe desintalar los programas', NULL, 1, 8, '2025-12-09 02:45:30', 'REGISTRADO'),
(14, 'otras respuestas', 'vistas/upload/respuesta/1765248379.jpeg', 1, 8, '2025-12-09 02:46:19', 'REGISTRADO'),
(15, 'No se puede acceder al servidor web', 'vistas/upload/respuesta/1765410986.png', 1, 7, '2025-12-10 23:56:26', 'REGISTRADO'),
(16, 'mas respuestas', NULL, 1, 7, '2025-12-10 23:58:55', 'REGISTRADO'),
(17, 'otra respuesta 5', NULL, 1, 7, '2025-12-11 00:00:19', 'REGISTRADO'),
(18, 'Mas respuestas para esta pregunta', NULL, 1, 7, '2025-12-11 00:21:17', 'REGISTRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `rol` varchar(20) NOT NULL DEFAULT 'usuario',
  `creado_el` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `clave`, `rol`, `creado_el`, `estado`) VALUES
(1, 'cguisbert@gmail.com', '$2y$10$.k0K9sPS0nqDKfGU8tQiS.x4rYXAVVvTsh5pSIVs7VVuq7eRkTUWm', 'adminsitrador', '2025-11-22 04:18:53', 'ACTIVO'),
(2, 'mguisbert', 'hola', 'usuario', '2025-11-22 04:19:35', 'ACTIVO'),
(3, 'bguisbert', '12345', 'usuario', '2025-11-22 04:20:01', 'ACTIVO'),
(4, 'btorrelio@gmail.com', '$2y$10$.k0K9sPS0nqDKfGU8tQiS.x4rYXAVVvTsh5pSIVs7VVuq7eRkTUWm', 'USUARIO', '2025-12-10 09:44:29', 'ACTIVO'),
(5, 'msalazar@gmail.com', '$2y$10$wNlYcOIx.Zj0N6UazzlD1uiQbAcVpIwZWuwtwAW9RNGVO8a89njv6', 'USUARIO', '2025-12-10 09:51:04', 'ACTIVO'),
(6, 'cguisbertl@gmail.com', '$2y$10$cIzwYFldoGB0CdOZSeAEIOdbFFsTjVzgH.v371LyCpaNYJPhAec76', 'USUARIO', '2025-12-10 09:53:47', 'ACTIVO'),
(7, 'mvillan@gmail.com', '$2y$10$7VIHk.QD5N51vbQbJ.I6pOMwGDaid8.cyBzXbM6pRV45HtvprKILm', 'USUARIO', '2025-12-10 10:00:55', 'ACTIVO'),
(8, 'jperez@gmail.com', '$2y$10$9PtajgTnhSDVAivWa48x0eIh1T6bKBKwYFTlpL0/Ox13UsXYgN0ie', 'USUARIO', '2025-12-10 10:09:13', 'ACTIVO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `fk_pregunta_usuario` (`id_usuario`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `fk_respuesta_usuario` (`id_usuario`),
  ADD KEY `fk_pregunta_respuesta` (`id_pregunta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_pregunta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `fk_pregunta_respuesta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`),
  ADD CONSTRAINT `fk_respuesta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_persona` FOREIGN KEY (`id_usuario`) REFERENCES `persona` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
