-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2022 a las 05:30:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_mhaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_articulo`
--

CREATE TABLE `tbl_articulo` (
  `id_articulo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `precio_venta` double NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_emprendedor` int(11) DEFAULT NULL,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `departamento` varchar(25) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `Pedido` varchar(250) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `forma_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`id_cliente`, `nombre`, `correo`, `telefono`, `direccion`, `departamento`, `municipio`, `cedula`, `fecha`, `Pedido`, `categoria`, `forma_pago`) VALUES
(1, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(2, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(3, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(4, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(5, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(6, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(7, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(8, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(9, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(10, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(11, '', '', 0, '', '', '', '', '0000-00-00 00:00:00', '', '', ''),
(12, 'Eliecer Joel Amador ', 'eliiamador@inventado.com', 12345678, 'Barrio 19 de julio.', 'Carazo', 'Dolores', '045-120578-1000L', '0000-00-00 00:00:00', 'PS5', 'Gamers', 'Dinero Físico'),
(14, 'Marvin Torres', 'mtorres@gmail.com', 45678978, 'Barrio Cristo Rey casa N°50', 'Carazo', 'Dolores', '045-120578-1000L', '2022-11-17 05:23:13', 'Pantalones Jean', 'Ropa', 'Tarjeta Crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_factura`
--

CREATE TABLE `tbl_detalle_factura` (
  `id_detalle_factura` int(11) NOT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `cantidad_pedido` int(11) NOT NULL,
  `precio_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_emprendedor`
--

CREATE TABLE `tbl_emprendedor` (
  `id_emprendedor` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `departamento` varchar(25) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `descripcion_producto` varchar(50) NOT NULL,
  `forma_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

CREATE TABLE `tbl_factura` (
  `id_factura` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `Total_Factura` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_articulo`
--
ALTER TABLE `tbl_articulo`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD PRIMARY KEY (`id_detalle_factura`);

--
-- Indices de la tabla `tbl_emprendedor`
--
ALTER TABLE `tbl_emprendedor`
  ADD PRIMARY KEY (`id_emprendedor`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_articulo`
--
ALTER TABLE `tbl_articulo`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  MODIFY `id_detalle_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_emprendedor`
--
ALTER TABLE `tbl_emprendedor`
  MODIFY `id_emprendedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
