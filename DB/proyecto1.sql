-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2019 a las 21:56:05
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto1`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarCliente` (IN `_DniCliente` VARCHAR(7))  BEGIN
SELECT dni, apellidos, nombre
FROM cliente
WHERE cliente.dni = _DniCliente;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCliente` (IN `_dni` VARCHAR(7), IN `_apellidos` VARCHAR(50), IN `_nombre` VARCHAR(50))  BEGIN
UPDATE cliente SET cliente.dni=_dni, cliente.apellidos=_apellidos, cliente.nombre=_nombre
WHERE cliente.dni =_dni;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCliente` (IN `_dni` VARCHAR(7), IN `_apellidos` VARCHAR(50), IN `_nombre` VARCHAR(50))  BEGIN
INSERT INTO cliente(dni, apellidos, nombre)
VALUES(_dni, _apellidos, _nombre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarCliente` ()  SELECT *FROM cliente$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `dni` varchar(7) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fechaCreacion` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `dniVendedor` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`idCuenta`, `email`, `fechaCreacion`, `password`, `dniVendedor`) VALUES
(1, 'christian@hotmail.com', '0000-00-00', 'summer9620', 7777777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `idVendedor` int(11) NOT NULL,
  `dni` varchar(7) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`idVendedor`, `dni`, `apellidos`, `nombre`, `fechaNacimiento`) VALUES
(1, '7777777', 'Villena Perez', 'Christian', '1996-01-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idVendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
