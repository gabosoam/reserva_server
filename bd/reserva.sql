/*
Navicat MySQL Data Transfer

Source Server         : maria
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : reserva

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-13 13:19:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archive
-- ----------------------------
DROP TABLE IF EXISTS `archive`;
CREATE TABLE `archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext DEFAULT NULL,
  `originalRecordId` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for localidad
-- ----------------------------
DROP TABLE IF EXISTS `localidad`;
CREATE TABLE `localidad` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `foto` varchar(10000) DEFAULT '',
  `altura` varchar(255) DEFAULT NULL,
  `localizacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of localidad
-- ----------------------------
INSERT INTO `localidad` VALUES ('1550079336517', '1550081487689', '1', 'ambato', '132132', 'tungurahua', 'http://www.elheraldo.com.ec/wp-content/uploads/2018/04/ahah.jpg', '', '');
INSERT INTO `localidad` VALUES ('1550079387528', '1550080473621', '2', 'latacunga', '2313213', '12321321', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt0mvK7Cctt2M0nytlJXyG8rktKeb34CaDz9sBS9rXBg6JKL5Gzg', '', '');
INSERT INTO `localidad` VALUES ('1550081285785', '1550081285785', '5', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `es_admin` tinyint(1) DEFAULT NULL,
  `es_guia` tinyint(1) DEFAULT NULL,
  `es_tourPlaning` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `identificacion` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('1549763582107', '1549763582107', '2', '1', '1723713556', 'Gabriel Salazar', 'quito sur', '2456123', 'gabrielsalazar@outlook.com', '0', '1', null);
INSERT INTO `persona` VALUES ('1550070826768', '1550070826768', '4', '1', '1231321321321', 'andres', '', '', '', '0', '1', null);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `persona` (`persona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1548955679112', '1548955679112', '1', '', 'gasalazaror@gmail.com', '$2b$10$xH.wcokpiXA959OCNBgXf.vG08JcpQXAQGFtGfFK1b01QhgdLW18O', '2');

-- ----------------------------
-- View structure for vista_asignaciones
-- ----------------------------
DROP VIEW IF EXISTS `vista_asignaciones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `vista_asignaciones` AS SELECT
asignacion.id,
	persona.nombre,
persona.id as id_persona,
	ordenproducto.tiempo_estandar,
ordenproducto.orden,
ordenproducto.id as id_ordenproducto,
ordenproducto.estado,
	producto.nombre as producto,
	tipo.nombre as variante,
	asignacion.hora_inicio,
	DATE_ADD(asignacion.hora_inicio,INTERVAL ordenproducto.tiempo_estandar SECOND) as hora_fin
FROM
	asignacion
LEFT JOIN persona ON persona.id = asignacion.operador
INNER JOIN ordenproducto ON ordenproducto.id = asignacion.tarea
INNER JOIN tipoproducto ON tipoproducto.id = ordenproducto.variante
INNER JOIN tipo ON tipo.id = tipoproducto.tipo
INNER JOIN producto ON producto.id = tipoproducto.producto ; ;

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
INNER JOIN tipo ON tipo.id = tipoproducto.tipo ; ;

-- ----------------------------
-- View structure for vista_ordenes
-- ----------------------------
DROP VIEW IF EXISTS `vista_ordenes`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `vista_ordenes` AS SELECT
ordenproducto.id,
ordentrabajo.id as orden,
ordenproducto.cantidad,
producto.id as id_producto,
producto.nombre as producto,
tipoproducto.id as id_variante,
tipo.nombre as variante,
ordenproducto.porsentaje_iva,
ordenproducto.porcentaje_descuento,
ordenproducto.tiempo_estandar,
ordenproducto.precio,
(SELECT hora_inicio FROM vista_asignaciones WHERE vista_asignaciones.id_ordenproducto = ordenproducto.id) as hora_inicio
FROM
ordenproducto
INNER JOIN tipoproducto ON ordenproducto.variante = tipoproducto.id
INNER JOIN ordentrabajo on ordentrabajo.id = ordenproducto.orden
INNER JOIN producto ON producto.id = tipoproducto.producto
INNER JOIN tipo ON tipo.id = tipoproducto.tipo ;
