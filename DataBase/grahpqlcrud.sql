-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-05-2021 a las 18:59:41
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grahpqlcrud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(0, 'Manuel Perez', 'manuel.perez', '6u9Rx@7Y*FlH'),
(1, 'Alexander Rondon', 'alenxander_rondon', 'e#t!5R!^cWc*'),
(2, 'Carlos Trompetero', 'carlos09', '^y7mIFHn##p$'),
(3, 'Alfredo Perez Cardenas', 'alfredo.perez', 'v4^qbBNAl&%ws'),
(4, 'Fernanda Gonzalez', 'f.gonzales', 'l8EzWY$0RmoK'),
(5, 'Alirio Arias', 'alirio.arias', 'phpObW7e$4tG'),
(6, 'Cecilia Montoya', 'cecilia', '!qQlbW1HcvSQc%lg9!'),
(7, 'Blanca Maria Ayala', 'blanca.maria.ayala', '*P#aOt69&JEk9U6Ejgc#0l');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
