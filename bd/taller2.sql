/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : taller2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-03 12:11:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archive
-- ----------------------------
DROP TABLE IF EXISTS `archive`;
CREATE TABLE `archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `originalRecord` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `originalRecordId` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1548956113936', '1548956113936', '1', '1', 'limpieza');
INSERT INTO `categoria` VALUES ('1548956260342', '1548956260342', '2', '1', '414141');
INSERT INTO `categoria` VALUES ('1548957100327', '1548957100327', '3', '1', 'categoria 1');

-- ----------------------------
-- Table structure for cotizacion
-- ----------------------------
DROP TABLE IF EXISTS `cotizacion`;
CREATE TABLE `cotizacion` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emision` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_vencimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cotizacion
-- ----------------------------
INSERT INTO `cotizacion` VALUES ('1548956288006', '1548979921998', '1', '2019-01-31', '2019-02-01', '6', null);
INSERT INTO `cotizacion` VALUES ('1548973798943', '1548973798943', '2', '2019-01-31', '2019-02-01', '6', null);
INSERT INTO `cotizacion` VALUES ('1548990711203', '1548990711203', '3', '2019-01-31', '2019-02-10', '6', null);

-- ----------------------------
-- Table structure for cotizacionproducto
-- ----------------------------
DROP TABLE IF EXISTS `cotizacionproducto`;
CREATE TABLE `cotizacionproducto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `porsentaje_iva` double DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `porcentaje_descuento` double DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `base_cero` double DEFAULT NULL,
  `cotizacion` int(11) DEFAULT NULL,
  `variante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cotizacionproducto
-- ----------------------------
INSERT INTO `cotizacionproducto` VALUES ('1549047743823', '1549049776568', '2', '12', '2', '0', '5', '', '0', '1', '1');
INSERT INTO `cotizacionproducto` VALUES ('1549048067855', '1549048067855', '5', '12', '1', '0', '0', '', '0', '3', '7');
INSERT INTO `cotizacionproducto` VALUES ('1549049776648', '1549049776648', '7', '12', '4', '0', '0', '', '0', '1', '25');

-- ----------------------------
-- Table structure for foto
-- ----------------------------
DROP TABLE IF EXISTS `foto`;
CREATE TABLE `foto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of foto
-- ----------------------------

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES ('1548956003537', '1548956003537', '1', '1', 'mazda');

-- ----------------------------
-- Table structure for marcaproducto
-- ----------------------------
DROP TABLE IF EXISTS `marcaproducto`;
CREATE TABLE `marcaproducto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of marcaproducto
-- ----------------------------
INSERT INTO `marcaproducto` VALUES ('1548602096063', '1548602096063', '1', '1', 'chevrolet');
INSERT INTO `marcaproducto` VALUES ('1548602103492', '1548602103492', '2', '1', 'mazda');
INSERT INTO `marcaproducto` VALUES ('1548602115892', '1548602115892', '3', '1', 'kia');
INSERT INTO `marcaproducto` VALUES ('1548602130762', '1548602130762', '4', '1', 'audi');

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of modelo
-- ----------------------------
INSERT INTO `modelo` VALUES ('1548956047623', '1548956047623', '1', '1', 'camioneta 4x4', '1994', '1', '2');

-- ----------------------------
-- Table structure for ordenproducto
-- ----------------------------
DROP TABLE IF EXISTS `ordenproducto`;
CREATE TABLE `ordenproducto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `porsentaje_iva` double DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `porcentaje_descuento` double DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `base_cero` double DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ordenproducto
-- ----------------------------

-- ----------------------------
-- Table structure for ordentrabajo
-- ----------------------------
DROP TABLE IF EXISTS `ordentrabajo`;
CREATE TABLE `ordentrabajo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emision` double DEFAULT NULL,
  `fecha_vencimiento` double DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of ordentrabajo
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `cedula` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `es_cliente` tinyint(1) DEFAULT NULL,
  `es_empleado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1548965843950', '1548975874482', '1', '1', '1707385975', 'mario salazar', 'quito sur', '2456123', 'asdasd@gmail.com', '0', '1');
INSERT INTO `persona` VALUES ('1548970029230', '1548970029230', '6', '1', '1723713556', 'Gabriel Salazar', '170615, Quito Sur', '2621561', 'gasalazaror@gmail.com', '1', '0');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iva` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ice` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pvp_manual` tinyint(1) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('1548956173926', '1548989894132', '1', '1', '132132132', 'limpieza', '', '12', 'NAP', '1', '3');
INSERT INTO `producto` VALUES ('1548956199549', '1548956199562', '2', '1', '21321321', 'pulida', '', '12', 'NAP', '1', '1');
INSERT INTO `producto` VALUES ('1548957204209', '1548957204219', '3', '1', '123213123', '123123', '', '12', 'NAP', '1', '3');
INSERT INTO `producto` VALUES ('1548966355199', '1548966355212', '4', '1', '321321', 'pulida con guantes', '', '12', 'NAP', '1', '1');
INSERT INTO `producto` VALUES ('1548990513885', '1548990513903', '5', '1', '12545-k12', 'servicio 1', '', '12', 'NAP', '0', '2');

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipo
-- ----------------------------
INSERT INTO `tipo` VALUES ('1548955937345', '1548955937345', '1', '1', 'auto');
INSERT INTO `tipo` VALUES ('1548955944054', '1548955944054', '2', '1', 'camioneta');
INSERT INTO `tipo` VALUES ('1548955954751', '1548955954751', '3', '1', 'camion pequeño');
INSERT INTO `tipo` VALUES ('1548955962672', '1548955962672', '4', '1', 'sedan');
INSERT INTO `tipo` VALUES ('1548955982086', '1548955982086', '5', '1', 'asuba');
INSERT INTO `tipo` VALUES ('1548955989851', '1548955989851', '6', '1', 'coso');

-- ----------------------------
-- Table structure for tipoproducto
-- ----------------------------
DROP TABLE IF EXISTS `tipoproducto`;
CREATE TABLE `tipoproducto` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pvp` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tiempoEstandar` double DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tipoproducto
-- ----------------------------
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1549031060203', '1', '50.05', '1', '1800', '1', '1');
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1548990810817', '2', '60.05', '1', '1800', '2', '1');
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1548990810357', '3', '40', '1', '3000', '3', '1');
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1548990809744', '4', '100.54', '0', '5400', '4', '1');
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1548990808944', '5', '25.03', '0', '3000', '5', '1');
INSERT INTO `tipoproducto` VALUES ('1548956173961', '1548990807541', '6', '12.04', '0', '2160', '6', '1');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048123396', '7', '15', '1', '0', '1', '2');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048122719', '8', '15', '1', '0', '2', '2');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048122280', '9', '20', '1', '0', '3', '2');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048121919', '10', '25', '1', '0', '4', '2');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048121293', '11', '35', '1', '0', '5', '2');
INSERT INTO `tipoproducto` VALUES ('1548956199582', '1549048120863', '12', '35', '1', '0', '6', '2');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '13', '0', '1', '0', '1', '3');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '14', '0', '1', '0', '2', '3');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '15', '0', '1', '0', '3', '3');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '16', '0', '1', '0', '4', '3');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '17', '0', '1', '0', '5', '3');
INSERT INTO `tipoproducto` VALUES ('1548957204248', '1548957204248', '18', '0', '1', '0', '6', '3');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046229041', '19', '12', '1', '0', '1', '4');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046228579', '20', '12', '1', '0', '2', '4');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046228075', '21', '12', '1', '0', '3', '4');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046227655', '22', '12', '1', '0', '4', '4');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046227154', '23', '12', '1', '0', '5', '4');
INSERT INTO `tipoproducto` VALUES ('1548966355240', '1549046226444', '24', '12', '1', '0', '6', '4');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990564447', '25', '10', '1', '600', '1', '5');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990565064', '26', '20', '1', '1200', '2', '5');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990565839', '27', '30', '1', '1800', '3', '5');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990566470', '28', '40', '1', '2400', '4', '5');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990566906', '29', '50', '1', '3000', '5', '5');
INSERT INTO `tipoproducto` VALUES ('1548990513928', '1548990567440', '30', '60', '1', '3600', '6', '5');

-- ----------------------------
-- Table structure for unidad
-- ----------------------------
DROP TABLE IF EXISTS `unidad`;
CREATE TABLE `unidad` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of unidad
-- ----------------------------
INSERT INTO `unidad` VALUES ('1548708760107', '1548708760107', '1', '1', 'unidad');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `persona` (`persona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1548955679112', '1548955679112', '1', '', 'gasalazaror@gmail.com', '$2b$10$xH.wcokpiXA959OCNBgXf.vG08JcpQXAQGFtGfFK1b01QhgdLW18O', '1');

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `placa` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_motor` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_chasis` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anio_fabricacion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` int(11) DEFAULT NULL,
  `propietario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `placa` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of vehiculo
-- ----------------------------
INSERT INTO `vehiculo` VALUES ('1548956072503', '1548976149327', '1', '1', 'xyz890', 'klsasdnasdjk', '234234', '1009', '1', '6');

-- ----------------------------
-- View structure for vista_cotizaciones
-- ----------------------------
DROP VIEW IF EXISTS `vista_cotizaciones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `vista_cotizaciones` AS SELECT
cotizacionproducto.id,
cotizacion.id as cotizacion,
cotizacionproducto.cantidad,
producto.id as id_producto,
producto.nombre as producto,
tipoproducto.id as id_variante,
tipo.nombre as variante,
cotizacionproducto.porsentaje_iva,
cotizacionproducto.porcentaje_descuento,
cotizacionproducto.precio
FROM
cotizacionproducto
INNER JOIN tipoproducto ON cotizacionproducto.variante = tipoproducto.id
INNER JOIN cotizacion on cotizacion.id = cotizacionproducto.cotizacion
INNER JOIN producto ON producto.id = tipoproducto.producto
INNER JOIN tipo ON tipo.id = tipoproducto.tipo ;
